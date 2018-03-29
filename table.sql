
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_auth
-- ----------------------------
DROP TABLE IF EXISTS `sys_auth`;
CREATE TABLE `sys_auth` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `vc_authname` varchar(30) NOT NULL COMMENT '权限名称',
  `dt_create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `dt_update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sys_auth_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_auth_menu`;
CREATE TABLE `sys_auth_menu` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `fk_auth_id` int(30) NOT NULL,
  `fk_menu_id` int(30) NOT NULL,
  `dt_create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `dt_update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `vc_menuname` varchar(80) NOT NULL COMMENT '菜单名称',
  `vc_url` varchar(255) DEFAULT NULL,
  `fk_pid` int(30) DEFAULT NULL,
  `dt_create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `dt_update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vc_role_name` varchar(30) NOT NULL COMMENT '角色名',
  `dt_create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `dt_update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sys_role_usergroup
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_usergroup`;
CREATE TABLE `sys_role_usergroup` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `fk_role_id` int(30) NOT NULL,
  `fk_usergroup_id` int(30) NOT NULL,
  `dt_create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `dt_update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vc_username` varchar(30) NOT NULL COMMENT '用户名',
  `vc_password` varchar(30) NOT NULL DEFAULT '' COMMENT '密码',
  `dt_create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `dt_update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sys_user_usergroup
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_usergroup`;
CREATE TABLE `sys_user_usergroup` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `fk_user_id` int(30) NOT NULL,
  `fk_usergroup_id` int(30) NOT NULL,
  `dt_create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `dt_update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sys_usergroup
-- ----------------------------
DROP TABLE IF EXISTS `sys_usergroup`;
CREATE TABLE `sys_usergroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vc_user_groupname` varchar(30) NOT NULL COMMENT '用户组名称',
  `pid` int(11) DEFAULT NULL COMMENT '父用户组id',
  `dt_create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `dt_update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
