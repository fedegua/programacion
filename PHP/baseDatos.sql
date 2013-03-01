/*
SQLyog Community v8.71 
MySQL - 5.0.51b-community-nt-log : Database - obliarq
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`obliarq` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `obliarq`;

/*Table structure for table `autor` */

DROP TABLE IF EXISTS `autor`;

CREATE TABLE `autor` (
  `id` int(10) NOT NULL auto_increment,
  `nombre` varchar(100) default NULL,
  `apellido` varchar(100) default NULL,
  `documento` int(8) default NULL,
  `telefono` int(9) default NULL,
  `imagen` varchar(255) default NULL,
  `creado` datetime default NULL,
  `actualizado` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `autor` */

insert  into `autor`(`id`,`nombre`,`apellido`,`documento`,`telefono`,`imagen`,`creado`,`actualizado`) values (12,'Pepe','Ramirez',458777658,9968758,'agata2.jpg','2012-07-05 00:28:44','2012-07-05 00:32:11'),(11,'Pablito','Lopez',56444334,25226987,'agata2.jpg','2012-07-05 00:28:07',NULL),(10,'Mario','Rodriguez',2344999,45355334,'642-morado.jpg','2012-07-05 00:27:40','2012-07-05 00:32:01'),(9,'Francisco','Perez',2147483647,45355334,'agata2.jpg','2012-07-05 00:27:19',NULL);

/*Table structure for table `categoria` */

DROP TABLE IF EXISTS `categoria`;

CREATE TABLE `categoria` (
  `id` int(10) NOT NULL auto_increment,
  `nombre` varchar(100) default NULL,
  `creado` datetime default NULL,
  `actualizado` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `categoria` */

insert  into `categoria`(`id`,`nombre`,`creado`,`actualizado`) values (1,'vacijassss','2012-07-03 17:27:39','2012-07-03 17:31:12'),(2,'utensillo de cocina','2012-07-03 17:27:58',NULL);

/*Table structure for table `ciudad` */

DROP TABLE IF EXISTS `ciudad`;

CREATE TABLE `ciudad` (
  `id` int(10) NOT NULL auto_increment,
  `ciudad` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

/*Data for the table `ciudad` */

insert  into `ciudad`(`id`,`ciudad`) values (1,'Montevideo'),(2,'Canelones'),(3,'Maldonado'),(4,'Salto'),(5,'Colonia'),(6,'Paysandu'),(7,'Rivera'),(8,'San Jose'),(9,'Tacuarembo'),(10,'Cerro Largo'),(11,'Soriano'),(12,'Artigas'),(13,'Rocha'),(14,'Florida'),(15,'Lavalleja'),(16,'Durazno'),(17,'Rio Negro'),(18,'Treita y Tres'),(19,'Flores');

/*Table structure for table `hallazgo` */

DROP TABLE IF EXISTS `hallazgo`;

CREATE TABLE `hallazgo` (
  `id` int(10) NOT NULL auto_increment,
  `descripcion` varchar(255) default NULL,
  `imagen` varchar(255) default NULL,
  `latitud` int(10) default NULL,
  `longitud` int(10) default NULL,
  `material_id` int(10) default NULL,
  `categoria_id` int(10) default NULL,
  `fecha_hallazgo` datetime default NULL,
  `autor_id` int(10) default NULL,
  `proyecto_id` int(10) default NULL,
  `creado` datetime default NULL,
  `actualizado` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `hallazgo` */

insert  into `hallazgo`(`id`,`descripcion`,`imagen`,`latitud`,`longitud`,`material_id`,`categoria_id`,`fecha_hallazgo`,`autor_id`,`proyecto_id`,`creado`,`actualizado`) values (12,'Piedra preciosas','AMATISTA 3.jpg',47,54,4,1,'2012-07-04 00:00:00',11,6,'2012-07-04 23:13:13','2012-07-05 16:11:07'),(11,'Paez','agatacircpular.jpg',34,25,4,2,'2012-07-04 00:00:00',12,6,'2012-07-04 18:25:29','2012-07-05 16:11:11'),(10,'fosil dinosaurio rex','331-amatista.jpg',47,54,2,2,'2012-07-04 00:00:00',12,5,'2012-07-04 18:25:05','2012-07-05 16:11:20'),(6,'palassshola','642-morado.jpg',34,54,4,1,'2012-07-04 00:00:00',9,6,'2012-07-03 20:51:51','2012-07-05 16:11:23'),(13,'martillo','ANILLO BALL AMATISTA CRYSTAL PLATA CAL (1).jpg',34,25,4,1,'2012-07-04 00:00:00',11,5,'2012-07-05 16:05:22','2012-07-05 16:11:27');

/*Table structure for table `material` */

DROP TABLE IF EXISTS `material`;

CREATE TABLE `material` (
  `id` int(10) NOT NULL auto_increment,
  `nombre` varchar(100) default NULL,
  `codigo` int(10) default NULL,
  `creado` datetime default NULL,
  `actualizado` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `material` */

insert  into `material`(`id`,`nombre`,`codigo`,`creado`,`actualizado`) values (2,'Plata',124,'2012-07-03 16:48:06',NULL),(4,'Oro',2467,'2012-07-03 17:37:47',NULL);

/*Table structure for table `proyecto` */

DROP TABLE IF EXISTS `proyecto`;

CREATE TABLE `proyecto` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(255) default NULL,
  `ciudad` int(2) default NULL,
  `creado` datetime default NULL,
  `actualizado` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `proyecto` */

insert  into `proyecto`(`id`,`nombre`,`descripcion`,`ciudad`,`creado`,`actualizado`) values (1,'Feder','dddd',1,'2012-06-27 18:24:01','2012-06-27 18:38:39'),(4,'Feder','peepeppe',1,'2012-06-27 18:52:57',NULL),(5,'Carlos','Parca',6,'2012-07-03 17:08:26','2012-07-03 17:08:46'),(6,'Cataratas','hola',1,'2012-07-04 14:18:33',NULL);

/*Table structure for table `usuario` */

DROP TABLE IF EXISTS `usuario`;

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL auto_increment,
  `usr` char(50) NOT NULL,
  `pwd` char(50) NOT NULL,
  `lastLog` datetime default NULL,
  `lastIp` char(50) default NULL,
  `actualizado` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `usuario` */

insert  into `usuario`(`id`,`usr`,`pwd`,`lastLog`,`lastIp`,`actualizado`) values (1,'obli','f0a8e5af493b7fc9810b3de407225a66','2013-03-01 02:39:32','127.0.0.1',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
