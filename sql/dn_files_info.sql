CREATE TABLE `dn_files_info` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned NOT NULL DEFAULT '0',
  `bucket` varchar(255) NOT NULL DEFAULT '',
  `fname` varchar(512) NOT NULL DEFAULT '',
  `fkey` varchar(128) NOT NULL DEFAULT '',
  `fdes` varchar(2048) NOT NULL DEFAULT '',
  `ctime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fkey` (`fkey`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;