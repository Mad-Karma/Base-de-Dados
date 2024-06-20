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
-- Table structure for table `professor`
--

DROP TABLE IF EXISTS `professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(150) DEFAULT NULL,
  `numero_telefone` varchar(50) DEFAULT NULL,
  `nome` varchar(75) NOT NULL,
  `rua` varchar(100) DEFAULT NULL,
  `numero_porta` varchar(75) DEFAULT NULL,
  `localidade` varchar(75) DEFAULT NULL,
  `preco_aula` int NOT NULL,
  `Disciplina_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Professor_Disciplina1_idx` (`Disciplina_id`),
  CONSTRAINT `fk_Professor_Disciplina1` FOREIGN KEY (`Disciplina_id`) REFERENCES `disciplina` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor`
--

LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
INSERT INTO `professor` VALUES (1,'asilva@gmail.com','956784321','Ana Silva','Rua dos Barcos','nr 25','Covilhã',10,1),(2,'csantos@gamil.com','931234567','Carlos Santos','Rua do Automovel','nr 3','Covilhã',10,9),(3,'joliveira@gmail.com','986754321','João Oliveira','Praça da Liberdade','nr 80','Covilhã',10,2),(4,'mfernandes@gamil.com','954321087','Maria Fernandes','Rua da Serra','nr 30','Covilhã',10,3),(5,'jloureiro@gmail.com','934567890','Joana Loureiro','Avenida dos Artesãos','nr 11','Covilhã',10,8),(6,'palmeida@gmail.com','978563210','Pedro Almeida','Rua das Andorinhas','nr 5','Covilhã',10,6),(7,'msoares@gmail.com','960987654','Marta Soares','Rua dos Poestas','nr 7','Covilhã',10,4),(8,'dmiranda@gmail.com','934321098','Diogo Miranda','Praça da Alegria','nr 2','Covilhã',10,5),(9,'scerqueira@gmail.com','968765432','Sandra Cerqueira','Rua dos Castelos','nr 9','Covilhã',10,7),(10,'pmatos@gmail.com','915432109','Paulo Matos','Rua do Comércio','nr 3','Covilhã',10,10);
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-05 19:46:10
