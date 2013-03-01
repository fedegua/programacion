/*
SQLyog Community v8.71 
MySQL - 5.0.51b-community-nt-log : Database - obligatorio_py
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`obligatorio_py` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `obligatorio_py`;

/*Table structure for table `app_obl_campania` */

DROP TABLE IF EXISTS `app_obl_campania`;

CREATE TABLE `app_obl_campania` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(50) NOT NULL,
  `descripcion` longtext,
  `fechaIni` datetime NOT NULL,
  `fechaFin` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `app_obl_campania` */

insert  into `app_obl_campania`(`id`,`nombre`,`descripcion`,`fechaIni`,`fechaFin`) values (1,'Elecciones','Se postula vicky','2012-10-02 06:27:09','2012-12-13 02:00:00'),(2,'Municipales','','2013-01-23 23:54:58','2013-02-13 23:55:04');

/*Table structure for table `app_obl_candidato` */

DROP TABLE IF EXISTS `app_obl_candidato`;

CREATE TABLE `app_obl_candidato` (
  `persona_ptr_id` int(11) NOT NULL,
  `informacion` varchar(50) NOT NULL,
  PRIMARY KEY  (`persona_ptr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `app_obl_candidato` */

insert  into `app_obl_candidato`(`persona_ptr_id`,`informacion`) values (1,'fsfsfs'),(2,'jkweefio'),(4,'hfghg');

/*Table structure for table `app_obl_candidatocomando` */

DROP TABLE IF EXISTS `app_obl_candidatocomando`;

CREATE TABLE `app_obl_candidatocomando` (
  `comando_ptr_id` int(11) NOT NULL,
  `Candidato_id` int(11) NOT NULL,
  `ciudadComando_id` int(11) NOT NULL,
  PRIMARY KEY  (`comando_ptr_id`),
  UNIQUE KEY `Candidato_id` (`Candidato_id`),
  KEY `app_obl_candidatocomando_3093e260` (`ciudadComando_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `app_obl_candidatocomando` */

insert  into `app_obl_candidatocomando`(`comando_ptr_id`,`Candidato_id`,`ciudadComando_id`) values (3,2,2),(4,4,1),(7,1,3);

/*Table structure for table `app_obl_carrier` */

DROP TABLE IF EXISTS `app_obl_carrier`;

CREATE TABLE `app_obl_carrier` (
  `id` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `app_obl_carrier` */

/*Table structure for table `app_obl_ciudad` */

DROP TABLE IF EXISTS `app_obl_ciudad`;

CREATE TABLE `app_obl_ciudad` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

/*Data for the table `app_obl_ciudad` */

insert  into `app_obl_ciudad`(`id`,`nombre`) values (1,'Salto'),(2,'Rocha'),(3,'Montevideo'),(4,'Colonia'),(5,'San Jose'),(6,'Rivera'),(7,'Treinta y tres'),(8,'Cerro Largo'),(9,'Paysandu'),(10,'Canelones'),(11,'Flores'),(12,'Florida'),(13,'Durazno'),(14,'Soriano'),(15,'Rio Negro'),(16,'Tacuarembo'),(17,'Maldonado'),(18,'Lavalleja'),(19,'Artigas');

/*Table structure for table `app_obl_ciudadcomando` */

DROP TABLE IF EXISTS `app_obl_ciudadcomando`;

CREATE TABLE `app_obl_ciudadcomando` (
  `comando_ptr_id` int(11) NOT NULL,
  `Ciudad_id` int(11) NOT NULL,
  PRIMARY KEY  (`Ciudad_id`),
  UNIQUE KEY `comando_ptr_id` (`comando_ptr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `app_obl_ciudadcomando` */

insert  into `app_obl_ciudadcomando`(`comando_ptr_id`,`Ciudad_id`) values (1,1),(5,2),(6,3);

/*Table structure for table `app_obl_comando` */

DROP TABLE IF EXISTS `app_obl_comando`;

CREATE TABLE `app_obl_comando` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(3) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `app_obl_comando` */

insert  into `app_obl_comando`(`id`,`nombre`) values (1,'SAL'),(3,'RAU'),(4,'GIM'),(5,'ROC'),(6,'MON'),(7,'PER');

/*Table structure for table `app_obl_mo` */

DROP TABLE IF EXISTS `app_obl_mo`;

CREATE TABLE `app_obl_mo` (
  `sms_ptr_id` int(11) NOT NULL,
  PRIMARY KEY  (`sms_ptr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `app_obl_mo` */

insert  into `app_obl_mo`(`sms_ptr_id`) values (235),(237),(238),(240),(241),(243),(244),(246),(247),(249),(251),(253),(255),(257),(259),(261),(263),(265),(298),(300),(302),(304),(345),(347),(349),(351),(353),(355),(358),(360),(367),(369),(371),(373),(375),(377);

/*Table structure for table `app_obl_mt` */

DROP TABLE IF EXISTS `app_obl_mt`;

CREATE TABLE `app_obl_mt` (
  `sms_ptr_id` int(11) NOT NULL,
  `sent` tinyint(1) NOT NULL,
  PRIMARY KEY  (`sms_ptr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `app_obl_mt` */

insert  into `app_obl_mt`(`sms_ptr_id`,`sent`) values (236,1),(239,1),(242,1),(245,1),(248,1),(250,1),(252,1),(254,1),(256,1),(258,1),(260,1),(262,1),(264,1),(266,1),(267,1),(268,1),(269,1),(270,1),(271,1),(272,1),(273,1),(274,1),(275,1),(276,1),(277,1),(278,1),(279,1),(280,1),(281,1),(282,1),(283,1),(284,1),(285,1),(286,1),(287,1),(288,1),(289,1),(290,1),(291,1),(292,1),(293,1),(294,1),(295,1),(296,1),(297,1),(299,1),(301,1),(303,1),(305,1),(306,1),(307,1),(308,1),(309,1),(310,1),(311,1),(312,1),(313,1),(314,1),(315,1),(316,1),(317,1),(318,1),(319,1),(320,1),(321,1),(322,1),(323,1),(324,1),(325,1),(326,1),(327,1),(328,1),(329,1),(330,1),(331,1),(332,1),(333,1),(334,1),(335,1),(336,1),(337,1),(338,1),(339,1),(340,1),(341,1),(342,1),(343,1),(344,1),(346,1),(348,1),(350,1),(352,1),(354,1),(356,1),(357,1),(359,1),(361,1),(362,1),(363,1),(364,1),(365,1),(366,1),(368,1),(370,1),(372,1),(374,1),(376,1),(378,1);

/*Table structure for table `app_obl_persona` */

DROP TABLE IF EXISTS `app_obl_persona`;

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
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

/*Data for the table `app_obl_persona` */

insert  into `app_obl_persona`(`id`,`nombre`,`apellido`,`fechaNac`,`documento`,`direccion`,`telefono`,`ciudad_id`) values (1,'Juan ','Perez','2012-10-29','45677778','18 de julio','33232',1),(2,'Raul','Vera','2012-10-29','93053950','8 de Octubre','93049',2),(4,'Pedro','Gimenez','2012-06-20','43277343','wdsds','099455587',1),(13,'Veronica','Lopez',NULL,'3.555.666-2','Vazquez 1445','098666333',10),(23,'Ana','Gomez','1972-12-10','2.444.555-1','Brito del pino 2345','096777333',3),(20,'Juan','Castillo',NULL,'2.888.222-1','Colonia 1212','099888777',1),(15,'Valentina','De la puente',NULL,'4.222.333-1','Baltazar Vargas 1378','096555444',10),(16,'Antonio','Grecco',NULL,'1.888.555-1','18 de Julio 1245','096856342',3),(17,'Pablo','Canosa',NULL,'2.999.444.-1','Marco Bruto 3344','098555123',3),(18,'Andrea','Caiafa',NULL,'2.833.256-1','Alamos 1212','096987654',10);

/*Table structure for table `app_obl_pin` */

DROP TABLE IF EXISTS `app_obl_pin`;

CREATE TABLE `app_obl_pin` (
  `id` int(11) NOT NULL auto_increment,
  `pin` varchar(4) NOT NULL,
  `tel` varchar(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=167 DEFAULT CHARSET=latin1;

/*Data for the table `app_obl_pin` */

insert  into `app_obl_pin`(`id`,`pin`,`tel`) values (162,'2377','0356659');

/*Table structure for table `app_obl_plataforma` */

DROP TABLE IF EXISTS `app_obl_plataforma`;

CREATE TABLE `app_obl_plataforma` (
  `id` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `app_obl_plataforma` */

/*Table structure for table `app_obl_reporte` */

DROP TABLE IF EXISTS `app_obl_reporte`;

CREATE TABLE `app_obl_reporte` (
  `id` int(11) NOT NULL auto_increment,
  `qfy` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `app_obl_reporte` */

insert  into `app_obl_reporte`(`id`,`qfy`) values (9,5),(8,5),(10,1),(11,1);

/*Table structure for table `app_obl_reportecandidato` */

DROP TABLE IF EXISTS `app_obl_reportecandidato`;

CREATE TABLE `app_obl_reportecandidato` (
  `reporte_ptr_id` int(11) NOT NULL,
  `candidato_id` int(11) NOT NULL,
  `campania_id` int(11) NOT NULL,
  PRIMARY KEY  (`reporte_ptr_id`),
  KEY `app_obl_reportecandidato_6e7c0fd4` (`candidato_id`),
  KEY `app_obl_reportecandidato_34909c90` (`campania_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `app_obl_reportecandidato` */

insert  into `app_obl_reportecandidato`(`reporte_ptr_id`,`candidato_id`,`campania_id`) values (8,4,1),(10,2,1);

/*Table structure for table `app_obl_reporteciudad` */

DROP TABLE IF EXISTS `app_obl_reporteciudad`;

CREATE TABLE `app_obl_reporteciudad` (
  `reporte_ptr_id` int(11) NOT NULL,
  `ciudad_id` int(11) NOT NULL,
  `campania_id` int(11) NOT NULL,
  PRIMARY KEY  (`reporte_ptr_id`),
  KEY `app_obl_reporteciudad_4e8eecfa` (`ciudad_id`),
  KEY `app_obl_reporteciudad_34909c90` (`campania_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `app_obl_reporteciudad` */

insert  into `app_obl_reporteciudad`(`reporte_ptr_id`,`ciudad_id`,`campania_id`) values (9,1,1),(11,2,1);

/*Table structure for table `app_obl_sesion` */

DROP TABLE IF EXISTS `app_obl_sesion`;

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
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `app_obl_sesion` */

insert  into `app_obl_sesion`(`id`,`candidato_id`,`campania_id`,`usuario_id`,`estado`) values (10,4,1,13,'VE'),(9,4,1,14,'VE'),(11,4,1,16,'VE'),(12,2,1,19,'VE'),(13,2,1,20,'VE'),(14,4,1,23,'VE');

/*Table structure for table `app_obl_sms` */

DROP TABLE IF EXISTS `app_obl_sms`;

CREATE TABLE `app_obl_sms` (
  `id` int(11) NOT NULL auto_increment,
  `texto` varchar(160) NOT NULL,
  `fecha` datetime NOT NULL,
  `usuario_id` int(11) default NULL,
  `telefono` varchar(20) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `app_obl_sms_363db8b9` (`usuario_id`)
) ENGINE=MyISAM AUTO_INCREMENT=379 DEFAULT CHARSET=latin1;

/*Data for the table `app_obl_sms` */

insert  into `app_obl_sms`(`id`,`texto`,`fecha`,`usuario_id`,`telefono`) values (305,'Gracias por vatar en Elecciones','2012-11-21 23:55:40',16,'096856342'),(304,'si','2012-11-21 23:55:40',16,'096856342'),(303,'Envia SI para confirmar la votacion en Elecciones','2012-11-21 23:55:26',16,'096856342'),(302,'SAL GIM','2012-11-21 23:55:26',16,'096856342'),(283,'Tu pin es 7238','2012-11-21 22:01:18',NULL,'096987654'),(282,'Tu pin es 6840','2012-11-21 21:49:31',NULL,'096987654'),(281,'Tu pin es 8565','2012-11-21 21:47:51',NULL,'096987654'),(280,'Tu pin es 7156','2012-11-21 21:47:20',NULL,'096987654'),(279,'Tu pin es 6917','2012-11-21 21:25:24',NULL,'096987654'),(278,'Tu pin es 4479','2012-11-21 21:24:18',NULL,'096987654'),(277,'Tu pin es 7561','2012-11-21 21:07:35',NULL,'96555444'),(276,'Tu pin es 4828','2012-11-21 21:06:10',NULL,'096555444'),(275,'Tu pin es 5018','2012-11-21 21:05:33',NULL,'096555444'),(274,'Tu pin es 1948','2012-11-21 21:04:23',NULL,'096555444'),(273,'Tu pin es 6346','2012-11-21 20:58:44',NULL,'096777333'),(272,'Tu pin es 7894','2012-11-21 20:57:27',NULL,'096777333'),(271,'Tu pin es 1573','2012-11-21 20:55:56',NULL,'096777333'),(270,'Tu pin es 4854','2012-11-21 20:53:57',NULL,'96777333'),(269,'Tu pin es 4025','2012-11-21 20:40:01',NULL,'96777333'),(268,'Tu pin es 7557','2012-11-21 20:38:38',NULL,'96777333'),(267,'Tu pin es 5734','2012-11-21 20:30:29',NULL,'96777333'),(266,'Gracias por vatar en Elecciones','2012-11-21 03:40:47',13,'098666333'),(265,'Si','2012-11-21 03:40:47',13,'098666333'),(264,'Envia SI para confirmar la votacion en Elecciones','2012-11-21 03:40:34',13,'098666333'),(263,'SAL GIM','2012-11-21 03:40:34',13,'098666333'),(262,'096777333 no es un usuario habilitado','2012-11-21 03:39:59',12,'096777333'),(261,'SAL GIM','2012-11-21 03:39:59',12,'096777333'),(260,'Ya votaste en Elecciones','2012-11-21 03:39:08',14,'099888777'),(259,'S','2012-11-21 03:39:08',14,'099888777'),(258,'Ya votaste en Elecciones','2012-11-21 03:38:47',14,'099888777'),(257,'SAL GM','2012-11-21 03:38:47',14,'099888777'),(256,'Ya votaste en Elecciones','2012-11-21 03:36:01',14,'099888777'),(255,'SAL GIM','2012-11-21 03:36:01',14,'099888777'),(254,'Ya votaste en Elecciones','2012-11-21 03:36:00',14,'099888777'),(253,'SAL GIM','2012-11-21 03:36:00',14,'099888777'),(252,'Gracias por vatar en Elecciones','2012-11-21 02:40:30',14,'099888777'),(251,'Si','2012-11-21 02:40:30',14,'099888777'),(250,'Envia SI confirmacion votacion en Elecciones','2012-11-21 02:40:17',14,'099888777'),(249,'SAL GIM','2012-11-21 02:40:17',14,'099888777'),(248,'Envia SI para confirmar la votacion en Elecciones','2012-11-21 02:40:17',14,'099888777'),(247,'SAL GIM','2012-11-21 02:40:17',14,'099888777'),(246,'si','2012-11-21 02:35:43',14,'099888777'),(245,'Envia SI para confirmar la votacion en Elecciones','2012-11-21 02:35:33',14,'099888777'),(244,'SAL GIM','2012-11-21 02:35:33',14,'099888777'),(243,'si','2012-11-21 02:30:27',14,'099888777'),(241,'SAL GIM','2012-11-21 02:30:18',14,'099888777'),(242,'Envia SI para confirmar la votacion en Elecciones','2012-11-21 02:30:18',14,'099888777'),(301,'096555444 no es un usuario habilitado','2012-11-21 23:54:51',15,'096555444'),(300,'SAL GIM','2012-11-21 23:54:51',15,'096555444'),(299,'Ya votaste en Elecciones','2012-11-21 23:54:12',14,'099888777'),(298,'SAL GIM','2012-11-21 23:54:12',14,'099888777'),(297,'Tu pin es 8603','2012-11-21 23:53:14',NULL,'098555123555'),(296,'Tu pin es 2614','2012-11-21 23:52:19',NULL,'098555123'),(295,'Tu pin es 8354','2012-11-21 23:04:02',NULL,'096856342'),(294,'Tu pin es 4633','2012-11-21 23:02:33',NULL,'096856342'),(293,'Tu pin es 8405','2012-11-21 23:00:58',NULL,'96856342'),(292,'Tu pin es 1666','2012-11-21 22:50:26',NULL,'096856342'),(291,'Tu pin es 7932','2012-11-21 22:49:23',NULL,'096856342'),(290,'Tu pin es 3049','2012-11-21 22:48:11',NULL,'096856342'),(289,'Tu pin es 8168','2012-11-21 22:47:12',NULL,'096856342'),(288,'Tu pin es 4467','2012-11-21 22:37:05',NULL,'096856342'),(287,'Tu pin es 6575','2012-11-21 22:18:33',NULL,'096856342'),(286,'Tu pin es 1856','2012-11-21 22:16:36',NULL,'096856342'),(285,'Tu pin es 2215','2012-11-21 22:15:45',NULL,'96856342'),(284,'Tu pin es 8921','2012-11-21 22:03:55',NULL,'96856342'),(240,'Si','2012-11-21 02:28:42',14,'099888777'),(239,'Envia SI para confirmar la votacion en Elecciones','2012-11-21 02:28:30',14,'099888777'),(238,'SAL GIM','2012-11-21 02:28:30',14,'099888777'),(237,'SI','2012-11-21 02:21:50',14,'099888777'),(236,'Envia SI para confirmar la votacion en Elecciones','2012-11-21 02:20:11',14,'099888777'),(235,'SAL GIM','2012-11-21 02:20:10',14,'099888777'),(101,'SAL GIM','2012-11-20 12:27:06',NULL,'098666333'),(102,'SAL GIM','2012-11-20 12:27:07',NULL,'098666333'),(103,'SAL GIM','2012-11-20 12:37:16',13,'098666333'),(104,'SAL GIM','2012-11-20 12:42:42',13,'098666333'),(105,'SAL GIM','2012-11-20 12:46:47',13,'098666333'),(106,'SAL GIM','2012-11-20 12:46:48',13,'098666333'),(107,'Tu pin es 6175','2012-11-20 20:21:56',NULL,'99888777'),(108,'Tu pin es 1662','2012-11-20 20:24:05',NULL,'99888777'),(109,'SAL GIM','2012-11-20 20:30:34',13,'098666333'),(110,'SAL GIM','2012-11-20 20:30:58',13,'098666333'),(111,'SAL GIM','2012-11-20 20:32:39',13,'098666333'),(112,'SAL GIM','2012-11-20 20:33:15',13,'098666333'),(113,'SAL GIM','2012-11-20 20:34:05',13,'098666333'),(114,'Envia SI para confirmar la votacion en Elecciones','2012-11-20 20:34:05',13,'098666333'),(115,'SAL GIM','2012-11-20 20:43:04',13,'098666333'),(116,'Envia SI confirmacion votacion en Elecciones','2012-11-20 20:43:04',13,'098666333'),(117,'SAL GIM','2012-11-20 20:43:06',13,'098666333'),(118,'Envia SI confirmacion votacion en Elecciones','2012-11-20 20:43:06',13,'098666333'),(119,'SAL GIM','2012-11-20 20:43:25',13,'098666333'),(120,'Envia SI confirmacion votacion en Elecciones','2012-11-20 20:43:25',13,'098666333'),(121,'SAL GIM','2012-11-20 20:43:26',13,'098666333'),(122,'Envia SI confirmacion votacion en Elecciones','2012-11-20 20:43:26',13,'098666333'),(123,'SAL GIM','2012-11-20 20:43:37',13,'098666333'),(124,'Envia SI confirmacion votacion en Elecciones','2012-11-20 20:43:37',13,'098666333'),(125,'SAL GIM','2012-11-20 20:43:38',13,'098666333'),(126,'Envia SI confirmacion votacion en Elecciones','2012-11-20 20:43:38',13,'098666333'),(127,'SAL GIM','2012-11-20 20:43:38',13,'098666333'),(128,'Envia SI confirmacion votacion en Elecciones','2012-11-20 20:43:38',13,'098666333'),(129,'SAL GIM','2012-11-20 20:43:38',13,'098666333'),(130,'Envia SI confirmacion votacion en Elecciones','2012-11-20 20:43:38',13,'098666333'),(131,'SAL GIM','2012-11-20 20:43:38',13,'098666333'),(132,'Envia SI confirmacion votacion en Elecciones','2012-11-20 20:43:39',13,'098666333'),(133,'SAL GIM','2012-11-20 20:43:39',13,'098666333'),(134,'Envia SI confirmacion votacion en Elecciones','2012-11-20 20:43:39',13,'098666333'),(135,'SAL GIM','2012-11-20 20:43:39',13,'098666333'),(136,'Envia SI confirmacion votacion en Elecciones','2012-11-20 20:43:39',13,'098666333'),(137,'SAL GIM','2012-11-20 20:43:39',13,'098666333'),(138,'Envia SI confirmacion votacion en Elecciones','2012-11-20 20:43:39',13,'098666333'),(139,'SAL GIM','2012-11-20 20:43:39',13,'098666333'),(140,'Envia SI confirmacion votacion en Elecciones','2012-11-20 20:43:39',13,'098666333'),(141,'SAL GIM','2012-11-20 20:43:39',13,'098666333'),(142,'Envia SI confirmacion votacion en Elecciones','2012-11-20 20:43:39',13,'098666333'),(143,'SAL GIM','2012-11-20 20:43:39',13,'098666333'),(144,'Envia SI confirmacion votacion en Elecciones','2012-11-20 20:43:39',13,'098666333'),(145,'SAL GIM','2012-11-20 20:43:39',13,'098666333'),(146,'SAL GIM','2012-11-20 20:43:39',13,'098666333'),(147,'Envia SI confirmacion votacion en Elecciones','2012-11-20 20:43:39',13,'098666333'),(148,'Envia SI confirmacion votacion en Elecciones','2012-11-20 20:43:39',13,'098666333'),(149,'SAL GIM','2012-11-20 20:44:54',13,'098666333'),(150,'Envia SI confirmacion votacion en Elecciones','2012-11-20 20:44:54',13,'098666333'),(151,'SAL GIM','2012-11-20 20:44:55',13,'098666333'),(152,'Envia SI confirmacion votacion en Elecciones','2012-11-20 20:44:55',13,'098666333'),(153,'SAL GIM','2012-11-20 20:45:11',13,'098666333'),(154,'Envia SI confirmacion votacion en Elecciones','2012-11-20 20:45:11',13,'098666333'),(155,'SAL GIM','2012-11-20 20:46:28',14,'099888777'),(156,'Envia SI para confirmar la votacion en Elecciones','2012-11-20 20:46:28',14,'099888777'),(157,'SAL GIM','2012-11-20 20:46:32',14,'099888777'),(158,'Envia SI confirmacion votacion en Elecciones','2012-11-20 20:46:32',14,'099888777'),(159,'SAL GIM','2012-11-20 20:46:37',14,'099888777'),(160,'Envia SI confirmacion votacion en Elecciones','2012-11-20 20:46:37',14,'099888777'),(161,'SAL GIM','2012-11-20 20:46:58',14,'099888777'),(162,'Envia SI confirmacion votacion en Elecciones','2012-11-20 20:46:58',14,'099888777'),(163,'SAL GIM','2012-11-20 20:46:59',14,'099888777'),(164,'Envia SI confirmacion votacion en Elecciones','2012-11-20 20:46:59',14,'099888777'),(165,'SAL GIM','2012-11-20 20:47:00',14,'099888777'),(166,'Envia SI confirmacion votacion en Elecciones','2012-11-20 20:47:00',14,'099888777'),(167,'SAL GIM','2012-11-20 20:47:01',14,'099888777'),(168,'Envia SI confirmacion votacion en Elecciones','2012-11-20 20:47:01',14,'099888777'),(169,'SAL GIM','2012-11-20 20:47:43',14,'099888777'),(170,'Envia SI confirmacion votacion en Elecciones','2012-11-20 20:47:43',14,'099888777'),(171,'SAL GIM','2012-11-20 20:48:37',14,'099888777'),(172,'Envia SI confirmacion votacion en Elecciones','2012-11-20 20:48:37',14,'099888777'),(173,'SAL GIM','2012-11-20 20:48:40',14,'099888777'),(174,'Envia SI confirmacion votacion en Elecciones','2012-11-20 20:48:40',14,'099888777'),(175,'SAL GIM','2012-11-20 20:49:52',14,'099888777'),(176,'Envia SI confirmacion votacion en Elecciones','2012-11-20 20:49:52',14,'099888777'),(177,'SAL GIM','2012-11-20 20:49:53',14,'099888777'),(178,'Envia SI confirmacion votacion en Elecciones','2012-11-20 20:49:53',14,'099888777'),(179,'SAL GIM','2012-11-20 20:49:53',14,'099888777'),(180,'Envia SI confirmacion votacion en Elecciones','2012-11-20 20:49:53',14,'099888777'),(181,'SAL GIM','2012-11-20 20:53:38',14,'099888777'),(182,'Envia SI confirmacion votacion en Elecciones','2012-11-20 20:53:38',14,'099888777'),(183,'SAL GIM','2012-11-20 20:53:54',14,'099888777'),(184,'Envia SI confirmacion votacion en Elecciones','2012-11-20 20:53:54',14,'099888777'),(185,'SAL GIM','2012-11-20 20:53:55',14,'099888777'),(186,'Envia SI confirmacion votacion en Elecciones','2012-11-20 20:53:55',14,'099888777'),(187,'SAL GIM','2012-11-20 20:56:34',14,'099888777'),(188,'Envia SI confirmacion votacion en Elecciones','2012-11-20 20:56:34',14,'099888777'),(189,'SAL GIM','2012-11-20 20:59:16',14,'099888777'),(190,'Envia SI confirmacion votacion en Elecciones','2012-11-20 20:59:16',14,'099888777'),(191,'SAL GIM','2012-11-20 20:59:17',14,'099888777'),(192,'Envia SI confirmacion votacion en Elecciones','2012-11-20 20:59:17',14,'099888777'),(193,'SAL GIM','2012-11-20 20:59:18',14,'099888777'),(194,'Envia SI confirmacion votacion en Elecciones','2012-11-20 20:59:18',14,'099888777'),(195,'SAL GIM','2012-11-20 20:59:26',14,'099888777'),(196,'Envia SI confirmacion votacion en Elecciones','2012-11-20 20:59:27',14,'099888777'),(197,'Usuario object','2012-11-20 21:00:47',14,'099888777'),(198,'Mo object','2012-11-20 21:06:14',14,'099888777'),(199,'Mo object','2012-11-20 21:06:34',14,'099888777'),(200,'SAL GIM','2012-11-20 21:08:13',14,'099888777'),(201,'099888777 no es un usuario habilitado','2012-11-20 21:08:13',14,'099888777'),(202,'SAL GIM','2012-11-20 21:08:13',14,'099888777'),(203,'099888777 no es un usuario habilitado','2012-11-20 21:08:13',14,'099888777'),(204,'SAL GIM','2012-11-20 21:12:11',14,'099888777'),(205,'099888777 no es un usuario habilitado','2012-11-20 21:12:11',14,'099888777'),(206,'SAL GIM','2012-11-20 21:12:36',14,'099888777'),(207,'099888777 no es un usuario habilitado','2012-11-20 21:12:36',14,'099888777'),(208,'SAL GIM','2012-11-20 21:12:47',14,'099888777'),(209,'099888777 no es un usuario habilitado','2012-11-20 21:12:47',14,'099888777'),(210,'SAL GIM','2012-11-20 21:12:55',14,'099888777'),(211,'099888777 no es un usuario habilitado','2012-11-20 21:12:55',14,'099888777'),(212,'SAL GIM','2012-11-20 21:13:30',14,'099888777'),(213,'099888777 no es un usuario habilitado','2012-11-20 21:13:30',14,'099888777'),(214,'SAL GIM','2012-11-20 21:13:58',14,'099888777'),(215,'099888777 no es un usuario habilitado','2012-11-20 21:13:58',14,'099888777'),(216,'SAL GIM','2012-11-20 21:15:01',14,'099888777'),(217,'099888777 no es un usuario habilitado','2012-11-20 21:15:01',14,'099888777'),(218,'SAL GIM','2012-11-20 21:15:36',14,'099888777'),(219,'099888777 no es un usuario habilitado','2012-11-20 21:15:36',14,'099888777'),(220,'SAL GIM','2012-11-20 21:17:02',14,'099888777'),(221,'099888777 no es un usuario habilitado','2012-11-20 21:17:02',14,'099888777'),(222,'SAL GIM','2012-11-20 21:17:28',14,'099888777'),(223,'Envia SI confirmacion votacion en Elecciones','2012-11-20 21:17:28',14,'099888777'),(224,'SAL GIM','2012-11-20 21:18:12',14,'099888777'),(225,'Envia SI confirmacion votacion en Elecciones','2012-11-20 21:18:12',14,'099888777'),(226,'SAL GIM','2012-11-20 21:20:54',14,'099888777'),(227,'Envia SI para confirmar la votacion en Elecciones','2012-11-20 21:20:54',14,'099888777'),(228,'SI','2012-11-21 02:01:15',14,'099888777'),(229,'SI','2012-11-21 02:04:50',14,'099888777'),(230,'SI','2012-11-21 02:07:26',14,'099888777'),(231,'SI','2012-11-21 02:09:31',14,'099888777'),(232,'Gracias por vatar en Elecciones','2012-11-21 02:09:31',14,'099888777'),(233,'SI','2012-11-21 02:14:58',14,'099888777'),(234,'Comando de ciudad invalido','2012-11-21 02:14:58',14,'099888777'),(306,'Tu pin es 5535','2012-11-22 00:22:12',NULL,'096987654'),(307,'Tu pin es 8130','2012-11-22 02:32:43',NULL,'4343'),(308,'Tu pin es 3796','2012-11-22 02:33:59',NULL,'4343'),(309,'Tu pin es 8861','2012-11-22 02:35:00',NULL,'3223'),(310,'Tu pin es 4195','2012-11-22 03:51:06',NULL,'322344'),(311,'Tu pin es 1079','2012-11-22 03:57:12',NULL,'4444'),(312,'Tu pin es 6991','2012-11-22 03:58:00',NULL,'5464654'),(313,'Tu pin es 1043','2012-11-22 04:00:35',NULL,'34343433'),(314,'Tu pin es 3406','2012-11-22 04:02:43',NULL,'34343'),(315,'Tu pin es 9694','2012-11-22 04:04:54',NULL,'6565'),(316,'Tu pin es 1030','2012-11-22 04:05:34',NULL,'5454454'),(317,'Tu pin es 2320','2012-11-22 04:07:19',NULL,'55434'),(318,'Tu pin es 8379','2012-11-22 04:12:20',NULL,'5454'),(319,'Tu pin es 1853','2012-11-22 04:13:53',NULL,'43434'),(320,'Tu pin es 8626','2012-11-22 04:15:48',NULL,'4343'),(321,'Tu pin es 3367','2012-11-22 04:16:44',NULL,'545454'),(322,'Tu pin es 8953','2012-11-22 04:19:15',NULL,'3232332'),(323,'Tu pin es 5672','2012-11-22 04:22:40',NULL,'3434343'),(324,'Tu pin es 8367','2012-11-22 04:27:15',NULL,'43434'),(325,'Tu pin es 1226','2012-11-22 04:33:06',NULL,'433434'),(326,'Tu pin es 7207','2012-11-22 04:34:55',NULL,'44334'),(327,'Tu pin es 9505','2012-11-22 04:39:50',NULL,'123434'),(328,'Tu pin es 7623','2012-11-22 04:43:45',NULL,'dcdcd'),(329,'Tu pin es 8206','2012-11-22 04:43:59',NULL,'32323'),(330,'Tu pin es 1087','2012-11-22 05:01:16',NULL,'232232'),(331,'Tu pin es 8584','2012-11-22 05:01:44',NULL,'dffdfd'),(332,'Tu pin es 5671','2012-11-22 05:02:14',NULL,'484848'),(333,'Tu pin es 6927','2012-11-22 05:05:16',NULL,'sdssds'),(334,'Tu pin es 9203','2012-11-22 05:06:21',NULL,'dksodso'),(335,'Tu pin es 2453','2012-11-22 05:08:46',NULL,'343434'),(336,'Tu pin es 8149','2012-11-22 05:09:47',NULL,'cxcxcx'),(337,'Tu pin es 3308','2012-11-22 05:10:21',NULL,'1123456789'),(338,'Tu pin es 6118','2012-11-22 05:15:03',NULL,'dfodfodk'),(339,'Tu pin es 1436','2012-11-22 05:15:43',NULL,'09993993'),(340,'Tu pin es 4523','2012-11-22 05:19:48',NULL,'mfmdofmdo'),(341,'Tu pin es 9633','2012-11-22 05:20:04',NULL,'000000'),(342,'Tu pin es 1712','2012-11-22 05:25:24',NULL,'dsds'),(343,'Tu pin es 1245','2012-11-22 05:28:23',NULL,'20121021'),(344,'Tu pin es 8032','2012-11-22 05:30:48',NULL,'099888777'),(345,'ROC GIM','2012-11-22 07:17:49',19,'099888777'),(346,'Comando de candidato invalido','2012-11-22 07:17:49',19,'099888777'),(347,'ROC RAU','2012-11-22 07:19:13',19,'099888777'),(348,'Envia SI para confirmar la votacion en Elecciones','2012-11-22 07:19:13',19,'099888777'),(349,'si','2012-11-22 07:20:13',19,'099888777'),(350,'Gracias por vatar en Elecciones','2012-11-22 07:20:13',19,'099888777'),(351,'SAL GIM','2012-11-22 07:20:50',19,'099888777'),(352,'Ya votaste en Elecciones','2012-11-22 07:20:50',19,'099888777'),(353,'SAL GIM','2012-11-22 07:21:02',19,'099888777'),(354,'Ya votaste en Elecciones','2012-11-22 07:21:02',19,'099888777'),(355,'ROC RAU','2012-11-22 07:27:07',15,'096555444'),(356,'096555444 no es un usuario habilitado','2012-11-22 07:27:07',15,'096555444'),(357,'Tu pin es 5141','2012-11-22 07:29:05',NULL,'099888777'),(358,'ROC RAU','2012-11-22 07:29:26',20,'099888777'),(359,'Envia SI para confirmar la votacion en Elecciones','2012-11-22 07:29:26',20,'099888777'),(360,'si','2012-11-22 07:29:38',20,'099888777'),(361,'Gracias por vatar en Elecciones','2012-11-22 07:29:38',20,'099888777'),(362,'Tu pin es 2377','2012-11-22 21:32:58',NULL,'0356659'),(363,'Tu pin es 5351','2012-11-22 22:09:45',NULL,'096777333'),(364,'Tu pin es 6988','2012-11-22 22:14:57',NULL,'096777333'),(365,'Tu pin es 3035','2012-11-22 22:32:10',NULL,'54354453'),(366,'Tu pin es 4181','2012-12-03 22:22:41',NULL,'096777333'),(367,'SAL GIM','2012-12-03 22:27:20',23,'096777333'),(368,'096777333 no es un usuario habilitado','2012-12-03 22:27:20',23,'096777333'),(369,'SAL GIM','2012-12-03 22:28:10',23,'096777333'),(370,'Envia SI para confirmar la votacion en Elecciones','2012-12-03 22:28:10',23,'096777333'),(371,'SAL GIM','2012-12-03 22:28:39',23,'096777333'),(372,'Envia SI confirmacion votacion en Elecciones','2012-12-03 22:28:39',23,'096777333'),(373,'SAL GIM','2012-12-03 22:30:04',23,'096777333'),(374,'Envia SI confirmacion votacion en Elecciones','2012-12-03 22:30:04',23,'096777333'),(375,'SAL GIM','2012-12-03 22:30:15',23,'096777333'),(376,'Envia SI confirmacion votacion en Elecciones','2012-12-03 22:30:15',23,'096777333'),(377,'Si','2012-12-03 22:31:09',23,'096777333'),(378,'Gracias por vatar en Elecciones','2012-12-03 22:31:09',23,'096777333');

/*Table structure for table `app_obl_status` */

DROP TABLE IF EXISTS `app_obl_status`;

CREATE TABLE `app_obl_status` (
  `id` int(11) NOT NULL auto_increment,
  `usuario_id` int(11) NOT NULL,
  `campania_id` int(11) NOT NULL,
  `estado` varchar(3) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `app_obl_status_363db8b9` (`usuario_id`),
  KEY `app_obl_status_34909c90` (`campania_id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

/*Data for the table `app_obl_status` */

insert  into `app_obl_status`(`id`,`usuario_id`,`campania_id`,`estado`) values (20,13,1,'IN'),(19,14,1,'VE'),(18,14,1,'CF'),(17,14,1,'IN'),(21,13,1,'CF'),(22,13,1,'VE'),(23,16,1,'IN'),(24,16,1,'CF'),(25,16,1,'VE'),(26,19,1,'IN'),(27,19,1,'CF'),(28,19,1,'VE'),(29,20,1,'IN'),(30,20,1,'CF'),(31,20,1,'VE'),(32,23,1,'IN'),(33,23,1,'CF'),(34,23,1,'VE');

/*Table structure for table `app_obl_usuario` */

DROP TABLE IF EXISTS `app_obl_usuario`;

CREATE TABLE `app_obl_usuario` (
  `persona_ptr_id` int(11) NOT NULL,
  `habilitado` tinyint(1) NOT NULL,
  PRIMARY KEY  (`persona_ptr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `app_obl_usuario` */

insert  into `app_obl_usuario`(`persona_ptr_id`,`habilitado`) values (13,1),(23,1),(20,1),(15,0),(16,1),(17,1),(18,1);

/*Table structure for table `app_obl_voto` */

DROP TABLE IF EXISTS `app_obl_voto`;

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
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `app_obl_voto` */

insert  into `app_obl_voto`(`id`,`candidato_id`,`campania_id`,`usuario_id`,`fecha`) values (7,4,1,14,'2012-11-21 02:40:30'),(8,4,1,13,'2012-11-21 03:40:47'),(9,4,1,16,'2012-11-21 23:55:40'),(11,2,1,20,'2012-11-22 07:29:38'),(12,4,1,23,'2012-12-03 22:31:09');

/*Table structure for table `auth_group` */

DROP TABLE IF EXISTS `auth_group`;

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `auth_group` */

/*Table structure for table `auth_group_permissions` */

DROP TABLE IF EXISTS `auth_group_permissions`;

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL auto_increment,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_425ae3c4` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `auth_group_permissions` */

/*Table structure for table `auth_permission` */

DROP TABLE IF EXISTS `auth_permission`;

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_1bb8f392` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;

/*Data for the table `auth_permission` */

insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add site',6,'add_site'),(17,'Can change site',6,'change_site'),(18,'Can delete site',6,'delete_site'),(19,'Can add ciudad',7,'add_ciudad'),(20,'Can change ciudad',7,'change_ciudad'),(21,'Can delete ciudad',7,'delete_ciudad'),(22,'Can add comando',8,'add_comando'),(23,'Can change comando',8,'change_comando'),(24,'Can delete comando',8,'delete_comando'),(25,'Can add ciudad comando',9,'add_ciudadcomando'),(26,'Can change ciudad comando',9,'change_ciudadcomando'),(27,'Can delete ciudad comando',9,'delete_ciudadcomando'),(28,'Can add candidato comando',10,'add_candidatocomando'),(29,'Can change candidato comando',10,'change_candidatocomando'),(30,'Can delete candidato comando',10,'delete_candidatocomando'),(31,'Can add persona',11,'add_persona'),(32,'Can change persona',11,'change_persona'),(33,'Can delete persona',11,'delete_persona'),(34,'Can add candidato',12,'add_candidato'),(35,'Can change candidato',12,'change_candidato'),(36,'Can delete candidato',12,'delete_candidato'),(37,'Can add usuario',13,'add_usuario'),(38,'Can change usuario',13,'change_usuario'),(39,'Can delete usuario',13,'delete_usuario'),(40,'Can add sms',14,'add_sms'),(41,'Can change sms',14,'change_sms'),(42,'Can delete sms',14,'delete_sms'),(43,'Can add mo',15,'add_mo'),(44,'Can change mo',15,'change_mo'),(45,'Can delete mo',15,'delete_mo'),(46,'Can add mt',16,'add_mt'),(47,'Can change mt',16,'change_mt'),(48,'Can delete mt',16,'delete_mt'),(49,'Can add campania',17,'add_campania'),(50,'Can change campania',17,'change_campania'),(51,'Can delete campania',17,'delete_campania'),(52,'Can add voto',18,'add_voto'),(53,'Can change voto',18,'change_voto'),(54,'Can delete voto',18,'delete_voto'),(55,'Can add sesion',19,'add_sesion'),(56,'Can change sesion',19,'change_sesion'),(57,'Can delete sesion',19,'delete_sesion'),(58,'Can add status',20,'add_status'),(59,'Can change status',20,'change_status'),(60,'Can delete status',20,'delete_status'),(61,'Can add carrier',21,'add_carrier'),(62,'Can change carrier',21,'change_carrier'),(63,'Can delete carrier',21,'delete_carrier'),(64,'Can add plataforma',22,'add_plataforma'),(65,'Can change plataforma',22,'change_plataforma'),(66,'Can delete plataforma',22,'delete_plataforma'),(67,'Can add log entry',23,'add_logentry'),(68,'Can change log entry',23,'change_logentry'),(69,'Can delete log entry',23,'delete_logentry'),(70,'Can add pin',24,'add_pin'),(71,'Can change pin',24,'change_pin'),(72,'Can delete pin',24,'delete_pin'),(73,'Can add reporte',25,'add_reporte'),(74,'Can change reporte',25,'change_reporte'),(75,'Can delete reporte',25,'delete_reporte'),(76,'Can add reporte candidato',26,'add_reportecandidato'),(77,'Can change reporte candidato',26,'change_reportecandidato'),(78,'Can delete reporte candidato',26,'delete_reportecandidato'),(79,'Can add reporte ciudad',27,'add_reporteciudad'),(80,'Can change reporte ciudad',27,'change_reporteciudad'),(81,'Can delete reporte ciudad',27,'delete_reporteciudad');

/*Table structure for table `auth_user` */

DROP TABLE IF EXISTS `auth_user`;

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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `auth_user` */

insert  into `auth_user`(`id`,`username`,`first_name`,`last_name`,`email`,`password`,`is_staff`,`is_active`,`is_superuser`,`last_login`,`date_joined`) values (1,'Federico','','','fede@fede.com','pbkdf2_sha256$10000$nDMCrh0xBmtZ$531W3Auk6W9mWi7zCqX5mRDXI+luY6evpeDBBwfLT2A=',1,1,1,'2012-12-03 22:37:43','2012-10-29 22:39:25'),(2,'admin','','','','pbkdf2_sha256$10000$LRbTAtUpsGst$Uj8RDghOKi+DrhW0HtQVUNDrGYxFKOYcIJf0jAXKyYE=',0,1,0,'2012-12-03 22:17:23','2012-12-03 22:16:11');

/*Table structure for table `auth_user_groups` */

DROP TABLE IF EXISTS `auth_user_groups`;

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_403f60f` (`user_id`),
  KEY `auth_user_groups_425ae3c4` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `auth_user_groups` */

/*Table structure for table `auth_user_user_permissions` */

DROP TABLE IF EXISTS `auth_user_user_permissions`;

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_403f60f` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `auth_user_user_permissions` */

/*Table structure for table `django_admin_log` */

DROP TABLE IF EXISTS `django_admin_log`;

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
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

/*Data for the table `django_admin_log` */

insert  into `django_admin_log`(`id`,`action_time`,`user_id`,`content_type_id`,`object_id`,`object_repr`,`action_flag`,`change_message`) values (1,'2012-10-29 23:20:11',1,7,'1','1 - Salto',1,''),(2,'2012-10-29 23:20:15',1,7,'2','2 - Rocha',1,''),(3,'2012-10-29 23:21:03',1,12,'1','Juan ',1,''),(4,'2012-10-29 23:21:32',1,12,'2','Raul',1,''),(5,'2012-10-29 23:48:16',1,9,'1','Sal',1,''),(6,'2012-10-29 23:50:52',1,9,'1','SAL',2,'Changed nombre.'),(7,'2012-10-29 23:51:06',1,10,'3','RAU',1,''),(8,'2012-11-19 23:41:32',1,17,'1','Elecciones',1,''),(9,'2012-11-19 23:42:36',1,12,'4','4 - Pedro Gimenez',1,''),(10,'2012-11-19 23:43:05',1,10,'4','GIM',1,''),(11,'2012-11-20 04:14:10',1,7,'3','3 - Montevideo',1,''),(12,'2012-11-20 04:14:26',1,7,'4','4 - Colonia',1,''),(13,'2012-11-20 04:14:30',1,7,'5','5 - San Jose',1,''),(14,'2012-11-20 04:14:36',1,7,'6','6 - Rivera',1,''),(15,'2012-11-20 04:14:42',1,7,'7','7 - Treinta y tres',1,''),(16,'2012-11-20 04:14:47',1,7,'8','8 - Cerro Largo',1,''),(17,'2012-11-20 04:15:00',1,7,'9','9 - Paysandu',1,''),(18,'2012-11-20 04:15:07',1,7,'10','10 - Canelones',1,''),(19,'2012-11-20 04:15:11',1,7,'11','11 - Flores',1,''),(20,'2012-11-20 04:15:14',1,7,'12','12 - Florida',1,''),(21,'2012-11-20 04:15:18',1,7,'13','13 - Durazno',1,''),(22,'2012-11-20 04:15:22',1,7,'14','14 - Soriano',1,''),(23,'2012-11-20 04:15:27',1,7,'15','15 - Rio Negro',1,''),(24,'2012-11-20 04:15:33',1,7,'16','16 - Tacuarembo',1,''),(25,'2012-11-20 04:15:52',1,7,'17','17 - Maldonado',1,''),(26,'2012-11-20 04:16:39',1,7,'18','18 - Lavalleja',1,''),(27,'2012-11-20 04:17:47',1,7,'19','19 - Artigas',1,''),(28,'2012-11-20 04:18:52',1,7,'9','9 - Paysandu',2,'Changed nombre.'),(29,'2012-11-20 05:27:13',1,17,'1','Elecciones',2,'Changed fechaIni and fechaFin.'),(30,'2012-11-20 05:27:20',1,17,'1','Elecciones',2,'No fields changed.'),(31,'2012-11-20 05:28:04',1,12,'4','4 - Pedro Gimenez',2,'No fields changed.'),(32,'2012-11-20 05:40:05',1,17,'1','Elecciones',2,'Changed fechaIni.'),(33,'2012-11-22 07:15:52',1,9,'2','ROC',1,''),(34,'2012-11-22 07:16:03',1,9,'3','MON',1,''),(35,'2012-11-22 07:16:38',1,10,'7','PER',1,''),(36,'2012-11-22 07:16:48',1,12,'4','4 - Pedro Gimenez',2,'No fields changed.'),(37,'2012-11-22 07:16:55',1,12,'1','1 - Juan  Perez',2,'No fields changed.'),(38,'2012-11-22 07:17:01',1,12,'2','2 - Raul Vera',2,'No fields changed.'),(39,'2012-11-22 07:18:32',1,12,'2','2 - Raul Vera',2,'Changed ciudad.'),(40,'2012-11-22 07:18:52',1,9,'2','ROC',2,'No fields changed.'),(41,'2012-11-22 07:19:03',1,10,'3','RAU',2,'Changed ciudadComando.'),(42,'2012-11-26 23:59:08',1,17,'2','Municipales',1,''),(43,'2012-12-03 22:16:11',1,3,'2','admin',1,''),(44,'2012-12-03 22:16:24',1,3,'2','admin',2,'Changed password.');

/*Table structure for table `django_content_type` */

DROP TABLE IF EXISTS `django_content_type`;

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

/*Data for the table `django_content_type` */

insert  into `django_content_type`(`id`,`name`,`app_label`,`model`) values (1,'permission','auth','permission'),(2,'group','auth','group'),(3,'user','auth','user'),(4,'content type','contenttypes','contenttype'),(5,'session','sessions','session'),(6,'site','sites','site'),(7,'ciudad','app_obl','ciudad'),(8,'comando','app_obl','comando'),(9,'ciudad comando','app_obl','ciudadcomando'),(10,'candidato comando','app_obl','candidatocomando'),(11,'persona','app_obl','persona'),(12,'candidato','app_obl','candidato'),(13,'usuario','app_obl','usuario'),(14,'sms','app_obl','sms'),(15,'mo','app_obl','mo'),(16,'mt','app_obl','mt'),(17,'campania','app_obl','campania'),(18,'voto','app_obl','voto'),(19,'sesion','app_obl','sesion'),(20,'status','app_obl','status'),(21,'carrier','app_obl','carrier'),(22,'plataforma','app_obl','plataforma'),(23,'log entry','admin','logentry'),(24,'pin','app_obl','pin'),(25,'reporte','app_obl','reporte'),(26,'reporte candidato','app_obl','reportecandidato'),(27,'reporte ciudad','app_obl','reporteciudad');

/*Table structure for table `django_session` */

DROP TABLE IF EXISTS `django_session`;

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY  (`session_key`),
  KEY `django_session_3da3d3d8` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `django_session` */

insert  into `django_session`(`session_key`,`session_data`,`expire_date`) values ('2618241860769d9544a95095f024e222','ZTBlZTU4OWI2MTUxNWQ2OTliYmQ5YTBiMWM5YTY5Njg0NWE0MTRjZDqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-11-19 22:32:17'),('78fe7d9c9336f7b79e1603ddb44dad11','ZTBlZTU4OWI2MTUxNWQ2OTliYmQ5YTBiMWM5YTY5Njg0NWE0MTRjZDqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-11-12 23:19:55'),('acac93b8ab64b02897146785a526d623','ZTBlZTU4OWI2MTUxNWQ2OTliYmQ5YTBiMWM5YTY5Njg0NWE0MTRjZDqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-12-04 12:06:41'),('86ee4aee0e5821ba01f7d26a51e5c2b6','ZjExZTJjNDdhZGI4Yzk2MzM5NmEzMmFkYzcxMmU0NzViZjdlZjM2ZTqAAn1xAS4=\n','2012-12-17 22:50:17');

/*Table structure for table `django_site` */

DROP TABLE IF EXISTS `django_site`;

CREATE TABLE `django_site` (
  `id` int(11) NOT NULL auto_increment,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `django_site` */

insert  into `django_site`(`id`,`domain`,`name`) values (1,'example.com','example.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
