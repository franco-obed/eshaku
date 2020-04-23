-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: eshaku
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `donador`
--

DROP TABLE IF EXISTS `donador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donador` (
  `id_donador` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int DEFAULT NULL,
  PRIMARY KEY (`id_donador`),
  UNIQUE KEY `id_usuario_UNIQUE` (`id_usuario`),
  KEY `id_usuario_idx` (`id_usuario`),
  CONSTRAINT `id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donador`
--

LOCK TABLES `donador` WRITE;
/*!40000 ALTER TABLE `donador` DISABLE KEYS */;
INSERT INTO `donador` VALUES (2,8),(1,13);
/*!40000 ALTER TABLE `donador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mensaje`
--

DROP TABLE IF EXISTS `mensaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mensaje` (
  `id` int NOT NULL AUTO_INCREMENT,
  `contenido` varchar(500) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `mensaje_padre` varchar(500) DEFAULT NULL,
  `id_solicitante` int DEFAULT NULL,
  `id_donador` int DEFAULT NULL,
  `id_post` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_solicitante_UNIQUE` (`id_solicitante`),
  UNIQUE KEY `id_donador_UNIQUE` (`id_donador`),
  UNIQUE KEY `id_mensaje_UNIQUE` (`id_post`),
  KEY `mensaje_solicitante_idx` (`id_solicitante`),
  KEY `mensaje_donador_idx` (`id_donador`),
  CONSTRAINT `mensaje_donador` FOREIGN KEY (`id_donador`) REFERENCES `donador` (`id_donador`),
  CONSTRAINT `mensaje_post` FOREIGN KEY (`id_post`) REFERENCES `post` (`id`),
  CONSTRAINT `mensaje_solicitante` FOREIGN KEY (`id_solicitante`) REFERENCES `solicitante` (`id_solicitante`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensaje`
--

LOCK TABLES `mensaje` WRITE;
/*!40000 ALTER TABLE `mensaje` DISABLE KEYS */;
INSERT INTO `mensaje` VALUES (8,'puto el que lo lea','2020-04-15','2020-04-15','ola k ase',NULL,NULL,NULL);
/*!40000 ALTER TABLE `mensaje` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trgr_insert_on_mensaje` AFTER INSERT ON `mensaje` FOR EACH ROW BEGIN INSERT INTO mensaje_log VALUES(user(), "INSERTED ENTRY"); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trgr_updt_on_mensaje` AFTER UPDATE ON `mensaje` FOR EACH ROW BEGIN INSERT INTO mensaje_log VALUES(user(), "UPDATED ENTRY"); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trgr_delete_on_mensaje` AFTER DELETE ON `mensaje` FOR EACH ROW BEGIN INSERT INTO mensaje_log VALUES(user(), "DELETED ENTRY"); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `mensaje_log`
--

DROP TABLE IF EXISTS `mensaje_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mensaje_log` (
  `user` varchar(100) DEFAULT NULL,
  `action` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensaje_log`
--

LOCK TABLES `mensaje_log` WRITE;
/*!40000 ALTER TABLE `mensaje_log` DISABLE KEYS */;
INSERT INTO `mensaje_log` VALUES ('root@localhost','INSERTED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','DELETED ENTRY'),('root@localhost','DELETED ENTRY'),('root@localhost','DELETED ENTRY'),('root@localhost','DELETED ENTRY'),('root@localhost','DELETED ENTRY'),('root@localhost','DELETED ENTRY'),('root@localhost','INSERTED ENTRY');
/*!40000 ALTER TABLE `mensaje_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `id_donador` int NOT NULL,
  `id_solicitante` int DEFAULT NULL,
  `id_prenda` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `post_solicitante_idx` (`id_solicitante`),
  KEY `post_donador_idx` (`id_donador`),
  KEY `post_prenda_idx` (`id_prenda`),
  CONSTRAINT `post_donador` FOREIGN KEY (`id_donador`) REFERENCES `donador` (`id_donador`),
  CONSTRAINT `post_prenda` FOREIGN KEY (`id_prenda`) REFERENCES `prenda` (`id`),
  CONSTRAINT `post_solicitante` FOREIGN KEY (`id_solicitante`) REFERENCES `solicitante` (`id_solicitante`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_log`
--

DROP TABLE IF EXISTS `post_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_log` (
  `user` varchar(100) DEFAULT NULL,
  `action` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_log`
--

LOCK TABLES `post_log` WRITE;
/*!40000 ALTER TABLE `post_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `post_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prenda`
--

DROP TABLE IF EXISTS `prenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prenda` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(20) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `estado` varchar(15) DEFAULT NULL,
  `talla` varchar(10) DEFAULT NULL,
  `genero` varchar(10) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `id_usuario` int DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prenda_usuario_idx` (`id_usuario`),
  CONSTRAINT `prenda_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prenda`
--

LOCK TABLES `prenda` WRITE;
/*!40000 ALTER TABLE `prenda` DISABLE KEYS */;
INSERT INTO `prenda` VALUES (38,'playera','cliff.jpg','es tan poderoso que no puedo controlarlo, se llama golden experience, es buen pedo','usada','mediana','mujer','2020-04-23 00:34:48',25,'se regala stand porque ya no lo quiero'),(39,'playera','cancun.jpg','desc','nueva','pequena','mujer','2020-04-23 00:49:51',21,'fotito'),(40,'zapatos','mads-mikkelsen-death-stranding-kojima-productions.png','esta bastante desgastada','usada','pequena','ninos','2020-04-23 06:40:13',21,'pnatalonera');
/*!40000 ALTER TABLE `prenda` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trgr_insert_on_prenda` AFTER INSERT ON `prenda` FOR EACH ROW BEGIN INSERT INTO prenda_log VALUES(user(), "INSERTED ENTRY"); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trgr_updt_on_prenda` AFTER UPDATE ON `prenda` FOR EACH ROW BEGIN INSERT INTO prenda_log VALUES(user(), "UPDATED ENTRY"); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trgr_delete_on_prenda` AFTER DELETE ON `prenda` FOR EACH ROW BEGIN INSERT INTO prenda_log VALUES(user(), "DELETED ENTRY"); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `prenda_log`
--

DROP TABLE IF EXISTS `prenda_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prenda_log` (
  `user` varchar(100) DEFAULT NULL,
  `action` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prenda_log`
--

LOCK TABLES `prenda_log` WRITE;
/*!40000 ALTER TABLE `prenda_log` DISABLE KEYS */;
INSERT INTO `prenda_log` VALUES ('root@localhost','INSERTED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','DELETED ENTRY'),('root@localhost','DELETED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','UPDATED ENTRY'),('root@localhost','UPDATED ENTRY'),('root@localhost','UPDATED ENTRY'),('root@localhost','UPDATED ENTRY'),('root@localhost','UPDATED ENTRY'),('root@localhost','UPDATED ENTRY'),('root@localhost','UPDATED ENTRY'),('root@localhost','UPDATED ENTRY'),('root@localhost','UPDATED ENTRY'),('root@localhost','UPDATED ENTRY'),('root@localhost','UPDATED ENTRY'),('root@localhost','UPDATED ENTRY'),('root@localhost','UPDATED ENTRY'),('root@localhost','UPDATED ENTRY'),('root@localhost','UPDATED ENTRY'),('root@localhost','UPDATED ENTRY'),('root@localhost','UPDATED ENTRY'),('root@localhost','UPDATED ENTRY'),('root@localhost','UPDATED ENTRY'),('root@localhost','UPDATED ENTRY'),('root@localhost','UPDATED ENTRY'),('root@localhost','UPDATED ENTRY'),('root@localhost','UPDATED ENTRY'),('root@localhost','UPDATED ENTRY'),('root@localhost','UPDATED ENTRY'),('root@localhost','UPDATED ENTRY'),('root@localhost','UPDATED ENTRY'),('root@localhost','UPDATED ENTRY'),('root@localhost','UPDATED ENTRY'),('root@localhost','UPDATED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','UPDATED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','DELETED ENTRY'),('root@localhost','DELETED ENTRY'),('root@localhost','DELETED ENTRY'),('root@localhost','DELETED ENTRY'),('root@localhost','DELETED ENTRY'),('root@localhost','DELETED ENTRY'),('root@localhost','DELETED ENTRY'),('root@localhost','DELETED ENTRY'),('root@localhost','DELETED ENTRY'),('root@localhost','DELETED ENTRY'),('root@localhost','DELETED ENTRY'),('root@localhost','DELETED ENTRY'),('root@localhost','DELETED ENTRY'),('root@localhost','DELETED ENTRY'),('root@localhost','DELETED ENTRY'),('root@localhost','DELETED ENTRY'),('root@localhost','DELETED ENTRY'),('root@localhost','DELETED ENTRY'),('root@localhost','DELETED ENTRY'),('root@localhost','DELETED ENTRY'),('root@localhost','DELETED ENTRY'),('root@localhost','DELETED ENTRY'),('root@localhost','DELETED ENTRY'),('root@localhost','DELETED ENTRY'),('root@localhost','DELETED ENTRY'),('root@localhost','DELETED ENTRY'),('root@localhost','DELETED ENTRY'),('root@localhost','DELETED ENTRY'),('root@localhost','DELETED ENTRY'),('root@localhost','DELETED ENTRY'),('root@localhost','DELETED ENTRY'),('root@localhost','DELETED ENTRY'),('root@localhost','DELETED ENTRY'),('root@localhost','DELETED ENTRY'),('root@localhost','DELETED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','UPDATED ENTRY'),('root@localhost','UPDATED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','UPDATED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','UPDATED ENTRY');
/*!40000 ALTER TABLE `prenda_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitante`
--

DROP TABLE IF EXISTS `solicitante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solicitante` (
  `id_solicitante` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int DEFAULT NULL,
  PRIMARY KEY (`id_solicitante`),
  KEY `solicitante_usuario_idx` (`id_usuario`),
  CONSTRAINT `solicitante_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitante`
--

LOCK TABLES `solicitante` WRITE;
/*!40000 ALTER TABLE `solicitante` DISABLE KEYS */;
/*!40000 ALTER TABLE `solicitante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `nom_usuario` varchar(20) NOT NULL,
  `contrasena` varchar(50) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`),
  KEY `index_id_nombre` (`id_usuario`,`nom_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (3,'asdfasdf','f9cc9633722439fe1eb542ce08208b403c84386d','1234567890','dsfsdff','sdfasdfsfd',NULL),(5,'','da39a3ee5e6b4b0d3255bfef95601890afd80709','','','',NULL),(6,'asdasdasd','00ea1da4192a2030f9ae023de3b3143ed647bbab','213123','`12`12','asdasd',NULL),(7,'ivan terrible','7e329e20abf37b8c28b9df5e367aaad234a3f43f','6146666666','pepe_valedor','calle pelicano numero 10',NULL),(8,'ivan terrible','e43ae9ac93ed9965464abf23f4e9ad722d31097e','6146666666','calle pelicano numero 10','ivan_fortnite@selena.com',NULL),(9,'asdfasdf','f9cc9633722439fe1eb542ce08208b403c84386d','1234567890','dsfsdff','sdfasdfsfd',NULL),(10,'obedsito bebe','4482f9df65598314be2235041df882c7231d1ea9','1234567890','ay no se donde vivo','oli@jotmail.com',NULL),(11,'','da39a3ee5e6b4b0d3255bfef95601890afd80709','','','',NULL),(12,'obed','8cb2237d0679ca88db6464eac60da96345513964','1234567890','askfjfh 12','ofranco@gmail.com',NULL),(13,'test','a94a8fe5ccb19ba61c4c0873d391e987982fbbd3','1234567890','test','test',NULL),(14,'test','a94a8fe5ccb19ba61c4c0873d391e987982fbbd3','1234567890','test','test',NULL),(15,'test','a94a8fe5ccb19ba61c4c0873d391e987982fbbd3','1234567890','test','test',NULL),(16,'test','a94a8fe5ccb19ba61c4c0873d391e987982fbbd3','1234567890','test','test',NULL),(17,'ivan','a15f8b81a160b4eebe5c84e9e3b65c87b9b2f18e','1234567890','alamedas 69','ivan@hotmail.es',NULL),(18,'profe barroso','a94a8fe5ccb19ba61c4c0873d391e987982fbbd3','1234567890','alamedas','pbarroso@gmail.com',NULL),(20,'hey','7f550a9f4c44173a37664d938f1355f0f92a47a7','123 1s st','123456789','franco@gmail.com',NULL),(21,'hola','5956a2b28d94d410706abe8c24e341ac947d4cb1','1234567890','123 1st st','hola','kikojojo.jpg'),(22,'zuriel','a94a8fe5ccb19ba61c4c0873d391e987982fbbd3','123456789','123 1st st','123@gmail.com',NULL),(23,'obed','a94a8fe5ccb19ba61c4c0873d391e987982fbbd3','1234567890','test','test@test.com',NULL),(24,'isaac','dc76e9f0c0006e8f919e0c515c66dbba3982f785','1234567890','planeta tierra','ipena@gmail.com',NULL),(25,'giorno giovana','798a5bf5095b8e687bbc01d8a448b0dc0a1e9e82','6144083165','kakyoin st, florencia, IT','giogio@jpose.com','kikojojo.jpg');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trgr_insert_on_usuario` AFTER INSERT ON `usuario` FOR EACH ROW BEGIN INSERT INTO usuario_log VALUES(user(), "INSERTED ENTRY"); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trgr_updt_on_usuario` AFTER UPDATE ON `usuario` FOR EACH ROW BEGIN INSERT INTO usuario_log VALUES(user(), "UPDATED ENTRY"); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trgr_delete_on_usuario` AFTER DELETE ON `usuario` FOR EACH ROW BEGIN INSERT INTO usuario_log VALUES(user(), "DELETED ENTRY"); END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `usuario_log`
--

DROP TABLE IF EXISTS `usuario_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario_log` (
  `user` varchar(100) DEFAULT NULL,
  `action` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_log`
--

LOCK TABLES `usuario_log` WRITE;
/*!40000 ALTER TABLE `usuario_log` DISABLE KEYS */;
INSERT INTO `usuario_log` VALUES ('root@localhost','INSERTED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','DELETED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','DELETED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','INSERTED ENTRY'),('root@localhost','UPDATED ENTRY'),('root@localhost','UPDATED ENTRY'),('root@localhost','UPDATED ENTRY');
/*!40000 ALTER TABLE `usuario_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `v_h_abrigo`
--

DROP TABLE IF EXISTS `v_h_abrigo`;
/*!50001 DROP VIEW IF EXISTS `v_h_abrigo`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_h_abrigo` AS SELECT 
 1 AS `id`,
 1 AS `tipo`,
 1 AS `imagen`,
 1 AS `descripcion`,
 1 AS `estado`,
 1 AS `talla`,
 1 AS `genero`,
 1 AS `fecha`,
 1 AS `id_usuario`,
 1 AS `titulo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_h_camisa`
--

DROP TABLE IF EXISTS `v_h_camisa`;
/*!50001 DROP VIEW IF EXISTS `v_h_camisa`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_h_camisa` AS SELECT 
 1 AS `id`,
 1 AS `tipo`,
 1 AS `imagen`,
 1 AS `descripcion`,
 1 AS `estado`,
 1 AS `talla`,
 1 AS `genero`,
 1 AS `fecha`,
 1 AS `id_usuario`,
 1 AS `titulo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_h_pantalon`
--

DROP TABLE IF EXISTS `v_h_pantalon`;
/*!50001 DROP VIEW IF EXISTS `v_h_pantalon`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_h_pantalon` AS SELECT 
 1 AS `id`,
 1 AS `tipo`,
 1 AS `imagen`,
 1 AS `descripcion`,
 1 AS `estado`,
 1 AS `talla`,
 1 AS `genero`,
 1 AS `fecha`,
 1 AS `id_usuario`,
 1 AS `titulo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_h_pantalonera`
--

DROP TABLE IF EXISTS `v_h_pantalonera`;
/*!50001 DROP VIEW IF EXISTS `v_h_pantalonera`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_h_pantalonera` AS SELECT 
 1 AS `id`,
 1 AS `tipo`,
 1 AS `imagen`,
 1 AS `descripcion`,
 1 AS `estado`,
 1 AS `talla`,
 1 AS `genero`,
 1 AS `fecha`,
 1 AS `id_usuario`,
 1 AS `titulo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_h_playera`
--

DROP TABLE IF EXISTS `v_h_playera`;
/*!50001 DROP VIEW IF EXISTS `v_h_playera`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_h_playera` AS SELECT 
 1 AS `id`,
 1 AS `tipo`,
 1 AS `imagen`,
 1 AS `descripcion`,
 1 AS `estado`,
 1 AS `talla`,
 1 AS `genero`,
 1 AS `fecha`,
 1 AS `id_usuario`,
 1 AS `titulo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_h_tenis`
--

DROP TABLE IF EXISTS `v_h_tenis`;
/*!50001 DROP VIEW IF EXISTS `v_h_tenis`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_h_tenis` AS SELECT 
 1 AS `id`,
 1 AS `tipo`,
 1 AS `imagen`,
 1 AS `descripcion`,
 1 AS `estado`,
 1 AS `talla`,
 1 AS `genero`,
 1 AS `fecha`,
 1 AS `id_usuario`,
 1 AS `titulo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_h_uniforme`
--

DROP TABLE IF EXISTS `v_h_uniforme`;
/*!50001 DROP VIEW IF EXISTS `v_h_uniforme`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_h_uniforme` AS SELECT 
 1 AS `id`,
 1 AS `tipo`,
 1 AS `imagen`,
 1 AS `descripcion`,
 1 AS `estado`,
 1 AS `talla`,
 1 AS `genero`,
 1 AS `fecha`,
 1 AS `id_usuario`,
 1 AS `titulo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_h_zapatos`
--

DROP TABLE IF EXISTS `v_h_zapatos`;
/*!50001 DROP VIEW IF EXISTS `v_h_zapatos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_h_zapatos` AS SELECT 
 1 AS `id`,
 1 AS `tipo`,
 1 AS `imagen`,
 1 AS `descripcion`,
 1 AS `estado`,
 1 AS `talla`,
 1 AS `genero`,
 1 AS `fecha`,
 1 AS `id_usuario`,
 1 AS `titulo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_m_abrigo`
--

DROP TABLE IF EXISTS `v_m_abrigo`;
/*!50001 DROP VIEW IF EXISTS `v_m_abrigo`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_m_abrigo` AS SELECT 
 1 AS `id`,
 1 AS `tipo`,
 1 AS `imagen`,
 1 AS `descripcion`,
 1 AS `estado`,
 1 AS `talla`,
 1 AS `genero`,
 1 AS `fecha`,
 1 AS `id_usuario`,
 1 AS `titulo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_m_camisa`
--

DROP TABLE IF EXISTS `v_m_camisa`;
/*!50001 DROP VIEW IF EXISTS `v_m_camisa`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_m_camisa` AS SELECT 
 1 AS `id`,
 1 AS `tipo`,
 1 AS `imagen`,
 1 AS `descripcion`,
 1 AS `estado`,
 1 AS `talla`,
 1 AS `genero`,
 1 AS `fecha`,
 1 AS `id_usuario`,
 1 AS `titulo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_m_pantalon`
--

DROP TABLE IF EXISTS `v_m_pantalon`;
/*!50001 DROP VIEW IF EXISTS `v_m_pantalon`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_m_pantalon` AS SELECT 
 1 AS `id`,
 1 AS `tipo`,
 1 AS `imagen`,
 1 AS `descripcion`,
 1 AS `estado`,
 1 AS `talla`,
 1 AS `genero`,
 1 AS `fecha`,
 1 AS `id_usuario`,
 1 AS `titulo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_m_pantalonera`
--

DROP TABLE IF EXISTS `v_m_pantalonera`;
/*!50001 DROP VIEW IF EXISTS `v_m_pantalonera`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_m_pantalonera` AS SELECT 
 1 AS `id`,
 1 AS `tipo`,
 1 AS `imagen`,
 1 AS `descripcion`,
 1 AS `estado`,
 1 AS `talla`,
 1 AS `genero`,
 1 AS `fecha`,
 1 AS `id_usuario`,
 1 AS `titulo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_m_playera`
--

DROP TABLE IF EXISTS `v_m_playera`;
/*!50001 DROP VIEW IF EXISTS `v_m_playera`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_m_playera` AS SELECT 
 1 AS `id`,
 1 AS `tipo`,
 1 AS `imagen`,
 1 AS `descripcion`,
 1 AS `estado`,
 1 AS `talla`,
 1 AS `genero`,
 1 AS `fecha`,
 1 AS `id_usuario`,
 1 AS `titulo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_m_tenis`
--

DROP TABLE IF EXISTS `v_m_tenis`;
/*!50001 DROP VIEW IF EXISTS `v_m_tenis`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_m_tenis` AS SELECT 
 1 AS `id`,
 1 AS `tipo`,
 1 AS `imagen`,
 1 AS `descripcion`,
 1 AS `estado`,
 1 AS `talla`,
 1 AS `genero`,
 1 AS `fecha`,
 1 AS `id_usuario`,
 1 AS `titulo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_m_uniforme`
--

DROP TABLE IF EXISTS `v_m_uniforme`;
/*!50001 DROP VIEW IF EXISTS `v_m_uniforme`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_m_uniforme` AS SELECT 
 1 AS `id`,
 1 AS `tipo`,
 1 AS `imagen`,
 1 AS `descripcion`,
 1 AS `estado`,
 1 AS `talla`,
 1 AS `genero`,
 1 AS `fecha`,
 1 AS `id_usuario`,
 1 AS `titulo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_m_zapatos`
--

DROP TABLE IF EXISTS `v_m_zapatos`;
/*!50001 DROP VIEW IF EXISTS `v_m_zapatos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_m_zapatos` AS SELECT 
 1 AS `id`,
 1 AS `tipo`,
 1 AS `imagen`,
 1 AS `descripcion`,
 1 AS `estado`,
 1 AS `talla`,
 1 AS `genero`,
 1 AS `fecha`,
 1 AS `id_usuario`,
 1 AS `titulo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_n_abrigo`
--

DROP TABLE IF EXISTS `v_n_abrigo`;
/*!50001 DROP VIEW IF EXISTS `v_n_abrigo`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_n_abrigo` AS SELECT 
 1 AS `id`,
 1 AS `tipo`,
 1 AS `imagen`,
 1 AS `descripcion`,
 1 AS `estado`,
 1 AS `talla`,
 1 AS `genero`,
 1 AS `fecha`,
 1 AS `id_usuario`,
 1 AS `titulo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_n_camisa`
--

DROP TABLE IF EXISTS `v_n_camisa`;
/*!50001 DROP VIEW IF EXISTS `v_n_camisa`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_n_camisa` AS SELECT 
 1 AS `id`,
 1 AS `tipo`,
 1 AS `imagen`,
 1 AS `descripcion`,
 1 AS `estado`,
 1 AS `talla`,
 1 AS `genero`,
 1 AS `fecha`,
 1 AS `id_usuario`,
 1 AS `titulo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_n_pantalon`
--

DROP TABLE IF EXISTS `v_n_pantalon`;
/*!50001 DROP VIEW IF EXISTS `v_n_pantalon`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_n_pantalon` AS SELECT 
 1 AS `id`,
 1 AS `tipo`,
 1 AS `imagen`,
 1 AS `descripcion`,
 1 AS `estado`,
 1 AS `talla`,
 1 AS `genero`,
 1 AS `fecha`,
 1 AS `id_usuario`,
 1 AS `titulo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_n_pantalonera`
--

DROP TABLE IF EXISTS `v_n_pantalonera`;
/*!50001 DROP VIEW IF EXISTS `v_n_pantalonera`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_n_pantalonera` AS SELECT 
 1 AS `id`,
 1 AS `tipo`,
 1 AS `imagen`,
 1 AS `descripcion`,
 1 AS `estado`,
 1 AS `talla`,
 1 AS `genero`,
 1 AS `fecha`,
 1 AS `id_usuario`,
 1 AS `titulo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_n_playera`
--

DROP TABLE IF EXISTS `v_n_playera`;
/*!50001 DROP VIEW IF EXISTS `v_n_playera`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_n_playera` AS SELECT 
 1 AS `id`,
 1 AS `tipo`,
 1 AS `imagen`,
 1 AS `descripcion`,
 1 AS `estado`,
 1 AS `talla`,
 1 AS `genero`,
 1 AS `fecha`,
 1 AS `id_usuario`,
 1 AS `titulo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_n_tenis`
--

DROP TABLE IF EXISTS `v_n_tenis`;
/*!50001 DROP VIEW IF EXISTS `v_n_tenis`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_n_tenis` AS SELECT 
 1 AS `id`,
 1 AS `tipo`,
 1 AS `imagen`,
 1 AS `descripcion`,
 1 AS `estado`,
 1 AS `talla`,
 1 AS `genero`,
 1 AS `fecha`,
 1 AS `id_usuario`,
 1 AS `titulo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_n_uniforme`
--

DROP TABLE IF EXISTS `v_n_uniforme`;
/*!50001 DROP VIEW IF EXISTS `v_n_uniforme`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_n_uniforme` AS SELECT 
 1 AS `id`,
 1 AS `tipo`,
 1 AS `imagen`,
 1 AS `descripcion`,
 1 AS `estado`,
 1 AS `talla`,
 1 AS `genero`,
 1 AS `fecha`,
 1 AS `id_usuario`,
 1 AS `titulo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_n_zapatos`
--

DROP TABLE IF EXISTS `v_n_zapatos`;
/*!50001 DROP VIEW IF EXISTS `v_n_zapatos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_n_zapatos` AS SELECT 
 1 AS `id`,
 1 AS `tipo`,
 1 AS `imagen`,
 1 AS `descripcion`,
 1 AS `estado`,
 1 AS `talla`,
 1 AS `genero`,
 1 AS `fecha`,
 1 AS `id_usuario`,
 1 AS `titulo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_profile`
--

DROP TABLE IF EXISTS `v_profile`;
/*!50001 DROP VIEW IF EXISTS `v_profile`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_profile` AS SELECT 
 1 AS `nom_usuario`,
 1 AS `telefono`,
 1 AS `direccion`,
 1 AS `correo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_recent_posts`
--

DROP TABLE IF EXISTS `v_recent_posts`;
/*!50001 DROP VIEW IF EXISTS `v_recent_posts`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_recent_posts` AS SELECT 
 1 AS `titulo`,
 1 AS `descripcion`,
 1 AS `fecha`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_show_post_pic`
--

DROP TABLE IF EXISTS `v_show_post_pic`;
/*!50001 DROP VIEW IF EXISTS `v_show_post_pic`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_show_post_pic` AS SELECT 
 1 AS `imagen`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'eshaku'
--
/*!50003 DROP PROCEDURE IF EXISTS `sp_delete_post` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_delete_post`(id_post INT)
BEGIN  DELETE FROM post WHERE id = id_post; END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_register_user` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_register_user`(IN user_name varchar(64), IN passwd varchar(64), IN address varchar(100), IN ph_number varchar(10), IN email varchar(100))
BEGIN INSERT INTO usuario (nom_usuario, contrasena, direccion, telefono, correo) VALUES(user_name, sha(passwd), address, ph_number, email); END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_search` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_search`(keyword VARCHAR(255))
BEGIN

SELECT tipo, imagen, descripcion, titulo FROM prenda WHERE titulo LIKE keyword OR descripcion LIKE keyword;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_update_ph_number` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_update_ph_number`(sp_id int, sp_ph_number varchar(10))
BEGIN UPDATE usuario SET telefono = sp_ph_number WHERE id = sp_id; END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_user_info` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_user_info`(IN id INT, OUT nombre VARCHAR(255), OUT tel_num VARCHAR(10), direc VARCHAR(100), OUT email VARCHAR(50), OUT pic VARCHAR(255))
BEGIN
			SET nombre = (SELECT nom_usuario FROM usuario WHERE id_usuario = id);
            SET tel_num = (SELECT telefono FROM usuario WHERE id_usuario = id);
            SET direc = (SELECT direccion FROM usuario WHERE id_usuario = id);
            SET email = (SELECT correo FROM usuario WHERE id_usuario = id);
            SET pic = (SELECT foto FROM usuario WHERE id_usuario = id);
		END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_user_login` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_user_login`(p_email VARCHAR(64), p_passwd VARCHAR(64))
BEGIN SELECT * FROM usuario WHERE p_email = usuario.correo AND sha(p_passwd) = usuario.contrasena; END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `v_h_abrigo`
--

/*!50001 DROP VIEW IF EXISTS `v_h_abrigo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_h_abrigo` AS select `prenda`.`id` AS `id`,`prenda`.`tipo` AS `tipo`,`prenda`.`imagen` AS `imagen`,`prenda`.`descripcion` AS `descripcion`,`prenda`.`estado` AS `estado`,`prenda`.`talla` AS `talla`,`prenda`.`genero` AS `genero`,`prenda`.`fecha` AS `fecha`,`prenda`.`id_usuario` AS `id_usuario`,`prenda`.`titulo` AS `titulo` from `prenda` where ((`prenda`.`genero` = 'hombre') and (`prenda`.`tipo` = 'abrigo')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_h_camisa`
--

/*!50001 DROP VIEW IF EXISTS `v_h_camisa`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_h_camisa` AS select `prenda`.`id` AS `id`,`prenda`.`tipo` AS `tipo`,`prenda`.`imagen` AS `imagen`,`prenda`.`descripcion` AS `descripcion`,`prenda`.`estado` AS `estado`,`prenda`.`talla` AS `talla`,`prenda`.`genero` AS `genero`,`prenda`.`fecha` AS `fecha`,`prenda`.`id_usuario` AS `id_usuario`,`prenda`.`titulo` AS `titulo` from `prenda` where ((`prenda`.`genero` = 'Hombre') and (`prenda`.`tipo` = 'camisa')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_h_pantalon`
--

/*!50001 DROP VIEW IF EXISTS `v_h_pantalon`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_h_pantalon` AS select `prenda`.`id` AS `id`,`prenda`.`tipo` AS `tipo`,`prenda`.`imagen` AS `imagen`,`prenda`.`descripcion` AS `descripcion`,`prenda`.`estado` AS `estado`,`prenda`.`talla` AS `talla`,`prenda`.`genero` AS `genero`,`prenda`.`fecha` AS `fecha`,`prenda`.`id_usuario` AS `id_usuario`,`prenda`.`titulo` AS `titulo` from `prenda` where ((`prenda`.`genero` = 'hombre') and (`prenda`.`tipo` = 'pantalon')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_h_pantalonera`
--

/*!50001 DROP VIEW IF EXISTS `v_h_pantalonera`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_h_pantalonera` AS select `prenda`.`id` AS `id`,`prenda`.`tipo` AS `tipo`,`prenda`.`imagen` AS `imagen`,`prenda`.`descripcion` AS `descripcion`,`prenda`.`estado` AS `estado`,`prenda`.`talla` AS `talla`,`prenda`.`genero` AS `genero`,`prenda`.`fecha` AS `fecha`,`prenda`.`id_usuario` AS `id_usuario`,`prenda`.`titulo` AS `titulo` from `prenda` where ((`prenda`.`genero` = 'hombre') and (`prenda`.`tipo` = 'pantalonera')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_h_playera`
--

/*!50001 DROP VIEW IF EXISTS `v_h_playera`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_h_playera` AS select `prenda`.`id` AS `id`,`prenda`.`tipo` AS `tipo`,`prenda`.`imagen` AS `imagen`,`prenda`.`descripcion` AS `descripcion`,`prenda`.`estado` AS `estado`,`prenda`.`talla` AS `talla`,`prenda`.`genero` AS `genero`,`prenda`.`fecha` AS `fecha`,`prenda`.`id_usuario` AS `id_usuario`,`prenda`.`titulo` AS `titulo` from `prenda` where ((`prenda`.`genero` = 'Hombre') and (`prenda`.`tipo` = 'Playera')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_h_tenis`
--

/*!50001 DROP VIEW IF EXISTS `v_h_tenis`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_h_tenis` AS select `prenda`.`id` AS `id`,`prenda`.`tipo` AS `tipo`,`prenda`.`imagen` AS `imagen`,`prenda`.`descripcion` AS `descripcion`,`prenda`.`estado` AS `estado`,`prenda`.`talla` AS `talla`,`prenda`.`genero` AS `genero`,`prenda`.`fecha` AS `fecha`,`prenda`.`id_usuario` AS `id_usuario`,`prenda`.`titulo` AS `titulo` from `prenda` where ((`prenda`.`genero` = 'hombre') and (`prenda`.`tipo` = 'tenis')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_h_uniforme`
--

/*!50001 DROP VIEW IF EXISTS `v_h_uniforme`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_h_uniforme` AS select `prenda`.`id` AS `id`,`prenda`.`tipo` AS `tipo`,`prenda`.`imagen` AS `imagen`,`prenda`.`descripcion` AS `descripcion`,`prenda`.`estado` AS `estado`,`prenda`.`talla` AS `talla`,`prenda`.`genero` AS `genero`,`prenda`.`fecha` AS `fecha`,`prenda`.`id_usuario` AS `id_usuario`,`prenda`.`titulo` AS `titulo` from `prenda` where ((`prenda`.`genero` = 'Hombre') and (`prenda`.`tipo` = 'uniforme')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_h_zapatos`
--

/*!50001 DROP VIEW IF EXISTS `v_h_zapatos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_h_zapatos` AS select `prenda`.`id` AS `id`,`prenda`.`tipo` AS `tipo`,`prenda`.`imagen` AS `imagen`,`prenda`.`descripcion` AS `descripcion`,`prenda`.`estado` AS `estado`,`prenda`.`talla` AS `talla`,`prenda`.`genero` AS `genero`,`prenda`.`fecha` AS `fecha`,`prenda`.`id_usuario` AS `id_usuario`,`prenda`.`titulo` AS `titulo` from `prenda` where ((`prenda`.`genero` = 'hombre') and (`prenda`.`tipo` = 'zapatos')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_m_abrigo`
--

/*!50001 DROP VIEW IF EXISTS `v_m_abrigo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_m_abrigo` AS select `prenda`.`id` AS `id`,`prenda`.`tipo` AS `tipo`,`prenda`.`imagen` AS `imagen`,`prenda`.`descripcion` AS `descripcion`,`prenda`.`estado` AS `estado`,`prenda`.`talla` AS `talla`,`prenda`.`genero` AS `genero`,`prenda`.`fecha` AS `fecha`,`prenda`.`id_usuario` AS `id_usuario`,`prenda`.`titulo` AS `titulo` from `prenda` where ((`prenda`.`genero` = 'mujer') and (`prenda`.`tipo` = 'abrigo')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_m_camisa`
--

/*!50001 DROP VIEW IF EXISTS `v_m_camisa`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_m_camisa` AS select `prenda`.`id` AS `id`,`prenda`.`tipo` AS `tipo`,`prenda`.`imagen` AS `imagen`,`prenda`.`descripcion` AS `descripcion`,`prenda`.`estado` AS `estado`,`prenda`.`talla` AS `talla`,`prenda`.`genero` AS `genero`,`prenda`.`fecha` AS `fecha`,`prenda`.`id_usuario` AS `id_usuario`,`prenda`.`titulo` AS `titulo` from `prenda` where ((`prenda`.`genero` = 'mujer') and (`prenda`.`tipo` = 'camisa')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_m_pantalon`
--

/*!50001 DROP VIEW IF EXISTS `v_m_pantalon`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_m_pantalon` AS select `prenda`.`id` AS `id`,`prenda`.`tipo` AS `tipo`,`prenda`.`imagen` AS `imagen`,`prenda`.`descripcion` AS `descripcion`,`prenda`.`estado` AS `estado`,`prenda`.`talla` AS `talla`,`prenda`.`genero` AS `genero`,`prenda`.`fecha` AS `fecha`,`prenda`.`id_usuario` AS `id_usuario`,`prenda`.`titulo` AS `titulo` from `prenda` where ((`prenda`.`genero` = 'mujer') and (`prenda`.`tipo` = 'pantalon')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_m_pantalonera`
--

/*!50001 DROP VIEW IF EXISTS `v_m_pantalonera`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_m_pantalonera` AS select `prenda`.`id` AS `id`,`prenda`.`tipo` AS `tipo`,`prenda`.`imagen` AS `imagen`,`prenda`.`descripcion` AS `descripcion`,`prenda`.`estado` AS `estado`,`prenda`.`talla` AS `talla`,`prenda`.`genero` AS `genero`,`prenda`.`fecha` AS `fecha`,`prenda`.`id_usuario` AS `id_usuario`,`prenda`.`titulo` AS `titulo` from `prenda` where ((`prenda`.`genero` = 'mujer') and (`prenda`.`tipo` = 'pantalonera')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_m_playera`
--

/*!50001 DROP VIEW IF EXISTS `v_m_playera`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_m_playera` AS select `prenda`.`id` AS `id`,`prenda`.`tipo` AS `tipo`,`prenda`.`imagen` AS `imagen`,`prenda`.`descripcion` AS `descripcion`,`prenda`.`estado` AS `estado`,`prenda`.`talla` AS `talla`,`prenda`.`genero` AS `genero`,`prenda`.`fecha` AS `fecha`,`prenda`.`id_usuario` AS `id_usuario`,`prenda`.`titulo` AS `titulo` from `prenda` where ((`prenda`.`genero` = 'Mujer') and (`prenda`.`tipo` = 'playera')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_m_tenis`
--

/*!50001 DROP VIEW IF EXISTS `v_m_tenis`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_m_tenis` AS select `prenda`.`id` AS `id`,`prenda`.`tipo` AS `tipo`,`prenda`.`imagen` AS `imagen`,`prenda`.`descripcion` AS `descripcion`,`prenda`.`estado` AS `estado`,`prenda`.`talla` AS `talla`,`prenda`.`genero` AS `genero`,`prenda`.`fecha` AS `fecha`,`prenda`.`id_usuario` AS `id_usuario`,`prenda`.`titulo` AS `titulo` from `prenda` where ((`prenda`.`genero` = 'mujer') and (`prenda`.`tipo` = 'tenis')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_m_uniforme`
--

/*!50001 DROP VIEW IF EXISTS `v_m_uniforme`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_m_uniforme` AS select `prenda`.`id` AS `id`,`prenda`.`tipo` AS `tipo`,`prenda`.`imagen` AS `imagen`,`prenda`.`descripcion` AS `descripcion`,`prenda`.`estado` AS `estado`,`prenda`.`talla` AS `talla`,`prenda`.`genero` AS `genero`,`prenda`.`fecha` AS `fecha`,`prenda`.`id_usuario` AS `id_usuario`,`prenda`.`titulo` AS `titulo` from `prenda` where ((`prenda`.`genero` = 'mujer') and (`prenda`.`tipo` = 'uniforme')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_m_zapatos`
--

/*!50001 DROP VIEW IF EXISTS `v_m_zapatos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_m_zapatos` AS select `prenda`.`id` AS `id`,`prenda`.`tipo` AS `tipo`,`prenda`.`imagen` AS `imagen`,`prenda`.`descripcion` AS `descripcion`,`prenda`.`estado` AS `estado`,`prenda`.`talla` AS `talla`,`prenda`.`genero` AS `genero`,`prenda`.`fecha` AS `fecha`,`prenda`.`id_usuario` AS `id_usuario`,`prenda`.`titulo` AS `titulo` from `prenda` where ((`prenda`.`genero` = 'mujer') and (`prenda`.`tipo` = 'zapatos')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_n_abrigo`
--

/*!50001 DROP VIEW IF EXISTS `v_n_abrigo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_n_abrigo` AS select `prenda`.`id` AS `id`,`prenda`.`tipo` AS `tipo`,`prenda`.`imagen` AS `imagen`,`prenda`.`descripcion` AS `descripcion`,`prenda`.`estado` AS `estado`,`prenda`.`talla` AS `talla`,`prenda`.`genero` AS `genero`,`prenda`.`fecha` AS `fecha`,`prenda`.`id_usuario` AS `id_usuario`,`prenda`.`titulo` AS `titulo` from `prenda` where ((`prenda`.`genero` = 'ninoos') and (`prenda`.`tipo` = 'abrigo')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_n_camisa`
--

/*!50001 DROP VIEW IF EXISTS `v_n_camisa`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_n_camisa` AS select `prenda`.`id` AS `id`,`prenda`.`tipo` AS `tipo`,`prenda`.`imagen` AS `imagen`,`prenda`.`descripcion` AS `descripcion`,`prenda`.`estado` AS `estado`,`prenda`.`talla` AS `talla`,`prenda`.`genero` AS `genero`,`prenda`.`fecha` AS `fecha`,`prenda`.`id_usuario` AS `id_usuario`,`prenda`.`titulo` AS `titulo` from `prenda` where ((`prenda`.`genero` = 'ninos') and (`prenda`.`tipo` = 'camisa')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_n_pantalon`
--

/*!50001 DROP VIEW IF EXISTS `v_n_pantalon`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_n_pantalon` AS select `prenda`.`id` AS `id`,`prenda`.`tipo` AS `tipo`,`prenda`.`imagen` AS `imagen`,`prenda`.`descripcion` AS `descripcion`,`prenda`.`estado` AS `estado`,`prenda`.`talla` AS `talla`,`prenda`.`genero` AS `genero`,`prenda`.`fecha` AS `fecha`,`prenda`.`id_usuario` AS `id_usuario`,`prenda`.`titulo` AS `titulo` from `prenda` where ((`prenda`.`genero` = 'ninos') and (`prenda`.`tipo` = 'pantalon')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_n_pantalonera`
--

/*!50001 DROP VIEW IF EXISTS `v_n_pantalonera`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_n_pantalonera` AS select `prenda`.`id` AS `id`,`prenda`.`tipo` AS `tipo`,`prenda`.`imagen` AS `imagen`,`prenda`.`descripcion` AS `descripcion`,`prenda`.`estado` AS `estado`,`prenda`.`talla` AS `talla`,`prenda`.`genero` AS `genero`,`prenda`.`fecha` AS `fecha`,`prenda`.`id_usuario` AS `id_usuario`,`prenda`.`titulo` AS `titulo` from `prenda` where ((`prenda`.`genero` = 'ninos') and (`prenda`.`tipo` = 'pantalonera')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_n_playera`
--

/*!50001 DROP VIEW IF EXISTS `v_n_playera`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_n_playera` AS select `prenda`.`id` AS `id`,`prenda`.`tipo` AS `tipo`,`prenda`.`imagen` AS `imagen`,`prenda`.`descripcion` AS `descripcion`,`prenda`.`estado` AS `estado`,`prenda`.`talla` AS `talla`,`prenda`.`genero` AS `genero`,`prenda`.`fecha` AS `fecha`,`prenda`.`id_usuario` AS `id_usuario`,`prenda`.`titulo` AS `titulo` from `prenda` where ((`prenda`.`genero` = 'ninos') and (`prenda`.`tipo` = 'playera')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_n_tenis`
--

/*!50001 DROP VIEW IF EXISTS `v_n_tenis`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_n_tenis` AS select `prenda`.`id` AS `id`,`prenda`.`tipo` AS `tipo`,`prenda`.`imagen` AS `imagen`,`prenda`.`descripcion` AS `descripcion`,`prenda`.`estado` AS `estado`,`prenda`.`talla` AS `talla`,`prenda`.`genero` AS `genero`,`prenda`.`fecha` AS `fecha`,`prenda`.`id_usuario` AS `id_usuario`,`prenda`.`titulo` AS `titulo` from `prenda` where ((`prenda`.`genero` = 'ninos') and (`prenda`.`tipo` = 'tenis')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_n_uniforme`
--

/*!50001 DROP VIEW IF EXISTS `v_n_uniforme`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_n_uniforme` AS select `prenda`.`id` AS `id`,`prenda`.`tipo` AS `tipo`,`prenda`.`imagen` AS `imagen`,`prenda`.`descripcion` AS `descripcion`,`prenda`.`estado` AS `estado`,`prenda`.`talla` AS `talla`,`prenda`.`genero` AS `genero`,`prenda`.`fecha` AS `fecha`,`prenda`.`id_usuario` AS `id_usuario`,`prenda`.`titulo` AS `titulo` from `prenda` where ((`prenda`.`genero` = 'ninos') and (`prenda`.`tipo` = 'uniforme')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_n_zapatos`
--

/*!50001 DROP VIEW IF EXISTS `v_n_zapatos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_n_zapatos` AS select `prenda`.`id` AS `id`,`prenda`.`tipo` AS `tipo`,`prenda`.`imagen` AS `imagen`,`prenda`.`descripcion` AS `descripcion`,`prenda`.`estado` AS `estado`,`prenda`.`talla` AS `talla`,`prenda`.`genero` AS `genero`,`prenda`.`fecha` AS `fecha`,`prenda`.`id_usuario` AS `id_usuario`,`prenda`.`titulo` AS `titulo` from `prenda` where ((`prenda`.`genero` = 'ninos') and (`prenda`.`tipo` = 'zapatos')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_profile`
--

/*!50001 DROP VIEW IF EXISTS `v_profile`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_profile` AS select `usuario`.`nom_usuario` AS `nom_usuario`,`usuario`.`telefono` AS `telefono`,`usuario`.`direccion` AS `direccion`,`usuario`.`correo` AS `correo` from `usuario` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_recent_posts`
--

/*!50001 DROP VIEW IF EXISTS `v_recent_posts`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_recent_posts` AS select `prenda`.`titulo` AS `titulo`,`prenda`.`descripcion` AS `descripcion`,`prenda`.`fecha` AS `fecha` from `prenda` order by `prenda`.`fecha` limit 3 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_show_post_pic`
--

/*!50001 DROP VIEW IF EXISTS `v_show_post_pic`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_show_post_pic` AS select `prenda`.`imagen` AS `imagen` from `prenda` order by `prenda`.`fecha` desc limit 3 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-23 16:01:39
