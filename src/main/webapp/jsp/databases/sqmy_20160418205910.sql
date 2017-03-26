-- MySQL dump 10.13  Distrib 5.6.21, for Win64 (x86_64)
--
-- Host: localhost    Database: sqmy
-- ------------------------------------------------------
-- Server version	5.6.21

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
-- Table structure for table `accounts_info`
--

DROP TABLE IF EXISTS `accounts_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_num` varchar(20) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `cppcc_id` varchar(20) DEFAULT NULL,
  `unit_id` varchar(20) DEFAULT NULL,
  `authority` varchar(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_info`
--

LOCK TABLES `accounts_info` WRITE;
/*!40000 ALTER TABLE `accounts_info` DISABLE KEYS */;
INSERT INTO `accounts_info` VALUES (1,'aaa','123456',NULL,'100001','普通','2016-04-18 14:19:14'),(2,'ccc','123456',NULL,'100001','普通','2016-04-18 15:40:58');
/*!40000 ALTER TABLE `accounts_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_info`
--

DROP TABLE IF EXISTS `audit_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unit_id` int(11) DEFAULT NULL,
  `primary_id` int(11) DEFAULT NULL,
  `editor_id` int(11) DEFAULT NULL,
  `unit_name` varchar(30) DEFAULT NULL,
  `audit_time` date DEFAULT NULL,
  `instruction_content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_info`
--

LOCK TABLES `audit_info` WRITE;
/*!40000 ALTER TABLE `audit_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backup_db`
--

DROP TABLE IF EXISTS `backup_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backup_db` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backup_db`
--

LOCK TABLES `backup_db` WRITE;
/*!40000 ALTER TABLE `backup_db` DISABLE KEYS */;
INSERT INTO `backup_db` VALUES (1,'sqmy_20160418204548','2016-04-18 20:45:48'),(2,'sqmy_20160418205000','2016-04-18 20:50:01'),(3,'sqmy_20160418205910','2016-04-18 20:59:10');
/*!40000 ALTER TABLE `backup_db` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_category` varchar(20) DEFAULT NULL,
  `second_category` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complaints_report`
--

DROP TABLE IF EXISTS `complaints_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `complaints_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idcard` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `job` varchar(50) DEFAULT NULL,
  `phone_num` varchar(15) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `content` text,
  `attachment` varchar(50) DEFAULT NULL,
  `unit_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complaints_report`
--

LOCK TABLES `complaints_report` WRITE;
/*!40000 ALTER TABLE `complaints_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `complaints_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cppcc_member`
--

DROP TABLE IF EXISTS `cppcc_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cppcc_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_card` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `phone_num` varchar(15) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cppcc_member`
--

LOCK TABLES `cppcc_member` WRITE;
/*!40000 ALTER TABLE `cppcc_member` DISABLE KEYS */;
INSERT INTO `cppcc_member` VALUES (1,'612329198801055','省政协委员','18192392646','123456@163.com','2016-04-18 15:10:19','王明'),(3,'612329197002062','省政协委员','027-6666666','123456@163.com','2016-04-18 00:00:00','李四');
/*!40000 ALTER TABLE `cppcc_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `edit_info`
--

DROP TABLE IF EXISTS `edit_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `edit_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `primary_id` int(11) DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `edit_time` datetime DEFAULT NULL,
  `edit_content` text,
  `attachment_address` varchar(50) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edit_info`
--

LOCK TABLES `edit_info` WRITE;
/*!40000 ALTER TABLE `edit_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `edit_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager_info`
--

DROP TABLE IF EXISTS `manager_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manager_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(20) DEFAULT NULL,
  `passward` varchar(30) DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `authority` varchar(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager_info`
--

LOCK TABLES `manager_info` WRITE;
/*!40000 ALTER TABLE `manager_info` DISABLE KEYS */;
INSERT INTO `manager_info` VALUES (1,'admin','666666','18192392646','123456@qq.com','普通','2016-04-17 00:00:00');
/*!40000 ALTER TABLE `manager_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `content` text,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submit_info`
--

DROP TABLE IF EXISTS `submit_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `submit_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) DEFAULT NULL,
  `infor_categories` varchar(50) DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `urgency_level` varchar(30) DEFAULT NULL,
  `info_sources` varchar(30) DEFAULT NULL,
  `reporter` varchar(100) DEFAULT NULL,
  `note` text,
  `main_body` text,
  `attachment_address` varchar(50) DEFAULT NULL,
  `submit_time` datetime DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submit_info`
--

LOCK TABLES `submit_info` WRITE;
/*!40000 ALTER TABLE `submit_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `submit_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_score`
--

DROP TABLE IF EXISTS `tb_score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_score` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `primary_id` int(11) DEFAULT NULL,
  `audit_id` int(11) DEFAULT NULL,
  `score_unit_id` int(11) DEFAULT NULL,
  `score_time` datetime DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `cppcc_id` int(11) DEFAULT NULL,
  `caiyong_unit_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_score`
--

LOCK TABLES `tb_score` WRITE;
/*!40000 ALTER TABLE `tb_score` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `units_info`
--

DROP TABLE IF EXISTS `units_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `units_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unit_num` varchar(20) DEFAULT NULL,
  `unit_name` varchar(30) DEFAULT NULL,
  `phone_num` varchar(15) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `classes` varchar(30) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `units_info`
--

LOCK TABLES `units_info` WRITE;
/*!40000 ALTER TABLE `units_info` DISABLE KEYS */;
INSERT INTO `units_info` VALUES (1,'10001','成都市政协','027-1234569','123456@163.com','市州政协','二级','2016-04-18 19:49:15'),(2,'1002','绵阳市政协','027-1234569','123456@163.com','市州政协','三级','2016-04-17 00:00:00'),(3,'10003','广元直报点','027-1234567','123456@163.com','直报点','三级','2016-04-18 19:49:55');
/*!40000 ALTER TABLE `units_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-18 20:59:10
