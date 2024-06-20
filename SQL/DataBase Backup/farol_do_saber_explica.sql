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
-- Table structure for table `explica`
--

DROP TABLE IF EXISTS `explica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `explica` (
  `Professor_id` int NOT NULL,
  `Aluno_id` int NOT NULL,
  PRIMARY KEY (`Professor_id`,`Aluno_id`),
  KEY `fk_Professor_has_Aluno_Aluno1_idx` (`Aluno_id`),
  KEY `fk_Professor_has_Aluno_Professor1_idx` (`Professor_id`),
  CONSTRAINT `fk_Professor_has_Aluno_Aluno1` FOREIGN KEY (`Aluno_id`) REFERENCES `aluno` (`id`),
  CONSTRAINT `fk_Professor_has_Aluno_Professor1` FOREIGN KEY (`Professor_id`) REFERENCES `professor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `explica`
--

LOCK TABLES `explica` WRITE;
/*!40000 ALTER TABLE `explica` DISABLE KEYS */;
INSERT INTO `explica` VALUES (1,1),(6,1),(3,2),(5,2),(9,2),(7,3),(8,3),(1,4),(2,4),(6,4),(5,5),(9,5),(3,6),(10,6),(2,7),(6,7),(7,8),(8,8),(1,9),(2,9),(6,9),(3,10),(5,11),(7,11),(9,11),(6,12),(2,13),(4,13),(8,14),(7,15),(10,15),(2,16),(4,16),(6,16),(7,17),(8,17),(9,18),(5,19),(9,19),(3,20),(4,20),(2,21),(8,21),(6,22),(3,23),(5,24),(7,24),(9,24),(4,25),(1,26),(7,27),(10,28),(6,29),(7,30);
/*!40000 ALTER TABLE `explica` ENABLE KEYS */;
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
