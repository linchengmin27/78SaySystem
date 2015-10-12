/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : 78SaySystemDB

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2015-10-09 17:24:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `Article`
-- ----------------------------
DROP TABLE IF EXISTS `Article`;
CREATE TABLE `Article` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(256) DEFAULT NULL COMMENT '标题',
  `abstract` varchar(512) DEFAULT NULL COMMENT '摘要',
  `content` text COMMENT '内容',
  `tag` varchar(128) DEFAULT NULL COMMENT '标签',
  `logo` varchar(256) DEFAULT NULL COMMENT '列表logo',
  `logo2` varchar(256) DEFAULT NULL COMMENT '列表logo2',
  `categoryId` bigint(20) DEFAULT NULL COMMENT '类别ID',
  `source` varchar(512) DEFAULT NULL COMMENT '来源',
  `views` int(11) DEFAULT '0' COMMENT '浏览器',
  `reviews` int(11) DEFAULT '0' COMMENT '评论数',
  `editor` varchar(255) DEFAULT NULL COMMENT '编辑员',
  `listType` int(11) DEFAULT '1' COMMENT '列表显示类型',
  `isHeadlines` bit(1) DEFAULT b'0' COMMENT '是否为头条',
  `isPlacedHome` bit(1) DEFAULT b'0' COMMENT '是否置于首页',
  `isFeatured` bit(1) DEFAULT b'0' COMMENT '是否特别推荐',
  `isPublish` bit(1) DEFAULT b'0' COMMENT '是否发布',
  `isDelete` bit(1) DEFAULT b'0' COMMENT '是否删除',
  `createTime` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `modifyTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Article
-- ----------------------------

-- ----------------------------
-- Table structure for `Category`
-- ----------------------------
DROP TABLE IF EXISTS `Category`;
CREATE TABLE `Category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(128) DEFAULT NULL COMMENT '类别名称',
  `shorthand` varchar(128) DEFAULT NULL COMMENT '简写',
  `introduction` varchar(1024) DEFAULT NULL COMMENT '描述',
  `parentId` bigint(20) DEFAULT NULL COMMENT '父级类别ID',
  `isDelete` bit(1) DEFAULT b'0' COMMENT '是否删除',
  `createTime` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `modifyTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Category
-- ----------------------------
INSERT INTO `Category` VALUES ('1', '世界之最', null, null, null, '', '2015-10-09 11:49:57', '2015-10-09 11:50:00');
INSERT INTO `Category` VALUES ('2', '动物之最', null, null, '1', '', '2015-10-09 11:50:20', '2015-10-09 11:50:23');
INSERT INTO `Category` VALUES ('3', '植物之最', null, null, '1', '', '2015-10-09 11:50:51', '2015-10-09 11:50:54');
INSERT INTO `Category` VALUES ('4', '人类之最', null, null, '1', '', '2015-10-09 11:51:03', '2015-10-09 11:51:06');
INSERT INTO `Category` VALUES ('5', '科技之最', null, null, '1', '', '2015-10-09 11:51:16', '2015-10-09 11:51:18');
INSERT INTO `Category` VALUES ('6', '自然之最', null, null, '1', '', '2015-10-09 11:51:27', '2015-10-09 11:51:29');
INSERT INTO `Category` VALUES ('7', '机械之最', null, null, '1', '', '2015-10-09 11:51:37', '2015-10-09 11:51:40');
INSERT INTO `Category` VALUES ('8', '文物之最', null, null, '1', '', '2015-10-09 11:51:47', '2015-10-09 11:51:50');
INSERT INTO `Category` VALUES ('9', '艺术之最', null, null, '1', '', '2015-10-09 11:51:57', '2015-10-09 11:52:00');
INSERT INTO `Category` VALUES ('10', '娱乐之最', null, null, '1', '', '2015-10-09 11:52:08', '2015-10-09 11:52:10');
INSERT INTO `Category` VALUES ('11', '建筑之最', null, null, '1', '', '2015-10-09 11:52:19', '2015-10-09 11:52:21');
INSERT INTO `Category` VALUES ('12', '商业之最', null, null, '1', '', '2015-10-09 11:52:29', '2015-10-09 11:52:31');
INSERT INTO `Category` VALUES ('13', '军事之最', null, null, '1', '', '2015-10-09 11:52:40', '2015-10-09 11:52:43');
INSERT INTO `Category` VALUES ('14', '吉尼斯纪录', null, null, null, '', '2015-10-09 11:52:57', '2015-10-09 11:53:00');
INSERT INTO `Category` VALUES ('15', '人', null, null, '14', '', '2015-10-09 11:53:14', '2015-10-09 11:53:18');
INSERT INTO `Category` VALUES ('16', '事', null, null, '14', '', '2015-10-09 11:53:45', '2015-10-09 11:53:47');
INSERT INTO `Category` VALUES ('17', '物', null, null, '14', '', '2015-10-09 11:54:04', '2015-10-09 11:54:06');
INSERT INTO `Category` VALUES ('18', '单位', null, null, '14', '', '2015-10-09 11:54:24', '2015-10-09 11:54:27');
INSERT INTO `Category` VALUES ('19', '国家', null, null, '14', '', '2015-10-09 11:54:35', '2015-10-09 11:54:41');
INSERT INTO `Category` VALUES ('20', '思维', null, null, '14', '', '2015-10-09 11:54:51', '2015-10-09 11:54:55');
INSERT INTO `Category` VALUES ('21', '未解之谜', null, null, null, '', '2015-10-09 11:55:09', '2015-10-09 11:55:10');
INSERT INTO `Category` VALUES ('22', '奇闻怪事', '奇闻', '', '21', '', '2015-10-09 11:55:21', '2015-10-09 13:38:22');
INSERT INTO `Category` VALUES ('23', '宇宙奥秘', '宇宙', '', '21', '', '2015-10-09 11:55:31', '2015-10-09 13:38:24');
INSERT INTO `Category` VALUES ('24', '自然之谜', '自然', '', '21', '', '2015-10-09 11:55:39', '2015-10-09 13:38:28');
INSERT INTO `Category` VALUES ('25', '考古发现', '考古', '', '21', '', '2015-10-09 11:55:48', '2015-10-09 13:38:30');
INSERT INTO `Category` VALUES ('26', '科学探秘', '科学', '', '21', '', '2015-10-09 11:55:58', '2015-10-09 13:38:32');
INSERT INTO `Category` VALUES ('27', '历史趣闻', '历史', '', '21', '', '2015-10-09 11:56:08', '2015-10-09 13:38:33');
INSERT INTO `Category` VALUES ('28', 'UFO探秘', 'UFO', '', '21', '', '2015-10-09 11:56:18', '2015-10-09 13:38:35');
INSERT INTO `Category` VALUES ('29', '天下奇葩', null, null, null, '', '2015-10-09 11:56:28', '2015-10-09 11:56:29');
INSERT INTO `Category` VALUES ('30', '奇葩新闻', null, null, '29', '', '2015-10-09 11:56:39', '2015-10-09 11:56:41');
INSERT INTO `Category` VALUES ('31', '奇葩图片', null, null, '29', '', '2015-10-09 11:56:52', '2015-10-09 11:56:54');
INSERT INTO `Category` VALUES ('32', '热文辣文', null, null, null, '', '2015-10-09 11:57:05', '2015-10-09 11:57:06');

-- ----------------------------
-- Table structure for `Chapter`
-- ----------------------------
DROP TABLE IF EXISTS `Chapter`;
CREATE TABLE `Chapter` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `content` text COMMENT '章节内容',
  `articleId` bigint(20) DEFAULT NULL COMMENT '归属文章ID',
  `sort` int(11) DEFAULT '1' COMMENT '排序',
  `isDelete` bit(1) DEFAULT b'0' COMMENT '是否删除',
  `createTime` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `modifyTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Chapter
-- ----------------------------

-- ----------------------------
-- Table structure for `Comment`
-- ----------------------------
DROP TABLE IF EXISTS `Comment`;
CREATE TABLE `Comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) DEFAULT NULL COMMENT '称呼',
  `content` varchar(1024) DEFAULT NULL COMMENT '评论内容',
  `logo` varchar(256) DEFAULT NULL COMMENT '图标',
  `isDelete` bit(1) DEFAULT b'0' COMMENT '是否删除',
  `createTime` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `modifyTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Comment
-- ----------------------------

-- ----------------------------
-- Table structure for `ContactUs`
-- ----------------------------
DROP TABLE IF EXISTS `ContactUs`;
CREATE TABLE `ContactUs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(128) DEFAULT NULL COMMENT '称呼',
  `email` varchar(512) DEFAULT NULL COMMENT '邮箱',
  `qq` varchar(16) DEFAULT NULL COMMENT 'QQ',
  `message` varchar(1024) DEFAULT NULL COMMENT '留言内容',
  `isDelete` bit(1) DEFAULT b'0' COMMENT '是否删除',
  `createTime` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `modifyTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ContactUs
-- ----------------------------

-- ----------------------------
-- Table structure for `FriendLink`
-- ----------------------------
DROP TABLE IF EXISTS `FriendLink`;
CREATE TABLE `FriendLink` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(256) DEFAULT NULL COMMENT '友情链接标题',
  `url` varchar(1024) DEFAULT NULL COMMENT 'URL',
  `logo` varchar(256) DEFAULT NULL COMMENT 'logo',
  `logo2` varchar(256) DEFAULT NULL COMMENT 'logo2',
  `isDelete` bit(1) DEFAULT b'0' COMMENT '是否删除',
  `createTime` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `modifyTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of FriendLink
-- ----------------------------

-- ----------------------------
-- Table structure for `Module`
-- ----------------------------
DROP TABLE IF EXISTS `Module`;
CREATE TABLE `Module` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(64) DEFAULT NULL COMMENT '模块名称',
  `isOpen` bit(1) DEFAULT b'1' COMMENT '是否开启',
  `parentId` bigint(20) DEFAULT NULL COMMENT '父级ID',
  `url` varchar(512) DEFAULT NULL COMMENT '链接地址',
  `sort` int(11) DEFAULT '1' COMMENT '序号',
  `isDelete` bit(1) DEFAULT b'0' COMMENT '是否删除',
  `createTime` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `modifyTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Module
-- ----------------------------

-- ----------------------------
-- Table structure for `SystemParam`
-- ----------------------------
DROP TABLE IF EXISTS `SystemParam`;
CREATE TABLE `SystemParam` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `code` varchar(128) DEFAULT NULL COMMENT '参数标识',
  `value` varchar(1024) DEFAULT NULL COMMENT '参数值',
  `isDelete` bit(1) DEFAULT b'0' COMMENT '是否删除',
  `createTime` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `modifyTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of SystemParam
-- ----------------------------

-- ----------------------------
-- Table structure for `Tag`
-- ----------------------------
DROP TABLE IF EXISTS `Tag`;
CREATE TABLE `Tag` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(256) DEFAULT NULL COMMENT '标签名称',
  `isDelete` bit(1) DEFAULT b'0' COMMENT '是否删除',
  `createTime` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `modifyTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Tag
-- ----------------------------
