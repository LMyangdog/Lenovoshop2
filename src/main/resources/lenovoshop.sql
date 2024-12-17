/*
 Navicat Premium Data Transfer

 Source Server         : lenovo
 Source Server Type    : MySQL
 Source Server Version : 80040 (8.0.40)
 Source Host           : localhost:3306
 Source Schema         : lenovoshop

 Target Server Type    : MySQL
 Target Server Version : 80040 (8.0.40)
 File Encoding         : 65001

 Date: 18/12/2024 20:56:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_newbee_mall_admin_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_newbee_mall_admin_user`;
CREATE TABLE `tb_newbee_mall_admin_user`  (
  `admin_user_id` int NOT NULL AUTO_INCREMENT COMMENT '管理员id',
  `login_user_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '管理员登陆名称',
  `login_password` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '管理员登陆密码',
  `nick_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '管理员显示昵称',
  `locked` tinyint NULL DEFAULT 0 COMMENT '是否锁定 0未锁定 1已锁定无法登陆',
  PRIMARY KEY (`admin_user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_newbee_mall_admin_user
-- ----------------------------
INSERT INTO `tb_newbee_mall_admin_user` VALUES (1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '十三', 0);
INSERT INTO `tb_newbee_mall_admin_user` VALUES (2, 'newbee-admin1', 'e10adc3949ba59abbe56e057f20f883e', '新蜂01', 0);
INSERT INTO `tb_newbee_mall_admin_user` VALUES (3, 'newbee-admin2', 'e10adc3949ba59abbe56e057f20f883e', '新蜂02', 0);

-- ----------------------------
-- Table structure for tb_newbee_mall_carousel
-- ----------------------------
DROP TABLE IF EXISTS `tb_newbee_mall_carousel`;
CREATE TABLE `tb_newbee_mall_carousel`  (
  `carousel_id` int NOT NULL AUTO_INCREMENT COMMENT '首页轮播图主键id',
  `carousel_url` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '轮播图',
  `redirect_url` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '\'##\'' COMMENT '点击后的跳转地址(默认不跳转)',
  `carousel_rank` int NOT NULL DEFAULT 0 COMMENT '排序值(字段越大越靠前)',
  `is_deleted` tinyint NOT NULL DEFAULT 0 COMMENT '删除标识字段(0-未删除 1-已删除)',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_user` int NOT NULL DEFAULT 0 COMMENT '创建者id',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `update_user` int NOT NULL DEFAULT 0 COMMENT '修改者id',
  PRIMARY KEY (`carousel_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_newbee_mall_carousel
-- ----------------------------
INSERT INTO `tb_newbee_mall_carousel` VALUES (2, 'https://newbee-mall.oss-cn-beijing.aliyuncs.com/images/banner1.png', 'https://juejin.im/book/5da2f9d4f265da5b81794d48/section/5da2f9d6f265da5b794f2189', 13, 0, '2019-11-29 00:00:00', 0, '2019-11-29 00:00:00', 0);
INSERT INTO `tb_newbee_mall_carousel` VALUES (5, 'https://newbee-mall.oss-cn-beijing.aliyuncs.com/images/banner2.png', 'https://juejin.im/book/5da2f9d4f265da5b81794d48/section/5da2f9d6f265da5b794f2189', 0, 0, '2019-11-29 00:00:00', 0, '2019-11-29 00:00:00', 0);

-- ----------------------------
-- Table structure for tb_newbee_mall_goods_category
-- ----------------------------
DROP TABLE IF EXISTS `tb_newbee_mall_goods_category`;
CREATE TABLE `tb_newbee_mall_goods_category`  (
  `category_id` bigint NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `category_level` tinyint NOT NULL DEFAULT 0 COMMENT '分类级别(1-一级分类 2-二级分类 3-三级分类)',
  `parent_id` bigint NOT NULL DEFAULT 0 COMMENT '父分类id',
  `category_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '分类名称',
  `category_rank` int NOT NULL DEFAULT 0 COMMENT '排序值(字段越大越靠前)',
  `is_deleted` tinyint NOT NULL DEFAULT 0 COMMENT '删除标识字段(0-未删除 1-已删除)',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_user` int NOT NULL DEFAULT 0 COMMENT '创建者id',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `update_user` int NULL DEFAULT 0 COMMENT '修改者id',
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 158 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_newbee_mall_goods_category
-- ----------------------------
INSERT INTO `tb_newbee_mall_goods_category` VALUES (15, 1, 0, 'lenovo电脑', 100, 0, '2019-09-11 18:45:40', 0, '2024-12-11 14:34:33', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (16, 1, 0, 'Think Pad电脑', 99, 0, '2019-09-11 18:46:07', 0, '2024-12-11 14:37:14', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (17, 2, 15, '电竞游戏本', 10, 0, '2019-09-11 18:46:32', 0, '2024-12-11 14:40:30', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (18, 2, 15, '轻薄办公本', 9, 0, '2019-09-11 18:46:43', 0, '2024-12-11 14:40:39', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (19, 2, 15, '极致轻薄本', 8, 0, '2019-09-11 18:46:52', 0, '2024-12-11 14:41:00', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (20, 3, 17, '拯救者 Y9000P AI元启', 0, 0, '2019-09-11 18:47:38', 0, '2024-12-11 14:43:27', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (21, 3, 17, '拯救者 Y9000X AI元启', 0, 0, '2019-09-11 18:47:49', 0, '2024-12-11 14:43:44', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (22, 3, 17, '拯救者 Y7000P AI元启', 0, 0, '2019-09-11 18:47:58', 0, '2024-12-11 14:44:08', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (23, 3, 17, '拯救者 R9000P', 0, 0, '2019-09-11 18:48:06', 0, '2024-12-11 14:44:42', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (24, 3, 17, '拯救者 Y7000', 0, 0, '2019-09-11 18:48:12', 0, '2024-12-11 14:45:00', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (25, 3, 17, '拯救者 R7000', 0, 0, '2019-09-11 18:48:26', 0, '2024-12-11 14:45:33', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (26, 3, 17, '拯救者 R7000P', 0, 0, '2019-09-11 18:48:40', 0, '2024-12-11 14:45:58', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (27, 3, 17, '拯救者 R9000X', 0, 0, '2019-09-11 18:48:50', 0, '2024-12-11 14:46:29', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (28, 3, 17, '蓝牙音箱', 0, 1, '2019-09-11 18:48:57', 0, '2019-09-11 18:48:57', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (29, 3, 17, '烤箱', 0, 1, '2019-09-11 18:49:09', 0, '2019-09-11 18:49:09', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (30, 3, 17, '卷发器', 0, 1, '2019-09-11 18:49:19', 0, '2019-09-11 18:49:19', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (31, 3, 17, '空气净化器', 0, 1, '2019-09-11 18:49:30', 0, '2019-09-11 18:49:30', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (32, 3, 18, '小新Pro 16 AI元启', 0, 0, '2019-09-11 18:49:50', 0, '2024-12-11 14:47:47', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (33, 3, 18, '小新Pro 14 AI元启', 0, 0, '2019-09-11 18:49:55', 0, '2024-12-11 14:48:05', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (34, 3, 18, '小新 15 Air', 0, 0, '2019-09-11 18:50:08', 0, '2024-12-11 14:48:15', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (35, 3, 18, '小新 13 Air', 0, 0, '2019-09-11 18:50:24', 0, '2024-12-11 14:48:31', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (36, 3, 18, '小新 16', 0, 0, '2019-09-11 18:50:36', 0, '2024-12-11 14:48:48', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (37, 3, 18, '小新 15', 0, 0, '2019-09-11 18:50:57', 0, '2024-12-11 14:49:03', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (38, 3, 18, '小新 14', 0, 0, '2019-09-11 18:52:15', 0, '2024-12-11 14:49:11', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (39, 3, 18, '单反相机', 0, 1, '2019-09-11 18:52:26', 0, '2019-09-11 18:52:26', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (40, 3, 18, '键盘鼠标', 0, 1, '2019-09-11 18:52:46', 0, '2019-09-11 18:52:46', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (41, 3, 18, '无人机', 0, 1, '2019-09-11 18:53:01', 0, '2019-09-11 18:53:01', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (42, 3, 18, '二手电脑', 0, 1, '2019-09-11 18:53:08', 0, '2019-09-11 18:53:08', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (43, 3, 18, '二手手机', 0, 1, '2019-09-11 18:53:14', 0, '2019-09-11 18:53:14', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (44, 3, 19, 'YOGA Air 14c AI元启', 89, 0, '2019-09-11 18:53:49', 0, '2024-12-11 14:53:45', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (45, 3, 19, 'YOGA 15 Aura 元启', 99, 0, '2019-09-11 18:53:59', 0, '2024-12-11 14:51:39', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (46, 3, 19, 'YOGA  Pro 14  AI元启', 98, 0, '2019-09-11 18:54:20', 0, '2024-12-11 14:52:27', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (47, 3, 19, 'YOGA Air 14 AI元启', 88, 0, '2019-09-11 18:54:49', 0, '2024-12-11 14:54:10', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (48, 3, 19, 'YOGA  Pro 16s AI元启', 79, 0, '2019-09-11 18:55:03', 0, '2024-12-11 14:55:16', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (49, 3, 19, 'YOGA Air 14s AI元启', 97, 0, '2019-09-11 18:55:22', 0, '2024-12-11 14:53:19', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (50, 3, 19, '华为 P30 Pro', 0, 1, '2019-09-11 18:55:32', 0, '2019-09-11 18:55:32', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (51, 3, 19, 'YOGA  Pro 14s AI元启', 0, 0, '2019-09-11 18:55:52', 0, '2024-12-11 14:55:39', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (52, 3, 19, 'YOGA Book 9i AI元启', 0, 0, '2019-09-11 18:55:58', 0, '2024-12-11 14:56:15', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (53, 3, 19, 'OPPO', 0, 1, '2019-09-11 18:56:06', 0, '2019-09-11 18:56:06', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (54, 3, 19, '一加', 0, 1, '2019-09-11 18:56:12', 0, '2019-09-11 18:56:12', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (55, 3, 19, '小米 MIX', 0, 1, '2019-09-11 18:56:37', 0, '2019-09-11 18:56:37', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (56, 3, 19, 'Reno', 0, 1, '2019-09-11 18:56:49', 0, '2019-09-11 18:56:49', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (57, 3, 19, 'vivo', 0, 1, '2019-09-11 18:57:01', 0, '2019-09-11 18:57:01', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (58, 3, 19, '手机以旧换新', 0, 1, '2019-09-11 18:57:09', 0, '2019-09-11 18:57:09', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (59, 1, 0, '手机通信', 97, 0, '2019-09-12 00:08:46', 0, '2024-12-11 14:38:05', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (60, 1, 0, '全屋智能', 96, 0, '2019-09-12 00:09:00', 0, '2024-12-11 14:38:24', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (61, 1, 0, '平板电脑', 98, 0, '2019-09-12 00:09:27', 0, '2024-12-11 14:37:28', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (62, 1, 0, '配件 办公', 94, 0, '2019-09-12 00:09:51', 0, '2024-12-11 14:38:49', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (63, 1, 0, '增值服务', 93, 0, '2019-09-12 00:10:07', 0, '2024-12-11 14:39:01', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (64, 1, 0, '珠宝 金饰 眼镜', 92, 1, '2019-09-12 00:10:35', 0, '2019-09-12 00:16:30', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (65, 1, 0, '玩具 孕产 用品', 0, 1, '2019-09-12 00:11:17', 0, '2019-09-12 00:11:17', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (66, 1, 0, '鞋靴 箱包 配件', 91, 1, '2019-09-12 00:11:30', 0, '2019-09-12 00:11:30', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (67, 2, 16, 'ThinkPad', 10, 0, '2019-09-12 00:15:19', 0, '2024-12-11 15:00:32', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (68, 2, 16, 'ThinkCentre', 9, 0, '2019-09-12 00:15:28', 0, '2024-12-11 15:00:42', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (69, 2, 16, 'thinkplus', 8, 0, '2019-09-12 00:15:35', 0, '2024-12-11 15:00:57', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (70, 2, 61, 'YOGA平板', 10, 0, '2019-09-12 00:20:22', 0, '2024-12-11 15:06:52', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (71, 2, 61, '小新平板', 9, 0, '2019-09-12 00:20:29', 0, '2024-12-11 15:07:07', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (72, 2, 61, '拯救者平板', 8, 0, '2019-09-12 00:20:35', 0, '2024-12-11 15:07:19', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (73, 2, 59, '联想moto', 10, 0, '2019-09-12 00:20:49', 0, '2024-12-11 15:10:57', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (74, 2, 59, 'moto配件', 9, 0, '2019-09-12 00:20:58', 0, '2024-12-11 15:11:07', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (75, 2, 59, '170 171', 8, 0, '2019-09-12 00:21:05', 0, '2024-12-11 15:11:54', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (76, 3, 67, 'X1系列', 10, 0, '2019-09-12 00:21:55', 0, '2024-12-11 15:03:43', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (77, 3, 70, 'YOGA Pad Pro', 10, 0, '2019-09-12 00:22:21', 0, '2024-12-11 15:08:08', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (78, 3, 73, '联想moto S50', 10, 0, '2019-09-12 00:22:42', 0, '2024-12-11 15:12:42', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (79, 2, 60, '智能影音', 10, 0, '2019-09-12 00:23:13', 0, '2024-12-11 15:17:11', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (80, 2, 60, '智能储存', 9, 0, '2019-09-12 00:23:21', 0, '2024-12-11 15:17:22', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (81, 2, 60, '智能安防', 8, 0, '2019-09-12 00:23:27', 0, '2024-12-11 15:17:36', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (82, 3, 79, '小新 100GT', 10, 0, '2019-09-12 00:23:44', 0, '2024-12-11 15:18:19', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (83, 2, 62, '电脑周边', 10, 0, '2019-09-12 00:23:58', 0, '2024-12-11 15:38:18', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (84, 2, 62, '存储设备', 9, 0, '2019-09-12 00:24:07', 0, '2024-12-11 15:38:28', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (85, 2, 62, '显示生态', 8, 0, '2019-09-12 00:24:15', 0, '2024-12-11 15:38:47', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (86, 3, 83, '键盘', 10, 0, '2019-09-12 00:24:38', 0, '2024-12-11 15:39:35', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (87, 2, 63, '系统服务', 10, 0, '2019-09-12 00:24:56', 0, '2024-12-11 15:41:55', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (88, 2, 63, '清洁保养', 9, 0, '2019-09-12 00:25:05', 0, '2024-12-11 15:42:02', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (89, 2, 63, '诊断维修', 8, 0, '2019-09-12 00:25:12', 0, '2024-12-11 15:42:16', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (90, 3, 87, '重装系统', 10, 0, '2019-09-12 00:25:45', 0, '2024-12-11 15:44:23', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (91, 2, 64, '珠宝', 10, 0, '2019-09-12 00:26:10', 0, '2019-09-12 00:26:10', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (92, 2, 64, '金饰', 9, 0, '2019-09-12 00:26:18', 0, '2019-09-12 00:26:18', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (93, 2, 64, '眼镜', 8, 0, '2019-09-12 00:26:25', 0, '2019-09-12 00:26:25', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (94, 3, 91, '钻石', 10, 0, '2019-09-12 00:26:40', 0, '2019-09-12 00:26:40', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (95, 2, 66, '鞋靴', 10, 0, '2019-09-12 00:27:09', 0, '2019-09-12 00:27:09', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (96, 2, 66, '箱包', 9, 0, '2019-09-12 00:27:17', 0, '2019-09-12 00:27:17', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (97, 2, 66, '配件', 8, 0, '2019-09-12 00:27:23', 0, '2019-09-12 00:27:23', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (98, 3, 95, '休闲鞋', 10, 0, '2019-09-12 00:27:48', 0, '2019-09-12 00:27:48', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (99, 3, 83, '鼠标', 0, 0, '2019-09-17 18:24:23', 0, '2024-12-11 15:39:41', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (100, 3, 83, '鼠标防滑贴', 0, 0, '2019-09-17 18:24:36', 0, '2024-12-11 15:39:57', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (101, 3, 83, '水杯', 0, 0, '2019-09-17 18:27:04', 0, '2024-12-11 15:40:12', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (102, 3, 83, '鼠标垫', 0, 0, '2019-09-17 18:27:19', 0, '2024-12-11 15:40:21', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (103, 3, 83, '腮红', 0, 1, '2019-09-17 18:27:24', 0, '2019-09-17 18:27:24', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (104, 3, 83, '睫毛膏', 0, 1, '2019-09-17 18:27:47', 0, '2019-09-17 18:27:47', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (105, 3, 83, '香水', 0, 1, '2019-09-17 18:28:16', 0, '2019-09-17 18:28:16', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (106, 3, 83, '面膜', 0, 1, '2019-09-17 18:28:21', 0, '2019-09-17 18:28:21', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (107, 1, 0, '电脑', 90, 1, '2024-12-11 14:22:01', 0, '2024-12-11 14:22:01', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (108, 2, 15, '商务笔记本', 6, 0, '2024-12-11 14:41:20', 0, '2024-12-11 14:41:20', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (109, 2, 15, '分体台式机', 7, 0, '2024-12-11 14:41:41', 0, '2024-12-11 14:41:41', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (110, 2, 15, '游戏台式机', 5, 0, '2024-12-11 14:41:52', 0, '2024-12-11 14:41:52', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (111, 3, 67, 'T14p系列', 0, 0, '2024-12-11 15:03:58', 0, '2024-12-11 15:03:58', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (112, 3, 67, 'X13系列', 0, 0, '2024-12-11 15:04:18', 0, '2024-12-11 15:04:18', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (113, 3, 67, 'T14系列', 0, 0, '2024-12-11 15:04:36', 0, '2024-12-11 15:04:36', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (114, 3, 67, 'P系列', 0, 0, '2024-12-11 15:04:44', 0, '2024-12-11 15:04:44', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (115, 3, 68, 'neo系列', 0, 0, '2024-12-11 15:05:19', 0, '2024-12-11 15:05:19', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (116, 3, 69, '口红电源', 0, 0, '2024-12-11 15:05:54', 0, '2024-12-11 15:05:54', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (117, 3, 69, '商务箱包', 0, 0, '2024-12-11 15:06:07', 0, '2024-12-11 15:06:07', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (118, 3, 69, '耳机', 0, 0, '2024-12-11 15:06:19', 0, '2024-12-11 15:06:19', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (119, 2, 61, '平板配件', 0, 0, '2024-12-11 15:07:33', 0, '2024-12-11 15:07:33', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (120, 3, 71, '小新Pad', 0, 0, '2024-12-11 15:08:32', 0, '2024-12-11 15:08:32', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (121, 3, 71, '小新Pad Pro', 0, 0, '2024-12-11 15:08:45', 0, '2024-12-11 15:08:45', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (122, 3, 72, 'Y700', 0, 0, '2024-12-11 15:09:19', 0, '2024-12-11 15:09:19', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (123, 3, 119, '平板保护夹', 0, 0, '2024-12-11 15:09:35', 0, '2024-12-11 15:09:35', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (124, 3, 119, '平板保护膜', 0, 0, '2024-12-11 15:09:45', 0, '2024-12-11 15:09:45', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (125, 3, 119, '磁吸键盘及支架', 0, 0, '2024-12-11 15:10:17', 0, '2024-12-11 15:10:17', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (126, 3, 119, '触控笔', 0, 0, '2024-12-11 15:10:27', 0, '2024-12-11 15:10:27', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (127, 3, 73, '联想moto razr 50', 0, 0, '2024-12-11 15:13:03', 0, '2024-12-11 15:13:03', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (128, 3, 73, '联想moto 50 Ultra', 0, 0, '2024-12-11 15:13:34', 0, '2024-12-11 15:13:34', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (129, 3, 73, '联想moto S50 Neo', 0, 0, '2024-12-11 15:14:07', 0, '2024-12-11 15:14:07', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (130, 3, 73, '联想moto X50 Ultra', 0, 0, '2024-12-11 15:14:29', 0, '2024-12-11 15:14:29', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (131, 3, 74, '联想 moto buds 无线耳机', 0, 0, '2024-12-11 15:14:57', 0, '2024-12-11 15:14:57', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (132, 3, 74, '联想 moto 手机保护壳', 0, 0, '2024-12-11 15:15:38', 0, '2024-12-11 15:15:38', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (133, 3, 74, '联想 moto 手机充电器', 0, 0, '2024-12-11 15:16:01', 0, '2024-12-11 15:16:01', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (134, 3, 75, '懂陪伴', 0, 0, '2024-12-11 15:16:17', 0, '2024-12-11 15:16:17', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (135, 3, 75, '糖豆', 0, 0, '2024-12-11 15:16:23', 0, '2024-12-11 15:16:23', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (136, 3, 75, '大白话', 0, 0, '2024-12-11 15:16:29', 0, '2024-12-11 15:16:29', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (137, 2, 60, '智能家具', 0, 0, '2024-12-11 15:17:49', 0, '2024-12-11 15:17:49', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (138, 2, 60, '出行与工具', 0, 0, '2024-12-11 15:18:01', 0, '2024-12-11 15:18:01', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (139, 3, 79, '小新 100S', 0, 0, '2024-12-11 15:18:34', 0, '2024-12-11 15:18:34', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (140, 3, 79, '小新 100P', 0, 0, '2024-12-11 15:18:48', 0, '2024-12-11 15:18:48', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (141, 3, 79, '小新 365', 0, 0, '2024-12-11 15:18:59', 0, '2024-12-11 15:18:59', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (142, 3, 79, '投影专选配件', 0, 0, '2024-12-11 15:19:15', 0, '2024-12-11 15:19:15', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (143, 3, 80, '个人云', 0, 0, '2024-12-11 15:35:23', 0, '2024-12-11 15:35:23', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (144, 3, 80, '家庭存储中枢', 0, 0, '2024-12-11 15:35:33', 0, '2024-12-11 15:35:33', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (145, 3, 81, '智能门锁', 0, 0, '2024-12-11 15:35:54', 0, '2024-12-11 15:35:54', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (146, 3, 81, '摄像头', 0, 0, '2024-12-11 15:36:03', 0, '2024-12-11 15:36:15', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (147, 3, 137, '智能照明', 0, 0, '2024-12-11 15:36:33', 0, '2024-12-11 15:36:33', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (148, 3, 137, '智能插座', 0, 0, '2024-12-11 15:36:39', 0, '2024-12-11 15:36:39', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (149, 3, 138, '车载吸尘器', 0, 0, '2024-12-11 15:37:11', 0, '2024-12-11 15:37:11', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (150, 3, 138, '车载充气泵', 0, 0, '2024-12-11 15:37:18', 0, '2024-12-11 15:37:18', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (151, 3, 84, 'U盘', 0, 0, '2024-12-11 15:40:49', 0, '2024-12-11 15:40:49', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (152, 3, 84, '固态硬盘', 0, 0, '2024-12-11 15:40:56', 0, '2024-12-11 15:40:56', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (153, 3, 84, '移动硬盘', 0, 0, '2024-12-11 15:41:03', 0, '2024-12-11 15:41:03', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (154, 3, 85, 'Lenovo显示器', 0, 0, '2024-12-11 15:41:32', 0, '2024-12-11 15:41:32', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (155, 3, 88, '外观清洁', 0, 0, '2024-12-11 15:44:36', 0, '2024-12-11 15:44:36', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (156, 3, 89, '电脑故障检修服务', 0, 0, '2024-12-11 15:44:52', 0, '2024-12-11 15:44:52', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (157, 3, 67, 'E系列', 0, 0, '2024-12-18 16:09:07', 0, '2024-12-18 16:09:07', 0);

-- ----------------------------
-- Table structure for tb_newbee_mall_goods_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_newbee_mall_goods_info`;
CREATE TABLE `tb_newbee_mall_goods_info`  (
  `goods_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '商品表主键id',
  `goods_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '商品名',
  `goods_intro` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '商品简介',
  `goods_category_id` bigint NOT NULL DEFAULT 0 COMMENT '关联分类id',
  `goods_cover_img` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '/admin/dist/img/no-img.png' COMMENT '商品主图',
  `goods_carousel` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '/admin/dist/img/no-img.png' COMMENT '商品轮播图',
  `goods_detail_content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '商品详情',
  `original_price` int NOT NULL DEFAULT 1 COMMENT '商品价格',
  `selling_price` int NOT NULL DEFAULT 1 COMMENT '商品实际售价',
  `stock_num` int NOT NULL DEFAULT 0 COMMENT '商品库存数量',
  `tag` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '商品标签',
  `goods_sell_status` tinyint NOT NULL DEFAULT 0 COMMENT '商品上架状态 0-下架 1-上架',
  `create_user` int NOT NULL DEFAULT 0 COMMENT '添加者主键id',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '商品添加时间',
  `update_user` int NOT NULL DEFAULT 0 COMMENT '修改者主键id',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '商品修改时间',
  PRIMARY KEY (`goods_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10986 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_newbee_mall_goods_info
-- ----------------------------
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10907, '拯救者y7000p 2024 ai元启16英寸', '第14代智能英特尔®酷睿™ i7-14700hx/wind0ws 11 家庭中文版/16英寸/16g（16*1）/1t ssd/rtx™ 4070 8g独显/月蚀灰', 20, 'http://localhost:8080/upload/20241216_14424679.png', 'http://localhost:8080/upload/20241216_14424679.png', '<p><br></p>', 1, 9799, 0, '【国家补贴20%】', 0, 0, '2024-12-16 14:43:32', 0, '2024-12-16 14:43:32');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10908, '联想& #40;lenovo& #41;拯救者y9000x 2024 ai元启 16英寸电竞游戏本电脑', '第14代智能英特尔®酷睿™ i9-14900hx/wind0ws 11 家庭中文版/16英寸/32g（16x2）/1t ssd/rtx™ 4070 8g独显/冰魄白', 21, 'http://localhost:8080/upload/20241216_14492971.png', 'http://localhost:8080/upload/20241216_14492971.png', '<p><br></p>', 1, 15499, 0, '【国家补贴20%叠加教育特惠折上折 】', 0, 0, '2024-12-16 14:50:04', 0, '2024-12-16 14:50:04');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10909, '联想& #40;lenovo& #41;拯救者y7000p 2024 ai元启16英寸电竞游戏笔记本', '第14代智能英特尔®酷睿™ i7-14700hx/wind0ws 11 家庭中文版/16英寸/16g（16*1）/1t ssd/rtx™ 4070 8g独显/月蚀灰', 22, 'http://localhost:8080/upload/20241216_14502886.png', 'http://localhost:8080/upload/20241216_14502886.png', '<p><br></p>', 1, 9799, 0, '政府补贴，折旧换新，比省更省', 0, 0, '2024-12-16 14:50:52', 0, '2024-12-16 14:50:52');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10910, '联想& #40;lenovo& #41;拯救者y7000p 2024 ai元启16英寸电竞游戏笔记本', '第14代智能英特尔®酷睿™ i7-14700hx/wind0ws 11 家庭中文版/16英寸/16g（16*1）/1t ssd/rtx™ 4070 8g独显/月蚀灰', 22, 'http://localhost:8080/upload/20241216_14534983.png', 'http://localhost:8080/upload/20241216_14534983.png', '<p><br></p>', 1, 9799, 0, '1年只换不修', 0, 0, '2024-12-16 14:53:50', 0, '2024-12-16 14:53:50');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10911, '联想& #40;lenovo& #41;小新pro ai元启16英寸轻薄笔记本电脑 鸽子灰', 'amd ryzen 7 8845h/wind0ws 11 家庭中文版/16.0英寸/32g/1t ssd/集成显卡/鸽子灰', 32, 'http://localhost:8080/upload/20241216_14542477.png', 'http://localhost:8080/upload/20241216_14542477.png', '<p><br></p>', 1, 6199, 0, 'ai喷绘，限时0元', 0, 0, '2024-12-16 14:55:00', 0, '2024-12-16 14:55:00');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10912, '联想& #40;lenovo& #41;小新pro ai元启14英寸轻薄笔记本电 鸽子灰', '英特尔酷睿 ultra 9/wind0ws 11 家庭中文版/14英寸/32gb/1t ssd/集成显卡/鸽子灰', 33, 'http://localhost:8080/upload/20241216_14552192.png', 'http://localhost:8080/upload/20241216_14552192.png', '<p><br></p>', 1, 6999, 0, '教育特惠', 0, 0, '2024-12-16 14:55:54', 0, '2024-12-16 14:55:54');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10913, '联想& #40;lenovo& #41;小新15 air 2025款 15.3英寸轻薄笔记本电脑', 'amd ryzen 7 7735hs/wind0ws 11 家庭中文版/15.3英寸/16g/512g ssd/集成显卡/霜雪银', 34, 'http://localhost:8080/upload/20241216_1456178.png', 'http://localhost:8080/upload/20241216_1456178.png', '<p><br></p>', 1, 4399, 0, '折旧换新，比省更省', 0, 0, '2024-12-16 14:56:43', 0, '2024-12-16 14:56:43');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10914, '联想& #40;lenovo& #41;小新13 air 2025款 13.3英寸轻薄笔记本电脑', 'amd ryzen 7 7735hs/wind0ws 11 家庭中文版/13.3英寸/16g/512g ssd/集成显卡/霜雪银', 35, 'http://localhost:8080/upload/20241216_14571012.png', 'http://localhost:8080/upload/20241216_14571012.png', '<p><br></p>', 1, 4599, 0, '政府补贴，折旧换新', 0, 0, '2024-12-16 14:57:35', 0, '2024-12-16 14:57:35');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10915, '联想yoga air 15 aura 英特尔酷睿ultra 7-258v ai元启笔记本电脑', '英特尔® 酷睿™ ultra 7/wind0ws 11 家庭中文版/15.3英寸/32gb/1t ssd/集成显卡/信风灰', 45, 'http://localhost:8080/upload/20241216_14575215.png', 'http://localhost:8080/upload/20241216_14575215.png', '<p><br></p>', 1, 9999, 0, '【国家补贴20%叠加教育特惠折上折 】', 0, 0, '2024-12-16 14:58:21', 0, '2024-12-16 14:58:21');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10916, '联想yoga pro 14 锐龙 ai元启版 14.5英寸轻薄笔记本电脑 信风灰', 'amd 锐龙™ ai 9 365/wind0ws 11 家庭中文版/14.5英寸/32g/1t ssd/集成显卡/信风灰', 46, 'http://localhost:8080/upload/20241216_14584154.png', 'http://localhost:8080/upload/20241216_14584154.png', '<p><br></p>', 1, 8999, 0, '联想自营', 0, 0, '2024-12-16 14:59:16', 0, '2024-12-16 14:59:16');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10917, '联想 yoga air 14s 骁龙 ai元启 14.5英寸轻薄笔记本电脑 浅海贝', '高通骁龙 x elite/wind0ws 11 家庭中文版/32g/1t ssd/集成显卡/浅海贝', 49, 'http://localhost:8080/upload/20241216_14594489.png', 'http://localhost:8080/upload/20241216_14594489.png', '<p><br></p>', 1, 9999, 0, 'c面刻字限时0元', 0, 0, '2024-12-16 15:00:06', 0, '2024-12-16 15:00:06');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10918, 'thinkpad x1 carbon aura 全互联本 ai元启版 1acd', '英特尔酷睿ultra 7 258v/ pcie-nvme 固态硬盘gp4/英特尔arc xe2/14英寸2.8k 广视角oled背光显示屏 120hz刷新率 400nit/沉浸黑', 76, 'http://localhost:8080/upload/20241216_15015281.png', 'http://localhost:8080/upload/20241216_15015281.png', '<p><br></p>', 1, 16999, 0, '支持 以旧换新', 0, 0, '2024-12-16 15:02:33', 0, '2024-12-16 15:02:33');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10919, 'thinkcentre neo p600 英特尔酷睿i7 商用台式机电脑', '第12代英特尔酷睿i7-12700/wind0ws 11 家庭中文版/16gb/512gb ssd+1t hdd/无光驱/gtx1660 super 6gb gddr6/定制升级款', 115, 'http://localhost:8080/upload/20241216_15025250.png', 'http://localhost:8080/upload/20241216_15025250.png', '<p><br></p>', 1, 7299, 0, '花呗分期', 0, 0, '2024-12-16 15:03:35', 0, '2024-12-16 15:03:35');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10920, 'thinkplus 口红电源 gan 65w', '升级企业会员享2000元企业礼券，首单享加赠。点击升级', 116, 'http://localhost:8080/upload/20241216_15064520.png', 'http://localhost:8080/upload/20241216_15064520.png', '<p><br></p>', 1, 199, 0, '政府补贴，折旧换新', 0, 0, '2024-12-16 15:06:51', 0, '2024-12-16 15:07:09');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10921, 'thinkplus 都市流行双肩包 玄武黑', '使用联想app下单，享受更多优惠', 117, 'http://localhost:8080/upload/20241216_15072681.png', 'http://localhost:8080/upload/20241216_15072681.png', '<p><br></p>', 1, 228, 0, '信用卡分期', 0, 0, '2024-12-16 15:07:51', 0, '2024-12-16 15:07:51');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10922, '联想yoga pad pro ai元启 12.7英寸 影音办公学习平板电脑 浅海贝', '骁龙 8 gen3/8核/android /12.7英寸/16gb/512gb/wifi版/浅海贝/联想手写笔pro+磁吸键盘套装', 77, 'http://localhost:8080/upload/20241216_1508234.png', 'http://localhost:8080/upload/20241216_1508234.png', '<p><br></p>', 1, 4799, 0, '政府补贴，折旧换新', 0, 0, '2024-12-16 15:08:44', 0, '2024-12-16 15:08:44');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10923, '联想平板小新pad 2024 11英寸 学习办公娱乐影音平板电脑 烟霞紫', 'qualcomm snapdragon 685/8核/android系统/11英寸/8g/256g/wifi版/烟霞紫', 120, 'http://localhost:8080/upload/20241216_15090714.png', 'http://localhost:8080/upload/20241216_15090714.png', '<p><br></p>', 1, 1099, 0, '【学生认证且购机送屏幕贴膜】', 0, 0, '2024-12-16 15:09:34', 0, '2024-12-16 15:09:34');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10924, '联想拯救者y700 2025 8.8英寸超控版游戏平板 碳晶黑', '第三代 骁龙8/8核/android 14 操作系统/8.8英寸/16gb/512gb/wifi版/碳晶黑', 122, 'http://localhost:8080/upload/20241216_15095640.png', 'http://localhost:8080/upload/20241216_15095640.png', '<p><br></p>', 1, 3799, 0, '政府补贴，折旧换新，比省更省', 0, 0, '2024-12-16 15:10:19', 0, '2024-12-16 15:10:19');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10925, '小新pad pro 12.7 保护夹& #40;二代& #41; 灰色', '双角度支撑、翻盖唤醒、独立笔槽、精选酥皮材质', 123, 'http://localhost:8080/upload/20241216_15103941.png', 'http://localhost:8080/upload/20241216_15103941.png', '<p><br></p>', 1, 89, 0, '白条分期', 0, 0, '2024-12-16 15:11:08', 0, '2024-12-16 15:11:08');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10926, '联想moto s50 12gb+512gb 好柿橙', '金刚品质 | 实力出彩 | 身经百战，抗严寒战酷暑', 78, 'http://localhost:8080/upload/20241216_15124465.png', 'http://localhost:8080/upload/20241216_15124465.png', '<p><br></p>', 1, 2299, 0, '6期免息', 0, 0, '2024-12-16 15:13:11', 0, '2024-12-16 15:13:11');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10927, 'moto buds 无线耳机 天水碧', 'moto buds无线耳机', 131, 'http://localhost:8080/upload/20241216_15132949.png', 'http://localhost:8080/upload/20241216_15132949.png', '<p><br></p>', 1, 299, 0, '花呗分期', 0, 0, '2024-12-16 15:13:53', 0, '2024-12-16 15:13:53');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10928, '懂陪伴', '含1500分钟全国通话，1500mb上网流量。5元话费立即到账，资源永不清零。本产品不支持7天无理由退换货。产品包邮（西藏、新疆暂不提供邮寄服务）', 134, 'http://localhost:8080/upload/20241216_15141861.png', 'http://localhost:8080/upload/20241216_15141861.png', '<p><br></p>', 1, 150, 0, '资源永不清零', 0, 0, '2024-12-16 15:14:39', 0, '2024-12-16 15:14:39');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10929, '联想小新100gt智能投影 樱花白', '500cvia流明| 360°云台| 2+32g大内存丨ai智能语音', 82, 'http://localhost:8080/upload/20241216_15145917.png', 'http://localhost:8080/upload/20241216_15145917.png', '<p><br></p>', 1, 1049, 0, '14天无忧退换', 0, 0, '2024-12-16 15:15:22', 0, '2024-12-16 15:15:22');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10930, '联想个人云x1s nas网络云存储 【4盘位+1扩展 无盘版】', 'intel四核cpu+8g内存 私有云 家庭网盘企业硬盘', 143, 'http://localhost:8080/upload/20241216_15154184.png', 'http://localhost:8080/upload/20241216_15154184.png', '<p><br></p>', 1, 2266, 0, '白条免息，0手续费', 0, 0, '2024-12-16 15:16:13', 0, '2024-12-16 15:16:13');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10931, '联想智能门锁f2', '3d人脸识别丨7大开锁方式', 145, 'http://localhost:8080/upload/20241216_1516337.png', 'http://localhost:8080/upload/20241216_1516337.png', '<p><br></p>', 1, 2999, 0, '政府补贴，折旧换新，比省更省', 0, 0, '2024-12-16 15:17:02', 0, '2024-12-16 15:17:02');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10932, '【智能照明】联想银之光吸顶灯（24w）', '全光谱led光源丨ra≥98高显色指数丨无有害蓝光', 147, 'http://localhost:8080/upload/20241216_1517193.png', 'http://localhost:8080/upload/20241216_1517193.png', '<p><br></p>', 1, 199, 0, '增值业务 支持 以旧换新', 0, 0, '2024-12-16 15:17:40', 0, '2024-12-16 15:17:40');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10933, 'yoga life 无线吸拖一体机 v7 银离子滤网', '联想自营联想发货&售后', 149, 'http://localhost:8080/upload/20241216_1517566.png', 'http://localhost:8080/upload/20241216_1517566.png', '<p><br></p>', 1, 99, 0, '无线吸拖一体机 v7 硬毛滚刷', 0, 0, '2024-12-16 15:18:30', 0, '2024-12-16 15:18:30');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10934, '联想小新k2有线游戏键盘 （石英粉）', 'rgb灯效丨防尘防水丨按键静音', 86, 'http://localhost:8080/upload/20241216_15184618.png', 'http://localhost:8080/upload/20241216_15184618.png', '<p><br></p>', 1, 59, 0, '政府补贴，折旧换新，比省更省', 0, 0, '2024-12-16 15:19:03', 0, '2024-12-16 15:19:03');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10935, '联想小新固态u盘 滑板限定款', 'usb-a&c 高速双接口、128g大容量、创意指尖滑板', 151, 'http://localhost:8080/upload/20241216_15191917.png', 'http://localhost:8080/upload/20241216_15191917.png', '<p><br></p>', 1, 139, 0, '滑板限定', 0, 0, '2024-12-16 15:19:41', 0, '2024-12-16 15:19:41');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10936, '联想显示器小新24 23.8英寸fhd广视角护眼屏', '高刷屏、ips优质面板、广视角护眼屏丨享多品牌全品类以旧换新补贴，买台机加购显示器立减100元', 154, 'http://localhost:8080/upload/20241216_15195869.png', 'http://localhost:8080/upload/20241216_15195869.png', '<p><br></p>', 1, 569, 0, '【晒单好礼】【学生认证购机送台历】', 0, 0, '2024-12-16 15:20:23', 0, '2024-12-16 15:20:23');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10937, '【lenovo 专家1对1】重装系统', '本服务通过远程控制桌面进行重装系统操作，让电脑重新恢复活力，速度更快；清除电脑存在的潜在威胁，让你的数据更安全', 90, 'http://localhost:8080/upload/20241216_15205479.png', 'http://localhost:8080/upload/20241216_15205479.png', '<p><br></p>', 1, 108, 0, '（注：此产品不包含正版系统的激活）', 0, 0, '2024-12-16 15:21:18', 0, '2024-12-16 15:21:18');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10938, '笔记本深度拆机清洁服务（到店）', '不限品牌（苹果除外）为笔记本提供保养维护服务，包含拆机，风扇，键盘、屏幕、机身表面等，到店使用', 155, 'http://localhost:8080/upload/20241216_15213965.png', 'http://localhost:8080/upload/20241216_15213965.png', '<p><br></p>', 1, 64, 0, '清洁保养全家桶', 0, 0, '2024-12-16 15:22:00', 0, '2024-12-16 15:22:00');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10939, '【多品牌适用-远程服务】5次/年调试服务', '远程支持为用户提供提供pc局域网系统的故障诊断，无线调试、故障诊断服务；pc wind0ws 系统安装、维护，常用软件维护、邮箱客户端安装、电脑病毒', 156, 'http://localhost:8080/upload/20241216_1522150.png', 'http://localhost:8080/upload/20241216_1522150.png', '<p><br></p>', 1, 399, 0, '远程管家vip服务', 0, 0, '2024-12-16 15:22:42', 0, '2024-12-16 15:22:42');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10940, '联想& #40;lenovo& #41;拯救者r9000p 16英寸电竞游戏本笔记本电脑 碳晶灰', 'amd ryzen 9 7945hx/wind0ws 11 家庭中文版/16英寸/16gb& #40;16*1& #41;/1t ssd/ rtx™ 4060 8gb独显/碳晶灰', 23, 'http://localhost:8080/upload/20241217_21454528.png', 'http://localhost:8080/upload/20241217_21454528.png', '<p><br></p>', 1, 9299, 0, '政府补贴，折旧换新', 0, 0, '2024-12-17 21:46:15', 0, '2024-12-17 21:46:15');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10941, '联想拯救者 y7000', '搭载英特尔8代处理器，高性能显卡，win10系统，共有17个型号。', 24, 'http://localhost:8080/upload/20241217_21470233.png', 'http://localhost:8080/upload/20241217_21470233.png', '<p><br></p>', 1, 7399, 0, '高性能', 0, 0, '2024-12-17 21:47:48', 0, '2024-12-17 21:47:48');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10942, '联想& #40;lenovo& #41;拯救者r7000 15.6英寸电竞游戏本笔记本电脑 钛晶灰', 'amd ryzen 7 8745h/wind0ws 11 家庭中文版/15.6英寸/16gb（8+8）/512g ssd/ rtx™ 4050 6gb独显/钛晶灰', 25, 'http://localhost:8080/upload/20241217_21481181.png', 'http://localhost:8080/upload/20241217_21481181.png', '<p><br></p>', 1, 6699, 0, '以旧换新', 0, 0, '2024-12-17 21:48:42', 0, '2024-12-17 21:48:42');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10943, '联想& #40;lenovo& #41;拯救者r7000p 2024 16英寸电竞游戏本笔记本 月蚀灰', 'amd ryzen 7 8845h/wind0ws 11 家庭中文版/16英寸/16gb& #40;16*1& #41;/1t ssd/ rtx™ 4060 8gb独显/月蚀灰', 26, 'http://localhost:8080/upload/20241217_21495315.png', 'http://localhost:8080/upload/20241217_21495315.png', '<p><br></p>', 1, 8399, 0, '【国家补贴20%叠加教育特惠折上折 】', 0, 0, '2024-12-17 21:50:14', 0, '2024-12-17 21:50:14');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10944, '联想& #40;lenovo& #41;拯救者r9000x 16英寸电竞游戏本笔记本电脑 钛晶灰', 'amd ryzen 7 7840h/wind0ws 11 家庭中文版/16英寸/16gb/1t ssd/ rtx™ 4060 8gb独显/钛晶灰', 27, 'http://localhost:8080/upload/20241217_2150328.png', 'http://localhost:8080/upload/20241217_2150328.png', '<p><br></p>', 1, 11999, 0, '折旧换新，比省更省', 0, 0, '2024-12-17 21:50:52', 0, '2024-12-17 21:50:52');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10945, '联想& #40;lenovo& #41;小新16 2024款ai高能轻薄笔记本电脑 霜雪银', '第13代智能英特尔 ® 酷睿™ i5-13420h/wind0ws 11 家庭中文版/16英寸/16g/512g ssd/集成显卡/霜雪银', 36, 'http://localhost:8080/upload/20241217_21515927.png', 'http://localhost:8080/upload/20241217_21515927.png', '<p><br></p>', 1, 4199, 0, '政府补贴，折旧换新', 0, 0, '2024-12-17 21:52:18', 0, '2024-12-17 21:52:18');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10946, '联想& #40;lenovo& #41;小新15 2024款15.3英寸轻薄笔记本电脑 霜雪银', '第13代智能英特尔 ® 酷睿™ i7-13620h/wind0ws 11 家庭中文版/15.3英寸/16g/512g ssd/集成显卡/霜雪银', 37, 'http://localhost:8080/upload/20241217_21523982.png', 'http://localhost:8080/upload/20241217_21523982.png', '<p><br></p>', 1, 4599, 0, '政府补贴', 0, 0, '2024-12-17 21:53:12', 0, '2024-12-17 21:53:12');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10947, '联想& #40;lenovo& #41;小新14 2024款14英寸高能轻薄笔记本电脑 银', 'amd 锐龙7 8745h/wind0ws 11 家庭中文版/14英寸/16gb/512g ssd/集成显卡/银', 38, 'http://localhost:8080/upload/20241217_21532913.png', 'http://localhost:8080/upload/20241217_21532913.png', '<p><br></p>', 1, 3799, 0, '供应商发货&售后', 0, 0, '2024-12-17 21:53:47', 0, '2024-12-17 21:53:47');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10948, '联想 yoga air 14c ai元启 14英寸轻薄360°翻转笔记本 雾海蓝', '英特尔酷睿 ultra 7/wind0ws 11 家庭中文版/14英寸/32gb/1t ssd/集成显卡/雾海蓝', 44, 'http://localhost:8080/upload/20241217_21544523.png', 'http://localhost:8080/upload/20241217_21544523.png', '<p><br></p>', 1, 8999, 0, '白条分期', 0, 0, '2024-12-17 21:55:09', 0, '2024-12-17 21:55:09');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10949, '联想 yoga air 14 骁龙 ai元启 14.5英寸轻薄笔记本电脑 浅海贝', '高通骁龙 x elite/wind0ws 11 家庭中文版/32g/1t ssd/集成显卡/浅海贝', 47, 'http://localhost:8080/upload/20241217_2155366.png', 'http://localhost:8080/upload/20241217_2155366.png', '<p><br></p>', 1, 9999, 0, '骁龙x elite/瀚宇蓝', 0, 0, '2024-12-17 21:56:22', 0, '2024-12-17 21:56:22');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10950, '联想yoga pro 16s ai元启 16英寸轻薄笔记本电脑 信风灰', '英特尔酷睿 ultra 9/wind0ws 11 家庭中文版/16英寸/32gb/1t ssd/rtx 4060 8g/信风灰', 48, 'http://localhost:8080/upload/20241217_21564433.png', 'http://localhost:8080/upload/20241217_21564433.png', '<p><br></p>', 1, 13999, 0, 'c面刻字限时0元', 0, 0, '2024-12-17 21:57:04', 0, '2024-12-17 21:57:04');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10951, '联想yoga book 9i ai元启 13.3英寸双屏360度翻转笔记本电脑', '英特尔酷睿 ultra 7/wind0ws 11 家庭中文版/13.3英寸x2/32gb/1t ssd/集成显卡/雾海蓝', 52, 'http://localhost:8080/upload/20241217_21572455.png', 'http://localhost:8080/upload/20241217_21572455.png', '<p><br></p>', 1, 17999, 0, '联想商家', 0, 0, '2024-12-17 21:57:53', 0, '2024-12-17 21:57:53');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10952, '联想yoga pro 14s ai元启 14.5英寸轻薄笔记本电脑 雾海蓝', '英特尔酷睿 ultra 9/wind0ws 11 家庭中文版/14.5英寸/32gb/1t ssd/集成显卡/雾海蓝', 51, 'http://localhost:8080/upload/20241217_21581424.png', 'http://localhost:8080/upload/20241217_21581424.png', '<p><br></p>', 1, 8699, 0, '信用卡分期', 0, 0, '2024-12-17 21:58:41', 0, '2024-12-17 21:58:41');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10953, '联想拯救者y9000p 2024 ai元启 16英寸电竞游戏本笔记本电脑', '第14代智能英特尔®酷睿™ i9-14900hx/wind0ws 11 家庭中文版/16英寸/32g（16x2）/1t ssd/rtx™ 4070 8g独显/碳晶灰', 20, 'http://localhost:8080/upload/20241217_22024186.png', 'http://localhost:8080/upload/20241217_22024186.png', '<p><br></p>', 1, 12999, 0, '折旧换新，比省更省', 0, 0, '2024-12-17 22:02:59', 0, '2024-12-17 22:02:59');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10954, 'thinkpad t14p 2024 酷睿ultra 9 高性能ai本 元启版', '英特尔酷睿ultra 9 185h/wind0ws 11 家庭中文版/16gb+16gb ddr5/2tb0 ssd/14.5英寸3k 100%dci-p3 430nit 120hz高色域显示屏', 111, 'http://localhost:8080/upload/20241217_22035591.png', 'http://localhost:8080/upload/20241217_22035591.png', '<p><br></p>', 1, 14999, 0, 'wind0ws 11 家庭中文版', 0, 0, '2024-12-17 22:04:28', 0, '2024-12-17 22:04:28');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10955, 'thinkpad x13 2024 酷睿ultra 5 ai商旅本 06cd', '英特尔evo平台认证酷睿ultra 5 125h/wind0ws 11 家庭中文版/32gb lpddr5x/1tb0 ssd/intel锐炬xe集显/13.3英寸 /lte版/', 112, 'http://localhost:8080/upload/20241217_22050046.png', 'http://localhost:8080/upload/20241217_22050046.png', '<p><br></p>', 1, 7999, 0, '白条分期', 0, 0, '2024-12-17 22:05:41', 0, '2024-12-17 22:05:41');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10956, 'thinkpad t14p 2024 酷睿ultra 9 高性能ai本 元启版', '英特尔酷睿ultra 9 185h/wind0ws 11 家庭中文版/16gb+16gb ddr5/2tb0 ssd/rtx 4050 6g/14.5英寸3k', 113, 'http://localhost:8080/upload/20241217_22060878.png', 'http://localhost:8080/upload/20241217_22060878.png', '<p><br></p>', 1, 14999, 0, '14天无忧退换', 0, 0, '2024-12-17 22:06:37', 0, '2024-12-17 22:06:37');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10957, 'thinkpad p16v 2024 英特尔酷睿ultra 7 ai创意设计本 01cd', '全新英特尔酷睿ultra 7 155h/wind0ws 11 家庭中文版/16g+16g/1tb0 m.2 pcie gen4 nvme 固态硬盘/nvidia rtx 1000ada', 114, 'http://localhost:8080/upload/20241217_22070917.png', 'http://localhost:8080/upload/20241217_22070917.png', '<p><br></p>', 1, 15999, 0, '政府补贴', 0, 0, '2024-12-17 22:07:36', 0, '2024-12-17 22:07:36');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10958, '联想平板小新pad pro 12.7英寸 学习游戏平板电脑 鸽子灰', 'qualcomm snapdragon 870/8核/android 13 系统/12.7英寸/8gb/256gb/wifi版/鸽子灰', 121, 'http://localhost:8080/upload/20241217_22081782.png', 'http://localhost:8080/upload/20241217_22081782.png', '<p><br></p>', 1, 1799, 0, '花呗分期', 0, 0, '2024-12-17 22:08:41', 0, '2024-12-17 22:08:41');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10959, '小新pad 2024钢化膜', '16:00 点前完成下单, 预计 12月20日送', 124, 'http://localhost:8080/upload/20241217_2209217.png', 'http://localhost:8080/upload/20241217_2209217.png', '<p><br></p>', 1, 39, 0, '联想发货&售后', 0, 0, '2024-12-17 22:09:55', 0, '2024-12-17 22:09:55');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10960, 'yoga pad pro ai元启 磁吸键盘及支架 雾海蓝', '亲肤材质、一贴即合全场景适配、大触控板支持手势操作', 125, 'http://localhost:8080/upload/20241217_22101943.png', 'http://localhost:8080/upload/20241217_22101943.png', '<p><br></p>', 1, 699, 0, '¥238.59x3期', 0, 0, '2024-12-17 22:10:44', 0, '2024-12-17 22:10:44');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10961, '联想手写笔', '可用机型可咨询客服', 126, 'http://localhost:8080/upload/20241217_22111789.png', 'http://localhost:8080/upload/20241217_22111789.png', '<p><br></p>', 1, 179, 0, '运费险', 0, 0, '2024-12-17 22:11:38', 0, '2024-12-17 22:11:38');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10962, '联想moto razr 50', '无界热ai | 所见皆美 | 定制大外屏 ，app全屏无界运行', 127, 'http://localhost:8080/upload/20241217_22142661.png', 'http://localhost:8080/upload/20241217_22142661.png', '<p><br></p>', 1, 5899, 0, '6期免息', 0, 0, '2024-12-17 22:14:27', 0, '2024-12-17 22:14:27');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10963, '企业购 moto razr 50', '内外衔接，自然顺滑 | 灵动信息，了如指掌', 128, 'http://localhost:8080/upload/20241217_22152543.png', 'http://localhost:8080/upload/20241217_22152543.png', '<p><br></p>', 1, 3999, 0, '14天无忧退换', 0, 0, '2024-12-17 22:15:51', 0, '2024-12-17 22:15:51');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10964, '联想moto s50 12gb+512gb 花木蓝', '金刚品质 | 实力出彩 | 身经百战，抗严寒战酷暑', 129, 'http://localhost:8080/upload/20241217_22161797.png', 'http://localhost:8080/upload/20241217_22161797.png', '<p><br></p>', 1, 2299, 0, '政府补贴，折旧换新，比省更省', 0, 0, '2024-12-17 22:16:40', 0, '2024-12-17 22:16:40');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10965, '联想moto x50 ultra 12gb+512gb 远黛墨 ai元启版', '100倍潜望追光ai影像 | 联想小天ai个人智能体 | 第三代骁龙旗舰处理器', 130, 'http://localhost:8080/upload/20241217_2217080.png', 'http://localhost:8080/upload/20241217_2217080.png', '<p><br></p>', 1, 3999, 0, '折旧换新，比省更省', 0, 0, '2024-12-17 22:17:30', 0, '2024-12-17 22:17:30');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10966, 'mobile tail摩托罗拉moto g54保护壳（黑色', '摩托罗拉moto g54保护壳', 132, 'http://localhost:8080/upload/20241217_22175352.png', 'http://localhost:8080/upload/20241217_22175352.png', '<p><br></p>', 1, 39, 0, '白条分期', 0, 0, '2024-12-17 22:18:19', 0, '2024-12-17 22:18:19');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10967, 'moto 125w 氮化镓gan充电套装', '16:00前完成下单，预计今天（12月17日）发货', 133, 'http://localhost:8080/upload/20241217_2218454.png', 'http://localhost:8080/upload/20241217_2218454.png', '<p><br></p>', 1, 249, 0, '14天无忧退换', 0, 0, '2024-12-17 22:19:14', 0, '2024-12-17 22:19:14');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10968, '糖豆儿', '月租6元，送来电显示（来电显示不可取消），套外语音0.12元/分钟、流量0.12元/mb、短信0.1元/条。', 135, 'http://localhost:8080/upload/20241217_22194646.png', 'http://localhost:8080/upload/20241217_22194646.png', '<p><br></p>', 1, 50, 0, '不支持7天无忧退换', 0, 0, '2024-12-17 22:20:06', 0, '2024-12-17 22:20:06');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10969, '大白话', '月租15元，套餐包含150分钟国内语音，赠送来电显示，套餐外资费：语音0.15元/分钟、流量0.15元/mb、短信0.1元/条。', 136, 'http://localhost:8080/upload/20241217_22202945.png', 'http://localhost:8080/upload/20241217_22202945.png', '<p><br></p>', 1, 50, 0, '使用联想app下单，享受更多优惠', 0, 0, '2024-12-17 22:21:03', 0, '2024-12-17 22:21:03');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10970, '【联想全屋智能】联想小新100s智能投影 樱花白', '全封闭高亮光机|430cvia高亮度丨2x5w高保真音响', 139, 'http://localhost:8080/upload/20241217_22214154.png', 'http://localhost:8080/upload/20241217_22214154.png', '<p><br></p>', 1, 899, 0, '运费险', 0, 0, '2024-12-17 22:22:02', 0, '2024-12-17 22:22:02');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10971, '联想小新100p智能投影仪', '570cvia流明丨hdr10丨智慧视觉系统丨影院级音效', 140, 'http://localhost:8080/upload/20241217_22222526.png', 'http://localhost:8080/upload/20241217_22222526.png', '<p><br></p>', 1, 1299, 0, '联想发货&售后', 0, 0, '2024-12-17 22:22:47', 0, '2024-12-17 22:22:47');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10972, '【联想全屋智能】联想小新365智能投影仪 风暴灰', '6:00 点前完成下单, 预计 12月21日送达', 141, 'http://localhost:8080/upload/20241217_22231974.png', 'http://localhost:8080/upload/20241217_22231974.png', '<p><br></p>', 1, 1499, 0, '联想自营', 0, 0, '2024-12-17 22:23:39', 0, '2024-12-17 22:23:39');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10973, '联想（lenovo）投影悬挂幕布100寸', '14天无忧退换', 142, 'http://localhost:8080/upload/20241217_22240240.png', 'http://localhost:8080/upload/20241217_22240240.png', '<p><br></p>', 1, 199, 0, '花呗分期', 0, 0, '2024-12-17 22:24:32', 0, '2024-12-17 22:24:32');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10974, '联想家庭存储中枢 x20', '四核高主频丨航空级铝合金机身', 20, 'http://localhost:8080/upload/20241217_22250164.png', 'http://localhost:8080/upload/20241217_22250164.png', '<p><br></p>', 1, 1699, 0, '政府补贴，折旧换新', 0, 0, '2024-12-17 22:25:18', 0, '2024-12-17 22:25:18');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10975, '【联想全屋智能】智能双目室内云台机', '双云台360°无死角监控丨8大算法高效运行丨超清画质 智能全彩夜视', 146, 'http://localhost:8080/upload/20241217_22282170.png', 'http://localhost:8080/upload/20241217_22282170.png', '<p><br></p>', 1, 159, 0, '政府补贴，折旧换新', 0, 0, '2024-12-17 22:28:41', 0, '2024-12-17 22:28:41');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10976, '联想智能插座w1', '语音控制丨智能定时丨电量实时监控', 148, 'http://localhost:8080/upload/20241217_22290071.png', 'http://localhost:8080/upload/20241217_22290071.png', '<p><br></p>', 1, 69, 0, '政府补贴，折旧换新', 0, 0, '2024-12-17 22:29:22', 0, '2024-12-17 22:29:22');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10977, '联想车载无线充气泵', '¥50.81x3期手续费: 约￥1.15/期', 150, 'http://localhost:8080/upload/20241217_22294785.png', 'http://localhost:8080/upload/20241217_22294785.png', '<p><br></p>', 1, 149, 0, '运费险', 0, 0, '2024-12-17 22:30:17', 0, '2024-12-17 22:30:17');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10978, '小新 蓝牙轻音鼠标 岩灰', '【联想选件活动专场，部分商品低至85折】 更多& gt;', 20, 'http://localhost:8080/upload/20241217_22343378.png', 'http://localhost:8080/upload/20241217_22343378.png', '<p><br></p>', 1, 40, 0, '运费险', 0, 0, '2024-12-17 22:34:55', 0, '2024-12-17 22:34:55');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10979, '拯救者 鼠标防滑贴 黑色适用m5/m3', '柔软亲肤、防滑吸汗、立体全包', 100, 'http://localhost:8080/upload/20241217_22351360.png', 'http://localhost:8080/upload/20241217_22351360.png', '<p><br></p>', 1, 39, 0, '联想自营', 0, 0, '2024-12-17 22:35:34', 0, '2024-12-17 22:35:34');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10980, '小新吨吨杯 墨绿磨砂', '双层抽真空技术、1.5l超大容量、316不锈钢材质', 101, 'http://localhost:8080/upload/20241217_22355325.png', 'http://localhost:8080/upload/20241217_22355325.png', '<p><br></p>', 1, 199, 0, '政府补贴', 0, 0, '2024-12-17 22:36:16', 0, '2024-12-17 22:36:16');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10981, '异能者双面鼠标垫 zd6（深海蓝+远山绿）', 'pu皮材质鼠标垫，防刮耐磨，防烫耐高温，双面双色，尺寸：1200mm*600mm*2mm', 102, 'http://localhost:8080/upload/20241217_22365439.png', 'http://localhost:8080/upload/20241217_22365439.png', '<p><br></p>', 1, 69, 0, '14天无忧退换', 0, 0, '2024-12-17 22:37:15', 0, '2024-12-17 22:37:15');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10982, '联想小新x吾皇猫联名移动固态硬盘1tb00 猫吃鱼款 1050mb/s', '高速传输最高达1050mb/s、标配a+c双口线、内含可拆卸保护壳+可替换装饰贴', 153, 'http://localhost:8080/upload/20241217_2237483.png', 'http://localhost:8080/upload/20241217_2237483.png', '<p><br></p>', 1, 549, 0, '，，', 0, 0, '2024-12-17 22:38:11', 0, '2024-12-17 22:39:26');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10983, '原装yoga/小新固态硬盘升级 1t pm9c1a 2242', '原厂配件，兼容保障，3年保修，购买咨询请拨打4008901566', 152, 'http://localhost:8080/upload/20241217_22393458.png', 'http://localhost:8080/upload/20241217_22393458.png', '<p><br></p>', 1, 759, 0, '1年只换不修+意外+远程', 0, 0, '2024-12-17 22:38:55', 0, '2024-12-17 22:39:38');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10984, '联想 thinkplus 真无线蓝牙耳机xt97 黑色', '升级企业会员享2000元企业礼券，首单享加赠。点击升级', 118, 'http://localhost:8080/upload/20241217_2240362.png', 'http://localhost:8080/upload/20241217_2240362.png', '<p><br></p>', 1, 65, 0, '政府补贴，折旧换新，比省更省', 0, 0, '2024-12-17 22:41:05', 0, '2024-12-17 22:41:05');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10985, 'thinkpad e14 2023 英特尔酷睿i5 经典商务本 0ecd', '第13代智能英特尔酷睿i5-13500h/wind0ws 11 家庭中文版/', 157, 'http://localhost:8080/upload/20241218_16130789.png', 'http://localhost:8080/upload/20241218_16130789.png', '<p><br></p>', 1, 4699, 0, '升级企业会员享2000元', 0, 0, '2024-12-18 16:13:46', 0, '2024-12-18 16:13:46');

-- ----------------------------
-- Table structure for tb_newbee_mall_index_config
-- ----------------------------
DROP TABLE IF EXISTS `tb_newbee_mall_index_config`;
CREATE TABLE `tb_newbee_mall_index_config`  (
  `config_id` bigint NOT NULL AUTO_INCREMENT COMMENT '首页配置项主键id',
  `config_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '显示字符(配置搜索时不可为空，其他可为空)',
  `config_type` tinyint NOT NULL DEFAULT 0 COMMENT '1-搜索框热搜 2-搜索下拉框热搜 3-(首页)热销商品 4-(首页)新品上线 5-(首页)为你推荐',
  `goods_id` bigint NOT NULL DEFAULT 0 COMMENT '商品id 默认为0',
  `redirect_url` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '##' COMMENT '点击后的跳转地址(默认不跳转)',
  `config_rank` int NOT NULL DEFAULT 0 COMMENT '排序值(字段越大越靠前)',
  `is_deleted` tinyint NOT NULL DEFAULT 0 COMMENT '删除标识字段(0-未删除 1-已删除)',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_user` int NOT NULL DEFAULT 0 COMMENT '创建者id',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最新修改时间',
  `update_user` int NULL DEFAULT 0 COMMENT '修改者id',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_newbee_mall_index_config
-- ----------------------------
INSERT INTO `tb_newbee_mall_index_config` VALUES (1, '热销商品 iPhone XR', 3, 10284, '##', 10, 0, '2019-09-18 17:04:56', 0, '2019-09-18 17:04:56', 0);
INSERT INTO `tb_newbee_mall_index_config` VALUES (2, '热销商品 华为 Mate20', 3, 10779, '##', 100, 0, '2019-09-18 17:05:27', 0, '2019-09-18 17:05:27', 0);
INSERT INTO `tb_newbee_mall_index_config` VALUES (3, '热销商品 荣耀8X', 3, 10700, '##', 300, 0, '2019-09-18 17:08:02', 0, '2019-09-18 17:08:02', 0);
INSERT INTO `tb_newbee_mall_index_config` VALUES (4, '热销商品 Apple AirPods', 3, 10159, '##', 101, 0, '2019-09-18 17:08:56', 0, '2019-09-18 17:08:56', 0);
INSERT INTO `tb_newbee_mall_index_config` VALUES (5, '新品上线 Macbook Pro', 4, 10269, '##', 100, 0, '2019-09-18 17:10:36', 0, '2019-09-18 17:10:36', 0);
INSERT INTO `tb_newbee_mall_index_config` VALUES (6, '新品上线 荣耀 9X Pro', 4, 10755, '##', 100, 0, '2019-09-18 17:11:05', 0, '2019-09-18 17:11:05', 0);
INSERT INTO `tb_newbee_mall_index_config` VALUES (7, '新品上线 iPhone 11', 4, 10283, '##', 102, 0, '2019-09-18 17:11:44', 0, '2019-09-18 17:11:44', 0);
INSERT INTO `tb_newbee_mall_index_config` VALUES (8, '新品上线 iPhone 11 Pro', 4, 10320, '##', 101, 0, '2019-09-18 17:11:58', 0, '2019-09-18 17:11:58', 0);
INSERT INTO `tb_newbee_mall_index_config` VALUES (9, '新品上线 华为无线耳机', 4, 10186, '##', 100, 0, '2019-09-18 17:12:29', 0, '2019-09-18 17:12:29', 0);
INSERT INTO `tb_newbee_mall_index_config` VALUES (10, '纪梵希高定香榭天鹅绒唇膏', 5, 10233, '##', 98, 0, '2019-09-18 17:47:23', 0, '2019-09-18 17:47:23', 0);
INSERT INTO `tb_newbee_mall_index_config` VALUES (11, 'MAC 磨砂系列', 5, 10237, '##', 100, 0, '2019-09-18 17:47:44', 0, '2019-09-18 17:47:44', 0);
INSERT INTO `tb_newbee_mall_index_config` VALUES (12, '索尼 WH-1000XM3', 5, 10195, '##', 102, 0, '2019-09-18 17:48:00', 0, '2019-09-18 17:48:00', 0);
INSERT INTO `tb_newbee_mall_index_config` VALUES (13, 'Apple AirPods', 5, 10180, '##', 101, 0, '2019-09-18 17:49:11', 0, '2019-09-18 17:49:11', 0);
INSERT INTO `tb_newbee_mall_index_config` VALUES (14, '小米 Redmi AirDots', 5, 10160, '##', 100, 0, '2019-09-18 17:49:28', 0, '2019-09-18 17:49:28', 0);
INSERT INTO `tb_newbee_mall_index_config` VALUES (15, '2019 MacBookAir 13', 5, 10254, '##', 100, 0, '2019-09-18 17:50:18', 0, '2019-09-18 17:50:18', 0);
INSERT INTO `tb_newbee_mall_index_config` VALUES (16, '女式粗棉线条纹长袖T恤', 5, 10158, '##', 99, 0, '2019-09-18 17:52:03', 0, '2019-09-18 17:52:03', 0);
INSERT INTO `tb_newbee_mall_index_config` VALUES (17, '塑料浴室座椅', 5, 10154, '##', 100, 0, '2019-09-18 17:52:19', 0, '2019-09-18 17:52:19', 0);
INSERT INTO `tb_newbee_mall_index_config` VALUES (18, '靠垫', 5, 10147, '##', 101, 0, '2019-09-18 17:52:50', 0, '2019-09-18 17:52:50', 0);
INSERT INTO `tb_newbee_mall_index_config` VALUES (19, '小型超声波香薰机', 5, 10113, '##', 100, 0, '2019-09-18 17:54:07', 0, '2019-09-18 17:54:07', 0);
INSERT INTO `tb_newbee_mall_index_config` VALUES (20, '11', 5, 1, '##', 0, 1, '2019-09-19 08:31:11', 0, '2019-09-19 08:31:20', 0);
INSERT INTO `tb_newbee_mall_index_config` VALUES (21, '热销商品 华为 P30', 3, 10742, '##', 200, 0, '2019-09-19 23:23:38', 0, '2019-09-19 23:23:38', 0);
INSERT INTO `tb_newbee_mall_index_config` VALUES (22, '新品上线 华为Mate30 Pro', 4, 10893, '##', 200, 0, '2019-09-19 23:26:05', 0, '2019-09-19 23:26:05', 0);
INSERT INTO `tb_newbee_mall_index_config` VALUES (23, '新品上线 华为 Mate 30', 4, 10895, '##', 199, 0, '2019-09-19 23:26:32', 0, '2019-09-19 23:26:32', 0);
INSERT INTO `tb_newbee_mall_index_config` VALUES (24, '华为 Mate 30 Pro', 5, 10894, '##', 101, 0, '2019-09-19 23:27:00', 0, '2019-09-19 23:27:00', 0);

-- ----------------------------
-- Table structure for tb_newbee_mall_order
-- ----------------------------
DROP TABLE IF EXISTS `tb_newbee_mall_order`;
CREATE TABLE `tb_newbee_mall_order`  (
  `order_id` bigint NOT NULL AUTO_INCREMENT COMMENT '订单表主键id',
  `order_no` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '订单号',
  `user_id` bigint NOT NULL DEFAULT 0 COMMENT '用户主键id',
  `total_price` int NOT NULL DEFAULT 1 COMMENT '订单总价',
  `pay_status` tinyint NOT NULL DEFAULT 0 COMMENT '支付状态:0.未支付,1.支付成功,-1:支付失败',
  `pay_type` tinyint NOT NULL DEFAULT 0 COMMENT '0.无 1.支付宝支付 2.微信支付',
  `pay_time` datetime NULL DEFAULT NULL COMMENT '支付时间',
  `order_status` tinyint NOT NULL DEFAULT 0 COMMENT '订单状态:0.待支付 1.已支付 2.配货完成 3:出库成功 4.交易成功 -1.手动关闭 -2.超时关闭 -3.商家关闭',
  `extra_info` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '订单body',
  `user_name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '收货人姓名',
  `user_phone` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '收货人手机号',
  `user_address` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '收货人收货地址',
  `is_deleted` tinyint NOT NULL DEFAULT 0 COMMENT '删除标识字段(0-未删除 1-已删除)',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最新修改时间',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_newbee_mall_order
-- ----------------------------
INSERT INTO `tb_newbee_mall_order` VALUES (1, '15688187285093508', 1, 2492, 1, 2, '2019-09-18 23:00:18', -1, '', '', '', 'xafsdufhpwe', 0, '2019-09-18 22:53:07', '2019-09-18 22:55:32');
INSERT INTO `tb_newbee_mall_order` VALUES (2, '15688188616936181', 1, 135, 1, 1, '2019-09-18 23:01:06', 1, '', '', '', 'xafsdufhpwe', 0, '2019-09-18 22:55:20', '2019-09-18 23:01:06');
INSERT INTO `tb_newbee_mall_order` VALUES (3, '15689089426956979', 1, 15487, 1, 1, '2019-09-20 00:16:03', 3, '', '', '', '杭州市西湖区xx小区x幢419 十三 137xxxx2703', 0, '2019-09-19 23:56:40', '2019-09-20 00:10:39');
INSERT INTO `tb_newbee_mall_order` VALUES (4, '15689090398492576', 1, 8499, 0, 0, NULL, 0, '', '', '', '杭州市西湖区xx小区x幢419 十三 137xxxx2703', 0, '2019-09-19 23:58:18', '2019-09-19 23:58:18');
INSERT INTO `tb_newbee_mall_order` VALUES (5, '15689096266448452', 1, 115, 1, 2, '2019-09-20 00:13:52', 1, '', '', '', '杭州市西湖区xx小区x幢419 十三 137xxxx2703', 0, '2019-09-20 00:08:04', '2019-09-20 00:13:52');
INSERT INTO `tb_newbee_mall_order` VALUES (6, '15691645776131562', 7, 7998, 1, 1, '2019-09-22 23:05:53', 1, '', '', '', '杭州市西湖区xx小区x幢419 十三 137xxxx2703', 0, '2019-09-22 22:57:15', '2019-09-22 23:05:53');
INSERT INTO `tb_newbee_mall_order` VALUES (7, '15691648465397435', 7, 13998, 1, 2, '2019-09-22 23:07:38', -1, '', '', '', '杭州市西湖区xx小区x幢419 十三 137xxxx2703', 0, '2019-09-22 23:01:44', '2019-09-22 23:02:10');
INSERT INTO `tb_newbee_mall_order` VALUES (8, '15691649071896878', 7, 1246, 1, 1, '2019-09-22 23:08:31', 1, '', '', '', '杭州市西湖区xx小区x幢419 十三 137xxxx2703', 0, '2019-09-22 23:02:45', '2019-09-22 23:08:31');
INSERT INTO `tb_newbee_mall_order` VALUES (9, '15691649748362177', 7, 25656, 1, 1, '2019-09-22 23:09:39', 4, '', '', '', '杭州市西湖区xx小区x幢419 十三 137xxxx2703', 0, '2019-09-22 23:03:52', '2019-09-22 23:50:45');
INSERT INTO `tb_newbee_mall_order` VALUES (10, '15691652286194502', 7, 16197, 0, 0, NULL, 0, '', '', '', '杭州市西湖区xx小区x幢419 十三 137xxxx2703', 0, '2019-09-22 23:08:06', '2019-09-22 23:08:06');
INSERT INTO `tb_newbee_mall_order` VALUES (11, '15692210075967186', 6, 5999, 1, 2, '2019-09-23 17:03:05', 1, '', '', '', '杭州市西湖区xx小区x幢419 十三 137xxxx2703', 0, '2019-09-23 14:43:27', '2019-09-23 17:03:05');
INSERT INTO `tb_newbee_mall_order` VALUES (12, '15692218454123239', 6, 7245, 0, 0, NULL, 0, '', '', '', '杭州市西湖区xx小区x幢419 十三 137xxxx2703', 0, '2019-09-23 14:57:25', '2019-09-23 14:57:25');
INSERT INTO `tb_newbee_mall_order` VALUES (13, '15692225252983527', 6, 5488, 1, 2, '2019-09-23 15:38:54', 1, '', '', '', '杭州市西湖区xx小区x幢419 十三 137xxxx2703', 0, '2019-09-23 15:08:45', '2019-09-23 15:38:54');
INSERT INTO `tb_newbee_mall_order` VALUES (14, '15692291639125640', 6, 9046, 1, 2, '2019-09-23 16:59:32', -1, '', '', '', '杭州市西湖区xx小区x幢419 十三 137xxxx2709', 0, '2019-09-23 16:59:23', '2019-09-23 16:59:40');
INSERT INTO `tb_newbee_mall_order` VALUES (15, '15692295348262843', 6, 65, 1, 2, '2019-09-23 17:06:17', 1, '', '', '', '杭州市西湖区xx小区x幢419 十三 137xxxx2709', 0, '2019-09-23 17:05:34', '2019-09-23 17:06:17');
INSERT INTO `tb_newbee_mall_order` VALUES (16, '15692298037679052', 6, 15233, 1, 2, '2019-09-23 17:10:08', 1, '', '', '', '上海浦东新区XX路XX号 999 137xxxx7797', 0, '2019-09-23 17:10:03', '2019-09-23 17:10:08');
INSERT INTO `tb_newbee_mall_order` VALUES (17, '15694781962831307', 7, 1246, 1, 2, '2019-09-26 14:10:12', -1, '', '', '', '杭州市西湖区xx小区x幢419 十三 137xxxx2703', 0, '2019-09-26 14:09:56', '2019-09-26 14:10:22');
INSERT INTO `tb_newbee_mall_order` VALUES (18, '15698039249771093', 7, 3199, 0, 0, NULL, 0, '', '', '', '杭州市西湖区xx小区x幢419 十三 137xxxx2703', 0, '2019-09-30 08:38:26', '2019-09-30 08:38:26');
INSERT INTO `tb_newbee_mall_order` VALUES (19, '15702783557537865', 7, 6819, 0, 0, NULL, 0, '', '', '', '杭州市西湖区xx小区x幢419 十三 137xxxx2703', 0, '2019-10-05 20:20:10', '2019-10-05 20:20:10');
INSERT INTO `tb_newbee_mall_order` VALUES (20, '15702847670935185', 6, 3999, 1, 2, '2019-10-05 22:13:03', 1, '', '', '', '上海浦东新区XX路XX号 999 137xxxx7797', 0, '2019-10-05 22:12:47', '2019-10-05 22:13:03');

-- ----------------------------
-- Table structure for tb_newbee_mall_order_item
-- ----------------------------
DROP TABLE IF EXISTS `tb_newbee_mall_order_item`;
CREATE TABLE `tb_newbee_mall_order_item`  (
  `order_item_id` bigint NOT NULL AUTO_INCREMENT COMMENT '订单关联购物项主键id',
  `order_id` bigint NOT NULL DEFAULT 0 COMMENT '订单主键id',
  `goods_id` bigint NOT NULL DEFAULT 0 COMMENT '关联商品id',
  `goods_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '下单时商品的名称(订单快照)',
  `goods_cover_img` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '下单时商品的主图(订单快照)',
  `selling_price` int NOT NULL DEFAULT 1 COMMENT '下单时商品的价格(订单快照)',
  `goods_count` int NOT NULL DEFAULT 1 COMMENT '数量(订单快照)',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`order_item_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_newbee_mall_order_item
-- ----------------------------
INSERT INTO `tb_newbee_mall_order_item` VALUES (1, 1, 10180, 'Apple AirPods 配充电盒', '/goods-img/64768a8d-0664-4b29-88c9-2626578ffbd1.jpg', 1246, 2, '2019-09-18 22:53:07');
INSERT INTO `tb_newbee_mall_order_item` VALUES (2, 2, 10147, 'MUJI 羽毛 靠垫', '/goods-img/0f701215-b782-40c7-8bbd-97b51be56461.jpg', 65, 1, '2019-09-18 22:55:20');
INSERT INTO `tb_newbee_mall_order_item` VALUES (3, 2, 10158, '无印良品 女式粗棉线条纹长袖T恤', 'http://localhost:28089/goods-img/5488564b-8335-4b0c-a5a4-52f3f03ee728.jpg', 70, 1, '2019-09-18 22:55:20');
INSERT INTO `tb_newbee_mall_order_item` VALUES (4, 3, 10742, '华为 HUAWEI P30 Pro', '/goods-img/dda1d575-cdac-4eb4-a118-3834490166f7.jpg', 5488, 1, '2019-09-19 23:56:40');
INSERT INTO `tb_newbee_mall_order_item` VALUES (5, 3, 10320, 'Apple iPhone 11 Pro', '/goods-img/0025ad55-e260-4a00-be79-fa5b8c5ac0de.jpg', 9999, 1, '2019-09-19 23:56:40');
INSERT INTO `tb_newbee_mall_order_item` VALUES (6, 4, 10254, 'Apple 2019款 MacBook Air 13.3', '/goods-img/7810bc9d-236f-4386-a0ef-45a831b49bf2.jpg', 8499, 1, '2019-09-19 23:58:18');
INSERT INTO `tb_newbee_mall_order_item` VALUES (7, 5, 10104, '无印良品 MUJI 修正带', '/goods-img/98ce17e1-890e-4eaf-856a-7fce8ffebc4c.jpg', 15, 1, '2019-09-20 00:08:04');
INSERT INTO `tb_newbee_mall_order_item` VALUES (8, 5, 10110, '无印良品 MUJI 基础润肤乳霜', '/goods-img/30036561-a150-4ea7-9106-29bbea278909.jpg', 100, 1, '2019-09-20 00:08:04');
INSERT INTO `tb_newbee_mall_order_item` VALUES (9, 6, 10895, 'HUAWEI Mate 30 4000万超感光徕卡影像', '/goods-img/mate30-3.png', 3999, 2, '2019-09-22 22:57:15');
INSERT INTO `tb_newbee_mall_order_item` VALUES (10, 7, 10895, 'HUAWEI Mate 30 4000万超感光徕卡影像', '/goods-img/mate30-3.png', 3999, 1, '2019-09-22 23:01:44');
INSERT INTO `tb_newbee_mall_order_item` VALUES (11, 7, 10320, 'Apple iPhone 11 Pro', '/goods-img/0025ad55-e260-4a00-be79-fa5b8c5ac0de.jpg', 9999, 1, '2019-09-22 23:01:44');
INSERT INTO `tb_newbee_mall_order_item` VALUES (12, 8, 10180, 'Apple AirPods 配充电盒', '/goods-img/64768a8d-0664-4b29-88c9-2626578ffbd1.jpg', 1246, 1, '2019-09-22 23:02:45');
INSERT INTO `tb_newbee_mall_order_item` VALUES (13, 9, 10237, 'MAC 雾面丝绒哑光子弹头口红', 'http://localhost:28089/goods-img/1930d79b-88bd-4c5c-8510-0697c9ad2578.jpg', 165, 4, '2019-09-22 23:03:52');
INSERT INTO `tb_newbee_mall_order_item` VALUES (14, 9, 10254, 'Apple 2019款 MacBook Air 13.3', '/goods-img/7810bc9d-236f-4386-a0ef-45a831b49bf2.jpg', 8499, 2, '2019-09-22 23:03:52');
INSERT INTO `tb_newbee_mall_order_item` VALUES (15, 9, 10195, '索尼 WH-1000XM3 头戴式耳机', 'http://localhost:28089/goods-img/0dc503b2-90a2-4971-9723-c085a1844b76.jpg', 2599, 1, '2019-09-22 23:03:52');
INSERT INTO `tb_newbee_mall_order_item` VALUES (16, 9, 10894, 'HUAWEI Mate 30 Pro', '/goods-img/mate30p3.png', 5399, 1, '2019-09-22 23:03:52');
INSERT INTO `tb_newbee_mall_order_item` VALUES (17, 10, 10894, 'HUAWEI Mate 30 Pro', '/goods-img/mate30p3.png', 5399, 3, '2019-09-22 23:08:06');
INSERT INTO `tb_newbee_mall_order_item` VALUES (18, 11, 10279, 'Apple iPhone 11 (A2223)', '/goods-img/a0d09f94-9c46-4ee1-aaef-dfd132e7543e.jpg', 5999, 1, '2019-09-23 14:43:27');
INSERT INTO `tb_newbee_mall_order_item` VALUES (19, 12, 10279, 'Apple iPhone 11 (A2223)', '/goods-img/a0d09f94-9c46-4ee1-aaef-dfd132e7543e.jpg', 5999, 1, '2019-09-23 14:57:26');
INSERT INTO `tb_newbee_mall_order_item` VALUES (20, 12, 10159, 'Apple AirPods 配充电盒', '/goods-img/53c9f268-7cd4-4fac-909c-2dc066625655.jpg', 1246, 1, '2019-09-23 14:57:26');
INSERT INTO `tb_newbee_mall_order_item` VALUES (21, 13, 10742, '华为 HUAWEI P30 Pro', '/goods-img/dda1d575-cdac-4eb4-a118-3834490166f7.jpg', 5488, 1, '2019-09-23 15:08:46');
INSERT INTO `tb_newbee_mall_order_item` VALUES (22, 14, 10158, '无印良品 女式粗棉线条纹长袖T恤', '/goods-img/5488564b-8335-4b0c-a5a4-52f3f03ee728.jpg', 70, 1, '2019-09-23 16:59:24');
INSERT INTO `tb_newbee_mall_order_item` VALUES (23, 14, 10704, '华为 HUAWEI P30 超感光徕卡三摄麒麟980AI...', '/goods-img/b9e6d770-06dd-40f4-9ae5-31103cec6e5f.jpg', 3988, 1, '2019-09-23 16:59:24');
INSERT INTO `tb_newbee_mall_order_item` VALUES (24, 14, 10739, '华为 HUAWEI P30 Pro', '/goods-img/65c8e729-aeca-4780-977b-4d0d39d4aa2e.jpg', 4988, 1, '2019-09-23 16:59:24');
INSERT INTO `tb_newbee_mall_order_item` VALUES (25, 15, 10147, 'MUJI 羽毛 靠垫', '/goods-img/0f701215-b782-40c7-8bbd-97b51be56461.jpg', 65, 1, '2019-09-23 17:05:34');
INSERT INTO `tb_newbee_mall_order_item` VALUES (26, 16, 10742, '华为 HUAWEI P30 Pro', '/goods-img/dda1d575-cdac-4eb4-a118-3834490166f7.jpg', 5488, 1, '2019-09-23 17:10:03');
INSERT INTO `tb_newbee_mall_order_item` VALUES (27, 16, 10159, 'Apple AirPods 配充电盒', '/goods-img/53c9f268-7cd4-4fac-909c-2dc066625655.jpg', 1246, 1, '2019-09-23 17:10:03');
INSERT INTO `tb_newbee_mall_order_item` VALUES (28, 16, 10254, 'Apple 2019款 MacBook Air 13.3', '/goods-img/7810bc9d-236f-4386-a0ef-45a831b49bf2.jpg', 8499, 1, '2019-09-23 17:10:03');
INSERT INTO `tb_newbee_mall_order_item` VALUES (29, 17, 10180, 'Apple AirPods 配充电盒', '/goods-img/64768a8d-0664-4b29-88c9-2626578ffbd1.jpg', 1246, 1, '2019-09-26 14:09:56');
INSERT INTO `tb_newbee_mall_order_item` VALUES (30, 18, 10779, '华为 HUAWEI Mate 20', '/goods-img/08f9a912-f049-4cf8-a839-115fc6582398.jpg', 3199, 1, '2019-09-30 08:38:26');
INSERT INTO `tb_newbee_mall_order_item` VALUES (31, 19, 10742, '华为 HUAWEI P30 Pro', '/goods-img/dda1d575-cdac-4eb4-a118-3834490166f7.jpg', 5488, 1, '2019-10-05 20:20:10');
INSERT INTO `tb_newbee_mall_order_item` VALUES (32, 19, 10154, '无印良品 MUJI 塑料浴室座椅', '/goods-img/15395057-94e9-4545-a8ee-8aee025f40c5.jpg', 85, 1, '2019-10-05 20:20:10');
INSERT INTO `tb_newbee_mall_order_item` VALUES (33, 19, 10159, 'Apple AirPods 配充电盒', '/goods-img/53c9f268-7cd4-4fac-909c-2dc066625655.jpg', 1246, 1, '2019-10-05 20:20:10');
INSERT INTO `tb_newbee_mall_order_item` VALUES (34, 20, 10895, 'HUAWEI Mate 30 4000万超感光徕卡影像', '/goods-img/mate30-3.png', 3999, 1, '2019-10-05 22:12:47');

-- ----------------------------
-- Table structure for tb_newbee_mall_shopping_cart_item
-- ----------------------------
DROP TABLE IF EXISTS `tb_newbee_mall_shopping_cart_item`;
CREATE TABLE `tb_newbee_mall_shopping_cart_item`  (
  `cart_item_id` bigint NOT NULL AUTO_INCREMENT COMMENT '购物项主键id',
  `user_id` bigint NOT NULL COMMENT '用户主键id',
  `goods_id` bigint NOT NULL DEFAULT 0 COMMENT '关联商品id',
  `goods_count` int NOT NULL DEFAULT 1 COMMENT '数量(最大为5)',
  `is_deleted` tinyint NOT NULL DEFAULT 0 COMMENT '删除标识字段(0-未删除 1-已删除)',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最新修改时间',
  PRIMARY KEY (`cart_item_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 69 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_newbee_mall_shopping_cart_item
-- ----------------------------

-- ----------------------------
-- Table structure for tb_newbee_mall_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_newbee_mall_user`;
CREATE TABLE `tb_newbee_mall_user`  (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户主键id',
  `nick_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '用户昵称',
  `login_name` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '登陆名称(默认为手机号)',
  `password_md5` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT 'MD5加密后的密码',
  `introduce_sign` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '个性签名',
  `address` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '收货地址',
  `is_deleted` tinyint NOT NULL DEFAULT 0 COMMENT '注销标识字段(0-正常 1-已注销)',
  `locked_flag` tinyint NOT NULL DEFAULT 0 COMMENT '锁定标识字段(0-未锁定 1-已锁定)',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '注册时间',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_newbee_mall_user
-- ----------------------------
INSERT INTO `tb_newbee_mall_user` VALUES (1, '十三', '13700002703', 'e10adc3949ba59abbe56e057f20f883e', '我不怕千万人阻挡，只怕自己投降', '杭州市西湖区xx小区x幢419 十三 137xxxx2703', 0, 0, '2019-09-22 08:44:57');
INSERT INTO `tb_newbee_mall_user` VALUES (6, '测试用户1', '13711113333', 'dda01dc6d334badcd031102be6bee182', '测试用户1', '上海浦东新区XX路XX号 999 137xxxx7797', 0, 0, '2019-08-29 10:51:39');
INSERT INTO `tb_newbee_mall_user` VALUES (7, '测试用户2测试用户2测试用户2测试用户2', '13811113333', 'dda01dc6d334badcd031102be6bee182', '测试用户2', '杭州市西湖区xx小区x幢419 十三 137xxxx2703', 0, 0, '2019-08-29 10:55:08');
INSERT INTO `tb_newbee_mall_user` VALUES (8, '测试用户3', '13911113333', 'dda01dc6d334badcd031102be6bee182', '测试用户3', '杭州市西湖区xx小区x幢419 十三 137xxxx2703', 0, 0, '2019-08-29 10:55:16');

SET FOREIGN_KEY_CHECKS = 1;
