CREATE TABLE `lj_transaction` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lj_id` varchar(180) NOT NULL DEFAULT '' COMMENT 'lj_id',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `trade_time` varchar(255) NOT NULL DEFAULT '' COMMENT '交易时间',
  `total_price` varchar(255) NOT NULL DEFAULT 0.00 COMMENT '总价',
  `total_unit` varchar(255) NOT NULL DEFAULT '' COMMENT '总价单位',
  `unit_price` varchar(255) NOT NULL DEFAULT 0.00 COMMENT '单价',
  `unit_unit` varchar(255) NOT NULL DEFAULT '' COMMENT '单价单位',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '爬取状态 1todo 2done',
  `floor` varchar(255) NOT NULL DEFAULT '' COMMENT '所在楼层',
  `house_type` varchar(255) NOT NULL DEFAULT '' COMMENT '户型',
  `area` varchar(255) NOT NULL DEFAULT '' COMMENT '建筑面积',
  `real_araa` varchar(255) NOT NULL DEFAULT '' COMMENT '套内面积',
  `guapai_time` varchar(255) NOT NULL DEFAULT '' COMMENT '挂牌时间',
  `ownership` varchar(255) NOT NULL DEFAULT '' COMMENT '交易权属',
  `house_usage` varchar(255) NOT NULL DEFAULT '' COMMENT '房屋用途',
  `house_limit` varchar(255) NOT NULL DEFAULT '' COMMENT '房屋年限',
  `attr_detail` text NULL DEFAULT NULL COMMENT 'attr_detail',
  `trade_list` text NULL DEFAULT NULL COMMENT '交易记录',
  `plot` varchar(255) NOT NULL DEFAULT '' COMMENT '小区',
  `plot_id` varchar(255) NOT NULL DEFAULT '' COMMENT '小区id',
  `location` varchar(255) NOT NULL DEFAULT '' COMMENT 'location',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `lj_id` (`lj_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `zjw_beijing` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dt` varchar(180) NOT NULL DEFAULT '' COMMENT '日期',
  `net_number` varchar(255) NOT NULL DEFAULT '' COMMENT '网上签约套数',
  `net_area` varchar(255) NOT NULL DEFAULT '' COMMENT '网上签约面积',
  `residence_number` varchar(255) NOT NULL DEFAULT '' COMMENT '住宅签约套数',
  `residence_area` varchar(255) NOT NULL DEFAULT '' COMMENT '住宅签约面积',
  PRIMARY KEY (`id`),
  KEY `dt` (`dt`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;