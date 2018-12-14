/*
Navicat MySQL Data Transfer

Source Server         : 94.191.68.55
Source Server Version : 50642
Source Host           : 94.191.68.55:3306
Source Database       : ssm

Target Server Type    : MYSQL
Target Server Version : 50642
File Encoding         : 65001

Date: 2018-12-14 19:40:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for news_comment
-- ----------------------------
DROP TABLE IF EXISTS `news_comment`;
CREATE TABLE `news_comment` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `newsid` int(10) NOT NULL COMMENT '新闻编号',
  `content` varchar(255) NOT NULL COMMENT '评论内容',
  `author` varchar(50) DEFAULT NULL COMMENT '评论人',
  `createdate` date NOT NULL COMMENT '评论时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news_comment
-- ----------------------------
INSERT INTO `news_comment` VALUES ('2', '2', '最新款手机是什么', '匿名', '2018-12-17');
INSERT INTO `news_comment` VALUES ('3', '3', '出什么问题了', '匿名', '2018-12-13');
INSERT INTO `news_comment` VALUES ('21', '1', '天气真冷', 'davy', '2018-12-11');
INSERT INTO `news_comment` VALUES ('22', '1', 'It\'s so cold', 'guy', '2018-12-11');
