-- 计费服务库
CREATE DATABASE `park_charging` CHARACTER SET utf8 COLLATE utf8_general_ci;
    -- ----------------------------
-- Table structure for charging_rule
-- ----------------------------
DROP TABLE IF EXISTS `charging_rule`;
CREATE TABLE `charging_rule` (
                                 `id` varchar(32) NOT NULL DEFAULT '',
                                 `start` int(4) DEFAULT NULL COMMENT '停车时间起始',
                                 `end` int(4) DEFAULT NULL COMMENT '停车时间结束',
                                 `fee` float DEFAULT NULL COMMENT '收费',
                                 `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
                                 `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
                                 `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
                                 `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新日期',
                                 `remark` varchar(500) DEFAULT NULL COMMENT '备注',
                                 `version` int(4) DEFAULT '0' COMMENT '版本',
                                 `state` int(4) DEFAULT '1' COMMENT '状态',
                                 PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='计费规则';

-- ----------------------------
-- Table structure for entrance
-- ----------------------------
DROP TABLE IF EXISTS `entrance`;
CREATE TABLE `entrance` (
                            `id` varchar(32) NOT NULL DEFAULT '',
                            `member_id` varchar(32) DEFAULT NULL COMMENT '会员编号',
                            `plate_no` varchar(10) DEFAULT NULL COMMENT '车牌',
                            `brake_id` varchar(32) DEFAULT NULL COMMENT '闸机号',
                            `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
                            `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
                            `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
                            `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新日期',
                            `remark` varchar(500) DEFAULT NULL COMMENT '备注',
                            `version` int(4) DEFAULT '0' COMMENT '版本',
                            `state` int(4) DEFAULT '1' COMMENT '状态',
                            PRIMARY KEY (`id`) USING BTREE,
                            KEY `no_idx` (`plate_no`),
                            KEY `member_idx` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='车辆入场';

-- ----------------------------
-- Table structure for undo_log
-- ----------------------------
DROP TABLE IF EXISTS `undo_log`;
CREATE TABLE `undo_log` (
                            `id` bigint(20) NOT NULL AUTO_INCREMENT,
                            `branch_id` bigint(20) NOT NULL,
                            `xid` varchar(100) NOT NULL,
                            `context` varchar(128) NOT NULL,
                            `rollback_info` longblob NOT NULL,
                            `log_status` int(11) NOT NULL,
                            `log_created` datetime NOT NULL,
                            `log_modified` datetime NOT NULL,
                            `ext` varchar(100) DEFAULT NULL,
                            PRIMARY KEY (`id`),
                            UNIQUE KEY `ux_undo_log` (`xid`,`branch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for vexists
-- ----------------------------
DROP TABLE IF EXISTS `vexists`;
CREATE TABLE `vexists` (
                           `id` varchar(32) NOT NULL DEFAULT '',
                           `member_id` varchar(32) DEFAULT NULL COMMENT '会员编号',
                           `brake_id` varchar(32) DEFAULT NULL COMMENT '闸机号',
                           `plate_no` varchar(32) DEFAULT NULL COMMENT '车牌号',
                           `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
                           `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
                           `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
                           `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新日期',
                           `remark` varchar(500) DEFAULT NULL COMMENT '备注',
                           `version` int(4) DEFAULT '0' COMMENT '版本',
                           `state` int(4) DEFAULT '1' COMMENT '状态',
                           PRIMARY KEY (`id`) USING BTREE,
                           KEY `no_idx` (`plate_no`),
                           KEY `member_idx` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='车辆驶出';

INSERT INTO `charging_rule` VALUES ('41ed927623cf4a0bb5354b10100da992', 0, 30, 0, 'admin', '2019-12-27 11:26:08', NULL, '2019-12-27 11:26:08', '30 分钟内免费', 0, 1);
INSERT INTO `charging_rule` VALUES ('41ed927623cf4a0bb5354b10100da993', 31, 120, 5, 'admin', '2019-12-27 11:26:12', NULL, '2019-12-27 11:26:12', '2 小时内，5 元', 0, 1);
INSERT INTO `charging_rule` VALUES ('4edb0820241041e5a0f08d01992de4c0', 121, 720, 10, 'admin', '2019-12-27 11:34:06', NULL, '2019-12-27 11:34:06', '2 小时以上 12 小时以内，10 元', 0, 1);
INSERT INTO `charging_rule` VALUES ('7616fb412e824dcda41ed9367feadfda', 721, 1440, 20, 'admin', '2019-12-27 13:35:37', NULL, '2019-12-27 13:35:37', '12 时至 24 时，20 元', 0, 1);
