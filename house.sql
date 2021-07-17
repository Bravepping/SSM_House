/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50730
 Source Host           : localhost:3306
 Source Schema         : house

 Target Server Type    : MySQL
 Target Server Version : 50730
 File Encoding         : 65001

 Date: 17/07/2021 08:59:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for apply
-- ----------------------------
DROP TABLE IF EXISTS `apply`;
CREATE TABLE `apply`  (
  `apply_id` int(11) NOT NULL AUTO_INCREMENT,
  `house_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `area` double(255, 0) NULL DEFAULT NULL,
  `price` double(10, 2) NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userlist_id` int(255) NOT NULL,
  PRIMARY KEY (`apply_id`, `house_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of apply
-- ----------------------------
INSERT INTO `apply` VALUES (4, '1001', '浙江省杭州市', 100, 200.00, '申请中', 1);

-- ----------------------------
-- Table structure for applyout
-- ----------------------------
DROP TABLE IF EXISTS `applyout`;
CREATE TABLE `applyout`  (
  `aoid` int(11) NOT NULL AUTO_INCREMENT,
  `house_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userlist_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`aoid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of applyout
-- ----------------------------

-- ----------------------------
-- Table structure for checkout
-- ----------------------------
DROP TABLE IF EXISTS `checkout`;
CREATE TABLE `checkout`  (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `house_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userlist_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of checkout
-- ----------------------------

-- ----------------------------
-- Table structure for hetong
-- ----------------------------
DROP TABLE IF EXISTS `hetong`;
CREATE TABLE `hetong`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chuzu` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `chuzu_idcard` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zuke` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zuke_idcard` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fromdate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `todate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` double(10, 2) NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `house_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `payday` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of hetong
-- ----------------------------

-- ----------------------------
-- Table structure for houselist
-- ----------------------------
DROP TABLE IF EXISTS `houselist`;
CREATE TABLE `houselist`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `houseid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `area` double NULL DEFAULT NULL,
  `price` double(10, 2) NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `houseid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of houselist
-- ----------------------------
INSERT INTO `houselist` VALUES (23, '1002', '江西省九江市', 100, 200.00, '未租赁');

-- ----------------------------
-- Table structure for paid
-- ----------------------------
DROP TABLE IF EXISTS `paid`;
CREATE TABLE `paid`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `house_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` double(10, 2) NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `paydate` date NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userlist_id` int(11) NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of paid
-- ----------------------------

-- ----------------------------
-- Table structure for schedule
-- ----------------------------
DROP TABLE IF EXISTS `schedule`;
CREATE TABLE `schedule`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of schedule
-- ----------------------------

-- ----------------------------
-- Table structure for solve
-- ----------------------------
DROP TABLE IF EXISTS `solve`;
CREATE TABLE `solve`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `house_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `detail` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userlist_id` int(11) NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of solve
-- ----------------------------

-- ----------------------------
-- Table structure for topaid
-- ----------------------------
DROP TABLE IF EXISTS `topaid`;
CREATE TABLE `topaid`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `house_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` double(10, 2) NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userlist_id` int(11) NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of topaid
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', '123123', 'admin');
INSERT INTO `user` VALUES (5, 'cjp', '123123', 'zuke');
INSERT INTO `user` VALUES (6, '123456789', 'zxc123123', 'zuke');
INSERT INTO `user` VALUES (7, '13578901', '135789', 'zuke');
INSERT INTO `user` VALUES (8, '123001', '123001', 'zuke');
INSERT INTO `user` VALUES (12, '1357890', '1357890', 'zuke');

-- ----------------------------
-- Table structure for userlist
-- ----------------------------
DROP TABLE IF EXISTS `userlist`;
CREATE TABLE `userlist`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `idcard` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`, `idcard`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of userlist
-- ----------------------------
INSERT INTO `userlist` VALUES (1, 'zly', '111', '15188888888', 2);

-- ----------------------------
-- Table structure for wrong
-- ----------------------------
DROP TABLE IF EXISTS `wrong`;
CREATE TABLE `wrong`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `house_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `detail` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userlist_id` int(11) NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of wrong
-- ----------------------------

-- ----------------------------
-- Table structure for zulist
-- ----------------------------
DROP TABLE IF EXISTS `zulist`;
CREATE TABLE `zulist`  (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `house_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` double(10, 2) NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userlist_id` int(11) NOT NULL,
  `contract_id` int(11) NOT NULL,
  PRIMARY KEY (`zid`, `house_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of zulist
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
