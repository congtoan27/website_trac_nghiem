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
-- Table structure for table `lesson`
--

DROP TABLE IF EXISTS `lesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lesson` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name_lesson` varchar(255) DEFAULT NULL,
  `serial` int NOT NULL,
  `chapter_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKyd2sg2b1awfx3br81o66mrwl` (`chapter_id`),
  CONSTRAINT `FKyd2sg2b1awfx3br81o66mrwl` FOREIGN KEY (`chapter_id`) REFERENCES `chapter` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=437 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lesson`
--

LOCK TABLES `lesson` WRITE;
/*!40000 ALTER TABLE `lesson` DISABLE KEYS */;
INSERT INTO `lesson` VALUES (368,'Nhiều hơn, ít hơn',1,39),(369,'Hình vuông, hình tròn, hình tam giác',2,39),(370,'Các số 1, 2, 3',3,39),(371,'Các số 1, 2, 3, 4, 5',4,39),(372,'Bé hơn, lớn hơn, bằng. Dấu <, >, =',5,39),(373,'Số 6',6,39),(374,'Số 7',7,39),(375,'Số 8',8,39),(376,'Số 9',9,39),(378,'Phép cộng trong phạm vi 3',1,40),(379,'Phép cộng trong phạm vi 4',2,40),(380,'Phép cộng trong phạm vi 5',3,40),(381,'Số 0 trong phép cộng',4,40),(382,'Phép trừ trong phạm vi 3',5,40),(383,'Phép trừ trong phạm vi 4',6,40),(384,'Phép trừ trong phạm vi 5',7,40),(385,'Số 0 trong phép trừ',8,40),(386,'Phép cộng trong phạm vi 6',9,40),(387,'Phép trừ trong phạm vi 6',10,40),(388,'Phép cộng trong phạm vi 7',11,40),(389,'Phép trừ trong phạm vi 7',12,40),(390,'Phép cộng trong phạm vi 8',13,40),(391,'Phép trừ trong phạm vi 8',14,40),(392,'Phép cộng trong phạm vi 9',15,40),(393,'Phép trừ trong phạm vi 9',16,40),(394,'Phép cộng trong phạm vi 10',17,40),(395,'Phép trừ trong phạm vi 10',18,40),(396,'Bảng cộng và bảng trừ trong phạm vi 10',19,40),(398,'Độ dài đoạn thẳng - Thực hành đo độ dài',2,41),(399,'Một chục. Tia số',3,41),(400,'Mười một, mười hai',4,41),(401,'Mười ba, mười bốn, mười lăm',5,41),(402,'Mười sáu, mười bảy, mười tám, mười chín',6,41),(403,'Hai mươi. Hai chục',7,41),(404,'Phép cộng dạng 14 + 3',8,41),(405,'Phép trừ dạng 17 - 3',9,41),(406,'Phép trừ dạng 17 - 7',10,41),(407,'Bài toán có lời văn. Giải toán có lời văn',11,41),(408,'Xăng-ti-mét. Đo độ dài. Vẽ đoạn thẳng có độ dài cho trước',12,41),(409,'Các số tròn chục',13,41),(410,'Cộng các số tròn chục',14,41),(411,'Trừ các số tròn chục',15,41),(412,'Điểm ở trong, điểm ở ngoài một hình',16,41),(413,'Các số có hai chữ số',17,41),(414,'So sánh các số có hai chữ số',18,41),(415,'Bảng các số từ 1 đến 100',19,41),(416,'Giải toán có lời văn (tiếp theo)',20,41),(417,'Phép cộng trong phạm vi 100 (cộng không nhớ)',1,42),(418,'Phép trừ trong phạm vi 100 (trừ không nhớ)',2,42),(419,'Các ngày trong tuần lễ',3,42),(420,'Cộng, trừ (không nhớ) trong phạm vi 100',4,42),(421,'Đồng hồ. Thời gian',5,42),(422,'Ôn tập: Các số đến 10',6,42),(423,'Ôn tập: Các số đến 100',7,42),(425,'Số 0',10,39),(426,'Số 10',11,39),(432,'Bài học 1',1,52),(433,'Bài học 2',2,52),(434,'Bài học 3',3,52),(435,'Bài học 4',4,52),(436,'Bài học 5',5,52);
/*!40000 ALTER TABLE `lesson` ENABLE KEYS */;
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
