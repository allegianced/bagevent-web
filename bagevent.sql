/*
Navicat MySQL Data Transfer

Source Server         : MySQL8
Source Server Version : 80013
Source Host           : localhost:3306
Source Database       : bagevent

Target Server Type    : MYSQL
Target Server Version : 80013
File Encoding         : 65001

Date: 2020-05-25 11:53:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cellphone` varchar(255) DEFAULT NULL,
  `crate_time` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '13236075376', '2020-05-22 07:00:29', '1766845459@qq.com', '40c53c51074a5a6d68f4dca2ea5c50ab', 'Ms2', null, 'zs');
INSERT INTO `user` VALUES ('2', '17563897856', '2020-05-22 07:05:07', 'sdas@163.com', '40c53c51074a5a6d68f4dca2ea5c50ab', 'Ms2', null, 'xiaoma');
INSERT INTO `user` VALUES ('3', '17563897856', '2020-05-22 10:34:47', '6845459@qq.com', '40c53c51074a5a6d68f4dca2ea5c50ab', 'Ms2', null, 'lisi');
INSERT INTO `user` VALUES ('4', '13236075376', '2020-05-22 10:37:54', '1766845459@qq.com', '40c53c51074a5a6d68f4dca2ea5c50ab', 'Ms2', null, 'lisi2');
INSERT INTO `user` VALUES ('5', '13236075376', '2020-05-22 23:53:53', '1766845459@qq.com', '40c53c51074a5a6d68f4dca2ea5c50ab', 'Ms2', null, 'qwe');
INSERT INTO `user` VALUES ('6', '', '2020-05-23 10:12:58', '', '267c153f139ee47ddc6b6c45a76c211a', 'Ms2', null, '');
INSERT INTO `user` VALUES ('7', '13236075376', '2020-05-23 10:27:06', '1766845459@qq.com', '40c53c51074a5a6d68f4dca2ea5c50ab', 'Ms2', null, 'lisan');
INSERT INTO `user` VALUES ('8', null, '2020-05-23 12:14:11', null, '512ae6c6126176591697954e7da839f5', 'Ms2', null, null);
INSERT INTO `user` VALUES ('9', null, '2020-05-23 12:15:30', null, '512ae6c6126176591697954e7da839f5', 'Ms2', null, null);
INSERT INTO `user` VALUES ('10', null, '2020-05-23 12:27:04', null, '512ae6c6126176591697954e7da839f5', 'Ms2', null, null);
INSERT INTO `user` VALUES ('11', '13236075376', '2020-05-23 13:05:36', '1766845459@qq.com', '40c53c51074a5a6d68f4dca2ea5c50ab', 'Ms2', null, 'xc');
INSERT INTO `user` VALUES ('12', '13236075376', '2020-05-25 11:41:48', '1766845459@qq.com', '40c53c51074a5a6d68f4dca2ea5c50ab', 'Ms2', null, 'li');

-- ----------------------------
-- Table structure for userloginlog
-- ----------------------------
DROP TABLE IF EXISTS `userloginlog`;
CREATE TABLE `userloginlog` (
  `login_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `login_ip` varchar(255) DEFAULT NULL,
  `login_time` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userloginlog
-- ----------------------------
INSERT INTO `userloginlog` VALUES ('1', '127.0.0.1', '2020-05-22 07:00:51', '1', 'zs');
INSERT INTO `userloginlog` VALUES ('2', '127.0.0.1', '2020-05-22 07:01:25', '1', 'zs');
INSERT INTO `userloginlog` VALUES ('3', '127.0.0.1', '2020-05-22 07:05:52', '1', 'zs');
INSERT INTO `userloginlog` VALUES ('4', '127.0.0.1', '2020-05-22 07:06:14', '1', 'zs');
INSERT INTO `userloginlog` VALUES ('5', '127.0.0.1', '2020-05-22 07:07:59', '2', 'xiaoma');
INSERT INTO `userloginlog` VALUES ('6', '127.0.0.1', '2020-05-22 07:09:33', '1', 'zs');
INSERT INTO `userloginlog` VALUES ('7', '127.0.0.1', '2020-05-22 08:03:43', '1', 'zs');
INSERT INTO `userloginlog` VALUES ('8', '127.0.0.1', '2020-05-22 10:08:43', '2', 'xiaoma');
INSERT INTO `userloginlog` VALUES ('9', '127.0.0.1', '2020-05-22 10:35:19', '3', 'lisi');
INSERT INTO `userloginlog` VALUES ('10', '127.0.0.1', '2020-05-22 10:38:03', '4', 'lisi2');
INSERT INTO `userloginlog` VALUES ('11', '127.0.0.1', '2020-05-22 21:34:21', '1', 'zs');
INSERT INTO `userloginlog` VALUES ('12', '127.0.0.1', '2020-05-22 21:46:17', '3', 'lisi');
INSERT INTO `userloginlog` VALUES ('13', '127.0.0.1', '2020-05-22 22:11:00', '1', 'zs');
INSERT INTO `userloginlog` VALUES ('14', '127.0.0.1', '2020-05-22 22:11:47', '1', 'zs');
INSERT INTO `userloginlog` VALUES ('15', '127.0.0.1', '2020-05-22 22:14:01', '1', 'zs');
INSERT INTO `userloginlog` VALUES ('16', '127.0.0.1', '2020-05-22 22:15:49', '1', 'zs');
INSERT INTO `userloginlog` VALUES ('17', '127.0.0.1', '2020-05-22 22:27:08', '1', 'zs');
INSERT INTO `userloginlog` VALUES ('18', '127.0.0.1', '2020-05-22 22:28:11', '1', 'zs');
INSERT INTO `userloginlog` VALUES ('19', '127.0.0.1', '2020-05-22 22:28:47', '1', 'zs');
INSERT INTO `userloginlog` VALUES ('20', '127.0.0.1', '2020-05-22 22:31:51', '1', 'zs');
INSERT INTO `userloginlog` VALUES ('21', '127.0.0.1', '2020-05-22 23:12:28', '1', 'zs');
INSERT INTO `userloginlog` VALUES ('22', '127.0.0.1', '2020-05-22 23:42:19', '1', 'zs');
INSERT INTO `userloginlog` VALUES ('23', '127.0.0.1', '2020-05-23 00:01:24', '1', 'zs');
INSERT INTO `userloginlog` VALUES ('24', '127.0.0.1', '2020-05-23 13:05:46', '11', 'xc');
INSERT INTO `userloginlog` VALUES ('25', '127.0.0.1', '2020-05-23 13:05:59', '1', 'zs');
INSERT INTO `userloginlog` VALUES ('26', '127.0.0.1', '2020-05-25 11:41:25', '3', 'lisi');
INSERT INTO `userloginlog` VALUES ('27', '127.0.0.1', '2020-05-25 11:41:58', '12', 'li');
