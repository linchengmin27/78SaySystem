/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : 78SaySystemDB

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2015-11-20 14:25:05
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
  `url` varchar(256) DEFAULT NULL COMMENT 'URL',
  `sort` int(11) DEFAULT '1' COMMENT '排序',
  `isDelete` bit(1) DEFAULT b'0' COMMENT '是否删除',
  `createTime` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `modifyTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Category
-- ----------------------------
INSERT INTO `Category` VALUES ('1', '世界之最', null, null, null, '', '1', '', '2015-10-09 04:49:57', '2015-10-16 08:14:57');
INSERT INTO `Category` VALUES ('2', '动物之最', null, null, '1', 'world/index/category/2.html', '1', '', '2015-10-09 04:50:20', '2015-11-20 11:36:36');
INSERT INTO `Category` VALUES ('3', '植物之最', null, null, '1', 'world/index/category/3.html', '2', '', '2015-10-09 04:50:51', '2015-11-20 11:36:39');
INSERT INTO `Category` VALUES ('4', '人类之最', null, null, '1', 'world/index/category/4.html', '3', '', '2015-10-09 04:51:03', '2015-11-20 11:36:42');
INSERT INTO `Category` VALUES ('5', '科技之最', null, null, '1', 'world/index/category/5.html', '4', '', '2015-10-09 04:51:16', '2015-11-20 11:36:46');
INSERT INTO `Category` VALUES ('6', '自然之最', null, null, '1', 'world/index/category/6.html', '5', '', '2015-10-09 04:51:27', '2015-11-20 11:36:50');
INSERT INTO `Category` VALUES ('7', '机械之最', null, null, '1', 'world/index/category/7.html', '6', '', '2015-10-09 04:51:37', '2015-11-20 11:36:53');
INSERT INTO `Category` VALUES ('8', '文物之最', null, null, '1', 'world/index/category/8.html', '7', '', '2015-10-09 04:51:47', '2015-11-20 11:36:56');
INSERT INTO `Category` VALUES ('9', '艺术之最', null, null, '1', 'world/index/category/9.html', '8', '', '2015-10-09 04:51:57', '2015-11-20 11:37:00');
INSERT INTO `Category` VALUES ('10', '娱乐之最', null, null, '1', 'world/index/category/10.html', '9', '', '2015-10-09 04:52:08', '2015-11-20 11:37:05');
INSERT INTO `Category` VALUES ('11', '建筑之最', null, null, '1', 'world/index/category/11.html', '10', '', '2015-10-09 04:52:19', '2015-11-20 11:37:08');
INSERT INTO `Category` VALUES ('12', '商业之最', null, null, '1', 'world/index/category/12.html', '11', '', '2015-10-09 04:52:29', '2015-11-20 11:37:11');
INSERT INTO `Category` VALUES ('13', '军事之最', null, null, '1', 'world/index/category/13.html', '12', '', '2015-10-09 04:52:40', '2015-11-20 11:37:15');
INSERT INTO `Category` VALUES ('14', '吉尼斯纪录', null, null, null, '', '2', '', '2015-10-09 04:52:57', '2015-10-16 08:14:38');
INSERT INTO `Category` VALUES ('15', '人', null, null, '14', 'records/index/category/15.html', '1', '', '2015-10-09 04:53:14', '2015-11-20 11:38:26');
INSERT INTO `Category` VALUES ('16', '事', null, null, '14', 'records/index/category/16.html', '2', '', '2015-10-09 04:53:45', '2015-11-20 11:38:28');
INSERT INTO `Category` VALUES ('17', '物', null, null, '14', 'records/index/category/17.html', '3', '', '2015-10-09 04:54:04', '2015-11-20 11:38:30');
INSERT INTO `Category` VALUES ('18', '单位', null, null, '14', 'records/index/category/18.html', '4', '', '2015-10-09 04:54:24', '2015-11-20 11:38:33');
INSERT INTO `Category` VALUES ('19', '国家', null, null, '14', 'records/index/category/19.html', '5', '', '2015-10-09 04:54:35', '2015-11-20 11:38:35');
INSERT INTO `Category` VALUES ('20', '思维', null, null, '14', 'records/index/category/20.html', '6', '', '2015-10-09 04:54:51', '2015-11-20 11:38:40');
INSERT INTO `Category` VALUES ('21', '未解之谜', null, null, null, '', '3', '', '2015-10-09 04:55:09', '2015-10-19 22:08:26');
INSERT INTO `Category` VALUES ('22', '奇闻怪事', '奇闻', '', '21', 'mystery/index/category/22.html', '1', '', '2015-10-09 04:55:21', '2015-11-20 11:37:29');
INSERT INTO `Category` VALUES ('23', '宇宙奥秘', '宇宙', '', '21', 'mystery/index/category/23.html', '2', '', '2015-10-09 04:55:31', '2015-11-20 11:37:33');
INSERT INTO `Category` VALUES ('24', '自然之谜', '自然', '', '21', 'mystery/index/category/24.html', '3', '', '2015-10-09 04:55:39', '2015-11-20 11:37:40');
INSERT INTO `Category` VALUES ('25', '考古发现', '考古', '', '21', 'mystery/index/category/25.html', '4', '', '2015-10-09 04:55:48', '2015-11-20 11:37:44');
INSERT INTO `Category` VALUES ('26', '科学探秘', '科学', '', '21', 'mystery/index/category/26.html', '5', '', '2015-10-09 04:55:58', '2015-11-20 11:37:48');
INSERT INTO `Category` VALUES ('27', '历史趣闻', '历史', '', '21', 'mystery/index/category/27.html', '6', '', '2015-10-09 04:56:08', '2015-11-20 11:37:52');
INSERT INTO `Category` VALUES ('28', 'UFO探秘', 'UFO', '', '21', 'mystery/index/category/28.html', '7', '', '2015-10-09 04:56:18', '2015-11-20 11:37:57');
INSERT INTO `Category` VALUES ('29', '天下奇葩', null, null, null, null, '4', '', '2015-10-09 04:56:28', '2015-10-12 15:43:28');
INSERT INTO `Category` VALUES ('30', '奇葩新闻', null, null, '29', 'wonder/news/index.html', '1', '', '2015-10-09 04:56:39', '2015-11-20 11:39:52');
INSERT INTO `Category` VALUES ('31', '奇葩图片', null, null, '29', 'wonder/picture/index.html', '2', '', '2015-10-09 04:56:52', '2015-11-20 11:40:44');
INSERT INTO `Category` VALUES ('32', '热文辣文', null, null, null, null, '5', '', '2015-10-09 04:57:05', '2015-10-23 15:28:53');
INSERT INTO `Category` VALUES ('33', '联系我们', null, null, null, null, '6', '', '2015-10-12 15:37:01', '2015-11-20 11:35:48');
INSERT INTO `Category` VALUES ('34', '所有', null, null, '1', 'world/index.html', '0', '', '2015-10-12 15:44:39', '2015-11-20 11:36:15');
INSERT INTO `Category` VALUES ('35', '所有', null, null, '14', 'records/index.html', '0', '', '2015-10-12 15:45:08', '2015-11-20 11:38:56');
INSERT INTO `Category` VALUES ('36', '所有', null, null, '21', 'mystery/index.html', '0', '', '2015-10-12 15:45:28', '2015-11-20 11:39:03');

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
  `articleId` bigint(20) DEFAULT NULL,
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
CREATE TABLE `Contactus` (
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
CREATE TABLE `Friendlink` (
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
CREATE TABLE `Systemparam` (
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
