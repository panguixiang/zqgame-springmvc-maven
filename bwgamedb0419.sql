/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50147
Source Host           : localhost:3306
Source Database       : bwgamedb0419

Target Server Type    : MYSQL
Target Server Version : 50147
File Encoding         : 65001

Date: 2013-05-23 09:30:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `articlegamenews`
-- ----------------------------
DROP TABLE IF EXISTS `articlegamenews`;
CREATE TABLE `articlegamenews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8 NOT NULL,
  `articleURL` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `articlecontent` longtext CHARACTER SET utf8 NOT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of articlegamenews
-- ----------------------------
INSERT INTO `articlegamenews` VALUES ('1', '本周重点更新内容', 'a/bw_s01.html', '<p>\r\n <strong><strong>&nbsp;&nbsp;&nbsp; </strong></strong></p>\r\n<p>\r\n <strong><strong>&nbsp;&nbsp;&nbsp; 经过近一周的研发</strong> <strong>，不断接受玩家意见进行修改，</strong> <strong>《兵王》在近期增加近十项新的系统玩法，调整优化上百项功能，为打造成一款国人喜欢的一流国战网游迈出重要的一步。以下是更新增加调整的重点内容：</strong></strong></p>\r\n<p>\r\n <strong><strong><strong><strong><strong><strong>&nbsp;&nbsp;&nbsp; <strong>开放&ldquo;五一劳动节&rdquo;活动，开放紫色星耀石，调整牧师&ldquo;救赎启示&rdquo;技能。</strong></strong></strong></strong></strong></strong></strong><br />\r\n <strong>&nbsp;</strong></p>\r\n<p>\r\n &nbsp;<strong><strong>&nbsp;&nbsp;&nbsp; 一、<strong>&nbsp;</strong></strong></strong><strong><strong><strong><strong><strong>&nbsp;<strong>&nbsp;&nbsp;<strong><strong><strong>&nbsp; <strong>开放&ldquo;五一劳动节&rdquo;活动</strong>，七大活动来袭，豪礼拿不停！</strong></strong></strong></strong></strong></strong></strong></strong></strong></p>\r\n<p style=\"text-align: center\">\r\n <strong><strong><strong><a href=\"http://bw.zqgame.com/event/51/index.html\" target=\"_blank\"><span style=\"color: #ff0000\"><strong><strong><strong>活动专题介绍&gt;&gt;&gt;&gt;</strong></strong></strong></span></a><br />\r\n &nbsp;</strong></strong></strong></p>\r\n<p style=\"text-align: center\">\r\n &nbsp;<img alt=\"\" src=\"/images/images/51(1).jpg\" /></p>\r\n<p style=\"text-align: center\">\r\n &nbsp;</p>\r\n<p style=\"text-align: center\">\r\n &nbsp;</p>\r\n<p>\r\n <br />\r\n <br />\r\n <strong>&nbsp;&nbsp;&nbsp; 二、<strong><strong><strong><strong><strong><strong><strong><strong><strong><strong><strong><strong><strong>开放紫色星耀石，星耀石最高可以合成为紫色品质</strong></strong></strong>。</strong></strong></strong></strong></strong></strong></strong></strong></strong></strong></strong><br />\r\n &nbsp;</p>\r\n<p>\r\n &nbsp;</p>\r\n<p style=\"text-align: center\">\r\n <img alt=\"\" src=\"/images/images/xingyao.jpg\" /></p>\r\n<p>\r\n <br />\r\n &nbsp;</p>\r\n<p>\r\n <strong>&nbsp;&nbsp;&nbsp; 三、<strong><strong><strong><strong><strong><strong>调整牧师&ldquo;救赎启示&rdquo;技能，改为增加百分比血量和固定值，每人45秒内只能接受一次治疗，精神属性对该技能有加成。</strong></strong></strong></strong></strong></strong></strong><br />\r\n &nbsp;</p>\r\n<p style=\"text-align: center\">\r\n <strong>&nbsp;</strong></p>\r\n<p style=\"text-align: center\">\r\n <strong>&nbsp;</strong></p>\r\n<p style=\"text-align: center\">\r\n <img alt=\"\" src=\"/images/images/mushi(1).jpg\" /><br />\r\n &nbsp;</p>\r\n<p align=\"center\">\r\n <strong>&nbsp;</strong></p>\r\n<p align=\"center\">\r\n &nbsp;</p>\r\n<p>\r\n &nbsp;</p>\r\n<p style=\"text-align: center\">\r\n &nbsp;</p>\r\n<p>\r\n &nbsp;</p>', '2013-04-23 13:53:32');
INSERT INTO `articlegamenews` VALUES ('2', '游戏内新闻2', 'a/bw_s02.html', '<p>\r\n <strong>&nbsp;&nbsp;&nbsp; </strong></p>\r\n<p>\r\n <strong>&nbsp;&nbsp;&nbsp; 经过近一周的研发</strong> <strong>，不断接受玩家意见进行修改，</strong> <strong>《兵王》在近期增加近十项新的系统玩法，调整优化上百项功能，为打造成一款国人喜欢的一流国战网游迈出重要的一步。以下是更新增加调整的重点内容：</strong></p>\r\n<p>\r\n &nbsp;</p>\r\n<p>\r\n &nbsp;&nbsp;&nbsp; <strong>增加人生转轮副本，<strong>增加<strong>80级<strong>坐骑任务</strong></strong>&ldquo;奇遇苍穹狼帝&rdquo;</strong>，增加命运大厅、探险者迷宫副本宝箱兑换功能，<strong>增加95级国家BOSS<strong>，</strong></strong>优化欧洲杯直播功能，调整国战系统，调整中立区副本开放时间，调整血战到底副本羽灵奖励。</strong></p>\r\n<p>\r\n &nbsp;</p>\r\n<p>\r\n <strong>一、增加人生转轮副本，</strong>达到当前封印进度等级上限的玩家可以通过&ldquo;地宫副本中转站&rdquo;NPC&ldquo;歌利亚&rdquo;进入副本。</p>\r\n<p style=\"text-align: center\">\r\n <a href=\"http://bw.zqgame.com/Main/rootxtjs/fbxt/fbxt16109.html\" target=\"_blank\">人生转轮副本介绍&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;</a></p>\r\n<p style=\"text-align: center\">\r\n &nbsp;</p>\r\n<p style=\"text-align: center\">\r\n <img alt=\"\" src=\"/images/images/rszl(1).jpg\" style=\"width: 600px; height: 480px\" /></p>\r\n<p style=\"text-align: center\">\r\n <br />\r\n <span style=\"color: #ff8c00\">&nbsp;</span></p>\r\n<p>\r\n <strong>二、<strong><strong>增加80级坐骑任务&ldquo;奇遇苍穹狼帝&rdquo;</strong></strong>，</strong>大家可在军乐城NPC&ldquo;君士坦丁&rdquo;处接取，完成后可获得80级坐骑&ldquo;苍穹狼帝&rdquo;。</p>\r\n<p>\r\n &nbsp;</p>\r\n<p style=\"text-align: center\">\r\n <img alt=\"\" src=\"/images/images/cqld.jpg\" style=\"width: 605px; height: 400px\" /></p>\r\n<p>\r\n &nbsp;</p>\r\n<p>\r\n <strong>三、增加95级国家BOSS，</strong>&ldquo;恐惧魔王斯巴鲁&rdquo;位于军乐地宫七号&ldquo;216,34&rdquo;。</p>\r\n<p>\r\n &nbsp;</p>\r\n<p style=\"text-align: center\">\r\n <img alt=\"\" src=\"/images/images/sbl.jpg\" style=\"width: 600px; height: 480px\" /></p>\r\n<p>\r\n <br />\r\n &nbsp;</p>\r\n<p>\r\n <strong>四、优化欧洲杯在线视频直播功能，</strong>玩家可以点击右上方地图雷达旁的&ldquo;球&rdquo;按钮查看。</p>\r\n<p style=\"text-align: center\">\r\n <a href=\"http://bw.zqgame.com/Main/News/bulletin/bulletin16004.html\" target=\"_blank\">《兵王》直播欧洲杯 全民看球指南&gt;&gt;&gt;&gt;&gt;&gt;&gt;</a></p>\r\n<p style=\"text-align: center\">\r\n <br />\r\n &nbsp;&nbsp;<img alt=\"\" src=\"/images/images/djjm(1).jpg\" style=\"width: 287px; height: 197px\" /></p>\r\n<p>\r\n &nbsp;</p>\r\n<p>\r\n &nbsp;</p>\r\n<p style=\"text-align: center\">\r\n &nbsp;</p>\r\n<p style=\"text-align: center\">\r\n &nbsp;</p>\r\n<p align=\"center\">\r\n &nbsp;</p>', '2012-06-25 22:34:13');
INSERT INTO `articlegamenews` VALUES ('3', '共造传奇，同赢千元大奖', 'a/bw_s03.html', '<p>\r\n	&nbsp;</p>\r\n<div>\r\n	<span style=\"color:#000000;\"><span style=\"font-size: 14px; \"><span style=\"font-family: arial, helvetica, sans-serif; \">&nbsp; &nbsp; 《兵王传奇》版本已渐入佳境，我们诚意邀请大家进入游戏中开疆辟土，不但奋战称王更能缔造这份&ldquo;传奇&rdquo;！</span></span></span></div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	<span style=\"color:#000000;\"><span style=\"font-size: 14px; \"><span style=\"font-family: arial, helvetica, sans-serif; \">&nbsp; &nbsp; &nbsp;</span></span></span></div>\r\n<div>\r\n	<span style=\"color:#000000;\"><span style=\"font-size: 14px; \"><span style=\"font-family: arial, helvetica, sans-serif; \">&nbsp; &nbsp; &nbsp;为了进一步提升产品品质，迎接更大规模测试，现征集游戏建议，评测报告</span></span></span></div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	<span style=\"color:#000000;\"><span style=\"font-size: 14px; \"><span style=\"font-family: arial, helvetica, sans-serif; \">&nbsp; &nbsp; &nbsp; 丰厚现金、实物奖励如下：</span></span></span></div>\r\n<div>\r\n	&nbsp;</div>\r\n<div style=\"margin-left: 40px; \">\r\n	<span style=\"color:#000000;\"><strong><span style=\"font-size: 14px; \"><span style=\"font-family: arial, helvetica, sans-serif; \">&nbsp; &nbsp; &nbsp;</span></span><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14px; \">第一名奖励现金 1000元；</span></strong></span></div>\r\n<div style=\"margin-left: 40px; \">\r\n	<span style=\"color:#000000;\"><strong><span style=\"font-size: 14px; \"><span style=\"font-family: arial, helvetica, sans-serif; \">&nbsp; &nbsp; &nbsp;第二名</span></span><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14px; \">奖励现金&nbsp;</span><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14px; \">500元；</span></strong></span></div>\r\n<div style=\"margin-left: 40px; \">\r\n	<span style=\"color:#000000;\"><strong><span style=\"font-size: 14px; \"><span style=\"font-family: arial, helvetica, sans-serif; \">&nbsp; &nbsp; &nbsp;第三名</span></span><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14px; \">奖励现金&nbsp;</span><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14px; \">300元；</span></strong></span></div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	<span style=\"color:#000000;\"><span style=\"font-size: 14px; \"><span style=\"font-family: arial, helvetica, sans-serif; \">&nbsp; &nbsp; &nbsp; 参与奖：20名，奖品为：精品U盘，兵王专用鼠标垫，兵王抱枕等。</span></span></span></div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	<span style=\"color:#000000;\"><span style=\"font-size: 14px; \"><span style=\"font-family: arial, helvetica, sans-serif; \">&nbsp; &nbsp; &nbsp;</span></span></span></div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	<span style=\"color:#000000;\"><span style=\"font-size: 14px; \"><span style=\"font-family: arial, helvetica, sans-serif; \">&nbsp; &nbsp; &nbsp; 游戏测试地址：http://bwcq.ucjoy.com/</span></span></span></div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	<span style=\"color:#000000;\"><span style=\"font-size: 14px; \"><span style=\"font-family: arial, helvetica, sans-serif; \">&nbsp; &nbsp; &nbsp; 评测建议报告(Word,Excel)请交付：卓页兵王传奇运营 - 王珊珊</span></span></span></div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	<span style=\"color:#000000;\"><span style=\"font-size: 14px; \"><span style=\"font-family: arial, helvetica, sans-serif; \">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 截止日期：2013年3月20日</span></span></span></div>\r\n<div>\r\n	&nbsp;</div>\r\n<div style=\"text-align: center; \">\r\n	<img alt=\"\" src=\"/images/images/lipin(1).jpg\" /></div>\r\n<div style=\"text-align: center; \">\r\n	&nbsp;</div>\r\n<div style=\"text-align: center; \">\r\n	&nbsp;</div>\r\n<div style=\"text-align: center; \">\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	<img src=\"file:///C:/Documents%20and%20Settings/zqgame/%E6%A1%8C%E9%9D%A2/%E5%85%B1%E9%80%A0%E4%BC%A0%E5%A5%87%EF%BC%8C%E5%90%8C%E8%B5%A2%E5%8D%83%E5%85%83%E5%A4%A7%E5%A5%96--%E5%85%B5%E7%8E%8B%E6%96%B0%E9%97%BB_files/lipin.jpg\" /></div>', '2013-02-26 21:15:38');

-- ----------------------------
-- Table structure for `bw_act`
-- ----------------------------
DROP TABLE IF EXISTS `bw_act`;
CREATE TABLE `bw_act` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `actTitle` varchar(50) CHARACTER SET utf8 NOT NULL,
  `actTime` varchar(50) CHARACTER SET utf8 NOT NULL,
  `actState` bit(1) NOT NULL DEFAULT b'1',
  `actFirst` int(11) NOT NULL DEFAULT '1',
  `ActPicpath` varchar(100) DEFAULT NULL,
  `ActUrl` varchar(100) CHARACTER SET utf8 NOT NULL,
  `addTime` datetime NOT NULL,
  `standby` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of bw_act
-- ----------------------------
INSERT INTO `bw_act` VALUES ('1', '手机号码直领激活码', '称王测试阶段', '', '1', 'picture/actImages/20111102112455890.jpg', 'http://active.zqgame.com/zqgame/BW/20110913/index.html', '2011-11-02 11:34:59', null);
INSERT INTO `bw_act` VALUES ('2', '军团线上活动竞赛季，等你来称王！', '10月13日-11月4日', '', '1', 'picture/actImages/20111104145204953.jpg', 'http://bw.zqgame.com/Main/News/actnews/actnews16156.html', '2011-11-04 15:03:15', null);
INSERT INTO `bw_act` VALUES ('3', '创新微博玩法 发微博得赠点', '10月13日开启', '', '1', 'picture/actImages/201111041456580.jpg', 'http://bw.zqgame.com/Main/rootxtjs/tsxt/tsxt1622.html', '2011-11-04 15:07:24', null);
INSERT INTO `bw_act` VALUES ('5', '“看我玩兵王”视频征集活动', '10月20日--11月8日', '', '1', 'picture/actImages/20111104150334218.jpg', 'http://active.zqgame.com/zqgame/BW/20111024/index.aspx', '2011-11-04 15:16:26', null);
INSERT INTO `bw_act` VALUES ('8', '上传激情图片赢60000金币', '2011年12月10日-2011年12月22日', '', '1', 'picture/actImages/20120327182035920.jpg', 'http://active.zqgame.com/zqgame/bw/picture/index.aspx', '2012-03-27 18:21:36', null);
INSERT INTO `bw_act` VALUES ('9', '女神带你玩兵王', '2011年12月8日-2011年12月31日', '', '1', 'picture/actImages/20120327182234901.jpg', 'http://active.zqgame.com/zqgame/BW/6room/', '2012-03-27 18:22:38', null);
INSERT INTO `bw_act` VALUES ('13', '浪漫情人节，送双重好礼', '2012年2月14日-2012年3月24日', '', '1', 'picture/actImages/20120327182903748.jpg', 'http://active.zqgame.com/zqgame/bw/rosecard/', '2012-03-27 18:29:56', null);
INSERT INTO `bw_act` VALUES ('14', '为爱祈福，甜蜜白色情人节', '2012年3月12日-2012年3月18日', '', '1', 'picture/actImages/20120327183046880.jpg', 'http://bw.zqgame.com/a/white/', '2012-03-27 18:31:12', null);
INSERT INTO `bw_act` VALUES ('15', '“愚”你同乐，线上活动大集合', '2012年4月1日--2012年4月8日', '', '1', 'picture/actImages/20120329194443300.jpg', 'http://bw.zqgame.com/a/4_1/', '2012-03-29 19:45:30', null);
INSERT INTO `bw_act` VALUES ('16', '玩兵王 免费上网', '2012.4.24--2012.5.20', '', '1', 'picture/actImages/20120427142758650.jpg', 'http://bw.zqgame.com/a/sw/', '2012-04-27 14:29:28', null);
INSERT INTO `bw_act` VALUES ('17', '玩兵王送30元手机话费', '2012.4.24--2012.5.20', '', '1', 'picture/actImages/20120427143105523.jpg', 'http://bw.zqgame.com/a/hf/', '2012-04-27 14:31:27', null);
INSERT INTO `bw_act` VALUES ('18', '首届公会争霸赛', '2012.5.11--2012.6.10', '', '1', 'picture/actImages/20120427144030790.jpg', 'http://active.zqgame.com/zqgame/BW/Guild/index.html', '2012-04-27 14:41:05', null);
INSERT INTO `bw_act` VALUES ('19', '真福利全攻略', '2012.5.12开启', '', '4', 'picture/actImages/20120814190821973.jpg', 'http://bw.zqgame.com/a/bwfl/index.html', '2012-08-14 19:08:24', null);
INSERT INTO `bw_act` VALUES ('20', '奥运有我，助威中国！', '2012年7月24日--2012年8月14日', '', '1', 'picture/actImages/20120815110546749.jpg', 'http://bw.zqgame.com/a/aoyun', '2012-08-15 11:06:07', null);
INSERT INTO `bw_act` VALUES ('21', '中秋团圆乐翻天，国庆豪礼大狂欢', '2012年9月29日至2012年10月8日', '', '1', 'picture/actImages/20120925222233530.jpg', 'http://bw.zqgame.com/c/zhongqiu/index.html', '2012-09-25 22:27:50', null);
INSERT INTO `bw_act` VALUES ('22', '秒杀千双IDX兵王个性鞋', '9月29日开启20:00 、21：00', '', '1', 'picture/actImages/20120928121417926.jpg', 'http://bw.zqgame.com/Main/News/actnews/actnews16501.html', '2012-09-28 12:20:47', null);
INSERT INTO `bw_act` VALUES ('23', '终极内测 八大活动陪玩', '2012.10.15--2012.11.30', '', '1', 'picture/actImages/20121017164431176.jpg', 'http://bw.zqgame.com/c/1026dzh/index.html', '2012-10-17 17:01:20', null);
INSERT INTO `bw_act` VALUES ('24', '召唤神兵归来-老玩家专享系列活动', '2012.10.26--2012.11.9', '', '1', 'picture/actImages/20121017164513916.jpg', 'http://bw.zqgame.com/c/zjnc/index.html', '2012-10-17 17:03:37', null);
INSERT INTO `bw_act` VALUES ('25', '2亿支付宝真钞大瓜分', '2012.10.26开启', '', '1', 'picture/actImages/20121017203841794.jpg', 'http://bw.zqgame.com/c/2yi/index.html', '2012-10-17 20:56:31', null);
INSERT INTO `bw_act` VALUES ('26', '升1级送12元 千元现金拿回家', '2012.12.4', '', '6', 'picture/actImages/20121207222528383.jpg', 'http://bw.zqgame.com/c/1-12/index.html', '2012-12-07 22:25:34', null);
INSERT INTO `bw_act` VALUES ('27', '携手李毅大帝  全面逆袭时代开启', '2013.3.11-2013.3.31', '', '7', 'picture/actImages/20130311184044326.jpg', 'http://active.zqgame.com/zqgame/bw/nixi/index.aspx', '2013-03-11 18:42:06', null);
INSERT INTO `bw_act` VALUES ('28', '混战逆袭 称王宝典全攻略', '2013.3.22', '', '6', 'picture/actImages/20130311184222271.jpg', 'http://bw.zqgame.com/event/hunzhan/index.html', '2013-03-11 18:44:53', null);
INSERT INTO `bw_act` VALUES ('29', '票选兵王球星代言人', '2013.3.4-2013.3.25', '', '1', 'picture/actImages/20130311185420580.jpg', 'http://active.zqgame.com/zqgame/bw/vote/index.aspx', '2013-03-11 18:56:07', null);
INSERT INTO `bw_act` VALUES ('30', '315透明消费大抽奖', '2013.3.15-3.25', '', '7', 'picture/actImages/20130315153100179.jpg', 'http://cj.zqgame.com', '2013-03-15 15:31:43', null);
INSERT INTO `bw_act` VALUES ('31', '逆袭内测活动盛宴', '2013.3.22-2013.3.30', '', '7', 'picture/actImages/20130319114444648.jpg', 'http://bw.zqgame.com/event/total/index.html', '2013-03-19 11:45:29', null);

-- ----------------------------
-- Table structure for `kz_article`
-- ----------------------------
DROP TABLE IF EXISTS `kz_article`;
CREATE TABLE `kz_article` (
  `artTypeId` int(11) NOT NULL,
  `artId` int(11) NOT NULL AUTO_INCREMENT,
  `artTitle` varchar(50) CHARACTER SET utf8 NOT NULL,
  `titlePicPath` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `artPath` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `source` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `author` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `templateId` int(11) DEFAULT NULL,
  `artContent` longtext CHARACTER SET utf8,
  `isHot` bit(1) NOT NULL DEFAULT b'0',
  `isAuthen` bit(1) NOT NULL DEFAULT b'0',
  `isUseLink` bit(1) NOT NULL DEFAULT b'0',
  `linkUrl` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `createTime` datetime NOT NULL,
  `IsActivites` bit(1) DEFAULT b'0',
  `colorTitle` varchar(20) CHARACTER SET utf8 NOT NULL,
  `titlePRI` int(11) NOT NULL,
  `keywords` text CHARACTER SET utf8,
  `description` text CHARACTER SET utf8,
  PRIMARY KEY (`artId`)
) ENGINE=InnoDB AUTO_INCREMENT=17143 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kz_article
-- ----------------------------
INSERT INTO `kz_article` VALUES ('66', '173', '新兵入伍一', '', 'Main/Material/xinbing/xinbing173.html', '', '', '0', '0', '新兵入伍一新兵入伍一新兵入伍一新兵入伍一新兵入伍一新兵入伍一新兵入伍一新兵入伍一新兵入伍一新兵入伍一新兵入伍一新兵入伍一新兵入伍一', '', '', '', '', '2008-11-12 16:05:50', '', '#FFCC99', '1', '李毅大帝，李毅代言，李毅，兵王内测,超级兵王,逆袭称王,逆袭内测,逆袭文化,兵王新手卡,屌丝逆袭,兵王充值卡,混战模式,兵王免费上网,兵王微端,魔幻网游,混战网游,屌丝网游,兵王,兵王游戏,兵王YY,兵王微博,兵王官网,兵王游戏官网,兵王OL,bw,bingwang,征途2,国战,国战游戏,pk游戏,群P,倩女,穿越,萝莉,激情,透明消费模式,万国混战,2.5D,MMORPG,热门网游,最新网游,兵王下载', '混战网游开创者《兵王》首创混战逆袭模式，携手李毅大帝，屌丝逆袭称王！6万人同服逆袭PK，超爽连斩混杀。升1级送12元，3秒微端光速下载，上线秒杀100万金币！');
INSERT INTO `kz_article` VALUES ('66', '174', '新兵入伍一', '', 'Main/Material/xinbing/xinbing174.html', '', '', '0', '0', '新兵入伍一新兵入伍一新兵入伍一新兵入伍一新兵入伍一新兵入伍一新兵入伍一新兵入伍一新兵入伍一新兵入伍一新兵入伍一新兵入伍一新兵入伍一', '', '', '', '', '2008-11-12 16:05:53', '', '#FFCC99', '1', '李毅大帝，李毅代言，李毅，兵王内测,超级兵王,逆袭称王,逆袭内测,逆袭文化,兵王新手卡,屌丝逆袭,兵王充值卡,混战模式,兵王免费上网,兵王微端,魔幻网游,混战网游,屌丝网游,兵王,兵王游戏,兵王YY,兵王微博,兵王官网,兵王游戏官网,兵王OL,bw,bingwang,征途2,国战,国战游戏,pk游戏,群P,倩女,穿越,萝莉,激情,透明消费模式,万国混战,2.5D,MMORPG,热门网游,最新网游,兵王下载', '混战网游开创者《兵王》首创混战逆袭模式，携手李毅大帝，屌丝逆袭称王！6万人同服逆袭PK，超爽连斩混杀。升1级送12元，3秒微端光速下载，上线秒杀100万金币！');
INSERT INTO `kz_article` VALUES ('66', '175', '新兵入伍二', '', 'Main/Material/xinbing/xinbing175.html', '', '', '0', '0', '新兵入伍二新兵入伍二新兵入伍二新兵入伍二新兵入伍二', '', '', '', '', '2008-11-12 16:09:55', '', '#FFCC99', '1', '李毅大帝，李毅代言，李毅，兵王内测,超级兵王,逆袭称王,逆袭内测,逆袭文化,兵王新手卡,屌丝逆袭,兵王充值卡,混战模式,兵王免费上网,兵王微端,魔幻网游,混战网游,屌丝网游,兵王,兵王游戏,兵王YY,兵王微博,兵王官网,兵王游戏官网,兵王OL,bw,bingwang,征途2,国战,国战游戏,pk游戏,群P,倩女,穿越,萝莉,激情,透明消费模式,万国混战,2.5D,MMORPG,热门网游,最新网游,兵王下载', '混战网游开创者《兵王》首创混战逆袭模式，携手李毅大帝，屌丝逆袭称王！6万人同服逆袭PK，超爽连斩混杀。升1级送12元，3秒微端光速下载，上线秒杀100万金币！');
INSERT INTO `kz_article` VALUES ('66', '176', 'dsgfasdfas', '', 'Main/Material/NewGame/NewGame176.html', 'adfasdfa', 'dfasdf', '0', '0', '<H2 align=center>发扬时代精神 《亮剑》再掀网游新浪潮</H2>\r\n<H3 align=center><FONT size=4><SPAN>2008 年 11 月 15 日 10:58:15 发布&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN>&nbsp;&nbsp;&nbsp;&nbsp;<SPAN>来源：</SPAN></FONT></H3>\r\n<P>&nbsp;&nbsp;&nbsp; 什么是亮剑精神？“古代剑客们，在与对手狭路相逢时，无论对手有多么强大，就算对手是天下第一剑客，明知不敌，也要亮出自己的宝剑，即使倒在对手的剑下，也虽败犹荣，这就是亮剑精神。”</P>\r\n<P>&nbsp;&nbsp;&nbsp; 亮剑精神反映的是中国军人不屈不挠、奋力拼搏、誓死保卫国家捍卫民族尊严的革命精神，是我们中华儿女所独有的民族精神；它所包涵的“不怕困难，顽强拼搏、坚定不拔、敢于胜利”的内涵，是中华不死之魄；它所体现是的宁肯站着死决不跪着生的气节，是不畏强敌血战到底的勇气，是不屈不挠永不言败的品质。</P>\r\n<P>&nbsp;&nbsp;&nbsp; 亮剑精神的精髓在于不管你面对什么样的敌人和对手，首先要有勇气，要敢于面对强敌亮出自己的宝剑，亮出自己的气势，即便是死，也要死得轰轰烈烈，气壮山河！懦弱不能博得对手的同情，只能够留下笑柄，甚至在懦弱中灭亡。亮剑不但要有勇气，亮剑更需要技巧，需要时机。“狭路相逢勇者胜”，胜在哪里？胜在态度，打破常规思维，出击制胜！胜在信心，把握最佳时机，关键时刻敢于亮剑。</P>\r\n<P><FONT color=#8b0000><STRONG>&nbsp;&nbsp;&nbsp; 不错，关键时刻要敢于亮剑！历时三年，深圳中青宝网毅然亮剑，时尚军事网游大作《亮剑》即将推出，再掀网游新浪潮。</STRONG></FONT></P>\r\n<P>&nbsp;&nbsp;&nbsp; 《亮剑》首次引入国军体系，将国共两党合作共同抗击法西斯侵略者的华美年代完美展现，游戏战争场面更宏大，场景地图更真实，历史副本更强大，值得期待。</P>', '', '', '', '', '2008-12-31 10:45:36', '', '#FFCC99', '1', '李毅大帝，李毅代言，李毅，兵王内测,超级兵王,逆袭称王,逆袭内测,逆袭文化,兵王新手卡,屌丝逆袭,兵王充值卡,混战模式,兵王免费上网,兵王微端,魔幻网游,混战网游,屌丝网游,兵王,兵王游戏,兵王YY,兵王微博,兵王官网,兵王游戏官网,兵王OL,bw,bingwang,征途2,国战,国战游戏,pk游戏,群P,倩女,穿越,萝莉,激情,透明消费模式,万国混战,2.5D,MMORPG,热门网游,最新网游,兵王下载', '混战网游开创者《兵王》首创混战逆袭模式，携手李毅大帝，屌丝逆袭称王！6万人同服逆袭PK，超爽连斩混杀。升1级送12元，3秒微端光速下载，上线秒杀100万金币！');
INSERT INTO `kz_article` VALUES ('71', '206', '豆腐干豆腐干', '', 'Main/Material/rwxt/rwxt206.html', '豆腐干豆腐干', '豆腐干豆腐干', '0', '0', '豆腐干豆腐干豆腐干豆腐干豆腐干豆腐干豆腐干豆腐干豆腐干豆腐干豆腐干豆腐干豆腐干豆腐干豆腐干豆腐干豆腐干豆腐干豆腐干豆腐干豆腐干豆腐干豆腐干豆腐干豆腐干豆腐干豆腐干豆腐干豆腐干豆腐干', '', '', '', '', '2010-06-11 10:43:48', '', '#FFCC99', '1', '李毅大帝，李毅代言，李毅，兵王内测,超级兵王,逆袭称王,逆袭内测,逆袭文化,兵王新手卡,屌丝逆袭,兵王充值卡,混战模式,兵王免费上网,兵王微端,魔幻网游,混战网游,屌丝网游,兵王,兵王游戏,兵王YY,兵王微博,兵王官网,兵王游戏官网,兵王OL,bw,bingwang,征途2,国战,国战游戏,pk游戏,群P,倩女,穿越,萝莉,激情,透明消费模式,万国混战,2.5D,MMORPG,热门网游,最新网游,兵王下载', '混战网游开创者《兵王》首创混战逆袭模式，携手李毅大帝，屌丝逆袭称王！6万人同服逆袭PK，超爽连斩混杀。升1级送12元，3秒微端光速下载，上线秒杀100万金币！');
INSERT INTO `kz_article` VALUES ('67', '283', '游戏背景', '', 'Main/Material/jbzl/jbzl283.html', '', '', '0', '0', '<P>　　公元前771年，立国三百年的周朝遭逢犬戎之乱，西周最后一位天子——周幽王宫涅死于骊山，西周时代结束。</P>\r\n<P>　　因都城丰镐在犬戎破坏之后，残破不堪，周幽王之子——周平王宜臼遂迁都成周（今洛阳），史称东周。自此一难，周王室势力大衰，开始无力压制诸侯，神州大地进入诸侯争霸，纷争不断的春秋战国时代。</P>\r\n<P>　　齐、晋、秦、楚、吴等国，陆续成为天下霸主，你方唱罢我登场，一时之间，天下大乱，战祸连连。人祸引动天地异变，西南巴蜀之地，阴阳河谷洪灾遍布；东吴之地，暗天牢惊现暴乱，逃出牢狱的暴徒肆虐一方；荣阳以东的九夷乡出现诸多邪教徒，妖言惑众，扰乱天下；更令人吃惊的是，狐仙、怨灵等奇兽异物也纷纷现世，仿佛是上苍的某种预兆……</P>\r\n<P>　　在这乱世之中，是仗剑天下，成一代游侠？还是隐逸山野，做一名乡野隐士？甚至，在胸中澎湃的野心驱动下，你会自立为诸侯，挥师扫平天下，在乱世中留下自己辉煌的传说？<BR>一切可能，尽在天朝。<BR><BR><BR></P>', '', '', '', '', '2010-08-28 12:47:25', '', '#FFCC99', '1', '李毅大帝，李毅代言，李毅，兵王内测,超级兵王,逆袭称王,逆袭内测,逆袭文化,兵王新手卡,屌丝逆袭,兵王充值卡,混战模式,兵王免费上网,兵王微端,魔幻网游,混战网游,屌丝网游,兵王,兵王游戏,兵王YY,兵王微博,兵王官网,兵王游戏官网,兵王OL,bw,bingwang,征途2,国战,国战游戏,pk游戏,群P,倩女,穿越,萝莉,激情,透明消费模式,万国混战,2.5D,MMORPG,热门网游,最新网游,兵王下载', '混战网游开创者《兵王》首创混战逆袭模式，携手李毅大帝，屌丝逆袭称王！6万人同服逆袭PK，超爽连斩混杀。升1级送12元，3秒微端光速下载，上线秒杀100万金币！');
INSERT INTO `kz_article` VALUES ('67', '284', '游戏介绍', '', 'Main/Material/jbzl/jbzl284.html', '', '', '0', '0', '<P style=\"LINE-HEIGHT: 150%\">　　中青宝聚研发精锐精心打造的《天朝》，将带领玩家穿越千年历史，回到乱世纷争、群雄逐鹿的春秋战国时代，去领略诸子百家的经典学说，感受荡气回肠的英雄故事，体会热血男儿的铮铮铁骨！</P>\r\n<P style=\"LINE-HEIGHT: 150%\">　　《天朝》不仅有着刚劲写实的风格、古韵悠然的画面、灵动绚丽的特效，还有更多新奇多样的玩法，擎天、鬼谷、御翎、刺客、妖姬五大流派各具神通，上古灵兽、万人国战、技能连招、神秘虎符、互动副本等独特系统更是引领2D网游又一次革新！</P>\r\n<P style=\"LINE-HEIGHT: 150%\">　　媲美3D的画面，畅快淋漓的PK，千变万化的灵兽！2010年，中青宝邀你一起踏上争霸之旅，谱写属于自己的传奇诗篇！</P>', '', '', '', '', '2010-08-28 12:49:41', '', '#FFCC99', '1', '李毅大帝，李毅代言，李毅，兵王内测,超级兵王,逆袭称王,逆袭内测,逆袭文化,兵王新手卡,屌丝逆袭,兵王充值卡,混战模式,兵王免费上网,兵王微端,魔幻网游,混战网游,屌丝网游,兵王,兵王游戏,兵王YY,兵王微博,兵王官网,兵王游戏官网,兵王OL,bw,bingwang,征途2,国战,国战游戏,pk游戏,群P,倩女,穿越,萝莉,激情,透明消费模式,万国混战,2.5D,MMORPG,热门网游,最新网游,兵王下载', '混战网游开创者《兵王》首创混战逆袭模式，携手李毅大帝，屌丝逆袭称王！6万人同服逆袭PK，超爽连斩混杀。升1级送12元，3秒微端光速下载，上线秒杀100万金币！');
INSERT INTO `kz_article` VALUES ('67', '285', '游戏配置', '', 'Main/Material/jbzl/jbzl285.html', '', '', '0', '0', '<P><B><FONT color=#ff0000>基本配置：</FONT></B><B></B></P>\r\n<P>　　PentiumⅢ 800MHZ</P>\r\n<P>　　256MB内存</P>\r\n<P>　　10G以上硬盘空间</P>\r\n<P>　　Windows98/2000/ME/XP/Vista/7</P>\r\n<P>　　支持DirectX9.0C</P>\r\n<P>　　56K以上网络接入速度</P>\r\n<P></P>\r\n<P><B><FONT color=#ff0000>推荐配置</FONT></B></P>\r\n<P>　　PentiumⅣ 1200MHZ</P>\r\n<P>　　1024MB内存</P>\r\n<P>　　20G以上硬盘空间</P>\r\n<P>　　Windows98/2000/ME/XP/Vista/7</P>\r\n<P>　　支持DirectX9.0C 32MB以上显存</P>\r\n<P>　　256K以上网络接入速度</P>\r\n<P></P>\r\n<P><FONT color=#ff0000><STRONG>表格：</STRONG></FONT></P>\r\n<TABLE style=\"WIDTH: 405.75pt; BORDER-COLLAPSE: collapse\" cellSpacing=0 cellPadding=0 width=541 border=0>\r\n<TBODY>\r\n<TR style=\"HEIGHT: 27.75pt\">\r\n<TD style=\"BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 5.4pt; BORDER-TOP: windowtext 1pt solid; PADDING-LEFT: 5.4pt; PADDING-BOTTOM: 0cm; BORDER-LEFT: windowtext 1pt solid; WIDTH: 54.65pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 27.75pt; BACKGROUND-COLOR: transparent\" width=73>\r\n<P style=\"TEXT-ALIGN: center\" align=center><B><FONT color=#0000ff>系统</FONT></B></P></TD>\r\n<TD style=\"BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 5.4pt; BORDER-TOP: windowtext 1pt solid; PADDING-LEFT: 5.4pt; PADDING-BOTTOM: 0cm; BORDER-LEFT: #ece9d8; WIDTH: 171.1pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 27.75pt; BACKGROUND-COLOR: transparent\" width=228>\r\n<P style=\"TEXT-ALIGN: center\" align=center><B><FONT color=#0000ff>基本配置</FONT></B></P></TD>\r\n<TD style=\"BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 5.4pt; BORDER-TOP: windowtext 1pt solid; PADDING-LEFT: 5.4pt; PADDING-BOTTOM: 0cm; BORDER-LEFT: #ece9d8; WIDTH: 180pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 27.75pt; BACKGROUND-COLOR: transparent\" width=240>\r\n<P style=\"TEXT-ALIGN: center\" align=center><B><FONT color=#0000ff>推荐配置</FONT></B></P></TD></TR>\r\n<TR style=\"HEIGHT: 27.75pt\">\r\n<TD style=\"BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 5.4pt; BORDER-TOP: #ece9d8; PADDING-LEFT: 5.4pt; PADDING-BOTTOM: 0cm; BORDER-LEFT: windowtext 1pt solid; WIDTH: 54.65pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 27.75pt; BACKGROUND-COLOR: transparent\" width=73>\r\n<P style=\"TEXT-ALIGN: left\" align=left>CPU</P></TD>\r\n<TD style=\"BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 5.4pt; BORDER-TOP: #ece9d8; PADDING-LEFT: 5.4pt; PADDING-BOTTOM: 0cm; BORDER-LEFT: #ece9d8; WIDTH: 171.1pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 27.75pt; BACKGROUND-COLOR: transparent\" width=228>\r\n<P style=\"TEXT-ALIGN: left\" align=left>PentiumⅢ 800MHZ</P></TD>\r\n<TD style=\"BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 5.4pt; BORDER-TOP: #ece9d8; PADDING-LEFT: 5.4pt; PADDING-BOTTOM: 0cm; BORDER-LEFT: #ece9d8; WIDTH: 180pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 27.75pt; BACKGROUND-COLOR: transparent\" width=240>\r\n<P style=\"TEXT-ALIGN: left\" align=left>PentiumⅣ 1200MHZ</P></TD></TR>\r\n<TR style=\"HEIGHT: 27.75pt\">\r\n<TD style=\"BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 5.4pt; BORDER-TOP: #ece9d8; PADDING-LEFT: 5.4pt; PADDING-BOTTOM: 0cm; BORDER-LEFT: windowtext 1pt solid; WIDTH: 54.65pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 27.75pt; BACKGROUND-COLOR: transparent\" width=73>\r\n<P style=\"TEXT-ALIGN: left\" align=left>内存</P></TD>\r\n<TD style=\"BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 5.4pt; BORDER-TOP: #ece9d8; PADDING-LEFT: 5.4pt; PADDING-BOTTOM: 0cm; BORDER-LEFT: #ece9d8; WIDTH: 171.1pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 27.75pt; BACKGROUND-COLOR: transparent\" width=228>\r\n<P style=\"TEXT-ALIGN: left\" align=left>256MB</P></TD>\r\n<TD style=\"BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 5.4pt; BORDER-TOP: #ece9d8; PADDING-LEFT: 5.4pt; PADDING-BOTTOM: 0cm; BORDER-LEFT: #ece9d8; WIDTH: 180pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 27.75pt; BACKGROUND-COLOR: transparent\" width=240>\r\n<P style=\"TEXT-ALIGN: left\" align=left>1024MB</P></TD></TR>\r\n<TR style=\"HEIGHT: 27.75pt\">\r\n<TD style=\"BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 5.4pt; BORDER-TOP: #ece9d8; PADDING-LEFT: 5.4pt; PADDING-BOTTOM: 0cm; BORDER-LEFT: windowtext 1pt solid; WIDTH: 54.65pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 27.75pt; BACKGROUND-COLOR: transparent\" width=73>\r\n<P style=\"TEXT-ALIGN: left\" align=left>硬盘</P></TD>\r\n<TD style=\"BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 5.4pt; BORDER-TOP: #ece9d8; PADDING-LEFT: 5.4pt; PADDING-BOTTOM: 0cm; BORDER-LEFT: #ece9d8; WIDTH: 171.1pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 27.75pt; BACKGROUND-COLOR: transparent\" width=228>\r\n<P style=\"TEXT-ALIGN: left\" align=left>10G以上硬盘空间</P></TD>\r\n<TD style=\"BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 5.4pt; BORDER-TOP: #ece9d8; PADDING-LEFT: 5.4pt; PADDING-BOTTOM: 0cm; BORDER-LEFT: #ece9d8; WIDTH: 180pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 27.75pt; BACKGROUND-COLOR: transparent\" width=240>\r\n<P style=\"TEXT-ALIGN: left\" align=left>20G以上硬盘空间</P></TD></TR>\r\n<TR style=\"HEIGHT: 27.75pt\">\r\n<TD style=\"BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 5.4pt; BORDER-TOP: #ece9d8; PADDING-LEFT: 5.4pt; PADDING-BOTTOM: 0cm; BORDER-LEFT: windowtext 1pt solid; WIDTH: 54.65pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 27.75pt; BACKGROUND-COLOR: transparent\" width=73>\r\n<P style=\"TEXT-ALIGN: left\" align=left>操作系统</P></TD>\r\n<TD style=\"BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 5.4pt; BORDER-TOP: #ece9d8; PADDING-LEFT: 5.4pt; PADDING-BOTTOM: 0cm; BORDER-LEFT: #ece9d8; WIDTH: 171.1pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 27.75pt; BACKGROUND-COLOR: transparent\" width=228>\r\n<P style=\"TEXT-ALIGN: left\" align=left>Windows98/2000/ME/XP/Vista/7</P></TD>\r\n<TD style=\"BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 5.4pt; BORDER-TOP: #ece9d8; PADDING-LEFT: 5.4pt; PADDING-BOTTOM: 0cm; BORDER-LEFT: #ece9d8; WIDTH: 180pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 27.75pt; BACKGROUND-COLOR: transparent\" width=240>\r\n<P style=\"TEXT-ALIGN: left\" align=left>Windows98/2000/ME/XP/Vista/7</P></TD></TR>\r\n<TR style=\"HEIGHT: 27.75pt\">\r\n<TD style=\"BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 5.4pt; BORDER-TOP: #ece9d8; PADDING-LEFT: 5.4pt; PADDING-BOTTOM: 0cm; BORDER-LEFT: windowtext 1pt solid; WIDTH: 54.65pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 27.75pt; BACKGROUND-COLOR: transparent\" width=73>\r\n<P style=\"TEXT-ALIGN: left\" align=left>显卡</P></TD>\r\n<TD style=\"BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 5.4pt; BORDER-TOP: #ece9d8; PADDING-LEFT: 5.4pt; PADDING-BOTTOM: 0cm; BORDER-LEFT: #ece9d8; WIDTH: 171.1pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 27.75pt; BACKGROUND-COLOR: transparent\" width=228>\r\n<P style=\"TEXT-ALIGN: left\" align=left>支持DirectX9.0C</P></TD>\r\n<TD style=\"BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 5.4pt; BORDER-TOP: #ece9d8; PADDING-LEFT: 5.4pt; PADDING-BOTTOM: 0cm; BORDER-LEFT: #ece9d8; WIDTH: 180pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 27.75pt; BACKGROUND-COLOR: transparent\" width=240>\r\n<P style=\"TEXT-ALIGN: left\" align=left>支持DirectX9.0C 32MB以上显存</P></TD></TR>\r\n<TR style=\"HEIGHT: 27.75pt\">\r\n<TD style=\"BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 5.4pt; BORDER-TOP: #ece9d8; PADDING-LEFT: 5.4pt; PADDING-BOTTOM: 0cm; BORDER-LEFT: windowtext 1pt solid; WIDTH: 54.65pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 27.75pt; BACKGROUND-COLOR: transparent\" width=73>\r\n<P style=\"TEXT-ALIGN: left\" align=left>网络速度</P></TD>\r\n<TD style=\"BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 5.4pt; BORDER-TOP: #ece9d8; PADDING-LEFT: 5.4pt; PADDING-BOTTOM: 0cm; BORDER-LEFT: #ece9d8; WIDTH: 171.1pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 27.75pt; BACKGROUND-COLOR: transparent\" width=228>\r\n<P style=\"TEXT-ALIGN: left\" align=left>56K以上网络接入速度</P></TD>\r\n<TD style=\"BORDER-RIGHT: windowtext 1pt solid; PADDING-RIGHT: 5.4pt; BORDER-TOP: #ece9d8; PADDING-LEFT: 5.4pt; PADDING-BOTTOM: 0cm; BORDER-LEFT: #ece9d8; WIDTH: 180pt; PADDING-TOP: 0cm; BORDER-BOTTOM: windowtext 1pt solid; HEIGHT: 27.75pt; BACKGROUND-COLOR: transparent\" width=240>\r\n<P style=\"TEXT-ALIGN: left\" align=left>256K以上网络接入速度</P></TD></TR></TBODY></TABLE>\r\n<P><B></B></P>', '', '', '', '', '2010-08-28 12:51:29', '', '#FFCC99', '1', '李毅大帝，李毅代言，李毅，兵王内测,超级兵王,逆袭称王,逆袭内测,逆袭文化,兵王新手卡,屌丝逆袭,兵王充值卡,混战模式,兵王免费上网,兵王微端,魔幻网游,混战网游,屌丝网游,兵王,兵王游戏,兵王YY,兵王微博,兵王官网,兵王游戏官网,兵王OL,bw,bingwang,征途2,国战,国战游戏,pk游戏,群P,倩女,穿越,萝莉,激情,透明消费模式,万国混战,2.5D,MMORPG,热门网游,最新网游,兵王下载', '混战网游开创者《兵王》首创混战逆袭模式，携手李毅大帝，屌丝逆袭称王！6万人同服逆袭PK，超爽连斩混杀。升1级送12元，3秒微端光速下载，上线秒杀100万金币！');
INSERT INTO `kz_article` VALUES ('67', '286', '游戏特色', '', 'Main/Material/jbzl/jbzl286.html', '', '', '0', '0', '<P style=\"LINE-HEIGHT: 150%\"><B>古韵悠然，媲美3D</B><B>的精致画面</B></P>\r\n<P style=\"LINE-HEIGHT: 150%\">　　《天朝》采用全新自主研发引擎，实现了媲美3D游戏的画面效果。无论是近景还是远景，你都能体会到细腻的场景表现。皇城的雄伟恢弘、塞北荒漠的黄沙漫天、雄奇险峻的名山大川、涧深谷幽的世外桃源，游戏中各具风格的美景让你应接不暇。游戏中的人物服饰也一样透着悠然古韵，华丽而不失古风，形形色色，生动不已。</P>\r\n<P style=\"LINE-HEIGHT: 150%\"></P>\r\n<P style=\"LINE-HEIGHT: 150%\"><B>引人入胜，荡气回肠的铁血柔情</B></P>\r\n<P style=\"LINE-HEIGHT: 150%\">　　乱世出英雄，春秋战国时期更是不缺英雄故事！《天朝》有着百万字的任务系统，在跟随剧情时，你将体会到许多英雄们的传奇经历，或热血沸腾，或儿女情长，这些故事将带领玩家更加深入领略游戏所呈现群雄逐鹿时代，感受一曲曲荡气回肠。不仅如此，你甚至可以创造属于自己的传奇，建帮立派、开功建国，成就一代霸业！</P>\r\n<P style=\"LINE-HEIGHT: 150%\"></P>\r\n<P style=\"LINE-HEIGHT: 150%\"><B>威风八面，风姿各异的上古灵兽</B></P>\r\n<P style=\"LINE-HEIGHT: 150%\">　　不再是其他游戏宠物普遍的可爱风，也不再是中看不中用的花瓶设计，《天朝》的灵兽系统将让你感受“灵兽我有，傲视群雄”的快感！游戏中的上古灵兽完全摒弃了弱不禁风的花瓶风格，呈现给你的将是威风八面、各具神力的风姿。只要你悉心照料，耐心培养，灵兽将成为你成就宏图霸业的又一利器！</P>\r\n<P style=\"LINE-HEIGHT: 150%\"></P>\r\n<P style=\"LINE-HEIGHT: 150%\"><B>灵活多变，超爽连击的独特技能</B></P>\r\n<P style=\"LINE-HEIGHT: 150%\">　　《天朝》彻底摆脱了两三个技能从1级按到100级的“无脑”设计，丰富多样的技能将给你全新的感受。游戏中的每个职业除了固有技能外，还根据不同趋向分出3系支流，每个支流各有优势，由此衍生出15种风格迥异的技能系统。除此之外，只要你稍动脑筋，灵活运用，多变的技能系统还将带给你超爽的连击体验，让你享受行云流水般的激斗快感！</P>\r\n<P style=\"LINE-HEIGHT: 150%\"></P>\r\n<P style=\"LINE-HEIGHT: 150%\"><B>惊心动魄，斗智斗勇的万人国战</B></P>\r\n<P style=\"LINE-HEIGHT: 150%\">　　《天朝》的国战系统可支持万人同时参与，在体验畅快PK的同时还将给你带来震撼的团队对抗体验。在国战中，你不仅需要“一夫当关，万夫莫开”的勇气，还要具备足够的智慧，是正面佯攻，还是小股偷袭，是迂回包抄，还是集火歼灭，你的每一个举动都将对战事造成影响。国战时，团队还能购买各类辅助战具，让你攻守更加事半功倍！</P>', '', '', '', '', '2010-08-28 12:53:01', '', '#FFCC99', '1', '李毅大帝，李毅代言，李毅，兵王内测,超级兵王,逆袭称王,逆袭内测,逆袭文化,兵王新手卡,屌丝逆袭,兵王充值卡,混战模式,兵王免费上网,兵王微端,魔幻网游,混战网游,屌丝网游,兵王,兵王游戏,兵王YY,兵王微博,兵王官网,兵王游戏官网,兵王OL,bw,bingwang,征途2,国战,国战游戏,pk游戏,群P,倩女,穿越,萝莉,激情,透明消费模式,万国混战,2.5D,MMORPG,热门网游,最新网游,兵王下载', '混战网游开创者《兵王》首创混战逆袭模式，携手李毅大帝，屌丝逆袭称王！6万人同服逆袭PK，超爽连斩混杀。升1级送12元，3秒微端光速下载，上线秒杀100万金币！');
INSERT INTO `kz_article` VALUES ('68', '287', '第一次PK', '', 'Main/Material/xszy/xszy287.html', '', '', '0', '0', '<P>　　《天朝》提供了多种PK模式，既可以体验单人PK的紧张刺激，又能培养团队协作的默契配合，让您享受酣畅淋漓的PK快感。</P>\r\n<P>　　1、PK一般在安全区外的区域进行，安全区内只允许不同国家或联盟玩家PK，绝对安全区禁止任何PK。</P>\r\n<P>　　2、在与其他玩家进行PK前，需要先切换PK模式，可以通过快捷键切换或点击屏幕右上的PK模式按钮进行选择。<BR></P>\r\n<P></P>\r\n<P align=center lwg=\"ImageManager\"><IMG height=159 alt=\"\" src=\"http://tc.zqgame.com/Main/File/pictures/828/1.bmp\" width=204 border=0></P>\r\n<P lwg=\"ImageManager\"><BR>　　3、根据需要选择合适的PK模式后，可与他人开始PK</P>\r\n<P>　　4、30级以下（不含30级）的玩家无法参与PK，也不能被PK。</P>\r\n<P><BR><BR><BR>&nbsp;</P>', '', '', '', '', '2010-08-28 13:21:13', '', '#FFCC99', '1', '李毅大帝，李毅代言，李毅，兵王内测,超级兵王,逆袭称王,逆袭内测,逆袭文化,兵王新手卡,屌丝逆袭,兵王充值卡,混战模式,兵王免费上网,兵王微端,魔幻网游,混战网游,屌丝网游,兵王,兵王游戏,兵王YY,兵王微博,兵王官网,兵王游戏官网,兵王OL,bw,bingwang,征途2,国战,国战游戏,pk游戏,群P,倩女,穿越,萝莉,激情,透明消费模式,万国混战,2.5D,MMORPG,热门网游,最新网游,兵王下载', '混战网游开创者《兵王》首创混战逆袭模式，携手李毅大帝，屌丝逆袭称王！6万人同服逆袭PK，超爽连斩混杀。升1级送12元，3秒微端光速下载，上线秒杀100万金币！');
INSERT INTO `kz_article` VALUES ('85', '1190', '系统配置', '', 'Main/rootyxzl/zcaz/zcaz1190.html', '', '', '0', '0', '<p>\r\n <strong>兵王的系统最低配置与推荐配置：</strong></p>\r\n<p style=\"text-align: center\">\r\n &nbsp;</p>\r\n<p style=\"text-align: center\">\r\n <img alt=\"\" src=\"/ckfinder/userfiles/images/鏂板缓鏂囦欢澶筡1056.jpg\" style=\"width: 403px; height: 454px\" /></p>\r\n', '', '', '', '', '2011-06-13 17:28:36', '', '#FFCC99', '1', '李毅大帝，李毅代言，李毅，兵王内测,超级兵王,逆袭称王,逆袭内测,逆袭文化,兵王新手卡,屌丝逆袭,兵王充值卡,混战模式,兵王免费上网,兵王微端,魔幻网游,混战网游,屌丝网游,兵王,兵王游戏,兵王YY,兵王微博,兵王官网,兵王游戏官网,兵王OL,bw,bingwang,征途2,国战,国战游戏,pk游戏,群P,倩女,穿越,萝莉,激情,透明消费模式,万国混战,2.5D,MMORPG,热门网游,最新网游,兵王下载', '混战网游开创者《兵王》首创混战逆袭模式，携手李毅大帝，屌丝逆袭称王！6万人同服逆袭PK，超爽连斩混杀。升1级送12元，3秒微端光速下载，上线秒杀100万金币！');
INSERT INTO `kz_article` VALUES ('85', '1191', '帐号注册', '', 'Main/rootyxzl/zcaz/zcaz1191.html', '', '', '0', '0', '<p>\r\n 　　<b><font color=\"#ff0000\">第一步：</font></b></p>\r\n<p>\r\n &nbsp;</p>\r\n<p style=\"padding-bottom: 0px; list-style-type: none; margin: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px\">\r\n 　　登陆中青宝通行证系统帐号管理中心（<a href=\"http://passport.zqgame.com/\" style=\"padding-bottom: 0px; list-style-type: none; margin: 0px; padding-left: 0px; padding-right: 0px; color: rgb(0,128,0); text-decoration: none; padding-top: 0px\" target=\"_blank\"><u>http://passport.zqgame.com</u></a>），点击页面右边的&ldquo;立即注册&rdquo;按钮进入注册页面。</p>\r\n<p style=\"text-align: center; padding-bottom: 0px; list-style-type: none; margin: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px\">\r\n <b><font color=\"#ff0000\">　　<img alt=\"\" border=\"0\" height=\"400\" src=\"http://tc.zqgame.com/Main/File/pictures/8261/1.jpg\" style=\"padding-bottom: 0px; border-right-width: 0px; list-style-type: none; margin: 0px; padding-left: 0px; padding-right: 0px; border-top-width: 0px; border-bottom-width: 0px; border-left-width: 0px; padding-top: 0px\" width=\"349\" /></font></b></p>\r\n<p style=\"text-align: center; padding-bottom: 0px; list-style-type: none; margin: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px\">\r\n &nbsp;</p>\r\n<p style=\"padding-bottom: 0px; list-style-type: none; margin: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px\">\r\n &nbsp;</p>\r\n<p style=\"padding-bottom: 0px; list-style-type: none; margin: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px\">\r\n <b><font color=\"#ff0000\">　　第二步：</font></b></p>\r\n<p style=\"padding-bottom: 0px; list-style-type: none; margin: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px\">\r\n 　　通行证帐号注册页面，除联系方式和推广员账号外，其余为必须填写的内容：</p>\r\n<p style=\"padding-bottom: 0px; list-style-type: none; margin: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px\">\r\n &nbsp;</p>\r\n<p style=\"text-align: center; padding-bottom: 0px; list-style-type: none; margin: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px\">\r\n <b><font color=\"#ff0000\">　　<img alt=\"\" border=\"0\" height=\"435\" src=\"http://tc.zqgame.com/Main/File/pictures/8261/2.jpg\" style=\"padding-bottom: 0px; border-right-width: 0px; list-style-type: none; margin: 0px; padding-left: 0px; padding-right: 0px; border-top-width: 0px; border-bottom-width: 0px; border-left-width: 0px; padding-top: 0px\" width=\"554\" /></font></b></p>\r\n<p style=\"text-align: center; padding-bottom: 0px; list-style-type: none; margin: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px\">\r\n &nbsp;</p>\r\n<p style=\"padding-bottom: 0px; list-style-type: none; margin: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px\">\r\n &nbsp;</p>\r\n<p style=\"padding-bottom: 0px; list-style-type: none; margin: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px\">\r\n <b><font color=\"#ff0000\">　　注意事项：</font></b></p>\r\n<p style=\"padding-bottom: 0px; list-style-type: none; margin: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px\">\r\n 　　1、通行证帐号长度为4-30个字节，帐号不区分大小写，该帐号也是您的游戏登陆帐号。</p>\r\n<p style=\"padding-bottom: 0px; list-style-type: none; margin: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px\">\r\n 　　2、通行证帐号密码长度为6-32个字节，区分大小写，建议使用英文字母加数字或符号的组合密码，不建议使用自己的生日、手机号码、姓名以及连续的数字作为密码， 以防被盗取。</p>\r\n<p style=\"padding-bottom: 0px; list-style-type: none; margin: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px\">\r\n 　　3、真实姓名和身份证号码：是您找回密码和密保资料的保障，请保证该信息的真实有效性，该信息注册后，用户不可自行修改，请慎重填写。</p>\r\n<p style=\"padding-bottom: 0px; list-style-type: none; margin: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px\">\r\n 　　4、二级密码及电子邮件为重置登录密码时使用，二级密码不能与登录密码相同。</p>\r\n<p style=\"padding-bottom: 0px; list-style-type: none; margin: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px\">\r\n 　　5、友情提示：阅读并同意《通行证注册用户协议》后在前面的小框内打钩确认。</p>\r\n<p style=\"padding-bottom: 0px; list-style-type: none; margin: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px\">\r\n &nbsp;</p>\r\n<p style=\"padding-bottom: 0px; list-style-type: none; margin: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px\">\r\n &nbsp;</p>\r\n', '', '', '', '', '2011-06-13 17:29:54', '', '#FFCC99', '1', '李毅大帝，李毅代言，李毅，兵王内测,超级兵王,逆袭称王,逆袭内测,逆袭文化,兵王新手卡,屌丝逆袭,兵王充值卡,混战模式,兵王免费上网,兵王微端,魔幻网游,混战网游,屌丝网游,兵王,兵王游戏,兵王YY,兵王微博,兵王官网,兵王游戏官网,兵王OL,bw,bingwang,征途2,国战,国战游戏,pk游戏,群P,倩女,穿越,萝莉,激情,透明消费模式,万国混战,2.5D,MMORPG,热门网游,最新网游,兵王下载', '混战网游开创者《兵王》首创混战逆袭模式，携手李毅大帝，屌丝逆袭称王！6万人同服逆袭PK，超爽连斩混杀。升1级送12元，3秒微端光速下载，上线秒杀100万金币！');
INSERT INTO `kz_article` VALUES ('85', '1192', '登录流程', '', 'Main/rootyxzl/zcaz/zcaz1192.html', '', '', '0', '0', '<p>\r\n 【如何登录游戏】<br />\r\n <br />\r\n <span style=\"font-weight: bold\">1、</span>下载安装完毕以后，打开客户端登录界面<br />\r\n &nbsp;</p>\r\n<div style=\"text-align: center\">\r\n <img alt=\"\" src=\"/images/images/登陆界面(1).png\" style=\"width: 694px; height: 599px\" /></div>\r\n<br />\r\n<p>\r\n 区域1：功能区<br />\r\n 区域2：新闻、活动、公告区<br />\r\n 区域3：选择服务器<br />\r\n 区域4：进入游戏<br />\r\n <br />\r\n 2、输入帐号密码登录游戏（您还可以通过微博、YY及绑定手机号码登陆游戏）</p>\r\n<p style=\"text-align: center\">\r\n <br />\r\n &nbsp;<img alt=\"\" src=\"/ckfinder/userfiles/images/鐧婚檰鐣岄潰(1).jpg\" style=\"width: 370px; height: 267px\" /></p>\r\n<div style=\"text-align: center\">\r\n &nbsp;</div>\r\n<br />\r\n', '', '', '', '', '2011-06-13 17:30:47', '', '#FFCC99', '1', '李毅大帝，李毅代言，李毅，兵王内测,超级兵王,逆袭称王,逆袭内测,逆袭文化,兵王新手卡,屌丝逆袭,兵王充值卡,混战模式,兵王免费上网,兵王微端,魔幻网游,混战网游,屌丝网游,兵王,兵王游戏,兵王YY,兵王微博,兵王官网,兵王游戏官网,兵王OL,bw,bingwang,征途2,国战,国战游戏,pk游戏,群P,倩女,穿越,萝莉,激情,透明消费模式,万国混战,2.5D,MMORPG,热门网游,最新网游,兵王下载', '混战网游开创者《兵王》首创混战逆袭模式，携手李毅大帝，屌丝逆袭称王！6万人同服逆袭PK，超爽连斩混杀。升1级送12元，3秒微端光速下载，上线秒杀100万金币！');
INSERT INTO `kz_article` VALUES ('84', '1194', '游戏背景', '', 'Main/rootyxzl/yxjs/yxjs1194.html', '', '', '0', '0', '<p>\r\n 　　光明执白，邪恶执黑。</p>\r\n<p align=\"left\">\r\n 　　血色战场，印染黄昏。</p>\r\n<p align=\"left\">\r\n &nbsp;</p>\r\n<p align=\"left\">\r\n 　　焦火的寸土，兵戎相见。</p>\r\n<p align=\"left\">\r\n 　　兵马车象后，只为守王权。</p>\r\n<p align=\"left\">\r\n &nbsp;</p>\r\n<p align=\"left\">\r\n 　　前方铁甲激流，后方故土家园。</p>\r\n<p align=\"left\">\r\n 　　不停步的兵卒，是剑血飞蛾。</p>\r\n<p align=\"left\">\r\n &nbsp;</p>\r\n<p align=\"left\">\r\n 　　兵的荣耀，死去或涅槃。</p>\r\n<p align=\"left\">\r\n &nbsp;</p>\r\n<p align=\"left\">\r\n 　　挑落高傲的骑士，斩断奔驰的车辕。</p>\r\n<p align=\"left\">\r\n 　　亵渎主教的荣耀，击退执戟的妖姬。</p>\r\n<p align=\"left\">\r\n 　　震颤执棋之手，重升人民旗帜。</p>\r\n<p align=\"left\">\r\n &nbsp;</p>\r\n<p align=\"left\">\r\n 　　逆转天下的运，这是你的命！</p>\r\n<p align=\"left\">\r\n &nbsp;</p>\r\n<p align=\"left\">\r\n 　　破桎梏，成王者，灭神灵！</p>\r\n<p align=\"left\">\r\n &nbsp;</p>\r\n<p align=\"left\">\r\n 　　你是兵，是王，是神，是星空下最强的传说！</p>\r\n<p style=\"text-align: center\">\r\n <img alt=\"\" border=\"0\" src=\"/Main/File/pictures/gengxinhoudetupian/youxibeijing.jpg\" style=\"width: 599px; height: 442px\" /></p>\r\n<p align=\"left\">\r\n &nbsp;</p>\r\n<p align=\"left\">\r\n 　　陨落之神代表一个时代的消亡，光与暗交织在命运的宇宙。奥丁世界的人们在战争中，迎来了来自魔族的巨大挑战。代表光明的人类与代表黑暗的魔族，用枪与剑，血与火，生与死来捍卫信仰。只有少数人能在繁复的格局中，体察到即将来临的危机。</p>\r\n<p align=\"left\">\r\n &nbsp;</p>\r\n<p>\r\n 　　不愿失去故土家乡，不愿成为诸神博弈的棋子，不愿在命运的洪流中失去方向，站起来的人们用希望与力量争夺属于自己的明天！而你，一名普通的士兵，将会在大时代的漩涡中，何去何从？是铁血涅槃，称王成神；抑或是儿女柔情，游戏人间？</p>\r\n<p>\r\n &nbsp;</p>\r\n', '', '', '', '', '2011-06-14 13:02:06', '', '#FFCC99', '1', '李毅大帝，李毅代言，李毅，兵王内测,超级兵王,逆袭称王,逆袭内测,逆袭文化,兵王新手卡,屌丝逆袭,兵王充值卡,混战模式,兵王免费上网,兵王微端,魔幻网游,混战网游,屌丝网游,兵王,兵王游戏,兵王YY,兵王微博,兵王官网,兵王游戏官网,兵王OL,bw,bingwang,征途2,国战,国战游戏,pk游戏,群P,倩女,穿越,萝莉,激情,透明消费模式,万国混战,2.5D,MMORPG,热门网游,最新网游,兵王下载', '混战网游开创者《兵王》首创混战逆袭模式，携手李毅大帝，屌丝逆袭称王！6万人同服逆袭PK，超爽连斩混杀。升1级送12元，3秒微端光速下载，上线秒杀100万金币！');
INSERT INTO `kz_article` VALUES ('84', '1195', '场景展示', '', 'Main/rootyxzl/yxjs/yxjs1195.html', '', '', '0', '0', '<div style=\"text-align: center\">\r\n &nbsp;</div>\r\n<div style=\"text-align: center\">\r\n <img alt=\"\" src=\"/ckfinder/userfiles/images/1鏄熶箣鍩嶾xingzhich4.jpg\" style=\"width: 600px; height: 390px\" /></div>\r\n<div style=\"text-align: center\">\r\n &nbsp;</div>\r\n<div style=\"text-align: center\">\r\n 星之城</div>\r\n<div style=\"text-align: center\">\r\n &nbsp;</div>\r\n<div style=\"text-align: center\">\r\n <img alt=\"\" src=\"/ckfinder/userfiles/images/2(9).jpg\" style=\"width: 600px; height: 390px\" /></div>\r\n<div style=\"text-align: center\">\r\n &nbsp;</div>\r\n<div style=\"text-align: center\">\r\n 迷雾废墟</div>\r\n<div style=\"text-align: center\">\r\n &nbsp;</div>\r\n<div style=\"text-align: center\">\r\n <img alt=\"\" src=\"/ckfinder/userfiles/images/閬楀繕娌欐紶4.JPG\" style=\"width: 600px; height: 390px\" /></div>\r\n<div style=\"text-align: center\">\r\n &nbsp;</div>\r\n<div style=\"text-align: center\">\r\n 燃烧平原</div>\r\n<div style=\"text-align: center\">\r\n &nbsp;</div>\r\n<div style=\"text-align: center\">\r\n &nbsp;</div>\r\n<div style=\"text-align: center\">\r\n <img alt=\"\" src=\"/ckfinder/userfiles/images/光明城野外4.JPG\" style=\"width: 600px; height: 390px\" /></div>\r\n<div style=\"text-align: center\">\r\n &nbsp;</div>\r\n<div style=\"text-align: center\">\r\n 光明城野外</div>\r\n<div style=\"text-align: center\">\r\n &nbsp;</div>\r\n<div style=\"text-align: center\">\r\n <img alt=\"\" src=\"/ckfinder/userfiles/images/隐匿者.jpg\" style=\"width: 600px; height: 390px\" /></div>\r\n<div style=\"text-align: center\">\r\n &nbsp;</div>\r\n<div style=\"text-align: center\">\r\n 隐匿者丛林</div>\r\n<div style=\"text-align: center\">\r\n &nbsp;</div>\r\n<div style=\"text-align: center\">\r\n <img alt=\"\" src=\"/ckfinder/userfiles/images/shamo3.jpg\" style=\"width: 600px; height: 390px\" /></div>\r\n<div style=\"text-align: center\">\r\n &nbsp;</div>\r\n<div style=\"text-align: center\">\r\n 遗忘沙漠</div>\r\n<div style=\"text-align: center\">\r\n <br />\r\n <br />\r\n <img alt=\"\" src=\"/Main/File/pictures/gengxinhoudetupian/mingyundatingdehongda.jpg\" style=\"border-bottom: 0px solid; border-left: 0px solid; width: 600px; height: 443px; border-top: 0px solid; border-right: 0px solid\" /><br />\r\n <br />\r\n 命运大厅<br />\r\n <br />\r\n <br />\r\n <img alt=\"\" src=\"/ckfinder/userfiles/images/20120321165454.jpg\" style=\"width: 600px; height: 390px\" /><br />\r\n 帝都<br />\r\n <br />\r\n <br />\r\n &nbsp;</div>\r\n', '', '', '', '', '2011-06-14 13:06:45', '', '#FFCC99', '1', '李毅大帝，李毅代言，李毅，兵王内测,超级兵王,逆袭称王,逆袭内测,逆袭文化,兵王新手卡,屌丝逆袭,兵王充值卡,混战模式,兵王免费上网,兵王微端,魔幻网游,混战网游,屌丝网游,兵王,兵王游戏,兵王YY,兵王微博,兵王官网,兵王游戏官网,兵王OL,bw,bingwang,征途2,国战,国战游戏,pk游戏,群P,倩女,穿越,萝莉,激情,透明消费模式,万国混战,2.5D,MMORPG,热门网游,最新网游,兵王下载', '混战网游开创者《兵王》首创混战逆袭模式，携手李毅大帝，屌丝逆袭称王！6万人同服逆袭PK，超爽连斩混杀。升1级送12元，3秒微端光速下载，上线秒杀100万金币！');
INSERT INTO `kz_article` VALUES ('86', '1197', '角色创建', '', 'Main/rootyxzl/jryx/jryx1197.html', '', '', '0', '0', '<p>\r\n <span style=\"font-weight: bold\">第一步：</span>选择职业和性别</p>\r\n<p style=\"text-align: center\">\r\n <img alt=\"\" border=\"0\" src=\"/Main/File/pictures/gengxinhoudetupian/chuangjianjuese1.jpg\" style=\"width: 597px; height: 376px\" /></p>\r\n<p>\r\n <span style=\"font-weight: bold\">第二步：</span>给自己的新角色命名（注：游戏内有自动随机名称的功能哦），选择国家（天之国、火之国、水之国、沙之国、风之国），填写所在城市，最后选择自己喜欢的发型、时装、脸型和发色。</p>\r\n<p style=\"text-align: center\">\r\n <img alt=\"\" border=\"0\" src=\"/Main/File/pictures/gengxinhoudetupian/chuangjianjuese2.jpg\" style=\"width: 600px; height: 378px\" /></p>\r\n<p>\r\n &nbsp;</p>\r\n<br />\r\n', '', '', '', '', '2011-06-14 13:10:49', '', '#FFCC99', '1', '李毅大帝，李毅代言，李毅，兵王内测,超级兵王,逆袭称王,逆袭内测,逆袭文化,兵王新手卡,屌丝逆袭,兵王充值卡,混战模式,兵王免费上网,兵王微端,魔幻网游,混战网游,屌丝网游,兵王,兵王游戏,兵王YY,兵王微博,兵王官网,兵王游戏官网,兵王OL,bw,bingwang,征途2,国战,国战游戏,pk游戏,群P,倩女,穿越,萝莉,激情,透明消费模式,万国混战,2.5D,MMORPG,热门网游,最新网游,兵王下载', '混战网游开创者《兵王》首创混战逆袭模式，携手李毅大帝，屌丝逆袭称王！6万人同服逆袭PK，超爽连斩混杀。升1级送12元，3秒微端光速下载，上线秒杀100万金币！');
INSERT INTO `kz_article` VALUES ('86', '1198', '职业选择', '', 'Main/rootyxzl/jryx/jryx1198.html', '', '', '0', '0', '<p>\r\n <b>职业1：战士 </b></p>\r\n<p align=\"left\">\r\n 攻击方式：近程物理攻击</p>\r\n<p align=\"left\">\r\n 核心属性：体质 力量</p>\r\n<p align=\"left\">\r\n 职业特质：生存能力</p>\r\n<p align=\"left\">\r\n 职业说明：移动城墙，金刚不坏。战，则掠地千里；守，则万夫莫开。英勇的灵魂铸造不灭传奇！</p>\r\n<p align=\"left\">\r\n &nbsp;</p>\r\n<p style=\"text-align: center\">\r\n <img alt=\"\" border=\"0\" src=\"/Main/File/pictures/20110624/zhanshi.jpg\" style=\"width: 602px; height: 424px\" /></p>\r\n<p align=\"left\">\r\n &nbsp;</p>\r\n<p align=\"left\">\r\n <b>职业2：魔刃</b></p>\r\n<p align=\"left\">\r\n 攻击方式：近程魔法攻击</p>\r\n<p align=\"left\">\r\n 核心属性：智力 敏捷</p>\r\n<p align=\"left\">\r\n 职业特质：隐匿暗杀能力</p>\r\n<p align=\"left\">\r\n 职业说明：刀锋舞者，狩猎着生者的灵魂。隐没于黑暗，游走于光明。不被历史描述，却是历史的主宰！</p>\r\n<p align=\"left\">\r\n &nbsp;</p>\r\n<p style=\"text-align: center\">\r\n <img alt=\"\" border=\"0\" src=\"/Main/File/pictures/20110624/cike%280%29.jpg\" style=\"width: 601px; height: 423px\" /></p>\r\n<p align=\"left\">\r\n &nbsp;</p>\r\n<p align=\"left\">\r\n <b>职业3：术士</b></p>\r\n<p align=\"left\">\r\n 攻击方式：中程魔法攻击</p>\r\n<p align=\"left\">\r\n 核心属性：智力 精神</p>\r\n<p align=\"left\">\r\n 职业特质：战斗节奏控制能力</p>\r\n<p align=\"left\">\r\n 职业说明：掌握法则，智慧象征。探索真理，识古通今，洞悉未来。以世间威能，抑恶扬善，改天逆命，破碎虚空！</p>\r\n<p align=\"left\">\r\n &nbsp;</p>\r\n<p style=\"text-align: center\">\r\n <img alt=\"\" border=\"0\" src=\"/Main/File/pictures/20110624/shushi%280%29.jpg\" style=\"width: 599px; height: 422px\" /></p>\r\n<p align=\"left\">\r\n &nbsp;</p>\r\n<p align=\"left\">\r\n <b>职业4：牧师</b></p>\r\n<p align=\"left\">\r\n 攻击方式：中程魔法攻击</p>\r\n<p align=\"left\">\r\n 核心属性：精神 智力</p>\r\n<p align=\"left\">\r\n 职业特质：恢复治愈能力</p>\r\n<p align=\"left\">\r\n 职业说明：神之使徒，捍卫生者，拯救死者。信者永生，不信者也救赎。虔诚的信徒，是神的宠儿！</p>\r\n<p align=\"left\">\r\n &nbsp;</p>\r\n<p style=\"text-align: center\">\r\n <img alt=\"\" border=\"0\" src=\"/Main/File/pictures/20110624/mushi.jpg\" style=\"width: 601px; height: 423px\" /></p>\r\n<p align=\"left\">\r\n &nbsp;</p>\r\n<p align=\"left\">\r\n <b>职业5：枪手</b></p>\r\n<p align=\"left\">\r\n 攻击方式：远程物理攻击</p>\r\n<p align=\"left\">\r\n 核心属性：力量 精神</p>\r\n<p align=\"left\">\r\n 职业特质：伤害输出</p>\r\n<p align=\"left\">\r\n 职业说明：猎命王者，半边恶魔半边天使。沉着冷静，是他们的特质；一击必杀，是他们的实力！</p>\r\n<p align=\"left\">\r\n &nbsp;</p>\r\n<p style=\"text-align: center\">\r\n <img alt=\"\" border=\"0\" src=\"/Main/File/pictures/20110624/qiangshou.jpg\" style=\"width: 601px; height: 424px\" /></p>\r\n<p align=\"left\">\r\n &nbsp;</p>\r\n<p align=\"left\">\r\n <b>职业6：魔炮</b></p>\r\n<p>\r\n 攻击方式：远程魔法攻击</p>\r\n<p>\r\n 核心属性：智力 精神</p>\r\n<p>\r\n 职业特质：群体伤害</p>\r\n<p>\r\n 职业说明：焚天烈焰，吞噬罪孽与苍生。沉稳步伐，吼出战歌嘹亮；怒放炮火，点亮生命奇迹！<br />\r\n &nbsp;</p>\r\n<div style=\"text-align: center\">\r\n <img alt=\"\" border=\"0\" src=\"/Main/File/pictures/20110624/mopao.jpg\" style=\"width: 599px; height: 422px\" /></div>\r\n', '', '', '', '', '2011-06-14 13:13:50', '', '#FFCC99', '1', '李毅大帝，李毅代言，李毅，兵王内测,超级兵王,逆袭称王,逆袭内测,逆袭文化,兵王新手卡,屌丝逆袭,兵王充值卡,混战模式,兵王免费上网,兵王微端,魔幻网游,混战网游,屌丝网游,兵王,兵王游戏,兵王YY,兵王微博,兵王官网,兵王游戏官网,兵王OL,bw,bingwang,征途2,国战,国战游戏,pk游戏,群P,倩女,穿越,萝莉,激情,透明消费模式,万国混战,2.5D,MMORPG,热门网游,最新网游,兵王下载', '混战网游开创者《兵王》首创混战逆袭模式，携手李毅大帝，屌丝逆袭称王！6万人同服逆袭PK，超爽连斩混杀。升1级送12元，3秒微端光速下载，上线秒杀100万金币！');
INSERT INTO `kz_article` VALUES ('86', '1199', '游戏界面', '', 'Main/rootyxzl/jryx/jryx1199.html', '', '', '0', '0', '<p style=\"text-align: center\">\r\n <span style=\"color: rgb(199,199,199)\"><img 2px=\"\" alt=\"\" solid=\"\" src=\"/ckfinder/userfiles/images/jiemian.jpg\" style=\"width: 650px; height: 460px\" /></span></p>\r\n<br />\r\n<p>\r\n &nbsp;</p>\r\n', '', '', '', '', '2011-06-14 13:14:30', '', '#FFCC99', '1', '李毅大帝，李毅代言，李毅，兵王内测,超级兵王,逆袭称王,逆袭内测,逆袭文化,兵王新手卡,屌丝逆袭,兵王充值卡,混战模式,兵王免费上网,兵王微端,魔幻网游,混战网游,屌丝网游,兵王,兵王游戏,兵王YY,兵王微博,兵王官网,兵王游戏官网,兵王OL,bw,bingwang,征途2,国战,国战游戏,pk游戏,群P,倩女,穿越,萝莉,激情,透明消费模式,万国混战,2.5D,MMORPG,热门网游,最新网游,兵王下载', '混战网游开创者《兵王》首创混战逆袭模式，携手李毅大帝，屌丝逆袭称王！6万人同服逆袭PK，超爽连斩混杀。升1级送12元，3秒微端光速下载，上线秒杀100万金币！');
INSERT INTO `kz_article` VALUES ('87', '1200', '操作指引', '', 'Main/rootyxzl/xssl/xssl1200.html', '', '', '0', '0', '<p>\r\n <span style=\"font-weight: bold\">一、人物行走</span><br />\r\n 鼠标模式：使用鼠标左键点击需要移动到的目的地就可以实现行走，按下空格键就可以实现跳跃。<br style=\"padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px\" />\r\n 键盘模式：按住键盘W、S、A、D就分别可以前进、后退、左右转向，按下空格键就可以实现跳跃。<br />\r\n <br />\r\n <span style=\"font-weight: bold\">二、战斗操作</span><br />\r\n 1.将攻击性技能拉到游戏中的快捷栏中；<br />\r\n 2.左键点击怪物可以使用普通攻击攻击怪物;<br />\r\n 3.右键可以选中怪物，选中怪物后，用快捷键启动技能可以使用技能攻击；<br />\r\n <br />\r\n <span style=\"font-weight: bold\">三、物品拾取</span><br />\r\n 怪物死亡后，掉落道具会直接显示在场景上，点击鼠标左键拾取或者快捷键&ldquo;~&rdquo;。也可以使用内挂设置来完成拾取操作。（<a href=\"http://bw.zqgame.com/Main/rootyxzl/xssl/xssl1203.html\" style=\"color: rgb(0,128,0)\">点击查看详情</a>）<br />\r\n <br />\r\n 四<span style=\"font-weight: bold\">、与NPC对话</span><br />\r\n 将鼠标停留在npc身上，点击左键即可与其对话或者购买物品。<br />\r\n <br />\r\n <span style=\"font-weight: bold\">五：使用道具</span><br />\r\n 点击屏幕下方快捷图标栏的&ldquo;背包&rdquo;图标或按快捷键&ldquo;B&rdquo;，打开&ldquo;背包&rdquo;界面。将鼠标移到道具栏中的某个物品上，点击右键使用该道具。玩家可以通过鼠标右键点击道具来穿着或者脱下装备。<br />\r\n <br />\r\n <span style=\"font-weight: bold\">六、丢弃道具</span><br />\r\n 选定&ldquo;背包&rdquo;中的某个物品上，单击左键可以抓起该物品，将其拖到道具背包外，再次单击左键系统会提示&ldquo;是否将物品丢失&rdquo;选择&ldquo;确定&rdquo;即可，丢失后绑定物品消失，未绑定物品则掉落在场景上。绿色品质以上的道具会提示输入&ldquo;丢弃&rdquo;。<br />\r\n <br />\r\n <span style=\"font-weight: bold\">七、右键菜单</span><br />\r\n 右键点击玩家头像可以选择跟随、对话、交易、普通组队、观察、发送邮件等功能。</p>\r\n', '', '', '', '', '2011-06-14 13:24:23', '', '#FFCC99', '1', '李毅大帝，李毅代言，李毅，兵王内测,超级兵王,逆袭称王,逆袭内测,逆袭文化,兵王新手卡,屌丝逆袭,兵王充值卡,混战模式,兵王免费上网,兵王微端,魔幻网游,混战网游,屌丝网游,兵王,兵王游戏,兵王YY,兵王微博,兵王官网,兵王游戏官网,兵王OL,bw,bingwang,征途2,国战,国战游戏,pk游戏,群P,倩女,穿越,萝莉,激情,透明消费模式,万国混战,2.5D,MMORPG,热门网游,最新网游,兵王下载', '混战网游开创者《兵王》首创混战逆袭模式，携手李毅大帝，屌丝逆袭称王！6万人同服逆袭PK，超爽连斩混杀。升1级送12元，3秒微端光速下载，上线秒杀100万金币！');

-- ----------------------------
-- Table structure for `kz_articletype`
-- ----------------------------
DROP TABLE IF EXISTS `kz_articletype`;
CREATE TABLE `kz_articletype` (
  `artTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `artTypeName` varchar(20) DEFAULT NULL,
  `dirName` varchar(30) DEFAULT NULL,
  `parentId` int(11) DEFAULT '0',
  `deep` int(11) DEFAULT '0',
  `template` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`artTypeId`),
  UNIQUE KEY `UQ__kz_ArticleType__46B27FE2` (`dirName`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kz_articletype
-- ----------------------------
INSERT INTO `kz_articletype` VALUES ('1', '新闻专题', 'news', '0', '0', 'article-view.ftl');
INSERT INTO `kz_articletype` VALUES ('2', '资料专题', 'material', '0', '0', 'article-view.ftl');
INSERT INTO `kz_articletype` VALUES ('3', '互动专题', 'interact', '0', '0', 'article-view.ftl');
INSERT INTO `kz_articletype` VALUES ('4', '新闻', 'gamenews', '1', '1', 'article-view.ftl');
INSERT INTO `kz_articletype` VALUES ('5', '活动', 'actnews', '1', '1', 'article-view.ftl');
INSERT INTO `kz_articletype` VALUES ('6', '公告', 'bulletin', '1', '1', 'article-view.ftl');
INSERT INTO `kz_articletype` VALUES ('10', '玩家心情', 'story', '3', '1', 'article-view.ftl');
INSERT INTO `kz_articletype` VALUES ('11', '攻略', 'gametech', '3', '1', 'article-view.ftl');
INSERT INTO `kz_articletype` VALUES ('67', '基本资料', 'jbzl', '2', '1', 'article-view.ftl');
INSERT INTO `kz_articletype` VALUES ('68', '新手指引', 'xszy', '2', '1', 'article-view.ftl');
INSERT INTO `kz_articletype` VALUES ('69', '工会战报', 'warstory', '3', '1', 'article-view.ftl');
INSERT INTO `kz_articletype` VALUES ('70', '职业系统', 'zyxt', '2', '1', 'article-view.ftl');
INSERT INTO `kz_articletype` VALUES ('71', '任务系统', 'rwxt', '2', '1', 'article-view.ftl');
INSERT INTO `kz_articletype` VALUES ('72', '战斗系统', 'zdxt', '2', '1', 'article-view.ftl');
INSERT INTO `kz_articletype` VALUES ('73', '社会系统', 'shxt', '2', '1', 'article-view.ftl');
INSERT INTO `kz_articletype` VALUES ('74', '其他', 'other', '2', '1', 'article-view.ftl');
INSERT INTO `kz_articletype` VALUES ('75', '客服资料', 'bwserver', '2', '1', 'article-view.ftl');
INSERT INTO `kz_articletype` VALUES ('76', '头条新闻', 'topnews', '1', '1', 'article-view.ftl');
INSERT INTO `kz_articletype` VALUES ('77', '热点推送', 'hotSend', '1', '1', 'article-view.ftl');
INSERT INTO `kz_articletype` VALUES ('78', '玩家精彩推荐', 'userRec', '1', '1', 'article-view.ftl');
INSERT INTO `kz_articletype` VALUES ('79', '活动专题', 'actGame', '1', '1', 'article-view.ftl');
INSERT INTO `kz_articletype` VALUES ('80', '研发面对面', 'develop', '1', '1', 'article-view.ftl');
INSERT INTO `kz_articletype` VALUES ('82', '游戏资料', 'rootyxzl', '0', '0', 'article-view.ftl');
INSERT INTO `kz_articletype` VALUES ('83', '系统介绍', 'rootxtjs', '0', '0', 'article-view.ftl');
INSERT INTO `kz_articletype` VALUES ('84', '游戏介绍', 'yxjs', '82', '1', 'article-view.ftl');
INSERT INTO `kz_articletype` VALUES ('85', '注册安装', 'zcaz', '82', '1', 'article-view.ftl');
INSERT INTO `kz_articletype` VALUES ('86', '进入游戏', 'jryx', '82', '1', 'article-view.ftl');
INSERT INTO `kz_articletype` VALUES ('87', '新手上路', 'xssl', '82', '1', 'article-view.ftl');
INSERT INTO `kz_articletype` VALUES ('88', '充值指南 ', 'czzn', '82', '1', 'article-view.ftl');
INSERT INTO `kz_articletype` VALUES ('96', '基础系统', 'xtjs1', '83', '1', 'article-view.ftl');
INSERT INTO `kz_articletype` VALUES ('103', '日常活动', 'rchd', '83', '1', 'article-view.ftl');
INSERT INTO `kz_articletype` VALUES ('104', '多人活动', 'bhhd', '83', '1', 'article-view.ftl');
INSERT INTO `kz_articletype` VALUES ('105', '国家活动', 'gjhd', '83', '1', 'article-view.ftl');
INSERT INTO `kz_articletype` VALUES ('106', 'PVP', 'PVP', '83', '1', 'article-view.ftl');
INSERT INTO `kz_articletype` VALUES ('107', '高手进阶', 'rootsysc', '0', '0', 'article-view.ftl');
INSERT INTO `kz_articletype` VALUES ('109', '活动玩法', 'roothdwf', '0', '0', 'article-view.ftl');
INSERT INTO `kz_articletype` VALUES ('110', '玩家互动', 'rootwjhd', '0', '0', 'article-view.ftl');
INSERT INTO `kz_articletype` VALUES ('111', '玩家互动', 'wjhd', '110', '1', 'article-view.ftl');
INSERT INTO `kz_articletype` VALUES ('112', '攻略', 'maintenance', '1', '1', 'article-view.ftl');
INSERT INTO `kz_articletype` VALUES ('114', '装备系统', 'jbxt', '83', '1', 'article-view.ftl');
INSERT INTO `kz_articletype` VALUES ('115', '团系统', 'txt', '83', '1', 'article-view.ftl');
INSERT INTO `kz_articletype` VALUES ('116', '军系统', 'jxt', '83', '1', 'article-view.ftl');
INSERT INTO `kz_articletype` VALUES ('117', '国家系统', 'gjxt', '83', '1', 'article-view.ftl');
INSERT INTO `kz_articletype` VALUES ('118', '副本系统', 'fbxt', '83', '1', 'article-view.ftl');
INSERT INTO `kz_articletype` VALUES ('119', '特色系统', 'tsxt', '83', '1', 'article-view.ftl');
INSERT INTO `kz_articletype` VALUES ('120', '宠物系统', 'cwxt', '83', '1', 'article-view.ftl');
INSERT INTO `kz_articletype` VALUES ('121', '战争系统', 'zzxt', '83', '1', 'article-view.ftl');
INSERT INTO `kz_articletype` VALUES ('122', '坐骑系统', 'zqxt', '83', '1', 'article-view.ftl');
INSERT INTO `kz_articletype` VALUES ('123', '装备进阶', 'zbjj', '83', '1', 'article-view.ftl');
INSERT INTO `kz_articletype` VALUES ('124', '怪物地图', 'gwdt', '83', '1', 'article-view.ftl');
INSERT INTO `kz_articletype` VALUES ('126', '交易系统', 'jyxt', '83', '1', 'article-view.ftl');
INSERT INTO `kz_articletype` VALUES ('127', '好友系统', 'hyxt', '83', '1', 'article-view.ftl');
INSERT INTO `kz_articletype` VALUES ('128', '职业系统', 'xtjszyxt', '83', '1', 'article-view.ftl');
INSERT INTO `kz_articletype` VALUES ('129', '任务系统', 'xtjsrwxt', '83', '1', 'article-view.ftl');
INSERT INTO `kz_articletype` VALUES ('130', '媒体', 'media', '1', '1', 'article-view.ftl');

-- ----------------------------
-- Table structure for `kz_article_bak`
-- ----------------------------
DROP TABLE IF EXISTS `kz_article_bak`;
CREATE TABLE `kz_article_bak` (
  `artTypeId` int(11) NOT NULL,
  `artId` int(11) NOT NULL AUTO_INCREMENT,
  `artTitle` varchar(50) CHARACTER SET utf8 NOT NULL,
  `titlePicPath` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `artPath` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `source` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `author` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `hits` int(11) NOT NULL,
  `templateId` int(11) DEFAULT NULL,
  `artContent` longtext CHARACTER SET utf8,
  `isHot` bit(1) NOT NULL,
  `isAuthen` bit(1) NOT NULL,
  `isUseLink` bit(1) NOT NULL,
  `linkUrl` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `createTime` datetime NOT NULL,
  `IsActivites` bit(1) DEFAULT NULL,
  `colorTitle` varchar(20) CHARACTER SET utf8 NOT NULL,
  `titlePRI` int(11) NOT NULL,
  `keywords` text CHARACTER SET utf8,
  `description` text CHARACTER SET utf8,
  KEY `artId` (`artId`)
) ENGINE=InnoDB AUTO_INCREMENT=15886 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kz_article_bak
-- ----------------------------
INSERT INTO `kz_article_bak` VALUES ('105', '15814', 'Mr.', '', 'Main/rootxtjs/gjhd/gjhd15814.html', '', '', '0', '0', '', '', '', '', '', '2012-05-23 04:35:23', '', '#FFCC99', '1', '兵王、兵王游戏、兵王官网、兵王游戏官网、兵王OL、bw、bingwang、佣兵、拥兵、步步惊心、征途、巨人、盛大、魔幻、神兵、国战、爽、pk、群P、网络游戏、官方网站、追尾、倩女、穿越、萝莉、激情、称王、2.5D、MMORPG、热门网游、最新网游、兵王下载', '《兵王》由巨人旗下巨贤网络历时3年，耗资千万研发，中青宝代理的魔幻战争类MMORPG。游戏以旧神陨落，恶魔肆虐、新神乱舞的破碎世界为背景，讲述了平凡的人类如何从小兵成长为王，进而超越神的传奇故事。游戏采用高性能引擎，以2.5D视角极具张力地展示了光影明暗的斑斓世界。华丽的装备系统、平衡的技能和职业体系、多维度大范围的PVP内容，强大技术实力……带给玩家不容错过的视觉、听觉、感受的豪华盛宴！');
INSERT INTO `kz_article_bak` VALUES ('84', '15815', 'Mr.', '', 'Main/rootyxzl/yxjs/yxjs15815.html', '', '', '0', '0', '', '', '', '', '', '2012-05-23 04:35:23', '', '#FFCC99', '1', '兵王、兵王游戏、兵王官网、兵王游戏官网、兵王OL、bw、bingwang、佣兵、拥兵、步步惊心、征途、巨人、盛大、魔幻、神兵、国战、爽、pk、群P、网络游戏、官方网站、追尾、倩女、穿越、萝莉、激情、称王、2.5D、MMORPG、热门网游、最新网游、兵王下载', '《兵王》由巨人旗下巨贤网络历时3年，耗资千万研发，中青宝代理的魔幻战争类MMORPG。游戏以旧神陨落，恶魔肆虐、新神乱舞的破碎世界为背景，讲述了平凡的人类如何从小兵成长为王，进而超越神的传奇故事。游戏采用高性能引擎，以2.5D视角极具张力地展示了光影明暗的斑斓世界。华丽的装备系统、平衡的技能和职业体系、多维度大范围的PVP内容，强大技术实力……带给玩家不容错过的视觉、听觉、感受的豪华盛宴！');
INSERT INTO `kz_article_bak` VALUES ('105', '15816', 'Mr.', '', 'Main/rootxtjs/gjhd/gjhd15816.html', '', '', '0', '0', '', '', '', '', '', '2012-05-23 04:35:24', '', '#FFCC99', '1', '兵王、兵王游戏、兵王官网、兵王游戏官网、兵王OL、bw、bingwang、佣兵、拥兵、步步惊心、征途、巨人、盛大、魔幻、神兵、国战、爽、pk、群P、网络游戏、官方网站、追尾、倩女、穿越、萝莉、激情、称王、2.5D、MMORPG、热门网游、最新网游、兵王下载', '《兵王》由巨人旗下巨贤网络历时3年，耗资千万研发，中青宝代理的魔幻战争类MMORPG。游戏以旧神陨落，恶魔肆虐、新神乱舞的破碎世界为背景，讲述了平凡的人类如何从小兵成长为王，进而超越神的传奇故事。游戏采用高性能引擎，以2.5D视角极具张力地展示了光影明暗的斑斓世界。华丽的装备系统、平衡的技能和职业体系、多维度大范围的PVP内容，强大技术实力……带给玩家不容错过的视觉、听觉、感受的豪华盛宴！');
INSERT INTO `kz_article_bak` VALUES ('105', '15817', 'Mr.', '', 'Main/rootxtjs/gjhd/gjhd15817.html', '', '', '0', '0', '', '', '', '', '', '2012-05-23 04:35:24', '', '#FFCC99', '1', '兵王、兵王游戏、兵王官网、兵王游戏官网、兵王OL、bw、bingwang、佣兵、拥兵、步步惊心、征途、巨人、盛大、魔幻、神兵、国战、爽、pk、群P、网络游戏、官方网站、追尾、倩女、穿越、萝莉、激情、称王、2.5D、MMORPG、热门网游、最新网游、兵王下载', '《兵王》由巨人旗下巨贤网络历时3年，耗资千万研发，中青宝代理的魔幻战争类MMORPG。游戏以旧神陨落，恶魔肆虐、新神乱舞的破碎世界为背景，讲述了平凡的人类如何从小兵成长为王，进而超越神的传奇故事。游戏采用高性能引擎，以2.5D视角极具张力地展示了光影明暗的斑斓世界。华丽的装备系统、平衡的技能和职业体系、多维度大范围的PVP内容，强大技术实力……带给玩家不容错过的视觉、听觉、感受的豪华盛宴！');
INSERT INTO `kz_article_bak` VALUES ('105', '15818', 'Mr.', '', 'Main/rootxtjs/gjhd/gjhd15818.html', '', '', '0', '0', '', '', '', '', '', '2012-05-23 04:35:24', '', '#FFCC99', '1', '兵王、兵王游戏、兵王官网、兵王游戏官网、兵王OL、bw、bingwang、佣兵、拥兵、步步惊心、征途、巨人、盛大、魔幻、神兵、国战、爽、pk、群P、网络游戏、官方网站、追尾、倩女、穿越、萝莉、激情、称王、2.5D、MMORPG、热门网游、最新网游、兵王下载', '《兵王》由巨人旗下巨贤网络历时3年，耗资千万研发，中青宝代理的魔幻战争类MMORPG。游戏以旧神陨落，恶魔肆虐、新神乱舞的破碎世界为背景，讲述了平凡的人类如何从小兵成长为王，进而超越神的传奇故事。游戏采用高性能引擎，以2.5D视角极具张力地展示了光影明暗的斑斓世界。华丽的装备系统、平衡的技能和职业体系、多维度大范围的PVP内容，强大技术实力……带给玩家不容错过的视觉、听觉、感受的豪华盛宴！');
INSERT INTO `kz_article_bak` VALUES ('105', '15819', 'Mr.', '', 'Main/rootxtjs/gjhd/gjhd15819.html', '', '', '0', '0', '', '', '', '', '', '2012-05-23 04:35:25', '', '#FFCC99', '1', '兵王、兵王游戏、兵王官网、兵王游戏官网、兵王OL、bw、bingwang、佣兵、拥兵、步步惊心、征途、巨人、盛大、魔幻、神兵、国战、爽、pk、群P、网络游戏、官方网站、追尾、倩女、穿越、萝莉、激情、称王、2.5D、MMORPG、热门网游、最新网游、兵王下载', '《兵王》由巨人旗下巨贤网络历时3年，耗资千万研发，中青宝代理的魔幻战争类MMORPG。游戏以旧神陨落，恶魔肆虐、新神乱舞的破碎世界为背景，讲述了平凡的人类如何从小兵成长为王，进而超越神的传奇故事。游戏采用高性能引擎，以2.5D视角极具张力地展示了光影明暗的斑斓世界。华丽的装备系统、平衡的技能和职业体系、多维度大范围的PVP内容，强大技术实力……带给玩家不容错过的视觉、听觉、感受的豪华盛宴！');
INSERT INTO `kz_article_bak` VALUES ('87', '15820', 'Mr.', '', 'Main/rootyxzl/xssl/xssl15820.html', '', '', '0', '0', '', '', '', '', '', '2012-05-23 04:35:25', '', '#FFCC99', '1', '兵王、兵王游戏、兵王官网、兵王游戏官网、兵王OL、bw、bingwang、佣兵、拥兵、步步惊心、征途、巨人、盛大、魔幻、神兵、国战、爽、pk、群P、网络游戏、官方网站、追尾、倩女、穿越、萝莉、激情、称王、2.5D、MMORPG、热门网游、最新网游、兵王下载', '《兵王》由巨人旗下巨贤网络历时3年，耗资千万研发，中青宝代理的魔幻战争类MMORPG。游戏以旧神陨落，恶魔肆虐、新神乱舞的破碎世界为背景，讲述了平凡的人类如何从小兵成长为王，进而超越神的传奇故事。游戏采用高性能引擎，以2.5D视角极具张力地展示了光影明暗的斑斓世界。华丽的装备系统、平衡的技能和职业体系、多维度大范围的PVP内容，强大技术实力……带给玩家不容错过的视觉、听觉、感受的豪华盛宴！');
INSERT INTO `kz_article_bak` VALUES ('88', '15821', 'Mr.', '', 'Main/rootyxzl/czzn/czzn15821.html', '', '', '0', '0', '', '', '', '', '', '2012-05-23 04:35:25', '', '#FFCC99', '1', '兵王、兵王游戏、兵王官网、兵王游戏官网、兵王OL、bw、bingwang、佣兵、拥兵、步步惊心、征途、巨人、盛大、魔幻、神兵、国战、爽、pk、群P、网络游戏、官方网站、追尾、倩女、穿越、萝莉、激情、称王、2.5D、MMORPG、热门网游、最新网游、兵王下载', '《兵王》由巨人旗下巨贤网络历时3年，耗资千万研发，中青宝代理的魔幻战争类MMORPG。游戏以旧神陨落，恶魔肆虐、新神乱舞的破碎世界为背景，讲述了平凡的人类如何从小兵成长为王，进而超越神的传奇故事。游戏采用高性能引擎，以2.5D视角极具张力地展示了光影明暗的斑斓世界。华丽的装备系统、平衡的技能和职业体系、多维度大范围的PVP内容，强大技术实力……带给玩家不容错过的视觉、听觉、感受的豪华盛宴！');
INSERT INTO `kz_article_bak` VALUES ('85', '15822', 'Mr.', '', 'Main/rootyxzl/zcaz/zcaz15822.html', '', '', '0', '0', '', '', '', '', '', '2012-05-23 04:35:26', '', '#FFCC99', '1', '兵王、兵王游戏、兵王官网、兵王游戏官网、兵王OL、bw、bingwang、佣兵、拥兵、步步惊心、征途、巨人、盛大、魔幻、神兵、国战、爽、pk、群P、网络游戏、官方网站、追尾、倩女、穿越、萝莉、激情、称王、2.5D、MMORPG、热门网游、最新网游、兵王下载', '《兵王》由巨人旗下巨贤网络历时3年，耗资千万研发，中青宝代理的魔幻战争类MMORPG。游戏以旧神陨落，恶魔肆虐、新神乱舞的破碎世界为背景，讲述了平凡的人类如何从小兵成长为王，进而超越神的传奇故事。游戏采用高性能引擎，以2.5D视角极具张力地展示了光影明暗的斑斓世界。华丽的装备系统、平衡的技能和职业体系、多维度大范围的PVP内容，强大技术实力……带给玩家不容错过的视觉、听觉、感受的豪华盛宴！');
INSERT INTO `kz_article_bak` VALUES ('86', '15823', 'Mr.', '', 'Main/rootyxzl/jryx/jryx15823.html', '', '', '0', '0', '', '', '', '', '', '2012-05-23 04:35:26', '', '#FFCC99', '1', '兵王、兵王游戏、兵王官网、兵王游戏官网、兵王OL、bw、bingwang、佣兵、拥兵、步步惊心、征途、巨人、盛大、魔幻、神兵、国战、爽、pk、群P、网络游戏、官方网站、追尾、倩女、穿越、萝莉、激情、称王、2.5D、MMORPG、热门网游、最新网游、兵王下载', '《兵王》由巨人旗下巨贤网络历时3年，耗资千万研发，中青宝代理的魔幻战争类MMORPG。游戏以旧神陨落，恶魔肆虐、新神乱舞的破碎世界为背景，讲述了平凡的人类如何从小兵成长为王，进而超越神的传奇故事。游戏采用高性能引擎，以2.5D视角极具张力地展示了光影明暗的斑斓世界。华丽的装备系统、平衡的技能和职业体系、多维度大范围的PVP内容，强大技术实力……带给玩家不容错过的视觉、听觉、感受的豪华盛宴！');
INSERT INTO `kz_article_bak` VALUES ('87', '15824', 'Mr.', '', 'Main/rootyxzl/xssl/xssl15824.html', '', '', '0', '0', '', '', '', '', '', '2012-05-23 04:35:26', '', '#FFCC99', '1', '兵王、兵王游戏、兵王官网、兵王游戏官网、兵王OL、bw、bingwang、佣兵、拥兵、步步惊心、征途、巨人、盛大、魔幻、神兵、国战、爽、pk、群P、网络游戏、官方网站、追尾、倩女、穿越、萝莉、激情、称王、2.5D、MMORPG、热门网游、最新网游、兵王下载', '《兵王》由巨人旗下巨贤网络历时3年，耗资千万研发，中青宝代理的魔幻战争类MMORPG。游戏以旧神陨落，恶魔肆虐、新神乱舞的破碎世界为背景，讲述了平凡的人类如何从小兵成长为王，进而超越神的传奇故事。游戏采用高性能引擎，以2.5D视角极具张力地展示了光影明暗的斑斓世界。华丽的装备系统、平衡的技能和职业体系、多维度大范围的PVP内容，强大技术实力……带给玩家不容错过的视觉、听觉、感受的豪华盛宴！');
INSERT INTO `kz_article_bak` VALUES ('105', '15825', 'Mr.', '', 'Main/rootxtjs/gjhd/gjhd15825.html', '', '', '0', '0', '', '', '', '', '', '2012-05-23 04:35:27', '', '#FFCC99', '1', '兵王、兵王游戏、兵王官网、兵王游戏官网、兵王OL、bw、bingwang、佣兵、拥兵、步步惊心、征途、巨人、盛大、魔幻、神兵、国战、爽、pk、群P、网络游戏、官方网站、追尾、倩女、穿越、萝莉、激情、称王、2.5D、MMORPG、热门网游、最新网游、兵王下载', '《兵王》由巨人旗下巨贤网络历时3年，耗资千万研发，中青宝代理的魔幻战争类MMORPG。游戏以旧神陨落，恶魔肆虐、新神乱舞的破碎世界为背景，讲述了平凡的人类如何从小兵成长为王，进而超越神的传奇故事。游戏采用高性能引擎，以2.5D视角极具张力地展示了光影明暗的斑斓世界。华丽的装备系统、平衡的技能和职业体系、多维度大范围的PVP内容，强大技术实力……带给玩家不容错过的视觉、听觉、感受的豪华盛宴！');
INSERT INTO `kz_article_bak` VALUES ('105', '15826', 'Mr.', '', 'Main/rootxtjs/gjhd/gjhd15826.html', '', '', '0', '0', '', '', '', '', '', '2012-05-23 04:35:27', '', '#FFCC99', '1', '兵王、兵王游戏、兵王官网、兵王游戏官网、兵王OL、bw、bingwang、佣兵、拥兵、步步惊心、征途、巨人、盛大、魔幻、神兵、国战、爽、pk、群P、网络游戏、官方网站、追尾、倩女、穿越、萝莉、激情、称王、2.5D、MMORPG、热门网游、最新网游、兵王下载', '《兵王》由巨人旗下巨贤网络历时3年，耗资千万研发，中青宝代理的魔幻战争类MMORPG。游戏以旧神陨落，恶魔肆虐、新神乱舞的破碎世界为背景，讲述了平凡的人类如何从小兵成长为王，进而超越神的传奇故事。游戏采用高性能引擎，以2.5D视角极具张力地展示了光影明暗的斑斓世界。华丽的装备系统、平衡的技能和职业体系、多维度大范围的PVP内容，强大技术实力……带给玩家不容错过的视觉、听觉、感受的豪华盛宴！');
INSERT INTO `kz_article_bak` VALUES ('88', '15827', 'Mr.', '', 'Main/rootyxzl/czzn/czzn15827.html', '', '', '0', '0', '', '', '', '', '', '2012-05-23 04:35:27', '', '#FFCC99', '1', '兵王、兵王游戏、兵王官网、兵王游戏官网、兵王OL、bw、bingwang、佣兵、拥兵、步步惊心、征途、巨人、盛大、魔幻、神兵、国战、爽、pk、群P、网络游戏、官方网站、追尾、倩女、穿越、萝莉、激情、称王、2.5D、MMORPG、热门网游、最新网游、兵王下载', '《兵王》由巨人旗下巨贤网络历时3年，耗资千万研发，中青宝代理的魔幻战争类MMORPG。游戏以旧神陨落，恶魔肆虐、新神乱舞的破碎世界为背景，讲述了平凡的人类如何从小兵成长为王，进而超越神的传奇故事。游戏采用高性能引擎，以2.5D视角极具张力地展示了光影明暗的斑斓世界。华丽的装备系统、平衡的技能和职业体系、多维度大范围的PVP内容，强大技术实力……带给玩家不容错过的视觉、听觉、感受的豪华盛宴！');
INSERT INTO `kz_article_bak` VALUES ('84', '15828', 'Mr.', '', 'Main/rootyxzl/yxjs/yxjs15828.html', '', '', '0', '0', '', '', '', '', '', '2012-05-23 04:35:28', '', '#FFCC99', '1', '兵王、兵王游戏、兵王官网、兵王游戏官网、兵王OL、bw、bingwang、佣兵、拥兵、步步惊心、征途、巨人、盛大、魔幻、神兵、国战、爽、pk、群P、网络游戏、官方网站、追尾、倩女、穿越、萝莉、激情、称王、2.5D、MMORPG、热门网游、最新网游、兵王下载', '《兵王》由巨人旗下巨贤网络历时3年，耗资千万研发，中青宝代理的魔幻战争类MMORPG。游戏以旧神陨落，恶魔肆虐、新神乱舞的破碎世界为背景，讲述了平凡的人类如何从小兵成长为王，进而超越神的传奇故事。游戏采用高性能引擎，以2.5D视角极具张力地展示了光影明暗的斑斓世界。华丽的装备系统、平衡的技能和职业体系、多维度大范围的PVP内容，强大技术实力……带给玩家不容错过的视觉、听觉、感受的豪华盛宴！');
INSERT INTO `kz_article_bak` VALUES ('84', '15829', 'Mr.', '', 'Main/rootyxzl/yxjs/yxjs15829.html', '', '', '0', '0', '', '', '', '', '', '2012-05-23 04:35:28', '', '#FFCC99', '1', '兵王、兵王游戏、兵王官网、兵王游戏官网、兵王OL、bw、bingwang、佣兵、拥兵、步步惊心、征途、巨人、盛大、魔幻、神兵、国战、爽、pk、群P、网络游戏、官方网站、追尾、倩女、穿越、萝莉、激情、称王、2.5D、MMORPG、热门网游、最新网游、兵王下载', '《兵王》由巨人旗下巨贤网络历时3年，耗资千万研发，中青宝代理的魔幻战争类MMORPG。游戏以旧神陨落，恶魔肆虐、新神乱舞的破碎世界为背景，讲述了平凡的人类如何从小兵成长为王，进而超越神的传奇故事。游戏采用高性能引擎，以2.5D视角极具张力地展示了光影明暗的斑斓世界。华丽的装备系统、平衡的技能和职业体系、多维度大范围的PVP内容，强大技术实力……带给玩家不容错过的视觉、听觉、感受的豪华盛宴！');
INSERT INTO `kz_article_bak` VALUES ('96', '15830', 'Mr.', '', 'Main/rootxtjs/xtjs1/xtjs115830.html', '', '', '0', '0', '', '', '', '', '', '2012-05-23 04:35:29', '', '#FFCC99', '1', '兵王、兵王游戏、兵王官网、兵王游戏官网、兵王OL、bw、bingwang、佣兵、拥兵、步步惊心、征途、巨人、盛大、魔幻、神兵、国战、爽、pk、群P、网络游戏、官方网站、追尾、倩女、穿越、萝莉、激情、称王、2.5D、MMORPG、热门网游、最新网游、兵王下载', '《兵王》由巨人旗下巨贤网络历时3年，耗资千万研发，中青宝代理的魔幻战争类MMORPG。游戏以旧神陨落，恶魔肆虐、新神乱舞的破碎世界为背景，讲述了平凡的人类如何从小兵成长为王，进而超越神的传奇故事。游戏采用高性能引擎，以2.5D视角极具张力地展示了光影明暗的斑斓世界。华丽的装备系统、平衡的技能和职业体系、多维度大范围的PVP内容，强大技术实力……带给玩家不容错过的视觉、听觉、感受的豪华盛宴！');
INSERT INTO `kz_article_bak` VALUES ('103', '15831', 'Mr.', '', 'Main/rootxtjs/rchd/rchd15831.html', '', '', '0', '0', '', '', '', '', '', '2012-05-23 04:35:29', '', '#FFCC99', '1', '兵王、兵王游戏、兵王官网、兵王游戏官网、兵王OL、bw、bingwang、佣兵、拥兵、步步惊心、征途、巨人、盛大、魔幻、神兵、国战、爽、pk、群P、网络游戏、官方网站、追尾、倩女、穿越、萝莉、激情、称王、2.5D、MMORPG、热门网游、最新网游、兵王下载', '《兵王》由巨人旗下巨贤网络历时3年，耗资千万研发，中青宝代理的魔幻战争类MMORPG。游戏以旧神陨落，恶魔肆虐、新神乱舞的破碎世界为背景，讲述了平凡的人类如何从小兵成长为王，进而超越神的传奇故事。游戏采用高性能引擎，以2.5D视角极具张力地展示了光影明暗的斑斓世界。华丽的装备系统、平衡的技能和职业体系、多维度大范围的PVP内容，强大技术实力……带给玩家不容错过的视觉、听觉、感受的豪华盛宴！');
INSERT INTO `kz_article_bak` VALUES ('84', '15832', 'Mr.', '', 'Main/rootyxzl/yxjs/yxjs15832.html', '', '', '0', '0', '', '', '', '', '', '2012-05-23 04:35:29', '', '#FFCC99', '1', '兵王、兵王游戏、兵王官网、兵王游戏官网、兵王OL、bw、bingwang、佣兵、拥兵、步步惊心、征途、巨人、盛大、魔幻、神兵、国战、爽、pk、群P、网络游戏、官方网站、追尾、倩女、穿越、萝莉、激情、称王、2.5D、MMORPG、热门网游、最新网游、兵王下载', '《兵王》由巨人旗下巨贤网络历时3年，耗资千万研发，中青宝代理的魔幻战争类MMORPG。游戏以旧神陨落，恶魔肆虐、新神乱舞的破碎世界为背景，讲述了平凡的人类如何从小兵成长为王，进而超越神的传奇故事。游戏采用高性能引擎，以2.5D视角极具张力地展示了光影明暗的斑斓世界。华丽的装备系统、平衡的技能和职业体系、多维度大范围的PVP内容，强大技术实力……带给玩家不容错过的视觉、听觉、感受的豪华盛宴！');
INSERT INTO `kz_article_bak` VALUES ('84', '15833', 'Mr.', '', 'Main/rootyxzl/yxjs/yxjs15833.html', '', '', '0', '0', '', '', '', '', '', '2012-05-23 04:35:30', '', '#FFCC99', '1', '&dir', '《兵王》由巨人旗下巨贤网络历时3年，耗资千万研发，中青宝代理的魔幻战争类MMORPG。游戏以旧神陨落，恶魔肆虐、新神乱舞的破碎世界为背景，讲述了平凡的人类如何从小兵成长为王，进而超越神的传奇故事。游戏采用高性能引擎，以2.5D视角极具张力地展示了光影明暗的斑斓世界。华丽的装备系统、平衡的技能和职业体系、多维度大范围的PVP内容，强大技术实力……带给玩家不容错过的视觉、听觉、感受的豪华盛宴！');
INSERT INTO `kz_article_bak` VALUES ('84', '15834', 'Mr.', '', 'Main/rootyxzl/yxjs/yxjs15834.html', '', '', '0', '0', '', '', '', '', '', '2012-05-23 04:35:31', '', '#FFCC99', '1', '兵王、兵王游戏、兵王官网、兵王游戏官网、兵王OL、bw、bingwang、佣兵、拥兵、步步惊心、征途、巨人、盛大、魔幻、神兵、国战、爽、pk、群P、网络游戏、官方网站、追尾、倩女、穿越、萝莉、激情、称王、2.5D、MMORPG、热门网游、最新网游、兵王下载', '《兵王》由巨人旗下巨贤网络历时3年，耗资千万研发，中青宝代理的魔幻战争类MMORPG。游戏以旧神陨落，恶魔肆虐、新神乱舞的破碎世界为背景，讲述了平凡的人类如何从小兵成长为王，进而超越神的传奇故事。游戏采用高性能引擎，以2.5D视角极具张力地展示了光影明暗的斑斓世界。华丽的装备系统、平衡的技能和职业体系、多维度大范围的PVP内容，强大技术实力……带给玩家不容错过的视觉、听觉、感受的豪华盛宴！');
INSERT INTO `kz_article_bak` VALUES ('104', '15835', 'Mr.', '', 'Main/rootxtjs/bhhd/bhhd15835.html', '', '', '0', '0', '', '', '', '', '', '2012-05-23 04:35:32', '', '#FFCC99', '1', '兵王、兵王游戏、兵王官网、兵王游戏官网、兵王OL、bw、bingwang、佣兵、拥兵、步步惊心、征途、巨人、盛大、魔幻、神兵、国战、爽、pk、群P、网络游戏、官方网站、追尾、倩女、穿越、萝莉、激情、称王、2.5D、MMORPG、热门网游、最新网游、兵王下载', '《兵王》由巨人旗下巨贤网络历时3年，耗资千万研发，中青宝代理的魔幻战争类MMORPG。游戏以旧神陨落，恶魔肆虐、新神乱舞的破碎世界为背景，讲述了平凡的人类如何从小兵成长为王，进而超越神的传奇故事。游戏采用高性能引擎，以2.5D视角极具张力地展示了光影明暗的斑斓世界。华丽的装备系统、平衡的技能和职业体系、多维度大范围的PVP内容，强大技术实力……带给玩家不容错过的视觉、听觉、感受的豪华盛宴！');
INSERT INTO `kz_article_bak` VALUES ('105', '15836', 'Mr.', '', 'Main/rootxtjs/gjhd/gjhd15836.html', '', '', '0', '0', '', '', '', '', '', '2012-05-23 04:35:32', '', '#FFCC99', '1', '兵王、兵王游戏、兵王官网、兵王游戏官网、兵王OL、bw、bingwang、佣兵、拥兵、步步惊心、征途、巨人、盛大、魔幻、神兵、国战、爽、pk、群P、网络游戏、官方网站、追尾、倩女、穿越、萝莉、激情、称王、2.5D、MMORPG、热门网游、最新网游、兵王下载', '《兵王》由巨人旗下巨贤网络历时3年，耗资千万研发，中青宝代理的魔幻战争类MMORPG。游戏以旧神陨落，恶魔肆虐、新神乱舞的破碎世界为背景，讲述了平凡的人类如何从小兵成长为王，进而超越神的传奇故事。游戏采用高性能引擎，以2.5D视角极具张力地展示了光影明暗的斑斓世界。华丽的装备系统、平衡的技能和职业体系、多维度大范围的PVP内容，强大技术实力……带给玩家不容错过的视觉、听觉、感受的豪华盛宴！');
INSERT INTO `kz_article_bak` VALUES ('84', '15837', 'Mr.', '', 'Main/rootyxzl/yxjs/yxjs15837.html', '', '', '0', '0', '', '', '', '', '', '2012-05-23 04:35:32', '', '#FFCC99', '1', '兵王、兵王游戏、兵王官网、兵王游戏官网、兵王OL、bw、bingwang、佣兵、拥兵、步步惊心、征途、巨人、盛大、魔幻、神兵、国战、爽、pk、群P、网络游戏、官方网站、追尾、倩女、穿越、萝莉、激情、称王、2.5D、MMORPG、热门网游、最新网游、兵王下载', '《兵王》由巨人旗下巨贤网络历时3年，耗资千万研发，中青宝代理的魔幻战争类MMORPG。游戏以旧神陨落，恶魔肆虐、新神乱舞的破碎世界为背景，讲述了平凡的人类如何从小兵成长为王，进而超越神的传奇故事。游戏采用高性能引擎，以2.5D视角极具张力地展示了光影明暗的斑斓世界。华丽的装备系统、平衡的技能和职业体系、多维度大范围的PVP内容，强大技术实力……带给玩家不容错过的视觉、听觉、感受的豪华盛宴！');
INSERT INTO `kz_article_bak` VALUES ('84', '15838', 'Mr.', '', 'Main/rootyxzl/yxjs/yxjs15838.html', '', '', '0', '0', '', '', '', '', '', '2012-05-23 04:35:33', '', '#FFCC99', '1', '兵王、兵王游戏、兵王官网、兵王游戏官网、兵王OL、bw、bingwang、佣兵、拥兵、步步惊心、征途、巨人、盛大、魔幻、神兵、国战、爽、pk、群P、网络游戏、官方网站、追尾、倩女、穿越、萝莉、激情、称王、2.5D、MMORPG、热门网游、最新网游、兵王下载', '《兵王》由巨人旗下巨贤网络历时3年，耗资千万研发，中青宝代理的魔幻战争类MMORPG。游戏以旧神陨落，恶魔肆虐、新神乱舞的破碎世界为背景，讲述了平凡的人类如何从小兵成长为王，进而超越神的传奇故事。游戏采用高性能引擎，以2.5D视角极具张力地展示了光影明暗的斑斓世界。华丽的装备系统、平衡的技能和职业体系、多维度大范围的PVP内容，强大技术实力……带给玩家不容错过的视觉、听觉、感受的豪华盛宴！');
INSERT INTO `kz_article_bak` VALUES ('84', '15839', 'Mr.', '', 'Main/rootyxzl/yxjs/yxjs15839.html', '', '', '0', '0', '', '', '', '', '', '2012-05-23 04:35:33', '', '#FFCC99', '1', '兵王、兵王游戏、兵王官网、兵王游戏官网、兵王OL、bw、bingwang、佣兵、拥兵、步步惊心、征途、巨人、盛大、魔幻、神兵、国战、爽、pk、群P、网络游戏、官方网站、追尾、倩女、穿越、萝莉、激情、称王、2.5D、MMORPG、热门网游、最新网游、兵王下载', '《兵王》由巨人旗下巨贤网络历时3年，耗资千万研发，中青宝代理的魔幻战争类MMORPG。游戏以旧神陨落，恶魔肆虐、新神乱舞的破碎世界为背景，讲述了平凡的人类如何从小兵成长为王，进而超越神的传奇故事。游戏采用高性能引擎，以2.5D视角极具张力地展示了光影明暗的斑斓世界。华丽的装备系统、平衡的技能和职业体系、多维度大范围的PVP内容，强大技术实力……带给玩家不容错过的视觉、听觉、感受的豪华盛宴！');
INSERT INTO `kz_article_bak` VALUES ('84', '15840', 'Mr.', '', 'Main/rootyxzl/yxjs/yxjs15840.html', '', '', '0', '0', '', '', '', '', '', '2012-05-23 04:35:34', '', '#FFCC99', '1', '兵王、兵王游戏、兵王官网、兵王游戏官网、兵王OL、bw、bingwang、佣兵、拥兵、步步惊心、征途、巨人、盛大、魔幻、神兵、国战、爽、pk、群P、网络游戏、官方网站、追尾、倩女、穿越、萝莉、激情、称王、2.5D、MMORPG、热门网游、最新网游、兵王下载', '《兵王》由巨人旗下巨贤网络历时3年，耗资千万研发，中青宝代理的魔幻战争类MMORPG。游戏以旧神陨落，恶魔肆虐、新神乱舞的破碎世界为背景，讲述了平凡的人类如何从小兵成长为王，进而超越神的传奇故事。游戏采用高性能引擎，以2.5D视角极具张力地展示了光影明暗的斑斓世界。华丽的装备系统、平衡的技能和职业体系、多维度大范围的PVP内容，强大技术实力……带给玩家不容错过的视觉、听觉、感受的豪华盛宴！');
INSERT INTO `kz_article_bak` VALUES ('85', '15841', 'Mr.', '', 'Main/rootyxzl/zcaz/zcaz15841.html', '', '', '0', '0', '', '', '', '', '', '2012-05-23 04:35:35', '', '#FFCC99', '1', '兵王、兵王游戏、兵王官网、兵王游戏官网、兵王OL、bw、bingwang、佣兵、拥兵、步步惊心、征途、巨人、盛大、魔幻、神兵、国战、爽、pk、群P、网络游戏、官方网站、追尾、倩女、穿越、萝莉、激情、称王、2.5D、MMORPG、热门网游、最新网游、兵王下载', '《兵王》由巨人旗下巨贤网络历时3年，耗资千万研发，中青宝代理的魔幻战争类MMORPG。游戏以旧神陨落，恶魔肆虐、新神乱舞的破碎世界为背景，讲述了平凡的人类如何从小兵成长为王，进而超越神的传奇故事。游戏采用高性能引擎，以2.5D视角极具张力地展示了光影明暗的斑斓世界。华丽的装备系统、平衡的技能和职业体系、多维度大范围的PVP内容，强大技术实力……带给玩家不容错过的视觉、听觉、感受的豪华盛宴！');
INSERT INTO `kz_article_bak` VALUES ('85', '15842', 'Mr.', '', 'Main/rootyxzl/zcaz/zcaz15842.html', '', '', '0', '0', '', '', '', '', '', '2012-05-23 04:35:35', '', '#FFCC99', '1', '兵王、兵王游戏、兵王官网、兵王游戏官网、兵王OL、bw、bingwang、佣兵、拥兵、步步惊心、征途、巨人、盛大、魔幻、神兵、国战、爽、pk、群P、网络游戏、官方网站、追尾、倩女、穿越、萝莉、激情、称王、2.5D、MMORPG、热门网游、最新网游、兵王下载', '《兵王》由巨人旗下巨贤网络历时3年，耗资千万研发，中青宝代理的魔幻战争类MMORPG。游戏以旧神陨落，恶魔肆虐、新神乱舞的破碎世界为背景，讲述了平凡的人类如何从小兵成长为王，进而超越神的传奇故事。游戏采用高性能引擎，以2.5D视角极具张力地展示了光影明暗的斑斓世界。华丽的装备系统、平衡的技能和职业体系、多维度大范围的PVP内容，强大技术实力……带给玩家不容错过的视觉、听觉、感受的豪华盛宴！');
INSERT INTO `kz_article_bak` VALUES ('84', '15843', 'Mr.', '', 'Main/rootyxzl/yxjs/yxjs15843.html', '', '', '0', '0', '', '', '', '', '', '2012-05-23 04:35:35', '', '#FFCC99', '1', '|dir', '《兵王》由巨人旗下巨贤网络历时3年，耗资千万研发，中青宝代理的魔幻战争类MMORPG。游戏以旧神陨落，恶魔肆虐、新神乱舞的破碎世界为背景，讲述了平凡的人类如何从小兵成长为王，进而超越神的传奇故事。游戏采用高性能引擎，以2.5D视角极具张力地展示了光影明暗的斑斓世界。华丽的装备系统、平衡的技能和职业体系、多维度大范围的PVP内容，强大技术实力……带给玩家不容错过的视觉、听觉、感受的豪华盛宴！');
INSERT INTO `kz_article_bak` VALUES ('85', '15844', 'Mr.', '', 'Main/rootyxzl/zcaz/zcaz15844.html', '', '', '0', '0', '', '', '', '', '', '2012-05-23 04:35:36', '', '#FFCC99', '1', '&dir', '《兵王》由巨人旗下巨贤网络历时3年，耗资千万研发，中青宝代理的魔幻战争类MMORPG。游戏以旧神陨落，恶魔肆虐、新神乱舞的破碎世界为背景，讲述了平凡的人类如何从小兵成长为王，进而超越神的传奇故事。游戏采用高性能引擎，以2.5D视角极具张力地展示了光影明暗的斑斓世界。华丽的装备系统、平衡的技能和职业体系、多维度大范围的PVP内容，强大技术实力……带给玩家不容错过的视觉、听觉、感受的豪华盛宴！');

-- ----------------------------
-- Table structure for `kz_download`
-- ----------------------------
DROP TABLE IF EXISTS `kz_download`;
CREATE TABLE `kz_download` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `typeId` bigint(20) NOT NULL,
  `fileName` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `md5` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `fileBulk` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `upUrl` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `versionNumber` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `fileSpak` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `index` int(11) DEFAULT NULL,
  `issueTime` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kz_download
-- ----------------------------
INSERT INTO `kz_download` VALUES ('1', '8', 'BWSetup20121018.exe', '439f1e13c6ed8419aa0d4968ddd5496d', '770.36M', 'http://download28.ztgame.com.cn/BWSetup20121018.exe', '1.2.6.0421', null, '1', '2012?11?21?');
INSERT INTO `kz_download` VALUES ('2', '10', 'BWSetupSmart.exe', '3469A44F7362006E92A264C9E6532B66', '2.89M', 'http://download27.ztgame.com.cn/BWSetupSmart.exe', '1.123', null, '1', '2012年12月23日');
INSERT INTO `kz_download` VALUES ('3', '12', 'patch_all_20120720_20121222.exe', 'f2a2f75a15789aaa666798af4c4deccd', '222M', 'http://download02.ztgame.com.cn/patch_all_20120720_20121222.exe', null, '12月24日全区补丁', '1', '2012年12月24日');
INSERT INTO `kz_download` VALUES ('4', '12', 'patch_20120814_20120821.exe', '11124b9a8085fee66e79259b8c532b3f', '21.8MB', 'http://zqdown.bw.zqgame.com/patch_20120814_20120821.exe', null, '8月14日-8月21日全区补丁', '2', '2012年8月21日');
INSERT INTO `kz_download` VALUES ('5', '12', 'patch_all_20120721_20130104.exe', 'eea7c71c1a30612f3046dbc9e6c23c97', '231MB', 'http://download02.ztgame.com.cn/patch_all_20120721_20130104.exe', null, '1月5日封测区、成王天下全补丁', '3', '2013年1月8日');
INSERT INTO `kz_download` VALUES ('6', '13', 'BWSetupall20130319-test.exe', '68f20c251da643d04c9673fd06909185', '619M', 'http://download25.ztgame.com.cn/BWSetupall20130319.exe', null, '', '1', '2013年3月19日');

-- ----------------------------
-- Table structure for `kz_gameaction`
-- ----------------------------
DROP TABLE IF EXISTS `kz_gameaction`;
CREATE TABLE `kz_gameaction` (
  `typeId` int(11) NOT NULL,
  `actionId` int(11) NOT NULL AUTO_INCREMENT,
  `actionName` varchar(20) NOT NULL,
  `actionPicPath` varchar(100) DEFAULT NULL,
  `linkUrl` varchar(100) NOT NULL,
  `isHot` bit(1) NOT NULL DEFAULT b'0',
  `isAuthen` bit(1) NOT NULL DEFAULT b'0',
  `actionInfo` varchar(200) DEFAULT NULL,
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`actionId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kz_gameaction
-- ----------------------------
INSERT INTO `kz_gameaction` VALUES ('2', '2', 'sdfdsf', 'gameaction/fixedaction/20070129184513234.jpg', 'http://www.sina.com.cn', '', '', 'fd', '2007-01-29 18:45:32');
INSERT INTO `kz_gameaction` VALUES ('4', '3', 'hjgh', 'gameaction/fixedaction/20070130093930812.gif', 'http://localhost/newkznet/article/action/art23.html', '', '', 'jj', '2007-01-30 09:39:51');
INSERT INTO `kz_gameaction` VALUES ('3', '4', 'hh', 'gameaction/festival/20070130094037875.jpg', 'jj', '', '', '', '2007-01-30 09:40:46');
INSERT INTO `kz_gameaction` VALUES ('2', '5', 'rwe', 'gameaction/fixedaction/20070207171707921.jpg', 'http://www.163.com', '', '', 'wer', '2007-02-07 17:17:20');

-- ----------------------------
-- Table structure for `kz_gamehero`
-- ----------------------------
DROP TABLE IF EXISTS `kz_gamehero`;
CREATE TABLE `kz_gamehero` (
  `typeId` int(11) NOT NULL,
  `picId` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) DEFAULT NULL,
  `picPath` varchar(100) NOT NULL,
  `isFirstShow` bit(1) NOT NULL DEFAULT b'0',
  `createTime` datetime NOT NULL,
  `picSize` bigint(20) DEFAULT NULL,
  `picInfo` longtext,
  PRIMARY KEY (`picId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kz_gamehero
-- ----------------------------
INSERT INTO `kz_gamehero` VALUES ('37', '2', 'fff', 'Main/interact/group/20070731194348953.JPG', '', '2007-07-31 19:44:03', '0', 'uuuuuuuuuu');
INSERT INTO `kz_gamehero` VALUES ('36', '4', 'gd', 'Main/interact/herolist/20070731201132171.JPG', '', '2007-07-31 20:11:36', '0', 'ffffffff');
INSERT INTO `kz_gamehero` VALUES ('36', '5', 'dsfffff', 'Main/interact/herolist/20070813163532968.jpg', '', '2007-08-13 16:35:42', '0', '安静看来国家按时规律');
INSERT INTO `kz_gamehero` VALUES ('36', '6', 'rytr', 'Main/interact/herolist/20080409171228796.jpg', '', '2008-04-09 17:12:38', '0', '');
INSERT INTO `kz_gamehero` VALUES ('38', '7', '456', 'Main/interact/reporter/20080409171259921.jpg', '', '2008-04-09 17:13:07', '0', '');

-- ----------------------------
-- Table structure for `kz_images`
-- ----------------------------
DROP TABLE IF EXISTS `kz_images`;
CREATE TABLE `kz_images` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `typeId` bigint(20) NOT NULL,
  `imagePath` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `imageUrl` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `imageAbspath` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `imageName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `index` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kz_images
-- ----------------------------
INSERT INTO `kz_images` VALUES ('1', '1', '/focus_images/focus2_0.jpg', 'http://bw.zqgame.com/c/1-12/index.html', '/fileupload/home/fade3e7c-4d9c-4c0a-bf94-05907bb9833a.jpg', null, '1');
INSERT INTO `kz_images` VALUES ('2', '1', '/focus_images/focus2_1.jpg', 'http://bw.zqgame.com/c/xmas/index.html', '/fileupload/home/f318b6ed-6b06-4f08-8950-2504fdf91f34.jpg', null, '2');
INSERT INTO `kz_images` VALUES ('3', '1', '/focus_images/focus2_2.jpg', 'http://cj.zqgame.com/', '/fileupload/home/ba4221b5-f954-4c75-a293-9343fe504266.jpg', null, '3');
INSERT INTO `kz_images` VALUES ('4', '1', '/focus_images/focus2_3.jpg', 'http://bw.zqgame.com/c/ymdx/index.html', '/fileupload/home/91e83ca9-f27b-448b-a5e1-e6537e6f620f.jpg', null, '4');
INSERT INTO `kz_images` VALUES ('5', '1', '/focus_images/focus2_4.jpg', 'http://hao.17173.com/gift-info-3102', '/fileupload/home/81ec5eaf-13fc-41c6-963a-6ca53c0d10fa.jpg', null, '5');
INSERT INTO `kz_images` VALUES ('9', '7', '/fileupload/home/29444767-397d-49c0-8763-1e010c60dbd5.jpg', 'http://bw.zqgame.com/a/anquan/index.html', '/fileupload/home/29444767-397d-49c0-8763-1e010c60dbd5.jpg', '??13', '3');
INSERT INTO `kz_images` VALUES ('10', '7', '/fileupload/home/7b6c58e4-34b8-4048-8626-3c674c8b6398.jpg', 'http://bw.887777.com/', '/fileupload/home/7b6c58e4-34b8-4048-8626-3c674c8b6398.jpg', '??14', '4');
INSERT INTO `kz_images` VALUES ('11', '3', '/fileupload/client/e72e665c-0785-46a6-9c35-b36c68b6c437.jpg', '', '/fileupload/client/e72e665c-0785-46a6-9c35-b36c68b6c437.jpg', null, '1');
INSERT INTO `kz_images` VALUES ('12', '4', '/fileupload/client/a20c2880-70ba-422e-8505-5c9bad869ce0.jpg', 'http://bw.zqgame.com/c/1-12/index.html', '/fileupload/client/a20c2880-70ba-422e-8505-5c9bad869ce0.jpg', null, '1');
INSERT INTO `kz_images` VALUES ('13', '4', '/fileupload/client/68d5d548-fb71-43f0-a112-dca514709565.jpg', 'http://bw.zqgame.com/c/1-12/index.html', '/fileupload/client/68d5d548-fb71-43f0-a112-dca514709565.jpg', null, '2');
INSERT INTO `kz_images` VALUES ('14', '4', '/fileupload/client/c8f340f9-190b-471a-99e1-e39751838c91.jpg', '', '/fileupload/client/c8f340f9-190b-471a-99e1-e39751838c91.jpg', null, '3');
INSERT INTO `kz_images` VALUES ('15', '4', '/fileupload/client/1bb5b911-fb48-49cc-a7db-0cc128e9b912.jpg', '', '/fileupload/client/1bb5b911-fb48-49cc-a7db-0cc128e9b912.jpg', null, '4');
INSERT INTO `kz_images` VALUES ('16', '4', '/fileupload/client/1e21d397-7806-4a31-8196-b3b37339b3aa.jpg', '', '/fileupload/client/1e21d397-7806-4a31-8196-b3b37339b3aa.jpg', null, '5');
INSERT INTO `kz_images` VALUES ('17', '5', '/fileupload/client/d56c695e-8482-4b30-a001-239fc1017029.jpg', '', '/fileupload/client/d56c695e-8482-4b30-a001-239fc1017029.jpg', null, '1');
INSERT INTO `kz_images` VALUES ('18', '6', '/fileupload/client/44e8132f-0f57-4ced-bd2d-5ba67057513d.jpg', 'http://bw.zqgame.com/c/1-12/index.html', '/fileupload/client/44e8132f-0f57-4ced-bd2d-5ba67057513d.jpg', null, '1');
INSERT INTO `kz_images` VALUES ('19', '6', '/fileupload/client/8e858c6c-6f13-4ae9-b366-37f083be7307.jpg', 'http://bw.zqgame.com/c/xmas/index.html', '/fileupload/client/8e858c6c-6f13-4ae9-b366-37f083be7307.jpg', null, '2');
INSERT INTO `kz_images` VALUES ('20', '6', '/fileupload/client/ea5c979a-9d28-494c-af82-f9ffbe7dfd42.jpg', '', '/fileupload/client/ea5c979a-9d28-494c-af82-f9ffbe7dfd42.jpg', null, '3');
INSERT INTO `kz_images` VALUES ('21', '6', '/fileupload/client/da4293fe-a014-4b3c-bdb5-179b24749b80.jpg', 'http://bw.zqgame.com/c/1026dzh/index.html', '/fileupload/client/da4293fe-a014-4b3c-bdb5-179b24749b80.jpg', null, '4');
INSERT INTO `kz_images` VALUES ('22', '6', '/fileupload/client/836790b0-76dd-47a7-b0ec-ab0cc2ec2da1.jpg', 'http://hao.17173.com/gift-info-3102', '/fileupload/client/836790b0-76dd-47a7-b0ec-ab0cc2ec2da1.jpg', null, '5');

-- ----------------------------
-- Table structure for `kz_linkedpic`
-- ----------------------------
DROP TABLE IF EXISTS `kz_linkedpic`;
CREATE TABLE `kz_linkedpic` (
  `typeId` int(11) NOT NULL,
  `linkedPicId` int(11) NOT NULL AUTO_INCREMENT,
  `linkedPicName` varchar(20) NOT NULL,
  `picPath` varchar(100) DEFAULT NULL,
  `isFirstShow` bit(1) NOT NULL DEFAULT b'0',
  `info` varchar(200) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`linkedPicId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kz_linkedpic
-- ----------------------------
INSERT INTO `kz_linkedpic` VALUES ('3', '1', '活动图片1', 'linkedPic/actionPic/20070104142318228.jpg', '', '', 'http://club.pk1937.com.cn/test/index.html', '', 'http://club.pk1937.com.cn/test/index.html');
INSERT INTO `kz_linkedpic` VALUES ('3', '2', '活动图片2', 'linkedPic/actionPic/20070104142422291.jpg', '', '', 'http://club.pk1937.com.cn/test/gong.html', '', 'http://club.pk1937.com.cn/test/gong.html');
INSERT INTO `kz_linkedpic` VALUES ('3', '3', '活动图片3', 'linkedPic/actionPic/20070104142517744.jpg', '', '', '', '', 'http://hd.pk1937.com.cn/20061129/index.aspx');
INSERT INTO `kz_linkedpic` VALUES ('2', '4', 'hjkgjh', 'linkedPic/gamepartner/20070104173522150.jpg', '', '', '', '', 'hkjhkj');
INSERT INTO `kz_linkedpic` VALUES ('1', '5', 'jhjhg', 'linkedPic/copartner/20070104173545150.jpg', '', '', '', '', 'fddfs');
INSERT INTO `kz_linkedpic` VALUES ('1', '6', 'eee', 'linkedPic/copartner/20070104175000666.jpg', '', '', '', '', 'www');
INSERT INTO `kz_linkedpic` VALUES ('2', '7', 'www', 'linkedPic/gamepartner/20070104175018557.jpg', '', 'e', '', '', 'eeee');

-- ----------------------------
-- Table structure for `kz_linkedpictype`
-- ----------------------------
DROP TABLE IF EXISTS `kz_linkedpictype`;
CREATE TABLE `kz_linkedpictype` (
  `typeId` int(11) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(20) NOT NULL,
  `dirName` varchar(30) NOT NULL,
  PRIMARY KEY (`typeId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kz_linkedpictype
-- ----------------------------
INSERT INTO `kz_linkedpictype` VALUES ('1', '合作媒体', 'copartner');
INSERT INTO `kz_linkedpictype` VALUES ('2', '游戏分区', 'gamepartner');
INSERT INTO `kz_linkedpictype` VALUES ('3', '活动图片', 'actionPic');
INSERT INTO `kz_linkedpictype` VALUES ('4', '翻页广告', 'rollad');

-- ----------------------------
-- Table structure for `kz_links`
-- ----------------------------
DROP TABLE IF EXISTS `kz_links`;
CREATE TABLE `kz_links` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `typeId` bigint(20) NOT NULL,
  `linkTitle` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkUrl` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `index` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kz_links
-- ----------------------------
INSERT INTO `kz_links` VALUES ('1', '2', '百度1', 'http://www.baidu.com', '1');
INSERT INTO `kz_links` VALUES ('2', '2', '百度2', 'http://www.baidu.com', '2');
INSERT INTO `kz_links` VALUES ('3', '2', '百度3', 'http://www.baidu.com', '3');
INSERT INTO `kz_links` VALUES ('4', '2', '百度4', 'http://www.baidu.com', '4');
INSERT INTO `kz_links` VALUES ('5', '9', '17173', 'http://download.17173.com/11657/10/63194/', '1');
INSERT INTO `kz_links` VALUES ('6', '9', '多玩', 'http://dl.duowan.com/html/bw1317373192809h', '2');
INSERT INTO `kz_links` VALUES ('7', '9', '腾讯', 'http://games.qq.com/a/20120822/000221.htm', '3');
INSERT INTO `kz_links` VALUES ('8', '11', '17173', 'http://download.17173.com/11657/10/63341/', '1');
INSERT INTO `kz_links` VALUES ('9', '11', '多玩', 'http://dl.duowan.com/html/bw1317373192809h', '2');
INSERT INTO `kz_links` VALUES ('10', '11', '腾讯', 'http://games.qq.com/a/20120705/000215.htm', '3');
INSERT INTO `kz_links` VALUES ('12', '9', '网易', 'http://product.game.163.com/bw/download/', '4');
INSERT INTO `kz_links` VALUES ('13', '9', '新浪', 'http://games.sina.com.cn/z/bw/download.shtml', '5');
INSERT INTO `kz_links` VALUES ('14', '9', '178', 'http://down.178.com/kehuduan/2011-12-19/3340.html', '6');
INSERT INTO `kz_links` VALUES ('15', '11', '766', 'http://down.766.com/netgame/h016/h82/1682680.shtml', '4');
INSERT INTO `kz_links` VALUES ('16', '9', '52PK', 'http://down.52pk.com/xiazai/10696.shtml', '7');
INSERT INTO `kz_links` VALUES ('17', '9', '766', 'http://down.766.com/netgame/h017/h32/1732247.shtml', '8');
INSERT INTO `kz_links` VALUES ('18', '9', '5617', 'http://download.5617.com/default.php?mod=down&do=detail&tid=77328', '9');
INSERT INTO `kz_links` VALUES ('19', '9', '电玩', 'http://down.tgbus.com/soft/31267.shtml', '10');
INSERT INTO `kz_links` VALUES ('20', '9', '131', 'http://down.131wanwan.com/NetGame/mmorpg/24089.html', '11');
INSERT INTO `kz_links` VALUES ('21', '9', '万宇', 'http://download.92wy.com/netgame/685-client-34708.html', '12');
INSERT INTO `kz_links` VALUES ('22', '9', '天极', 'http://gameonline.yesky.com/417/33307917.shtml', '13');
INSERT INTO `kz_links` VALUES ('23', '9', 'pchome', 'http://download.pchome.net/dlgame-online-client/detail-189768.html', '14');
INSERT INTO `kz_links` VALUES ('24', '9', 'u9', 'http://down.uuu9.com/Soft/HTML/3282.shtml', '15');
INSERT INTO `kz_links` VALUES ('25', '9', '太平洋', 'http://dl.pcgames.com.cn/download/61433.html', '16');
INSERT INTO `kz_links` VALUES ('26', '9', '中关村', 'http://youxi.zol.com.cn/ol/index14784.html', '17');
INSERT INTO `kz_links` VALUES ('27', '9', '叶子猪', 'http://dl.yzz.cn/client/201109/376060.shtml', '18');
INSERT INTO `kz_links` VALUES ('28', '11', '中关村1', 'http://youxi.zol.com.cn/15/14784/down.html', '5');
INSERT INTO `kz_links` VALUES ('29', '11', '561712', 'http://download.5617.com/default.php?mod=down&do=detail&tid=74720', '6');
INSERT INTO `kz_links` VALUES ('30', '11', '178', 'http://down.178.com/kehuduan/2012-02-08/3390.html', '7');
INSERT INTO `kz_links` VALUES ('31', '11', '万宇', 'http://download.92wy.com/netgame/685-client-34708.html', '8');
INSERT INTO `kz_links` VALUES ('32', '9', '硅谷动力', 'http://games.enet.com.cn/download/D0420120423004.html', '19');
INSERT INTO `kz_links` VALUES ('33', '9', 'e蜗卡', 'http://www.ewoka.com/html/bw/kehuduanxiazai/2012/0807/75641.html', '20');
INSERT INTO `kz_links` VALUES ('34', '9', 'uc999', 'http://down.uc999.com/bingw_100139', '21');
INSERT INTO `kz_links` VALUES ('35', '9', '北方', 'http://www.bfyx.com/youxixiazai/bingwang/2011/1130/33603.html', '22');
INSERT INTO `kz_links` VALUES ('36', '9', '游鱼', 'http://www.yyugame.com/show.php?contentid=148246', '23');
INSERT INTO `kz_links` VALUES ('37', '11', 'uc999', 'http://down.uc999.com/bingw_100139', '9');
INSERT INTO `kz_links` VALUES ('38', '9', '1t1t', 'http://download.1t1t.com/soft.php?cate_id=219&soft_id=5595', '24');
INSERT INTO `kz_links` VALUES ('39', '9', '175y', 'http://club.175y.com/gameskey.php', '25');
INSERT INTO `kz_links` VALUES ('40', '9', '175y', 'http://club.175y.com/gameskey.php', '26');
INSERT INTO `kz_links` VALUES ('41', '9', '耀游网', 'http://www.17yoeo.com/portal.php?mod=view&aid=6965', '27');
INSERT INTO `kz_links` VALUES ('42', '11', '硅谷动力', 'http://games.enet.com.cn/download/D0420120507001.html', '10');
INSERT INTO `kz_links` VALUES ('43', '11', '天极', 'http://mydown.yesky.com/game/396/31079896.shtml', '11');
INSERT INTO `kz_links` VALUES ('44', '11', '太平洋', 'http://dl.pcgames.com.cn/download/65089.html', '12');
INSERT INTO `kz_links` VALUES ('45', '11', '1t1t1t', 'http://download.1t1t.com/soft.php?cate_id=219&soft_id=5595', '13');

-- ----------------------------
-- Table structure for `kz_manager`
-- ----------------------------
DROP TABLE IF EXISTS `kz_manager`;
CREATE TABLE `kz_manager` (
  `userId` varchar(20) NOT NULL,
  `userName` varchar(10) NOT NULL,
  `pwd` varchar(32) NOT NULL,
  `ip` varchar(15) DEFAULT NULL,
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kz_manager
-- ----------------------------
INSERT INTO `kz_manager` VALUES ('bwadmin', 'bwadmin', '131D226C26543B8F95B4247C92D023D2', '               ', '2012-04-26 13:27:27');
INSERT INTO `kz_manager` VALUES ('bwgame', '普通用户', '010AE1E777F1ADE1260FFFE1C12F2FE5', '               ', '2012-06-04 18:30:17');
INSERT INTO `kz_manager` VALUES ('bwgame2', 'bwgame2', 'A4504ADC422EC451BF85952BD152D274', '               ', '2012-06-04 18:37:15');
INSERT INTO `kz_manager` VALUES ('bwgame3', 'bwgame3', '010AE1E777F1ADE1260FFFE1C12F2FE5', '               ', '2012-06-04 18:40:53');

-- ----------------------------
-- Table structure for `kz_messageboard`
-- ----------------------------
DROP TABLE IF EXISTS `kz_messageboard`;
CREATE TABLE `kz_messageboard` (
  `messageId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `account` varchar(20) DEFAULT NULL,
  `ip` varchar(15) DEFAULT NULL,
  `content` text NOT NULL,
  `isLocked` bit(1) NOT NULL DEFAULT b'0',
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`messageId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kz_messageboard
-- ----------------------------
INSERT INTO `kz_messageboard` VALUES ('1', 'ww', 'ww', '127.0.0.1      ', 'ww', '', '2007-01-30 18:33:23');
INSERT INTO `kz_messageboard` VALUES ('3', '地方', '士大夫', '127.0.0.1      ', '士大夫随风倒', '', '2007-01-30 18:40:57');

-- ----------------------------
-- Table structure for `kz_operationlog`
-- ----------------------------
DROP TABLE IF EXISTS `kz_operationlog`;
CREATE TABLE `kz_operationlog` (
  `operationId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(20) NOT NULL,
  `operationTime` datetime NOT NULL,
  `info` text,
  PRIMARY KEY (`operationId`)
) ENGINE=InnoDB AUTO_INCREMENT=7160 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kz_operationlog
-- ----------------------------
INSERT INTO `kz_operationlog` VALUES ('6909', 'admin', '2011-06-13 17:29:54', '添加文章！');
INSERT INTO `kz_operationlog` VALUES ('6910', 'admin', '2011-06-13 17:30:02', '更新文章！');
INSERT INTO `kz_operationlog` VALUES ('6911', 'admin', '2011-06-13 17:30:10', '更新文章！');
INSERT INTO `kz_operationlog` VALUES ('6912', 'admin', '2011-06-13 17:30:47', '添加文章！');
INSERT INTO `kz_operationlog` VALUES ('6913', 'admin', '2011-06-13 17:36:07', '添加文章！');
INSERT INTO `kz_operationlog` VALUES ('6914', 'admin', '2011-06-13 17:36:19', '更新文章！');
INSERT INTO `kz_operationlog` VALUES ('6915', 'test', '2011-06-13 17:36:30', '删除文章!');
INSERT INTO `kz_operationlog` VALUES ('6916', 'test', '2011-06-13 17:36:32', '删除文章!');
INSERT INTO `kz_operationlog` VALUES ('6917', 'test', '2011-06-13 17:36:33', '删除文章!');
INSERT INTO `kz_operationlog` VALUES ('6918', 'test', '2011-06-13 17:36:34', '删除文章!');
INSERT INTO `kz_operationlog` VALUES ('6919', 'test', '2011-06-13 17:38:54', '删除文章!');
INSERT INTO `kz_operationlog` VALUES ('6920', 'test', '2011-06-13 17:38:59', '删除文章!');
INSERT INTO `kz_operationlog` VALUES ('6921', 'test', '2011-06-13 17:39:02', '删除文章!');
INSERT INTO `kz_operationlog` VALUES ('6922', 'test', '2011-06-13 17:39:26', '删除文章!');
INSERT INTO `kz_operationlog` VALUES ('6923', 'test', '2011-06-13 17:39:29', '删除文章!');
INSERT INTO `kz_operationlog` VALUES ('6924', 'test', '2011-06-13 17:39:36', '删除文章!');
INSERT INTO `kz_operationlog` VALUES ('6925', 'test', '2011-06-13 17:39:38', '删除文章!');
INSERT INTO `kz_operationlog` VALUES ('6926', '', '2011-06-13 18:22:15', '更新文章！');
INSERT INTO `kz_operationlog` VALUES ('6927', 'admin', '2011-06-14 13:02:06', '添加文章！');
INSERT INTO `kz_operationlog` VALUES ('6928', 'admin', '2011-06-14 13:02:28', '更新文章！');
INSERT INTO `kz_operationlog` VALUES ('6929', 'admin', '2011-06-14 13:06:45', '添加文章！');
INSERT INTO `kz_operationlog` VALUES ('6930', 'admin', '2011-06-14 13:08:25', '添加文章！');
INSERT INTO `kz_operationlog` VALUES ('6931', 'test', '2011-06-14 13:08:51', '删除文章!');
INSERT INTO `kz_operationlog` VALUES ('6932', 'admin', '2011-06-14 13:10:49', '添加文章！');
INSERT INTO `kz_operationlog` VALUES ('6933', 'admin', '2011-06-14 13:13:50', '添加文章！');
INSERT INTO `kz_operationlog` VALUES ('6934', 'admin', '2011-06-14 13:14:02', '更新文章！');
INSERT INTO `kz_operationlog` VALUES ('6935', 'admin', '2011-06-14 13:14:30', '添加文章！');
INSERT INTO `kz_operationlog` VALUES ('6936', 'admin', '2011-06-14 13:14:42', '更新文章！');
INSERT INTO `kz_operationlog` VALUES ('6937', 'test', '2011-06-14 13:14:46', '删除文章!');
INSERT INTO `kz_operationlog` VALUES ('6938', 'test', '2011-06-14 13:14:48', '删除文章!');
INSERT INTO `kz_operationlog` VALUES ('6939', 'test', '2011-06-14 13:14:49', '删除文章!');
INSERT INTO `kz_operationlog` VALUES ('6940', 'test', '2011-06-14 13:14:51', '删除文章!');
INSERT INTO `kz_operationlog` VALUES ('6941', 'test', '2011-06-14 13:14:52', '删除文章!');
INSERT INTO `kz_operationlog` VALUES ('6942', 'test', '2011-06-14 13:14:53', '删除文章!');
INSERT INTO `kz_operationlog` VALUES ('6943', 'test', '2011-06-14 13:15:00', '删除文章!');
INSERT INTO `kz_operationlog` VALUES ('6944', 'test', '2011-06-14 13:15:01', '删除文章!');
INSERT INTO `kz_operationlog` VALUES ('6945', 'test', '2011-06-14 13:15:02', '删除文章!');
INSERT INTO `kz_operationlog` VALUES ('6946', 'test', '2011-06-14 13:15:03', '删除文章!');
INSERT INTO `kz_operationlog` VALUES ('6947', 'test', '2011-06-14 13:15:04', '删除文章!');
INSERT INTO `kz_operationlog` VALUES ('6948', 'test', '2011-06-14 13:15:05', '删除文章!');
INSERT INTO `kz_operationlog` VALUES ('6949', 'test', '2011-06-14 13:15:30', '删除文章!');
INSERT INTO `kz_operationlog` VALUES ('6950', 'test', '2011-06-14 13:15:31', '删除文章!');
INSERT INTO `kz_operationlog` VALUES ('6951', 'test', '2011-06-14 13:15:45', '删除文章!');
INSERT INTO `kz_operationlog` VALUES ('6952', 'test', '2011-06-14 13:15:47', '删除文章!');
INSERT INTO `kz_operationlog` VALUES ('6953', 'test', '2011-06-14 13:15:48', '删除文章!');
INSERT INTO `kz_operationlog` VALUES ('6954', 'test', '2011-06-14 13:15:50', '删除文章!');

-- ----------------------------
-- Table structure for `kz_pagetemplate`
-- ----------------------------
DROP TABLE IF EXISTS `kz_pagetemplate`;
CREATE TABLE `kz_pagetemplate` (
  `templateId` int(11) NOT NULL AUTO_INCREMENT,
  `templateName` varchar(20) NOT NULL,
  `templateContent` longtext NOT NULL,
  `filePath` varchar(100) NOT NULL,
  PRIMARY KEY (`templateId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kz_pagetemplate
-- ----------------------------
INSERT INTO `kz_pagetemplate` VALUES ('1', '一般模版', 'ArticleShow.aspx', 'article/20061020144833250.html');
INSERT INTO `kz_pagetemplate` VALUES ('2', '游戏模版', '<html>\r\n	<head>\r\n		<title>抗战ONLINE</title>\r\n		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\">\r\n		<link href=\"../css/css.css\" rel=\"stylesheet\">\r\n			<link href=\"../css/class.css\" rel=\"stylesheet\" type=\"text/css\">\r\n				<link href=\"../css/div.css\" rel=\"stylesheet\" type=\"text/css\">\r\n	</head>\r\n	<body>\r\n		<!---------TOPflash--------------------------------------------------------------------------------------------------------------------->\r\n		<!---------TOP flash--------------------------------------------------------------------------------------------------------------------->\r\n		<!--top 开始 -->\r\n		<table width=\"1002\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n			<tr>\r\n				<td><IFRAME border=\"0\" marginWidth=\"0\" marginHeight=\"0\" src=\"../images/top.html\" frameBorder=\"No\"\r\n						width=\"1002\" scrolling=\"1\" height=\"158\"></IFRAME></td>\r\n			</tr>\r\n		</table>\r\n		<!--top 结束 -->\r\n		<!--main01 开始 -->\r\n		<div class=\"main_bg\">\r\n			<div id=\"main01\">\r\n				<table width=\"182\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"FLOAT:left\">\r\n					<tr>\r\n						<td valign=\"top\"><iframe border=\"0\" marginwidth=\"0\" marginheight=\"0\" src=\"../images/left.html\" frameborder=\"No\"\r\n								width=\"182\" scrolling=\"1\" height=\"870\"></iframe></td>\r\n					</tr>\r\n				</table>\r\n				<table style=\"FLOAT:left\" width=\"634\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n					<tr>\r\n						<td width=\"11\" class=\"tiao\">&nbsp;</td>\r\n						<td align=\"center\" valign=\"top\" class=\"bj_z\"><img src=\"../images/index_08.gif\" width=\"616\" height=\"37\" alt=\"\">\r\n							<table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"b_table\">\r\n								<tr>\r\n									<td height=\"900\" valign=\"top\">\r\n										<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n											<tr>\r\n												<td>&nbsp;</td>\r\n											</tr>\r\n										</table>\r\n										<table width=\"566\" height=\"29\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" align=\"center\">\r\n											<tr>\r\n												<td align=\"center\" valign=\"top\" background=\"../Images/moban_1.jpg\">\r\n													<table width=\"180\" height=\"22\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n														<tr>\r\n															<td align=\"center\" valign=\"bottom\" class=\"cubiaoti\">$title$</td>\r\n														</tr>\r\n													</table>\r\n												</td>\r\n											</tr>\r\n										</table>\r\n										<br>\r\n										<br>\r\n										<div>$content$</div>\r\n									</td>\r\n								</tr>\r\n							</table>\r\n							<table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n								<tr>\r\n									<td align=\"center\" valign=\"top\"><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n											<tr>\r\n												<td height=\"40\" background=\"../images/index_23_1.gif\">&nbsp;</td>\r\n											</tr>\r\n										</table>\r\n									</td>\r\n								</tr>\r\n							</table>\r\n						</td>\r\n						<td width=\"11\" class=\"tiao1\">&nbsp;</td>\r\n					</tr>\r\n				</table>\r\n				<table style=\"FLOAT:left\" width=\"182\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n					<tr>\r\n						<td align=\"center\"><IFRAME border=\"0\" marginWidth=\"0\" marginHeight=\"0\" src=\"../images/right.html\" frameBorder=\"No\"\r\n								width=\"182\" scrolling=\"1\" height=\"800\"></IFRAME></td>\r\n					</tr>\r\n				</table>\r\n			</div>\r\n		</div>\r\n		<!--main01 结束 -->\r\n		<!--bt 开始 -->\r\n			<table style=\"FLOAT:left\" width=\"1002\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n				<tr>\r\n					<td height=\"159\"><IFRAME border=\"0\" marginWidth=\"0\" marginHeight=\"0\" src=\"../images/bt.html\" frameBorder=\"No\"\r\n							width=\"1002\" scrolling=\"1\" height=\"159\"></IFRAME></td>\r\n				</tr>\r\n			</table>\r\n		<!--bt 结束 -->\r\n		<map name=\"Map\">\r\n			<area shape=\"RECT\" coords=\"212,7,251,22\" href=\"#\">\r\n		</map><map name=\"Map2\">\r\n			<area shape=\"RECT\" coords=\"211,7,252,21\" href=\"#\">\r\n		</map><map name=\"Map3\">\r\n			<area shape=\"RECT\" coords=\"238,3,273,16\" href=\"#\">\r\n		</map><map name=\"Map4\">\r\n			<area shape=\"RECT\" coords=\"237,3,272,14\" href=\"#\">\r\n		</map><map name=\"Map5\">\r\n			<area shape=\"RECT\" coords=\"233,3,268,17\" href=\"#\">\r\n		</map><map name=\"Map6\">\r\n			<area shape=\"RECT\" coords=\"236,4,274,15\" href=\"#\">\r\n		</map><map name=\"Map7\">\r\n			<area shape=\"RECT\" coords=\"209,4,243,19\" href=\"#\">\r\n		</map><map name=\"Map8\">\r\n			<area shape=\"RECT\" coords=\"213,5,243,18\" href=\"#\">\r\n		</map>\r\n	</body>\r\n</html>', 'article/20061020144855296.html');
INSERT INTO `kz_pagetemplate` VALUES ('3', '活动模版', 'GameActionShow.aspx', 'article/20070207112557953.html');

-- ----------------------------
-- Table structure for `kz_picture`
-- ----------------------------
DROP TABLE IF EXISTS `kz_picture`;
CREATE TABLE `kz_picture` (
  `picTypeId` int(11) NOT NULL,
  `picId` int(11) NOT NULL AUTO_INCREMENT,
  `picPath` varchar(100) DEFAULT NULL,
  `isAuthen` bit(1) DEFAULT b'0',
  `isFirstShow` bit(1) DEFAULT b'0',
  `createTime` datetime DEFAULT NULL,
  `picSize` bigint(20) DEFAULT NULL,
  `picInfo` varchar(200) DEFAULT NULL,
  `gameServer` varchar(30) DEFAULT NULL,
  `gameRoleName` varchar(30) DEFAULT NULL,
  `sex` varchar(6) DEFAULT NULL,
  `age` varchar(8) DEFAULT NULL,
  `friendType` varchar(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `qqNumber` varchar(20) DEFAULT NULL,
  `personalIntro` text,
  PRIMARY KEY (`picId`)
) ENGINE=InnoDB AUTO_INCREMENT=717 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kz_picture
-- ----------------------------
INSERT INTO `kz_picture` VALUES ('1', '450', 'picture/photo/20101221092711250.jpg', '', '', '2010-12-21 09:27:00', '95387', '虞美人', '承影', '虞美人', '      ', '        ', '', '', '', '1023253775', '我是小弓弓虞美人，不要劫我镖');
INSERT INTO `kz_picture` VALUES ('1', '615', 'picture/photo/20110710032013265.jpg', '', '', '2011-07-10 03:26:13', '15068', '俊秀', '兵王封测', '俊秀', '      ', '        ', '', '', '', '569118861', '热爱兵王');
INSERT INTO `kz_picture` VALUES ('1', '617', 'picture/photo/20110711134848812.jpg', '', '', '2011-07-11 13:54:51', '10269', '丿中華丨将军', '天之国', '紫云', '      ', '        ', '', '', '', '382928799', '- -');
INSERT INTO `kz_picture` VALUES ('1', '618', 'picture/photo/20110711162641750.jpg', '', '', '2011-07-11 16:32:44', '11994', '|灬皇叔', '封测区', '|灬皇叔', '      ', '        ', '', '', '', '744084250', '兵王');
INSERT INTO `kz_picture` VALUES ('1', '622', 'picture/photo/20110714163758218.jpg', '', '', '2011-07-14 16:44:07', '64462', '冰儿', '测试区', '冰儿', '      ', '        ', '', '', '', '609402', '一起玩');
INSERT INTO `kz_picture` VALUES ('1', '624', 'picture/photo/20110714222321812.jpg', '', '', '2011-07-14 22:29:31', '46436', '苏、尐旖', '不解释', '苏、尐旖', '      ', '        ', '', '', '', '1506054565', '╰(￣▽￣)╮。。每次玩新游。首先晒图。、、同那谁谁谁一样~~！ 开心就好。别的无所谓。、交朋友的有木有！！~咱只要妹子');
INSERT INTO `kz_picture` VALUES ('1', '632', 'picture/photo/20110717105910984.jpg', '', '', '2011-07-17 11:05:25', '41446', 'ZiHao，', '技术测试', 'ZiHao，', '      ', '        ', '', '', '', '78159567', '，，，，，，，，，');
INSERT INTO `kz_picture` VALUES ('1', '643', 'picture/photo/20110930224754250.jpg', '', '', '2011-09-30 22:56:42', '63283', '孓夜', '兵临城下', '孓夜', '      ', '        ', '', '', '', '184872175', '兜兜');
INSERT INTO `kz_picture` VALUES ('6', '645', 'picture/gameVideo/20111006173413687.jpg', '', '', '2011-10-06 17:43:19', '68554', '多人副本展示', '一服', '', '男    ', '        ', '女友', '', '', '', '');
INSERT INTO `kz_picture` VALUES ('3', '649', 'picture/draw/20111006182949156.jpg', '', '', '2011-10-06 18:38:57', '262269', '职业套装——魔刃', '一服', '', '男    ', '        ', '女友', '', '', '', '');
INSERT INTO `kz_picture` VALUES ('1', '651', 'picture/photo/20111007131925781.gif', '', '', '2011-10-07 13:28:51', '128992', 'ζ90后首搔', '一服', '', '男    ', '        ', '女友', '', '', '', '');
INSERT INTO `kz_picture` VALUES ('1', '652', 'picture/photo/20111007132000484.jpg', '', '', '2011-10-07 13:29:14', '81689', '骨z1里旳可爱╮', '一服', '', '男    ', '        ', '女友', '', '', '', '');
INSERT INTO `kz_picture` VALUES ('1', '653', 'picture/photo/20111007132042359.jpg', '', '', '2011-10-07 13:29:47', '51017', '■囿夫↙妇', '一服', '', '男    ', '        ', '女友', '', '', '', '');
INSERT INTO `kz_picture` VALUES ('3', '661', 'picture/draw/2011100713415731.jpg', '', '', '2011-10-07 13:51:06', '293809', '职业套装——术士', '一服', '', '男    ', '        ', '女友', '', '', '', '');
INSERT INTO `kz_picture` VALUES ('3', '662', 'picture/draw/20111007134212250.jpg', '', '', '2011-10-07 13:51:18', '277203', '职业套装——牧师', '一服', '', '男    ', '        ', '女友', '', '', '', '');
INSERT INTO `kz_picture` VALUES ('3', '663', 'picture/draw/20111007134226937.jpg', '', '', '2011-10-07 13:51:33', '104665', '职业套装——战士', '一服', '', '男    ', '        ', '女友', '', '', '', '');
INSERT INTO `kz_picture` VALUES ('4', '680', 'picture/wallpic/20111008130959125.jpg', '', '', '2011-10-08 13:19:09', '187031', '女主', '一服', '', '男    ', '        ', '女友', '', '', '', '');
INSERT INTO `kz_picture` VALUES ('4', '681', 'picture/wallpic/20111008131132859.jpg', '', '', '2011-10-08 13:20:42', '145697', '女主壁纸', '一服', '', '男    ', '        ', '女友', '', '', '', '');
INSERT INTO `kz_picture` VALUES ('4', '686', 'picture/wallpic/20111013160424531.jpg', '', '', '2011-10-13 16:14:17', '289629', '场景壁纸', '', 'adsfdsfdsfsdf', '      ', '        ', '', '', '', '', '');
INSERT INTO `kz_picture` VALUES ('1', '700', 'picture/photo/20111116181306421.jpg', '', '', '2011-11-16 18:23:42', '100931', '电信区纱之国', '封测区', '瑞穗', '女    ', '23      ', '本人', '', '', '', '');
INSERT INTO `kz_picture` VALUES ('1', '702', 'picture/photo/20111117015742140.jpg', '', '', '2011-11-17 02:08:18', '31546', '小池唯', '封测区', '小池唯', '男    ', '30      ', '本人', '', '', '', '');
INSERT INTO `kz_picture` VALUES ('1', '705', 'picture/photo/20111118224313234.jpg', '', '', '2011-11-18 22:53:54', '73022', '陌7℃', '封测区', '陌离ぢ', '男    ', '20      ', '本人', 'fan2132188@126.com', '河南商丘', '562413179', '');
INSERT INTO `kz_picture` VALUES ('1', '706', 'picture/photo/20111119090218453.jpg', '', '', '2011-11-19 09:13:00', '21782', '夏猫妖', '封测区', '夏猫妖', '女    ', '22      ', '本人', 'lili365540157@qq.com', '', '365540157', '');
INSERT INTO `kz_picture` VALUES ('1', '707', 'picture/photo/20111119110907609.jpg', '', '', '2011-11-19 11:19:50', '10633', '有点成熟的我', '封测区', '爱情VS小宝', '男    ', '22      ', '本人', '', '', '515188298', '');
INSERT INTO `kz_picture` VALUES ('1', '708', 'fileupload/front/49aef9e3-6894-4f76-b8e6-21443e0212d9100X100.jpg', '', '', '2013-05-03 17:54:55', null, '23asdf', null, '2', null, null, null, null, null, null, null);
INSERT INTO `kz_picture` VALUES ('1', '709', 'fileupload/front/a38c78eb-6665-491a-b40c-033e84fa6055100X100.jpg', '', '', '2013-05-06 10:01:00', null, '23esad', null, '111', null, null, null, null, null, null, null);
INSERT INTO `kz_picture` VALUES ('1', '710', 'fileupload/front/fd99a014-bbc0-42b6-a92e-ecab13c4d26b100X100.jpg', '', '', '2013-05-06 11:33:11', null, '32ewasd', null, '2we', null, null, null, null, null, null, null);
INSERT INTO `kz_picture` VALUES ('1', '711', 'fileupload/front/46e290ca-f227-4c95-bfb6-8250c1699071100X100.jpg', '', '', '2013-05-06 11:56:48', null, '32ewfa', null, 'ds23', null, null, null, null, null, null, null);
INSERT INTO `kz_picture` VALUES ('1', '712', 'fileupload/front/0bee9c5b-491c-4e04-85c3-c0eb007f1460100X100.jpg', '', '', '2013-05-06 11:57:30', null, '32ewfads', null, '23', null, null, null, null, null, null, null);
INSERT INTO `kz_picture` VALUES ('1', '713', 'fileupload/front/57a3a929-b5e7-4ca9-a5ae-38411354f685100X100.jpg', '', '', '2013-05-06 12:00:23', null, '23', null, '23', null, null, null, null, null, null, null);
INSERT INTO `kz_picture` VALUES ('1', '714', 'fileupload/front/1a0d8276-da4a-4c30-86b4-6a3faee1254e100X100.jpg', '', '', '2013-05-06 12:27:31', null, '32', null, '23', null, null, null, null, null, null, null);
INSERT INTO `kz_picture` VALUES ('1', '715', 'fileupload/front/2243e58a-76c4-49bd-a73e-e7c45ded4b21100X100.jpg', '', '', '2013-05-06 13:16:08', null, '23sdfa', null, '23', null, null, null, null, null, null, null);
INSERT INTO `kz_picture` VALUES ('1', '716', 'fileupload/front/7df141da-03e6-4740-99f8-468e3f3215a5100X100.jpg', '', '', '2013-05-06 13:19:01', null, '32efa', null, '23', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `kz_picturetype`
-- ----------------------------
DROP TABLE IF EXISTS `kz_picturetype`;
CREATE TABLE `kz_picturetype` (
  `picTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `picTypeName` varchar(20) NOT NULL,
  `dirName` varchar(30) NOT NULL,
  PRIMARY KEY (`picTypeId`),
  UNIQUE KEY `UQ__kz_PictureType__7C8480AE` (`dirName`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kz_picturetype
-- ----------------------------
INSERT INTO `kz_picturetype` VALUES ('1', '玩家写真', 'photo');
INSERT INTO `kz_picturetype` VALUES ('2', '游戏截图', 'goodsnap');
INSERT INTO `kz_picturetype` VALUES ('3', '游戏原画', 'draw');
INSERT INTO `kz_picturetype` VALUES ('4', '游戏壁纸', 'wallpic');
INSERT INTO `kz_picturetype` VALUES ('5', '漫画长廊', 'picGame');
INSERT INTO `kz_picturetype` VALUES ('6', '游戏视频', 'gameVideo');

-- ----------------------------
-- Table structure for `kz_role`
-- ----------------------------
DROP TABLE IF EXISTS `kz_role`;
CREATE TABLE `kz_role` (
  `roleId` varchar(20) NOT NULL,
  `roleName` varchar(20) NOT NULL,
  `remark` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kz_role
-- ----------------------------
INSERT INTO `kz_role` VALUES ('a_operator', '活动策划管理员', '拥有活动策划管理权限');
INSERT INTO `kz_role` VALUES ('m_checkman', '市场部审核员', '拥有文章图片审核权限');
INSERT INTO `kz_role` VALUES ('m_operator', '市场部管理员', '拥有文章图片管理管理权限');
INSERT INTO `kz_role` VALUES ('superman', '超级管理员', '拥有系统所有权限');
INSERT INTO `kz_role` VALUES ('systemman', '系统管理员', '拥有系统管理权限');

-- ----------------------------
-- Table structure for `kz_type`
-- ----------------------------
DROP TABLE IF EXISTS `kz_type`;
CREATE TABLE `kz_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `dirName` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kz_type
-- ----------------------------
INSERT INTO `kz_type` VALUES ('1', '首页轮播图片', 'homeCarouselPic');
INSERT INTO `kz_type` VALUES ('2', '首页顶部连接', 'homeTopLink');
INSERT INTO `kz_type` VALUES ('3', 'index页面图片', 'indexPage');
INSERT INTO `kz_type` VALUES ('4', 'focus页面图片', 'focusPage');
INSERT INTO `kz_type` VALUES ('5', 'fwq页面图片', 'fwqPage');
INSERT INTO `kz_type` VALUES ('6', 'focus2页面图片', 'focus2Page');
INSERT INTO `kz_type` VALUES ('7', '首页4图广告', 'homeActPic4');
INSERT INTO `kz_type` VALUES ('8', '客户端下载', 'clientDownload');
INSERT INTO `kz_type` VALUES ('9', '客户端媒体分流', 'clientMedia');
INSERT INTO `kz_type` VALUES ('10', '3秒微端下载', 'smallendDownload');
INSERT INTO `kz_type` VALUES ('11', '3秒微端媒体分流', 'smallendMedia');
INSERT INTO `kz_type` VALUES ('12', '补丁下载', 'patchDownload');
INSERT INTO `kz_type` VALUES ('13', '最新版本完整客户端下载', 'newClient');

-- ----------------------------
-- Table structure for `kz_userinrole`
-- ----------------------------
DROP TABLE IF EXISTS `kz_userinrole`;
CREATE TABLE `kz_userinrole` (
  `relationId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(20) NOT NULL,
  `roleId` varchar(20) NOT NULL,
  PRIMARY KEY (`relationId`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kz_userinrole
-- ----------------------------
INSERT INTO `kz_userinrole` VALUES ('110', 'bwadmin', 'systemman');
INSERT INTO `kz_userinrole` VALUES ('111', 'bwadmin', 'superman');
INSERT INTO `kz_userinrole` VALUES ('112', 'bwadmin', 'm_operator');
INSERT INTO `kz_userinrole` VALUES ('113', 'bwadmin', 'm_checkman');
INSERT INTO `kz_userinrole` VALUES ('114', 'bwadmin', 'a_operator');
INSERT INTO `kz_userinrole` VALUES ('128', 'bwgame', 'systemman');
INSERT INTO `kz_userinrole` VALUES ('129', 'bwgame', 'superman');
INSERT INTO `kz_userinrole` VALUES ('130', 'bwgame', 'm_operator');
INSERT INTO `kz_userinrole` VALUES ('131', 'bwgame', 'm_checkman');
INSERT INTO `kz_userinrole` VALUES ('132', 'bwgame', 'a_operator');
INSERT INTO `kz_userinrole` VALUES ('133', 'bwgame2', 'systemman');
INSERT INTO `kz_userinrole` VALUES ('134', 'bwgame2', 'superman');
INSERT INTO `kz_userinrole` VALUES ('135', 'bwgame2', 'm_operator');
INSERT INTO `kz_userinrole` VALUES ('136', 'bwgame2', 'm_checkman');
INSERT INTO `kz_userinrole` VALUES ('137', 'bwgame2', 'a_operator');
INSERT INTO `kz_userinrole` VALUES ('143', 'bwgame3', 'm_operator');
INSERT INTO `kz_userinrole` VALUES ('144', 'bwgame3', 'm_checkman');
INSERT INTO `kz_userinrole` VALUES ('145', 'bwgame3', 'a_operator');

-- ----------------------------
-- Table structure for `kz_vote`
-- ----------------------------
DROP TABLE IF EXISTS `kz_vote`;
CREATE TABLE `kz_vote` (
  `voteId` int(11) NOT NULL AUTO_INCREMENT,
  `voteTitle` varchar(100) NOT NULL,
  `isMultiple` bit(1) NOT NULL,
  `options` text,
  `optionsCount` int(11) DEFAULT NULL,
  `results` varchar(100) DEFAULT NULL,
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`voteId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kz_vote
-- ----------------------------

-- ----------------------------
-- Table structure for `kz_votelog`
-- ----------------------------
DROP TABLE IF EXISTS `kz_votelog`;
CREATE TABLE `kz_votelog` (
  `voteLogId` int(11) NOT NULL AUTO_INCREMENT,
  `voteId` int(11) NOT NULL,
  `voteIp` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`voteLogId`)
) ENGINE=InnoDB AUTO_INCREMENT=387 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kz_votelog
-- ----------------------------
INSERT INTO `kz_votelog` VALUES ('1', '1', '127.0.0.1      ');
INSERT INTO `kz_votelog` VALUES ('2', '1', '127.0.0.1      ');
INSERT INTO `kz_votelog` VALUES ('3', '1', '127.0.0.1      ');
INSERT INTO `kz_votelog` VALUES ('4', '1', '127.0.0.1      ');
INSERT INTO `kz_votelog` VALUES ('5', '1', '127.0.0.1      ');
INSERT INTO `kz_votelog` VALUES ('6', '1', '127.0.0.1      ');
INSERT INTO `kz_votelog` VALUES ('7', '1', '127.0.0.1      ');
INSERT INTO `kz_votelog` VALUES ('8', '1', '127.0.0.1      ');
INSERT INTO `kz_votelog` VALUES ('9', '1', '127.0.0.1      ');
INSERT INTO `kz_votelog` VALUES ('10', '1', '127.0.0.1      ');
INSERT INTO `kz_votelog` VALUES ('11', '1', '127.0.0.1      ');
INSERT INTO `kz_votelog` VALUES ('12', '1', '127.0.0.1      ');
INSERT INTO `kz_votelog` VALUES ('13', '1', '127.0.0.1      ');
INSERT INTO `kz_votelog` VALUES ('14', '1', '127.0.0.1      ');
INSERT INTO `kz_votelog` VALUES ('15', '1', '127.0.0.1      ');
INSERT INTO `kz_votelog` VALUES ('16', '1', '127.0.0.1      ');
INSERT INTO `kz_votelog` VALUES ('17', '1', '127.0.0.1      ');
INSERT INTO `kz_votelog` VALUES ('18', '1', '127.0.0.1      ');
INSERT INTO `kz_votelog` VALUES ('19', '1', '127.0.0.1      ');
INSERT INTO `kz_votelog` VALUES ('20', '1', '127.0.0.1      ');
INSERT INTO `kz_votelog` VALUES ('21', '1', '127.0.0.1      ');
INSERT INTO `kz_votelog` VALUES ('22', '1', '127.0.0.1      ');
INSERT INTO `kz_votelog` VALUES ('23', '1', '127.0.0.1      ');
INSERT INTO `kz_votelog` VALUES ('24', '1', '127.0.0.1      ');
INSERT INTO `kz_votelog` VALUES ('25', '5', '127.0.0.1      ');
INSERT INTO `kz_votelog` VALUES ('26', '5', '127.0.0.1      ');
INSERT INTO `kz_votelog` VALUES ('27', '5', '127.0.0.1      ');
INSERT INTO `kz_votelog` VALUES ('28', '5', '127.0.0.1      ');
INSERT INTO `kz_votelog` VALUES ('29', '5', '127.0.0.1      ');
INSERT INTO `kz_votelog` VALUES ('30', '5', '127.0.0.1      ');
INSERT INTO `kz_votelog` VALUES ('31', '5', '127.0.0.1      ');
INSERT INTO `kz_votelog` VALUES ('32', '5', '127.0.0.1      ');
INSERT INTO `kz_votelog` VALUES ('33', '5', '127.0.0.1      ');
INSERT INTO `kz_votelog` VALUES ('34', '7', '127.0.0.1      ');
INSERT INTO `kz_votelog` VALUES ('35', '7', '127.0.0.1      ');
INSERT INTO `kz_votelog` VALUES ('36', '7', '127.0.0.1      ');
INSERT INTO `kz_votelog` VALUES ('37', '8', '202.105.139.54 ');
INSERT INTO `kz_votelog` VALUES ('38', '8', '202.105.139.54 ');
INSERT INTO `kz_votelog` VALUES ('39', '8', '202.105.139.54 ');
INSERT INTO `kz_votelog` VALUES ('40', '8', '202.105.139.54 ');
INSERT INTO `kz_votelog` VALUES ('41', '8', '202.105.139.54 ');
INSERT INTO `kz_votelog` VALUES ('42', '8', '202.105.139.54 ');
INSERT INTO `kz_votelog` VALUES ('43', '8', '202.105.139.54 ');
INSERT INTO `kz_votelog` VALUES ('44', '8', '202.105.139.54 ');
INSERT INTO `kz_votelog` VALUES ('45', '8', '202.105.139.54 ');
INSERT INTO `kz_votelog` VALUES ('46', '8', '124.172.167.249');
INSERT INTO `kz_votelog` VALUES ('47', '8', '124.172.167.249');
INSERT INTO `kz_votelog` VALUES ('48', '8', '124.172.167.249');

-- ----------------------------
-- Table structure for `voting_0410`
-- ----------------------------
DROP TABLE IF EXISTS `voting_0410`;
CREATE TABLE `voting_0410` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `artId` int(11) NOT NULL,
  `Voting1` int(11) NOT NULL DEFAULT '0',
  `Voting2` int(11) NOT NULL DEFAULT '0',
  `Voting3` int(11) NOT NULL DEFAULT '0',
  `Voting4` int(11) NOT NULL DEFAULT '0',
  `Voting5` int(11) NOT NULL DEFAULT '0',
  `Voting6` int(11) NOT NULL DEFAULT '0',
  `Voting7` int(11) NOT NULL DEFAULT '0',
  `Voting8` int(11) NOT NULL DEFAULT '0',
  `createtime` datetime DEFAULT NULL,
  `Spare` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of voting_0410
-- ----------------------------
INSERT INTO `voting_0410` VALUES ('1', '2363', '31', '24', '137', '17', '23', '44', '76', '0', '2012-04-19 20:25:30', null);
INSERT INTO `voting_0410` VALUES ('2', '2361', '11', '41', '15', '87', '33', '18', '14', '0', '2012-04-19 20:29:23', null);
INSERT INTO `voting_0410` VALUES ('3', '2367', '21', '112', '664', '35', '287', '178', '107', '0', '2012-04-20 01:25:26', null);
INSERT INTO `voting_0410` VALUES ('4', '2366', '8', '121', '2', '23', '2', '3', '42', '0', '2012-04-20 04:35:32', null);
INSERT INTO `voting_0410` VALUES ('5', '1882', '44', '1', '42', '166', '28', '20', '30', '0', '2012-04-20 05:17:19', null);
INSERT INTO `voting_0410` VALUES ('6', '2323', '43', '107', '48', '28', '214', '33', '30', '0', '2012-04-20 05:21:08', null);
INSERT INTO `voting_0410` VALUES ('7', '1195', '0', '0', '0', '0', '0', '0', '23', '0', '2012-04-20 05:23:32', null);
INSERT INTO `voting_0410` VALUES ('8', '1192', '0', '0', '25', '1', '0', '0', '0', '0', '2012-04-20 05:25:20', null);
INSERT INTO `voting_0410` VALUES ('9', '2300', '1919', '791', '2576', '2870', '711', '592', '3569', '0', '2012-04-20 05:32:39', null);
INSERT INTO `voting_0410` VALUES ('10', '1198', '4', '4', '12', '0', '2', '1', '8', '0', '2012-04-20 05:33:53', null);
INSERT INTO `voting_0410` VALUES ('11', '2308', '155', '120', '69', '36', '137', '60', '388', '0', '2012-04-20 05:45:07', null);
INSERT INTO `voting_0410` VALUES ('12', '2365', '40', '1621', '33', '21', '6', '8', '39', '0', '2012-04-20 06:30:32', null);
INSERT INTO `voting_0410` VALUES ('13', '2369', '36', '1399', '94', '411', '76', '29', '46', '0', '2012-04-20 06:37:48', null);
INSERT INTO `voting_0410` VALUES ('14', '2362', '1323', '1427', '549', '872', '181', '237', '1394', '0', '2012-04-20 07:50:51', null);
INSERT INTO `voting_0410` VALUES ('15', '2357', '2', '376', '1', '136', '4', '0', '5', '0', '2012-04-20 07:53:03', null);
INSERT INTO `voting_0410` VALUES ('16', '2174', '12', '14', '0', '11', '15', '0', '10', '0', '2012-04-20 07:55:42', null);
INSERT INTO `voting_0410` VALUES ('17', '2364', '39', '1145', '709', '79', '76', '58', '90', '0', '2012-04-20 07:58:41', null);
INSERT INTO `voting_0410` VALUES ('18', '1742', '0', '0', '0', '1', '0', '0', '0', '0', '2012-04-20 08:09:30', null);
INSERT INTO `voting_0410` VALUES ('19', '2228', '1073', '400', '1917', '669', '1212', '640', '643', '0', '2012-04-20 08:32:49', null);
INSERT INTO `voting_0410` VALUES ('20', '2287', '1619', '3628', '1252', '2720', '724', '784', '4894', '0', '2012-04-20 08:51:06', null);
INSERT INTO `voting_0410` VALUES ('21', '1707', '298', '120', '279', '1150', '212', '220', '1016', '0', '2012-04-20 08:56:29', null);
