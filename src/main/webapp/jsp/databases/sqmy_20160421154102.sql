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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_info`
--

LOCK TABLES `accounts_info` WRITE;
/*!40000 ALTER TABLE `accounts_info` DISABLE KEYS */;
INSERT INTO `accounts_info` VALUES (1,'login001','6666666',NULL,'100006','普通','2016-04-21 15:33:40'),(2,'login002','66666',NULL,'100002','普通','2016-04-21 15:27:51'),(3,'login003','66666',NULL,'100003','普通','2016-04-21 15:28:12'),(4,'login004','666666','511921199403161232',NULL,'普通','2016-04-21 15:30:57'),(5,'login005','666666','612329197002062',NULL,'普通','2016-04-21 15:30:33'),(6,'login007','666666',NULL,'10007','普通','2016-04-21 15:35:58');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backup_db`
--

LOCK TABLES `backup_db` WRITE;
/*!40000 ALTER TABLE `backup_db` DISABLE KEYS */;
INSERT INTO `backup_db` VALUES (1,'sqmy_20160418204547','2016-04-18 20:45:47'),(2,'sqmy_20160418205000','2016-04-18 20:50:00'),(3,'sqmy_20160418205910','2016-04-18 20:59:10'),(4,'sqmy_20160420100135','2016-04-20 10:01:36'),(5,'sqmy_20160420110812','2016-04-20 11:08:13'),(6,'sqmy_20160421154102','2016-04-21 15:41:03');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complaints_report`
--

LOCK TABLES `complaints_report` WRITE;
/*!40000 ALTER TABLE `complaints_report` DISABLE KEYS */;
INSERT INTO `complaints_report` VALUES (1,'612329197012021','张三','man','公务员','1362255332','四川省成都市','<p>市政协贪污腐败现象严重</p>','20160419205003_投诉.txt','成都市政协'),(2,'612329197012028','李四','man','农民','1362255246','四川绵阳市','<p>政府强制拆迁</p>','20160419205143_投诉.txt','绵阳市拆迁办公室'),(3,'612329197012028','李四','man','公务员','1362255246','四川省成都市','<p>政协贪污受贿</p>','20160420110643_投诉.txt','成都市政协'),(4,'612329197012028','李四','man','公务员','1362255246','四川省成都市','<p>政协贪污受贿</p>','20160420111410_投诉.txt','成都市政协');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cppcc_member`
--

LOCK TABLES `cppcc_member` WRITE;
/*!40000 ALTER TABLE `cppcc_member` DISABLE KEYS */;
INSERT INTO `cppcc_member` VALUES (1,'612329199201042','省政协委员','13662153525','zhangsan@163.com','2016-04-21 15:17:42','张三'),(2,'612329197002062','省政协委员','027-6666666','123456@163.com','2016-04-18 00:00:00','李四'),(3,'511921197510302310','省政协委员','1366245626','wangchuan@163.com','2016-04-21 15:13:18','王川'),(4,'511921199403161232','全国政协委员','13661235625','yangkening@163.com','2016-04-21 15:14:25','杨克宁'),(5,'511921199403161224','全国政协委员','13661236666','wanmeng@163.com','2016-04-21 15:24:21','王猛');
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
INSERT INTO `manager_info` VALUES (1,'admins','666666','18192392646','22222@qq.com','普通','2016-04-21 14:48:06');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'让文明之花在基层绽放','<h1>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <strong>让文明之花在基层绽放</strong></h1>\n\n<p>2015-12-30期01版</p>\n\n<p>&ldquo;我是社区人，我是社区花，要在社区创建和谐的家&hellip;&hellip;&rdquo;12月24日上午，北京市通州区玉桥南里南社区传出悠扬的歌声，这是社区远近闻名的&ldquo;十姐妹&rdquo;&mdash;&mdash;一支由玉桥南里南社区居民自发组织的社区志愿者队伍在合唱她们自编的歌曲《社区花》，而听她们唱歌的是前来调研的全国政协提案委员会重点提案跟踪督办调研组。&ldquo;你们可以上春晚了！&rdquo;在现场，全国政协提案委员会驻会副主任田杰发出这样的赞叹。</p>\n\n<p>他赞叹的是歌声传递的强大正能量，代表邻里和睦、互助互爱的&ldquo;十姐妹&rdquo;精神，更是这个社区居民对培育和弘扬社会主义核心价值观的一种生动诠释。</p>\n\n<p>12月24日至25日，全国政协副主席卢展工带领全国政协提案委员会调研组在京进行重点提案跟踪督办调研，玉桥南里南社区是调研目的地之一。此次调研主题是&ldquo;开展基层群众性精神文明创建活动，培育和践行社会主义核心价值观&rdquo;，调研组走访了北京的社区、乡村，并与中央文明办进行座谈交流。</p>\n\n<p>培育和践行社会主义核心价值观是党的十八大和十八届三中全会做出的重大部署，也是全国政协近年来特别关注的话题。2014年，与社会主义核心价值观相关的提案被列为全国政协重点提案，全国政协提案委曾就&ldquo;培育和践行社会主义核心价值观要融入社会生活&rdquo;先后赴湖北、江西进行了重点提案督办调研，2015年8月，全国政协专题议政性常委会议以&ldquo;积极培育和践行社会主义核心价值观&rdquo;为主题,为新态势下价值观如何落地建言献策。此次跟踪督办调研把重心放在了基层，在委员们看来，要把培育和践行社会主义核心价值观落细、落小、落实，基层是关键环节。</p>\n\n<p>立足于民，深接地气</p>\n\n<p>对城市里的人们而言，社区生活往往意味着陌生的邻居和寂寞的楼门，但调研组在玉桥南里南社区却感受到完全不一样的氛围。当日，调研组走进社区一号楼一单元，仿佛走进一个温馨的小客厅，楼道里挂着全家福，天花板垂着彩带，包饺子、演节目、打扫楼道&hellip;&hellip;宣传栏里贴的各种活动照片让人看到了这个楼门亲如一家的和谐景象。据楼门长介绍说，社区每个楼道就像一个&ldquo;立体四合院&rdquo;，邻里之间相互关爱，谁家有个难事总能找到帮忙的，在玉桥南里南社区133个楼门中，建设和谐楼门已成为居民的共同理念。</p>\n\n<p>如果说玉桥南里南社区的特色是邻里和睦，调研组走访的通州区于家务回族乡仇庄村的特色则是&ldquo;孝德立村&rdquo;。今年，他们刚刚建成了自己的孝道馆，鼓励村民传承孝德文化。走进孝道馆，仇庄村村支书边指着各种影像图片边向调研组介绍，&ldquo;这是幻影成像，看，这几个孩子在给家里长辈夹菜，现在社会大都是长辈给孩子夹菜，这种孝道已经很少见了&hellip;&hellip;&rdquo;在孝道馆里，调研组还看到了全村自编的《家道》三字经，这个拥有1000多人的村庄从去年开始启动&ldquo;追寻家训家规，呼唤良好家风&rdquo;的主题教育活动，邀请专家撰写《家道》三字经，为全村193户村民提炼了家风家规。</p>\n\n<p>玉桥南里南社区和仇庄村的生动实践给调研组留下了深刻印象，在调研组看来，培育和弘扬社会主义核心价值观要取得实效，就要立足于民，深接地气。调研组认为，社会主义核心价值观需要践行，要在做的过程中不断完善内涵，融入全社会方方面面，更要有法律法规和政策机制的保障，让核心价值观持续稳定地发挥作用。</p>\n\n<p>▲▲▲聚焦点、举旗帜，突破&ldquo;最后一公里&rdquo;</p>\n\n<p>&ldquo;在群众性精神文明创建活动中，我们吸纳了很多政协的意见建议。&rdquo;12月25日，在调研组与中央文明办座谈时，中宣部常务副部长、中央文明办主任黄坤明真诚地表达了感谢。</p>\n\n<p>这是一次零距离的座谈交流，在介绍情况时，黄坤明多次脱稿进行剖析，提出思考，会上，委员们的建议也得到了积极回应。培育和践行社会主义核心价值观要力求实效、深入民心是大家普遍关心的问题。对此，黄坤明表示，2016年，除了继续深化文明城市、文明乡村、文明单位的创建，还要重点加强文明家庭、文明校园的创建，深入推进诚信制度化，持续推动志愿服务的制度化，&ldquo;不能只在喊口号上下工夫&rdquo;。</p>\n\n<p>谈及校园的精神文明创建，鲁景超委员建议改变过去说教式的价值传播方式。&ldquo;我们应根据青年人的理解方式和感受调整我们传播社会主义核心价值观的切入点，要让他们从&lsquo;要我学&rsquo;转变为&lsquo;我想学&rsquo;。&rdquo;她表示，自己所在的中国传媒大学正在全国推广文学经典的朗读活动，并尝试在大学生中推行以时政热点为主题的辩论赛，&ldquo;我们的第一次辩论赛主题就是全国政协提案委员会今年的一个调研主题&mdash;&mdash;&mdash;农村土地确权问题，效果非常好。&rdquo;中央文明办相关负责人当即表示支持：&ldquo;我们可联合教育部去你们学校调研&rdquo;。</p>\n\n<p>吴先宁委员则建议在城市化建设中加强读书的引导，&ldquo;要提供好的书，还有好的读书环境，比如可以利用城市咖啡馆营造读书氛围&rdquo;。除了书籍，包明德委员还建议加强影视作品在培育和践行社会主义核心价值观的引导作用。在任海泉委员看来，培育和弘扬社会主义核心价值观要聚焦点、举旗帜，还要突破&ldquo;最后一公里&rdquo;，让社会主义核心价值观重点深入网络空间、乡村和社区。谈及志愿者服务，蔡玲委员认为，中国即将进入老龄化社会，养老服务需要大量志愿者，在这方面应该有相应的制度安排。黄坤明对这个建议表示赞同，他说，&ldquo;老龄化问题是大家普遍关心的热点，推行志愿服务要以养老为重点&rdquo;。</p>\n\n<p>全国政协提案委员会副主任干以胜、王国卿参加调研。</p>\n\n<p>&nbsp;</p>\n\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:100%\">\n	<tbody>\n		<tr>\n			<td>(责编：曾伟、申亚欣)</td>\n		</tr>\n	</tbody>\n</table>','2016-04-21 15:39:31');
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_score`
--

LOCK TABLES `tb_score` WRITE;
/*!40000 ALTER TABLE `tb_score` DISABLE KEYS */;
INSERT INTO `tb_score` VALUES (1,NULL,NULL,NULL,'2016-04-20 16:34:09',NULL,1,1),(2,NULL,NULL,NULL,'2016-04-20 16:34:22',NULL,1,1),(3,NULL,NULL,NULL,'2016-04-20 16:34:23',NULL,1,1),(4,NULL,NULL,NULL,'2016-04-20 16:47:42',NULL,2,2),(5,NULL,NULL,NULL,'2016-04-20 16:47:44',NULL,2,2),(6,NULL,NULL,NULL,'2016-04-20 16:47:45',NULL,2,2),(7,NULL,NULL,NULL,'2016-04-20 16:47:57',NULL,3,3),(8,NULL,NULL,NULL,'2016-04-20 16:47:59',NULL,3,3),(9,NULL,NULL,NULL,'2016-04-20 16:48:06',NULL,3,3),(10,NULL,NULL,NULL,'2016-04-20 16:48:38',NULL,3,3),(11,NULL,NULL,NULL,'2016-04-21 15:20:04',NULL,3,3),(12,NULL,NULL,NULL,'2016-04-21 15:20:05',NULL,3,3),(13,NULL,NULL,NULL,'2016-04-21 15:20:05',NULL,3,3),(14,NULL,NULL,NULL,'2016-04-21 15:20:06',NULL,3,3),(15,NULL,NULL,NULL,'2016-04-21 15:20:07',NULL,3,3),(16,NULL,NULL,NULL,'2016-04-21 15:20:07',NULL,3,3),(17,NULL,NULL,NULL,'2016-04-21 15:20:17',NULL,4,4),(18,NULL,NULL,NULL,'2016-04-21 15:20:19',NULL,4,4),(19,NULL,NULL,NULL,'2016-04-21 15:20:20',NULL,4,4),(20,NULL,NULL,NULL,'2016-04-21 15:20:20',NULL,4,4),(21,NULL,NULL,NULL,'2016-04-21 15:20:21',NULL,4,4),(22,NULL,NULL,NULL,'2016-04-21 15:20:21',NULL,4,4),(23,NULL,NULL,NULL,'2016-04-21 15:20:22',NULL,4,4),(24,NULL,NULL,NULL,'2016-04-21 15:20:22',NULL,4,4),(25,NULL,NULL,NULL,'2016-04-21 15:20:23',NULL,4,4),(26,NULL,NULL,NULL,'2016-04-21 15:20:24',NULL,4,4),(27,NULL,NULL,NULL,'2016-04-21 15:20:24',NULL,4,4),(28,NULL,NULL,NULL,'2016-04-21 15:20:35',NULL,5,5),(29,NULL,NULL,NULL,'2016-04-21 15:20:36',NULL,5,5),(30,NULL,NULL,NULL,'2016-04-21 15:20:37',NULL,5,5),(31,NULL,NULL,NULL,'2016-04-21 15:20:37',NULL,5,5),(32,NULL,NULL,NULL,'2016-04-21 15:20:38',NULL,5,5),(33,NULL,NULL,NULL,'2016-04-21 15:20:39',NULL,5,5),(34,NULL,NULL,NULL,'2016-04-21 15:20:40',NULL,5,5),(35,NULL,NULL,NULL,'2016-04-21 15:20:40',NULL,5,5),(36,NULL,NULL,NULL,'2016-04-21 15:20:41',NULL,5,5),(37,NULL,NULL,NULL,'2016-04-21 15:20:41',NULL,5,5),(38,NULL,NULL,NULL,'2016-04-21 15:20:42',NULL,5,5),(39,NULL,NULL,NULL,'2016-04-21 15:20:42',NULL,5,5),(40,NULL,NULL,NULL,'2016-04-21 15:21:09',NULL,5,5),(41,NULL,NULL,NULL,'2016-04-21 15:21:10',NULL,5,5),(42,NULL,NULL,NULL,'2016-04-21 15:21:11',NULL,5,5),(43,NULL,NULL,NULL,'2016-04-21 15:21:19',NULL,2,2),(44,NULL,NULL,NULL,'2016-04-21 15:21:20',NULL,2,2),(45,NULL,NULL,NULL,'2016-04-21 15:21:21',NULL,2,2),(46,NULL,NULL,NULL,'2016-04-21 15:21:25',NULL,2,2),(47,NULL,NULL,NULL,'2016-04-21 15:21:33',NULL,1,1),(48,NULL,NULL,NULL,'2016-04-21 15:21:34',NULL,1,1),(49,NULL,NULL,NULL,'2016-04-21 15:21:36',NULL,1,1),(50,NULL,NULL,NULL,'2016-04-21 15:25:20',NULL,4,6),(51,NULL,NULL,NULL,'2016-04-21 15:25:25',NULL,3,6),(52,NULL,NULL,NULL,'2016-04-21 15:25:43',NULL,5,6);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `units_info`
--

LOCK TABLES `units_info` WRITE;
/*!40000 ALTER TABLE `units_info` DISABLE KEYS */;
INSERT INTO `units_info` VALUES (1,'10001','绵阳市政协','027-6666666','6666666@163.com','市州政协','三级','2016-04-21 15:02:38'),(2,'10002','成都市政协','027-1234569','123456@163.com','市州政协','三级','2016-04-19 14:23:29'),(3,'10003','广元市政协','027-1234567','12313@qq.com','市州政协','三级','2016-04-21 14:50:51'),(4,'10004','北川直报点','027-2222222','beichuan@163.com','直报点','三级','2016-04-21 14:53:37'),(5,'10005','四川省教育专委会','027-3666666','sichuanedu@163.com','专委会','二级','2016-04-21 14:56:07'),(6,'10006','民盟四川省委','027-5555555','minmeng@163.com','民主党派与工商联','二级','2016-04-21 14:57:33');
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

-- Dump completed on 2016-04-21 15:41:03
