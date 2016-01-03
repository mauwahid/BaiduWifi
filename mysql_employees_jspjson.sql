/*
Navicat MySQL Data Transfer

Source Server         : danzLocalMySQL
Source Server Version : 50534
Source Host           : localhost:3306
Source Database       : jspjson

Target Server Type    : MYSQL
Target Server Version : 50534
File Encoding         : 65001

Date: 2014-08-16 17:10:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `employees`
-- ----------------------------
DROP TABLE IF EXISTS `employees`;
CREATE TABLE `employees` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of employees
-- ----------------------------
INSERT INTO `employees` VALUES ('1', 'Adrian', 'IT', 'Jalan Merdeka 12 Jakarta');
INSERT INTO `employees` VALUES ('2', 'Brian', 'COMM', 'Jalan Sumatera 89 Jakarta');
INSERT INTO `employees` VALUES ('3', 'Charles', 'IT', 'Jalan Jawa 45 Jakarta');
INSERT INTO `employees` VALUES ('4', 'David', 'HR', 'Jalan Kalimantan 67 Jakarta');
INSERT INTO `employees` VALUES ('5', 'Earl', 'FINANCE', 'Jalan Sulawesi 23 Jakarta');
INSERT INTO `employees` VALUES ('6', 'Fonzie', 'HR', 'Jalan Bali 34 Jakarta');
INSERT INTO `employees` VALUES ('7', 'George', 'COMM', 'Jalan Papua 56 Jakarta');
