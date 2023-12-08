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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booths`
--

LOCK TABLES `booths` WRITE;
/*!40000 ALTER TABLE `booths` DISABLE KEYS */;
INSERT INTO `booths` VALUES (2,1,6,'booth name','full address booth');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `constituencies`
--

LOCK TABLES `constituencies` WRITE;
/*!40000 ALTER TABLE `constituencies` DISABLE KEYS */;
INSERT INTO `constituencies` VALUES (3,1,6,'Chandragiri',1,'2023-11-26 13:03:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(4,1,6,'Gudur',1,'2023-11-26 13:03:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(5,1,6,'Sullurpeta',1,'2023-11-26 13:03:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(6,1,6,'Venkatagiri',1,'2023-11-26 13:03:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(7,1,6,'Tirupati',1,'2023-11-26 13:03:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(8,1,6,'Srikalahasti',1,'2023-11-26 13:03:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(9,1,6,'Satyavedu',1,'2023-11-26 13:03:20','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(11,1,6,'consistency',1,'2023-11-28 12:31:53','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(12,1,6,'consistency',1,'2023-11-30 07:38:46','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `districts`
--

LOCK TABLES `districts` WRITE;
/*!40000 ALTER TABLE `districts` DISABLE KEYS */;
INSERT INTO `districts` VALUES (6,1,'2023-11-26 11:42:02','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,5,'Tirupati'),(7,1,'2023-11-26 11:42:02','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,5,'Krishna'),(8,1,'2023-11-26 11:42:02','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,5,'Kurnool'),(9,1,'2023-11-26 11:42:02','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,5,'Visakhapatnam'),(10,1,'2023-11-26 11:42:02','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,5,'Anakapalli'),(11,1,'2023-11-26 11:42:02','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,5,'Eluru'),(12,1,'2023-11-26 11:42:02','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,5,'Prakasam'),(13,1,'2023-11-26 11:42:02','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,5,'Guntur'),(14,1,'2023-11-26 11:42:02','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,5,'chittor'),(15,1,'2023-11-26 11:42:02','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,5,'Anantapuramu'),(16,1,'2023-11-28 12:32:55','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,6,'district'),(17,1,'2023-11-30 08:13:54','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,5,'Vizianagaram');
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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lookup`
--

LOCK TABLES `lookup` WRITE;
/*!40000 ALTER TABLE `lookup` DISABLE KEYS */;
INSERT INTO `lookup` VALUES (1,'ticketstatuslist','open',0),(2,'ticketstatuslist','resolved',0),(3,'ticketstatuslist','cancelled',0),(4,'ticketstatuslist','escalated',0),(13,'genderlist','MALE',0),(14,'genderlist','FEMALE',0),(15,'genderlist','OTHERS',0),(16,'guardianlist','FATHER',0),(17,'guardianlist','MOTHER',0),(18,'guardianlist','HUSBAND',0),(19,'attachementtype','PDF',0),(20,'attachementtype','DOC',0),(21,'attachementtype','IMAGE',0),(22,'party_list','NEUTRAL',0),(23,'party_list','YSCRP',0),(24,'party_list','TDP',0),(25,'party_list','CONGRESS',0),(26,'party_list','BJP',0),(27,'party_list','JANASENA',0),(30,'designationlist','CM',0),(31,'designationlist','STATE_LEADER',0),(32,'designationlist','MLA',0),(33,'designationlist','MANDAL_CONVENER/CPRO',0),(34,'designationlist','PRO',0),(35,'designationlist','APRO',0),(36,'designationlist','BOOTH_INCHARGE',0),(37,'designationlist','VOLUNTEER',0),(38,'designationlist','GRUHASARATHI',0),(78,'lookup','value',0),(79,'lookup','valuename',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mandals`
--

LOCK TABLES `mandals` WRITE;
/*!40000 ALTER TABLE `mandals` DISABLE KEYS */;
INSERT INTO `mandals` VALUES (2,3,'Chandragiri',1,'2023-11-26 13:49:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(3,3,'Pakala',1,'2023-11-26 13:49:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(4,3,'Ramachandrapuram',1,'2023-11-26 13:49:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(5,3,'Chinnagottigalu',1,'2023-11-26 13:49:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(6,3,'Yerravaripalem',1,'2023-11-26 13:49:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(7,3,'Konkachennayyagunta',1,'2023-11-26 13:49:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(8,3,'Tirupati Rural(West)',1,'2023-11-26 13:49:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(9,3,'Tirupati Rural(East)',1,'2023-11-26 13:49:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(11,3,'mandal',1,'2023-11-30 08:25:58','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `navaratnalu`
--

LOCK TABLES `navaratnalu` WRITE;
/*!40000 ALTER TABLE `navaratnalu` DISABLE KEYS */;
INSERT INTO `navaratnalu` VALUES (1,'Arogyasri',1,'2023-11-27 13:25:32','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(2,'Jagananna Amma Vodi',1,'2023-11-28 12:40:47','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(3,'YSR Asara',1,'2023-11-30 08:28:07','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL);
/*!40000 ALTER TABLE `navaratnalu` ENABLE KEYS */;
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
  KEY `sachivalayam_id` (`sachivalayam_id`),
  CONSTRAINT `parts_ibfk_5` FOREIGN KEY (`sachivalayam_id`) REFERENCES `sachivalayam` (`sachivalayam_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parts`
--

LOCK TABLES `parts` WRITE;
/*!40000 ALTER TABLE `parts` DISABLE KEYS */;
INSERT INTO `parts` VALUES (1,2,10,10,10,6,1,'2023-11-27 04:50:31','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0),(4,2,10,10,10,6,1,'2023-11-30 08:33:48','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,0);
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
  KEY `voter_pk` (`voter_pk`),
  KEY `poll_survey_ibfk_3_idx` (`intrested_party`,`voted_party`),
  CONSTRAINT `poll_survey_ibfk_2` FOREIGN KEY (`voter_pk`) REFERENCES `voters` (`voter_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poll_survey`
--

LOCK TABLES `poll_survey` WRITE;
/*!40000 ALTER TABLE `poll_survey` DISABLE KEYS */;
INSERT INTO `poll_survey` VALUES (1,1,1,11,1,1,'2023-11-28 07:51:30','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(2,1,1,11,1,1,'2023-11-28 12:42:10','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(3,1,1,14,1,1,'2023-11-30 08:37:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sachivalayam`
--

LOCK TABLES `sachivalayam` WRITE;
/*!40000 ALTER TABLE `sachivalayam` DISABLE KEYS */;
INSERT INTO `sachivalayam` VALUES (1,13,'Uppara Palli',1,'2023-11-26 15:18:26','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(2,13,'Damalacheruvu-1',1,'2023-11-26 15:18:26','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(3,13,'Damalacheruvu-2',1,'2023-11-26 15:18:26','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(4,13,'Peddaramapuram',1,'2023-11-26 15:18:26','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(5,12,'Padiputlabailu',1,'2023-11-26 15:18:26','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(6,16,'USITHIKAYALAPENTA',1,'2023-11-26 15:18:26','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(7,12,'Maddinenipalli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(8,12,'Ganugapenta',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(9,12,'Mogarala',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(10,12,'Vallevedu',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(11,12,'Ramanaiahgari Palli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(12,15,'Gadanki',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(13,15,'Irrangari Palli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(14,15,'Kavalivari Palli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(15,15,'K Vadde Palli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(16,14,'Samireddy Palli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(17,14,'Pakala-1',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(18,14,'Pakala-2',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(19,14,'Pantapalli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(20,14,'Chenugari Palli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(21,18,'Kandula Vari Palli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(22,18,'A Rangampeta',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(23,18,'Chinnaramapuram',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(24,18,'Ramireddi Palli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(25,16,'Rayalpuram',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(26,16,'Narasinga Puram',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(27,16,'Chandragiri-1',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(28,16,'Chandragiri- 2',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(29,16,'Chandragiri- 3',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(30,16,'Chandragiri- 4',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(31,16,'Chandragiri-5',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(32,17,'Panapakam',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(33,17,'M Kongaravari Palli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(34,17,'Ithepalli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(35,17,'Kotala',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(36,19,'Thondawada',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(37,19,'Sanambatla',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(38,19,'Mittapalem',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(39,19,'Dornakambala',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(40,19,'Gangudu Palli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(41,21,'Kuppam Baduru',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(42,21,'Mitta Kandriga',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(43,21,'C.K.Palli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(44,23,'Sorakayala Palem',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(45,23,'K.K.V.Puram',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(46,23,'Nadavaluru',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(47,23,'Nennuru',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(48,20,'Netha Kuppam',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(49,20,'Anupalli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(50,22,'Gangireddy Palli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(51,22,'C.Ramapuram',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(52,7,'Bodevandlapalli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(53,7,'Usthikayalapenta',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(54,7,'Kotakadapalli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(55,7,'Ellamanda',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(56,6,'Nerabailu',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(57,6,'Kurapathivari Palli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(58,6,'Chinthagunta',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(59,6,'Kammallayya Gari Palli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(60,8,'Yerravaripallem',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(61,8,'CherukuvariPalli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(62,8,'Udhayamanikyam',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(63,10,'Bhakarapeta',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(64,10,'Deendharpalli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(65,10,'Chittecherla',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(66,11,'Chattevari Palem',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(67,11,'Digavuru',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(68,11,'Thippireddygari Palli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(69,11,'Nellutlavari Palli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(70,9,'Jagavandal Palli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(71,9,'Kotabailu',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(72,9,'Chinnagottigallu',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(73,24,'Mangalam',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(74,24,'Setti Palli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(75,24,'Tudaquarters',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(76,24,'Ranadheer Puram',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(77,24,'Sapthagiri Colony',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(78,25,'Yogimallavaram',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(79,25,'Tiruchanoor -1',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(80,26,'Daminedu',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(81,26,'Lakshmi Nagar',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(82,26,'Chaitanya Puram',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(83,27,'Brahmanapattu',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(84,27,'Padipeta',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(85,28,'Srinivasa Puram',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(86,28,'Oteru',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(87,28,'Thanaplli & Kuntrapakam',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(88,28,'Padmavathi Puram',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(89,29,'Chiguruwada',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(90,29,'Durgasamudram',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(91,29,'Vedanthapuram',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(92,30,'Avilala - 1',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(93,30,'Andhra Bank Colony',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(94,30,'Sainagar- 1',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(95,30,'Sainagar-2',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(96,30,'Lingeswar Nagar',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(97,30,'Gandhi Puram',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(98,31,'C. Mallavaram',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(99,31,'Cherlo Palli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(100,31,'Perumalla Palli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(101,31,'Pudipatla',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(102,31,'S.V.Nagar',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(103,32,'Mallamgunta',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(104,32,'C Gollapalli',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(105,33,'Peruru',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(106,33,'Haripuram Colony',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(107,33,'Vidyanagar Colony',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(108,33,'Thummalagunta',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(109,33,'Venkatapati Nagar',1,'2023-11-26 16:54:56','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(110,6,'sachivalayam',1,'2023-11-28 09:05:13','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(111,7,'sachivalayam-2',1,'2023-11-28 12:42:50','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(112,8,'sachivalayam-3',1,'2023-11-30 08:39:24','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (5,'Andhra Pradesh',1,'2023-11-26 10:55:14','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(6,'Telengana',1,'2023-11-28 12:30:26','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL),(7,'tamil nadu',1,'2023-11-30 08:41:17','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (10,'K Manikanta','K Manikanta','1234','9985079957',NULL,NULL,NULL,33,NULL,1,'2023-11-27 12:16:01','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,NULL,NULL,NULL,1,NULL,6,NULL),(11,'A.Aabeed','A.Aabeed','1234','9398979098',NULL,NULL,NULL,34,NULL,1,'2023-11-27 12:49:13','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,NULL,NULL,1,NULL,6,NULL),(12,'Geddi Balaji','Geddi Balaji','1234','7675924520',NULL,NULL,NULL,35,NULL,1,'2023-11-27 12:54:10','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,NULL,1,NULL,6,NULL),(16,'B.Sri Hari','','1234','8919757345',NULL,NULL,NULL,NULL,NULL,1,'2023-11-30 08:59:43','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,NULL,NULL,NULL,1,NULL,6,NULL),(17,'B.Sri Hari','','1234','8919757345',NULL,NULL,NULL,33,NULL,1,'2023-11-30 14:30:15','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,3,NULL,NULL,NULL,1,NULL,6,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voters`
--

LOCK TABLES `voters` WRITE;
/*!40000 ALTER TABLE `voters` DISABLE KEYS */;
INSERT INTO `voters` VALUES (1,2,1,'SAMEEULLA SYED','IAX1916410',16,'SILAR SAHEB SYED',13,33,NULL,NULL,'9876543210','House Number 1-1','House Number 1-1',1,1,'2023-11-27 08:12:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'email',6),(2,2,6,'PRIYANKA V','IAX1243039',18,'DORASWAMY V',14,29,NULL,NULL,'9786543210','House Number 1-3','House Number 1-3',1,1,'2023-11-27 08:12:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6),(3,2,7,'RAJENDRA PRIYANKA','IAX1841527',16,'MUNASWAMY RAJENDRA',13,24,NULL,NULL,'9687543210','House Number 1-3/1/7','House Number 1-3/1/7',1,1,'2023-11-27 08:12:49','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,7,'',6),(4,2,95,'ABDUL MUZEEM SHAIK','IAX3195955',16,'ABDUL MAZEED SHAIK',13,22,NULL,NULL,'9876543201','House Number 1-1','House Number 1-1',1,1,'2023-11-27 09:53:41','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6),(5,2,101,'RAMANAMMA S','IAX1509357',18,'RAMESH BABU S',14,40,NULL,NULL,'9786543201','House Number 1-22','House Number 1-22',1,1,'2023-11-27 09:53:41','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6),(6,2,102,'MUNIM MOGAL','IAX0989576',16,'MAHAMMAD BIG MOGAL',13,32,NULL,NULL,'9687543201','House Number 2-10','House Number 2-10',1,1,'2023-11-27 09:53:41','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,8,'',6),(7,2,187,'MOHAN TALARI','IAX1242981',16,'NARAYANA TALARI',13,56,NULL,NULL,'9876543102','House Number 1-3','House Number 1-3',1,1,'2023-11-27 10:08:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,9,'',6),(8,2,188,'SYAMALA','IAX1243054',18,'MOHANA T',14,49,NULL,NULL,'9786543102','House Number 1-4','House Number 1-4',1,1,'2023-11-27 10:08:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,9,'',6),(9,2,191,'NAGESWARA TALARI','IAX1242965',16,'VENKATA RAMANA TALARI',13,40,NULL,NULL,'9687543102','House Number 1-6','House Number 1-6',1,1,'2023-11-27 10:08:06','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,9,'',6),(10,2,285,'CHANDU JAMPE','IAX3077484',16,'VIJAYA KUMAR J',13,22,NULL,NULL,'9876543103','House Number 1-0','House Number 1-0',1,1,'2023-11-27 10:22:51','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,10,'',6),(11,2,284,'Deepa Jampe','IAX3150059',16,'Vijay kumar Jampe',14,20,NULL,NULL,'9786543103','House Number 00','House Number 00',1,1,'2023-11-27 10:22:51','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,10,'',6),(12,2,287,'Mahesh Kommu','IAX3241734',16,'Venkataramana Kommu',13,19,NULL,NULL,'9687543103','House Number 1-1','House Number 1-1',1,1,'2023-11-27 10:22:51','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,3,2,16,6,10,'',6),(24,2,2,'voter_name','voterid',13,'',13,34,NULL,NULL,'9876543210','','House_no 1-0',1,1,'2023-11-28 12:48:38','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,4,6,6,6,7,'',0),(25,2,2,'voter','voter-id',13,'father',13,37,NULL,NULL,'1234567890','house 1-2-3','house 1-2-3',1,1,'2023-11-30 09:10:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL,NULL,NULL,5,4,2,16,6,8,'',0);
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

-- Dump completed on 2023-12-01 13:18:50
