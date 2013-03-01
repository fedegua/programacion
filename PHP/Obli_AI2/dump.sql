/*
SQLyog Ultimate v8.3 
MySQL - 5.1.34-community : Database - app_ai
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`app_ai` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `app_ai`;

/*Table structure for table `articulo` */

DROP TABLE IF EXISTS `articulo`;

CREATE TABLE `articulo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` char(10) DEFAULT NULL,
  `nombre` char(100) DEFAULT NULL,
  `subcategoriaId` int(11) DEFAULT NULL,
  `precio` char(20) DEFAULT NULL,
  `imagen` char(100) DEFAULT NULL,
  `creado` datetime DEFAULT NULL,
  `actualizado` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `articulo` */

LOCK TABLES `articulo` WRITE;

insert  into `articulo`(`id`,`codigo`,`nombre`,`subcategoriaId`,`precio`,`imagen`,`creado`,`actualizado`) values (1,'MI-0001','Micro comp. SONY CD/MP3/USB',1,'80 USD','mini1.jpg','2012-06-26 19:35:42','2012-06-27 17:29:34'),(2,'MI-0002','Micro comp. SONY CD/MP3/USB/SDcard',1,'44 USD','mini2.jpg','2012-06-26 19:37:00','2012-06-27 17:30:08'),(3,'R-0001','Radio de bolsillo',2,'','radio1.jpg','2012-06-26 19:51:04','2012-06-27 17:31:33'),(4,'R-0002','Radio portátil',1,'','radio2.jpg','2012-06-26 19:51:41','2012-06-27 17:31:50'),(5,'RF-0001','Refrig. Estantes ajustables',5,'','ref1.jpg','2012-06-26 19:53:44','2012-06-27 17:35:58'),(6,'RF-0002','Refrig. Frio seco.',5,'','ref2.jpg','2012-06-26 19:54:43','2012-06-27 17:36:39'),(7,'TLED-0001','SONY Modelo: 23L13 | USB | HDMI | Full HD',3,'800 US','sony1.jpg','2012-06-26 19:56:11','2012-06-27 17:36:55'),(8,'TLED-0002','SONY Modelo: 32L21 | USB | HDMI',3,'500 USD','sony2.jpg','2012-06-26 19:57:16','2012-06-27 17:37:13'),(9,'R-0003','Radio MP4',2,'','mp4.jpg','2012-06-27 16:15:40','2012-06-27 17:37:42'),(11,'NT-0001','Sony Vaio Z117',8,'1500 USD','vaio1.jpg','2012-06-27 17:25:41','2012-06-27 17:42:34'),(12,'NT-0002','Sony Vaio Z119',8,'800 US','vaio2.JPG','2012-06-27 17:41:49',NULL);

UNLOCK TABLES;

/*Table structure for table `categoria` */

DROP TABLE IF EXISTS `categoria`;

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` char(50) DEFAULT NULL,
  `creado` datetime DEFAULT NULL,
  `actualizado` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `categoria` */

LOCK TABLES `categoria` WRITE;

insert  into `categoria`(`id`,`nombre`,`creado`,`actualizado`) values (1,'Audio',NULL,NULL),(2,'TV',NULL,NULL),(3,'Línea blanca',NULL,NULL),(5,'Computadoras',NULL,NULL);

UNLOCK TABLES;

/*Table structure for table `subcategoria` */

DROP TABLE IF EXISTS `subcategoria`;

CREATE TABLE `subcategoria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoriaId` int(11) DEFAULT NULL,
  `nombre` char(50) DEFAULT NULL,
  `creado` datetime DEFAULT NULL,
  `actualizado` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `subcategoria` */

LOCK TABLES `subcategoria` WRITE;

insert  into `subcategoria`(`id`,`categoriaId`,`nombre`,`creado`,`actualizado`) values (1,1,'Mini componentes',NULL,NULL),(2,1,'Radios',NULL,NULL),(3,2,'Televisores LED',NULL,NULL),(4,2,'Televisores LCD',NULL,NULL),(5,3,'Refrigeradores',NULL,NULL),(6,3,'Lavarropas',NULL,NULL),(8,5,'Notebooks',NULL,NULL),(9,5,'Pc',NULL,NULL);

UNLOCK TABLES;

/*Table structure for table `usuario` */

DROP TABLE IF EXISTS `usuario`;

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usr` char(50) DEFAULT NULL,
  `pwd` char(50) DEFAULT NULL,
  `lastLog` datetime DEFAULT NULL,
  `lastIp` char(20) DEFAULT NULL,
  `creado` datetime DEFAULT NULL,
  `actualizado` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `usuario` */

LOCK TABLES `usuario` WRITE;

insert  into `usuario`(`id`,`usr`,`pwd`,`lastLog`,`lastIp`,`creado`,`actualizado`) values (1,'usuario','f8032d5cae3de20fcec887f395ec9a6a','2012-06-27 16:53:10','127.0.0.1',NULL,NULL),(2,'usuario2','usuario2',NULL,NULL,NULL,NULL);

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
