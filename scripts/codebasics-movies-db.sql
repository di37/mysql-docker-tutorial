CREATE DATABASE  IF NOT EXISTS `moviesdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `moviesdb`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: moviesdb
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `actors`
--

DROP TABLE IF EXISTS `actors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actors` (
  `actor_id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `birth_year` year DEFAULT NULL,
  PRIMARY KEY (`actor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actors`
--

LOCK TABLES `actors` WRITE;
/*!40000 ALTER TABLE `actors` DISABLE KEYS */;
INSERT INTO `actors` VALUES (50,'Yash',1986),(51,'Sanjay Dutt',1959),(52,'Benedict Cumberbatch',1976),(53,'Elizabeth Olsen',1989),(54,'Chris Hemsworth',1983),(55,'Natalie Portman',1981),(56,'Tom Hiddleston',1981),(57,'Amitabh Bachchan',1942),(58,'Jaya Bachchan',1948),(59,'Shah Rukh Khan',1965),(60,'Kajol',1974),(61,'Aamir Khan',1965),(62,'R. Madhavan',1970),(63,'Sharman Joshi',1979),(64,'Hrithik Roshan',1974),(65,'Ranveer Singh',1985),(66,'Deepika Padukone',1986),(67,'Tim Robbins',1958),(68,'Morgan Freeman',1937),(69,'Leonardo DiCaprio',1974),(70,'Ken Watanabe',1959),(71,'Matthew McConaughey',1969),(72,'Anne Hathaway',1982),(73,'John David Washington',1984),(74,'Robert Pattinson',1986),(75,'Will Smith',1968),(76,'Thandiwe Newton',1972),(77,'Russell Crowe',1964),(78,'Joaquin Phoenix',1974),(79,'Kate Winslet',1975),(80,'James Stewart',1908),(81,'Donna Reed',1921),(82,'Sam Worthington',1976),(83,'Zoe Saldana',1978),(84,'Marlon Brando',1924),(85,'Al Pacino',1940),(86,'Christian Bale',1974),(87,'Heath Ledger',1979),(88,'Liam Neeson',1952),(89,'Ben Kingsley',1943),(90,'Sam Neill',1947),(91,'Laura Dern',1967),(92,'Song Kang-ho',1967),(93,'Lee Sun-kyun',1975),(94,'Robert Downey Jr.',1965),(95,'Chris Evans',1981),(150,'Kanu Banerjee',1905),(151,'Karuna Banerjee',1919),(152,'Darsheel Safary',1997),(153,'Sunil Dutt',1929),(154,'Anushka Sharma',1988),(155,'Ranbir Kapoor',1982),(156,'Allu Arjun',1982),(157,'Fahadh Faasil',1982),(158,'N. T. Rama Rao Jr.',1983),(159,'Ram Charan',1985),(160,'Prabhas',1979),(161,'Rana Daggubati',1984),(162,'Mithun Chakraborty',1950),(163,'Anupam Kher',1955),(164,'Salman Khan',1965),(165,'Nawazuddin Siddiqui',1967),(166,'Tommy Lee Jones',1946),(167,'Sebastian Stan',1982),(168,'Anil Kapoor',1956),(169,'Sidharth Malhotra',1985),(170,'Kiara Advani',1991);
/*!40000 ALTER TABLE `actors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `financials`
--

DROP TABLE IF EXISTS `financials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `financials` (
  `movie_id` int unsigned NOT NULL,
  `budget` decimal(10,2) DEFAULT NULL,
  `revenue` decimal(10,2) DEFAULT NULL,
  `unit` enum('Units','Thousands','Millions','Billions') DEFAULT NULL,
  `currency` char(3) DEFAULT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `financials`
--

LOCK TABLES `financials` WRITE;
/*!40000 ALTER TABLE `financials` DISABLE KEYS */;
INSERT INTO `financials` VALUES (101,1.00,12.50,'Billions','INR'),(102,200.00,954.80,'Millions','USD'),(103,165.00,644.80,'Millions','USD'),(104,180.00,854.00,'Millions','USD'),(105,250.00,670.00,'Millions','USD'),(107,400.00,2000.00,'Millions','INR'),(108,550.00,4000.00,'Millions','INR'),(109,390.00,1360.00,'Millions','INR'),(110,1.40,3.50,'Billions','INR'),(111,25.00,73.30,'Millions','USD'),(113,165.00,701.80,'Millions','USD'),(114,205.00,365.30,'Millions','USD'),(115,55.00,307.10,'Millions','USD'),(116,103.00,460.50,'Millions','USD'),(117,200.00,2202.00,'Millions','USD'),(118,3.18,3.30,'Millions','USD'),(119,237.00,2847.00,'Millions','USD'),(120,7.20,291.00,'Millions','USD'),(121,185.00,1006.00,'Millions','USD'),(122,22.00,322.20,'Millions','USD'),(123,63.00,1046.00,'Millions','USD'),(124,15.50,263.10,'Millions','USD'),(125,400.00,2798.00,'Millions','USD'),(126,400.00,2048.00,'Millions','USD'),(127,70000.00,100000.00,'Thousands','INR'),(128,120.00,1350.00,'Millions','INR'),(129,100.00,410.00,'Millions','INR'),(130,850.00,8540.00,'Millions','INR'),(131,1.00,5.90,'Billions','INR'),(132,2.00,3.60,'Billions','INR'),(133,5.50,12.00,'Billions','INR'),(134,1.80,6.50,'Billions','INR'),(135,250.00,3409.00,'Millions','INR'),(136,900.00,11690.00,'Millions','INR'),(137,216.70,370.60,'Millions','USD'),(138,177.00,714.40,'Millions','USD'),(139,1.80,3.10,'Billions','INR'),(140,500.00,950.00,'Millions','INR'),(406,30.00,350.00,'Millions','INR'),(412,160.00,836.80,'Millions','USD');
/*!40000 ALTER TABLE `financials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `language_id` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`language_id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (7,'Bengali'),(5,'English'),(6,'French'),(8,'Gujarati'),(1,'Hindi'),(3,'Kannada'),(4,'Tamil'),(2,'Telugu');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_actor`
--

DROP TABLE IF EXISTS `movie_actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_actor` (
  `movie_id` int unsigned NOT NULL,
  `actor_id` int unsigned NOT NULL,
  PRIMARY KEY (`movie_id`,`actor_id`),
  KEY `fk_movie_actor_movies_idx` (`movie_id`),
  KEY `fk_movie_actor_actors_idx` (`actor_id`),
  CONSTRAINT `fk_movie_actor_actors` FOREIGN KEY (`actor_id`) REFERENCES `actors` (`actor_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_movie_actor_movies` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_actor`
--

LOCK TABLES `movie_actor` WRITE;
/*!40000 ALTER TABLE `movie_actor` DISABLE KEYS */;
INSERT INTO `movie_actor` VALUES (101,50),(101,51),(102,52),(102,53),(103,54),(103,55),(103,56),(104,54),(104,56),(105,54),(105,55),(106,57),(106,58),(107,59),(107,60),(108,61),(108,62),(108,63),(109,57),(109,59),(109,64),(110,65),(110,66),(111,67),(111,68),(112,69),(112,70),(113,71),(113,72),(115,75),(115,76),(116,77),(116,78),(117,69),(117,79),(118,80),(118,81),(119,82),(119,83),(120,84),(120,85),(121,86),(121,87),(122,88),(122,89),(123,90),(123,91),(124,92),(124,93),(125,54),(125,94),(125,95),(126,54),(126,94),(126,95),(127,150),(127,151),(128,61),(128,152),(129,51),(129,153),(130,61),(130,154),(131,154),(131,155),(132,156),(132,157),(133,158),(133,159),(134,160),(134,161),(135,162),(135,163),(136,164),(136,165),(137,95),(137,166),(138,95),(138,167),(139,164),(139,168),(140,169),(140,170);
/*!40000 ALTER TABLE `movie_actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies` (
  `movie_id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `industry` varchar(45) DEFAULT NULL,
  `release_year` year DEFAULT NULL,
  `imdb_rating` decimal(3,1) DEFAULT NULL,
  `studio` varchar(45) DEFAULT NULL,
  `language_id` tinyint unsigned DEFAULT NULL,
  PRIMARY KEY (`movie_id`),
  KEY `fk_movies_languages_idx` (`language_id`),
  CONSTRAINT `fk_movies_languages` FOREIGN KEY (`language_id`) REFERENCES `languages` (`language_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (101,'K.G.F: Chapter 2','Bollywood',2022,8.4,'Hombale Films',3),(102,'Doctor Strange in the Multiverse of Madness','Hollywood',2022,7.0,'Marvel Studios',5),(103,'Thor: The Dark World ','Hollywood',2013,6.8,'Marvel Studios',5),(104,'Thor: Ragnarok ','Hollywood',2017,7.9,'Marvel Studios',5),(105,'Thor: Love and Thunder ','Hollywood',2022,6.8,'Marvel Studios',5),(106,'Sholay','Bollywood',1975,8.1,'United Producers',1),(107,'Dilwale Dulhania Le Jayenge','Bollywood',1995,8.0,'Yash Raj Films',1),(108,'3 Idiots','Bollywood',2009,8.4,'Vinod Chopra Films',1),(109,'Kabhi Khushi Kabhie Gham','Bollywood',2001,7.4,'Dharma Productions',1),(110,'Bajirao Mastani ','Bollywood',2015,7.2,'',1),(111,'The Shawshank Redemption','Hollywood',1994,9.3,'Castle Rock Entertainment',5),(112,'Inception','Hollywood',2010,8.8,'Warner Bros. Pictures',5),(113,'Interstellar','Hollywood',2014,8.6,'Warner Bros. Pictures',5),(115,'The Pursuit of Happyness','Hollywood',2006,8.0,'Columbia Pictures',5),(116,'Gladiator','Hollywood',2000,8.5,'Universal Pictures  ',5),(117,'Titanic','Hollywood',1997,7.9,'Paramount Pictures',5),(118,'It\'s a Wonderful Life','Hollywood',1946,8.6,'Liberty Films',5),(119,'Avatar','Hollywood',2009,7.8,'20th Century Fox',5),(120,'The Godfather','Hollywood',1972,9.2,'Paramount Pictures',5),(121,'The Dark Knight','Hollywood',2008,9.0,'Syncopy',5),(122,'Schindler\'s List','Hollywood',1993,9.0,'Universal Pictures',5),(123,'Jurassic Park','Hollywood',1993,8.2,'Universal Pictures',5),(124,'Parasite','Hollywood',2019,8.5,'',5),(125,'Avengers: Endgame','Hollywood',2019,8.4,'Marvel Studios',5),(126,'Avengers: Infinity War','Hollywood',2018,8.4,'Marvel Studios',5),(127,'Pather Panchali','Bollywood',1955,8.3,'Government of West Bengal',7),(128,'Taare Zameen Par','Bollywood',2007,8.3,'',1),(129,'Munna Bhai M.B.B.S.','Bollywood',2003,8.1,'Vinod Chopra Productions',1),(130,'PK','Bollywood',2014,8.1,'Vinod Chopra Films',1),(131,'Sanju','Bollywood',2018,NULL,'Vinod Chopra Films',1),(132,'Pushpa: The Rise - Part 1','Bollywood',2021,7.6,'Mythri Movie Makers',2),(133,'RRR','Bollywood',2022,8.0,'DVV Entertainment',2),(134,'Baahubali: The Beginning','Bollywood',2015,8.0,'Arka Media Works',2),(135,'The Kashmir Files','Bollywood',2022,8.3,'Zee Studios',1),(136,'Bajrangi Bhaijaan','Bollywood',2015,8.1,'Salman Khan Films',1),(137,'Captain America: The First Avenger','Hollywood',2011,6.9,'Marvel Studios',5),(138,'Captain America: The Winter Soldier','Hollywood',2014,7.8,'Marvel Studios',5),(139,'Race 3','Bollywood',2018,1.9,'Salman Khan Films',1),(140,'Shershaah','Bollywood',2021,8.4,'Dharma Productions',1);
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-12 12:32:35
