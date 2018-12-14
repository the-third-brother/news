/*
Navicat MySQL Data Transfer

Source Server         : 94.191.68.55
Source Server Version : 50642
Source Host           : 94.191.68.55:3306
Source Database       : ssm

Target Server Type    : MYSQL
Target Server Version : 50642
File Encoding         : 65001

Date: 2018-12-14 19:40:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for news_detail
-- ----------------------------
DROP TABLE IF EXISTS `news_detail`;
CREATE TABLE `news_detail` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '新闻编号',
  `title` varchar(100) NOT NULL COMMENT '新闻名称',
  `summary` varchar(255) DEFAULT NULL COMMENT '新闻摘要',
  `author` varchar(50) DEFAULT NULL COMMENT '作者',
  `createdate` date NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news_detail
-- ----------------------------
INSERT INTO `news_detail` VALUES ('1', '今天天气真好', '天气状况', '小明', '2018-12-05');
INSERT INTO `news_detail` VALUES ('2', '华为手机最新情况', '手机', '花花', '2018-12-01');
INSERT INTO `news_detail` VALUES ('3', '电脑出问题了', '电脑', '小强', '2018-12-02');
