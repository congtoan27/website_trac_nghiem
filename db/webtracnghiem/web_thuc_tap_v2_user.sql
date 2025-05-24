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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `pass_word` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `re_pass_word` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('admin','Đà Nẵng','2023-01-01','dunglee102@gmail.com','Lê Văn Dũng','/img/avatar/default.jpg','$2a$10$rcN8JG3byMpUSOp6rTWzWu7YMhFBdpHfht50tjcmOZwAOu0LebQ.q','0826145231','$2a$10$rcN8JG3byMpUSOp6rTWzWu7YMhFBdpHfht50tjcmOZwAOu0LebQ.q'),('baolongg','Hà Nội','2023-05-17','baolong@gmail.com','Lê Bảo Long','/img/avatar/1669646591_301_1001-Anh-Avatar-Nam-Ngau-Lanh-Lung-DUNG-DONG-VAO.jpg','$2a$10$YJbeeSqBaojqX8QfbQh1R.oXRZc7jiEr3f/wszdGAEi7qtcCvCDuG','0988876124','$2a$10$tXdcffBbqO7ZAqR1VisMWefa4a81ZaHo.iTQntOQf5huNFSkJdVyW'),('congcuong','Hồ Chí Minh','2023-05-17','cuong@gmail.com','Lê Công Cường','/img/avatar/anh-trai-dep-deo-kinh-600x600.jpg','$2a$10$mSZhfACWY.uiBJUTsQOBQeihDlmrco4Pmmo59xJf9kDzh8CsgTSbO','0874231567','$2a$10$mSZhfACWY.uiBJUTsQOBQeihDlmrco4Pmmo59xJf9kDzh8CsgTSbO'),('congdat96','Hà Nội','2023-05-03','congdat@gmail.com','Nguyễn Công Đạt','/img/avatar/anh-trai-dep-che-mat.jpg','$2a$10$MJRFxySmw/auh1gP92S0NO0FgceVXeQEJhcVd0E45exoF.KO6Vd2m','0902233111','$2a$10$MJRFxySmw/auh1gP92S0NO0FgceVXeQEJhcVd0E45exoF.KO6Vd2m'),('dunglee','Quảng Bình','2023-05-01','duong@gmail.com','Lê Hoàng Dương','/img/avatar/hinh-anh-avatar-nam-1-600x600.jpg','$2a$10$pCrxArjR1DhuuFCqCc15mOQB21rb2A5X.mncxKmiwfKKowq8xNNJi','0826145231','$2a$10$pCrxArjR1DhuuFCqCc15mOQB21rb2A5X.mncxKmiwfKKowq8xNNJi'),('Longduongg','Quảng Nam','2023-05-17','duong123@gmail.com','Nguyễn Long Dương','/img/avatar/hinh-anh-gai-xinh-de-thuong-nhat-1.jpg','$2a$10$JlJ4RATby9CJsFTn9.6lye4NuVf3NWUmQNYGV9hPVcwDPs1axQnq6','0123456789','$2a$10$JlJ4RATby9CJsFTn9.6lye4NuVf3NWUmQNYGV9hPVcwDPs1axQnq6'),('ngocdung','Đà Nẵng','2023-05-18','dung@gmail.com','Nguyễn Ngọc Dũng','/img/avatar/default.jpg','$2a$10$QGPvAZxntDBkdpIR.vtiVOaQE2OLEJihACELTM0nKUIMeI1zVdEPq','0976543211','$2a$10$QGPvAZxntDBkdpIR.vtiVOaQE2OLEJihACELTM0nKUIMeI1zVdEPq'),('nguyenhuuduc','Đà Nẵng','2023-05-05','ducnh@gmail.com','Hữu Đức','/img/avatar/default.jpg','$2a$10$SoFfi/VIHWqtTSHsvjZp..70WRt2wCXvkWqvXdwMAo8eE/iDl914.','0987615243','$2a$10$SoFfi/VIHWqtTSHsvjZp..70WRt2wCXvkWqvXdwMAo8eE/iDl914.'),('nguyenn123','Hà Nội','2023-05-10','ngocnga@gmail.com','Nguyễn Ngọc Nga','/img/avatar/default.jpg','$2a$10$ssdgont6Uxa7jXcAIwp.1uTGckEWVxCS3ro/DX9UYhz7Gw2jk5rCO','0132566777','$2a$10$ssdgont6Uxa7jXcAIwp.1uTGckEWVxCS3ro/DX9UYhz7Gw2jk5rCO'),('nguyennga','Hà Nội','2023-05-03','nga@gmail.com','Nguyễn Thúy Nga','/img/avatar/1672993431_178_45-Avatar-Trang-Xoa-Cute-Dep-Cho-FB-Nam-Nu.jpg','$2a$10$c5iE/o28H6m/ZCD.IPQfUuqadq3oOWJZ0zg/4vk03lE7fu8wTsCpO','0908787612','$2a$10$c5iE/o28H6m/ZCD.IPQfUuqadq3oOWJZ0zg/4vk03lE7fu8wTsCpO'),('thang01','Đà Nẵng','2023-05-01','thang@gmail.com','Hồ Ngọc Thắng','/img/avatar/default.jpg','$2a$10$nDDgATHxP7QsMEkSYsmUB.FrDiZJDPcGiuVts5llatIUF.4ogeYt.','0987654321','$2a$10$nDDgATHxP7QsMEkSYsmUB.FrDiZJDPcGiuVts5llatIUF.4ogeYt.'),('thanhtrungg','Quãng Trị','2023-05-03','thanhtrung@gmail.com','Lê Thành Trung','/img/avatar/default.jpg','$2a$10$boNrL76ZER1lSZR7MldeTumWpbnzP8wxEQiQmNks56EM7g9Gre62.','0999888777','$2a$10$boNrL76ZER1lSZR7MldeTumWpbnzP8wxEQiQmNks56EM7g9Gre62.'),('vanhung123','Quãng Ngãi','2023-01-01','hung@gmail.com','Nguyễn Văn Hùng','/img/avatar/default.jpg','$2a$10$isQ.biKqWgvCVH1qujbKw.1b08fwbpIkDOqWGvU9/BdPsM0H4Q392','0148765421','$2a$10$isQ.biKqWgvCVH1qujbKw.1b08fwbpIkDOqWGvU9/BdPsM0H4Q392');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
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
