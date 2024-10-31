/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : mytest

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2020-12-26 19:56:31
*/

SET FOREIGN_KEY_CHECKS=0;
-- 创建表结构
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
                        `id` bigint(20) NOT NULL AUTO_INCREMENT,
                        `name` varchar(20) DEFAULT NULL COMMENT '姓名',
                        `age` int(11) DEFAULT NULL COMMENT '年龄',
                        `sex` varchar(1) DEFAULT NULL COMMENT '性别',
                        `address` varchar(255) DEFAULT NULL COMMENT '地址',
                        `phone` varchar(20) DEFAULT NULL COMMENT '电话',
                        `create_time` varchar(20) DEFAULT NULL,
                        PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- 插入数据
INSERT INTO `user` VALUES ('2', '蔡徐坤', '26', '男', '温州市', '13867675656', '2024-10-14');
INSERT INTO `user` VALUES ('3', '马芸', '20', '男', '合肥市', '13978786565', '2024-10-14');
INSERT INTO `user` VALUES ('5', '马花藤', '20', '男', '南京市', '13977786561', '2024-10-14');
INSERT INTO `user` VALUES ('6', '李艳红', '22', '男', '深圳市', '13867675646', '2024-10-14');
INSERT INTO `user` VALUES ('7', '刘强动', '20', '男', '合肥市', '13978786565', '2024-10-14');
INSERT INTO `user` VALUES ('8', '雷君', '22', '男', '上海市', '13867675696', '2024-10-14');
INSERT INTO `user` VALUES ('9', '丁磊', '20', '男', '合肥市', '13978786665', '2024-10-14');
INSERT INTO `user` VALUES ('10', '张朝扬', '22', '男', '昆明市', '13867635656', '2024-10-14');
INSERT INTO `user` VALUES ('12', '周洪翼', '22', '男', '成都市', '13867674561', '2024-10-14');
INSERT INTO user VALUES ('1', '何雷军', '25', '男', '武汉市', '13912349876', '2024-10-14');
INSERT INTO user VALUES ('4', '陈磊', '23', '男', '杭州市', '13898765432', '2024-10-14');
INSERT INTO user VALUES ('11', '孙鸿祎', '28', '男', '北京市', '13787654321', '2024-10-14');
INSERT INTO user VALUES ('19', '郑朝阳', '24', '男', '上海市', '13654321987', '2024-10-14');
INSERT INTO user VALUES ('18', '罗化腾', '27', '男', '广州市', '13543219876', '2024-10-14');
INSERT INTO user VALUES ('13', '叶彦宏', '26', '男', '深圳市', '13432198765', '2024-10-14');
INSERT INTO user VALUES ('14', '苏强东', '29', '男', '成都市', '13321987654', '2024-10-14');
INSERT INTO user VALUES ('15', '范雷军', '30', '男', '重庆市', '13219876543', '2024-10-14');
INSERT INTO user VALUES ('16', '魏磊', '22', '男', '天津市', '13198765432', '2024-10-14');
INSERT INTO user VALUES ('17', '吴鸿祎', '21', '男', '苏州市', '13087654321', '2024-10-14');


-- 查询示例，按年龄分组并按地址排序
SELECT age, COUNT(*) AS user_count, GROUP_CONCAT(address ORDER BY address SEPARATOR '; ') AS addresses
FROM `user`
GROUP BY age
ORDER BY MAX(address);
