/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 50727
 Source Host           : localhost:3306
 Source Schema         : base

 Target Server Type    : MySQL
 Target Server Version : 50727
 File Encoding         : 65001

 Date: 01/11/2019 17:59:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for image
-- ----------------------------
DROP TABLE IF EXISTS `image`;
CREATE TABLE `image`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime(0) NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `del_flag` tinyint(1) NULL DEFAULT 0,
  `user_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `master_image_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `image_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` int(1) NULL DEFAULT NULL COMMENT '0：原图，1缩略图',
  `mongo_collection_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of image
-- ----------------------------
INSERT INTO `image` VALUES ('TIMAGE_04e7d04b83f441c687dbc8f41b815610', '2019-11-01 16:01:48', '2019-11-01 16:01:48', NULL, NULL, 0, 'TBUSER8baae1b2c33d4df099bdf77fab88fe60', '5dbbe66b23b0579f58f37db5', '5dbbe66b23b0579f58f37db8', NULL, 'e66582bafea00ba28960c7f3b1def001');
INSERT INTO `image` VALUES ('TIMAGE_681d10a67d754836be77d670c82b628c', '2019-11-01 11:56:03', '2019-11-01 11:56:03', NULL, NULL, 0, 'TBUSER8baae1b2c33d4df099bdf77fab88fe60', '5dbbacd323b057861c544376', '5dbbacd323b057861c544379', NULL, 'e66582bafea00ba28960c7f3b1def001');
INSERT INTO `image` VALUES ('TIMAGE_7c02d41814534920b109e4fe1904a89b', '2019-11-01 11:49:59', '2019-11-01 11:49:59', NULL, NULL, 0, 'TBUSER8baae1b2c33d4df099bdf77fab88fe60', '5dbbab6623b05719d01b7260', '5dbbab6723b05719d01b7263', NULL, 'e66582bafea00ba28960c7f3b1def001');
INSERT INTO `image` VALUES ('TIMAGE_bb44a20b84004112b886cfd98b263870', '2019-11-01 16:29:11', '2019-11-01 16:29:11', NULL, NULL, 0, 'TBUSER8baae1b2c33d4df099bdf77fab88fe60', '5dbbecd723b0576d2877b134', '5dbbecd723b0576d2877b137', NULL, 'e66582bafea00ba28960c7f3b1def001');
INSERT INTO `image` VALUES ('TIMAGE_fddd3244ee46480399d9f5f5df945013', '2019-11-01 12:02:28', '2019-11-01 12:02:28', NULL, NULL, 0, 'TBUSER8baae1b2c33d4df099bdf77fab88fe60', '5dbbae5323b057861c54437c', '5dbbae5323b057861c54437f', NULL, 'e66582bafea00ba28960c7f3b1def001');

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `permission_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `permission_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `del_flag` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES ('1', '用户查看', 'USER_VIEW', '/auth/index', NULL, NULL, NULL, NULL, 0);
INSERT INTO `permission` VALUES ('2', '用户操作', 'USER_OPERATE', '/auth/operate', NULL, NULL, NULL, NULL, 0);
INSERT INTO `permission` VALUES ('3', '上传图片', 'MONGO_UPLOAD', '/mongo/uploa', NULL, NULL, NULL, NULL, 0);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `role_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `del_flag` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '超级管理员', NULL, NULL, NULL, NULL, 0);
INSERT INTO `role` VALUES ('2', '普通用户', NULL, NULL, NULL, NULL, 0);

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `role_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `permission_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `del_flag` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO `role_permission` VALUES ('1', '1', '1', NULL, NULL, NULL, NULL, 0);
INSERT INTO `role_permission` VALUES ('2', '1', '2', NULL, NULL, NULL, NULL, 0);
INSERT INTO `role_permission` VALUES ('3', '2', '1', NULL, NULL, NULL, NULL, 0);
INSERT INTO `role_permission` VALUES ('4', '1', '3', NULL, NULL, NULL, NULL, 0);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'id',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `locked` tinyint(1) UNSIGNED ZEROFILL NOT NULL DEFAULT 0,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `del_flag` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '18890069792', 'root', '123456', 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `user` VALUES ('2', '18762654152', 'wang', '123456', 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `user` VALUES ('TBUSER8baae1b2c33d4df099bdf77fab88fe60', '18846085334', NULL, '123456', 0, '2019-10-31 15:08:54', '2019-10-31 15:08:54', NULL, NULL, 0);

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `role_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `del_flag` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('1', '1', '1', NULL, NULL, NULL, NULL, 0);
INSERT INTO `user_role` VALUES ('2', '2', '2', NULL, NULL, NULL, NULL, 0);
INSERT INTO `user_role` VALUES ('3', 'TBUSER8baae1b2c33d4df099bdf77fab88fe60', '1', NULL, NULL, NULL, NULL, 0);

SET FOREIGN_KEY_CHECKS = 1;
