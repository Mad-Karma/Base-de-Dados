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
-- Table structure for table `aluno`
--

DROP TABLE IF EXISTS `aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aluno` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(75) NOT NULL,
  `endereco` varchar(75) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `faltas` int DEFAULT NULL,
  `presencas_espectaveis` int DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `numero_telefone` varchar(50) DEFAULT NULL,
  `ano_escolar` int NOT NULL,
  `nif` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno`
--

LOCK TABLES `aluno` WRITE;
/*!40000 ALTER TABLE `aluno` DISABLE KEYS */;
INSERT INTO `aluno` VALUES (1,'Ana Silva','Rua das Flores, nº100, Covilhã','2009-12-05',0,8,'ana.silva@gmail.com','912345678',8,362519478),(2,'Bruno Santos','Rua dos Pinheiros, nº45, Covilhã','2010-02-22',1,12,'bruno.santos@gmail.com','923456789',7,891602437),(3,'Carolina Oliveira','Avenida Central, nº20, Covilhã','2009-06-18',0,8,'carol.oliveira@hotmail.com','934567890',8,453287196),(4,'Diogo Pereira','Rua do Mar, nº15, Covilhã','2010-09-12',4,12,'diogo.pereira@gmail.com','945678901',7,730819264),(5,'Elena Rodrigues','Rua dos Lírios, nº30, Covilhã','2009-11-01',3,8,'elena.rodrigues@hotmail.com','956789012',8,142936587),(6,'Francisco Alves','Rua das Figueriras, nº10, Covilhã','2008-04-09',2,8,'francisco.alves@gmail.com','967890123',9,629408175),(7,'Gabriela Ferreira','Rua do Sol, nº5, Covilhã','2009-08-14',1,8,'gabriela.ferreira@gmail.com','978901234',8,216594083),(8,'Henrique Costa','Avenida da Liberdade, nº50, Covilhã','2010-07-27',2,8,'henrique.costa@hotmail.com','989012345',7,947360821),(9,'Inês Sousa','Rua dos Cravos, nº25, Covilhã','2008-01-10',0,12,'ines.sousa@gmail.com','900123456',9,518249637),(10,'João Martins','Rua da Praia, nº2, Covilhã','2009-05-03',3,4,'joao.martins\"hotmail.com','911234567',8,305728941),(11,'Lara Oliviera','Rua das Palmeiras, nº12, Covilhã','2008-10-22',0,12,'lara.oliveira@gmail.com','922345678',9,802163945),(12,'Miguel Ferreira','Rua do Campo, nº7, Covilhã','2009-03-14',0,4,'miguel.ferreira@hotmail.com','933456789',8,675894231),(13,'Nuno Silva','Avenida dos Aliados, nº30, Covilhã','2010-06-20',0,8,'nuno.silva@gmail.com','944567890',7,438902761),(14,'Olivia Santos','Rua das Violetas, nº8, Covilhã','2008-09-28',0,4,'olivia.santos@hotmail.com','955678901',9,926814503),(15,'Pedro Rodrigues','Rua das Rosas, nº25, Covilhã','2010-12-09',0,8,'pedro.rodrigues@gmail.com','966789012',7,381695247),(16,'Raquel Almeida','Avenida da Boavista, nº75, Covilhã','2009-02-17',5,12,'raquel.alemeida@hotmail.com','977890123',8,574216309),(17,'Sofia Santos','Rua do Comércio, nº40, Covilhã','2010-05-11',0,8,'sofia.santos@gmail.com','988901234',7,203851764),(18,'Tiago Oliveira','Rua dos Crisântemos, nº22, Covilhã','2008-08-08',0,4,'tiago.olvieira@hotmail.com','999012345',9,968452713),(19,'Vasco Rodrigues','Rua das Acácias, nº14, Covilhã','2009-11-30',0,8,'vasco.rodrigues@gmail.com, ','910123456',8,539286071),(20,'Ana Rita Costa','Avenida da República, nº60, Covilhã','2008-04-23',4,8,'anarita.costa@hotmail.com','921234567',9,127839605),(21,'Bruno Silva','Rua dos Cais, nº18, Covilhã','2009-07-16',0,8,'bruno.silva@gmail.com','932345678',8,697582310),(22,'Carolina Martins','Rua da Liberdade, nº9, Covilhã','2010-10-28',0,4,'carolina.martins@gmail.com','943456789',7,315098247),(23,'Daniel Ferreira','Rua do Castelo, nº11, Covilhã','2008-02-21',0,4,'daniel.ferreira@gmail.com','954567890',9,864327951),(24,'Elisa Sousa','Rua das Amendoeiras, nº5, Covilhã','2010-06-13',5,12,'elisa.sousa@hotmail.com','965678901',7,521437698),(25,'Francisco Santos','Rua das Oliveiras, nº30, Covilhã','2008-09-07',1,4,'francisco.santos@gmail.com','976789012',9,749102386),(26,'Gabriela Oliviera','Rua da Esperança, nº20, Covilhã','2008-12-19',2,4,'gabriela.oliveira@gmail.com','987890123',9,936205714),(27,'Hugo Rodrigues','Rua dos Cravos, nº15, Covilhã','2010-03-25',0,4,'hugo.rodrigues@hotmail.com','998901234',7,287419563),(28,'Inês Alves','Avenida da Boavista, nº75, Covilhã','2008-08-14',0,4,'ines.alves@gmail.com','909012345',9,610832975),(29,'João Ferreira','Rua da Alegria, nº40, Covilhã','2009-12-02',3,4,'joao.ferreira@hotmail.com','920123456',8,174968523),(30,'Lara Silva','Rua das Flores, nº12, Covilhã','2008-05-26',1,4,'lara.silva@hotmail.com','931234567',9,823576419);
/*!40000 ALTER TABLE `aluno` ENABLE KEYS */;
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
