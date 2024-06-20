CREATE DATABASE  IF NOT EXISTS `farol_do_saber` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `farol_do_saber`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: farol_do_saber
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `gera`
--

DROP TABLE IF EXISTS `gera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gera` (
  `Administrador_id_utilizador` int NOT NULL,
  `Pagamento_id` int NOT NULL,
  PRIMARY KEY (`Administrador_id_utilizador`,`Pagamento_id`),
  KEY `fk_Administrador_has_Pagamento_Pagamento1_idx` (`Pagamento_id`),
  KEY `fk_Administrador_has_Pagamento_Administrador1_idx` (`Administrador_id_utilizador`),
  CONSTRAINT `fk_Administrador_has_Pagamento_Administrador1` FOREIGN KEY (`Administrador_id_utilizador`) REFERENCES `administrador` (`id_utilizador`),
  CONSTRAINT `fk_Administrador_has_Pagamento_Pagamento1` FOREIGN KEY (`Pagamento_id`) REFERENCES `pagamento` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gera`
--

LOCK TABLES `gera` WRITE;
/*!40000 ALTER TABLE `gera` DISABLE KEYS */;
INSERT INTO `gera` VALUES (1,1),(2,2),(1,3),(1,4),(1,5),(1,6),(2,7),(2,8),(2,9),(1,10),(1,11),(1,12),(2,13),(2,14),(1,15),(2,16),(1,17),(2,18),(2,19),(2,20),(1,21),(2,22),(1,23),(2,24),(1,25),(2,26),(2,27),(1,28),(1,29),(2,30);
/*!40000 ALTER TABLE `gera` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-05 19:46:11
