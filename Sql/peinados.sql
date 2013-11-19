-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-11-2013 a las 07:17:42
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
-- Estructura de tabla para la tabla `peinados`
--

CREATE TABLE IF NOT EXISTS `peinados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `descripcion` longtext NOT NULL,
  `descripcion2` longtext NOT NULL,
  `imagen` longtext NOT NULL,
  `video` longtext NOT NULL,
  `dificultad` varchar(40) NOT NULL,
  `estetica` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `descripcion` (`descripcion`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

--
-- Volcado de datos para la tabla `peinados`
--

INSERT INTO `peinados` (`id`, `nombre`, `descripcion`, `descripcion2`, `imagen`, `video`, `dificultad`, `estetica`) VALUES
(1, 'Recogido Lateral', 'Corto Ondulado Formal Dia Clasico', 'recogido lateral tipo boho. Es un recogido muy romántico y bohemio ideal para citas y celebraciones.', 'http://www.bodas.net/usuarios/fotos/3/4/8/2/cfb_1627.jpg', 'http://www.youtube.com/watch?v=4TR5jsB_q_w', 'Facil', 1),
(2, 'Pelo Rizado', 'Corto Ondulado Formal Dia Moderno', '3 peinados muy sencillos para pelo rizado.', './peinados/NoDisponible.png', 'http://www.youtube.com/watch?v=B-nvHTeanck', 'Medio', 0),
(3, 'Peinados faciles', 'Corto Ondulado Formal Noche Clasico', 'Dos peinados súper fáciles para cualquier ocasión, pensado especialmente para pelo corto y rizado ya que es como lo tengo ahora, pero aun así, se puede tambien para pelo liso y largo! se hacen los mismos pasos', './peinados/NoDisponible.png', 'http://youtu.be/FvzRMcOwgJE?t=7s', 'Facil', 0),
(4, 'Glamuroso', 'Corto Ondulado Formal Noche Moderno', 'Peinado con Rizos de lado', 'http://i1.ytimg.com/vi/BGhjO9n1WRc/hqdefault.jpg', 'http://www.youtube.com/watch?v=BGhjO9n1WRc', 'Medio', 1),
(5, 'Recogido En Melena Corta Con Rizos', 'Corto Ondulado Uso Diario Dia Clásico', 'Es un recogido con la parte de adelante suelta y el flequillo.', 'http://www.cortespelo.net/fotos/cortes-pelo-rizado-recogido.jpg', 'http://www.youtube.com/watch?v=ZGwZ3PNVSGU', 'Medio', 1),
(6, 'Wavy Hair', 'Corto Ondulado Uso Diario Dia Moderno', 'Peinado usado por actrices como:<br>\nVanessa Hudgens<br>\nAshley Tisdale<br>\nMiley Cyrus<br>\nSelena Gomez<br>\nBritney Spears\n', 'http://www.exposay.com/celebrity-photos/ashley-tisdale-us-premiere-if-harry-potter-and-the-order-of-the-phoenix-0KVMq8.jpg', 'http://www.youtube.com/watch?v=_nOOlQw7Jt4', 'Medio', 1),
(7, '3 peinados para cabello ondulado', 'Corto Ondulado Uso Diario Noche Clasico', 'Sin Descripción', './peinados/NoDisponible.png', 'http://www.youtube.com/watch?v=fIpcKyzQThY', 'Facil', 0),
(8, 'Recogido para pelo rizado informal', 'Corto Ondulado Uso Diario Noche Moderno', 'Un recogido o moño informal para pelo rizado', 'http://peinadospeinados.es/files/2011/08/rizos1.jpg', 'http://www.youtube.com/watch?v=ltiKOsn6d5Q', 'Medio', 1),
(9, 'Recogido Estilo Medieval', 'Largo Chino Casual Dia Clasico', 'Recogido con corona trenzada', 'http://mx.hola.com/imagenes/belleza/tendencias/2010020912815/peinado/trenzas/pasarelas/0-28-9/28009-z.jpg', 'http://www.youtube.com/watch?v=0VFTDhZHthw', 'Alto', 1),
(10, 'Peinar tu cabello chino o cabello rizado', 'Largo Chino Casual Dia Moderno', 'Peinar tu cabello chino o cabello rizado', './peinados/NoDisponible.png', 'http://www.youtube.com/watch?v=cZSDrXR0LlU', 'Facil', 1),
(11, 'Peinar tu cabello chino o cabello rizado', 'Largo Chino Casual Noche Clasico', 'Peinados Practicos Para Cabello Rizado o Chino', './peinados/NoDisponible.png', 'http://www.youtube.com/watch?v=c12VqsNRVsI', 'Facil', 1),
(12, 'Peina cabello rizado', 'Largo Chino Casual Noche Moderno', 'Peina cabello rizado', './peinados/NoDisponible.png', 'http://www.youtube.com/watch?v=vP9iM9hauik', 'Facil', 1),
(13, 'Moño para cabello rizado', 'Largo Chino Formal Dia Clasico', 'Moño para cabello rizado', 'http://www.peinadosfiestamoda.com/fotos/peinados-fiesta-novia.jpg', 'http://www.youtube.com/watch?v=DxfNAjaoZV0', 'Medio', 1),
(14, 'Recogido veraniego', 'Largo Chino Formal Dia Moderno', 'Recogido veraniego', 'http://i3.ytimg.com/vi/krbzuUWsGAU/mqdefault.jpg', 'http://www.youtube.com/watch?v=-TABn5gfov4', 'Medio', 1),
(15, 'Corto peinado para pelo rizado', 'Corto Chino Casual Dia Clásico', 'Sin Descripción', './peinados/NoDisponible.png', 'http://www.youtube.com/watch?v=vez5BPgtBMk', 'Medio', 1),
(16, 'Recogido bajo en cabello rizado u ondulado', 'Corto Chino Casual Noche Clasico', 'Cogido bajo, en la zona de la nuca, para cabello rizado u ondulado. Lleva una flor en la zona baja lateral. Es un recogido para novia o para invitada.\r\n', 'http://2.bp.blogspot.com/-Fdmyol_gOPU/TcRwXDVHnnI/AAAAAAAAADk/qjXhkzqLfbg/s1600/recogido%2Bcon%2Brizos-pedido%2BCynthia.bmp', 'http://www.youtube.com/watch?v=5AcX6nQSjqA', 'Medio', 1),
(17, 'Peinado elegante', 'Corto Chino Casual Noche Moderno', 'Peinado elegante en cabello corto', 'http://1.bp.blogspot.com/_ODKx9cTFxF8/TKPBqx_muOI/AAAAAAAAB70/44mWyLLDWyM/s1600/Peinados-de-cabello-corto-rizado.jpg', 'http://www.youtube.com/watch?v=S-k8aAXYzRQ', 'Medio', 1),
(18, 'Dutch Flower Braid', 'Corto Chino Formal Noche Clasico', 'Dutch Flower Braid', 'http://mycreativetouch.files.wordpress.com/2012/07/french-flower-braid-1.jpg', 'http://www.youtube.com/watch?v=jbz-na--8mg', 'Alto', 1),
(19, 'Peinados para verano', 'Corto Chino Uso diario Dia Clásico', 'Peinados para verano', './peinados/NoDisponible.png', 'http://www.youtube.com/watch?v=Z8fuI6h9JxI', 'Facil', 0),
(20, 'Peinado Rihanna - "We Found Love"', 'Corto Chino Uso Diario Dia Moderno', 'Peinado de Rihanna de su Videoclip "We Found Love"', 'http://data1.whicdn.com/images/77480627/large.jpg', 'http://www.youtube.com/watch?v=ZpoHeDgHkfk', 'Medio', 1),
(21, 'Peinado para cabello corto', 'Corto Lacio Casual Dia Clasico', 'Peinado para cabello corto: una manera de peinarlo, sacando las puntas hacia afuera.', 'http://www.emujer.com/files/article/view/t/tipos-de-peinado-para-cabello-corto_fbyr3.jpg', 'http://www.youtube.com/watch?v=OhBWvtINWoI', 'Facil', 1),
(22, 'Cortes de pelo corto', 'Corto Lacio Casual Dia Moderno', 'Diversos cortes para pelo corto', './peinados/NoDisponible.png', 'http://www.youtube.com/watch?v=qGQEA5qkcy0', 'Medio', 1),
(23, 'Peinado de fiesta', 'Largo Chino Formal Noche Clasico ', 'Peinado de fiesta para pelo rizado', './peinados/peinadoDeFiesta.jpg', 'http://www.youtube.com/watch?v=fccpT-KqzlM', 'Facil', 1),
(24, 'Peinado cabello chino', 'Largo Chino Uso Diario Dia Moderno', 'Peinado cabello chino', './peinados/NoDisponible.png', 'http://www.youtube.com/watch?v=ASXZzN5ro2I', 'Facil', 1),
(25, 'Recogido lateral', 'Largo Chino Uso Diario Noche Clasico', 'Recogido lateral con un acabado de tendencia, deshecho o más pulido. Lo puedes hacer lateral o centrado y alto o bajo, ¡tú eliges!', 'http://1.bp.blogspot.com/_HL3sQ71urCY/S-FhJAB96hI/AAAAAAAAABs/BPXiBikKu7w/s1600/foto+1.jpg', 'http://www.youtube.com/watch?v=uOvQ8DDw3co', 'Facil', 1),
(26, 'Recogido romántico', 'Largo Chino Uso Diario Noche Moderno', 'Sin Descripción', './peinados/RecogidoRomantico.jpg', 'http://www.youtube.com/watch?v=vQk7MJUi7Qw', 'Medio', 1),
(27, 'Crochet Stitch Ponytail', 'Largo Lacio Casual Dia Clasico', 'Puede ser usado como una cola de caballo todos los días o un barrido lateral elegante peinado', 'http://i1.ytimg.com/vi/Q0NU_Ojupiw/maxresdefault.jpg?feature=og', 'http://www.youtube.com/watch?v=Q0NU_Ojupiw', 'Medio', 1),
(28, 'Intricate 5-Strand Braid Hair', 'Largo Lacio Casual Dia Moderno', 'Requisito: Tener el pelo largo', 'http://i1.ytimg.com/vi/dcFaBT3gTis/maxresdefault.jpg', 'http://www.youtube.com/watch?v=dcFaBT3gTis', 'Facil', 1),
(29, 'Side Swept French Fish Braid', 'Largo Lacio Casual Noche Clasico', 'Sin descripción', 'http://3.bp.blogspot.com/-F9uo_0tASns/TeOfloDz5pI/AAAAAAAAHUs/2ynaebIaSec/s1600/side%2Bfish%2Bbraid.jpg', 'http://www.youtube.com/watch?v=yP96pzXFRXU', 'Medio', 1),
(30, 'Ponytail Bow', 'Largo Lacio Casual Noche Moderno', 'Sin descripción', 'http://www.popgals.com/simg/2012-11-10/The%20Ponytail%20Bow%20%20Cute%20Hairstyles%20(1).jpg', 'http://www.youtube.com/watch?v=GfwDxBD12go', 'Facil', 1),
(31, 'Trenza Irregular', 'Largo Lacio Formal Dia Clasico', 'Tres peinados de diferente dificultad a partir de la misma técnica', 'http://image1.frequency.com/uri/w354_h200_ctrim_ll/_/item/7/9/5/9/1_2_y_3_Peinados_Trenza_Irregular_o_S_79596144_thumbnail.jpg', 'http://www.youtube.com/watch?v=AFZIsAW8Lao', 'Medio', 1),
(32, 'The Bow Braid', 'Largo Lacio Formal Dia Moderno', 'Sin descripción', 'http://www.cutegirlshairstyles.com/wp-content/uploads/2012/05/RearBowBraids.jpg', 'http://www.youtube.com/watch?v=4ICAWFHaA7g', 'Alto', 1),
(33, 'Styling Short Hair', 'Corto Lacio Casual Noche Clasico', 'Sin descripción', './peinados/StylingShortHair.png', 'http://www.youtube.com/watch?v=uVtVjhDZvPY', 'Facil', 1),
(34, 'Curl Short Hair', 'Corto Lacio Casual Noche Moderno', 'Sin descripción', 'http://2.bp.blogspot.com/-DC423DMeJm8/UV7RF2PK4RI/AAAAAAAAA7Q/Gw6thxKpNXA/s400/stylish-women-s-short-curly-hairstyles-2013-hhairstyle.jpg', 'http://www.youtube.com/watch?v=cDZmAKrkou4', 'Facil', 1),
(35, 'Perfect Curls For Short Hair', 'Corto Lacio Formal Dia Clasico', 'Rizos Perfectos para el pelo corto', 'http://cdn9.mixrmedia.com/wp-uploads/flauntme/blog/2012/01/perfect-curls-for-short-hair.jpg', 'http://www.youtube.com/watch?v=9qDA711gh3Y', 'Facil', 1),
(36, 'Peinados cortos', 'Corto Lacio Formal Dia Moderno', '', 'http://1.bp.blogspot.com/-fPtdRpIvSP8/UPyIODGPfsI/AAAAAAAANM4/KmnP7AYjNBk/s400/CURLY4.jpg', 'http://www.youtube.com/watch?v=uJ0vgAnyItI', 'Facil', 1),
(37, 'Peinados de fiesta', 'Corto Lacio Formal Noche Moderno', 'Melena espectacular con ondas para las fiestas.', 'http://4.bp.blogspot.com/-tO1WLfVaMoU/URGP34QUu5I/AAAAAAAAuXA/UJYSSjn7IFE/s400/9+50.jpg', 'http://www.youtube.com/watch?v=MQbuT0gcrsg', 'Facil', 1),
(38, '10 Short Hair Styles', 'Corto Lacio Uso Diario Dia Clasico', '10 Estilos de pelo corto', './peinados/NoDisponible.png', 'http://www.youtube.com/watch?v=RiMhij_J3c8', 'Facil', 1),
(39, 'Peinados rápidos', 'Corto Lacio Uso Diario Dia Moderno', 'Peinados rápidos y fáciles para diario', './peinados/NoDisponible.png', 'http://www.youtube.com/watch?v=49a00eY-vmA', 'Facil', 0),
(40, 'Peinado bohemio', 'Corto Lacio Uso Diario Noche Clasico', 'Peinado bohemio recogido para cabello mediano', 'http://i1.ytimg.com/vi/mdrARpO2HSk/mqdefault.jpg', 'http://www.youtube.com/watch?v=mdrARpO2HSk', 'Facil', 1),
(41, 'Twisted Side Ponytail', 'Corto Lacio Uso Diario Noche Moderno', 'Retorcida Cola de caballo lateral<br>\r\nEsta cola de caballo lado torcido es un peinado perfecto todos los días cuando se está en el camino. Todo lo que necesitas es un pelo elástico', './peinados/TwistedSidePonytail.jpg', 'http://www.youtube.com/watch?v=_YVqg7qfTB0', 'Medio', 1),
(42, '7 peinados para cabello corto ', 'Corto Ondulado Casual Dia Moderno', '7 peinados fáciles y originales para cabello corto ', './peinados/NoDisponible.png', 'http://www.youtube.com/watch?v=Hc0H02g9pOM', 'Facil', 1),
(43, 'Short Hair Routine', 'Corto Ondulado Casual Noche Clasico', 'Short Hair Routine: Textured Waves + Extra Hairstyle', 'http://farm6.staticflickr.com/5222/5881752291_fb1a5d3d09.jpg', 'http://www.youtube.com/watch?v=plpjH25VyhQ', 'Facil', 1),
(44, 'Curly Hairstyle', 'Corto Ondulado Casual Noche Moderno', 'Sin descripción', 'http://www.hdwallpapersinn.com/wp-content/uploads/2013/03/Hairstyles-for-Curly-Hair6.jpg', 'http://www.youtube.com/watch?v=FZBlcOEbuGI', 'Facil', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
