-- MySQL dump 10.13  Distrib 5.5.54, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: musicjungle
-- ------------------------------------------------------
-- Server version	5.5.54-0ubuntu0.12.04.1

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
-- Current Database: `musicjungle`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `musicjungle` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `musicjungle`;

--
-- Table structure for table `Music`
--

DROP TABLE IF EXISTS `Music`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Music` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Music`
--

LOCK TABLES `Music` WRITE;
/*!40000 ALTER TABLE `Music` DISABLE KEYS */;
/*!40000 ALTER TABLE `Music` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MusicOwner`
--

DROP TABLE IF EXISTS `MusicOwner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MusicOwner` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `music_id` bigint(20) DEFAULT NULL,
  `owner_login` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_r19uwsh0sbam5e3xtymys75d8` (`music_id`),
  KEY `FK_cusvcg2op0n6cnrr4wfkx4xeh` (`owner_login`),
  CONSTRAINT `FK_cusvcg2op0n6cnrr4wfkx4xeh` FOREIGN KEY (`owner_login`) REFERENCES `User` (`login`),
  CONSTRAINT `FK_r19uwsh0sbam5e3xtymys75d8` FOREIGN KEY (`music_id`) REFERENCES `Music` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MusicOwner`
--

LOCK TABLES `MusicOwner` WRITE;
/*!40000 ALTER TABLE `MusicOwner` DISABLE KEYS */;
/*!40000 ALTER TABLE `MusicOwner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User` (
  `login` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES ('stato','Andre','P@ssw0rd');
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-19 21:08:42
