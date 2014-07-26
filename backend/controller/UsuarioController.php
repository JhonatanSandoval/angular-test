<?php
    
    /**
     * Created by PhpStorm.
     * User: Jhonatan
     * Date: 25/07/14
     * Time: 08:19 PM
     */

    require_once '../db/Database.php';

    class UsuarioController
    {

        function getUsuarios()
        {

            $database = new Database();

            $sql = ' SELECT * FROM tb_usuario ';

            $database->query($sql);
            $usuariosArray = $database->resultSet();

            return $usuariosArray;

        }

    }