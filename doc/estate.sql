/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50027
Source Host           : localhost:3306
Source Database       : estate

Target Server Type    : MYSQL
Target Server Version : 50027
File Encoding         : 65001

Date: 2014-01-05 17:09:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ammeter`
-- ----------------------------
DROP TABLE IF EXISTS `ammeter`;
CREATE TABLE `ammeter` (
  `ammeter_id` int(12) NOT NULL auto_increment,
  `ammeter_number` varchar(20) default NULL,
  PRIMARY KEY  (`ammeter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of ammeter
-- ----------------------------

-- ----------------------------
-- Table structure for `charge`
-- ----------------------------
DROP TABLE IF EXISTS `charge`;
CREATE TABLE `charge` (
  `charge_id` int(20) NOT NULL auto_increment,
  `charstand_id` int(20) NOT NULL,
  `house_id` varchar(20) NOT NULL,
  `charge_all` double(20,0) NOT NULL,
  `charge_date` datetime default NULL,
  `charge_way` varchar(20) NOT NULL,
  `charge_state` varchar(20) NOT NULL,
  `charge_input` datetime NOT NULL,
  `charge_use` double(20,0) NOT NULL,
  `charge_rest` double(20,0) NOT NULL,
  PRIMARY KEY  (`charge_id`),
  KEY `charge_charstandard_c` (`charstand_id`),
  KEY `charge_house_h` (`house_id`),
  CONSTRAINT `charge_charstandard_c` FOREIGN KEY (`charstand_id`) REFERENCES `charstandard` (`charstand_id`),
  CONSTRAINT `charge_house_h` FOREIGN KEY (`house_id`) REFERENCES `house` (`house_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charge
-- ----------------------------

-- ----------------------------
-- Table structure for `charstandard`
-- ----------------------------
DROP TABLE IF EXISTS `charstandard`;
CREATE TABLE `charstandard` (
  `charstand_id` int(11) NOT NULL auto_increment,
  `charstand_name` varchar(255) NOT NULL,
  `charstand_price` double NOT NULL,
  `charstand_ways` varchar(255) NOT NULL,
  `charstand_depart` varchar(255) NOT NULL,
  `charstand_cycle` int(11) NOT NULL,
  PRIMARY KEY  (`charstand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charstandard
-- ----------------------------

-- ----------------------------
-- Table structure for `comp`
-- ----------------------------
DROP TABLE IF EXISTS `comp`;
CREATE TABLE `comp` (
  `comp_id` int(20) NOT NULL auto_increment,
  `res_id` int(20) NOT NULL,
  `house_id` varchar(20) NOT NULL,
  `com_cheme` varchar(20) default NULL,
  `com_content` varchar(100) default NULL,
  `com_date` datetime default NULL,
  `comp_state` varchar(20) NOT NULL,
  `user_id` int(20) NOT NULL,
  `com_solye` varchar(20) NOT NULL,
  `com_solvedat` datetime NOT NULL,
  PRIMARY KEY  (`comp_id`),
  KEY `comp_res_r` (`res_id`),
  KEY `comp_house_h` (`house_id`),
  KEY `comp_user_u` (`user_id`),
  CONSTRAINT `comp_house_h` FOREIGN KEY (`house_id`) REFERENCES `house` (`house_id`),
  CONSTRAINT `comp_res_r` FOREIGN KEY (`res_id`) REFERENCES `resident` (`res_id`),
  CONSTRAINT `comp_user_u` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comp
-- ----------------------------

-- ----------------------------
-- Table structure for `depart`
-- ----------------------------
DROP TABLE IF EXISTS `depart`;
CREATE TABLE `depart` (
  `depart_id` int(20) NOT NULL auto_increment,
  `depart_name` varchar(20) NOT NULL,
  `user_id` int(20) default NULL,
  `depart_phone` varchar(20) default NULL,
  `depart_information` varchar(20) default NULL,
  PRIMARY KEY  (`depart_id`),
  KEY `depart_user_u` (`user_id`),
  CONSTRAINT `depart_user_u` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of depart
-- ----------------------------

-- ----------------------------
-- Table structure for `electric`
-- ----------------------------
DROP TABLE IF EXISTS `electric`;
CREATE TABLE `electric` (
  `elec_id` int(20) NOT NULL auto_increment,
  `elec_last` double(20,0) NOT NULL,
  `elec_this` double(20,0) NOT NULL,
  `all_elec` double(20,0) NOT NULL,
  `elec_date` datetime NOT NULL,
  `charstand_id` int(20) NOT NULL,
  PRIMARY KEY  (`elec_id`),
  KEY `electric_charstandard_c` (`charstand_id`),
  CONSTRAINT `electric_charstandard_c` FOREIGN KEY (`charstand_id`) REFERENCES `charstandard` (`charstand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of electric
-- ----------------------------

-- ----------------------------
-- Table structure for `house`
-- ----------------------------
DROP TABLE IF EXISTS `house`;
CREATE TABLE `house` (
  `house_id` varchar(20) NOT NULL,
  `house_name` varchar(50) NOT NULL,
  `house_area` double NOT NULL,
  `bulid_area` double NOT NULL,
  `green_area` double NOT NULL,
  `house_sell` varchar(4) NOT NULL,
  `ammeter_id` int(12) default NULL,
  `watermeter_id` int(12) default NULL,
  PRIMARY KEY  (`house_id`),
  KEY `houser_water` (`watermeter_id`),
  KEY `houser_elec` (`ammeter_id`),
  CONSTRAINT `houser_elec` FOREIGN KEY (`ammeter_id`) REFERENCES `ammeter` (`ammeter_id`),
  CONSTRAINT `houser_water` FOREIGN KEY (`watermeter_id`) REFERENCES `watermeter` (`watermeter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of house
-- ----------------------------

-- ----------------------------
-- Table structure for `maintain`
-- ----------------------------
DROP TABLE IF EXISTS `maintain`;
CREATE TABLE `maintain` (
  `maintain_id` int(20) NOT NULL auto_increment,
  `res_id` int(20) NOT NULL,
  `house_id` varchar(20) NOT NULL,
  `maintain_theme` varchar(20) NOT NULL,
  `maintain_content` varchar(20) NOT NULL,
  `maintain_date` datetime default NULL,
  `maintain_state` varchar(20) default NULL,
  `user_id` int(20) NOT NULL,
  `service_charge` double(20,0) NOT NULL,
  `meterial_charge` double(20,0) NOT NULL,
  `solye_date` datetime NOT NULL,
  `allcharge` double(20,0) NOT NULL,
  `Maintain_solve` varchar(100) NOT NULL,
  PRIMARY KEY  (`maintain_id`),
  KEY `maintain_res_r` (`res_id`),
  KEY `maintain_house_h` (`house_id`),
  KEY `maintain_user_u` (`user_id`),
  CONSTRAINT `maintain_house_h` FOREIGN KEY (`house_id`) REFERENCES `house` (`house_id`),
  CONSTRAINT `maintain_res_r` FOREIGN KEY (`res_id`) REFERENCES `resident` (`res_id`),
  CONSTRAINT `maintain_user_u` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of maintain
-- ----------------------------

-- ----------------------------
-- Table structure for `profession`
-- ----------------------------
DROP TABLE IF EXISTS `profession`;
CREATE TABLE `profession` (
  `profession_id` int(20) NOT NULL auto_increment,
  `profession_name` varchar(20) NOT NULL,
  `profession_power` int(20) NOT NULL,
  PRIMARY KEY  (`profession_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of profession
-- ----------------------------

-- ----------------------------
-- Table structure for `resident`
-- ----------------------------
DROP TABLE IF EXISTS `resident`;
CREATE TABLE `resident` (
  `res_id` int(20) NOT NULL auto_increment,
  `res_name` varchar(20) NOT NULL,
  `res_gender` varchar(20) default NULL,
  `res_phone` varchar(20) NOT NULL,
  `res_email` varchar(20) NOT NULL,
  `hose_id` varchar(20) NOT NULL,
  `res_data` date NOT NULL,
  `res_identity` varchar(20) NOT NULL,
  `res_occupation` varchar(20) NOT NULL,
  `res_password` varchar(20) NOT NULL,
  PRIMARY KEY  (`res_id`),
  KEY `resident_house_h` (`hose_id`),
  CONSTRAINT `resident_house_h` FOREIGN KEY (`hose_id`) REFERENCES `house` (`house_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of resident
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(20) NOT NULL auto_increment,
  `user_name` varchar(20) NOT NULL,
  `user_password` varchar(20) NOT NULL,
  `user_phone` varchar(20) default NULL,
  `user_email` varchar(20) default NULL,
  `depart_id` int(20) default NULL,
  `profession_id` int(20) default NULL,
  `user_birthday` datetime default NULL,
  `user_gender` varchar(4) default NULL,
  `user_position` varchar(20) default NULL,
  PRIMARY KEY  (`user_id`),
  KEY `user_depart_id` (`depart_id`),
  KEY `user_depart_p` (`profession_id`),
  CONSTRAINT `user_depart_id` FOREIGN KEY (`depart_id`) REFERENCES `depart` (`depart_id`),
  CONSTRAINT `user_depart_p` FOREIGN KEY (`profession_id`) REFERENCES `profession` (`profession_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '刘一', '123456', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `water`
-- ----------------------------
DROP TABLE IF EXISTS `water`;
CREATE TABLE `water` (
  `water_id` int(20) NOT NULL auto_increment,
  `water_last` double(20,0) NOT NULL,
  `water_this` double(20,0) NOT NULL,
  `all_water` double(20,0) NOT NULL,
  `water_date` datetime NOT NULL,
  `charstand_id` int(20) NOT NULL,
  PRIMARY KEY  (`water_id`),
  KEY `water_charstandard-c` (`charstand_id`),
  CONSTRAINT `water_charstandard-c` FOREIGN KEY (`charstand_id`) REFERENCES `charstandard` (`charstand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of water
-- ----------------------------

-- ----------------------------
-- Table structure for `watermeter`
-- ----------------------------
DROP TABLE IF EXISTS `watermeter`;
CREATE TABLE `watermeter` (
  `watermeter_id` int(12) NOT NULL auto_increment,
  `watermeter_number` varchar(20) default NULL,
  PRIMARY KEY  (`watermeter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of watermeter
-- ----------------------------
