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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_info`
--

LOCK TABLES `accounts_info` WRITE;
/*!40000 ALTER TABLE `accounts_info` DISABLE KEYS */;
INSERT INTO `accounts_info` VALUES (1,'绵阳市政协','123456',NULL,'10001','普通','2016-04-20 11:04:40'),(2,'ccc','123456',NULL,'10002','普通','2016-04-19 23:49:39'),(3,'adddd','123456','612329199201042',NULL,'普通','2016-04-20 11:05:33');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backup_db`
--

LOCK TABLES `backup_db` WRITE;
/*!40000 ALTER TABLE `backup_db` DISABLE KEYS */;
INSERT INTO `backup_db` VALUES (1,'sqmy_20160418204547','2016-04-18 20:45:47'),(2,'sqmy_20160418205000','2016-04-18 20:50:00'),(3,'sqmy_20160418205910','2016-04-18 20:59:10'),(4,'sqmy_20160420100135','2016-04-20 10:01:36'),(5,'sqmy_20160420110812','2016-04-20 11:08:13');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complaints_report`
--

LOCK TABLES `complaints_report` WRITE;
/*!40000 ALTER TABLE `complaints_report` DISABLE KEYS */;
INSERT INTO `complaints_report` VALUES (1,'612329197012021','张三','man','公务员','1362255332','四川省成都市','<p>市政协贪污腐败现象严重</p>','20160419205003_投诉.txt','成都市政协'),(2,'612329197012028','李四','man','农民','1362255246','四川绵阳市','<p>政府强制拆迁</p>','20160419205143_投诉.txt','绵阳市拆迁办公室'),(3,'612329197012028','李四','man','公务员','1362255246','四川省成都市','<p>政协贪污受贿</p>','20160420110643_投诉.txt','成都市政协');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cppcc_member`
--

LOCK TABLES `cppcc_member` WRITE;
/*!40000 ALTER TABLE `cppcc_member` DISABLE KEYS */;
INSERT INTO `cppcc_member` VALUES (1,'612329199201042','全国政协委员','18192392646','123456@163.com','2016-04-20 11:03:00','afd'),(2,'612329197002062','省政协委员','027-6666666','123456@163.com','2016-04-18 00:00:00','李四');
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
INSERT INTO `manager_info` VALUES (1,'aaaa','666666','18729181962','123456@qq.com','普通','2016-04-20 10:59:45');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'政协会议','<h1>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>政协会议</strong></h1>\n\n<ol>\n	<li>政协会议时间：2016</li>\n	<li>举办成功</li>\n</ol>','2016-04-19 10:51:35'),(2,'全国政协召开双周协商座谈会','<p>全国政协5日下午在京召开第45次双周协商座谈会，围绕&ldquo;加快推进品牌建设&rdquo;建言献策。全国政协主席俞正声主持会议并讲话。</p>\n\n<p>　　 全国政协委员项宗西、刘平均、李玉光、王志雄、刘凡、朱保成、李奇、石军、刘公勤、李书福、李嘉音、陈经纬、金建华、何一心、陈星莺，以及企业家代表董明珠、牛铁航在座谈会上发言。</p>\n\n<p>　　 委员们认为，品牌是一个企业乃至国家竞争实力和发展潜力的重要体现。党中央、国务院高度重视品牌建设工作，&ldquo;十二五&rdquo;时期，品牌建设首次纳入国家规划，国家有关部门制定出台了《关于加强品牌建设的指导意见》。&ldquo;十三五&rdquo;规划建议明确提出要&ldquo;开展质量品牌提升行动&rdquo;。在有关部门、行业协会和企业的共同努力下，我国的品牌建设工作取得了阶段性成效。一些委员认为，我国知名品牌的数量与我国经济在世界上的地位不相称，存在着企业创建品牌的主体作用还没有充分发挥、促进品牌成长的市场环境还不够成熟、品牌建设缺少统一的协调推进机制和配套措施等问题，需要进一步做好质量品牌建设工作。</p>\n\n<p>　　 一些委员对加快推进品牌建设提出意见建议。一要坚持市场主导。品牌不是评出来的，从根本上说要通过市场竞争，是市场认可的结果。二要发挥企业的主体作用，通过加强企业管理，提高创新能力、产品质量及员工忠诚度等，推动企业走品牌发展之路。三要有法律保障，加快推进相关法律的修改制定，加强知识产权的法律保护，解决法律体系不健全、部门分割和惩罚力度不够等问题，破除地方保护主义。四要政府支持，从品牌标准、服务体系、诚信体系以及行政执法、财政支持等方面，推进品牌建设。五要社会参与，发挥行业协会作用，加大品牌的对内对外宣传力度，营造良好的发展氛围和环境。</p>\n\n<p>　　 座谈会讨论深入，俞正声认真听取委员发言，不时与大家交流。</p>\n\n<p>　　 全国政协副主席万钢在座谈会上发言。国家质量监督检验检疫总局局长支树平介绍了有关情况。商务部副部长钱克明、国家工商行政管理总局副局长刘俊臣、国家知识产权局副局长贺化等与委员互动交流。全国政协非常关注品牌建设问题，全国政协经济委员会2015年专门召开了提案办理协商会和行业协会座谈会，并赴江苏、上海等地进行了专题调研。</p>\n\n<p>　　 全国政协副主席杜青林、张庆黎、王钦敏出席座谈会。</p>\n\n<p>&nbsp;</p>\n\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:100%\">\n	<tbody>\n		<tr>\n			<td>(责编：马葳（实习生）、曾伟</td>\n		</tr>\n	</tbody>\n</table>','2016-04-20 10:05:23'),(3,'政府报告','<h1>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 两会会议</h1>\n\n<p>全国政协5日下午在京召开第45次双周协商座谈会，围绕&ldquo;加快推进品牌建设&rdquo;建言献策。全国政协主席俞正声主持会议并讲话。</p>\n\n<p>　　 全国政协委员项宗西、刘平均、李玉光、王志雄、刘凡、朱保成、李奇、石军、刘公勤、李书福、李嘉音、陈经纬、金建华、何一心、陈星莺，以及企业家代表董明珠、牛铁航在座谈会上发言。</p>\n\n<p>　　 委员们认为，品牌是一个企业乃至国家竞争实力和发展潜力的重要体现。党中央、国务院高度重视品牌建设工作，&ldquo;十二五&rdquo;时期，品牌建设首次纳入国家规划，国家有关部门制定出台了《关于加强品牌建设的指导意见》。&ldquo;十三五&rdquo;规划建议明确提出要&ldquo;开展质量品牌提升行动&rdquo;。在有关部门、行业协会和企业的共同努力下，我国的品牌建设工作取得了阶段性成效。一些委员认为，我国知名品牌的数量与我国经济在世界上的地位不相称，存在着企业创建品牌的主体作用还没有充分发挥、促进品牌成长的市场环境还不够成熟、品牌建设缺少统一的协调推进机制和配套措施等问题，需要进一步做好质量品牌建设工作。</p>\n\n<p>　　 一些委员对加快推进品牌建设提出意见建议。一要坚持市场主导。品牌不是评出来的，从根本上说要通过市场竞争，是市场认可的结果。二要发挥企业的主体作用，通过加强企业管理，提高创新能力、产品质量及员工忠诚度等，推动企业走品牌发展之路。三要有法律保障，加快推进相关法律的修改制定，加强知识产权的法律保护，解决法律体系不健全、部门分割和惩罚力度不够等问题，破除地方保护主义。四要政府支持，从品牌标准、服务体系、诚信体系以及行政执法、财政支持等方面，推进品牌建设。五要社会参与，发挥行业协会作用，加大品牌的对内对外宣传力度，营造良好的发展氛围和环境。</p>\n\n<p>　　 座谈会讨论深入，俞正声认真听取委员发言，不时与大家交流。</p>\n\n<p>　　 全国政协副主席万钢在座谈会上发言。国家质量监督检验检疫总局局长支树平介绍了有关情况。商务部副部长钱克明、国家工商行政管理总局副局长刘俊臣、国家知识产权局副局长贺化等与委员互动交流。全国政协非常关注品牌建设问题，全国政协经济委员会2015年专门召开了提案办理协商会和行业协会座谈会，并赴江苏、上海等地进行了专题调研。</p>\n\n<p>　　 全国政协副主席杜青林、张庆黎、王钦敏出席座谈会。</p>\n\n<p>&nbsp;</p>\n\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n	<tbody>\n		<tr>\n			<td>(责编：马葳（实习生）、曾伟</td>\n		</tr>\n	</tbody>\n</table>','2016-04-20 10:25:03'),(4,'政协新政','<p>答复</p>','2016-04-20 10:41:34'),(5,'两会会议','<h1>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 两会会议</h1>\n\n<p>发顺丰</p>','2016-04-20 11:07:39');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `units_info`
--

LOCK TABLES `units_info` WRITE;
/*!40000 ALTER TABLE `units_info` DISABLE KEYS */;
INSERT INTO `units_info` VALUES (1,'10001','绵阳市政协','027-1234568','123456@163.com','市州政协','三级','2016-04-20 11:00:43'),(2,'10002','绵阳市政协','027-1234569','123456@163.com','市州政协','三级','2016-04-19 14:23:29'),(5,'10004','广元市政协','027-1234567','12313@qq.com','市州政协','三级','2016-04-20 11:01:42');
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

-- Dump completed on 2016-04-20 11:08:13
