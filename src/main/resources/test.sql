/*
Navicat MySQL Data Transfer

Source Server         : work
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2019-01-16 11:01:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for base_classes
-- ----------------------------
DROP TABLE IF EXISTS `base_classes`;
CREATE TABLE `base_classes` (
  `ClassID` int(11) NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `ParentClassID` int(11) NOT NULL DEFAULT '0' COMMENT '父分类',
  `ClassName` varchar(50) NOT NULL COMMENT '分类名',
  `ClassImg` varchar(100) DEFAULT NULL COMMENT '分类图片',
  `ClassDescription` varchar(512) DEFAULT NULL COMMENT '描述',
  `Sort` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`ClassID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='党建文献分类表';

-- ----------------------------
-- Records of base_classes
-- ----------------------------
INSERT INTO `base_classes` VALUES ('1', '0', '衰哥', null, null, null);
INSERT INTO `base_classes` VALUES ('2', '1', 'GG', '', '', null);
INSERT INTO `base_classes` VALUES ('3', '1', 'gg', null, null, null);
INSERT INTO `base_classes` VALUES ('4', '0', '霉眉', null, null, null);
INSERT INTO `base_classes` VALUES ('5', '4', 'MM', null, null, null);
INSERT INTO `base_classes` VALUES ('6', '4', 'mm', null, null, null);

-- ----------------------------
-- Table structure for base_dics
-- ----------------------------
DROP TABLE IF EXISTS `base_dics`;
CREATE TABLE `base_dics` (
  `DicID` int(11) NOT NULL AUTO_INCREMENT COMMENT '字典ID',
  `DicType` varchar(20) DEFAULT NULL COMMENT '字典类型',
  `DicName` varchar(20) DEFAULT NULL COMMENT '字典名',
  `DicValue` varchar(100) DEFAULT NULL COMMENT '字典值',
  `DicTypeName` varchar(100) DEFAULT NULL COMMENT '字典类型中文名',
  `IsDicType` int(11) DEFAULT '0' COMMENT '是否字典类型',
  PRIMARY KEY (`DicID`)
) ENGINE=InnoDB AUTO_INCREMENT=1020 DEFAULT CHARSET=utf8 COMMENT='字典表';

-- ----------------------------
-- Records of base_dics
-- ----------------------------
INSERT INTO `base_dics` VALUES ('824', 'gender', null, null, '性别', '1');
INSERT INTO `base_dics` VALUES ('825', 'gender', '女', '0', null, '0');
INSERT INTO `base_dics` VALUES ('826', 'gender', '男', '1', null, '0');
INSERT INTO `base_dics` VALUES ('827', 'mouldtype', null, null, '模型类型', '1');
INSERT INTO `base_dics` VALUES ('828', 'mouldtype', '基础库', '1', null, '0');
INSERT INTO `base_dics` VALUES ('829', 'mouldtype', '关联库', '2', null, '0');
INSERT INTO `base_dics` VALUES ('830', 'mouldtype', '综合库', '3', null, '0');
INSERT INTO `base_dics` VALUES ('831', 'columntype', null, null, '字段类型', '1');
INSERT INTO `base_dics` VALUES ('832', 'columntype', '单行文本', '1', null, '0');
INSERT INTO `base_dics` VALUES ('833', 'columntype', '多行文本', '2', null, '0');
INSERT INTO `base_dics` VALUES ('834', 'columntype', '下拉单选', '3', null, '0');
INSERT INTO `base_dics` VALUES ('835', 'columntype', '下拉多选', '4', null, '0');
INSERT INTO `base_dics` VALUES ('836', 'columntype', '富文本', '7', null, '0');
INSERT INTO `base_dics` VALUES ('837', 'columntype', '文件上传', '8', null, '0');
INSERT INTO `base_dics` VALUES ('838', 'columntype', '日期时间', '10', null, '0');
INSERT INTO `base_dics` VALUES ('839', 'columntype', '日期', '11', null, '0');
INSERT INTO `base_dics` VALUES ('840', 'columntype', '整数', '17', null, '0');
INSERT INTO `base_dics` VALUES ('841', 'columntype', '小数', '18', null, '0');
INSERT INTO `base_dics` VALUES ('842', 'logtype', null, null, '日志类型', '1');
INSERT INTO `base_dics` VALUES ('843', 'logtype', '登录/登出', '1', null, '0');
INSERT INTO `base_dics` VALUES ('844', 'logtype', '新增', '2', null, '0');
INSERT INTO `base_dics` VALUES ('845', 'logtype', '修改', '3', null, '0');
INSERT INTO `base_dics` VALUES ('846', 'logtype', '删除', '4', null, '0');
INSERT INTO `base_dics` VALUES ('847', 'ressteptype', null, null, '资源流程', '1');
INSERT INTO `base_dics` VALUES ('848', 'ressteptype', '标引后发布', '1', null, '0');
INSERT INTO `base_dics` VALUES ('849', 'ressteptype', '加工后发布', '2', null, '0');
INSERT INTO `base_dics` VALUES ('850', 'ressteptype', '标引并加工后发布', '3', null, '0');
INSERT INTO `base_dics` VALUES ('851', 'ressteptype', '只需发布', '4', null, '0');
INSERT INTO `base_dics` VALUES ('852', 'resstatus', null, null, '资源状态', '1');
INSERT INTO `base_dics` VALUES ('853', 'resstatus', '待标引', '0', null, '0');
INSERT INTO `base_dics` VALUES ('854', 'resstatus', '已删除', '-1', null, '0');
INSERT INTO `base_dics` VALUES ('855', 'resstatus', '标引中', '2', null, '0');
INSERT INTO `base_dics` VALUES ('856', 'resstatus', '待加工', '4', null, '0');
INSERT INTO `base_dics` VALUES ('857', 'resstatus', '加工中', '6', null, '0');
INSERT INTO `base_dics` VALUES ('858', 'resstatus', '待发布', '8', null, '0');
INSERT INTO `base_dics` VALUES ('859', 'resstatus', '已发布', '9', null, '0');
INSERT INTO `base_dics` VALUES ('860', 'status', null, null, '状态', '1');
INSERT INTO `base_dics` VALUES ('861', 'status', '正常', '1', null, '0');
INSERT INTO `base_dics` VALUES ('862', 'status', '已删除', '-1', null, '0');
INSERT INTO `base_dics` VALUES ('863', 'globalstatus', null, null, '通用状态', '1');
INSERT INTO `base_dics` VALUES ('864', 'globalstatus', '正常', '1', null, '0');
INSERT INTO `base_dics` VALUES ('865', 'globalstatus', '已删除', '-1', null, '0');
INSERT INTO `base_dics` VALUES ('866', 'globalstatus', '未激活', '0', null, '0');
INSERT INTO `base_dics` VALUES ('867', 'globalstatus', '锁定', '-2', null, '0');
INSERT INTO `base_dics` VALUES ('868', 'ressteptype', '无需发布', '5', null, '0');
INSERT INTO `base_dics` VALUES ('869', 'columnsource', null, null, '字段来源', '1');
INSERT INTO `base_dics` VALUES ('870', 'columnsource', '字典', '1', null, '0');
INSERT INTO `base_dics` VALUES ('871', 'columnsource', '分类', '2', null, '0');
INSERT INTO `base_dics` VALUES ('872', 'columnsource', '资源库', '3', null, '0');
INSERT INTO `base_dics` VALUES ('908', 'isornot', null, null, '是否状态', '1');
INSERT INTO `base_dics` VALUES ('909', 'isornot', '是', '1', null, '0');
INSERT INTO `base_dics` VALUES ('910', 'isornot', '否', '0', null, '0');
INSERT INTO `base_dics` VALUES ('911', 'degree', null, null, '学历', '1');
INSERT INTO `base_dics` VALUES ('912', 'degree', '大专以下', '1', null, '0');
INSERT INTO `base_dics` VALUES ('913', 'degree', '专科', '2', null, '0');
INSERT INTO `base_dics` VALUES ('914', 'degree', '本科', '3', null, '0');
INSERT INTO `base_dics` VALUES ('915', 'degree', '研究生及以上', '4', null, '0');
INSERT INTO `base_dics` VALUES ('1011', 'logtype', '查询', '5', null, '0');
INSERT INTO `base_dics` VALUES ('1012', 'logtype', '下载', '6', null, '0');
INSERT INTO `base_dics` VALUES ('1013', 'logtype', '上传', '7', null, '0');
INSERT INTO `base_dics` VALUES ('1014', 'logtype', '通知', '8', null, '0');
INSERT INTO `base_dics` VALUES ('1015', 'point', null, null, '卖点', '1');
INSERT INTO `base_dics` VALUES ('1016', 'point', '便宜', '1', null, '0');
INSERT INTO `base_dics` VALUES ('1017', 'point', '物流', '2', null, '0');
INSERT INTO `base_dics` VALUES ('1018', 'point', '实惠', '3', null, '0');
INSERT INTO `base_dics` VALUES ('1019', 'point', '棒棒哒', '4', null, '0');

-- ----------------------------
-- Table structure for base_logs
-- ----------------------------
DROP TABLE IF EXISTS `base_logs`;
CREATE TABLE `base_logs` (
  `LogID` int(11) NOT NULL AUTO_INCREMENT COMMENT '日志ID',
  `LogType` int(11) NOT NULL COMMENT '日志类型',
  `LogDetail` varchar(1000) NOT NULL COMMENT '日志详细',
  `Creator` int(11) DEFAULT NULL COMMENT '创建者',
  `CreateTime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`LogID`)
) ENGINE=InnoDB AUTO_INCREMENT=118077 DEFAULT CHARSET=utf8 COMMENT='日志表';

-- ----------------------------
-- Records of base_logs
-- ----------------------------
INSERT INTO `base_logs` VALUES ('115978', '1', '用户登录', '1', '2018-11-26 15:48:38');
INSERT INTO `base_logs` VALUES ('115979', '5', '查询系统日志', '1', '2018-11-26 15:48:40');
INSERT INTO `base_logs` VALUES ('115980', '5', '查询角色', '1', '2018-11-26 15:48:45');
INSERT INTO `base_logs` VALUES ('115981', '5', '查询系统日志', '1', '2018-11-26 15:48:46');
INSERT INTO `base_logs` VALUES ('115982', '5', '查询角色', '1', '2018-11-26 15:48:49');
INSERT INTO `base_logs` VALUES ('115983', '5', '查询管理员', '1', '2018-11-26 15:48:51');
INSERT INTO `base_logs` VALUES ('115984', '5', '查询系统日志', '1', '2018-11-26 15:48:52');
INSERT INTO `base_logs` VALUES ('115985', '5', '查询系统日志', '1', '2018-11-26 15:49:13');
INSERT INTO `base_logs` VALUES ('115986', '5', '查询系统日志', '1', '2018-11-26 15:54:49');
INSERT INTO `base_logs` VALUES ('115987', '5', '查询系统日志', '1', '2018-11-26 15:54:58');
INSERT INTO `base_logs` VALUES ('115988', '5', '查询系统日志', '1', '2018-11-26 15:55:50');
INSERT INTO `base_logs` VALUES ('115989', '3', '更新字典', '1', '2018-11-26 16:05:29');
INSERT INTO `base_logs` VALUES ('115990', '3', '更新字典', '1', '2018-11-26 16:05:56');
INSERT INTO `base_logs` VALUES ('115991', '3', '更新字典', '1', '2018-11-26 16:06:03');
INSERT INTO `base_logs` VALUES ('115992', '3', '更新字典', '1', '2018-11-26 16:06:10');
INSERT INTO `base_logs` VALUES ('115993', '2', '新增字典', '1', '2018-11-26 16:06:31');
INSERT INTO `base_logs` VALUES ('115994', '2', '新增字典', '1', '2018-11-26 16:06:48');
INSERT INTO `base_logs` VALUES ('115995', '2', '新增字典', '1', '2018-11-26 16:06:57');
INSERT INTO `base_logs` VALUES ('115996', '2', '新增字典', '1', '2018-11-26 16:07:46');
INSERT INTO `base_logs` VALUES ('115997', '5', '查询系统日志', '1', '2018-11-26 16:07:50');
INSERT INTO `base_logs` VALUES ('115998', '5', '查询系统日志', '1', '2018-11-26 16:07:59');
INSERT INTO `base_logs` VALUES ('115999', '5', '查询系统日志', '1', '2018-11-26 16:08:01');
INSERT INTO `base_logs` VALUES ('116000', '5', '查询系统日志', '1', '2018-11-26 16:08:56');
INSERT INTO `base_logs` VALUES ('116001', '5', '查询系统日志', '1', '2018-11-26 16:08:58');
INSERT INTO `base_logs` VALUES ('116002', '5', '查询系统日志', '1', '2018-11-26 16:09:02');
INSERT INTO `base_logs` VALUES ('116003', '5', '查询系统日志', '1', '2018-11-26 16:09:06');
INSERT INTO `base_logs` VALUES ('116004', '5', '查询系统日志', '1', '2018-11-26 16:09:09');
INSERT INTO `base_logs` VALUES ('116005', '5', '查询系统日志', '1', '2018-11-26 16:09:21');
INSERT INTO `base_logs` VALUES ('116006', '5', '查询系统日志', '1', '2018-11-26 16:09:23');
INSERT INTO `base_logs` VALUES ('116007', '5', '查询系统日志', '1', '2018-11-26 16:09:26');
INSERT INTO `base_logs` VALUES ('116008', '5', '查询系统日志', '1', '2018-11-26 16:09:32');
INSERT INTO `base_logs` VALUES ('116009', '5', '查询系统日志', '1', '2018-11-26 16:09:34');
INSERT INTO `base_logs` VALUES ('116010', '5', '查询系统日志', '1', '2018-11-26 16:09:39');
INSERT INTO `base_logs` VALUES ('116011', '5', '查询系统日志', '1', '2018-11-26 16:09:48');
INSERT INTO `base_logs` VALUES ('116012', '5', '查询系统日志', '1', '2018-11-26 16:09:53');
INSERT INTO `base_logs` VALUES ('116013', '5', '查询系统日志', '1', '2018-11-26 16:09:56');
INSERT INTO `base_logs` VALUES ('116014', '5', '查询菜单', '1', '2018-11-26 16:10:08');
INSERT INTO `base_logs` VALUES ('116015', '5', '资源库查看', '1', '2018-11-26 16:16:40');
INSERT INTO `base_logs` VALUES ('116016', '1', '用户登录', '1', '2018-11-26 16:24:00');
INSERT INTO `base_logs` VALUES ('116017', '1', '用户登录', '1', '2018-11-26 16:28:54');
INSERT INTO `base_logs` VALUES ('116018', '1', '用户登录', '1', '2018-11-26 16:30:24');
INSERT INTO `base_logs` VALUES ('116019', '1', '用户登录', '1', '2018-11-26 16:35:57');
INSERT INTO `base_logs` VALUES ('116020', '1', '用户登录', '1', '2018-11-26 16:39:40');
INSERT INTO `base_logs` VALUES ('116021', '1', '用户登录', '1', '2018-11-26 16:40:21');
INSERT INTO `base_logs` VALUES ('116023', '3', '修改了党员管理10条数据状态', '1', '2018-11-26 16:46:59');
INSERT INTO `base_logs` VALUES ('116024', '3', '修改了党员管理10条数据状态', '1', '2018-11-26 16:47:06');
INSERT INTO `base_logs` VALUES ('116025', '5', '查询系统日志', '1', '2018-11-26 16:47:11');
INSERT INTO `base_logs` VALUES ('116026', '5', '查询角色', '1', '2018-11-26 16:48:05');
INSERT INTO `base_logs` VALUES ('116027', '5', '查询角色菜单', '1', '2018-11-26 16:48:07');
INSERT INTO `base_logs` VALUES ('116028', '5', '查询角色', '1', '2018-11-26 16:48:09');
INSERT INTO `base_logs` VALUES ('116029', '5', '查询系统日志', '1', '2018-11-26 16:48:11');
INSERT INTO `base_logs` VALUES ('116030', '5', '资源库查看', '1', '2018-11-26 17:02:19');
INSERT INTO `base_logs` VALUES ('116031', '5', '分类查询', '1', '2018-11-26 17:16:39');
INSERT INTO `base_logs` VALUES ('116032', '5', '分类查询', '1', '2018-11-26 17:16:40');
INSERT INTO `base_logs` VALUES ('116033', '5', '分类查询', '1', '2018-11-26 17:23:30');
INSERT INTO `base_logs` VALUES ('116034', '5', '分类查询', '1', '2018-11-26 17:25:03');
INSERT INTO `base_logs` VALUES ('116035', '5', '分类查询', '1', '2018-11-26 17:25:30');
INSERT INTO `base_logs` VALUES ('116036', '5', '分类查询', '1', '2018-11-26 17:25:45');
INSERT INTO `base_logs` VALUES ('116037', '5', '分类查询', '1', '2018-11-26 17:25:57');
INSERT INTO `base_logs` VALUES ('116038', '5', '分类查询', '1', '2018-11-26 17:26:41');
INSERT INTO `base_logs` VALUES ('116039', '5', '分类查询', '1', '2018-11-26 17:26:47');
INSERT INTO `base_logs` VALUES ('116040', '5', '分类查询', '1', '2018-11-26 17:27:32');
INSERT INTO `base_logs` VALUES ('116041', '5', '分类查询', '1', '2018-11-26 17:27:34');
INSERT INTO `base_logs` VALUES ('116042', '3', '修改了党员管理1条数据', '1', '2018-11-26 17:27:44');
INSERT INTO `base_logs` VALUES ('116043', '5', '分类查询', '1', '2018-11-26 17:29:42');
INSERT INTO `base_logs` VALUES ('116044', '5', '分类查询', '1', '2018-11-26 17:31:08');
INSERT INTO `base_logs` VALUES ('116045', '5', '分类查询', '1', '2018-11-26 17:31:12');
INSERT INTO `base_logs` VALUES ('116046', '3', '修改了党员管理1条数据', '1', '2018-11-26 17:31:14');
INSERT INTO `base_logs` VALUES ('116047', '5', '资源库查看', '1', '2018-11-26 17:31:33');
INSERT INTO `base_logs` VALUES ('116048', '5', '分类查询', '1', '2018-11-26 17:36:46');
INSERT INTO `base_logs` VALUES ('116049', '1', '用户登录', '1', '2018-11-27 09:21:08');
INSERT INTO `base_logs` VALUES ('116050', '5', '资源库查看', '1', '2018-11-27 09:21:36');
INSERT INTO `base_logs` VALUES ('116051', '5', '分类查询', '1', '2018-11-27 09:22:25');
INSERT INTO `base_logs` VALUES ('116052', '5', '分类查询', '1', '2018-11-27 09:24:06');
INSERT INTO `base_logs` VALUES ('116053', '5', '分类查询', '1', '2018-11-27 09:24:27');
INSERT INTO `base_logs` VALUES ('116054', '5', '资源库查看', '1', '2018-11-27 09:45:27');
INSERT INTO `base_logs` VALUES ('116055', '5', '分类查询', '1', '2018-11-27 09:45:37');
INSERT INTO `base_logs` VALUES ('116056', '5', '分类查询', '1', '2018-11-27 09:47:01');
INSERT INTO `base_logs` VALUES ('116057', '5', '资源库查看', '1', '2018-11-27 09:52:13');
INSERT INTO `base_logs` VALUES ('116058', '5', '资源库查看', '1', '2018-11-27 09:52:20');
INSERT INTO `base_logs` VALUES ('116059', '5', '资源库查看', '1', '2018-11-27 09:52:37');
INSERT INTO `base_logs` VALUES ('116060', '5', '资源库查看', '1', '2018-11-27 09:52:55');
INSERT INTO `base_logs` VALUES ('116061', '5', '资源库查看', '1', '2018-11-27 09:53:23');
INSERT INTO `base_logs` VALUES ('116062', '5', '资源库查看', '1', '2018-11-27 09:53:30');
INSERT INTO `base_logs` VALUES ('116063', '5', '资源库查看', '1', '2018-11-27 09:54:43');
INSERT INTO `base_logs` VALUES ('116064', '1', '用户登录', '1', '2018-11-27 10:25:34');
INSERT INTO `base_logs` VALUES ('116065', '5', '资源库查看', '1', '2018-11-27 10:25:40');
INSERT INTO `base_logs` VALUES ('116066', '1', '用户登录', '1', '2018-11-27 11:13:01');
INSERT INTO `base_logs` VALUES ('116067', '5', '资源库查看', '1', '2018-11-27 11:13:05');
INSERT INTO `base_logs` VALUES ('116068', '5', '资源库查看', '1', '2018-11-27 11:17:37');
INSERT INTO `base_logs` VALUES ('116069', '2', '新增字典', '1', '2018-11-27 11:30:16');
INSERT INTO `base_logs` VALUES ('116070', '2', '新增字典', '1', '2018-11-27 11:30:30');
INSERT INTO `base_logs` VALUES ('116071', '2', '新增字典', '1', '2018-11-27 11:30:42');
INSERT INTO `base_logs` VALUES ('116072', '2', '新增字典', '1', '2018-11-27 11:30:49');
INSERT INTO `base_logs` VALUES ('116073', '2', '新增字典', '1', '2018-11-27 11:31:26');
INSERT INTO `base_logs` VALUES ('116074', '5', '资源库查看', '1', '2018-11-27 11:31:35');
INSERT INTO `base_logs` VALUES ('116075', '5', '资源库查看', '1', '2018-11-27 11:31:38');
INSERT INTO `base_logs` VALUES ('116076', '5', '资源库查看', '1', '2018-11-27 11:31:41');
INSERT INTO `base_logs` VALUES ('116077', '5', '资源库查看', '1', '2018-11-27 11:31:56');
INSERT INTO `base_logs` VALUES ('116078', '2', '新增资源库', '1', '2018-11-27 11:32:28');
INSERT INTO `base_logs` VALUES ('116079', '5', '资源库查看', '1', '2018-11-27 11:32:30');
INSERT INTO `base_logs` VALUES ('116080', '5', '资源库查看', '1', '2018-11-27 11:47:23');
INSERT INTO `base_logs` VALUES ('116081', '2', '新增资源库', '1', '2018-11-27 11:48:41');
INSERT INTO `base_logs` VALUES ('116082', '5', '资源库查看', '1', '2018-11-27 11:48:45');
INSERT INTO `base_logs` VALUES ('116083', '5', '资源库查看', '1', '2018-11-27 11:50:27');
INSERT INTO `base_logs` VALUES ('116084', '2', '新增资源库', '1', '2018-11-27 11:51:13');
INSERT INTO `base_logs` VALUES ('116085', '5', '资源库查看', '1', '2018-11-27 11:52:42');
INSERT INTO `base_logs` VALUES ('116086', '1', '用户登录', '1', '2018-11-27 13:16:22');
INSERT INTO `base_logs` VALUES ('116087', '5', '资源库查看', '1', '2018-11-27 13:16:30');
INSERT INTO `base_logs` VALUES ('116088', '5', '资源库查看', '1', '2018-11-27 13:36:41');
INSERT INTO `base_logs` VALUES ('116089', '5', '查询菜单', '1', '2018-11-27 13:36:45');
INSERT INTO `base_logs` VALUES ('116090', '5', '查询角色', '1', '2018-11-27 13:36:48');
INSERT INTO `base_logs` VALUES ('116091', '5', '查询菜单', '1', '2018-11-27 13:36:49');
INSERT INTO `base_logs` VALUES ('116092', '5', '资源库查看', '1', '2018-11-27 13:37:46');
INSERT INTO `base_logs` VALUES ('116093', '5', '查询角色', '1', '2018-11-27 13:39:02');
INSERT INTO `base_logs` VALUES ('116094', '5', '查询菜单', '1', '2018-11-27 13:39:03');
INSERT INTO `base_logs` VALUES ('116095', '1', '用户登录', '1', '2018-11-27 14:08:44');
INSERT INTO `base_logs` VALUES ('116096', '1', '用户登录', '1', '2018-11-27 14:09:26');
INSERT INTO `base_logs` VALUES ('116097', '5', '查询菜单', '1', '2018-11-27 14:14:55');
INSERT INTO `base_logs` VALUES ('116098', '5', '查询角色', '1', '2018-11-27 14:14:57');
INSERT INTO `base_logs` VALUES ('116099', '5', '查询管理员', '1', '2018-11-27 14:14:58');
INSERT INTO `base_logs` VALUES ('116100', '5', '查询系统日志', '1', '2018-11-27 14:14:58');
INSERT INTO `base_logs` VALUES ('116101', '5', '资源库查看', '1', '2018-11-27 14:25:23');
INSERT INTO `base_logs` VALUES ('116102', '5', '资源库查看', '1', '2018-11-27 14:26:52');
INSERT INTO `base_logs` VALUES ('116103', '1', '用户登录', '1', '2018-11-27 14:32:04');
INSERT INTO `base_logs` VALUES ('116104', '5', '查询菜单', '1', '2018-11-27 14:32:06');
INSERT INTO `base_logs` VALUES ('116105', '5', '查询管理员', '1', '2018-11-27 14:32:13');
INSERT INTO `base_logs` VALUES ('116106', '5', '查询角色', '1', '2018-11-27 14:32:14');
INSERT INTO `base_logs` VALUES ('116107', '5', '查询管理员', '1', '2018-11-27 14:32:19');
INSERT INTO `base_logs` VALUES ('116108', '5', '查询角色', '1', '2018-11-27 14:32:21');
INSERT INTO `base_logs` VALUES ('116109', '5', '查询角色菜单', '1', '2018-11-27 14:32:22');
INSERT INTO `base_logs` VALUES ('116110', '5', '查询系统日志', '1', '2018-11-27 14:32:25');
INSERT INTO `base_logs` VALUES ('116111', '1', '用户登录', '1', '2018-11-27 14:41:41');
INSERT INTO `base_logs` VALUES ('116112', '1', '用户登录', '1', '2018-11-27 14:49:43');
INSERT INTO `base_logs` VALUES ('116113', '5', '查询菜单', '1', '2018-11-27 14:49:45');
INSERT INTO `base_logs` VALUES ('116114', '5', '查询角色', '1', '2018-11-27 14:49:46');
INSERT INTO `base_logs` VALUES ('116115', '5', '查询管理员', '1', '2018-11-27 14:49:47');
INSERT INTO `base_logs` VALUES ('116116', '5', '查询系统日志', '1', '2018-11-27 14:49:49');
INSERT INTO `base_logs` VALUES ('116117', '5', '资源库查看', '1', '2018-11-27 14:49:53');
INSERT INTO `base_logs` VALUES ('116118', '5', '资源库查看', '1', '2018-11-27 14:50:04');
INSERT INTO `base_logs` VALUES ('116119', '5', '资源库查看', '1', '2018-11-27 14:51:41');
INSERT INTO `base_logs` VALUES ('116120', '1', '用户登录', '1', '2018-11-27 14:53:19');
INSERT INTO `base_logs` VALUES ('116121', '5', '资源库查看', '1', '2018-11-27 14:53:28');
INSERT INTO `base_logs` VALUES ('116122', '5', '资源库查看', '1', '2018-11-27 14:53:49');
INSERT INTO `base_logs` VALUES ('116123', '5', '查询菜单', '1', '2018-11-27 15:14:30');
INSERT INTO `base_logs` VALUES ('116124', '5', '查询角色', '1', '2018-11-27 15:14:31');
INSERT INTO `base_logs` VALUES ('116125', '5', '查询管理员', '1', '2018-11-27 15:14:35');
INSERT INTO `base_logs` VALUES ('116126', '5', '查询管理员', '1', '2018-11-27 15:14:40');
INSERT INTO `base_logs` VALUES ('116127', '5', '查询系统日志', '1', '2018-11-27 15:14:42');
INSERT INTO `base_logs` VALUES ('116128', '5', '查询系统日志', '1', '2018-11-27 15:14:52');
INSERT INTO `base_logs` VALUES ('116129', '5', '资源库查看', '1', '2018-11-27 15:15:11');
INSERT INTO `base_logs` VALUES ('116130', '5', '分类查询', '1', '2018-11-27 15:17:34');
INSERT INTO `base_logs` VALUES ('116131', '5', '分类查询', '1', '2018-11-27 15:17:52');
INSERT INTO `base_logs` VALUES ('116132', '5', '分类查询', '1', '2018-11-27 15:18:50');
INSERT INTO `base_logs` VALUES ('116133', '5', '资源库查看', '1', '2018-11-27 15:38:57');
INSERT INTO `base_logs` VALUES ('116134', '5', '资源库查看', '1', '2018-11-27 15:39:14');
INSERT INTO `base_logs` VALUES ('116135', '5', '查询系统日志', '1', '2018-11-27 15:39:19');
INSERT INTO `base_logs` VALUES ('116136', '5', '查询角色', '1', '2018-11-27 15:39:30');
INSERT INTO `base_logs` VALUES ('116137', '5', '查询角色', '1', '2018-11-27 15:39:38');
INSERT INTO `base_logs` VALUES ('116138', '5', '查询角色菜单', '1', '2018-11-27 15:39:39');
INSERT INTO `base_logs` VALUES ('116139', '5', '查询管理员', '1', '2018-11-27 15:39:44');
INSERT INTO `base_logs` VALUES ('116140', '5', '查询管理员', '1', '2018-11-27 15:39:46');
INSERT INTO `base_logs` VALUES ('116141', '5', '查询角色', '1', '2018-11-27 15:39:46');
INSERT INTO `base_logs` VALUES ('116142', '5', '查询菜单', '1', '2018-11-27 15:39:51');
INSERT INTO `base_logs` VALUES ('116143', '1', '用户登录', '1', '2018-11-27 15:48:25');
INSERT INTO `base_logs` VALUES ('116144', '5', '分类查询', '1', '2018-11-27 15:48:27');
INSERT INTO `base_logs` VALUES ('116145', '5', '分类查询', '1', '2018-11-27 15:48:41');
INSERT INTO `base_logs` VALUES ('116146', '1', '用户登录', '1', '2018-11-27 15:52:16');
INSERT INTO `base_logs` VALUES ('116147', '5', '分类查询', '1', '2018-11-27 15:52:23');
INSERT INTO `base_logs` VALUES ('116148', '5', '分类查询', '1', '2018-11-27 15:52:36');
INSERT INTO `base_logs` VALUES ('116149', '5', '分类查询', '1', '2018-11-27 15:53:30');
INSERT INTO `base_logs` VALUES ('116150', '5', '查询系统日志', '1', '2018-11-27 15:53:43');
INSERT INTO `base_logs` VALUES ('116151', '1', '用户登录', '1', '2018-11-27 16:05:51');
INSERT INTO `base_logs` VALUES ('116152', '5', '查询系统日志', '1', '2018-11-27 16:05:52');
INSERT INTO `base_logs` VALUES ('116153', '5', '分类查询', '1', '2018-11-27 16:05:56');
INSERT INTO `base_logs` VALUES ('116154', '5', '分类查询', '1', '2018-11-27 16:06:05');
INSERT INTO `base_logs` VALUES ('116155', '1', '用户登录', '1', '2018-11-27 16:11:19');
INSERT INTO `base_logs` VALUES ('116156', '5', '分类查询', '1', '2018-11-27 16:11:21');
INSERT INTO `base_logs` VALUES ('116157', '5', '查询菜单', '1', '2018-11-27 16:11:34');
INSERT INTO `base_logs` VALUES ('116158', '5', '查询系统日志', '1', '2018-11-27 16:11:35');
INSERT INTO `base_logs` VALUES ('116159', '1', '用户登录', '1', '2018-11-27 16:27:19');
INSERT INTO `base_logs` VALUES ('116160', '5', '查询菜单', '1', '2018-11-27 16:27:20');
INSERT INTO `base_logs` VALUES ('116161', '5', '查询角色', '1', '2018-11-27 16:27:22');
INSERT INTO `base_logs` VALUES ('116162', '5', '查询管理员', '1', '2018-11-27 16:27:28');
INSERT INTO `base_logs` VALUES ('116163', '5', '查询系统日志', '1', '2018-11-27 16:27:31');
INSERT INTO `base_logs` VALUES ('116164', '5', '资源库查看', '1', '2018-11-27 16:27:43');
INSERT INTO `base_logs` VALUES ('116165', '1', '用户登录', '1', '2018-11-28 09:26:05');
INSERT INTO `base_logs` VALUES ('116166', '5', '分类查询', '1', '2018-11-28 09:26:09');
INSERT INTO `base_logs` VALUES ('116167', '5', '分类查询', '1', '2018-11-28 09:26:12');
INSERT INTO `base_logs` VALUES ('116168', '7', '富文本图片上传', '1', '2018-11-28 09:26:54');
INSERT INTO `base_logs` VALUES ('116169', '1', '用户登录', '1', '2018-11-28 10:04:15');
INSERT INTO `base_logs` VALUES ('116170', '1', '用户登录', '1', '2018-11-28 10:04:21');
INSERT INTO `base_logs` VALUES ('116171', '1', '用户登录', '1', '2018-11-28 10:06:07');
INSERT INTO `base_logs` VALUES ('116172', '5', '分类查询', '1', '2018-11-28 10:06:08');
INSERT INTO `base_logs` VALUES ('116173', '5', '分类查询', '1', '2018-11-28 10:06:13');
INSERT INTO `base_logs` VALUES ('116174', '7', '富文本图片上传', '1', '2018-11-28 10:06:22');
INSERT INTO `base_logs` VALUES ('116175', '3', '修改了党员管理1条数据', '1', '2018-11-28 10:06:30');
INSERT INTO `base_logs` VALUES ('116176', '1', '用户登录', '1', '2018-11-28 10:27:20');
INSERT INTO `base_logs` VALUES ('116177', '5', '分类查询', '1', '2018-11-28 10:43:11');
INSERT INTO `base_logs` VALUES ('116178', '5', '分类查询', '1', '2018-11-28 11:08:36');
INSERT INTO `base_logs` VALUES ('116179', '5', '分类查询', '1', '2018-11-28 11:11:59');
INSERT INTO `base_logs` VALUES ('116180', '5', '分类查询', '1', '2018-11-28 11:46:34');
INSERT INTO `base_logs` VALUES ('116181', '5', '分类查询', '1', '2018-11-28 11:51:38');
INSERT INTO `base_logs` VALUES ('116182', '5', '分类查询', '1', '2018-11-28 11:51:40');
INSERT INTO `base_logs` VALUES ('116183', '1', '用户登录', '1', '2018-11-28 13:28:00');
INSERT INTO `base_logs` VALUES ('116184', '5', '分类查询', '1', '2018-11-28 13:28:10');
INSERT INTO `base_logs` VALUES ('116185', '5', '分类查询', '1', '2018-11-28 13:28:14');
INSERT INTO `base_logs` VALUES ('116186', '5', '分类查询', '1', '2018-11-28 13:28:14');
INSERT INTO `base_logs` VALUES ('116187', '5', '分类查询', '1', '2018-11-28 13:28:25');
INSERT INTO `base_logs` VALUES ('116188', '5', '分类查询', '1', '2018-11-28 13:30:32');
INSERT INTO `base_logs` VALUES ('116189', '1', '用户登录', '1', '2018-11-28 13:37:17');
INSERT INTO `base_logs` VALUES ('116190', '5', '分类查询', '1', '2018-11-28 13:37:23');
INSERT INTO `base_logs` VALUES ('116191', '5', '资源库查看', '1', '2018-11-28 13:37:27');
INSERT INTO `base_logs` VALUES ('116192', '5', '分类查询', '1', '2018-11-28 13:37:29');
INSERT INTO `base_logs` VALUES ('116193', '5', '分类查询', '1', '2018-11-28 13:38:13');
INSERT INTO `base_logs` VALUES ('116194', '5', '分类查询', '1', '2018-11-28 13:38:14');
INSERT INTO `base_logs` VALUES ('116195', '5', '分类查询', '1', '2018-11-28 13:42:33');
INSERT INTO `base_logs` VALUES ('116196', '5', '分类查询', '1', '2018-11-28 13:43:17');
INSERT INTO `base_logs` VALUES ('116197', '3', '修改了党员管理1条数据', '1', '2018-11-28 13:43:23');
INSERT INTO `base_logs` VALUES ('116198', '5', '分类查询', '1', '2018-11-28 13:44:53');
INSERT INTO `base_logs` VALUES ('116199', '1', '用户登录', '1', '2018-11-28 14:36:57');
INSERT INTO `base_logs` VALUES ('116200', '5', '分类查询', '1', '2018-11-28 14:36:58');
INSERT INTO `base_logs` VALUES ('116201', '5', '分类查询', '1', '2018-11-28 14:36:59');
INSERT INTO `base_logs` VALUES ('116202', '5', '分类查询', '1', '2018-11-28 14:39:32');
INSERT INTO `base_logs` VALUES ('116203', '5', '分类查询', '1', '2018-11-28 14:40:10');
INSERT INTO `base_logs` VALUES ('116204', '5', '分类查询', '1', '2018-11-28 14:40:36');
INSERT INTO `base_logs` VALUES ('116205', '3', '修改了党员管理1条数据', '1', '2018-11-28 14:41:33');
INSERT INTO `base_logs` VALUES ('116206', '5', '分类查询', '1', '2018-11-28 14:41:37');
INSERT INTO `base_logs` VALUES ('116207', '3', '修改了党员管理1条数据', '1', '2018-11-28 14:41:50');
INSERT INTO `base_logs` VALUES ('116208', '5', '分类查询', '1', '2018-11-28 14:44:56');
INSERT INTO `base_logs` VALUES ('116209', '5', '分类查询', '1', '2018-11-28 14:44:58');
INSERT INTO `base_logs` VALUES ('116210', '3', '修改了党员管理1条数据', '1', '2018-11-28 14:45:57');
INSERT INTO `base_logs` VALUES ('116211', '5', '分类查询', '1', '2018-11-28 14:46:05');
INSERT INTO `base_logs` VALUES ('116212', '1', '用户登录', '1', '2018-11-28 15:44:07');
INSERT INTO `base_logs` VALUES ('116213', '5', '分类查询', '1', '2018-11-28 15:44:17');
INSERT INTO `base_logs` VALUES ('116214', '5', '分类查询', '1', '2018-11-28 15:44:20');
INSERT INTO `base_logs` VALUES ('116215', '5', '分类查询', '1', '2018-11-28 15:44:59');
INSERT INTO `base_logs` VALUES ('116216', '3', '修改了党员管理1条数据', '1', '2018-11-28 15:45:12');
INSERT INTO `base_logs` VALUES ('116217', '5', '分类查询', '1', '2018-11-28 15:45:54');
INSERT INTO `base_logs` VALUES ('116218', '5', '分类查询', '1', '2018-11-28 15:47:54');
INSERT INTO `base_logs` VALUES ('116219', '5', '分类查询', '1', '2018-11-28 15:47:56');
INSERT INTO `base_logs` VALUES ('116220', '3', '修改了党员管理1条数据', '1', '2018-11-28 15:48:14');
INSERT INTO `base_logs` VALUES ('116221', '1', '用户登录', '1', '2018-11-28 15:52:32');
INSERT INTO `base_logs` VALUES ('116222', '5', '分类查询', '1', '2018-11-28 15:52:34');
INSERT INTO `base_logs` VALUES ('116223', '5', '分类查询', '1', '2018-11-28 15:52:36');
INSERT INTO `base_logs` VALUES ('116224', '3', '修改了党员管理1条数据', '1', '2018-11-28 15:53:31');
INSERT INTO `base_logs` VALUES ('116225', '5', '分类查询', '1', '2018-11-28 15:53:45');
INSERT INTO `base_logs` VALUES ('116226', '3', '修改了党员管理1条数据', '1', '2018-11-28 15:53:53');
INSERT INTO `base_logs` VALUES ('116227', '5', '分类查询', '1', '2018-11-28 15:54:24');
INSERT INTO `base_logs` VALUES ('116228', '3', '修改了党员管理1条数据', '1', '2018-11-28 16:00:15');
INSERT INTO `base_logs` VALUES ('116229', '1', '用户登录', '1', '2018-11-28 16:05:47');
INSERT INTO `base_logs` VALUES ('116230', '5', '分类查询', '1', '2018-11-28 16:05:51');
INSERT INTO `base_logs` VALUES ('116231', '5', '分类查询', '1', '2018-11-28 16:05:53');
INSERT INTO `base_logs` VALUES ('116232', '3', '修改了党员管理1条数据', '1', '2018-11-28 16:07:31');
INSERT INTO `base_logs` VALUES ('116233', '5', '分类查询', '1', '2018-11-28 16:12:40');
INSERT INTO `base_logs` VALUES ('116234', '5', '分类查询', '1', '2018-11-28 16:16:01');
INSERT INTO `base_logs` VALUES ('116235', '1', '用户登录', '1', '2018-11-28 16:46:32');
INSERT INTO `base_logs` VALUES ('116236', '5', '分类查询', '1', '2018-11-28 16:46:34');
INSERT INTO `base_logs` VALUES ('116237', '5', '分类查询', '1', '2018-11-28 16:46:37');
INSERT INTO `base_logs` VALUES ('116238', '3', '修改了党员管理1条数据', '1', '2018-11-28 16:47:06');
INSERT INTO `base_logs` VALUES ('116239', '5', '分类查询', '1', '2018-11-28 16:47:11');
INSERT INTO `base_logs` VALUES ('116240', '5', '分类查询', '1', '2018-11-28 16:50:25');
INSERT INTO `base_logs` VALUES ('116241', '5', '分类查询', '1', '2018-11-28 16:51:56');
INSERT INTO `base_logs` VALUES ('116242', '5', '分类查询', '1', '2018-11-28 16:51:59');
INSERT INTO `base_logs` VALUES ('116243', '5', '分类查询', '1', '2018-11-28 17:04:24');
INSERT INTO `base_logs` VALUES ('116244', '5', '分类查询', '1', '2018-11-28 17:16:30');
INSERT INTO `base_logs` VALUES ('116245', '5', '分类查询', '1', '2018-11-28 17:16:32');
INSERT INTO `base_logs` VALUES ('116246', '1', '用户登录', '1', '2018-11-28 17:42:00');
INSERT INTO `base_logs` VALUES ('116247', '5', '分类查询', '1', '2018-11-28 17:42:02');
INSERT INTO `base_logs` VALUES ('116248', '5', '分类查询', '1', '2018-11-28 17:42:04');
INSERT INTO `base_logs` VALUES ('116249', '3', '修改了党员管理1条数据', '1', '2018-11-28 17:42:09');
INSERT INTO `base_logs` VALUES ('116250', '5', '分类查询', '1', '2018-11-28 17:42:13');
INSERT INTO `base_logs` VALUES ('116251', '5', '分类查询', '1', '2018-11-28 17:42:22');
INSERT INTO `base_logs` VALUES ('116252', '2', '新增了党员管理1条数据', '1', '2018-11-28 17:42:52');
INSERT INTO `base_logs` VALUES ('116253', '1', '用户登录', '1', '2018-11-29 09:12:41');
INSERT INTO `base_logs` VALUES ('116254', '5', '查询系统日志', '1', '2018-11-29 09:12:50');
INSERT INTO `base_logs` VALUES ('116255', '5', '查询系统日志', '1', '2018-11-29 09:13:01');
INSERT INTO `base_logs` VALUES ('116256', '5', '查询角色', '1', '2018-11-29 09:13:06');
INSERT INTO `base_logs` VALUES ('116257', '5', '查询管理员', '1', '2018-11-29 09:13:07');
INSERT INTO `base_logs` VALUES ('116258', '5', '查询系统日志', '1', '2018-11-29 09:13:08');
INSERT INTO `base_logs` VALUES ('116259', '5', '资源库查看', '1', '2018-11-29 09:13:12');
INSERT INTO `base_logs` VALUES ('116260', '5', '资源库查看', '1', '2018-11-29 09:13:59');
INSERT INTO `base_logs` VALUES ('116261', '5', '分类查询', '1', '2018-11-29 09:14:01');
INSERT INTO `base_logs` VALUES ('116262', '5', '分类查询', '1', '2018-11-29 09:14:01');
INSERT INTO `base_logs` VALUES ('116263', '5', '分类查询', '1', '2018-11-29 09:14:07');
INSERT INTO `base_logs` VALUES ('116264', '5', '分类查询', '1', '2018-11-29 09:14:17');
INSERT INTO `base_logs` VALUES ('116265', '3', '修改了党员管理1条数据', '1', '2018-11-29 09:14:27');
INSERT INTO `base_logs` VALUES ('116266', '5', '资源库查看', '1', '2018-11-29 09:18:53');
INSERT INTO `base_logs` VALUES ('116267', '5', '资源库查看', '1', '2018-11-29 09:18:59');
INSERT INTO `base_logs` VALUES ('116268', '5', '查询角色', '1', '2018-11-29 09:19:00');
INSERT INTO `base_logs` VALUES ('116269', '5', '查询管理员', '1', '2018-11-29 09:19:01');
INSERT INTO `base_logs` VALUES ('116270', '5', '查询系统日志', '1', '2018-11-29 09:19:09');
INSERT INTO `base_logs` VALUES ('116271', '5', '查询管理员', '1', '2018-11-29 09:19:12');
INSERT INTO `base_logs` VALUES ('116272', '5', '查询系统日志', '1', '2018-11-29 09:19:14');
INSERT INTO `base_logs` VALUES ('116273', '5', '查询管理员', '1', '2018-11-29 09:19:16');
INSERT INTO `base_logs` VALUES ('116274', '5', '查询系统日志', '1', '2018-11-29 09:22:47');
INSERT INTO `base_logs` VALUES ('116275', '5', '查询管理员', '1', '2018-11-29 09:24:43');
INSERT INTO `base_logs` VALUES ('116276', '5', '查询系统日志', '1', '2018-11-29 09:24:50');
INSERT INTO `base_logs` VALUES ('116277', '5', '查询管理员', '1', '2018-11-29 09:24:53');
INSERT INTO `base_logs` VALUES ('116278', '5', '查询管理员', '1', '2018-11-29 09:25:00');
INSERT INTO `base_logs` VALUES ('116279', '5', '查询系统日志', '1', '2018-11-29 09:25:49');
INSERT INTO `base_logs` VALUES ('116280', '5', '查询系统日志', '1', '2018-11-29 09:26:13');
INSERT INTO `base_logs` VALUES ('116281', '5', '查询系统日志', '1', '2018-11-29 09:30:24');
INSERT INTO `base_logs` VALUES ('116282', '1', '用户登录', '1', '2018-11-29 09:30:30');
INSERT INTO `base_logs` VALUES ('116283', '5', '查询系统日志', '1', '2018-11-29 09:30:38');
INSERT INTO `base_logs` VALUES ('116284', '5', '查询管理员', '1', '2018-11-29 09:32:02');
INSERT INTO `base_logs` VALUES ('116285', '1', '用户登录', '1', '2018-11-29 09:32:25');
INSERT INTO `base_logs` VALUES ('116286', '5', '查询系统日志', '1', '2018-11-29 09:32:29');
INSERT INTO `base_logs` VALUES ('116287', '5', '查询系统日志', '1', '2018-11-29 09:32:34');
INSERT INTO `base_logs` VALUES ('116288', '5', '查询系统日志', '1', '2018-11-29 09:35:20');
INSERT INTO `base_logs` VALUES ('116289', '5', '查询管理员', '1', '2018-11-29 09:35:22');
INSERT INTO `base_logs` VALUES ('116290', '5', '查询系统日志', '1', '2018-11-29 09:42:38');
INSERT INTO `base_logs` VALUES ('116291', '5', '查询管理员', '1', '2018-11-29 09:43:15');
INSERT INTO `base_logs` VALUES ('116292', '5', '查询角色', '1', '2018-11-29 09:43:22');
INSERT INTO `base_logs` VALUES ('116293', '5', '查询管理员', '1', '2018-11-29 09:44:27');
INSERT INTO `base_logs` VALUES ('116294', '5', '查询管理员', '1', '2018-11-29 09:46:54');
INSERT INTO `base_logs` VALUES ('116295', '1', '用户登录', '1', '2018-11-29 09:47:02');
INSERT INTO `base_logs` VALUES ('116296', '5', '查询系统日志', '1', '2018-11-29 09:47:04');
INSERT INTO `base_logs` VALUES ('116297', '5', '查询角色', '1', '2018-11-29 09:47:06');
INSERT INTO `base_logs` VALUES ('116298', '5', '查询管理员', '1', '2018-11-29 09:47:06');
INSERT INTO `base_logs` VALUES ('116299', '5', '查询角色', '1', '2018-11-29 09:47:14');
INSERT INTO `base_logs` VALUES ('116300', '5', '查询管理员', '1', '2018-11-29 09:47:14');
INSERT INTO `base_logs` VALUES ('116301', '5', '查询系统日志', '1', '2018-11-29 09:48:14');
INSERT INTO `base_logs` VALUES ('116302', '5', '查询角色', '1', '2018-11-29 09:48:15');
INSERT INTO `base_logs` VALUES ('116303', '5', '查询管理员', '1', '2018-11-29 09:48:15');
INSERT INTO `base_logs` VALUES ('116304', '5', '查询管理员', '1', '2018-11-29 09:48:22');
INSERT INTO `base_logs` VALUES ('116305', '5', '查询管理员', '1', '2018-11-29 09:48:23');
INSERT INTO `base_logs` VALUES ('116306', '5', '查询管理员', '1', '2018-11-29 09:48:35');
INSERT INTO `base_logs` VALUES ('116307', '5', '查询系统日志', '1', '2018-11-29 09:51:28');
INSERT INTO `base_logs` VALUES ('116308', '5', '查询角色', '1', '2018-11-29 09:51:28');
INSERT INTO `base_logs` VALUES ('116309', '5', '查询管理员', '1', '2018-11-29 09:51:28');
INSERT INTO `base_logs` VALUES ('116310', '5', '查询系统日志', '1', '2018-11-29 09:51:58');
INSERT INTO `base_logs` VALUES ('116311', '5', '查询角色', '1', '2018-11-29 09:51:59');
INSERT INTO `base_logs` VALUES ('116312', '5', '查询管理员', '1', '2018-11-29 09:51:59');
INSERT INTO `base_logs` VALUES ('116313', '5', '查询管理员', '1', '2018-11-29 09:52:02');
INSERT INTO `base_logs` VALUES ('116314', '5', '查询管理员', '1', '2018-11-29 09:52:03');
INSERT INTO `base_logs` VALUES ('116315', '5', '查询管理员', '1', '2018-11-29 09:52:03');
INSERT INTO `base_logs` VALUES ('116316', '5', '查询管理员', '1', '2018-11-29 09:52:08');
INSERT INTO `base_logs` VALUES ('116317', '5', '查询系统日志', '1', '2018-11-29 09:53:07');
INSERT INTO `base_logs` VALUES ('116318', '5', '查询角色', '1', '2018-11-29 09:53:08');
INSERT INTO `base_logs` VALUES ('116319', '5', '查询管理员', '1', '2018-11-29 09:53:08');
INSERT INTO `base_logs` VALUES ('116320', '5', '查询管理员', '1', '2018-11-29 09:53:11');
INSERT INTO `base_logs` VALUES ('116321', '5', '查询管理员', '1', '2018-11-29 09:53:11');
INSERT INTO `base_logs` VALUES ('116322', '5', '查询管理员', '1', '2018-11-29 09:53:12');
INSERT INTO `base_logs` VALUES ('116323', '1', '用户登录', '1', '2018-11-29 09:53:22');
INSERT INTO `base_logs` VALUES ('116324', '5', '查询角色', '1', '2018-11-29 09:53:24');
INSERT INTO `base_logs` VALUES ('116325', '5', '查询管理员', '1', '2018-11-29 09:53:24');
INSERT INTO `base_logs` VALUES ('116326', '5', '查询管理员', '1', '2018-11-29 09:53:27');
INSERT INTO `base_logs` VALUES ('116327', '5', '查询管理员', '1', '2018-11-29 09:53:28');
INSERT INTO `base_logs` VALUES ('116328', '5', '查询管理员', '1', '2018-11-29 09:53:28');
INSERT INTO `base_logs` VALUES ('116329', '5', '查询管理员', '1', '2018-11-29 09:53:32');
INSERT INTO `base_logs` VALUES ('116330', '1', '用户登录', '1', '2018-11-29 09:57:43');
INSERT INTO `base_logs` VALUES ('116331', '5', '查询系统日志', '1', '2018-11-29 09:57:45');
INSERT INTO `base_logs` VALUES ('116332', '5', '查询角色', '1', '2018-11-29 09:57:46');
INSERT INTO `base_logs` VALUES ('116333', '5', '查询管理员', '1', '2018-11-29 09:57:46');
INSERT INTO `base_logs` VALUES ('116334', '5', '查询管理员', '1', '2018-11-29 09:57:48');
INSERT INTO `base_logs` VALUES ('116335', '5', '查询管理员', '1', '2018-11-29 09:57:49');
INSERT INTO `base_logs` VALUES ('116336', '5', '查询管理员', '1', '2018-11-29 09:57:55');
INSERT INTO `base_logs` VALUES ('116337', '5', '查询角色', '1', '2018-11-29 10:19:18');
INSERT INTO `base_logs` VALUES ('116338', '5', '查询角色', '1', '2018-11-29 10:19:28');
INSERT INTO `base_logs` VALUES ('116339', '5', '查询角色', '1', '2018-11-29 10:28:53');
INSERT INTO `base_logs` VALUES ('116340', '5', '查询角色', '1', '2018-11-29 10:30:16');
INSERT INTO `base_logs` VALUES ('116341', '5', '查询角色', '1', '2018-11-29 10:53:51');
INSERT INTO `base_logs` VALUES ('116342', '5', '查询角色', '1', '2018-11-29 10:59:48');
INSERT INTO `base_logs` VALUES ('116343', '5', '查询角色', '1', '2018-11-29 11:07:55');
INSERT INTO `base_logs` VALUES ('116344', '5', '查询角色', '1', '2018-11-29 11:11:54');
INSERT INTO `base_logs` VALUES ('116345', '5', '查询管理员', '1', '2018-11-29 11:13:57');
INSERT INTO `base_logs` VALUES ('116346', '5', '查询角色', '1', '2018-11-29 11:13:57');
INSERT INTO `base_logs` VALUES ('116347', '5', '查询角色', '1', '2018-11-29 11:14:54');
INSERT INTO `base_logs` VALUES ('116348', '5', '查询管理员', '1', '2018-11-29 11:14:54');
INSERT INTO `base_logs` VALUES ('116349', '1', '用户登录', '1', '2018-11-29 11:15:01');
INSERT INTO `base_logs` VALUES ('116350', '5', '查询角色', '1', '2018-11-29 11:15:03');
INSERT INTO `base_logs` VALUES ('116351', '5', '查询管理员', '1', '2018-11-29 11:15:03');
INSERT INTO `base_logs` VALUES ('116352', '5', '查询管理员', '1', '2018-11-29 11:15:07');
INSERT INTO `base_logs` VALUES ('116353', '5', '查询管理员', '1', '2018-11-29 11:15:10');
INSERT INTO `base_logs` VALUES ('116354', '5', '查询管理员', '1', '2018-11-29 11:15:20');
INSERT INTO `base_logs` VALUES ('116355', '5', '查询管理员', '1', '2018-11-29 11:15:32');
INSERT INTO `base_logs` VALUES ('116356', '5', '查询管理员', '1', '2018-11-29 11:15:33');
INSERT INTO `base_logs` VALUES ('116357', '5', '查询管理员', '1', '2018-11-29 11:15:37');
INSERT INTO `base_logs` VALUES ('116358', '5', '分类查询', '1', '2018-11-29 11:15:48');
INSERT INTO `base_logs` VALUES ('116359', '5', '分类查询', '1', '2018-11-29 11:15:50');
INSERT INTO `base_logs` VALUES ('116360', '3', '修改了党员管理1条数据', '1', '2018-11-29 11:17:15');
INSERT INTO `base_logs` VALUES ('116361', '5', '分类查询', '1', '2018-11-29 11:17:18');
INSERT INTO `base_logs` VALUES ('116362', '3', '修改了党员管理1条数据', '1', '2018-11-29 11:18:50');
INSERT INTO `base_logs` VALUES ('116363', '5', '分类查询', '1', '2018-11-29 11:18:54');
INSERT INTO `base_logs` VALUES ('116364', '3', '修改了党员管理1条数据', '1', '2018-11-29 11:19:28');
INSERT INTO `base_logs` VALUES ('116365', '5', '查询系统日志', '1', '2018-11-29 11:21:41');
INSERT INTO `base_logs` VALUES ('116366', '5', '分类查询', '1', '2018-11-29 11:21:44');
INSERT INTO `base_logs` VALUES ('116367', '5', '分类查询', '1', '2018-11-29 11:21:46');
INSERT INTO `base_logs` VALUES ('116368', '1', '用户登录', '1', '2018-11-29 11:22:04');
INSERT INTO `base_logs` VALUES ('116369', '5', '分类查询', '1', '2018-11-29 11:22:05');
INSERT INTO `base_logs` VALUES ('116370', '5', '分类查询', '1', '2018-11-29 11:22:10');
INSERT INTO `base_logs` VALUES ('116371', '1', '用户登录', '1', '2018-11-29 11:23:19');
INSERT INTO `base_logs` VALUES ('116372', '5', '分类查询', '1', '2018-11-29 11:23:21');
INSERT INTO `base_logs` VALUES ('116373', '5', '分类查询', '1', '2018-11-29 11:23:22');
INSERT INTO `base_logs` VALUES ('116374', '5', '分类查询', '1', '2018-11-29 11:24:07');
INSERT INTO `base_logs` VALUES ('116375', '5', '分类查询', '1', '2018-11-29 11:24:08');
INSERT INTO `base_logs` VALUES ('116376', '1', '用户登录', '1', '2018-11-29 11:24:16');
INSERT INTO `base_logs` VALUES ('116377', '5', '分类查询', '1', '2018-11-29 11:24:18');
INSERT INTO `base_logs` VALUES ('116378', '5', '分类查询', '1', '2018-11-29 11:24:19');
INSERT INTO `base_logs` VALUES ('116379', '1', '用户登录', '1', '2018-11-29 11:24:29');
INSERT INTO `base_logs` VALUES ('116380', '5', '分类查询', '1', '2018-11-29 11:24:31');
INSERT INTO `base_logs` VALUES ('116381', '5', '分类查询', '1', '2018-11-29 11:24:31');
INSERT INTO `base_logs` VALUES ('116382', '1', '用户登录', '1', '2018-11-29 11:25:22');
INSERT INTO `base_logs` VALUES ('116383', '5', '分类查询', '1', '2018-11-29 11:25:24');
INSERT INTO `base_logs` VALUES ('116384', '5', '分类查询', '1', '2018-11-29 11:25:26');
INSERT INTO `base_logs` VALUES ('116385', '5', '分类查询', '1', '2018-11-29 11:26:13');
INSERT INTO `base_logs` VALUES ('116386', '5', '分类查询', '1', '2018-11-29 11:26:14');
INSERT INTO `base_logs` VALUES ('116387', '1', '用户登录', '1', '2018-11-29 11:26:38');
INSERT INTO `base_logs` VALUES ('116388', '5', '分类查询', '1', '2018-11-29 11:26:40');
INSERT INTO `base_logs` VALUES ('116389', '5', '分类查询', '1', '2018-11-29 11:26:41');
INSERT INTO `base_logs` VALUES ('116390', '1', '用户登录', '1', '2018-11-29 15:18:36');
INSERT INTO `base_logs` VALUES ('116391', '1', '用户登录', '1', '2018-11-29 15:25:04');
INSERT INTO `base_logs` VALUES ('116392', '1', '用户登录', '1', '2018-11-29 15:35:24');
INSERT INTO `base_logs` VALUES ('116393', '1', '用户登录', '1', '2018-11-29 15:43:48');
INSERT INTO `base_logs` VALUES ('116394', '1', '用户登录', '1', '2018-11-29 16:07:20');
INSERT INTO `base_logs` VALUES ('116395', '1', '用户登录', '1', '2018-11-29 16:09:23');
INSERT INTO `base_logs` VALUES ('116396', '1', '用户退出', '1', '2018-11-29 16:39:44');
INSERT INTO `base_logs` VALUES ('116397', '1', '用户登录', '1', '2018-11-29 16:52:28');
INSERT INTO `base_logs` VALUES ('116398', '5', '查询菜单', '1', '2018-11-29 16:52:30');
INSERT INTO `base_logs` VALUES ('116399', '5', '查询角色', '1', '2018-11-29 16:52:31');
INSERT INTO `base_logs` VALUES ('116400', '5', '查询角色', '1', '2018-11-29 16:52:31');
INSERT INTO `base_logs` VALUES ('116401', '5', '查询管理员', '1', '2018-11-29 16:52:31');
INSERT INTO `base_logs` VALUES ('116402', '5', '查询系统日志', '1', '2018-11-29 16:52:32');
INSERT INTO `base_logs` VALUES ('116403', '5', '资源库查看', '1', '2018-11-29 16:52:34');
INSERT INTO `base_logs` VALUES ('116404', '1', '用户登录', '1', '2018-11-30 09:24:55');
INSERT INTO `base_logs` VALUES ('116405', '5', '查询菜单', '1', '2018-11-30 09:24:57');
INSERT INTO `base_logs` VALUES ('116406', '5', '查询角色', '1', '2018-11-30 09:25:01');
INSERT INTO `base_logs` VALUES ('116407', '5', '查询角色', '1', '2018-11-30 09:25:02');
INSERT INTO `base_logs` VALUES ('116408', '5', '查询管理员', '1', '2018-11-30 09:25:02');
INSERT INTO `base_logs` VALUES ('116409', '5', '查询系统日志', '1', '2018-11-30 09:25:03');
INSERT INTO `base_logs` VALUES ('116410', '5', '查询角色', '1', '2018-11-30 09:25:09');
INSERT INTO `base_logs` VALUES ('116411', '5', '查询管理员', '1', '2018-11-30 09:25:09');
INSERT INTO `base_logs` VALUES ('116412', '5', '查询角色', '1', '2018-11-30 09:25:19');
INSERT INTO `base_logs` VALUES ('116413', '5', '查询管理员', '1', '2018-11-30 09:25:19');
INSERT INTO `base_logs` VALUES ('116414', '5', '查询角色', '1', '2018-11-30 09:25:19');
INSERT INTO `base_logs` VALUES ('116415', '5', '查询菜单', '1', '2018-11-30 09:25:21');
INSERT INTO `base_logs` VALUES ('116416', '5', '查询系统日志', '1', '2018-11-30 09:25:22');
INSERT INTO `base_logs` VALUES ('116417', '5', '查询角色', '1', '2018-11-30 09:25:23');
INSERT INTO `base_logs` VALUES ('116418', '5', '查询管理员', '1', '2018-11-30 09:25:23');
INSERT INTO `base_logs` VALUES ('116419', '5', '查询角色', '1', '2018-11-30 09:25:24');
INSERT INTO `base_logs` VALUES ('116420', '5', '资源库查看', '1', '2018-11-30 09:25:26');
INSERT INTO `base_logs` VALUES ('116421', '5', '资源库查看', '1', '2018-11-30 09:25:41');
INSERT INTO `base_logs` VALUES ('116422', '5', '分类查询', '1', '2018-11-30 09:25:46');
INSERT INTO `base_logs` VALUES ('116423', '5', '分类查询', '1', '2018-11-30 09:25:57');
INSERT INTO `base_logs` VALUES ('116424', '5', '分类查询', '1', '2018-11-30 09:27:58');
INSERT INTO `base_logs` VALUES ('116425', '5', '查询角色', '1', '2018-11-30 09:28:50');
INSERT INTO `base_logs` VALUES ('116426', '5', '查询角色', '1', '2018-11-30 09:28:53');
INSERT INTO `base_logs` VALUES ('116427', '5', '查询角色菜单', '1', '2018-11-30 09:28:55');
INSERT INTO `base_logs` VALUES ('116428', '5', '查询角色菜单', '1', '2018-11-30 09:29:41');
INSERT INTO `base_logs` VALUES ('116429', '5', '查询角色', '1', '2018-11-30 09:29:55');
INSERT INTO `base_logs` VALUES ('116430', '5', '查询管理员', '1', '2018-11-30 09:29:55');
INSERT INTO `base_logs` VALUES ('116431', '1', '用户退出', '1', '2018-11-30 09:30:02');
INSERT INTO `base_logs` VALUES ('116432', '1', '用户登录', '2', '2018-11-30 09:30:10');
INSERT INTO `base_logs` VALUES ('116433', '1', '用户登录', '1', '2018-11-30 09:30:34');
INSERT INTO `base_logs` VALUES ('116434', '5', '分类查询', '1', '2018-11-30 09:30:38');
INSERT INTO `base_logs` VALUES ('116435', '5', '分类查询', '1', '2018-11-30 09:30:42');
INSERT INTO `base_logs` VALUES ('116436', '5', '分类查询', '1', '2018-11-30 09:30:51');
INSERT INTO `base_logs` VALUES ('116437', '1', '用户退出', '1', '2018-11-30 09:31:02');
INSERT INTO `base_logs` VALUES ('116438', '1', '用户登录', '1', '2018-11-30 09:31:23');
INSERT INTO `base_logs` VALUES ('116439', '1', '用户退出', '1', '2018-11-30 09:31:28');
INSERT INTO `base_logs` VALUES ('116440', '1', '用户登录', '2', '2018-11-30 09:31:37');
INSERT INTO `base_logs` VALUES ('116441', '5', '分类查询', '2', '2018-11-30 09:31:51');
INSERT INTO `base_logs` VALUES ('116442', '5', '分类查询', '2', '2018-11-30 09:35:20');
INSERT INTO `base_logs` VALUES ('116443', '1', '用户登录', '2', '2018-11-30 09:42:57');
INSERT INTO `base_logs` VALUES ('116444', '1', '用户登录', '1', '2018-11-30 09:43:03');
INSERT INTO `base_logs` VALUES ('116445', '1', '用户登录', '1', '2018-11-30 10:20:42');
INSERT INTO `base_logs` VALUES ('116446', '1', '用户登录', '1', '2018-11-30 10:22:19');
INSERT INTO `base_logs` VALUES ('116447', '1', '用户登录', '1', '2018-11-30 10:22:20');
INSERT INTO `base_logs` VALUES ('116448', '1', '用户登录', '1', '2018-11-30 10:22:21');
INSERT INTO `base_logs` VALUES ('116449', '1', '用户登录', '1', '2018-11-30 10:22:22');
INSERT INTO `base_logs` VALUES ('116450', '1', '用户登录', '1', '2018-11-30 10:22:23');
INSERT INTO `base_logs` VALUES ('116451', '1', '用户登录', '1', '2018-11-30 10:22:28');
INSERT INTO `base_logs` VALUES ('116452', '1', '用户登录', '1', '2018-11-30 10:27:49');
INSERT INTO `base_logs` VALUES ('116453', '1', '用户登录', '1', '2018-11-30 10:35:28');
INSERT INTO `base_logs` VALUES ('116454', '1', '用户退出', '1', '2018-11-30 10:48:19');
INSERT INTO `base_logs` VALUES ('116455', '1', '用户登录', '1', '2018-11-30 10:48:38');
INSERT INTO `base_logs` VALUES ('116456', '1', '用户登录', '1', '2018-11-30 10:52:11');
INSERT INTO `base_logs` VALUES ('116457', '1', '用户登录', '1', '2018-11-30 10:52:13');
INSERT INTO `base_logs` VALUES ('116458', '1', '用户登录', '1', '2018-11-30 10:52:14');
INSERT INTO `base_logs` VALUES ('116459', '1', '用户登录', '1', '2018-11-30 10:52:18');
INSERT INTO `base_logs` VALUES ('116460', '1', '用户登录', '1', '2018-11-30 11:04:36');
INSERT INTO `base_logs` VALUES ('116461', '1', '用户登录', '1', '2018-11-30 11:04:37');
INSERT INTO `base_logs` VALUES ('116462', '1', '用户登录', '1', '2018-11-30 11:04:41');
INSERT INTO `base_logs` VALUES ('116463', '1', '用户登录', '1', '2018-11-30 11:07:00');
INSERT INTO `base_logs` VALUES ('116464', '1', '用户登录', '1', '2018-11-30 11:10:47');
INSERT INTO `base_logs` VALUES ('116465', '1', '用户登录', '1', '2018-11-30 11:23:59');
INSERT INTO `base_logs` VALUES ('116466', '1', '用户登录', '1', '2018-11-30 11:24:01');
INSERT INTO `base_logs` VALUES ('116467', '1', '用户登录', '1', '2018-11-30 11:24:17');
INSERT INTO `base_logs` VALUES ('116468', '1', '用户登录', '1', '2018-11-30 11:24:24');
INSERT INTO `base_logs` VALUES ('116469', '1', '用户登录', '1', '2018-11-30 11:26:26');
INSERT INTO `base_logs` VALUES ('116470', '5', '查询菜单', '1', '2018-11-30 11:26:32');
INSERT INTO `base_logs` VALUES ('116471', '5', '查询角色', '1', '2018-11-30 11:26:32');
INSERT INTO `base_logs` VALUES ('116472', '5', '查询角色', '1', '2018-11-30 11:26:33');
INSERT INTO `base_logs` VALUES ('116473', '5', '查询管理员', '1', '2018-11-30 11:26:33');
INSERT INTO `base_logs` VALUES ('116474', '5', '查询系统日志', '1', '2018-11-30 11:26:34');
INSERT INTO `base_logs` VALUES ('116475', '5', '资源库查看', '1', '2018-11-30 11:26:35');
INSERT INTO `base_logs` VALUES ('116476', '5', '分类查询', '1', '2018-11-30 11:26:37');
INSERT INTO `base_logs` VALUES ('116477', '1', '用户退出', '1', '2018-11-30 11:26:41');
INSERT INTO `base_logs` VALUES ('116478', '1', '用户登录', '2', '2018-11-30 11:26:45');
INSERT INTO `base_logs` VALUES ('116479', '5', '分类查询', '2', '2018-11-30 11:27:08');
INSERT INTO `base_logs` VALUES ('116480', '5', '分类查询', '2', '2018-11-30 11:36:01');
INSERT INTO `base_logs` VALUES ('116481', '1', '用户登录', '2', '2018-11-30 11:36:18');
INSERT INTO `base_logs` VALUES ('116482', '5', '分类查询', '2', '2018-11-30 11:36:23');
INSERT INTO `base_logs` VALUES ('116483', '5', '分类查询', '2', '2018-11-30 11:38:58');
INSERT INTO `base_logs` VALUES ('116484', '1', '用户退出', '2', '2018-11-30 11:39:04');
INSERT INTO `base_logs` VALUES ('116485', '1', '用户登录', '1', '2018-11-30 11:39:15');
INSERT INTO `base_logs` VALUES ('116486', '1', '用户退出', '1', '2018-11-30 11:39:39');
INSERT INTO `base_logs` VALUES ('116487', '1', '用户登录', '2', '2018-11-30 11:39:46');
INSERT INTO `base_logs` VALUES ('116488', '5', '分类查询', '2', '2018-11-30 11:39:52');
INSERT INTO `base_logs` VALUES ('116489', '1', '用户登录', '1', '2018-11-30 13:12:36');
INSERT INTO `base_logs` VALUES ('116490', '1', '用户退出', '1', '2018-11-30 13:13:37');
INSERT INTO `base_logs` VALUES ('116491', '1', '用户登录', '2', '2018-11-30 13:14:18');
INSERT INTO `base_logs` VALUES ('116492', '5', '分类查询', '2', '2018-11-30 13:36:06');
INSERT INTO `base_logs` VALUES ('116493', '5', '分类查询', '2', '2018-11-30 13:41:26');
INSERT INTO `base_logs` VALUES ('116494', '5', '分类查询', '2', '2018-11-30 13:41:28');
INSERT INTO `base_logs` VALUES ('116495', '5', '分类查询', '2', '2018-11-30 13:41:34');
INSERT INTO `base_logs` VALUES ('116496', '5', '分类查询', '2', '2018-11-30 13:45:38');
INSERT INTO `base_logs` VALUES ('116497', '5', '分类查询', '2', '2018-11-30 13:45:45');
INSERT INTO `base_logs` VALUES ('116498', '5', '分类查询', '2', '2018-11-30 13:47:41');
INSERT INTO `base_logs` VALUES ('116499', '5', '分类查询', '2', '2018-11-30 13:49:00');
INSERT INTO `base_logs` VALUES ('116500', '5', '查询菜单', '2', '2018-11-30 13:54:18');
INSERT INTO `base_logs` VALUES ('116501', '5', '查询角色', '2', '2018-11-30 13:54:19');
INSERT INTO `base_logs` VALUES ('116502', '5', '查询角色', '2', '2018-11-30 13:54:19');
INSERT INTO `base_logs` VALUES ('116503', '5', '查询管理员', '2', '2018-11-30 13:54:19');
INSERT INTO `base_logs` VALUES ('116504', '5', '资源库查看', '2', '2018-11-30 13:54:21');
INSERT INTO `base_logs` VALUES ('116505', '1', '用户登录', '1', '2018-11-30 15:19:17');
INSERT INTO `base_logs` VALUES ('116506', '5', '资源库查看', '1', '2018-11-30 15:19:23');
INSERT INTO `base_logs` VALUES ('116507', '5', '查询角色', '1', '2018-11-30 15:19:24');
INSERT INTO `base_logs` VALUES ('116508', '5', '查询管理员', '1', '2018-11-30 15:19:24');
INSERT INTO `base_logs` VALUES ('116509', '5', '查询角色', '1', '2018-11-30 15:19:24');
INSERT INTO `base_logs` VALUES ('116510', '5', '查询菜单', '1', '2018-11-30 15:19:24');
INSERT INTO `base_logs` VALUES ('116511', '5', '分类查询', '1', '2018-11-30 15:19:31');
INSERT INTO `base_logs` VALUES ('116512', '5', '分类查询', '1', '2018-11-30 15:19:57');
INSERT INTO `base_logs` VALUES ('116513', '5', '查询菜单', '1', '2018-11-30 15:20:13');
INSERT INTO `base_logs` VALUES ('116514', '5', '查询角色', '1', '2018-11-30 15:20:14');
INSERT INTO `base_logs` VALUES ('116515', '5', '查询角色', '1', '2018-11-30 15:20:15');
INSERT INTO `base_logs` VALUES ('116516', '5', '查询管理员', '1', '2018-11-30 15:20:15');
INSERT INTO `base_logs` VALUES ('116517', '5', '查询系统日志', '1', '2018-11-30 15:20:16');
INSERT INTO `base_logs` VALUES ('116518', '5', '资源库查看', '1', '2018-11-30 15:20:20');
INSERT INTO `base_logs` VALUES ('116519', '5', '分类查询', '1', '2018-11-30 15:20:28');
INSERT INTO `base_logs` VALUES ('116520', '5', '资源库查看', '1', '2018-11-30 15:20:35');
INSERT INTO `base_logs` VALUES ('116521', '5', '查询菜单', '1', '2018-11-30 15:20:45');
INSERT INTO `base_logs` VALUES ('116522', '5', '查询角色', '1', '2018-11-30 15:20:46');
INSERT INTO `base_logs` VALUES ('116523', '5', '查询角色', '1', '2018-11-30 15:20:47');
INSERT INTO `base_logs` VALUES ('116524', '5', '查询管理员', '1', '2018-11-30 15:20:47');
INSERT INTO `base_logs` VALUES ('116525', '5', '查询系统日志', '1', '2018-11-30 15:20:51');
INSERT INTO `base_logs` VALUES ('116526', '5', '查询角色', '1', '2018-11-30 15:22:12');
INSERT INTO `base_logs` VALUES ('116527', '5', '查询角色菜单', '1', '2018-11-30 15:22:14');
INSERT INTO `base_logs` VALUES ('116528', '5', '查询角色', '1', '2018-11-30 15:22:32');
INSERT INTO `base_logs` VALUES ('116529', '5', '查询管理员', '1', '2018-11-30 15:22:32');
INSERT INTO `base_logs` VALUES ('116530', '5', '查询菜单', '1', '2018-11-30 15:22:32');
INSERT INTO `base_logs` VALUES ('116531', '5', '查询角色', '1', '2018-11-30 15:22:33');
INSERT INTO `base_logs` VALUES ('116532', '5', '查询角色菜单', '1', '2018-11-30 15:22:35');
INSERT INTO `base_logs` VALUES ('116533', '3', '配置角色菜单', '1', '2018-11-30 15:22:39');
INSERT INTO `base_logs` VALUES ('116534', '5', '查询角色', '1', '2018-11-30 15:22:43');
INSERT INTO `base_logs` VALUES ('116535', '5', '分类查询', '1', '2018-11-30 15:22:47');
INSERT INTO `base_logs` VALUES ('116536', '5', '分类查询', '1', '2018-11-30 15:22:49');
INSERT INTO `base_logs` VALUES ('116537', '5', '分类查询', '1', '2018-11-30 15:22:50');
INSERT INTO `base_logs` VALUES ('116538', '3', '更新分类', '1', '2018-11-30 15:23:05');
INSERT INTO `base_logs` VALUES ('116539', '5', '分类查询', '1', '2018-11-30 15:23:05');
INSERT INTO `base_logs` VALUES ('116540', '1', '用户登录', '1', '2018-12-03 06:01:55');
INSERT INTO `base_logs` VALUES ('116541', '1', '用户登录', '1', '2018-12-03 06:02:39');
INSERT INTO `base_logs` VALUES ('116542', '1', '用户登录', '1', '2018-12-03 06:05:58');
INSERT INTO `base_logs` VALUES ('116543', '1', '用户登录', '1', '2018-12-03 06:12:32');
INSERT INTO `base_logs` VALUES ('116544', '1', '用户登录', '1', '2018-12-03 07:30:22');
INSERT INTO `base_logs` VALUES ('116545', '1', '用户登录', '1', '2018-12-03 07:32:13');
INSERT INTO `base_logs` VALUES ('116546', '1', '用户登录', '1', '2018-12-03 07:41:58');
INSERT INTO `base_logs` VALUES ('116547', '1', '用户登录', '1', '2018-12-03 07:42:21');
INSERT INTO `base_logs` VALUES ('116548', '1', '用户登录', '1', '2018-12-03 07:43:05');
INSERT INTO `base_logs` VALUES ('116549', '1', '用户登录', '1', '2018-12-03 07:44:24');
INSERT INTO `base_logs` VALUES ('116550', '1', '用户登录', '1', '2018-12-03 07:47:35');
INSERT INTO `base_logs` VALUES ('116551', '1', '用户登录', '1', '2018-12-03 07:47:53');
INSERT INTO `base_logs` VALUES ('116552', '1', '用户登录', '1', '2018-12-03 08:08:17');
INSERT INTO `base_logs` VALUES ('116553', '1', '用户登录', '1', '2018-12-03 08:11:40');
INSERT INTO `base_logs` VALUES ('116554', '1', '用户登录', '1', '2018-12-03 08:14:51');
INSERT INTO `base_logs` VALUES ('116555', '1', '用户登录', '1', '2018-12-03 08:23:19');
INSERT INTO `base_logs` VALUES ('116556', '1', '用户登录', '1', '2018-12-03 08:29:24');
INSERT INTO `base_logs` VALUES ('116557', '1', '用户登录', '1', '2018-12-03 08:29:45');
INSERT INTO `base_logs` VALUES ('116558', '1', '用户登录', '1', '2018-12-03 08:40:59');
INSERT INTO `base_logs` VALUES ('116559', '1', '用户登录', '1', '2018-12-03 08:47:10');
INSERT INTO `base_logs` VALUES ('116560', '1', '用户登录', '1', '2018-12-03 08:49:38');
INSERT INTO `base_logs` VALUES ('116561', '1', '用户登录', '1', '2018-12-03 09:02:56');
INSERT INTO `base_logs` VALUES ('116562', '5', '查询管理员', '1', '2018-12-03 09:02:59');
INSERT INTO `base_logs` VALUES ('116563', '5', '查询角色', '1', '2018-12-03 09:02:59');
INSERT INTO `base_logs` VALUES ('116564', '1', '用户登录', '1', '2018-12-04 01:26:07');
INSERT INTO `base_logs` VALUES ('116565', '1', '用户登录', '1', '2018-12-04 01:27:01');
INSERT INTO `base_logs` VALUES ('116566', '5', '查询角色', '1', '2018-12-04 01:27:04');
INSERT INTO `base_logs` VALUES ('116567', '5', '查询管理员', '1', '2018-12-04 01:27:04');
INSERT INTO `base_logs` VALUES ('116568', '5', '查询角色', '1', '2018-12-04 01:27:08');
INSERT INTO `base_logs` VALUES ('116569', '5', '查询角色菜单', '1', '2018-12-04 01:27:16');
INSERT INTO `base_logs` VALUES ('116570', '1', '用户登录', '1', '2018-12-04 01:29:27');
INSERT INTO `base_logs` VALUES ('116571', '1', '用户退出', '1', '2018-12-04 01:29:31');
INSERT INTO `base_logs` VALUES ('116572', '1', '用户登录', '1', '2018-12-04 01:29:32');
INSERT INTO `base_logs` VALUES ('116573', '5', '查询角色', '1', '2018-12-04 01:29:34');
INSERT INTO `base_logs` VALUES ('116574', '5', '查询系统日志', '1', '2018-12-04 01:29:35');
INSERT INTO `base_logs` VALUES ('116575', '1', '用户登录', '1', '2018-12-04 01:32:39');
INSERT INTO `base_logs` VALUES ('116576', '5', '查询角色', '1', '2018-12-04 01:32:41');
INSERT INTO `base_logs` VALUES ('116577', '5', '查询管理员', '1', '2018-12-04 01:32:41');
INSERT INTO `base_logs` VALUES ('116578', '5', '查询角色', '1', '2018-12-04 01:32:42');
INSERT INTO `base_logs` VALUES ('116579', '5', '查询管理员', '1', '2018-12-04 01:32:42');
INSERT INTO `base_logs` VALUES ('116580', '5', '查询角色', '1', '2018-12-04 01:32:43');
INSERT INTO `base_logs` VALUES ('116581', '1', '用户登录', '1', '2018-12-04 01:33:50');
INSERT INTO `base_logs` VALUES ('116582', '5', '查询角色', '1', '2018-12-04 01:33:53');
INSERT INTO `base_logs` VALUES ('116583', '5', '查询管理员', '1', '2018-12-04 01:33:53');
INSERT INTO `base_logs` VALUES ('116584', '5', '查询角色', '1', '2018-12-04 01:33:54');
INSERT INTO `base_logs` VALUES ('116585', '5', '资源库查看', '1', '2018-12-04 01:34:05');
INSERT INTO `base_logs` VALUES ('116586', '5', '资源库查看', '1', '2018-12-04 01:34:11');
INSERT INTO `base_logs` VALUES ('116587', '5', '分类查询', '1', '2018-12-04 01:34:22');
INSERT INTO `base_logs` VALUES ('116588', '5', '分类查询', '1', '2018-12-04 01:34:30');
INSERT INTO `base_logs` VALUES ('116589', '5', '分类查询', '1', '2018-12-04 01:34:37');
INSERT INTO `base_logs` VALUES ('116590', '3', '修改了党员管理1条数据', '1', '2018-12-04 01:34:42');
INSERT INTO `base_logs` VALUES ('116591', '5', '分类查询', '1', '2018-12-04 01:34:52');
INSERT INTO `base_logs` VALUES ('116592', '5', '分类查询', '1', '2018-12-04 01:34:57');
INSERT INTO `base_logs` VALUES ('116593', '5', '资源库查看', '1', '2018-12-04 01:35:07');
INSERT INTO `base_logs` VALUES ('116594', '5', '资源库查看', '1', '2018-12-04 01:35:12');
INSERT INTO `base_logs` VALUES ('116595', '5', '查询角色', '1', '2018-12-04 01:35:19');
INSERT INTO `base_logs` VALUES ('116596', '5', '查询管理员', '1', '2018-12-04 01:35:19');
INSERT INTO `base_logs` VALUES ('116597', '5', '查询角色', '1', '2018-12-04 01:35:22');
INSERT INTO `base_logs` VALUES ('116598', '5', '查询角色', '1', '2018-12-04 01:35:23');
INSERT INTO `base_logs` VALUES ('116599', '5', '查询管理员', '1', '2018-12-04 01:35:23');
INSERT INTO `base_logs` VALUES ('116600', '5', '查询系统日志', '1', '2018-12-04 01:35:25');
INSERT INTO `base_logs` VALUES ('116601', '1', '用户登录', '1', '2018-12-04 01:47:17');
INSERT INTO `base_logs` VALUES ('116602', '1', '用户登录', '1', '2018-12-04 01:47:27');
INSERT INTO `base_logs` VALUES ('116603', '1', '用户登录', '1', '2018-12-04 01:50:29');
INSERT INTO `base_logs` VALUES ('116604', '1', '用户登录', '1', '2018-12-04 01:52:34');
INSERT INTO `base_logs` VALUES ('116605', '5', '分类查询', '1', '2018-12-04 01:52:42');
INSERT INTO `base_logs` VALUES ('116606', '5', '分类查询', '1', '2018-12-04 01:52:43');
INSERT INTO `base_logs` VALUES ('116607', '5', '分类查询', '1', '2018-12-04 01:52:48');
INSERT INTO `base_logs` VALUES ('116608', '3', '修改了党员管理1条数据', '1', '2018-12-04 01:53:58');
INSERT INTO `base_logs` VALUES ('116609', '5', '分类查询', '1', '2018-12-04 01:54:03');
INSERT INTO `base_logs` VALUES ('116610', '5', '分类查询', '1', '2018-12-04 01:54:06');
INSERT INTO `base_logs` VALUES ('116611', '5', '分类查询', '1', '2018-12-04 01:54:10');
INSERT INTO `base_logs` VALUES ('116612', '5', '分类查询', '1', '2018-12-04 01:56:28');
INSERT INTO `base_logs` VALUES ('116613', '7', '文件上传', '1', '2018-12-04 01:56:56');
INSERT INTO `base_logs` VALUES ('116614', '3', '修改了党员管理1条数据', '1', '2018-12-04 01:57:00');
INSERT INTO `base_logs` VALUES ('116615', '5', '分类查询', '1', '2018-12-04 01:57:19');
INSERT INTO `base_logs` VALUES ('116616', '5', '分类查询', '1', '2018-12-04 01:57:42');
INSERT INTO `base_logs` VALUES ('116617', '5', '分类查询', '1', '2018-12-04 01:57:59');
INSERT INTO `base_logs` VALUES ('116618', '5', '分类查询', '1', '2018-12-04 02:00:00');
INSERT INTO `base_logs` VALUES ('116619', '7', '文件上传', '1', '2018-12-04 02:00:14');
INSERT INTO `base_logs` VALUES ('116620', '3', '修改了党员管理1条数据', '1', '2018-12-04 02:00:24');
INSERT INTO `base_logs` VALUES ('116621', '1', '用户登录', '1', '2018-12-04 02:10:37');
INSERT INTO `base_logs` VALUES ('116622', '5', '分类查询', '1', '2018-12-04 02:10:40');
INSERT INTO `base_logs` VALUES ('116623', '5', '分类查询', '1', '2018-12-04 02:10:41');
INSERT INTO `base_logs` VALUES ('116624', '5', '分类查询', '1', '2018-12-04 02:10:45');
INSERT INTO `base_logs` VALUES ('116625', '7', '富文本图片上传', '1', '2018-12-04 02:11:00');
INSERT INTO `base_logs` VALUES ('116626', '3', '修改了党员管理1条数据', '1', '2018-12-04 02:11:18');
INSERT INTO `base_logs` VALUES ('116627', '5', '分类查询', '1', '2018-12-04 02:11:22');
INSERT INTO `base_logs` VALUES ('116628', '5', '分类查询', '1', '2018-12-04 02:11:26');
INSERT INTO `base_logs` VALUES ('116629', '1', '用户登录', '1', '2018-12-04 02:22:30');
INSERT INTO `base_logs` VALUES ('116630', '5', '分类查询', '1', '2018-12-04 02:22:32');
INSERT INTO `base_logs` VALUES ('116631', '5', '分类查询', '1', '2018-12-04 02:22:33');
INSERT INTO `base_logs` VALUES ('116632', '5', '分类查询', '1', '2018-12-04 02:22:36');
INSERT INTO `base_logs` VALUES ('116633', '7', '文件上传', '1', '2018-12-04 02:22:44');
INSERT INTO `base_logs` VALUES ('116634', '3', '修改了党员管理1条数据', '1', '2018-12-04 02:22:47');
INSERT INTO `base_logs` VALUES ('116635', '5', '分类查询', '1', '2018-12-04 02:41:10');
INSERT INTO `base_logs` VALUES ('116636', '5', '分类查询', '1', '2018-12-04 02:41:13');
INSERT INTO `base_logs` VALUES ('116637', '1', '用户登录', '1', '2018-12-04 03:29:22');
INSERT INTO `base_logs` VALUES ('116638', '5', '查询管理员', '1', '2018-12-04 03:29:29');
INSERT INTO `base_logs` VALUES ('116639', '5', '查询角色', '1', '2018-12-04 03:29:29');
INSERT INTO `base_logs` VALUES ('116640', '1', '用户登录', '1', '2018-12-04 03:30:56');
INSERT INTO `base_logs` VALUES ('116641', '1', '用户登录', '1', '2018-12-04 14:08:03');
INSERT INTO `base_logs` VALUES ('116642', '5', '查询菜单', '1', '2018-12-04 14:08:10');
INSERT INTO `base_logs` VALUES ('116643', '5', '查询菜单', '1', '2018-12-04 14:08:10');
INSERT INTO `base_logs` VALUES ('116644', '5', '查询角色', '1', '2018-12-04 14:08:11');
INSERT INTO `base_logs` VALUES ('116645', '5', '查询角色', '1', '2018-12-04 14:08:13');
INSERT INTO `base_logs` VALUES ('116646', '5', '查询管理员', '1', '2018-12-04 14:08:13');
INSERT INTO `base_logs` VALUES ('116647', '5', '查询系统日志', '1', '2018-12-04 14:08:13');
INSERT INTO `base_logs` VALUES ('116648', '5', '资源库查看', '1', '2018-12-04 14:08:16');
INSERT INTO `base_logs` VALUES ('116649', '5', '分类查询', '1', '2018-12-04 14:08:18');
INSERT INTO `base_logs` VALUES ('116650', '5', '分类查询', '1', '2018-12-04 14:08:18');
INSERT INTO `base_logs` VALUES ('116651', '1', '用户登录', '1', '2018-12-04 06:25:03');
INSERT INTO `base_logs` VALUES ('116652', '1', '用户登录', '1', '2018-12-04 07:55:03');
INSERT INTO `base_logs` VALUES ('116653', '1', '用户登录', '1', '2018-12-04 07:58:59');
INSERT INTO `base_logs` VALUES ('116654', '1', '用户登录', '1', '2018-12-04 08:04:11');
INSERT INTO `base_logs` VALUES ('116655', '1', '用户登录', '1', '2018-12-04 08:04:34');
INSERT INTO `base_logs` VALUES ('116656', '1', '用户登录', '1', '2018-12-04 08:05:47');
INSERT INTO `base_logs` VALUES ('116657', '1', '用户登录', '1', '2018-12-04 08:18:03');
INSERT INTO `base_logs` VALUES ('116658', '1', '用户登录', '1', '2018-12-04 08:26:53');
INSERT INTO `base_logs` VALUES ('116659', '1', '用户登录', '1', '2018-12-04 08:37:54');
INSERT INTO `base_logs` VALUES ('116660', '1', '用户登录', '1', '2018-12-04 08:40:28');
INSERT INTO `base_logs` VALUES ('116661', '1', '用户登录', '1', '2018-12-04 08:42:06');
INSERT INTO `base_logs` VALUES ('116662', '5', '查询角色', '1', '2018-12-04 08:42:09');
INSERT INTO `base_logs` VALUES ('116663', '5', '查询管理员', '1', '2018-12-04 08:42:09');
INSERT INTO `base_logs` VALUES ('116664', '1', '用户登录', '1', '2018-12-04 08:44:51');
INSERT INTO `base_logs` VALUES ('116665', '5', '查询角色', '1', '2018-12-04 08:44:53');
INSERT INTO `base_logs` VALUES ('116666', '5', '查询管理员', '1', '2018-12-04 08:44:53');
INSERT INTO `base_logs` VALUES ('116667', '5', '查询角色', '1', '2018-12-04 08:45:01');
INSERT INTO `base_logs` VALUES ('116668', '5', '查询管理员', '1', '2018-12-04 08:45:01');
INSERT INTO `base_logs` VALUES ('116669', '5', '查询角色', '1', '2018-12-04 08:45:56');
INSERT INTO `base_logs` VALUES ('116670', '5', '查询角色', '1', '2018-12-04 08:46:02');
INSERT INTO `base_logs` VALUES ('116671', '5', '查询管理员', '1', '2018-12-04 08:46:02');
INSERT INTO `base_logs` VALUES ('116672', '1', '用户登录', '1', '2018-12-04 08:46:13');
INSERT INTO `base_logs` VALUES ('116673', '5', '查询角色', '1', '2018-12-04 08:46:17');
INSERT INTO `base_logs` VALUES ('116674', '5', '查询管理员', '1', '2018-12-04 08:46:17');
INSERT INTO `base_logs` VALUES ('116675', '1', '用户登录', '1', '2018-12-04 08:48:30');
INSERT INTO `base_logs` VALUES ('116676', '5', '查询角色', '1', '2018-12-04 08:48:34');
INSERT INTO `base_logs` VALUES ('116677', '5', '查询管理员', '1', '2018-12-04 08:48:34');
INSERT INTO `base_logs` VALUES ('116678', '5', '查询角色', '1', '2018-12-04 08:50:09');
INSERT INTO `base_logs` VALUES ('116679', '5', '查询管理员', '1', '2018-12-04 08:50:09');
INSERT INTO `base_logs` VALUES ('116680', '1', '用户登录', '1', '2018-12-04 08:54:22');
INSERT INTO `base_logs` VALUES ('116681', '5', '查询角色', '1', '2018-12-04 08:54:24');
INSERT INTO `base_logs` VALUES ('116682', '5', '查询管理员', '1', '2018-12-04 08:54:24');
INSERT INTO `base_logs` VALUES ('116683', '5', '查询角色', '1', '2018-12-04 08:56:31');
INSERT INTO `base_logs` VALUES ('116684', '5', '查询管理员', '1', '2018-12-04 08:56:31');
INSERT INTO `base_logs` VALUES ('116685', '5', '查询角色', '1', '2018-12-04 08:56:40');
INSERT INTO `base_logs` VALUES ('116686', '5', '查询角色', '1', '2018-12-04 08:56:44');
INSERT INTO `base_logs` VALUES ('116687', '5', '查询管理员', '1', '2018-12-04 08:56:44');
INSERT INTO `base_logs` VALUES ('116688', '5', '查询系统日志', '1', '2018-12-04 08:56:47');
INSERT INTO `base_logs` VALUES ('116689', '5', '查询角色', '1', '2018-12-04 08:56:49');
INSERT INTO `base_logs` VALUES ('116690', '5', '查询管理员', '1', '2018-12-04 08:56:49');
INSERT INTO `base_logs` VALUES ('116691', '1', '用户登录', '1', '2018-12-04 08:58:07');
INSERT INTO `base_logs` VALUES ('116692', '5', '查询角色', '1', '2018-12-04 08:58:09');
INSERT INTO `base_logs` VALUES ('116693', '5', '查询角色', '1', '2018-12-04 08:58:13');
INSERT INTO `base_logs` VALUES ('116694', '5', '查询管理员', '1', '2018-12-04 08:58:13');
INSERT INTO `base_logs` VALUES ('116695', '1', '用户登录', '1', '2018-12-04 08:59:29');
INSERT INTO `base_logs` VALUES ('116696', '5', '查询角色', '1', '2018-12-04 08:59:31');
INSERT INTO `base_logs` VALUES ('116697', '5', '查询角色', '1', '2018-12-04 08:59:35');
INSERT INTO `base_logs` VALUES ('116698', '5', '查询管理员', '1', '2018-12-04 08:59:35');
INSERT INTO `base_logs` VALUES ('116699', '5', '查询角色', '1', '2018-12-04 08:59:49');
INSERT INTO `base_logs` VALUES ('116700', '5', '查询管理员', '1', '2018-12-04 08:59:49');
INSERT INTO `base_logs` VALUES ('116701', '1', '用户登录', '1', '2018-12-04 09:05:04');
INSERT INTO `base_logs` VALUES ('116702', '5', '查询角色', '1', '2018-12-04 09:05:06');
INSERT INTO `base_logs` VALUES ('116703', '5', '查询管理员', '1', '2018-12-04 09:05:06');
INSERT INTO `base_logs` VALUES ('116704', '5', '查询管理员', '1', '2018-12-04 09:05:16');
INSERT INTO `base_logs` VALUES ('116705', '1', '用户登录', '1', '2018-12-04 09:10:15');
INSERT INTO `base_logs` VALUES ('116706', '5', '查询角色', '1', '2018-12-04 09:10:18');
INSERT INTO `base_logs` VALUES ('116707', '5', '查询管理员', '1', '2018-12-04 09:10:18');
INSERT INTO `base_logs` VALUES ('116708', '1', '用户登录', '1', '2018-12-04 09:17:28');
INSERT INTO `base_logs` VALUES ('116709', '1', '用户登录', '1', '2018-12-04 09:18:08');
INSERT INTO `base_logs` VALUES ('116710', '1', '用户登录', '1', '2018-12-04 09:20:27');
INSERT INTO `base_logs` VALUES ('116711', '1', '用户登录', '1', '2018-12-04 09:23:59');
INSERT INTO `base_logs` VALUES ('116712', '5', '查询角色', '1', '2018-12-04 09:24:05');
INSERT INTO `base_logs` VALUES ('116713', '1', '用户登录', '1', '2018-12-04 09:27:54');
INSERT INTO `base_logs` VALUES ('116714', '5', '查询角色', '1', '2018-12-04 09:27:56');
INSERT INTO `base_logs` VALUES ('116715', '5', '查询管理员', '1', '2018-12-04 09:27:56');
INSERT INTO `base_logs` VALUES ('116716', '5', '查询角色', '1', '2018-12-04 09:28:21');
INSERT INTO `base_logs` VALUES ('116717', '5', '查询管理员', '1', '2018-12-04 09:28:21');
INSERT INTO `base_logs` VALUES ('116718', '5', '查询角色', '1', '2018-12-04 09:28:24');
INSERT INTO `base_logs` VALUES ('116719', '5', '查询角色', '1', '2018-12-04 09:28:39');
INSERT INTO `base_logs` VALUES ('116720', '3', '更新管理员', '1', '2018-12-04 09:28:49');
INSERT INTO `base_logs` VALUES ('116721', '5', '查询管理员', '1', '2018-12-04 09:28:50');
INSERT INTO `base_logs` VALUES ('116722', '5', '查询管理员', '1', '2018-12-04 09:30:19');
INSERT INTO `base_logs` VALUES ('116723', '1', '用户登录', '1', '2018-12-04 09:33:27');
INSERT INTO `base_logs` VALUES ('116724', '5', '查询角色', '1', '2018-12-04 09:33:30');
INSERT INTO `base_logs` VALUES ('116725', '5', '查询管理员', '1', '2018-12-04 09:33:30');
INSERT INTO `base_logs` VALUES ('116726', '1', '用户登录', '1', '2018-12-04 09:33:41');
INSERT INTO `base_logs` VALUES ('116727', '5', '查询角色', '1', '2018-12-04 09:33:44');
INSERT INTO `base_logs` VALUES ('116728', '5', '查询管理员', '1', '2018-12-04 09:33:44');
INSERT INTO `base_logs` VALUES ('116729', '1', '用户登录', '1', '2018-12-04 09:34:52');
INSERT INTO `base_logs` VALUES ('116730', '5', '查询角色', '1', '2018-12-04 09:34:59');
INSERT INTO `base_logs` VALUES ('116731', '5', '查询管理员', '1', '2018-12-04 09:34:59');
INSERT INTO `base_logs` VALUES ('116732', '1', '用户登录', '1', '2018-12-05 01:19:25');
INSERT INTO `base_logs` VALUES ('116733', '5', '查询角色', '1', '2018-12-05 01:19:44');
INSERT INTO `base_logs` VALUES ('116734', '5', '查询管理员', '1', '2018-12-05 01:19:44');
INSERT INTO `base_logs` VALUES ('116735', '5', '查询角色', '1', '2018-12-05 01:20:18');
INSERT INTO `base_logs` VALUES ('116736', '5', '查询管理员', '1', '2018-12-05 01:20:18');
INSERT INTO `base_logs` VALUES ('116737', '5', '查询角色', '1', '2018-12-05 01:20:20');
INSERT INTO `base_logs` VALUES ('116738', '5', '查询管理员', '1', '2018-12-05 01:20:20');
INSERT INTO `base_logs` VALUES ('116739', '1', '用户登录', '1', '2018-12-05 01:20:40');
INSERT INTO `base_logs` VALUES ('116740', '5', '查询角色', '1', '2018-12-05 01:20:42');
INSERT INTO `base_logs` VALUES ('116741', '5', '查询管理员', '1', '2018-12-05 01:20:42');
INSERT INTO `base_logs` VALUES ('116742', '5', '查询角色', '1', '2018-12-05 01:26:00');
INSERT INTO `base_logs` VALUES ('116743', '5', '查询管理员', '1', '2018-12-05 01:26:00');
INSERT INTO `base_logs` VALUES ('116744', '5', '查询角色', '1', '2018-12-05 01:26:00');
INSERT INTO `base_logs` VALUES ('116745', '5', '查询管理员', '1', '2018-12-05 01:26:00');
INSERT INTO `base_logs` VALUES ('116746', '1', '用户登录', '1', '2018-12-05 01:26:19');
INSERT INTO `base_logs` VALUES ('116747', '5', '查询角色', '1', '2018-12-05 01:26:25');
INSERT INTO `base_logs` VALUES ('116748', '5', '查询管理员', '1', '2018-12-05 01:26:25');
INSERT INTO `base_logs` VALUES ('116749', '1', '用户登录', '1', '2018-12-05 01:26:33');
INSERT INTO `base_logs` VALUES ('116750', '5', '查询角色', '1', '2018-12-05 01:26:35');
INSERT INTO `base_logs` VALUES ('116751', '5', '查询管理员', '1', '2018-12-05 01:26:35');
INSERT INTO `base_logs` VALUES ('116752', '5', '查询角色', '1', '2018-12-05 01:28:28');
INSERT INTO `base_logs` VALUES ('116753', '5', '查询管理员', '1', '2018-12-05 01:28:28');
INSERT INTO `base_logs` VALUES ('116754', '5', '查询管理员', '1', '2018-12-05 01:44:58');
INSERT INTO `base_logs` VALUES ('116755', '1', '用户登录', '1', '2018-12-05 01:56:46');
INSERT INTO `base_logs` VALUES ('116756', '5', '查询角色', '1', '2018-12-05 01:56:49');
INSERT INTO `base_logs` VALUES ('116757', '5', '查询管理员', '1', '2018-12-05 01:56:49');
INSERT INTO `base_logs` VALUES ('116758', '5', '查询角色', '1', '2018-12-05 01:56:57');
INSERT INTO `base_logs` VALUES ('116759', '5', '查询角色', '1', '2018-12-05 01:57:09');
INSERT INTO `base_logs` VALUES ('116760', '5', '查询角色', '1', '2018-12-05 01:57:41');
INSERT INTO `base_logs` VALUES ('116761', '5', '查询角色', '1', '2018-12-05 01:57:50');
INSERT INTO `base_logs` VALUES ('116762', '1', '用户登录', '1', '2018-12-05 02:30:59');
INSERT INTO `base_logs` VALUES ('116763', '5', '查询角色', '1', '2018-12-05 02:31:01');
INSERT INTO `base_logs` VALUES ('116764', '5', '查询管理员', '1', '2018-12-05 02:31:01');
INSERT INTO `base_logs` VALUES ('116765', '5', '查询角色', '1', '2018-12-05 02:31:06');
INSERT INTO `base_logs` VALUES ('116766', '5', '查询角色', '1', '2018-12-05 02:31:07');
INSERT INTO `base_logs` VALUES ('116767', '5', '查询管理员', '1', '2018-12-05 02:31:07');
INSERT INTO `base_logs` VALUES ('116768', '5', '查询系统日志', '1', '2018-12-05 02:31:08');
INSERT INTO `base_logs` VALUES ('116769', '5', '查询角色', '1', '2018-12-05 02:31:09');
INSERT INTO `base_logs` VALUES ('116770', '5', '查询角色', '1', '2018-12-05 02:31:10');
INSERT INTO `base_logs` VALUES ('116771', '5', '查询管理员', '1', '2018-12-05 02:31:10');
INSERT INTO `base_logs` VALUES ('116772', '5', '查询角色', '1', '2018-12-05 02:31:11');
INSERT INTO `base_logs` VALUES ('116773', '5', '查询角色', '1', '2018-12-05 02:31:12');
INSERT INTO `base_logs` VALUES ('116774', '5', '查询管理员', '1', '2018-12-05 02:31:12');
INSERT INTO `base_logs` VALUES ('116775', '5', '查询系统日志', '1', '2018-12-05 02:31:12');
INSERT INTO `base_logs` VALUES ('116776', '5', '分类查询', '1', '2018-12-05 02:31:20');
INSERT INTO `base_logs` VALUES ('116777', '1', '用户登录', '1', '2018-12-05 02:32:12');
INSERT INTO `base_logs` VALUES ('116778', '5', '查询角色', '1', '2018-12-05 02:32:14');
INSERT INTO `base_logs` VALUES ('116779', '5', '查询管理员', '1', '2018-12-05 02:32:14');
INSERT INTO `base_logs` VALUES ('116780', '5', '查询角色', '1', '2018-12-05 02:32:15');
INSERT INTO `base_logs` VALUES ('116781', '5', '查询角色', '1', '2018-12-05 02:32:16');
INSERT INTO `base_logs` VALUES ('116782', '5', '查询管理员', '1', '2018-12-05 02:32:16');
INSERT INTO `base_logs` VALUES ('116783', '5', '查询系统日志', '1', '2018-12-05 02:32:19');
INSERT INTO `base_logs` VALUES ('116784', '5', '资源库查看', '1', '2018-12-05 02:32:23');
INSERT INTO `base_logs` VALUES ('116785', '5', '分类查询', '1', '2018-12-05 02:32:26');
INSERT INTO `base_logs` VALUES ('116786', '5', '分类查询', '1', '2018-12-05 02:32:27');
INSERT INTO `base_logs` VALUES ('116787', '1', '用户登录', '1', '2018-12-05 02:50:29');
INSERT INTO `base_logs` VALUES ('116788', '1', '用户登录', '1', '2018-12-05 02:52:30');
INSERT INTO `base_logs` VALUES ('116789', '5', '查询角色', '1', '2018-12-05 02:52:35');
INSERT INTO `base_logs` VALUES ('116790', '5', '查询管理员', '1', '2018-12-05 02:52:35');
INSERT INTO `base_logs` VALUES ('116791', '5', '查询角色', '1', '2018-12-05 02:52:41');
INSERT INTO `base_logs` VALUES ('116792', '5', '查询角色', '1', '2018-12-05 02:52:42');
INSERT INTO `base_logs` VALUES ('116793', '5', '查询管理员', '1', '2018-12-05 02:52:42');
INSERT INTO `base_logs` VALUES ('116794', '1', '用户登录', '1', '2018-12-05 02:54:01');
INSERT INTO `base_logs` VALUES ('116795', '5', '查询角色', '1', '2018-12-05 02:54:03');
INSERT INTO `base_logs` VALUES ('116796', '5', '查询管理员', '1', '2018-12-05 02:54:03');
INSERT INTO `base_logs` VALUES ('116797', '5', '查询角色', '1', '2018-12-05 02:54:04');
INSERT INTO `base_logs` VALUES ('116798', '5', '查询角色', '1', '2018-12-05 02:54:04');
INSERT INTO `base_logs` VALUES ('116799', '5', '查询管理员', '1', '2018-12-05 02:54:05');
INSERT INTO `base_logs` VALUES ('116800', '5', '查询系统日志', '1', '2018-12-05 02:54:06');
INSERT INTO `base_logs` VALUES ('116801', '5', '查询角色', '1', '2018-12-05 02:54:08');
INSERT INTO `base_logs` VALUES ('116802', '5', '查询管理员', '1', '2018-12-05 02:54:08');
INSERT INTO `base_logs` VALUES ('116803', '5', '查询角色', '1', '2018-12-05 02:54:08');
INSERT INTO `base_logs` VALUES ('116804', '5', '查询角色', '1', '2018-12-05 02:54:09');
INSERT INTO `base_logs` VALUES ('116805', '5', '查询管理员', '1', '2018-12-05 02:54:09');
INSERT INTO `base_logs` VALUES ('116806', '5', '查询系统日志', '1', '2018-12-05 02:54:10');
INSERT INTO `base_logs` VALUES ('116807', '5', '资源库查看', '1', '2018-12-05 02:54:13');
INSERT INTO `base_logs` VALUES ('116808', '5', '分类查询', '1', '2018-12-05 02:54:15');
INSERT INTO `base_logs` VALUES ('116809', '5', '分类查询', '1', '2018-12-05 02:54:16');
INSERT INTO `base_logs` VALUES ('116810', '1', '用户登录', '1', '2018-12-05 02:56:49');
INSERT INTO `base_logs` VALUES ('116811', '5', '分类查询', '1', '2018-12-05 02:56:51');
INSERT INTO `base_logs` VALUES ('116812', '5', '分类查询', '1', '2018-12-05 02:56:53');
INSERT INTO `base_logs` VALUES ('116813', '5', '资源库查看', '1', '2018-12-05 02:57:20');
INSERT INTO `base_logs` VALUES ('116814', '1', '用户登录', '1', '2018-12-05 03:26:40');
INSERT INTO `base_logs` VALUES ('116815', '5', '分类查询', '1', '2018-12-05 03:26:42');
INSERT INTO `base_logs` VALUES ('116816', '1', '用户登录', '1', '2018-12-05 03:27:29');
INSERT INTO `base_logs` VALUES ('116817', '5', '分类查询', '1', '2018-12-05 03:27:32');
INSERT INTO `base_logs` VALUES ('116818', '1', '用户登录', '1', '2018-12-05 03:28:41');
INSERT INTO `base_logs` VALUES ('116819', '5', '分类查询', '1', '2018-12-05 03:28:42');
INSERT INTO `base_logs` VALUES ('116820', '1', '用户登录', '1', '2018-12-05 03:29:25');
INSERT INTO `base_logs` VALUES ('116821', '5', '分类查询', '1', '2018-12-05 03:29:27');
INSERT INTO `base_logs` VALUES ('116822', '5', '资源库查看', '1', '2018-12-05 03:50:17');
INSERT INTO `base_logs` VALUES ('116823', '2', '更新资源库状态', '1', '2018-12-05 03:50:23');
INSERT INTO `base_logs` VALUES ('116824', '5', '资源库查看', '1', '2018-12-05 03:50:23');
INSERT INTO `base_logs` VALUES ('116825', '1', '用户登录', '1', '2018-12-05 05:17:57');
INSERT INTO `base_logs` VALUES ('116826', '5', '资源库查看', '1', '2018-12-05 05:18:03');
INSERT INTO `base_logs` VALUES ('116827', '5', '资源库查看', '1', '2018-12-05 05:18:06');
INSERT INTO `base_logs` VALUES ('116828', '5', '资源库查看', '1', '2018-12-05 05:18:27');
INSERT INTO `base_logs` VALUES ('116829', '5', '资源库查看', '1', '2018-12-05 05:18:31');
INSERT INTO `base_logs` VALUES ('116830', '5', '分类查询', '1', '2018-12-05 05:18:33');
INSERT INTO `base_logs` VALUES ('116831', '1', '用户登录', '1', '2018-12-05 05:18:43');
INSERT INTO `base_logs` VALUES ('116832', '5', '分类查询', '1', '2018-12-05 05:18:45');
INSERT INTO `base_logs` VALUES ('116833', '5', '分类查询', '1', '2018-12-05 05:19:07');
INSERT INTO `base_logs` VALUES ('116834', '5', '分类查询', '1', '2018-12-05 05:19:09');
INSERT INTO `base_logs` VALUES ('116835', '5', '资源库查看', '1', '2018-12-05 05:19:12');
INSERT INTO `base_logs` VALUES ('116836', '5', '资源库查看', '1', '2018-12-05 05:19:34');
INSERT INTO `base_logs` VALUES ('116837', '2', '更新资源库状态', '1', '2018-12-05 05:19:40');
INSERT INTO `base_logs` VALUES ('116838', '5', '资源库查看', '1', '2018-12-05 05:19:40');
INSERT INTO `base_logs` VALUES ('116839', '5', '资源库查看', '1', '2018-12-05 05:26:35');
INSERT INTO `base_logs` VALUES ('116840', '1', '用户登录', '1', '2018-12-05 05:26:43');
INSERT INTO `base_logs` VALUES ('116841', '5', '资源库查看', '1', '2018-12-05 05:26:47');
INSERT INTO `base_logs` VALUES ('116842', '5', '资源库查看', '1', '2018-12-05 05:30:20');
INSERT INTO `base_logs` VALUES ('116843', '5', '资源库查看', '1', '2018-12-05 05:34:33');
INSERT INTO `base_logs` VALUES ('116844', '5', '资源库查看', '1', '2018-12-05 05:34:35');
INSERT INTO `base_logs` VALUES ('116845', '1', '用户登录', '1', '2018-12-05 05:40:10');
INSERT INTO `base_logs` VALUES ('116846', '5', '资源库查看', '1', '2018-12-05 05:40:17');
INSERT INTO `base_logs` VALUES ('116847', '5', '资源库查看', '1', '2018-12-05 05:40:21');
INSERT INTO `base_logs` VALUES ('116848', '5', '资源库查看', '1', '2018-12-05 05:40:24');
INSERT INTO `base_logs` VALUES ('116849', '5', '资源库查看', '1', '2018-12-05 05:40:25');
INSERT INTO `base_logs` VALUES ('116850', '5', '资源库查看', '1', '2018-12-05 05:40:28');
INSERT INTO `base_logs` VALUES ('116851', '1', '用户登录', '1', '2018-12-05 05:41:04');
INSERT INTO `base_logs` VALUES ('116852', '1', '用户登录', '1', '2018-12-05 05:42:13');
INSERT INTO `base_logs` VALUES ('116853', '5', '资源库查看', '1', '2018-12-05 05:42:18');
INSERT INTO `base_logs` VALUES ('116854', '5', '资源库查看', '1', '2018-12-05 05:42:21');
INSERT INTO `base_logs` VALUES ('116855', '5', '资源库查看', '1', '2018-12-05 05:42:25');
INSERT INTO `base_logs` VALUES ('116856', '5', '资源库查看', '1', '2018-12-05 05:42:46');
INSERT INTO `base_logs` VALUES ('116857', '5', '资源库查看', '1', '2018-12-05 05:43:30');
INSERT INTO `base_logs` VALUES ('116858', '5', '资源库查看', '1', '2018-12-05 05:43:31');
INSERT INTO `base_logs` VALUES ('116859', '1', '用户登录', '1', '2018-12-05 05:58:03');
INSERT INTO `base_logs` VALUES ('116860', '5', '资源库查看', '1', '2018-12-05 05:58:06');
INSERT INTO `base_logs` VALUES ('116861', '1', '用户登录', '1', '2018-12-05 05:59:19');
INSERT INTO `base_logs` VALUES ('116862', '5', '资源库查看', '1', '2018-12-05 05:59:22');
INSERT INTO `base_logs` VALUES ('116863', '5', '资源库查看', '1', '2018-12-05 05:59:25');
INSERT INTO `base_logs` VALUES ('116864', '5', '资源库查看', '1', '2018-12-05 05:59:28');
INSERT INTO `base_logs` VALUES ('116865', '5', '资源库查看', '1', '2018-12-05 05:59:30');
INSERT INTO `base_logs` VALUES ('116866', '5', '资源库查看', '1', '2018-12-05 05:59:32');
INSERT INTO `base_logs` VALUES ('116867', '5', '资源库查看', '1', '2018-12-05 05:59:39');
INSERT INTO `base_logs` VALUES ('116868', '5', '资源库查看', '1', '2018-12-05 06:00:12');
INSERT INTO `base_logs` VALUES ('116869', '5', '资源库查看', '1', '2018-12-05 06:00:13');
INSERT INTO `base_logs` VALUES ('116870', '1', '用户登录', '1', '2018-12-05 06:01:11');
INSERT INTO `base_logs` VALUES ('116871', '5', '资源库查看', '1', '2018-12-05 06:01:13');
INSERT INTO `base_logs` VALUES ('116872', '5', '资源库查看', '1', '2018-12-05 06:01:16');
INSERT INTO `base_logs` VALUES ('116873', '5', '资源库查看', '1', '2018-12-05 06:01:20');
INSERT INTO `base_logs` VALUES ('116874', '5', '资源库查看', '1', '2018-12-05 06:01:25');
INSERT INTO `base_logs` VALUES ('116875', '5', '资源库查看', '1', '2018-12-05 06:01:26');
INSERT INTO `base_logs` VALUES ('116876', '5', '资源库查看', '1', '2018-12-05 06:01:33');
INSERT INTO `base_logs` VALUES ('116877', '5', '资源库查看', '1', '2018-12-05 06:01:44');
INSERT INTO `base_logs` VALUES ('116878', '5', '资源库查看', '1', '2018-12-05 06:03:13');
INSERT INTO `base_logs` VALUES ('116879', '5', '资源库查看', '1', '2018-12-05 06:03:16');
INSERT INTO `base_logs` VALUES ('116880', '1', '用户登录', '1', '2018-12-05 06:03:30');
INSERT INTO `base_logs` VALUES ('116881', '5', '资源库查看', '1', '2018-12-05 06:03:33');
INSERT INTO `base_logs` VALUES ('116882', '5', '资源库查看', '1', '2018-12-05 06:03:38');
INSERT INTO `base_logs` VALUES ('116883', '5', '资源库查看', '1', '2018-12-05 06:03:47');
INSERT INTO `base_logs` VALUES ('116884', '5', '资源库查看', '1', '2018-12-05 06:03:53');
INSERT INTO `base_logs` VALUES ('116885', '5', '资源库查看', '1', '2018-12-05 06:03:54');
INSERT INTO `base_logs` VALUES ('116886', '5', '资源库查看', '1', '2018-12-05 06:04:32');
INSERT INTO `base_logs` VALUES ('116887', '1', '用户登录', '1', '2018-12-05 06:05:29');
INSERT INTO `base_logs` VALUES ('116888', '5', '分类查询', '1', '2018-12-05 06:05:31');
INSERT INTO `base_logs` VALUES ('116889', '5', '分类查询', '1', '2018-12-05 06:05:32');
INSERT INTO `base_logs` VALUES ('116890', '1', '用户登录', '1', '2018-12-05 06:06:17');
INSERT INTO `base_logs` VALUES ('116891', '5', '分类查询', '1', '2018-12-05 06:06:18');
INSERT INTO `base_logs` VALUES ('116892', '1', '用户登录', '1', '2018-12-05 06:06:54');
INSERT INTO `base_logs` VALUES ('116893', '5', '分类查询', '1', '2018-12-05 06:06:56');
INSERT INTO `base_logs` VALUES ('116894', '1', '用户登录', '1', '2018-12-05 06:08:00');
INSERT INTO `base_logs` VALUES ('116895', '5', '分类查询', '1', '2018-12-05 06:08:03');
INSERT INTO `base_logs` VALUES ('116896', '5', '分类查询', '1', '2018-12-05 06:08:06');
INSERT INTO `base_logs` VALUES ('116897', '5', '分类查询', '1', '2018-12-05 06:08:21');
INSERT INTO `base_logs` VALUES ('116898', '1', '用户登录', '1', '2018-12-05 06:14:30');
INSERT INTO `base_logs` VALUES ('116899', '5', '分类查询', '1', '2018-12-05 06:14:32');
INSERT INTO `base_logs` VALUES ('116900', '5', '分类查询', '1', '2018-12-05 06:14:34');
INSERT INTO `base_logs` VALUES ('116901', '1', '用户登录', '1', '2018-12-05 06:15:35');
INSERT INTO `base_logs` VALUES ('116902', '5', '分类查询', '1', '2018-12-05 06:15:37');
INSERT INTO `base_logs` VALUES ('116903', '5', '分类查询', '1', '2018-12-05 06:15:43');
INSERT INTO `base_logs` VALUES ('116904', '1', '用户登录', '1', '2018-12-05 06:16:08');
INSERT INTO `base_logs` VALUES ('116905', '5', '分类查询', '1', '2018-12-05 06:16:09');
INSERT INTO `base_logs` VALUES ('116906', '5', '分类查询', '1', '2018-12-05 06:16:29');
INSERT INTO `base_logs` VALUES ('116907', '5', '分类查询', '1', '2018-12-05 06:16:31');
INSERT INTO `base_logs` VALUES ('116908', '5', '分类查询', '1', '2018-12-05 06:16:36');
INSERT INTO `base_logs` VALUES ('116909', '1', '用户登录', '1', '2018-12-05 06:20:42');
INSERT INTO `base_logs` VALUES ('116910', '5', '分类查询', '1', '2018-12-05 06:20:44');
INSERT INTO `base_logs` VALUES ('116911', '5', '分类查询', '1', '2018-12-05 06:20:45');
INSERT INTO `base_logs` VALUES ('116912', '5', '分类查询', '1', '2018-12-05 06:20:46');
INSERT INTO `base_logs` VALUES ('116913', '5', '分类查询', '1', '2018-12-05 06:20:47');
INSERT INTO `base_logs` VALUES ('116914', '5', '分类查询', '1', '2018-12-05 06:20:49');
INSERT INTO `base_logs` VALUES ('116915', '5', '分类查询', '1', '2018-12-05 06:20:50');
INSERT INTO `base_logs` VALUES ('116916', '5', '资源库查看', '1', '2018-12-05 06:20:53');
INSERT INTO `base_logs` VALUES ('116917', '5', '资源库查看', '1', '2018-12-05 06:20:54');
INSERT INTO `base_logs` VALUES ('116918', '5', '资源库查看', '1', '2018-12-05 06:20:55');
INSERT INTO `base_logs` VALUES ('116919', '1', '用户登录', '1', '2018-12-05 06:21:44');
INSERT INTO `base_logs` VALUES ('116920', '5', '分类查询', '1', '2018-12-05 06:21:46');
INSERT INTO `base_logs` VALUES ('116921', '5', '分类查询', '1', '2018-12-05 06:21:47');
INSERT INTO `base_logs` VALUES ('116922', '5', '资源库查看', '1', '2018-12-05 06:21:51');
INSERT INTO `base_logs` VALUES ('116923', '5', '资源库查看', '1', '2018-12-05 06:21:54');
INSERT INTO `base_logs` VALUES ('116924', '5', '资源库查看', '1', '2018-12-05 06:21:57');
INSERT INTO `base_logs` VALUES ('116925', '5', '资源库查看', '1', '2018-12-05 06:22:01');
INSERT INTO `base_logs` VALUES ('116926', '5', '资源库查看', '1', '2018-12-05 06:22:03');
INSERT INTO `base_logs` VALUES ('116927', '5', '资源库查看', '1', '2018-12-05 06:22:05');
INSERT INTO `base_logs` VALUES ('116928', '5', '分类查询', '1', '2018-12-05 06:22:44');
INSERT INTO `base_logs` VALUES ('116929', '5', '分类查询', '1', '2018-12-05 06:23:12');
INSERT INTO `base_logs` VALUES ('116930', '5', '资源库查看', '1', '2018-12-05 06:23:15');
INSERT INTO `base_logs` VALUES ('116931', '1', '用户登录', '1', '2018-12-05 06:24:45');
INSERT INTO `base_logs` VALUES ('116932', '5', '查询角色', '1', '2018-12-05 06:24:47');
INSERT INTO `base_logs` VALUES ('116933', '5', '查询管理员', '1', '2018-12-05 06:24:47');
INSERT INTO `base_logs` VALUES ('116934', '1', '用户登录', '1', '2018-12-05 06:24:55');
INSERT INTO `base_logs` VALUES ('116935', '5', '查询角色', '1', '2018-12-05 06:24:56');
INSERT INTO `base_logs` VALUES ('116936', '5', '查询管理员', '1', '2018-12-05 06:24:56');
INSERT INTO `base_logs` VALUES ('116937', '5', '查询角色', '1', '2018-12-05 06:24:57');
INSERT INTO `base_logs` VALUES ('116938', '5', '查询角色', '1', '2018-12-05 06:24:58');
INSERT INTO `base_logs` VALUES ('116939', '5', '查询管理员', '1', '2018-12-05 06:24:58');
INSERT INTO `base_logs` VALUES ('116940', '5', '查询系统日志', '1', '2018-12-05 06:24:59');
INSERT INTO `base_logs` VALUES ('116941', '5', '资源库查看', '1', '2018-12-05 06:25:02');
INSERT INTO `base_logs` VALUES ('116942', '5', '分类查询', '1', '2018-12-05 06:25:05');
INSERT INTO `base_logs` VALUES ('116943', '5', '分类查询', '1', '2018-12-05 06:25:07');
INSERT INTO `base_logs` VALUES ('116944', '5', '分类查询', '1', '2018-12-05 06:25:16');
INSERT INTO `base_logs` VALUES ('116945', '1', '用户登录', '1', '2018-12-05 06:27:03');
INSERT INTO `base_logs` VALUES ('116946', '5', '查询角色', '1', '2018-12-05 06:27:05');
INSERT INTO `base_logs` VALUES ('116947', '5', '查询管理员', '1', '2018-12-05 06:27:05');
INSERT INTO `base_logs` VALUES ('116948', '5', '查询角色', '1', '2018-12-05 06:27:07');
INSERT INTO `base_logs` VALUES ('116949', '5', '查询角色', '1', '2018-12-05 06:27:08');
INSERT INTO `base_logs` VALUES ('116950', '5', '查询管理员', '1', '2018-12-05 06:27:08');
INSERT INTO `base_logs` VALUES ('116951', '5', '查询系统日志', '1', '2018-12-05 06:27:09');
INSERT INTO `base_logs` VALUES ('116952', '5', '资源库查看', '1', '2018-12-05 06:27:11');
INSERT INTO `base_logs` VALUES ('116953', '5', '分类查询', '1', '2018-12-05 06:27:14');
INSERT INTO `base_logs` VALUES ('116954', '5', '分类查询', '1', '2018-12-05 06:27:15');
INSERT INTO `base_logs` VALUES ('116955', '1', '用户登录', '1', '2018-12-05 06:28:59');
INSERT INTO `base_logs` VALUES ('116956', '5', '分类查询', '1', '2018-12-05 06:29:01');
INSERT INTO `base_logs` VALUES ('116957', '1', '用户登录', '1', '2018-12-05 06:32:58');
INSERT INTO `base_logs` VALUES ('116958', '5', '查询角色', '1', '2018-12-05 06:33:00');
INSERT INTO `base_logs` VALUES ('116959', '5', '查询管理员', '1', '2018-12-05 06:33:00');
INSERT INTO `base_logs` VALUES ('116960', '5', '查询角色', '1', '2018-12-05 06:33:02');
INSERT INTO `base_logs` VALUES ('116961', '5', '查询角色', '1', '2018-12-05 06:33:03');
INSERT INTO `base_logs` VALUES ('116962', '5', '查询管理员', '1', '2018-12-05 06:33:03');
INSERT INTO `base_logs` VALUES ('116963', '5', '查询系统日志', '1', '2018-12-05 06:33:04');
INSERT INTO `base_logs` VALUES ('116964', '5', '资源库查看', '1', '2018-12-05 06:33:08');
INSERT INTO `base_logs` VALUES ('116965', '5', '分类查询', '1', '2018-12-05 06:33:11');
INSERT INTO `base_logs` VALUES ('116966', '5', '分类查询', '1', '2018-12-05 06:33:12');
INSERT INTO `base_logs` VALUES ('116967', '1', '用户登录', '1', '2018-12-05 07:04:34');
INSERT INTO `base_logs` VALUES ('116968', '5', '查询角色', '1', '2018-12-05 07:04:35');
INSERT INTO `base_logs` VALUES ('116969', '5', '查询管理员', '1', '2018-12-05 07:04:35');
INSERT INTO `base_logs` VALUES ('116970', '5', '查询角色', '1', '2018-12-05 07:04:36');
INSERT INTO `base_logs` VALUES ('116971', '5', '查询角色', '1', '2018-12-05 07:04:37');
INSERT INTO `base_logs` VALUES ('116972', '5', '查询角色', '1', '2018-12-05 07:04:38');
INSERT INTO `base_logs` VALUES ('116973', '5', '查询管理员', '1', '2018-12-05 07:04:38');
INSERT INTO `base_logs` VALUES ('116974', '5', '查询角色', '1', '2018-12-05 07:04:38');
INSERT INTO `base_logs` VALUES ('116975', '5', '查询管理员', '1', '2018-12-05 07:04:38');
INSERT INTO `base_logs` VALUES ('116976', '5', '查询系统日志', '1', '2018-12-05 07:04:39');
INSERT INTO `base_logs` VALUES ('116977', '5', '资源库查看', '1', '2018-12-05 07:04:41');
INSERT INTO `base_logs` VALUES ('116978', '5', '分类查询', '1', '2018-12-05 07:04:43');
INSERT INTO `base_logs` VALUES ('116979', '5', '分类查询', '1', '2018-12-05 07:04:44');
INSERT INTO `base_logs` VALUES ('116980', '5', '分类查询', '1', '2018-12-05 07:04:50');
INSERT INTO `base_logs` VALUES ('116981', '5', '资源库查看', '1', '2018-12-05 07:04:54');
INSERT INTO `base_logs` VALUES ('116982', '5', '资源库查看', '1', '2018-12-05 07:04:56');
INSERT INTO `base_logs` VALUES ('116983', '5', '资源库查看', '1', '2018-12-05 07:05:17');
INSERT INTO `base_logs` VALUES ('116984', '5', '资源库查看', '1', '2018-12-05 07:05:19');
INSERT INTO `base_logs` VALUES ('116985', '5', '资源库查看', '1', '2018-12-05 07:08:14');
INSERT INTO `base_logs` VALUES ('116986', '1', '用户登录', '1', '2018-12-05 07:24:51');
INSERT INTO `base_logs` VALUES ('116987', '1', '用户登录', '1', '2018-12-05 07:25:45');
INSERT INTO `base_logs` VALUES ('116988', '5', '查询角色', '1', '2018-12-05 07:25:49');
INSERT INTO `base_logs` VALUES ('116989', '5', '查询管理员', '1', '2018-12-05 07:25:49');
INSERT INTO `base_logs` VALUES ('116990', '5', '查询角色', '1', '2018-12-05 07:25:51');
INSERT INTO `base_logs` VALUES ('116991', '5', '查询角色', '1', '2018-12-05 07:25:55');
INSERT INTO `base_logs` VALUES ('116992', '5', '查询角色', '1', '2018-12-05 07:25:55');
INSERT INTO `base_logs` VALUES ('116993', '5', '查询管理员', '1', '2018-12-05 07:25:55');
INSERT INTO `base_logs` VALUES ('116994', '5', '查询系统日志', '1', '2018-12-05 07:25:57');
INSERT INTO `base_logs` VALUES ('116995', '5', '资源库查看', '1', '2018-12-05 07:25:59');
INSERT INTO `base_logs` VALUES ('116996', '5', '资源库查看', '1', '2018-12-05 07:26:00');
INSERT INTO `base_logs` VALUES ('116997', '1', '用户登录', '1', '2018-12-05 07:26:12');
INSERT INTO `base_logs` VALUES ('116998', '5', '查询角色', '1', '2018-12-05 07:26:14');
INSERT INTO `base_logs` VALUES ('116999', '5', '查询管理员', '1', '2018-12-05 07:26:14');
INSERT INTO `base_logs` VALUES ('117000', '5', '查询角色', '1', '2018-12-05 07:26:32');
INSERT INTO `base_logs` VALUES ('117001', '5', '查询管理员', '1', '2018-12-05 07:26:32');
INSERT INTO `base_logs` VALUES ('117002', '5', '查询角色', '1', '2018-12-05 07:26:37');
INSERT INTO `base_logs` VALUES ('117003', '5', '查询管理员', '1', '2018-12-05 07:26:37');
INSERT INTO `base_logs` VALUES ('117004', '1', '用户登录', '1', '2018-12-05 07:27:17');
INSERT INTO `base_logs` VALUES ('117005', '5', '查询角色', '1', '2018-12-05 07:27:28');
INSERT INTO `base_logs` VALUES ('117006', '1', '用户登录', '1', '2018-12-05 07:28:02');
INSERT INTO `base_logs` VALUES ('117007', '5', '查询角色', '1', '2018-12-05 07:28:17');
INSERT INTO `base_logs` VALUES ('117008', '5', '查询系统日志', '1', '2018-12-05 07:29:03');
INSERT INTO `base_logs` VALUES ('117009', '5', '查询角色', '1', '2018-12-05 07:29:05');
INSERT INTO `base_logs` VALUES ('117010', '5', '查询管理员', '1', '2018-12-05 07:29:05');
INSERT INTO `base_logs` VALUES ('117011', '5', '分类查询', '1', '2018-12-05 07:30:41');
INSERT INTO `base_logs` VALUES ('117012', '1', '用户登录', '1', '2018-12-05 07:30:53');
INSERT INTO `base_logs` VALUES ('117013', '5', '查询角色', '1', '2018-12-05 07:30:57');
INSERT INTO `base_logs` VALUES ('117014', '5', '查询角色菜单', '1', '2018-12-05 07:31:04');
INSERT INTO `base_logs` VALUES ('117015', '5', '查询系统日志', '1', '2018-12-05 07:31:09');
INSERT INTO `base_logs` VALUES ('117016', '5', '资源库查看', '1', '2018-12-05 07:31:13');
INSERT INTO `base_logs` VALUES ('117017', '5', '分类查询', '1', '2018-12-05 07:31:35');
INSERT INTO `base_logs` VALUES ('117018', '5', '资源库查看', '1', '2018-12-05 07:31:42');
INSERT INTO `base_logs` VALUES ('117019', '5', '资源库查看', '1', '2018-12-05 07:31:44');
INSERT INTO `base_logs` VALUES ('117020', '5', '查询角色', '1', '2018-12-05 07:31:47');
INSERT INTO `base_logs` VALUES ('117021', '5', '查询角色', '1', '2018-12-05 07:31:48');
INSERT INTO `base_logs` VALUES ('117022', '5', '查询管理员', '1', '2018-12-05 07:31:48');
INSERT INTO `base_logs` VALUES ('117023', '1', '用户登录', '1', '2018-12-05 07:34:05');
INSERT INTO `base_logs` VALUES ('117024', '1', '用户登录', '1', '2018-12-05 07:35:05');
INSERT INTO `base_logs` VALUES ('117025', '1', '用户登录', '1', '2018-12-05 07:41:13');
INSERT INTO `base_logs` VALUES ('117026', '1', '用户登录', '1', '2018-12-05 07:43:52');
INSERT INTO `base_logs` VALUES ('117027', '5', '查询菜单', '1', '2018-12-05 07:43:55');
INSERT INTO `base_logs` VALUES ('117028', '1', '用户登录', '1', '2018-12-05 07:44:56');
INSERT INTO `base_logs` VALUES ('117029', '5', '分类查询', '1', '2018-12-05 07:44:57');
INSERT INTO `base_logs` VALUES ('117030', '5', '分类查询', '1', '2018-12-05 07:45:02');
INSERT INTO `base_logs` VALUES ('117031', '5', '资源库查看', '1', '2018-12-05 07:45:09');
INSERT INTO `base_logs` VALUES ('117032', '5', '查询菜单', '1', '2018-12-05 07:45:14');
INSERT INTO `base_logs` VALUES ('117033', '5', '查询角色', '1', '2018-12-05 07:45:16');
INSERT INTO `base_logs` VALUES ('117034', '5', '查询角色', '1', '2018-12-05 07:45:18');
INSERT INTO `base_logs` VALUES ('117035', '5', '查询管理员', '1', '2018-12-05 07:45:18');
INSERT INTO `base_logs` VALUES ('117036', '5', '查询角色', '1', '2018-12-05 07:45:22');
INSERT INTO `base_logs` VALUES ('117037', '5', '查询管理员', '1', '2018-12-05 07:45:22');
INSERT INTO `base_logs` VALUES ('117038', '5', '查询系统日志', '1', '2018-12-05 07:45:25');
INSERT INTO `base_logs` VALUES ('117039', '5', '查询角色', '1', '2018-12-05 07:45:25');
INSERT INTO `base_logs` VALUES ('117040', '5', '资源库查看', '1', '2018-12-05 07:45:29');
INSERT INTO `base_logs` VALUES ('117041', '1', '用户登录', '1', '2018-12-05 07:47:06');
INSERT INTO `base_logs` VALUES ('117042', '5', '查询菜单', '1', '2018-12-05 07:47:10');
INSERT INTO `base_logs` VALUES ('117043', '5', '查询角色', '1', '2018-12-05 07:47:11');
INSERT INTO `base_logs` VALUES ('117044', '5', '查询角色', '1', '2018-12-05 07:47:12');
INSERT INTO `base_logs` VALUES ('117045', '5', '查询管理员', '1', '2018-12-05 07:47:12');
INSERT INTO `base_logs` VALUES ('117046', '5', '查询系统日志', '1', '2018-12-05 07:47:13');
INSERT INTO `base_logs` VALUES ('117047', '5', '资源库查看', '1', '2018-12-05 07:47:15');
INSERT INTO `base_logs` VALUES ('117048', '5', '分类查询', '1', '2018-12-05 07:47:17');
INSERT INTO `base_logs` VALUES ('117049', '5', '分类查询', '1', '2018-12-05 07:47:18');
INSERT INTO `base_logs` VALUES ('117050', '1', '用户退出', '1', '2018-12-05 07:47:25');
INSERT INTO `base_logs` VALUES ('117051', '1', '用户登录', '1', '2018-12-05 07:48:11');
INSERT INTO `base_logs` VALUES ('117052', '5', '分类查询', '1', '2018-12-05 07:48:17');
INSERT INTO `base_logs` VALUES ('117053', '1', '用户登录', '1', '2018-12-05 07:53:05');
INSERT INTO `base_logs` VALUES ('117054', '1', '用户登录', '1', '2018-12-05 07:53:20');
INSERT INTO `base_logs` VALUES ('117055', '5', '查询菜单', '1', '2018-12-05 07:55:19');
INSERT INTO `base_logs` VALUES ('117056', '1', '用户登录', '1', '2018-12-05 07:59:47');
INSERT INTO `base_logs` VALUES ('117057', '1', '用户登录', '1', '2018-12-05 07:59:56');
INSERT INTO `base_logs` VALUES ('117058', '1', '用户登录', '1', '2018-12-05 08:00:42');
INSERT INTO `base_logs` VALUES ('117059', '1', '用户登录', '1', '2018-12-05 08:01:47');
INSERT INTO `base_logs` VALUES ('117060', '1', '用户登录', '1', '2018-12-05 08:01:57');
INSERT INTO `base_logs` VALUES ('117061', '1', '用户登录', '1', '2018-12-05 08:16:37');
INSERT INTO `base_logs` VALUES ('117062', '1', '用户登录', '1', '2018-12-05 08:17:30');
INSERT INTO `base_logs` VALUES ('117063', '1', '用户登录', '1', '2018-12-05 08:18:10');
INSERT INTO `base_logs` VALUES ('117064', '5', '查询菜单', '1', '2018-12-05 08:18:10');
INSERT INTO `base_logs` VALUES ('117065', '5', '查询菜单', '1', '2018-12-05 08:31:11');
INSERT INTO `base_logs` VALUES ('117066', '1', '用户登录', '1', '2018-12-05 08:36:18');
INSERT INTO `base_logs` VALUES ('117067', '5', '查询菜单', '1', '2018-12-05 08:36:18');
INSERT INTO `base_logs` VALUES ('117068', '1', '用户登录', '1', '2018-12-05 08:36:37');
INSERT INTO `base_logs` VALUES ('117069', '5', '查询菜单', '1', '2018-12-05 08:36:37');
INSERT INTO `base_logs` VALUES ('117070', '5', '查询菜单', '1', '2018-12-05 08:37:24');
INSERT INTO `base_logs` VALUES ('117071', '5', '查询菜单', '1', '2018-12-05 08:38:23');
INSERT INTO `base_logs` VALUES ('117072', '1', '用户登录', '1', '2018-12-05 08:42:56');
INSERT INTO `base_logs` VALUES ('117073', '5', '查询菜单', '1', '2018-12-05 08:42:56');
INSERT INTO `base_logs` VALUES ('117074', '1', '用户登录', '1', '2018-12-05 08:43:45');
INSERT INTO `base_logs` VALUES ('117075', '5', '查询菜单', '1', '2018-12-05 08:43:45');
INSERT INTO `base_logs` VALUES ('117076', '5', '查询菜单', '1', '2018-12-05 08:44:52');
INSERT INTO `base_logs` VALUES ('117077', '1', '用户登录', '1', '2018-12-05 08:45:55');
INSERT INTO `base_logs` VALUES ('117078', '5', '查询菜单', '1', '2018-12-05 08:45:55');
INSERT INTO `base_logs` VALUES ('117079', '1', '用户登录', '1', '2018-12-05 08:46:17');
INSERT INTO `base_logs` VALUES ('117080', '5', '查询菜单', '1', '2018-12-05 08:46:17');
INSERT INTO `base_logs` VALUES ('117081', '1', '用户登录', '1', '2018-12-05 08:48:41');
INSERT INTO `base_logs` VALUES ('117082', '5', '查询菜单', '1', '2018-12-05 08:48:46');
INSERT INTO `base_logs` VALUES ('117083', '5', '查询角色', '1', '2018-12-05 08:48:47');
INSERT INTO `base_logs` VALUES ('117084', '5', '查询角色', '1', '2018-12-05 08:48:47');
INSERT INTO `base_logs` VALUES ('117085', '5', '查询管理员', '1', '2018-12-05 08:48:47');
INSERT INTO `base_logs` VALUES ('117086', '5', '查询系统日志', '1', '2018-12-05 08:48:48');
INSERT INTO `base_logs` VALUES ('117087', '1', '用户登录', '1', '2018-12-05 08:51:08');
INSERT INTO `base_logs` VALUES ('117088', '1', '用户登录', '1', '2018-12-05 08:51:59');
INSERT INTO `base_logs` VALUES ('117089', '5', '查询菜单', '1', '2018-12-05 08:52:02');
INSERT INTO `base_logs` VALUES ('117090', '5', '查询角色', '1', '2018-12-05 08:52:03');
INSERT INTO `base_logs` VALUES ('117091', '5', '查询角色', '1', '2018-12-05 08:52:03');
INSERT INTO `base_logs` VALUES ('117092', '5', '查询管理员', '1', '2018-12-05 08:52:04');
INSERT INTO `base_logs` VALUES ('117093', '5', '查询系统日志', '1', '2018-12-05 08:52:04');
INSERT INTO `base_logs` VALUES ('117094', '1', '用户登录', '1', '2018-12-05 09:07:53');
INSERT INTO `base_logs` VALUES ('117095', '1', '用户退出', '1', '2018-12-05 09:08:00');
INSERT INTO `base_logs` VALUES ('117096', '1', '用户登录', '1', '2018-12-05 09:16:58');
INSERT INTO `base_logs` VALUES ('117097', '5', '查询菜单', '1', '2018-12-05 09:17:01');
INSERT INTO `base_logs` VALUES ('117098', '5', '查询角色', '1', '2018-12-05 09:17:02');
INSERT INTO `base_logs` VALUES ('117099', '5', '查询角色', '1', '2018-12-05 09:17:03');
INSERT INTO `base_logs` VALUES ('117100', '5', '查询管理员', '1', '2018-12-05 09:17:03');
INSERT INTO `base_logs` VALUES ('117101', '5', '查询系统日志', '1', '2018-12-05 09:17:03');
INSERT INTO `base_logs` VALUES ('117102', '5', '资源库查看', '1', '2018-12-05 09:17:06');
INSERT INTO `base_logs` VALUES ('117103', '5', '资源库查看', '1', '2018-12-05 09:17:06');
INSERT INTO `base_logs` VALUES ('117104', '5', '分类查询', '1', '2018-12-05 09:17:07');
INSERT INTO `base_logs` VALUES ('117105', '5', '分类查询', '1', '2018-12-05 09:17:08');
INSERT INTO `base_logs` VALUES ('117106', '1', '用户退出', '1', '2018-12-05 09:17:17');
INSERT INTO `base_logs` VALUES ('117107', '1', '用户登录', '1', '2018-12-05 09:23:31');
INSERT INTO `base_logs` VALUES ('117108', '5', '查询菜单', '1', '2018-12-05 09:26:00');
INSERT INTO `base_logs` VALUES ('117109', '1', '用户登录', '1', '2018-12-05 09:26:19');
INSERT INTO `base_logs` VALUES ('117110', '5', '查询菜单', '1', '2018-12-05 09:26:21');
INSERT INTO `base_logs` VALUES ('117111', '5', '查询角色', '1', '2018-12-05 09:26:43');
INSERT INTO `base_logs` VALUES ('117112', '5', '查询菜单', '1', '2018-12-05 09:26:46');
INSERT INTO `base_logs` VALUES ('117113', '1', '用户登录', '1', '2018-12-05 09:27:55');
INSERT INTO `base_logs` VALUES ('117114', '5', '查询菜单', '1', '2018-12-05 09:27:57');
INSERT INTO `base_logs` VALUES ('117115', '5', '查询角色', '1', '2018-12-05 09:27:59');
INSERT INTO `base_logs` VALUES ('117116', '5', '查询菜单', '1', '2018-12-05 09:28:01');
INSERT INTO `base_logs` VALUES ('117117', '5', '资源库查看', '1', '2018-12-05 09:28:20');
INSERT INTO `base_logs` VALUES ('117118', '5', '查询菜单', '1', '2018-12-05 09:32:55');
INSERT INTO `base_logs` VALUES ('117119', '1', '用户登录', '1', '2018-12-10 01:31:07');
INSERT INTO `base_logs` VALUES ('117120', '5', '查询角色', '1', '2018-12-10 01:33:18');
INSERT INTO `base_logs` VALUES ('117121', '5', '查询菜单', '1', '2018-12-10 01:33:19');
INSERT INTO `base_logs` VALUES ('117122', '1', '用户登录', '1', '2018-12-10 01:47:12');
INSERT INTO `base_logs` VALUES ('117123', '1', '用户登录', '1', '2018-12-10 01:51:53');
INSERT INTO `base_logs` VALUES ('117124', '1', '用户登录', '1', '2018-12-10 01:52:27');
INSERT INTO `base_logs` VALUES ('117125', '1', '用户登录', '1', '2018-12-10 01:54:43');
INSERT INTO `base_logs` VALUES ('117126', '1', '用户登录', '1', '2018-12-10 01:55:38');
INSERT INTO `base_logs` VALUES ('117127', '1', '用户登录', '1', '2018-12-10 01:56:54');
INSERT INTO `base_logs` VALUES ('117128', '1', '用户登录', '1', '2018-12-10 01:57:36');
INSERT INTO `base_logs` VALUES ('117129', '1', '用户登录', '1', '2018-12-10 02:03:54');
INSERT INTO `base_logs` VALUES ('117130', '5', '查询菜单', '1', '2018-12-10 02:05:13');
INSERT INTO `base_logs` VALUES ('117131', '5', '查询角色', '1', '2018-12-10 02:05:13');
INSERT INTO `base_logs` VALUES ('117132', '5', '查询角色', '1', '2018-12-10 02:05:14');
INSERT INTO `base_logs` VALUES ('117133', '5', '查询管理员', '1', '2018-12-10 02:05:14');
INSERT INTO `base_logs` VALUES ('117134', '5', '查询系统日志', '1', '2018-12-10 02:05:14');
INSERT INTO `base_logs` VALUES ('117135', '5', '资源库查看', '1', '2018-12-10 02:05:17');
INSERT INTO `base_logs` VALUES ('117136', '1', '用户登录', '1', '2018-12-10 02:31:52');
INSERT INTO `base_logs` VALUES ('117137', '1', '用户登录', '1', '2018-12-10 02:34:40');
INSERT INTO `base_logs` VALUES ('117138', '1', '用户登录', '1', '2018-12-10 02:35:32');
INSERT INTO `base_logs` VALUES ('117139', '1', '用户登录', '1', '2018-12-10 02:36:48');
INSERT INTO `base_logs` VALUES ('117140', '5', '查询菜单', '1', '2018-12-10 02:36:59');
INSERT INTO `base_logs` VALUES ('117141', '5', '查询角色', '1', '2018-12-10 02:37:00');
INSERT INTO `base_logs` VALUES ('117142', '5', '查询角色', '1', '2018-12-10 02:37:01');
INSERT INTO `base_logs` VALUES ('117143', '5', '查询管理员', '1', '2018-12-10 02:37:01');
INSERT INTO `base_logs` VALUES ('117144', '5', '查询系统日志', '1', '2018-12-10 02:37:21');
INSERT INTO `base_logs` VALUES ('117145', '1', '用户登录', '1', '2018-12-10 02:39:07');
INSERT INTO `base_logs` VALUES ('117146', '5', '分类查询', '1', '2018-12-10 02:39:11');
INSERT INTO `base_logs` VALUES ('117147', '5', '分类查询', '1', '2018-12-10 02:39:12');
INSERT INTO `base_logs` VALUES ('117148', '5', '分类查询', '1', '2018-12-10 02:39:14');
INSERT INTO `base_logs` VALUES ('117149', '1', '用户登录', '1', '2018-12-10 03:15:00');
INSERT INTO `base_logs` VALUES ('117150', '5', '分类查询', '1', '2018-12-10 03:15:05');
INSERT INTO `base_logs` VALUES ('117151', '5', '分类查询', '1', '2018-12-10 03:15:06');
INSERT INTO `base_logs` VALUES ('117152', '5', '分类查询', '1', '2018-12-10 03:15:08');
INSERT INTO `base_logs` VALUES ('117153', '1', '用户登录', '1', '2018-12-10 03:29:26');
INSERT INTO `base_logs` VALUES ('117154', '5', '分类查询', '1', '2018-12-10 03:29:30');
INSERT INTO `base_logs` VALUES ('117155', '5', '分类查询', '1', '2018-12-10 03:29:37');
INSERT INTO `base_logs` VALUES ('117156', '1', '用户登录', '1', '2018-12-10 03:32:16');
INSERT INTO `base_logs` VALUES ('117157', '5', '分类查询', '1', '2018-12-10 03:32:19');
INSERT INTO `base_logs` VALUES ('117158', '5', '分类查询', '1', '2018-12-10 03:32:22');
INSERT INTO `base_logs` VALUES ('117159', '1', '用户登录', '1', '2018-12-10 05:23:06');
INSERT INTO `base_logs` VALUES ('117160', '5', '查询菜单', '1', '2018-12-10 05:23:08');
INSERT INTO `base_logs` VALUES ('117161', '5', '查询角色', '1', '2018-12-10 05:23:08');
INSERT INTO `base_logs` VALUES ('117162', '5', '查询角色', '1', '2018-12-10 05:23:09');
INSERT INTO `base_logs` VALUES ('117163', '5', '查询管理员', '1', '2018-12-10 05:23:09');
INSERT INTO `base_logs` VALUES ('117164', '3', '更新管理员状态', '1', '2018-12-10 05:23:20');
INSERT INTO `base_logs` VALUES ('117165', '5', '查询管理员', '1', '2018-12-10 05:23:22');
INSERT INTO `base_logs` VALUES ('117166', '5', '分类查询', '1', '2018-12-10 05:23:56');
INSERT INTO `base_logs` VALUES ('117167', '5', '分类查询', '1', '2018-12-10 05:23:59');
INSERT INTO `base_logs` VALUES ('117168', '1', '用户登录', '1', '2018-12-10 05:35:54');
INSERT INTO `base_logs` VALUES ('117169', '1', '用户登录', '1', '2018-12-10 05:50:10');
INSERT INTO `base_logs` VALUES ('117170', '5', '分类查询', '1', '2018-12-10 05:50:14');
INSERT INTO `base_logs` VALUES ('117171', '5', '分类查询', '1', '2018-12-10 05:50:20');
INSERT INTO `base_logs` VALUES ('117172', '1', '用户登录', '1', '2018-12-10 05:51:54');
INSERT INTO `base_logs` VALUES ('117173', '5', '分类查询', '1', '2018-12-10 05:51:57');
INSERT INTO `base_logs` VALUES ('117174', '5', '分类查询', '1', '2018-12-10 05:52:00');
INSERT INTO `base_logs` VALUES ('117175', '1', '用户登录', '1', '2018-12-10 06:05:10');
INSERT INTO `base_logs` VALUES ('117176', '5', '分类查询', '1', '2018-12-10 06:06:24');
INSERT INTO `base_logs` VALUES ('117177', '5', '分类查询', '1', '2018-12-10 06:06:26');
INSERT INTO `base_logs` VALUES ('117178', '1', '用户登录', '1', '2018-12-10 06:15:34');
INSERT INTO `base_logs` VALUES ('117179', '5', '分类查询', '1', '2018-12-10 06:15:46');
INSERT INTO `base_logs` VALUES ('117180', '5', '分类查询', '1', '2018-12-10 06:15:48');
INSERT INTO `base_logs` VALUES ('117181', '1', '用户登录', '1', '2018-12-10 06:21:26');
INSERT INTO `base_logs` VALUES ('117182', '1', '用户登录', '1', '2018-12-10 06:21:56');
INSERT INTO `base_logs` VALUES ('117183', '5', '分类查询', '1', '2018-12-10 06:22:10');
INSERT INTO `base_logs` VALUES ('117184', '5', '分类查询', '1', '2018-12-10 06:22:11');
INSERT INTO `base_logs` VALUES ('117185', '5', '分类查询', '1', '2018-12-10 06:22:16');
INSERT INTO `base_logs` VALUES ('117186', '1', '用户登录', '1', '2018-12-10 06:51:38');
INSERT INTO `base_logs` VALUES ('117187', '5', '分类查询', '1', '2018-12-10 06:51:43');
INSERT INTO `base_logs` VALUES ('117188', '5', '分类查询', '1', '2018-12-10 06:51:48');
INSERT INTO `base_logs` VALUES ('117189', '1', '用户登录', '1', '2018-12-10 06:53:29');
INSERT INTO `base_logs` VALUES ('117190', '5', '分类查询', '1', '2018-12-10 06:53:45');
INSERT INTO `base_logs` VALUES ('117191', '5', '分类查询', '1', '2018-12-10 06:53:47');
INSERT INTO `base_logs` VALUES ('117192', '5', '分类查询', '1', '2018-12-10 06:53:50');
INSERT INTO `base_logs` VALUES ('117193', '1', '用户登录', '1', '2018-12-10 06:54:40');
INSERT INTO `base_logs` VALUES ('117194', '5', '分类查询', '1', '2018-12-10 06:54:42');
INSERT INTO `base_logs` VALUES ('117195', '5', '分类查询', '1', '2018-12-10 06:54:44');
INSERT INTO `base_logs` VALUES ('117196', '1', '用户登录', '1', '2018-12-10 07:07:02');
INSERT INTO `base_logs` VALUES ('117197', '1', '用户登录', '1', '2018-12-10 07:09:23');
INSERT INTO `base_logs` VALUES ('117198', '1', '用户登录', '1', '2018-12-10 07:21:50');
INSERT INTO `base_logs` VALUES ('117199', '5', '分类查询', '1', '2018-12-10 07:22:19');
INSERT INTO `base_logs` VALUES ('117200', '5', '分类查询', '1', '2018-12-10 07:22:33');
INSERT INTO `base_logs` VALUES ('117201', '3', '修改了党员管理1条数据', '1', '2018-12-10 07:22:47');
INSERT INTO `base_logs` VALUES ('117202', '1', '用户登录', '1', '2018-12-10 08:38:50');
INSERT INTO `base_logs` VALUES ('117203', '1', '用户登录', '1', '2018-12-11 03:22:56');
INSERT INTO `base_logs` VALUES ('117204', '5', '查询菜单', '1', '2018-12-11 03:23:07');
INSERT INTO `base_logs` VALUES ('117205', '5', '查询角色', '1', '2018-12-11 03:23:08');
INSERT INTO `base_logs` VALUES ('117206', '5', '查询角色', '1', '2018-12-11 03:23:09');
INSERT INTO `base_logs` VALUES ('117207', '5', '查询管理员', '1', '2018-12-11 03:23:09');
INSERT INTO `base_logs` VALUES ('117208', '5', '查询系统日志', '1', '2018-12-11 03:23:10');
INSERT INTO `base_logs` VALUES ('117209', '5', '资源库查看', '1', '2018-12-11 03:23:12');
INSERT INTO `base_logs` VALUES ('117210', '5', '分类查询', '1', '2018-12-11 03:23:14');
INSERT INTO `base_logs` VALUES ('117211', '5', '分类查询', '1', '2018-12-11 03:23:15');
INSERT INTO `base_logs` VALUES ('117212', '5', '查询菜单', '1', '2018-12-11 03:23:26');
INSERT INTO `base_logs` VALUES ('117213', '5', '查询角色', '1', '2018-12-11 03:23:27');
INSERT INTO `base_logs` VALUES ('117214', '5', '查询角色', '1', '2018-12-11 03:23:27');
INSERT INTO `base_logs` VALUES ('117215', '5', '查询管理员', '1', '2018-12-11 03:23:27');
INSERT INTO `base_logs` VALUES ('117216', '5', '查询系统日志', '1', '2018-12-11 03:23:28');
INSERT INTO `base_logs` VALUES ('117217', '5', '资源库查看', '1', '2018-12-11 03:23:31');
INSERT INTO `base_logs` VALUES ('117218', '5', '分类查询', '1', '2018-12-11 03:23:35');
INSERT INTO `base_logs` VALUES ('117219', '5', '分类查询', '1', '2018-12-11 03:23:36');
INSERT INTO `base_logs` VALUES ('117220', '1', '用户登录', '1', '2018-12-11 05:10:44');
INSERT INTO `base_logs` VALUES ('117221', '5', '分类查询', '1', '2018-12-11 05:10:46');
INSERT INTO `base_logs` VALUES ('117222', '5', '分类查询', '1', '2018-12-11 05:10:47');
INSERT INTO `base_logs` VALUES ('117223', '1', '用户登录', '1', '2018-12-11 05:11:49');
INSERT INTO `base_logs` VALUES ('117224', '5', '分类查询', '1', '2018-12-11 05:11:52');
INSERT INTO `base_logs` VALUES ('117225', '1', '用户登录', '1', '2018-12-11 05:24:07');
INSERT INTO `base_logs` VALUES ('117226', '5', '分类查询', '1', '2018-12-11 05:24:09');
INSERT INTO `base_logs` VALUES ('117227', '1', '用户登录', '1', '2018-12-11 05:28:25');
INSERT INTO `base_logs` VALUES ('117228', '5', '分类查询', '1', '2018-12-11 05:28:27');
INSERT INTO `base_logs` VALUES ('117229', '1', '用户登录', '1', '2018-12-11 05:33:48');
INSERT INTO `base_logs` VALUES ('117230', '5', '分类查询', '1', '2018-12-11 05:33:50');
INSERT INTO `base_logs` VALUES ('117231', '1', '用户登录', '1', '2018-12-11 05:36:05');
INSERT INTO `base_logs` VALUES ('117232', '5', '分类查询', '1', '2018-12-11 05:36:07');
INSERT INTO `base_logs` VALUES ('117233', '1', '用户登录', '1', '2018-12-11 05:37:08');
INSERT INTO `base_logs` VALUES ('117234', '5', '分类查询', '1', '2018-12-11 05:37:16');
INSERT INTO `base_logs` VALUES ('117235', '1', '用户登录', '1', '2018-12-11 05:46:29');
INSERT INTO `base_logs` VALUES ('117236', '5', '分类查询', '1', '2018-12-11 05:46:32');
INSERT INTO `base_logs` VALUES ('117237', '1', '用户登录', '1', '2018-12-11 05:47:49');
INSERT INTO `base_logs` VALUES ('117238', '5', '分类查询', '1', '2018-12-11 05:47:51');
INSERT INTO `base_logs` VALUES ('117239', '5', '分类查询', '1', '2018-12-11 05:49:26');
INSERT INTO `base_logs` VALUES ('117240', '1', '用户登录', '1', '2018-12-11 05:51:55');
INSERT INTO `base_logs` VALUES ('117241', '5', '查询角色', '1', '2018-12-11 05:51:57');
INSERT INTO `base_logs` VALUES ('117242', '5', '查询菜单', '1', '2018-12-11 05:51:59');
INSERT INTO `base_logs` VALUES ('117243', '2', '新增菜单', '1', '2018-12-11 05:56:59');
INSERT INTO `base_logs` VALUES ('117244', '5', '查询菜单', '1', '2018-12-11 05:57:00');
INSERT INTO `base_logs` VALUES ('117245', '5', '查询角色', '1', '2018-12-11 05:57:03');
INSERT INTO `base_logs` VALUES ('117246', '5', '查询角色菜单', '1', '2018-12-11 05:57:04');
INSERT INTO `base_logs` VALUES ('117247', '3', '配置角色菜单', '1', '2018-12-11 05:57:07');
INSERT INTO `base_logs` VALUES ('117248', '5', '查询角色', '1', '2018-12-11 05:57:08');
INSERT INTO `base_logs` VALUES ('117249', '7', '富文本图片上传', '1', '2018-12-11 05:59:24');
INSERT INTO `base_logs` VALUES ('117250', '2', '新增了商品管理1条数据', '1', '2018-12-11 06:02:54');
INSERT INTO `base_logs` VALUES ('117251', '1', '用户登录', '1', '2018-12-11 06:03:34');
INSERT INTO `base_logs` VALUES ('117252', '5', '分类查询', '1', '2018-12-11 06:03:47');
INSERT INTO `base_logs` VALUES ('117253', '1', '用户登录', '1', '2018-12-11 06:22:50');
INSERT INTO `base_logs` VALUES ('117254', '5', '查询菜单', '1', '2018-12-11 06:22:51');
INSERT INTO `base_logs` VALUES ('117255', '5', '查询角色', '1', '2018-12-11 06:22:57');
INSERT INTO `base_logs` VALUES ('117256', '5', '查询角色', '1', '2018-12-11 06:22:58');
INSERT INTO `base_logs` VALUES ('117257', '5', '查询管理员', '1', '2018-12-11 06:22:58');
INSERT INTO `base_logs` VALUES ('117258', '5', '资源库查看', '1', '2018-12-11 06:23:01');
INSERT INTO `base_logs` VALUES ('117259', '5', '分类查询', '1', '2018-12-11 06:23:04');
INSERT INTO `base_logs` VALUES ('117260', '1', '用户登录', '1', '2018-12-12 04:06:40');
INSERT INTO `base_logs` VALUES ('117261', '1', '用户登录', '1', '2018-12-12 05:09:34');
INSERT INTO `base_logs` VALUES ('117262', '5', '分类查询', '1', '2018-12-12 05:09:36');
INSERT INTO `base_logs` VALUES ('117263', '1', '用户登录', '1', '2018-12-12 07:14:20');
INSERT INTO `base_logs` VALUES ('117264', '5', '查询菜单', '1', '2018-12-12 07:14:32');
INSERT INTO `base_logs` VALUES ('117265', '5', '查询角色', '1', '2018-12-12 07:14:33');
INSERT INTO `base_logs` VALUES ('117266', '1', '用户登录', '1', '2018-12-12 07:16:40');
INSERT INTO `base_logs` VALUES ('117267', '1', '用户登录', '1', '2018-12-12 07:26:21');
INSERT INTO `base_logs` VALUES ('117268', '5', '查询菜单', '1', '2018-12-12 07:26:29');
INSERT INTO `base_logs` VALUES ('117269', '5', '查询角色', '1', '2018-12-12 07:26:33');
INSERT INTO `base_logs` VALUES ('117270', '5', '查询角色', '1', '2018-12-12 07:26:33');
INSERT INTO `base_logs` VALUES ('117271', '5', '查询角色', '1', '2018-12-12 07:26:34');
INSERT INTO `base_logs` VALUES ('117272', '5', '查询管理员', '1', '2018-12-12 07:26:34');
INSERT INTO `base_logs` VALUES ('117273', '5', '查询系统日志', '1', '2018-12-12 07:26:35');
INSERT INTO `base_logs` VALUES ('117274', '5', '资源库查看', '1', '2018-12-12 07:26:37');
INSERT INTO `base_logs` VALUES ('117275', '1', '用户登录', '1', '2018-12-12 07:31:48');
INSERT INTO `base_logs` VALUES ('117276', '5', '查询菜单', '1', '2018-12-12 07:31:58');
INSERT INTO `base_logs` VALUES ('117277', '5', '查询角色', '1', '2018-12-12 07:31:59');
INSERT INTO `base_logs` VALUES ('117278', '5', '查询角色', '1', '2018-12-12 07:32:00');
INSERT INTO `base_logs` VALUES ('117279', '5', '查询管理员', '1', '2018-12-12 07:32:00');
INSERT INTO `base_logs` VALUES ('117280', '5', '查询系统日志', '1', '2018-12-12 07:32:00');
INSERT INTO `base_logs` VALUES ('117281', '5', '查询角色', '1', '2018-12-12 07:32:01');
INSERT INTO `base_logs` VALUES ('117282', '5', '查询角色', '1', '2018-12-12 07:32:01');
INSERT INTO `base_logs` VALUES ('117283', '5', '查询管理员', '1', '2018-12-12 07:32:01');
INSERT INTO `base_logs` VALUES ('117284', '5', '查询角色', '1', '2018-12-12 07:32:02');
INSERT INTO `base_logs` VALUES ('117285', '1', '用户登录', '1', '2018-12-12 07:33:42');
INSERT INTO `base_logs` VALUES ('117286', '5', '查询系统日志', '1', '2018-12-12 07:33:44');
INSERT INTO `base_logs` VALUES ('117287', '5', '查询角色', '1', '2018-12-12 07:33:48');
INSERT INTO `base_logs` VALUES ('117288', '5', '查询管理员', '1', '2018-12-12 07:33:48');
INSERT INTO `base_logs` VALUES ('117289', '5', '查询角色', '1', '2018-12-12 07:33:48');
INSERT INTO `base_logs` VALUES ('117290', '1', '用户登录', '1', '2018-12-12 07:34:52');
INSERT INTO `base_logs` VALUES ('117291', '5', '查询系统日志', '1', '2018-12-12 07:34:54');
INSERT INTO `base_logs` VALUES ('117292', '5', '查询角色', '1', '2018-12-12 07:34:55');
INSERT INTO `base_logs` VALUES ('117293', '5', '查询角色菜单', '1', '2018-12-12 07:34:56');
INSERT INTO `base_logs` VALUES ('117294', '5', '查询角色菜单', '1', '2018-12-12 07:35:03');
INSERT INTO `base_logs` VALUES ('117295', '3', '配置角色菜单', '1', '2018-12-12 07:35:04');
INSERT INTO `base_logs` VALUES ('117296', '5', '查询角色', '1', '2018-12-12 07:35:05');
INSERT INTO `base_logs` VALUES ('117297', '1', '用户登录', '1', '2018-12-12 07:49:46');
INSERT INTO `base_logs` VALUES ('117298', '5', '分类查询', '1', '2018-12-12 07:50:59');
INSERT INTO `base_logs` VALUES ('117299', '5', '分类查询', '1', '2018-12-12 07:50:59');
INSERT INTO `base_logs` VALUES ('117300', '5', '分类查询', '1', '2018-12-12 07:51:03');
INSERT INTO `base_logs` VALUES ('117301', '1', '用户登录', '1', '2018-12-13 01:19:52');
INSERT INTO `base_logs` VALUES ('117302', '5', '查询菜单', '1', '2018-12-13 01:20:05');
INSERT INTO `base_logs` VALUES ('117303', '5', '查询角色', '1', '2018-12-13 01:20:10');
INSERT INTO `base_logs` VALUES ('117304', '5', '查询菜单', '1', '2018-12-13 01:20:11');
INSERT INTO `base_logs` VALUES ('117305', '5', '查询角色', '1', '2018-12-13 01:20:12');
INSERT INTO `base_logs` VALUES ('117306', '5', '查询角色', '1', '2018-12-13 01:20:12');
INSERT INTO `base_logs` VALUES ('117307', '5', '查询管理员', '1', '2018-12-13 01:20:12');
INSERT INTO `base_logs` VALUES ('117308', '5', '查询系统日志', '1', '2018-12-13 01:20:13');
INSERT INTO `base_logs` VALUES ('117309', '1', '用户登录', '1', '2018-12-13 01:27:51');
INSERT INTO `base_logs` VALUES ('117310', '1', '用户登录', '1', '2018-12-13 07:30:47');
INSERT INTO `base_logs` VALUES ('117311', '5', '查询菜单', '1', '2018-12-13 07:40:16');
INSERT INTO `base_logs` VALUES ('117312', '5', '查询角色', '1', '2018-12-13 07:40:17');
INSERT INTO `base_logs` VALUES ('117313', '5', '查询角色', '1', '2018-12-13 07:40:17');
INSERT INTO `base_logs` VALUES ('117314', '5', '查询管理员', '1', '2018-12-13 07:40:17');
INSERT INTO `base_logs` VALUES ('117315', '5', '查询系统日志', '1', '2018-12-13 07:40:18');
INSERT INTO `base_logs` VALUES ('117316', '5', '资源库查看', '1', '2018-12-13 07:40:19');
INSERT INTO `base_logs` VALUES ('117317', '5', '分类查询', '1', '2018-12-13 07:40:21');
INSERT INTO `base_logs` VALUES ('117318', '5', '分类查询', '1', '2018-12-13 07:40:22');
INSERT INTO `base_logs` VALUES ('117319', '1', '用户登录', '1', '2018-12-13 09:08:50');
INSERT INTO `base_logs` VALUES ('117320', '1', '用户登录', '1', '2018-12-14 05:53:33');
INSERT INTO `base_logs` VALUES ('117321', '5', '查询菜单', '1', '2018-12-14 05:53:50');
INSERT INTO `base_logs` VALUES ('117322', '5', '查询菜单', '1', '2018-12-14 05:55:10');
INSERT INTO `base_logs` VALUES ('117323', '3', '更新菜单', '1', '2018-12-14 06:15:08');
INSERT INTO `base_logs` VALUES ('117324', '5', '查询菜单', '1', '2018-12-14 06:15:09');
INSERT INTO `base_logs` VALUES ('117325', '3', '更新菜单', '1', '2018-12-14 06:15:47');
INSERT INTO `base_logs` VALUES ('117326', '5', '查询菜单', '1', '2018-12-14 06:15:49');
INSERT INTO `base_logs` VALUES ('117327', '5', '查询菜单', '1', '2018-12-14 06:41:26');
INSERT INTO `base_logs` VALUES ('117328', '1', '用户登录', '1', '2018-12-14 06:42:32');
INSERT INTO `base_logs` VALUES ('117329', '5', '查询菜单', '1', '2018-12-14 06:42:36');
INSERT INTO `base_logs` VALUES ('117330', '1', '用户登录', '1', '2018-12-14 06:45:23');
INSERT INTO `base_logs` VALUES ('117331', '5', '查询菜单', '1', '2018-12-14 06:45:26');
INSERT INTO `base_logs` VALUES ('117332', '1', '用户登录', '1', '2018-12-14 06:46:04');
INSERT INTO `base_logs` VALUES ('117333', '5', '查询菜单', '1', '2018-12-14 06:46:06');
INSERT INTO `base_logs` VALUES ('117334', '1', '用户登录', '1', '2018-12-14 06:49:24');
INSERT INTO `base_logs` VALUES ('117335', '5', '查询菜单', '1', '2018-12-14 06:49:26');
INSERT INTO `base_logs` VALUES ('117336', '1', '用户登录', '1', '2018-12-14 06:51:37');
INSERT INTO `base_logs` VALUES ('117337', '5', '查询菜单', '1', '2018-12-14 06:51:42');
INSERT INTO `base_logs` VALUES ('117338', '1', '用户登录', '1', '2018-12-14 06:59:57');
INSERT INTO `base_logs` VALUES ('117339', '5', '查询菜单', '1', '2018-12-14 06:59:59');
INSERT INTO `base_logs` VALUES ('117340', '5', '查询菜单', '1', '2018-12-14 07:12:02');
INSERT INTO `base_logs` VALUES ('117341', '1', '用户登录', '1', '2018-12-14 07:29:50');
INSERT INTO `base_logs` VALUES ('117342', '5', '查询菜单', '1', '2018-12-14 07:29:52');
INSERT INTO `base_logs` VALUES ('117343', '1', '用户登录', '1', '2018-12-14 07:31:09');
INSERT INTO `base_logs` VALUES ('117344', '5', '查询角色', '1', '2018-12-14 07:31:12');
INSERT INTO `base_logs` VALUES ('117345', '5', '查询管理员', '1', '2018-12-14 07:31:12');
INSERT INTO `base_logs` VALUES ('117346', '5', '查询菜单', '1', '2018-12-14 07:31:14');
INSERT INTO `base_logs` VALUES ('117347', '1', '用户登录', '1', '2018-12-14 07:31:22');
INSERT INTO `base_logs` VALUES ('117348', '5', '查询菜单', '1', '2018-12-14 07:31:24');
INSERT INTO `base_logs` VALUES ('117349', '1', '用户登录', '1', '2018-12-14 07:37:47');
INSERT INTO `base_logs` VALUES ('117350', '5', '查询菜单', '1', '2018-12-14 07:37:49');
INSERT INTO `base_logs` VALUES ('117351', '1', '用户登录', '1', '2018-12-14 07:38:27');
INSERT INTO `base_logs` VALUES ('117352', '5', '查询菜单', '1', '2018-12-14 07:38:30');
INSERT INTO `base_logs` VALUES ('117353', '1', '用户登录', '1', '2018-12-14 07:40:25');
INSERT INTO `base_logs` VALUES ('117354', '5', '查询菜单', '1', '2018-12-14 07:40:28');
INSERT INTO `base_logs` VALUES ('117355', '1', '用户登录', '1', '2018-12-14 07:41:07');
INSERT INTO `base_logs` VALUES ('117356', '5', '查询菜单', '1', '2018-12-14 07:41:09');
INSERT INTO `base_logs` VALUES ('117357', '1', '用户登录', '1', '2018-12-14 07:43:08');
INSERT INTO `base_logs` VALUES ('117358', '5', '查询菜单', '1', '2018-12-14 07:43:14');
INSERT INTO `base_logs` VALUES ('117359', '1', '用户登录', '1', '2018-12-14 08:06:51');
INSERT INTO `base_logs` VALUES ('117360', '5', '查询菜单', '1', '2018-12-14 08:06:53');
INSERT INTO `base_logs` VALUES ('117361', '1', '用户登录', '1', '2018-12-14 08:07:02');
INSERT INTO `base_logs` VALUES ('117362', '5', '查询菜单', '1', '2018-12-14 08:07:03');
INSERT INTO `base_logs` VALUES ('117363', '5', '查询菜单', '1', '2018-12-14 08:12:47');
INSERT INTO `base_logs` VALUES ('117364', '1', '用户登录', '1', '2018-12-14 08:21:31');
INSERT INTO `base_logs` VALUES ('117365', '5', '查询菜单', '1', '2018-12-14 08:21:33');
INSERT INTO `base_logs` VALUES ('117366', '1', '用户登录', '1', '2018-12-14 08:21:56');
INSERT INTO `base_logs` VALUES ('117367', '5', '查询菜单', '1', '2018-12-14 08:21:57');
INSERT INTO `base_logs` VALUES ('117368', '1', '用户登录', '1', '2018-12-14 08:22:45');
INSERT INTO `base_logs` VALUES ('117369', '5', '查询菜单', '1', '2018-12-14 08:22:49');
INSERT INTO `base_logs` VALUES ('117370', '1', '用户登录', '1', '2018-12-14 08:28:54');
INSERT INTO `base_logs` VALUES ('117371', '5', '查询菜单', '1', '2018-12-14 08:28:57');
INSERT INTO `base_logs` VALUES ('117372', '1', '用户登录', '1', '2018-12-14 08:34:43');
INSERT INTO `base_logs` VALUES ('117373', '5', '查询角色', '1', '2018-12-14 08:34:45');
INSERT INTO `base_logs` VALUES ('117374', '5', '查询菜单', '1', '2018-12-14 08:34:45');
INSERT INTO `base_logs` VALUES ('117375', '1', '用户登录', '1', '2018-12-14 08:36:21');
INSERT INTO `base_logs` VALUES ('117376', '5', '查询菜单', '1', '2018-12-14 08:36:23');
INSERT INTO `base_logs` VALUES ('117377', '1', '用户登录', '1', '2018-12-14 08:42:21');
INSERT INTO `base_logs` VALUES ('117378', '5', '查询菜单', '1', '2018-12-14 08:42:22');
INSERT INTO `base_logs` VALUES ('117379', '1', '用户登录', '1', '2018-12-14 08:43:20');
INSERT INTO `base_logs` VALUES ('117380', '5', '查询菜单', '1', '2018-12-14 08:43:22');
INSERT INTO `base_logs` VALUES ('117381', '1', '用户登录', '1', '2018-12-14 08:43:32');
INSERT INTO `base_logs` VALUES ('117382', '5', '查询菜单', '1', '2018-12-14 08:43:34');
INSERT INTO `base_logs` VALUES ('117383', '1', '用户登录', '1', '2018-12-14 08:50:05');
INSERT INTO `base_logs` VALUES ('117384', '5', '查询菜单', '1', '2018-12-14 08:50:07');
INSERT INTO `base_logs` VALUES ('117385', '1', '用户登录', '1', '2018-12-14 09:00:25');
INSERT INTO `base_logs` VALUES ('117386', '5', '查询菜单', '1', '2018-12-14 09:00:27');
INSERT INTO `base_logs` VALUES ('117387', '1', '用户登录', '1', '2018-12-14 09:07:27');
INSERT INTO `base_logs` VALUES ('117388', '5', '查询菜单', '1', '2018-12-14 09:07:28');
INSERT INTO `base_logs` VALUES ('117389', '3', '更新菜单', '1', '2018-12-14 09:07:55');
INSERT INTO `base_logs` VALUES ('117390', '1', '用户登录', '1', '2018-12-14 09:09:36');
INSERT INTO `base_logs` VALUES ('117391', '5', '查询菜单', '1', '2018-12-14 09:09:38');
INSERT INTO `base_logs` VALUES ('117392', '3', '更新菜单', '1', '2018-12-14 09:10:15');
INSERT INTO `base_logs` VALUES ('117393', '1', '用户登录', '1', '2018-12-14 09:13:02');
INSERT INTO `base_logs` VALUES ('117394', '5', '查询菜单', '1', '2018-12-14 09:13:04');
INSERT INTO `base_logs` VALUES ('117395', '3', '更新菜单', '1', '2018-12-14 09:13:24');
INSERT INTO `base_logs` VALUES ('117396', '5', '查询菜单', '1', '2018-12-14 09:13:26');
INSERT INTO `base_logs` VALUES ('117397', '1', '用户登录', '1', '2018-12-14 09:21:51');
INSERT INTO `base_logs` VALUES ('117398', '5', '查询菜单', '1', '2018-12-14 09:21:53');
INSERT INTO `base_logs` VALUES ('117399', '1', '用户登录', '1', '2018-12-14 09:22:06');
INSERT INTO `base_logs` VALUES ('117400', '5', '查询菜单', '1', '2018-12-14 09:22:08');
INSERT INTO `base_logs` VALUES ('117401', '3', '更新菜单', '1', '2018-12-14 09:22:18');
INSERT INTO `base_logs` VALUES ('117402', '5', '查询菜单', '1', '2018-12-14 09:22:19');
INSERT INTO `base_logs` VALUES ('117403', '1', '用户登录', '1', '2018-12-14 09:23:42');
INSERT INTO `base_logs` VALUES ('117404', '5', '查询菜单', '1', '2018-12-14 09:23:44');
INSERT INTO `base_logs` VALUES ('117405', '3', '更新菜单', '1', '2018-12-14 09:24:07');
INSERT INTO `base_logs` VALUES ('117406', '5', '查询菜单', '1', '2018-12-14 09:24:09');
INSERT INTO `base_logs` VALUES ('117407', '3', '更新菜单', '1', '2018-12-14 09:25:33');
INSERT INTO `base_logs` VALUES ('117408', '5', '查询菜单', '1', '2018-12-14 09:25:34');
INSERT INTO `base_logs` VALUES ('117409', '5', '查询菜单', '1', '2018-12-14 09:26:20');
INSERT INTO `base_logs` VALUES ('117410', '3', '更新菜单', '1', '2018-12-14 09:29:27');
INSERT INTO `base_logs` VALUES ('117411', '5', '查询菜单', '1', '2018-12-14 09:29:29');
INSERT INTO `base_logs` VALUES ('117412', '1', '用户登录', '1', '2018-12-14 09:33:22');
INSERT INTO `base_logs` VALUES ('117413', '5', '查询菜单', '1', '2018-12-14 09:33:24');
INSERT INTO `base_logs` VALUES ('117414', '1', '用户登录', '1', '2018-12-14 09:34:53');
INSERT INTO `base_logs` VALUES ('117415', '5', '查询菜单', '1', '2018-12-14 09:34:56');
INSERT INTO `base_logs` VALUES ('117416', '3', '更新菜单', '1', '2018-12-14 09:35:05');
INSERT INTO `base_logs` VALUES ('117417', '5', '查询菜单', '1', '2018-12-14 09:35:15');
INSERT INTO `base_logs` VALUES ('117418', '1', '用户登录', '1', '2018-12-17 01:29:11');
INSERT INTO `base_logs` VALUES ('117419', '5', '分类查询', '1', '2018-12-17 01:29:13');
INSERT INTO `base_logs` VALUES ('117420', '5', '查询菜单', '1', '2018-12-17 01:29:16');
INSERT INTO `base_logs` VALUES ('117421', '3', '更新菜单', '1', '2018-12-17 01:29:42');
INSERT INTO `base_logs` VALUES ('117422', '5', '查询菜单', '1', '2018-12-17 01:29:43');
INSERT INTO `base_logs` VALUES ('117423', '1', '用户登录', '1', '2018-12-17 01:29:56');
INSERT INTO `base_logs` VALUES ('117424', '5', '查询菜单', '1', '2018-12-17 01:29:58');
INSERT INTO `base_logs` VALUES ('117425', '3', '更新菜单', '1', '2018-12-17 01:30:05');
INSERT INTO `base_logs` VALUES ('117426', '5', '查询菜单', '1', '2018-12-17 01:30:06');
INSERT INTO `base_logs` VALUES ('117427', '3', '更新菜单', '1', '2018-12-17 01:30:49');
INSERT INTO `base_logs` VALUES ('117428', '5', '查询菜单', '1', '2018-12-17 01:30:52');
INSERT INTO `base_logs` VALUES ('117429', '1', '用户登录', '1', '2018-12-17 01:35:29');
INSERT INTO `base_logs` VALUES ('117430', '5', '查询菜单', '1', '2018-12-17 01:35:33');
INSERT INTO `base_logs` VALUES ('117431', '3', '更新菜单', '1', '2018-12-17 01:35:47');
INSERT INTO `base_logs` VALUES ('117432', '5', '查询菜单', '1', '2018-12-17 01:35:49');
INSERT INTO `base_logs` VALUES ('117433', '1', '用户登录', '1', '2018-12-17 01:37:15');
INSERT INTO `base_logs` VALUES ('117434', '5', '查询菜单', '1', '2018-12-17 01:37:26');
INSERT INTO `base_logs` VALUES ('117435', '3', '更新菜单', '1', '2018-12-17 01:37:40');
INSERT INTO `base_logs` VALUES ('117436', '5', '查询菜单', '1', '2018-12-17 01:37:42');
INSERT INTO `base_logs` VALUES ('117437', '5', '查询角色', '1', '2018-12-17 01:46:09');
INSERT INTO `base_logs` VALUES ('117438', '5', '查询角色菜单', '1', '2018-12-17 01:46:11');
INSERT INTO `base_logs` VALUES ('117439', '5', '分类查询', '1', '2018-12-17 01:46:30');
INSERT INTO `base_logs` VALUES ('117440', '5', '查询菜单', '1', '2018-12-17 02:00:25');
INSERT INTO `base_logs` VALUES ('117441', '5', '查询角色', '1', '2018-12-17 02:01:15');
INSERT INTO `base_logs` VALUES ('117442', '5', '查询角色', '1', '2018-12-17 02:01:18');
INSERT INTO `base_logs` VALUES ('117443', '5', '查询管理员', '1', '2018-12-17 02:01:18');
INSERT INTO `base_logs` VALUES ('117444', '5', '查询角色', '1', '2018-12-17 02:01:19');
INSERT INTO `base_logs` VALUES ('117445', '5', '查询菜单', '1', '2018-12-17 02:02:40');
INSERT INTO `base_logs` VALUES ('117446', '1', '用户登录', '1', '2018-12-17 02:10:20');
INSERT INTO `base_logs` VALUES ('117447', '5', '查询菜单', '1', '2018-12-17 02:10:25');
INSERT INTO `base_logs` VALUES ('117448', '3', '更新菜单', '1', '2018-12-17 02:11:08');
INSERT INTO `base_logs` VALUES ('117449', '5', '查询菜单', '1', '2018-12-17 02:11:09');
INSERT INTO `base_logs` VALUES ('117450', '2', '新增菜单', '1', '2018-12-17 02:11:47');
INSERT INTO `base_logs` VALUES ('117451', '5', '查询角色', '1', '2018-12-17 02:11:53');
INSERT INTO `base_logs` VALUES ('117452', '5', '查询角色', '1', '2018-12-17 02:11:59');
INSERT INTO `base_logs` VALUES ('117453', '1', '用户登录', '1', '2018-12-17 02:40:33');
INSERT INTO `base_logs` VALUES ('117454', '5', '查询菜单', '1', '2018-12-17 02:40:44');
INSERT INTO `base_logs` VALUES ('117455', '1', '用户登录', '1', '2018-12-17 02:42:06');
INSERT INTO `base_logs` VALUES ('117456', '5', '查询菜单', '1', '2018-12-17 02:42:08');
INSERT INTO `base_logs` VALUES ('117457', '1', '用户登录', '1', '2018-12-17 03:04:24');
INSERT INTO `base_logs` VALUES ('117458', '5', '查询菜单', '1', '2018-12-17 03:04:26');
INSERT INTO `base_logs` VALUES ('117459', '1', '用户登录', '1', '2018-12-17 03:07:36');
INSERT INTO `base_logs` VALUES ('117460', '5', '查询菜单', '1', '2018-12-17 03:07:37');
INSERT INTO `base_logs` VALUES ('117461', '1', '用户登录', '1', '2018-12-17 03:09:27');
INSERT INTO `base_logs` VALUES ('117462', '5', '查询菜单', '1', '2018-12-17 03:09:29');
INSERT INTO `base_logs` VALUES ('117463', '1', '用户登录', '1', '2018-12-17 03:14:03');
INSERT INTO `base_logs` VALUES ('117464', '5', '查询菜单', '1', '2018-12-17 03:14:05');
INSERT INTO `base_logs` VALUES ('117465', '1', '用户登录', '1', '2018-12-17 03:21:21');
INSERT INTO `base_logs` VALUES ('117466', '5', '查询菜单', '1', '2018-12-17 03:21:23');
INSERT INTO `base_logs` VALUES ('117467', '5', '查询菜单', '1', '2018-12-17 03:22:06');
INSERT INTO `base_logs` VALUES ('117468', '1', '用户登录', '1', '2018-12-17 03:32:21');
INSERT INTO `base_logs` VALUES ('117469', '5', '查询菜单', '1', '2018-12-17 03:32:22');
INSERT INTO `base_logs` VALUES ('117470', '1', '用户登录', '1', '2018-12-17 03:32:50');
INSERT INTO `base_logs` VALUES ('117471', '5', '查询菜单', '1', '2018-12-17 03:32:51');
INSERT INTO `base_logs` VALUES ('117472', '3', '更新菜单', '1', '2018-12-17 03:33:04');
INSERT INTO `base_logs` VALUES ('117473', '5', '查询菜单', '1', '2018-12-17 03:33:05');
INSERT INTO `base_logs` VALUES ('117474', '1', '用户登录', '1', '2018-12-17 03:42:24');
INSERT INTO `base_logs` VALUES ('117475', '5', '查询菜单', '1', '2018-12-17 03:42:25');
INSERT INTO `base_logs` VALUES ('117476', '1', '用户登录', '1', '2018-12-17 03:49:07');
INSERT INTO `base_logs` VALUES ('117477', '5', '查询菜单', '1', '2018-12-17 03:49:09');
INSERT INTO `base_logs` VALUES ('117478', '1', '用户登录', '1', '2018-12-17 03:50:58');
INSERT INTO `base_logs` VALUES ('117479', '5', '查询菜单', '1', '2018-12-17 03:51:00');
INSERT INTO `base_logs` VALUES ('117480', '1', '用户登录', '1', '2018-12-17 05:12:19');
INSERT INTO `base_logs` VALUES ('117481', '5', '查询菜单', '1', '2018-12-17 05:12:20');
INSERT INTO `base_logs` VALUES ('117482', '1', '用户登录', '1', '2018-12-17 05:21:29');
INSERT INTO `base_logs` VALUES ('117483', '5', '查询菜单', '1', '2018-12-17 05:21:30');
INSERT INTO `base_logs` VALUES ('117484', '1', '用户登录', '1', '2018-12-17 08:30:21');
INSERT INTO `base_logs` VALUES ('117485', '5', '查询菜单', '1', '2018-12-17 08:30:23');
INSERT INTO `base_logs` VALUES ('117486', '1', '用户登录', '1', '2018-12-17 08:34:18');
INSERT INTO `base_logs` VALUES ('117487', '5', '查询菜单', '1', '2018-12-17 08:34:20');
INSERT INTO `base_logs` VALUES ('117488', '3', '更新菜单', '1', '2018-12-17 08:34:32');
INSERT INTO `base_logs` VALUES ('117489', '5', '查询菜单', '1', '2018-12-17 08:34:34');
INSERT INTO `base_logs` VALUES ('117490', '3', '更新菜单', '1', '2018-12-17 08:34:51');
INSERT INTO `base_logs` VALUES ('117491', '5', '查询菜单', '1', '2018-12-17 08:34:52');
INSERT INTO `base_logs` VALUES ('117492', '1', '用户登录', '1', '2018-12-17 08:36:13');
INSERT INTO `base_logs` VALUES ('117493', '5', '查询菜单', '1', '2018-12-17 08:36:14');
INSERT INTO `base_logs` VALUES ('117494', '1', '用户登录', '1', '2018-12-17 08:37:25');
INSERT INTO `base_logs` VALUES ('117495', '5', '查询菜单', '1', '2018-12-17 08:37:27');
INSERT INTO `base_logs` VALUES ('117496', '1', '用户登录', '1', '2018-12-17 08:40:48');
INSERT INTO `base_logs` VALUES ('117497', '5', '查询菜单', '1', '2018-12-17 08:40:50');
INSERT INTO `base_logs` VALUES ('117498', '1', '用户登录', '1', '2018-12-17 16:43:00');
INSERT INTO `base_logs` VALUES ('117499', '5', '查询菜单', '1', '2018-12-17 16:43:03');
INSERT INTO `base_logs` VALUES ('117500', '5', '查询角色', '1', '2018-12-17 16:43:06');
INSERT INTO `base_logs` VALUES ('117501', '5', '查询菜单', '1', '2018-12-17 16:43:07');
INSERT INTO `base_logs` VALUES ('117502', '5', '查询角色', '1', '2018-12-17 16:43:23');
INSERT INTO `base_logs` VALUES ('117503', '5', '查询菜单', '1', '2018-12-17 16:43:25');
INSERT INTO `base_logs` VALUES ('117504', '1', '用户登录', '1', '2018-12-17 16:44:30');
INSERT INTO `base_logs` VALUES ('117505', '5', '查询菜单', '1', '2018-12-17 16:44:32');
INSERT INTO `base_logs` VALUES ('117506', '5', '查询角色', '1', '2018-12-17 16:44:33');
INSERT INTO `base_logs` VALUES ('117507', '5', '查询角色', '1', '2018-12-17 16:44:33');
INSERT INTO `base_logs` VALUES ('117508', '5', '查询管理员', '1', '2018-12-17 16:44:33');
INSERT INTO `base_logs` VALUES ('117509', '5', '查询系统日志', '1', '2018-12-17 16:44:34');
INSERT INTO `base_logs` VALUES ('117510', '5', '资源库查看', '1', '2018-12-17 16:44:37');
INSERT INTO `base_logs` VALUES ('117511', '5', '查询角色', '1', '2018-12-17 16:44:39');
INSERT INTO `base_logs` VALUES ('117512', '5', '查询菜单', '1', '2018-12-17 16:44:40');
INSERT INTO `base_logs` VALUES ('117513', '1', '用户登录', '1', '2018-12-17 16:47:23');
INSERT INTO `base_logs` VALUES ('117514', '5', '查询菜单', '1', '2018-12-17 16:47:28');
INSERT INTO `base_logs` VALUES ('117515', '1', '用户登录', '1', '2018-12-17 08:50:09');
INSERT INTO `base_logs` VALUES ('117516', '5', '查询菜单', '1', '2018-12-17 08:50:13');
INSERT INTO `base_logs` VALUES ('117517', '3', '更新菜单', '1', '2018-12-17 08:50:40');
INSERT INTO `base_logs` VALUES ('117518', '5', '查询菜单', '1', '2018-12-17 08:50:41');
INSERT INTO `base_logs` VALUES ('117519', '3', '更新菜单', '1', '2018-12-17 08:53:16');
INSERT INTO `base_logs` VALUES ('117520', '5', '查询菜单', '1', '2018-12-17 08:53:17');
INSERT INTO `base_logs` VALUES ('117521', '3', '更新菜单', '1', '2018-12-17 08:53:37');
INSERT INTO `base_logs` VALUES ('117522', '5', '查询菜单', '1', '2018-12-17 08:53:39');
INSERT INTO `base_logs` VALUES ('117523', '1', '用户登录', '1', '2018-12-17 08:54:53');
INSERT INTO `base_logs` VALUES ('117524', '5', '查询菜单', '1', '2018-12-17 08:54:54');
INSERT INTO `base_logs` VALUES ('117525', '3', '更新菜单', '1', '2018-12-17 08:55:01');
INSERT INTO `base_logs` VALUES ('117526', '5', '查询菜单', '1', '2018-12-17 08:55:02');
INSERT INTO `base_logs` VALUES ('117527', '5', '分类查询', '1', '2018-12-17 08:55:14');
INSERT INTO `base_logs` VALUES ('117528', '1', '用户登录', '1', '2018-12-17 08:57:43');
INSERT INTO `base_logs` VALUES ('117529', '5', '查询菜单', '1', '2018-12-17 08:57:45');
INSERT INTO `base_logs` VALUES ('117530', '1', '用户登录', '1', '2018-12-17 09:00:06');
INSERT INTO `base_logs` VALUES ('117531', '5', '查询菜单', '1', '2018-12-17 09:00:09');
INSERT INTO `base_logs` VALUES ('117532', '1', '用户登录', '1', '2018-12-17 09:01:26');
INSERT INTO `base_logs` VALUES ('117533', '5', '查询菜单', '1', '2018-12-17 09:01:28');
INSERT INTO `base_logs` VALUES ('117534', '1', '用户登录', '1', '2018-12-17 09:01:38');
INSERT INTO `base_logs` VALUES ('117535', '5', '查询系统日志', '1', '2018-12-17 09:01:39');
INSERT INTO `base_logs` VALUES ('117536', '5', '查询菜单', '1', '2018-12-17 09:01:40');
INSERT INTO `base_logs` VALUES ('117537', '3', '更新菜单', '1', '2018-12-17 09:01:52');
INSERT INTO `base_logs` VALUES ('117538', '5', '查询菜单', '1', '2018-12-17 09:01:53');
INSERT INTO `base_logs` VALUES ('117539', '1', '用户登录', '1', '2018-12-17 09:03:28');
INSERT INTO `base_logs` VALUES ('117540', '5', '分类查询', '1', '2018-12-17 09:03:32');
INSERT INTO `base_logs` VALUES ('117541', '3', '更新分类', '1', '2018-12-17 09:03:41');
INSERT INTO `base_logs` VALUES ('117542', '5', '分类查询', '1', '2018-12-17 09:03:41');
INSERT INTO `base_logs` VALUES ('117543', '5', '查询菜单', '1', '2018-12-17 09:03:57');
INSERT INTO `base_logs` VALUES ('117544', '5', '查询系统日志', '1', '2018-12-17 09:09:45');
INSERT INTO `base_logs` VALUES ('117545', '5', '查询菜单', '1', '2018-12-17 09:09:46');
INSERT INTO `base_logs` VALUES ('117546', '1', '用户登录', '1', '2018-12-17 17:18:47');
INSERT INTO `base_logs` VALUES ('117547', '5', '查询菜单', '1', '2018-12-17 17:18:51');
INSERT INTO `base_logs` VALUES ('117548', '5', '查询菜单', '1', '2018-12-17 17:20:04');
INSERT INTO `base_logs` VALUES ('117549', '1', '用户登录', '1', '2018-12-17 09:26:37');
INSERT INTO `base_logs` VALUES ('117550', '5', '查询菜单', '1', '2018-12-17 09:26:40');
INSERT INTO `base_logs` VALUES ('117551', '5', '查询菜单', '1', '2018-12-17 09:27:10');
INSERT INTO `base_logs` VALUES ('117552', '1', '用户登录', '1', '2018-12-17 09:28:40');
INSERT INTO `base_logs` VALUES ('117553', '5', '查询菜单', '1', '2018-12-17 09:28:41');
INSERT INTO `base_logs` VALUES ('117554', '1', '用户登录', '1', '2018-12-17 09:33:01');
INSERT INTO `base_logs` VALUES ('117555', '5', '查询菜单', '1', '2018-12-17 09:33:02');
INSERT INTO `base_logs` VALUES ('117556', '1', '用户登录', '1', '2018-12-17 09:34:29');
INSERT INTO `base_logs` VALUES ('117557', '5', '查询系统日志', '1', '2018-12-17 09:34:31');
INSERT INTO `base_logs` VALUES ('117558', '5', '查询菜单', '1', '2018-12-17 09:34:32');
INSERT INTO `base_logs` VALUES ('117559', '1', '用户登录', '1', '2018-12-18 02:37:26');
INSERT INTO `base_logs` VALUES ('117560', '5', '查询角色', '1', '2018-12-18 02:39:03');
INSERT INTO `base_logs` VALUES ('117561', '5', '查询角色', '1', '2018-12-18 02:39:14');
INSERT INTO `base_logs` VALUES ('117562', '5', '查询角色', '1', '2018-12-18 02:39:14');
INSERT INTO `base_logs` VALUES ('117563', '5', '查询管理员', '1', '2018-12-18 02:39:14');
INSERT INTO `base_logs` VALUES ('117564', '5', '查询系统日志', '1', '2018-12-18 02:39:15');
INSERT INTO `base_logs` VALUES ('117565', '5', '资源库查看', '1', '2018-12-18 02:39:47');
INSERT INTO `base_logs` VALUES ('117566', '5', '资源库查看', '1', '2018-12-18 02:39:54');
INSERT INTO `base_logs` VALUES ('117567', '5', '分类查询', '1', '2018-12-18 02:40:01');
INSERT INTO `base_logs` VALUES ('117568', '5', '分类查询', '1', '2018-12-18 02:40:03');
INSERT INTO `base_logs` VALUES ('117569', '5', '分类查询', '1', '2018-12-18 02:40:20');
INSERT INTO `base_logs` VALUES ('117570', '5', '分类查询', '1', '2018-12-18 02:40:20');
INSERT INTO `base_logs` VALUES ('117571', '5', '分类查询', '1', '2018-12-18 02:40:35');
INSERT INTO `base_logs` VALUES ('117572', '5', '分类查询', '1', '2018-12-18 02:40:36');
INSERT INTO `base_logs` VALUES ('117573', '5', '查询菜单', '1', '2018-12-18 02:41:11');
INSERT INTO `base_logs` VALUES ('117574', '5', '查询角色', '1', '2018-12-18 02:43:20');
INSERT INTO `base_logs` VALUES ('117575', '5', '查询角色', '1', '2018-12-18 02:43:25');
INSERT INTO `base_logs` VALUES ('117576', '5', '查询系统日志', '1', '2018-12-18 02:45:02');
INSERT INTO `base_logs` VALUES ('117577', '5', '查询角色', '1', '2018-12-18 02:45:06');
INSERT INTO `base_logs` VALUES ('117578', '5', '查询管理员', '1', '2018-12-18 02:45:06');
INSERT INTO `base_logs` VALUES ('117579', '5', '查询角色', '1', '2018-12-18 02:45:07');
INSERT INTO `base_logs` VALUES ('117580', '5', '查询菜单', '1', '2018-12-18 02:45:08');
INSERT INTO `base_logs` VALUES ('117581', '5', '资源库查看', '1', '2018-12-18 02:45:11');
INSERT INTO `base_logs` VALUES ('117582', '5', '分类查询', '1', '2018-12-18 02:45:19');
INSERT INTO `base_logs` VALUES ('117583', '5', '分类查询', '1', '2018-12-18 02:45:21');
INSERT INTO `base_logs` VALUES ('117584', '5', '资源库查看', '1', '2018-12-18 03:08:11');
INSERT INTO `base_logs` VALUES ('117585', '1', '用户登录', '1', '2018-12-18 03:13:04');
INSERT INTO `base_logs` VALUES ('117586', '5', '资源库查看', '1', '2018-12-18 03:13:09');
INSERT INTO `base_logs` VALUES ('117587', '1', '用户登录', '1', '2018-12-18 03:14:03');
INSERT INTO `base_logs` VALUES ('117588', '5', '资源库查看', '1', '2018-12-18 03:14:07');
INSERT INTO `base_logs` VALUES ('117589', '1', '用户登录', '1', '2018-12-18 03:17:46');
INSERT INTO `base_logs` VALUES ('117590', '5', '查询菜单', '1', '2018-12-18 03:17:49');
INSERT INTO `base_logs` VALUES ('117591', '5', '资源库查看', '1', '2018-12-18 03:17:52');
INSERT INTO `base_logs` VALUES ('117592', '5', '资源库查看', '1', '2018-12-18 03:17:54');
INSERT INTO `base_logs` VALUES ('117593', '5', '分类查询', '1', '2018-12-18 03:17:56');
INSERT INTO `base_logs` VALUES ('117594', '5', '查询菜单', '1', '2018-12-18 03:17:58');
INSERT INTO `base_logs` VALUES ('117595', '5', '查询菜单', '1', '2018-12-18 03:18:23');
INSERT INTO `base_logs` VALUES ('117596', '1', '用户登录', '1', '2018-12-18 03:30:45');
INSERT INTO `base_logs` VALUES ('117597', '5', '查询菜单', '1', '2018-12-18 03:30:48');
INSERT INTO `base_logs` VALUES ('117598', '5', '查询角色', '1', '2018-12-18 03:30:51');
INSERT INTO `base_logs` VALUES ('117599', '5', '查询菜单', '1', '2018-12-18 03:30:59');
INSERT INTO `base_logs` VALUES ('117600', '5', '查询角色', '1', '2018-12-18 03:31:03');
INSERT INTO `base_logs` VALUES ('117601', '5', '查询角色菜单', '1', '2018-12-18 03:32:14');
INSERT INTO `base_logs` VALUES ('117602', '1', '用户登录', '1', '2018-12-18 03:32:41');
INSERT INTO `base_logs` VALUES ('117603', '5', '查询角色', '1', '2018-12-18 03:32:44');
INSERT INTO `base_logs` VALUES ('117604', '5', '查询角色菜单', '1', '2018-12-18 03:32:46');
INSERT INTO `base_logs` VALUES ('117605', '5', '查询角色', '1', '2018-12-18 03:32:53');
INSERT INTO `base_logs` VALUES ('117606', '5', '查询角色菜单', '1', '2018-12-18 03:32:55');
INSERT INTO `base_logs` VALUES ('117607', '1', '用户登录', '1', '2018-12-18 03:36:35');
INSERT INTO `base_logs` VALUES ('117608', '5', '查询菜单', '1', '2018-12-18 03:36:37');
INSERT INTO `base_logs` VALUES ('117609', '5', '查询菜单', '1', '2018-12-18 03:36:40');
INSERT INTO `base_logs` VALUES ('117610', '5', '查询角色', '1', '2018-12-18 03:36:42');
INSERT INTO `base_logs` VALUES ('117611', '5', '查询角色菜单', '1', '2018-12-18 03:36:43');
INSERT INTO `base_logs` VALUES ('117612', '5', '查询角色菜单', '1', '2018-12-18 03:36:48');
INSERT INTO `base_logs` VALUES ('117613', '5', '查询角色菜单', '1', '2018-12-18 03:36:58');
INSERT INTO `base_logs` VALUES ('117614', '5', '查询角色', '1', '2018-12-18 03:37:19');
INSERT INTO `base_logs` VALUES ('117615', '1', '用户登录', '1', '2018-12-18 03:37:46');
INSERT INTO `base_logs` VALUES ('117616', '5', '查询角色', '1', '2018-12-18 03:37:49');
INSERT INTO `base_logs` VALUES ('117617', '5', '查询角色菜单', '1', '2018-12-18 03:37:52');
INSERT INTO `base_logs` VALUES ('117618', '5', '查询角色', '1', '2018-12-18 03:37:55');
INSERT INTO `base_logs` VALUES ('117619', '5', '查询角色', '1', '2018-12-18 03:37:56');
INSERT INTO `base_logs` VALUES ('117620', '5', '查询管理员', '1', '2018-12-18 03:37:56');
INSERT INTO `base_logs` VALUES ('117621', '5', '查询角色', '1', '2018-12-18 03:37:57');
INSERT INTO `base_logs` VALUES ('117622', '5', '查询菜单', '1', '2018-12-18 03:37:57');
INSERT INTO `base_logs` VALUES ('117623', '5', '查询角色', '1', '2018-12-18 03:37:59');
INSERT INTO `base_logs` VALUES ('117624', '5', '查询管理员', '1', '2018-12-18 03:37:59');
INSERT INTO `base_logs` VALUES ('117625', '5', '查询角色', '1', '2018-12-18 03:37:59');
INSERT INTO `base_logs` VALUES ('117626', '5', '查询角色菜单', '1', '2018-12-18 03:38:01');
INSERT INTO `base_logs` VALUES ('117627', '1', '用户登录', '1', '2018-12-18 03:46:55');
INSERT INTO `base_logs` VALUES ('117628', '5', '查询菜单', '1', '2018-12-18 03:47:00');
INSERT INTO `base_logs` VALUES ('117629', '5', '查询角色', '1', '2018-12-18 03:47:00');
INSERT INTO `base_logs` VALUES ('117630', '5', '查询角色', '1', '2018-12-18 03:47:01');
INSERT INTO `base_logs` VALUES ('117631', '5', '查询管理员', '1', '2018-12-18 03:47:01');
INSERT INTO `base_logs` VALUES ('117632', '5', '查询系统日志', '1', '2018-12-18 03:47:01');
INSERT INTO `base_logs` VALUES ('117633', '1', '用户退出', '1', '2018-12-18 03:47:04');
INSERT INTO `base_logs` VALUES ('117634', '1', '用户登录', '1', '2018-12-18 03:56:00');
INSERT INTO `base_logs` VALUES ('117635', '1', '用户退出', '1', '2018-12-18 03:56:05');
INSERT INTO `base_logs` VALUES ('117636', '1', '用户登录', '1', '2018-12-18 05:09:42');
INSERT INTO `base_logs` VALUES ('117637', '1', '用户退出', '1', '2018-12-18 05:10:05');
INSERT INTO `base_logs` VALUES ('117638', '1', '用户登录', '2', '2018-12-18 05:10:09');
INSERT INTO `base_logs` VALUES ('117639', '5', '查询系统日志', '2', '2018-12-18 05:10:41');
INSERT INTO `base_logs` VALUES ('117640', '5', '分类查询', '2', '2018-12-18 05:10:58');
INSERT INTO `base_logs` VALUES ('117641', '1', '用户登录', '2', '2018-12-18 05:14:27');
INSERT INTO `base_logs` VALUES ('117642', '1', '用户退出', '2', '2018-12-18 05:16:11');
INSERT INTO `base_logs` VALUES ('117643', '1', '用户登录', '2', '2018-12-18 05:16:37');
INSERT INTO `base_logs` VALUES ('117644', '1', '用户登录', '2', '2018-12-18 05:19:17');
INSERT INTO `base_logs` VALUES ('117645', '5', '分类查询', '2', '2018-12-18 05:19:27');
INSERT INTO `base_logs` VALUES ('117646', '1', '用户登录', '2', '2018-12-18 05:22:26');
INSERT INTO `base_logs` VALUES ('117647', '1', '用户登录', '2', '2018-12-19 06:01:26');
INSERT INTO `base_logs` VALUES ('117648', '1', '用户登录', '2', '2018-12-19 06:06:49');
INSERT INTO `base_logs` VALUES ('117649', '1', '用户登录', '2', '2018-12-19 06:09:20');
INSERT INTO `base_logs` VALUES ('117650', '1', '用户登录', '2', '2018-12-19 06:15:31');
INSERT INTO `base_logs` VALUES ('117651', '1', '用户登录', '2', '2018-12-19 06:17:13');
INSERT INTO `base_logs` VALUES ('117652', '1', '用户登录', '2', '2018-12-19 06:18:00');
INSERT INTO `base_logs` VALUES ('117653', '1', '用户登录', '2', '2018-12-19 06:18:52');
INSERT INTO `base_logs` VALUES ('117654', '1', '用户登录', '2', '2018-12-19 06:21:20');
INSERT INTO `base_logs` VALUES ('117655', '1', '用户登录', '2', '2018-12-19 06:25:04');
INSERT INTO `base_logs` VALUES ('117656', '5', '查询菜单', '2', '2018-12-19 06:31:56');
INSERT INTO `base_logs` VALUES ('117657', '5', '查询角色', '2', '2018-12-19 06:31:57');
INSERT INTO `base_logs` VALUES ('117658', '5', '查询角色', '2', '2018-12-19 06:31:57');
INSERT INTO `base_logs` VALUES ('117659', '5', '查询管理员', '2', '2018-12-19 06:31:57');
INSERT INTO `base_logs` VALUES ('117660', '5', '查询菜单', '2', '2018-12-19 06:32:11');
INSERT INTO `base_logs` VALUES ('117661', '5', '查询角色', '2', '2018-12-19 06:32:12');
INSERT INTO `base_logs` VALUES ('117662', '5', '查询菜单', '2', '2018-12-19 06:32:18');
INSERT INTO `base_logs` VALUES ('117663', '1', '用户登录', '2', '2018-12-19 07:07:23');
INSERT INTO `base_logs` VALUES ('117664', '1', '用户退出', '2', '2018-12-19 07:08:13');
INSERT INTO `base_logs` VALUES ('117665', '1', '用户登录', '2', '2018-12-19 07:08:17');
INSERT INTO `base_logs` VALUES ('117666', '5', '查询菜单', '2', '2018-12-19 07:08:25');
INSERT INTO `base_logs` VALUES ('117667', '5', '查询角色', '2', '2018-12-19 07:08:27');
INSERT INTO `base_logs` VALUES ('117668', '5', '查询角色', '2', '2018-12-19 07:08:28');
INSERT INTO `base_logs` VALUES ('117669', '5', '查询管理员', '2', '2018-12-19 07:08:28');
INSERT INTO `base_logs` VALUES ('117670', '5', '查询菜单', '2', '2018-12-19 07:08:29');
INSERT INTO `base_logs` VALUES ('117671', '5', '资源库查看', '2', '2018-12-19 07:08:31');
INSERT INTO `base_logs` VALUES ('117672', '1', '用户退出', '2', '2018-12-19 07:08:38');
INSERT INTO `base_logs` VALUES ('117673', '1', '用户登录', '2', '2018-12-19 07:11:00');
INSERT INTO `base_logs` VALUES ('117674', '1', '用户登录', '2', '2018-12-19 07:16:49');
INSERT INTO `base_logs` VALUES ('117675', '1', '用户登录', '2', '2018-12-19 08:08:58');
INSERT INTO `base_logs` VALUES ('117676', '1', '用户登录', '2', '2018-12-19 08:09:29');
INSERT INTO `base_logs` VALUES ('117677', '1', '用户登录', '2', '2018-12-19 08:17:37');
INSERT INTO `base_logs` VALUES ('117678', '1', '用户登录', '2', '2018-12-19 08:21:49');
INSERT INTO `base_logs` VALUES ('117679', '1', '用户登录', '2', '2018-12-19 08:21:59');
INSERT INTO `base_logs` VALUES ('117680', '1', '用户登录', '2', '2018-12-21 08:05:01');
INSERT INTO `base_logs` VALUES ('117681', '1', '用户退出', '2', '2018-12-21 08:05:09');
INSERT INTO `base_logs` VALUES ('117682', '1', '用户登录', '1', '2018-12-21 08:05:12');
INSERT INTO `base_logs` VALUES ('117683', '5', '分类查询', '1', '2018-12-21 08:05:16');
INSERT INTO `base_logs` VALUES ('117684', '5', '分类查询', '1', '2018-12-21 08:05:25');
INSERT INTO `base_logs` VALUES ('117685', '1', '用户登录', '1', '2018-12-21 08:37:28');
INSERT INTO `base_logs` VALUES ('117686', '5', '查询菜单', '1', '2018-12-21 08:37:33');
INSERT INTO `base_logs` VALUES ('117687', '5', '查询角色', '1', '2018-12-21 08:37:40');
INSERT INTO `base_logs` VALUES ('117688', '5', '查询管理员', '1', '2018-12-21 08:37:40');
INSERT INTO `base_logs` VALUES ('117689', '5', '查询角色', '1', '2018-12-21 08:37:42');
INSERT INTO `base_logs` VALUES ('117690', '5', '分类查询', '1', '2018-12-21 08:38:00');
INSERT INTO `base_logs` VALUES ('117691', '2', '新增了商品管理1条数据', '1', '2018-12-21 08:38:16');
INSERT INTO `base_logs` VALUES ('117692', '3', '修改了商品管理1条数据', '1', '2018-12-21 08:38:35');
INSERT INTO `base_logs` VALUES ('117693', '3', '修改了商品管理1条数据', '1', '2018-12-21 08:40:56');
INSERT INTO `base_logs` VALUES ('117694', '5', '分类查询', '1', '2018-12-21 08:41:20');
INSERT INTO `base_logs` VALUES ('117695', '5', '分类查询', '1', '2018-12-21 08:42:10');
INSERT INTO `base_logs` VALUES ('117696', '3', '修改了商品管理1条数据', '1', '2018-12-21 08:42:40');
INSERT INTO `base_logs` VALUES ('117697', '3', '修改了商品管理1条数据', '1', '2018-12-21 08:47:44');
INSERT INTO `base_logs` VALUES ('117698', '1', '用户登录', '1', '2018-12-24 02:41:59');
INSERT INTO `base_logs` VALUES ('117699', '5', '查询菜单', '1', '2018-12-24 02:42:01');
INSERT INTO `base_logs` VALUES ('117700', '5', '查询角色', '1', '2018-12-24 02:42:02');
INSERT INTO `base_logs` VALUES ('117701', '5', '查询角色', '1', '2018-12-24 02:42:03');
INSERT INTO `base_logs` VALUES ('117702', '5', '查询管理员', '1', '2018-12-24 02:42:03');
INSERT INTO `base_logs` VALUES ('117703', '5', '查询系统日志', '1', '2018-12-24 02:42:04');
INSERT INTO `base_logs` VALUES ('117704', '5', '资源库查看', '1', '2018-12-24 02:42:06');
INSERT INTO `base_logs` VALUES ('117705', '5', '分类查询', '1', '2018-12-24 02:42:08');
INSERT INTO `base_logs` VALUES ('117706', '5', '分类查询', '1', '2018-12-24 02:42:09');
INSERT INTO `base_logs` VALUES ('117707', '5', '查询菜单', '1', '2018-12-24 02:42:16');
INSERT INTO `base_logs` VALUES ('117708', '5', '查询角色', '1', '2018-12-24 02:42:17');
INSERT INTO `base_logs` VALUES ('117709', '5', '查询角色', '1', '2018-12-24 02:42:18');
INSERT INTO `base_logs` VALUES ('117710', '5', '查询管理员', '1', '2018-12-24 02:42:18');
INSERT INTO `base_logs` VALUES ('117711', '5', '查询系统日志', '1', '2018-12-24 02:42:18');
INSERT INTO `base_logs` VALUES ('117712', '5', '资源库查看', '1', '2018-12-24 02:42:20');
INSERT INTO `base_logs` VALUES ('117713', '5', '分类查询', '1', '2018-12-24 02:42:23');
INSERT INTO `base_logs` VALUES ('117714', '5', '分类查询', '1', '2018-12-24 02:42:24');
INSERT INTO `base_logs` VALUES ('117715', '5', '查询角色', '1', '2018-12-24 02:43:21');
INSERT INTO `base_logs` VALUES ('117716', '5', '查询角色菜单', '1', '2018-12-24 02:43:23');
INSERT INTO `base_logs` VALUES ('117717', '1', '用户登录', '1', '2018-12-24 03:25:43');
INSERT INTO `base_logs` VALUES ('117718', '1', '用户登录', '1', '2018-12-24 03:36:16');
INSERT INTO `base_logs` VALUES ('117719', '3', '修改了商品管理1条数据', '1', '2018-12-24 03:39:50');
INSERT INTO `base_logs` VALUES ('117720', '7', '文件上传', '1', '2018-12-24 03:39:54');
INSERT INTO `base_logs` VALUES ('117721', '7', '文件上传', '1', '2018-12-24 03:40:31');
INSERT INTO `base_logs` VALUES ('117722', '3', '修改了商品管理1条数据', '1', '2018-12-24 03:40:35');
INSERT INTO `base_logs` VALUES ('117723', '5', '资源库查看', '1', '2018-12-24 03:51:10');
INSERT INTO `base_logs` VALUES ('117724', '5', '分类查询', '1', '2018-12-24 03:51:13');
INSERT INTO `base_logs` VALUES ('117725', '5', '分类查询', '1', '2018-12-24 03:51:14');
INSERT INTO `base_logs` VALUES ('117726', '1', '用户登录', '1', '2018-12-24 05:11:08');
INSERT INTO `base_logs` VALUES ('117727', '5', '分类查询', '1', '2018-12-24 05:11:14');
INSERT INTO `base_logs` VALUES ('117728', '5', '分类查询', '1', '2018-12-24 05:11:16');
INSERT INTO `base_logs` VALUES ('117729', '5', '资源库查看', '1', '2018-12-24 05:11:30');
INSERT INTO `base_logs` VALUES ('117730', '5', '资源库查看', '1', '2018-12-24 05:11:51');
INSERT INTO `base_logs` VALUES ('117731', '5', '分类查询', '1', '2018-12-24 05:26:14');
INSERT INTO `base_logs` VALUES ('117732', '5', '资源库查看', '1', '2018-12-24 05:26:18');
INSERT INTO `base_logs` VALUES ('117733', '5', '查询角色', '1', '2018-12-24 05:26:25');
INSERT INTO `base_logs` VALUES ('117734', '5', '资源库查看', '1', '2018-12-24 05:26:30');
INSERT INTO `base_logs` VALUES ('117735', '1', '用户登录', '1', '2018-12-24 05:26:47');
INSERT INTO `base_logs` VALUES ('117736', '1', '用户登录', '1', '2018-12-24 05:30:56');
INSERT INTO `base_logs` VALUES ('117737', '5', '分类查询', '1', '2018-12-24 05:30:58');
INSERT INTO `base_logs` VALUES ('117738', '5', '分类查询', '1', '2018-12-24 05:31:02');
INSERT INTO `base_logs` VALUES ('117739', '5', '分类查询', '1', '2018-12-24 05:31:03');
INSERT INTO `base_logs` VALUES ('117740', '5', '分类查询', '1', '2018-12-24 05:31:06');
INSERT INTO `base_logs` VALUES ('117741', '3', '修改了商品管理1条数据', '1', '2018-12-24 05:31:20');
INSERT INTO `base_logs` VALUES ('117742', '3', '修改了商品管理1条数据', '1', '2018-12-24 05:33:50');
INSERT INTO `base_logs` VALUES ('117743', '1', '用户登录', '1', '2018-12-24 07:33:09');
INSERT INTO `base_logs` VALUES ('117744', '5', '资源库查看', '1', '2018-12-24 07:33:16');
INSERT INTO `base_logs` VALUES ('117745', '5', '资源库查看', '1', '2018-12-24 07:33:49');
INSERT INTO `base_logs` VALUES ('117746', '5', '资源库查看', '1', '2018-12-24 07:34:01');
INSERT INTO `base_logs` VALUES ('117747', '5', '查询菜单', '1', '2018-12-24 07:40:11');
INSERT INTO `base_logs` VALUES ('117748', '5', '资源库查看', '1', '2018-12-24 07:44:39');
INSERT INTO `base_logs` VALUES ('117749', '5', '资源库查看', '1', '2018-12-24 07:44:46');
INSERT INTO `base_logs` VALUES ('117750', '5', '资源库查看', '1', '2018-12-24 07:45:48');
INSERT INTO `base_logs` VALUES ('117751', '1', '用户登录', '1', '2018-12-24 08:33:12');
INSERT INTO `base_logs` VALUES ('117752', '5', '分类查询', '1', '2018-12-24 08:33:18');
INSERT INTO `base_logs` VALUES ('117753', '1', '用户登录', '1', '2018-12-24 09:01:20');
INSERT INTO `base_logs` VALUES ('117754', '5', '资源库查看', '1', '2018-12-24 09:01:58');
INSERT INTO `base_logs` VALUES ('117755', '1', '用户登录', '1', '2018-12-24 09:12:58');
INSERT INTO `base_logs` VALUES ('117756', '1', '用户登录', '1', '2018-12-24 09:13:21');
INSERT INTO `base_logs` VALUES ('117757', '1', '用户登录', '1', '2018-12-24 09:14:03');
INSERT INTO `base_logs` VALUES ('117758', '1', '用户登录', '1', '2018-12-24 09:14:11');
INSERT INTO `base_logs` VALUES ('117759', '1', '用户登录', '1', '2018-12-24 09:14:51');
INSERT INTO `base_logs` VALUES ('117760', '1', '用户登录', '1', '2018-12-24 09:17:51');
INSERT INTO `base_logs` VALUES ('117761', '1', '用户登录', '1', '2018-12-25 01:26:14');
INSERT INTO `base_logs` VALUES ('117762', '1', '用户登录', '1', '2018-12-25 01:28:16');
INSERT INTO `base_logs` VALUES ('117763', '5', '查询菜单', '1', '2018-12-25 01:30:41');
INSERT INTO `base_logs` VALUES ('117764', '5', '查询角色', '1', '2018-12-25 01:30:41');
INSERT INTO `base_logs` VALUES ('117765', '5', '查询角色', '1', '2018-12-25 01:30:42');
INSERT INTO `base_logs` VALUES ('117766', '5', '查询管理员', '1', '2018-12-25 01:30:42');
INSERT INTO `base_logs` VALUES ('117767', '5', '查询系统日志', '1', '2018-12-25 01:30:43');
INSERT INTO `base_logs` VALUES ('117768', '5', '分类查询', '1', '2018-12-25 01:30:46');
INSERT INTO `base_logs` VALUES ('117769', '5', '分类查询', '1', '2018-12-25 01:30:46');
INSERT INTO `base_logs` VALUES ('117770', '5', '查询菜单', '1', '2018-12-25 01:30:52');
INSERT INTO `base_logs` VALUES ('117771', '5', '查询角色', '1', '2018-12-25 01:30:54');
INSERT INTO `base_logs` VALUES ('117772', '5', '查询角色菜单', '1', '2018-12-25 01:30:58');
INSERT INTO `base_logs` VALUES ('117773', '5', '查询系统日志', '1', '2018-12-25 01:31:02');
INSERT INTO `base_logs` VALUES ('117774', '5', '资源库查看', '1', '2018-12-25 01:31:07');
INSERT INTO `base_logs` VALUES ('117775', '1', '用户登录', '1', '2018-12-25 01:38:41');
INSERT INTO `base_logs` VALUES ('117776', '1', '用户登录', '1', '2018-12-25 01:41:40');
INSERT INTO `base_logs` VALUES ('117777', '1', '用户登录', '1', '2018-12-25 01:43:08');
INSERT INTO `base_logs` VALUES ('117778', '1', '用户登录', '1', '2018-12-25 01:49:26');
INSERT INTO `base_logs` VALUES ('117779', '1', '用户登录', '1', '2018-12-25 02:17:57');
INSERT INTO `base_logs` VALUES ('117780', '1', '用户登录', '1', '2018-12-25 05:34:08');
INSERT INTO `base_logs` VALUES ('117781', '1', '用户登录', '1', '2018-12-25 05:52:49');
INSERT INTO `base_logs` VALUES ('117782', '5', '查询菜单', '1', '2018-12-25 05:52:51');
INSERT INTO `base_logs` VALUES ('117783', '5', '查询角色', '1', '2018-12-25 05:52:52');
INSERT INTO `base_logs` VALUES ('117784', '5', '查询角色', '1', '2018-12-25 05:52:53');
INSERT INTO `base_logs` VALUES ('117785', '5', '查询管理员', '1', '2018-12-25 05:52:53');
INSERT INTO `base_logs` VALUES ('117786', '1', '用户登录', '1', '2018-12-25 07:00:56');
INSERT INTO `base_logs` VALUES ('117787', '5', '查询菜单', '1', '2018-12-25 07:00:58');
INSERT INTO `base_logs` VALUES ('117788', '1', '用户登录', '1', '2018-12-25 07:12:45');
INSERT INTO `base_logs` VALUES ('117789', '1', '用户登录', '1', '2018-12-25 08:59:14');
INSERT INTO `base_logs` VALUES ('117790', '1', '用户登录', '1', '2018-12-25 09:00:22');
INSERT INTO `base_logs` VALUES ('117791', '1', '用户登录', '1', '2018-12-25 09:04:03');
INSERT INTO `base_logs` VALUES ('117792', '1', '用户登录', '1', '2018-12-25 09:04:13');
INSERT INTO `base_logs` VALUES ('117793', '1', '用户登录', '1', '2018-12-25 09:04:57');
INSERT INTO `base_logs` VALUES ('117794', '1', '用户登录', '1', '2018-12-25 09:13:07');
INSERT INTO `base_logs` VALUES ('117795', '1', '用户登录', '1', '2018-12-25 09:13:31');
INSERT INTO `base_logs` VALUES ('117796', '1', '用户登录', '1', '2018-12-25 09:13:42');
INSERT INTO `base_logs` VALUES ('117797', '1', '用户登录', '1', '2018-12-25 09:18:13');
INSERT INTO `base_logs` VALUES ('117798', '5', '查询菜单', '1', '2018-12-25 09:22:43');
INSERT INTO `base_logs` VALUES ('117799', '5', '资源库查看', '1', '2018-12-25 09:22:48');
INSERT INTO `base_logs` VALUES ('117800', '5', '分类查询', '1', '2018-12-25 09:22:51');
INSERT INTO `base_logs` VALUES ('117801', '5', '分类查询', '1', '2018-12-25 09:22:51');
INSERT INTO `base_logs` VALUES ('117802', '1', '用户登录', '1', '2018-12-25 09:27:30');
INSERT INTO `base_logs` VALUES ('117803', '5', '资源库查看', '1', '2018-12-25 09:32:32');
INSERT INTO `base_logs` VALUES ('117804', '5', '资源库查看', '1', '2018-12-25 09:32:40');
INSERT INTO `base_logs` VALUES ('117805', '5', '分类查询', '1', '2018-12-25 09:34:08');
INSERT INTO `base_logs` VALUES ('117806', '1', '用户登录', '1', '2018-12-26 01:19:23');
INSERT INTO `base_logs` VALUES ('117807', '1', '用户登录', '1', '2018-12-26 01:33:06');
INSERT INTO `base_logs` VALUES ('117808', '1', '用户登录', '1', '2018-12-26 01:52:00');
INSERT INTO `base_logs` VALUES ('117809', '5', '查询菜单', '1', '2018-12-26 01:52:23');
INSERT INTO `base_logs` VALUES ('117810', '5', '查询角色', '1', '2018-12-26 01:52:25');
INSERT INTO `base_logs` VALUES ('117811', '5', '查询菜单', '1', '2018-12-26 01:52:25');
INSERT INTO `base_logs` VALUES ('117812', '5', '查询角色', '1', '2018-12-26 01:52:51');
INSERT INTO `base_logs` VALUES ('117813', '5', '查询角色菜单', '1', '2018-12-26 01:52:53');
INSERT INTO `base_logs` VALUES ('117814', '5', '查询角色菜单', '1', '2018-12-26 01:52:57');
INSERT INTO `base_logs` VALUES ('117815', '5', '查询角色', '1', '2018-12-26 01:53:00');
INSERT INTO `base_logs` VALUES ('117816', '5', '查询菜单', '1', '2018-12-26 01:53:01');
INSERT INTO `base_logs` VALUES ('117817', '5', '查询角色', '1', '2018-12-26 01:53:06');
INSERT INTO `base_logs` VALUES ('117818', '5', '查询管理员', '1', '2018-12-26 01:53:06');
INSERT INTO `base_logs` VALUES ('117819', '5', '查询系统日志', '1', '2018-12-26 01:53:07');
INSERT INTO `base_logs` VALUES ('117820', '5', '查询角色', '1', '2018-12-26 01:53:08');
INSERT INTO `base_logs` VALUES ('117821', '5', '资源库查看', '1', '2018-12-26 01:53:12');
INSERT INTO `base_logs` VALUES ('117822', '5', '资源库查看', '1', '2018-12-26 01:53:16');
INSERT INTO `base_logs` VALUES ('117823', '4', '删除资源库', '1', '2018-12-26 01:53:22');
INSERT INTO `base_logs` VALUES ('117824', '5', '资源库查看', '1', '2018-12-26 01:53:22');
INSERT INTO `base_logs` VALUES ('117825', '5', '查询菜单', '1', '2018-12-26 01:54:10');
INSERT INTO `base_logs` VALUES ('117826', '5', '查询角色', '1', '2018-12-26 01:54:10');
INSERT INTO `base_logs` VALUES ('117827', '5', '查询管理员', '1', '2018-12-26 01:54:10');
INSERT INTO `base_logs` VALUES ('117828', '5', '查询角色', '1', '2018-12-26 01:54:10');
INSERT INTO `base_logs` VALUES ('117829', '5', '查询系统日志', '1', '2018-12-26 01:54:11');
INSERT INTO `base_logs` VALUES ('117830', '5', '资源库查看', '1', '2018-12-26 01:54:13');
INSERT INTO `base_logs` VALUES ('117831', '5', '分类查询', '1', '2018-12-26 01:54:15');
INSERT INTO `base_logs` VALUES ('117832', '5', '分类查询', '1', '2018-12-26 01:54:15');
INSERT INTO `base_logs` VALUES ('117833', '5', '分类查询', '1', '2018-12-26 01:54:42');
INSERT INTO `base_logs` VALUES ('117834', '5', '资源库查看', '1', '2018-12-26 02:03:00');
INSERT INTO `base_logs` VALUES ('117835', '1', '用户退出', '1', '2018-12-26 02:11:43');
INSERT INTO `base_logs` VALUES ('117836', '1', '用户登录', '1', '2018-12-26 02:24:57');
INSERT INTO `base_logs` VALUES ('117837', '5', '查询菜单', '1', '2018-12-26 02:25:00');
INSERT INTO `base_logs` VALUES ('117838', '1', '用户登录', '1', '2018-12-26 02:31:18');
INSERT INTO `base_logs` VALUES ('117839', '1', '用户登录', '1', '2018-12-26 02:42:41');
INSERT INTO `base_logs` VALUES ('117840', '1', '用户登录', '1', '2018-12-26 02:43:13');
INSERT INTO `base_logs` VALUES ('117841', '5', '查询菜单', '1', '2018-12-26 02:43:15');
INSERT INTO `base_logs` VALUES ('117842', '5', '查询角色', '1', '2018-12-26 02:43:15');
INSERT INTO `base_logs` VALUES ('117843', '5', '查询角色', '1', '2018-12-26 02:43:16');
INSERT INTO `base_logs` VALUES ('117844', '5', '查询管理员', '1', '2018-12-26 02:43:16');
INSERT INTO `base_logs` VALUES ('117845', '5', '查询系统日志', '1', '2018-12-26 02:43:17');
INSERT INTO `base_logs` VALUES ('117846', '5', '资源库查看', '1', '2018-12-26 02:43:18');
INSERT INTO `base_logs` VALUES ('117847', '5', '分类查询', '1', '2018-12-26 02:43:20');
INSERT INTO `base_logs` VALUES ('117848', '5', '分类查询', '1', '2018-12-26 02:43:20');
INSERT INTO `base_logs` VALUES ('117849', '5', '查询菜单', '1', '2018-12-26 02:43:22');
INSERT INTO `base_logs` VALUES ('117850', '1', '用户登录', '1', '2018-12-26 02:54:55');
INSERT INTO `base_logs` VALUES ('117851', '1', '用户登录', '1', '2018-12-26 02:56:29');
INSERT INTO `base_logs` VALUES ('117852', '1', '用户登录', '1', '2018-12-26 02:59:09');
INSERT INTO `base_logs` VALUES ('117853', '1', '用户登录', '1', '2018-12-26 03:01:25');
INSERT INTO `base_logs` VALUES ('117854', '1', '用户登录', '1', '2018-12-26 03:51:19');
INSERT INTO `base_logs` VALUES ('117855', '1', '用户退出', '1', '2018-12-26 03:53:03');
INSERT INTO `base_logs` VALUES ('117856', '1', '用户登录', '1', '2018-12-26 03:54:13');
INSERT INTO `base_logs` VALUES ('117857', '1', '用户登录', '1', '2018-12-26 03:57:41');
INSERT INTO `base_logs` VALUES ('117858', '1', '用户登录', '1', '2018-12-26 05:32:15');
INSERT INTO `base_logs` VALUES ('117859', '5', '分类查询', '1', '2018-12-26 05:33:11');
INSERT INTO `base_logs` VALUES ('117860', '5', '分类查询', '1', '2018-12-26 05:33:13');
INSERT INTO `base_logs` VALUES ('117861', '5', '分类查询', '1', '2018-12-26 05:33:14');
INSERT INTO `base_logs` VALUES ('117862', '5', '分类查询', '1', '2018-12-26 05:33:15');
INSERT INTO `base_logs` VALUES ('117863', '5', '资源库查看', '1', '2018-12-26 05:33:17');
INSERT INTO `base_logs` VALUES ('117864', '5', '查询菜单', '1', '2018-12-26 05:33:18');
INSERT INTO `base_logs` VALUES ('117865', '5', '查询角色', '1', '2018-12-26 05:33:18');
INSERT INTO `base_logs` VALUES ('117866', '5', '查询角色', '1', '2018-12-26 05:33:19');
INSERT INTO `base_logs` VALUES ('117867', '5', '查询管理员', '1', '2018-12-26 05:33:19');
INSERT INTO `base_logs` VALUES ('117868', '5', '查询系统日志', '1', '2018-12-26 05:33:19');
INSERT INTO `base_logs` VALUES ('117869', '5', '分类查询', '1', '2018-12-26 05:36:43');
INSERT INTO `base_logs` VALUES ('117870', '5', '查询系统日志', '1', '2018-12-26 05:39:16');
INSERT INTO `base_logs` VALUES ('117871', '1', '用户登录', '1', '2018-12-26 06:19:40');
INSERT INTO `base_logs` VALUES ('117872', '5', '分类查询', '1', '2018-12-26 06:19:44');
INSERT INTO `base_logs` VALUES ('117873', '5', '分类查询', '1', '2018-12-26 06:20:10');
INSERT INTO `base_logs` VALUES ('117874', '1', '用户登录', '1', '2018-12-26 06:31:12');
INSERT INTO `base_logs` VALUES ('117875', '1', '用户登录', '1', '2018-12-26 06:33:36');
INSERT INTO `base_logs` VALUES ('117876', '1', '用户登录', '1', '2018-12-27 02:01:39');
INSERT INTO `base_logs` VALUES ('117877', '5', '分类查询', '1', '2018-12-27 02:07:18');
INSERT INTO `base_logs` VALUES ('117878', '5', '分类查询', '1', '2018-12-27 02:07:19');
INSERT INTO `base_logs` VALUES ('117879', '5', '分类查询', '1', '2018-12-27 02:07:36');
INSERT INTO `base_logs` VALUES ('117880', '7', '文件上传', '1', '2018-12-27 02:07:52');
INSERT INTO `base_logs` VALUES ('117881', '3', '修改了党员管理1条数据', '1', '2018-12-27 02:07:55');
INSERT INTO `base_logs` VALUES ('117882', '1', '用户登录', '1', '2018-12-27 05:42:15');
INSERT INTO `base_logs` VALUES ('117883', '1', '用户登录', '1', '2018-12-27 07:20:44');
INSERT INTO `base_logs` VALUES ('117884', '1', '用户登录', '1', '2018-12-28 08:16:48');
INSERT INTO `base_logs` VALUES ('117885', '5', '分类查询', '1', '2018-12-28 08:16:53');
INSERT INTO `base_logs` VALUES ('117886', '5', '查询菜单', '1', '2018-12-28 08:17:28');
INSERT INTO `base_logs` VALUES ('117887', '1', '用户登录', '1', '2018-12-28 08:19:39');
INSERT INTO `base_logs` VALUES ('117888', '5', '分类查询', '1', '2018-12-28 08:19:46');
INSERT INTO `base_logs` VALUES ('117889', '1', '用户登录', '1', '2018-12-28 08:20:23');
INSERT INTO `base_logs` VALUES ('117890', '1', '用户登录', '1', '2018-12-28 08:23:08');
INSERT INTO `base_logs` VALUES ('117891', '5', '分类查询', '1', '2018-12-28 08:23:10');
INSERT INTO `base_logs` VALUES ('117892', '5', '分类查询', '1', '2018-12-28 08:23:16');
INSERT INTO `base_logs` VALUES ('117893', '1', '用户登录', '1', '2018-12-28 08:24:02');
INSERT INTO `base_logs` VALUES ('117894', '5', '分类查询', '1', '2018-12-28 08:24:08');
INSERT INTO `base_logs` VALUES ('117895', '1', '用户登录', '1', '2018-12-28 08:29:00');
INSERT INTO `base_logs` VALUES ('117896', '5', '分类查询', '1', '2018-12-28 08:29:02');
INSERT INTO `base_logs` VALUES ('117897', '5', '分类查询', '1', '2018-12-28 08:29:13');
INSERT INTO `base_logs` VALUES ('117898', '5', '分类查询', '1', '2018-12-28 08:29:31');
INSERT INTO `base_logs` VALUES ('117899', '1', '用户登录', '1', '2018-12-28 08:38:16');
INSERT INTO `base_logs` VALUES ('117900', '5', '分类查询', '1', '2018-12-28 08:38:19');
INSERT INTO `base_logs` VALUES ('117901', '5', '分类查询', '1', '2018-12-28 08:38:22');
INSERT INTO `base_logs` VALUES ('117902', '1', '用户登录', '1', '2018-12-28 08:38:38');
INSERT INTO `base_logs` VALUES ('117903', '5', '分类查询', '1', '2018-12-28 08:38:41');
INSERT INTO `base_logs` VALUES ('117904', '1', '用户登录', '1', '2018-12-28 08:40:23');
INSERT INTO `base_logs` VALUES ('117905', '5', '分类查询', '1', '2018-12-28 08:40:25');
INSERT INTO `base_logs` VALUES ('117906', '5', '分类查询', '1', '2018-12-28 08:42:12');
INSERT INTO `base_logs` VALUES ('117907', '1', '用户登录', '1', '2018-12-28 08:43:37');
INSERT INTO `base_logs` VALUES ('117908', '5', '分类查询', '1', '2018-12-28 08:43:40');
INSERT INTO `base_logs` VALUES ('117909', '1', '用户登录', '1', '2018-12-28 08:52:49');
INSERT INTO `base_logs` VALUES ('117910', '5', '分类查询', '1', '2018-12-28 08:52:51');
INSERT INTO `base_logs` VALUES ('117911', '1', '用户登录', '1', '2018-12-28 08:53:02');
INSERT INTO `base_logs` VALUES ('117912', '5', '分类查询', '1', '2018-12-28 08:53:04');
INSERT INTO `base_logs` VALUES ('117913', '1', '用户登录', '1', '2018-12-28 08:53:43');
INSERT INTO `base_logs` VALUES ('117914', '5', '分类查询', '1', '2018-12-28 08:53:46');
INSERT INTO `base_logs` VALUES ('117915', '1', '用户登录', '1', '2018-12-28 08:56:40');
INSERT INTO `base_logs` VALUES ('117916', '5', '分类查询', '1', '2018-12-28 08:56:43');
INSERT INTO `base_logs` VALUES ('117917', '1', '用户登录', '1', '2018-12-28 08:59:49');
INSERT INTO `base_logs` VALUES ('117918', '5', '分类查询', '1', '2018-12-28 08:59:52');
INSERT INTO `base_logs` VALUES ('117919', '1', '用户登录', '1', '2018-12-28 08:59:59');
INSERT INTO `base_logs` VALUES ('117920', '5', '分类查询', '1', '2018-12-28 09:00:04');
INSERT INTO `base_logs` VALUES ('117921', '1', '用户登录', '1', '2018-12-28 09:01:11');
INSERT INTO `base_logs` VALUES ('117922', '5', '分类查询', '1', '2018-12-28 09:01:14');
INSERT INTO `base_logs` VALUES ('117923', '1', '用户登录', '1', '2019-01-15 02:59:31');
INSERT INTO `base_logs` VALUES ('117924', '1', '用户登录', '1', '2019-01-15 03:01:32');
INSERT INTO `base_logs` VALUES ('117925', '5', '查询菜单', '1', '2019-01-15 03:01:35');
INSERT INTO `base_logs` VALUES ('117926', '5', '查询菜单', '1', '2019-01-15 03:08:45');
INSERT INTO `base_logs` VALUES ('117927', '5', '查询角色', '1', '2019-01-15 03:08:46');
INSERT INTO `base_logs` VALUES ('117928', '5', '查询角色', '1', '2019-01-15 03:08:48');
INSERT INTO `base_logs` VALUES ('117929', '5', '查询管理员', '1', '2019-01-15 03:08:48');
INSERT INTO `base_logs` VALUES ('117930', '5', '查询系统日志', '1', '2019-01-15 03:08:52');
INSERT INTO `base_logs` VALUES ('117931', '5', '分类查询', '1', '2019-01-15 03:09:02');
INSERT INTO `base_logs` VALUES ('117932', '5', '分类查询', '1', '2019-01-15 03:09:04');
INSERT INTO `base_logs` VALUES ('117933', '5', '分类查询', '1', '2019-01-15 03:09:07');
INSERT INTO `base_logs` VALUES ('117934', '5', '分类查询', '1', '2019-01-15 03:09:08');
INSERT INTO `base_logs` VALUES ('117935', '5', '分类查询', '1', '2019-01-15 03:09:10');
INSERT INTO `base_logs` VALUES ('117936', '5', '分类查询', '1', '2019-01-15 03:09:12');
INSERT INTO `base_logs` VALUES ('117937', '5', '分类查询', '1', '2019-01-15 03:09:23');
INSERT INTO `base_logs` VALUES ('117938', '5', '分类查询', '1', '2019-01-15 03:11:56');
INSERT INTO `base_logs` VALUES ('117939', '5', '分类查询', '1', '2019-01-15 03:12:25');
INSERT INTO `base_logs` VALUES ('117940', '1', '用户登录', '1', '2019-01-15 03:19:23');
INSERT INTO `base_logs` VALUES ('117941', '1', '用户登录', '1', '2019-01-15 05:42:07');
INSERT INTO `base_logs` VALUES ('117942', '5', '查询菜单', '1', '2019-01-15 05:45:37');
INSERT INTO `base_logs` VALUES ('117943', '5', '资源库查看', '1', '2019-01-15 05:48:12');
INSERT INTO `base_logs` VALUES ('117944', '5', '资源库查看', '1', '2019-01-15 05:48:28');
INSERT INTO `base_logs` VALUES ('117945', '5', '资源库查看', '1', '2019-01-15 05:48:45');
INSERT INTO `base_logs` VALUES ('117946', '5', '资源库查看', '1', '2019-01-15 05:49:57');
INSERT INTO `base_logs` VALUES ('117947', '1', '用户登录', '1', '2019-01-15 06:30:28');
INSERT INTO `base_logs` VALUES ('117948', '5', '查询菜单', '1', '2019-01-15 06:30:30');
INSERT INTO `base_logs` VALUES ('117949', '1', '用户登录', '1', '2019-01-15 06:30:46');
INSERT INTO `base_logs` VALUES ('117950', '5', '查询菜单', '1', '2019-01-15 06:30:50');
INSERT INTO `base_logs` VALUES ('117951', '5', '查询角色', '1', '2019-01-15 06:30:51');
INSERT INTO `base_logs` VALUES ('117952', '5', '查询角色', '1', '2019-01-15 06:30:52');
INSERT INTO `base_logs` VALUES ('117953', '5', '查询管理员', '1', '2019-01-15 06:30:52');
INSERT INTO `base_logs` VALUES ('117954', '5', '查询系统日志', '1', '2019-01-15 06:30:53');
INSERT INTO `base_logs` VALUES ('117955', '5', '分类查询', '1', '2019-01-15 06:31:08');
INSERT INTO `base_logs` VALUES ('117956', '5', '分类查询', '1', '2019-01-15 06:31:20');
INSERT INTO `base_logs` VALUES ('117957', '5', '分类查询', '1', '2019-01-15 06:31:38');
INSERT INTO `base_logs` VALUES ('117958', '1', '用户登录', '1', '2019-01-15 06:42:17');
INSERT INTO `base_logs` VALUES ('117959', '5', '查询菜单', '1', '2019-01-15 06:42:35');
INSERT INTO `base_logs` VALUES ('117960', '5', '查询角色', '1', '2019-01-15 06:42:36');
INSERT INTO `base_logs` VALUES ('117961', '5', '查询角色', '1', '2019-01-15 06:42:37');
INSERT INTO `base_logs` VALUES ('117962', '5', '查询管理员', '1', '2019-01-15 06:42:37');
INSERT INTO `base_logs` VALUES ('117963', '5', '查询系统日志', '1', '2019-01-15 06:42:37');
INSERT INTO `base_logs` VALUES ('117964', '5', '分类查询', '1', '2019-01-15 06:43:28');
INSERT INTO `base_logs` VALUES ('117965', '5', '分类查询', '1', '2019-01-15 06:43:35');
INSERT INTO `base_logs` VALUES ('117966', '1', '用户退出', '1', '2019-01-15 06:52:29');
INSERT INTO `base_logs` VALUES ('117967', '1', '用户登录', '1', '2019-01-15 06:52:31');
INSERT INTO `base_logs` VALUES ('117968', '5', '资源库查看', '1', '2019-01-15 06:52:33');
INSERT INTO `base_logs` VALUES ('117969', '1', '用户登录', '1', '2019-01-15 06:53:33');
INSERT INTO `base_logs` VALUES ('117970', '1', '用户退出', '1', '2019-01-15 06:53:37');
INSERT INTO `base_logs` VALUES ('117971', '1', '用户登录', '1', '2019-01-15 06:53:41');
INSERT INTO `base_logs` VALUES ('117972', '5', '查询菜单', '1', '2019-01-15 06:53:43');
INSERT INTO `base_logs` VALUES ('117973', '5', '资源库查看', '1', '2019-01-15 06:54:02');
INSERT INTO `base_logs` VALUES ('117974', '1', '用户登录', '1', '2019-01-15 06:55:23');
INSERT INTO `base_logs` VALUES ('117975', '5', '查询菜单', '1', '2019-01-15 06:55:25');
INSERT INTO `base_logs` VALUES ('117976', '5', '资源库查看', '1', '2019-01-15 06:55:51');
INSERT INTO `base_logs` VALUES ('117977', '5', '资源库查看', '1', '2019-01-15 06:56:00');
INSERT INTO `base_logs` VALUES ('117978', '5', '资源库查看', '1', '2019-01-15 06:56:08');
INSERT INTO `base_logs` VALUES ('117979', '5', '资源库查看', '1', '2019-01-15 06:56:14');
INSERT INTO `base_logs` VALUES ('117980', '5', '资源库查看', '1', '2019-01-15 06:58:05');
INSERT INTO `base_logs` VALUES ('117981', '1', '用户登录', '1', '2019-01-15 07:04:16');
INSERT INTO `base_logs` VALUES ('117982', '5', '资源库查看', '1', '2019-01-15 07:04:23');
INSERT INTO `base_logs` VALUES ('117983', '5', '资源库查看', '1', '2019-01-15 07:04:29');
INSERT INTO `base_logs` VALUES ('117984', '5', '资源库查看', '1', '2019-01-15 07:04:46');
INSERT INTO `base_logs` VALUES ('117985', '5', '分类查询', '1', '2019-01-15 07:05:37');
INSERT INTO `base_logs` VALUES ('117986', '1', '用户登录', '1', '2019-01-15 07:15:44');
INSERT INTO `base_logs` VALUES ('117987', '5', '分类查询', '1', '2019-01-15 07:15:46');
INSERT INTO `base_logs` VALUES ('117988', '5', '分类查询', '1', '2019-01-15 07:15:47');
INSERT INTO `base_logs` VALUES ('117989', '5', '分类查询', '1', '2019-01-15 07:17:09');
INSERT INTO `base_logs` VALUES ('117990', '5', '资源库查看', '1', '2019-01-15 07:17:14');
INSERT INTO `base_logs` VALUES ('117991', '5', '资源库查看', '1', '2019-01-15 07:17:22');
INSERT INTO `base_logs` VALUES ('117992', '5', '资源库查看', '1', '2019-01-15 07:17:39');
INSERT INTO `base_logs` VALUES ('117993', '5', '分类查询', '1', '2019-01-15 07:18:47');
INSERT INTO `base_logs` VALUES ('117994', '5', '分类查询', '1', '2019-01-15 07:18:50');
INSERT INTO `base_logs` VALUES ('117995', '5', '分类查询', '1', '2019-01-15 07:18:53');
INSERT INTO `base_logs` VALUES ('117996', '5', '分类查询', '1', '2019-01-15 07:18:54');
INSERT INTO `base_logs` VALUES ('117997', '5', '分类查询', '1', '2019-01-15 07:19:00');
INSERT INTO `base_logs` VALUES ('117998', '5', '分类查询', '1', '2019-01-15 07:19:15');
INSERT INTO `base_logs` VALUES ('117999', '1', '用户登录', '1', '2019-01-15 07:21:05');
INSERT INTO `base_logs` VALUES ('118000', '5', '分类查询', '1', '2019-01-15 07:21:07');
INSERT INTO `base_logs` VALUES ('118001', '5', '分类查询', '1', '2019-01-15 07:24:33');
INSERT INTO `base_logs` VALUES ('118002', '3', '修改了党员管理1条数据', '1', '2019-01-15 07:24:39');
INSERT INTO `base_logs` VALUES ('118003', '5', '分类查询', '1', '2019-01-15 07:24:59');
INSERT INTO `base_logs` VALUES ('118004', '5', '分类查询', '1', '2019-01-15 07:25:03');
INSERT INTO `base_logs` VALUES ('118005', '5', '分类查询', '1', '2019-01-15 07:25:03');
INSERT INTO `base_logs` VALUES ('118006', '5', '资源库查看', '1', '2019-01-15 07:25:12');
INSERT INTO `base_logs` VALUES ('118007', '5', '资源库查看', '1', '2019-01-15 07:25:23');
INSERT INTO `base_logs` VALUES ('118008', '5', '资源库查看', '1', '2019-01-15 07:26:37');
INSERT INTO `base_logs` VALUES ('118009', '5', '资源库查看', '1', '2019-01-15 07:27:03');
INSERT INTO `base_logs` VALUES ('118010', '1', '用户登录', '1', '2019-01-15 07:28:35');
INSERT INTO `base_logs` VALUES ('118011', '5', '资源库查看', '1', '2019-01-15 07:28:38');
INSERT INTO `base_logs` VALUES ('118012', '5', '资源库查看', '1', '2019-01-15 07:28:54');
INSERT INTO `base_logs` VALUES ('118013', '5', '资源库查看', '1', '2019-01-15 07:29:02');
INSERT INTO `base_logs` VALUES ('118014', '1', '用户登录', '1', '2019-01-15 07:39:35');
INSERT INTO `base_logs` VALUES ('118015', '5', '资源库查看', '1', '2019-01-15 07:39:40');
INSERT INTO `base_logs` VALUES ('118016', '5', '资源库查看', '1', '2019-01-15 07:39:48');
INSERT INTO `base_logs` VALUES ('118017', '1', '用户登录', '1', '2019-01-15 07:48:48');
INSERT INTO `base_logs` VALUES ('118018', '5', '资源库查看', '1', '2019-01-15 07:48:52');
INSERT INTO `base_logs` VALUES ('118019', '5', '资源库查看', '1', '2019-01-15 07:49:02');
INSERT INTO `base_logs` VALUES ('118020', '5', '资源库查看', '1', '2019-01-15 07:49:08');
INSERT INTO `base_logs` VALUES ('118021', '5', '资源库查看', '1', '2019-01-15 07:49:22');
INSERT INTO `base_logs` VALUES ('118022', '5', '资源库查看', '1', '2019-01-15 07:49:26');
INSERT INTO `base_logs` VALUES ('118023', '1', '用户登录', '1', '2019-01-15 09:09:02');
INSERT INTO `base_logs` VALUES ('118024', '5', '资源库查看', '1', '2019-01-15 09:09:06');
INSERT INTO `base_logs` VALUES ('118025', '5', '资源库查看', '1', '2019-01-15 09:09:09');
INSERT INTO `base_logs` VALUES ('118026', '5', '资源库查看', '1', '2019-01-15 09:15:39');
INSERT INTO `base_logs` VALUES ('118027', '5', '资源库查看', '1', '2019-01-15 09:18:56');
INSERT INTO `base_logs` VALUES ('118028', '1', '用户登录', '1', '2019-01-16 01:23:14');
INSERT INTO `base_logs` VALUES ('118029', '5', '资源库查看', '1', '2019-01-16 01:23:29');
INSERT INTO `base_logs` VALUES ('118030', '5', '资源库查看', '1', '2019-01-16 01:24:33');
INSERT INTO `base_logs` VALUES ('118031', '1', '用户登录', '1', '2019-01-16 01:32:47');
INSERT INTO `base_logs` VALUES ('118032', '5', '资源库查看', '1', '2019-01-16 01:32:50');
INSERT INTO `base_logs` VALUES ('118033', '5', '资源库查看', '1', '2019-01-16 01:33:34');
INSERT INTO `base_logs` VALUES ('118034', '1', '用户登录', '1', '2019-01-16 01:55:37');
INSERT INTO `base_logs` VALUES ('118035', '5', '资源库查看', '1', '2019-01-16 01:55:42');
INSERT INTO `base_logs` VALUES ('118036', '1', '用户登录', '1', '2019-01-16 02:03:51');
INSERT INTO `base_logs` VALUES ('118037', '5', '查询菜单', '1', '2019-01-16 02:03:53');
INSERT INTO `base_logs` VALUES ('118038', '5', '查询角色', '1', '2019-01-16 02:03:54');
INSERT INTO `base_logs` VALUES ('118039', '5', '查询角色', '1', '2019-01-16 02:03:55');
INSERT INTO `base_logs` VALUES ('118040', '5', '查询管理员', '1', '2019-01-16 02:03:55');
INSERT INTO `base_logs` VALUES ('118041', '5', '查询系统日志', '1', '2019-01-16 02:03:56');
INSERT INTO `base_logs` VALUES ('118042', '5', '查询菜单', '1', '2019-01-16 02:04:04');
INSERT INTO `base_logs` VALUES ('118043', '5', '查询角色', '1', '2019-01-16 02:04:09');
INSERT INTO `base_logs` VALUES ('118044', '5', '查询角色', '1', '2019-01-16 02:04:11');
INSERT INTO `base_logs` VALUES ('118045', '5', '查询角色', '1', '2019-01-16 02:04:14');
INSERT INTO `base_logs` VALUES ('118046', '5', '查询管理员', '1', '2019-01-16 02:04:14');
INSERT INTO `base_logs` VALUES ('118047', '5', '查询角色', '1', '2019-01-16 02:04:14');
INSERT INTO `base_logs` VALUES ('118048', '5', '查询管理员', '1', '2019-01-16 02:04:14');
INSERT INTO `base_logs` VALUES ('118049', '5', '查询系统日志', '1', '2019-01-16 02:04:17');
INSERT INTO `base_logs` VALUES ('118050', '5', '资源库查看', '1', '2019-01-16 02:04:26');
INSERT INTO `base_logs` VALUES ('118051', '1', '用户登录', '1', '2019-01-16 02:07:44');
INSERT INTO `base_logs` VALUES ('118052', '5', '资源库查看', '1', '2019-01-16 02:07:49');
INSERT INTO `base_logs` VALUES ('118053', '5', '资源库查看', '1', '2019-01-16 02:08:14');
INSERT INTO `base_logs` VALUES ('118054', '5', '资源库查看', '1', '2019-01-16 02:11:16');
INSERT INTO `base_logs` VALUES ('118055', '1', '用户登录', '1', '2019-01-16 02:15:39');
INSERT INTO `base_logs` VALUES ('118056', '5', '资源库查看', '1', '2019-01-16 02:15:50');
INSERT INTO `base_logs` VALUES ('118057', '5', '资源库查看', '1', '2019-01-16 02:16:30');
INSERT INTO `base_logs` VALUES ('118058', '5', '资源库查看', '1', '2019-01-16 02:16:34');
INSERT INTO `base_logs` VALUES ('118059', '5', '资源库查看', '1', '2019-01-16 02:16:35');
INSERT INTO `base_logs` VALUES ('118060', '5', '资源库查看', '1', '2019-01-16 02:16:39');
INSERT INTO `base_logs` VALUES ('118061', '5', '资源库查看', '1', '2019-01-16 02:16:48');
INSERT INTO `base_logs` VALUES ('118062', '5', '资源库查看', '1', '2019-01-16 02:16:53');
INSERT INTO `base_logs` VALUES ('118063', '5', '资源库查看', '1', '2019-01-16 02:16:54');
INSERT INTO `base_logs` VALUES ('118064', '5', '资源库查看', '1', '2019-01-16 02:16:56');
INSERT INTO `base_logs` VALUES ('118065', '5', '资源库查看', '1', '2019-01-16 02:17:21');
INSERT INTO `base_logs` VALUES ('118066', '5', '资源库查看', '1', '2019-01-16 02:17:30');
INSERT INTO `base_logs` VALUES ('118067', '5', '资源库查看', '1', '2019-01-16 02:17:37');
INSERT INTO `base_logs` VALUES ('118068', '1', '用户登录', '1', '2019-01-16 03:00:30');
INSERT INTO `base_logs` VALUES ('118069', '5', '查询菜单', '1', '2019-01-16 03:00:32');
INSERT INTO `base_logs` VALUES ('118070', '5', '查询角色', '1', '2019-01-16 03:00:32');
INSERT INTO `base_logs` VALUES ('118071', '5', '查询角色', '1', '2019-01-16 03:00:33');
INSERT INTO `base_logs` VALUES ('118072', '5', '查询管理员', '1', '2019-01-16 03:00:33');
INSERT INTO `base_logs` VALUES ('118073', '5', '查询系统日志', '1', '2019-01-16 03:00:33');
INSERT INTO `base_logs` VALUES ('118074', '5', '资源库查看', '1', '2019-01-16 03:00:35');
INSERT INTO `base_logs` VALUES ('118075', '5', '分类查询', '1', '2019-01-16 03:00:37');
INSERT INTO `base_logs` VALUES ('118076', '5', '分类查询', '1', '2019-01-16 03:00:37');

-- ----------------------------
-- Table structure for base_managers
-- ----------------------------
DROP TABLE IF EXISTS `base_managers`;
CREATE TABLE `base_managers` (
  `UserID` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `UserName` varchar(20) NOT NULL COMMENT '用户名',
  `Passwd` char(32) NOT NULL DEFAULT '689EE787E0EA220E6D5A72163EB8C437' COMMENT '密码，默认初始密码为123456(MD5)',
  `RealName` varchar(20) NOT NULL COMMENT '真实姓名',
  `Phone` varchar(50) DEFAULT NULL COMMENT '电话',
  `Email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `Modifier` int(11) DEFAULT NULL COMMENT '更新者',
  `ModifyTime` datetime DEFAULT NULL COMMENT '更新时间',
  `LastLoginTime` datetime DEFAULT NULL COMMENT '上次登录时间',
  `Creator` int(11) NOT NULL COMMENT '创建者',
  `CreateTime` datetime NOT NULL COMMENT '创建时间',
  `Status` int(11) DEFAULT '1',
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of base_managers
-- ----------------------------
INSERT INTO `base_managers` VALUES ('1', 'admin', '689EE787E0EA220E6D5A72163EB8C437', '系统管理员', '18666668888', '111111@qq.com', '1', '2018-02-05 09:58:35', '2019-01-16 03:00:30', '0', '2017-02-17 15:57:12', '1');
INSERT INTO `base_managers` VALUES ('2', 'qinc', '689EE787E0EA220E6D5A72163EB8C437', 'tests', '18666668888', '111111@qq.com', '1', '2018-12-04 09:28:48', '2018-12-21 08:05:01', '1', '2018-12-04 09:28:48', '0');

-- ----------------------------
-- Table structure for base_menus
-- ----------------------------
DROP TABLE IF EXISTS `base_menus`;
CREATE TABLE `base_menus` (
  `MenuID` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `MenuName` varchar(20) NOT NULL COMMENT '菜单名',
  `ParentMenuID` int(11) DEFAULT NULL COMMENT '父菜单',
  `Path` varchar(255) DEFAULT NULL COMMENT '路径',
  `Description` varchar(200) DEFAULT NULL COMMENT '描述',
  `Sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `IsOutLink` int(11) DEFAULT '0',
  PRIMARY KEY (`MenuID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='菜单表';

-- ----------------------------
-- Records of base_menus
-- ----------------------------
INSERT INTO `base_menus` VALUES ('1', '系统管理', '0', '', '', '1', '0');
INSERT INTO `base_menus` VALUES ('2', '菜单管理', '1', 'menu', '菜单管理', '1', '0');
INSERT INTO `base_menus` VALUES ('3', '角色管理', '1', 'role', '角色管理', '2', '0');
INSERT INTO `base_menus` VALUES ('4', '管理用户管理', '1', 'manager', '管理用户管理', '3', '0');
INSERT INTO `base_menus` VALUES ('5', '知识组织', '0', '', '', '2', '0');
INSERT INTO `base_menus` VALUES ('6', '知识模型管理', '5', 'db/mould', '知识模型管理', '1', '0');
INSERT INTO `base_menus` VALUES ('7', '知识库管理', '5', 'db/datalibrary', '知识库管理', '2', '0');
INSERT INTO `base_menus` VALUES ('8', '字典管理', '5', 'dic', '字典管理', '3', '0');
INSERT INTO `base_menus` VALUES ('9', '用户管理', '0', '', '', '4', '0');
INSERT INTO `base_menus` VALUES ('10', '党员管理', '9', 'db/resource?databaseName=front_userinfo&mouldId=117', '党员信息', '1', '0');
INSERT INTO `base_menus` VALUES ('11', '日志管理', '1', 'log', '后台系统操作（登录、操作等）等日志列表，日志不可修改和删除，可查看，可下载。', '4', '0');
INSERT INTO `base_menus` VALUES ('12', '用户分类管理', '9', 'classes', '用户分类管理', '0', '0');
INSERT INTO `base_menus` VALUES ('13', '商品管理', '9', 'db/resource?databaseName=front_product&mouldId=118', '', '3', '0');

-- ----------------------------
-- Table structure for base_mgrole
-- ----------------------------
DROP TABLE IF EXISTS `base_mgrole`;
CREATE TABLE `base_mgrole` (
  `UserID` int(11) DEFAULT NULL COMMENT '用户ID',
  `RoleID` int(11) DEFAULT NULL COMMENT '角色ID',
  KEY `FK_Reference_1` (`UserID`) USING BTREE,
  KEY `FK_Reference_2` (`RoleID`) USING BTREE,
  CONSTRAINT `base_mgrole_ibfk_1` FOREIGN KEY (`RoleID`) REFERENCES `base_roles` (`RoleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户角色表';

-- ----------------------------
-- Records of base_mgrole
-- ----------------------------
INSERT INTO `base_mgrole` VALUES ('1', '1');
INSERT INTO `base_mgrole` VALUES ('2', '2');

-- ----------------------------
-- Table structure for base_rolemenu
-- ----------------------------
DROP TABLE IF EXISTS `base_rolemenu`;
CREATE TABLE `base_rolemenu` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RoleID` int(11) DEFAULT NULL COMMENT '角色ID',
  `MenuID` int(11) DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`ID`),
  KEY `FK_Reference_3` (`RoleID`) USING BTREE,
  KEY `FK_Reference_4` (`MenuID`) USING BTREE,
  CONSTRAINT `base_rolemenu_ibfk_1` FOREIGN KEY (`MenuID`) REFERENCES `base_menus` (`MenuID`),
  CONSTRAINT `base_rolemenu_ibfk_2` FOREIGN KEY (`RoleID`) REFERENCES `base_roles` (`RoleID`)
) ENGINE=InnoDB AUTO_INCREMENT=382 DEFAULT CHARSET=utf8 COMMENT='角色菜单表';

-- ----------------------------
-- Records of base_rolemenu
-- ----------------------------
INSERT INTO `base_rolemenu` VALUES ('336', '2', '1');
INSERT INTO `base_rolemenu` VALUES ('337', '2', '2');
INSERT INTO `base_rolemenu` VALUES ('338', '2', '3');
INSERT INTO `base_rolemenu` VALUES ('339', '2', '4');
INSERT INTO `base_rolemenu` VALUES ('340', '2', '5');
INSERT INTO `base_rolemenu` VALUES ('341', '2', '6');
INSERT INTO `base_rolemenu` VALUES ('342', '2', '7');
INSERT INTO `base_rolemenu` VALUES ('343', '2', '8');
INSERT INTO `base_rolemenu` VALUES ('369', '1', '1');
INSERT INTO `base_rolemenu` VALUES ('370', '1', '2');
INSERT INTO `base_rolemenu` VALUES ('371', '1', '3');
INSERT INTO `base_rolemenu` VALUES ('372', '1', '4');
INSERT INTO `base_rolemenu` VALUES ('373', '1', '11');
INSERT INTO `base_rolemenu` VALUES ('374', '1', '5');
INSERT INTO `base_rolemenu` VALUES ('375', '1', '6');
INSERT INTO `base_rolemenu` VALUES ('376', '1', '7');
INSERT INTO `base_rolemenu` VALUES ('377', '1', '8');
INSERT INTO `base_rolemenu` VALUES ('378', '1', '9');
INSERT INTO `base_rolemenu` VALUES ('379', '1', '10');
INSERT INTO `base_rolemenu` VALUES ('380', '1', '12');
INSERT INTO `base_rolemenu` VALUES ('381', '1', '13');

-- ----------------------------
-- Table structure for base_roles
-- ----------------------------
DROP TABLE IF EXISTS `base_roles`;
CREATE TABLE `base_roles` (
  `RoleID` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `RoleName` varchar(20) NOT NULL COMMENT '角色名',
  `Description` varchar(200) NOT NULL DEFAULT '' COMMENT '角色描述',
  PRIMARY KEY (`RoleID`),
  KEY `RoleName` (`RoleName`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of base_roles
-- ----------------------------
INSERT INTO `base_roles` VALUES ('1', '超级管理员', '超级管理员，拥有后台管理全部权限');
INSERT INTO `base_roles` VALUES ('2', 'test', 'test');

-- ----------------------------
-- Table structure for db_datalibrarys
-- ----------------------------
DROP TABLE IF EXISTS `db_datalibrarys`;
CREATE TABLE `db_datalibrarys` (
  `DataBaseID` int(11) NOT NULL AUTO_INCREMENT COMMENT '库ID',
  `DataBaseName` varchar(100) NOT NULL COMMENT '库英文名',
  `DataBaseCName` varchar(100) NOT NULL COMMENT '库中文名',
  `Description` varchar(1000) DEFAULT NULL COMMENT '库描述',
  `MouldID` int(11) NOT NULL COMMENT '模型ID',
  `Status` int(11) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`DataBaseID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='模型数据库表';

-- ----------------------------
-- Records of db_datalibrarys
-- ----------------------------
INSERT INTO `db_datalibrarys` VALUES ('4', 'front_userinfo', '党员信息表', '党员信息', '117', '1');
INSERT INTO `db_datalibrarys` VALUES ('7', 'front_product', '商品表', '商品', '118', '1');

-- ----------------------------
-- Table structure for db_librarynexus
-- ----------------------------
DROP TABLE IF EXISTS `db_librarynexus`;
CREATE TABLE `db_librarynexus` (
  `nexusid` int(11) NOT NULL AUTO_INCREMENT,
  `mdbname` varchar(100) DEFAULT NULL,
  `mdbfield` varchar(100) DEFAULT NULL,
  `sdbname` varchar(100) DEFAULT NULL,
  `sdbnamefield` varchar(100) DEFAULT NULL,
  `sdbvaluefield` varchar(100) DEFAULT NULL,
  `sdbsql` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`nexusid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_librarynexus
-- ----------------------------
INSERT INTO `db_librarynexus` VALUES ('9', 'front_userinfo', 'nation', 'nation', 'nationid', 'naitonname', 'select nationid,nationname from nation');

-- ----------------------------
-- Table structure for db_metadatas
-- ----------------------------
DROP TABLE IF EXISTS `db_metadatas`;
CREATE TABLE `db_metadatas` (
  `MetaDataID` int(11) NOT NULL AUTO_INCREMENT COMMENT '字段ID',
  `ColumnName` varchar(100) NOT NULL COMMENT '字段英文名',
  `ColumnCName` varchar(100) NOT NULL COMMENT '字段中文名',
  `ColumnType` int(11) NOT NULL DEFAULT '1' COMMENT '字段类型',
  `ColumnSource` int(11) DEFAULT NULL COMMENT '字段来源',
  `ColumnTypeRule` varchar(100) DEFAULT NULL COMMENT '类型规则',
  `DataType` varchar(30) NOT NULL DEFAULT '' COMMENT '数据类型',
  `ColumnLength` int(11) DEFAULT NULL COMMENT '字段长度',
  `FormShow` int(11) NOT NULL DEFAULT '0' COMMENT '表单显示',
  `GridShow` int(11) NOT NULL DEFAULT '0' COMMENT '列表显示',
  `Sorts` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `MouldID` int(11) NOT NULL COMMENT '模型ID',
  `DefaultValue` varchar(100) DEFAULT NULL COMMENT '默认值',
  `SearchShow` int(1) DEFAULT NULL COMMENT '搜索显示',
  `ImportAndExportShow` int(1) DEFAULT '0' COMMENT '导入导出显示',
  `Required` int(1) DEFAULT NULL COMMENT '是否为必填项',
  `Editable` int(11) DEFAULT '0' COMMENT '是否可修改列值',
  `Only` int(1) DEFAULT NULL,
  `ValidExp` varchar(100) DEFAULT NULL COMMENT '校验的正则表达式',
  `ValidMsg` varchar(255) DEFAULT NULL COMMENT '校验错误的提示信息',
  PRIMARY KEY (`MetaDataID`)
) ENGINE=InnoDB AUTO_INCREMENT=290 DEFAULT CHARSET=utf8 COMMENT='元数据表';

-- ----------------------------
-- Records of db_metadatas
-- ----------------------------
INSERT INTO `db_metadatas` VALUES ('10', 'name', '姓名', '1', null, null, 'varchar', null, '1', '1', '2', '117', '', '1', '1', '1', null, null, '^[\\u4e00-\\u9fa5]*$', '请输入中文');
INSERT INTO `db_metadatas` VALUES ('12', 'gender', '性别', '3', '1', 'gender', 'int', null, '1', '1', '3', '117', '', '1', '1', '0', null, null, '', '');
INSERT INTO `db_metadatas` VALUES ('16', 'formaltime', '转正时间', '11', null, null, 'varchar', null, '1', '1', '9', '117', '', '1', '1', '0', null, null, '', '');
INSERT INTO `db_metadatas` VALUES ('33', 'password', '密码', '1', null, null, 'varchar', null, '0', '0', '12', '117', '', '0', '0', '0', null, null, '', '');
INSERT INTO `db_metadatas` VALUES ('49', 'image', '头像', '8', null, null, 'varchar', null, '1', '1', '11', '117', '', '0', '0', '1', null, null, '', '');
INSERT INTO `db_metadatas` VALUES ('111', 'age', '年龄', '17', null, null, 'varchar', null, '1', '1', '4', '117', '', '1', '1', '0', null, null, '', '');
INSERT INTO `db_metadatas` VALUES ('112', 'degree', '学历', '3', '1', 'degree', 'varchar', null, '1', '1', '8', '117', '', '1', '1', '0', null, null, '', '');
INSERT INTO `db_metadatas` VALUES ('156', 'phone', '电话号码', '1', null, null, 'varchar', null, '1', '1', '6', '117', '', '1', '1', '1', null, null, '^1([358][0-9]|4[579]|66|7[0135678]|9[89])[0-9]{8}$', '请输入正确的手机号码');
INSERT INTO `db_metadatas` VALUES ('215', 'hometown', '籍贯', '1', null, null, 'varchar', null, '1', '1', '7', '117', '', '1', '1', '0', '0', null, '', '');
INSERT INTO `db_metadatas` VALUES ('216', 'bonuspenalty', '奖惩情况', '7', null, '', 'text', null, '1', '0', '10', '117', '', '0', '0', '0', '0', null, '', '');
INSERT INTO `db_metadatas` VALUES ('278', 'userstatus', '用户状态', '3', '1', 'globalstatus', 'varchar', null, '1', '1', '13', '117', null, '1', '0', '0', '0', null, null, null);
INSERT INTO `db_metadatas` VALUES ('279', 'userclass', '用户分类', '3', '2', '', 'varchar', null, '1', '1', '1', '117', '', '1', '0', '0', '0', null, '', '');
INSERT INTO `db_metadatas` VALUES ('280', 'nation', '民族', '3', '3', null, 'int', null, '1', '1', '5', '117', null, '1', '0', '0', '0', null, null, null);
INSERT INTO `db_metadatas` VALUES ('281', 'pname', '商品名', '1', null, null, 'varchar', null, '1', '1', '1', '118', '', '1', '0', '0', '0', '0', '', '');
INSERT INTO `db_metadatas` VALUES ('282', 'description', '商品描述', '2', null, null, 'varchar', null, '1', '1', '2', '118', '', '1', '0', '0', '0', '0', '', '');
INSERT INTO `db_metadatas` VALUES ('283', 'pstatus', '是否上架中', '3', '1', 'isornot', 'varchar', null, '1', '1', '3', '118', '', '1', '0', '0', '0', '0', '', '');
INSERT INTO `db_metadatas` VALUES ('284', 'point', '商品卖点', '3', '1', 'point', 'varchar', null, '1', '1', '4', '118', '', '1', '0', '0', '0', '0', '', '');
INSERT INTO `db_metadatas` VALUES ('285', 'content', '图文简介', '7', null, null, 'mediumtext', null, '1', '1', '5', '118', '', '1', '0', '0', '0', '0', '', '');
INSERT INTO `db_metadatas` VALUES ('286', 'cover', '封面', '8', null, null, 'varchar', null, '1', '1', '6', '118', '', '1', '0', '0', '0', '0', '', '');
INSERT INTO `db_metadatas` VALUES ('287', 'publishtime', '上架时间', '11', null, null, 'date', null, '1', '1', '7', '118', '', '1', '0', '0', '0', '0', '', '');
INSERT INTO `db_metadatas` VALUES ('288', 'overplus', '剩余数量', '17', null, null, 'int', '5', '1', '1', '8', '118', '100', '1', '0', '0', '0', '0', '', '');
INSERT INTO `db_metadatas` VALUES ('289', 'price', '价格', '18', null, null, 'float', '8', '1', '1', '9', '118', '', '1', '0', '0', '0', '0', '', '');

-- ----------------------------
-- Table structure for db_moulds
-- ----------------------------
DROP TABLE IF EXISTS `db_moulds`;
CREATE TABLE `db_moulds` (
  `MouldID` int(11) NOT NULL AUTO_INCREMENT COMMENT '模型ID',
  `MouldName` varchar(100) NOT NULL COMMENT '模型名称',
  `Description` varchar(1000) DEFAULT NULL COMMENT '模型描述',
  PRIMARY KEY (`MouldID`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8 COMMENT='模型表';

-- ----------------------------
-- Records of db_moulds
-- ----------------------------
INSERT INTO `db_moulds` VALUES ('117', '用户信息模型', '用户信息');
INSERT INTO `db_moulds` VALUES ('118', '商品模型', '商品');

-- ----------------------------
-- Table structure for front_product
-- ----------------------------
DROP TABLE IF EXISTS `front_product`;
CREATE TABLE `front_product` (
  `seqid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(100) DEFAULT NULL COMMENT '商品名',
  `description` varchar(512) DEFAULT NULL COMMENT '商品描述',
  `pstatus` varchar(10) DEFAULT NULL COMMENT '是否上架中',
  `point` varchar(512) DEFAULT NULL COMMENT '商品卖点',
  `content` mediumtext COMMENT '图文简介',
  `cover` varchar(512) DEFAULT NULL COMMENT '封面',
  `publishtime` date DEFAULT NULL COMMENT '上架时间',
  `overplus` int(4) DEFAULT '100' COMMENT '剩余数量',
  `price` float(8,2) DEFAULT NULL COMMENT '价格',
  `createdtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `creatorid` int(100) DEFAULT NULL COMMENT '创建人',
  `status` int(10) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`seqid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='商品表';

-- ----------------------------
-- Records of front_product
-- ----------------------------
INSERT INTO `front_product` VALUES ('1', '念诗之王', '改革春风吹满地，吹满地，春风吹满地；中国人民真争气，真争气，人民真争气', null, null, '<p>\r\n	<img src=\"http://123.59.199.170/group1/M00/00/32/CgoKC1wPUhmAE997AAAznBJFmJA793.png\" width=\"100%\" />\r\n</p>\r\n<p>\r\n	不错，支持\r\n</p>', null, null, null, null, '2018-12-11 14:02:54', '1', '1');
INSERT INTO `front_product` VALUES ('2', '《hgjhgjhghjghjb》sdfsdfsdfsdfsdfsdfsdf', '<玩玩>', null, null, null, 'group1/M00/00/32/CgoKC1wgVP6ACSDNAAAv21-ApAo865.png', null, null, null, '2018-12-21 16:38:16', '1', '1');

-- ----------------------------
-- Table structure for front_userinfo
-- ----------------------------
DROP TABLE IF EXISTS `front_userinfo`;
CREATE TABLE `front_userinfo` (
  `seqid` int(11) NOT NULL AUTO_INCREMENT,
  `userclass` varchar(255) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL COMMENT '姓名',
  `gender` int(2) DEFAULT NULL COMMENT '性别：1男，0女',
  `age` int(10) DEFAULT NULL COMMENT '出生日期',
  `nation` int(255) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL COMMENT '手机号',
  `hometown` varchar(255) DEFAULT NULL COMMENT '籍贯',
  `degree` int(2) DEFAULT NULL COMMENT '学位：0大专以下，1专科，2本科，3研究生及以上',
  `formaltime` date DEFAULT NULL COMMENT '转正时间',
  `bonuspenalty` mediumtext COMMENT '奖惩情况',
  `image` varchar(100) DEFAULT NULL COMMENT '用户头像保存地址',
  `password` varchar(100) DEFAULT '689EE787E0EA220E6D5A72163EB8C437' COMMENT '密码，默认初始密码为123456(MD5)',
  `userstatus` int(2) DEFAULT NULL,
  `createdtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `creatorid` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1' COMMENT '-1 删除 , 0 未激活, 1 激活 ',
  PRIMARY KEY (`seqid`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8 COMMENT='党员信息表';

-- ----------------------------
-- Records of front_userinfo
-- ----------------------------
INSERT INTO `front_userinfo` VALUES ('1', '1,2,3', '啊啊', null, null, '1', '18768147661', '复制出的，复写书的; 复印; 重复，被复制，复制( duplicate的过去式和过去', null, '2018-04-19', '<p>\r\n	<span style=\"font-size:18px;font-family:SimSun;\">新时代要有新气象，更要有新作为。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;font-family:SimSun;\">立于党的十九大召开一周年的时间节点回望，</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;font-family:SimSun;\">在以习近平同志为核心的党中央坚强领导下，</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;font-family:SimSun;\">全党全军全国各族人民以习近平新时代中国</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;font-family:NSimSun;\">特色社会主义思想为指引，攻坚克难、砥砺奋进，向着党的十九大确定的宏伟目标扎实前行，改革发展书写新篇章，神州大地一派新气象。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;font-family:NSimSun;\">时代是出卷人，我们是答卷人，人民是阅卷人。一年来，经济发展保持稳中有进、稳中向好态势，全面深化改革纵深推进、风生水起，脱贫攻坚力度不断加大，人民获得感、幸福感、安全感更加充实，全面从严治党向纵深发展，主场外交亮点纷呈，中国特色大国外交开创新局面……这份精彩的答卷，是在国内外形势发生深刻复杂变化、各种风险挑战层出不穷的背景下取得的，十分来之不易。这是以习近平同志为核心的党中央统揽全局、科学决策的结果，是１３亿多中国人民齐心协力、拼搏奋斗的结果。回首这极不平凡的一年，眺望新的奋斗征程，我们对实现党的十九大确定的宏伟目标、开创中国特色社会主义事业新局面充满了信心与力量。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;font-family:FangSong_GB2312;\">伟大的事业，需要科学理论的指引。习近平新时代中国特色社会主义思想是贯穿党的十九大报告的灵魂，是马克思主义中国化的最新成果。一年来，从工厂企业到机关社区，从繁华都市到边远乡村，党的创新理论指导改革发展的火热实践，为各项事业发展注入强大思想力量。实现党的十九大确定的宏伟目标，最根本的，就是要坚持以习近平新时代中国特色社会主义思想为行动指南，坚决维护以习近平同志为核心的党中央权威和集中统一领导，把思想和行动统一到党中央的决策部署上来，在武装头脑、指导实践、推动工作上下功夫，在落实部署、见诸行动上取得实效。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;font-family:KaiTi_GB2312;\">事业发展出题目，深化改革做文章。党的十九大以来，改革扬帆再起航。深化党和国家机构改革、推进雄安新区建设、实施乡村振兴战略、深化拓展自贸试验区改革、探索建设中国特色自由贸易港等一系列重大举措相继出台，在改革开放４０周年的历史节点上，以实际行动彰显了新时代中国深化改革、扩大开放的坚定决心。事业发展没有止境，深化改革没有穷期。贯彻党的十九大精神，实现宏伟目标，需要继续用好改革开放这个关键一招。既有破局开路的大手笔，又有深耕细作的“工笔画”，坚决破除思想观念和体制机制弊端，才能激发经济社会发展活力，为决胜全面建成小康社会、开启全面建设社会主义现代化国家新征程提供强大动力。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;font-family:SimHei;\">办好中国的事情，关键在党。强体魄于伟大的自我革命，把党建设得更加坚强有力，是百年大党风华正茂的政治密码，也是担当时代使命的根本保证。“全面从严治党永远在路上，不能有任何喘口气、歇歇脚的念头。”一年来，从深化国家监察体制改革，到修订《中国共产党纪律处分条例》，从抓实政治建设，到“打虎”“拍蝇”不松劲，党的建设不断加强，管党治党取得新成绩。把全面从严治党进行到底，继续清除一切侵蚀党的健康肌体的病毒，大力营造风清气正的政治生态，必将以全党的强大正能量在全社会凝聚起推动中国发展进步的磅礴力量。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;font-family:;\">高举伟大旗帜，不负人民重托。“我们的目标很宏伟，但也很朴素，归根结底就是让全体中国人都过上更好的日子。”为中国人民谋幸福，为中华民族谋复兴，是中国共产党人的初心和使命。坚持以人民为中心，把人民对美好生活的向往作为奋斗目标，我们一定能汇聚起团结奋斗的磅礴力量，把党的十九大擘画的宏伟蓝图变成现实，不断创造新时代的光辉业绩。</span> \r\n</p>', 'group1/M00/00/32/CgoKC1wkM8OAHrflAABn7bW1g5k852.png', 'BD27FD1849814105E918687BF40C73FD', null, '2018-04-19 14:51:55', '1', '1');
INSERT INTO `front_userinfo` VALUES ('2', null, '白白', null, '20', null, '18768147662', null, null, '2018-04-19', null, 'group1/M00/00/32/CgoKC1wF35aASPjSAACXQn8Qa0Y618.jpg', '689EE787E0EA220E6D5A72163EB8C437', null, '2018-01-19 16:28:36', '1', '0');
INSERT INTO `front_userinfo` VALUES ('3', null, '匆匆', null, '20', null, '18768147663', null, null, '2018-04-19', '<p style=\"text-align:center;\">\r\n	<span style=\"font-family:SimHei;font-size:18px;color:#60D978;\">不是尊前爱惜身</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-family:SimHei;font-size:18px;background-color:#E53333;\">佯狂难免假成真</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<span style=\"font-family:SimHei;font-size:18px;background-color:#E53333;\"><img src=\"http://123.59.199.170/group1/M00/00/32/CgoKC1wF4h2AEMpoAABPTsykjgU963.png\" width=\"100%\" /><br />\r\n</span> \r\n</p>', 'group1/M00/00/32/CgoKC1wF5N2AG-ykAACXQn8Qa0Y695.jpg', '689EE787E0EA220E6D5A72163EB8C437', null, '2018-01-22 14:56:24', '1', '0');
INSERT INTO `front_userinfo` VALUES ('4', null, '当当', '0', '20', null, '18768147664', '', '3', '2018-04-19', '', 'group1/M00/00/2E/CgoKC1usRyOAeKNNAASHoOvSxgE611.jpg', '689EE787E0EA220E6D5A72163EB8C437', '-2', '2018-01-22 15:00:29', '1', '0');
INSERT INTO `front_userinfo` VALUES ('5', null, '恩恩', '1', '20', null, '18768147665', '', '3', '2018-04-19', '', 'group1/M00/00/2E/CgoKC1usRyOAeKNNAASHoOvSxgE611.jpg', '689EE787E0EA220E6D5A72163EB8C437', '-2', '2018-01-22 15:11:16', '1', '0');
INSERT INTO `front_userinfo` VALUES ('6', null, '菲菲', '1', '20', null, '18768147666', '', '3', '2018-04-19', '', 'group1/M00/00/2E/CgoKC1usRyOAeKNNAASHoOvSxgE611.jpg', '689EE787E0EA220E6D5A72163EB8C437', '-2', '2018-01-25 15:13:22', '1', '1');
INSERT INTO `front_userinfo` VALUES ('7', null, '果果', '0', '20', null, '18768147667', '', '1', '2018-04-19', '', 'group1/M00/00/2E/CgoKC1usRyOAeKNNAASHoOvSxgE611.jpg', '689EE787E0EA220E6D5A72163EB8C437', '-2', '2018-01-29 11:13:48', '1', '1');
INSERT INTO `front_userinfo` VALUES ('8', null, '灰灰', '1', '20', null, '18768147668', '', '2', '2018-04-19', '', 'group1/M00/00/2E/CgoKC1usRyOAeKNNAASHoOvSxgE611.jpg', '689EE787E0EA220E6D5A72163EB8C437', '-2', '2018-01-29 11:15:21', '1', '1');
INSERT INTO `front_userinfo` VALUES ('9', null, '杰杰', '1', '20', null, '18768147669', '', '2', '2018-04-19', '', 'group1/M00/00/2E/CgoKC1usRyOAeKNNAASHoOvSxgE611.jpg', '689EE787E0EA220E6D5A72163EB8C437', '-2', '2018-01-30 16:55:32', '3', '1');
INSERT INTO `front_userinfo` VALUES ('14', null, '杰克', '1', '20', null, '18768147670', '', '3', '2018-04-19', '', 'group1/M00/00/2E/CgoKC1usRyOAeKNNAASHoOvSxgE611.jpg', '689EE787E0EA220E6D5A72163EB8C437', '-2', '2018-02-24 10:02:12', '1', '1');
INSERT INTO `front_userinfo` VALUES ('15', null, '特特', '1', '20', null, '18768147671', '', '1', '2018-04-19', '', 'group1/M00/00/2E/CgoKC1usRyOAeKNNAASHoOvSxgE611.jpg', '689EE787E0EA220E6D5A72163EB8C437', null, '2018-02-28 09:35:50', '1', '1');
INSERT INTO `front_userinfo` VALUES ('16', null, '超帅的', null, null, null, '18768147661', null, null, null, null, 'group1/M00/00/2E/CgoKC1usRyOAeKNNAASHoOvSxgE611.jpg', '689EE787E0EA220E6D5A72163EB8C437', null, '2018-11-28 17:42:52', '1', '1');
INSERT INTO `front_userinfo` VALUES ('17', null, 'sd', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:09', null, '1');
INSERT INTO `front_userinfo` VALUES ('18', null, 'sdf', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:10', null, '1');
INSERT INTO `front_userinfo` VALUES ('19', null, 'dsfsd', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:11', null, '1');
INSERT INTO `front_userinfo` VALUES ('20', null, 'rt', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:13', null, '1');
INSERT INTO `front_userinfo` VALUES ('21', null, 'sdf', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:14', null, '1');
INSERT INTO `front_userinfo` VALUES ('22', null, 'dfsd', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:14', null, '1');
INSERT INTO `front_userinfo` VALUES ('23', null, 'sd', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:15', null, '1');
INSERT INTO `front_userinfo` VALUES ('24', null, 'sd', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:15', null, '1');
INSERT INTO `front_userinfo` VALUES ('25', null, 'f', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:15', null, '1');
INSERT INTO `front_userinfo` VALUES ('26', null, 's', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:15', null, '1');
INSERT INTO `front_userinfo` VALUES ('27', null, 'f', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:15', null, '1');
INSERT INTO `front_userinfo` VALUES ('28', null, 'd', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:15', null, '1');
INSERT INTO `front_userinfo` VALUES ('29', null, 'sdf', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:16', null, '1');
INSERT INTO `front_userinfo` VALUES ('30', null, 's', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:16', null, '1');
INSERT INTO `front_userinfo` VALUES ('31', null, 'df', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:16', null, '1');
INSERT INTO `front_userinfo` VALUES ('32', null, 's', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:16', null, '1');
INSERT INTO `front_userinfo` VALUES ('33', null, 's', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:16', null, '1');
INSERT INTO `front_userinfo` VALUES ('34', null, 'sdf', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:17', null, '1');
INSERT INTO `front_userinfo` VALUES ('35', null, 's', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:17', null, '1');
INSERT INTO `front_userinfo` VALUES ('36', null, 'f', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:17', null, '1');
INSERT INTO `front_userinfo` VALUES ('37', null, 's', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:17', null, '1');
INSERT INTO `front_userinfo` VALUES ('38', null, 'sd', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:18', null, '1');
INSERT INTO `front_userinfo` VALUES ('39', null, 's', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:18', null, '1');
INSERT INTO `front_userinfo` VALUES ('40', null, 'f', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:18', null, '1');
INSERT INTO `front_userinfo` VALUES ('41', null, 's', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:18', null, '1');
INSERT INTO `front_userinfo` VALUES ('42', null, 'f', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:18', null, '1');
INSERT INTO `front_userinfo` VALUES ('43', null, 'sd', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:19', null, '1');
INSERT INTO `front_userinfo` VALUES ('44', null, 's', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:19', null, '1');
INSERT INTO `front_userinfo` VALUES ('45', null, 'sdf', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:19', null, '1');
INSERT INTO `front_userinfo` VALUES ('46', null, 'df', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:20', null, '1');
INSERT INTO `front_userinfo` VALUES ('47', null, 'df', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:20', null, '1');
INSERT INTO `front_userinfo` VALUES ('48', null, 'd', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:20', null, '1');
INSERT INTO `front_userinfo` VALUES ('49', null, 's', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:20', null, '1');
INSERT INTO `front_userinfo` VALUES ('50', null, 'df', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:20', null, '1');
INSERT INTO `front_userinfo` VALUES ('51', null, 's', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:21', null, '1');
INSERT INTO `front_userinfo` VALUES ('52', null, 'sdf', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:21', null, '1');
INSERT INTO `front_userinfo` VALUES ('53', null, 's', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:21', null, '1');
INSERT INTO `front_userinfo` VALUES ('54', null, 'sd', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:21', null, '1');
INSERT INTO `front_userinfo` VALUES ('55', null, 's', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:22', null, '1');
INSERT INTO `front_userinfo` VALUES ('56', null, 'f', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:22', null, '1');
INSERT INTO `front_userinfo` VALUES ('57', null, 's', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:22', null, '1');
INSERT INTO `front_userinfo` VALUES ('58', null, 'sd', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:22', null, '1');
INSERT INTO `front_userinfo` VALUES ('59', null, 'f', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:23', null, '1');
INSERT INTO `front_userinfo` VALUES ('60', null, 'f', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:23', null, '1');
INSERT INTO `front_userinfo` VALUES ('61', null, 'fs', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:23', null, '1');
INSERT INTO `front_userinfo` VALUES ('62', null, 'f', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:23', null, '1');
INSERT INTO `front_userinfo` VALUES ('63', null, 'fs', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:24', null, '1');
INSERT INTO `front_userinfo` VALUES ('64', null, 's', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:24', null, '1');
INSERT INTO `front_userinfo` VALUES ('65', null, 'sd', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:24', null, '1');
INSERT INTO `front_userinfo` VALUES ('66', null, 's', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:25', null, '1');
INSERT INTO `front_userinfo` VALUES ('67', null, 'f', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:25', null, '1');
INSERT INTO `front_userinfo` VALUES ('68', null, 's', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:25', null, '1');
INSERT INTO `front_userinfo` VALUES ('69', null, 'df', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:25', null, '1');
INSERT INTO `front_userinfo` VALUES ('70', null, 'df', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:25', null, '1');
INSERT INTO `front_userinfo` VALUES ('71', null, 'df', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:26', null, '1');
INSERT INTO `front_userinfo` VALUES ('72', null, 's', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:26', null, '1');
INSERT INTO `front_userinfo` VALUES ('73', null, 'f', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:26', null, '1');
INSERT INTO `front_userinfo` VALUES ('74', null, 'dfs', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:26', null, '1');
INSERT INTO `front_userinfo` VALUES ('75', null, 'f', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:26', null, '1');
INSERT INTO `front_userinfo` VALUES ('76', null, 'f', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:27', null, '1');
INSERT INTO `front_userinfo` VALUES ('77', null, 'f', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:27', null, '1');
INSERT INTO `front_userinfo` VALUES ('78', null, 's', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:27', null, '1');
INSERT INTO `front_userinfo` VALUES ('79', null, 's', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:27', null, '1');
INSERT INTO `front_userinfo` VALUES ('80', null, 's', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:28', null, '1');
INSERT INTO `front_userinfo` VALUES ('81', null, 'ds', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:28', null, '1');
INSERT INTO `front_userinfo` VALUES ('82', null, 'f', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:28', null, '1');
INSERT INTO `front_userinfo` VALUES ('83', null, 'f', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:28', null, '1');
INSERT INTO `front_userinfo` VALUES ('84', null, 's', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:29', null, '1');
INSERT INTO `front_userinfo` VALUES ('85', null, 'f', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:29', null, '1');
INSERT INTO `front_userinfo` VALUES ('86', null, 'df', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:29', null, '1');
INSERT INTO `front_userinfo` VALUES ('87', null, 'f', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:29', null, '1');
INSERT INTO `front_userinfo` VALUES ('88', null, 's', null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:29', null, '1');
INSERT INTO `front_userinfo` VALUES ('89', null, null, null, null, null, null, null, null, null, null, null, '689EE787E0EA220E6D5A72163EB8C437', null, '2018-12-28 16:43:30', null, '1');

-- ----------------------------
-- Table structure for nation
-- ----------------------------
DROP TABLE IF EXISTS `nation`;
CREATE TABLE `nation` (
  `NationID` int(2) NOT NULL COMMENT '主键',
  `NationName` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '名族名',
  PRIMARY KEY (`NationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='名族表';

-- ----------------------------
-- Records of nation
-- ----------------------------
INSERT INTO `nation` VALUES ('1', '汉族');
INSERT INTO `nation` VALUES ('2', '蒙古族');
INSERT INTO `nation` VALUES ('3', '回族');
INSERT INTO `nation` VALUES ('4', '藏族');
INSERT INTO `nation` VALUES ('5', '维吾尔族');
INSERT INTO `nation` VALUES ('6', '苗族');
INSERT INTO `nation` VALUES ('7', '彝族');
INSERT INTO `nation` VALUES ('8', '壮族');
INSERT INTO `nation` VALUES ('9', '布依族');
INSERT INTO `nation` VALUES ('10', '朝鲜族');
INSERT INTO `nation` VALUES ('11', '满族');
INSERT INTO `nation` VALUES ('12', '侗族');
INSERT INTO `nation` VALUES ('13', '瑶族');
INSERT INTO `nation` VALUES ('14', '白族');
INSERT INTO `nation` VALUES ('15', '土家族');
INSERT INTO `nation` VALUES ('16', '哈尼族');
INSERT INTO `nation` VALUES ('17', '哈萨克族');
INSERT INTO `nation` VALUES ('18', '傣族');
INSERT INTO `nation` VALUES ('19', '黎族');
INSERT INTO `nation` VALUES ('20', '傈僳族');
INSERT INTO `nation` VALUES ('21', '佤族');
INSERT INTO `nation` VALUES ('22', '畲族');
INSERT INTO `nation` VALUES ('23', '高山族');
INSERT INTO `nation` VALUES ('24', '拉祜族');
INSERT INTO `nation` VALUES ('25', '水族');
INSERT INTO `nation` VALUES ('26', '东乡族');
INSERT INTO `nation` VALUES ('27', '纳西族');
INSERT INTO `nation` VALUES ('28', '景颇族');
INSERT INTO `nation` VALUES ('29', '柯尔克孜族');
INSERT INTO `nation` VALUES ('30', '土族');
INSERT INTO `nation` VALUES ('31', '达斡尔族');
INSERT INTO `nation` VALUES ('32', '仫佬族');
INSERT INTO `nation` VALUES ('33', '羌族');
INSERT INTO `nation` VALUES ('34', '布朗族');
INSERT INTO `nation` VALUES ('35', '撒拉族');
INSERT INTO `nation` VALUES ('36', '毛南族');
INSERT INTO `nation` VALUES ('37', '仡佬族');
INSERT INTO `nation` VALUES ('38', '锡伯族');
INSERT INTO `nation` VALUES ('39', '阿昌族');
INSERT INTO `nation` VALUES ('40', '普米族');
INSERT INTO `nation` VALUES ('41', '塔吉克族');
INSERT INTO `nation` VALUES ('42', '怒族');
INSERT INTO `nation` VALUES ('43', '乌孜别克族');
INSERT INTO `nation` VALUES ('44', '俄罗斯族');
INSERT INTO `nation` VALUES ('45', '鄂温克族');
INSERT INTO `nation` VALUES ('46', '崩龙族');
INSERT INTO `nation` VALUES ('47', '保安族');
INSERT INTO `nation` VALUES ('48', '裕固族');
INSERT INTO `nation` VALUES ('49', '京族');
INSERT INTO `nation` VALUES ('50', '塔塔尔族');
INSERT INTO `nation` VALUES ('51', '独龙族');
INSERT INTO `nation` VALUES ('52', '鄂伦春族');
INSERT INTO `nation` VALUES ('53', '赫哲族');
INSERT INTO `nation` VALUES ('54', '门巴族');
INSERT INTO `nation` VALUES ('55', '珞巴族');
INSERT INTO `nation` VALUES ('56', '基诺族');
INSERT INTO `nation` VALUES ('97', '其他');

-- ----------------------------
-- Procedure structure for test
-- ----------------------------
DROP PROCEDURE IF EXISTS `test`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `test`(out id  VARCHAR(10))
BEGIN
    END
;;
DELIMITER ;
