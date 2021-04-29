/*
Navicat MySQL Data Transfer

Source Server         : 1_local
Source Server Version : 50731
Source Host           : localhost:3306
Source Database       : homestay

Target Server Type    : MYSQL
Target Server Version : 50731
File Encoding         : 65001

Date: 2021-04-29 17:53:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `chat`
-- ----------------------------
DROP TABLE IF EXISTS `chat`;
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

-- ----------------------------
-- Records of chat
-- ----------------------------
INSERT INTO `chat` VALUES ('91', '2021-03-05 23:55:18', '1', '1', '提问1', '回复1', '1');
INSERT INTO `chat` VALUES ('92', '2021-03-05 23:55:18', '2', '2', '提问2', '回复2', '2');
INSERT INTO `chat` VALUES ('93', '2021-03-05 23:55:18', '3', '3', '提问3', '回复3', '3');
INSERT INTO `chat` VALUES ('94', '2021-03-05 23:55:18', '4', '4', '提问4', '回复4', '4');
INSERT INTO `chat` VALUES ('95', '2021-03-05 23:55:18', '5', '5', '提问5', '回复5', '5');
INSERT INTO `chat` VALUES ('96', '2021-03-05 23:55:18', '6', '6', '提问6', '回复6', '6');
INSERT INTO `chat` VALUES ('1614960290796', '2021-03-06 00:04:49', '11', null, '11111', null, '0');
INSERT INTO `chat` VALUES ('1614960332781', '2021-03-06 00:05:32', '11', '1', null, '22222', null);

-- ----------------------------
-- Table structure for `config`
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES ('1', 'picture1', 'http://localhost:8080/homestay/upload/picture1.jpg');
INSERT INTO `config` VALUES ('2', 'picture2', 'http://localhost:8080/homestay/upload/picture2.jpg');
INSERT INTO `config` VALUES ('3', 'picture3', 'http://localhost:8080/homestay/upload/picture3.jpg');
INSERT INTO `config` VALUES ('6', 'homepage', null);

-- ----------------------------
-- Table structure for `discussfangjianxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `discussfangjianxinxi`;
CREATE TABLE `discussfangjianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='房间信息评论表';

-- ----------------------------
-- Records of discussfangjianxinxi
-- ----------------------------
INSERT INTO `discussfangjianxinxi` VALUES ('121', '2021-03-05 23:55:18', '1', '1', '评论内容1', '回复内容1');
INSERT INTO `discussfangjianxinxi` VALUES ('122', '2021-03-05 23:55:18', '2', '2', '评论内容2', '回复内容2');
INSERT INTO `discussfangjianxinxi` VALUES ('123', '2021-03-05 23:55:18', '3', '3', '评论内容3', '回复内容3');
INSERT INTO `discussfangjianxinxi` VALUES ('124', '2021-03-05 23:55:18', '4', '4', '评论内容4', '回复内容4');
INSERT INTO `discussfangjianxinxi` VALUES ('125', '2021-03-05 23:55:18', '5', '5', '评论内容5', '回复内容5');
INSERT INTO `discussfangjianxinxi` VALUES ('126', '2021-03-05 23:55:18', '6', '6', '评论内容6', '回复内容6');

-- ----------------------------
-- Table structure for `discussminsuxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `discussminsuxinxi`;
CREATE TABLE `discussminsuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614959961526 DEFAULT CHARSET=utf8 COMMENT='民宿信息评论表';

-- ----------------------------
-- Records of discussminsuxinxi
-- ----------------------------
INSERT INTO `discussminsuxinxi` VALUES ('111', '2021-03-05 23:55:18', '1', '1', '评论内容1', '回复内容1');
INSERT INTO `discussminsuxinxi` VALUES ('112', '2021-03-05 23:55:18', '2', '2', '评论内容2', '回复内容2');
INSERT INTO `discussminsuxinxi` VALUES ('113', '2021-03-05 23:55:18', '3', '3', '评论内容3', '回复内容3');
INSERT INTO `discussminsuxinxi` VALUES ('114', '2021-03-05 23:55:18', '4', '4', '评论内容4', '回复内容4');
INSERT INTO `discussminsuxinxi` VALUES ('115', '2021-03-05 23:55:18', '5', '5', '评论内容5', '回复内容5');
INSERT INTO `discussminsuxinxi` VALUES ('116', '2021-03-05 23:55:18', '6', '6', '评论内容6', '回复内容6');
INSERT INTO `discussminsuxinxi` VALUES ('1614959961525', '2021-03-05 23:59:20', '31', '11', '11', null);

-- ----------------------------
-- Table structure for `fangjianleixing`
-- ----------------------------
DROP TABLE IF EXISTS `fangjianleixing`;
CREATE TABLE `fangjianleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangjianleixing` varchar(200) NOT NULL COMMENT '房间类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fangjianleixing` (`fangjianleixing`)
) ENGINE=InnoDB AUTO_INCREMENT=1614960204150 DEFAULT CHARSET=utf8 COMMENT='房间类型';

-- ----------------------------
-- Records of fangjianleixing
-- ----------------------------
INSERT INTO `fangjianleixing` VALUES ('41', '2021-03-05 23:55:18', '房间类型1');
INSERT INTO `fangjianleixing` VALUES ('42', '2021-03-05 23:55:18', '房间类型2');
INSERT INTO `fangjianleixing` VALUES ('43', '2021-03-05 23:55:18', '房间类型3');
INSERT INTO `fangjianleixing` VALUES ('44', '2021-03-05 23:55:18', '房间类型4');
INSERT INTO `fangjianleixing` VALUES ('45', '2021-03-05 23:55:18', '房间类型5');
INSERT INTO `fangjianleixing` VALUES ('46', '2021-03-05 23:55:18', '6');
INSERT INTO `fangjianleixing` VALUES ('1614960204149', '2021-03-06 00:03:23', '7');

-- ----------------------------
-- Table structure for `fangjiantuiding`
-- ----------------------------
DROP TABLE IF EXISTS `fangjiantuiding`;
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
) ENGINE=InnoDB AUTO_INCREMENT=1619667547842 DEFAULT CHARSET=utf8 COMMENT='房间退订';

-- ----------------------------
-- Records of fangjiantuiding
-- ----------------------------
INSERT INTO `fangjiantuiding` VALUES ('71', '2021-03-05 23:55:18', '退订编号1', '商家编号1', '民宿名称1', '房间类型1', '1', '1', '已收金额1', '2021-03-05 23:55:18', '备注1', '账号1', '姓名1', '手机1', '是', '', '未支付');
INSERT INTO `fangjiantuiding` VALUES ('72', '2021-03-05 23:55:18', '退订编号2', '商家编号2', '民宿名称2', '房间类型2', '2', '2', '已收金额2', '2021-03-05 23:55:18', '备注2', '账号2', '姓名2', '手机2', '是', '', '未支付');
INSERT INTO `fangjiantuiding` VALUES ('73', '2021-03-05 23:55:18', '退订编号3', '商家编号3', '民宿名称3', '房间类型3', '3', '3', '已收金额3', '2021-03-05 23:55:18', '备注3', '账号3', '姓名3', '手机3', '是', '', '未支付');
INSERT INTO `fangjiantuiding` VALUES ('74', '2021-03-05 23:55:18', '退订编号4', '商家编号4', '民宿名称4', '房间类型4', '4', '4', '已收金额4', '2021-03-05 23:55:18', '备注4', '账号4', '姓名4', '手机4', '是', '', '未支付');
INSERT INTO `fangjiantuiding` VALUES ('75', '2021-03-05 23:55:18', '退订编号5', '商家编号5', '民宿名称5', '房间类型5', '5', '5', '已收金额5', '2021-03-05 23:55:18', '备注5', '账号5', '姓名5', '手机5', '是', '', '未支付');
INSERT INTO `fangjiantuiding` VALUES ('76', '2021-03-05 23:55:18', '退订编号6', '商家编号6', '民宿名称6', '房间类型6', '6', '6', '已收金额6', '2021-03-05 23:55:18', '备注6', '账号6', '姓名6', '手机6', '是', '', '未支付');

-- ----------------------------
-- Table structure for `fangjianxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `fangjianxinxi`;
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
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619687711425 DEFAULT CHARSET=utf8 COMMENT='房间信息';

-- ----------------------------
-- Records of fangjianxinxi
-- ----------------------------
INSERT INTO `fangjianxinxi` VALUES ('52', '2021-03-05 23:55:18', '商家编号2', '民宿名称2', '房间类型2', 'http://localhost:8080/homestay/upload/fangjianxinxi_tupian2.jpg', '房间设施2', '2', '房间介绍2', '收取金额2', '2', '2', '2021-04-29 09:47:12', '4', '1');
INSERT INTO `fangjianxinxi` VALUES ('53', '2021-03-05 23:55:18', '商家编号3', '民宿名称3', '房间类型3', 'http://localhost:8080/homestay/upload/fangjianxinxi_tupian3.jpg', '房间设施3', '3', '房间介绍3', '收取金额3', '3', '3', '2021-04-29 03:39:09', '8', '1');
INSERT INTO `fangjianxinxi` VALUES ('54', '2021-03-05 23:55:18', '商家编号4', '民宿名称4', '房间类型4', 'http://localhost:8080/homestay/upload/fangjianxinxi_tupian4.jpg', '房间设施4', '4', '房间介绍4', '收取金额4', '4', '4', '2021-04-29 07:16:30', '5', '1');
INSERT INTO `fangjianxinxi` VALUES ('55', '2021-03-05 23:55:18', '商家编号5', '民宿名称5', '房间类型5', 'http://localhost:8080/homestay/upload/fangjianxinxi_tupian5.jpg', '房间设施5', '5', '房间介绍5', '收取金额5', '5', '5', '2021-04-29 07:20:57', '9', '1');
INSERT INTO `fangjianxinxi` VALUES ('56', '2021-03-05 23:55:18', '商家编号6', '民宿名称6', '房间类型6', 'http://localhost:8080/homestay/upload/fangjianxinxi_tupian6.jpg', '房间设施6', '6', '房间介绍6', '收取金额6', '6', '6', '2021-04-29 03:36:26', '8', '1');

-- ----------------------------
-- Table structure for `fangjianyuding`
-- ----------------------------
DROP TABLE IF EXISTS `fangjianyuding`;
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
) ENGINE=InnoDB AUTO_INCREMENT=1619667815145 DEFAULT CHARSET=utf8 COMMENT='房间预订';

-- ----------------------------
-- Records of fangjianyuding
-- ----------------------------
INSERT INTO `fangjianyuding` VALUES ('61', '2021-03-05 23:55:18', '预订编号1', '商家编号1', '民宿名称1', '房间类型1', '1', '1', '已收金额1', '2021-03-05 23:55:18', '2021-03-05 23:55:18', '备注1', '账号1', '姓名1', '手机1', '未支付');
INSERT INTO `fangjianyuding` VALUES ('62', '2021-03-05 23:55:18', '预订编号2', '商家编号2', '民宿名称2', '房间类型2', '2', '2', '已收金额2', '2021-03-05 23:55:18', '2021-03-05 23:55:18', '备注2', '账号2', '姓名2', '手机2', '未支付');
INSERT INTO `fangjianyuding` VALUES ('63', '2021-03-05 23:55:18', '预订编号3', '商家编号3', '民宿名称3', '房间类型3', '3', '3', '已收金额3', '2021-03-05 23:55:18', '2021-03-05 23:55:18', '备注3', '账号3', '姓名3', '手机3', '未支付');
INSERT INTO `fangjianyuding` VALUES ('64', '2021-03-05 23:55:18', '预订编号4', '商家编号4', '民宿名称4', '房间类型4', '4', '4', '已收金额4', '2021-03-05 23:55:18', '2021-03-05 23:55:18', '备注4', '账号4', '姓名4', '手机4', '未支付');
INSERT INTO `fangjianyuding` VALUES ('65', '2021-03-05 23:55:18', '预订编号5', '商家编号5', '民宿名称5', '房间类型5', '5', '5', '已收金额5', '2021-03-05 23:55:18', '2021-03-05 23:55:18', '备注5', '账号5', '姓名5', '手机5', '未支付');
INSERT INTO `fangjianyuding` VALUES ('66', '2021-03-05 23:55:18', '预订编号6', '商家编号6', '民宿名称6', '房间类型6', '6', '6', '已收金额6', '2021-03-05 23:55:18', '2021-03-05 23:55:18', '备注6', '账号6', '姓名6', '手机6', '未支付');

-- ----------------------------
-- Table structure for `minsuxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `minsuxinxi`;
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

-- ----------------------------
-- Records of minsuxinxi
-- ----------------------------
INSERT INTO `minsuxinxi` VALUES ('31', '2021-03-05 23:55:18', '商家编号1', '民宿编号1', '民宿名称1', '民宿地址1', 'http://localhost:8080/homestay/upload/minsuxinxi_minsutupian1.jpg', '民宿简介', '2', '2', '2021-04-29 06:28:39');
INSERT INTO `minsuxinxi` VALUES ('32', '2021-03-05 23:55:18', '商家编号2', '民宿编号2', '民宿名称2', '民宿地址2', 'http://localhost:8080/homestay/upload/minsuxinxi_minsutupian2.jpg', '民宿简介2', '2', '2', '2021-03-05 23:55:18');
INSERT INTO `minsuxinxi` VALUES ('33', '2021-03-05 23:55:18', '商家编号3', '民宿编号3', '民宿名称3', '民宿地址3', 'http://localhost:8080/homestay/upload/minsuxinxi_minsutupian3.jpg', '民宿简介3', '3', '3', '2021-04-29 07:16:16');
INSERT INTO `minsuxinxi` VALUES ('34', '2021-03-05 23:55:18', '商家编号4', '民宿编号4', '民宿名称4', '民宿地址4', 'http://localhost:8080/homestay/upload/minsuxinxi_minsutupian4.jpg', '民宿简介4', '4', '4', '2021-03-05 23:55:18');
INSERT INTO `minsuxinxi` VALUES ('35', '2021-03-05 23:55:18', '商家编号5', '民宿编号5', '民宿名称5', '民宿地址5', 'http://localhost:8080/homestay/upload/minsuxinxi_minsutupian5.jpg', '民宿简介5', '5', '5', '2021-03-05 23:55:18');
INSERT INTO `minsuxinxi` VALUES ('36', '2021-03-05 23:55:18', '商家编号6', '民宿编号6', '民宿名称6', '民宿地址6', 'http://localhost:8080/homestay/upload/minsuxinxi_minsutupian6.jpg', '民宿简介6', '6', '6', '2021-03-05 23:55:18');

-- ----------------------------
-- Table structure for `shangjia`
-- ----------------------------
DROP TABLE IF EXISTS `shangjia`;
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

-- ----------------------------
-- Records of shangjia
-- ----------------------------
INSERT INTO `shangjia` VALUES ('21', '2021-03-05 23:55:18', '商家编号1', '123456', '商家名称1', '13823888881', 'http://localhost:8080/homestay/upload/shangjia_touxiang1.jpg', '备注1');
INSERT INTO `shangjia` VALUES ('22', '2021-03-05 23:55:18', '商家2', '123456', '商家名称2', '13823888882', 'http://localhost:8080/homestay/upload/shangjia_touxiang2.jpg', '备注2');
INSERT INTO `shangjia` VALUES ('23', '2021-03-05 23:55:18', '商家3', '123456', '商家名称3', '13823888883', 'http://localhost:8080/homestay/upload/shangjia_touxiang3.jpg', '备注3');
INSERT INTO `shangjia` VALUES ('24', '2021-03-05 23:55:18', '商家4', '123456', '商家名称4', '13823888884', 'http://localhost:8080/homestay/upload/shangjia_touxiang4.jpg', '备注4');
INSERT INTO `shangjia` VALUES ('25', '2021-03-05 23:55:18', '商家5', '123456', '商家名称5', '13823888885', 'http://localhost:8080/homestay/upload/shangjia_touxiang5.jpg', '备注5');
INSERT INTO `shangjia` VALUES ('26', '2021-03-05 23:55:18', '商家6', '123456', '商家名称6', '13823888886', 'http://localhost:8080/homestay/upload/shangjia_touxiang6.jpg', '备注6');
INSERT INTO `shangjia` VALUES ('1614960177932', '2021-03-06 00:02:57', '11', '11', '11', '11111111112', 'http://localhost:8080/homestay/upload/1614960176499.jpg', null);

-- ----------------------------
-- Table structure for `storeup`
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619667819236 DEFAULT CHARSET=utf8 COMMENT='收藏表';

-- ----------------------------
-- Records of storeup
-- ----------------------------

-- ----------------------------
-- Table structure for `token`
-- ----------------------------
DROP TABLE IF EXISTS `token`;
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='token表';

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES ('1', '11', '用户1', 'yonghu', '用户', 'yixlgcna7lcy6k5yx3uoc01erzmh31ul', '2021-03-05 23:58:56', '2021-04-29 07:28:39');
INSERT INTO `token` VALUES ('2', '1', 'abo', 'users', '管理员', '6h86pxgfmx1toj4tu1goxquuem790t7q', '2021-03-06 00:02:04', '2021-04-29 10:15:35');
INSERT INTO `token` VALUES ('3', '21', '商家编号1', 'shangjia', '商家', '6yt0t41pm1sc1nvprmdvn2brx4lwi5re', '2021-03-06 00:06:12', '2021-03-06 01:06:13');
INSERT INTO `token` VALUES ('4', '1614960143912', '11', 'yonghu', '用户', 'rmpifufwlogs990z29utv20of0cnx2nc', '2021-04-28 17:16:07', '2021-04-29 08:16:16');
INSERT INTO `token` VALUES ('5', '22', '商家2', 'shangjia', '商家', '4t7n5tjzynmusz236fl6992dd0cjccdy', '2021-04-29 15:11:57', '2021-04-29 10:51:33');

-- ----------------------------
-- Table structure for `tousufankui`
-- ----------------------------
DROP TABLE IF EXISTS `tousufankui`;
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

-- ----------------------------
-- Records of tousufankui
-- ----------------------------
INSERT INTO `tousufankui` VALUES ('81', '2021-03-05 23:55:18', '编号1', '账号1', '商家编号1', '民宿名称1', '标题1', '反馈内容1', '2021-03-05 23:55:18', '是', '');
INSERT INTO `tousufankui` VALUES ('82', '2021-03-05 23:55:18', '编号2', '账号2', '商家编号2', '民宿名称2', '标题2', '反馈内容2', '2021-03-05 23:55:18', '是', '');
INSERT INTO `tousufankui` VALUES ('83', '2021-03-05 23:55:18', '编号3', '账号3', '商家编号3', '民宿名称3', '标题3', '反馈内容3', '2021-03-05 23:55:18', '是', '');
INSERT INTO `tousufankui` VALUES ('84', '2021-03-05 23:55:18', '编号4', '账号4', '商家编号4', '民宿名称4', '标题4', '反馈内容4', '2021-03-05 23:55:18', '是', '');
INSERT INTO `tousufankui` VALUES ('85', '2021-03-05 23:55:18', '编号5', '账号5', '商家编号5', '民宿名称5', '标题5', '反馈内容5', '2021-03-05 23:55:18', '是', '');
INSERT INTO `tousufankui` VALUES ('86', '2021-03-05 23:55:18', '编号6', '账号6', '商家编号6', '民宿名称6', '标题6', '反馈内容6', '2021-03-05 23:55:18', '是', '');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'abo', 'abo', '管理员', '2021-03-05 23:55:18');

-- ----------------------------
-- Table structure for `yonghu`
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
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

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES ('11', '2021-03-05 23:55:18', '用户1', '123456', '姓名1', '男', '13823888881', '773890001@qq.com', 'http://localhost:8080/homestay/upload/1614960038782.jpg', '备注1');
INSERT INTO `yonghu` VALUES ('12', '2021-03-05 23:55:18', '用户2', '123456', '姓名2', '男', '13823888882', '773890002@qq.com', 'http://localhost:8080/homestay/upload/yonghu_zhaopian2.jpg', '备注2');
INSERT INTO `yonghu` VALUES ('13', '2021-03-05 23:55:18', '用户3', '123456', '姓名3', '男', '13823888883', '773890003@qq.com', 'http://localhost:8080/homestay/upload/yonghu_zhaopian3.jpg', '备注3');
INSERT INTO `yonghu` VALUES ('14', '2021-03-05 23:55:18', '用户4', '123456', '姓名4', '男', '13823888884', '773890004@qq.com', 'http://localhost:8080/homestay/upload/yonghu_zhaopian4.jpg', '备注4');
INSERT INTO `yonghu` VALUES ('15', '2021-03-05 23:55:18', '用户5', '123456', '姓名5', '男', '13823888885', '773890005@qq.com', 'http://localhost:8080/homestay/upload/yonghu_zhaopian5.jpg', '备注5');
INSERT INTO `yonghu` VALUES ('16', '2021-03-05 23:55:18', '用户6', '123456', '姓名6', '男', '13823888886', '773890006@qq.com', 'http://localhost:8080/homestay/upload/yonghu_zhaopian6.jpg', '备注6');
INSERT INTO `yonghu` VALUES ('1614960143912', '2021-03-06 00:02:23', '11', '11', '11', '男', '13800138000', null, 'http://localhost:8080/homestay/upload/1614960142850.jpg', null);
