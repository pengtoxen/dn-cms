/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50626
Source Host           : localhost:3306
Source Database       : trilobiteworld

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2018-03-12 22:22:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `dn_geo_age`
-- ----------------------------
DROP TABLE IF EXISTS `dn_geo_age`;
CREATE TABLE `dn_geo_age` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL COMMENT '父id',
  `code` varchar(10) NOT NULL COMMENT '助记码',
  `name_en` varchar(100) NOT NULL COMMENT '英文名称',
  `name_zh` varchar(100) NOT NULL COMMENT '中文名称',
  `period` varchar(100) NOT NULL COMMENT '百万为单位',
  `description` text NOT NULL COMMENT '描述',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序值',
  `color` varchar(11) NOT NULL COMMENT 'RGB',
  `status` tinyint(2) NOT NULL DEFAULT 1 COMMENT '状态',
  -- `dtime` int(10) NOT NULL DEFAULT 0,
  `ctime` int(10) NOT NULL DEFAULT 0,
  `utime` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='地质年代表';

-- ----------------------------
-- Records of dn_geo_age
-- ----------------------------
INSERT INTO `dn_geo_age` VALUES ('1', '0', 'HD', 'Hadean', '冥古宇', '4600-4000', '冥古宙（Hadean）是太古宙之前的一个宙，开始于地球形成之初，结束于38亿年前，但依据不同的文献可能有不同的定义。冥古宙最初是由普雷斯顿·克罗德（Preston Cloud）于1972年所提出的，原本是用来指已知最早岩石之前的时期。冥古宙的最后一个代对应为月球地质年代中的早雨海世，以月球的东海撞击事件为结束时间(约为38.4亿年)，这也是内太阳系的后期重轰击期的结束标志。在整个冥古宙，地球从46亿年前形成，从一个炽热的岩浆球逐渐冷却固化（计算表明仅需1亿年），出现原始的海洋、大气与陆地，但仍然是地质活动剧烈、火山喷发遍布、熔岩四处流淌，在41亿年前到38亿年前地球持续遭到了大量小行星与彗星的轰击，根据同时期月球撞击坑推算（月球面对地球的那一面的大部分大型盆地如危海、宁静海、晴朗海、肥沃海和风暴海也都是于此一时期撞击形成的），地球遭遇了撞击，形成22000个或者更多的直径大于20公里的撞击坑；形成约40个直径约1000公里的撞击盆地；形成几个直径约5000公里的撞击盆地；约每100年造成严重的环境破坏。', '0', '', '1', '1488436738', '1488534178');
INSERT INTO `dn_geo_age` VALUES ('2', '0', 'AR', 'Archaean', '太古宇', '4000-2500', '太古宙起始于内太阳系后期重轰炸期的结束（对月岩的同位素定年确定为38.4亿年前），地球岩石开始稳定存在并可以保留到现在。太古宙结束于25亿年前的大氧化事件把甲烷为主的还原性的太古宙原始大气转变为氧气丰富的氧化性的元古宙大气，从而导致了持续3亿年的地球第一个冰河时期——休伦冰河时期。\r\n太古宙时期有细菌和低等蓝菌存在。生物源叠层石可定年到35亿年前。', '0', '', '1', '1488437173', '1488534209');
INSERT INTO `dn_geo_age` VALUES ('3', '0', 'PT', 'Proterozoic', '元古宇', '2500-541.0±1.0', '是地质时代中的一个时期，开始于同位素年龄2500Ma（百万年前），结束于542.0±1.0Ma。元古宙包括了古元古代、中元古代、新元古代。元古宙属于前寒武纪（也是元古宙较不正式的名称），上一个宙是太古宙，下一个宙是显生宙。', '0', '', '1', '1488437662', '1488534297');
INSERT INTO `dn_geo_age` VALUES ('4', '0', 'PH', 'Phanerozoic', '显生宇', '541±1.0-现今', '这一时期经多次地壳运动和气候变化，岩石圈、水圈、大气圈和生物圈不断发展，演化为现今面貌。G.H.查德威克将全部地质时代分为两部分，寒武纪以前称为隐生宙，寒武纪到第四纪称为显生宙。隐生宙因已划分为冥古宙、太古宙和元古宙，这一名称趋向弃而不用。而显生宙则仍作为最大的地质年代单位。显生宙形成的地层称为显生宇。', '0', '', '1', '1488438624', '1488534379');
INSERT INTO `dn_geo_age` VALUES ('7', '4', 'PZ', 'Paleozoic', '古生届', '541.0±1.0-252.17±0.06', '古生代（Paleozoic，符号PZ)是地质时代中的一个时代，开始于同位素年龄542±0.3百万年(Ma)，结束于251±0.4Ma。古生代属于显生宙，上一个代是新元古代，下一个代是中生代。古生代是显生宙的第一个代，上一个代是元古宙的新元古代，下一个代是中生代。古生代包括寒武纪、奥陶纪、志留纪、泥盆纪、石炭纪、二叠纪。其中寒武纪、奥陶纪、志留纪又合称早古生代，泥盆纪、石炭纪、二叠纪又合称晚古生代。\r\n古生代意为远古的生物时代，持续约3亿年。对动物界来说，这是一个重要时期。它以一场至今不能完全解释清楚的进化拉开了寒武纪的序幕。寒武纪动物的活动范围只限于海洋，但在古生代的延续下，有些动物的活动转向干燥的陆地。古生代后期，爬行动物和类似哺乳动物的动物出现，古生代以迄今所知最大的一次生物绝灭宣告完结。\r\n早古生代称为无脊椎动物时代。 晚古生代称为鱼类及两栖类时代。\r\n动物群以海生无脊椎动物中的三叶虫、软体动物和棘皮动物最繁盛。在奥陶纪、志留纪、泥盆纪、石炭纪，相继出现低等鱼类、古两栖类和古爬行类动物。鱼类在泥盆纪达于全盛。石炭纪和二叠纪昆虫和两栖类繁盛。古植物以海生藻类为主。', '0', '', '1', '1488439954', '1488534617');
INSERT INTO `dn_geo_age` VALUES ('8', '7', '∈', 'Cambrian', '寒武系', '541.0±1.0~485.4±1.9', '寒武纪（Cambrian）是显生宙的开始，距今约5.42亿年前—4.88亿年。这个名字来自于英国威尔士的一个古代地名罗马名称“Cambria”，该地的寒武纪地层被最早研究。“寒武纪”一词是英国地质学家塞奇威克（A Sedgwick）于1835年首次引进地质文献的。原指泥盆纪老红砂岩之下的所有地层。在罗马人统治的时代，北威尔士山曾称寒武山，因此赛德维克便将这个时期称为寒武纪。通过铀铅测年法测量其延续时间为5370万年。中文名称源自旧时日本人使用日语汉字音读的音译名“寒武纪”（音读：カンブキ，罗马字：kanbuki）。', '0', '', '1', '1488440573', '1488532736');
INSERT INTO `dn_geo_age` VALUES ('9', '8', '∈₁', 'Terreneuvian', '纽芬兰统', '541.0±1.0 ~ 529', '纽芬兰统', '0', '', '1', '1488441359', '1488532687');
INSERT INTO `dn_geo_age` VALUES ('10', '8', '∈₂', 'Series 2', '第二统', '521~509', '第二世', '0', '', '1', '1488530528', '1488532651');
INSERT INTO `dn_geo_age` VALUES ('11', '8', '∈₃', 'Series 3', '第三统', '509~497', '第三世', '0', '', '1', '1488530683', '1488532619');
INSERT INTO `dn_geo_age` VALUES ('12', '8', '∈4', 'Furongian', '芙蓉统', '497~485.4±1.9', '芙蓉统', '0', '', '1', '1488532557', '1488532557');
INSERT INTO `dn_geo_age` VALUES ('16', '9', '', 'Fortunian', '幸运阶', '541.0±1.0 ~ 529', '幸运阶', '0', '', '1', '1488533035', '1488533035');
INSERT INTO `dn_geo_age` VALUES ('18', '9', 'Stage 2', 'Stage 2', '第二阶', '529~521', '第二阶', '0', '', '1', '1488533333', '1488533333');
INSERT INTO `dn_geo_age` VALUES ('19', '10', 'Stage 3', 'Stage 3', '第三阶', '529-521', '第三阶', '0', '', '1', '1488533479', '1488533479');
INSERT INTO `dn_geo_age` VALUES ('20', '10', 'Stage 4', 'Stage 4', '第四阶', '514-509', '第四阶', '0', '', '1', '1488533546', '1488533546');
INSERT INTO `dn_geo_age` VALUES ('21', '11', 'Stage 5', 'Stage 5', '第五阶', '509-504.5', '第五阶', '0', '', '1', '1488533593', '1488533593');
INSERT INTO `dn_geo_age` VALUES ('22', '11', 'Drumian', 'Drumian', '鼓山阶', '504.5-500.5', '鼓山阶', '0', '', '1', '1488533661', '1488533661');
INSERT INTO `dn_geo_age` VALUES ('23', '11', 'Guzhangian', 'Guzhangian', '古丈阶', '500.5-497', '古丈阶', '0', '', '1', '1488533725', '1488533725');
INSERT INTO `dn_geo_age` VALUES ('24', '12', 'Pabian', 'Pabian', '排碧阶', '497-494', '排碧阶', '0', '', '1', '1488533778', '1488533778');
INSERT INTO `dn_geo_age` VALUES ('25', '12', 'Jiangshani', 'Jiangshanian', '江山阶', '494-489.5', '江山阶', '0', '', '1', '1488533894', '1488533915');
INSERT INTO `dn_geo_age` VALUES ('26', '12', 'Stage 10', 'Stage 10', '第十阶', '489.5-485.4±1.9', '第十阶', '0', '', '1', '1488534060', '1488534060');
INSERT INTO `dn_geo_age` VALUES ('27', '7', 'Ordovician', 'Ordovician', '奥陶系', '485.4±1.9-443.8±1.5', '奥陶系', '0', '', '1', '1488534843', '1488534843');
INSERT INTO `dn_geo_age` VALUES ('28', '27', 'Lower Ordo', 'Lower Ordovician', '下奥陶统', '485.4±1.9-470.0±1.4', '下奥陶统', '0', '', '1', '1488535076', '1488535157');
INSERT INTO `dn_geo_age` VALUES ('29', '27', 'Middle Ord', 'Middle Ordovician', '中奥陶统', '470.0±1.4-458.4±0.9', '中奥陶统', '0', '', '1', '1488535260', '1488535260');
INSERT INTO `dn_geo_age` VALUES ('30', '27', 'Upper Ordo', 'Upper Ordovician', '上奥陶统', '458.4±0.9-443.8±1.5', '上奥陶统', '0', '', '1', '1488535346', '1488535346');
INSERT INTO `dn_geo_age` VALUES ('31', '7', 'Silurian', 'Silurian', '志留系', '443.8±1.5-419.2±3.2', '志留纪', '0', '', '1', '1488535436', '1488535558');
INSERT INTO `dn_geo_age` VALUES ('32', '7', 'Devonian', 'Devonian', '泥盆系', '419.2±3.2-358.9±0.4', '泥盆系', '0', '', '1', '1488535548', '1488535548');
INSERT INTO `dn_geo_age` VALUES ('33', '28', 'Tremadocia', 'Tremadocian', '特马豆克阶', '485.4±1.9-477.7±1.4', '特马豆克阶', '0', '', '1', '1488788529', '1488788529');
INSERT INTO `dn_geo_age` VALUES ('34', '28', 'Floian', 'Floian', '弗洛阶', '477.7±1.4-470.0±1.4', '弗洛阶', '0', '', '1', '1488788614', '1488788614');
INSERT INTO `dn_geo_age` VALUES ('35', '29', 'Dapingian', 'Dapingian', '大坪阶', '470.0±1.4-467.3±1.1', '大坪阶', '0', '', '1', '1488788688', '1488788736');
INSERT INTO `dn_geo_age` VALUES ('36', '29', 'Darriwilia', 'Darriwilian', '达瑞威尔阶', '467.3±1.1-458.4±0.9', '达瑞威尔阶', '0', '', '1', '1488788835', '1488788835');
INSERT INTO `dn_geo_age` VALUES ('37', '30', 'Sandbian', 'Sandbian', '桑比阶', '458.4±0.9-453.0±0.7', '桑比阶', '0', '', '1', '1488788953', '1488788953');
INSERT INTO `dn_geo_age` VALUES ('38', '30', 'Katian', 'Katian', '凯迪阶', '453.0±0.7-445.2±1.4', '凯迪阶', '0', '', '1', '1488790639', '1488790639');
INSERT INTO `dn_geo_age` VALUES ('39', '30', 'Hirnantian', 'Hirnantian', '赫南特阶', '445.2±1.4-443.8±1.5', '赫南特阶', '0', '', '1', '1488790737', '1488790737');
INSERT INTO `dn_geo_age` VALUES ('40', '31', 'Llandovery', 'Llandovery', '兰多维列统', '443.8±1.5-433.4±0.8', '兰多维列统', '0', '', '1', '1488791598', '1488791598');
INSERT INTO `dn_geo_age` VALUES ('41', '40', 'Rhuddanian', 'Rhuddanian', '鲁丹阶', '443.8±1.5-440.8±1.2', '鲁丹阶', '0', '', '1', '1488791919', '1488791919');
INSERT INTO `dn_geo_age` VALUES ('42', '40', 'Aeronian', 'Aeronian', '埃隆阶', '440.8±1.2-438.5±1.1', '埃隆阶', '0', '', '1', '1488792003', '1488792003');
INSERT INTO `dn_geo_age` VALUES ('43', '40', 'Telychian', 'Telychian', '特列奇阶', '438.5±1.1-433.4±0.8', '特列奇阶', '0', '', '1', '1488792095', '1488792236');
INSERT INTO `dn_geo_age` VALUES ('44', '31', 'Wenlock', 'Wenlock', '温洛克统', '433.4±0.8-427.4±0.5', '温洛克统', '0', '', '1', '1488792300', '1488792300');
INSERT INTO `dn_geo_age` VALUES ('45', '44', 'Sheinwoodi', 'Sheinwoodian', '申伍德阶', '433.4±0.8-430.5±0.7', '申伍德阶', '0', '', '1', '1488792399', '1488792399');
INSERT INTO `dn_geo_age` VALUES ('46', '44', 'Homerian', 'Homerian', '候墨阶', '430.5±0.7-427.4±0.5', '候墨阶', '0', '', '1', '1488792493', '1488792493');
INSERT INTO `dn_geo_age` VALUES ('47', '31', 'Ludlow', 'Ludlow', '罗德洛统', '427.4±0.5-423.0±2.3', '罗德洛统', '0', '', '1', '1488792824', '1488792824');
INSERT INTO `dn_geo_age` VALUES ('48', '31', 'Pridoli', 'Pridoli', '普里道利统', '423.0±2.3-419.2±3.2', '普里道利统', '0', '', '1', '1488792909', '1488792909');
INSERT INTO `dn_geo_age` VALUES ('49', '47', 'Gorstian', 'Gorstian', '高思特阶', '427.4±0.5-425.6±0.9', '高思特阶', '0', '', '1', '1488792999', '1488792999');
INSERT INTO `dn_geo_age` VALUES ('50', '47', 'Ludfordian', 'Ludfordian', '卢德福特阶', '425.6±0.9-423.0±2.3', '卢德福特阶', '0', '', '1', '1488793098', '1488793098');
INSERT INTO `dn_geo_age` VALUES ('51', '32', 'Lower Devi', 'Lower Devionian', '下泥盆统', '419.2±3.2-393.3±1.2', '下泥盆统', '0', '', '1', '1488877400', '1488877400');
INSERT INTO `dn_geo_age` VALUES ('52', '32', 'Middle Dev', 'Middle Devionian', '中泥盆统', '393.3±1.2-382.7±1.6', '中泥盆统', '0', '', '1', '1488877501', '1488877501');
INSERT INTO `dn_geo_age` VALUES ('53', '32', 'Upper Devi', 'Upper Devionian', '上泥盆统', '382.7±1.6-358.9±0.4', '上泥盆统', '0', '', '1', '1488877581', '1488877581');
INSERT INTO `dn_geo_age` VALUES ('54', '51', 'Lochkovian', 'Lochkovian', '洛赫考夫阶', '419.2±3.2-410.8±2.8', '洛赫考夫阶', '0', '', '1', '1488877679', '1488877679');
INSERT INTO `dn_geo_age` VALUES ('55', '51', 'Pragian', 'Pragian', '布拉格阶', '410.8±2.8-407.6±2.6', '布拉格阶', '0', '', '1', '1488877788', '1488877788');
INSERT INTO `dn_geo_age` VALUES ('56', '51', 'Emsian', 'Emsian', '埃姆斯阶', '407.6±2.6-393.3±1.2', '埃姆斯阶', '0', '', '1', '1488877868', '1488877868');
INSERT INTO `dn_geo_age` VALUES ('57', '52', 'Eifelian', 'Eifelian', '艾菲尔阶', '393.3±1.2-387.7±0.8', '艾菲尔阶', '0', '', '1', '1488877950', '1488877950');
INSERT INTO `dn_geo_age` VALUES ('58', '52', 'Givetian', 'Givetian', '吉维特阶', '387.7±0.8-382.7±1.6', '吉维特阶', '0', '', '1', '1488878064', '1488878064');
INSERT INTO `dn_geo_age` VALUES ('59', '53', 'Frasnian', 'Frasnian', '弗拉阶', '382.7±1.6-372.2±1.6', '弗拉阶', '0', '', '1', '1488878154', '1488878154');
INSERT INTO `dn_geo_age` VALUES ('60', '53', 'Famennian', 'Famennian', '法门阶', '372.2±1.6-358.9±0.4', '法门阶', '0', '', '1', '1488878229', '1488878229');
INSERT INTO `dn_geo_age` VALUES ('61', '7', 'Carbonifer', 'Carboniferous', '石炭系', '358.9±0.4-298.9±0.15', '石炭系', '0', '', '1', '1488878435', '1488878435');
INSERT INTO `dn_geo_age` VALUES ('62', '61', 'Missiissip', 'Missiissippian', '密西西比亚系', '358.9±0.4-323.2±0.4', '密西西比亚系', '0', '', '1', '1488878584', '1488878584');
INSERT INTO `dn_geo_age` VALUES ('63', '61', 'Pennsylvan', 'Pennsylvanian', '宾夕法尼亚系', '323.2±0.4-298.9±0.15', '宾夕法尼亚系', '0', '', '1', '1488878668', '1488878668');
INSERT INTO `dn_geo_age` VALUES ('64', '62', 'Tournaisia', 'Tournaisian', '杜内阶', '358.9±0.4-346.7±0.4', '杜内阶', '0', '', '1', '1488878972', '1488878972');
INSERT INTO `dn_geo_age` VALUES ('65', '62', 'Visean', 'Visean', '维宪阶', '346.7±0.4-330.9±0.2', '维宪阶', '0', '', '1', '1488879147', '1488879147');
INSERT INTO `dn_geo_age` VALUES ('66', '62', 'Serpukhovi', 'Serpukhovian', '谢尔普霍夫阶', '330.9±0.2-323.2±0.4', '谢尔普霍夫阶', '0', '', '1', '1488879269', '1488879269');
INSERT INTO `dn_geo_age` VALUES ('67', '63', 'Bashkirian', 'Bashkirian', '巴什基尔阶', '323.2±0.4-315.2±0.2', '巴什基尔阶', '0', '', '1', '1488879345', '1488879345');
INSERT INTO `dn_geo_age` VALUES ('68', '63', 'Moscovian', 'Moscovian', '莫斯科阶', '315.2±0.2-307.0±0.1', '莫斯科阶', '0', '', '1', '1488879476', '1488879476');
INSERT INTO `dn_geo_age` VALUES ('69', '63', 'Kasimovian', 'Kasimovian', '卡西莫夫阶', '307.0±0.1-303.7±0.1', '卡西莫夫阶', '0', '', '1', '1488879721', '1488879721');
INSERT INTO `dn_geo_age` VALUES ('70', '63', 'Gzhelian', 'Gzhelian', '格舍尔阶', '303.7±0.1-298.9±0.15', '格舍尔阶', '0', '', '1', '1488879821', '1488879821');
INSERT INTO `dn_geo_age` VALUES ('71', '7', 'Permian', 'Permian', '二叠系', '298.9±0.15-252.17±0.06', '二叠系', '0', '', '1', '1489374198', '1489374198');
INSERT INTO `dn_geo_age` VALUES ('72', '71', 'Cisuralian', 'Cisuralian', '乌拉尔统', '298.9 ±0.15-272.3 ±0.5', '乌拉尔统', '0', '', '1', '1489374275', '1489374275');
INSERT INTO `dn_geo_age` VALUES ('73', '72', 'Asselian', 'Asselian', '阿瑟尔阶', '298.9 ±0.15-295.0 ±0.18', '阿瑟尔阶', '0', '', '1', '1489374313', '1489374313');
INSERT INTO `dn_geo_age` VALUES ('74', '72', 'Sakmarian', 'Sakmarian', '萨克马尔阶', '295.0 ±0.18-290.1 ±0.26', '萨克马尔阶', '0', '', '1', '1489374349', '1489374349');
INSERT INTO `dn_geo_age` VALUES ('75', '72', 'Artinskian', 'Artinskian', '亚丁斯克阶', '290.1 ±0.26-283.5 ±0.6', '亚丁斯克阶', '0', '', '1', '1489374424', '1489374424');
INSERT INTO `dn_geo_age` VALUES ('76', '72', 'Kungurian', 'Kungurian', '空谷阶', '283.5 ±0.6-272.3 ±0.5', '空谷阶', '0', '', '1', '1489374462', '1489374462');
INSERT INTO `dn_geo_age` VALUES ('77', '71', 'Guadalupia', 'Guadalupian', '瓜德鲁普统', '272.3 ±0.5-259.8 ±0.4', '瓜德鲁普统', '0', '', '1', '1489374536', '1489374536');
INSERT INTO `dn_geo_age` VALUES ('78', '77', 'Roadian', 'Roadian', '罗德阶', '272.3 ±0.5-268.8 ±0.5', '罗德阶', '0', '', '1', '1489374571', '1489374571');
INSERT INTO `dn_geo_age` VALUES ('79', '77', 'Wordian', 'Wordian', '沃德阶', '268.8 ±0.5-265.1 ±0.4', '沃德阶', '0', '', '1', '1489374606', '1489374606');
INSERT INTO `dn_geo_age` VALUES ('80', '77', 'Capitanian', 'Capitanian', '卡匹敦阶', '265.1 ±0.4-259.8 ±0.4', '卡匹敦阶', '0', '', '1', '1489374640', '1489374640');
INSERT INTO `dn_geo_age` VALUES ('81', '71', 'Lopingian', 'Lopingian', '乐平统', '259.8 ±0.4-252.17 ±0.06', '乐平统', '0', '', '1', '1489374674', '1489374674');
INSERT INTO `dn_geo_age` VALUES ('82', '81', 'Wuchiaping', 'Wuchiapingian', '吴家坪阶', '259.8 ±0.4-254.14 ±0.07', '吴家坪阶', '0', '', '1', '1489374704', '1489374704');
INSERT INTO `dn_geo_age` VALUES ('83', '81', 'Changhsing', 'Changhsingian', '长兴阶', '254.14 ±0.07-252.17 ±0.06', '长兴阶', '0', '', '1', '1489374738', '1489374738');
INSERT INTO `dn_geo_age` VALUES ('84', '95', 'Triassic', 'Triassic', '三叠系', '252.17 ±0.06-201.3 ±0.2', '三叠系', '0', '', '1', '1489374855', '1489375499');
INSERT INTO `dn_geo_age` VALUES ('85', '84', 'Lower Tria', 'Lower Triassic', '下三叠统', '252.17 ±0.06-247.2', '下三叠统', '0', '', '1', '1489374907', '1489374907');
INSERT INTO `dn_geo_age` VALUES ('86', '85', 'Induan', 'Induan', '印度阶', '252.17 ±0.06-251.2', '印度阶', '0', '', '1', '1489374968', '1489374968');
INSERT INTO `dn_geo_age` VALUES ('87', '85', 'Olenekian', 'Olenekian', '奥伦尼克阶', '251.2-247.2', '奥伦尼克阶', '0', '', '1', '1489375012', '1489375012');
INSERT INTO `dn_geo_age` VALUES ('88', '84', 'Middle Tri', 'Middle Triassic', '中三叠统', '247.2-237', '中三叠统', '0', '', '1', '1489375091', '1489375091');
INSERT INTO `dn_geo_age` VALUES ('89', '88', 'Anisian', 'Anisian', '安尼阶', '247.2-242', '安尼阶', '0', '', '1', '1489375126', '1489375126');
INSERT INTO `dn_geo_age` VALUES ('90', '88', 'Ladinian', 'Ladinian', '拉丁阶', '242-237', '拉丁阶', '0', '', '1', '1489375151', '1489375151');
INSERT INTO `dn_geo_age` VALUES ('91', '84', 'Upper Tria', 'Upper Triassic', '上三叠统', '237-201.3 ±0.2', '上三叠统', '0', '', '1', '1489375189', '1489375189');
INSERT INTO `dn_geo_age` VALUES ('92', '91', 'Carnian', 'Carnian', '卡尼阶', '237-227', '卡尼阶', '0', '', '1', '1489375224', '1489375224');
INSERT INTO `dn_geo_age` VALUES ('93', '91', 'Norian', 'Norian', '诺利阶', '227-208.5', '诺利阶', '0', '', '1', '1489375267', '1489375267');
INSERT INTO `dn_geo_age` VALUES ('94', '91', 'Rhaetian', 'Rhaetian', '瑞替阶', '208.5-201.3 ±0.2', '瑞替阶', '0', '', '1', '1489375325', '1489375325');
INSERT INTO `dn_geo_age` VALUES ('95', '4', 'Mesozoic', 'Mesozoic', '中生界', '252.17 ±0.06-66.0', '中生界', '0', '', '1', '1489375390', '1489375390');
INSERT INTO `dn_geo_age` VALUES ('96', '95', 'Jurassic', 'Jurassic', '侏罗系', '201.3 ±0.2-145.0', '侏罗纪', '0', '', '1', '1489375705', '1489375705');
INSERT INTO `dn_geo_age` VALUES ('97', '96', 'Lower Jura', 'Lower Jurassic', '下侏罗统', '201.3 ±0.2-174.1 ±1.0', '下侏罗统', '0', '', '1', '1489375749', '1489375749');
INSERT INTO `dn_geo_age` VALUES ('98', '97', 'Hettangian', 'Hettangian', '赫塘阶', '201.3 ±0.2-199.3 ±0.3', '赫塘阶', '0', '', '1', '1489375787', '1489375787');
INSERT INTO `dn_geo_age` VALUES ('99', '97', 'Sinemurian', 'Sinemurian', '辛涅缪尔阶', '199.3 ±0.3-190.8 ±1.0', '辛涅缪尔阶', '0', '', '1', '1489375816', '1489375816');
INSERT INTO `dn_geo_age` VALUES ('100', '97', 'Pliensbach', 'Pliensbachian', '普林斯巴阶', '190.8 ±1.0-182.7 ±0.7', '普林斯巴阶', '0', '', '1', '1489375845', '1489375845');
INSERT INTO `dn_geo_age` VALUES ('101', '97', 'Toarcian', 'Toarcian', '托阿尔阶', '182.7 ±0.7-174.1 ±1.0', '托阿尔阶', '0', '', '1', '1489375876', '1489375876');
INSERT INTO `dn_geo_age` VALUES ('102', '96', 'Middle Jur', 'Middle Jurassic', '中侏罗统', '174.1 ±1.0-163.5 ±1.0', '中侏罗统', '0', '', '1', '1489375909', '1489375909');
INSERT INTO `dn_geo_age` VALUES ('103', '102', 'Aalenian', 'Aalenian', '阿林阶', '174.1 ±1.0-170.3 ±1.4', '阿林阶', '0', '', '1', '1489375940', '1489375940');
INSERT INTO `dn_geo_age` VALUES ('104', '102', 'Bajocian', 'Bajocian', '巴柔阶', '170.3 ±1.4-168.3 ±1.3', '巴柔阶', '0', '', '1', '1489375973', '1489375973');
INSERT INTO `dn_geo_age` VALUES ('105', '102', 'Bathonian', 'Bathonian', '巴通阶', '168.3 ±1.3-166.1 ±1.2', '巴通阶', '0', '', '1', '1489376004', '1489376004');
INSERT INTO `dn_geo_age` VALUES ('106', '102', 'Callovian', 'Callovian', '卡洛夫阶', '166.1 ±1.2-163.5 ±1.0', '卡洛夫阶', '0', '', '1', '1489376036', '1489376036');
INSERT INTO `dn_geo_age` VALUES ('107', '96', 'Upper Jura', 'Upper Jurassic', '上侏罗统', '163.5 ±1.0-145.0', '上侏罗统', '0', '', '1', '1489376074', '1489376074');
INSERT INTO `dn_geo_age` VALUES ('108', '107', 'Oxfordian', 'Oxfordian', '牛津阶', '163.5 ±1.0-157.3 ±1.0', '牛津阶', '0', '', '1', '1489376102', '1489376102');
INSERT INTO `dn_geo_age` VALUES ('109', '107', 'Kimmeridgi', 'Kimmeridgian', '钦莫利阶', '157.3 ±1.0-152.1 ±0.9', '钦莫利阶', '0', '', '1', '1489376131', '1489376131');
INSERT INTO `dn_geo_age` VALUES ('110', '107', 'Tithonian', 'Tithonian', '提塘阶', '152.1 ±0.9-145.0', '提塘阶', '0', '', '1', '1489376162', '1489376162');
INSERT INTO `dn_geo_age` VALUES ('111', '95', 'Cretaceous', 'Cretaceous', '白垩系', '145.0-66.0', '白垩系', '0', '', '1', '1489376235', '1489376235');
INSERT INTO `dn_geo_age` VALUES ('112', '111', 'Lower Cret', 'Lower Cretaceous', '下白垩统', '145.0-100.5', '下白垩统', '0', '', '1', '1489376273', '1489376273');
INSERT INTO `dn_geo_age` VALUES ('113', '112', 'Berriasian', 'Berriasian', '贝里阿斯阶', '145.0-139.8', '贝里阿斯阶', '0', '', '1', '1489376306', '1489376306');
INSERT INTO `dn_geo_age` VALUES ('114', '112', 'Valanginia', 'Valanginian', '瓦兰今阶', '139.8-132.9', '瓦兰今阶', '0', '', '1', '1489376335', '1489376335');
INSERT INTO `dn_geo_age` VALUES ('115', '112', 'Hauterivia', 'Hauterivian', '欧特里夫阶', '132.9-129.4', '欧特里夫阶', '0', '', '1', '1489376368', '1489376368');
INSERT INTO `dn_geo_age` VALUES ('116', '112', 'Barremian', 'Barremian', '巴雷姆阶', '129.4-125.0', '巴雷姆阶', '0', '', '1', '1489376396', '1489376396');
INSERT INTO `dn_geo_age` VALUES ('117', '112', 'Aptian', 'Aptian', '阿普特阶', '125.0-113.0', '阿普特阶', '0', '', '1', '1489376429', '1489376429');
INSERT INTO `dn_geo_age` VALUES ('118', '112', 'Albian', 'Albian', '阿尔布阶', '113.0-100.5', '阿尔布阶', '0', '', '1', '1489376458', '1489376458');
INSERT INTO `dn_geo_age` VALUES ('119', '111', 'Upper Cret', 'Upper Cretaceous', '上白垩统', '100.5-66.0', '上白垩统', '0', '', '1', '1489376489', '1489376489');
INSERT INTO `dn_geo_age` VALUES ('120', '119', 'Cenomanian', 'Cenomanian', '塞诺曼阶', '100.5-93.9', '塞诺曼阶', '0', '', '1', '1489376522', '1489376522');
INSERT INTO `dn_geo_age` VALUES ('121', '119', 'Turonian', 'Turonian', '土伦阶', '93.9-89.8 ±0.3', '土伦阶', '0', '', '1', '1489376556', '1489376556');
INSERT INTO `dn_geo_age` VALUES ('122', '119', 'Coniacian', 'Coniacian', '康尼亚克阶', '89.8 ±0.3-86.3 ±0.5', '康尼亚克阶', '0', '', '1', '1489376585', '1489376585');
INSERT INTO `dn_geo_age` VALUES ('123', '119', 'Santonian', 'Santonian', '圣通阶', '86.3 ±0.5-83.6 ±0.2', '圣通阶', '0', '', '1', '1489376612', '1489376612');
INSERT INTO `dn_geo_age` VALUES ('124', '119', 'Campanian', 'Campanian', '坎潘阶', '83.6 ±0.2-72.1 ±0.2', '坎潘阶', '0', '', '1', '1489376641', '1489376641');
INSERT INTO `dn_geo_age` VALUES ('125', '119', 'Maastricht', 'Maastrichtian', '马斯特里赫特阶', '72.1 ±0.2-66.0', '马斯特里赫特阶', '0', '', '1', '1489376669', '1489376669');
INSERT INTO `dn_geo_age` VALUES ('126', '4', 'Cenozoic', 'Cenozoic', '新生界', '66.0-现今', '新生界', '0', '', '1', '1489376745', '1489376745');
INSERT INTO `dn_geo_age` VALUES ('127', '126', 'Paleogene', 'Paleogene', '古近系', '66.0-23.03', '古近系', '0', '', '1', '1489376797', '1489376797');
INSERT INTO `dn_geo_age` VALUES ('128', '127', 'Paleocene', 'Paleocene', '古新统', '66.0-56.0', '古新统', '0', '', '1', '1489376823', '1489376823');
INSERT INTO `dn_geo_age` VALUES ('129', '128', 'Danian', 'Danian', '丹麦阶', '66.0-61.6', '丹麦阶', '0', '', '1', '1489376852', '1489376852');
INSERT INTO `dn_geo_age` VALUES ('130', '128', 'Selandian', 'Selandian', '塞兰特阶', '61.6-59.2', '塞兰特阶', '0', '', '1', '1489376882', '1489376882');
INSERT INTO `dn_geo_age` VALUES ('131', '128', 'Thanetian', 'Thanetian', '坦尼特阶', '59.2-56.0', '坦尼特阶', '0', '', '1', '1489376909', '1489376909');
INSERT INTO `dn_geo_age` VALUES ('132', '127', 'Eocene', 'Eocene', '始新统', '56.0-33.9', '始新统', '0', '', '1', '1489376939', '1489376939');
INSERT INTO `dn_geo_age` VALUES ('133', '132', 'Ypresian', 'Ypresian', '伊普里斯阶', '56.0-47.8', '伊普里斯阶', '0', '', '1', '1489376971', '1489376971');
INSERT INTO `dn_geo_age` VALUES ('134', '132', 'Lutetian', 'Lutetian', '卢泰特阶', '47.8-41.2', '卢泰特阶', '0', '', '1', '1489377001', '1489377001');
INSERT INTO `dn_geo_age` VALUES ('135', '132', 'Bartonian', 'Bartonian', '巴顿阶', '41.2-37.8', '巴顿阶', '0', '', '1', '1489377030', '1489377030');
INSERT INTO `dn_geo_age` VALUES ('136', '132', 'Priabonian', 'Priabonian', '普利亚本阶', '37.8-33.9', '普利亚本阶', '0', '', '1', '1489377062', '1489377062');
INSERT INTO `dn_geo_age` VALUES ('137', '127', 'Oligocene', 'Oligocene', '渐新统', '33.9-23.03', '渐新统', '0', '', '1', '1489377083', '1489378011');
INSERT INTO `dn_geo_age` VALUES ('138', '137', 'Rupelian', 'Rupelian', '吕珀尔阶', '33.9-28.1', '吕珀尔阶', '0', '', '1', '1489377113', '1489377113');
INSERT INTO `dn_geo_age` VALUES ('139', '137', 'Chattian', 'Chattian', '夏特阶', '28.1-23.03', '夏特阶', '0', '', '1', '1489377145', '1489377145');
INSERT INTO `dn_geo_age` VALUES ('140', '126', 'Neogene', 'Neogene', '新近系', '23.03-5.333', '新近系', '0', '', '1', '1489377220', '1489377220');
INSERT INTO `dn_geo_age` VALUES ('141', '140', 'Miocene', 'Miocene', '中新统', '23.03-5.333', '中新统', '0', '', '1', '1489377248', '1489377248');
INSERT INTO `dn_geo_age` VALUES ('142', '141', 'Aquitanian', 'Aquitanian', '阿基坦阶', '23.03-20.44', '阿基坦阶', '0', '', '1', '1489377278', '1489377278');
INSERT INTO `dn_geo_age` VALUES ('143', '141', 'Burdigalia', 'Burdigalian', '波尔多阶', '20.44-15.97', '波尔多阶', '0', '', '1', '1489377303', '1489377303');
INSERT INTO `dn_geo_age` VALUES ('144', '141', 'Langhian', 'Langhian', '兰盖阶', '15.97-13.82', '兰盖阶', '0', '', '1', '1489377334', '1489377334');
INSERT INTO `dn_geo_age` VALUES ('145', '141', 'Serravalli', 'Serravallian', '塞拉瓦莱阶', '13.82-11.63', '塞拉瓦莱阶', '0', '', '1', '1489377366', '1489377366');
INSERT INTO `dn_geo_age` VALUES ('146', '141', 'Tortonian', 'Tortonian', '托尔托纳阶', '11.63-7.246', '托尔托纳阶', '0', '', '1', '1489377396', '1489377396');
INSERT INTO `dn_geo_age` VALUES ('147', '141', 'Messinian', 'Messinian', '墨西拿阶', '7.246-5.333', '墨西拿阶', '0', '', '1', '1489377430', '1489377430');
INSERT INTO `dn_geo_age` VALUES ('151', '140', 'Pliocene', 'Pliocene', '上新统', '5.333-2.58', '上新统', '0', '', '1', '1489377533', '1489377533');
INSERT INTO `dn_geo_age` VALUES ('152', '151', 'Zanclean', 'Zanclean', '赞克勒阶', '5.333-3.600', '赞克勒阶', '0', '', '1', '1489377561', '1489377561');
INSERT INTO `dn_geo_age` VALUES ('153', '151', 'Piacenzian', 'Piacenzian', '皮亚琴察阶', '3.600-2.58', '皮亚琴察阶', '0', '', '1', '1489377588', '1489377588');
INSERT INTO `dn_geo_age` VALUES ('154', '126', 'Quaternary', 'Quaternary', '第四系', '2.58-现今', '第四系', '0', '', '1', '1489377628', '1489377628');
INSERT INTO `dn_geo_age` VALUES ('155', '154', 'Pleistocen', 'Pleistocene', '更新统', '2.58-0.0117', '更新统', '0', '', '1', '1489377659', '1489377659');
INSERT INTO `dn_geo_age` VALUES ('156', '155', 'Gelasian', 'Gelasian', '杰拉阶', '2.58-1.80', '杰拉阶', '0', '', '1', '1489377685', '1489377685');
INSERT INTO `dn_geo_age` VALUES ('157', '155', 'Calabrian', 'Calabrian', '卡拉布里雅阶', '1.80-0.781', '卡拉布里雅阶', '0', '', '1', '1489377718', '1489377718');
INSERT INTO `dn_geo_age` VALUES ('158', '155', 'Middle Ple', 'Middle Pleistocene', '更新统中阶', '0.781-0.126', '更新统中阶', '0', '', '1', '1489377783', '1489377783');
INSERT INTO `dn_geo_age` VALUES ('159', '155', 'Upper Plei', 'Upper Pleistocene', '更新统上阶', '0.126-0.0117', '更新统上阶', '0', '', '1', '1489377820', '1489377820');
INSERT INTO `dn_geo_age` VALUES ('160', '154', 'Holocene', 'Holocene', '全新统', '0.0117-现今', '全新统', '0', '', '1', '1489377865', '1489377865');
