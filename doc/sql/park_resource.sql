-- 停车场资源服务库
CREATE DATABASE `park_resource` CHARACTER SET utf8 COLLATE utf8_general_ci;

 -- ----------------------------
-- Table structure for brake
-- ----------------------------
DROP TABLE IF EXISTS `brake`;
CREATE TABLE `brake` (
                         `id` varchar(32) NOT NULL DEFAULT '',
                         `code` varchar(20) DEFAULT NULL COMMENT '编号',
                         `desc` varchar(50) DEFAULT NULL COMMENT '描述',
                         `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
                         `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
                         `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
                         `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新日期',
                         `remark` varchar(500) DEFAULT NULL COMMENT '备注',
                         `version` int(4) DEFAULT '0' COMMENT '版本',
                         `state` int(4) DEFAULT '1' COMMENT '状态',
                         PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='停车场闸机';

-- ----------------------------
-- Table structure for stall
-- ----------------------------
DROP TABLE IF EXISTS `stall`;
CREATE TABLE `stall` (
                         `id` varchar(32) NOT NULL DEFAULT '',
                         `code` varchar(10) DEFAULT NULL COMMENT '编号',
                         `is_parked` int(2) DEFAULT NULL COMMENT '是否被占用',
                         `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
                         `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
                         `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
                         `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新日期',
                         `remark` varchar(500) DEFAULT NULL COMMENT '备注',
                         `version` int(4) DEFAULT '0' COMMENT '版本',
                         `state` int(4) DEFAULT '1' COMMENT '状态',
                         PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='车位表';

-- ----------------------------
-- Table structure for stall_parked
-- ----------------------------
DROP TABLE IF EXISTS `stall_parked`;
CREATE TABLE `stall_parked` (
                                `id` varchar(32) NOT NULL DEFAULT '',
                                `stall_id` varchar(32) DEFAULT NULL COMMENT '车位编号',
                                `plate_no` varchar(30) DEFAULT NULL COMMENT '车牌',
                                `mtype` int(2) DEFAULT NULL COMMENT '0入场，1出场',
                                `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
                                `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
                                `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
                                `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新日期',
                                `remark` varchar(500) DEFAULT NULL COMMENT '备注',
                                `version` int(4) DEFAULT '0' COMMENT '版本',
                                `state` int(4) DEFAULT '1' COMMENT '状态',
                                PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='车位停靠记录';

INSERT INTO `brake` VALUES ('4edb0820241041e5a0f08d01992de4c0', 'ct1', '入场口', 'admin', '2019-12-27 11:37:22', NULL, '2019-12-27 11:37:22', NULL, 0, 1);
INSERT INTO `brake` VALUES ('989170c529a348b3b93bf2a4653e8ea9', 'ct2', '入场口', 'admin', '2019-12-27 11:37:45', NULL, '2019-12-27 11:37:45', NULL, 0, 1);
INSERT INTO `brake` VALUES ('e489029055654bccb3cd601f0be71c41', 'ct3', '出场口', 'admin', '2019-12-27 11:37:36', NULL, '2019-12-27 11:37:36', NULL, 0, 1);
INSERT INTO `brake` VALUES ('f726873ed17441ea8dfbf78381bcde78', 'ct4', '出场口', 'admin', '2019-12-27 11:37:41', NULL, '2019-12-27 11:37:41', NULL, 0, 1);


INSERT INTO `stall` VALUES ('004ac347b94e42bb8f0f6febd3265e35', 'P336', 0, 'admin', '2019-12-27 11:42:03', NULL, '2019-12-27 11:42:03', NULL, 0, 1);
INSERT INTO `stall` VALUES ('008773e089664ce49607c86b89dd8c0f', 'P250', 0, 'admin', '2019-12-27 11:42:03', NULL, '2019-12-27 11:42:03', NULL, 0, 1);
INSERT INTO `stall` VALUES ('0110ef02554f46ce91a3eeec6ecf2f95', 'P224', 0, 'admin', '2019-12-27 11:42:03', NULL, '2019-12-27 11:42:03', NULL, 0, 1);
INSERT INTO `stall` VALUES ('014f1f2b972e4e0092d749a7437f824d', 'P577', 0, 'admin', '2019-12-27 11:42:04', NULL, '2019-12-27 11:42:04', NULL, 0, 1);
INSERT INTO `stall` VALUES ('019f4aa0c22849e1a5758aaa33b855df', 'P229', 0, 'admin', '2019-12-27 11:42:03', NULL, '2019-12-27 11:42:03', NULL, 0, 1);
