-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ilpiatto
-- ------------------------------------------------------
-- Server version	5.7.20-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `idcliente` int(10) NOT NULL AUTO_INCREMENT,
  `dueno` varchar(100) NOT NULL,
  `domicilio` varchar(100) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `correo` varchar(60) NOT NULL,
  `negocio` varchar(50) NOT NULL,
  `categoria` varchar(20) NOT NULL,
  `latitud` float(10,6) NOT NULL,
  `longitud` float(10,6) NOT NULL,
  `cargo` varchar(10) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `imagen` varchar(10) NOT NULL,
  `texto` varchar(500) NOT NULL,
  PRIMARY KEY (`idcliente`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (13,'mario','juarez','123234','chjim98','cocina','cocina',20.657129,-103.698547,'100.00','2018-08-24','2018-08-31','text','hola'),(14,'martha','cangrejo','124234','chjim999','tacos','comida',20.658012,-103.694595,'100.00','2018-08-16','2018-09-01','text','hola....'),(15,'mario','calamar','23432','chjim33','tacos','cocina',20.661947,-103.694595,'123','2018-08-23','2018-08-31','text','hola'),(16,'sofia','mexico','234','chjim42','tacos','cocina',20.657370,-103.698029,'109','2018-08-25','2018-08-31','text','hola...'),(17,'simon','higuera','234234','chjim543','tacos','cocina',20.656326,-103.696396,'100','2018-08-24','2018-08-31','text','hola'),(18,'jose','av mexico','123234','chjim332','eapida','tacos',20.656727,-103.700089,'123','2018-08-30','2018-08-31','text','cosas');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-28 15:57:11
