CREATE DATABASE  IF NOT EXISTS `popcorn` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `popcorn`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: popcorn
-- ------------------------------------------------------
-- Server version	8.0.38

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
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `amount` double DEFAULT NULL,
  `bid` int NOT NULL AUTO_INCREMENT,
  `seats` int DEFAULT NULL,
  `stid` int DEFAULT NULL,
  `uid` int DEFAULT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `modified_date` datetime(6) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bid`),
  KEY `FKlx7agvs4in5adv2jxasnpit3c` (`stid`),
  KEY `FKw9oc61kd6pxcnovou76qb5sj` (`uid`),
  CONSTRAINT `FKlx7agvs4in5adv2jxasnpit3c` FOREIGN KEY (`stid`) REFERENCES `showtime` (`stid`),
  CONSTRAINT `FKw9oc61kd6pxcnovou76qb5sj` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_theaters`
--

DROP TABLE IF EXISTS `movie_theaters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_theaters` (
  `movies_mid` int NOT NULL,
  `theater_tid` int NOT NULL,
  KEY `FKb9wf3olvgp7e136jy4hn6cid1` (`theater_tid`),
  KEY `FKdfplsucxw4ob3a7q0uo2uvecv` (`movies_mid`),
  CONSTRAINT `FKb9wf3olvgp7e136jy4hn6cid1` FOREIGN KEY (`theater_tid`) REFERENCES `theaters` (`tid`),
  CONSTRAINT `FKdfplsucxw4ob3a7q0uo2uvecv` FOREIGN KEY (`movies_mid`) REFERENCES `movies` (`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_theaters`
--

LOCK TABLES `movie_theaters` WRITE;
/*!40000 ALTER TABLE `movie_theaters` DISABLE KEYS */;
/*!40000 ALTER TABLE `movie_theaters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies` (
  `avgratings` double DEFAULT NULL,
  `mid` int NOT NULL AUTO_INCREMENT,
  `created_date` datetime(6) DEFAULT NULL,
  `modified_date` datetime(6) DEFAULT NULL,
  `release_date` datetime(6) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `poster_url` varchar(255) DEFAULT NULL,
  `theater_id` int DEFAULT NULL,
  PRIMARY KEY (`mid`),
  KEY `FKe10do7swvxr7oke6f7ydxcb66` (`theater_id`),
  CONSTRAINT `FKe10do7swvxr7oke6f7ydxcb66` FOREIGN KEY (`theater_id`) REFERENCES `theaters` (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (8.8,1,'2010-07-16 00:00:00.000000',NULL,NULL,'A mind-bending journey through dreams within dreams, where reality is never what it seems.','Sci-Fi','English','Inception','https://image.tmdb.org/t/p/original/xlaY2zyzMfkhk0HSC5VUwzoZPU1.jpg',2),(9.3,2,'1994-09-23 00:00:00.000000',NULL,NULL,'A tale of hope and friendship that transcends the walls of a prison.','Drama','English','The Shawshank Redemption','https://m.media-amazon.com/images/M/MV5BMTQ1ODM2MjY3OV5BMl5BanBnXkFtZTgwMTU2MjEyMDE@._V1_.jpg',2),(9,3,'2008-07-18 00:00:00.000000',NULL,NULL,'A gripping story of chaos and heroism, where the line between good and evil blurs.','Action','English','The Dark Knight','https://m.media-amazon.com/images/S/pv-target-images/8753733ac616155963cc440c3cf5367f45d7685b672c5b9c35bc7f182aec17c4.jpg',1),(8.6,4,'2001-07-20 00:00:00.000000',NULL,NULL,'A magical adventure into a world of spirits, where a young girl discovers her inner strength.','Animation','Japanese','Spirited Away','https://image.tmdb.org/t/p/original/gJCRERaZs0NvHktBsfDllc09pE1.jpg',3),(8.6,5,'2019-05-21 00:00:00.000000',NULL,NULL,'A darkly comedic exploration of class struggle and family dynamics.','Thriller','Korean','Parasite','https://alternativemovieposters.com/wp-content/uploads/2024/06/Johny-Pham_Parasite.jpg',2),(8.6,6,'2014-11-07 00:00:00.000000',NULL,NULL,'A heart-wrenching journey across space and time to save humanity.','Sci-Fi','English','Interstellar','https://mir-s3-cdn-cf.behance.net/project_modules/hd/8d8f28105415493.619ded067937d.jpg',3),(9.2,7,'1972-03-24 00:00:00.000000',NULL,NULL,'A powerful saga of family, loyalty, and the cost of power.','Crime','English','The Godfather','https://m.media-amazon.com/images/M/MV5BNGEwYjgwOGQtYjg5ZS00Njc1LTk2ZGEtM2QwZWQ2NjdhZTE5XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',1),(8.4,8,'2016-08-26 00:00:00.000000',NULL,NULL,'A beautifully animated tale of love and connection across time and space.','Romance','Japanese','Your Name','https://m.media-amazon.com/images/M/MV5BMjI1ODZkYTgtYTY3Yy00ZTJkLWFkOTgtZDUyYWM4MzQwNjk0XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',2),(8.9,9,'1994-10-14 00:00:00.000000',NULL,NULL,'A nonlinear masterpiece of crime, humor, and unforgettable characters.','Crime','English','Pulp Fiction','https://m.media-amazon.com/images/M/MV5BYTViYTE3ZGQtNDBlMC00ZTAyLTkyODMtZGRiZDg0MjA2YThkXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',3),(8.5,10,'1994-06-15 00:00:00.000000',NULL,NULL,'A timeless story of courage, family, and finding one’s place in the world.','Animation','English','The Lion King','https://m.media-amazon.com/images/M/MV5BMjIwMjE1Nzc4NV5BMl5BanBnXkFtZTgwNDg4OTA1NzM@._V1_FMjpg_UX1000_.jpg',2),(8.8,11,'1999-10-15 00:00:00.000000',NULL,NULL,'A provocative exploration of identity, consumerism, and rebellion.','Drama','English','Fight Club','https://m.media-amazon.com/images/M/MV5BOTgyOGQ1NDItNGU3Ny00MjU3LTg2YWEtNmEyYjBiMjI1Y2M5XkEyXkFqcGc@._V1_.jpg',3),(8.7,12,'1999-03-31 00:00:00.000000',NULL,NULL,'A groundbreaking film that questions the nature of reality and freedom.','Sci-Fi','English','The Matrix','https://m.media-amazon.com/images/M/MV5BN2NmN2VhMTQtMDNiOS00NDlhLTliMjgtODE2ZTY0ODQyNDRhXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',1),(8.8,13,'1994-07-06 00:00:00.000000',NULL,NULL,'A heartwarming journey through decades of American history, seen through the eyes of a simple man.','Drama','English','Forrest Gump','https://m.media-amazon.com/images/M/MV5BNDYwNzVjMTItZmU5YS00YjQ5LTljYjgtMjY2NDVmYWMyNWFmXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',2),(8.5,14,'2000-05-05 00:00:00.000000',NULL,NULL,'A tale of revenge, honor, and redemption in the Roman Empire.','Action','English','Gladiator','https://m.media-amazon.com/images/M/MV5BMjgyMDM1MGQtMjNmMy00ZTExLWJhMmQtNDMxMTVmMzEyZDk0XkEyXkFqcGc@._V1_.jpg',3),(8.4,15,'2017-11-22 00:00:00.000000',NULL,NULL,'A vibrant celebration of family, music, and the power of remembering loved ones.','Animation','English','Coco','https://m.media-amazon.com/images/M/MV5BMDIyM2E2NTAtMzlhNy00ZGUxLWI1NjgtZDY5MzhiMDc5NGU3XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',1),(8.1,16,'2014-03-28 00:00:00.000000',NULL,NULL,'A whimsical and visually stunning tale of adventure and friendship.','Comedy','English','The Grand Budapest Hotel','https://m.media-amazon.com/images/M/MV5BMzM5NjUxOTEyMl5BMl5BanBnXkFtZTgwNjEyMDM0MDE@._V1_FMjpg_UX1000_.jpg',2),(7.7,17,'2010-10-01 00:00:00.000000',NULL,NULL,'The riveting story of the creation of Facebook and the complexities of ambition.','Biography','English','The Social Network','https://m.media-amazon.com/images/M/MV5BM2JlMGNmYjktNTYxMi00M2I0LThjMWQtYzU1MjcyYmFlN2U1XkEyXkFqcGc@._V1_.jpg',1),(8.5,18,'2014-10-10 00:00:00.000000',NULL,NULL,'An intense and electrifying exploration of ambition, passion, and the pursuit of greatness.','Drama','English','Whiplash','https://m.media-amazon.com/images/M/MV5BMmNkODhkYjctMDMyOC00ZTNjLTkwZTItM2ExMTAxMGU1ZGQ1XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',3),(8,19,'2016-12-09 00:00:00.000000',NULL,NULL,'A modern-day musical about dreams, love, and the sacrifices we make for them.','Musical','English','La La Land','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJ9h4i0mylFuXeeyEjDB3SwbXMT6CvE3x46A&s',1),(8,20,'2012-05-04 00:00:00.000000',NULL,NULL,'A superhero epic that brings together Earth’s mightiest heroes to save the world.','Action','English','The Avengers','https://m.media-amazon.com/images/M/MV5BNGE0YTVjNzUtNzJjOS00NGNlLTgxMzctZTY4YTE1Y2Y1ZTU4XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',2),(8,21,'2015-07-10 00:00:00.000000',NULL,NULL,'A grand epic of courage, betrayal, and destiny, set in the majestic kingdom of Mahishmati.','Action','Telugu','Baahubali: The Beginning','https://m.media-amazon.com/images/M/MV5BN2MyZTVmYTgtY2EzYS00YzkxLWIxMDItNWI4MDczN2JjMjUwXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',3),(8.4,22,'2009-12-25 00:00:00.000000',NULL,NULL,'A heartwarming story about friendship, ambition, and the pursuit of knowledge, with a touch of humor.','Comedy-Drama','Hindi','3 Idiots','https://m.media-amazon.com/images/M/MV5BNzc4ZWQ3NmYtODE0Ny00YTQ4LTlkZWItNTBkMGQ0MmUwMmJlXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',1),(8.6,23,'2018-09-28 00:00:00.000000',NULL,NULL,'A powerful tale of caste discrimination and resilience, told through the eyes of a young law student.','Drama','Tamil','Pariyerum Perumal','https://m.media-amazon.com/images/M/MV5BYmNiZTE5NTUtMThjZC00NzQ5LThhMjYtODMwZmEyOTI1Njg5XkEyXkFqcGc@._V1_.jpg',2),(8.5,24,'2019-02-07 00:00:00.000000',NULL,NULL,'A beautifully crafted story of family, love, and redemption set in a quaint fishing village.','Drama','Malayalam','Kumbalangi Nights','https://m.media-amazon.com/images/M/MV5BMWE2NTAyZjEtOTNlZC00Y2NkLTgxMDEtNGJmNmU4MzJhODU0XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',3),(8.2,25,'2015-07-31 00:00:00.000000',NULL,NULL,'A gripping tale of a common man’s extraordinary efforts to protect his family from a shocking crime.','Thriller','Hindi','Drishyam','https://m.media-amazon.com/images/M/MV5BM2NmMGFjYTYtNWEwNS00MTM4LWE2ZTktNzZjMTE0OTQyNjFiXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',1);
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `amount` double DEFAULT NULL,
  `bid` int DEFAULT NULL,
  `pid` int NOT NULL AUTO_INCREMENT,
  `created_date` datetime(6) DEFAULT NULL,
  `modified_date` datetime(6) DEFAULT NULL,
  `pay_date` datetime(6) DEFAULT NULL,
  `pay_method` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pid`),
  UNIQUE KEY `UKh1uvn4n92nuiogmgjisdup66u` (`bid`),
  CONSTRAINT `FKf3o43q38u4chhwxmw51ato2cv` FOREIGN KEY (`bid`) REFERENCES `bookings` (`bid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seats`
--

DROP TABLE IF EXISTS `seats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seats` (
  `sid` int NOT NULL AUTO_INCREMENT,
  `availability` varchar(255) DEFAULT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `updated_date` datetime(6) DEFAULT NULL,
  `uid` int DEFAULT NULL,
  `stid` int DEFAULT NULL,
  PRIMARY KEY (`sid`),
  UNIQUE KEY `UKilwvd69v0fijdbu8f8ojktiu5` (`stid`,`name`),
  CONSTRAINT `FKl8e1d6onayunwahkr1k7lpx46` FOREIGN KEY (`stid`) REFERENCES `showtime` (`stid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seats`
--

LOCK TABLES `seats` WRITE;
/*!40000 ALTER TABLE `seats` DISABLE KEYS */;
INSERT INTO `seats` VALUES (1,'booked',NULL,'A10','epic',NULL,1,21),(2,'booked',NULL,'G5',NULL,NULL,1,21);
/*!40000 ALTER TABLE `seats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `showtime`
--

DROP TABLE IF EXISTS `showtime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `showtime` (
  `availableseats` int DEFAULT NULL,
  `endtime` time(6) DEFAULT NULL,
  `mid` int DEFAULT NULL,
  `starttime` time(6) DEFAULT NULL,
  `stid` int NOT NULL AUTO_INCREMENT,
  `tid` int DEFAULT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `end_date` datetime(6) DEFAULT NULL,
  `modified_date` datetime(6) DEFAULT NULL,
  `start_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`stid`),
  KEY `FKrm8jhvpj5ebtx4c0qlbjfso6w` (`mid`),
  KEY `FK9njl3cye3hjlrpb5mvr3f6f9d` (`tid`),
  CONSTRAINT `FK9njl3cye3hjlrpb5mvr3f6f9d` FOREIGN KEY (`tid`) REFERENCES `theaters` (`tid`),
  CONSTRAINT `FKrm8jhvpj5ebtx4c0qlbjfso6w` FOREIGN KEY (`mid`) REFERENCES `movies` (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `showtime`
--

LOCK TABLES `showtime` WRITE;
/*!40000 ALTER TABLE `showtime` DISABLE KEYS */;
INSERT INTO `showtime` VALUES (50,'12:30:00.000000',1,'10:00:00.000000',1,1,NULL,'2021-04-30 00:00:00.000000',NULL,'2021-03-01 00:00:00.000000'),(50,'21:30:00.000000',1,'19:00:00.000000',2,1,NULL,'2021-04-30 00:00:00.000000',NULL,'2021-03-01 00:00:00.000000'),(50,'13:30:00.000000',2,'11:00:00.000000',3,2,NULL,'2021-04-30 00:00:00.000000',NULL,'2021-03-01 00:00:00.000000'),(50,'22:30:00.000000',2,'20:00:00.000000',4,2,NULL,'2021-04-30 00:00:00.000000',NULL,'2021-03-01 00:00:00.000000'),(50,'14:30:00.000000',3,'12:00:00.000000',5,3,NULL,'2021-04-30 00:00:00.000000',NULL,'2021-03-01 00:00:00.000000'),(50,'23:30:00.000000',3,'21:00:00.000000',6,3,NULL,'2021-04-30 00:00:00.000000',NULL,'2021-03-01 00:00:00.000000'),(50,'11:00:00.000000',4,'09:00:00.000000',7,4,NULL,'2021-04-30 00:00:00.000000',NULL,'2021-03-01 00:00:00.000000'),(50,'20:00:00.000000',4,'18:00:00.000000',8,4,NULL,'2021-04-30 00:00:00.000000',NULL,'2021-03-01 00:00:00.000000'),(50,'13:00:00.000000',5,'10:30:00.000000',9,1,NULL,'2021-04-30 00:00:00.000000',NULL,'2021-03-01 00:00:00.000000'),(50,'22:00:00.000000',5,'19:30:00.000000',10,1,NULL,'2021-04-30 00:00:00.000000',NULL,'2021-03-01 00:00:00.000000'),(50,'14:00:00.000000',6,'11:30:00.000000',11,2,NULL,'2021-04-30 00:00:00.000000',NULL,'2021-03-01 00:00:00.000000'),(50,'23:00:00.000000',6,'20:30:00.000000',12,2,NULL,'2021-04-30 00:00:00.000000',NULL,'2021-03-01 00:00:00.000000'),(50,'15:00:00.000000',7,'12:30:00.000000',13,3,NULL,'2021-04-30 00:00:00.000000',NULL,'2021-03-01 00:00:00.000000'),(50,'00:00:00.000000',7,'21:30:00.000000',14,3,NULL,'2021-04-30 00:00:00.000000',NULL,'2021-03-01 00:00:00.000000'),(50,'11:30:00.000000',8,'09:30:00.000000',15,4,NULL,'2021-04-30 00:00:00.000000',NULL,'2021-03-01 00:00:00.000000'),(50,'20:30:00.000000',8,'18:30:00.000000',16,4,NULL,'2021-04-30 00:00:00.000000',NULL,'2021-03-01 00:00:00.000000'),(50,'12:30:00.000000',9,'10:00:00.000000',17,1,NULL,'2021-04-30 00:00:00.000000',NULL,'2021-03-01 00:00:00.000000'),(50,'21:30:00.000000',9,'19:00:00.000000',18,1,NULL,'2021-04-30 00:00:00.000000',NULL,'2021-03-01 00:00:00.000000'),(50,'13:00:00.000000',10,'11:00:00.000000',19,2,NULL,'2021-04-30 00:00:00.000000',NULL,'2021-03-01 00:00:00.000000'),(50,'22:00:00.000000',10,'20:00:00.000000',20,2,NULL,'2021-04-30 00:00:00.000000',NULL,'2021-03-01 00:00:00.000000'),(50,'14:30:00.000000',11,'12:00:00.000000',21,3,NULL,'2021-04-30 00:00:00.000000',NULL,'2021-03-01 00:00:00.000000'),(50,'23:30:00.000000',11,'21:00:00.000000',22,3,NULL,'2021-04-30 00:00:00.000000',NULL,'2021-03-01 00:00:00.000000'),(50,'13:00:00.000000',12,'10:30:00.000000',23,4,NULL,'2021-04-30 00:00:00.000000',NULL,'2021-03-01 00:00:00.000000'),(50,'22:00:00.000000',12,'19:30:00.000000',24,4,NULL,'2021-04-30 00:00:00.000000',NULL,'2021-03-01 00:00:00.000000'),(50,'14:00:00.000000',13,'11:30:00.000000',25,1,NULL,'2021-04-30 00:00:00.000000',NULL,'2021-03-01 00:00:00.000000'),(50,'23:00:00.000000',13,'20:30:00.000000',26,1,NULL,'2021-04-30 00:00:00.000000',NULL,'2021-03-01 00:00:00.000000'),(50,'15:00:00.000000',14,'12:30:00.000000',27,2,NULL,'2021-04-30 00:00:00.000000',NULL,'2021-03-01 00:00:00.000000'),(50,'00:00:00.000000',14,'21:30:00.000000',28,2,NULL,'2021-04-30 00:00:00.000000',NULL,'2021-03-01 00:00:00.000000'),(50,'11:00:00.000000',15,'09:00:00.000000',29,3,NULL,'2021-04-30 00:00:00.000000',NULL,'2021-03-01 00:00:00.000000'),(50,'20:00:00.000000',15,'18:00:00.000000',30,3,NULL,'2021-04-30 00:00:00.000000',NULL,'2021-03-01 00:00:00.000000'),(50,'12:00:00.000000',16,'10:00:00.000000',31,4,NULL,'2021-04-30 00:00:00.000000',NULL,'2021-03-01 00:00:00.000000'),(50,'21:00:00.000000',16,'19:00:00.000000',32,4,NULL,'2021-04-30 00:00:00.000000',NULL,'2021-03-01 00:00:00.000000'),(50,'13:30:00.000000',17,'11:00:00.000000',33,1,NULL,'2021-04-30 00:00:00.000000',NULL,'2021-03-01 00:00:00.000000'),(50,'22:30:00.000000',17,'20:00:00.000000',34,1,NULL,'2021-04-30 00:00:00.000000',NULL,'2021-03-01 00:00:00.000000'),(50,'14:30:00.000000',18,'12:00:00.000000',35,2,NULL,'2021-04-30 00:00:00.000000',NULL,'2021-03-01 00:00:00.000000'),(50,'23:30:00.000000',18,'21:00:00.000000',36,2,NULL,'2021-04-30 00:00:00.000000',NULL,'2021-03-01 00:00:00.000000'),(50,'13:00:00.000000',19,'10:30:00.000000',37,3,NULL,'2021-04-30 00:00:00.000000',NULL,'2021-03-01 00:00:00.000000'),(50,'22:00:00.000000',19,'19:30:00.000000',38,3,NULL,'2021-04-30 00:00:00.000000',NULL,'2021-03-01 00:00:00.000000'),(50,'14:00:00.000000',20,'11:30:00.000000',39,4,NULL,'2021-04-30 00:00:00.000000',NULL,'2021-03-01 00:00:00.000000'),(50,'23:00:00.000000',20,'20:30:00.000000',40,4,NULL,'2021-04-30 00:00:00.000000',NULL,'2021-03-01 00:00:00.000000');
/*!40000 ALTER TABLE `showtime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_table`
--

DROP TABLE IF EXISTS `test_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_table` (
  `test_id` int NOT NULL,
  `test_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`test_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_table`
--

LOCK TABLES `test_table` WRITE;
/*!40000 ALTER TABLE `test_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `test_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theaters`
--

DROP TABLE IF EXISTS `theaters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `theaters` (
  `tid` int NOT NULL AUTO_INCREMENT,
  `created_date` datetime(6) DEFAULT NULL,
  `modified_date` datetime(6) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `theater_name` varchar(255) DEFAULT NULL,
  `grid_data` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theaters`
--

LOCK TABLES `theaters` WRITE;
/*!40000 ALTER TABLE `theaters` DISABLE KEYS */;
INSERT INTO `theaters` VALUES (1,NULL,NULL,'gajuwaka','vizag','INOX','5-A,5-B,5-C,9-D,9-E,9-F,9-G'),(2,NULL,NULL,'Algaddabai','hyd','Sangam','9-A,9-B,9-C,4-D,9-E,9-F,9-G'),(3,NULL,NULL,'ramnagar','vizag','Jagadamba','5-A,5-B,5-C,4-D,4-E,8-F,8-G'),(4,NULL,NULL,'abcd','hyd','lkj','8-A,8-B,5-C,5-D,6-E,6-F,6-G');
/*!40000 ALTER TABLE `theaters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `created_date` date DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  `uid` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phonenumber` varchar(255) DEFAULT NULL,
  `ustatus` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (NULL,NULL,1,'GEO','S','123','123',NULL),(NULL,NULL,2,'suj',NULL,NULL,NULL,NULL);
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

-- Dump completed on 2025-03-04  9:06:56
