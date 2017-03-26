/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : sqmy

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2017-03-26 17:32:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for accounts_info
-- ----------------------------
DROP TABLE IF EXISTS `accounts_info`;
CREATE TABLE `accounts_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_num` varchar(20) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `cppcc_id` varchar(20) DEFAULT NULL,
  `unit_id` varchar(20) DEFAULT NULL,
  `authority` varchar(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of accounts_info
-- ----------------------------
INSERT INTO `accounts_info` VALUES ('1', 'login001', '6666666', null, '10002', '普通', '2016-06-07 08:56:20');
INSERT INTO `accounts_info` VALUES ('2', 'login002', '66666', null, '10002', '普通', '2016-05-08 12:59:13');
INSERT INTO `accounts_info` VALUES ('3', 'login003', '66666', null, '10003', '普通', '2016-06-07 00:01:41');
INSERT INTO `accounts_info` VALUES ('4', 'login004', '666666', '511921199403161232', null, '普通', '2016-04-21 15:30:57');
INSERT INTO `accounts_info` VALUES ('5', 'login005', '666666', '612329197002062', null, '普通', '2016-04-21 15:30:33');
INSERT INTO `accounts_info` VALUES ('6', 'login006', '666666', null, '10006', '普通', '2016-05-08 15:06:45');
INSERT INTO `accounts_info` VALUES ('7', 'login007', '666666', null, '10004', '普通', '2016-06-07 08:56:31');

-- ----------------------------
-- Table structure for audit_info
-- ----------------------------
DROP TABLE IF EXISTS `audit_info`;
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

-- ----------------------------
-- Records of audit_info
-- ----------------------------

-- ----------------------------
-- Table structure for backup_db
-- ----------------------------
DROP TABLE IF EXISTS `backup_db`;
CREATE TABLE `backup_db` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of backup_db
-- ----------------------------
INSERT INTO `backup_db` VALUES ('1', 'sqmy_20160418204547', '2016-04-18 20:45:47');
INSERT INTO `backup_db` VALUES ('2', 'sqmy_20160418205000', '2016-04-18 20:50:00');
INSERT INTO `backup_db` VALUES ('3', 'sqmy_20160418205910', '2016-04-18 20:59:10');
INSERT INTO `backup_db` VALUES ('4', 'sqmy_20160420100135', '2016-04-20 10:01:36');
INSERT INTO `backup_db` VALUES ('5', 'sqmy_20160420110812', '2016-04-20 11:08:13');
INSERT INTO `backup_db` VALUES ('6', 'sqmy_20160421154102', '2016-04-21 15:41:03');
INSERT INTO `backup_db` VALUES ('7', 'sqmy_20160421154115', '2016-04-21 15:41:16');
INSERT INTO `backup_db` VALUES ('8', 'sqmy_20160603101643', '2016-06-03 10:16:43');
INSERT INTO `backup_db` VALUES ('9', 'sqmy_20160607000152', '2016-06-07 00:01:52');
INSERT INTO `backup_db` VALUES ('10', 'sqmy_20160607100545', '2016-06-07 10:05:46');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_category` varchar(20) DEFAULT NULL,
  `second_category` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------

-- ----------------------------
-- Table structure for complaints_report
-- ----------------------------
DROP TABLE IF EXISTS `complaints_report`;
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of complaints_report
-- ----------------------------
INSERT INTO `complaints_report` VALUES ('1', '612329197012021', '张三', 'man', '公务员', '1362255332', '四川省成都市', '<p>市政协贪污腐败现象严重</p>', '20160419205003_投诉.txt', '成都市政协');
INSERT INTO `complaints_report` VALUES ('2', '612329197012028', '李四', 'man', '农民', '1362255246', '四川绵阳市', '<p>政府强制拆迁</p>', '20160419205143_投诉.txt', '绵阳市拆迁办公室');
INSERT INTO `complaints_report` VALUES ('3', '612329197012028', '李四', 'man', '公务员', '1362255246', '四川省成都市', '<p>政协贪污受贿</p>', '20160420110643_投诉.txt', '成都市政协');
INSERT INTO `complaints_report` VALUES ('4', '612329197012028', '李四', 'man', '公务员', '1362255246', '四川省成都市', '<p>政协贪污受贿</p>', '20160420111410_投诉.txt', '成都市政协');
INSERT INTO `complaints_report` VALUES ('5', '612329197012065', '赵武', 'man', '民盟会员', '1362255246', '成都市民盟所在地1001号', '<p>成都市政协公款挪用，贪污受贿...</p>', '20160421154839_投诉.txt', '成都市政协');
INSERT INTO `complaints_report` VALUES ('6', '612329197012065', '张三', 'man', '农民', '1362255246', '四川省成都市', '<p>XXX人贪污受贿</p>', '20160601123933_投诉.txt', '成都市政协');

-- ----------------------------
-- Table structure for cppcc_member
-- ----------------------------
DROP TABLE IF EXISTS `cppcc_member`;
CREATE TABLE `cppcc_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_card` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `phone_num` varchar(15) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cppcc_member
-- ----------------------------
INSERT INTO `cppcc_member` VALUES ('1', '612329199201042', '省政协委员', '13662153525', 'zhangsan@163.com', '2016-06-01 12:13:47', '张三');
INSERT INTO `cppcc_member` VALUES ('2', '612329197002062', '省政协委员', '027-6666666', '123456@163.com', '2016-04-18 00:00:00', '李四');
INSERT INTO `cppcc_member` VALUES ('3', '511921197510302310', '省政协委员', '1366245626', 'wangchuan@163.com', '2016-06-01 12:12:20', '王川');
INSERT INTO `cppcc_member` VALUES ('4', '511921199403161232', '全国政协委员', '13661235625', 'yangkening@163.com', '2016-04-21 15:14:25', '杨克宁');
INSERT INTO `cppcc_member` VALUES ('5', '511921199403161224', '全国政协委员', '13661236666', 'wanmeng@163.com', '2016-04-21 15:24:21', '王猛');
INSERT INTO `cppcc_member` VALUES ('6', '612329197002222', '省政协委员', '029-12342134', 'wangwu@163.com', '2016-06-06 23:58:29', '王五');

-- ----------------------------
-- Table structure for edit_info
-- ----------------------------
DROP TABLE IF EXISTS `edit_info`;
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

-- ----------------------------
-- Records of edit_info
-- ----------------------------

-- ----------------------------
-- Table structure for manager_info
-- ----------------------------
DROP TABLE IF EXISTS `manager_info`;
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

-- ----------------------------
-- Records of manager_info
-- ----------------------------
INSERT INTO `manager_info` VALUES ('1', 'admin', '666666', '18192392646', 'admin@163.com', '普通', '2016-06-07 10:01:26');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `content` text,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '让文明之花在基层绽放', '<h1>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <strong>让文明之花在基层绽放</strong></h1>\n\n<p>2015-12-30期01版</p>\n\n<p>&ldquo;我是社区人，我是社区花，要在社区创建和谐的家&hellip;&hellip;&rdquo;12月24日上午，北京市通州区玉桥南里南社区传出悠扬的歌声，这是社区远近闻名的&ldquo;十姐妹&rdquo;&mdash;&mdash;一支由玉桥南里南社区居民自发组织的社区志愿者队伍在合唱她们自编的歌曲《社区花》，而听她们唱歌的是前来调研的全国政协提案委员会重点提案跟踪督办调研组。&ldquo;你们可以上春晚了！&rdquo;在现场，全国政协提案委员会驻会副主任田杰发出这样的赞叹。</p>\n\n<p>他赞叹的是歌声传递的强大正能量，代表邻里和睦、互助互爱的&ldquo;十姐妹&rdquo;精神，更是这个社区居民对培育和弘扬社会主义核心价值观的一种生动诠释。</p>\n\n<p>12月24日至25日，全国政协副主席卢展工带领全国政协提案委员会调研组在京进行重点提案跟踪督办调研，玉桥南里南社区是调研目的地之一。此次调研主题是&ldquo;开展基层群众性精神文明创建活动，培育和践行社会主义核心价值观&rdquo;，调研组走访了北京的社区、乡村，并与中央文明办进行座谈交流。</p>\n\n<p>培育和践行社会主义核心价值观是党的十八大和十八届三中全会做出的重大部署，也是全国政协近年来特别关注的话题。2014年，与社会主义核心价值观相关的提案被列为全国政协重点提案，全国政协提案委曾就&ldquo;培育和践行社会主义核心价值观要融入社会生活&rdquo;先后赴湖北、江西进行了重点提案督办调研，2015年8月，全国政协专题议政性常委会议以&ldquo;积极培育和践行社会主义核心价值观&rdquo;为主题,为新态势下价值观如何落地建言献策。此次跟踪督办调研把重心放在了基层，在委员们看来，要把培育和践行社会主义核心价值观落细、落小、落实，基层是关键环节。</p>\n\n<p>立足于民，深接地气</p>\n\n<p>对城市里的人们而言，社区生活往往意味着陌生的邻居和寂寞的楼门，但调研组在玉桥南里南社区却感受到完全不一样的氛围。当日，调研组走进社区一号楼一单元，仿佛走进一个温馨的小客厅，楼道里挂着全家福，天花板垂着彩带，包饺子、演节目、打扫楼道&hellip;&hellip;宣传栏里贴的各种活动照片让人看到了这个楼门亲如一家的和谐景象。据楼门长介绍说，社区每个楼道就像一个&ldquo;立体四合院&rdquo;，邻里之间相互关爱，谁家有个难事总能找到帮忙的，在玉桥南里南社区133个楼门中，建设和谐楼门已成为居民的共同理念。</p>\n\n<p>如果说玉桥南里南社区的特色是邻里和睦，调研组走访的通州区于家务回族乡仇庄村的特色则是&ldquo;孝德立村&rdquo;。今年，他们刚刚建成了自己的孝道馆，鼓励村民传承孝德文化。走进孝道馆，仇庄村村支书边指着各种影像图片边向调研组介绍，&ldquo;这是幻影成像，看，这几个孩子在给家里长辈夹菜，现在社会大都是长辈给孩子夹菜，这种孝道已经很少见了&hellip;&hellip;&rdquo;在孝道馆里，调研组还看到了全村自编的《家道》三字经，这个拥有1000多人的村庄从去年开始启动&ldquo;追寻家训家规，呼唤良好家风&rdquo;的主题教育活动，邀请专家撰写《家道》三字经，为全村193户村民提炼了家风家规。</p>\n\n<p>玉桥南里南社区和仇庄村的生动实践给调研组留下了深刻印象，在调研组看来，培育和弘扬社会主义核心价值观要取得实效，就要立足于民，深接地气。调研组认为，社会主义核心价值观需要践行，要在做的过程中不断完善内涵，融入全社会方方面面，更要有法律法规和政策机制的保障，让核心价值观持续稳定地发挥作用。</p>\n\n<p>▲▲▲聚焦点、举旗帜，突破&ldquo;最后一公里&rdquo;</p>\n\n<p>&ldquo;在群众性精神文明创建活动中，我们吸纳了很多政协的意见建议。&rdquo;12月25日，在调研组与中央文明办座谈时，中宣部常务副部长、中央文明办主任黄坤明真诚地表达了感谢。</p>\n\n<p>这是一次零距离的座谈交流，在介绍情况时，黄坤明多次脱稿进行剖析，提出思考，会上，委员们的建议也得到了积极回应。培育和践行社会主义核心价值观要力求实效、深入民心是大家普遍关心的问题。对此，黄坤明表示，2016年，除了继续深化文明城市、文明乡村、文明单位的创建，还要重点加强文明家庭、文明校园的创建，深入推进诚信制度化，持续推动志愿服务的制度化，&ldquo;不能只在喊口号上下工夫&rdquo;。</p>\n\n<p>谈及校园的精神文明创建，鲁景超委员建议改变过去说教式的价值传播方式。&ldquo;我们应根据青年人的理解方式和感受调整我们传播社会主义核心价值观的切入点，要让他们从&lsquo;要我学&rsquo;转变为&lsquo;我想学&rsquo;。&rdquo;她表示，自己所在的中国传媒大学正在全国推广文学经典的朗读活动，并尝试在大学生中推行以时政热点为主题的辩论赛，&ldquo;我们的第一次辩论赛主题就是全国政协提案委员会今年的一个调研主题&mdash;&mdash;&mdash;农村土地确权问题，效果非常好。&rdquo;中央文明办相关负责人当即表示支持：&ldquo;我们可联合教育部去你们学校调研&rdquo;。</p>\n\n<p>吴先宁委员则建议在城市化建设中加强读书的引导，&ldquo;要提供好的书，还有好的读书环境，比如可以利用城市咖啡馆营造读书氛围&rdquo;。除了书籍，包明德委员还建议加强影视作品在培育和践行社会主义核心价值观的引导作用。在任海泉委员看来，培育和弘扬社会主义核心价值观要聚焦点、举旗帜，还要突破&ldquo;最后一公里&rdquo;，让社会主义核心价值观重点深入网络空间、乡村和社区。谈及志愿者服务，蔡玲委员认为，中国即将进入老龄化社会，养老服务需要大量志愿者，在这方面应该有相应的制度安排。黄坤明对这个建议表示赞同，他说，&ldquo;老龄化问题是大家普遍关心的热点，推行志愿服务要以养老为重点&rdquo;。</p>\n\n<p>全国政协提案委员会副主任干以胜、王国卿参加调研。</p>\n\n<p>&nbsp;</p>\n\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:100%\">\n	<tbody>\n		<tr>\n			<td>(责编：曾伟、申亚欣)</td>\n		</tr>\n	</tbody>\n</table>', '2016-04-21 15:39:31');
INSERT INTO `news` VALUES ('2', '实名制隐私保护', '<h1>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;实名制隐私保护</h1>\n\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n	<tbody>\n		<tr>\n			<td>国务院法制办11月16日公布《快递条例（征求意见稿）》，意见征求将于12月15日截止，其中的相关条款引起社会各界关注。对于《快递条例（征求意见稿）》中&nbsp;&ldquo;不得以抛扔、踩踏或者其他危害快件安全的方法处理快件&rdquo;的规定，不少网购的消费者表示支持。</td>\n		</tr>\n	</tbody>\n</table>\n\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n	<tbody>\n		<tr>\n			<td>&nbsp;</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>　　国务院法制办11月16日公布《快递条例（征求意见稿）》，意见征求将于12月15日截止，其中的相关条款引起社会各界关注。日前，10多名全国政协委员在全国政协社会和法制委员会驻会副主任吕忠梅的带领下，走进EMS北京分公司金宝街营投部、圆通速递华北处理中心以及顺丰速递华北处理中心，实地查看快递企业的运营情况，听取快递一线从业人员的意见建议。在座谈会上，政协委员、专家学者、有关部门和快递企业代表齐聚一堂，就有关问题展开了讨论。</p>\n\n<p>　　针对交寄快件实名制问题，委员和专家指出两个问题：一是收派员如何辨别身份信息的真假？二是如何做到个人信息不泄露？公安部有关部门负责人建议，出台配套办法，让身份信息识别更具操作性。另有专家指出，公安部门可通过对收派员进行培训，让其掌握真假身份信息的识别办法。而对于信息实名之后的个人隐私保护问题，有委员指出，&ldquo;可借鉴火车票的做法，隐去个人关键信息，从而更好地保护隐私&rdquo;。</p>\n\n<p>　　对于《快递条例（征求意见稿）》中 &ldquo;不得以抛扔、踩踏或者其他危害快件安全的方法处理快件&rdquo;的规定，不少网购的消费者表示支持。然而，如何才能让分拣员不&ldquo;粗暴对待&rdquo;快件呢？中国政法大学民商经济法学院副院长赵旭东建议，在分拣场所安装摄像头，从而对分拣员进行更有效的监督。此外，交通运输部专家委员会副主任孙康指出，应该删除&ldquo;抛扔、踩踏&rdquo;等表达分拣人员具体不当行为的字眼，而是将条款更改为&ldquo;不得以任何损坏快件的方法处理快件&rdquo;，目的在于&ldquo;杜绝一切损坏快件的行为，以免挂一漏万&rdquo;。</p>', '2016-06-07 08:52:42');

-- ----------------------------
-- Table structure for submit_info
-- ----------------------------
DROP TABLE IF EXISTS `submit_info`;
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

-- ----------------------------
-- Records of submit_info
-- ----------------------------

-- ----------------------------
-- Table structure for tb_score
-- ----------------------------
DROP TABLE IF EXISTS `tb_score`;
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

-- ----------------------------
-- Records of tb_score
-- ----------------------------
INSERT INTO `tb_score` VALUES ('1', null, null, null, '2016-04-20 16:34:09', null, '1', '1');
INSERT INTO `tb_score` VALUES ('2', null, null, null, '2016-04-20 16:34:22', null, '1', '1');
INSERT INTO `tb_score` VALUES ('3', null, null, null, '2016-04-20 16:34:23', null, '1', '1');
INSERT INTO `tb_score` VALUES ('4', null, null, null, '2016-04-20 16:47:42', null, '2', '2');
INSERT INTO `tb_score` VALUES ('5', null, null, null, '2016-04-20 16:47:44', null, '2', '2');
INSERT INTO `tb_score` VALUES ('6', null, null, null, '2016-04-20 16:47:45', null, '2', '2');
INSERT INTO `tb_score` VALUES ('7', null, null, null, '2016-04-20 16:47:57', null, '3', '3');
INSERT INTO `tb_score` VALUES ('8', null, null, null, '2016-04-20 16:47:59', null, '3', '3');
INSERT INTO `tb_score` VALUES ('9', null, null, null, '2016-04-20 16:48:06', null, '3', '3');
INSERT INTO `tb_score` VALUES ('10', null, null, null, '2016-04-20 16:48:38', null, '3', '3');
INSERT INTO `tb_score` VALUES ('11', null, null, null, '2016-04-21 15:20:04', null, '3', '3');
INSERT INTO `tb_score` VALUES ('12', null, null, null, '2016-04-21 15:20:05', null, '3', '3');
INSERT INTO `tb_score` VALUES ('13', null, null, null, '2016-04-21 15:20:05', null, '3', '3');
INSERT INTO `tb_score` VALUES ('14', null, null, null, '2016-04-21 15:20:06', null, '3', '3');
INSERT INTO `tb_score` VALUES ('15', null, null, null, '2016-04-21 15:20:07', null, '3', '3');
INSERT INTO `tb_score` VALUES ('16', null, null, null, '2016-04-21 15:20:07', null, '3', '3');
INSERT INTO `tb_score` VALUES ('17', null, null, null, '2016-04-21 15:20:17', null, '4', '4');
INSERT INTO `tb_score` VALUES ('18', null, null, null, '2016-04-21 15:20:19', null, '4', '4');
INSERT INTO `tb_score` VALUES ('19', null, null, null, '2016-04-21 15:20:20', null, '4', '4');
INSERT INTO `tb_score` VALUES ('20', null, null, null, '2016-04-21 15:20:20', null, '4', '4');
INSERT INTO `tb_score` VALUES ('21', null, null, null, '2016-04-21 15:20:21', null, '4', '4');
INSERT INTO `tb_score` VALUES ('22', null, null, null, '2016-04-21 15:20:21', null, '4', '4');
INSERT INTO `tb_score` VALUES ('23', null, null, null, '2016-04-21 15:20:22', null, '4', '4');
INSERT INTO `tb_score` VALUES ('24', null, null, null, '2016-04-21 15:20:22', null, '4', '4');
INSERT INTO `tb_score` VALUES ('25', null, null, null, '2016-04-21 15:20:23', null, '4', '4');
INSERT INTO `tb_score` VALUES ('26', null, null, null, '2016-04-21 15:20:24', null, '4', '4');
INSERT INTO `tb_score` VALUES ('27', null, null, null, '2016-04-21 15:20:24', null, '4', '4');
INSERT INTO `tb_score` VALUES ('28', null, null, null, '2016-04-21 15:20:35', null, '5', '5');
INSERT INTO `tb_score` VALUES ('29', null, null, null, '2016-04-21 15:20:36', null, '5', '5');
INSERT INTO `tb_score` VALUES ('30', null, null, null, '2016-04-21 15:20:37', null, '5', '5');
INSERT INTO `tb_score` VALUES ('31', null, null, null, '2016-04-21 15:20:37', null, '5', '5');
INSERT INTO `tb_score` VALUES ('32', null, null, null, '2016-04-21 15:20:38', null, '5', '5');
INSERT INTO `tb_score` VALUES ('33', null, null, null, '2016-04-21 15:20:39', null, '5', '5');
INSERT INTO `tb_score` VALUES ('34', null, null, null, '2016-04-21 15:20:40', null, '5', '5');
INSERT INTO `tb_score` VALUES ('35', null, null, null, '2016-04-21 15:20:40', null, '5', '5');
INSERT INTO `tb_score` VALUES ('36', null, null, null, '2016-04-21 15:20:41', null, '5', '5');
INSERT INTO `tb_score` VALUES ('37', null, null, null, '2016-04-21 15:20:41', null, '5', '5');
INSERT INTO `tb_score` VALUES ('38', null, null, null, '2016-04-21 15:20:42', null, '5', '5');
INSERT INTO `tb_score` VALUES ('39', null, null, null, '2016-04-21 15:20:42', null, '5', '5');
INSERT INTO `tb_score` VALUES ('40', null, null, null, '2016-04-21 15:21:09', null, '5', '5');
INSERT INTO `tb_score` VALUES ('41', null, null, null, '2016-04-21 15:21:10', null, '5', '5');
INSERT INTO `tb_score` VALUES ('42', null, null, null, '2016-04-21 15:21:11', null, '5', '5');
INSERT INTO `tb_score` VALUES ('43', null, null, null, '2016-04-21 15:21:19', null, '2', '2');
INSERT INTO `tb_score` VALUES ('44', null, null, null, '2016-04-21 15:21:20', null, '2', '2');
INSERT INTO `tb_score` VALUES ('45', null, null, null, '2016-04-21 15:21:21', null, '2', '2');
INSERT INTO `tb_score` VALUES ('46', null, null, null, '2016-04-21 15:21:25', null, '2', '2');
INSERT INTO `tb_score` VALUES ('47', null, null, null, '2016-04-21 15:21:33', null, '1', '1');
INSERT INTO `tb_score` VALUES ('48', null, null, null, '2016-04-21 15:21:34', null, '1', '1');
INSERT INTO `tb_score` VALUES ('49', null, null, null, '2016-04-21 15:21:36', null, '1', '1');
INSERT INTO `tb_score` VALUES ('50', null, null, null, '2016-04-21 15:25:20', null, '4', '6');
INSERT INTO `tb_score` VALUES ('51', null, null, null, '2016-04-21 15:25:25', null, '3', '6');
INSERT INTO `tb_score` VALUES ('52', null, null, null, '2016-04-21 15:25:43', null, '5', '6');

-- ----------------------------
-- Table structure for units_info
-- ----------------------------
DROP TABLE IF EXISTS `units_info`;
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of units_info
-- ----------------------------
INSERT INTO `units_info` VALUES ('1', '10001', '绵阳市政协', '027-6666666', 'mianyanag@163.com', '市州政协', '三级', '2016-06-06 22:28:53');
INSERT INTO `units_info` VALUES ('2', '10002', '成都市政协', '027-1234569', '123456@163.com', '市州政协', '三级', '2016-04-19 14:23:29');
INSERT INTO `units_info` VALUES ('3', '10003', '广元市政协', '027-1234567', '12313@qq.com', '市州政协', '三级', '2016-04-21 14:50:51');
INSERT INTO `units_info` VALUES ('4', '10004', '北川直报点', '027-2222222', 'beichuan@163.com', '直报点', '三级', '2016-04-21 14:53:37');
INSERT INTO `units_info` VALUES ('5', '10005', '四川省教育专委会', '027-3666666', 'sichuanedu@163.com', '专委会', '二级', '2016-04-21 14:56:07');
INSERT INTO `units_info` VALUES ('6', '10006', '民盟四川省委', '027-5555555', 'minmeng@163.com', '民主党派与工商联', '二级', '2016-04-21 14:57:33');
