/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50626
Source Host           : localhost:3306
Source Database       : 78saysystemdb

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2015-10-19 23:17:02
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Article
-- ----------------------------
INSERT INTO `Article` VALUES ('1', '世界上最快的动物：豹子', '猎豹是世界上短跑速度最快的动物，你知道吗？它的最高时速可达到每小时100公里，是不是觉得有些不可思议，下面跟着小编一起领略其的强大。', '', '最快,短跑', 'upload/20151016/logo2-1.jpg', '', '2', '', '0', '0', '小林', '1', '', '', '', '', '', '2015-10-16 14:43:40', '2015-10-17 23:48:32');
INSERT INTO `Article` VALUES ('2', '世界上最长的昆虫：竹节虫 ', '新加坡竹节虫是世界上最长的昆虫。当你看见一个长度达27厘米的昆虫，不知道你的小朋友会不会全部起来？', null, '最长,昆虫', 'upload/20151017/logo2-2.jpg', null, '2', '', '0', '0', '小林', '1', '', '', '', '', '', '2015-10-17 22:17:22', '2015-10-17 23:48:26');
INSERT INTO `Article` VALUES ('3', '世界嘴巴最长的鸟；澳大利鹈鹕', '澳大利鹈鹕（Australian Pelican）是世界上嘴巴最长的鸟这个骄傲头衔的所有者。澳大利鹈鹕的平均身长1.8米，而它们的嘴就有47厘米长。', null, '最长,嘴巴', 'upload/20151017/logo2-3.jpg', null, '2', '', '0', '0', '小林 ', '1', '', '', '', '', '', '2015-10-17 23:26:28', '2015-10-17 23:48:42');
INSERT INTO `Article` VALUES ('4', '世界上最大的鱼：鲸鲨', ' 什么鱼是世界上最长的鱼？答案是鲸鲨。鲸鲨不是鲸，而是一种鲨鱼。它们通常可以长到14米，15吨重。', null, '最大,鱼', 'upload/20151017/logo2-4.jpg', null, '2', null, '0', '0', '小林', '1', '', '', '', '', '', '2015-10-17 23:48:43', '2015-10-17 23:48:45');
INSERT INTO `Article` VALUES ('5', '恐龙的复苏，通过恐龙蛋测量它们的体温', '研究人员知道恐龙曾经统治着地球，但对于这些动物如何进行平衡能量摄入和输出的基本任务——它们的新陈代谢如何工作却所知甚少。现在有相关的研究人员已经着手这个部分，下面就根据小编的阐述进一步了解吧。', null, '恐龙,体温,复苏', 'upload/20151019/logo21-5.jpg', null, '21', null, '0', '0', '小林 ', '1', '', '', '', '', '', '2015-10-19 22:34:19', '2015-10-19 22:34:35');

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
INSERT INTO `Category` VALUES ('2', '动物之最', null, null, '1', 'world/index.action?categoryId=2', '1', '', '2015-10-09 04:50:20', '2015-10-16 08:19:09');
INSERT INTO `Category` VALUES ('3', '植物之最', null, null, '1', 'world/index.action?categoryId=3', '2', '', '2015-10-09 04:50:51', '2015-10-16 08:19:11');
INSERT INTO `Category` VALUES ('4', '人类之最', null, null, '1', 'world/index.action?categoryId=4', '3', '', '2015-10-09 04:51:03', '2015-10-16 08:19:15');
INSERT INTO `Category` VALUES ('5', '科技之最', null, null, '1', 'world/index.action?categoryId=5', '4', '', '2015-10-09 04:51:16', '2015-10-16 08:19:16');
INSERT INTO `Category` VALUES ('6', '自然之最', null, null, '1', 'world/index.action?categoryId=6', '5', '', '2015-10-09 04:51:27', '2015-10-16 08:19:18');
INSERT INTO `Category` VALUES ('7', '机械之最', null, null, '1', 'world/index.action?categoryId=7', '6', '', '2015-10-09 04:51:37', '2015-10-16 08:19:19');
INSERT INTO `Category` VALUES ('8', '文物之最', null, null, '1', 'world/index.action?categoryId=8', '7', '', '2015-10-09 04:51:47', '2015-10-16 08:19:21');
INSERT INTO `Category` VALUES ('9', '艺术之最', null, null, '1', 'world/index.action?categoryId=9', '8', '', '2015-10-09 04:51:57', '2015-10-16 08:19:24');
INSERT INTO `Category` VALUES ('10', '娱乐之最', null, null, '1', 'world/index.action?categoryId=10', '9', '', '2015-10-09 04:52:08', '2015-10-16 08:19:26');
INSERT INTO `Category` VALUES ('11', '建筑之最', null, null, '1', 'world/index.action?categoryId=11', '10', '', '2015-10-09 04:52:19', '2015-10-16 08:19:28');
INSERT INTO `Category` VALUES ('12', '商业之最', null, null, '1', 'world/index.action?categoryId=12', '11', '', '2015-10-09 04:52:29', '2015-10-16 08:19:31');
INSERT INTO `Category` VALUES ('13', '军事之最', null, null, '1', 'world/index.action?categoryId=13', '12', '', '2015-10-09 04:52:40', '2015-10-16 08:19:33');
INSERT INTO `Category` VALUES ('14', '吉尼斯纪录', null, null, null, '', '2', '', '2015-10-09 04:52:57', '2015-10-16 08:14:38');
INSERT INTO `Category` VALUES ('15', '人', null, null, '14', null, '1', '', '2015-10-09 04:53:14', '2015-10-12 15:32:35');
INSERT INTO `Category` VALUES ('16', '事', null, null, '14', null, '2', '', '2015-10-09 04:53:45', '2015-10-12 15:44:01');
INSERT INTO `Category` VALUES ('17', '物', null, null, '14', null, '3', '', '2015-10-09 04:54:04', '2015-10-12 15:44:02');
INSERT INTO `Category` VALUES ('18', '单位', null, null, '14', null, '4', '', '2015-10-09 04:54:24', '2015-10-12 15:44:03');
INSERT INTO `Category` VALUES ('19', '国家', null, null, '14', null, '5', '', '2015-10-09 04:54:35', '2015-10-12 15:44:04');
INSERT INTO `Category` VALUES ('20', '思维', null, null, '14', null, '6', '', '2015-10-09 04:54:51', '2015-10-12 15:44:08');
INSERT INTO `Category` VALUES ('21', '未解之谜', null, null, null, '', '3', '', '2015-10-09 04:55:09', '2015-10-19 22:08:26');
INSERT INTO `Category` VALUES ('22', '奇闻怪事', '奇闻', '', '21', 'mystery/index.action?categoryId=22', '1', '', '2015-10-09 04:55:21', '2015-10-19 22:08:18');
INSERT INTO `Category` VALUES ('23', '宇宙奥秘', '宇宙', '', '21', 'mystery/index.action?categoryId=23', '2', '', '2015-10-09 04:55:31', '2015-10-19 22:08:21');
INSERT INTO `Category` VALUES ('24', '自然之谜', '自然', '', '21', 'mystery/index.action?categoryId=24', '3', '', '2015-10-09 04:55:39', '2015-10-19 22:08:25');
INSERT INTO `Category` VALUES ('25', '考古发现', '考古', '', '21', 'mystery/index.action?categoryId=25', '4', '', '2015-10-09 04:55:48', '2015-10-19 22:08:42');
INSERT INTO `Category` VALUES ('26', '科学探秘', '科学', '', '21', 'mystery/index.action?categoryId=26', '5', '', '2015-10-09 04:55:58', '2015-10-19 22:08:44');
INSERT INTO `Category` VALUES ('27', '历史趣闻', '历史', '', '21', 'mystery/index.action?categoryId=27', '6', '', '2015-10-09 04:56:08', '2015-10-19 22:08:48');
INSERT INTO `Category` VALUES ('28', 'UFO探秘', 'UFO', '', '21', 'mystery/index.action?categoryId=28', '7', '', '2015-10-09 04:56:18', '2015-10-19 22:08:51');
INSERT INTO `Category` VALUES ('29', '天下奇葩', null, null, null, null, '4', '', '2015-10-09 04:56:28', '2015-10-12 15:43:28');
INSERT INTO `Category` VALUES ('30', '奇葩新闻', null, null, '29', null, '1', '', '2015-10-09 04:56:39', '2015-10-09 04:56:41');
INSERT INTO `Category` VALUES ('31', '奇葩图片', null, null, '29', null, '2', '', '2015-10-09 04:56:52', '2015-10-12 15:44:20');
INSERT INTO `Category` VALUES ('32', '热文辣文', null, null, null, null, '5', '', '2015-10-09 04:57:05', '2015-10-12 15:43:29');
INSERT INTO `Category` VALUES ('33', '联系我们', null, null, null, null, '6', '', '2015-10-12 15:37:01', '2015-10-12 15:43:31');
INSERT INTO `Category` VALUES ('34', '所有', null, null, '1', 'world/index.action', '0', '', '2015-10-12 15:44:39', '2015-10-16 08:19:37');
INSERT INTO `Category` VALUES ('35', '所有', null, null, '14', null, '0', '', '2015-10-12 15:45:08', '2015-10-12 15:45:09');
INSERT INTO `Category` VALUES ('36', '所有', null, null, '21', 'mystery/index.action', '0', '', '2015-10-12 15:45:28', '2015-10-19 22:08:32');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Chapter
-- ----------------------------
INSERT INTO `Chapter` VALUES ('1', '<p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px 10px; line-height: 30px; text-indent: 30px; color: rgb(53, 53, 53); border: 1px solid rgb(255, 255, 255); font-family: &#39;microsoft yahei&#39;; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n    猎豹是世界上短跑速度最快的动物。\r\n</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px 10px; line-height: 30px; text-indent: 30px; color: rgb(53, 53, 53); border: 1px solid rgb(255, 255, 255); font-family: &#39;microsoft yahei&#39;; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n    它的最高时速可达到每小时100公里，这相当于自行车通常时速的六至七倍。很难想像吧，但这只是瞬间速度，猎豹并不能长时间地保持这一速度。因为它的耐力远远不如它的爆发力。猎豹身材苗条，体态轻盈，所以和其它食肉动物（如狮子）争食时，它非常吃亏。那怎么办呢？别担心，猎豹自有办法。平时，猎豹爱在高处栖息，所以当它捕到猎物时，它就会把猎物灵敏\r\n    <nobr>\r\n        地拖\r\n    </nobr>到其它食肉动物难去或根本无法去的的树上慢慢享用。这样，它既不必担心别人来窃取，又可在睡足之后，窥探那些大意的靠近树的小动物们。\r\n</p>\r\n<p style=\"text-align:center\">\r\n    <img src=\"[basePath]/upload/20151016/content2-1-1.jpg\" style=\"width: 80%; height:80%;\" border=\"0\" vspace=\"0\" title=\"\" alt=\"\"/>\r\n</p>\r\n<p style=\"text-align: center;\">\r\n    <img src=\"[basePath]/upload/20151016/content2-1-2.jpg\" style=\"width: 80%; height:80%;\"/>\r\n</p>\r\n<p style=\"text-align: center;\">\r\n    <img src=\"[basePath]/upload/20151016/content2-1-3.jpg\" style=\"width: 80%; height:80%;\"/>\r\n</p>', '1', '1', '', '2015-10-16 16:09:33', '2015-10-17 23:08:13');
INSERT INTO `Chapter` VALUES ('2', '<p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px 10px; line-height: 30px; text-indent: 30px; color: rgb(53, 53, 53); border: 1px solid rgb(255, 255, 255); font-family: &#39;microsoft yahei&#39;; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n    新加坡竹节虫是世界上最长的昆虫。其细长的身体长达27厘米，倘若在安静的状态下充分舒展身体的话，身长可超过40厘米。竹节虫所具有的保护形和保护色，使它在灌林丛中栖息时以假乱真。\r\n</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px 10px; line-height: 30px; text-indent: 30px; color: rgb(53, 53, 53); border: 1px solid rgb(255, 255, 255); font-family: &#39;microsoft yahei&#39;; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n    亚马孙巨天牛和大牙天牛是世界上最大的甲虫。它们身长18厘米。大牙天牛的角（长颚）是专为切割树枝所设计的，当它用锐利的角钩住枝条后就绕着树枝作360°的旋转，直至把树枝锯断为止。\r\n</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px 10px; line-height: 30px; text-indent: 30px; color: rgb(53, 53, 53); border: 1px solid rgb(255, 255, 255); font-family: &#39;microsoft yahei&#39;; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n    生长在南美洲的大灰夜蛾身长9厘米，展开双翼有27厘米宽，体色为灰色带有深色斑点，它们都是世界上蝶蛾类中最大的昆虫。\r\n</p>\r\n<p style=\"text-align: center;\">\r\n    <img src=\"[basePath]/upload/20151017/content2-2-1.jpg\"/>\r\n</p>', '2', '1', '', '2015-10-17 22:17:58', '2015-10-17 22:50:36');
INSERT INTO `Chapter` VALUES ('3', '<p style=\"padding: 0px; line-height: 2em; white-space: normal; text-indent: 2em; background-color: rgb(251, 251, 251);\">\r\n    <span style=\"font-size: 14px; color: rgb(34, 34, 34); font-family: 宋体, SimSun;\">澳大利鹈鹕（Australian Pelican）是世界上嘴巴最长的鸟这个骄傲头衔的所有者。澳大利鹈鹕的平均身长1.8米，而它们的嘴就有47厘米长。</span>\r\n</p>\r\n<p style=\"padding: 0px; line-height: 2em; white-space: normal; text-indent: 2em; background-color: rgb(251, 251, 251);\">\r\n    <span style=\"font-size: 14px; color: rgb(34, 34, 34); font-family: 宋体, SimSun;\">如果按照身体的比例，刀嘴蜂鸟（Sword-Billed Hummingbird）的嘴巴是最长的，它们身长25.4 厘米，嘴巴长10.4厘米，嘴巴长度是身体长度的40％。</span>\r\n</p>\r\n<p style=\"padding: 0px; line-height: 2em; white-space: normal; text-indent: 2em; text-align: center; background-color: rgb(251, 251, 251);\">\r\n    <img style=\"width: 60%; height:50%;\" alt=\"世界嘴巴最长的鸟\" src=\"[basePath]/upload/20151017/content2-3-1.jpg\" style=\"border: 0px; display: block; margin: 10px auto 3px; max-width: 618px; cursor: pointer; width: 331px; height: 450px;\" width=\"331\" height=\"450\" border=\"0\" vspace=\"0\" title=\"世界嘴巴最长的鸟\"/>\r\n</p>\r\n<p style=\"padding: 0px; line-height: 2em; white-space: normal; text-indent: 2em; background-color: rgb(251, 251, 251);\">\r\n    <span style=\"font-size: 14px; color: rgb(34, 34, 34); font-family: 宋体, SimSun;\">澳洲鹈鹕在鹈鹕中算中等身型：长1.6-1.8米，翼展2.3-2.5米，重4-13公斤。它们主要呈白色，双翼的主羽呈黑色。喙呈淡粉红色，在鸟类中是最大的，可以长达49厘米。澳洲鹈鹕喜欢生活在辽阔及没有太多植物的水面。只要有足够的鱼类供应，周边的环境并不重要，可以是森林、草原、沙漠、入海的泥地、公园或工业废墟。</span>\r\n</p>\r\n<p style=\"padding: 0px; line-height: 2em; white-space: normal; text-indent: 2em; text-align: center; background-color: rgb(251, 251, 251);\">\r\n    <span style=\"font-size: 14px; color: rgb(34, 34, 34); font-family: 宋体, SimSun;\"><img style=\"width: 60%; height:50%;\" src=\"[basePath]/upload/20151017/content2-3-2.jpg\"/></span>\r\n</p>\r\n<p style=\"padding: 0px; line-height: 2em; white-space: normal; text-indent: 2em; background-color: rgb(251, 251, 251);\">\r\n    <span style=\"font-size: 14px; color: rgb(34, 34, 34); font-family: 宋体, SimSun;\">澳洲鹈鹕并没有特定的行动模式，只会追随食物的供应。当艾尔湖于1974年至1976年间注满时，周边的城市只有少量的澳洲鹈鹕；但当湖水干涸后，它们就再次分散到其他地方，去到边海岸，甚至到达圣诞岛、帕劳及新西兰。</span>\r\n</p>\r\n<p style=\"padding: 0px; line-height: 2em; white-space: normal; text-indent: 2em; text-align: center; background-color: rgb(251, 251, 251);\">\r\n    <span style=\"font-size: 14px; color: rgb(34, 34, 34); font-family: 宋体, SimSun;\"><img style=\"width: 60%; height:50%;\" src=\"[basePath]/upload/20151017/content2-3-3.jpg\"/></span>\r\n</p>\r\n<p style=\"padding: 0px; line-height: 2em; white-space: normal; text-indent: 2em; background-color: rgb(251, 251, 251);\">\r\n    <span style=\"font-size: 14px; color: rgb(34, 34, 34); font-family: 宋体, SimSun;\">澳洲鹈鹕2-3岁就开始繁殖。在热带（即南纬26°以北），繁殖季节始于冬天，南部的是始于春末，内陆地区的则很多是在雨季后。它们的巢是在地上的一个浅洼，有时会有草围边。它们的巢是共享的。它们会生1-3只蛋，蛋呈粉白色及约有93 x 57毫米大。经孵化后，较大的雏鸟会吃得较多，而最细小的则因饥饿或自杀而死亡。孵化后首两星期，雏鸟会吃双亲反刍的液体，之后两个月则会吃鱼类及一些脊椎动物。</span>\r\n</p>\r\n<p>\r\n    <br/>	\r\n</p>', '3', '1', '', '2015-10-17 23:28:56', '2015-10-17 23:33:43');
INSERT INTO `Chapter` VALUES ('4', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0.3em 0px; word-wrap: break-word; word-break: break-all; color: rgb(51, 51, 51); font-family: &#39;Microsoft YaHei&#39;, 宋体, Verdana, Arial, Tahoma, sans-serif; white-space: normal; text-indent: 2em; line-height: 1.75em; background-color: rgb(251, 251, 251);\">\r\n    <span style=\"font-family: &#39;andale mono&#39;; font-size: 14px; background-color: rgb(255, 255, 255);\">什么鱼是世界上最长的鱼？答案是鲸鲨。鲸鲨不是鲸，而是一种鲨鱼。它们通常可以长到14米，15吨重。</span>\r\n</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0.3em 0px; word-wrap: break-word; word-break: break-all; color: rgb(51, 51, 51); font-family: &#39;Microsoft YaHei&#39;, 宋体, Verdana, Arial, Tahoma, sans-serif; white-space: normal; text-indent: 2em; line-height: 1.75em; background-color: rgb(251, 251, 251);\">\r\n    <span style=\"font-family: &#39;andale mono&#39;; font-size: 14px; background-color: rgb(255, 255, 255);\">1919年在泰国海湾捕获的一头鲸鲨长18米，这是目前有记录的最长鲸鲨，也是世界上最长的鱼的纪录。</span>\r\n</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0.3em 0px; word-wrap: break-word; word-break: break-all; color: rgb(51, 51, 51); font-family: &#39;Microsoft YaHei&#39;, 宋体, Verdana, Arial, Tahoma, sans-serif; white-space: normal; text-indent: 2em; line-height: 2em; background-color: rgb(251, 251, 251);\">\r\n    <span style=\"font-family: &#39;andale mono&#39;; font-size: 14px; background-color: rgb(255, 255, 255);\">现在世界最大的鱼是鲸鲨，前面有介绍过的蓝鲸虽然很大，但蓝鲸不是鱼，现在世界最大的鱼是鲸鲨，鲸鲨是现存世界最大的鲨鱼，也是世界现存最大的鱼。一般体长超过10米，体重达10吨，最长的鲨鱼据说有达到过18米长。口巨大上下领具唇褶。齿细小而多，圆锥形。喷水孔小，位于眼后。鲤孔5个，宽大。鳃耙角质，分成许多小枝、结成过滤港状。背鳍2个，第二背鳍与臂鳍相对。胸鳍宽大。尾鳍分叉。体灰褐或青褐色，具有许多黄色斑点和垂直横纹。</span>\r\n</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0.3em 0px; word-wrap: break-word; word-break: break-all; color: rgb(51, 51, 51); font-family: &#39;Microsoft YaHei&#39;, 宋体, Verdana, Arial, Tahoma, sans-serif; white-space: normal; text-align: center; text-indent: 2em; line-height: 1.75em; background-color: rgb(251, 251, 251);\">\r\n    <img src=\"[basePath]/upload/20151017/content2-4-1.jpg\" style=\"width: 60%; height:60%;\" alt=\"\"/>\r\n</p>', '4', '1', '', '2015-10-17 23:49:12', '2015-10-18 00:05:16');
INSERT INTO `Chapter` VALUES ('5', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 8px 0px; color: rgb(68, 68, 68); white-space: normal; text-indent: 2em; line-height: 2em; background-color: #FFF;\">\r\n    <span style=\"color: rgb(0, 0, 0); font-size: 14px; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;\">研究人员知道恐龙曾经统治着地球，但对于这些动物如何进行平衡能量摄入和输出的基本任务——它们的新陈代谢如何工作却所知甚少。现在，加州理工学院一个研究小组<span id=\"8_nwp\" style=\"font-size: 14px; color: rgb(0, 0, 0); float: none; width: auto; height: auto;\">测量</span>了范围广泛的恐龙的体温，提供了对这种动物可能如何调节其内部热量的了解。</span>\r\n</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 8px 0px; color: rgb(68, 68, 68); white-space: normal; text-indent: 2em; line-height: 2em; background-color: #FFF\">\r\n    <span style=\"color: rgb(0, 0, 0); font-size: 14px; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;\">这项研究由Robert P. Sharp(冠名)地质学教授兼地球化学教授John Eiler，和前<span style=\"font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 14px; float: none; width: auto; height: auto; color: rgb(0, 0, 0);\">加州理工学院</span>博士后学者现<span style=\"font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 14px; float: none; width: auto; height: auto; color: rgb(0, 0, 0);\">加州大学</span>洛杉矶分校的Rob Eagle领导，描述这一研究的论文在十月十三日发表在《自然通讯》期刊上。</span>\r\n</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 8px 0px; color: rgb(68, 68, 68); white-space: normal; text-indent: 2em; line-height: 2em; background-color: #FFF\">\r\n    <span style=\"color: rgb(0, 0, 0); font-size: 14px; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;\">该研究检察了蜥脚类恐龙的蛋壳，这类恐龙中包括一些曾经生活过的最大的恐龙，被称为泰坦巨龙，以及形似鸟类大小和你们人类差不多的窃蛋龙类恐龙的蛋壳。对蛋壳进行了分析，以确定其矿物结构中稀有天然同位素碳-13和氧-18的结合程度。这种稀有同位素的“聚集”先前已被证明依赖于矿物质形成的温度。这些蛋壳数据与相同研究小组的先前研究结果相比较，他们曾使用类似技术来研究蜥脚类恐龙的成长温度下，包括形似<span style=\"font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 14px; float: none; width: auto; height: auto; color: rgb(0, 0, 0);\">长颈鹿</span>的长颈巨龙和名为圆顶龙的巨大草食恐龙。</span>\r\n</p>\r\n<p style=\"text-align:center;margin-top: 0px; margin-bottom: 0px; padding: 8px 0px; color: rgb(68, 68, 68); white-space: normal; text-indent: 2em; line-height: 2em; background-color: #FFF\">\r\n    <span style=\"color: rgb(0, 0, 0); font-size: 14px; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;\"><img src=\"[basePath]/upload/20151019/content-21-5-1.jpg\" style=\"width: 60%; height:60%;\"/></span>\r\n</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 8px 0px; color: rgb(68, 68, 68); white-space: normal; text-indent: 2em; line-height: 2em; background-color: #FFF\">\r\n    <span style=\"color: rgb(0, 0, 0); font-size: 14px; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;\">蛋壳的同位素组成表明，较小的窃蛋龙类恐龙体温有32摄氏度，果断比现代哺乳动物和鸟类冷血。较大的泰坦巨龙类恐龙体温有38摄氏度，与先前从长颈巨龙牙齿中的发现没有差别，也类似于现代哺乳动物。这一发现，大型恐龙保持与我们类似的体温，而更小型的则更类似现代爬行动物，这对我们对恐龙生理的理解有一腚的影响。</span>\r\n</p>\r\n<p style=\"text-align:center;margin-top: 0px; margin-bottom: 0px; padding: 8px 0px; color: rgb(68, 68, 68); white-space: normal; text-indent: 2em; line-height: 2em; background-color: #FFF\">\r\n    <span style=\"color: rgb(0, 0, 0); font-size: 14px; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;\"><img src=\"[basePath]/upload/20151019/content-21-5-2.jpg\" style=\"width: 60%; height:60%;\"/></span>\r\n</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 8px 0px; color: rgb(68, 68, 68); white-space: normal; text-indent: 2em; line-height: 2em; background-color: rgb(255, 255, 255);\">\r\n    <span style=\"color: rgb(0, 0, 0); font-size: 14px; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;\">现代哺乳动物如果是像调整内部恒温器一样调节自己的体温，就被描述为温血动物。在这个称为温血状态的过程中，温血哺乳动物利用自己内部功能产生的热量，而不是从环境周围吸取热量，而冷血的蛇或蜥蜴通过晒太阳吸收热量。从小鼠到人类到鲸鱼，温血状态在许多不同大小的哺乳动物中都比较相似。</span>\r\n</p>', '5', '1', '', '2015-10-19 22:46:04', '2015-10-19 22:49:15');
INSERT INTO `Chapter` VALUES ('6', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 8px 0px; color: rgb(68, 68, 68); white-space: normal; text-indent: 2em; line-height: 2em; background-color: rgb(255, 255, 255);\">\r\n    <span style=\"color: rgb(0, 0, 0); font-size: 14px; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;\">“在小型恐龙中测得较低体温是表明它们中间至少有一部分比大多数现代哺乳动物和鸟类有着较低基础代谢的第一个证据，因此现代温血动物机制的产生并没有发生在这些恐龙中，”Eiler说。</span>\r\n</p>\r\n<p style=\"text-align:center\">\r\n    <span style=\"color: rgb(0, 0, 0); font-size: 14px; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;\"><img src=\"[basePath]/upload/20151019/content-21-5-3.jpg\"/></span>\r\n</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 8px 0px; color: rgb(68, 68, 68); white-space: normal; text-indent: 2em; line-height: 2em; background-color: rgb(255, 255, 255);\">\r\n    <span style=\"color: rgb(0, 0, 0); font-size: 14px; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;\">对于研究中的大型恐龙情况并不是很清楚。虽然Eiler和他的同事们发现他们有类似现代哺乳动物的较高体温，尚不知道这些动物是否真具有温血代谢或者仅仅因为巨大体型而变热——这种现象称为巨温性，它们相对其巨大体积具有较小表面积，热量散失面积也较小，因此热量被困在内部。“如果你体重80吨，你的问题就不是保暖——而是设法不要自燃着起来，”Eiler说。</span>\r\n</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 8px 0px; color: rgb(68, 68, 68); white-space: normal; text-indent: 2em; line-height: 2em; background-color: rgb(255, 255, 255);\">\r\n    <span style=\"color: rgb(0, 0, 0); font-size: 14px; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;\">研究中在检查过的各种恐龙物种中发现的大幅度体温范围表明“或者它们有一系列不同的代谢策略，或者它们都有低基础代谢，而大型恐龙仅仅是由于巨温性而变热。”</span>\r\n</p>\r\n<p style=\"text-align:center\">\r\n    <span style=\"color: rgb(0, 0, 0); font-size: 14px; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;\"><img src=\"[basePath]/upload/20151019/content-21-5-4.jpg\"/></span>\r\n</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 8px 0px; color: rgb(68, 68, 68); white-space: normal; text-indent: 2em; line-height: 2em; background-color: rgb(255, 255, 255);\">\r\n    <span style=\"color: rgb(0, 0, 0); font-size: 14px; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;\">用于确定这些动物体温的技法由Eiler的小组最初在2011年构思并用于恐龙牙齿化石，并与他们以前开发的用于非生物矿物和分子的方法相关。称为成群同位素技术的该方法依赖于生物磷灰石中的稀有同位素测量，这种矿物质是生物生长出的碳酸钙，存在于骨骼、牙齿、蛋壳、及其它化石中。在2006年，Eiler的实验室量化了生物矿物中碳-13及氧-18取决于矿物形成时温度的不同聚集程度；这个关系随后被Eiler的小组和其他实验室用于检查多种矿物类型。</span>\r\n</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 8px 0px; color: rgb(68, 68, 68); white-space: normal; text-indent: 2em; line-height: 2em; background-color: rgb(255, 255, 255);\">\r\n    <span style=\"color: rgb(0, 0, 0); font-size: 14px; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;\">“这是个很酷的想法，如果我有一个化石骨架，我就可以绘制出整个动物的体温，并想出它如何在体内再分配热量的生理模型，”艾勒说，“没有理由你不能这样做，除非骨头没有很好的保存下来。”</span>\r\n</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 8px 0px; color: rgb(68, 68, 68); white-space: normal; text-indent: 2em; line-height: 2em; background-color: rgb(255, 255, 255);\">\r\n    <span style=\"color: rgb(0, 0, 0); font-size: 14px; font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;\">该团队的下一步是比较同一物种不同成熟阶段的化石。“也许一些恐龙在生命的不同阶段有不同的代谢策略，” Eiler说。</span>\r\n</p>', '5', '1', '', '2015-10-19 22:51:16', '2015-10-19 22:55:03');

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
