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
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `body` text,
  `status` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_post` (`user_id`),
  CONSTRAINT `fk_user_post` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'Bohemian Rhapsody','Una obra maestra del rock.','publicado','1985-11-24 05:00:00',1),(2,'Thriller','El álbum más vendido de la historia.','publicado','1984-06-25 05:00:00',2),(3,'Back to Black','Un viaje emocional con Amy.','publicado','2007-07-23 05:00:00',3),(4,'Smells Like Teen Spirit','Icono del grunge de los 90.','publicado','1991-09-10 05:00:00',4),(5,'I Will Always Love You','Una de las baladas más poderosas.','publicado','1992-02-11 05:00:00',5),(6,'Jailhouse Rock','Uno de los himnos de Elvis.','publicado','1980-08-16 05:00:00',6),(7,'Numb','Voz potente y emocional de Chester.','publicado','2003-07-20 05:00:00',7),(8,'Como La Flor','El legado de Selena vive.','publicado','1992-03-31 05:00:00',8),(9,'Purple Rain','Prince redefinió la música con esta canción.','publicado','1984-04-21 05:00:00',9),(10,'Wake Me Up','La mezcla perfecta entre EDM y folk.','publicado','2013-04-20 05:00:00',10),(11,'In the End','Una de las canciones más icónicas de Linkin Park.','publicado','2001-10-09 05:00:00',7),(12,'Breaking the Habit','Letra profunda y personal de Chester.','publicado','2004-06-14 05:00:00',7),(13,'Billie Jean','El bajo inolvidable que marcó una era.','publicado','1983-01-02 05:00:00',2),(14,'Beat It','Un himno de los 80 con Eddie Van Halen.','publicado','1983-03-03 05:00:00',2),(15,'Hey Brother','Un mensaje emocional con estilo único.','publicado','2013-10-10 05:00:00',10),(16,'The Nights','Un homenaje a la vida y la juventud.','publicado','2014-12-01 05:00:00',10),(17,'Don’t Stop Me Now','Una explosión de energía y libertad.','publicado','1979-01-26 05:00:00',1),(18,'Somebody to Love','Una balada poderosa con coro góspel.','publicado','1976-11-12 05:00:00',1),(19,'Rehab','Controversial, personal y poderosa.','publicado','2006-10-23 05:00:00',3);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
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
