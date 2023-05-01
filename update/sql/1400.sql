UPDATE `settings` SET `value` = '{\"version\":\"14.0.0\", \"code\":\"1400\"}' WHERE `key` = 'product_info';

-- SEPARATOR --

alter table users add city_name varchar(32) null after country;

-- SEPARATOR --

alter table users add continent_code varchar(8) null after city_name;

-- SEPARATOR --

alter table users_logs add city_name varchar(32) null after country_code;

-- SEPARATOR --

alter table users_logs add continent_code varchar(8) null after city_name;

-- SEPARATOR --


CREATE TABLE `projects` (
`project_id` bigint unsigned NOT NULL AUTO_INCREMENT,
`user_id` bigint unsigned DEFAULT NULL,
`name` varchar(128) DEFAULT NULL,
`color` varchar(16) DEFAULT '#000',
`last_datetime` datetime DEFAULT NULL,
`datetime` datetime DEFAULT NULL,
PRIMARY KEY (`project_id`),
UNIQUE KEY `project_id` (`project_id`),
KEY `user_id` (`user_id`),
CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
