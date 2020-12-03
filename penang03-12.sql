-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: penang
-- ------------------------------------------------------
-- Server version	5.7.21-1ubuntu1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_07_23_075215_create_presons_table',2),(4,'2019_07_24_010925_create_questions_table',3),(5,'2019_07_24_011338_create_truequestions_table',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `presons`
--

DROP TABLE IF EXISTS `presons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `presons` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `question_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `true` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vote` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `role` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `presons`
--

LOCK TABLES `presons` WRITE;
/*!40000 ALTER TABLE `presons` DISABLE KEYS */;
INSERT INTO `presons` VALUES (1,'Phạm Đình Cao','025443','5',NULL,'0','0','0','0',NULL,NULL),(2,'Lê Hữu Tú','025473','4','14;11;2;3;8','5','1','0','0',NULL,'2020-12-03 13:16:24'),(3,'Bùi Thị Hồng Thúy','025457','4','6;15;14;9;3','3','1','0','0',NULL,'2020-12-03 11:55:24'),(4,'Nguyễn Thị Thanh Hương','025448','2','9;1;12;7;10','5','1','0','0',NULL,'2020-12-03 13:21:40'),(6,'Nguyễn Chi Mai','025477','1','3;9;7;8;12','5','1','0','0',NULL,'2020-11-23 17:31:55'),(7,'Nguyễn Huy Hoàng','025482','0',NULL,'0','0','0','0',NULL,NULL),(8,'Lê Thị Nga','025452','0',NULL,'0','0','0','0',NULL,NULL),(9,'Đỗ Mạnh Dũng','025438','1',NULL,'0','0','0','2',NULL,NULL),(10,'Nguyễn Tiến Nam','025453','0',NULL,'0','0','0','0',NULL,NULL),(11,'Trương Long Hải','025439','0',NULL,'0','0','0','0',NULL,NULL),(12,'Nguyễn Thị Yến Ngọc','025511','0',NULL,'0','0','0','0',NULL,NULL),(13,'Hà Đăng Sáng','025445','0',NULL,'0','0','0','0',NULL,NULL),(14,'Phạm Thùy Linh','025449','0',NULL,'0','0','0','0',NULL,NULL),(15,'Phạm Thị Thu','025456','0',NULL,'0','0','0','0',NULL,NULL),(16,'Trần Thị Thúy Hằng','025475','0','7;14;2;8;6','0','0','0','0',NULL,'2020-12-03 12:07:23'),(17,'Lê Thu Thủy','025437','5','7;11;5;8;3','5','1','0','0',NULL,'2020-12-03 12:28:14'),(18,'Lê Xuân Trường','025444','0',NULL,'0','0','0','0',NULL,NULL),(19,'Phùng Thị Xuân Tuyết','025713','0',NULL,'0','0','0','0',NULL,NULL),(20,'Lê Thị Thu Hiền','025481','0',NULL,'0','0','0','0',NULL,NULL),(21,'Ngô Văn Tam','025476','0',NULL,'0','0','0','0',NULL,NULL),(22,'Phạm Văn Cảnh','025472','0','15;3;7;11;13','0','0','0','0',NULL,'2020-12-03 13:45:31'),(23,'Tống Thị Anh Khiêm','025462','0',NULL,'0','0','0','0',NULL,NULL),(25,'Vũ Thu Trang','025463','2',NULL,'0','0','0','2',NULL,NULL),(26,'Lê Thùy Ngọc Khanh','025451','0',NULL,'0','0','0','0',NULL,NULL),(27,'Trần Thị Thu Hạnh','025479','5','8;1;15;12;2','3','1','0','0',NULL,'2020-12-03 13:35:06'),(28,'Hồ Hồng Ngọc','025491','1','7;4;14;5;8','4','1','0','0',NULL,'2020-12-03 13:35:09'),(29,'Nguyễn Thành Trung','025455','0',NULL,'0','0','0','0',NULL,NULL),(31,'Nguyễn Quang Minh','025450','0',NULL,'0','0','0','0',NULL,NULL),(32,'Trần Minh Hải','025459','0',NULL,'0','0','0','0',NULL,NULL),(33,'Nguyễn Minh Dũng','025468','0',NULL,'0','0','0','0',NULL,NULL),(34,'Phạm Trung Hiếu','025470','5','6;13;3;8;1','5','1','0','0',NULL,'2020-12-03 14:02:49'),(35,'Nguyễn Thị Thu Hiền','025488','5','12;7;3;11;9','5','1','0','0',NULL,'2020-12-03 14:07:27'),(36,'Trần Quang Hoài','025490','3','6;3;2;12;10','5','1','0','0',NULL,'2020-11-21 17:55:43'),(37,'Nguyễn Phương Thảo','025458','5','9;6;14;13;12','3','1','0','0',NULL,'2020-12-03 13:34:00'),(38,'Giang Diệu Linh','025465','4','1;11;8;9;12','4','1','0','0',NULL,'2020-12-03 14:10:29'),(39,'Hoàng Thị Thủy','025471','5','9;7;6;15;3','4','1','0','0',NULL,'2020-12-03 14:05:54'),(40,'Trần Mạnh Đạt','025510','0',NULL,'0','0','0','0',NULL,NULL),(41,'Nguyễn Mạnh Hải','025484','0',NULL,'0','0','0','0',NULL,NULL),(42,'Lê Trung Hiếu','025485','0',NULL,'0','0','0','0',NULL,NULL),(43,'Nguyễn Xuân Công','025486','0',NULL,'0','0','0','0',NULL,NULL),(44,'Nguyễn Thị Hà','025489','4','4;5;13;1;14','4','1','0','0',NULL,'2020-12-03 14:11:21'),(45,'Hoàng Thúy Duyên','025442','4','2;7;6;5;4','5','1','0','0',NULL,'2020-11-23 17:28:39'),(46,'Nguyễn Văn Hiếu','025498','2','15;13;11;3;4','4','1','0','0',NULL,'2020-12-03 14:06:27'),(47,'Vũ Văn Hoàng','025499','0',NULL,'0','0','0','0',NULL,NULL),(48,'Nguyễn Đức An','025500','3','3;1;5;10;7','4','1','0','0',NULL,'2020-12-03 13:22:27'),(49,'Phạm Văn Đạt','025508','0',NULL,'0','0','0','0',NULL,NULL),(50,'Phạm Trung Hiếu','025493','0','14;11;10;6;1','4','1','0','0',NULL,'2020-12-03 11:56:34'),(51,'Lê Yến Hồng','025497','2','2;12;9;11;4','4','1','0','0',NULL,'2020-12-03 12:01:39'),(52,'Phạm Vũ Quỳnh Như','011785','0','6;14;12;5;3','0','0','0','0',NULL,'2020-12-03 13:19:57'),(53,'Trịnh Ngọc Tú','025506','0','10;6;9;7;5','4','1','0','0',NULL,'2020-12-03 13:58:04'),(54,'Hà Hiến Thành','025501','4','4;13;1;14;6','3','1','0','0',NULL,'2020-12-03 13:56:10'),(55,'Phan Ngọc Toàn','025504','2','10;3;13;5;6','3','1','0','0',NULL,'2020-12-03 13:47:31'),(56,'Vũ Thị Tiên Lữ','025503','3','7;2;12;13;8','4','1','0','0',NULL,'2020-12-03 13:53:41'),(57,'Đoàn Thị Mỵ Dung','025505','5','9;7;1;12;6','3','1','0','0',NULL,'2020-12-03 13:57:12'),(58,'Trần Thị Bình','025507','3','3;7;2;5;11','5','1','0','0',NULL,'2020-12-03 14:23:11'),(59,'Hoàng Văn Thắng','026256','0',NULL,'0','0','0','0',NULL,NULL),(60,'Nguyễn Thị Yến','026482','0',NULL,'0','0','0','0',NULL,NULL),(61,'Nguyễn Thu Phương','026741','4','7;10;11;9;13','5','1','0','0',NULL,'2020-12-03 11:58:00'),(62,'Nguyễn Thị Dưỡng','026815','5','8;6;2;11;3','4','1','0','0',NULL,'2020-12-03 13:42:49'),(63,'Phạm Thị Thùy Linh','026900','5','2;3;9;15;1','5','1','0','0',NULL,'2020-12-03 13:31:13'),(64,'Quách Văn Ninh','024964','2','15;5;4;1;11','5','1','0','0',NULL,'2020-12-03 14:08:07'),(65,'Nguyễn Thị Khánh Trang','026561','0',NULL,'0','0','0','0',NULL,NULL),(66,'Vũ Thị Nga','027167','4','4;14;7;3;1','3','1','0','0',NULL,'2020-12-03 13:15:09'),(67,'Phan Thị Kim Dung','027105','0',NULL,'0','0','0','0',NULL,NULL),(68,'Đỗ Thị Hiên','027201','0',NULL,'0','0','0','0',NULL,NULL),(69,'Vũ Thu Nga','024495','3','10;15;14;7;4','4','1','0','0',NULL,'2020-12-03 13:26:32'),(70,'Trần Nguyệt Vân Hải','024493','0','4;10;9;2;15','0','0','0','0',NULL,'2020-12-01 18:41:13'),(71,'Phạm Quốc Đoài','024496','0',NULL,'0','0','0','0',NULL,NULL),(72,'Nguyễn Văn Khôi','024492','4','5;2;3;7;13','5','1','0','0',NULL,'2020-12-03 13:38:42'),(73,'Đào Văn Hân','024497','4','5;4;12;6;14','3','1','0','0',NULL,'2020-12-03 13:32:46'),(74,'Vũ Đỗ Quyên','024498','4','15;6;1;5;13','5','1','0','0',NULL,'2020-12-03 13:56:06'),(75,'Nguyễn Thu Hà','026039','5','11;13;5;7;12','4','1','0','0',NULL,'2020-12-03 13:29:53'),(76,'Công Thị Quỳnh','024488','1','6;10;3;9;8','3','1','0','0',NULL,'2020-12-03 13:50:33'),(77,'Hoàng Thọ Khánh Toàn','027821','4',NULL,'0','0','0','2',NULL,NULL),(78,'Nguyễn Đức Minh','012276','0',NULL,'0','0','0','0',NULL,NULL),(79,'Nguyễn Hồng Quân','024636','0',NULL,'0','0','0','0',NULL,NULL),(80,'Trần Thanh Tùng','024672','0',NULL,'0','0','0','0',NULL,NULL),(81,'Nguyễn Duy Đông','027341','0',NULL,'0','0','0','0',NULL,NULL),(82,'Vương Việt Long','024684','0',NULL,'0','0','0','0',NULL,NULL),(83,'Nghiêm Thu Giang','025783','0',NULL,'0','0','0','0',NULL,NULL);
/*!40000 ALTER TABLE `presons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `question` longtext COLLATE utf8mb4_unicode_ci,
  `A` longtext COLLATE utf8mb4_unicode_ci,
  `B` longtext COLLATE utf8mb4_unicode_ci,
  `C` longtext COLLATE utf8mb4_unicode_ci,
  `D` longtext COLLATE utf8mb4_unicode_ci,
  `E` longtext COLLATE utf8mb4_unicode_ci,
  `true_question` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_question` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,'Đầy đủ tên của TNR trên Đăng ký kinh doanh là gì?','Công Ty Cổ Phần Đầu Tư Phát Triển Bất Động Sản TNR Holdings Việt Nam','Công Ty Cổ Phần Đầu Tư & Phát Triển Bất Động Sản TNR Holdings Việt Nam','Công Ty Cổ Phần Đầu Tư Phát Triển Bất Động Sản TNR Holdings Vietnam','Công Ty Cổ Phần Đầu Tư & Phát Triển Bất Động Sản TNR Holdings Vietnam',NULL,'1','1','2019-07-08 22:54:43','2019-07-08 22:54:43'),(2,'Slogan của TNR là gì?','Cộng hưởng giá trị - Hạnh phúc vững bền','Cộng hưởng giá trị - Hạnh phúc bền vững','Cộng hưởng vững bền – Giá trị hạnh phúc','Cộng hưởng hạnh phúc – Giá trị vững bền',NULL,'1','1','2019-07-08 22:54:43','2019-07-08 22:54:43'),(3,'TNR được thành lập vào năm nào?','2013','2014','2015','2016',NULL,'2','1','2019-07-08 22:54:43','2019-07-08 22:54:43'),(4,'Dòng sản phẩm TNR Stars được ra mắt vào năm nào?','2014','2015','2016','2017',NULL,'4','1','2019-07-08 22:54:43','2019-07-08 22:54:43'),(5,'Dòng sản phẩm TNR Grand Palace được ra mắt vào năm nào?','2017','2018','2019','2020',NULL,'4','1','2019-07-08 22:54:43','2019-07-08 22:54:43'),(6,'Toà văn phòng hạng A – TNR Tower 54A Nguyễn Chí Thanh được khai trương vào năm nào?','2014','2015','2016','2017',NULL,'2','1','2019-07-08 22:54:43','2019-07-08 22:54:43'),(7,'Dự án TNR Goldmark City đã đạt kỷ lực nào?','Kỷ lục Tổ hợp căn hộ có nhiều Quảng trường nhất Việt Nam','Kỷ lục Bức tranh 3D dài nhất Việt Nam','Cả 2 đáp án trên đều đúng','Cả 2 đáp án đều không đúng',NULL,'3','1','2019-07-08 22:54:43','2019-07-08 22:54:43'),(8,'TNR hiện có những dòng sản phẩm bất động sản nào đã chính thức ra mắt?','TNR Gold, TNR Stars, TNR Grand Palace','TNR Gold, TNR Stars, TNR Grand Palace, TNR Royal','TNR Gold, TNR Stars, TNR Grand Palace, TNR Viva Panorama','TNR Gold, TNR Stars, TNR Grand Palace, TNR Royal, TNR Viva Panorama',NULL,'1','1','2019-07-08 22:54:43','2019-07-08 22:54:43'),(9,'5 Giá trị cốt lõi của TNR là gì?','Trách nhiệm – Chính trực – Tốc độ - Thấu hiểu – Hiệu quả','Trách nhiệm - Tốc Độ - Khách hàng - Hiệu quả -Sáng tạo','Trách nhiệm – Tốc độ - Khách hàng – Thấu hiểu – Đổi mới','Trách nhiệm – Thấu hiểu – Tốc độ - Khách hàng – Đổi mới',NULL,'2','1','2019-07-08 22:54:43','2019-07-08 22:54:43'),(10,'Sứ mệnh của TNR là gì?','Nâng tầm chất lượng cuộc sống cho người Việt bằng các sản phẩm giá trị, hiện đại, sáng tạo và dẫn đầu xu hướng','Nâng tầm chất lượng cuộc sống cho người Việt','Nâng tầm chất lượng cuộc sống cho người Việt','Nâng tầm chất lượng cuộc sống cho TNGers',NULL,'1','1','2019-07-08 22:54:43','2019-07-08 22:54:43'),(11,'Tầm nhìn của TNR là gì?','Trở thành tập đoàn quản lý và phát triển bất động sản thuộc Top đầu tại Việt Nam, hướng tới trở thành tập đoàn danh tiếng trong khu vực','Trở thành tập đoàn quản lý và phát triển bất động sản hàng đầu thế giới','Trở thành tập đoàn quản lý và phát triển bất động sản hàng đầu khu vực','Trở thành tập đoàn quản lý và phát triển bất động sản Số 1 tại Việt Nam',NULL,'1','1','2019-07-08 22:54:43','2019-07-08 22:54:43'),(12,'Các tinh thần nền tảng văn hoá của TNR là gì?','Người dẫn đầu','Xây chuẩn mực','Tạo xu thế','Vượt giới hạn','Tất cả các đáp án trên','5','1','2019-07-08 22:54:43','2019-07-08 22:54:43'),(13,'Ban truyền thông có những vị trí nào?','Thiết kế, Nội dung','Thiết kế, thương hiệu, đối ngoại','Thiết kế, Thương hiệu, nội bộ, đối ngoại','Tất cả đáp án trên đều sai',NULL,'3','1','2019-07-08 22:54:43','2019-07-08 22:54:43'),(14,'Người trẻ tuổi nhất  của ban truyền thông sinh năm bao nhiêu?','1994','1995','1996','1997',NULL,'2','1','2019-07-08 22:54:43','2019-07-08 22:54:43'),(15,'Trong Ban truyền thông team nào có tỷ lệ bình đẳng giới?','Team thiết kế','Team thương hiệu','Team nội bộ','Team đối ngoại',NULL,'3','1','2019-07-08 22:54:43','2019-07-08 22:54:43');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teams` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_member` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,'Team 1','4','2019-07-11 15:43:36','2020-12-03 13:50:33'),(2,'Team 2','6','2019-07-11 15:43:36','2020-12-03 14:06:27'),(3,'Team 3','5','2019-07-11 15:43:36','2020-12-03 14:23:11'),(4,'Team 4','12','2019-07-11 15:43:36','2020-12-03 14:11:21'),(5,'Team 5','11','2019-07-11 15:43:36','2020-12-03 14:07:27');
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `truequestions`
--

DROP TABLE IF EXISTS `truequestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `truequestions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `true_question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `truequestions`
--

LOCK TABLES `truequestions` WRITE;
/*!40000 ALTER TABLE `truequestions` DISABLE KEYS */;
INSERT INTO `truequestions` VALUES (1,'A','2019-07-08 22:54:43','2019-07-08 22:54:43'),(2,'B','2019-07-08 22:54:43','2019-07-08 22:54:43'),(3,'C','2019-07-08 22:54:43','2019-07-08 22:54:43'),(4,'D','2019-07-08 22:54:43','2019-07-08 22:54:43'),(5,'E','2019-07-08 22:54:43','2019-07-08 22:54:43');
/*!40000 ALTER TABLE `truequestions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Trần Quang Hoài','hoaitq2@tng-holdings.vn',NULL,'$2y$10$mYWPwCp.vDqW1oLCa.nRj.GOfhXb9xUQEjsbINuuqoxmTUe/QOwVy',NULL,'2019-10-10 20:22:19','2019-10-10 20:22:19');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-03  7:29:13
