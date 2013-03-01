-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Servidor: localhost
-- Tiempo de generación: 03-12-2012 a las 18:59:55
-- Versión del servidor: 5.0.51
-- Versión de PHP: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Base de datos: `obligatorio_py`
-- 

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `app_obl_campania`
-- 

CREATE TABLE `app_obl_campania` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(50) NOT NULL,
  `descripcion` longtext,
  `fechaIni` datetime NOT NULL,
  `fechaFin` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- 
-- Volcar la base de datos para la tabla `app_obl_campania`
-- 

INSERT INTO `app_obl_campania` VALUES (1, 'Elecciones', 'Se postula vicky', '2012-10-02 06:27:09', '2012-12-13 02:00:00');
INSERT INTO `app_obl_campania` VALUES (2, 'Municipales', '', '2013-01-23 23:54:58', '2013-02-13 23:55:04');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `app_obl_candidato`
-- 

CREATE TABLE `app_obl_candidato` (
  `persona_ptr_id` int(11) NOT NULL,
  `informacion` varchar(50) NOT NULL,
  PRIMARY KEY  (`persona_ptr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Volcar la base de datos para la tabla `app_obl_candidato`
-- 

INSERT INTO `app_obl_candidato` VALUES (1, 'fsfsfs');
INSERT INTO `app_obl_candidato` VALUES (2, 'jkweefio');
INSERT INTO `app_obl_candidato` VALUES (4, 'hfghg');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `app_obl_candidatocomando`
-- 

CREATE TABLE `app_obl_candidatocomando` (
  `comando_ptr_id` int(11) NOT NULL,
  `Candidato_id` int(11) NOT NULL,
  `ciudadComando_id` int(11) NOT NULL,
  PRIMARY KEY  (`comando_ptr_id`),
  UNIQUE KEY `Candidato_id` (`Candidato_id`),
  KEY `app_obl_candidatocomando_3093e260` (`ciudadComando_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Volcar la base de datos para la tabla `app_obl_candidatocomando`
-- 

INSERT INTO `app_obl_candidatocomando` VALUES (3, 2, 2);
INSERT INTO `app_obl_candidatocomando` VALUES (4, 4, 1);
INSERT INTO `app_obl_candidatocomando` VALUES (7, 1, 3);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `app_obl_carrier`
-- 

CREATE TABLE `app_obl_carrier` (
  `id` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `app_obl_carrier`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `app_obl_ciudad`
-- 

CREATE TABLE `app_obl_ciudad` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

-- 
-- Volcar la base de datos para la tabla `app_obl_ciudad`
-- 

INSERT INTO `app_obl_ciudad` VALUES (1, 'Salto');
INSERT INTO `app_obl_ciudad` VALUES (2, 'Rocha');
INSERT INTO `app_obl_ciudad` VALUES (3, 'Montevideo');
INSERT INTO `app_obl_ciudad` VALUES (4, 'Colonia');
INSERT INTO `app_obl_ciudad` VALUES (5, 'San Jose');
INSERT INTO `app_obl_ciudad` VALUES (6, 'Rivera');
INSERT INTO `app_obl_ciudad` VALUES (7, 'Treinta y tres');
INSERT INTO `app_obl_ciudad` VALUES (8, 'Cerro Largo');
INSERT INTO `app_obl_ciudad` VALUES (9, 'Paysandu');
INSERT INTO `app_obl_ciudad` VALUES (10, 'Canelones');
INSERT INTO `app_obl_ciudad` VALUES (11, 'Flores');
INSERT INTO `app_obl_ciudad` VALUES (12, 'Florida');
INSERT INTO `app_obl_ciudad` VALUES (13, 'Durazno');
INSERT INTO `app_obl_ciudad` VALUES (14, 'Soriano');
INSERT INTO `app_obl_ciudad` VALUES (15, 'Rio Negro');
INSERT INTO `app_obl_ciudad` VALUES (16, 'Tacuarembo');
INSERT INTO `app_obl_ciudad` VALUES (17, 'Maldonado');
INSERT INTO `app_obl_ciudad` VALUES (18, 'Lavalleja');
INSERT INTO `app_obl_ciudad` VALUES (19, 'Artigas');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `app_obl_ciudadcomando`
-- 

CREATE TABLE `app_obl_ciudadcomando` (
  `comando_ptr_id` int(11) NOT NULL,
  `Ciudad_id` int(11) NOT NULL,
  PRIMARY KEY  (`Ciudad_id`),
  UNIQUE KEY `comando_ptr_id` (`comando_ptr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Volcar la base de datos para la tabla `app_obl_ciudadcomando`
-- 

INSERT INTO `app_obl_ciudadcomando` VALUES (1, 1);
INSERT INTO `app_obl_ciudadcomando` VALUES (5, 2);
INSERT INTO `app_obl_ciudadcomando` VALUES (6, 3);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `app_obl_comando`
-- 

CREATE TABLE `app_obl_comando` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(3) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

-- 
-- Volcar la base de datos para la tabla `app_obl_comando`
-- 

INSERT INTO `app_obl_comando` VALUES (1, 'SAL');
INSERT INTO `app_obl_comando` VALUES (3, 'RAU');
INSERT INTO `app_obl_comando` VALUES (4, 'GIM');
INSERT INTO `app_obl_comando` VALUES (5, 'ROC');
INSERT INTO `app_obl_comando` VALUES (6, 'MON');
INSERT INTO `app_obl_comando` VALUES (7, 'PER');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `app_obl_mo`
-- 

CREATE TABLE `app_obl_mo` (
  `sms_ptr_id` int(11) NOT NULL,
  PRIMARY KEY  (`sms_ptr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Volcar la base de datos para la tabla `app_obl_mo`
-- 

INSERT INTO `app_obl_mo` VALUES (235);
INSERT INTO `app_obl_mo` VALUES (237);
INSERT INTO `app_obl_mo` VALUES (238);
INSERT INTO `app_obl_mo` VALUES (240);
INSERT INTO `app_obl_mo` VALUES (241);
INSERT INTO `app_obl_mo` VALUES (243);
INSERT INTO `app_obl_mo` VALUES (244);
INSERT INTO `app_obl_mo` VALUES (246);
INSERT INTO `app_obl_mo` VALUES (247);
INSERT INTO `app_obl_mo` VALUES (249);
INSERT INTO `app_obl_mo` VALUES (251);
INSERT INTO `app_obl_mo` VALUES (253);
INSERT INTO `app_obl_mo` VALUES (255);
INSERT INTO `app_obl_mo` VALUES (257);
INSERT INTO `app_obl_mo` VALUES (259);
INSERT INTO `app_obl_mo` VALUES (261);
INSERT INTO `app_obl_mo` VALUES (263);
INSERT INTO `app_obl_mo` VALUES (265);
INSERT INTO `app_obl_mo` VALUES (298);
INSERT INTO `app_obl_mo` VALUES (300);
INSERT INTO `app_obl_mo` VALUES (302);
INSERT INTO `app_obl_mo` VALUES (304);
INSERT INTO `app_obl_mo` VALUES (345);
INSERT INTO `app_obl_mo` VALUES (347);
INSERT INTO `app_obl_mo` VALUES (349);
INSERT INTO `app_obl_mo` VALUES (351);
INSERT INTO `app_obl_mo` VALUES (353);
INSERT INTO `app_obl_mo` VALUES (355);
INSERT INTO `app_obl_mo` VALUES (358);
INSERT INTO `app_obl_mo` VALUES (360);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `app_obl_mt`
-- 

CREATE TABLE `app_obl_mt` (
  `sms_ptr_id` int(11) NOT NULL,
  `sent` tinyint(1) NOT NULL,
  PRIMARY KEY  (`sms_ptr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Volcar la base de datos para la tabla `app_obl_mt`
-- 

INSERT INTO `app_obl_mt` VALUES (236, 1);
INSERT INTO `app_obl_mt` VALUES (239, 1);
INSERT INTO `app_obl_mt` VALUES (242, 1);
INSERT INTO `app_obl_mt` VALUES (245, 1);
INSERT INTO `app_obl_mt` VALUES (248, 1);
INSERT INTO `app_obl_mt` VALUES (250, 1);
INSERT INTO `app_obl_mt` VALUES (252, 1);
INSERT INTO `app_obl_mt` VALUES (254, 1);
INSERT INTO `app_obl_mt` VALUES (256, 1);
INSERT INTO `app_obl_mt` VALUES (258, 1);
INSERT INTO `app_obl_mt` VALUES (260, 1);
INSERT INTO `app_obl_mt` VALUES (262, 1);
INSERT INTO `app_obl_mt` VALUES (264, 1);
INSERT INTO `app_obl_mt` VALUES (266, 1);
INSERT INTO `app_obl_mt` VALUES (267, 1);
INSERT INTO `app_obl_mt` VALUES (268, 1);
INSERT INTO `app_obl_mt` VALUES (269, 1);
INSERT INTO `app_obl_mt` VALUES (270, 1);
INSERT INTO `app_obl_mt` VALUES (271, 1);
INSERT INTO `app_obl_mt` VALUES (272, 1);
INSERT INTO `app_obl_mt` VALUES (273, 1);
INSERT INTO `app_obl_mt` VALUES (274, 1);
INSERT INTO `app_obl_mt` VALUES (275, 1);
INSERT INTO `app_obl_mt` VALUES (276, 1);
INSERT INTO `app_obl_mt` VALUES (277, 1);
INSERT INTO `app_obl_mt` VALUES (278, 1);
INSERT INTO `app_obl_mt` VALUES (279, 1);
INSERT INTO `app_obl_mt` VALUES (280, 1);
INSERT INTO `app_obl_mt` VALUES (281, 1);
INSERT INTO `app_obl_mt` VALUES (282, 1);
INSERT INTO `app_obl_mt` VALUES (283, 1);
INSERT INTO `app_obl_mt` VALUES (284, 1);
INSERT INTO `app_obl_mt` VALUES (285, 1);
INSERT INTO `app_obl_mt` VALUES (286, 1);
INSERT INTO `app_obl_mt` VALUES (287, 1);
INSERT INTO `app_obl_mt` VALUES (288, 1);
INSERT INTO `app_obl_mt` VALUES (289, 1);
INSERT INTO `app_obl_mt` VALUES (290, 1);
INSERT INTO `app_obl_mt` VALUES (291, 1);
INSERT INTO `app_obl_mt` VALUES (292, 1);
INSERT INTO `app_obl_mt` VALUES (293, 1);
INSERT INTO `app_obl_mt` VALUES (294, 1);
INSERT INTO `app_obl_mt` VALUES (295, 1);
INSERT INTO `app_obl_mt` VALUES (296, 1);
INSERT INTO `app_obl_mt` VALUES (297, 1);
INSERT INTO `app_obl_mt` VALUES (299, 1);
INSERT INTO `app_obl_mt` VALUES (301, 1);
INSERT INTO `app_obl_mt` VALUES (303, 1);
INSERT INTO `app_obl_mt` VALUES (305, 1);
INSERT INTO `app_obl_mt` VALUES (306, 1);
INSERT INTO `app_obl_mt` VALUES (307, 1);
INSERT INTO `app_obl_mt` VALUES (308, 1);
INSERT INTO `app_obl_mt` VALUES (309, 1);
INSERT INTO `app_obl_mt` VALUES (310, 1);
INSERT INTO `app_obl_mt` VALUES (311, 1);
INSERT INTO `app_obl_mt` VALUES (312, 1);
INSERT INTO `app_obl_mt` VALUES (313, 1);
INSERT INTO `app_obl_mt` VALUES (314, 1);
INSERT INTO `app_obl_mt` VALUES (315, 1);
INSERT INTO `app_obl_mt` VALUES (316, 1);
INSERT INTO `app_obl_mt` VALUES (317, 1);
INSERT INTO `app_obl_mt` VALUES (318, 1);
INSERT INTO `app_obl_mt` VALUES (319, 1);
INSERT INTO `app_obl_mt` VALUES (320, 1);
INSERT INTO `app_obl_mt` VALUES (321, 1);
INSERT INTO `app_obl_mt` VALUES (322, 1);
INSERT INTO `app_obl_mt` VALUES (323, 1);
INSERT INTO `app_obl_mt` VALUES (324, 1);
INSERT INTO `app_obl_mt` VALUES (325, 1);
INSERT INTO `app_obl_mt` VALUES (326, 1);
INSERT INTO `app_obl_mt` VALUES (327, 1);
INSERT INTO `app_obl_mt` VALUES (328, 1);
INSERT INTO `app_obl_mt` VALUES (329, 1);
INSERT INTO `app_obl_mt` VALUES (330, 1);
INSERT INTO `app_obl_mt` VALUES (331, 1);
INSERT INTO `app_obl_mt` VALUES (332, 1);
INSERT INTO `app_obl_mt` VALUES (333, 1);
INSERT INTO `app_obl_mt` VALUES (334, 1);
INSERT INTO `app_obl_mt` VALUES (335, 1);
INSERT INTO `app_obl_mt` VALUES (336, 1);
INSERT INTO `app_obl_mt` VALUES (337, 1);
INSERT INTO `app_obl_mt` VALUES (338, 1);
INSERT INTO `app_obl_mt` VALUES (339, 1);
INSERT INTO `app_obl_mt` VALUES (340, 1);
INSERT INTO `app_obl_mt` VALUES (341, 1);
INSERT INTO `app_obl_mt` VALUES (342, 1);
INSERT INTO `app_obl_mt` VALUES (343, 1);
INSERT INTO `app_obl_mt` VALUES (344, 1);
INSERT INTO `app_obl_mt` VALUES (346, 1);
INSERT INTO `app_obl_mt` VALUES (348, 1);
INSERT INTO `app_obl_mt` VALUES (350, 1);
INSERT INTO `app_obl_mt` VALUES (352, 1);
INSERT INTO `app_obl_mt` VALUES (354, 1);
INSERT INTO `app_obl_mt` VALUES (356, 1);
INSERT INTO `app_obl_mt` VALUES (357, 1);
INSERT INTO `app_obl_mt` VALUES (359, 1);
INSERT INTO `app_obl_mt` VALUES (361, 1);
INSERT INTO `app_obl_mt` VALUES (362, 1);
INSERT INTO `app_obl_mt` VALUES (363, 1);
INSERT INTO `app_obl_mt` VALUES (364, 1);
INSERT INTO `app_obl_mt` VALUES (365, 1);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `app_obl_persona`
-- 

CREATE TABLE `app_obl_persona` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `fechaNac` date default NULL,
  `documento` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `ciudad_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `telefono` (`telefono`),
  KEY `app_obl_persona_4e8eecfa` (`ciudad_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

-- 
-- Volcar la base de datos para la tabla `app_obl_persona`
-- 

INSERT INTO `app_obl_persona` VALUES (1, 'Juan ', 'Perez', '2012-10-29', '45677778', '18 de julio', '33232', 1);
INSERT INTO `app_obl_persona` VALUES (2, 'Raul', 'Vera', '2012-10-29', '93053950', '8 de Octubre', '93049', 2);
INSERT INTO `app_obl_persona` VALUES (4, 'Pedro', 'Gimenez', '2012-06-20', '43277343', 'wdsds', '099455587', 1);
INSERT INTO `app_obl_persona` VALUES (13, 'Veronica', 'Lopez', NULL, '3.555.666-2', 'Vazquez 1445', '098666333', 10);
INSERT INTO `app_obl_persona` VALUES (22, 'Ana', 'Gomez', '1972-12-10', '2.444.555-1', 'Brito del pino 2345', '096777333', 3);
INSERT INTO `app_obl_persona` VALUES (20, 'Juan', 'Castillo', NULL, '2.888.222-1', 'Colonia 1212', '099888777', 1);
INSERT INTO `app_obl_persona` VALUES (15, 'Valentina', 'De la puente', NULL, '4.222.333-1', 'Baltazar Vargas 1378', '096555444', 10);
INSERT INTO `app_obl_persona` VALUES (16, 'Antonio', 'Grecco', NULL, '1.888.555-1', '18 de Julio 1245', '096856342', 3);
INSERT INTO `app_obl_persona` VALUES (17, 'Pablo', 'Canosa', NULL, '2.999.444.-1', 'Marco Bruto 3344', '098555123', 3);
INSERT INTO `app_obl_persona` VALUES (18, 'Andrea', 'Caiafa', NULL, '2.833.256-1', 'Alamos 1212', '096987654', 10);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `app_obl_pin`
-- 

CREATE TABLE `app_obl_pin` (
  `id` int(11) NOT NULL auto_increment,
  `pin` varchar(4) NOT NULL,
  `tel` varchar(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=166 ;

-- 
-- Volcar la base de datos para la tabla `app_obl_pin`
-- 

INSERT INTO `app_obl_pin` VALUES (162, '2377', '0356659');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `app_obl_plataforma`
-- 

CREATE TABLE `app_obl_plataforma` (
  `id` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `app_obl_plataforma`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `app_obl_reporte`
-- 

CREATE TABLE `app_obl_reporte` (
  `id` int(11) NOT NULL auto_increment,
  `qfy` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

-- 
-- Volcar la base de datos para la tabla `app_obl_reporte`
-- 

INSERT INTO `app_obl_reporte` VALUES (9, 4);
INSERT INTO `app_obl_reporte` VALUES (8, 4);
INSERT INTO `app_obl_reporte` VALUES (10, 1);
INSERT INTO `app_obl_reporte` VALUES (11, 1);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `app_obl_reportecandidato`
-- 

CREATE TABLE `app_obl_reportecandidato` (
  `reporte_ptr_id` int(11) NOT NULL,
  `candidato_id` int(11) NOT NULL,
  `campania_id` int(11) NOT NULL,
  PRIMARY KEY  (`reporte_ptr_id`),
  KEY `app_obl_reportecandidato_6e7c0fd4` (`candidato_id`),
  KEY `app_obl_reportecandidato_34909c90` (`campania_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `app_obl_reportecandidato`
-- 

INSERT INTO `app_obl_reportecandidato` VALUES (8, 4, 1);
INSERT INTO `app_obl_reportecandidato` VALUES (10, 2, 1);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `app_obl_reporteciudad`
-- 

CREATE TABLE `app_obl_reporteciudad` (
  `reporte_ptr_id` int(11) NOT NULL,
  `ciudad_id` int(11) NOT NULL,
  `campania_id` int(11) NOT NULL,
  PRIMARY KEY  (`reporte_ptr_id`),
  KEY `app_obl_reporteciudad_4e8eecfa` (`ciudad_id`),
  KEY `app_obl_reporteciudad_34909c90` (`campania_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `app_obl_reporteciudad`
-- 

INSERT INTO `app_obl_reporteciudad` VALUES (9, 1, 1);
INSERT INTO `app_obl_reporteciudad` VALUES (11, 2, 1);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `app_obl_sesion`
-- 

CREATE TABLE `app_obl_sesion` (
  `id` int(11) NOT NULL auto_increment,
  `candidato_id` int(11) default NULL,
  `campania_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `estado` varchar(2) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `app_obl_sesion_6e7c0fd4` (`candidato_id`),
  KEY `app_obl_sesion_34909c90` (`campania_id`),
  KEY `app_obl_sesion_363db8b9` (`usuario_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

-- 
-- Volcar la base de datos para la tabla `app_obl_sesion`
-- 

INSERT INTO `app_obl_sesion` VALUES (10, 4, 1, 13, 'VE');
INSERT INTO `app_obl_sesion` VALUES (9, 4, 1, 14, 'VE');
INSERT INTO `app_obl_sesion` VALUES (11, 4, 1, 16, 'VE');
INSERT INTO `app_obl_sesion` VALUES (12, 2, 1, 19, 'VE');
INSERT INTO `app_obl_sesion` VALUES (13, 2, 1, 20, 'VE');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `app_obl_sms`
-- 

CREATE TABLE `app_obl_sms` (
  `id` int(11) NOT NULL auto_increment,
  `texto` varchar(160) NOT NULL,
  `fecha` datetime NOT NULL,
  `usuario_id` int(11) default NULL,
  `telefono` varchar(20) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `app_obl_sms_363db8b9` (`usuario_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=366 ;

-- 
-- Volcar la base de datos para la tabla `app_obl_sms`
-- 

INSERT INTO `app_obl_sms` VALUES (305, 'Gracias por vatar en Elecciones', '2012-11-21 23:55:40', 16, '096856342');
INSERT INTO `app_obl_sms` VALUES (304, 'si', '2012-11-21 23:55:40', 16, '096856342');
INSERT INTO `app_obl_sms` VALUES (303, 'Envia SI para confirmar la votacion en Elecciones', '2012-11-21 23:55:26', 16, '096856342');
INSERT INTO `app_obl_sms` VALUES (302, 'SAL GIM', '2012-11-21 23:55:26', 16, '096856342');
INSERT INTO `app_obl_sms` VALUES (283, 'Tu pin es 7238', '2012-11-21 22:01:18', NULL, '096987654');
INSERT INTO `app_obl_sms` VALUES (282, 'Tu pin es 6840', '2012-11-21 21:49:31', NULL, '096987654');
INSERT INTO `app_obl_sms` VALUES (281, 'Tu pin es 8565', '2012-11-21 21:47:51', NULL, '096987654');
INSERT INTO `app_obl_sms` VALUES (280, 'Tu pin es 7156', '2012-11-21 21:47:20', NULL, '096987654');
INSERT INTO `app_obl_sms` VALUES (279, 'Tu pin es 6917', '2012-11-21 21:25:24', NULL, '096987654');
INSERT INTO `app_obl_sms` VALUES (278, 'Tu pin es 4479', '2012-11-21 21:24:18', NULL, '096987654');
INSERT INTO `app_obl_sms` VALUES (277, 'Tu pin es 7561', '2012-11-21 21:07:35', NULL, '96555444');
INSERT INTO `app_obl_sms` VALUES (276, 'Tu pin es 4828', '2012-11-21 21:06:10', NULL, '096555444');
INSERT INTO `app_obl_sms` VALUES (275, 'Tu pin es 5018', '2012-11-21 21:05:33', NULL, '096555444');
INSERT INTO `app_obl_sms` VALUES (274, 'Tu pin es 1948', '2012-11-21 21:04:23', NULL, '096555444');
INSERT INTO `app_obl_sms` VALUES (273, 'Tu pin es 6346', '2012-11-21 20:58:44', NULL, '096777333');
INSERT INTO `app_obl_sms` VALUES (272, 'Tu pin es 7894', '2012-11-21 20:57:27', NULL, '096777333');
INSERT INTO `app_obl_sms` VALUES (271, 'Tu pin es 1573', '2012-11-21 20:55:56', NULL, '096777333');
INSERT INTO `app_obl_sms` VALUES (270, 'Tu pin es 4854', '2012-11-21 20:53:57', NULL, '96777333');
INSERT INTO `app_obl_sms` VALUES (269, 'Tu pin es 4025', '2012-11-21 20:40:01', NULL, '96777333');
INSERT INTO `app_obl_sms` VALUES (268, 'Tu pin es 7557', '2012-11-21 20:38:38', NULL, '96777333');
INSERT INTO `app_obl_sms` VALUES (267, 'Tu pin es 5734', '2012-11-21 20:30:29', NULL, '96777333');
INSERT INTO `app_obl_sms` VALUES (266, 'Gracias por vatar en Elecciones', '2012-11-21 03:40:47', 13, '098666333');
INSERT INTO `app_obl_sms` VALUES (265, 'Si', '2012-11-21 03:40:47', 13, '098666333');
INSERT INTO `app_obl_sms` VALUES (264, 'Envia SI para confirmar la votacion en Elecciones', '2012-11-21 03:40:34', 13, '098666333');
INSERT INTO `app_obl_sms` VALUES (263, 'SAL GIM', '2012-11-21 03:40:34', 13, '098666333');
INSERT INTO `app_obl_sms` VALUES (262, '096777333 no es un usuario habilitado', '2012-11-21 03:39:59', 12, '096777333');
INSERT INTO `app_obl_sms` VALUES (261, 'SAL GIM', '2012-11-21 03:39:59', 12, '096777333');
INSERT INTO `app_obl_sms` VALUES (260, 'Ya votaste en Elecciones', '2012-11-21 03:39:08', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (259, 'S', '2012-11-21 03:39:08', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (258, 'Ya votaste en Elecciones', '2012-11-21 03:38:47', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (257, 'SAL GM', '2012-11-21 03:38:47', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (256, 'Ya votaste en Elecciones', '2012-11-21 03:36:01', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (255, 'SAL GIM', '2012-11-21 03:36:01', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (254, 'Ya votaste en Elecciones', '2012-11-21 03:36:00', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (253, 'SAL GIM', '2012-11-21 03:36:00', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (252, 'Gracias por vatar en Elecciones', '2012-11-21 02:40:30', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (251, 'Si', '2012-11-21 02:40:30', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (250, 'Envia SI confirmacion votacion en Elecciones', '2012-11-21 02:40:17', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (249, 'SAL GIM', '2012-11-21 02:40:17', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (248, 'Envia SI para confirmar la votacion en Elecciones', '2012-11-21 02:40:17', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (247, 'SAL GIM', '2012-11-21 02:40:17', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (246, 'si', '2012-11-21 02:35:43', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (245, 'Envia SI para confirmar la votacion en Elecciones', '2012-11-21 02:35:33', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (244, 'SAL GIM', '2012-11-21 02:35:33', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (243, 'si', '2012-11-21 02:30:27', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (241, 'SAL GIM', '2012-11-21 02:30:18', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (242, 'Envia SI para confirmar la votacion en Elecciones', '2012-11-21 02:30:18', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (301, '096555444 no es un usuario habilitado', '2012-11-21 23:54:51', 15, '096555444');
INSERT INTO `app_obl_sms` VALUES (300, 'SAL GIM', '2012-11-21 23:54:51', 15, '096555444');
INSERT INTO `app_obl_sms` VALUES (299, 'Ya votaste en Elecciones', '2012-11-21 23:54:12', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (298, 'SAL GIM', '2012-11-21 23:54:12', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (297, 'Tu pin es 8603', '2012-11-21 23:53:14', NULL, '098555123555');
INSERT INTO `app_obl_sms` VALUES (296, 'Tu pin es 2614', '2012-11-21 23:52:19', NULL, '098555123');
INSERT INTO `app_obl_sms` VALUES (295, 'Tu pin es 8354', '2012-11-21 23:04:02', NULL, '096856342');
INSERT INTO `app_obl_sms` VALUES (294, 'Tu pin es 4633', '2012-11-21 23:02:33', NULL, '096856342');
INSERT INTO `app_obl_sms` VALUES (293, 'Tu pin es 8405', '2012-11-21 23:00:58', NULL, '96856342');
INSERT INTO `app_obl_sms` VALUES (292, 'Tu pin es 1666', '2012-11-21 22:50:26', NULL, '096856342');
INSERT INTO `app_obl_sms` VALUES (291, 'Tu pin es 7932', '2012-11-21 22:49:23', NULL, '096856342');
INSERT INTO `app_obl_sms` VALUES (290, 'Tu pin es 3049', '2012-11-21 22:48:11', NULL, '096856342');
INSERT INTO `app_obl_sms` VALUES (289, 'Tu pin es 8168', '2012-11-21 22:47:12', NULL, '096856342');
INSERT INTO `app_obl_sms` VALUES (288, 'Tu pin es 4467', '2012-11-21 22:37:05', NULL, '096856342');
INSERT INTO `app_obl_sms` VALUES (287, 'Tu pin es 6575', '2012-11-21 22:18:33', NULL, '096856342');
INSERT INTO `app_obl_sms` VALUES (286, 'Tu pin es 1856', '2012-11-21 22:16:36', NULL, '096856342');
INSERT INTO `app_obl_sms` VALUES (285, 'Tu pin es 2215', '2012-11-21 22:15:45', NULL, '96856342');
INSERT INTO `app_obl_sms` VALUES (284, 'Tu pin es 8921', '2012-11-21 22:03:55', NULL, '96856342');
INSERT INTO `app_obl_sms` VALUES (240, 'Si', '2012-11-21 02:28:42', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (239, 'Envia SI para confirmar la votacion en Elecciones', '2012-11-21 02:28:30', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (238, 'SAL GIM', '2012-11-21 02:28:30', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (237, 'SI', '2012-11-21 02:21:50', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (236, 'Envia SI para confirmar la votacion en Elecciones', '2012-11-21 02:20:11', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (235, 'SAL GIM', '2012-11-21 02:20:10', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (101, 'SAL GIM', '2012-11-20 12:27:06', NULL, '098666333');
INSERT INTO `app_obl_sms` VALUES (102, 'SAL GIM', '2012-11-20 12:27:07', NULL, '098666333');
INSERT INTO `app_obl_sms` VALUES (103, 'SAL GIM', '2012-11-20 12:37:16', 13, '098666333');
INSERT INTO `app_obl_sms` VALUES (104, 'SAL GIM', '2012-11-20 12:42:42', 13, '098666333');
INSERT INTO `app_obl_sms` VALUES (105, 'SAL GIM', '2012-11-20 12:46:47', 13, '098666333');
INSERT INTO `app_obl_sms` VALUES (106, 'SAL GIM', '2012-11-20 12:46:48', 13, '098666333');
INSERT INTO `app_obl_sms` VALUES (107, 'Tu pin es 6175', '2012-11-20 20:21:56', NULL, '99888777');
INSERT INTO `app_obl_sms` VALUES (108, 'Tu pin es 1662', '2012-11-20 20:24:05', NULL, '99888777');
INSERT INTO `app_obl_sms` VALUES (109, 'SAL GIM', '2012-11-20 20:30:34', 13, '098666333');
INSERT INTO `app_obl_sms` VALUES (110, 'SAL GIM', '2012-11-20 20:30:58', 13, '098666333');
INSERT INTO `app_obl_sms` VALUES (111, 'SAL GIM', '2012-11-20 20:32:39', 13, '098666333');
INSERT INTO `app_obl_sms` VALUES (112, 'SAL GIM', '2012-11-20 20:33:15', 13, '098666333');
INSERT INTO `app_obl_sms` VALUES (113, 'SAL GIM', '2012-11-20 20:34:05', 13, '098666333');
INSERT INTO `app_obl_sms` VALUES (114, 'Envia SI para confirmar la votacion en Elecciones', '2012-11-20 20:34:05', 13, '098666333');
INSERT INTO `app_obl_sms` VALUES (115, 'SAL GIM', '2012-11-20 20:43:04', 13, '098666333');
INSERT INTO `app_obl_sms` VALUES (116, 'Envia SI confirmacion votacion en Elecciones', '2012-11-20 20:43:04', 13, '098666333');
INSERT INTO `app_obl_sms` VALUES (117, 'SAL GIM', '2012-11-20 20:43:06', 13, '098666333');
INSERT INTO `app_obl_sms` VALUES (118, 'Envia SI confirmacion votacion en Elecciones', '2012-11-20 20:43:06', 13, '098666333');
INSERT INTO `app_obl_sms` VALUES (119, 'SAL GIM', '2012-11-20 20:43:25', 13, '098666333');
INSERT INTO `app_obl_sms` VALUES (120, 'Envia SI confirmacion votacion en Elecciones', '2012-11-20 20:43:25', 13, '098666333');
INSERT INTO `app_obl_sms` VALUES (121, 'SAL GIM', '2012-11-20 20:43:26', 13, '098666333');
INSERT INTO `app_obl_sms` VALUES (122, 'Envia SI confirmacion votacion en Elecciones', '2012-11-20 20:43:26', 13, '098666333');
INSERT INTO `app_obl_sms` VALUES (123, 'SAL GIM', '2012-11-20 20:43:37', 13, '098666333');
INSERT INTO `app_obl_sms` VALUES (124, 'Envia SI confirmacion votacion en Elecciones', '2012-11-20 20:43:37', 13, '098666333');
INSERT INTO `app_obl_sms` VALUES (125, 'SAL GIM', '2012-11-20 20:43:38', 13, '098666333');
INSERT INTO `app_obl_sms` VALUES (126, 'Envia SI confirmacion votacion en Elecciones', '2012-11-20 20:43:38', 13, '098666333');
INSERT INTO `app_obl_sms` VALUES (127, 'SAL GIM', '2012-11-20 20:43:38', 13, '098666333');
INSERT INTO `app_obl_sms` VALUES (128, 'Envia SI confirmacion votacion en Elecciones', '2012-11-20 20:43:38', 13, '098666333');
INSERT INTO `app_obl_sms` VALUES (129, 'SAL GIM', '2012-11-20 20:43:38', 13, '098666333');
INSERT INTO `app_obl_sms` VALUES (130, 'Envia SI confirmacion votacion en Elecciones', '2012-11-20 20:43:38', 13, '098666333');
INSERT INTO `app_obl_sms` VALUES (131, 'SAL GIM', '2012-11-20 20:43:38', 13, '098666333');
INSERT INTO `app_obl_sms` VALUES (132, 'Envia SI confirmacion votacion en Elecciones', '2012-11-20 20:43:39', 13, '098666333');
INSERT INTO `app_obl_sms` VALUES (133, 'SAL GIM', '2012-11-20 20:43:39', 13, '098666333');
INSERT INTO `app_obl_sms` VALUES (134, 'Envia SI confirmacion votacion en Elecciones', '2012-11-20 20:43:39', 13, '098666333');
INSERT INTO `app_obl_sms` VALUES (135, 'SAL GIM', '2012-11-20 20:43:39', 13, '098666333');
INSERT INTO `app_obl_sms` VALUES (136, 'Envia SI confirmacion votacion en Elecciones', '2012-11-20 20:43:39', 13, '098666333');
INSERT INTO `app_obl_sms` VALUES (137, 'SAL GIM', '2012-11-20 20:43:39', 13, '098666333');
INSERT INTO `app_obl_sms` VALUES (138, 'Envia SI confirmacion votacion en Elecciones', '2012-11-20 20:43:39', 13, '098666333');
INSERT INTO `app_obl_sms` VALUES (139, 'SAL GIM', '2012-11-20 20:43:39', 13, '098666333');
INSERT INTO `app_obl_sms` VALUES (140, 'Envia SI confirmacion votacion en Elecciones', '2012-11-20 20:43:39', 13, '098666333');
INSERT INTO `app_obl_sms` VALUES (141, 'SAL GIM', '2012-11-20 20:43:39', 13, '098666333');
INSERT INTO `app_obl_sms` VALUES (142, 'Envia SI confirmacion votacion en Elecciones', '2012-11-20 20:43:39', 13, '098666333');
INSERT INTO `app_obl_sms` VALUES (143, 'SAL GIM', '2012-11-20 20:43:39', 13, '098666333');
INSERT INTO `app_obl_sms` VALUES (144, 'Envia SI confirmacion votacion en Elecciones', '2012-11-20 20:43:39', 13, '098666333');
INSERT INTO `app_obl_sms` VALUES (145, 'SAL GIM', '2012-11-20 20:43:39', 13, '098666333');
INSERT INTO `app_obl_sms` VALUES (146, 'SAL GIM', '2012-11-20 20:43:39', 13, '098666333');
INSERT INTO `app_obl_sms` VALUES (147, 'Envia SI confirmacion votacion en Elecciones', '2012-11-20 20:43:39', 13, '098666333');
INSERT INTO `app_obl_sms` VALUES (148, 'Envia SI confirmacion votacion en Elecciones', '2012-11-20 20:43:39', 13, '098666333');
INSERT INTO `app_obl_sms` VALUES (149, 'SAL GIM', '2012-11-20 20:44:54', 13, '098666333');
INSERT INTO `app_obl_sms` VALUES (150, 'Envia SI confirmacion votacion en Elecciones', '2012-11-20 20:44:54', 13, '098666333');
INSERT INTO `app_obl_sms` VALUES (151, 'SAL GIM', '2012-11-20 20:44:55', 13, '098666333');
INSERT INTO `app_obl_sms` VALUES (152, 'Envia SI confirmacion votacion en Elecciones', '2012-11-20 20:44:55', 13, '098666333');
INSERT INTO `app_obl_sms` VALUES (153, 'SAL GIM', '2012-11-20 20:45:11', 13, '098666333');
INSERT INTO `app_obl_sms` VALUES (154, 'Envia SI confirmacion votacion en Elecciones', '2012-11-20 20:45:11', 13, '098666333');
INSERT INTO `app_obl_sms` VALUES (155, 'SAL GIM', '2012-11-20 20:46:28', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (156, 'Envia SI para confirmar la votacion en Elecciones', '2012-11-20 20:46:28', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (157, 'SAL GIM', '2012-11-20 20:46:32', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (158, 'Envia SI confirmacion votacion en Elecciones', '2012-11-20 20:46:32', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (159, 'SAL GIM', '2012-11-20 20:46:37', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (160, 'Envia SI confirmacion votacion en Elecciones', '2012-11-20 20:46:37', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (161, 'SAL GIM', '2012-11-20 20:46:58', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (162, 'Envia SI confirmacion votacion en Elecciones', '2012-11-20 20:46:58', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (163, 'SAL GIM', '2012-11-20 20:46:59', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (164, 'Envia SI confirmacion votacion en Elecciones', '2012-11-20 20:46:59', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (165, 'SAL GIM', '2012-11-20 20:47:00', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (166, 'Envia SI confirmacion votacion en Elecciones', '2012-11-20 20:47:00', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (167, 'SAL GIM', '2012-11-20 20:47:01', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (168, 'Envia SI confirmacion votacion en Elecciones', '2012-11-20 20:47:01', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (169, 'SAL GIM', '2012-11-20 20:47:43', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (170, 'Envia SI confirmacion votacion en Elecciones', '2012-11-20 20:47:43', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (171, 'SAL GIM', '2012-11-20 20:48:37', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (172, 'Envia SI confirmacion votacion en Elecciones', '2012-11-20 20:48:37', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (173, 'SAL GIM', '2012-11-20 20:48:40', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (174, 'Envia SI confirmacion votacion en Elecciones', '2012-11-20 20:48:40', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (175, 'SAL GIM', '2012-11-20 20:49:52', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (176, 'Envia SI confirmacion votacion en Elecciones', '2012-11-20 20:49:52', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (177, 'SAL GIM', '2012-11-20 20:49:53', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (178, 'Envia SI confirmacion votacion en Elecciones', '2012-11-20 20:49:53', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (179, 'SAL GIM', '2012-11-20 20:49:53', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (180, 'Envia SI confirmacion votacion en Elecciones', '2012-11-20 20:49:53', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (181, 'SAL GIM', '2012-11-20 20:53:38', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (182, 'Envia SI confirmacion votacion en Elecciones', '2012-11-20 20:53:38', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (183, 'SAL GIM', '2012-11-20 20:53:54', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (184, 'Envia SI confirmacion votacion en Elecciones', '2012-11-20 20:53:54', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (185, 'SAL GIM', '2012-11-20 20:53:55', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (186, 'Envia SI confirmacion votacion en Elecciones', '2012-11-20 20:53:55', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (187, 'SAL GIM', '2012-11-20 20:56:34', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (188, 'Envia SI confirmacion votacion en Elecciones', '2012-11-20 20:56:34', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (189, 'SAL GIM', '2012-11-20 20:59:16', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (190, 'Envia SI confirmacion votacion en Elecciones', '2012-11-20 20:59:16', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (191, 'SAL GIM', '2012-11-20 20:59:17', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (192, 'Envia SI confirmacion votacion en Elecciones', '2012-11-20 20:59:17', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (193, 'SAL GIM', '2012-11-20 20:59:18', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (194, 'Envia SI confirmacion votacion en Elecciones', '2012-11-20 20:59:18', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (195, 'SAL GIM', '2012-11-20 20:59:26', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (196, 'Envia SI confirmacion votacion en Elecciones', '2012-11-20 20:59:27', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (197, 'Usuario object', '2012-11-20 21:00:47', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (198, 'Mo object', '2012-11-20 21:06:14', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (199, 'Mo object', '2012-11-20 21:06:34', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (200, 'SAL GIM', '2012-11-20 21:08:13', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (201, '099888777 no es un usuario habilitado', '2012-11-20 21:08:13', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (202, 'SAL GIM', '2012-11-20 21:08:13', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (203, '099888777 no es un usuario habilitado', '2012-11-20 21:08:13', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (204, 'SAL GIM', '2012-11-20 21:12:11', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (205, '099888777 no es un usuario habilitado', '2012-11-20 21:12:11', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (206, 'SAL GIM', '2012-11-20 21:12:36', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (207, '099888777 no es un usuario habilitado', '2012-11-20 21:12:36', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (208, 'SAL GIM', '2012-11-20 21:12:47', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (209, '099888777 no es un usuario habilitado', '2012-11-20 21:12:47', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (210, 'SAL GIM', '2012-11-20 21:12:55', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (211, '099888777 no es un usuario habilitado', '2012-11-20 21:12:55', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (212, 'SAL GIM', '2012-11-20 21:13:30', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (213, '099888777 no es un usuario habilitado', '2012-11-20 21:13:30', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (214, 'SAL GIM', '2012-11-20 21:13:58', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (215, '099888777 no es un usuario habilitado', '2012-11-20 21:13:58', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (216, 'SAL GIM', '2012-11-20 21:15:01', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (217, '099888777 no es un usuario habilitado', '2012-11-20 21:15:01', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (218, 'SAL GIM', '2012-11-20 21:15:36', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (219, '099888777 no es un usuario habilitado', '2012-11-20 21:15:36', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (220, 'SAL GIM', '2012-11-20 21:17:02', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (221, '099888777 no es un usuario habilitado', '2012-11-20 21:17:02', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (222, 'SAL GIM', '2012-11-20 21:17:28', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (223, 'Envia SI confirmacion votacion en Elecciones', '2012-11-20 21:17:28', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (224, 'SAL GIM', '2012-11-20 21:18:12', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (225, 'Envia SI confirmacion votacion en Elecciones', '2012-11-20 21:18:12', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (226, 'SAL GIM', '2012-11-20 21:20:54', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (227, 'Envia SI para confirmar la votacion en Elecciones', '2012-11-20 21:20:54', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (228, 'SI', '2012-11-21 02:01:15', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (229, 'SI', '2012-11-21 02:04:50', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (230, 'SI', '2012-11-21 02:07:26', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (231, 'SI', '2012-11-21 02:09:31', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (232, 'Gracias por vatar en Elecciones', '2012-11-21 02:09:31', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (233, 'SI', '2012-11-21 02:14:58', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (234, 'Comando de ciudad invalido', '2012-11-21 02:14:58', 14, '099888777');
INSERT INTO `app_obl_sms` VALUES (306, 'Tu pin es 5535', '2012-11-22 00:22:12', NULL, '096987654');
INSERT INTO `app_obl_sms` VALUES (307, 'Tu pin es 8130', '2012-11-22 02:32:43', NULL, '4343');
INSERT INTO `app_obl_sms` VALUES (308, 'Tu pin es 3796', '2012-11-22 02:33:59', NULL, '4343');
INSERT INTO `app_obl_sms` VALUES (309, 'Tu pin es 8861', '2012-11-22 02:35:00', NULL, '3223');
INSERT INTO `app_obl_sms` VALUES (310, 'Tu pin es 4195', '2012-11-22 03:51:06', NULL, '322344');
INSERT INTO `app_obl_sms` VALUES (311, 'Tu pin es 1079', '2012-11-22 03:57:12', NULL, '4444');
INSERT INTO `app_obl_sms` VALUES (312, 'Tu pin es 6991', '2012-11-22 03:58:00', NULL, '5464654');
INSERT INTO `app_obl_sms` VALUES (313, 'Tu pin es 1043', '2012-11-22 04:00:35', NULL, '34343433');
INSERT INTO `app_obl_sms` VALUES (314, 'Tu pin es 3406', '2012-11-22 04:02:43', NULL, '34343');
INSERT INTO `app_obl_sms` VALUES (315, 'Tu pin es 9694', '2012-11-22 04:04:54', NULL, '6565');
INSERT INTO `app_obl_sms` VALUES (316, 'Tu pin es 1030', '2012-11-22 04:05:34', NULL, '5454454');
INSERT INTO `app_obl_sms` VALUES (317, 'Tu pin es 2320', '2012-11-22 04:07:19', NULL, '55434');
INSERT INTO `app_obl_sms` VALUES (318, 'Tu pin es 8379', '2012-11-22 04:12:20', NULL, '5454');
INSERT INTO `app_obl_sms` VALUES (319, 'Tu pin es 1853', '2012-11-22 04:13:53', NULL, '43434');
INSERT INTO `app_obl_sms` VALUES (320, 'Tu pin es 8626', '2012-11-22 04:15:48', NULL, '4343');
INSERT INTO `app_obl_sms` VALUES (321, 'Tu pin es 3367', '2012-11-22 04:16:44', NULL, '545454');
INSERT INTO `app_obl_sms` VALUES (322, 'Tu pin es 8953', '2012-11-22 04:19:15', NULL, '3232332');
INSERT INTO `app_obl_sms` VALUES (323, 'Tu pin es 5672', '2012-11-22 04:22:40', NULL, '3434343');
INSERT INTO `app_obl_sms` VALUES (324, 'Tu pin es 8367', '2012-11-22 04:27:15', NULL, '43434');
INSERT INTO `app_obl_sms` VALUES (325, 'Tu pin es 1226', '2012-11-22 04:33:06', NULL, '433434');
INSERT INTO `app_obl_sms` VALUES (326, 'Tu pin es 7207', '2012-11-22 04:34:55', NULL, '44334');
INSERT INTO `app_obl_sms` VALUES (327, 'Tu pin es 9505', '2012-11-22 04:39:50', NULL, '123434');
INSERT INTO `app_obl_sms` VALUES (328, 'Tu pin es 7623', '2012-11-22 04:43:45', NULL, 'dcdcd');
INSERT INTO `app_obl_sms` VALUES (329, 'Tu pin es 8206', '2012-11-22 04:43:59', NULL, '32323');
INSERT INTO `app_obl_sms` VALUES (330, 'Tu pin es 1087', '2012-11-22 05:01:16', NULL, '232232');
INSERT INTO `app_obl_sms` VALUES (331, 'Tu pin es 8584', '2012-11-22 05:01:44', NULL, 'dffdfd');
INSERT INTO `app_obl_sms` VALUES (332, 'Tu pin es 5671', '2012-11-22 05:02:14', NULL, '484848');
INSERT INTO `app_obl_sms` VALUES (333, 'Tu pin es 6927', '2012-11-22 05:05:16', NULL, 'sdssds');
INSERT INTO `app_obl_sms` VALUES (334, 'Tu pin es 9203', '2012-11-22 05:06:21', NULL, 'dksodso');
INSERT INTO `app_obl_sms` VALUES (335, 'Tu pin es 2453', '2012-11-22 05:08:46', NULL, '343434');
INSERT INTO `app_obl_sms` VALUES (336, 'Tu pin es 8149', '2012-11-22 05:09:47', NULL, 'cxcxcx');
INSERT INTO `app_obl_sms` VALUES (337, 'Tu pin es 3308', '2012-11-22 05:10:21', NULL, '1123456789');
INSERT INTO `app_obl_sms` VALUES (338, 'Tu pin es 6118', '2012-11-22 05:15:03', NULL, 'dfodfodk');
INSERT INTO `app_obl_sms` VALUES (339, 'Tu pin es 1436', '2012-11-22 05:15:43', NULL, '09993993');
INSERT INTO `app_obl_sms` VALUES (340, 'Tu pin es 4523', '2012-11-22 05:19:48', NULL, 'mfmdofmdo');
INSERT INTO `app_obl_sms` VALUES (341, 'Tu pin es 9633', '2012-11-22 05:20:04', NULL, '000000');
INSERT INTO `app_obl_sms` VALUES (342, 'Tu pin es 1712', '2012-11-22 05:25:24', NULL, 'dsds');
INSERT INTO `app_obl_sms` VALUES (343, 'Tu pin es 1245', '2012-11-22 05:28:23', NULL, '20121021');
INSERT INTO `app_obl_sms` VALUES (344, 'Tu pin es 8032', '2012-11-22 05:30:48', NULL, '099888777');
INSERT INTO `app_obl_sms` VALUES (345, 'ROC GIM', '2012-11-22 07:17:49', 19, '099888777');
INSERT INTO `app_obl_sms` VALUES (346, 'Comando de candidato invalido', '2012-11-22 07:17:49', 19, '099888777');
INSERT INTO `app_obl_sms` VALUES (347, 'ROC RAU', '2012-11-22 07:19:13', 19, '099888777');
INSERT INTO `app_obl_sms` VALUES (348, 'Envia SI para confirmar la votacion en Elecciones', '2012-11-22 07:19:13', 19, '099888777');
INSERT INTO `app_obl_sms` VALUES (349, 'si', '2012-11-22 07:20:13', 19, '099888777');
INSERT INTO `app_obl_sms` VALUES (350, 'Gracias por vatar en Elecciones', '2012-11-22 07:20:13', 19, '099888777');
INSERT INTO `app_obl_sms` VALUES (351, 'SAL GIM', '2012-11-22 07:20:50', 19, '099888777');
INSERT INTO `app_obl_sms` VALUES (352, 'Ya votaste en Elecciones', '2012-11-22 07:20:50', 19, '099888777');
INSERT INTO `app_obl_sms` VALUES (353, 'SAL GIM', '2012-11-22 07:21:02', 19, '099888777');
INSERT INTO `app_obl_sms` VALUES (354, 'Ya votaste en Elecciones', '2012-11-22 07:21:02', 19, '099888777');
INSERT INTO `app_obl_sms` VALUES (355, 'ROC RAU', '2012-11-22 07:27:07', 15, '096555444');
INSERT INTO `app_obl_sms` VALUES (356, '096555444 no es un usuario habilitado', '2012-11-22 07:27:07', 15, '096555444');
INSERT INTO `app_obl_sms` VALUES (357, 'Tu pin es 5141', '2012-11-22 07:29:05', NULL, '099888777');
INSERT INTO `app_obl_sms` VALUES (358, 'ROC RAU', '2012-11-22 07:29:26', 20, '099888777');
INSERT INTO `app_obl_sms` VALUES (359, 'Envia SI para confirmar la votacion en Elecciones', '2012-11-22 07:29:26', 20, '099888777');
INSERT INTO `app_obl_sms` VALUES (360, 'si', '2012-11-22 07:29:38', 20, '099888777');
INSERT INTO `app_obl_sms` VALUES (361, 'Gracias por vatar en Elecciones', '2012-11-22 07:29:38', 20, '099888777');
INSERT INTO `app_obl_sms` VALUES (362, 'Tu pin es 2377', '2012-11-22 21:32:58', NULL, '0356659');
INSERT INTO `app_obl_sms` VALUES (363, 'Tu pin es 5351', '2012-11-22 22:09:45', NULL, '096777333');
INSERT INTO `app_obl_sms` VALUES (364, 'Tu pin es 6988', '2012-11-22 22:14:57', NULL, '096777333');
INSERT INTO `app_obl_sms` VALUES (365, 'Tu pin es 3035', '2012-11-22 22:32:10', NULL, '54354453');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `app_obl_status`
-- 

CREATE TABLE `app_obl_status` (
  `id` int(11) NOT NULL auto_increment,
  `usuario_id` int(11) NOT NULL,
  `campania_id` int(11) NOT NULL,
  `estado` varchar(3) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `app_obl_status_363db8b9` (`usuario_id`),
  KEY `app_obl_status_34909c90` (`campania_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

-- 
-- Volcar la base de datos para la tabla `app_obl_status`
-- 

INSERT INTO `app_obl_status` VALUES (20, 13, 1, 'IN');
INSERT INTO `app_obl_status` VALUES (19, 14, 1, 'VE');
INSERT INTO `app_obl_status` VALUES (18, 14, 1, 'CF');
INSERT INTO `app_obl_status` VALUES (17, 14, 1, 'IN');
INSERT INTO `app_obl_status` VALUES (21, 13, 1, 'CF');
INSERT INTO `app_obl_status` VALUES (22, 13, 1, 'VE');
INSERT INTO `app_obl_status` VALUES (23, 16, 1, 'IN');
INSERT INTO `app_obl_status` VALUES (24, 16, 1, 'CF');
INSERT INTO `app_obl_status` VALUES (25, 16, 1, 'VE');
INSERT INTO `app_obl_status` VALUES (26, 19, 1, 'IN');
INSERT INTO `app_obl_status` VALUES (27, 19, 1, 'CF');
INSERT INTO `app_obl_status` VALUES (28, 19, 1, 'VE');
INSERT INTO `app_obl_status` VALUES (29, 20, 1, 'IN');
INSERT INTO `app_obl_status` VALUES (30, 20, 1, 'CF');
INSERT INTO `app_obl_status` VALUES (31, 20, 1, 'VE');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `app_obl_usuario`
-- 

CREATE TABLE `app_obl_usuario` (
  `persona_ptr_id` int(11) NOT NULL,
  `habilitado` tinyint(1) NOT NULL,
  PRIMARY KEY  (`persona_ptr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Volcar la base de datos para la tabla `app_obl_usuario`
-- 

INSERT INTO `app_obl_usuario` VALUES (13, 1);
INSERT INTO `app_obl_usuario` VALUES (22, 0);
INSERT INTO `app_obl_usuario` VALUES (20, 1);
INSERT INTO `app_obl_usuario` VALUES (15, 0);
INSERT INTO `app_obl_usuario` VALUES (16, 1);
INSERT INTO `app_obl_usuario` VALUES (17, 1);
INSERT INTO `app_obl_usuario` VALUES (18, 1);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `app_obl_voto`
-- 

CREATE TABLE `app_obl_voto` (
  `id` int(11) NOT NULL auto_increment,
  `candidato_id` int(11) NOT NULL,
  `campania_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `usuario_id` (`usuario_id`),
  KEY `app_obl_voto_6e7c0fd4` (`candidato_id`),
  KEY `app_obl_voto_34909c90` (`campania_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

-- 
-- Volcar la base de datos para la tabla `app_obl_voto`
-- 

INSERT INTO `app_obl_voto` VALUES (7, 4, 1, 14, '2012-11-21 02:40:30');
INSERT INTO `app_obl_voto` VALUES (8, 4, 1, 13, '2012-11-21 03:40:47');
INSERT INTO `app_obl_voto` VALUES (9, 4, 1, 16, '2012-11-21 23:55:40');
INSERT INTO `app_obl_voto` VALUES (11, 2, 1, 20, '2012-11-22 07:29:38');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `auth_group`
-- 

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `auth_group`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `auth_group_permissions`
-- 

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL auto_increment,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_425ae3c4` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `auth_group_permissions`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `auth_permission`
-- 

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_1bb8f392` (`content_type_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=82 ;

-- 
-- Volcar la base de datos para la tabla `auth_permission`
-- 

INSERT INTO `auth_permission` VALUES (1, 'Can add permission', 1, 'add_permission');
INSERT INTO `auth_permission` VALUES (2, 'Can change permission', 1, 'change_permission');
INSERT INTO `auth_permission` VALUES (3, 'Can delete permission', 1, 'delete_permission');
INSERT INTO `auth_permission` VALUES (4, 'Can add group', 2, 'add_group');
INSERT INTO `auth_permission` VALUES (5, 'Can change group', 2, 'change_group');
INSERT INTO `auth_permission` VALUES (6, 'Can delete group', 2, 'delete_group');
INSERT INTO `auth_permission` VALUES (7, 'Can add user', 3, 'add_user');
INSERT INTO `auth_permission` VALUES (8, 'Can change user', 3, 'change_user');
INSERT INTO `auth_permission` VALUES (9, 'Can delete user', 3, 'delete_user');
INSERT INTO `auth_permission` VALUES (10, 'Can add content type', 4, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (11, 'Can change content type', 4, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (12, 'Can delete content type', 4, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (13, 'Can add session', 5, 'add_session');
INSERT INTO `auth_permission` VALUES (14, 'Can change session', 5, 'change_session');
INSERT INTO `auth_permission` VALUES (15, 'Can delete session', 5, 'delete_session');
INSERT INTO `auth_permission` VALUES (16, 'Can add site', 6, 'add_site');
INSERT INTO `auth_permission` VALUES (17, 'Can change site', 6, 'change_site');
INSERT INTO `auth_permission` VALUES (18, 'Can delete site', 6, 'delete_site');
INSERT INTO `auth_permission` VALUES (19, 'Can add ciudad', 7, 'add_ciudad');
INSERT INTO `auth_permission` VALUES (20, 'Can change ciudad', 7, 'change_ciudad');
INSERT INTO `auth_permission` VALUES (21, 'Can delete ciudad', 7, 'delete_ciudad');
INSERT INTO `auth_permission` VALUES (22, 'Can add comando', 8, 'add_comando');
INSERT INTO `auth_permission` VALUES (23, 'Can change comando', 8, 'change_comando');
INSERT INTO `auth_permission` VALUES (24, 'Can delete comando', 8, 'delete_comando');
INSERT INTO `auth_permission` VALUES (25, 'Can add ciudad comando', 9, 'add_ciudadcomando');
INSERT INTO `auth_permission` VALUES (26, 'Can change ciudad comando', 9, 'change_ciudadcomando');
INSERT INTO `auth_permission` VALUES (27, 'Can delete ciudad comando', 9, 'delete_ciudadcomando');
INSERT INTO `auth_permission` VALUES (28, 'Can add candidato comando', 10, 'add_candidatocomando');
INSERT INTO `auth_permission` VALUES (29, 'Can change candidato comando', 10, 'change_candidatocomando');
INSERT INTO `auth_permission` VALUES (30, 'Can delete candidato comando', 10, 'delete_candidatocomando');
INSERT INTO `auth_permission` VALUES (31, 'Can add persona', 11, 'add_persona');
INSERT INTO `auth_permission` VALUES (32, 'Can change persona', 11, 'change_persona');
INSERT INTO `auth_permission` VALUES (33, 'Can delete persona', 11, 'delete_persona');
INSERT INTO `auth_permission` VALUES (34, 'Can add candidato', 12, 'add_candidato');
INSERT INTO `auth_permission` VALUES (35, 'Can change candidato', 12, 'change_candidato');
INSERT INTO `auth_permission` VALUES (36, 'Can delete candidato', 12, 'delete_candidato');
INSERT INTO `auth_permission` VALUES (37, 'Can add usuario', 13, 'add_usuario');
INSERT INTO `auth_permission` VALUES (38, 'Can change usuario', 13, 'change_usuario');
INSERT INTO `auth_permission` VALUES (39, 'Can delete usuario', 13, 'delete_usuario');
INSERT INTO `auth_permission` VALUES (40, 'Can add sms', 14, 'add_sms');
INSERT INTO `auth_permission` VALUES (41, 'Can change sms', 14, 'change_sms');
INSERT INTO `auth_permission` VALUES (42, 'Can delete sms', 14, 'delete_sms');
INSERT INTO `auth_permission` VALUES (43, 'Can add mo', 15, 'add_mo');
INSERT INTO `auth_permission` VALUES (44, 'Can change mo', 15, 'change_mo');
INSERT INTO `auth_permission` VALUES (45, 'Can delete mo', 15, 'delete_mo');
INSERT INTO `auth_permission` VALUES (46, 'Can add mt', 16, 'add_mt');
INSERT INTO `auth_permission` VALUES (47, 'Can change mt', 16, 'change_mt');
INSERT INTO `auth_permission` VALUES (48, 'Can delete mt', 16, 'delete_mt');
INSERT INTO `auth_permission` VALUES (49, 'Can add campania', 17, 'add_campania');
INSERT INTO `auth_permission` VALUES (50, 'Can change campania', 17, 'change_campania');
INSERT INTO `auth_permission` VALUES (51, 'Can delete campania', 17, 'delete_campania');
INSERT INTO `auth_permission` VALUES (52, 'Can add voto', 18, 'add_voto');
INSERT INTO `auth_permission` VALUES (53, 'Can change voto', 18, 'change_voto');
INSERT INTO `auth_permission` VALUES (54, 'Can delete voto', 18, 'delete_voto');
INSERT INTO `auth_permission` VALUES (55, 'Can add sesion', 19, 'add_sesion');
INSERT INTO `auth_permission` VALUES (56, 'Can change sesion', 19, 'change_sesion');
INSERT INTO `auth_permission` VALUES (57, 'Can delete sesion', 19, 'delete_sesion');
INSERT INTO `auth_permission` VALUES (58, 'Can add status', 20, 'add_status');
INSERT INTO `auth_permission` VALUES (59, 'Can change status', 20, 'change_status');
INSERT INTO `auth_permission` VALUES (60, 'Can delete status', 20, 'delete_status');
INSERT INTO `auth_permission` VALUES (61, 'Can add carrier', 21, 'add_carrier');
INSERT INTO `auth_permission` VALUES (62, 'Can change carrier', 21, 'change_carrier');
INSERT INTO `auth_permission` VALUES (63, 'Can delete carrier', 21, 'delete_carrier');
INSERT INTO `auth_permission` VALUES (64, 'Can add plataforma', 22, 'add_plataforma');
INSERT INTO `auth_permission` VALUES (65, 'Can change plataforma', 22, 'change_plataforma');
INSERT INTO `auth_permission` VALUES (66, 'Can delete plataforma', 22, 'delete_plataforma');
INSERT INTO `auth_permission` VALUES (67, 'Can add log entry', 23, 'add_logentry');
INSERT INTO `auth_permission` VALUES (68, 'Can change log entry', 23, 'change_logentry');
INSERT INTO `auth_permission` VALUES (69, 'Can delete log entry', 23, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (70, 'Can add pin', 24, 'add_pin');
INSERT INTO `auth_permission` VALUES (71, 'Can change pin', 24, 'change_pin');
INSERT INTO `auth_permission` VALUES (72, 'Can delete pin', 24, 'delete_pin');
INSERT INTO `auth_permission` VALUES (73, 'Can add reporte', 25, 'add_reporte');
INSERT INTO `auth_permission` VALUES (74, 'Can change reporte', 25, 'change_reporte');
INSERT INTO `auth_permission` VALUES (75, 'Can delete reporte', 25, 'delete_reporte');
INSERT INTO `auth_permission` VALUES (76, 'Can add reporte candidato', 26, 'add_reportecandidato');
INSERT INTO `auth_permission` VALUES (77, 'Can change reporte candidato', 26, 'change_reportecandidato');
INSERT INTO `auth_permission` VALUES (78, 'Can delete reporte candidato', 26, 'delete_reportecandidato');
INSERT INTO `auth_permission` VALUES (79, 'Can add reporte ciudad', 27, 'add_reporteciudad');
INSERT INTO `auth_permission` VALUES (80, 'Can change reporte ciudad', 27, 'change_reporteciudad');
INSERT INTO `auth_permission` VALUES (81, 'Can delete reporte ciudad', 27, 'delete_reporteciudad');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `auth_user`
-- 

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- 
-- Volcar la base de datos para la tabla `auth_user`
-- 

INSERT INTO `auth_user` VALUES (1, 'Federico', '', '', 'fede@fede.com', 'pbkdf2_sha256$10000$nDMCrh0xBmtZ$531W3Auk6W9mWi7zCqX5mRDXI+luY6evpeDBBwfLT2A=', 1, 1, 1, '2012-12-02 21:20:10', '2012-10-29 22:39:25');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `auth_user_groups`
-- 

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_403f60f` (`user_id`),
  KEY `auth_user_groups_425ae3c4` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `auth_user_groups`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `auth_user_user_permissions`
-- 

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_403f60f` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `auth_user_user_permissions`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `django_admin_log`
-- 

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL auto_increment,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) default NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `django_admin_log_403f60f` (`user_id`),
  KEY `django_admin_log_1bb8f392` (`content_type_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

-- 
-- Volcar la base de datos para la tabla `django_admin_log`
-- 

INSERT INTO `django_admin_log` VALUES (1, '2012-10-29 23:20:11', 1, 7, '1', '1 - Salto', 1, '');
INSERT INTO `django_admin_log` VALUES (2, '2012-10-29 23:20:15', 1, 7, '2', '2 - Rocha', 1, '');
INSERT INTO `django_admin_log` VALUES (3, '2012-10-29 23:21:03', 1, 12, '1', 'Juan ', 1, '');
INSERT INTO `django_admin_log` VALUES (4, '2012-10-29 23:21:32', 1, 12, '2', 'Raul', 1, '');
INSERT INTO `django_admin_log` VALUES (5, '2012-10-29 23:48:16', 1, 9, '1', 'Sal', 1, '');
INSERT INTO `django_admin_log` VALUES (6, '2012-10-29 23:50:52', 1, 9, '1', 'SAL', 2, 'Changed nombre.');
INSERT INTO `django_admin_log` VALUES (7, '2012-10-29 23:51:06', 1, 10, '3', 'RAU', 1, '');
INSERT INTO `django_admin_log` VALUES (8, '2012-11-19 23:41:32', 1, 17, '1', 'Elecciones', 1, '');
INSERT INTO `django_admin_log` VALUES (9, '2012-11-19 23:42:36', 1, 12, '4', '4 - Pedro Gimenez', 1, '');
INSERT INTO `django_admin_log` VALUES (10, '2012-11-19 23:43:05', 1, 10, '4', 'GIM', 1, '');
INSERT INTO `django_admin_log` VALUES (11, '2012-11-20 04:14:10', 1, 7, '3', '3 - Montevideo', 1, '');
INSERT INTO `django_admin_log` VALUES (12, '2012-11-20 04:14:26', 1, 7, '4', '4 - Colonia', 1, '');
INSERT INTO `django_admin_log` VALUES (13, '2012-11-20 04:14:30', 1, 7, '5', '5 - San Jose', 1, '');
INSERT INTO `django_admin_log` VALUES (14, '2012-11-20 04:14:36', 1, 7, '6', '6 - Rivera', 1, '');
INSERT INTO `django_admin_log` VALUES (15, '2012-11-20 04:14:42', 1, 7, '7', '7 - Treinta y tres', 1, '');
INSERT INTO `django_admin_log` VALUES (16, '2012-11-20 04:14:47', 1, 7, '8', '8 - Cerro Largo', 1, '');
INSERT INTO `django_admin_log` VALUES (17, '2012-11-20 04:15:00', 1, 7, '9', '9 - Paysandu', 1, '');
INSERT INTO `django_admin_log` VALUES (18, '2012-11-20 04:15:07', 1, 7, '10', '10 - Canelones', 1, '');
INSERT INTO `django_admin_log` VALUES (19, '2012-11-20 04:15:11', 1, 7, '11', '11 - Flores', 1, '');
INSERT INTO `django_admin_log` VALUES (20, '2012-11-20 04:15:14', 1, 7, '12', '12 - Florida', 1, '');
INSERT INTO `django_admin_log` VALUES (21, '2012-11-20 04:15:18', 1, 7, '13', '13 - Durazno', 1, '');
INSERT INTO `django_admin_log` VALUES (22, '2012-11-20 04:15:22', 1, 7, '14', '14 - Soriano', 1, '');
INSERT INTO `django_admin_log` VALUES (23, '2012-11-20 04:15:27', 1, 7, '15', '15 - Rio Negro', 1, '');
INSERT INTO `django_admin_log` VALUES (24, '2012-11-20 04:15:33', 1, 7, '16', '16 - Tacuarembo', 1, '');
INSERT INTO `django_admin_log` VALUES (25, '2012-11-20 04:15:52', 1, 7, '17', '17 - Maldonado', 1, '');
INSERT INTO `django_admin_log` VALUES (26, '2012-11-20 04:16:39', 1, 7, '18', '18 - Lavalleja', 1, '');
INSERT INTO `django_admin_log` VALUES (27, '2012-11-20 04:17:47', 1, 7, '19', '19 - Artigas', 1, '');
INSERT INTO `django_admin_log` VALUES (28, '2012-11-20 04:18:52', 1, 7, '9', '9 - Paysandu', 2, 'Changed nombre.');
INSERT INTO `django_admin_log` VALUES (29, '2012-11-20 05:27:13', 1, 17, '1', 'Elecciones', 2, 'Changed fechaIni and fechaFin.');
INSERT INTO `django_admin_log` VALUES (30, '2012-11-20 05:27:20', 1, 17, '1', 'Elecciones', 2, 'No fields changed.');
INSERT INTO `django_admin_log` VALUES (31, '2012-11-20 05:28:04', 1, 12, '4', '4 - Pedro Gimenez', 2, 'No fields changed.');
INSERT INTO `django_admin_log` VALUES (32, '2012-11-20 05:40:05', 1, 17, '1', 'Elecciones', 2, 'Changed fechaIni.');
INSERT INTO `django_admin_log` VALUES (33, '2012-11-22 07:15:52', 1, 9, '2', 'ROC', 1, '');
INSERT INTO `django_admin_log` VALUES (34, '2012-11-22 07:16:03', 1, 9, '3', 'MON', 1, '');
INSERT INTO `django_admin_log` VALUES (35, '2012-11-22 07:16:38', 1, 10, '7', 'PER', 1, '');
INSERT INTO `django_admin_log` VALUES (36, '2012-11-22 07:16:48', 1, 12, '4', '4 - Pedro Gimenez', 2, 'No fields changed.');
INSERT INTO `django_admin_log` VALUES (37, '2012-11-22 07:16:55', 1, 12, '1', '1 - Juan  Perez', 2, 'No fields changed.');
INSERT INTO `django_admin_log` VALUES (38, '2012-11-22 07:17:01', 1, 12, '2', '2 - Raul Vera', 2, 'No fields changed.');
INSERT INTO `django_admin_log` VALUES (39, '2012-11-22 07:18:32', 1, 12, '2', '2 - Raul Vera', 2, 'Changed ciudad.');
INSERT INTO `django_admin_log` VALUES (40, '2012-11-22 07:18:52', 1, 9, '2', 'ROC', 2, 'No fields changed.');
INSERT INTO `django_admin_log` VALUES (41, '2012-11-22 07:19:03', 1, 10, '3', 'RAU', 2, 'Changed ciudadComando.');
INSERT INTO `django_admin_log` VALUES (42, '2012-11-26 23:59:08', 1, 17, '2', 'Municipales', 1, '');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `django_content_type`
-- 

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

-- 
-- Volcar la base de datos para la tabla `django_content_type`
-- 

INSERT INTO `django_content_type` VALUES (1, 'permission', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (2, 'group', 'auth', 'group');
INSERT INTO `django_content_type` VALUES (3, 'user', 'auth', 'user');
INSERT INTO `django_content_type` VALUES (4, 'content type', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (5, 'session', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (6, 'site', 'sites', 'site');
INSERT INTO `django_content_type` VALUES (7, 'ciudad', 'app_obl', 'ciudad');
INSERT INTO `django_content_type` VALUES (8, 'comando', 'app_obl', 'comando');
INSERT INTO `django_content_type` VALUES (9, 'ciudad comando', 'app_obl', 'ciudadcomando');
INSERT INTO `django_content_type` VALUES (10, 'candidato comando', 'app_obl', 'candidatocomando');
INSERT INTO `django_content_type` VALUES (11, 'persona', 'app_obl', 'persona');
INSERT INTO `django_content_type` VALUES (12, 'candidato', 'app_obl', 'candidato');
INSERT INTO `django_content_type` VALUES (13, 'usuario', 'app_obl', 'usuario');
INSERT INTO `django_content_type` VALUES (14, 'sms', 'app_obl', 'sms');
INSERT INTO `django_content_type` VALUES (15, 'mo', 'app_obl', 'mo');
INSERT INTO `django_content_type` VALUES (16, 'mt', 'app_obl', 'mt');
INSERT INTO `django_content_type` VALUES (17, 'campania', 'app_obl', 'campania');
INSERT INTO `django_content_type` VALUES (18, 'voto', 'app_obl', 'voto');
INSERT INTO `django_content_type` VALUES (19, 'sesion', 'app_obl', 'sesion');
INSERT INTO `django_content_type` VALUES (20, 'status', 'app_obl', 'status');
INSERT INTO `django_content_type` VALUES (21, 'carrier', 'app_obl', 'carrier');
INSERT INTO `django_content_type` VALUES (22, 'plataforma', 'app_obl', 'plataforma');
INSERT INTO `django_content_type` VALUES (23, 'log entry', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (24, 'pin', 'app_obl', 'pin');
INSERT INTO `django_content_type` VALUES (25, 'reporte', 'app_obl', 'reporte');
INSERT INTO `django_content_type` VALUES (26, 'reporte candidato', 'app_obl', 'reportecandidato');
INSERT INTO `django_content_type` VALUES (27, 'reporte ciudad', 'app_obl', 'reporteciudad');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `django_session`
-- 

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY  (`session_key`),
  KEY `django_session_3da3d3d8` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Volcar la base de datos para la tabla `django_session`
-- 

INSERT INTO `django_session` VALUES ('2618241860769d9544a95095f024e222', 'ZTBlZTU4OWI2MTUxNWQ2OTliYmQ5YTBiMWM5YTY5Njg0NWE0MTRjZDqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2012-11-19 22:32:17');
INSERT INTO `django_session` VALUES ('78fe7d9c9336f7b79e1603ddb44dad11', 'ZTBlZTU4OWI2MTUxNWQ2OTliYmQ5YTBiMWM5YTY5Njg0NWE0MTRjZDqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2012-11-12 23:19:55');
INSERT INTO `django_session` VALUES ('acac93b8ab64b02897146785a526d623', 'ZTBlZTU4OWI2MTUxNWQ2OTliYmQ5YTBiMWM5YTY5Njg0NWE0MTRjZDqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2012-12-04 12:06:41');
INSERT INTO `django_session` VALUES ('4058c4ecfe9a227952cfb7a724b4b90e', 'ZTBlZTU4OWI2MTUxNWQ2OTliYmQ5YTBiMWM5YTY5Njg0NWE0MTRjZDqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2012-12-16 21:20:10');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `django_site`
-- 

CREATE TABLE `django_site` (
  `id` int(11) NOT NULL auto_increment,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- 
-- Volcar la base de datos para la tabla `django_site`
-- 

INSERT INTO `django_site` VALUES (1, 'example.com', 'example.com');
