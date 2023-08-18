-- 洗车服务库
CREATE DATABASE `park_carwash` CHARACTER SET utf8 COLLATE utf8_general_ci;
    -- ----------------------------
-- Table structure for car_wash
-- ----------------------------
DROP TABLE IF EXISTS `car_wash`;
CREATE TABLE `car_wash` (
                            `id` varchar(32) NOT NULL,
                            `member_id` varchar(32) DEFAULT NULL COMMENT '会员编号',
                            `plate_no` varchar(10) DEFAULT NULL COMMENT '车牌号',
                            `ticket_code` varchar(20) DEFAULT NULL COMMENT '洗车券编码',
                            `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
                            `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
                            `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
                            `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新日期',
                            `remark` varchar(500) DEFAULT NULL COMMENT '备注',
                            `version` int(4) DEFAULT '0' COMMENT '版本',
                            `state` int(4) DEFAULT '1' COMMENT '状态',
                            PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;