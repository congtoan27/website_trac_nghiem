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
-- Table structure for table `subject_classes`
--

DROP TABLE IF EXISTS `subject_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subject_classes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `class_id` int DEFAULT NULL,
  `subject_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKhntniubqkx6m4froyepa5qbrb` (`class_id`),
  KEY `FKsvu8veaopfx3q36er0s89m2hf` (`subject_id`),
  CONSTRAINT `FKhntniubqkx6m4froyepa5qbrb` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`),
  CONSTRAINT `FKsvu8veaopfx3q36er0s89m2hf` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject_classes`
--

LOCK TABLES `subject_classes` WRITE;
/*!40000 ALTER TABLE `subject_classes` DISABLE KEYS */;
INSERT INTO `subject_classes` VALUES (70,1,1),(71,1,2),(72,1,4),(73,1,15),(74,1,16),(75,2,1),(76,2,2),(77,2,15),(78,2,16),(79,3,1),(80,3,2),(81,3,15),(82,3,16),(83,3,18),(84,4,1),(85,4,2),(86,4,4),(87,4,15),(88,4,18),(89,5,1),(90,5,2),(91,5,4),(92,5,15),(93,5,18),(94,2,4),(95,3,4),(96,6,1),(97,6,3),(98,6,4),(99,6,5),(100,6,9),(101,6,18),(102,7,1),(103,7,3),(104,7,4),(105,7,5),(106,7,7),(107,7,8),(108,7,9),(109,7,18),(110,8,1),(111,8,3),(112,8,4),(113,8,5),(114,8,6),(115,8,7),(116,8,8),(117,8,9),(118,8,18),(119,9,1),(120,9,3),(121,9,4),(122,9,5),(123,9,6),(124,9,7),(125,9,8),(126,9,9),(127,9,18),(128,10,1),(129,10,3),(130,10,5),(131,10,6),(132,10,7),(133,10,8),(134,10,9),(135,10,18),(136,4,19),(137,4,20),(138,5,19),(139,5,20),(140,6,19),(141,6,20),(142,7,19),(143,7,20),(144,8,19),(145,8,20),(146,9,19),(147,9,20),(148,10,19),(149,10,20),(150,11,3),(151,11,5),(152,11,6),(153,11,7),(154,11,8),(155,11,9),(156,11,18),(157,11,19),(158,11,20),(159,12,3),(160,12,5),(161,12,6),(162,12,7),(163,12,8),(164,12,9),(165,12,18),(166,12,19),(167,12,20),(168,2,3),(169,2,5);
/*!40000 ALTER TABLE `subject_classes` ENABLE KEYS */;
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
