-- 消息服务库
CREATE DATABASE `park_message` CHARACTER SET utf8 COLLATE utf8_general_ci;

 -- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
                           `id` varchar(32) NOT NULL DEFAULT '',
                           `mtype` char(10) DEFAULT NULL COMMENT '消息类型，PAY支付消息，BIND绑定信息',
                           `mcontent` varchar(500) DEFAULT NULL COMMENT '消息内容',
                           `member_id` varchar(32) DEFAULT NULL COMMENT '会员',
                           `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
                           `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
                           `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
                           `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新日期',
                           `remark` varchar(500) DEFAULT NULL COMMENT '备注',
                           `version` int(4) DEFAULT '0' COMMENT '版本',
                           `state` int(4) DEFAULT '1' COMMENT '状态',
                           PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='推送消息';

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