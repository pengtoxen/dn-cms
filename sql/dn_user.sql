/*
Navicat MySQL Data Transfer

Source Server         : hgwx
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : hgwx

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-04-12 19:26:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for dn_user
-- ----------------------------
DROP TABLE IF EXISTS `dn_user`;
CREATE TABLE `dn_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(60) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `openid` varchar(127) NOT NULL DEFAULT '',
  `nickname` varchar(60) NOT NULL DEFAULT '',
  `avatar` varchar(255) NOT NULL DEFAULT '',
  `phone` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `openid` (`openid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of dn_user
-- ----------------------------
INSERT INTO `dn_user` VALUES ('4', 'peng', '$2y$12$W0fPhJ48ZR6uprNx7UiDmurdcQnVD4zxTlPEUcapF2SdNMBLJC2.q', '', '', '', '');
