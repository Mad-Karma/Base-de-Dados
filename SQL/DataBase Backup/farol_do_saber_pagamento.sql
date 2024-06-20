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
-- Table structure for table `pagamento`
--

DROP TABLE IF EXISTS `pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagamento` (
  `id` int NOT NULL AUTO_INCREMENT,
  `estado_pagamento` varchar(45) NOT NULL,
  `valor` int NOT NULL,
  `fatura` varchar(220) DEFAULT NULL,
  `data_pagamento` date DEFAULT NULL,
  `metodo_pagamento` varchar(45) DEFAULT NULL,
  `Aluno_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Pagamento_Aluno1_idx` (`Aluno_id`),
  CONSTRAINT `fk_Pagamento_Aluno1` FOREIGN KEY (`Aluno_id`) REFERENCES `aluno` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagamento`
--

LOCK TABLES `pagamento` WRITE;
/*!40000 ALTER TABLE `pagamento` DISABLE KEYS */;
INSERT INTO `pagamento` VALUES (1,'Sim',80,'Sim','2021-12-02','Dinheiro',1),(2,'Sim',110,'Sim','2021-12-03','Transferencia',2),(3,'Sim',80,'Nao','2021-12-04','Transferencia',3),(4,'Sim',80,'Sim','2021-12-05','Transferencia',4),(5,'Sim',50,'Nao','2021-12-06','Transferencia',5),(6,'Sim',60,'Nao','2021-12-07','Dinheiro',6),(7,'Sim',70,'Nao','2021-12-08','Dinheiro',7),(8,'Nao',60,'Sim','2021-12-08','Dinheiro',8),(9,'Sim',120,'Sim','2021-12-02','Transferencia',9),(10,'Nao',10,'Nao','2021-12-04','Dinheiro',10),(11,'Sim',120,'Sim','2021-12-02','Dinheiro',11),(12,'Nao',40,'Sim','2021-12-06','Transferencia',12),(13,'Sim',80,'Sim','2021-12-02','Dinheiro',13),(14,'Nao',40,'Nao','2021-12-06','Transferencia',14),(15,'Sim',80,'Nao','2021-12-09','Dinheiro',15),(16,'Sim',70,'Sim','2021-12-12','Dinheiro',16),(17,'Sim',80,'Nao','2021-12-24','Dinheiro',17),(18,'Nao',40,'Sim','2021-12-25','Transferencia',18),(19,'Nao',80,'Sim','2021-12-22','Transferencia',19),(20,'Nao',40,'Nao','2021-12-06','Dinheiro',20),(21,'Sim',80,'Nao','2021-12-02','Dinheiro',21),(22,'Nao',40,'Sim','2021-12-16','Dinheiro',22),(23,'Sim',40,'Sim','2021-12-27','Transferencia',23),(24,'Nao',70,'Nao','2021-12-25','Tranferencia',24),(25,'Nao',30,'Sim','2021-12-07','Dinheiro',25),(26,'Sim',20,'Nao','2021-12-08','Transferencia',26),(27,'Sim',40,'Sim','2021-12-03','Dinheiro',27),(28,'Sim',40,'Sim','2021-12-04','Transferencia',28),(29,'Nao',10,'Nao','2021-12-17','Dinheiro',29),(30,'Sim',30,'Sim','2021-12-06','Transferencia',30),(31,'Sim',80,'Sim','2022-01-02','Dinheiro',1),(32,'Sim',110,'Sim','2022-01-03','Transferencia',2),(33,'Sim',80,'Nao','2022-01-04','Transferencia',3),(34,'Sim',80,'Sim','2022-01-05','Transferencia',4),(35,'Sim',50,'Nao','2022-01-06','Transferencia',5),(36,'Sim',60,'Nao','2022-01-07','Dinheiro',6),(37,'Sim',70,'Nao','2022-01-08','Dinheiro',7),(38,'Nao',60,NULL,NULL,NULL,8),(39,'Sim',120,'Sim','2022-01-02','Transferencia',9),(40,'Nao',10,NULL,NULL,NULL,10),(41,'Sim',120,'Sim','2022-01-02','Dinheiro',11),(42,'Nao',40,NULL,NULL,NULL,12),(43,'Sim',80,'Sim','2022-01-02','Dinheiro',13),(44,'Nao',40,NULL,NULL,NULL,14),(45,'Sim',80,'Nao','2022-01-02','Dinheiro',15),(46,'Sim',70,'Sim','2022-01-02','Dinheiro',16),(47,'Sim',80,'Nao','2022-01-02','Dinheiro',17),(48,'Nao',40,NULL,NULL,NULL,18),(49,'Nao',80,NULL,NULL,NULL,19),(50,'Nao',40,NULL,NULL,NULL,20),(51,'Sim',80,'Nao','2022-01-02','Dinheiro',21),(52,'Nao',40,NULL,NULL,NULL,22),(53,'Sim',40,'Sim','2022-01-02','Transferencia',23),(54,'Nao',70,NULL,NULL,NULL,24),(55,'Nao',30,NULL,NULL,NULL,25),(56,'Sim',20,'Nao','2022-01-02','Transferencia',26),(57,'Sim',40,'Sim','2022-01-03','Dinheiro',27),(58,'Sim',40,'Sim','2022-01-04','Transferencia',28),(59,'Nao',10,NULL,NULL,NULL,29),(60,'Sim',30,'Sim','2022-01-06','Transferencia',30);
/*!40000 ALTER TABLE `pagamento` ENABLE KEYS */;
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
