-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: login
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.19-MariaDB

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
-- Table structure for table `blogposts`
--

DROP TABLE IF EXISTS `blogposts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogposts` (
  `postid` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `post` text NOT NULL,
  `tags` varchar(255) NOT NULL,
  `postDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `username` varchar(100) DEFAULT NULL,
  `picture` varchar(500) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`postid`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogposts`
--

LOCK TABLES `blogposts` WRITE;
/*!40000 ALTER TABLE `blogposts` DISABLE KEYS */;
INSERT INTO `blogposts` VALUES (21,'test','test','<p>dsafffffffff</p>','','2017-04-17 17:51:47','nessakk','','pampering'),(22,'test','test','<p>dsafffffffff</p>','','2017-04-17 17:51:47','nessakk','','pampering'),(23,'test','test','<p>asdfff</p>','','2017-04-17 17:52:33','nessakk','','travel'),(24,'test','test','<p>asdfff</p>','','2017-04-17 17:52:33','nessakk','','travel'),(25,'test','test','<p>tesat</p>','','2017-04-17 17:58:16','nessakk','','travel'),(26,'test','test','<p>tesat</p>','','2017-04-17 17:58:16','nessakk','','travel'),(27,'fur','fur','<p>fur</p>','','2017-04-17 18:01:05','nessakk','images/uploads/IMG_0224.JPG','furryfriends'),(28,'fur','fur','<p>fur</p>','','2017-04-17 18:01:05','nessakk','images/uploads/IMG_0224.JPG','furryfriends'),(29,'pmap','map','<p>asefa</p>','','2017-04-17 18:28:08','','images/uploads/IMG_0224.JPG','pampering'),(30,'pmap','map','<p>asefa</p>','','2017-04-17 18:28:08','','images/uploads/IMG_0224.JPG','pampering'),(31,'tesat','asdf','<p>adsf</p>','','2017-04-17 18:30:30','','images/uploads/IMG_0204.JPG','travel'),(32,'tesat','asdf','<p>adsf</p>','','2017-04-17 18:30:30','','images/uploads/IMG_0204.JPG','travel'),(33,'tesat','asdf','<p>adsf</p>','','2017-04-17 18:31:27','','images/uploads/IMG_0204.JPG','travel'),(34,'tesat','asdf','<p>adsf</p>','','2017-04-17 18:31:27','','images/uploads/IMG_0204.JPG','travel'),(35,'pamp','pamp','<p>pamp&nbsp;</p>','','2017-04-17 18:34:10','','images/uploads/IMG_0224.JPG','pampering'),(36,'pamp','pamp','<p>pamp&nbsp;</p>','','2017-04-17 18:34:10','','images/uploads/IMG_0224.JPG','pampering'),(37,'tas','asdfasd','<p>fsda</p>','','2017-04-17 18:34:53','nessakk','images/uploads/IMG_0224.JPG','pampering'),(38,'tas','asdfasd','<p>fsda</p>','','2017-04-17 18:34:53','nessakk','images/uploads/IMG_0224.JPG','pampering'),(39,'movie','movie','<p>mov</p>','','2017-04-17 18:36:46','nessakk','images/uploads/IMG_0224.JPG','moviesandmusic'),(40,'movie','movie','<p>mov</p>','','2017-04-17 18:36:47','nessakk','images/uploads/IMG_0224.JPG','moviesandmusic');
/*!40000 ALTER TABLE `blogposts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,'/viewpost.php?id=14','',''),(2,'/viewpost.php?id=14','test','test'),(3,'/viewpost.php?id=14','test','test test'),(4,'/viewpost.php?id=14','test','test test'),(5,'/viewpost.php?id=14','test','test '),(6,'/viewpost.php?id=14','test','test test'),(7,'/viewpost.php?id=14','taseda','sadfsf'),(8,'/viewpost.php?id=14','tes','tas'),(9,'','tes','tas'),(10,'','tes','tas'),(11,'','tes','tas'),(12,'','tes','tas'),(13,'/viewpost.php?id=14','tes','tas'),(14,'/viewpost.php?id=14','tes','tas'),(15,'/viewpost.php?id=14','test','asdfa'),(16,'/viewpost.php?id=14','test','asdfa'),(17,'/viewpost.php?id=14','test','asdfa'),(18,'14','test','testa'),(19,'14','test','testa'),(20,'14','test','testa'),(21,'14','test','testa'),(22,'14','test','testa'),(23,'14','test','testa'),(24,'14','test','testa'),(25,'14','test','testa'),(26,'14','test','testa'),(27,'14','nessa','nessa says hi'),(28,'14','nessa','nessa says hi'),(29,'14','nessa','nessa says hi'),(30,'14','nessa','nessa says hi'),(31,'14','nessa','nessa says hi'),(32,'14','nessa','nessa says hi'),(33,'14','nessa','nessa says hi'),(34,'14','nessa','nessa says hi'),(35,'14','nessa','nessa says hi'),(36,'14','nessa','nessa says hi'),(37,'14','nessa','nessa says hi'),(38,'14','nessa','nessa says hi'),(39,'14','nessa','nessa says hi'),(40,'14','nessa','nessa says hi'),(41,'14','nessa','nessa says hi'),(42,'14','nessa','nessa says hi'),(43,'14','nessa','nessa says hi'),(44,'16','tes','ats'),(45,'16','test','testas');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loginattempts`
--

DROP TABLE IF EXISTS `loginattempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loginattempts` (
  `IP` varchar(20) NOT NULL,
  `Attempts` int(11) NOT NULL,
  `LastLogin` datetime NOT NULL,
  `Username` varchar(65) DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loginattempts`
--

LOCK TABLES `loginattempts` WRITE;
/*!40000 ALTER TABLE `loginattempts` DISABLE KEYS */;
INSERT INTO `loginattempts` VALUES ('::1',1,'2017-04-15 17:44:29','nessaek',1),('::1',1,'2017-04-15 17:44:19','nessa',2),('::1',2,'2017-04-13 14:39:10','nessak',3),('::1',1,'2017-04-15 17:44:46','nessak1',4),('::1',1,'2017-04-17 20:29:39','nessaek@gmail.com',5),('::1',1,'2017-04-17 13:15:54','nessakk',6);
/*!40000 ALTER TABLE `loginattempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members` (
  `id` char(23) NOT NULL,
  `username` varchar(65) NOT NULL DEFAULT '',
  `password` varchar(65) NOT NULL DEFAULT '',
  `email` varchar(65) NOT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT '0',
  `mod_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `usertype` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES ('','','','',0,'2017-04-04 12:07:15',NULL),('2823158f4a34c4fac1','Nessakk','$2y$10$9ekp37MOts4ygImDwtbqJO8ExdD7dbCuVEt/EKT7ANrJUVjYGS14q','nessaek@gmail.com',1,'2017-04-17 11:13:40','Moderator'),('2858558e2555ec3633','nessaek','test','nessa.kennedy@surreycc.gov.uk',0,'2017-04-13 12:58:15',NULL),('2906358e2cb6d96b01','nessakkk','$2y$10$7UsJb6KHwlzqXZ12Cjdv6OqR6hXUwMQKfcO3rgdarsi7bSBlThzje','nk721@york.ac.uk',0,'2017-04-03 22:23:41',NULL),('362158e26f203e539','nessaistestingsomething','$2y$10$29eMWFcO22RKMwhB2XCvaOEtMdh.eQ9rq6cKDxYP6peU50eL/XxW.','ciarancprice@gmail.com',0,'2017-04-03 15:49:53',NULL),('402358f3f587c9715','nesssaa','$2y$10$9b49HUGnFdxoSJv1yf6OTu9P9kYXTZ1BUPcsRVrKgfw2ihX0pE/De','nessadkennedy@gmail.com',0,'2017-04-16 22:51:52',NULL),('851258df9251932ee','nessaek1','$2y$10$p8KDSwpb3rJOupaZE8YlRedju8a30OZxkF5cv7g4YnbHZaKa.5yrq','nessa.kennedy5@mail.dcu.ie',0,'2017-04-01 11:43:13',NULL);
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-18  0:06:13
