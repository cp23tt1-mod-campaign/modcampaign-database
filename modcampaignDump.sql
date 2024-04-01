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
  `campaignImageUrl` varchar(50) NOT NULL,
  `campaignReward` varchar(50) NOT NULL,
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
INSERT INTO `campaign` VALUES 

(1,'Fitness Challenge','ชวนคุณมาวิ่งออกกำลังกายรูปแบบใหม่ สไตล์ New Normal เพิ่มพลังให้ปอด ช่วยให้หัวใจแข็งแรง เริ่มวิ่งตั้งแต่วันที่ 20 พ.ย. – 20 ธันวาคม 2565 นี้ ซึ่งโครงการเปิดรับสมัครทั้งสมาชิกพีอาร์ไนน์ และบุคคลทั่วไป โดยการสะสมระยะทางรวมทั้งหมด 55 กม. สถานที่วิ่ง สามารถวิ่งได้ที่สวนสาธารณะ, ถนน, ซอย, ในหมู่บ้าน หรือวิ่งบนลู่ไฟฟ้า ตัดสินผู้ชนะตามระยะทางการวิ่งสะสมมากที่สุดหลังจบโครงการ พร้อมรางวัลมากมาย',
'2023-11-20 08:00:00','2023-12-20 20:00:00','Individual','Cigna-Run-At-Home-Campaign 1.jpg', 'ชั่วโมงกิจกรรม 10 ชั่วโมง' ,100,1,1),

(2,'Run for a Cause', 'Run to raise funds for charity', '2023-12-07 08:00:00', '2024-12-30 18:00:00', 'Individual', 'Landscape-15b7c079.jpg', 'Medal and Certificate', 100, 1, 1),
(3,'Healthy Steps Challenge', 'Walk or run to promote a healthy lifestyle', '2023-11-05 10:00:00', '2024-12-15 20:00:00', 'Group', 'SS20_02 1.jpg', 'Fitness Tracker', 50, 2, 2),
(4,'Fun Run Day', 'Enjoy a fun run with friends and family', '2023-12-10 09:30:00', '2024-06-30 12:00:00', 'Individual', 'r01 1.jpg', 'Participation Medal', 200, 1, 3),
(5,'Nature Trail Adventure', 'Explore nature with a group hike', '2023-12-01 07:00:00', '2024-06-07 16:00:00', 'Group', 'run2.jpg', 'Nature Explorer Kit', 30, 2, 4),
(6,'Marathon Madness', 'Join the marathon and test your limits', '2023-12-10 06:00:00', '2024-12-30 18:00:00', 'Individual', 'marathon.jpeg', 'Finisher T-Shirt', 150, 1, 5),
(7,'Community Bike Ride', 'Pedal together for a community bike ride', '2023-10-13 13:00:00', '2024-11-14 16:30:00', 'Group', 'run4.jpeg', 'Bike Ride Medal', 40, 2, 2),
(8,'Yoga in the Park', 'Relax with a group yoga session outdoors', '2023-07-10 08:30:00', '2024-07-10 10:30:00', 'Group', 'yoga.jpg', 'Yoga Mat', 25, 2, 1),
(9,'Virtual 5K Challenge', 'Run your 5K at your own pace, anywhere', '2023-12-01 00:00:00', '2024-12-14 23:59:59', 'Individual', 'runAtHome.jpg', 'Virtual Badge', 100, 1, 1),

(10,'Old Marathon Challenge', 'Past marathon event', '2022-11-15 07:30:00', '2022-11-20 15:00:00', 'Individual', 'run3.jpeg', 'Finisher Medal', 200, 1, 1),
(11,'Community Walk', 'Group walking event', '2023-03-01 09:00:00', '2023-03-10 17:30:00', 'Group', 'communitywalk.jpeg', 'Participation Certificate', 30, 2, 1);

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
INSERT INTO `campaignCategory` VALUES (1,'Run','Distance'),
(2,'Walking','Steps');
/*!40000 ALTER TABLE `campaignCategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discover`
--

DROP TABLE IF EXISTS `discover`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discover` (
  `discoverId` int NOT NULL AUTO_INCREMENT,
  `discoverName` varchar(50) NOT NULL,
  `discoverDate` date NOT NULL,
  `discoverLink` varchar(100) NOT NULL,
  `discoverImage` varchar(100) NOT NULL,
  PRIMARY KEY (`discoverId`),
  UNIQUE KEY `campaignName_UNIQUE` (`discoverName`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discover`
--

LOCK TABLES `discover` WRITE;
/*!40000 ALTER TABLE `discover` DISABLE KEYS */;
INSERT INTO `discover` VALUES 
(1,'5 เทคนิควิ่งให้จบ แบบไม่เจ็บ','2023-11-01','5-เทคนิควิ่งให้จบ-แบบไม่','discover1'),
(2,'7 วิธี ง่าย ๆ ในการเริ่มลดไขมัน','2022-07-08','7-วิธี-ง่าย-ๆ-ในการเริ่มลด-2','discover2'),
(3,'การออกกำลังกาย คือยาแก้ซึมเศร้าชั้นดี','2022-06-27','การออกกำลังกาย-คือยาแก-2','discover3'),
(4,'กินคลีน อย่างไรถึงจะดี?','2019-03-22','กินคลีน-อย่างไรถึงจะดี-2','newscms_thaihealth_c_cdjklopuz569.jpg'),
(5,'เริ่มเดินอย่างไร เดินที่ไหน มากเท่าไรจึงพอ','2017-11-13','เริ่มเดินอย่างไร-เดินท-2','newscms_thaihealth_c_achjmouw2357.jpg'),
(6,'บำรุงสายตา ด้วยอาหาร 5 สี','2022-05-25','บำรุงสายตา-ด้วยอาหาร-5-สี-2','discover6'),
(7,'7 เคล็ดลับ กิน – อยู่ ให้อายุยืน','2022-04-28','7-เคล็ดลับ-กิน-อยู่-ให้อาย-2','discover7'),
(8,'ไขความลับ !? งีบกี่นาที…ดีต่อสุขภาพ','2023-07-04','ไขความลับ-งีบกี่นาที-ดี','discover8'),
(9,'ออกกำลังกายแบบ คาร์ดิโอ หรือ เวทเทรนนิ่ง แบบไหนดีกว่ากัน','2023-05-19','ออกกำลังกายแบบ-คาร์ดิโอ','discover9'),
(10,'เคล็ด (ไม่) ลับ ขจัดพุง','2022-10-06','313562-2','discover10');
/*!40000 ALTER TABLE `discover` ENABLE KEYS */;
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
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `displayName` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `profileImage` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `age` int NOT NULL,
  `height` int NOT NULL,
  `weight` int NOT NULL,
  `activityLevel` int NOT NULL,
  `bmr` int NOT NULL,
  `role` enum('Creator','Attendees') NOT NULL,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES 
(1,'Jirasin','Chatbanyong','qqqxq','jirasin4826@gmail.com','ACg8ocJIph1BSeoMu91LOcZYoPv1SgWPehzSWiB_6ch03iiGfXez=s96-c'
,'male',21,165,56,2,1515,'Creator'),
(2,'John', 'Doe', 'DohnJoe','john.doe@example.com', 'profile1.jpg', 'male', 25, 175, 70, 2, 1800, 'Attendees'),
(3,'Jane', 'Smith', 'BlxckSmxth','jane.smith@example.com', 'profile2.jpg', 'female', 30, 160, 55, 3, 2000, 'Attendees'),
(4,'Alice', 'Johnson', 'AliceBob','alice.johnson@example.com', 'profile3.jpg', 'female', 28, 168, 63, 1, 1600, 'Attendees'),
(5,'Bob', 'Williams', 'Will you marry me', 'bob.williams@example.com', 'profile4.jpg', 'male', 35, 180, 80, 2, 1900, 'Attendees');
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
  `targetValue` float NOT NULL,
--   `userCampaignTargetValue` VARCHAR(50) NULL,
  PRIMARY KEY (`userId`,`campaignId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_in_campaign`
--

LOCK TABLES `userInCampaign` WRITE;
/*!40000 ALTER TABLE `userInCampaign` DISABLE KEYS */;
INSERT INTO `userInCampaign` VALUES 
(1,1, 5),
(1,2, 7.00),
(1,3, 2351.33),
(2,1, 100.00),
(2,3, 100.00),
(3,2, 100.00),
(3,3, 100.00),
(3,4, 100.00),
(4,1, 100.00),
(4,3, 100.00),
(5,1, 100.00),
(5,2, 100.00),
(5,3, 100.00),
(5,5, 100.00);
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
