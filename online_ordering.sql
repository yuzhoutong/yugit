/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : online_ordering

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-04-17 16:34:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `add_order_car`
-- ----------------------------
DROP TABLE IF EXISTS `add_order_car`;
CREATE TABLE `add_order_car` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `ids` varchar(255) NOT NULL COMMENT '购物车商品的id',
  `uid` int(255) NOT NULL COMMENT '用户id',
  `name` varchar(255) NOT NULL COMMENT '菜名',
  `count` varchar(255) NOT NULL COMMENT '每道菜的数量',
  `price` varchar(255) NOT NULL COMMENT '每件商品的总价',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of add_order_car
-- ----------------------------
INSERT INTO `add_order_car` VALUES ('52', '2', '10086', '西红柿蛋汤', '1', '10', '2018-04-16 09:48:56');

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '管理员id',
  `admin_id` int(20) NOT NULL COMMENT '管理员Id',
  `name` varchar(50) NOT NULL COMMENT '名字',
  `password` varchar(20) NOT NULL COMMENT '密码',
  `displayname` varchar(50) NOT NULL COMMENT '管理员角色',
  `accountstatus` int(10) NOT NULL COMMENT '管理员状态 1:启用  2:冻结',
  `create_time` date NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', '1001', 'admin', '123456', '管理员', '1', '2018-03-13');

-- ----------------------------
-- Table structure for `detail_address`
-- ----------------------------
DROP TABLE IF EXISTS `detail_address`;
CREATE TABLE `detail_address` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `uid` int(255) NOT NULL COMMENT '用户id',
  `re_phone` varchar(255) DEFAULT NULL COMMENT '电话',
  `address` varchar(255) DEFAULT NULL COMMENT '详细地址',
  `rname` varchar(255) DEFAULT NULL COMMENT '收货人姓名',
  `createtime` datetime(6) DEFAULT NULL,
  `provice` varchar(255) DEFAULT NULL COMMENT '省',
  `city` varchar(255) DEFAULT NULL COMMENT '城市',
  `district` varchar(255) DEFAULT NULL COMMENT '区',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of detail_address
-- ----------------------------
INSERT INTO `detail_address` VALUES ('1', '10086', '17730185555', '解放路', 'yzt', '2018-03-19 13:57:15.000000', '安徽省', '马鞍山', '花山区');
INSERT INTO `detail_address` VALUES ('6', '10086', '18356515581', '安徽工业大学 本部', '余周同', '2018-03-27 10:51:55.000000', '安徽省', '马鞍山市', '花山区');
INSERT INTO `detail_address` VALUES ('10', '10086', '17730185585', '安工大59', '小鱼', '2018-03-27 10:56:26.000000', '安徽省', '马鞍山市', '花山区');
INSERT INTO `detail_address` VALUES ('11', '10086', '17730185585', '安工大', '余周同', '2018-04-09 11:45:22.000000', '安徽省', '马鞍山市', '雨山区');

-- ----------------------------
-- Table structure for `dish_table`
-- ----------------------------
DROP TABLE IF EXISTS `dish_table`;
CREATE TABLE `dish_table` (
  `dish_id` int(20) NOT NULL COMMENT '菜品id',
  `detail` varchar(255) DEFAULT NULL COMMENT '菜品描述',
  `dish_name` varchar(255) DEFAULT NULL COMMENT '菜品名称',
  `order_count` int(50) DEFAULT NULL COMMENT '菜品被订的次数',
  `pic_path` varchar(255) DEFAULT NULL COMMENT '菜品图片路径',
  `price` float(255,0) DEFAULT NULL COMMENT '菜品价格',
  `type` varchar(255) DEFAULT NULL COMMENT '菜品类型',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`dish_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dish_table
-- ----------------------------
INSERT INTO `dish_table` VALUES ('1', '美味', '农家小炒肉', '1', '../static/tupian/nongjiaxiaochaorou1.jpg', '15', '炒菜', '2018-03-20 13:55:49');
INSERT INTO `dish_table` VALUES ('2', '可口', '西红柿蛋汤', '2', '../static/tupian/西红柿鸡蛋汤1.jpg', '10', '汤', '2018-03-20 13:55:52');
INSERT INTO `dish_table` VALUES ('3', '香', '米饭', '4', '../static/tupian/mifan1.jpeg', '1', '主食', '2018-03-20 13:55:53');
INSERT INTO `dish_table` VALUES ('4', '爽', '夫妻肺片', '5', null, '25', '凉菜', '2018-03-20 13:55:55');
INSERT INTO `dish_table` VALUES ('5', '美味', '西红柿炒鸡蛋', '2', null, '15', '炒菜', '2018-03-20 13:55:57');
INSERT INTO `dish_table` VALUES ('6', '辣', '青椒肉丝', '9', '', '18', '炒菜', '2018-03-23 09:58:20');

-- ----------------------------
-- Table structure for `login_record`
-- ----------------------------
DROP TABLE IF EXISTS `login_record`;
CREATE TABLE `login_record` (
  `id` int(100) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `uid` int(100) NOT NULL COMMENT '用户id',
  `login_time` datetime NOT NULL COMMENT '登录时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of login_record
-- ----------------------------

-- ----------------------------
-- Table structure for `my_car`
-- ----------------------------
DROP TABLE IF EXISTS `my_car`;
CREATE TABLE `my_car` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `uid` int(255) NOT NULL COMMENT '用户id',
  `dish_id` int(255) NOT NULL COMMENT '菜品的id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of my_car
-- ----------------------------
INSERT INTO `my_car` VALUES ('16', '10087', '3', null);
INSERT INTO `my_car` VALUES ('17', '10087', '4', null);
INSERT INTO `my_car` VALUES ('18', '10087', '5', null);
INSERT INTO `my_car` VALUES ('20', '10086', '2', null);
INSERT INTO `my_car` VALUES ('21', '10086', '2', null);
INSERT INTO `my_car` VALUES ('22', '10086', '3', null);
INSERT INTO `my_car` VALUES ('26', '10086', '1', '2018-04-11 14:21:18');

-- ----------------------------
-- Table structure for `order_detail`
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `uid` int(255) NOT NULL COMMENT '用户的id',
  `order_id` varchar(255) NOT NULL COMMENT '订单id',
  `name` varchar(255) NOT NULL COMMENT '菜名',
  `count` varchar(255) NOT NULL COMMENT '数量',
  `price` varchar(255) DEFAULT NULL COMMENT '单价',
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_detail
-- ----------------------------
INSERT INTO `order_detail` VALUES ('4', '10086', '1008620180408092432', '米饭', '1', '1元', '2018-04-08 09:24:32');
INSERT INTO `order_detail` VALUES ('5', '10086', '1008620180408092432', '农家小炒肉', '1', '15元', '2018-04-08 09:24:32');
INSERT INTO `order_detail` VALUES ('6', '10086', '1008620180408092432', '米饭', '1', '1元', '2018-04-08 09:24:32');
INSERT INTO `order_detail` VALUES ('7', '10086', '1008620180408092432', '农家小炒肉', '1', '15元', '2018-04-08 09:24:32');
INSERT INTO `order_detail` VALUES ('12', '10086', '1008620180408100150', '西红柿蛋汤', '1', '10元', '2018-04-08 10:01:50');
INSERT INTO `order_detail` VALUES ('13', '10086', '1008620180408113905', '西红柿蛋汤', '1', '10元', '2018-04-08 11:39:05');
INSERT INTO `order_detail` VALUES ('14', '10086', '1008620180408113905', '农家小炒肉', '1', '15元', '2018-04-08 11:39:05');
INSERT INTO `order_detail` VALUES ('15', '10086', '1008620180409091924', '西红柿蛋汤', '1', '10元', '2018-04-09 09:19:24');
INSERT INTO `order_detail` VALUES ('16', '10086', '1008620180409091924', '农家小炒肉', '1', '15元', '2018-04-09 09:19:24');
INSERT INTO `order_detail` VALUES ('17', '10086', '1008620180409091924', '西红柿蛋汤', '1', '10元', '2018-04-09 09:19:24');
INSERT INTO `order_detail` VALUES ('18', '10086', '1008620180409091940', '西红柿蛋汤', '1', '10元', '2018-04-09 09:19:40');
INSERT INTO `order_detail` VALUES ('19', '10086', '1008620180409091940', '农家小炒肉', '1', '15元', '2018-04-09 09:19:40');
INSERT INTO `order_detail` VALUES ('20', '10086', '1008620180409091940', '西红柿蛋汤', '1', '10元', '2018-04-09 09:19:40');
INSERT INTO `order_detail` VALUES ('21', '10086', '1008620180409092136', '西红柿蛋汤', '1', '10元', '2018-04-09 09:21:37');
INSERT INTO `order_detail` VALUES ('22', '10086', '1008620180409092136', '农家小炒肉', '1', '15元', '2018-04-09 09:21:37');
INSERT INTO `order_detail` VALUES ('23', '10086', '1008620180409092136', '西红柿蛋汤', '1', '10元', '2018-04-09 09:21:37');
INSERT INTO `order_detail` VALUES ('24', '10086', '1008620180409092143', '西红柿蛋汤', '1', '10元', '2018-04-09 09:21:43');
INSERT INTO `order_detail` VALUES ('25', '10086', '1008620180409092143', '农家小炒肉', '1', '15元', '2018-04-09 09:21:43');
INSERT INTO `order_detail` VALUES ('26', '10086', '1008620180409092143', '西红柿蛋汤', '1', '10元', '2018-04-09 09:21:43');
INSERT INTO `order_detail` VALUES ('27', '10086', '1008620180409092147', '西红柿蛋汤', '1', '10元', '2018-04-09 09:21:47');
INSERT INTO `order_detail` VALUES ('28', '10086', '1008620180409092147', '农家小炒肉', '1', '15元', '2018-04-09 09:21:47');
INSERT INTO `order_detail` VALUES ('29', '10086', '1008620180409092147', '西红柿蛋汤', '1', '10元', '2018-04-09 09:21:47');
INSERT INTO `order_detail` VALUES ('30', '10086', '1008620180409101027', '夫妻肺片', '1', '25元', '2018-04-09 10:10:27');
INSERT INTO `order_detail` VALUES ('31', '10086', '1008620180409101027', '农家小炒肉', '1', '15元', '2018-04-09 10:10:27');
INSERT INTO `order_detail` VALUES ('32', '10086', '1008620180409114615', '农家小炒肉', '1', '15元', '2018-04-09 11:46:15');
INSERT INTO `order_detail` VALUES ('33', '10086', '1008620180409152354', '西红柿蛋汤', '1', '10元', '2018-04-09 15:23:54');
INSERT INTO `order_detail` VALUES ('34', '10086', '1008620180409152354', '农家小炒肉', '1', '15元', '2018-04-09 15:23:54');
INSERT INTO `order_detail` VALUES ('35', '10086', '1008620180411112953', '农家小炒肉', '1', '15元', '2018-04-11 11:29:53');
INSERT INTO `order_detail` VALUES ('36', '10086', '1008620180411114003', '农家小炒肉', '1', '15元', '2018-04-11 11:40:03');
INSERT INTO `order_detail` VALUES ('37', '10086', '1008620180411114003', '西红柿蛋汤', '1', '10元', '2018-04-11 11:40:03');
INSERT INTO `order_detail` VALUES ('38', '10086', '1008620180411114336', '农家小炒肉', '1', '15元', '2018-04-11 11:43:36');
INSERT INTO `order_detail` VALUES ('39', '10086', '1008620180411114336', '西红柿蛋汤', '1', '10元', '2018-04-11 11:43:36');
INSERT INTO `order_detail` VALUES ('40', '10086', '1008620180411114356', '西红柿蛋汤', '1', '10元', '2018-04-11 11:43:56');
INSERT INTO `order_detail` VALUES ('41', '10086', '1008620180411170611', '农家小炒肉', '1', '15元', '2018-04-11 17:06:11');
INSERT INTO `order_detail` VALUES ('42', '10086', '1008620180411170611', '农家小炒肉', '1', '15元', '2018-04-11 17:06:11');
INSERT INTO `order_detail` VALUES ('43', '10086', '1008620180411170611', '农家小炒肉', '1', '15元', '2018-04-11 17:06:11');
INSERT INTO `order_detail` VALUES ('44', '10086', '1008620180411170611', '农家小炒肉', '1', '15元', '2018-04-11 17:06:11');
INSERT INTO `order_detail` VALUES ('45', '10086', '1008620180411170611', '农家小炒肉', '1', '15元', '2018-04-11 17:06:11');
INSERT INTO `order_detail` VALUES ('46', '10086', '1008620180411170611', '农家小炒肉', '1', '15元', '2018-04-11 17:06:11');
INSERT INTO `order_detail` VALUES ('47', '10086', '1008620180411170611', '农家小炒肉', '1', '15元', '2018-04-11 17:06:11');
INSERT INTO `order_detail` VALUES ('48', '10086', '1008620180411170611', '米饭', '4', '1元', '2018-04-11 17:06:11');
INSERT INTO `order_detail` VALUES ('49', '10086', '1008620180411170611', '米饭', '4', '1元', '2018-04-11 17:06:11');
INSERT INTO `order_detail` VALUES ('50', '10086', '1008620180411170611', '米饭', '4', '1元', '2018-04-11 17:06:11');
INSERT INTO `order_detail` VALUES ('51', '10086', '1008620180411170611', '米饭', '4', '1元', '2018-04-11 17:06:11');
INSERT INTO `order_detail` VALUES ('52', '10086', '1008620180411170611', '米饭', '4', '1元', '2018-04-11 17:06:11');
INSERT INTO `order_detail` VALUES ('53', '10086', '1008620180411170611', '农家小炒肉', '1', '15元', '2018-04-11 17:06:11');
INSERT INTO `order_detail` VALUES ('54', '10086', '1008620180411170611', '农家小炒肉', '1', '15元', '2018-04-11 17:06:11');
INSERT INTO `order_detail` VALUES ('55', '10086', '1008620180411170611', '西红柿蛋汤', '2', '10元', '2018-04-11 17:06:11');
INSERT INTO `order_detail` VALUES ('56', '10086', '1008620180411170611', '农家小炒肉', '1', '15元', '2018-04-11 17:06:11');
INSERT INTO `order_detail` VALUES ('57', '10086', '1008620180411170611', '夫妻肺片', '5', '25元', '2018-04-11 17:06:11');
INSERT INTO `order_detail` VALUES ('58', '10086', '1008620180411170611', '农家小炒肉', '1', '15元', '2018-04-11 17:06:11');
INSERT INTO `order_detail` VALUES ('59', '10086', '1008620180411170611', '农家小炒肉', '1', '15元', '2018-04-11 17:06:11');
INSERT INTO `order_detail` VALUES ('60', '10086', '1008620180411170611', '西红柿炒鸡蛋', '2', '15元', '2018-04-11 17:06:11');
INSERT INTO `order_detail` VALUES ('61', '10086', '1008620180411170611', '青椒肉丝', '9', '18元', '2018-04-11 17:06:11');
INSERT INTO `order_detail` VALUES ('62', '10086', '1008620180411170611', '农家小炒肉', '1', '15元', '2018-04-11 17:06:11');
INSERT INTO `order_detail` VALUES ('63', '10086', '1008620180411170611', '米饭', '4', '1元', '2018-04-11 17:06:11');
INSERT INTO `order_detail` VALUES ('64', '10086', '1008620180411170611', '米饭', '4', '1元', '2018-04-11 17:06:11');
INSERT INTO `order_detail` VALUES ('65', '10086', '1008620180411170611', '米饭', '4', '1元', '2018-04-11 17:06:11');
INSERT INTO `order_detail` VALUES ('66', '10086', '1008620180411170611', '西红柿炒鸡蛋', '2', '15元', '2018-04-11 17:06:11');
INSERT INTO `order_detail` VALUES ('67', '10086', '1008620180416094715', '夫妻肺片', '1', '25元', '2018-04-16 09:47:15');
INSERT INTO `order_detail` VALUES ('68', '10086', '1008620180416094715', '夫妻肺片', '1', '25元', '2018-04-16 09:47:15');
INSERT INTO `order_detail` VALUES ('69', '10086', '1008620180416094715', '夫妻肺片', '1', '25元', '2018-04-16 09:47:15');
INSERT INTO `order_detail` VALUES ('70', '10086', '1008620180416094715', '西红柿蛋汤', '1', '10元', '2018-04-16 09:47:15');
INSERT INTO `order_detail` VALUES ('71', '10086', '1008620180416094715', '夫妻肺片', '1', '25元', '2018-04-16 09:47:15');
INSERT INTO `order_detail` VALUES ('72', '10086', '1008620180416094715', '夫妻肺片', '1', '25元', '2018-04-16 09:47:15');

-- ----------------------------
-- Table structure for `order_evaluate`
-- ----------------------------
DROP TABLE IF EXISTS `order_evaluate`;
CREATE TABLE `order_evaluate` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `evaluate_id` int(20) NOT NULL COMMENT '评价Id',
  `merchant_name` varchar(50) NOT NULL COMMENT '商家名字',
  `order_username` varchar(50) NOT NULL COMMENT '订餐用户的名字',
  `speed` int(20) DEFAULT NULL COMMENT '配送速度: 1:快 2.一般3.慢',
  `server` int(20) DEFAULT NULL COMMENT '服务态度 1:非常好 2：好 3：一般 4：差',
  `dishes_taste` varchar(20) DEFAULT NULL COMMENT '菜品口味 ',
  `prices` float(20,0) DEFAULT NULL COMMENT '订餐总价',
  `remark` varchar(50) DEFAULT NULL COMMENT '备注',
  `create_time` time(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_evaluate
-- ----------------------------
INSERT INTO `order_evaluate` VALUES ('1', '2000', '杨国福麻辣烫', '小鱼', '1', '1', '美味', '20', '好吃', null);
INSERT INTO `order_evaluate` VALUES ('2', '2001', '黄焖鸡', '小童', '1', '1', '非常好吃', '19', '味道棒', null);

-- ----------------------------
-- Table structure for `order_table`
-- ----------------------------
DROP TABLE IF EXISTS `order_table`;
CREATE TABLE `order_table` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `uid` int(255) DEFAULT NULL COMMENT '订餐用户Id',
  `order_id` varchar(255) DEFAULT NULL COMMENT '订单Id',
  `name` varchar(255) DEFAULT NULL COMMENT '收件人姓名',
  `is_processed` int(20) DEFAULT NULL COMMENT '订单是否被处理 1:已处理，2:未处理',
  `order_time` datetime DEFAULT NULL COMMENT '订单时间',
  `order_price` varchar(100) DEFAULT NULL COMMENT '订单总价',
  `is_buy` int(50) DEFAULT NULL COMMENT '是否付款:1:已支付:2未支付',
  `address_id` int(50) DEFAULT NULL COMMENT '地址的id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_table
-- ----------------------------
INSERT INTO `order_table` VALUES ('62', '10086', '1008620180409101027', '余周同', '2', '2018-04-09 10:10:27', '￥40', '1', '6');
INSERT INTO `order_table` VALUES ('64', '10086', '1008620180409114615', '问问', '2', '2018-04-09 11:46:15', '￥15', '1', '11');
INSERT INTO `order_table` VALUES ('65', '10086', '1008620180409152354', 'yzt', '2', '2018-04-09 15:23:54', '￥25', '1', '1');
INSERT INTO `order_table` VALUES ('66', '10086', '1008620180411112953', 'yzt', '2', '2018-04-11 11:29:53', '￥15', '2', '1');
INSERT INTO `order_table` VALUES ('67', '10086', '1008620180411114003', 'yzt', '2', '2018-04-11 11:40:03', '￥25', '2', '1');
INSERT INTO `order_table` VALUES ('68', '10086', '1008620180411114336', 'yzt', '2', '2018-04-11 11:43:36', '￥25', '2', '1');
INSERT INTO `order_table` VALUES ('69', '10086', '1008620180411114356', 'yzt', '2', '2018-04-11 11:43:56', '￥10', '2', '1');
INSERT INTO `order_table` VALUES ('70', '10086', '1008620180411170611', 'yzt', '2', '2018-04-11 17:06:11', '￥286', '1', '1');
INSERT INTO `order_table` VALUES ('71', '10086', '1008620180416094715', 'yzt', '2', '2018-04-16 09:47:15', '￥135', '1', '1');

-- ----------------------------
-- Table structure for `order_users`
-- ----------------------------
DROP TABLE IF EXISTS `order_users`;
CREATE TABLE `order_users` (
  `order_users_id` int(20) NOT NULL AUTO_INCREMENT COMMENT '订餐用户的Id',
  `name` varchar(50) NOT NULL COMMENT '登录名',
  `password` varchar(20) NOT NULL COMMENT '密码',
  `phone` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `user_exp` int(20) DEFAULT '0' COMMENT '用户积分',
  `create_time` datetime DEFAULT NULL,
  `displayname` varchar(255) NOT NULL DEFAULT '用户' COMMENT '用户角色',
  `accountstatus` int(20) NOT NULL DEFAULT '1' COMMENT '用户的状态 1启用  2冻结',
  PRIMARY KEY (`order_users_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10101 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_users
-- ----------------------------
INSERT INTO `order_users` VALUES ('10086', '小鱼', '111', '17730185585', '0', '2018-03-14 00:00:00', '用户', '1');
INSERT INTO `order_users` VALUES ('10087', '小童', '123456', '2147483647', '0', '2018-03-14 00:00:00', '用户', '1');
INSERT INTO `order_users` VALUES ('10093', 'admin', '123456', null, '0', '2018-03-14 00:00:00', '管理员', '1');
INSERT INTO `order_users` VALUES ('10094', '123', '123', null, '0', '2018-03-14 00:00:00', '用户', '1');
INSERT INTO `order_users` VALUES ('10096', '11', '11', null, '0', '2018-03-14 15:20:27', '用户', '1');
INSERT INTO `order_users` VALUES ('10100', '余周同', '123456', null, null, '2018-03-14 16:13:59', '用户', '1');

-- ----------------------------
-- Table structure for `shops`
-- ----------------------------
DROP TABLE IF EXISTS `shops`;
CREATE TABLE `shops` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `shop_id` int(20) NOT NULL COMMENT '商家Id',
  `shop_number` varchar(50) NOT NULL COMMENT '商家店名',
  `shop_login_name` varchar(50) NOT NULL COMMENT '商家登录名',
  `shop_login_pwd` varchar(50) NOT NULL COMMENT '商家登录密码',
  `shop_address` varchar(50) DEFAULT NULL COMMENT '商家地址',
  `shop_phone` varchar(50) DEFAULT NULL COMMENT '商家电话',
  `shop_introduction` varchar(100) DEFAULT NULL COMMENT '商家简介',
  `order_status` int(20) DEFAULT NULL COMMENT '订单状态 1:开始 2.结束',
  `create_time` time(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shops
-- ----------------------------
INSERT INTO `shops` VALUES ('1', '3001', '杨国福麻辣烫', 'ygf', '123456', '浙报', '12345678901', '麻辣烫', '1', null);
