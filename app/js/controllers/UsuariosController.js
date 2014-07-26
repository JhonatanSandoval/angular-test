/**
 * Created by Jhonatan on 25/07/14.
 */

testApp.controller('UsuariosController', function($scope, usuarioService, $http){

    $scope.usuarios = {};

    $scope.allUsuarios = function() {
        return $http.post('../../backend/json/all_usuarios.php')
            .then(function(result) {
                $scope.usuarios = angular.copy(result.data);
            });

    };

    $scope.allUsuarios();

});