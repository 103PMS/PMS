/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50027
Source Host           : localhost:3306
Source Database       : estate

Target Server Type    : MYSQL
Target Server Version : 50027
File Encoding         : 65001

Date: 2013-12-27 15:18:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `depart_tb`
-- ----------------------------
DROP TABLE IF EXISTS `depart_tb`;
CREATE TABLE `depart_tb` (
  `depart_id` int(4) NOT NULL auto_increment COMMENT '部门ID',
  `depart_name` varchar(20) character set utf8 NOT NULL COMMENT '部门名称',
  `user_id` int(4) default NULL COMMENT '用户ID（部门负责人）',
  `depart_phone` varchar(20) character set utf8 default NULL COMMENT '部门电话',
  `depart_information` varchar(120) default NULL,
  PRIMARY KEY  (`depart_id`),
  KEY `FKB74EB69931A46F10` (`user_id`),
  CONSTRAINT `FKB74EB69931A46F10` FOREIGN KEY (`user_id`) REFERENCES `user_tb` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of depart_tb
-- ----------------------------
INSERT INTO `depart_tb` VALUES ('1', '技术部22333', '1', '3344', '33333技术');
INSERT INTO `depart_tb` VALUES ('2', '财务部', '3', '4455', '2223333财务');
INSERT INTO `depart_tb` VALUES ('5', '人力资源部', '4', '99999999', '9999999人力');

-- ----------------------------
-- Table structure for `user_tb`
-- ----------------------------
DROP TABLE IF EXISTS `user_tb`;
CREATE TABLE `user_tb` (
  `user_id` int(4) NOT NULL auto_increment COMMENT '用户id',
  `user_name` varchar(20) character set utf8 NOT NULL COMMENT '用户名',
  `user_gender` varchar(4) character set utf8 default NULL COMMENT '用户性别',
  `user_birthday` datetime default NULL COMMENT '用户出生日期',
  `user_phone` varchar(20) character set utf8 default NULL COMMENT '用户电话',
  `user_email` varchar(20) character set utf8 default NULL COMMENT '用户邮箱',
  `depart_id` int(4) default NULL COMMENT '用户所属部门id',
  `user_position` varchar(20) character set utf8 default NULL COMMENT '用户职位',
  PRIMARY KEY  (`user_id`),
  KEY `FKF73AEF625F9C4D4E` (`depart_id`),
  CONSTRAINT `FKF73AEF625F9C4D4E` FOREIGN KEY (`depart_id`) REFERENCES `depart_tb` (`depart_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of user_tb
-- ----------------------------
INSERT INTO `user_tb` VALUES ('1', '刘一', '男', null, null, null, '1', null);
INSERT INTO `user_tb` VALUES ('2', '刘二', null, null, null, null, '1', null);
INSERT INTO `user_tb` VALUES ('3', '刘三', null, null, null, null, '2', null);
INSERT INTO `user_tb` VALUES ('4', '刘四', null, null, null, null, null, null);
INSERT INTO `user_tb` VALUES ('5', '刘士', null, null, null, null, null, null);
