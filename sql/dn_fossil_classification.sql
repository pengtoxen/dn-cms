/*
Navicat MySQL Data Transfer

Source Server         : hgwx
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : hgwx

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-04-04 13:24:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for dn_fossil_classification
-- ----------------------------
DROP TABLE IF EXISTS `dn_fossil_classification`;
CREATE TABLE `dn_fossil_classification` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父id',
  `name_zh` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '名称',
  `name_en` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '英文名称',
  `pinyin` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '拼音',
  `code` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '助记码',
  `dtime` int(10) NOT NULL DEFAULT '0',
  `ctime` int(10) NOT NULL DEFAULT '0',
  `utime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of dn_fossil_classification
-- ----------------------------
INSERT INTO `dn_fossil_classification` VALUES ('5', '1', '化石', '', 'HS', 'HS', '0', '1522816651', '1522816651');
INSERT INTO `dn_fossil_classification` VALUES ('17', '5', '古无脊椎动物', '', 'GWJZDW', 'GWJZDW', '0', '1522816651', '1522816651');
INSERT INTO `dn_fossil_classification` VALUES ('18', '5', '古脊椎动物', '', 'GJZDW', 'GJZDW', '0', '1522816653', '1522816653');
INSERT INTO `dn_fossil_classification` VALUES ('19', '5', '古植物', '', 'GZW', 'GZW', '0', '1522816659', '1522816659');
INSERT INTO `dn_fossil_classification` VALUES ('20', '5', '遗迹化石', '', 'YJHS', 'YJHS', '0', '1522816662', '1522816662');
INSERT INTO `dn_fossil_classification` VALUES ('21', '5', '古人类及类人猿', '', 'GRLJLRY', 'GRLJLRY', '0', '1522816663', '1522816663');
INSERT INTO `dn_fossil_classification` VALUES ('22', '5', '古人类遗物', '', 'GRLYW', 'GRLYW', '0', '1522816663', '1522816663');
INSERT INTO `dn_fossil_classification` VALUES ('23', '5', '分类位置不明', '', 'FLWZBM', 'FLWZBM', '0', '1522816664', '1522816664');
INSERT INTO `dn_fossil_classification` VALUES ('84', '17', '原生动物', '', 'YSDW', 'YSDW', '0', '1522816651', '1522816651');
INSERT INTO `dn_fossil_classification` VALUES ('85', '17', '海绵动物', '', 'HMDW', 'HMDW', '0', '1522816651', '1522816651');
INSERT INTO `dn_fossil_classification` VALUES ('86', '17', '古杯动物', '', 'GBDW', 'GBDW', '0', '1522816651', '1522816651');
INSERT INTO `dn_fossil_classification` VALUES ('87', '17', '腔肠动物', '', 'QCDW', 'QCDW', '0', '1522816651', '1522816651');
INSERT INTO `dn_fossil_classification` VALUES ('88', '17', '蠕虫动物', '', 'RCDW', 'RCDW', '0', '1522816652', '1522816652');
INSERT INTO `dn_fossil_classification` VALUES ('89', '17', '苔藓动物', '', 'TDW', 'TDW', '0', '1522816652', '1522816652');
INSERT INTO `dn_fossil_classification` VALUES ('90', '17', '腕足动物', '', 'WZDW', 'WZDW', '0', '1522816652', '1522816652');
INSERT INTO `dn_fossil_classification` VALUES ('91', '17', '软体动物', '', 'RTDW', 'RTDW', '0', '1522816652', '1522816652');
INSERT INTO `dn_fossil_classification` VALUES ('92', '17', '节肢动物', '', 'JZDW', 'JZDW', '0', '1522816653', '1522816653');
INSERT INTO `dn_fossil_classification` VALUES ('93', '17', '棘皮动物', '', 'JPDW', 'JPDW', '0', '1522816653', '1522816653');
INSERT INTO `dn_fossil_classification` VALUES ('94', '17', '笔石动物', '', 'BSDW', 'BSDW', '0', '1522816653', '1522816653');
INSERT INTO `dn_fossil_classification` VALUES ('95', '18', '无颌类', '', 'WL', 'WL', '0', '1522816653', '1522816653');
INSERT INTO `dn_fossil_classification` VALUES ('96', '18', '盾皮鱼纲', '', 'DPYG', 'DPYG', '0', '1522816654', '1522816654');
INSERT INTO `dn_fossil_classification` VALUES ('97', '18', '棘鱼纲', '', 'JYG', 'JYG', '0', '1522816654', '1522816654');
INSERT INTO `dn_fossil_classification` VALUES ('98', '18', '软骨鱼纲', '', 'RGYG', 'RGYG', '0', '1522816654', '1522816654');
INSERT INTO `dn_fossil_classification` VALUES ('99', '18', '硬骨鱼纲', '', 'YGYG', 'YGYG', '0', '1522816655', '1522816655');
INSERT INTO `dn_fossil_classification` VALUES ('100', '18', '两栖纲', '', 'LQG', 'LQG', '0', '1522816656', '1522816656');
INSERT INTO `dn_fossil_classification` VALUES ('101', '18', '爬行纲', '', 'PXG', 'PXG', '0', '1522816656', '1522816656');
INSERT INTO `dn_fossil_classification` VALUES ('102', '18', '鸟纲', '', 'NG', 'NG', '0', '1522816657', '1522816657');
INSERT INTO `dn_fossil_classification` VALUES ('103', '18', '古哺乳动物', '', 'GBRDW', 'GBRDW', '0', '1522816657', '1522816657');
INSERT INTO `dn_fossil_classification` VALUES ('104', '19', '菌藻类', '', 'JZL', 'JZL', '0', '1522816659', '1522816659');
INSERT INTO `dn_fossil_classification` VALUES ('105', '19', '真菌类', '', 'ZJL', 'ZJL', '0', '1522816660', '1522816660');
INSERT INTO `dn_fossil_classification` VALUES ('106', '19', '苔藓及地衣', '', 'TJDY', 'TJDY', '0', '1522816660', '1522816660');
INSERT INTO `dn_fossil_classification` VALUES ('107', '19', '分类不明的早期陆地植物', '', 'FLBMDZQLDZW', 'FLBMDZQLDZW', '0', '1522816660', '1522816660');
INSERT INTO `dn_fossil_classification` VALUES ('108', '19', '蕨类植物（广义）', '', 'LZWGY', 'LZWGY', '0', '1522816660', '1522816660');
INSERT INTO `dn_fossil_classification` VALUES ('109', '19', '分类不明的蕨形叶', '', 'FLBMDXY', 'FLBMDXY', '0', '1522816661', '1522816661');
INSERT INTO `dn_fossil_classification` VALUES ('110', '19', '前裸子植物', '', 'QLZZW', 'QLZZW', '0', '1522816661', '1522816661');
INSERT INTO `dn_fossil_classification` VALUES ('111', '19', '早期裸子植物', '', 'ZQLZZW', 'ZQLZZW', '0', '1522816661', '1522816661');
INSERT INTO `dn_fossil_classification` VALUES ('112', '19', '裸子植物', '', 'LZZW', 'LZZW', '0', '1522816661', '1522816661');
INSERT INTO `dn_fossil_classification` VALUES ('113', '19', '被子植物', '', 'BZZW', 'BZZW', '0', '1522816662', '1522816662');
INSERT INTO `dn_fossil_classification` VALUES ('114', '19', '其它分类不明的植物', '', 'QTFLBMDZW', 'QTFLBMDZW', '0', '1522816662', '1522816662');
INSERT INTO `dn_fossil_classification` VALUES ('115', '19', '孢粉', '', 'F', 'F', '0', '1522816662', '1522816662');
INSERT INTO `dn_fossil_classification` VALUES ('116', '20', '遗物', '', 'YW', 'YW', '0', '1522816662', '1522816662');
INSERT INTO `dn_fossil_classification` VALUES ('117', '20', '遗迹', '', 'YJ', 'YJ', '0', '1522816662', '1522816662');
INSERT INTO `dn_fossil_classification` VALUES ('118', '21', '古人类', '', 'GRL', 'GRL', '0', '1522816663', '1522816663');
INSERT INTO `dn_fossil_classification` VALUES ('119', '21', '类人猿', '', 'LRY', 'LRY', '0', '1522816663', '1522816663');
INSERT INTO `dn_fossil_classification` VALUES ('120', '21', '分类不明的早期人类', '', 'FLBMDZQRL', 'FLBMDZQRL', '0', '1522816663', '1522816663');
INSERT INTO `dn_fossil_classification` VALUES ('121', '22', '石制品', '', 'SZP', 'SZP', '0', '1522816663', '1522816663');
INSERT INTO `dn_fossil_classification` VALUES ('122', '22', '骨（木）制品', '', 'GMZP', 'GMZP', '0', '1522816664', '1522816664');
INSERT INTO `dn_fossil_classification` VALUES ('123', '22', '装饰品', '', 'ZSP', 'ZSP', '0', '1522816664', '1522816664');
INSERT INTO `dn_fossil_classification` VALUES ('124', '22', '其他遗迹或遗物', '', 'QTYJHYW', 'QTYJHYW', '0', '1522816664', '1522816664');
INSERT INTO `dn_fossil_classification` VALUES ('125', '23', '牙形刺', '', 'YXC', 'YXC', '0', '1522816664', '1522816664');
INSERT INTO `dn_fossil_classification` VALUES ('126', '23', '几丁虫', '', 'JDC', 'JDC', '0', '1522816664', '1522816664');
INSERT INTO `dn_fossil_classification` VALUES ('127', '23', '小壳', '', 'XK', 'XK', '0', '1522816664', '1522816664');
INSERT INTO `dn_fossil_classification` VALUES ('366', '84', '丁丁虫类', '', 'DDCL', 'DDCL', '0', '1522816651', '1522816651');
INSERT INTO `dn_fossil_classification` VALUES ('367', '84', '放射虫类', '', 'FSCL', 'FSCL', '0', '1522816651', '1522816651');
INSERT INTO `dn_fossil_classification` VALUES ('368', '84', '蜓类有孔虫', '', 'LYKC', 'LYKC', '0', '1522816651', '1522816651');
INSERT INTO `dn_fossil_classification` VALUES ('369', '84', '非蜓类有孔虫', '', 'FLYKC', 'FLYKC', '0', '1522816651', '1522816651');
INSERT INTO `dn_fossil_classification` VALUES ('370', '85', '普通海绵纲', '', 'PTHMG', 'PTHMG', '0', '1522816651', '1522816651');
INSERT INTO `dn_fossil_classification` VALUES ('371', '85', '钙质海绵纲', '', 'GZHMG', 'GZHMG', '0', '1522816651', '1522816651');
INSERT INTO `dn_fossil_classification` VALUES ('372', '85', '硬海绵纲', '', 'YHMG', 'YHMG', '0', '1522816651', '1522816651');
INSERT INTO `dn_fossil_classification` VALUES ('373', '85', '层孔海绵纲', '', 'CKHMG', 'CKHMG', '0', '1522816651', '1522816651');
INSERT INTO `dn_fossil_classification` VALUES ('374', '85', '六射海绵纲', '', 'LSHMG', 'LSHMG', '0', '1522816651', '1522816651');
INSERT INTO `dn_fossil_classification` VALUES ('375', '86', '规则古杯纲', '', 'GZGBG', 'GZGBG', '0', '1522816651', '1522816651');
INSERT INTO `dn_fossil_classification` VALUES ('376', '86', '不规则古杯纲', '', 'BGZGBG', 'BGZGBG', '0', '1522816651', '1522816651');
INSERT INTO `dn_fossil_classification` VALUES ('377', '87', '水螅纲', '', 'SG', 'SG', '0', '1522816651', '1522816651');
INSERT INTO `dn_fossil_classification` VALUES ('378', '87', '锥石类', '', 'ZSL', 'ZSL', '0', '1522816651', '1522816651');
INSERT INTO `dn_fossil_classification` VALUES ('379', '87', '珊瑚纲', '', 'SHG', 'SHG', '0', '1522816652', '1522816652');
INSERT INTO `dn_fossil_classification` VALUES ('380', '88', '环节动物类', '', 'HJDWL', 'HJDWL', '0', '1522816652', '1522816652');
INSERT INTO `dn_fossil_classification` VALUES ('381', '89', '护唇纲', '', 'HCG', 'HCG', '0', '1522816652', '1522816652');
INSERT INTO `dn_fossil_classification` VALUES ('382', '89', '窄唇纲', '', 'ZCG', 'ZCG', '0', '1522816652', '1522816652');
INSERT INTO `dn_fossil_classification` VALUES ('383', '89', '裸唇纲', '', 'LCG', 'LCG', '0', '1522816652', '1522816652');
INSERT INTO `dn_fossil_classification` VALUES ('384', '90', '无铰纲', '', 'WJG', 'WJG', '0', '1522816652', '1522816652');
INSERT INTO `dn_fossil_classification` VALUES ('385', '90', '有铰纲', '', 'YJG', 'YJG', '0', '1522816652', '1522816652');
INSERT INTO `dn_fossil_classification` VALUES ('386', '91', '腹足纲', '', 'FZG', 'FZG', '0', '1522816652', '1522816652');
INSERT INTO `dn_fossil_classification` VALUES ('387', '91', '双壳纲', '', 'SKG', 'SKG', '0', '1522816652', '1522816652');
INSERT INTO `dn_fossil_classification` VALUES ('388', '91', '掘足纲', '', 'JZG', 'JZG', '0', '1522816652', '1522816652');
INSERT INTO `dn_fossil_classification` VALUES ('389', '91', '喙壳纲', '', 'KG', 'KG', '0', '1522816652', '1522816652');
INSERT INTO `dn_fossil_classification` VALUES ('390', '91', '多板纲', '', 'DBG', 'DBG', '0', '1522816652', '1522816652');
INSERT INTO `dn_fossil_classification` VALUES ('391', '91', '单板纲', '', 'DBG', 'DBG', '0', '1522816652', '1522816652');
INSERT INTO `dn_fossil_classification` VALUES ('392', '91', '竹节石纲', '', 'ZJSG', 'ZJSG', '0', '1522816652', '1522816652');
INSERT INTO `dn_fossil_classification` VALUES ('393', '91', '软舌螺纲', '', 'RSLG', 'RSLG', '0', '1522816652', '1522816652');
INSERT INTO `dn_fossil_classification` VALUES ('394', '91', '菊石类', '', 'JSL', 'JSL', '0', '1522816653', '1522816653');
INSERT INTO `dn_fossil_classification` VALUES ('395', '91', '鹦鹉螺类', '', 'LL', 'LL', '0', '1522816653', '1522816653');
INSERT INTO `dn_fossil_classification` VALUES ('396', '92', '三叶虫纲', '', 'SYCG', 'SYCG', '0', '1522816653', '1522816653');
INSERT INTO `dn_fossil_classification` VALUES ('397', '92', '昆虫纲', '', 'KCG', 'KCG', '0', '1522816653', '1522816653');
INSERT INTO `dn_fossil_classification` VALUES ('398', '92', '介形虫类', '', 'JXCL', 'JXCL', '0', '1522816653', '1522816653');
INSERT INTO `dn_fossil_classification` VALUES ('399', '92', '叶肢介类', '', 'YZJL', 'YZJL', '0', '1522816653', '1522816653');
INSERT INTO `dn_fossil_classification` VALUES ('400', '92', '甲壳纲', '', 'JKG', 'JKG', '0', '1522816653', '1522816653');
INSERT INTO `dn_fossil_classification` VALUES ('401', '93', '始海百合纲', '', 'SHBHG', 'SHBHG', '0', '1522816653', '1522816653');
INSERT INTO `dn_fossil_classification` VALUES ('402', '93', '海百合纲', '', 'HBHG', 'HBHG', '0', '1522816653', '1522816653');
INSERT INTO `dn_fossil_classification` VALUES ('403', '93', '海林檎纲', '', 'HLG', 'HLG', '0', '1522816653', '1522816653');
INSERT INTO `dn_fossil_classification` VALUES ('404', '93', '海胆纲', '', 'HDG', 'HDG', '0', '1522816653', '1522816653');
INSERT INTO `dn_fossil_classification` VALUES ('405', '93', '海蕾纲', '', 'HLG', 'HLG', '0', '1522816653', '1522816653');
INSERT INTO `dn_fossil_classification` VALUES ('406', '93', '海星纲', '', 'HXG', 'HXG', '0', '1522816653', '1522816653');
INSERT INTO `dn_fossil_classification` VALUES ('407', '93', '蛇尾纲', '', 'SWG', 'SWG', '0', '1522816653', '1522816653');
INSERT INTO `dn_fossil_classification` VALUES ('408', '94', '笔石纲', '', 'BSG', 'BSG', '0', '1522816653', '1522816653');
INSERT INTO `dn_fossil_classification` VALUES ('409', '95', '盔甲鱼亚纲', '', 'KJYYG', 'KJYYG', '0', '1522816653', '1522816653');
INSERT INTO `dn_fossil_classification` VALUES ('410', '95', '花鳞鱼亚纲', '', 'HLYYG', 'HLYYG', '0', '1522816654', '1522816654');
INSERT INTO `dn_fossil_classification` VALUES ('411', '95', '七鳃鳗亚纲', '', 'QSYG', 'QSYG', '0', '1522816654', '1522816654');
INSERT INTO `dn_fossil_classification` VALUES ('412', '95', '盲鳗亚纲', '', 'MYG', 'MYG', '0', '1522816654', '1522816654');
INSERT INTO `dn_fossil_classification` VALUES ('413', '95', '原始无颌类', '', 'YSWL', 'YSWL', '0', '1522816654', '1522816654');
INSERT INTO `dn_fossil_classification` VALUES ('414', '96', '胴甲鱼类', '', 'JYL', 'JYL', '0', '1522816654', '1522816654');
INSERT INTO `dn_fossil_classification` VALUES ('415', '96', '节甲鱼类', '', 'JJYL', 'JJYL', '0', '1522816654', '1522816654');
INSERT INTO `dn_fossil_classification` VALUES ('416', '96', '瓣甲鱼类', '', 'BJYL', 'BJYL', '0', '1522816654', '1522816654');
INSERT INTO `dn_fossil_classification` VALUES ('417', '96', '棘胸鱼类', '', 'JXYL', 'JXYL', '0', '1522816654', '1522816654');
INSERT INTO `dn_fossil_classification` VALUES ('418', '96', '褶齿鱼类', '', 'CYL', 'CYL', '0', '1522816654', '1522816654');
INSERT INTO `dn_fossil_classification` VALUES ('419', '96', '萌鳐鱼类', '', 'MYL', 'MYL', '0', '1522816654', '1522816654');
INSERT INTO `dn_fossil_classification` VALUES ('420', '97', '栅鱼类', '', 'ZYL', 'ZYL', '0', '1522816654', '1522816654');
INSERT INTO `dn_fossil_classification` VALUES ('421', '97', '双棘鱼类', '', 'SJYL', 'SJYL', '0', '1522816654', '1522816654');
INSERT INTO `dn_fossil_classification` VALUES ('422', '97', '锉棘鱼类', '', 'JYL', 'JYL', '0', '1522816654', '1522816654');
INSERT INTO `dn_fossil_classification` VALUES ('423', '97', '棘鱼类', '', 'JYL', 'JYL', '0', '1522816654', '1522816654');
INSERT INTO `dn_fossil_classification` VALUES ('424', '98', '原始软骨鱼类', '', 'YSRGYL', 'YSRGYL', '0', '1522816655', '1522816655');
INSERT INTO `dn_fossil_classification` VALUES ('425', '98', '板鳃类', '', 'BSL', 'BSL', '0', '1522816655', '1522816655');
INSERT INTO `dn_fossil_classification` VALUES ('426', '98', '全头类', '', 'QTL', 'QTL', '0', '1522816655', '1522816655');
INSERT INTO `dn_fossil_classification` VALUES ('427', '99', '原始肉鳍鱼类', '', 'YSRYL', 'YSRYL', '0', '1522816655', '1522816655');
INSERT INTO `dn_fossil_classification` VALUES ('428', '99', '爪齿鱼类', '', 'ZCYL', 'ZCYL', '0', '1522816655', '1522816655');
INSERT INTO `dn_fossil_classification` VALUES ('429', '99', '空棘鱼类', '', 'KJYL', 'KJYL', '0', '1522816655', '1522816655');
INSERT INTO `dn_fossil_classification` VALUES ('430', '99', '原始肺鱼形动物', '', 'YSFYXDW', 'YSFYXDW', '0', '1522816655', '1522816655');
INSERT INTO `dn_fossil_classification` VALUES ('431', '99', '孔鳞鱼类', '', 'KLYL', 'KLYL', '0', '1522816655', '1522816655');
INSERT INTO `dn_fossil_classification` VALUES ('432', '99', '肺鱼类', '', 'FYL', 'FYL', '0', '1522816655', '1522816655');
INSERT INTO `dn_fossil_classification` VALUES ('433', '99', '原始四足形动物', '', 'YSSZXDW', 'YSSZXDW', '0', '1522816655', '1522816655');
INSERT INTO `dn_fossil_classification` VALUES ('434', '99', '根齿鱼类', '', 'GCYL', 'GCYL', '0', '1522816655', '1522816655');
INSERT INTO `dn_fossil_classification` VALUES ('435', '99', '骨鳞鱼类', '', 'GLYL', 'GLYL', '0', '1522816655', '1522816655');
INSERT INTO `dn_fossil_classification` VALUES ('436', '99', '希望螈类', '', 'XWL', 'XWL', '0', '1522816655', '1522816655');
INSERT INTO `dn_fossil_classification` VALUES ('437', '99', '多鳍鱼类', '', 'DYL', 'DYL', '0', '1522816655', '1522816655');
INSERT INTO `dn_fossil_classification` VALUES ('438', '99', '原始辐鳍鱼类', '', 'YSFYL', 'YSFYL', '0', '1522816655', '1522816655');
INSERT INTO `dn_fossil_classification` VALUES ('439', '99', '软骨硬鳞鱼类', '', 'RGYLYL', 'RGYLYL', '0', '1522816655', '1522816655');
INSERT INTO `dn_fossil_classification` VALUES ('440', '99', '原始新鳍鱼类', '', 'YSXYL', 'YSXYL', '0', '1522816655', '1522816655');
INSERT INTO `dn_fossil_classification` VALUES ('441', '99', '雀鳝部', '', 'QB', 'QB', '0', '1522816655', '1522816655');
INSERT INTO `dn_fossil_classification` VALUES ('442', '99', '原始鲱口类', '', 'YSKL', 'YSKL', '0', '1522816655', '1522816655');
INSERT INTO `dn_fossil_classification` VALUES ('443', '99', '鲱亚部', '', 'YB', 'YB', '0', '1522816655', '1522816655');
INSERT INTO `dn_fossil_classification` VALUES ('444', '99', '真骨鱼亚部', '', 'ZGYYB', 'ZGYYB', '0', '1522816655', '1522816655');
INSERT INTO `dn_fossil_classification` VALUES ('445', '100', '原始四足类', '', 'YSSZL', 'YSSZL', '0', '1522816656', '1522816656');
INSERT INTO `dn_fossil_classification` VALUES ('446', '100', '离片椎类', '', 'LPZL', 'LPZL', '0', '1522816656', '1522816656');
INSERT INTO `dn_fossil_classification` VALUES ('447', '100', '石炭蜥类', '', 'STL', 'STL', '0', '1522816656', '1522816656');
INSERT INTO `dn_fossil_classification` VALUES ('448', '100', '壳椎两栖类', '', 'KZLQL', 'KZLQL', '0', '1522816656', '1522816656');
INSERT INTO `dn_fossil_classification` VALUES ('449', '100', '无尾类', '', 'WWL', 'WWL', '0', '1522816656', '1522816656');
INSERT INTO `dn_fossil_classification` VALUES ('450', '100', '有尾类', '', 'YWL', 'YWL', '0', '1522816656', '1522816656');
INSERT INTO `dn_fossil_classification` VALUES ('451', '100', '其他滑体两栖类', '', 'QTHTLQL', 'QTHTLQL', '0', '1522816656', '1522816656');
INSERT INTO `dn_fossil_classification` VALUES ('452', '100', '其他迷齿两栖类', '', 'QTMCLQL', 'QTMCLQL', '0', '1522816656', '1522816656');
INSERT INTO `dn_fossil_classification` VALUES ('453', '101', '龟鳖类', '', 'GBL', 'GBL', '0', '1522816656', '1522816656');
INSERT INTO `dn_fossil_classification` VALUES ('454', '101', '大鼻龙类', '', 'DBLL', 'DBLL', '0', '1522816656', '1522816656');
INSERT INTO `dn_fossil_classification` VALUES ('455', '101', '前棱蜥类', '', 'QLL', 'QLL', '0', '1522816656', '1522816656');
INSERT INTO `dn_fossil_classification` VALUES ('456', '101', '锯齿龙类', '', 'JCLL', 'JCLL', '0', '1522816656', '1522816656');
INSERT INTO `dn_fossil_classification` VALUES ('457', '101', '中龙类', '', 'ZLL', 'ZLL', '0', '1522816656', '1522816656');
INSERT INTO `dn_fossil_classification` VALUES ('458', '101', '离龙类', '', 'LLL', 'LLL', '0', '1522816656', '1522816656');
INSERT INTO `dn_fossil_classification` VALUES ('459', '101', '蜥蜴类', '', 'L', 'L', '0', '1522816656', '1522816656');
INSERT INTO `dn_fossil_classification` VALUES ('460', '101', '蛇类', '', 'SL', 'SL', '0', '1522816656', '1522816656');
INSERT INTO `dn_fossil_classification` VALUES ('461', '101', '其他鳞龙类', '', 'QTLLL', 'QTLLL', '0', '1522816656', '1522816656');
INSERT INTO `dn_fossil_classification` VALUES ('462', '101', '原龙类', '', 'YLL', 'YLL', '0', '1522816656', '1522816656');
INSERT INTO `dn_fossil_classification` VALUES ('463', '101', '鳍龙类', '', 'LL', 'LL', '0', '1522816656', '1522816656');
INSERT INTO `dn_fossil_classification` VALUES ('464', '101', '海龙类', '', 'HLL', 'HLL', '0', '1522816657', '1522816657');
INSERT INTO `dn_fossil_classification` VALUES ('465', '101', '鱼龙类', '', 'YLL', 'YLL', '0', '1522816657', '1522816657');
INSERT INTO `dn_fossil_classification` VALUES ('466', '101', '鳄类', '', 'L', 'L', '0', '1522816657', '1522816657');
INSERT INTO `dn_fossil_classification` VALUES ('467', '101', '其他鳄型类', '', 'QTXL', 'QTXL', '0', '1522816657', '1522816657');
INSERT INTO `dn_fossil_classification` VALUES ('468', '101', '翼龙类', '', 'YLL', 'YLL', '0', '1522816657', '1522816657');
INSERT INTO `dn_fossil_classification` VALUES ('469', '101', '蜥臀类恐龙', '', 'TLKL', 'TLKL', '0', '1522816657', '1522816657');
INSERT INTO `dn_fossil_classification` VALUES ('470', '101', '鸟臀类恐龙', '', 'NTLKL', 'NTLKL', '0', '1522816657', '1522816657');
INSERT INTO `dn_fossil_classification` VALUES ('471', '101', '其他初龙型类', '', 'QTCLXL', 'QTCLXL', '0', '1522816657', '1522816657');
INSERT INTO `dn_fossil_classification` VALUES ('472', '101', '盘龙类', '', 'PLL', 'PLL', '0', '1522816657', '1522816657');
INSERT INTO `dn_fossil_classification` VALUES ('473', '101', '恐头兽类', '', 'KTSL', 'KTSL', '0', '1522816657', '1522816657');
INSERT INTO `dn_fossil_classification` VALUES ('474', '101', '始巨鳄类', '', 'SJL', 'SJL', '0', '1522816657', '1522816657');
INSERT INTO `dn_fossil_classification` VALUES ('475', '101', '兽头类', '', 'STL', 'STL', '0', '1522816657', '1522816657');
INSERT INTO `dn_fossil_classification` VALUES ('476', '101', '二齿兽类', '', 'ECSL', 'ECSL', '0', '1522816657', '1522816657');
INSERT INTO `dn_fossil_classification` VALUES ('477', '101', '犬齿兽类', '', 'QCSL', 'QCSL', '0', '1522816657', '1522816657');
INSERT INTO `dn_fossil_classification` VALUES ('478', '101', '其他兽孔类', '', 'QTSKL', 'QTSKL', '0', '1522816657', '1522816657');
INSERT INTO `dn_fossil_classification` VALUES ('479', '102', '原始基干鸟类', '', 'YSJGNL', 'YSJGNL', '0', '1522816657', '1522816657');
INSERT INTO `dn_fossil_classification` VALUES ('480', '102', '反鸟类', '', 'FNL', 'FNL', '0', '1522816657', '1522816657');
INSERT INTO `dn_fossil_classification` VALUES ('481', '102', '今鸟类', '', 'JNL', 'JNL', '0', '1522816657', '1522816657');
INSERT INTO `dn_fossil_classification` VALUES ('482', '103', '哺乳动物型', '', 'BRDWX', 'BRDWX', '0', '1522816657', '1522816657');
INSERT INTO `dn_fossil_classification` VALUES ('483', '103', '原始哺乳动物', '', 'YSBRDW', 'YSBRDW', '0', '1522816658', '1522816658');
INSERT INTO `dn_fossil_classification` VALUES ('484', '103', '多瘤齿兽目', '', 'DLCSM', 'DLCSM', '0', '1522816658', '1522816658');
INSERT INTO `dn_fossil_classification` VALUES ('485', '103', '贫齿目', '', 'PCM', 'PCM', '0', '1522816658', '1522816658');
INSERT INTO `dn_fossil_classification` VALUES ('486', '103', '有袋目', '', 'YDM', 'YDM', '0', '1522816658', '1522816658');
INSERT INTO `dn_fossil_classification` VALUES ('487', '103', '原真兽目', '', 'YZSM', 'YZSM', '0', '1522816658', '1522816658');
INSERT INTO `dn_fossil_classification` VALUES ('488', '103', '食虫目', '', 'SCM', 'SCM', '0', '1522816658', '1522816658');
INSERT INTO `dn_fossil_classification` VALUES ('489', '103', '翼手目', '', 'YSM', 'YSM', '0', '1522816658', '1522816658');
INSERT INTO `dn_fossil_classification` VALUES ('490', '103', '攀鼩目', '', 'PM', 'PM', '0', '1522816658', '1522816658');
INSERT INTO `dn_fossil_classification` VALUES ('491', '103', '灵长目', '', 'LCM', 'LCM', '0', '1522816658', '1522816658');
INSERT INTO `dn_fossil_classification` VALUES ('492', '103', '亚兽目', '', 'YSM', 'YSM', '0', '1522816658', '1522816658');
INSERT INTO `dn_fossil_classification` VALUES ('493', '103', '混齿目', '', 'HCM', 'HCM', '0', '1522816658', '1522816658');
INSERT INTO `dn_fossil_classification` VALUES ('494', '103', '模鼠兔目', '', 'MSTM', 'MSTM', '0', '1522816658', '1522816658');
INSERT INTO `dn_fossil_classification` VALUES ('495', '103', '兔形目', '', 'TXM', 'TXM', '0', '1522816658', '1522816658');
INSERT INTO `dn_fossil_classification` VALUES ('496', '103', '啮齿目', '', 'NCM', 'NCM', '0', '1522816658', '1522816658');
INSERT INTO `dn_fossil_classification` VALUES ('497', '103', '肉齿目', '', 'RCM', 'RCM', '0', '1522816658', '1522816658');
INSERT INTO `dn_fossil_classification` VALUES ('498', '103', '食肉目', '', 'SRM', 'SRM', '0', '1522816658', '1522816658');
INSERT INTO `dn_fossil_classification` VALUES ('499', '103', '全齿目', '', 'QCM', 'QCM', '0', '1522816658', '1522816658');
INSERT INTO `dn_fossil_classification` VALUES ('500', '103', '裂齿目', '', 'LCM', 'LCM', '0', '1522816659', '1522816659');
INSERT INTO `dn_fossil_classification` VALUES ('501', '103', '纽齿目', '', 'NCM', 'NCM', '0', '1522816659', '1522816659');
INSERT INTO `dn_fossil_classification` VALUES ('502', '103', '南方有蹄目', '', 'NFYTM', 'NFYTM', '0', '1522816659', '1522816659');
INSERT INTO `dn_fossil_classification` VALUES ('503', '103', '恐角目', '', 'KJM', 'KJM', '0', '1522816659', '1522816659');
INSERT INTO `dn_fossil_classification` VALUES ('504', '103', '踝节目', '', 'JM', 'JM', '0', '1522816659', '1522816659');
INSERT INTO `dn_fossil_classification` VALUES ('505', '103', '中兽目', '', 'ZSM', 'ZSM', '0', '1522816659', '1522816659');
INSERT INTO `dn_fossil_classification` VALUES ('506', '103', '蹄兔目', '', 'TTM', 'TTM', '0', '1522816659', '1522816659');
INSERT INTO `dn_fossil_classification` VALUES ('507', '103', '鲸目', '', 'JM', 'JM', '0', '1522816659', '1522816659');
INSERT INTO `dn_fossil_classification` VALUES ('508', '103', '海牛目', '', 'HNM', 'HNM', '0', '1522816659', '1522816659');
INSERT INTO `dn_fossil_classification` VALUES ('509', '103', '长鼻目', '', 'CBM', 'CBM', '0', '1522816659', '1522816659');
INSERT INTO `dn_fossil_classification` VALUES ('510', '103', '奇蹄目', '', 'QTM', 'QTM', '0', '1522816659', '1522816659');
INSERT INTO `dn_fossil_classification` VALUES ('511', '103', '偶蹄目', '', 'OTM', 'OTM', '0', '1522816659', '1522816659');
INSERT INTO `dn_fossil_classification` VALUES ('512', '103', '其他有胎盘类', '', 'QTYTPL', 'QTYTPL', '0', '1522816659', '1522816659');
INSERT INTO `dn_fossil_classification` VALUES ('513', '104', '蓝藻及细菌（包括叠层石）', '', 'LZJXJBKDCS', 'LZJXJBKDCS', '0', '1522816659', '1522816659');
INSERT INTO `dn_fossil_classification` VALUES ('514', '104', '硅藻', '', 'GZ', 'GZ', '0', '1522816659', '1522816659');
INSERT INTO `dn_fossil_classification` VALUES ('515', '104', '绿藻', '', 'LZ', 'LZ', '0', '1522816659', '1522816659');
INSERT INTO `dn_fossil_classification` VALUES ('516', '104', '红藻及其它宏观藻', '', 'HZJQTHGZ', 'HZJQTHGZ', '0', '1522816659', '1522816659');
INSERT INTO `dn_fossil_classification` VALUES ('517', '104', '轮藻', '', 'LZ', 'LZ', '0', '1522816660', '1522816660');
INSERT INTO `dn_fossil_classification` VALUES ('518', '104', '甲藻', '', 'JZ', 'JZ', '0', '1522816660', '1522816660');
INSERT INTO `dn_fossil_classification` VALUES ('519', '104', '颗石藻', '', 'KSZ', 'KSZ', '0', '1522816660', '1522816660');
INSERT INTO `dn_fossil_classification` VALUES ('520', '104', '疑源类及其它', '', 'YYLJQT', 'YYLJQT', '0', '1522816660', '1522816660');
INSERT INTO `dn_fossil_classification` VALUES ('521', '105', '真菌类', '', 'ZJL', 'ZJL', '0', '1522816660', '1522816660');
INSERT INTO `dn_fossil_classification` VALUES ('522', '106', '苔类', '', 'TL', 'TL', '0', '1522816660', '1522816660');
INSERT INTO `dn_fossil_classification` VALUES ('523', '106', '藓类', '', 'L', 'L', '0', '1522816660', '1522816660');
INSERT INTO `dn_fossil_classification` VALUES ('524', '106', '地衣', '', 'DY', 'DY', '0', '1522816660', '1522816660');
INSERT INTO `dn_fossil_classification` VALUES ('525', '107', '分类不明的早期陆地植物', '', 'FLBMDZQLDZW', 'FLBMDZQLDZW', '0', '1522816660', '1522816660');
INSERT INTO `dn_fossil_classification` VALUES ('526', '108', '瑞尼蕨植物', '', 'RNZW', 'RNZW', '0', '1522816660', '1522816660');
INSERT INTO `dn_fossil_classification` VALUES ('527', '108', '工蕨植物', '', 'GZW', 'GZW', '0', '1522816660', '1522816660');
INSERT INTO `dn_fossil_classification` VALUES ('528', '108', '三枝蕨植物', '', 'SZZW', 'SZZW', '0', '1522816660', '1522816660');
INSERT INTO `dn_fossil_classification` VALUES ('529', '108', '石松植物', '', 'SSZW', 'SSZW', '0', '1522816660', '1522816660');
INSERT INTO `dn_fossil_classification` VALUES ('530', '108', '有节植物', '', 'YJZW', 'YJZW', '0', '1522816660', '1522816660');
INSERT INTO `dn_fossil_classification` VALUES ('531', '108', '真蕨植物', '', 'ZZW', 'ZZW', '0', '1522816661', '1522816661');
INSERT INTO `dn_fossil_classification` VALUES ('532', '109', '分类不明的蕨形叶', '', 'FLBMDXY', 'FLBMDXY', '0', '1522816661', '1522816661');
INSERT INTO `dn_fossil_classification` VALUES ('533', '110', '前裸子植物', '', 'QLZZW', 'QLZZW', '0', '1522816661', '1522816661');
INSERT INTO `dn_fossil_classification` VALUES ('534', '111', '种子蕨植物', '', 'ZZZW', 'ZZZW', '0', '1522816661', '1522816661');
INSERT INTO `dn_fossil_classification` VALUES ('535', '111', '其它裸子植物', '', 'QTLZZW', 'QTLZZW', '0', '1522816661', '1522816661');
INSERT INTO `dn_fossil_classification` VALUES ('536', '112', '苏铁类植物', '', 'STLZW', 'STLZW', '0', '1522816661', '1522816661');
INSERT INTO `dn_fossil_classification` VALUES ('537', '112', '银杏类植物', '', 'YXLZW', 'YXLZW', '0', '1522816661', '1522816661');
INSERT INTO `dn_fossil_classification` VALUES ('538', '112', '松柏类植物', '', 'SBLZW', 'SBLZW', '0', '1522816661', '1522816661');
INSERT INTO `dn_fossil_classification` VALUES ('539', '112', '买麻藤类植物', '', 'MMTLZW', 'MMTLZW', '0', '1522816661', '1522816661');
INSERT INTO `dn_fossil_classification` VALUES ('540', '113', '被子植物', '', 'BZZW', 'BZZW', '0', '1522816662', '1522816662');
INSERT INTO `dn_fossil_classification` VALUES ('541', '114', '生殖器官', '', 'SZQG', 'SZQG', '0', '1522816662', '1522816662');
INSERT INTO `dn_fossil_classification` VALUES ('542', '114', '营养器官', '', 'YYQG', 'YYQG', '0', '1522816662', '1522816662');
INSERT INTO `dn_fossil_classification` VALUES ('543', '115', '孢子', '', 'Z', 'Z', '0', '1522816662', '1522816662');
INSERT INTO `dn_fossil_classification` VALUES ('544', '115', '花粉', '', 'HF', 'HF', '0', '1522816662', '1522816662');
INSERT INTO `dn_fossil_classification` VALUES ('545', '116', '恐龙蛋及其它', '', 'KLDJQT', 'KLDJQT', '0', '1522816662', '1522816662');
INSERT INTO `dn_fossil_classification` VALUES ('546', '117', '爬行迹', '', 'PXJ', 'PXJ', '0', '1522816662', '1522816662');
INSERT INTO `dn_fossil_classification` VALUES ('547', '117', '居住迹', '', 'JZJ', 'JZJ', '0', '1522816662', '1522816662');
INSERT INTO `dn_fossil_classification` VALUES ('548', '117', '休息迹', '', 'XXJ', 'XXJ', '0', '1522816662', '1522816662');
INSERT INTO `dn_fossil_classification` VALUES ('549', '117', '觅食迹', '', 'MSJ', 'MSJ', '0', '1522816662', '1522816662');
INSERT INTO `dn_fossil_classification` VALUES ('550', '117', '进食迹', '', 'JSJ', 'JSJ', '0', '1522816662', '1522816662');
INSERT INTO `dn_fossil_classification` VALUES ('551', '117', '逃逸迹', '', 'TYJ', 'TYJ', '0', '1522816662', '1522816662');
INSERT INTO `dn_fossil_classification` VALUES ('552', '117', '耕作迹', '', 'GZJ', 'GZJ', '0', '1522816663', '1522816663');
INSERT INTO `dn_fossil_classification` VALUES ('553', '117', '捕食迹', '', 'BSJ', 'BSJ', '0', '1522816663', '1522816663');
INSERT INTO `dn_fossil_classification` VALUES ('554', '117', '均衡迹', '', 'JHJ', 'JHJ', '0', '1522816663', '1522816663');
INSERT INTO `dn_fossil_classification` VALUES ('555', '118', '南方古猿', '', 'NFGY', 'NFGY', '0', '1522816663', '1522816663');
INSERT INTO `dn_fossil_classification` VALUES ('556', '118', '能人', '', 'NR', 'NR', '0', '1522816663', '1522816663');
INSERT INTO `dn_fossil_classification` VALUES ('557', '118', '直立人', '', 'ZLR', 'ZLR', '0', '1522816663', '1522816663');
INSERT INTO `dn_fossil_classification` VALUES ('558', '118', '早期智人', '', 'ZQZR', 'ZQZR', '0', '1522816663', '1522816663');
INSERT INTO `dn_fossil_classification` VALUES ('559', '118', '晚期智人', '', 'WQZR', 'WQZR', '0', '1522816663', '1522816663');
INSERT INTO `dn_fossil_classification` VALUES ('560', '119', '古猿', '', 'GY', 'GY', '0', '1522816663', '1522816663');
INSERT INTO `dn_fossil_classification` VALUES ('561', '120', '分类不明的早期人类', '', 'FLBMDZQRL', 'FLBMDZQRL', '0', '1522816663', '1522816663');
INSERT INTO `dn_fossil_classification` VALUES ('562', '121', '石锤', '', 'SC', 'SC', '0', '1522816663', '1522816663');
INSERT INTO `dn_fossil_classification` VALUES ('563', '121', '石砧', '', 'SZ', 'SZ', '0', '1522816663', '1522816663');
INSERT INTO `dn_fossil_classification` VALUES ('564', '121', '石核', '', 'SH', 'SH', '0', '1522816663', '1522816663');
INSERT INTO `dn_fossil_classification` VALUES ('565', '121', '石片', '', 'SP', 'SP', '0', '1522816663', '1522816663');
INSERT INTO `dn_fossil_classification` VALUES ('566', '121', '石器', '', 'SQ', 'SQ', '0', '1522816663', '1522816663');
INSERT INTO `dn_fossil_classification` VALUES ('567', '121', '断块', '', 'DK', 'DK', '0', '1522816663', '1522816663');
INSERT INTO `dn_fossil_classification` VALUES ('568', '121', '残片', '', 'CP', 'CP', '0', '1522816664', '1522816664');
INSERT INTO `dn_fossil_classification` VALUES ('569', '121', '碎屑', '', 'SX', 'SX', '0', '1522816664', '1522816664');
INSERT INTO `dn_fossil_classification` VALUES ('570', '122', '骨器', '', 'GQ', 'GQ', '0', '1522816664', '1522816664');
INSERT INTO `dn_fossil_classification` VALUES ('571', '122', '角器', '', 'JQ', 'JQ', '0', '1522816664', '1522816664');
INSERT INTO `dn_fossil_classification` VALUES ('572', '122', '木器', '', 'MQ', 'MQ', '0', '1522816664', '1522816664');
INSERT INTO `dn_fossil_classification` VALUES ('573', '122', '其他', '', 'QT', 'QT', '0', '1522816664', '1522816664');
INSERT INTO `dn_fossil_classification` VALUES ('574', '123', '有孔类', '', 'YKL', 'YKL', '0', '1522816664', '1522816664');
INSERT INTO `dn_fossil_classification` VALUES ('575', '123', '有刻痕类', '', 'YKHL', 'YKHL', '0', '1522816664', '1522816664');
INSERT INTO `dn_fossil_classification` VALUES ('576', '123', '其他', '', 'QT', 'QT', '0', '1522816664', '1522816664');
INSERT INTO `dn_fossil_classification` VALUES ('577', '124', '其他遗迹或遗物', '', 'QTYJHYW', 'QTYJHYW', '0', '1522816664', '1522816664');
INSERT INTO `dn_fossil_classification` VALUES ('578', '125', '牙形刺', '', 'YXC', 'YXC', '0', '1522816664', '1522816664');
INSERT INTO `dn_fossil_classification` VALUES ('579', '126', '几丁虫', '', 'JDC', 'JDC', '0', '1522816664', '1522816664');
