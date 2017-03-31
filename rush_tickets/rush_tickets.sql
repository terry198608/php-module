/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50616
 Source Host           : localhost
 Source Database       : rush_tickets

 Target Server Type    : MySQL
 Target Server Version : 50616
 File Encoding         : utf-8

 Date: 03/31/2017 16:46:24 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `ih_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ih_goods`;
CREATE TABLE `ih_goods` (
  `goods_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `goods_name` varchar(255) NOT NULL,
  PRIMARY KEY (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ih_goods`
-- ----------------------------
BEGIN;
INSERT INTO `ih_goods` VALUES ('1', '0', '机票');
COMMIT;

-- ----------------------------
--  Table structure for `ih_log`
-- ----------------------------
DROP TABLE IF EXISTS `ih_log`;
CREATE TABLE `ih_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event` varchar(255) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ih_order`
-- ----------------------------
DROP TABLE IF EXISTS `ih_order`;
CREATE TABLE `ih_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_sn` char(32) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `goods_id` int(11) NOT NULL DEFAULT '0',
  `sku_id` int(11) NOT NULL DEFAULT '0',
  `price` float NOT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='订单表';

-- ----------------------------
--  Table structure for `ih_store`
-- ----------------------------
DROP TABLE IF EXISTS `ih_store`;
CREATE TABLE `ih_store` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL,
  `sku_id` int(10) unsigned NOT NULL DEFAULT '0',
  `number` int(10) NOT NULL DEFAULT '0',
  `freez` int(11) NOT NULL DEFAULT '0' COMMENT '虚拟库存',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='库存';

-- ----------------------------
--  Records of `ih_store`
-- ----------------------------
BEGIN;
INSERT INTO `ih_store` VALUES ('1', '1', '11', '-4', '0');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
