-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: red_social
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `follows`
--

DROP TABLE IF EXISTS `follows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `follows` (
  `following_user_id` int DEFAULT NULL,
  `followed_user_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `following_user_id` (`following_user_id`),
  KEY `followed_user_id` (`followed_user_id`),
  CONSTRAINT `follows_ibfk_1` FOREIGN KEY (`following_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `follows_ibfk_2` FOREIGN KEY (`followed_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `follows`
--

LOCK TABLES `follows` WRITE;
/*!40000 ALTER TABLE `follows` DISABLE KEYS */;
INSERT INTO `follows` VALUES (7,4,'1992-02-11 05:00:00'),(7,4,'1992-02-11 05:00:00'),(1,3,'2000-12-16 05:00:00'),(3,8,'2020-02-26 05:00:00'),(7,2,'1999-02-18 05:00:00'),(7,1,'1998-11-17 05:00:00'),(7,6,'1995-04-24 05:00:00'),(7,9,'1997-05-19 05:00:00'),(9,5,'2005-05-23 05:00:00'),(10,5,'2015-08-03 05:00:00'),(4,5,'2019-10-23 05:00:00'),(9,10,'2009-04-29 05:00:00'),(10,1,'2012-06-30 05:00:00'),(7,4,'1992-02-11 05:00:00'),(1,3,'2000-12-16 05:00:00'),(3,8,'2020-02-26 05:00:00'),(7,2,'1999-02-18 05:00:00'),(7,1,'1998-11-17 05:00:00'),(7,6,'1995-04-24 05:00:00'),(7,9,'1997-05-19 05:00:00'),(9,5,'2005-05-23 05:00:00'),(10,5,'2015-08-03 05:00:00'),(4,5,'2019-10-23 05:00:00'),(9,10,'2009-04-29 05:00:00'),(10,1,'2012-06-30 05:00:00'),(5,2,'2019-11-13 05:00:00'),(5,1,'2020-12-18 05:00:00'),(5,7,'2010-02-28 05:00:00'),(5,9,'2001-06-18 05:00:00'),(8,3,'2006-08-04 05:00:00'),(7,1,'2016-09-24 05:00:00');
/*!40000 ALTER TABLE `follows` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-29 21:56:01
