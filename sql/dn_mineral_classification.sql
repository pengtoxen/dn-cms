/*
Navicat MySQL Data Transfer

Source Server         : hgwx
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : hgwx

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-09-06 14:24:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for dn_mineral_classification
-- ----------------------------
DROP TABLE IF EXISTS `dn_mineral_classification`;
CREATE TABLE `dn_mineral_classification` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父id',
  `name_zh` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '名称',
  `name_en` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '英文名称',
  `pinyin` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '拼音',
  `code` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '助记码',
  `dtime` int(10) NOT NULL DEFAULT 0,
  `ctime` int(10) NOT NULL DEFAULT 0,
  `utime` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of dn_mineral_classification
-- ----------------------------
INSERT INTO `dn_mineral_classification` VALUES ('1', '1', '矿物', '', 'KW', '', '0', '1504587600', '1504587600');
INSERT INTO `dn_mineral_classification` VALUES ('2', '2', '单质及其类似物', '', 'DZJQLSW', '', '0', '1504587600', '1504587600');
INSERT INTO `dn_mineral_classification` VALUES ('3', '6', '单质', '', 'DZ', '', '0', '1504587600', '1504587600');
INSERT INTO `dn_mineral_classification` VALUES ('4', '6', '碳化物', '', 'THW', '', '0', '1504587600', '1504587600');
INSERT INTO `dn_mineral_classification` VALUES ('5', '6', '硅化物', '', 'GHW', '', '0', '1504587600', '1504587600');
INSERT INTO `dn_mineral_classification` VALUES ('6', '6', '氮化物', '', 'DHW', '', '0', '1504587600', '1504587600');
INSERT INTO `dn_mineral_classification` VALUES ('7', '6', '磷化物', '', 'LHW', '', '0', '1504587600', '1504587600');
INSERT INTO `dn_mineral_classification` VALUES ('8', '2', '硫化物及类似物', '', 'LHWJLSW', '', '0', '1504587601', '1504587601');
INSERT INTO `dn_mineral_classification` VALUES ('9', '7', '砷化物', '', 'SHW', '', '0', '1504587601', '1504587601');
INSERT INTO `dn_mineral_classification` VALUES ('10', '7', '锑化物', '', 'THW', '', '0', '1504587601', '1504587601');
INSERT INTO `dn_mineral_classification` VALUES ('11', '7', '铋化物', '', 'BHW', '', '0', '1504587601', '1504587601');
INSERT INTO `dn_mineral_classification` VALUES ('12', '7', '碲化物', '', 'DHW', '', '0', '1504587601', '1504587601');
INSERT INTO `dn_mineral_classification` VALUES ('13', '7', '硫化物', '', 'LHW', '', '0', '1504587601', '1504587601');
INSERT INTO `dn_mineral_classification` VALUES ('14', '7', '硒化物', '', 'XHW', '', '0', '1504587601', '1504587601');
INSERT INTO `dn_mineral_classification` VALUES ('15', '2', '氧化物和氢氧化物', '', 'YHWHQYHW', '', '0', '1504587601', '1504587601');
INSERT INTO `dn_mineral_classification` VALUES ('16', '8', '氧化物', '', 'YHW', '', '0', '1504587601', '1504587601');
INSERT INTO `dn_mineral_classification` VALUES ('17', '8', '氢氧化物', '', 'QYHW', '', '0', '1504587601', '1504587601');
INSERT INTO `dn_mineral_classification` VALUES ('18', '2', '含氧盐', '', 'HYY', '', '0', '1504587601', '1504587601');
INSERT INTO `dn_mineral_classification` VALUES ('19', '9', '硅酸盐', '', 'GSY', '', '0', '1504587601', '1504587601');
INSERT INTO `dn_mineral_classification` VALUES ('20', '9', '硼酸盐', '', 'PSY', '', '0', '1504587601', '1504587601');
INSERT INTO `dn_mineral_classification` VALUES ('21', '9', '钒酸盐', '', 'FSY', '', '0', '1504587601', '1504587601');
INSERT INTO `dn_mineral_classification` VALUES ('22', '9', '砷酸盐', '', 'SSY', '', '0', '1504587601', '1504587601');
INSERT INTO `dn_mineral_classification` VALUES ('23', '9', '磷酸盐', '', 'LSY', '', '0', '1504587601', '1504587601');
INSERT INTO `dn_mineral_classification` VALUES ('24', '9', '亚硒酸盐', '', 'YXSY', '', '0', '1504587601', '1504587601');
INSERT INTO `dn_mineral_classification` VALUES ('25', '9', '亚碲酸盐', '', 'YDSY', '', '0', '1504587601', '1504587601');
INSERT INTO `dn_mineral_classification` VALUES ('26', '9', '钨酸盐', '', 'WSY', '', '0', '1504587601', '1504587601');
INSERT INTO `dn_mineral_classification` VALUES ('27', '9', '钼酸盐', '', 'MSY', '', '0', '1504587601', '1504587601');
INSERT INTO `dn_mineral_classification` VALUES ('28', '9', '铬酸盐', '', 'GSY', '', '0', '1504587601', '1504587601');
INSERT INTO `dn_mineral_classification` VALUES ('29', '9', '硒酸盐', '', 'XSY', '', '0', '1504587601', '1504587601');
INSERT INTO `dn_mineral_classification` VALUES ('30', '9', '碲酸盐', '', 'DSY', '', '0', '1504587601', '1504587601');
INSERT INTO `dn_mineral_classification` VALUES ('31', '9', '硫酸盐', '', 'LSY', '', '0', '1504587601', '1504587601');
INSERT INTO `dn_mineral_classification` VALUES ('32', '9', '碳酸盐', '', 'TSY', '', '0', '1504587601', '1504587601');
INSERT INTO `dn_mineral_classification` VALUES ('33', '9', '碘酸盐', '', 'DSY', '', '0', '1504587601', '1504587601');
INSERT INTO `dn_mineral_classification` VALUES ('34', '9', '硝酸盐', '', 'XSY', '', '0', '1504587601', '1504587601');
INSERT INTO `dn_mineral_classification` VALUES ('35', '2', '卤化物', '', 'LHW', '', '0', '1504587601', '1504587601');
INSERT INTO `dn_mineral_classification` VALUES ('36', '10', '氯化物', '', 'LHW', '', '0', '1504587601', '1504587601');
INSERT INTO `dn_mineral_classification` VALUES ('37', '10', '溴化物', '', 'XHW', '', '0', '1504587601', '1504587601');
INSERT INTO `dn_mineral_classification` VALUES ('38', '10', '碘化物', '', 'DHW', '', '0', '1504587601', '1504587601');
INSERT INTO `dn_mineral_classification` VALUES ('39', '10', '氧卤化物', '', 'YLHW', '', '0', '1504587602', '1504587602');
INSERT INTO `dn_mineral_classification` VALUES ('40', '10', '氢氧卤化物', '', 'QYLHW', '', '0', '1504587602', '1504587602');
INSERT INTO `dn_mineral_classification` VALUES ('41', '10', '硫卤化物', '', 'LLHW', '', '0', '1504587602', '1504587602');
INSERT INTO `dn_mineral_classification` VALUES ('42', '10', '氟化物', '', 'FHW', '', '0', '1504587602', '1504587602');
