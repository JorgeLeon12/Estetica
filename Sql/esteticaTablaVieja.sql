-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-11-2013 a las 16:27:52
-- Versión del servidor: 5.5.27
-- Versión de PHP: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `estetica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encuestas`
--

CREATE TABLE IF NOT EXISTS `encuestas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `caracteristicas` longtext NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `longitud` varchar(30) NOT NULL,
  `tipo` varchar(30) NOT NULL,
  `evento` varchar(30) NOT NULL,
  `horario` varchar(30) NOT NULL,
  `estilo` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `encuestas`
--

INSERT INTO `encuestas` (`id`, `caracteristicas`, `fecha`, `longitud`, `tipo`, `evento`, `horario`, `estilo`) VALUES
(1, 'Corto Chino Casual Dia Clasico', '2013-11-14 01:59:31', '', '', '', '', ''),
(2, '', '2013-11-14 01:59:51', 'Corto', 'Chino', 'Casual', 'Dia', 'Clasico'),
(3, '', '2013-11-14 02:03:47', 'Corto', 'Chino', 'Casual', 'Dia', 'Clasico'),
(4, '', '2013-11-15 22:10:56', '', '', '', '', ''),
(5, '', '2013-11-15 22:11:06', 'Corto', 'Chino', 'Casual', 'Dia', 'Clasico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `esteticas`
--

CREATE TABLE IF NOT EXISTS `esteticas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `latitud` varchar(20) NOT NULL,
  `longitud` varchar(20) NOT NULL,
  `peinados` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `esteticas`
--

INSERT INTO `esteticas` (`id`, `nombre`, `direccion`, `telefono`, `latitud`, `longitud`, `peinados`) VALUES
(1, 'For You', 'Av. Sta. Margarita #5020 Local 9, Zapopan, Jalisco', '36565876 o 3316032198', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peinados`
--

CREATE TABLE IF NOT EXISTS `peinados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(40) NOT NULL,
  `descripcion` longtext NOT NULL,
  `imagen` longtext NOT NULL,
  `video` longtext NOT NULL,
  `dificultad` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `descripcion` (`descripcion`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `peinados`
--

INSERT INTO `peinados` (`id`, `nombre`, `descripcion`, `imagen`, `video`, `dificultad`) VALUES
(1, 'Peinado de Dama', 'Corto Chino Casual Dia Clasico', 'http://www.tus-peinados.com/wp-content/uploads/2009/02/peinados-de-boda.jpg', 'http://www.youtube.com/watch?v=T3nDVZiywnU', 'Facil');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
