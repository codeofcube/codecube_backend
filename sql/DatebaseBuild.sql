/*
 Navicat MySQL Data Transfer
 
 Source Server         : localhost
 Source Server Version : 50720
 Source Host           : localhost:3306
 Source Database       : mango
 
 Target Server Type    : MYSQL
 Target Server Version : 50720
 File Encoding         : 65001
 
 Date: 2019-01-22 14:49:38
 */
CREATE DATABASE mango;
use mango;
SET FOREIGN_KEY_CHECKS = 0;
-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '���',
  `value` varchar(100) NOT NULL COMMENT '����ֵ',
  `label` varchar(100) NOT NULL COMMENT '��ǩ��',
  `type` varchar(100) NOT NULL COMMENT '����',
  `description` varchar(100) NOT NULL COMMENT '����',
  `sort` decimal(10, 0) NOT NULL COMMENT '��������',
  `create_by` varchar(50) DEFAULT NULL COMMENT '������',
  `create_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `last_update_by` varchar(50) DEFAULT NULL COMMENT '������',
  `last_update_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `remarks` varchar(255) DEFAULT NULL COMMENT '��ע��Ϣ',
  `del_flag` tinyint(4) DEFAULT '0' COMMENT '�Ƿ�ɾ��  -1����ɾ��  0������',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 5 DEFAULT CHARSET = utf8 COMMENT = 'ϵͳ���ñ�';
-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config`
VALUES (
    '1',
    '#14889A',
    'theme',
    'color',
    '����ɫ',
    '0',
    'admin',
    '2018-09-23 19:52:54',
    null,
    null,
    '����ɫ',
    '0'
  );
-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '���',
  `name` varchar(50) DEFAULT NULL COMMENT '��������',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '�ϼ�����ID��һ������Ϊ0',
  `order_num` int(11) DEFAULT NULL COMMENT '����',
  `create_by` varchar(50) DEFAULT NULL COMMENT '������',
  `create_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `last_update_by` varchar(50) DEFAULT NULL COMMENT '������',
  `last_update_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `del_flag` tinyint(4) DEFAULT '0' COMMENT '�Ƿ�ɾ��  -1����ɾ��  0������',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 36 DEFAULT CHARSET = utf8 COMMENT = '��������';
-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept`
VALUES (
    '1',
    '�᳾����',
    null,
    '0',
    'admin',
    '2018-09-23 19:35:22',
    null,
    null,
    '0'
  );
INSERT INTO `sys_dept`
VALUES (
    '2',
    '��������',
    null,
    '1',
    'admin',
    '2018-09-23 19:35:55',
    null,
    null,
    '0'
  );
INSERT INTO `sys_dept`
VALUES (
    '3',
    '��������',
    null,
    '2',
    'admin',
    '2018-09-23 19:36:24',
    null,
    null,
    '0'
  );
INSERT INTO `sys_dept`
VALUES (
    '4',
    '�Ϻ��ֹ�˾',
    '2',
    '0',
    'admin',
    '2018-09-23 19:37:03',
    null,
    null,
    '0'
  );
INSERT INTO `sys_dept`
VALUES (
    '5',
    '�����ֹ�˾',
    '1',
    '1',
    'admin',
    '2018-09-23 19:37:17',
    null,
    null,
    '0'
  );
INSERT INTO `sys_dept`
VALUES (
    '6',
    '�����ֹ�˾',
    '2',
    '1',
    'admin',
    '2018-09-23 19:37:28',
    null,
    null,
    '0'
  );
INSERT INTO `sys_dept`
VALUES (
    '7',
    '������',
    '5',
    '0',
    'admin',
    '2018-09-23 19:38:00',
    null,
    null,
    '0'
  );
INSERT INTO `sys_dept`
VALUES (
    '8',
    '������',
    '4',
    '0',
    'admin',
    '2018-09-23 19:38:10',
    null,
    null,
    '0'
  );
INSERT INTO `sys_dept`
VALUES (
    '9',
    '������',
    '6',
    '0',
    'admin',
    '2018-09-23 19:38:17',
    null,
    null,
    '0'
  );
INSERT INTO `sys_dept`
VALUES (
    '10',
    '�г���',
    '5',
    '0',
    'admin',
    '2018-09-23 19:38:45',
    null,
    null,
    '0'
  );
INSERT INTO `sys_dept`
VALUES (
    '11',
    '�г���',
    '6',
    '0',
    'admin',
    '2018-09-23 19:39:01',
    null,
    null,
    '0'
  );
INSERT INTO `sys_dept`
VALUES (
    '12',
    'κ��',
    '3',
    '0',
    'admin',
    '2018-09-23 19:40:42',
    null,
    null,
    '0'
  );
INSERT INTO `sys_dept`
VALUES (
    '13',
    '���',
    '3',
    '1',
    'admin',
    '2018-09-23 19:40:54',
    null,
    null,
    '0'
  );
INSERT INTO `sys_dept`
VALUES (
    '14',
    '���',
    '3',
    '2',
    'admin',
    '2018-09-23 19:41:04',
    null,
    null,
    '0'
  );
-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '���',
  `value` varchar(100) NOT NULL COMMENT '����ֵ',
  `label` varchar(100) NOT NULL COMMENT '��ǩ��',
  `type` varchar(100) NOT NULL COMMENT '����',
  `description` varchar(100) NOT NULL COMMENT '����',
  `sort` decimal(10, 0) NOT NULL COMMENT '��������',
  `create_by` varchar(50) DEFAULT NULL COMMENT '������',
  `create_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `last_update_by` varchar(50) DEFAULT NULL COMMENT '������',
  `last_update_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `remarks` varchar(255) DEFAULT NULL COMMENT '��ע��Ϣ',
  `del_flag` tinyint(4) DEFAULT '0' COMMENT '�Ƿ�ɾ��  -1����ɾ��  0������',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 5 DEFAULT CHARSET = utf8 COMMENT = '�ֵ��';
-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict`
VALUES (
    '1',
    'male',
    '��',
    'sex',
    '�Ա�',
    '0',
    'admin',
    '2018-09-23 19:52:54',
    null,
    null,
    '�Ա�',
    '0'
  );
INSERT INTO `sys_dict`
VALUES (
    '2',
    'female',
    'Ů',
    'sex',
    '�Ա�',
    '1',
    'admin',
    '2018-09-23 19:53:17',
    null,
    null,
    '�Ա�',
    '0'
  );
-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '���',
  `user_name` varchar(50) DEFAULT NULL COMMENT '�û���',
  `operation` varchar(50) DEFAULT NULL COMMENT '�û�����',
  `method` varchar(200) DEFAULT NULL COMMENT '���󷽷�',
  `params` varchar(5000) DEFAULT NULL COMMENT '�������',
  `time` bigint(20) NOT NULL COMMENT 'ִ��ʱ��(����)',
  `ip` varchar(64) DEFAULT NULL COMMENT 'IP��ַ',
  `create_by` varchar(50) DEFAULT NULL COMMENT '������',
  `create_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `last_update_by` varchar(50) DEFAULT NULL COMMENT '������',
  `last_update_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 2897 DEFAULT CHARSET = utf8 COMMENT = 'ϵͳ������־';
-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log`
VALUES (
    '1',
    'admin',
    null,
    'com.louis.kitty.admin.sevice.impl.SysDictServiceImpl.findPage()',
    '{\"columnFilters\":{\"label\":{\"name\":\"label\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":8}',
    '4',
    '0:0:0:0:0:0:0:1',
    'admin',
    '2018-09-23 19:54:16',
    null,
    null
  );
INSERT INTO `sys_log`
VALUES (
    '2',
    'admin',
    null,
    'com.louis.kitty.admin.sevice.impl.SysRoleServiceImpl.findPage()',
    '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":8}',
    '4',
    '0:0:0:0:0:0:0:1',
    'admin',
    '2018-09-23 19:54:17',
    null,
    null
  );
INSERT INTO `sys_log`
VALUES (
    '3',
    'admin',
    null,
    'com.louis.kitty.admin.sevice.impl.SysUserServiceImpl.findPage()',
    '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":8}',
    '36',
    '0:0:0:0:0:0:0:1',
    'admin',
    '2018-09-23 19:54:18',
    null,
    null
  );
INSERT INTO `sys_log`
VALUES (
    '4',
    'admin',
    null,
    'com.louis.kitty.admin.sevice.impl.SysDictServiceImpl.findPage()',
    '{\"columnFilters\":{\"label\":{\"name\":\"label\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":8}',
    '4',
    '0:0:0:0:0:0:0:1',
    'admin',
    '2018-09-23 19:54:20',
    null,
    null
  );
INSERT INTO `sys_log`
VALUES (
    '5',
    'admin',
    null,
    'com.louis.kitty.admin.sevice.impl.SysRoleServiceImpl.findPage()',
    '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":8}',
    '4',
    '0:0:0:0:0:0:0:1',
    'admin',
    '2018-09-23 19:54:20',
    null,
    null
  );
INSERT INTO `sys_log`
VALUES (
    '6',
    'admin',
    null,
    'com.louis.kitty.admin.sevice.impl.SysUserServiceImpl.findPage()',
    '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":8}',
    '27',
    '0:0:0:0:0:0:0:1',
    'admin',
    '2018-09-23 19:54:21',
    null,
    null
  );
INSERT INTO `sys_log`
VALUES (
    '7',
    'admin',
    null,
    'com.louis.kitty.admin.sevice.impl.SysRoleServiceImpl.findPage()',
    '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":8}',
    '4',
    '0:0:0:0:0:0:0:1',
    'admin',
    '2018-09-23 19:54:22',
    null,
    null
  );
INSERT INTO `sys_log`
VALUES (
    '8',
    'admin',
    null,
    'com.louis.kitty.admin.sevice.impl.SysDictServiceImpl.findPage()',
    '{\"columnFilters\":{\"label\":{\"name\":\"label\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":8}',
    '4',
    '0:0:0:0:0:0:0:1',
    'admin',
    '2018-09-23 19:54:23',
    null,
    null
  );
INSERT INTO `sys_log`
VALUES (
    '2798',
    null,
    null,
    'com.louis.mango.admin.service.impl.SysUserServiceImpl.findByName()',
    '\"admin\"',
    '361',
    '0:0:0:0:0:0:0:1',
    null,
    null,
    null,
    null
  );
INSERT INTO `sys_log`
VALUES (
    '2799',
    null,
    null,
    'com.louis.mango.admin.service.impl.SysUserServiceImpl.findByName()',
    '\"admin\"',
    '4',
    '0:0:0:0:0:0:0:1',
    null,
    null,
    null,
    null
  );
INSERT INTO `sys_log`
VALUES (
    '2800',
    null,
    null,
    'com.louis.mango.admin.service.impl.SysMenuServiceImpl.findByUser()',
    '\"admin\"',
    '43',
    '0:0:0:0:0:0:0:1',
    null,
    null,
    null,
    null
  );
INSERT INTO `sys_log`
VALUES (
    '2801',
    null,
    null,
    'com.louis.mango.admin.service.impl.SysUserServiceImpl.findPermissions()',
    '\"admin\"',
    '49',
    '0:0:0:0:0:0:0:1',
    null,
    null,
    null,
    null
  );
INSERT INTO `sys_log`
VALUES (
    '2802',
    null,
    null,
    'com.louis.mango.admin.service.impl.SysUserServiceImpl.findByName()',
    '\"admin\"',
    '221',
    '0:0:0:0:0:0:0:1',
    null,
    null,
    null,
    null
  );
INSERT INTO `sys_log`
VALUES (
    '2803',
    null,
    null,
    'com.louis.mango.admin.service.impl.SysUserServiceImpl.findByName()',
    '\"admin\"',
    '3',
    '0:0:0:0:0:0:0:1',
    null,
    null,
    null,
    null
  );
INSERT INTO `sys_log`
VALUES (
    '2804',
    null,
    null,
    'com.louis.mango.admin.service.impl.SysMenuServiceImpl.findByUser()',
    '\"admin\"',
    '37',
    '0:0:0:0:0:0:0:1',
    null,
    null,
    null,
    null
  );
INSERT INTO `sys_log`
VALUES (
    '2805',
    null,
    null,
    'com.louis.mango.admin.service.impl.SysUserServiceImpl.findPermissions()',
    '\"admin\"',
    '43',
    '0:0:0:0:0:0:0:1',
    null,
    null,
    null,
    null
  );
INSERT INTO `sys_log`
VALUES (
    '2806',
    'admin',
    null,
    'com.louis.mango.admin.service.impl.SysLoginLogServiceImpl.writeLoginLog()',
    '\"admin\"',
    '138',
    '0:0:0:0:0:0:0:1',
    'admin',
    '2019-01-21 10:15:43',
    null,
    null
  );
INSERT INTO `sys_log`
VALUES (
    '2807',
    'admin',
    null,
    'com.louis.mango.admin.service.impl.SysMenuServiceImpl.findTree()',
    '\"admin\"',
    '15',
    '0:0:0:0:0:0:0:1',
    'admin',
    '2019-01-21 10:15:44',
    null,
    null
  );
INSERT INTO `sys_log`
VALUES (
    '2808',
    'admin',
    null,
    'com.louis.mango.admin.service.impl.SysMenuServiceImpl.findByUser()',
    '\"admin\"',
    '16',
    '0:0:0:0:0:0:0:1',
    'admin',
    '2019-01-21 10:15:44',
    null,
    null
  );
INSERT INTO `sys_log`
VALUES (
    '2809',
    'admin',
    null,
    'com.louis.mango.admin.service.impl.SysUserServiceImpl.findPermissions()',
    '\"admin\"',
    '22',
    '0:0:0:0:0:0:0:1',
    'admin',
    '2019-01-21 10:15:44',
    null,
    null
  );
INSERT INTO `sys_log`
VALUES (
    '2876',
    'admin',
    null,
    'com.louis.mango.admin.service.impl.SysLoginLogServiceImpl.findPage()',
    '{\"pageNum\":1,\"pageSize\":9,\"params\":[{\"name\":\"userName\",\"value\":\"\"}]}',
    '13',
    '0:0:0:0:0:0:0:1',
    'admin',
    '2019-01-22 14:48:10',
    null,
    null
  );
INSERT INTO `sys_log`
VALUES (
    '2877',
    'admin',
    null,
    'com.louis.mango.admin.service.impl.SysRoleServiceImpl.findPage()',
    '{\"pageNum\":1,\"pageSize\":9,\"params\":[{\"name\":\"name\",\"value\":\"\"}]}',
    '15',
    '0:0:0:0:0:0:0:1',
    'admin',
    '2019-01-22 14:48:13',
    null,
    null
  );
INSERT INTO `sys_log`
VALUES (
    '2878',
    'admin',
    null,
    'com.louis.mango.admin.service.impl.SysMenuServiceImpl.findTree()',
    'null',
    '10',
    '0:0:0:0:0:0:0:1',
    'admin',
    '2019-01-22 14:48:13',
    null,
    null
  );
INSERT INTO `sys_log`
VALUES (
    '2879',
    'admin',
    null,
    'com.louis.mango.admin.service.impl.SysDeptServiceImpl.findTree()',
    null,
    '3',
    '0:0:0:0:0:0:0:1',
    'admin',
    '2019-01-22 14:48:14',
    null,
    null
  );
INSERT INTO `sys_log`
VALUES (
    '2880',
    'admin',
    null,
    'com.louis.mango.admin.service.impl.SysDeptServiceImpl.findTree()',
    null,
    '2',
    '0:0:0:0:0:0:0:1',
    'admin',
    '2019-01-22 14:48:14',
    null,
    null
  );
INSERT INTO `sys_log`
VALUES (
    '2881',
    'admin',
    null,
    'com.louis.mango.admin.service.impl.SysUserServiceImpl.findPage()',
    '{\"pageNum\":1,\"pageSize\":9,\"params\":[{\"name\":\"name\",\"value\":\"\"}]}',
    '49',
    '0:0:0:0:0:0:0:1',
    'admin',
    '2019-01-22 14:48:14',
    null,
    null
  );
INSERT INTO `sys_log`
VALUES (
    '2882',
    'admin',
    null,
    'com.louis.mango.admin.service.impl.SysRoleServiceImpl.findAll()',
    null,
    '1',
    '0:0:0:0:0:0:0:1',
    'admin',
    '2019-01-22 14:48:14',
    null,
    null
  );
INSERT INTO `sys_log`
VALUES (
    '2883',
    'admin',
    null,
    'com.louis.mango.admin.service.impl.SysMenuServiceImpl.findTree()',
    'null',
    '3',
    '0:0:0:0:0:0:0:1',
    'admin',
    '2019-01-22 14:48:15',
    null,
    null
  );
INSERT INTO `sys_log`
VALUES (
    '2884',
    'admin',
    null,
    'com.louis.mango.admin.service.impl.SysConfigServiceImpl.findPage()',
    '{\"pageNum\":1,\"pageSize\":9,\"params\":[{\"name\":\"label\",\"value\":\"\"}]}',
    '8',
    '0:0:0:0:0:0:0:1',
    'admin',
    '2019-01-22 14:48:15',
    null,
    null
  );
INSERT INTO `sys_log`
VALUES (
    '2885',
    'admin',
    null,
    'com.louis.mango.admin.service.impl.SysLoginLogServiceImpl.findPage()',
    '{\"pageNum\":1,\"pageSize\":9,\"params\":[{\"name\":\"userName\",\"value\":\"\"}]}',
    '7',
    '0:0:0:0:0:0:0:1',
    'admin',
    '2019-01-22 14:48:16',
    null,
    null
  );
INSERT INTO `sys_log`
VALUES (
    '2886',
    'admin',
    null,
    'com.louis.mango.admin.service.impl.SysDeptServiceImpl.findTree()',
    null,
    '2',
    '0:0:0:0:0:0:0:1',
    'admin',
    '2019-01-22 14:48:22',
    null,
    null
  );
INSERT INTO `sys_log`
VALUES (
    '2887',
    'admin',
    null,
    'com.louis.mango.admin.service.impl.SysUserServiceImpl.findPage()',
    '{\"pageNum\":1,\"pageSize\":9,\"params\":[{\"name\":\"name\",\"value\":\"\"}]}',
    '61',
    '0:0:0:0:0:0:0:1',
    'admin',
    '2019-01-22 14:48:22',
    null,
    null
  );
INSERT INTO `sys_log`
VALUES (
    '2888',
    'admin',
    null,
    'com.louis.mango.admin.service.impl.SysRoleServiceImpl.findAll()',
    null,
    '1',
    '0:0:0:0:0:0:0:1',
    'admin',
    '2019-01-22 14:48:22',
    null,
    null
  );
INSERT INTO `sys_log`
VALUES (
    '2889',
    'admin',
    null,
    'com.louis.mango.admin.service.impl.SysUserServiceImpl.findPage()',
    '{\"pageNum\":2,\"pageSize\":9,\"params\":[{\"name\":\"name\",\"value\":\"\"}]}',
    '18',
    '0:0:0:0:0:0:0:1',
    'admin',
    '2019-01-22 14:48:25',
    null,
    null
  );
INSERT INTO `sys_log`
VALUES (
    '2890',
    'admin',
    null,
    'com.louis.mango.admin.service.impl.SysRoleServiceImpl.findAll()',
    null,
    '2',
    '0:0:0:0:0:0:0:1',
    'admin',
    '2019-01-22 14:48:25',
    null,
    null
  );
INSERT INTO `sys_log`
VALUES (
    '2891',
    'admin',
    null,
    'com.louis.mango.admin.service.impl.SysUserServiceImpl.findPage()',
    '{\"pageNum\":1,\"pageSize\":9,\"params\":[{\"name\":\"name\",\"value\":\"\"}]}',
    '43',
    '0:0:0:0:0:0:0:1',
    'admin',
    '2019-01-22 14:48:27',
    null,
    null
  );
INSERT INTO `sys_log`
VALUES (
    '2892',
    'admin',
    null,
    'com.louis.mango.admin.service.impl.SysRoleServiceImpl.findAll()',
    null,
    '1',
    '0:0:0:0:0:0:0:1',
    'admin',
    '2019-01-22 14:48:27',
    null,
    null
  );
INSERT INTO `sys_log`
VALUES (
    '2893',
    'admin',
    null,
    'com.louis.mango.admin.service.impl.SysUserServiceImpl.createUserExcelFile()',
    '{\"pageNum\":1,\"pageSize\":100000,\"params\":[{\"name\":\"name\",\"value\":\"\"}]}',
    '1577',
    '0:0:0:0:0:0:0:1',
    'admin',
    '2019-01-22 14:48:38',
    null,
    null
  );
INSERT INTO `sys_log`
VALUES (
    '2894',
    'admin',
    null,
    'com.louis.mango.admin.service.impl.SysDeptServiceImpl.findTree()',
    null,
    '1',
    '0:0:0:0:0:0:0:1',
    'admin',
    '2019-01-22 14:49:24',
    null,
    null
  );
INSERT INTO `sys_log`
VALUES (
    '2895',
    'admin',
    null,
    'com.louis.mango.admin.service.impl.SysUserServiceImpl.findPage()',
    '{\"pageNum\":1,\"pageSize\":9,\"params\":[{\"name\":\"name\",\"value\":\"\"}]}',
    '75',
    '0:0:0:0:0:0:0:1',
    'admin',
    '2019-01-22 14:49:24',
    null,
    null
  );
INSERT INTO `sys_log`
VALUES (
    '2896',
    'admin',
    null,
    'com.louis.mango.admin.service.impl.SysRoleServiceImpl.findAll()',
    null,
    '2',
    '0:0:0:0:0:0:0:1',
    'admin',
    '2019-01-22 14:49:24',
    null,
    null
  );
-- ----------------------------
-- Table structure for sys_login_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_login_log`;
CREATE TABLE `sys_login_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '���',
  `user_name` varchar(50) DEFAULT NULL COMMENT '�û���',
  `status` varchar(50) DEFAULT NULL COMMENT '��¼״̬��online:���ߣ���¼��ʼ״̬������ͳ������������login:�˳���¼��online��Ϊlogin��logout:�˳���¼��',
  `ip` varchar(64) DEFAULT NULL COMMENT 'IP��ַ',
  `create_by` varchar(50) DEFAULT NULL COMMENT '������',
  `create_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `last_update_by` varchar(50) DEFAULT NULL COMMENT '������',
  `last_update_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 2804 DEFAULT CHARSET = utf8 COMMENT = 'ϵͳ��¼��־';
-- ----------------------------
-- Records of sys_login_log
-- ----------------------------
INSERT INTO `sys_login_log`
VALUES (
    '1',
    'admin',
    'login',
    '0:0:0:0:0:0:0:1',
    'admin',
    '2018-09-23 19:54:16',
    null,
    null
  );
INSERT INTO `sys_login_log`
VALUES (
    '2',
    'admin',
    'logout',
    '0:0:0:0:0:0:0:1',
    'admin',
    '2018-09-23 19:54:17',
    null,
    null
  );
INSERT INTO `sys_login_log`
VALUES (
    '3',
    'admin',
    'login',
    '0:0:0:0:0:0:0:1',
    'admin',
    '2018-09-23 19:54:18',
    null,
    null
  );
INSERT INTO `sys_login_log`
VALUES (
    '4',
    'admin',
    'logout',
    '0:0:0:0:0:0:0:1',
    'admin',
    '2018-09-23 19:54:20',
    null,
    null
  );
INSERT INTO `sys_login_log`
VALUES (
    '5',
    'admin',
    'login',
    '0:0:0:0:0:0:0:1',
    'admin',
    '2018-09-23 19:54:20',
    null,
    null
  );
INSERT INTO `sys_login_log`
VALUES (
    '6',
    'admin',
    'logout',
    '0:0:0:0:0:0:0:1',
    'admin',
    '2018-09-23 19:54:21',
    null,
    null
  );
INSERT INTO `sys_login_log`
VALUES (
    '7',
    'admin',
    'login',
    '0:0:0:0:0:0:0:1',
    'admin',
    '2018-09-23 19:54:22',
    null,
    null
  );
INSERT INTO `sys_login_log`
VALUES (
    '8',
    'admin',
    'login',
    '0:0:0:0:0:0:0:1',
    'admin',
    '2018-09-23 19:54:23',
    'admin',
    '2019-01-21 10:15:43'
  );
INSERT INTO `sys_login_log`
VALUES (
    '2798',
    'admin',
    'logout',
    '0:0:0:0:0:0:0:1',
    'admin',
    '2019-01-21 10:15:43',
    null,
    null
  );
INSERT INTO `sys_login_log`
VALUES (
    '2799',
    'admin',
    'login',
    '0:0:0:0:0:0:0:1',
    'admin',
    '2019-01-21 10:15:43',
    'admin',
    '2019-01-21 10:16:54'
  );
INSERT INTO `sys_login_log`
VALUES (
    '2800',
    'admin',
    'logout',
    '0:0:0:0:0:0:0:1',
    'admin',
    '2019-01-21 10:16:54',
    null,
    null
  );
INSERT INTO `sys_login_log`
VALUES (
    '2801',
    'admin',
    'login',
    '0:0:0:0:0:0:0:1',
    'admin',
    '2019-01-21 10:16:54',
    'admin',
    '2019-01-22 14:43:09'
  );
INSERT INTO `sys_login_log`
VALUES (
    '2802',
    'admin',
    'logout',
    '0:0:0:0:0:0:0:1',
    'admin',
    '2019-01-22 14:43:09',
    null,
    null
  );
INSERT INTO `sys_login_log`
VALUES (
    '2803',
    'admin',
    'online',
    '0:0:0:0:0:0:0:1',
    'admin',
    '2019-01-22 14:43:09',
    null,
    null
  );
-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '���',
  `name` varchar(50) DEFAULT NULL COMMENT '�˵�����',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '���˵�ID��һ���˵�Ϊ0',
  `url` varchar(200) DEFAULT NULL COMMENT '�˵�URL,���ͣ�1.��ͨҳ�棨���û����� /sys/user�� 2.Ƕ�������ⲿҳ�棬��http(s)��ͷ������ 3.Ƕ�׷�����ҳ�棬ʹ��iframe:ǰ׺+Ŀ��URL(��SQL��أ� iframe:/druid/login.html, iframe:ǰ׺���滻�ɷ�������ַ)',
  `perms` varchar(500) DEFAULT NULL COMMENT '��Ȩ(����ö��ŷָ����磺sys:user:add,sys:user:edit)',
  `type` int(11) DEFAULT NULL COMMENT '����   0��Ŀ¼   1���˵�   2����ť',
  `icon` varchar(50) DEFAULT NULL COMMENT '�˵�ͼ��',
  `order_num` int(11) DEFAULT NULL COMMENT '����',
  `create_by` varchar(50) DEFAULT NULL COMMENT '������',
  `create_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `last_update_by` varchar(50) DEFAULT NULL COMMENT '������',
  `last_update_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `del_flag` tinyint(4) DEFAULT '0' COMMENT '�Ƿ�ɾ��  -1����ɾ��  0������',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 57 DEFAULT CHARSET = utf8 COMMENT = '�˵�����';
-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu`
VALUES (
    '1',
    'ϵͳ����',
    '0',
    null,
    null,
    '0',
    'el-icon-setting',
    '0',
    null,
    null,
    null,
    null,
    '0'
  );
INSERT INTO `sys_menu`
VALUES (
    '2',
    '�û�����',
    '1',
    '/sys/user',
    null,
    '1',
    'el-icon-service',
    '1',
    null,
    null,
    null,
    null,
    '0'
  );
INSERT INTO `sys_menu`
VALUES (
    '3',
    '�鿴',
    '2',
    null,
    'sys:user:view',
    '2',
    null,
    '0',
    null,
    null,
    null,
    null,
    '0'
  );
INSERT INTO `sys_menu`
VALUES (
    '4',
    '����',
    '2',
    null,
    'sys:user:add',
    '2',
    null,
    '0',
    null,
    null,
    null,
    null,
    '0'
  );
INSERT INTO `sys_menu`
VALUES (
    '5',
    '�޸�',
    '2',
    null,
    'sys:user:edit',
    '2',
    null,
    '0',
    null,
    null,
    null,
    null,
    '0'
  );
INSERT INTO `sys_menu`
VALUES (
    '6',
    'ɾ��',
    '2',
    null,
    'sys:user:delete',
    '2',
    null,
    '0',
    null,
    null,
    null,
    null,
    '0'
  );
INSERT INTO `sys_menu`
VALUES (
    '7',
    '��������',
    '1',
    '/sys/dept',
    null,
    '1',
    'el-icon-news',
    '2',
    null,
    null,
    null,
    null,
    '0'
  );
INSERT INTO `sys_menu`
VALUES (
    '8',
    '�鿴',
    '7',
    null,
    'sys:dept:view',
    '2',
    null,
    '0',
    null,
    null,
    null,
    null,
    '0'
  );
INSERT INTO `sys_menu`
VALUES (
    '9',
    '����',
    '7',
    null,
    'sys:dept:add',
    '2',
    null,
    '0',
    null,
    null,
    null,
    null,
    '0'
  );
INSERT INTO `sys_menu`
VALUES (
    '10',
    '�޸�',
    '7',
    null,
    'sys:dept:edit',
    '2',
    null,
    '0',
    null,
    null,
    null,
    null,
    '0'
  );
INSERT INTO `sys_menu`
VALUES (
    '11',
    'ɾ��',
    '7',
    null,
    'sys:dept:delete',
    '2',
    null,
    '0',
    null,
    null,
    null,
    null,
    '0'
  );
INSERT INTO `sys_menu`
VALUES (
    '12',
    '��ɫ����',
    '1',
    '/sys/role',
    null,
    '1',
    'el-icon-view',
    '4',
    null,
    null,
    null,
    null,
    '0'
  );
INSERT INTO `sys_menu`
VALUES (
    '13',
    '�鿴',
    '12',
    null,
    'sys:role:view',
    '2',
    null,
    '0',
    null,
    null,
    null,
    null,
    '0'
  );
INSERT INTO `sys_menu`
VALUES (
    '14',
    '����',
    '12',
    null,
    'sys:role:add',
    '2',
    null,
    '0',
    null,
    null,
    null,
    null,
    '0'
  );
INSERT INTO `sys_menu`
VALUES (
    '15',
    '�޸�',
    '12',
    null,
    'sys:role:edit',
    '2',
    null,
    '0',
    null,
    null,
    null,
    null,
    '0'
  );
INSERT INTO `sys_menu`
VALUES (
    '16',
    'ɾ��',
    '12',
    null,
    'sys:role:delete',
    '2',
    null,
    '0',
    null,
    null,
    null,
    null,
    '0'
  );
INSERT INTO `sys_menu`
VALUES (
    '17',
    '�˵�����',
    '1',
    '/sys/menu',
    null,
    '1',
    'el-icon-menu',
    '5',
    null,
    null,
    null,
    null,
    '0'
  );
INSERT INTO `sys_menu`
VALUES (
    '18',
    '�鿴',
    '17',
    null,
    'sys:menu:view',
    '2',
    null,
    '0',
    null,
    null,
    null,
    null,
    '0'
  );
INSERT INTO `sys_menu`
VALUES (
    '19',
    '����',
    '17',
    null,
    'sys:menu:add',
    '2',
    null,
    '0',
    null,
    null,
    null,
    null,
    '0'
  );
INSERT INTO `sys_menu`
VALUES (
    '20',
    '�޸�',
    '17',
    null,
    'sys:menu:edit',
    '2',
    null,
    '0',
    null,
    null,
    null,
    null,
    '0'
  );
INSERT INTO `sys_menu`
VALUES (
    '21',
    'ɾ��',
    '17',
    null,
    'sys:menu:delete',
    '2',
    null,
    '0',
    null,
    null,
    null,
    null,
    '0'
  );
INSERT INTO `sys_menu`
VALUES (
    '22',
    '�ֵ����',
    '1',
    '/sys/dict',
    null,
    '1',
    'el-icon-edit-outline',
    '7',
    null,
    null,
    null,
    null,
    '0'
  );
INSERT INTO `sys_menu`
VALUES (
    '23',
    '�鿴',
    '22',
    null,
    'sys:dict:view',
    '2',
    null,
    '0',
    null,
    null,
    null,
    null,
    '0'
  );
INSERT INTO `sys_menu`
VALUES (
    '24',
    '����',
    '22',
    null,
    'sys:dict:add',
    '2',
    null,
    '0',
    null,
    null,
    null,
    null,
    '0'
  );
INSERT INTO `sys_menu`
VALUES (
    '25',
    '�޸�',
    '22',
    null,
    'sys:dict:edit',
    '2',
    null,
    '0',
    null,
    null,
    null,
    null,
    '0'
  );
INSERT INTO `sys_menu`
VALUES (
    '26',
    'ɾ��',
    '22',
    null,
    'sys:dict:delete',
    '2',
    null,
    '0',
    null,
    null,
    null,
    null,
    '0'
  );
INSERT INTO `sys_menu`
VALUES (
    '27',
    'ϵͳ����',
    '1',
    '/sys/config',
    null,
    '1',
    'el-icon-edit-outline',
    '7',
    null,
    null,
    null,
    null,
    '0'
  );
INSERT INTO `sys_menu`
VALUES (
    '28',
    '�鿴',
    '27',
    null,
    'sys:config:view',
    '2',
    null,
    '0',
    null,
    null,
    null,
    null,
    '0'
  );
INSERT INTO `sys_menu`
VALUES (
    '29',
    '����',
    '27',
    null,
    'sys:config:add',
    '2',
    null,
    '0',
    null,
    null,
    null,
    null,
    '0'
  );
INSERT INTO `sys_menu`
VALUES (
    '30',
    '�޸�',
    '27',
    null,
    'sys:config:edit',
    '2',
    null,
    '0',
    null,
    null,
    null,
    null,
    '0'
  );
INSERT INTO `sys_menu`
VALUES (
    '31',
    'ɾ��',
    '27',
    null,
    'sys:config:delete',
    '2',
    null,
    '0',
    null,
    null,
    null,
    null,
    '0'
  );
INSERT INTO `sys_menu`
VALUES (
    '32',
    '��¼��־',
    '1',
    '/sys/loginlog',
    null,
    '1',
    'el-icon-info',
    '8',
    null,
    null,
    'admin',
    '2018-09-23 19:32:28',
    '0'
  );
INSERT INTO `sys_menu`
VALUES (
    '33',
    '�鿴',
    '32',
    null,
    'sys:loginlog:view',
    '2',
    null,
    '0',
    null,
    null,
    null,
    null,
    '0'
  );
INSERT INTO `sys_menu`
VALUES (
    '34',
    'ɾ��',
    '32',
    null,
    'sys:loginlog:delete',
    '2',
    null,
    '0',
    null,
    null,
    null,
    null,
    '0'
  );
INSERT INTO `sys_menu`
VALUES (
    '35',
    '������־',
    '1',
    '/sys/log',
    null,
    '1',
    'el-icon-info',
    '8',
    null,
    null,
    'admin',
    '2018-09-23 19:32:28',
    '0'
  );
INSERT INTO `sys_menu`
VALUES (
    '36',
    '�鿴',
    '35',
    null,
    'sys:log:view',
    '2',
    null,
    '0',
    null,
    null,
    null,
    null,
    '0'
  );
INSERT INTO `sys_menu`
VALUES (
    '37',
    'ɾ��',
    '35',
    null,
    'sys:log:delete',
    '2',
    null,
    '0',
    null,
    null,
    null,
    null,
    '0'
  );
INSERT INTO `sys_menu`
VALUES (
    '38',
    'ϵͳ���',
    '0',
    '',
    '',
    '0',
    'el-icon-info',
    '4',
    'admin',
    '2018-12-27 10:57:29',
    'admin',
    '2019-01-10 17:31:04',
    '0'
  );
INSERT INTO `sys_menu`
VALUES (
    '39',
    '���ݼ��',
    '38',
    'http://127.0.0.1:8001/druid/login.html',
    null,
    '1',
    'el-icon-warning',
    '0',
    null,
    null,
    'admin',
    '2018-12-27 11:03:45',
    '0'
  );
INSERT INTO `sys_menu`
VALUES (
    '40',
    '�鿴',
    '39',
    null,
    'sys:druid:view',
    '2',
    null,
    '0',
    null,
    null,
    null,
    null,
    '0'
  );
INSERT INTO `sys_menu`
VALUES (
    '41',
    '������',
    '38',
    'http://127.0.0.1:8000/',
    null,
    '1',
    'el-icon-view',
    '1',
    'admin',
    '2018-11-02 20:02:15',
    'admin',
    '2018-12-27 11:03:53',
    '0'
  );
INSERT INTO `sys_menu`
VALUES (
    '42',
    '�鿴',
    '41',
    null,
    'sys:monitor:view',
    '2',
    null,
    '0',
    null,
    null,
    null,
    null,
    '0'
  );
INSERT INTO `sys_menu`
VALUES (
    '43',
    '��������',
    '0',
    '',
    '',
    '0',
    'el-icon-service',
    '2',
    'admin',
    '2018-12-27 11:05:48',
    'admin',
    '2018-12-27 11:06:39',
    '0'
  );
INSERT INTO `sys_menu`
VALUES (
    '44',
    'ע������',
    '43',
    'http://127.0.0.1:8500',
    null,
    '1',
    ' el-icon-view',
    '0',
    'admin',
    '2018-11-03 11:06:48',
    'admin',
    '2018-12-27 11:08:11',
    '0'
  );
INSERT INTO `sys_menu`
VALUES (
    '45',
    '�鿴',
    '44',
    null,
    'sys:consul:view',
    '2',
    null,
    '0',
    null,
    null,
    null,
    null,
    '0'
  );
INSERT INTO `sys_menu`
VALUES (
    '46',
    '�ӿ��ĵ�',
    '0',
    'http://127.0.0.1:8001/swagger-ui.html',
    null,
    '1',
    'el-icon-document',
    '3',
    null,
    null,
    'admin',
    '2018-12-27 11:04:18',
    '0'
  );
INSERT INTO `sys_menu`
VALUES (
    '47',
    '�鿴',
    '46',
    null,
    'sys:swagger:view',
    '2',
    null,
    '0',
    null,
    null,
    null,
    null,
    '0'
  );
INSERT INTO `sys_menu`
VALUES (
    '48',
    '��������',
    '0',
    '/generator/generator',
    '',
    '1',
    'el-icon-star-on',
    '5',
    'admin',
    '2018-11-15 14:39:30',
    'admin',
    '2018-11-15 14:56:18',
    '0'
  );
INSERT INTO `sys_menu`
VALUES (
    '49',
    '�鿴',
    '48',
    null,
    'sys:generator:view',
    '2',
    null,
    '0',
    null,
    null,
    null,
    null,
    '0'
  );
INSERT INTO `sys_menu`
VALUES (
    '50',
    '�����û�',
    '0',
    '/sys/online',
    '',
    '1',
    'el-icon-view',
    '5',
    'admin',
    '2018-11-15 14:39:30',
    'admin',
    '2018-11-15 14:56:18',
    '0'
  );
INSERT INTO `sys_menu`
VALUES (
    '51',
    '�鿴',
    '50',
    null,
    'sys:online:view',
    '2',
    null,
    '0',
    null,
    null,
    null,
    null,
    '0'
  );
INSERT INTO `sys_menu`
VALUES (
    '52',
    'ʹ�ð���',
    '0',
    null,
    null,
    '0',
    'el-icon-picture-outline',
    '6',
    null,
    null,
    'admin',
    '2018-11-15 14:39:43',
    '0'
  );
INSERT INTO `sys_menu`
VALUES (
    '53',
    '���ʻ�',
    '52',
    '/demo/i18n',
    null,
    '1',
    'el-icon-edit',
    '1',
    null,
    null,
    null,
    null,
    '0'
  );
INSERT INTO `sys_menu`
VALUES (
    '54',
    '�鿴',
    '53',
    null,
    'sys:dict:view',
    '2',
    null,
    '0',
    null,
    null,
    null,
    null,
    '0'
  );
INSERT INTO `sys_menu`
VALUES (
    '55',
    '��Ƥ��',
    '52',
    '/demo/theme',
    null,
    '1',
    'el-icon-picture',
    '2',
    null,
    null,
    null,
    null,
    '0'
  );
INSERT INTO `sys_menu`
VALUES (
    '56',
    '�鿴',
    '55',
    null,
    'sys:dict:view',
    '2',
    null,
    '0',
    null,
    null,
    null,
    null,
    '0'
  );
-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '���',
  `name` varchar(100) DEFAULT NULL COMMENT '��ɫ����',
  `remark` varchar(100) DEFAULT NULL COMMENT '��ע',
  `create_by` varchar(50) DEFAULT NULL COMMENT '������',
  `create_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `last_update_by` varchar(50) DEFAULT NULL COMMENT '������',
  `last_update_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `del_flag` tinyint(4) DEFAULT '0' COMMENT '�Ƿ�ɾ��  -1����ɾ��  0������',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 9 DEFAULT CHARSET = utf8 COMMENT = '��ɫ����';
-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role`
VALUES (
    '1',
    'admin',
    '��������Ա',
    'admin',
    '2019-01-19 11:11:11',
    'admin',
    '2019-01-19 19:07:18',
    '0'
  );
INSERT INTO `sys_role`
VALUES (
    '2',
    'mng',
    '��Ŀ����',
    'admin',
    '2019-01-19 11:11:11',
    'admin',
    '2019-01-19 11:39:28',
    '0'
  );
INSERT INTO `sys_role`
VALUES (
    '3',
    'dev',
    '������Ա',
    'admin',
    '2019-01-19 11:11:11',
    'admin',
    '2019-01-19 11:39:28',
    '0'
  );
INSERT INTO `sys_role`
VALUES (
    '4',
    'test',
    '������Ա',
    'admin',
    '2019-01-19 11:11:11',
    'admin',
    '2019-01-19 11:11:11',
    '0'
  );
-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '���',
  `role_id` bigint(20) DEFAULT NULL COMMENT '��ɫID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '����ID',
  `create_by` varchar(50) DEFAULT NULL COMMENT '������',
  `create_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `last_update_by` varchar(50) DEFAULT NULL COMMENT '������',
  `last_update_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 4 DEFAULT CHARSET = utf8 COMMENT = '��ɫ����';
-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept`
VALUES (
    '1',
    '1',
    '1',
    'admin',
    '2019-01-11 08:30:37',
    'admin',
    '2019-01-11 08:30:25'
  );
INSERT INTO `sys_role_dept`
VALUES (
    '2',
    '2',
    '2',
    'admin',
    '2019-01-11 08:31:01',
    'admin',
    '2019-01-11 08:31:04'
  );
INSERT INTO `sys_role_dept`
VALUES (
    '3',
    '3',
    '3',
    'admin',
    '2019-01-11 08:31:18',
    'admin',
    '2019-01-11 08:31:21'
  );
-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '���',
  `role_id` bigint(20) DEFAULT NULL COMMENT '��ɫID',
  `menu_id` bigint(20) DEFAULT NULL COMMENT '�˵�ID',
  `create_by` varchar(50) DEFAULT NULL COMMENT '������',
  `create_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `last_update_by` varchar(50) DEFAULT NULL COMMENT '������',
  `last_update_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 623 DEFAULT CHARSET = utf8 COMMENT = '��ɫ�˵�';
-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu`
VALUES (
    '431',
    '8',
    '1',
    'admin',
    '2018-09-23 19:55:08',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '432',
    '8',
    '2',
    'admin',
    '2018-09-23 19:55:08',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '433',
    '8',
    '9',
    'admin',
    '2018-09-23 19:55:08',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '434',
    '8',
    '3',
    'admin',
    '2018-09-23 19:55:08',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '435',
    '8',
    '13',
    'admin',
    '2018-09-23 19:55:08',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '436',
    '8',
    '4',
    'admin',
    '2018-09-23 19:55:08',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '437',
    '8',
    '17',
    'admin',
    '2018-09-23 19:55:08',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '438',
    '8',
    '5',
    'admin',
    '2018-09-23 19:55:08',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '439',
    '8',
    '21',
    'admin',
    '2018-09-23 19:55:08',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '440',
    '8',
    '7',
    'admin',
    '2018-09-23 19:55:08',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '441',
    '8',
    '31',
    'admin',
    '2018-09-23 19:55:08',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '442',
    '8',
    '8',
    'admin',
    '2018-09-23 19:55:08',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '443',
    '8',
    '6',
    'admin',
    '2018-09-23 19:55:08',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '444',
    '8',
    '35',
    'admin',
    '2018-09-23 19:55:08',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES ('469', '2', '1', null, null, null, null);
INSERT INTO `sys_role_menu`
VALUES ('470', '2', '2', null, null, null, null);
INSERT INTO `sys_role_menu`
VALUES ('471', '2', '3', null, null, null, null);
INSERT INTO `sys_role_menu`
VALUES ('472', '2', '4', null, null, null, null);
INSERT INTO `sys_role_menu`
VALUES ('473', '2', '5', null, null, null, null);
INSERT INTO `sys_role_menu`
VALUES ('474', '2', '6', null, null, null, null);
INSERT INTO `sys_role_menu`
VALUES ('475', '2', '7', null, null, null, null);
INSERT INTO `sys_role_menu`
VALUES ('476', '2', '8', null, null, null, null);
INSERT INTO `sys_role_menu`
VALUES ('477', '2', '9', null, null, null, null);
INSERT INTO `sys_role_menu`
VALUES ('478', '2', '10', null, null, null, null);
INSERT INTO `sys_role_menu`
VALUES ('479', '2', '11', null, null, null, null);
INSERT INTO `sys_role_menu`
VALUES ('480', '2', '12', null, null, null, null);
INSERT INTO `sys_role_menu`
VALUES ('481', '2', '13', null, null, null, null);
INSERT INTO `sys_role_menu`
VALUES ('482', '2', '14', null, null, null, null);
INSERT INTO `sys_role_menu`
VALUES ('483', '2', '15', null, null, null, null);
INSERT INTO `sys_role_menu`
VALUES ('484', '2', '16', null, null, null, null);
INSERT INTO `sys_role_menu`
VALUES ('485', '2', '17', null, null, null, null);
INSERT INTO `sys_role_menu`
VALUES ('486', '2', '18', null, null, null, null);
INSERT INTO `sys_role_menu`
VALUES ('487', '2', '19', null, null, null, null);
INSERT INTO `sys_role_menu`
VALUES ('488', '2', '20', null, null, null, null);
INSERT INTO `sys_role_menu`
VALUES ('489', '2', '21', null, null, null, null);
INSERT INTO `sys_role_menu`
VALUES ('490', '2', '22', null, null, null, null);
INSERT INTO `sys_role_menu`
VALUES ('491', '2', '23', null, null, null, null);
INSERT INTO `sys_role_menu`
VALUES ('492', '2', '24', null, null, null, null);
INSERT INTO `sys_role_menu`
VALUES ('493', '2', '25', null, null, null, null);
INSERT INTO `sys_role_menu`
VALUES ('494', '2', '26', null, null, null, null);
INSERT INTO `sys_role_menu`
VALUES ('495', '2', '27', null, null, null, null);
INSERT INTO `sys_role_menu`
VALUES ('496', '2', '28', null, null, null, null);
INSERT INTO `sys_role_menu`
VALUES ('497', '2', '29', null, null, null, null);
INSERT INTO `sys_role_menu`
VALUES ('498', '2', '30', null, null, null, null);
INSERT INTO `sys_role_menu`
VALUES ('499', '2', '31', null, null, null, null);
INSERT INTO `sys_role_menu`
VALUES ('500', '2', '32', null, null, null, null);
INSERT INTO `sys_role_menu`
VALUES ('501', '2', '33', null, null, null, null);
INSERT INTO `sys_role_menu`
VALUES ('502', '2', '34', null, null, null, null);
INSERT INTO `sys_role_menu`
VALUES ('503', '2', '35', null, null, null, null);
INSERT INTO `sys_role_menu`
VALUES ('504', '2', '36', null, null, null, null);
INSERT INTO `sys_role_menu`
VALUES ('505', '2', '37', null, null, null, null);
INSERT INTO `sys_role_menu`
VALUES ('506', '2', '43', null, null, null, null);
INSERT INTO `sys_role_menu`
VALUES ('507', '2', '44', null, null, null, null);
INSERT INTO `sys_role_menu`
VALUES ('508', '2', '45', null, null, null, null);
INSERT INTO `sys_role_menu`
VALUES ('509', '2', '46', null, null, null, null);
INSERT INTO `sys_role_menu`
VALUES ('510', '2', '47', null, null, null, null);
INSERT INTO `sys_role_menu`
VALUES ('511', '2', '38', null, null, null, null);
INSERT INTO `sys_role_menu`
VALUES ('512', '2', '39', null, null, null, null);
INSERT INTO `sys_role_menu`
VALUES ('513', '2', '40', null, null, null, null);
INSERT INTO `sys_role_menu`
VALUES ('514', '2', '41', null, null, null, null);
INSERT INTO `sys_role_menu`
VALUES ('515', '2', '42', null, null, null, null);
INSERT INTO `sys_role_menu`
VALUES ('516', '2', '48', null, null, null, null);
INSERT INTO `sys_role_menu`
VALUES ('517', '2', '49', null, null, null, null);
INSERT INTO `sys_role_menu`
VALUES ('518', '2', '50', null, null, null, null);
INSERT INTO `sys_role_menu`
VALUES ('519', '2', '51', null, null, null, null);
INSERT INTO `sys_role_menu`
VALUES ('520', '2', '52', null, null, null, null);
INSERT INTO `sys_role_menu`
VALUES ('521', '2', '53', null, null, null, null);
INSERT INTO `sys_role_menu`
VALUES ('522', '2', '54', null, null, null, null);
INSERT INTO `sys_role_menu`
VALUES ('523', '2', '55', null, null, null, null);
INSERT INTO `sys_role_menu`
VALUES ('524', '2', '56', null, null, null, null);
INSERT INTO `sys_role_menu`
VALUES (
    '572',
    '3',
    '1',
    'admin',
    '2019-01-22 14:45:28',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '573',
    '3',
    '2',
    'admin',
    '2019-01-22 14:45:28',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '574',
    '3',
    '3',
    'admin',
    '2019-01-22 14:45:28',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '575',
    '3',
    '4',
    'admin',
    '2019-01-22 14:45:28',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '576',
    '3',
    '5',
    'admin',
    '2019-01-22 14:45:28',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '577',
    '3',
    '6',
    'admin',
    '2019-01-22 14:45:28',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '578',
    '3',
    '7',
    'admin',
    '2019-01-22 14:45:28',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '579',
    '3',
    '8',
    'admin',
    '2019-01-22 14:45:28',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '580',
    '3',
    '12',
    'admin',
    '2019-01-22 14:45:28',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '581',
    '3',
    '13',
    'admin',
    '2019-01-22 14:45:28',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '582',
    '3',
    '17',
    'admin',
    '2019-01-22 14:45:28',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '583',
    '3',
    '18',
    'admin',
    '2019-01-22 14:45:28',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '584',
    '3',
    '22',
    'admin',
    '2019-01-22 14:45:28',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '585',
    '3',
    '23',
    'admin',
    '2019-01-22 14:45:28',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '586',
    '3',
    '24',
    'admin',
    '2019-01-22 14:45:28',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '587',
    '3',
    '25',
    'admin',
    '2019-01-22 14:45:28',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '588',
    '3',
    '26',
    'admin',
    '2019-01-22 14:45:28',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '589',
    '3',
    '27',
    'admin',
    '2019-01-22 14:45:28',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '590',
    '3',
    '28',
    'admin',
    '2019-01-22 14:45:28',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '591',
    '3',
    '29',
    'admin',
    '2019-01-22 14:45:28',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '592',
    '3',
    '30',
    'admin',
    '2019-01-22 14:45:28',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '593',
    '3',
    '31',
    'admin',
    '2019-01-22 14:45:28',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '594',
    '3',
    '32',
    'admin',
    '2019-01-22 14:45:28',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '595',
    '3',
    '33',
    'admin',
    '2019-01-22 14:45:28',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '596',
    '3',
    '35',
    'admin',
    '2019-01-22 14:45:28',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '597',
    '3',
    '36',
    'admin',
    '2019-01-22 14:45:28',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '598',
    '3',
    '43',
    'admin',
    '2019-01-22 14:45:28',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '599',
    '3',
    '44',
    'admin',
    '2019-01-22 14:45:28',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '600',
    '3',
    '45',
    'admin',
    '2019-01-22 14:45:28',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '601',
    '3',
    '38',
    'admin',
    '2019-01-22 14:45:28',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '602',
    '3',
    '39',
    'admin',
    '2019-01-22 14:45:28',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '603',
    '3',
    '40',
    'admin',
    '2019-01-22 14:45:28',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '604',
    '3',
    '41',
    'admin',
    '2019-01-22 14:45:28',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '605',
    '3',
    '42',
    'admin',
    '2019-01-22 14:45:28',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '606',
    '3',
    '50',
    'admin',
    '2019-01-22 14:45:28',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '607',
    '3',
    '51',
    'admin',
    '2019-01-22 14:45:28',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '608',
    '4',
    '1',
    'admin',
    '2019-01-22 14:46:44',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '609',
    '4',
    '2',
    'admin',
    '2019-01-22 14:46:44',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '610',
    '4',
    '3',
    'admin',
    '2019-01-22 14:46:44',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '611',
    '4',
    '7',
    'admin',
    '2019-01-22 14:46:44',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '612',
    '4',
    '8',
    'admin',
    '2019-01-22 14:46:44',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '613',
    '4',
    '17',
    'admin',
    '2019-01-22 14:46:44',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '614',
    '4',
    '18',
    'admin',
    '2019-01-22 14:46:44',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '615',
    '4',
    '32',
    'admin',
    '2019-01-22 14:46:44',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '616',
    '4',
    '33',
    'admin',
    '2019-01-22 14:46:44',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '617',
    '4',
    '35',
    'admin',
    '2019-01-22 14:46:44',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '618',
    '4',
    '36',
    'admin',
    '2019-01-22 14:46:44',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '619',
    '4',
    '46',
    'admin',
    '2019-01-22 14:46:44',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '620',
    '4',
    '47',
    'admin',
    '2019-01-22 14:46:44',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '621',
    '4',
    '50',
    'admin',
    '2019-01-22 14:46:44',
    null,
    null
  );
INSERT INTO `sys_role_menu`
VALUES (
    '622',
    '4',
    '51',
    'admin',
    '2019-01-22 14:46:44',
    null,
    null
  );
-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '���',
  `name` varchar(50) NOT NULL COMMENT '�û���',
  `nick_name` varchar(150) DEFAULT NULL COMMENT '�ǳ�',
  `avatar` varchar(150) DEFAULT NULL COMMENT 'ͷ��',
  `password` varchar(100) DEFAULT NULL COMMENT '����',
  `salt` varchar(40) DEFAULT NULL COMMENT '������',
  `email` varchar(100) DEFAULT NULL COMMENT '����',
  `mobile` varchar(100) DEFAULT NULL COMMENT '�ֻ���',
  `status` tinyint(4) DEFAULT NULL COMMENT '״̬  0������   1������',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '����ID',
  `create_by` varchar(50) DEFAULT NULL COMMENT '������',
  `create_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `last_update_by` varchar(50) DEFAULT NULL COMMENT '������',
  `last_update_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `del_flag` tinyint(4) DEFAULT '0' COMMENT '�Ƿ�ɾ��  -1����ɾ��  0������',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE = InnoDB AUTO_INCREMENT = 34 DEFAULT CHARSET = utf8 COMMENT = '�û�����';
-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user`
VALUES (
    '1',
    'admin',
    '����',
    null,
    'bd1718f058d8a02468134432b8656a86',
    'YzcmCZNvbXocrsz9dm8e',
    'admin@qq.com',
    '13612345678',
    '1',
    '4',
    'admin',
    '2018-08-14 11:11:11',
    'admin',
    '2018-08-14 11:11:11',
    '0'
  );
INSERT INTO `sys_user`
VALUES (
    '22',
    'liubei',
    '����',
    null,
    'fd80ebd493a655608dc893a9f897d845',
    'YzcmCZNvbXocrsz9dm8e',
    'test@qq.com',
    '13889700023',
    '1',
    '7',
    'admin',
    '2018-09-23 19:43:00',
    'admin',
    '2019-01-10 11:41:13',
    '0'
  );
INSERT INTO `sys_user`
VALUES (
    '23',
    'zhaoyun',
    '����',
    null,
    'fd80ebd493a655608dc893a9f897d845',
    'YzcmCZNvbXocrsz9dm8e',
    'test@qq.com',
    '13889700023',
    '1',
    '7',
    'admin',
    '2018-09-23 19:43:44',
    'admin',
    '2018-09-23 19:43:52',
    '0'
  );
INSERT INTO `sys_user`
VALUES (
    '24',
    'zhugeliang',
    '�����',
    null,
    'fd80ebd493a655608dc893a9f897d845',
    'YzcmCZNvbXocrsz9dm8e',
    'test@qq.com',
    '13889700023',
    '7',
    '11',
    'admin',
    '2018-09-23 19:44:23',
    'admin',
    '2018-09-23 19:44:29',
    '0'
  );
INSERT INTO `sys_user`
VALUES (
    '25',
    'caocao',
    '�ܲ�',
    null,
    'fd80ebd493a655608dc893a9f897d845',
    'YzcmCZNvbXocrsz9dm8e',
    'test@qq.com',
    '13889700023',
    '1',
    '8',
    'admin',
    '2018-09-23 19:45:32',
    'admin',
    '2019-01-10 17:59:14',
    '0'
  );
INSERT INTO `sys_user`
VALUES (
    '26',
    'dianwei',
    '��Τ',
    null,
    'fd80ebd493a655608dc893a9f897d845',
    'YzcmCZNvbXocrsz9dm8e',
    'test@qq.com',
    '13889700023',
    '1',
    '10',
    'admin',
    '2018-09-23 19:45:48',
    'admin',
    '2018-09-23 19:45:57',
    '0'
  );
INSERT INTO `sys_user`
VALUES (
    '27',
    'xiahoudun',
    '�ĺ',
    null,
    'fd80ebd493a655608dc893a9f897d845',
    'YzcmCZNvbXocrsz9dm8e',
    'test@qq.com',
    '13889700023',
    '1',
    '8',
    'admin',
    '2018-09-23 19:46:09',
    'admin',
    '2018-09-23 19:46:17',
    '0'
  );
INSERT INTO `sys_user`
VALUES (
    '28',
    'xunyu',
    '����',
    null,
    'fd80ebd493a655608dc893a9f897d845',
    'YzcmCZNvbXocrsz9dm8e',
    'test@qq.com',
    '13889700023',
    '1',
    '10',
    'admin',
    '2018-09-23 19:46:38',
    'admin',
    '2018-11-04 15:33:17',
    '0'
  );
INSERT INTO `sys_user`
VALUES (
    '29',
    'sunquan',
    '��Ȩ',
    null,
    'fd80ebd493a655608dc893a9f897d845',
    'YzcmCZNvbXocrsz9dm8e',
    'test@qq.com',
    '13889700023',
    '1',
    '10',
    'admin',
    '2018-09-23 19:46:54',
    'admin',
    '2018-09-23 19:47:03',
    '0'
  );
INSERT INTO `sys_user`
VALUES (
    '30',
    'zhouyu',
    '���',
    null,
    'fd80ebd493a655608dc893a9f897d845',
    'YzcmCZNvbXocrsz9dm8e',
    'test@qq.com',
    '13889700023',
    '1',
    '11',
    'admin',
    '2018-09-23 19:47:28',
    'admin',
    '2018-09-23 19:48:04',
    '0'
  );
INSERT INTO `sys_user`
VALUES (
    '31',
    'luxun',
    '½ѷ',
    null,
    'fd80ebd493a655608dc893a9f897d845',
    'YzcmCZNvbXocrsz9dm8e',
    'test@qq.com',
    '13889700023',
    '1',
    '11',
    'admin',
    '2018-09-23 19:47:44',
    'admin',
    '2018-09-23 19:47:58',
    '0'
  );
INSERT INTO `sys_user`
VALUES (
    '32',
    'huanggai',
    '�Ƹ�',
    null,
    'fd80ebd493a655608dc893a9f897d845',
    'YzcmCZNvbXocrsz9dm8e',
    'test@qq.com',
    '13889700023',
    '1',
    '11',
    'admin',
    '2018-09-23 19:48:38',
    'admin',
    '2018-09-23 19:49:02',
    '0'
  );
-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '���',
  `user_id` bigint(20) DEFAULT NULL COMMENT '�û�ID',
  `role_id` bigint(20) DEFAULT NULL COMMENT '��ɫID',
  `create_by` varchar(50) DEFAULT NULL COMMENT '������',
  `create_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `last_update_by` varchar(50) DEFAULT NULL COMMENT '������',
  `last_update_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 88 DEFAULT CHARSET = utf8 COMMENT = '�û���ɫ';
-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role`
VALUES ('1', '1', '1', null, null, null, null);
INSERT INTO `sys_user_role`
VALUES ('2', '2', '1', null, null, null, null);
INSERT INTO `sys_user_role`
VALUES ('26', '5', '3', null, null, null, null);
INSERT INTO `sys_user_role`
VALUES ('33', '6', '2', null, null, null, null);
INSERT INTO `sys_user_role`
VALUES ('34', '4', '2', null, null, null, null);
INSERT INTO `sys_user_role`
VALUES ('35', '9', '2', null, null, null, null);
INSERT INTO `sys_user_role`
VALUES ('36', '10', '3', null, null, null, null);
INSERT INTO `sys_user_role`
VALUES ('37', '11', '2', null, null, null, null);
INSERT INTO `sys_user_role`
VALUES ('38', '12', '3', null, null, null, null);
INSERT INTO `sys_user_role`
VALUES ('39', '15', '2', null, null, null, null);
INSERT INTO `sys_user_role`
VALUES ('41', '16', '3', null, null, null, null);
INSERT INTO `sys_user_role`
VALUES ('42', '8', '2', null, null, null, null);
INSERT INTO `sys_user_role`
VALUES ('43', '7', '4', null, null, null, null);
INSERT INTO `sys_user_role`
VALUES ('45', '18', '2', null, null, null, null);
INSERT INTO `sys_user_role`
VALUES ('46', '17', '3', null, null, null, null);
INSERT INTO `sys_user_role`
VALUES ('47', '3', '4', null, null, null, null);
INSERT INTO `sys_user_role`
VALUES ('48', '21', '2', null, null, null, null);
INSERT INTO `sys_user_role`
VALUES ('57', '31', '2', null, null, null, null);
INSERT INTO `sys_user_role`
VALUES ('58', '30', '2', null, null, null, null);
INSERT INTO `sys_user_role`
VALUES ('59', '32', '3', null, null, null, null);
INSERT INTO `sys_user_role`
VALUES ('73', '33', '8', null, null, null, null);
INSERT INTO `sys_user_role`
VALUES ('74', '25', '8', null, null, null, null);
INSERT INTO `sys_user_role`
VALUES ('75', '25', '2', null, null, null, null);
INSERT INTO `sys_user_role`
VALUES ('80', '22', '2', null, null, null, null);
INSERT INTO `sys_user_role`
VALUES ('81', '23', '3', null, null, null, null);
INSERT INTO `sys_user_role`
VALUES ('82', '24', '4', null, null, null, null);
INSERT INTO `sys_user_role`
VALUES ('83', '26', '3', null, null, null, null);
INSERT INTO `sys_user_role`
VALUES ('85', '29', '2', null, null, null, null);
INSERT INTO `sys_user_role`
VALUES ('86', '28', '4', null, null, null, null);
INSERT INTO `sys_user_role`
VALUES ('87', '27', '3', null, null, null, null);