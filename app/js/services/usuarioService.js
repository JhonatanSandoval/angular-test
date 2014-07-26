/**
 * Created by Jhonatan on 25/07/14.
 */

testApp.factory('usuarioService',
    function($rootScope, $http){

        "use strict";

        var usuario = {};

        var getUsuario = function() {
            return usuario;
        };

        var getDetalleUsuario = function() {

        }

        var usuarioService = {
            'getUsuario' : getUsuario
        };

        return usuarioService;

});