-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: homestay
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614960332782 DEFAULT CHARSET=utf8 COMMENT='在线客服';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (91,'2021-04-15 15:55:18',1,1,'提问1','回复1',1),(92,'2021-04-15 15:55:18',2,2,'提问2','回复2',2),(93,'2021-04-15 15:55:18',3,3,'提问3','回复3',3),(94,'2021-04-15 15:55:18',4,4,'提问4','回复4',4),(95,'2021-04-15 15:55:18',5,5,'提问5','回复5',5),(96,'2021-04-15 15:55:18',6,6,'提问6','回复6',6),(1614960290796,'2021-04-15 16:04:49',11,NULL,'11111',NULL,0),(1614960332781,'2021-04-15 16:05:32',11,1,NULL,'22222',NULL);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/homestay/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/homestay/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/homestay/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussfangjianxinxi`
--

DROP TABLE IF EXISTS `discussfangjianxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussfangjianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='房间信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussfangjianxinxi`
--

LOCK TABLES `discussfangjianxinxi` WRITE;
/*!40000 ALTER TABLE `discussfangjianxinxi` DISABLE KEYS */;
INSERT INTO `discussfangjianxinxi` VALUES (121,'2021-04-15 15:55:18',1,1,'评论内容1','回复内容1'),(122,'2021-04-15 15:55:18',2,2,'评论内容2','回复内容2'),(123,'2021-04-15 15:55:18',3,3,'评论内容3','回复内容3'),(124,'2021-04-15 15:55:18',4,4,'评论内容4','回复内容4'),(125,'2021-04-15 15:55:18',5,5,'评论内容5','回复内容5'),(126,'2021-04-15 15:55:18',6,6,'评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussfangjianxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussminsuxinxi`
--

DROP TABLE IF EXISTS `discussminsuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussminsuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614959961526 DEFAULT CHARSET=utf8 COMMENT='民宿信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussminsuxinxi`
--

LOCK TABLES `discussminsuxinxi` WRITE;
/*!40000 ALTER TABLE `discussminsuxinxi` DISABLE KEYS */;
INSERT INTO `discussminsuxinxi` VALUES (111,'2021-04-15 15:55:18',1,1,'评论内容1','回复内容1'),(112,'2021-04-15 15:55:18',2,2,'评论内容2','回复内容2'),(113,'2021-04-15 15:55:18',3,3,'评论内容3','回复内容3'),(114,'2021-04-15 15:55:18',4,4,'评论内容4','回复内容4'),(115,'2021-04-15 15:55:18',5,5,'评论内容5','回复内容5'),(116,'2021-04-15 15:55:18',6,6,'评论内容6','回复内容6'),(1614959961525,'2021-04-15 15:59:20',31,11,'11',NULL);
/*!40000 ALTER TABLE `discussminsuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fangjianleixing`
--

DROP TABLE IF EXISTS `fangjianleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fangjianleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangjianleixing` varchar(200) NOT NULL COMMENT '房间类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fangjianleixing` (`fangjianleixing`)
) ENGINE=InnoDB AUTO_INCREMENT=1614960204150 DEFAULT CHARSET=utf8 COMMENT='房间类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fangjianleixing`
--

LOCK TABLES `fangjianleixing` WRITE;
/*!40000 ALTER TABLE `fangjianleixing` DISABLE KEYS */;
INSERT INTO `fangjianleixing` VALUES (41,'2021-04-15 15:55:18','房间类型1'),(42,'2021-04-15 15:55:18','房间类型2'),(43,'2021-04-15 15:55:18','房间类型3'),(44,'2021-04-15 15:55:18','房间类型4'),(45,'2021-04-15 15:55:18','房间类型5'),(46,'2021-04-15 15:55:18','6'),(1614960204149,'2021-04-15 16:03:23','7');
/*!40000 ALTER TABLE `fangjianleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fangjiantuiding`
--

DROP TABLE IF EXISTS `fangjiantuiding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fangjiantuiding` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tuidingbianhao` varchar(200) DEFAULT NULL COMMENT '退订编号',
  `shangjiabianhao` varchar(200) DEFAULT NULL COMMENT '商家编号',
  `minsumingcheng` varchar(200) DEFAULT NULL COMMENT '民宿名称',
  `fangjianleixing` varchar(200) DEFAULT NULL COMMENT '房间类型',
  `fangjianjiage` int(11) DEFAULT NULL COMMENT '房间价格',
  `tianshu` int(11) DEFAULT NULL COMMENT '天数',
  `yishoujine` varchar(200) DEFAULT NULL COMMENT '已收金额',
  `tuidingshijian` datetime DEFAULT NULL COMMENT '退订时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tuidingbianhao` (`tuidingbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614960025711 DEFAULT CHARSET=utf8 COMMENT='房间退订';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fangjiantuiding`
--

LOCK TABLES `fangjiantuiding` WRITE;
/*!40000 ALTER TABLE `fangjiantuiding` DISABLE KEYS */;
INSERT INTO `fangjiantuiding` VALUES (71,'2021-04-15 15:55:18','退订编号1','商家编号1','民宿名称1','房间类型1',1,1,'已收金额1','2021-04-15 23:55:18','备注1','账号1','姓名1','手机1','是','','未支付'),(72,'2021-04-15 15:55:18','退订编号2','商家编号2','民宿名称2','房间类型2',2,2,'已收金额2','2021-04-15 23:55:18','备注2','账号2','姓名2','手机2','是','','未支付'),(73,'2021-04-15 15:55:18','退订编号3','商家编号3','民宿名称3','房间类型3',3,3,'已收金额3','2021-04-15 23:55:18','备注3','账号3','姓名3','手机3','是','','未支付'),(74,'2021-04-15 15:55:18','退订编号4','商家编号4','民宿名称4','房间类型4',4,4,'已收金额4','2021-04-15 23:55:18','备注4','账号4','姓名4','手机4','是','','未支付'),(75,'2021-04-15 15:55:18','退订编号5','商家编号5','民宿名称5','房间类型5',5,5,'已收金额5','2021-04-15 23:55:18','备注5','账号5','姓名5','手机5','是','','未支付'),(76,'2021-04-15 15:55:18','退订编号6','商家编号6','民宿名称6','房间类型6',6,6,'已收金额6','2021-04-15 23:55:18','备注6','账号6','姓名6','手机6','是','','未支付'),(1614960025710,'2021-04-15 16:00:25','202136001639621788','商家编号1','民宿名称1','房间类型1',1,2,'2','2021-03-06 00:00:24','22','用户1','姓名1','13823888881','是',NULL,'未支付');
/*!40000 ALTER TABLE `fangjiantuiding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fangjianxinxi`
--

DROP TABLE IF EXISTS `fangjianxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fangjianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangjiabianhao` varchar(200) DEFAULT NULL COMMENT '商家编号',
  `minsumingcheng` varchar(200) NOT NULL COMMENT '民宿名称',
  `fangjianleixing` varchar(200) NOT NULL COMMENT '房间类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `fangjiansheshi` varchar(200) DEFAULT NULL COMMENT '房间设施',
  `fangjianjiage` int(11) DEFAULT NULL COMMENT '房间价格',
  `fangjianjieshao` longtext COMMENT '房间介绍',
  `shouqujine` varchar(200) DEFAULT NULL COMMENT '收取金额',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='房间信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fangjianxinxi`
--

LOCK TABLES `fangjianxinxi` WRITE;
/*!40000 ALTER TABLE `fangjianxinxi` DISABLE KEYS */;
INSERT INTO `fangjianxinxi` VALUES (51,'2021-04-15 15:55:18','商家编号1','民宿名称1','房间类型1','http://localhost:8080/homestay/upload/fangjianxinxi_tupian1.jpg','房间设施1',1,'房间介绍1','收取金额1',1,1,'2021-03-06 00:00:28',4),(52,'2021-04-15 15:55:18','商家编号2','民宿名称2','房间类型2','http://localhost:8080/homestay/upload/fangjianxinxi_tupian2.jpg','房间设施2',2,'房间介绍2','收取金额2',2,2,'2021-04-15 23:55:18',2),(53,'2021-04-15 15:55:18','商家编号3','民宿名称3','房间类型3','http://localhost:8080/homestay/upload/fangjianxinxi_tupian3.jpg','房间设施3',3,'房间介绍3','收取金额3',3,3,'2021-04-15 23:55:18',3),(54,'2021-04-15 15:55:18','商家编号4','民宿名称4','房间类型4','http://localhost:8080/homestay/upload/fangjianxinxi_tupian4.jpg','房间设施4',4,'房间介绍4','收取金额4',4,4,'2021-04-15 23:55:18',4),(55,'2021-04-15 15:55:18','商家编号5','民宿名称5','房间类型5','http://localhost:8080/homestay/upload/fangjianxinxi_tupian5.jpg','房间设施5',5,'房间介绍5','收取金额5',5,5,'2021-04-15 23:55:18',5),(56,'2021-04-15 15:55:18','商家编号6','民宿名称6','房间类型6','http://localhost:8080/homestay/upload/fangjianxinxi_tupian6.jpg','房间设施6',6,'房间介绍6','收取金额6',6,6,'2021-04-15 23:55:18',6);
/*!40000 ALTER TABLE `fangjianxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fangjianyuding`
--

DROP TABLE IF EXISTS `fangjianyuding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fangjianyuding` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yudingbianhao` varchar(200) DEFAULT NULL COMMENT '预订编号',
  `shangjiabianhao` varchar(200) DEFAULT NULL COMMENT '商家编号',
  `minsumingcheng` varchar(200) DEFAULT NULL COMMENT '民宿名称',
  `fangjianleixing` varchar(200) DEFAULT NULL COMMENT '房间类型',
  `fangjianjiage` int(11) DEFAULT NULL COMMENT '房间价格',
  `tianshu` int(11) DEFAULT NULL COMMENT '天数',
  `yishoujine` varchar(200) DEFAULT NULL COMMENT '已收金额',
  `yudingshijian` datetime DEFAULT NULL COMMENT '预订时间',
  `ruzhushijian` datetime DEFAULT NULL COMMENT '入住时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yudingbianhao` (`yudingbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614960006913 DEFAULT CHARSET=utf8 COMMENT='房间预订';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fangjianyuding`
--

LOCK TABLES `fangjianyuding` WRITE;
/*!40000 ALTER TABLE `fangjianyuding` DISABLE KEYS */;
INSERT INTO `fangjianyuding` VALUES (61,'2021-04-15 15:55:18','预订编号1','商家编号1','民宿名称1','房间类型1',1,1,'已收金额1','2021-04-15 23:55:18','2021-04-15 23:55:18','备注1','账号1','姓名1','手机1','未支付'),(62,'2021-04-15 15:55:18','预订编号2','商家编号2','民宿名称2','房间类型2',2,2,'已收金额2','2021-04-15 23:55:18','2021-04-15 23:55:18','备注2','账号2','姓名2','手机2','未支付'),(63,'2021-04-15 15:55:18','预订编号3','商家编号3','民宿名称3','房间类型3',3,3,'已收金额3','2021-04-15 23:55:18','2021-04-15 23:55:18','备注3','账号3','姓名3','手机3','未支付'),(64,'2021-04-15 15:55:18','预订编号4','商家编号4','民宿名称4','房间类型4',4,4,'已收金额4','2021-04-15 23:55:18','2021-04-15 23:55:18','备注4','账号4','姓名4','手机4','未支付'),(65,'2021-04-15 15:55:18','预订编号5','商家编号5','民宿名称5','房间类型5',5,5,'已收金额5','2021-04-15 23:55:18','2021-04-15 23:55:18','备注5','账号5','姓名5','手机5','未支付'),(66,'2021-04-15 15:55:18','预订编号6','商家编号6','民宿名称6','房间类型6',6,6,'已收金额6','2021-04-15 23:55:18','2021-04-15 23:55:18','备注6','账号6','姓名6','手机6','未支付'),(1614960006912,'2021-04-15 16:00:05','20213523594861256576','商家编号1','民宿名称1','房间类型1',1,2,'2','2021-04-15 23:59:56','2021-03-06 08:00:00','22','用户1','姓名1','13823888881','已支付');
/*!40000 ALTER TABLE `fangjianyuding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `minsuxinxi`
--

DROP TABLE IF EXISTS `minsuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `minsuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangjiabianhao` varchar(200) DEFAULT NULL COMMENT '商家编号',
  `minsubianhao` varchar(200) DEFAULT NULL COMMENT '民宿编号',
  `minsumingcheng` varchar(200) DEFAULT NULL COMMENT '民宿名称',
  `minsudizhi` varchar(200) DEFAULT NULL COMMENT '民宿地址',
  `minsutupian` varchar(200) DEFAULT NULL COMMENT '民宿图片',
  `minsujianjie` varchar(200) DEFAULT NULL COMMENT '民宿简介',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `minsubianhao` (`minsubianhao`),
  UNIQUE KEY `minsumingcheng` (`minsumingcheng`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='民宿信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `minsuxinxi`
--

LOCK TABLES `minsuxinxi` WRITE;
/*!40000 ALTER TABLE `minsuxinxi` DISABLE KEYS */;
INSERT INTO `minsuxinxi` VALUES (31,'2021-04-15 15:55:18','商家编号1','民宿编号1','民宿名称1','民宿地址1','http://localhost:8080/homestay/upload/minsuxinxi_minsutupian1.jpg','民宿简介',2,2,'2021-03-06 00:06:22'),(32,'2021-04-15 15:55:18','商家编号2','民宿编号2','民宿名称2','民宿地址2','http://localhost:8080/homestay/upload/minsuxinxi_minsutupian2.jpg','民宿简介2',2,2,'2021-04-15 23:55:18'),(33,'2021-04-15 15:55:18','商家编号3','民宿编号3','民宿名称3','民宿地址3','http://localhost:8080/homestay/upload/minsuxinxi_minsutupian3.jpg','民宿简介3',3,3,'2021-04-15 23:55:18'),(34,'2021-04-15 15:55:18','商家编号4','民宿编号4','民宿名称4','民宿地址4','http://localhost:8080/homestay/upload/minsuxinxi_minsutupian4.jpg','民宿简介4',4,4,'2021-04-15 23:55:18'),(35,'2021-04-15 15:55:18','商家编号5','民宿编号5','民宿名称5','民宿地址5','http://localhost:8080/homestay/upload/minsuxinxi_minsutupian5.jpg','民宿简介5',5,5,'2021-04-15 23:55:18'),(36,'2021-04-15 15:55:18','商家编号6','民宿编号6','民宿名称6','民宿地址6','http://localhost:8080/homestay/upload/minsuxinxi_minsutupian6.jpg','民宿简介6',6,6,'2021-04-15 23:55:18');
/*!40000 ALTER TABLE `minsuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangjia`
--

DROP TABLE IF EXISTS `shangjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangjiabianhao` varchar(200) NOT NULL COMMENT '商家编号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `shangjiamingcheng` varchar(200) NOT NULL COMMENT '商家名称',
  `lianxidianhua` varchar(200) NOT NULL COMMENT '联系电话',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangjiabianhao` (`shangjiabianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614960177933 DEFAULT CHARSET=utf8 COMMENT='商家';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangjia`
--

LOCK TABLES `shangjia` WRITE;
/*!40000 ALTER TABLE `shangjia` DISABLE KEYS */;
INSERT INTO `shangjia` VALUES (21,'2021-04-15 15:55:18','商家编号1','123456','商家名称1','13823888881','http://localhost:8080/homestay/upload/shangjia_touxiang1.jpg','备注1'),(22,'2021-04-15 15:55:18','商家2','123456','商家名称2','13823888882','http://localhost:8080/homestay/upload/shangjia_touxiang2.jpg','备注2'),(23,'2021-04-15 15:55:18','商家3','123456','商家名称3','13823888883','http://localhost:8080/homestay/upload/shangjia_touxiang3.jpg','备注3'),(24,'2021-04-15 15:55:18','商家4','123456','商家名称4','13823888884','http://localhost:8080/homestay/upload/shangjia_touxiang4.jpg','备注4'),(25,'2021-04-15 15:55:18','商家5','123456','商家名称5','13823888885','http://localhost:8080/homestay/upload/shangjia_touxiang5.jpg','备注5'),(26,'2021-04-15 15:55:18','商家6','123456','商家名称6','13823888886','http://localhost:8080/homestay/upload/shangjia_touxiang6.jpg','备注6'),(1614960177932,'2021-04-15 16:02:57','11','11','11','11111111112','http://localhost:8080/homestay/upload/1614960176499.jpg',NULL);
/*!40000 ALTER TABLE `shangjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614959986125 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1614959955308,'2021-04-15 15:59:15',11,31,'minsuxinxi','民宿名称1','http://localhost:8080/homestay/upload/minsuxinxi_minsutupian1.jpg'),(1614959986124,'2021-04-15 15:59:45',11,51,'fangjianxinxi','民宿名称1','http://localhost:8080/homestay/upload/fangjianxinxi_tupian1.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,11,'用户1','yonghu','用户','1qxzj3dpk5tbjqhgc0anrfqdvsyc5kf3','2021-04-15 15:58:56','2021-04-15 17:04:45'),(2,1,'abo','users','管理员','k7lmtuifhe7om255wou703n4s7lfrng8','2021-04-15 16:02:04','2021-04-15 17:05:11'),(3,21,'商家编号1','shangjia','商家','6yt0t41pm1sc1nvprmdvn2brx4lwi5re','2021-04-15 16:06:12','2021-04-15 17:06:13');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tousufankui`
--

DROP TABLE IF EXISTS `tousufankui`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tousufankui` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `shangjiabianhao` varchar(200) DEFAULT NULL COMMENT '商家编号',
  `minsumingcheng` varchar(200) DEFAULT NULL COMMENT '民宿名称',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `fankuineirong` longtext COMMENT '反馈内容',
  `fankuiriqi` datetime DEFAULT NULL COMMENT '反馈日期',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bianhao` (`bianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614959978191 DEFAULT CHARSET=utf8 COMMENT='投诉反馈';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tousufankui`
--

LOCK TABLES `tousufankui` WRITE;
/*!40000 ALTER TABLE `tousufankui` DISABLE KEYS */;
INSERT INTO `tousufankui` VALUES (81,'2021-04-15 15:55:18','编号1','账号1','商家编号1','民宿名称1','标题1','反馈内容1','2021-04-15 23:55:18','是',''),(82,'2021-04-15 15:55:18','编号2','账号2','商家编号2','民宿名称2','标题2','反馈内容2','2021-04-15 23:55:18','是',''),(83,'2021-04-15 15:55:18','编号3','账号3','商家编号3','民宿名称3','标题3','反馈内容3','2021-04-15 23:55:18','是',''),(84,'2021-04-15 15:55:18','编号4','账号4','商家编号4','民宿名称4','标题4','反馈内容4','2021-04-15 23:55:18','是',''),(85,'2021-04-15 15:55:18','编号5','账号5','商家编号5','民宿名称5','标题5','反馈内容5','2021-04-15 23:55:18','是',''),(86,'2021-04-15 15:55:18','编号6','账号6','商家编号6','民宿名称6','标题6','反馈内容6','2021-04-15 23:55:18','是',''),(1614959978190,'2021-04-15 15:59:37','20213523592820027733','用户1','商家编号1','民宿名称1','11','<p>请输入反馈内容111</p>','2021-04-15 23:59:35','是','22222');
/*!40000 ALTER TABLE `tousufankui` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-04-15 15:55:18');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614960143913 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-04-15 15:55:18','用户1','123456','姓名1','男','13823888881','773890001@qq.com','http://localhost:8080/homestay/upload/1614960038782.jpg','备注1'),(12,'2021-04-15 15:55:18','用户2','123456','姓名2','男','13823888882','773890002@qq.com','http://localhost:8080/homestay/upload/yonghu_zhaopian2.jpg','备注2'),(13,'2021-04-15 15:55:18','用户3','123456','姓名3','男','13823888883','773890003@qq.com','http://localhost:8080/homestay/upload/yonghu_zhaopian3.jpg','备注3'),(14,'2021-04-15 15:55:18','用户4','123456','姓名4','男','13823888884','773890004@qq.com','http://localhost:8080/homestay/upload/yonghu_zhaopian4.jpg','备注4'),(15,'2021-04-15 15:55:18','用户5','123456','姓名5','男','13823888885','773890005@qq.com','http://localhost:8080/homestay/upload/yonghu_zhaopian5.jpg','备注5'),(16,'2021-04-15 15:55:18','用户6','123456','姓名6','男','13823888886','773890006@qq.com','http://localhost:8080/homestay/upload/yonghu_zhaopian6.jpg','备注6'),(1614960143912,'2021-04-15 16:02:23','11','11','11','男','13800138000',NULL,'http://localhost:8080/homestay/upload/1614960142850.jpg',NULL);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-07 20:15:47
