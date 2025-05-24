-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: web_thuc_tap_v2
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `result`
--

DROP TABLE IF EXISTS `result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `result` (
  `id` int NOT NULL AUTO_INCREMENT,
  `end_time` datetime DEFAULT NULL,
  `mark` double NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `id_exam` int DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKqqmspitg4ogj84afc4g5rksp5` (`id_exam`),
  KEY `FK3kspdwuynacog42t03c5245s2` (`username`),
  CONSTRAINT `FK3kspdwuynacog42t03c5245s2` FOREIGN KEY (`username`) REFERENCES `user` (`id`),
  CONSTRAINT `FKqqmspitg4ogj84afc4g5rksp5` FOREIGN KEY (`id_exam`) REFERENCES `exam` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `result`
--

LOCK TABLES `result` WRITE;
/*!40000 ALTER TABLE `result` DISABLE KEYS */;
INSERT INTO `result` VALUES (10,'2023-05-11 08:33:13',10,'2023-05-11 08:31:38',23,'congdat96'),(11,'2023-05-05 08:54:00',10,'2023-05-05 08:52:57',23,'nguyennga'),(12,'2023-05-12 08:56:28',10,'2023-05-12 08:55:45',23,'congcuong'),(13,'2023-05-04 09:00:00',10,'2023-05-04 09:09:00',23,'nguyenhuuduc'),(14,'2023-05-02 17:05:00',10,'2023-05-02 17:10:00',23,'thang01'),(20,'2023-05-01 12:02:00',10,'2023-05-01 12:11:20',23,'baolongg'),(21,'2023-04-03 17:50:00',10,'2023-04-03 18:00:00',23,'ngocdung'),(22,'2023-05-02 10:00:20',10,'2023-05-02 10:08:22',23,'nguyenn123'),(23,'2023-05-05 09:00:00',10,'2023-05-05 09:05:00',23,'vanhung123'),(24,'2023-05-01 22:00:10',10,'2023-05-01 22:09:09',23,'Longduongg'),(28,'2023-05-18 20:14:24',10,'2023-05-18 20:13:24',29,'admin'),(29,'2023-05-18 20:15:27',9,'2023-05-18 20:14:55',30,'admin');
/*!40000 ALTER TABLE `result` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-18 21:00:16
