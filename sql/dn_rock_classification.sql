/*
Navicat MySQL Data Transfer

Source Server         : hgwx
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : hgwx

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-09-06 14:24:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for dn_rock_classification
-- ----------------------------
DROP TABLE IF EXISTS `dn_rock_classification`;
CREATE TABLE `dn_rock_classification` (
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
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of dn_rock_classification
-- ----------------------------
INSERT INTO `dn_rock_classification` VALUES ('1', '1', '岩石', '', 'YS', '', '0', '1504587793', '1504587793');
INSERT INTO `dn_rock_classification` VALUES ('2', '3', '火成岩', '', 'HCY', '', '0', '1504587794', '1504587794');
INSERT INTO `dn_rock_classification` VALUES ('3', '11', '超基性岩和超镁铁岩', '', 'CJXYHCMTY', '', '0', '1504587794', '1504587794');
INSERT INTO `dn_rock_classification` VALUES ('4', '60', '橄榄岩', '', 'GLY', '', '0', '1504587794', '1504587794');
INSERT INTO `dn_rock_classification` VALUES ('5', '60', '辉石岩', '', 'HSY', '', '0', '1504587794', '1504587794');
INSERT INTO `dn_rock_classification` VALUES ('6', '60', '角闪石岩', '', 'JSSY', '', '0', '1504587794', '1504587794');
INSERT INTO `dn_rock_classification` VALUES ('7', '60', '云母岩', '', 'YMY', '', '0', '1504587794', '1504587794');
INSERT INTO `dn_rock_classification` VALUES ('8', '60', '金伯利岩', '', 'JBLY', '', '0', '1504587794', '1504587794');
INSERT INTO `dn_rock_classification` VALUES ('9', '60', '钾镁黄斑岩', '', 'JMHBY', '', '0', '1504587794', '1504587794');
INSERT INTO `dn_rock_classification` VALUES ('10', '60', '科马提岩', '', 'KMTY', '', '0', '1504587794', '1504587794');
INSERT INTO `dn_rock_classification` VALUES ('11', '60', '麦美奇岩', '', 'MMQY', '', '0', '1504587794', '1504587794');
INSERT INTO `dn_rock_classification` VALUES ('12', '60', '苦橄岩', '', 'KGY', '', '0', '1504587794', '1504587794');
INSERT INTO `dn_rock_classification` VALUES ('13', '60', '苦橄玄武岩', '', 'KGXWY', '', '0', '1504587794', '1504587794');
INSERT INTO `dn_rock_classification` VALUES ('14', '60', '碱玄岩', '', 'JXY', '', '0', '1504587794', '1504587794');
INSERT INTO `dn_rock_classification` VALUES ('15', '60', '碧玄岩', '', 'BXY', '', '0', '1504587794', '1504587794');
INSERT INTO `dn_rock_classification` VALUES ('16', '60', '似长石岩', '', 'SZSY', '', '0', '1504587794', '1504587794');
INSERT INTO `dn_rock_classification` VALUES ('17', '60', '黄长岩', '', 'HZY', '', '0', '1504587794', '1504587794');
INSERT INTO `dn_rock_classification` VALUES ('18', '60', '碳酸岩', '', 'TSY', '', '0', '1504587794', '1504587794');
INSERT INTO `dn_rock_classification` VALUES ('19', '11', '基性岩', '', 'JXY', '', '0', '1504587794', '1504587794');
INSERT INTO `dn_rock_classification` VALUES ('20', '61', '辉长岩', '', 'HZY', '', '0', '1504587794', '1504587794');
INSERT INTO `dn_rock_classification` VALUES ('21', '61', '似长石辉长岩', '', 'SZSHZY', '', '0', '1504587794', '1504587794');
INSERT INTO `dn_rock_classification` VALUES ('22', '61', '辉绿岩', '', 'HLY', '', '0', '1504587794', '1504587794');
INSERT INTO `dn_rock_classification` VALUES ('23', '61', '苏长岩', '', 'SZY', '', '0', '1504587794', '1504587794');
INSERT INTO `dn_rock_classification` VALUES ('24', '61', '橄长岩', '', 'GZY', '', '0', '1504587794', '1504587794');
INSERT INTO `dn_rock_classification` VALUES ('25', '61', '斜长岩', '', 'XZY', '', '0', '1504587794', '1504587794');
INSERT INTO `dn_rock_classification` VALUES ('26', '61', '玄武岩', '', 'XWY', '', '0', '1504587794', '1504587794');
INSERT INTO `dn_rock_classification` VALUES ('27', '61', '粗面玄武岩', '', 'CMXWY', '', '0', '1504587794', '1504587794');
INSERT INTO `dn_rock_classification` VALUES ('28', '61', '响岩质碱玄岩', '', 'XYZJXY', '', '0', '1504587794', '1504587794');
INSERT INTO `dn_rock_classification` VALUES ('29', '61', '玄武粗安岩', '', 'XWCAY', '', '0', '1504587794', '1504587794');
INSERT INTO `dn_rock_classification` VALUES ('30', '11', '中性岩', '', 'ZXY', '', '0', '1504587794', '1504587794');
INSERT INTO `dn_rock_classification` VALUES ('31', '62', '闪长岩', '', 'SZY', '', '0', '1504587794', '1504587794');
INSERT INTO `dn_rock_classification` VALUES ('32', '62', '二长闪长岩', '', 'EZSZY', '', '0', '1504587794', '1504587794');
INSERT INTO `dn_rock_classification` VALUES ('33', '62', '二长岩', '', 'EZY', '', '0', '1504587794', '1504587794');
INSERT INTO `dn_rock_classification` VALUES ('34', '62', '正长岩', '', 'ZZY', '', '0', '1504587795', '1504587795');
INSERT INTO `dn_rock_classification` VALUES ('35', '62', '碱长正长岩', '', 'JZZZY', '', '0', '1504587795', '1504587795');
INSERT INTO `dn_rock_classification` VALUES ('36', '62', '似长石闪长岩', '', 'SZSSZY', '', '0', '1504587795', '1504587795');
INSERT INTO `dn_rock_classification` VALUES ('37', '62', '似长石二长闪长岩', '', 'SZSEZSZY', '', '0', '1504587795', '1504587795');
INSERT INTO `dn_rock_classification` VALUES ('38', '62', '似长石二长正长岩', '', 'SZSEZZZY', '', '0', '1504587795', '1504587795');
INSERT INTO `dn_rock_classification` VALUES ('39', '62', '似长石正长岩', '', 'SZSZZY', '', '0', '1504587795', '1504587795');
INSERT INTO `dn_rock_classification` VALUES ('40', '62', '玄武安山岩', '', 'XWASY', '', '0', '1504587795', '1504587795');
INSERT INTO `dn_rock_classification` VALUES ('41', '62', '安山岩', '', 'ASY', '', '0', '1504587795', '1504587795');
INSERT INTO `dn_rock_classification` VALUES ('42', '62', '粗安岩', '', 'CAY', '', '0', '1504587795', '1504587795');
INSERT INTO `dn_rock_classification` VALUES ('43', '62', '高镁安山岩', '', 'GMASY', '', '0', '1504587795', '1504587795');
INSERT INTO `dn_rock_classification` VALUES ('44', '62', '碱玄质响岩', '', 'JXZXY', '', '0', '1504587795', '1504587795');
INSERT INTO `dn_rock_classification` VALUES ('45', '62', '响岩', '', 'XY', '', '0', '1504587795', '1504587795');
INSERT INTO `dn_rock_classification` VALUES ('46', '11', '酸性岩', '', 'SXY', '', '0', '1504587795', '1504587795');
INSERT INTO `dn_rock_classification` VALUES ('47', '63', '花岗岩', '', 'HGY', '', '0', '1504587795', '1504587795');
INSERT INTO `dn_rock_classification` VALUES ('48', '63', '碱长花岗岩', '', 'JZHGY', '', '0', '1504587795', '1504587795');
INSERT INTO `dn_rock_classification` VALUES ('49', '63', '正长花岗岩', '', 'ZZHGY', '', '0', '1504587795', '1504587795');
INSERT INTO `dn_rock_classification` VALUES ('50', '63', '二长花岗岩', '', 'EZHGY', '', '0', '1504587795', '1504587795');
INSERT INTO `dn_rock_classification` VALUES ('51', '63', '花岗岩闪长岩', '', 'HGYSZY', '', '0', '1504587795', '1504587795');
INSERT INTO `dn_rock_classification` VALUES ('52', '63', '英云闪长岩', '', 'YYSZY', '', '0', '1504587795', '1504587795');
INSERT INTO `dn_rock_classification` VALUES ('53', '63', '环斑花岗岩', '', 'HBHGY', '', '0', '1504587795', '1504587795');
INSERT INTO `dn_rock_classification` VALUES ('54', '63', '紫苏花岗岩', '', 'ZSHGY', '', '0', '1504587795', '1504587795');
INSERT INTO `dn_rock_classification` VALUES ('55', '63', '粗面岩', '', 'CMY', '', '0', '1504587795', '1504587795');
INSERT INTO `dn_rock_classification` VALUES ('56', '63', '粗面英安岩', '', 'CMYAY', '', '0', '1504587795', '1504587795');
INSERT INTO `dn_rock_classification` VALUES ('57', '63', '英安岩', '', 'YAY', '', '0', '1504587795', '1504587795');
INSERT INTO `dn_rock_classification` VALUES ('58', '63', '流纹岩', '', 'LWY', '', '0', '1504587795', '1504587795');
INSERT INTO `dn_rock_classification` VALUES ('59', '11', '岩脉', '', 'YM', '', '0', '1504587795', '1504587795');
INSERT INTO `dn_rock_classification` VALUES ('60', '64', '煌斑岩', '', 'HBY', '', '0', '1504587795', '1504587795');
INSERT INTO `dn_rock_classification` VALUES ('61', '64', '伟晶岩', '', 'WJY', '', '0', '1504587795', '1504587795');
INSERT INTO `dn_rock_classification` VALUES ('62', '64', '细晶岩', '', 'XJY', '', '0', '1504587795', '1504587795');
INSERT INTO `dn_rock_classification` VALUES ('63', '11', '火山碎屑岩', '', 'HSSXY', '', '0', '1504587795', '1504587795');
INSERT INTO `dn_rock_classification` VALUES ('64', '65', '熔结凝灰岩', '', 'RJNHY', '', '0', '1504587795', '1504587795');
INSERT INTO `dn_rock_classification` VALUES ('65', '65', '熔结火山角砾岩', '', 'RJHSJLY', '', '0', '1504587795', '1504587795');
INSERT INTO `dn_rock_classification` VALUES ('66', '65', '火山集块岩', '', 'HSJKY', '', '0', '1504587796', '1504587796');
INSERT INTO `dn_rock_classification` VALUES ('67', '65', '火山角砾岩', '', 'HSJLY', '', '0', '1504587796', '1504587796');
INSERT INTO `dn_rock_classification` VALUES ('68', '65', '火山凝灰岩', '', 'HSNHY', '', '0', '1504587796', '1504587796');
INSERT INTO `dn_rock_classification` VALUES ('69', '65', '沉积火山碎屑岩', '', 'CJHSSXY', '', '0', '1504587796', '1504587796');
INSERT INTO `dn_rock_classification` VALUES ('70', '65', '火山碎屑沉积岩', '', 'HSSXCJY', '', '0', '1504587796', '1504587796');
INSERT INTO `dn_rock_classification` VALUES ('71', '11', '陨石', '', 'YS', '', '0', '1504587796', '1504587796');
INSERT INTO `dn_rock_classification` VALUES ('72', '66', '石陨石', '', 'SYS', '', '0', '1504587796', '1504587796');
INSERT INTO `dn_rock_classification` VALUES ('73', '66', '铁陨石', '', 'TYS', '', '0', '1504587796', '1504587796');
INSERT INTO `dn_rock_classification` VALUES ('74', '66', '石铁陨石', '', 'STYS', '', '0', '1504587796', '1504587796');
INSERT INTO `dn_rock_classification` VALUES ('75', '3', '沉积岩', '', 'CJY', '', '0', '1504587796', '1504587796');
INSERT INTO `dn_rock_classification` VALUES ('76', '12', '碎屑沉积岩', '', 'SXCJY', '', '0', '1504587796', '1504587796');
INSERT INTO `dn_rock_classification` VALUES ('77', '67', '砾岩', '', 'LY', '', '0', '1504587796', '1504587796');
INSERT INTO `dn_rock_classification` VALUES ('78', '67', '砂岩', '', 'SY', '', '0', '1504587796', '1504587796');
INSERT INTO `dn_rock_classification` VALUES ('79', '67', '泥岩', '', 'NY', '', '0', '1504587796', '1504587796');
INSERT INTO `dn_rock_classification` VALUES ('80', '12', '化学沉积岩', '', 'HXCJY', '', '0', '1504587796', '1504587796');
INSERT INTO `dn_rock_classification` VALUES ('81', '68', '灰岩', '', 'HY', '', '0', '1504587796', '1504587796');
INSERT INTO `dn_rock_classification` VALUES ('82', '68', '白云岩', '', 'BYY', '', '0', '1504587796', '1504587796');
INSERT INTO `dn_rock_classification` VALUES ('83', '68', '硅质岩', '', 'GZY', '', '0', '1504587796', '1504587796');
INSERT INTO `dn_rock_classification` VALUES ('84', '68', '磷质岩', '', 'LZY', '', '0', '1504587796', '1504587796');
INSERT INTO `dn_rock_classification` VALUES ('85', '68', '铁质岩', '', 'TZY', '', '0', '1504587796', '1504587796');
INSERT INTO `dn_rock_classification` VALUES ('86', '68', '铝质岩', '', 'LZY', '', '0', '1504587796', '1504587796');
INSERT INTO `dn_rock_classification` VALUES ('87', '12', '生物岩', '', 'SWY', '', '0', '1504587796', '1504587796');
INSERT INTO `dn_rock_classification` VALUES ('88', '69', '可燃生物岩（煤、油页岩）', '', 'KRSWYMYYY', '', '0', '1504587796', '1504587796');
INSERT INTO `dn_rock_classification` VALUES ('89', '69', '非可燃生物岩（生物礁）', '', 'FKRSWYSWJ', '', '0', '1504587796', '1504587796');
INSERT INTO `dn_rock_classification` VALUES ('90', '3', '变质岩', '', 'BZY', '', '0', '1504587796', '1504587796');
INSERT INTO `dn_rock_classification` VALUES ('91', '13', '区域变质岩', '', 'QYBZY', '', '0', '1504587796', '1504587796');
INSERT INTO `dn_rock_classification` VALUES ('92', '70', '榴辉岩', '', 'LHY', '', '0', '1504587796', '1504587796');
INSERT INTO `dn_rock_classification` VALUES ('93', '70', '蓝片岩', '', 'LPY', '', '0', '1504587796', '1504587796');
INSERT INTO `dn_rock_classification` VALUES ('94', '70', '麻粒岩', '', 'MLY', '', '0', '1504587796', '1504587796');
INSERT INTO `dn_rock_classification` VALUES ('95', '70', '角闪岩', '', 'JSY', '', '0', '1504587796', '1504587796');
INSERT INTO `dn_rock_classification` VALUES ('96', '70', '大理岩', '', 'DLY', '', '0', '1504587796', '1504587796');
INSERT INTO `dn_rock_classification` VALUES ('97', '70', '石英岩', '', 'SYY', '', '0', '1504587796', '1504587796');
INSERT INTO `dn_rock_classification` VALUES ('98', '70', '片麻岩', '', 'PMY', '', '0', '1504587797', '1504587797');
INSERT INTO `dn_rock_classification` VALUES ('99', '70', '片岩', '', 'PY', '', '0', '1504587797', '1504587797');
INSERT INTO `dn_rock_classification` VALUES ('100', '70', '变粒岩', '', 'BLY', '', '0', '1504587797', '1504587797');
INSERT INTO `dn_rock_classification` VALUES ('101', '70', '混合岩', '', 'HHY', '', '0', '1504587797', '1504587797');
INSERT INTO `dn_rock_classification` VALUES ('102', '70', '紫苏花岗岩', '', 'ZSHGY', '', '0', '1504587797', '1504587797');
INSERT INTO `dn_rock_classification` VALUES ('103', '70', '绿岩', '', 'LY', '', '0', '1504587797', '1504587797');
INSERT INTO `dn_rock_classification` VALUES ('104', '70', '千枚岩', '', 'QMY', '', '0', '1504587797', '1504587797');
INSERT INTO `dn_rock_classification` VALUES ('105', '70', '板岩', '', 'BY', '', '0', '1504587797', '1504587797');
INSERT INTO `dn_rock_classification` VALUES ('106', '13', '接触变质岩', '', 'JCBZY', '', '0', '1504587797', '1504587797');
INSERT INTO `dn_rock_classification` VALUES ('107', '71', '板岩', '', 'BY', '', '0', '1504587797', '1504587797');
INSERT INTO `dn_rock_classification` VALUES ('108', '71', '角岩', '', 'JY', '', '0', '1504587797', '1504587797');
INSERT INTO `dn_rock_classification` VALUES ('109', '71', '石英岩', '', 'SYY', '', '0', '1504587797', '1504587797');
INSERT INTO `dn_rock_classification` VALUES ('110', '71', '大理岩', '', 'DLY', '', '0', '1504587797', '1504587797');
INSERT INTO `dn_rock_classification` VALUES ('111', '71', '变粒岩', '', 'BLY', '', '0', '1504587797', '1504587797');
INSERT INTO `dn_rock_classification` VALUES ('112', '71', '边缘混合岩', '', 'BYHHY', '', '0', '1504587797', '1504587797');
INSERT INTO `dn_rock_classification` VALUES ('113', '71', '玻化岩', '', 'BHY', '', '0', '1504587797', '1504587797');
INSERT INTO `dn_rock_classification` VALUES ('114', '13', '热接触交代变质岩', '', 'RJCJDBZY', '', '0', '1504587797', '1504587797');
INSERT INTO `dn_rock_classification` VALUES ('115', '72', '矽卡岩', '', 'XKY', '', '0', '1504587797', '1504587797');
INSERT INTO `dn_rock_classification` VALUES ('116', '72', '云英岩', '', 'YYY', '', '0', '1504587797', '1504587797');
INSERT INTO `dn_rock_classification` VALUES ('117', '72', '蛇纹岩', '', 'SWY', '', '0', '1504587797', '1504587797');
INSERT INTO `dn_rock_classification` VALUES ('118', '72', '霓长岩', '', 'NZY', '', '0', '1504587797', '1504587797');
INSERT INTO `dn_rock_classification` VALUES ('119', '72', '异剥钙榴岩', '', 'YBGLY', '', '0', '1504587797', '1504587797');
INSERT INTO `dn_rock_classification` VALUES ('120', '13', '动力变质岩', '', 'DLBZY', '', '0', '1504587797', '1504587797');
INSERT INTO `dn_rock_classification` VALUES ('121', '73', '构造角砾岩', '', 'GZJLY', '', '0', '1504587797', '1504587797');
INSERT INTO `dn_rock_classification` VALUES ('122', '73', '初碎裂岩', '', 'CSLY', '', '0', '1504587797', '1504587797');
INSERT INTO `dn_rock_classification` VALUES ('123', '73', '碎裂岩', '', 'SLY', '', '0', '1504587797', '1504587797');
INSERT INTO `dn_rock_classification` VALUES ('124', '73', '超碎裂岩', '', 'CSLY', '', '0', '1504587797', '1504587797');
INSERT INTO `dn_rock_classification` VALUES ('125', '73', '糜棱岩化XX岩', '', 'MLYHXXY', '', '0', '1504587797', '1504587797');
INSERT INTO `dn_rock_classification` VALUES ('126', '73', '初糜棱岩', '', 'CMLY', '', '0', '1504587797', '1504587797');
INSERT INTO `dn_rock_classification` VALUES ('127', '73', '糜棱岩', '', 'MLY', '', '0', '1504587798', '1504587798');
INSERT INTO `dn_rock_classification` VALUES ('128', '73', '超糜棱岩', '', 'CMLY', '', '0', '1504587798', '1504587798');
INSERT INTO `dn_rock_classification` VALUES ('129', '73', '变晶糜棱岩', '', 'BJMLY', '', '0', '1504587798', '1504587798');
INSERT INTO `dn_rock_classification` VALUES ('130', '73', '假玄武玻璃', '', 'JXWBL', '', '0', '1504587798', '1504587798');
INSERT INTO `dn_rock_classification` VALUES ('131', '73', '千糜岩', '', 'QMY', '', '0', '1504587798', '1504587798');
INSERT INTO `dn_rock_classification` VALUES ('132', '13', '冲击变质岩', '', 'CJBZY', '', '0', '1504587798', '1504587798');
INSERT INTO `dn_rock_classification` VALUES ('133', '74', '冲击岩', '', 'CJY', '', '0', '1504587798', '1504587798');
INSERT INTO `dn_rock_classification` VALUES ('134', '74', '冲击角砾岩', '', 'CJJLY', '', '0', '1504587798', '1504587798');
