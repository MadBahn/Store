/*
MySQL Backup
Database: cake
Backup Time: 2021-12-04 14:13:50
*/

SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `cake`.`_partition`;
DROP TABLE IF EXISTS `cake`.`goods`;
DROP TABLE IF EXISTS `cake`.`type`;
CREATE TABLE `_partition` (
  `partition_id` varchar(255) NOT NULL,
  `partition_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`partition_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
CREATE TABLE `goods` (
  `goods_id` varchar(11) NOT NULL,
  `goods_name` varchar(255) DEFAULT NULL,
  `goods_price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `goods_info` varchar(255) DEFAULT NULL,
  `goods_stock` int DEFAULT NULL,
  `goods_photourl` varchar(255) DEFAULT NULL,
  `partition_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`goods_id`),
  KEY `partition_id` (`partition_id`),
  KEY `type_id` (`type_id`),
  CONSTRAINT `partition_id` FOREIGN KEY (`partition_id`) REFERENCES `_partition` (`partition_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `type_id` FOREIGN KEY (`type_id`) REFERENCES `type` (`type_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
CREATE TABLE `type` (
  `type_id` varchar(255) NOT NULL,
  `type_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
BEGIN;
LOCK TABLES `cake`.`_partition` WRITE;
DELETE FROM `cake`.`_partition`;
INSERT INTO `cake`.`_partition` (`partition_id`,`partition_name`) VALUES ('P001', '测试'),('P002', '生日'),('P003', '聚会'),('P004', '儿童'),('P005', '新品');
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `cake`.`goods` WRITE;
DELETE FROM `cake`.`goods`;
INSERT INTO `cake`.`goods` (`goods_id`,`goods_name`,`goods_price`,`goods_info`,`goods_stock`,`goods_photourl`,`partition_id`,`type_id`) VALUES ('G00001', '慕斯蛋糕', '20', NULL, 2000, '//oss.51cocoa.com//upload/images/30e42be45db72146213dffb5a40f9161.png', 'P003', 'T001'),('G00002', '芝士蛋糕', '20', NULL, 3000, '//oss.51cocoa.com//upload/images/20210910/ce75550425345bbad688e2bde3311c23.png', 'P002', 'T001'),('G00003', '草莓蛋糕', '30', NULL, 3000, '//oss.51cocoa.com//upload/images/c08f540d4088cd0b6e65da8302f6afdd.png', 'P003', 'T001'),('G00004', '黑森林', '20', NULL, 2000, '//oss.51cocoa.com//upload/images/3723e4875bb28d90eb77cbeda8b58f55.jpg', 'P004', 'T001'),('G00005', '巧克力蛋糕', '25', NULL, 2000, '//oss.51cocoa.com//upload/images/2bd6022d079dafb61d084658bded8e77.png', 'P002', 'T001'),('G00006', '抹茶蛋糕', '20', NULL, 3000, '//oss.51cocoa.com//upload/images/aa46badc0d863063dcdb9afa1d2074f0.png', 'P005', 'T001'),('G00007', '寿星蛋糕', '40', NULL, 2000, '\r\n//oss.51cocoa.com//upload/images/523259029cb1ff789d9b0beacf51b315.png', 'P005', 'T001'),('G00008', '战斗蛋糕', '20', 'Suka Blyat!!', 2000, '//oss.51cocoa.com//upload/images/20211011/deb79e715351124f3c61c9220623821b.jpg', 'P004', 'T001'),('G00009', '酒鬼蛋糕', '20', 'Brra', 3000, '//oss.51cocoa.com//upload/images/f3b57b18e54f65a5c015a196d2e993cf.png', 'P002', 'T001'),('G00010', '伊万蛋糕', '30', 'Aaaaaaaaaaaaaaaaaaaahhhhh!!!!!!', 3000, '//oss.51cocoa.com//upload/images/327595e905e1fb3385478b4b6d2253fc.jpg', 'P002', 'T001'),('G00011', '小面包', '10', NULL, 3000, '//oss.51cocoa.com//upload/images/20210927/2c8a009821726d3f2d3abd9b1c54d961.jpg', 'P002', 'T002'),('G00012', '热狗', '15', NULL, 2000, '//oss.51cocoa.com//upload/images/205c7b4a9b21f7beb4c52406fa005018.jpg', 'P003', 'T002'),('G00013', '吐司', '10', NULL, 3000, '//oss.51cocoa.com//upload/images/b0e11980ae67f90e4a071a39e8e23f1d.jpg', 'P002', 'T002');
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `cake`.`type` WRITE;
DELETE FROM `cake`.`type`;
INSERT INTO `cake`.`type` (`type_id`,`type_name`) VALUES ('T001', '蛋糕'),('T002', '面包'),('T003', '饼干');
UNLOCK TABLES;
COMMIT;
