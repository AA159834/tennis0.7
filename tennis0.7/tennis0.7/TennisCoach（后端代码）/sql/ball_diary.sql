CREATE TABLE IF NOT EXISTS `ball_diary` (
  `id` BIGINT NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `user_id` BIGINT NOT NULL COMMENT '用户ID',
  `play_date` DATE NOT NULL COMMENT '打球日期',
  `content` TEXT COMMENT '语音识别后的文字内容',
  `audio_url` VARCHAR(500) DEFAULT NULL COMMENT '音频文件路径',
  `mood` VARCHAR(50) DEFAULT NULL COMMENT '心情',
  `opponent` VARCHAR(100) DEFAULT NULL COMMENT '对手',
  `score` VARCHAR(100) DEFAULT NULL COMMENT '比分',
  `source_type` VARCHAR(20) NOT NULL DEFAULT 'voice' COMMENT '来源类型：voice/manual',
  `create_time` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_play_date` (`play_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='打球日记表';
