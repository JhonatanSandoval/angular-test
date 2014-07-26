<?php
    
    /**
     * Created by PhpStorm.
     * User: Jhonatan
     * Date: 25/07/14
     * Time: 09:06 PM
     */

    require_once '../controller/UsuarioController.php';

    $controller = new UsuarioController();
    $usuariosArray = $controller->getUsuarios();

    $json = array();

    foreach ($usuariosArray as $usuario) {
        array_push($json, array(
            "idusuario" => $usuario['idusuario'] ,
            "usuario" => $usuario['usuario'] ,
            "clave_md5" => $usuario['clave'] ,
            "nombres" => $usuario['nombres'] ,
            "apellidos" => utf8_encode($usuario['apellidos']) ,
            "correo" => $usuario['correo'] ,
            "fecnaci" => $usuario['fecnacimiento'] ,
            "feccrea" => $usuario['feccrea']
        ));
    }

    echo json_encode($json);