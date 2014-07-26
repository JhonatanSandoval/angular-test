-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-07-2014 a las 04:31:35
-- Versión del servidor: 5.5.34
-- Versión de PHP: 5.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `usuarios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_usuario`
--

CREATE TABLE IF NOT EXISTS `tb_usuario` (
  `idusuario` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(15) NOT NULL,
  `clave` varchar(60) NOT NULL COMMENT 'md5',
  `nombres` varchar(30) NOT NULL,
  `apellidos` varchar(30) NOT NULL,
  `correo` varchar(60) NOT NULL,
  `fecnacimiento` date NOT NULL,
  `feccrea` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`idusuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `tb_usuario`
--

INSERT INTO `tb_usuario` (`idusuario`, `usuario`, `clave`, `nombres`, `apellidos`, `correo`, `fecnacimiento`, `feccrea`) VALUES
(1, 'jhonatan', '827ccb0eea8a706c4c34a16891f84e7b', 'Jhonatan', 'Sandoval Bazán', 'jsandovalbazan@gmail.com', '1992-05-24', '2014-04-05 05:35:40'),
(2, 'jose', '827ccb0eea8a706c4c34a16891f84e7b', 'Jose', 'Rosas', 'jose@belatrixsf.com', '1989-03-01', '2014-04-05 05:55:39'),
(6, 'patricia', '827ccb0eea8a706c4c34a16891f84e7b', 'Patricia', 'Sanchez', 'patricia@sanchez.com', '1992-05-24', '2014-04-05 06:20:31'),
(7, 'alfredo', '827ccb0eea8a706c4c34a16891f84e7b', 'Alfredo', 'Sandoval', 'alfredo_grupos@semael.com', '1957-03-15', '2014-07-26 02:30:45');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
