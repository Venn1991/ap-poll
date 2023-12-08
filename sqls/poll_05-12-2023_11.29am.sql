-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 62.72.28.52    Database: u276789778_polling_survey
-- ------------------------------------------------------
-- Server version	5.5.5-10.6.15-MariaDB-cll-lve

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
-- Table structure for table `access_permissions`
--

DROP TABLE IF EXISTS `access_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `access_permissions` (
  `access_permissions_pk` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `createdon` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedon` timestamp NULL DEFAULT NULL,
  `deletedon` timestamp NULL DEFAULT NULL,
  `createdby` int(11) NOT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  `add_perm` tinyint(1) DEFAULT 0,
  `edit_perm` tinyint(1) DEFAULT 0,
  `view_perm` tinyint(1) DEFAULT 1,
  `delete_perm` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`access_permissions_pk`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `access_permissions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `access_permissions`
--

LOCK TABLES `access_permissions` WRITE;
/*!40000 ALTER TABLE `access_permissions` DISABLE KEYS */;
INSERT INTO `access_permissions` VALUES (9,10,1,'2023-11-28 12:04:58',NULL,NULL,0,NULL,NULL,0,0,1,0),(10,11,1,'2023-11-28 12:30:44',NULL,NULL,0,NULL,NULL,0,0,1,0),(11,12,1,'2023-11-30 06:47:51',NULL,NULL,0,NULL,NULL,0,0,1,0);
/*!40000 ALTER TABLE `access_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booths`
--

DROP TABLE IF EXISTS `booths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booths` (
  `booth_pk` int(11) NOT NULL AUTO_INCREMENT,
  `booth_no` int(11) DEFAULT NULL,
  `sachivalayam_pk` int(11) NOT NULL,
  `booth_name` varchar(255) DEFAULT NULL,
  `booth_fulladdress` text DEFAULT NULL,
  PRIMARY KEY (`booth_pk`,`sachivalayam_pk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booths`
--

LOCK TABLES `booths` WRITE;
/*!40000 ALTER TABLE `booths` DISABLE KEYS */;
/*!40000 ALTER TABLE `booths` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `constituencies`
--

DROP TABLE IF EXISTS `constituencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `constituencies` (
  `consistency_pk` int(11) NOT NULL AUTO_INCREMENT,
  `consistency_id` int(11) NOT NULL,
  `district_pk` int(11) NOT NULL,
  `consistency_name` varchar(100) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `createdon` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deletedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createdby` int(11) NOT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`consistency_pk`),
  KEY `district_pk` (`district_pk`),
  CONSTRAINT `constituencies_ibfk_1` FOREIGN KEY (`district_pk`) REFERENCES `districts` (`district_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `constituencies`
--

LOCK TABLES `constituencies` WRITE;
/*!40000 ALTER TABLE `constituencies` DISABLE KEYS */;
INSERT INTO `constituencies` VALUES (3,1,6,'Chandragiri',1,'2023-11-26 13:03:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(4,1,6,'Gudur',1,'2023-11-26 13:03:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(5,1,6,'Sullurpeta',1,'2023-11-26 13:03:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(6,1,6,'Venkatagiri',1,'2023-11-26 13:03:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(7,1,6,'Tirupati',1,'2023-11-26 13:03:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(8,1,6,'Srikalahasti',1,'2023-11-26 13:03:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(9,1,6,'Satyavedu',1,'2023-11-26 13:03:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(11,1,6,'updted',1,'2023-11-28 12:31:53','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(12,1,6,'consistency',1,'2023-11-30 07:38:46','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(13,1,6,'consistency',1,'2023-12-02 07:22:45','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(14,2,6,'8522',1,'2023-12-02 07:33:47','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(15,2,6,'8',1,'2023-12-02 07:37:43','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(16,2,6,'po',1,'2023-12-02 07:38:54','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(17,2,6,'kolkata',1,'2023-12-02 11:16:36','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(18,2,25,'lok sadha',1,'2023-12-02 12:02:59','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(19,2,7,'45',1,'2023-12-04 06:27:37','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(20,2,8,'96',1,'2023-12-04 06:28:33','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(21,2,6,'some con',1,'2023-12-04 06:36:26','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(22,2,8,'some1 con',1,'2023-12-04 06:37:53','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL);
/*!40000 ALTER TABLE `constituencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `countryid` int(11) NOT NULL AUTO_INCREMENT,
  `countryname` varchar(255) DEFAULT NULL,
  `state_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`countryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `designation`
--

DROP TABLE IF EXISTS `designation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `designation` (
  `designation_pk` int(11) NOT NULL AUTO_INCREMENT,
  `designation_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`designation_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `designation`
--

LOCK TABLES `designation` WRITE;
/*!40000 ALTER TABLE `designation` DISABLE KEYS */;
INSERT INTO `designation` VALUES (1,'designation'),(2,'designation-1');
/*!40000 ALTER TABLE `designation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `districts`
--

DROP TABLE IF EXISTS `districts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `districts` (
  `district_pk` int(11) NOT NULL AUTO_INCREMENT,
  `is_active` tinyint(1) DEFAULT 1,
  `createdon` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deletedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createdby` int(11) NOT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `district_name` varchar(100) NOT NULL,
  PRIMARY KEY (`district_pk`),
  KEY `state_id` (`state_id`),
  CONSTRAINT `districts_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `states` (`state_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `districts`
--

LOCK TABLES `districts` WRITE;
/*!40000 ALTER TABLE `districts` DISABLE KEYS */;
INSERT INTO `districts` VALUES (6,1,'2023-11-26 11:42:02','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,5,'Tirupati'),(7,1,'2023-11-26 11:42:02','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,5,'Krishna'),(8,1,'2023-11-26 11:42:02','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,5,'Kurnool'),(9,1,'2023-11-26 11:42:02','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,5,'Visakhapatnam'),(10,1,'2023-11-26 11:42:02','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,5,'Anakapalli'),(11,1,'2023-11-26 11:42:02','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,5,'Eluru'),(12,1,'2023-11-26 11:42:02','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,5,'Prakasam'),(13,1,'2023-11-26 11:42:02','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,5,'Guntur'),(14,1,'2023-11-26 11:42:02','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,5,'chittor'),(15,1,'2023-11-26 11:42:02','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,5,'Anantapuramu'),(16,1,'2023-11-28 12:32:55','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,5,'srikakulam'),(17,1,'2023-11-30 08:13:54','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,5,'Vizianagaram'),(18,1,'2023-12-02 06:30:05','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,5,'78787'),(19,1,'2023-12-02 06:31:46','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,'king'),(20,1,'2023-12-02 06:33:34','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,'king9'),(21,1,'2023-12-02 06:34:27','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,'KING10'),(22,1,'2023-12-02 06:35:18','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,26,'king15'),(23,1,'2023-12-02 06:35:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,29,'king777'),(24,1,'2023-12-02 07:39:15','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,5,'po'),(25,1,'2023-12-02 11:18:12','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,32,'puri'),(26,1,'2023-12-02 11:30:14','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,32,'rayagada'),(27,1,'2023-12-04 06:26:43','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,5,'vizag'),(28,1,'2023-12-04 06:34:11','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,26,'eluru'),(29,1,'2023-12-04 06:35:33','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,30,'city');
/*!40000 ALTER TABLE `districts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `divisions`
--

DROP TABLE IF EXISTS `divisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `divisions` (
  `division_pk` int(11) NOT NULL AUTO_INCREMENT,
  `mandal_id` int(11) NOT NULL,
  `division_name` varchar(100) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `createdon` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deletedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createdby` int(11) NOT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`division_pk`),
  KEY `mandal_id` (`mandal_id`),
  CONSTRAINT `divisions_ibfk_1` FOREIGN KEY (`mandal_id`) REFERENCES `mandals` (`mandal_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `divisions`
--

LOCK TABLES `divisions` WRITE;
/*!40000 ALTER TABLE `divisions` DISABLE KEYS */;
INSERT INTO `divisions` VALUES (6,6,'Nerabailu',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(7,6,'Bodevandlapalle',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(8,6,'Yerravaripalem',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(9,5,'Chinnagottigallu',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(10,5,'Bhakarapeta',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(11,5,'T.Chattevaripalem',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(12,3,'Mogarala',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(13,3,'Damalacheruvu',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(14,3,'Pakala',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(15,3,'Nendragunta',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(16,2,'Chandragiri',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(17,2,'Ithepalli',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(18,2,'A.Rangampeta',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(19,2,'Thondawada',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(20,4,'Nethakuppam',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(21,4,'Kuppam Baduru',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(22,4,'R.C.Puram',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(23,4,'Nennuru',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(24,8,'Mangalam',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(25,8,'Tiruchanoor',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(26,8,'Daminedu',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(27,8,'Mundlapudi',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(28,8,'Padmavathi Puram',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(29,8,'Vedanthapuram',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(30,8,'Sainagar',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(31,8,'Perumallapalle',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(32,8,'Mallamgunta Checkpost',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(33,8,'Peruru',1,'2023-11-26 14:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(34,2,'division',1,'2023-11-28 12:33:54','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(35,6,'division-2',1,'2023-11-30 08:20:58','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL);
/*!40000 ALTER TABLE `divisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lookup`
--

DROP TABLE IF EXISTS `lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lookup` (
  `lookup_pk` int(11) NOT NULL AUTO_INCREMENT,
  `lookup_name` varchar(50) NOT NULL,
  `lookup_valuename` varchar(50) NOT NULL,
  `lookup_sequence` int(11) DEFAULT 0,
  PRIMARY KEY (`lookup_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lookup`
--

LOCK TABLES `lookup` WRITE;
/*!40000 ALTER TABLE `lookup` DISABLE KEYS */;
INSERT INTO `lookup` VALUES (1,'ticketstatuslist','open',0),(2,'ticketstatuslist','resolved',0),(3,'ticketstatuslist','cancelled',0),(4,'ticketstatuslist','escalated',0),(13,'genderlist','MALE',0),(14,'genderlist','FEMALE',0),(15,'genderlist','OTHERS',0),(16,'guardianlist','FATHER',0),(17,'guardianlist','MOTHER',0),(18,'guardianlist','HUSBAND',0),(19,'attachementtype','PDF',0),(20,'attachementtype','DOC',0),(21,'attachementtype','IMAGE',0),(22,'party_list','NEUTRAL',0),(23,'party_list','YSRCP',0),(24,'party_list','TDP',0),(25,'party_list','CONGRESS',0),(26,'party_list','BJP',0),(27,'party_list','JANASENA',0),(30,'designationlist','CM',0),(31,'designationlist','STATE_LEADER',0),(32,'designationlist','MLA',0),(33,'designationlist','MANDAL_CONVENER/CPRO',0),(34,'designationlist','PRO',0),(35,'designationlist','APRO',0),(36,'designationlist','BOOTH_INCHARGE',0),(37,'designationlist','VOLUNTEER',0),(38,'designationlist','GRUHASARATHI',0),(78,'lookup','value',0),(79,'lookup','valuename',0),(80,'party_list','OTHERS',0);
/*!40000 ALTER TABLE `lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mandals`
--

DROP TABLE IF EXISTS `mandals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mandals` (
  `mandal_pk` int(11) NOT NULL AUTO_INCREMENT,
  `consistency_id` int(11) NOT NULL,
  `mandal_name` varchar(100) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `createdon` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deletedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createdby` int(11) NOT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`mandal_pk`),
  KEY `consistency_id` (`consistency_id`),
  CONSTRAINT `mandals_ibfk_1` FOREIGN KEY (`consistency_id`) REFERENCES `constituencies` (`consistency_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mandals`
--

LOCK TABLES `mandals` WRITE;
/*!40000 ALTER TABLE `mandals` DISABLE KEYS */;
INSERT INTO `mandals` VALUES (2,3,'Chandragiri',1,'2023-11-26 13:49:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(3,3,'Pakala',1,'2023-11-26 13:49:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(4,3,'Ramachandrapuram',1,'2023-11-26 13:49:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(5,3,'Chinnagottigalu',1,'2023-11-26 13:49:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(6,3,'Yerravaripalem',1,'2023-11-26 13:49:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(7,3,'Konkachennayyagunta',1,'2023-11-26 13:49:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(8,3,'Tirupati Rural(West)',1,'2023-11-26 13:49:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(9,3,'Tirupati Rural(East)',1,'2023-11-26 13:49:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(11,3,'updated',1,'2023-11-30 08:25:58','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(12,3,'visa',1,'2023-12-04 06:55:44','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL);
/*!40000 ALTER TABLE `mandals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `navaratnalu`
--

DROP TABLE IF EXISTS `navaratnalu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `navaratnalu` (
  `navaratnalu_pk` int(11) NOT NULL AUTO_INCREMENT,
  `navaratnalu_name` varchar(100) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `createdon` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deletedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createdby` int(11) NOT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`navaratnalu_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `navaratnalu`
--

LOCK TABLES `navaratnalu` WRITE;
/*!40000 ALTER TABLE `navaratnalu` DISABLE KEYS */;
INSERT INTO `navaratnalu` VALUES (1,'YSR Arogyasri',1,'2023-11-27 13:25:32','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(2,'Jagananna Amma Vodi',1,'2023-11-28 12:40:47','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(3,'Jagananna Thodu',1,'2023-11-30 08:28:07','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(4,'Jagananna Vidya Deevena',1,'2023-12-02 07:42:16','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(5,'Rice Card',1,'2023-12-02 07:43:52','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(6,'Jagananna Vasathi Deevena',1,'2023-12-02 07:46:02','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(7,'Matsyakara Bharosa',1,'2023-12-02 07:48:22','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(8,'Pension Kanuka',1,'2023-12-02 07:49:09','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(9,'Fee Reimbursement',1,'2023-12-02 07:49:37','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(10,'Others',1,'2023-12-03 05:31:18','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL);
/*!40000 ALTER TABLE `navaratnalu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `notifications_pk` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `notification_name` varchar(50) NOT NULL,
  `notification_description` varchar(200) NOT NULL,
  `is_seen` tinyint(1) DEFAULT 0,
  `seen_on` timestamp NULL DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `createdon` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedon` timestamp NULL DEFAULT NULL,
  `deletedon` timestamp NULL DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`notifications_pk`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_pk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_access`
--

DROP TABLE IF EXISTS `page_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `page_access` (
  `page_access_pk` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `pagename` varchar(100) NOT NULL,
  `access` tinyint(1) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 1,
  `createdon` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedon` timestamp NULL DEFAULT NULL,
  `deletedon` timestamp NULL DEFAULT NULL,
  `createdby` int(11) NOT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`page_access_pk`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `page_access_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_access`
--

LOCK TABLES `page_access` WRITE;
/*!40000 ALTER TABLE `page_access` DISABLE KEYS */;
INSERT INTO `page_access` VALUES (1,10,'Dashbord_page',0,1,'2023-11-27 14:09:50',NULL,NULL,0,NULL,NULL),(2,10,'Dashbord_page',0,1,'2023-11-27 14:13:16',NULL,NULL,0,NULL,NULL),(5,11,'Dashbord_page',0,1,'2023-11-28 12:41:20',NULL,NULL,0,NULL,NULL),(6,12,'dashbord page',0,1,'2023-11-30 08:30:17',NULL,NULL,0,NULL,NULL);
/*!40000 ALTER TABLE `page_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parts`
--

DROP TABLE IF EXISTS `parts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parts` (
  `part_pk` int(11) NOT NULL AUTO_INCREMENT,
  `part_no` int(11) NOT NULL,
  `male_votes` int(11) NOT NULL,
  `female_votes` int(11) NOT NULL,
  `other_votes` int(11) NOT NULL,
  `sachivalayam_id` int(11) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `createdon` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deletedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createdby` int(11) NOT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  `parts_name` varchar(50) DEFAULT NULL,
  `parts_slno` int(11) DEFAULT 0,
  PRIMARY KEY (`part_pk`),
  UNIQUE KEY `part_no_UNIQUE` (`part_no`),
  KEY `sachivalayam_id` (`sachivalayam_id`),
  CONSTRAINT `parts_ibfk_5` FOREIGN KEY (`sachivalayam_id`) REFERENCES `sachivalayam` (`sachivalayam_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parts`
--

LOCK TABLES `parts` WRITE;
/*!40000 ALTER TABLE `parts` DISABLE KEYS */;
INSERT INTO `parts` VALUES (1,2,10,10,10,6,1,'2023-11-27 04:50:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `parts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poll_survey`
--

DROP TABLE IF EXISTS `poll_survey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `poll_survey` (
  `poll_survey_pk` int(11) NOT NULL AUTO_INCREMENT,
  `volunteer_id` int(11) NOT NULL,
  `voter_pk` int(11) NOT NULL,
  `intrested_party` int(11) DEFAULT NULL,
  `voted_party` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `createdon` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deletedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createdby` int(11) NOT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`poll_survey_pk`),
  UNIQUE KEY `voter_pk_UNIQUE` (`voter_pk`),
  KEY `poll_survey_ibfk_3_idx` (`intrested_party`,`voted_party`),
  CONSTRAINT `poll_survey_ibfk_2` FOREIGN KEY (`voter_pk`) REFERENCES `voters` (`voter_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poll_survey`
--

LOCK TABLES `poll_survey` WRITE;
/*!40000 ALTER TABLE `poll_survey` DISABLE KEYS */;
INSERT INTO `poll_survey` VALUES (32,1,4,23,NULL,1,'2023-12-02 02:45:13','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(34,1,5,22,NULL,1,'2023-12-02 02:45:24','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(38,1,3,22,NULL,1,'2023-12-02 06:49:16','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(40,11,1,NULL,NULL,1,'2023-12-02 12:36:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(43,1,2,22,NULL,1,'2023-12-02 13:28:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(63,1,7,24,NULL,1,'2023-12-03 09:22:10','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(64,1,6,23,NULL,1,'2023-12-03 09:22:13','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(66,1,8,22,NULL,1,'2023-12-03 09:23:14','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(67,1,9,22,NULL,1,'2023-12-03 11:29:54','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(70,1,10,22,NULL,1,'2023-12-03 11:33:43','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(73,1,11,22,NULL,1,'2023-12-03 11:34:36','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(74,1,12,22,NULL,1,'2023-12-03 11:35:34','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(75,1,26,22,NULL,1,'2023-12-03 11:35:40','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(78,1,27,22,NULL,1,'2023-12-03 11:52:54','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL);
/*!40000 ALTER TABLE `poll_survey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sachivalayam`
--

DROP TABLE IF EXISTS `sachivalayam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sachivalayam` (
  `sachivalayam_pk` int(11) NOT NULL AUTO_INCREMENT,
  `division_pk` int(11) NOT NULL,
  `sachivalayam_name` varchar(100) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `createdon` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deletedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createdby` int(11) NOT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`sachivalayam_pk`),
  KEY `division_pk` (`division_pk`),
  CONSTRAINT `sachivalayam_ibfk_1` FOREIGN KEY (`division_pk`) REFERENCES `divisions` (`division_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sachivalayam`
--

LOCK TABLES `sachivalayam` WRITE;
/*!40000 ALTER TABLE `sachivalayam` DISABLE KEYS */;
INSERT INTO `sachivalayam` VALUES (1,13,'Uppara Palli',1,'2023-11-26 15:18:26','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(2,13,'Damalacheruvu-1',1,'2023-11-26 15:18:26','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(3,13,'Damalacheruvu-2',1,'2023-11-26 15:18:26','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(4,13,'Peddaramapuram',1,'2023-11-26 15:18:26','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(5,12,'Padiputlabailu',1,'2023-11-26 15:18:26','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(6,16,'USITHIKAYALAPENTA',1,'2023-11-26 15:18:26','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(7,12,'Maddinenipalli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(8,12,'Ganugapenta',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(9,12,'Mogarala',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(10,12,'Vallevedu',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(11,12,'Ramanaiahgari Palli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(12,15,'Gadanki',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(13,15,'Irrangari Palli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(14,15,'Kavalivari Palli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(15,15,'K Vadde Palli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(16,14,'Samireddy Palli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(17,14,'Pakala-1',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(18,14,'Pakala-2',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(19,14,'Pantapalli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(20,14,'Chenugari Palli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(21,18,'Kandula Vari Palli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(22,18,'A Rangampeta',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(23,18,'Chinnaramapuram',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(24,18,'Ramireddi Palli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(25,16,'Rayalpuram',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(26,16,'Narasinga Puram',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(27,16,'Chandragiri-1',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(28,16,'Chandragiri- 2',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(29,16,'Chandragiri- 3',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(30,16,'Chandragiri- 4',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(31,16,'Chandragiri-5',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(32,17,'Panapakam',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(33,17,'M Kongaravari Palli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(34,17,'Ithepalli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(35,17,'Kotala',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(36,19,'Thondawada',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(37,19,'Sanambatla',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(38,19,'Mittapalem',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(39,19,'Dornakambala',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(40,19,'Gangudu Palli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(41,21,'Kuppam Baduru',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(42,21,'Mitta Kandriga',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(43,21,'C.K.Palli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(44,23,'Sorakayala Palem',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(45,23,'K.K.V.Puram',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(46,23,'Nadavaluru',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(47,23,'Nennuru',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(48,20,'Netha Kuppam',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(49,20,'Anupalli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(50,22,'Gangireddy Palli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(51,22,'C.Ramapuram',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(52,7,'Bodevandlapalli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(53,7,'Usthikayalapenta',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(54,7,'Kotakadapalli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(55,7,'Ellamanda',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(56,6,'Nerabailu',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(57,6,'Kurapathivari Palli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(58,6,'Chinthagunta',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(59,6,'Kammallayya Gari Palli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(60,8,'Yerravaripallem',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(61,8,'CherukuvariPalli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(62,8,'Udhayamanikyam',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(63,10,'Bhakarapeta',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(64,10,'Deendharpalli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(65,10,'Chittecherla',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(66,11,'Chattevari Palem',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(67,11,'Digavuru',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(68,11,'Thippireddygari Palli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(69,11,'Nellutlavari Palli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(70,9,'Jagavandal Palli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(71,9,'Kotabailu',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(72,9,'Chinnagottigallu',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(73,24,'Mangalam',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(74,24,'Setti Palli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(75,24,'Tudaquarters',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(76,24,'Ranadheer Puram',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(77,24,'Sapthagiri Colony',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(78,25,'Yogimallavaram',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(79,25,'Tiruchanoor -1',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(80,26,'Daminedu',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(81,26,'Lakshmi Nagar',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(82,26,'Chaitanya Puram',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(83,27,'Brahmanapattu',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(84,27,'Padipeta',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(85,28,'Srinivasa Puram',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(86,28,'Oteru',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(87,28,'Thanaplli & Kuntrapakam',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(88,28,'Padmavathi Puram',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(89,29,'Chiguruwada',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(90,29,'Durgasamudram',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(91,29,'Vedanthapuram',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(92,30,'Avilala - 1',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(93,30,'Andhra Bank Colony',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(94,30,'Sainagar- 1',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(95,30,'Sainagar-2',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(96,30,'Lingeswar Nagar',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(97,30,'Gandhi Puram',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(98,31,'C. Mallavaram',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(99,31,'Cherlo Palli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(100,31,'Perumalla Palli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(101,31,'Pudipatla',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(102,31,'S.V.Nagar',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(103,32,'Mallamgunta',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(104,32,'C Gollapalli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(105,33,'Peruru',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(106,33,'Haripuram Colony',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(107,33,'Vidyanagar Colony',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(108,33,'Thummalagunta',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(109,33,'Venkatapati Nagar',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(113,17,'Kalrodepalli',1,'2023-12-01 12:34:19','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL);
/*!40000 ALTER TABLE `sachivalayam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `state_pk` int(11) NOT NULL AUTO_INCREMENT,
  `state_name` varchar(100) NOT NULL DEFAULT 'Andhra Pradesh',
  `is_active` tinyint(1) DEFAULT 1,
  `createdon` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deletedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createdby` int(11) NOT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`state_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (5,'Andhra Pradesh',1,'2023-11-26 10:55:14','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(26,'bangalore',1,'2023-12-02 02:04:33','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(28,'updated',1,'2023-12-02 05:23:37','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(29,'mumbai',1,'2023-12-02 05:25:01','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(30,'mumbai',1,'2023-12-02 05:26:33','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(31,'Karnataka ',1,'2023-12-02 05:27:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(32,'Odisha ',1,'2023-12-02 11:17:12','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(33,'madhya pradesh',1,'2023-12-04 06:26:11','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(34,'himachal Pradesh ',1,'2023-12-04 06:31:11','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL);
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_attachments`
--

DROP TABLE IF EXISTS `ticket_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket_attachments` (
  `ticket_attachment_pk` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_master_id` int(11) NOT NULL,
  `attachment_name` varchar(250) NOT NULL,
  `attachment_type` varchar(10) NOT NULL,
  `attachments_discription` varchar(5000) NOT NULL,
  `attachments_url` varchar(250) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `createdon` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deletedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createdby` int(11) NOT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`ticket_attachment_pk`),
  KEY `ticket_master_id` (`ticket_master_id`),
  CONSTRAINT `ticket_attachments_ibfk_1` FOREIGN KEY (`ticket_master_id`) REFERENCES `ticket_master` (`ticket_master_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_attachments`
--

LOCK TABLES `ticket_attachments` WRITE;
/*!40000 ALTER TABLE `ticket_attachments` DISABLE KEYS */;
INSERT INTO `ticket_attachments` VALUES (5,4,'attachment','type','discription','http://url/',1,'2023-11-28 12:44:22','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(6,4,'attachment-2','type','',NULL,1,'2023-11-30 08:44:51','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL);
/*!40000 ALTER TABLE `ticket_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_escalation`
--

DROP TABLE IF EXISTS `ticket_escalation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket_escalation` (
  `ticket_escalation_pk` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_escalatedon` timestamp NOT NULL DEFAULT current_timestamp(),
  `escalatedby` int(11) DEFAULT NULL,
  `ticket_master_id` int(11) NOT NULL,
  PRIMARY KEY (`ticket_escalation_pk`),
  KEY `ticket_master_id` (`ticket_master_id`),
  CONSTRAINT `ticket_escalation_ibfk_1` FOREIGN KEY (`ticket_master_id`) REFERENCES `ticket_master` (`ticket_master_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_escalation`
--

LOCK TABLES `ticket_escalation` WRITE;
/*!40000 ALTER TABLE `ticket_escalation` DISABLE KEYS */;
INSERT INTO `ticket_escalation` VALUES (4,'2023-11-28 12:44:33',NULL,4),(5,'2023-11-30 08:47:15',NULL,4);
/*!40000 ALTER TABLE `ticket_escalation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_master`
--

DROP TABLE IF EXISTS `ticket_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket_master` (
  `ticket_master_pk` int(11) NOT NULL AUTO_INCREMENT,
  `voter_pk` int(11) DEFAULT NULL,
  `volunteer_id` int(11) NOT NULL,
  `navaratnalu_id` int(11) NOT NULL,
  `reason` varchar(5000) NOT NULL,
  `is_open` tinyint(1) DEFAULT 1,
  `status_id` int(11) NOT NULL DEFAULT 1,
  `is_active` tinyint(1) DEFAULT 1,
  `createdon` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deletedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createdby` int(11) NOT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`ticket_master_pk`),
  KEY `voter_pk` (`voter_pk`),
  KEY `volunteer_id` (`volunteer_id`),
  KEY `navaratnalu_id` (`navaratnalu_id`),
  KEY `status_id` (`status_id`),
  CONSTRAINT `ticket_master_ibfk_1` FOREIGN KEY (`voter_pk`) REFERENCES `voters` (`voter_pk`),
  CONSTRAINT `ticket_master_ibfk_2` FOREIGN KEY (`volunteer_id`) REFERENCES `users` (`user_pk`),
  CONSTRAINT `ticket_master_ibfk_3` FOREIGN KEY (`navaratnalu_id`) REFERENCES `navaratnalu` (`navaratnalu_pk`),
  CONSTRAINT `ticket_master_ibfk_4` FOREIGN KEY (`status_id`) REFERENCES `lookup` (`lookup_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_master`
--

LOCK TABLES `ticket_master` WRITE;
/*!40000 ALTER TABLE `ticket_master` DISABLE KEYS */;
INSERT INTO `ticket_master` VALUES (4,1,11,1,'reason',1,1,1,'2023-11-28 12:43:48','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(5,1,11,2,'reason-1',1,1,1,'2023-11-30 08:50:55','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL);
/*!40000 ALTER TABLE `ticket_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_pk` int(11) NOT NULL AUTO_INCREMENT,
  `user_displayname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `phone_no` varchar(10) NOT NULL,
  `office_phone_no` varchar(100) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `designation_id` int(11) DEFAULT NULL,
  `reporting_manager` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `createdon` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deletedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createdby` int(11) NOT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  `approvedby` int(11) DEFAULT NULL,
  `state_id` int(11) NOT NULL,
  `consistency_id` int(11) DEFAULT NULL,
  `mandal_id` int(11) DEFAULT NULL,
  `division_id` int(11) DEFAULT NULL,
  `sachivalayam_id` int(11) DEFAULT NULL,
  `village_id` int(11) DEFAULT NULL,
  `is_first_login` tinyint(1) DEFAULT 1,
  `otp` int(11) DEFAULT NULL,
  `district_id` int(11) NOT NULL,
  `part_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_pk`),
  UNIQUE KEY `phone_no_UNIQUE` (`phone_no`),
  KEY `village_id` (`village_id`),
  KEY `users_ibfk_1` (`reporting_manager`),
  KEY `users_ibfk_4` (`consistency_id`),
  KEY `users_ibfk_5` (`mandal_id`),
  KEY `users_ibfk_6` (`division_id`),
  KEY `users_ibfk_7` (`sachivalayam_id`),
  KEY `users_ibfk_3` (`state_id`),
  KEY `users_ibfk_2_idx` (`designation_id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`reporting_manager`) REFERENCES `users` (`user_pk`),
  CONSTRAINT `users_ibfk_2` FOREIGN KEY (`designation_id`) REFERENCES `lookup` (`lookup_pk`),
  CONSTRAINT `users_ibfk_3` FOREIGN KEY (`state_id`) REFERENCES `states` (`state_pk`),
  CONSTRAINT `users_ibfk_4` FOREIGN KEY (`consistency_id`) REFERENCES `constituencies` (`consistency_pk`),
  CONSTRAINT `users_ibfk_5` FOREIGN KEY (`mandal_id`) REFERENCES `mandals` (`mandal_pk`),
  CONSTRAINT `users_ibfk_6` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`division_pk`),
  CONSTRAINT `users_ibfk_7` FOREIGN KEY (`sachivalayam_id`) REFERENCES `sachivalayam` (`sachivalayam_pk`),
  CONSTRAINT `users_ibfk_9` FOREIGN KEY (`village_id`) REFERENCES `villages` (`village_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (10,'K Manikanta','K Manikanta','1234','9985079957',NULL,NULL,NULL,33,NULL,1,'2023-11-27 12:16:01','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,NULL,NULL,NULL,1,NULL,6,NULL),(11,'A.Aabeed','A.Aabeed','1234','9398979098',NULL,NULL,NULL,34,NULL,1,'2023-11-27 12:49:13','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,NULL,NULL,1,NULL,6,NULL),(12,'Geddi Balaji','Geddi Balaji','1234','7675924520',NULL,NULL,NULL,35,NULL,1,'2023-11-27 12:54:10','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,25,NULL,1,NULL,6,NULL),(18,'B.Sri Hari','B.Sri Hari','1234','8919757345',NULL,NULL,NULL,33,NULL,1,'2023-12-01 08:10:09','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,NULL,NULL,NULL,1,NULL,6,NULL),(19,'K.Lokesh','K.Lokesh','1234','9160308205',NULL,NULL,NULL,34,NULL,1,'2023-12-01 10:05:40','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,17,NULL,NULL,1,NULL,6,NULL),(20,'P.Lokesh','P.Lokesh','1234','8639430813',NULL,NULL,NULL,34,NULL,1,'2023-12-01 10:05:40','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,18,NULL,NULL,1,NULL,6,NULL),(21,'P.Guna Sekhar Reddy','P.Guna Sekhar Reddy','1234','9642824182',NULL,NULL,NULL,34,NULL,1,'2023-12-01 10:05:40','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,19,NULL,NULL,1,NULL,6,NULL),(22,'Madasi Nagarjuna','Madasi Nagarjuna','1234','8686787377',NULL,NULL,NULL,35,NULL,1,'2023-12-01 10:53:37','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,26,NULL,1,NULL,6,NULL),(23,'Angereddy Rajasekhar','Angereddy Rajasekhar','1234','8328180079',NULL,NULL,NULL,35,NULL,1,'2023-12-01 10:53:37','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,27,NULL,1,NULL,6,NULL),(24,'Valkuntapathi Reddappa','Valkuntapathi Reddappa','1234','9700070005',NULL,NULL,NULL,35,NULL,1,'2023-12-01 10:53:37','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,28,NULL,1,NULL,6,NULL),(25,'T Surya Prakash','T Surya Prakash','1234','7330074743',NULL,NULL,NULL,35,NULL,1,'2023-12-01 10:53:37','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,29,NULL,1,NULL,6,NULL),(26,'N Harikrishna','N Harikrishna','1234','9182743681',NULL,NULL,NULL,35,NULL,1,'2023-12-01 10:53:37','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,30,NULL,1,NULL,6,NULL),(27,'K.Hemanth Kumar','K.Hemanth Kumar','1234','9391162281',NULL,NULL,NULL,35,NULL,1,'2023-12-01 10:53:37','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,31,NULL,1,NULL,6,NULL),(28,'N Giribabu','N Giribabu','1234','7989732019',NULL,NULL,NULL,35,NULL,1,'2023-12-01 12:47:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,17,NULL,NULL,1,NULL,6,NULL),(29,'G Prakash','G Prakash','1234','9392432355',NULL,NULL,NULL,35,NULL,1,'2023-12-01 12:47:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,17,NULL,NULL,1,NULL,6,NULL),(30,'K Soma Sekhar','K Soma Sekhar','1234','9390773818',NULL,NULL,NULL,35,NULL,1,'2023-12-01 12:47:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,17,NULL,NULL,1,NULL,6,NULL),(31,'P Somasekhar','P Somasekhar','1234','6300788037',NULL,NULL,NULL,35,NULL,1,'2023-12-01 12:47:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,17,NULL,NULL,1,NULL,6,NULL),(32,'P.Siva Prasad','P.Siva Prasad','1234','6301933292',NULL,NULL,NULL,35,NULL,1,'2023-12-01 12:47:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,17,NULL,NULL,1,NULL,6,NULL),(33,'V Tariminanda','V Tariminanda','1234','7032956449',NULL,NULL,NULL,35,NULL,1,'2023-12-01 12:57:21','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,18,NULL,NULL,1,NULL,6,NULL),(34,'Dinesh Kumar M','Dinesh Kumar M','1234','8688376683',NULL,NULL,NULL,35,NULL,1,'2023-12-01 12:57:21','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,18,NULL,NULL,1,NULL,6,NULL),(35,'Karteek Varlla','Karteek Varlla','1234','7093838463',NULL,NULL,NULL,35,NULL,1,'2023-12-01 12:57:21','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,18,NULL,NULL,1,NULL,6,NULL),(36,'Battala Chaitanya','Battala Chaitanya','1234','9515681010',NULL,NULL,NULL,35,NULL,1,'2023-12-01 12:57:21','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,18,NULL,NULL,1,NULL,6,NULL),(37,'Kumar Bagadi','Kumar Bagadi','1234','9398464795',NULL,NULL,NULL,35,NULL,1,'2023-12-01 13:10:46','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,19,NULL,NULL,1,NULL,6,NULL),(38,'K.Sai Kumar','K.Sai Kumar','1234','7702311232',NULL,NULL,NULL,35,NULL,1,'2023-12-01 13:10:46','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,19,NULL,NULL,1,NULL,6,NULL),(39,'V DEVENDRA','V DEVENDRA','1234','9553269014',NULL,NULL,NULL,35,NULL,1,'2023-12-01 13:10:46','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,19,NULL,NULL,1,NULL,6,NULL),(40,'K Balaji','K Balaji','1234','7799486416',NULL,NULL,NULL,35,NULL,1,'2023-12-01 13:10:46','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,19,NULL,NULL,1,NULL,6,NULL),(41,'M Rohith','M Rohith','1234','6303346498',NULL,NULL,NULL,35,NULL,1,'2023-12-01 13:10:46','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,19,NULL,NULL,1,NULL,6,NULL),(42,'S.Charan','S.Charan','1234','9398297963',NULL,NULL,NULL,35,NULL,1,'2023-12-01 13:34:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,13,NULL,NULL,1,NULL,6,NULL),(43,'Nagooru Sameevulla','Nagooru Sameevulla','1234','7013654773',NULL,NULL,NULL,35,NULL,1,'2023-12-01 13:34:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,13,NULL,NULL,1,NULL,6,NULL),(44,'M.KISHORE','M.KISHORE','1234','9908537683',NULL,NULL,NULL,35,NULL,1,'2023-12-01 13:34:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,13,NULL,NULL,1,NULL,6,NULL),(45,'K Nagendra Babu','K Nagendra Babu','1234','9550029871',NULL,NULL,NULL,35,NULL,1,'2023-12-01 13:34:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,13,NULL,NULL,1,NULL,6,NULL),(48,'M Gajendra Reddy','M Gajendra Reddy','1234','9985682040',NULL,NULL,NULL,33,NULL,1,'2023-12-01 14:14:51','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,NULL,NULL,NULL,1,NULL,6,NULL),(49,'B.Sisindri Reddy','B.Sisindri Reddy','1234','7989130140',NULL,NULL,NULL,33,NULL,1,'2023-12-01 14:17:30','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,8,NULL,NULL,NULL,1,NULL,6,NULL),(50,'C.Chandra Sekhar','C.Chandra Sekhar','1234','9154469950',NULL,NULL,NULL,33,NULL,1,'2023-12-01 14:19:51','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,9,NULL,NULL,NULL,1,NULL,6,NULL),(51,'P.Sopma Sekhar','P.Sopma Sekhar','1234','9701708038',NULL,NULL,NULL,34,NULL,1,'2023-12-01 14:23:47','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,6,6,NULL,NULL,1,NULL,6,NULL),(52,'K.Ramesh','K.Ramesh','1234','9573691354',NULL,NULL,NULL,34,NULL,1,'2023-12-01 14:25:13','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,6,7,NULL,NULL,1,NULL,6,NULL),(53,'N Nagendra Kumar','N Nagendra Kumar','1234','9652070998',NULL,NULL,NULL,34,NULL,1,'2023-12-01 14:27:29','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,6,8,NULL,NULL,1,NULL,6,NULL),(54,'S.Fayaz Ahamed','S.Fayaz Ahamed','123','8074708079',NULL,NULL,NULL,34,NULL,1,'2023-12-01 14:29:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,5,9,NULL,NULL,1,NULL,6,NULL),(55,'K.Mohan Reddy','K.Mohan Reddy','1234','8897661280',NULL,NULL,NULL,34,NULL,1,'2023-12-01 14:33:01','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,5,10,NULL,NULL,1,NULL,6,NULL),(56,'S.Bavaji','S.Bavaji','1234','9912803104',NULL,NULL,NULL,34,NULL,1,'2023-12-01 14:35:52','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,5,11,NULL,NULL,1,NULL,6,NULL),(57,'K.Kiran Kumar','K.Kiran Kumar','12334','9010614835',NULL,NULL,NULL,34,NULL,1,'2023-12-01 14:38:59','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,12,NULL,NULL,1,NULL,6,NULL),(58,'VACANT','VACANT','1234','9876543210',NULL,NULL,NULL,34,NULL,1,'2023-12-01 14:41:36','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,13,NULL,NULL,1,NULL,6,NULL),(59,'J.Ravi Teja','J.Ravi Teja','1234','9030769941',NULL,NULL,NULL,34,NULL,1,'2023-12-01 14:43:46','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,14,NULL,NULL,1,NULL,6,NULL),(60,'G.Lakshmipathi','G.Lakshmipathi','1234','9000743443',NULL,NULL,NULL,34,NULL,1,'2023-12-01 14:46:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,15,NULL,NULL,1,NULL,6,NULL),(61,'K.Giri Babu','K.Giri Babu','1234','7093243213',NULL,NULL,NULL,34,NULL,1,'2023-12-01 15:21:48','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,20,NULL,NULL,1,NULL,6,NULL),(62,'B.Ravi','B.Ravi','1234','8328427108',NULL,NULL,NULL,34,NULL,1,'2023-12-01 15:34:09','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,21,NULL,NULL,1,NULL,6,NULL),(63,'P.Kodandam','P.Kodandam','1234','7207548503',NULL,NULL,NULL,34,NULL,1,'2023-12-01 15:36:21','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,22,NULL,NULL,1,NULL,6,NULL),(64,'B.Vamsi Krishna','B.Vamsi Krishna','1234','7901068582',NULL,NULL,NULL,34,NULL,1,'2023-12-01 15:38:16','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,23,NULL,NULL,1,NULL,6,NULL),(65,'vacant','vacant','1234','987654321',NULL,NULL,NULL,34,NULL,1,'2023-12-01 15:41:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,8,24,NULL,NULL,1,NULL,6,NULL),(66,'M.Shanmugam','M.Shanmugam','1234','7997411721',NULL,NULL,NULL,34,NULL,1,'2023-12-01 16:12:35','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,8,25,NULL,NULL,1,NULL,6,NULL),(67,'K.Vijay Kumar','K.Vijay Kumar','1234','8919832001',NULL,NULL,NULL,34,NULL,1,'2023-12-01 16:17:39','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,8,26,NULL,NULL,1,NULL,6,NULL),(68,'M.Sasikumar','M.Sasikumar','1234','9666600348',NULL,NULL,NULL,34,NULL,1,'2023-12-01 16:20:27','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,8,27,NULL,NULL,1,NULL,6,NULL),(69,'P.Dilip Kumar Reddy','P.Dilip Kumar Reddy','1234','8096655536',NULL,NULL,NULL,34,NULL,1,'2023-12-01 16:22:21','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,8,28,NULL,NULL,1,NULL,6,NULL),(70,'K.Bhaskar Reddy','K.Bhaskar Reddy','1234','9100608627',NULL,NULL,NULL,34,NULL,1,'2023-12-01 16:24:04','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,8,29,NULL,NULL,1,NULL,6,NULL),(71,'E.Mahendra','E.Mahendra','1234','9010959927',NULL,NULL,NULL,34,NULL,1,'2023-12-01 16:27:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,8,30,NULL,NULL,1,NULL,6,NULL),(72,'P.Karthik','P.Karthik','1234','9398687059',NULL,NULL,NULL,34,NULL,1,'2023-12-01 16:29:22','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,8,31,NULL,NULL,1,NULL,6,NULL),(73,'D.Azees','D.Azees','1234','9182585511',NULL,NULL,NULL,34,NULL,1,'2023-12-01 16:33:09','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,8,32,NULL,NULL,1,NULL,6,NULL),(74,'K.Prathap Reddy','K.Prathap Reddy','1234','8143232205',NULL,NULL,NULL,34,NULL,1,'2023-12-01 16:36:07','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,8,33,NULL,NULL,1,NULL,6,NULL),(75,'K Reddy Prasad','K Reddy Prasad','1234','9550254831',NULL,NULL,NULL,35,NULL,1,'2023-12-01 16:44:24','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,12,NULL,NULL,1,NULL,6,NULL),(76,'K Thulasi Ram','K Thulasi Ram','1234','9966181395',NULL,NULL,NULL,35,NULL,1,'2023-12-01 16:50:47','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,12,NULL,NULL,1,NULL,6,NULL),(77,'R Muniraja','R Muniraja','1234','8008299382',NULL,NULL,NULL,35,NULL,1,'2023-12-02 00:10:41','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,12,NULL,NULL,1,NULL,6,NULL),(78,'K.Prakash','K.Prakash','1234','9391205195',NULL,NULL,NULL,35,NULL,1,'2023-12-02 00:14:10','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,12,NULL,NULL,1,NULL,6,NULL),(79,'G.Ramesh','G.Ramesh','1234','9959656533',NULL,NULL,NULL,35,NULL,1,'2023-12-02 00:22:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,12,NULL,NULL,1,NULL,6,NULL),(80,'Jyotheeswar Reddy K','Jyotheeswar Reddy K','1234','8187884802',NULL,NULL,NULL,35,NULL,1,'2023-12-02 00:25:47','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,15,NULL,NULL,1,NULL,6,NULL),(81,'T.Venkatesh','T.Venkatesh','1234','9347015374',NULL,NULL,NULL,35,NULL,1,'2023-12-02 00:29:18','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,15,NULL,NULL,1,NULL,6,NULL),(82,'N.Lekha Raju','N.Lekha Raju','1234','8886847669',NULL,NULL,NULL,35,NULL,1,'2023-12-02 00:32:22','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,15,NULL,NULL,1,NULL,6,NULL),(83,'S.Gurunath','S.Gurunath','1234','8096292519',NULL,NULL,NULL,35,NULL,1,'2023-12-02 00:35:11','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,15,NULL,NULL,1,NULL,6,NULL),(84,'N Purushotham','N Purushotham','1234','7731088724',NULL,NULL,NULL,35,NULL,1,'2023-12-02 01:13:41','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,14,NULL,NULL,1,NULL,6,NULL),(85,'D.Nane','D.Nane','1234','6281350891',NULL,NULL,NULL,35,NULL,1,'2023-12-02 01:15:16','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,14,NULL,NULL,1,NULL,6,NULL),(86,'Sarath Kumar','Sarath Kumar','1234','7569669401',NULL,NULL,NULL,35,NULL,1,'2023-12-02 01:17:04','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,14,NULL,NULL,1,NULL,6,NULL),(87,'Hari Babu M','Hari Babu M','1234','7032298559',NULL,NULL,NULL,35,NULL,1,'2023-12-02 01:18:32','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,14,NULL,NULL,1,NULL,6,NULL),(88,'Jeevarathnam Reddy','Jeevarathnam Reddy','1234','6303621325',NULL,NULL,NULL,35,NULL,1,'2023-12-02 01:20:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,14,NULL,NULL,1,NULL,6,NULL),(89,'S Madhu','S Madhu','1234','9848534569',NULL,NULL,NULL,35,NULL,1,'2023-12-02 01:36:59','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,21,NULL,NULL,1,NULL,6,NULL),(90,'P Dilli Prasad','P Dilli Prasad','1234','9000704694',NULL,NULL,NULL,35,NULL,1,'2023-12-02 01:38:43','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,21,NULL,NULL,1,NULL,6,NULL),(91,'B.Damodaram Reddy','B.Damodaram Reddy','1234','9652633509',NULL,NULL,NULL,35,NULL,1,'2023-12-02 01:40:42','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,21,NULL,NULL,1,NULL,6,NULL),(92,'Mukkoti Samadhi','Mukkoti Samadhi','1234','8639688754',NULL,NULL,NULL,35,NULL,1,'2023-12-02 01:54:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,23,NULL,NULL,1,NULL,6,NULL),(93,'Pattumarpu Srinivas','Pattumarpu Srinivas','1234','8309527987',NULL,NULL,NULL,35,NULL,1,'2023-12-02 01:56:36','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,23,NULL,NULL,1,NULL,6,NULL),(94,'Oruganti Chandra Sekhar','Oruganti Chandra Sekhar','1234','9985873625',NULL,NULL,NULL,35,NULL,1,'2023-12-02 01:58:22','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,23,NULL,NULL,1,NULL,6,NULL),(95,'Vanarla Dilli Basha','Vanarla Dilli Basha','8901','7702690114',NULL,NULL,NULL,35,NULL,1,'2023-12-02 02:00:26','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,23,NULL,NULL,1,NULL,6,NULL),(96,'A Leela Krishna','A Leela Krishna','1234','9676093346',NULL,NULL,NULL,35,NULL,1,'2023-12-02 05:45:24','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,20,NULL,NULL,1,NULL,6,NULL),(97,'Bodireddy Chiranjeevi','Bodireddy Chiranjeevi','4567','8897773627',NULL,NULL,NULL,35,NULL,1,'2023-12-02 05:48:47','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,20,NULL,NULL,1,NULL,6,NULL),(98,'K Thulasiram Reddy','K Thulasiram Reddy','5678','8886169589',NULL,NULL,NULL,35,NULL,1,'2023-12-02 05:51:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,22,NULL,NULL,1,NULL,6,NULL),(99,'K Venkataramana Reddy','K Venkataramana Reddy','1234','9848803057',NULL,NULL,NULL,35,NULL,1,'2023-12-02 05:53:02','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,4,22,NULL,NULL,1,NULL,6,NULL),(100,'Mahesh T','Mahesh T','1234','7893318622',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:08:05','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,6,7,NULL,NULL,1,NULL,6,NULL),(101,'Avula Mouneesh','Avula Mouneesh','1234','9880007452',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:09:41','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,6,7,NULL,NULL,1,NULL,6,NULL),(102,'G Ashok Kumar','G Ashok Kumar','1234','9502706145',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:11:59','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,6,7,NULL,NULL,1,NULL,6,NULL),(103,'Jagili Rasaiah','Jagili Rasaiah','1234','9701129285',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:14:44','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,6,7,NULL,NULL,1,NULL,6,NULL),(104,'G Janardhan Reddy','G Janardhan Reddy','1234','9490837428',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:17:24','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,6,6,NULL,NULL,1,NULL,6,NULL),(105,'G Sudhakar Reddy','G Sudhakar Reddy','1234','9000038851',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:18:53','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,6,6,NULL,NULL,1,NULL,6,NULL),(106,'Nagineni Dhananjaya','Nagineni Dhananjaya','1234','9160232255',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:20:40','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,6,6,NULL,NULL,1,NULL,6,NULL),(107,'Etimarpu Ganesh Achari','Etimarpu Ganesh Achari','1234','9704439169',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:23:12','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,6,6,NULL,NULL,1,NULL,6,NULL),(108,'Ramoji Venkatesh','Ramoji Venkatesh','1234','7702730863',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:24:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,6,8,NULL,NULL,1,NULL,6,NULL),(109,'VACANT','VACANT','1234','1234567890',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:27:40','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,6,8,NULL,NULL,1,NULL,6,NULL),(110,'Bhuvaneswar Reddy V','Bhuvaneswar Reddy V','1234','7893996626',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:32:53','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,6,8,NULL,NULL,1,NULL,6,NULL),(111,'G Gnayasekhar','G Gnayasekhar','1234','9985189144',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:46:53','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,5,10,NULL,NULL,1,NULL,6,NULL),(112,'P Khaja Peer','P Khaja Peer','1234','7893432811',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:48:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,5,10,NULL,NULL,1,NULL,6,NULL),(113,'K Sekhar','K Sekhar','1234','9573687383',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:49:39','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,5,10,NULL,NULL,1,NULL,6,NULL),(114,'Boyani Suresh','Boyani Suresh','1234','9603702856',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:51:37','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,5,11,NULL,NULL,1,NULL,6,NULL),(115,'G Vijay Kumar','G Vijay Kumar','1234','9154458676',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:54:37','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,5,11,NULL,NULL,1,NULL,6,NULL),(116,'C Viswanadhareddy','C Viswanadhareddy','1234','9985111855',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:57:47','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,5,11,NULL,NULL,1,NULL,6,NULL),(117,'Kishore Reddy','Kishore Reddy','1234','8500013053',NULL,NULL,NULL,35,NULL,1,'2023-12-02 06:59:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,5,11,NULL,NULL,1,NULL,6,NULL),(118,'O Manikanta Reddy','O Manikanta Reddy','1234','9182218173',NULL,NULL,NULL,35,NULL,1,'2023-12-02 07:04:21','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,5,9,NULL,NULL,1,NULL,6,NULL),(119,'P Bareshavalli','P Bareshavalli','1234','7993313243',NULL,NULL,NULL,35,NULL,1,'2023-12-02 07:05:35','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,5,9,NULL,NULL,1,NULL,6,NULL),(120,'Shaik Riyaz','Shaik Riyaz','1234','9000266065',NULL,NULL,NULL,35,NULL,1,'2023-12-02 07:07:11','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,5,9,NULL,NULL,1,NULL,6,NULL),(122,'Ch Ramu ','Ch Ramu','1234','5555555555',NULL,NULL,NULL,36,NULL,1,'2023-12-04 06:23:37','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,NULL,1,NULL,6,2),(123,'P Shiva','P Shiva','1234','6666666666',NULL,NULL,'email',37,NULL,1,'2023-12-04 06:26:40','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,1,NULL,6,2),(124,'Mohith Reddy','Mohith Reddy','1234','1111122222',NULL,NULL,NULL,32,NULL,1,'2023-12-04 12:02:53','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,NULL,NULL,NULL,NULL,1,NULL,6,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `villages`
--

DROP TABLE IF EXISTS `villages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `villages` (
  `village_pk` int(11) NOT NULL AUTO_INCREMENT,
  `village_name` varchar(100) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `createdon` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deletedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createdby` int(11) NOT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  `part_no` int(15) NOT NULL,
  PRIMARY KEY (`village_pk`),
  KEY `part_no_idx` (`part_no`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `villages`
--

LOCK TABLES `villages` WRITE;
/*!40000 ALTER TABLE `villages` DISABLE KEYS */;
INSERT INTO `villages` VALUES (7,'KARANAM VARI PALLI',1,'2023-11-27 06:45:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,2),(8,'KAMSALA PALLI',1,'2023-11-27 06:45:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,2),(9,'MALA PALLI',1,'2023-11-27 06:45:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,2),(10,'DIGUVA MADIGA PALLI',1,'2023-11-27 06:45:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,2),(11,'DEVARAVANDLA PALLI',1,'2023-11-27 06:45:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,2),(12,'PENUGONDAVARI PALLI',1,'2023-11-27 06:45:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,2),(13,'village',1,'2023-11-28 11:04:40','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,2),(14,'village-1',1,'2023-11-28 12:45:12','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,2),(15,'village-3',1,'2023-11-30 09:01:32','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,2);
/*!40000 ALTER TABLE `villages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voters`
--

DROP TABLE IF EXISTS `voters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voters` (
  `voter_pk` int(11) NOT NULL AUTO_INCREMENT,
  `part_no` int(11) NOT NULL,
  `part_slno` int(11) NOT NULL,
  `voter_name` varchar(100) NOT NULL,
  `voter_id` varchar(10) NOT NULL,
  `guardian` int(11) NOT NULL,
  `guardian_name` varchar(100) NOT NULL,
  `gender` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `volunteer_id` int(11) DEFAULT NULL,
  `gruhasaradhi_id` int(11) DEFAULT NULL,
  `phone_no` varchar(10) NOT NULL,
  `permenent_address` varchar(500) NOT NULL,
  `current_address` varchar(500) NOT NULL,
  `is_resident` tinyint(1) DEFAULT 1,
  `is_active` tinyint(1) DEFAULT 1,
  `createdon` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deletedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createdby` int(11) NOT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  `approvedby` int(11) DEFAULT NULL,
  `state_id` int(11) NOT NULL,
  `consistency_id` int(11) NOT NULL,
  `mandal_id` int(11) NOT NULL,
  `division_id` int(11) NOT NULL,
  `sachivalayam_id` int(11) NOT NULL,
  `village_id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `district_id` int(11) NOT NULL,
  `is_newregistration` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`voter_pk`),
  KEY `state_id` (`state_id`),
  KEY `consistency_id` (`consistency_id`),
  KEY `mandal_id` (`mandal_id`),
  KEY `division_id` (`division_id`),
  KEY `sachivalayam_id` (`sachivalayam_id`),
  KEY `village_id` (`village_id`),
  KEY `guardian` (`guardian`),
  KEY `gender` (`gender`),
  KEY `voters_ibfk_10` (`volunteer_id`),
  KEY `voters_ibfk_11` (`gruhasaradhi_id`),
  CONSTRAINT `voters_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `states` (`state_pk`),
  CONSTRAINT `voters_ibfk_10` FOREIGN KEY (`volunteer_id`) REFERENCES `users` (`user_pk`),
  CONSTRAINT `voters_ibfk_11` FOREIGN KEY (`gruhasaradhi_id`) REFERENCES `users` (`user_pk`),
  CONSTRAINT `voters_ibfk_2` FOREIGN KEY (`consistency_id`) REFERENCES `constituencies` (`consistency_pk`),
  CONSTRAINT `voters_ibfk_3` FOREIGN KEY (`mandal_id`) REFERENCES `mandals` (`mandal_pk`),
  CONSTRAINT `voters_ibfk_4` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`division_pk`),
  CONSTRAINT `voters_ibfk_5` FOREIGN KEY (`sachivalayam_id`) REFERENCES `sachivalayam` (`sachivalayam_pk`),
  CONSTRAINT `voters_ibfk_7` FOREIGN KEY (`village_id`) REFERENCES `villages` (`village_pk`),
  CONSTRAINT `voters_ibfk_8` FOREIGN KEY (`guardian`) REFERENCES `lookup` (`lookup_pk`),
  CONSTRAINT `voters_ibfk_9` FOREIGN KEY (`gender`) REFERENCES `lookup` (`lookup_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voters`
--

LOCK TABLES `voters` WRITE;
/*!40000 ALTER TABLE `voters` DISABLE KEYS */;
INSERT INTO `voters` VALUES (1,2,1,'SAMEEULLA SYED','IAX1916410',16,'SILAR SAHEB SYED',13,33,11,NULL,'9876543210','ccc','ddddd',1,1,'2023-11-27 08:12:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'email',6,0),(2,2,5,'PRIYANKA V','IAX1243039',18,'DORASWAMY V',14,29,11,NULL,'9786543210','House Number 1-3','House Number 1-3',1,1,'2023-11-27 08:12:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(3,2,6,'RAJENDRA PRIYANKA','IAX1841527',16,'MUNASWAMY RAJENDRA',13,24,NULL,NULL,'9687543210','House Number 1-3/1/7','House Number 1-3/1/7',1,1,'2023-11-27 08:12:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(4,2,95,'ABDUL MUZEEM SHAIK','IAX3195955',16,'ABDUL MAZEED SHAIK',13,22,NULL,NULL,'9876543201','House Number 1-1','House Number 1-1',1,1,'2023-11-27 09:53:41','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0),(5,2,101,'RAMANAMMA S','IAX1509357',18,'RAMESH BABU S',14,40,NULL,NULL,'9786543201','House Number 1-22','House Number 1-22',1,1,'2023-11-27 09:53:41','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0),(6,2,102,'MUNIM MOGAL','IAX0989576',16,'MAHAMMAD BIG MOGAL',13,32,NULL,NULL,'9687543201','House Number 2-10','House Number 2-10',1,1,'2023-11-27 09:53:41','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6,0),(7,2,187,'MOHAN TALARI','IAX1242981',16,'NARAYANA TALARI',13,56,NULL,NULL,'9876543102','House Number 1-3','House Number 1-3',1,1,'2023-11-27 10:08:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,9,'',6,0),(8,2,188,'SYAMALA','IAX1243054',18,'MOHANA T',14,49,NULL,NULL,'9786543102','House Number 1-4','House Number 1-4',1,1,'2023-11-27 10:08:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,9,'',6,0),(9,2,191,'NAGESWARA TALARI','IAX1242965',16,'VENKATA RAMANA TALARI',13,40,NULL,NULL,'9687543102','House Number 1-6','House Number 1-6',1,1,'2023-11-27 10:08:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,9,'',6,0),(10,2,285,'CHANDU JAMPE','IAX3077484',16,'VIJAYA KUMAR J',13,22,NULL,NULL,'9876543103','House Number 1-0','House Number 1-0',1,1,'2023-11-27 10:22:51','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,10,'',6,0),(11,2,284,'Deepa Jampe','IAX3150059',16,'Vijay kumar Jampe',14,20,NULL,NULL,'9786543103','House Number 00','House Number 00',1,1,'2023-11-27 10:22:51','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,10,'',6,0),(12,2,287,'Mahesh Kommu','IAX3241734',16,'Venkataramana Kommu',13,19,NULL,NULL,'9687543103','House Number 1-1','House Number 1-1',1,1,'2023-11-27 10:22:51','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,10,'',6,0),(26,2,2,'ZEENAT SYED','IAX1916378',18,'SAMEEULLA SYED',14,31,NULL,NULL,'9876543210','House Number 1-1','House Number 1-1',1,1,'2023-12-02 09:01:52','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(27,2,3,'SEEMA S','IAX1897867',18,'CHAN BASHA S',14,28,NULL,NULL,'9876543210','House Number 1-1','House Number 1-1',1,1,'2023-12-02 09:56:03','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(28,2,4,'MASTHAN VALI SHAIK','IAX0989626',16,'IBRAHEEM SAHEB SHAIK',13,41,NULL,NULL,'9876543210','House Number 1-2','House Number 1-2',1,1,'2023-12-02 10:01:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(29,2,8,'ANIL KUMAR G','IAX2049872',16,'RAMAIAH G',13,25,NULL,NULL,'9876543210','House Number 1-12','House Number 1-12',1,1,'2023-12-02 10:10:10','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(30,2,7,'SHARU KHAN PATHAN','IAX1553958',16,'RAHAMATHULLA KHAN',13,31,NULL,NULL,'9876543210','House Number 1-12','House Number 1-12',1,1,'2023-12-02 10:14:24','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(31,2,9,'M BAAVAJI','IAX2041382',16,'S MAHABOOB PATHAN',13,28,NULL,NULL,'9876543210','House Number 1-5','House Number 1-5',1,1,'2023-12-02 10:41:09','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(32,2,10,'SUNEEL KUMAR G','IAX2049914',16,'RAMANAIAH G',13,24,NULL,NULL,'9876543210','House Number 1-12','House Number 1-12',1,1,'2023-12-02 10:45:51','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(33,2,11,'Anarkhali Shaik','IAX1888312',18,'Riyaze S',14,31,NULL,NULL,'9876543210','House Number 1-13','House Number 1-13',1,1,'2023-12-02 10:54:07','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(34,2,12,'Sreenivasulu J','IAX1948520',16,'Krishnajah J',13,25,NULL,NULL,'9876543210','House Number 1-15','House Number 1-15',1,1,'2023-12-02 10:58:54','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(35,2,13,'Kalpana Thalla','IAX1887371',18,'Prudvi Raj T',14,31,NULL,NULL,'9876543210','House Number 1-16','House Number 1-16',1,1,'2023-12-02 11:02:43','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(36,2,14,'Nagineni Tejaswini','IAX3225331',18,'Rajesh Golla',14,21,NULL,NULL,'9876543210','House Number 1-21','House Number 1-21',1,1,'2023-12-02 11:07:55','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(37,2,15,'NAGESH KUMAR BOMMAJI','IAX2044238',16,'CHALAPATHI BOMMAJI',13,23,NULL,NULL,'9876543210','House Number 1-22','House Number 1-22',1,1,'2023-12-02 11:13:19','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(38,2,16,'Rajesh J','IAX1878776',16,'Ravi J',13,24,NULL,NULL,'9876543210','House Number 1-43','House Number 1-43',1,1,'2023-12-02 11:16:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(39,2,17,'S KHADHAR BASHA SHAIK','IAX1817329',16,'SHAIK SHAMEER SAHEB',14,48,NULL,NULL,'9876543210','House Number 1-112','House Number 1-112',1,1,'2023-12-02 11:28:12','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(40,2,18,'S ARIFUN','IAX2041416',18,'S MAHABOOB BASHA SHAIK',13,50,NULL,NULL,'9876543210','House Number 1-81','House Number 1-81',1,1,'2023-12-02 11:46:43','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(41,2,19,'RAMA DEVI SUNDU PALLI','IAX1243021',18,'SIDDAIAH SUNDU PALLI',14,34,NULL,NULL,'9876543210','House Number 2-1','House Number 2-1',1,1,'2023-12-02 11:53:39','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(42,2,20,'Mahesh Tummala','IAX1948405',16,'Venkatramana T',13,23,NULL,NULL,'9876543210','House Number 2-75','House Number 2-75',1,1,'2023-12-02 11:57:14','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(43,2,21,'D.ANAND','FDJ1080589',16,'VENKATARAMAIAH',13,40,NULL,NULL,'9876543210','House Number 2-129','House Number 2-129',1,1,'2023-12-02 12:00:05','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(44,2,22,'JEE IRMALA','IAX0010801',18,' JEE RAJANNA',14,51,NULL,NULL,'9876543210','House Number 3-1','House Number 3-1',1,1,'2023-12-02 12:03:02','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(45,2,23,'G RAJANNA','IAX0010694',16,'G CHINNABBA NAIDU',13,56,NULL,NULL,'9876543210','House Number 3-1','House Number 3-1',1,1,'2023-12-02 12:08:02','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(46,2,24,'G.MUDDUSVAMI','IAX2478725',16,'CHINNABBA',13,61,NULL,NULL,'9876543210','House Number 3-1','House Number 3-1',1,1,'2023-12-02 12:11:25','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(47,2,25,'JEE MUDDU SVAMI','IAX0787325',16,'JEE CHINNABBA',13,68,NULL,NULL,'9876543210','House Number 3-1','House Number 3-1',1,1,'2023-12-02 12:19:13','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(48,2,26,'G HIMABINDU','IAX0010819',18,'G CHINNABBA NAIDU',14,38,NULL,NULL,'9876543210','House Number 3-1','House Number 3-1',1,1,'2023-12-02 12:29:30','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(49,2,27,'G.PARVATAALU','FDJ2542827',18,'CHINNABBA',14,84,NULL,NULL,'9876543210','House Number 3-1','House Number 3-1',1,1,'2023-12-02 12:34:28','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(50,2,28,'G.NARAYANAMMA','IAX2478717',18,'MADU SVAMI',14,52,NULL,NULL,'9876543210','House Number 3-1','House Number 3-1',1,1,'2023-12-02 12:38:34','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(51,2,29,'P.SUJINI','FDJ2541050',18,'CHANDRASEHAR NAIDU',14,41,NULL,NULL,'9876543210','House Number 3-2','House Number 3-2',1,1,'2023-12-02 12:41:57','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(52,2,30,'P.CHANDERSEKHAR NAIDU','IAX2478733',16,'KONDAMNAYUDU',13,56,NULL,NULL,'9876543210','House Number 3-2','House Number 3-2',1,1,'2023-12-03 05:49:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(53,2,31,'P.JAYAMMA','IAX2478741',18,'NAGAPPA NAIDU',14,64,NULL,NULL,'9876543210','House Number 3-3','House Number 3-3',1,1,'2023-12-03 05:54:54','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(54,2,32,'P.NAGAPPA NAIDU','IAX2478758',16,'THIRUMALA NAIDU',13,79,NULL,NULL,'9876543210','House Number 3-3','House Number 3-3',1,1,'2023-12-03 06:04:13','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(55,2,33,'S.JAHARABI','IAX0322057',18,'IBRAHEEMSAB',14,66,NULL,NULL,'9876543210','House Number 3-8/A','House Number 3-8/A',1,1,'2023-12-03 06:11:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(56,2,34,'S DIL SHAD','IAX0322297',18,'S RIJVAN',14,36,NULL,NULL,'9876543210','House Number 3-8A','House Number 3-8A',1,1,'2023-12-03 06:16:37','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(57,2,35,'S.JARINABEE','IAX0322065',18,'MASTANSAB',14,40,NULL,NULL,'9876543210','House Number 3-9','House Number 3-9',1,1,'2023-12-03 06:29:51','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(58,2,36,'S SHAJANA','IAX0322313',18,'S MASTAN',14,34,NULL,NULL,'9876543210','House Number 3-9A','House Number 3-9A',1,1,'2023-12-03 06:40:47','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(59,2,37,'S GOHATA JAN','IAX0322321',18,'S AJA SAHEB',14,72,NULL,NULL,'9876543210','House Number 3-10','House Number 3-10',1,1,'2023-12-03 06:44:35','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(60,2,38,'S RASHEEDA','IAX0883744',18,'S KHADAR BASHA',14,48,NULL,NULL,'9876543210','House Number 3-12','House Number 3-12',1,1,'2023-12-03 06:48:32','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(61,2,39,'MASTANSAHEB','IAX2478774',16,'RAHIMANA SABA',13,46,NULL,NULL,'9876543210','House Number 3-12','House Number 3-12',1,1,'2023-12-03 07:01:22','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(62,2,40,'SHAIK HOSSAIN SAHEB','IAX2478782',16,'RAHIMANA SEBA',13,42,NULL,NULL,'9876543210','House Number 3-12','House Number 3-12',1,1,'2023-12-03 07:03:57','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(63,2,41,'ACE SHABANA','IAX0725820',18,'ACE HUSEN SAHEB',14,40,NULL,NULL,'9876543210','House Number 3-12','House Number 3-12',1,1,'2023-12-03 07:07:02','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(64,2,42,'REENAJ S','IAX1242940',16,'PEERAN SAB S',14,28,NULL,NULL,'9876543210','House Number 3-12','House Number 3-12',1,1,'2023-12-03 07:10:23','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(65,2,43,'MAHAMMAD GOUSE SHAIK','IAX1242957',16,'KHADAR BASHA SHAIK',13,29,NULL,NULL,'9876543210','House Number 3-13','House Number 3-13',1,1,'2023-12-03 07:14:36','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(66,2,44,'CHAND BASHA SHAIK','IAX1242973',16,'KHADAR BASHA SHAIK',13,31,NULL,NULL,'9876543210','House Number 3-13','House Number 3-13',1,1,'2023-12-03 07:20:42','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(67,2,45,'SHAIK KAHDERBASHA','IAX2478790',16,'HASANSAHEB',13,65,NULL,NULL,'9876543210','House Number 3-13','House Number 3-13',1,1,'2023-12-03 07:25:08','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(68,2,46,'S.MASTAN','FDJ2775872',16,'KAHDERBASHA',13,38,NULL,NULL,'9876543210','House Number 3-13','House Number 3-13',1,1,'2023-12-03 07:39:04','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(69,2,47,'S.BABJAN','IAX0787333',16,'KHADARBASHA',13,36,NULL,NULL,'9876543210','House Number 3-13','House Number 3-13',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(70,2,48,'ROSHINI SHAIK','IAX1879063',18,'DASTHAGIRI SAHEB SHAIK',14,23,NULL,NULL,'9876543210','House Number 3-13','House Number 3-13',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(71,2,49,'Ruksana Shaik','IAX1948496',16,'Kareemulla S',14,23,NULL,NULL,'9876543210','House Number 3-13','House Number 3-13',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(72,2,50,'PATHAN HOSSAIN KHAN','IAX2478808',16,'LALKHAN',13,68,NULL,NULL,'9876543210','House Number 3-16','House Number 3-16',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(73,2,51,'SAYYAD MAHABOOB','IAX2478816',16,'HOSSAINSAHEB',13,57,NULL,NULL,'9876543210','House Number 3-16','House Number 3-16',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(74,2,52,'SAYYAD ENTIYAZ','IAX2478824',16,'SHILARSAHEBA',13,40,NULL,NULL,'9876543210','House Number 3-16','House Number 3-16',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(75,2,53,'S RIJVAN','IAX0319087',16,'S SHIEL SAHEB',13,37,NULL,NULL,'9876543210','House Number 3-16','House Number 3-16',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(76,2,54,'S.ANARKALI','IAX0322073',18,'MAHAMAD RAFI',14,36,NULL,NULL,'9876543210','House Number 3-26/A','House Number 3-26/A',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(77,2,55,'MOGAL MAHAMMADBEGE','IAX0685305',16,'KHAADARBEGE',13,59,NULL,NULL,'9876543210','House Number 3-39','House Number 3-39',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(78,2,56,'S DASTHIGIRI SAHEB','IAX0685289',16,'KHADHARSAHEB',13,54,NULL,NULL,'9876543210','House Number 3-57','House Number 3-57',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(79,2,57,'YASMEEN SHAIK','IAX1913847',16,'MASTHAN SAHEB SHAIK',14,24,NULL,NULL,'9876543210','House Number 3-62','House Number 3-62',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(80,2,58,'Swaroopa S','IAX1886282',16,'Ramachandra S',14,25,NULL,NULL,'9876543210','House Number 3-72','House Number 3-72',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(81,2,59,'ASHOK KUMAR J','IAX1471713',16,'KESAVULU J',13,38,NULL,NULL,'9876543210','House Number 3-72','House Number 3-72',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(82,2,60,'PRATAP B','IAX1471820',16,'SIDDAIAH B',13,29,NULL,NULL,'9876543210','House Number 3-75','House Number 3-75',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(83,2,61,'NAGALAKSHMI SUNDUPALLI','IAX1765619',18,'MURALI SUNDUPALLI',14,36,NULL,NULL,'9876543210','House Number 3-78','House Number 3-78',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(84,2,62,'ANIL KUMAR SAGINAM','IAX1243013',16,'NAGAIAH SAGINAM',13,31,NULL,NULL,'9876543210','House Number 3-91','House Number 3-91',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(85,2,63,'ANIL KUMAR S','IAX1471721',16,'SIDDAIAH S',13,28,NULL,NULL,'9876543210','House Number 3-96','House Number 3-96',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(86,2,64,'ALIVELU','IAX0321778',18,'RAMAIAH',14,70,NULL,NULL,'9876543210','House Number 4-83A','House Number 4-83A',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(87,2,65,'S DIVYA','IAX1917038',16,'S ANAND',14,24,NULL,NULL,'9876543210','House Number 6-23','House Number 6-23',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(88,2,66,'NANDINI PACHARLLA','IAX1916295',18,'SURENDRA PACHARLLA',14,31,NULL,NULL,'9876543210','House Number 6-28','House Number 6-28',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(89,2,67,'P RAMESH BABU','IAX1660943',16,'P BHASKARA',13,28,NULL,NULL,'9876543210','House Number 6-29','House Number 6-29',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(90,2,68,'VENKATA SIDDAMMA J','IAX2049781',18,'VENKATA RAMANA J',14,61,NULL,NULL,'9876543210','House Number 6-30','House Number 6-30',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(91,2,69,'VANI K','IAX2049880',18,'RAJENDRA K',14,28,NULL,NULL,'9876543210','House Number 7-1','House Number 7-1',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(92,2,70,'BABU G','IAX2049906',16,'NAGALESU G',13,51,NULL,NULL,'9876543210','House Number 7-1','House Number 7-1',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(93,2,71,'KAVITHA JAMPE','IAX2041069',16,'VENKATARAMANA JAMPE',14,27,NULL,NULL,'9876543210','House Number 7-44','House Number 7-44',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(94,2,72,'Sjida Shaik','IAX1887199',16,'Syed Rafi S',14,25,NULL,NULL,'9876543210','House Number 9-14','House Number 9-14',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(95,2,73,'THoheeda SYEAD','IAX3164902',16,'SYEAD RAFI SYEAD',14,19,NULL,NULL,'9876543210','House Number 9-14','House Number 9-14',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(96,2,74,'Musthafa S','IAX1886019',16,'Raheman Saheb S SHAIK',13,65,NULL,NULL,'9876543210','House Number 9-18','House Number 9-18',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(97,2,75,'MOHAMMED YASEER HUSSAIN','IAX1553917',16,'MASTHAN SAHEB SHAIK',13,28,NULL,NULL,'9876543210','House Number 9-26','House Number 9-26',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(98,2,76,'Riyaze Shaik','IAX1886324',16,'Azeem Saheb S',13,41,NULL,NULL,'9876543210','House Number 9-30','House Number 9-30',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(99,2,77,'Haseena Shaik','IAX1885938',18,'Hidai Tulla S',14,37,NULL,NULL,'9876543210','House Number 9-30','House Number 9-30',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(100,2,78,'Hussen Bi Shaik','IAX1887363',18,'Athaulla S',14,58,NULL,NULL,'9876543210','House Number 9-38','House Number 9-38',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(101,2,79,'A VENKATA RAMANA RAO','IAX1840065',16,'A SUDHAKAR',13,40,NULL,NULL,'9876543210','House Number 9-598','House Number 9-598',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(102,2,80,'GOPI KRISHNA THOTA','IAX1840073',16,'RAMARAO THOTA',13,27,NULL,NULL,'9876543210','House Number 11-212A','House Number 11-212A',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(103,2,81,'M KUSUMA KUMARI','IAX1839125',18,'T VENKATESH',14,30,NULL,NULL,'9876543210','House Number 12-464','House Number 12-464',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(104,2,82,'BUKKE GANESH NAIK','IAX1839521',16,'BUKKE BALAY NAIK',13,29,NULL,NULL,'9876543210','House Number 21-12-19','House Number 21-12-19',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(105,2,83,'BEEBIJAN PATAN','IAX2246577',16,'MADAR KHAN PATAN',14,66,NULL,NULL,'9876543210','House Number 22-9','House Number 22-9',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(106,2,84,'M PUSHPA','IAX1839893',18,'M VENKATAMUNI',14,47,NULL,NULL,'9876543210','House Number 22-9-26/B','House Number 22-9-26/B',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(107,2,85,'Chandrasekar J','IAX1916139',16,'Nagaraju J',13,26,NULL,NULL,'9876543210','House Number 1012','House Number 1012',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(108,2,86,'Arpana Bhide','IAX1820232',18,'Narendra H',14,42,NULL,NULL,'9876543210','House Number 102','House Number 102',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(109,2,87,'HEMALATHA G','IAX1655976',18,'RAMESH G',14,27,NULL,NULL,'9876543210','House Number KARNAM VARI PALLI','House Number KARNAM VARI PALLI',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(110,2,88,'KASIM BE S','IAX1655950',18,'KAJA SAHEB S',14,59,NULL,NULL,'9876543210','House Number KARNAM VARI PALLI','House Number KARNAM VARI PALLI',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(111,2,89,'HARATHI G','IAX1655968',18,'MUNI KRISHNA G',14,32,NULL,NULL,'9876543210','House Number KARNAM VARI PALLI','House Number 3-13',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(112,2,90,'PAVAN V','IAX1655943',16,'VENKATA SIDHULU V',13,29,NULL,NULL,'9876543210','House Number 3-13','House Number 3-13',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(113,2,46,'S.MASTAN','FDJ2775872',16,'KAHDERBASHA',13,38,NULL,NULL,'9876543210','House Number 3-13','House Number 3-13',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(114,2,46,'S.MASTAN','FDJ2775872',16,'KAHDERBASHA',13,38,NULL,NULL,'9876543210','House Number 3-13','House Number 3-13',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(115,2,46,'S.MASTAN','FDJ2775872',16,'KAHDERBASHA',13,38,NULL,NULL,'9876543210','House Number 3-13','House Number 3-13',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(116,2,46,'S.MASTAN','FDJ2775872',16,'KAHDERBASHA',13,38,NULL,NULL,'9876543210','House Number 3-13','House Number 3-13',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(117,2,46,'S.MASTAN','FDJ2775872',16,'KAHDERBASHA',13,38,NULL,NULL,'9876543210','House Number 3-13','House Number 3-13',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(118,2,46,'S.MASTAN','FDJ2775872',16,'KAHDERBASHA',13,38,NULL,NULL,'9876543210','House Number 3-13','House Number 3-13',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(119,2,46,'S.MASTAN','FDJ2775872',16,'KAHDERBASHA',13,38,NULL,NULL,'9876543210','House Number 3-13','House Number 3-13',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(120,2,46,'S.MASTAN','FDJ2775872',16,'KAHDERBASHA',13,38,NULL,NULL,'9876543210','House Number 3-13','House Number 3-13',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0),(121,2,46,'S.MASTAN','FDJ2775872',16,'KAHDERBASHA',13,38,NULL,NULL,'9876543210','House Number 3-13','House Number 3-13',1,1,'2023-12-03 07:51:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6,0);
/*!40000 ALTER TABLE `voters` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-05 11:28:37
