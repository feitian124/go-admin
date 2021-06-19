CREATE DATABASE IF NOT EXISTS `gocms_db` DEFAULT CHARACTER SET utf8mb4;

USE gocms_db;
SET NAMES utf8mb4;

-- 初始化分类
CREATE TABLE `category`
(
    `id`          bigint(20) NOT NULL AUTO_INCREMENT,
    `name`        varchar(32) DEFAULT NULL,
    `description` longtext,
    `sort_no`     bigint(20)  DEFAULT NULL,
    `status`      bigint(20) NOT NULL,
    `create_time` bigint(20)  DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `name` (`name`),
    KEY `idx_sort_no` (`sort_no`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
