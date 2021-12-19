/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : localhost:3306
 Source Schema         : cake

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 19/12/2021 20:59:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for _partition
-- ----------------------------
DROP TABLE IF EXISTS `_partition`;
CREATE TABLE `_partition`  (
  `partition_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `partition_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`partition_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of _partition
-- ----------------------------
INSERT INTO `_partition` VALUES ('P001', '测试');
INSERT INTO `_partition` VALUES ('P002', '生日');
INSERT INTO `_partition` VALUES ('P003', '聚会');
INSERT INTO `_partition` VALUES ('P004', '儿童');
INSERT INTO `_partition` VALUES ('P005', '新品');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `cart_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cart_information` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cart_univalence` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dealt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`cart_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `cart_information`(`cart_information`) USING BTREE,
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES ('C1638715822965G00007', '寿星蛋糕', '40', '123456789', 'yes');
INSERT INTO `cart` VALUES ('C1638715924201G00006', '抹茶蛋糕', '20', '123456789', 'processing');
INSERT INTO `cart` VALUES ('C1638716853098G00002', '芝士蛋糕', '20', '123456789', 'yes');
INSERT INTO `cart` VALUES ('C1638716858338G00003', '草莓蛋糕', '30', '123456789', 'yes');
INSERT INTO `cart` VALUES ('C1638761003656G00004', '黑森林', '20', '123456789', 'yes');
INSERT INTO `cart` VALUES ('C1638761211869G00003', '草莓蛋糕', '30', '123456789', 'yes');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `goods_id` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `goods_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goods_price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goods_info` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goods_stock` int NULL DEFAULT NULL,
  `goods_photourl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `partition_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`goods_id`) USING BTREE,
  INDEX `partition_id`(`partition_id`) USING BTREE,
  INDEX `type_id`(`type_id`) USING BTREE,
  CONSTRAINT `partition_id` FOREIGN KEY (`partition_id`) REFERENCES `_partition` (`partition_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `type_id` FOREIGN KEY (`type_id`) REFERENCES `type` (`type_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('G00002', '芝士蛋糕', '20', 'null', 3000, '//oss.51cocoa.com//upload/images/20210910/ce75550425345bbad688e2bde3311c23.png', 'P002', 'T001');
INSERT INTO `goods` VALUES ('G00003', '草莓蛋糕', '30', NULL, 3000, '//oss.51cocoa.com//upload/images/c08f540d4088cd0b6e65da8302f6afdd.png', 'P003', 'T001');
INSERT INTO `goods` VALUES ('G00004', '黑森林', '20', '黑漆马虎滴', 2000, '//oss.51cocoa.com//upload/images/3723e4875bb28d90eb77cbeda8b58f55.jpg', 'P004', 'T001');
INSERT INTO `goods` VALUES ('G00005', '巧克力蛋糕', '25', NULL, 2000, '//oss.51cocoa.com//upload/images/2bd6022d079dafb61d084658bded8e77.png', 'P002', 'T001');
INSERT INTO `goods` VALUES ('G00006', '抹茶蛋糕', '20', NULL, 3000, '//oss.51cocoa.com//upload/images/aa46badc0d863063dcdb9afa1d2074f0.png', 'P005', 'T001');
INSERT INTO `goods` VALUES ('G00007', '寿星蛋糕', '40', NULL, 2000, '\r\n//oss.51cocoa.com//upload/images/523259029cb1ff789d9b0beacf51b315.png', 'P005', 'T001');
INSERT INTO `goods` VALUES ('G00008', '战斗蛋糕', '20', 'Suka Blyat!!', 2000, '//oss.51cocoa.com//upload/images/20211011/deb79e715351124f3c61c9220623821b.jpg', 'P004', 'T001');
INSERT INTO `goods` VALUES ('G00009', '酒鬼蛋糕', '20', 'Brra', 3000, '//oss.51cocoa.com//upload/images/f3b57b18e54f65a5c015a196d2e993cf.png', 'P002', 'T001');
INSERT INTO `goods` VALUES ('G00010', '伊万蛋糕', '30', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊！！！', 3000, '//oss.51cocoa.com//upload/images/327595e905e1fb3385478b4b6d2253fc.jpg', 'P002', 'T001');
INSERT INTO `goods` VALUES ('G00011', '小面包', '10', '好小！', 3000, '//oss.51cocoa.com//upload/images/20210927/2c8a009821726d3f2d3abd9b1c54d961.jpg', 'P002', 'T002');
INSERT INTO `goods` VALUES ('G00012', '热狗', '15', '有根脆蹦的烤肠', 2000, '//oss.51cocoa.com//upload/images/205c7b4a9b21f7beb4c52406fa005018.jpg', 'P003', 'T002');
INSERT INTO `goods` VALUES ('G00013', '吐司', '10', NULL, 3000, '//oss.51cocoa.com//upload/images/b0e11980ae67f90e4a071a39e8e23f1d.jpg', 'P002', 'T002');

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item`  (
  `item_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `item_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `item_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cart_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `goods_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `accept` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`item_id`) USING BTREE,
  INDEX `goods_name`(`goods_name`) USING BTREE,
  INDEX `cart_id`(`cart_id`) USING BTREE,
  CONSTRAINT `cart_id` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`cart_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `goods_name` FOREIGN KEY (`goods_name`) REFERENCES `cart` (`cart_information`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES ('I1638715926113123456789', NULL, 'Sun Dec 05 22:52:06 CST 2021', 'C1638715822965G00007', '寿星蛋糕', NULL);
INSERT INTO `item` VALUES ('I1638715926152123456789', NULL, 'Sun Dec 05 22:52:06 CST 2021', 'C1638715924201G00006', '抹茶蛋糕', NULL);
INSERT INTO `item` VALUES ('I1638761100721123456789', 'dfasf', 'Mon Dec 06 11:25:00 CST 2021', 'C1638715822965G00007', '寿星蛋糕', NULL);
INSERT INTO `item` VALUES ('I1638761100777123456789', 'dfasf', 'Mon Dec 06 11:25:00 CST 2021', 'C1638715924201G00006', '抹茶蛋糕', NULL);
INSERT INTO `item` VALUES ('I1638761218876123456789', 'dfasf', 'Mon Dec 06 11:26:58 CST 2021', 'C1638715822965G00007', '寿星蛋糕', NULL);
INSERT INTO `item` VALUES ('I1638761218881123456789', 'dfasf', 'Mon Dec 06 11:26:58 CST 2021', 'C1638715924201G00006', '抹茶蛋糕', NULL);
INSERT INTO `item` VALUES ('I1638761218889123456789', 'dfasf', 'Mon Dec 06 11:26:58 CST 2021', 'C1638716853098G00002', '芝士蛋糕', NULL);
INSERT INTO `item` VALUES ('I1638761218936123456789', 'dfasf', 'Mon Dec 06 11:26:58 CST 2021', 'C1638716858338G00003', '草莓蛋糕', NULL);
INSERT INTO `item` VALUES ('I1638761218945123456789', 'dfasf', 'Mon Dec 06 11:26:58 CST 2021', 'C1638761003656G00004', '黑森林', NULL);
INSERT INTO `item` VALUES ('I1638761218960123456789', 'dfasf', 'Mon Dec 06 11:26:58 CST 2021', 'C1638761211869G00003', '草莓蛋糕', NULL);

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type`  (
  `type_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES ('T001', '蛋糕');
INSERT INTO `type` VALUES ('T002', '面包');
INSERT INTO `type` VALUES ('T003', '饼干');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_birthday` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('123456789', '11111111', 'asd', 'm', 'dfasf', '+86643543534', '45456@gmail.com', '2008-12-01');
INSERT INTO `user` VALUES ('17784695858', '123456', 'admin', 'm', '123', '17784695858', '123@gmail.com', NULL);
INSERT INTO `user` VALUES ('2331211212', '11111111', NULL, NULL, NULL, '2331211212', NULL, '2021-12-03');

SET FOREIGN_KEY_CHECKS = 1;
