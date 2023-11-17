CREATE DATABASE  IF NOT EXISTS `ModCampaign` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ModCampaign`;
-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: modcampaign
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `campaign`
--

DROP TABLE IF EXISTS `campaign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaign` (
  `campaignId` int NOT NULL AUTO_INCREMENT,
  `campaignName` varchar(50) NOT NULL,
  `campaignDetail` varchar(500) NOT NULL,
  `campaignStart` datetime NOT NULL,
  `campaignEnd` datetime NOT NULL,
  `campaignType` enum('Individual','Group') NOT NULL,
  `campaignImageUrl` varchar(45) NOT NULL,
  `campaignUserLimit` int DEFAULT NULL,
  `campaignCategoryId` int NOT NULL,
  `userId` int NOT NULL,
  PRIMARY KEY (`campaignId`,`campaignCategoryId`,`userId`),
  UNIQUE KEY `campaignName_UNIQUE` (`campaignName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign`
--

LOCK TABLES `campaign` WRITE;
/*!40000 ALTER TABLE `campaign` DISABLE KEYS */;
INSERT INTO `campaign` VALUES (1,'Fitness Challenge','Join our fitness challenge to stay healthy and active.','2023-11-20 08:00:00','2023-12-20 20:00:00','Individual','image1.jpg',100,1,1),(2,'Education for All','Support education for underprivileged children.','2023-12-01 10:00:00','2023-12-31 18:00:00','Group','image2.jpg',50,2,3),(3,'Community Cleanup','Volunteer for a cleaner and greener community.','2023-11-25 09:00:00','2023-12-15 17:00:00','Group','image3.jpg',30,3,1),(4,'Art Exhibition','Promoting local art and culture through an exhibition.','2023-12-10 12:00:00','2023-12-20 22:00:00','Individual','image4.jpg',NULL,4,2),(5,'Green Initiative','Join us in conserving the environment for a better future.','2023-11-30 14:00:00','2023-12-31 23:59:59','Individual','image5.jpg',200,5,4);
/*!40000 ALTER TABLE `campaign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaigncategory`
--

DROP TABLE IF EXISTS `campaignCategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaignCategory` (
  `campaignCategoryId` int NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(50) NOT NULL,
  `categoryTarget` varchar(50) NOT NULL,
  PRIMARY KEY (`campaignCategoryId`),
  UNIQUE KEY `campaignName_UNIQUE` (`categoryName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigncategory`
--

LOCK TABLES `campaignCategory` WRITE;
/*!40000 ALTER TABLE `campaignCategory` DISABLE KEYS */;
INSERT INTO `campaignCategory` VALUES (1,'Run','step'),(2,'Education','Supporting education initiatives'),(3,'Health and Fitness','Stay active and fit'),(4,'Arts and Culture','Promoting arts and cultural activities'),(5,'Environment','Environment conservation and awareness');
/*!40000 ALTER TABLE `campaignCategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `feedbackId` int NOT NULL AUTO_INCREMENT,
  `subject` varchar(50) NOT NULL,
  `description` varchar(500) NOT NULL,
  `date` datetime NOT NULL,
  `userId` int NOT NULL,
  PRIMARY KEY (`feedbackId`,`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,'Great Event!','The fitness challenge was fantastic. Looking forward to the next one!','2023-12-01 15:30:00',2),(2,'Suggestion for Improvement','Consider adding more educational content to the platform.','2023-11-28 10:45:00',4),(3,'Community Cleanup Feedback','Thank you for organizing the community cleanup. It made a significant impact!','2023-12-05 18:20:00',3),(4,'Art Exhibition Appreciation','The art exhibition showcased amazing talent. Kudos to the organizers!','2023-12-15 21:00:00',5),(5,'Green Initiative Support','I fully support the green initiative. Let\'s work together for a sustainable future!','2023-12-03 12:10:00',1);
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `userId` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(150) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `bmi` int NOT NULL,
  `height` int NOT NULL,
  `weight` int NOT NULL,
  `calories` varchar(45) NOT NULL,
  `role` enum('Creator','Attendess') NOT NULL,
  `healthPlatform` varchar(50) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'jirasinAdmin','password123','Jirasin','Chatbanyong',25,180,75,'2000','Creator','AppleHealth'),(2,'naruebet','pass456','Naruebet','Pattarasanya',22,165,60,'1800','Attendess','GoogleFit'),(3,'creator1','securePass','Bob','Smith',27,175,80,'2200','Creator','AppleHealth'),(4,'attendee1','secret','Eva','Williams',23,160,55,'1600','Attendess','AppleHealth'),(5,'napasorn','adminPass','Napasorn','Pattanadecha',29,185,90,'2500','Creator','AppleHealth');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_in_campaign`
--

DROP TABLE IF EXISTS `userInCampaign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userInCampaign` (
  `userId` int NOT NULL,
  `campaignId` int NOT NULL,
  PRIMARY KEY (`userId`,`campaignId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_in_campaign`
--

LOCK TABLES `userInCampaign` WRITE;
/*!40000 ALTER TABLE `userInCampaign` DISABLE KEYS */;
INSERT INTO `userInCampaign` VALUES (1,1),(1,2),(1,3),(2,1),(2,3),(3,2),(3,3),(3,4),(4,1),(4,3),(5,1),(5,2),(5,3),(5,5);
/*!40000 ALTER TABLE `userInCampaign` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-16  3:56:47

CREATE USER 'admin'@'%' IDENTIFIED WITH mysql_native_password BY 'trimitr56';
GRANT ALL PRIVILEGES ON *.* TO 'admin'@'%';
flush privileges;
set time_zone = '+7:00';
set global time_zone = '+7:00';
