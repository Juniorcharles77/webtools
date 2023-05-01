CREATE TABLE `users` (
`user_id` bigint unsigned NOT NULL AUTO_INCREMENT,
`email` varchar(320) NOT NULL,
`password` varchar(128) DEFAULT NULL,
`name` varchar(64) NOT NULL,
`billing` text,
`api_key` varchar(32) DEFAULT NULL,
`token_code` varchar(32) DEFAULT NULL,
`twofa_secret` varchar(16) DEFAULT NULL,
`anti_phishing_code` varchar(8) DEFAULT NULL,
`one_time_login_code` varchar(32) DEFAULT NULL,
`pending_email` varchar(128) DEFAULT NULL,
`email_activation_code` varchar(32) DEFAULT NULL,
`lost_password_code` varchar(32) DEFAULT NULL,
`type` tinyint NOT NULL DEFAULT '0',
`status` tinyint NOT NULL DEFAULT '0',
`plan_id` varchar(16) NOT NULL DEFAULT '',
`plan_expiration_date` datetime DEFAULT NULL,
`plan_settings` text,
`plan_trial_done` tinyint DEFAULT '0',
`plan_expiry_reminder` tinyint DEFAULT '0',
`payment_subscription_id` varchar(64) DEFAULT NULL,
`payment_processor` varchar(16) DEFAULT NULL,
`payment_total_amount` float DEFAULT NULL,
`payment_currency` varchar(4) DEFAULT NULL,
`referral_key` varchar(32) DEFAULT NULL,
`referred_by` varchar(32) DEFAULT NULL,
`referred_by_has_converted` tinyint DEFAULT '0',
`language` varchar(32) DEFAULT 'english',
`timezone` varchar(32) DEFAULT 'UTC',
`datetime` datetime DEFAULT NULL,
`ip` varchar(64) DEFAULT NULL,
`continent_code` varchar(8) DEFAULT NULL,
`country` varchar(8) DEFAULT NULL,
`city_name` varchar(32) DEFAULT NULL,
`last_activity` datetime DEFAULT NULL,
`last_user_agent` varchar(256) DEFAULT NULL,
`total_logins` int DEFAULT '0',
`user_deletion_reminder` tinyint(4) DEFAULT '0',
`source` varchar(32) DEFAULT 'direct',
PRIMARY KEY (`user_id`),
KEY `plan_id` (`plan_id`),
KEY `api_key` (`api_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- SEPARATOR --

INSERT INTO `users` (`user_id`, `email`, `password`, `api_key`, `referral_key`, `name`, `type`, `status`, `plan_id`, `plan_expiration_date`, `plan_settings`, `datetime`, `ip`, `last_activity`)
VALUES (1,'admin','$2y$10$uFNO0pQKEHSFcus1zSFlveiPCB3EvG9ZlES7XKgJFTAl5JbRGFCWy', md5(rand()), md5(rand()), 'AltumCode',1,1,'custom','2030-01-01 12:00:00', '{"teams_limit":0,"team_members_limit":0,"api_is_enabled":true,"affiliate_is_enabled":false,"no_ads":true,"enabled_tools":{"dns_lookup":true,"ip_lookup":true,"reverse_ip_lookup":true,"ssl_lookup":true,"whois_lookup":true,"ping":true,"http_headers_lookup":true,"safe_url_checker":true,"google_cache_checker":true,"url_redirect_checker":true,"password_strength_checker":true,"meta_tags_checker":true,"website_hosting_checker":true,"file_mime_type_checker":true,"gravatar_checker":true,"text_separator":true,"email_extractor":true,"url_extractor":true,"text_size_calculator":true,"duplicate_lines_remover":true,"text_to_speech":true,"idn_punnycode_converter":true,"case_converter":true,"character_counter":true,"list_randomizer":true,"reverse_words":true,"reverse_letters":true,"emojis_remover":true,"reverse_list":true,"list_alphabetizer":true,"upside_down_text_generator":true,"old_english_text_generator":true,"cursive_text_generator":true,"base64_encoder":true,"base64_decoder":true,"base64_to_image":true,"image_to_base64":true,"url_encoder":true,"url_decoder":true,"color_converter":true,"binary_converter":true,"hex_converter":true,"ascii_converter":true,"decimal_converter":true,"octal_converter":true,"morse_converter":true,"number_to_words_converter":true,"paypal_link_generator":true,"signature_generator":true,"mailto_link_generator":true,"utm_link_generator":true,"whatsapp_link_generator":true,"youtube_timestamp_link_generator":true,"slug_generator":true,"lorem_ipsum_generator":true,"password_generator":true,"random_number_generator":true,"uuid_v4_generator":true,"bcrypt_generator":true,"md2_generator":true,"md4_generator":true,"md5_generator":true,"whirlpool_generator":true,"sha1_generator":true,"sha224_generator":true,"sha256_generator":true,"sha384_generator":true,"sha512_generator":true,"sha512_224_generator":true,"sha512_256_generator":true,"sha3_224_generator":true,"sha3_256_generator":true,"sha3_384_generator":true,"sha3_512_generator":true,"html_minifier":true,"css_minifier":true,"js_minifier":true,"json_validator_beautifier":true,"sql_beautifier":true,"html_entity_converter":true,"bbcode_to_html":true,"markdown_to_html":true,"html_tags_remover":true,"user_agent_parser":true,"url_parser":true,"png_to_jpg":true,"png_to_webp":true,"png_to_bmp":true,"png_to_gif":true,"png_to_ico":true,"jpg_to_png":true,"jpg_to_webp":true,"jpg_to_gif":true,"jpg_to_ico":true,"jpg_to_bmp":true,"webp_to_jpg":true,"webp_to_gif":true,"webp_to_png":true,"webp_to_bmp":true,"webp_to_ico":true,"bmp_to_jpg":true,"bmp_to_gif":true,"bmp_to_png":true,"bmp_to_webp":true,"bmp_to_ico":true,"ico_to_jpg":true,"ico_to_gif":true,"ico_to_png":true,"ico_to_webp":true,"ico_to_bmp":true,"gif_to_jpg":true,"gif_to_ico":true,"gif_to_png":true,"gif_to_webp":true,"gif_to_bmp":true,"heic_to_png":true,"heic_to_gif":true,"heic_to_jpg":true,"youtube_thumbnail_downloader":true,"image_optimizer":true,"qr_code_reader":true,"exif_reader":true,"color_picker":true,"hex_to_hexa":true,"hex_to_rgb":true,"hex_to_rgba":true,"hex_to_hsv":true,"hex_to_hsl":true,"hex_to_hsla":true,"hexa_to_hex":true,"hexa_to_rgb":true,"hexa_to_rgba":true,"hexa_to_hsv":true,"hexa_to_hsl":true,"hexa_to_hsla":true,"rgb_to_hex":true,"rgb_to_hexa":true,"rgb_to_rgba":true,"rgb_to_hsv":true,"rgb_to_hsl":true,"rgb_to_hsla":true,"rgba_to_hex":true,"rgba_to_hexa":true,"rgba_to_rgb":true,"rgba_to_hsv":true,"rgba_to_hsl":true,"rgba_to_hsla":true,"hsv_to_hex":true,"hsv_to_hexa":true,"hsv_to_rgb":true,"hsv_to_rgba":true,"hsv_to_hsl":true,"hsv_to_hsla":true,"hsl_to_hex":true,"hsl_to_hexa":true,"hsl_to_rgb":true,"hsl_to_rgba":true,"hsl_to_hsv":true,"hsl_to_hsla":true,"hsla_to_hex":true,"hsla_to_hexa":true,"hsla_to_rgb":true,"hsla_to_rgba":true,"hsla_to_hsv":true,"hsla_to_hsl":true,"celsius_to_fahrenheit":true,"celsius_to_kelvin":true,"fahrenheit_to_celsius":true,"fahrenheit_to_kelvin":true,"kelvin_to_celsius":true,"kelvin_to_fahrenheit":true,"miles_to_kilometers":true,"kilometers_to_miles":true,"miles_per_hour_to_kilometers_per_hour":true,"kilometers_per_hour_to_miles_per_hour":true,"kilograms_to_pounds":true,"pounds_to_kilograms":true,"number_to_roman_numerals":true,"roman_numerals_to_number":true,"liters_to_gallons_us":true,"liters_to_gallons_imperial":true,"gallons_us_to_liters":true,"gallons_imperial_to_liters":true,"unix_timestamp_to_date":true,"date_to_unix_timestamp":true,"seconds_to_minutes":true,"seconds_to_hours":true,"seconds_to_days":true,"seconds_to_weeks":true,"seconds_to_months":true,"seconds_to_years":true,"minutes_to_seconds":true,"minutes_to_hours":true,"minutes_to_days":true,"minutes_to_weeks":true,"minutes_to_months":true,"minutes_to_years":true,"hours_to_seconds":true,"hours_to_minutes":true,"hours_to_days":true,"hours_to_weeks":true,"hours_to_months":true,"hours_to_years":true,"days_to_seconds":true,"days_to_minutes":true,"days_to_hours":true,"days_to_weeks":true,"days_to_months":true,"days_to_years":true,"weeks_to_seconds":true,"weeks_to_minutes":true,"weeks_to_hours":true,"weeks_to_days":true,"weeks_to_months":true,"weeks_to_years":true,"months_to_seconds":true,"months_to_minutes":true,"months_to_hours":true,"months_to_days":true,"months_to_weeks":true,"months_to_years":true,"years_to_seconds":true,"years_to_minutes":true,"years_to_hours":true,"years_to_days":true,"years_to_weeks":true,"years_to_months":true,"bits_to_nibbles":true,"bits_to_bytes":true,"bits_to_kilobits":true,"bits_to_kibibits":true,"bits_to_kibibytes":true,"bits_to_kilobytes":true,"bits_to_megabits":true,"bits_to_mebibits":true,"bits_to_megabytes":true,"bits_to_mebibytes":true,"bits_to_gigabits":true,"bits_to_gibibits":true,"bits_to_gigabytes":true,"bits_to_gibibytes":true,"bits_to_terabits":true,"bits_to_tebibits":true,"bits_to_terabytes":true,"bits_to_tebibytes":true,"bits_to_petabits":true,"bits_to_petabytes":true,"bits_to_pebibytes":true,"bits_to_pebibits":true,"bits_to_exabits":true,"bits_to_exbibits":true,"bits_to_exabytes":true,"bits_to_exbibytes":true,"bits_to_zettabits":true,"bits_to_zebibits":true,"bits_to_zettabytes":true,"bits_to_zebibytes":true,"bits_to_yottabits":true,"bits_to_yobibits":true,"bits_to_yottabytes":true,"bits_to_yobibytes":true,"nibbles_to_bits":true,"nibbles_to_bytes":true,"nibbles_to_kilobits":true,"nibbles_to_kibibits":true,"nibbles_to_kilobytes":true,"nibbles_to_kibibytes":true,"nibbles_to_megabits":true,"nibbles_to_mebibits":true,"nibbles_to_megabytes":true,"nibbles_to_mebibytes":true,"nibbles_to_gigabits":true,"nibbles_to_gibibits":true,"nibbles_to_gigabytes":true,"nibbles_to_gibibytes":true,"nibbles_to_terabits":true,"nibbles_to_tebibits":true,"nibbles_to_terabytes":true,"nibbles_to_tebibytes":true,"nibbles_to_petabits":true,"nibbles_to_petabytes":true,"nibbles_to_pebibytes":true,"nibbles_to_pebibits":true,"nibbles_to_exabits":true,"nibbles_to_exbibits":true,"nibbles_to_exabytes":true,"nibbles_to_exbibytes":true,"nibbles_to_zettabits":true,"nibbles_to_zebibits":true,"nibbles_to_zettabytes":true,"nibbles_to_zebibytes":true,"nibbles_to_yottabits":true,"nibbles_to_yobibits":true,"nibbles_to_yottabytes":true,"nibbles_to_yobibytes":true,"bytes_to_bits":true,"bytes_to_nibbles":true,"bytes_to_kilobits":true,"bytes_to_kibibits":true,"bytes_to_kilobytes":true,"bytes_to_kibibytes":true,"bytes_to_megabits":true,"bytes_to_mebibits":true,"bytes_to_megabytes":true,"bytes_to_mebibytes":true,"bytes_to_gigabits":true,"bytes_to_gibibits":true,"bytes_to_gigabytes":true,"bytes_to_gibibytes":true,"bytes_to_terabits":true,"bytes_to_tebibits":true,"bytes_to_terabytes":true,"bytes_to_tebibytes":true,"bytes_to_petabits":true,"bytes_to_petabytes":true,"bytes_to_pebibytes":true,"bytes_to_pebibits":true,"bytes_to_exabits":true,"bytes_to_exbibits":true,"bytes_to_exabytes":true,"bytes_to_exbibytes":true,"bytes_to_zettabits":true,"bytes_to_zebibits":true,"bytes_to_zettabytes":true,"bytes_to_zebibytes":true,"bytes_to_yottabits":true,"bytes_to_yobibits":true,"bytes_to_yottabytes":true,"bytes_to_yobibytes":true}}', NOW(),'',NOW());

-- SEPARATOR --

CREATE TABLE `users_logs` (
`id` bigint unsigned NOT NULL AUTO_INCREMENT,
`user_id` bigint unsigned DEFAULT NULL,
`type` varchar(64) DEFAULT NULL,
`ip` varchar(64) DEFAULT NULL,
`device_type` varchar(16) DEFAULT NULL,
`os_name` varchar(16) DEFAULT NULL,
`continent_code` varchar(8) DEFAULT NULL,
`country_code` varchar(8) DEFAULT NULL,
`city_name` varchar(32) DEFAULT NULL,
`datetime` datetime DEFAULT NULL,
PRIMARY KEY (`id`),
KEY `users_logs_user_id` (`user_id`),
CONSTRAINT `users_logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- SEPARATOR --

CREATE TABLE `plans` (
`plan_id` int unsigned NOT NULL AUTO_INCREMENT,
`name` varchar(256) NOT NULL DEFAULT '',
`description` varchar(256) NOT NULL DEFAULT '',
`monthly_price` float DEFAULT NULL,
`annual_price` float DEFAULT NULL,
`lifetime_price` float DEFAULT NULL,
`trial_days` int unsigned NOT NULL DEFAULT '0',
`settings` text NOT NULL,
`taxes_ids` text,
`codes_ids` text,
`color` varchar(16) DEFAULT NULL,
`status` tinyint NOT NULL,
`order` int unsigned DEFAULT '0',
`datetime` datetime NOT NULL,
PRIMARY KEY (`plan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- SEPARATOR --

CREATE TABLE `pages_categories` (
`pages_category_id` bigint unsigned NOT NULL AUTO_INCREMENT,
`url` varchar(256) NOT NULL DEFAULT '',
`title` varchar(64) NOT NULL DEFAULT '',
`description` varchar(128) DEFAULT NULL,
`icon` varchar(32) DEFAULT NULL,
`order` int NOT NULL DEFAULT '0',
`language` varchar(32) DEFAULT NULL,
`datetime` datetime DEFAULT NULL,
`last_datetime` datetime DEFAULT NULL,
PRIMARY KEY (`pages_category_id`),
KEY `url` (`url`),
KEY `pages_categories_url_language_index` (`url`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- SEPARATOR --

CREATE TABLE `pages` (
`page_id` bigint unsigned NOT NULL AUTO_INCREMENT,
`pages_category_id` bigint unsigned DEFAULT NULL,
`url` varchar(128) NOT NULL,
`title` varchar(64) NOT NULL DEFAULT '',
`description` varchar(128) DEFAULT NULL,
`keywords` varchar(256) CHARACTER SET utf8mb4 DEFAULT NULL,
`editor` varchar(16) DEFAULT NULL,
`content` longtext,
`type` varchar(16) DEFAULT '',
`position` varchar(16) NOT NULL DEFAULT '',
`language` varchar(32) DEFAULT NULL,
`open_in_new_tab` tinyint DEFAULT '1',
`order` int DEFAULT '0',
`total_views` int DEFAULT '0',
`is_published` tinyint DEFAULT '1',
`datetime` datetime DEFAULT NULL,
`last_datetime` datetime DEFAULT NULL,
PRIMARY KEY (`page_id`),
KEY `pages_pages_category_id_index` (`pages_category_id`),
KEY `pages_url_index` (`url`),
KEY `pages_is_published_index` (`is_published`),
KEY `pages_language_index` (`language`),
CONSTRAINT `pages_ibfk_1` FOREIGN KEY (`pages_category_id`) REFERENCES `pages_categories` (`pages_category_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- SEPARATOR --

INSERT INTO `pages` (`pages_category_id`, `url`, `title`, `description`, `content`, `type`, `position`, `order`, `total_views`, `datetime`, `last_datetime`) VALUES
(NULL, 'https://altumcode.com/', 'Software by AltumCode', '', '', 'external', 'bottom', 1, 0, NOW(), NOW()),
(NULL, 'https://altumco.de/66toolkit', 'Built with 66toolkit', '', '', 'external', 'bottom', 0, 0, NOW(), NOW());

-- SEPARATOR --

CREATE TABLE `blog_posts_categories` (
`blog_posts_category_id` bigint unsigned NOT NULL AUTO_INCREMENT,
`url` varchar(256) NOT NULL DEFAULT '',
`title` varchar(64) NOT NULL DEFAULT '',
`description` varchar(128) DEFAULT NULL,
`order` int NOT NULL DEFAULT '0',
`language` varchar(32) DEFAULT NULL,
`datetime` datetime DEFAULT NULL,
`last_datetime` datetime DEFAULT NULL,
PRIMARY KEY (`blog_posts_category_id`),
KEY `url` (`url`),
KEY `blog_posts_categories_url_language_index` (`url`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- SEPARATOR --

CREATE TABLE `blog_posts` (
`blog_post_id` bigint unsigned NOT NULL AUTO_INCREMENT,
`blog_posts_category_id` bigint unsigned DEFAULT NULL,
`url` varchar(128) NOT NULL,
`title` varchar(64) NOT NULL DEFAULT '',
`description` varchar(128) DEFAULT NULL,
`keywords` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`image` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`editor` varchar(16) DEFAULT NULL,
`content` longtext,
`language` varchar(32) DEFAULT NULL,
`total_views` int DEFAULT '0',
`is_published` tinyint DEFAULT '1',
`datetime` datetime DEFAULT NULL,
`last_datetime` datetime DEFAULT NULL,
PRIMARY KEY (`blog_post_id`),
KEY `blog_post_id_index` (`blog_post_id`),
KEY `blog_post_url_index` (`url`),
KEY `blog_posts_category_id` (`blog_posts_category_id`),
KEY `blog_posts_is_published_index` (`is_published`),
KEY `blog_posts_language_index` (`language`),
CONSTRAINT `blog_posts_ibfk_1` FOREIGN KEY (`blog_posts_category_id`) REFERENCES `blog_posts_categories` (`blog_posts_category_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- SEPARATOR --

CREATE TABLE `settings` (
`id` int NOT NULL AUTO_INCREMENT,
`key` varchar(64) NOT NULL DEFAULT '',
`value` longtext NOT NULL,
PRIMARY KEY (`id`),
UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- SEPARATOR --

SET @cron_key = MD5(RAND());

-- SEPARATOR --

INSERT INTO `settings` (`key`, `value`) VALUES
('main', '{"title":"Your title","default_language":"english","default_theme_style":"light","default_timezone":"UTC","index_url":"","terms_and_conditions_url":"","privacy_policy_url":"","not_found_url":"","se_indexing":true,"default_results_per_page":25,"default_order_type":"DESC","auto_language_detection_is_enabled":true,"blog_is_enabled":true,"logo_light":"","logo_dark":"","logo_email":"","opengraph":"","favicon":""}'),
('users', '{"email_confirmation":false,"register_is_enabled":true,"auto_delete_inactive_users":0,"user_deletion_reminder":0}'),
('ads', '{\"header\":\"\",\"footer\":\"\"}'),
('captcha', '{\"type\":\"basic\",\"recaptcha_public_key\":\"\",\"recaptcha_private_key\":\"\",\"login_is_enabled\":0,\"register_is_enabled\":0,\"lost_password_is_enabled\":0,\"resend_activation_is_enabled\":0}'),
('cron', concat('{\"key\":\"', @cron_key, '\"}')),
('email_notifications', '{\"emails\":\"\",\"new_user\":\"\",\"new_payment\":\"\"}'),
('facebook', '{\"is_enabled\":\"0\",\"app_id\":\"\",\"app_secret\":\"\"}'),
('google', '{\"is_enabled\":\"0\",\"client_id\":\"\",\"client_secret\":\"\"}'),
('twitter', '{\"is_enabled\":\"0\",\"consumer_api_key\":\"\",\"consumer_api_secret\":\"\"}'),
('discord', '{\"is_enabled\":\"0\"}'),
('plan_custom', '{"plan_id":"custom","name":"Custom","description":"","price":":)","custom_button_url":"https:\/\/example.com\/","color":null,"status":2,"settings":{"teams_limit":0,"team_members_limit":0,"api_is_enabled":true,"affiliate_is_enabled":false,"no_ads":true,"enabled_tools":{"dns_lookup":true,"ip_lookup":true,"reverse_ip_lookup":true,"ssl_lookup":true,"whois_lookup":true,"ping":true,"http_headers_lookup":true,"safe_url_checker":true,"google_cache_checker":true,"url_redirect_checker":true,"password_strength_checker":true,"meta_tags_checker":true,"website_hosting_checker":true,"file_mime_type_checker":true,"gravatar_checker":true,"text_separator":true,"email_extractor":true,"url_extractor":true,"text_size_calculator":true,"duplicate_lines_remover":true,"text_to_speech":true,"idn_punnycode_converter":true,"case_converter":true,"character_counter":true,"list_randomizer":true,"reverse_words":true,"reverse_letters":true,"emojis_remover":true,"reverse_list":true,"list_alphabetizer":true,"upside_down_text_generator":true,"old_english_text_generator":true,"cursive_text_generator":true,"base64_encoder":true,"base64_decoder":true,"base64_to_image":true,"image_to_base64":true,"url_encoder":true,"url_decoder":true,"color_converter":true,"binary_converter":true,"hex_converter":true,"ascii_converter":true,"decimal_converter":true,"octal_converter":true,"morse_converter":true,"number_to_words_converter":true,"paypal_link_generator":true,"signature_generator":true,"mailto_link_generator":true,"utm_link_generator":true,"whatsapp_link_generator":true,"youtube_timestamp_link_generator":true,"slug_generator":true,"lorem_ipsum_generator":true,"password_generator":true,"random_number_generator":true,"uuid_v4_generator":true,"bcrypt_generator":true,"md2_generator":true,"md4_generator":true,"md5_generator":true,"whirlpool_generator":true,"sha1_generator":true,"sha224_generator":true,"sha256_generator":true,"sha384_generator":true,"sha512_generator":true,"sha512_224_generator":true,"sha512_256_generator":true,"sha3_224_generator":true,"sha3_256_generator":true,"sha3_384_generator":true,"sha3_512_generator":true,"html_minifier":true,"css_minifier":true,"js_minifier":true,"json_validator_beautifier":true,"sql_beautifier":true,"html_entity_converter":true,"bbcode_to_html":true,"markdown_to_html":true,"html_tags_remover":true,"user_agent_parser":true,"url_parser":true,"png_to_jpg":true,"png_to_webp":true,"png_to_bmp":true,"png_to_gif":true,"png_to_ico":true,"jpg_to_png":true,"jpg_to_webp":true,"jpg_to_gif":true,"jpg_to_ico":true,"jpg_to_bmp":true,"webp_to_jpg":true,"webp_to_gif":true,"webp_to_png":true,"webp_to_bmp":true,"webp_to_ico":true,"bmp_to_jpg":true,"bmp_to_gif":true,"bmp_to_png":true,"bmp_to_webp":true,"bmp_to_ico":true,"ico_to_jpg":true,"ico_to_gif":true,"ico_to_png":true,"ico_to_webp":true,"ico_to_bmp":true,"gif_to_jpg":true,"gif_to_ico":true,"gif_to_png":true,"gif_to_webp":true,"gif_to_bmp":true,"heic_to_png":true,"heic_to_gif":true,"heic_to_jpg":true,"youtube_thumbnail_downloader":true,"image_optimizer":true,"qr_code_reader":true,"exif_reader":true,"color_picker":true,"hex_to_hexa":true,"hex_to_rgb":true,"hex_to_rgba":true,"hex_to_hsv":true,"hex_to_hsl":true,"hex_to_hsla":true,"hexa_to_hex":true,"hexa_to_rgb":true,"hexa_to_rgba":true,"hexa_to_hsv":true,"hexa_to_hsl":true,"hexa_to_hsla":true,"rgb_to_hex":true,"rgb_to_hexa":true,"rgb_to_rgba":true,"rgb_to_hsv":true,"rgb_to_hsl":true,"rgb_to_hsla":true,"rgba_to_hex":true,"rgba_to_hexa":true,"rgba_to_rgb":true,"rgba_to_hsv":true,"rgba_to_hsl":true,"rgba_to_hsla":true,"hsv_to_hex":true,"hsv_to_hexa":true,"hsv_to_rgb":true,"hsv_to_rgba":true,"hsv_to_hsl":true,"hsv_to_hsla":true,"hsl_to_hex":true,"hsl_to_hexa":true,"hsl_to_rgb":true,"hsl_to_rgba":true,"hsl_to_hsv":true,"hsl_to_hsla":true,"hsla_to_hex":true,"hsla_to_hexa":true,"hsla_to_rgb":true,"hsla_to_rgba":true,"hsla_to_hsv":true,"hsla_to_hsl":true,"celsius_to_fahrenheit":true,"celsius_to_kelvin":true,"fahrenheit_to_celsius":true,"fahrenheit_to_kelvin":true,"kelvin_to_celsius":true,"kelvin_to_fahrenheit":true,"miles_to_kilometers":true,"kilometers_to_miles":true,"miles_per_hour_to_kilometers_per_hour":true,"kilometers_per_hour_to_miles_per_hour":true,"kilograms_to_pounds":true,"pounds_to_kilograms":true,"number_to_roman_numerals":true,"roman_numerals_to_number":true,"liters_to_gallons_us":true,"liters_to_gallons_imperial":true,"gallons_us_to_liters":true,"gallons_imperial_to_liters":true,"unix_timestamp_to_date":true,"date_to_unix_timestamp":true,"seconds_to_minutes":true,"seconds_to_hours":true,"seconds_to_days":true,"seconds_to_weeks":true,"seconds_to_months":true,"seconds_to_years":true,"minutes_to_seconds":true,"minutes_to_hours":true,"minutes_to_days":true,"minutes_to_weeks":true,"minutes_to_months":true,"minutes_to_years":true,"hours_to_seconds":true,"hours_to_minutes":true,"hours_to_days":true,"hours_to_weeks":true,"hours_to_months":true,"hours_to_years":true,"days_to_seconds":true,"days_to_minutes":true,"days_to_hours":true,"days_to_weeks":true,"days_to_months":true,"days_to_years":true,"weeks_to_seconds":true,"weeks_to_minutes":true,"weeks_to_hours":true,"weeks_to_days":true,"weeks_to_months":true,"weeks_to_years":true,"months_to_seconds":true,"months_to_minutes":true,"months_to_hours":true,"months_to_days":true,"months_to_weeks":true,"months_to_years":true,"years_to_seconds":true,"years_to_minutes":true,"years_to_hours":true,"years_to_days":true,"years_to_weeks":true,"years_to_months":true,"bits_to_nibbles":true,"bits_to_bytes":true,"bits_to_kilobits":true,"bits_to_kibibits":true,"bits_to_kibibytes":true,"bits_to_kilobytes":true,"bits_to_megabits":true,"bits_to_mebibits":true,"bits_to_megabytes":true,"bits_to_mebibytes":true,"bits_to_gigabits":true,"bits_to_gibibits":true,"bits_to_gigabytes":true,"bits_to_gibibytes":true,"bits_to_terabits":true,"bits_to_tebibits":true,"bits_to_terabytes":true,"bits_to_tebibytes":true,"bits_to_petabits":true,"bits_to_petabytes":true,"bits_to_pebibytes":true,"bits_to_pebibits":true,"bits_to_exabits":true,"bits_to_exbibits":true,"bits_to_exabytes":true,"bits_to_exbibytes":true,"bits_to_zettabits":true,"bits_to_zebibits":true,"bits_to_zettabytes":true,"bits_to_zebibytes":true,"bits_to_yottabits":true,"bits_to_yobibits":true,"bits_to_yottabytes":true,"bits_to_yobibytes":true,"nibbles_to_bits":true,"nibbles_to_bytes":true,"nibbles_to_kilobits":true,"nibbles_to_kibibits":true,"nibbles_to_kilobytes":true,"nibbles_to_kibibytes":true,"nibbles_to_megabits":true,"nibbles_to_mebibits":true,"nibbles_to_megabytes":true,"nibbles_to_mebibytes":true,"nibbles_to_gigabits":true,"nibbles_to_gibibits":true,"nibbles_to_gigabytes":true,"nibbles_to_gibibytes":true,"nibbles_to_terabits":true,"nibbles_to_tebibits":true,"nibbles_to_terabytes":true,"nibbles_to_tebibytes":true,"nibbles_to_petabits":true,"nibbles_to_petabytes":true,"nibbles_to_pebibytes":true,"nibbles_to_pebibits":true,"nibbles_to_exabits":true,"nibbles_to_exbibits":true,"nibbles_to_exabytes":true,"nibbles_to_exbibytes":true,"nibbles_to_zettabits":true,"nibbles_to_zebibits":true,"nibbles_to_zettabytes":true,"nibbles_to_zebibytes":true,"nibbles_to_yottabits":true,"nibbles_to_yobibits":true,"nibbles_to_yottabytes":true,"nibbles_to_yobibytes":true,"bytes_to_bits":true,"bytes_to_nibbles":true,"bytes_to_kilobits":true,"bytes_to_kibibits":true,"bytes_to_kilobytes":true,"bytes_to_kibibytes":true,"bytes_to_megabits":true,"bytes_to_mebibits":true,"bytes_to_megabytes":true,"bytes_to_mebibytes":true,"bytes_to_gigabits":true,"bytes_to_gibibits":true,"bytes_to_gigabytes":true,"bytes_to_gibibytes":true,"bytes_to_terabits":true,"bytes_to_tebibits":true,"bytes_to_terabytes":true,"bytes_to_tebibytes":true,"bytes_to_petabits":true,"bytes_to_petabytes":true,"bytes_to_pebibytes":true,"bytes_to_pebibits":true,"bytes_to_exabits":true,"bytes_to_exbibits":true,"bytes_to_exabytes":true,"bytes_to_exbibytes":true,"bytes_to_zettabits":true,"bytes_to_zebibits":true,"bytes_to_zettabytes":true,"bytes_to_zebibytes":true,"bytes_to_yottabits":true,"bytes_to_yobibits":true,"bytes_to_yottabytes":true,"bytes_to_yobibytes":true}}}'),
('plan_free', '{"plan_id":"free","name":"Free","description":"","price":"Free","color":null,"status":1,"settings":{"teams_limit":0,"team_members_limit":0,"api_is_enabled":true,"affiliate_is_enabled":false,"no_ads":true,"enabled_tools":{"dns_lookup":true,"ip_lookup":true,"reverse_ip_lookup":true,"ssl_lookup":true,"whois_lookup":true,"ping":true,"http_headers_lookup":true,"safe_url_checker":true,"google_cache_checker":true,"url_redirect_checker":true,"password_strength_checker":true,"meta_tags_checker":true,"website_hosting_checker":true,"file_mime_type_checker":true,"gravatar_checker":true,"text_separator":true,"email_extractor":true,"url_extractor":true,"text_size_calculator":true,"duplicate_lines_remover":true,"text_to_speech":true,"idn_punnycode_converter":true,"case_converter":true,"character_counter":true,"list_randomizer":true,"reverse_words":true,"reverse_letters":true,"emojis_remover":true,"reverse_list":true,"list_alphabetizer":true,"upside_down_text_generator":true,"old_english_text_generator":true,"cursive_text_generator":true,"base64_encoder":true,"base64_decoder":true,"base64_to_image":true,"image_to_base64":true,"url_encoder":true,"url_decoder":true,"color_converter":true,"binary_converter":true,"hex_converter":true,"ascii_converter":true,"decimal_converter":true,"octal_converter":true,"morse_converter":true,"number_to_words_converter":true,"paypal_link_generator":true,"signature_generator":true,"mailto_link_generator":true,"utm_link_generator":true,"whatsapp_link_generator":true,"youtube_timestamp_link_generator":true,"slug_generator":true,"lorem_ipsum_generator":true,"password_generator":true,"random_number_generator":true,"uuid_v4_generator":true,"bcrypt_generator":true,"md2_generator":true,"md4_generator":true,"md5_generator":true,"whirlpool_generator":true,"sha1_generator":true,"sha224_generator":true,"sha256_generator":true,"sha384_generator":true,"sha512_generator":true,"sha512_224_generator":true,"sha512_256_generator":true,"sha3_224_generator":true,"sha3_256_generator":true,"sha3_384_generator":true,"sha3_512_generator":true,"html_minifier":true,"css_minifier":true,"js_minifier":true,"json_validator_beautifier":true,"sql_beautifier":true,"html_entity_converter":true,"bbcode_to_html":true,"markdown_to_html":true,"html_tags_remover":true,"user_agent_parser":true,"url_parser":true,"png_to_jpg":true,"png_to_webp":true,"png_to_bmp":true,"png_to_gif":true,"png_to_ico":true,"jpg_to_png":true,"jpg_to_webp":true,"jpg_to_gif":true,"jpg_to_ico":true,"jpg_to_bmp":true,"webp_to_jpg":true,"webp_to_gif":true,"webp_to_png":true,"webp_to_bmp":true,"webp_to_ico":true,"bmp_to_jpg":true,"bmp_to_gif":true,"bmp_to_png":true,"bmp_to_webp":true,"bmp_to_ico":true,"ico_to_jpg":true,"ico_to_gif":true,"ico_to_png":true,"ico_to_webp":true,"ico_to_bmp":true,"gif_to_jpg":true,"gif_to_ico":true,"gif_to_png":true,"gif_to_webp":true,"gif_to_bmp":true,"heic_to_png":true,"heic_to_gif":true,"heic_to_jpg":true,"youtube_thumbnail_downloader":true,"image_optimizer":true,"qr_code_reader":true,"exif_reader":true,"color_picker":true,"hex_to_hexa":true,"hex_to_rgb":true,"hex_to_rgba":true,"hex_to_hsv":true,"hex_to_hsl":true,"hex_to_hsla":true,"hexa_to_hex":true,"hexa_to_rgb":true,"hexa_to_rgba":true,"hexa_to_hsv":true,"hexa_to_hsl":true,"hexa_to_hsla":true,"rgb_to_hex":true,"rgb_to_hexa":true,"rgb_to_rgba":true,"rgb_to_hsv":true,"rgb_to_hsl":true,"rgb_to_hsla":true,"rgba_to_hex":true,"rgba_to_hexa":true,"rgba_to_rgb":true,"rgba_to_hsv":true,"rgba_to_hsl":true,"rgba_to_hsla":true,"hsv_to_hex":true,"hsv_to_hexa":true,"hsv_to_rgb":true,"hsv_to_rgba":true,"hsv_to_hsl":true,"hsv_to_hsla":true,"hsl_to_hex":true,"hsl_to_hexa":true,"hsl_to_rgb":true,"hsl_to_rgba":true,"hsl_to_hsv":true,"hsl_to_hsla":true,"hsla_to_hex":true,"hsla_to_hexa":true,"hsla_to_rgb":true,"hsla_to_rgba":true,"hsla_to_hsv":true,"hsla_to_hsl":true,"celsius_to_fahrenheit":true,"celsius_to_kelvin":true,"fahrenheit_to_celsius":true,"fahrenheit_to_kelvin":true,"kelvin_to_celsius":true,"kelvin_to_fahrenheit":true,"miles_to_kilometers":true,"kilometers_to_miles":true,"miles_per_hour_to_kilometers_per_hour":true,"kilometers_per_hour_to_miles_per_hour":true,"kilograms_to_pounds":true,"pounds_to_kilograms":true,"number_to_roman_numerals":true,"roman_numerals_to_number":true,"liters_to_gallons_us":true,"liters_to_gallons_imperial":true,"gallons_us_to_liters":true,"gallons_imperial_to_liters":true,"unix_timestamp_to_date":true,"date_to_unix_timestamp":true,"seconds_to_minutes":true,"seconds_to_hours":true,"seconds_to_days":true,"seconds_to_weeks":true,"seconds_to_months":true,"seconds_to_years":true,"minutes_to_seconds":true,"minutes_to_hours":true,"minutes_to_days":true,"minutes_to_weeks":true,"minutes_to_months":true,"minutes_to_years":true,"hours_to_seconds":true,"hours_to_minutes":true,"hours_to_days":true,"hours_to_weeks":true,"hours_to_months":true,"hours_to_years":true,"days_to_seconds":true,"days_to_minutes":true,"days_to_hours":true,"days_to_weeks":true,"days_to_months":true,"days_to_years":true,"weeks_to_seconds":true,"weeks_to_minutes":true,"weeks_to_hours":true,"weeks_to_days":true,"weeks_to_months":true,"weeks_to_years":true,"months_to_seconds":true,"months_to_minutes":true,"months_to_hours":true,"months_to_days":true,"months_to_weeks":true,"months_to_years":true,"years_to_seconds":true,"years_to_minutes":true,"years_to_hours":true,"years_to_days":true,"years_to_weeks":true,"years_to_months":true,"bits_to_nibbles":true,"bits_to_bytes":true,"bits_to_kilobits":true,"bits_to_kibibits":true,"bits_to_kibibytes":true,"bits_to_kilobytes":true,"bits_to_megabits":true,"bits_to_mebibits":true,"bits_to_megabytes":true,"bits_to_mebibytes":true,"bits_to_gigabits":true,"bits_to_gibibits":true,"bits_to_gigabytes":true,"bits_to_gibibytes":true,"bits_to_terabits":true,"bits_to_tebibits":true,"bits_to_terabytes":true,"bits_to_tebibytes":true,"bits_to_petabits":true,"bits_to_petabytes":true,"bits_to_pebibytes":true,"bits_to_pebibits":true,"bits_to_exabits":true,"bits_to_exbibits":true,"bits_to_exabytes":true,"bits_to_exbibytes":true,"bits_to_zettabits":true,"bits_to_zebibits":true,"bits_to_zettabytes":true,"bits_to_zebibytes":true,"bits_to_yottabits":true,"bits_to_yobibits":true,"bits_to_yottabytes":true,"bits_to_yobibytes":true,"nibbles_to_bits":true,"nibbles_to_bytes":true,"nibbles_to_kilobits":true,"nibbles_to_kibibits":true,"nibbles_to_kilobytes":true,"nibbles_to_kibibytes":true,"nibbles_to_megabits":true,"nibbles_to_mebibits":true,"nibbles_to_megabytes":true,"nibbles_to_mebibytes":true,"nibbles_to_gigabits":true,"nibbles_to_gibibits":true,"nibbles_to_gigabytes":true,"nibbles_to_gibibytes":true,"nibbles_to_terabits":true,"nibbles_to_tebibits":true,"nibbles_to_terabytes":true,"nibbles_to_tebibytes":true,"nibbles_to_petabits":true,"nibbles_to_petabytes":true,"nibbles_to_pebibytes":true,"nibbles_to_pebibits":true,"nibbles_to_exabits":true,"nibbles_to_exbibits":true,"nibbles_to_exabytes":true,"nibbles_to_exbibytes":true,"nibbles_to_zettabits":true,"nibbles_to_zebibits":true,"nibbles_to_zettabytes":true,"nibbles_to_zebibytes":true,"nibbles_to_yottabits":true,"nibbles_to_yobibits":true,"nibbles_to_yottabytes":true,"nibbles_to_yobibytes":true,"bytes_to_bits":true,"bytes_to_nibbles":true,"bytes_to_kilobits":true,"bytes_to_kibibits":true,"bytes_to_kilobytes":true,"bytes_to_kibibytes":true,"bytes_to_megabits":true,"bytes_to_mebibits":true,"bytes_to_megabytes":true,"bytes_to_mebibytes":true,"bytes_to_gigabits":true,"bytes_to_gibibits":true,"bytes_to_gigabytes":true,"bytes_to_gibibytes":true,"bytes_to_terabits":true,"bytes_to_tebibits":true,"bytes_to_terabytes":true,"bytes_to_tebibytes":true,"bytes_to_petabits":true,"bytes_to_petabytes":true,"bytes_to_pebibytes":true,"bytes_to_pebibits":true,"bytes_to_exabits":true,"bytes_to_exbibits":true,"bytes_to_exabytes":true,"bytes_to_exbibytes":true,"bytes_to_zettabits":true,"bytes_to_zebibits":true,"bytes_to_zettabytes":true,"bytes_to_zebibytes":true,"bytes_to_yottabits":true,"bytes_to_yobibits":true,"bytes_to_yottabytes":true,"bytes_to_yobibytes":true}}}'),
('plan_guest', '{"plan_id":"guest","name":"Guest","description":"","price":"Free","color":null,"status":1,"settings":{"teams_limit":0,"team_members_limit":0,"api_is_enabled":true,"affiliate_is_enabled":false,"no_ads":true,"enabled_tools":{"dns_lookup":true,"ip_lookup":true,"reverse_ip_lookup":true,"ssl_lookup":true,"whois_lookup":true,"ping":true,"http_headers_lookup":true,"safe_url_checker":true,"google_cache_checker":true,"url_redirect_checker":true,"password_strength_checker":true,"meta_tags_checker":true,"website_hosting_checker":true,"file_mime_type_checker":true,"gravatar_checker":true,"text_separator":true,"email_extractor":true,"url_extractor":true,"text_size_calculator":true,"duplicate_lines_remover":true,"text_to_speech":true,"idn_punnycode_converter":true,"case_converter":true,"character_counter":true,"list_randomizer":true,"reverse_words":true,"reverse_letters":true,"emojis_remover":true,"reverse_list":true,"list_alphabetizer":true,"upside_down_text_generator":true,"old_english_text_generator":true,"cursive_text_generator":true,"base64_encoder":true,"base64_decoder":true,"base64_to_image":true,"image_to_base64":true,"url_encoder":true,"url_decoder":true,"color_converter":true,"binary_converter":true,"hex_converter":true,"ascii_converter":true,"decimal_converter":true,"octal_converter":true,"morse_converter":true,"number_to_words_converter":true,"paypal_link_generator":true,"signature_generator":true,"mailto_link_generator":true,"utm_link_generator":true,"whatsapp_link_generator":true,"youtube_timestamp_link_generator":true,"slug_generator":true,"lorem_ipsum_generator":true,"password_generator":true,"random_number_generator":true,"uuid_v4_generator":true,"bcrypt_generator":true,"md2_generator":true,"md4_generator":true,"md5_generator":true,"whirlpool_generator":true,"sha1_generator":true,"sha224_generator":true,"sha256_generator":true,"sha384_generator":true,"sha512_generator":true,"sha512_224_generator":true,"sha512_256_generator":true,"sha3_224_generator":true,"sha3_256_generator":true,"sha3_384_generator":true,"sha3_512_generator":true,"html_minifier":true,"css_minifier":true,"js_minifier":true,"json_validator_beautifier":true,"sql_beautifier":true,"html_entity_converter":true,"bbcode_to_html":true,"markdown_to_html":true,"html_tags_remover":true,"user_agent_parser":true,"url_parser":true,"png_to_jpg":true,"png_to_webp":true,"png_to_bmp":true,"png_to_gif":true,"png_to_ico":true,"jpg_to_png":true,"jpg_to_webp":true,"jpg_to_gif":true,"jpg_to_ico":true,"jpg_to_bmp":true,"webp_to_jpg":true,"webp_to_gif":true,"webp_to_png":true,"webp_to_bmp":true,"webp_to_ico":true,"bmp_to_jpg":true,"bmp_to_gif":true,"bmp_to_png":true,"bmp_to_webp":true,"bmp_to_ico":true,"ico_to_jpg":true,"ico_to_gif":true,"ico_to_png":true,"ico_to_webp":true,"ico_to_bmp":true,"gif_to_jpg":true,"gif_to_ico":true,"gif_to_png":true,"gif_to_webp":true,"gif_to_bmp":true,"heic_to_png":true,"heic_to_gif":true,"heic_to_jpg":true,"youtube_thumbnail_downloader":true,"image_optimizer":true,"qr_code_reader":true,"exif_reader":true,"color_picker":true,"hex_to_hexa":true,"hex_to_rgb":true,"hex_to_rgba":true,"hex_to_hsv":true,"hex_to_hsl":true,"hex_to_hsla":true,"hexa_to_hex":true,"hexa_to_rgb":true,"hexa_to_rgba":true,"hexa_to_hsv":true,"hexa_to_hsl":true,"hexa_to_hsla":true,"rgb_to_hex":true,"rgb_to_hexa":true,"rgb_to_rgba":true,"rgb_to_hsv":true,"rgb_to_hsl":true,"rgb_to_hsla":true,"rgba_to_hex":true,"rgba_to_hexa":true,"rgba_to_rgb":true,"rgba_to_hsv":true,"rgba_to_hsl":true,"rgba_to_hsla":true,"hsv_to_hex":true,"hsv_to_hexa":true,"hsv_to_rgb":true,"hsv_to_rgba":true,"hsv_to_hsl":true,"hsv_to_hsla":true,"hsl_to_hex":true,"hsl_to_hexa":true,"hsl_to_rgb":true,"hsl_to_rgba":true,"hsl_to_hsv":true,"hsl_to_hsla":true,"hsla_to_hex":true,"hsla_to_hexa":true,"hsla_to_rgb":true,"hsla_to_rgba":true,"hsla_to_hsv":true,"hsla_to_hsl":true,"celsius_to_fahrenheit":true,"celsius_to_kelvin":true,"fahrenheit_to_celsius":true,"fahrenheit_to_kelvin":true,"kelvin_to_celsius":true,"kelvin_to_fahrenheit":true,"miles_to_kilometers":true,"kilometers_to_miles":true,"miles_per_hour_to_kilometers_per_hour":true,"kilometers_per_hour_to_miles_per_hour":true,"kilograms_to_pounds":true,"pounds_to_kilograms":true,"number_to_roman_numerals":true,"roman_numerals_to_number":true,"liters_to_gallons_us":true,"liters_to_gallons_imperial":true,"gallons_us_to_liters":true,"gallons_imperial_to_liters":true,"unix_timestamp_to_date":true,"date_to_unix_timestamp":true,"seconds_to_minutes":true,"seconds_to_hours":true,"seconds_to_days":true,"seconds_to_weeks":true,"seconds_to_months":true,"seconds_to_years":true,"minutes_to_seconds":true,"minutes_to_hours":true,"minutes_to_days":true,"minutes_to_weeks":true,"minutes_to_months":true,"minutes_to_years":true,"hours_to_seconds":true,"hours_to_minutes":true,"hours_to_days":true,"hours_to_weeks":true,"hours_to_months":true,"hours_to_years":true,"days_to_seconds":true,"days_to_minutes":true,"days_to_hours":true,"days_to_weeks":true,"days_to_months":true,"days_to_years":true,"weeks_to_seconds":true,"weeks_to_minutes":true,"weeks_to_hours":true,"weeks_to_days":true,"weeks_to_months":true,"weeks_to_years":true,"months_to_seconds":true,"months_to_minutes":true,"months_to_hours":true,"months_to_days":true,"months_to_weeks":true,"months_to_years":true,"years_to_seconds":true,"years_to_minutes":true,"years_to_hours":true,"years_to_days":true,"years_to_weeks":true,"years_to_months":true,"bits_to_nibbles":true,"bits_to_bytes":true,"bits_to_kilobits":true,"bits_to_kibibits":true,"bits_to_kibibytes":true,"bits_to_kilobytes":true,"bits_to_megabits":true,"bits_to_mebibits":true,"bits_to_megabytes":true,"bits_to_mebibytes":true,"bits_to_gigabits":true,"bits_to_gibibits":true,"bits_to_gigabytes":true,"bits_to_gibibytes":true,"bits_to_terabits":true,"bits_to_tebibits":true,"bits_to_terabytes":true,"bits_to_tebibytes":true,"bits_to_petabits":true,"bits_to_petabytes":true,"bits_to_pebibytes":true,"bits_to_pebibits":true,"bits_to_exabits":true,"bits_to_exbibits":true,"bits_to_exabytes":true,"bits_to_exbibytes":true,"bits_to_zettabits":true,"bits_to_zebibits":true,"bits_to_zettabytes":true,"bits_to_zebibytes":true,"bits_to_yottabits":true,"bits_to_yobibits":true,"bits_to_yottabytes":true,"bits_to_yobibytes":true,"nibbles_to_bits":true,"nibbles_to_bytes":true,"nibbles_to_kilobits":true,"nibbles_to_kibibits":true,"nibbles_to_kilobytes":true,"nibbles_to_kibibytes":true,"nibbles_to_megabits":true,"nibbles_to_mebibits":true,"nibbles_to_megabytes":true,"nibbles_to_mebibytes":true,"nibbles_to_gigabits":true,"nibbles_to_gibibits":true,"nibbles_to_gigabytes":true,"nibbles_to_gibibytes":true,"nibbles_to_terabits":true,"nibbles_to_tebibits":true,"nibbles_to_terabytes":true,"nibbles_to_tebibytes":true,"nibbles_to_petabits":true,"nibbles_to_petabytes":true,"nibbles_to_pebibytes":true,"nibbles_to_pebibits":true,"nibbles_to_exabits":true,"nibbles_to_exbibits":true,"nibbles_to_exabytes":true,"nibbles_to_exbibytes":true,"nibbles_to_zettabits":true,"nibbles_to_zebibits":true,"nibbles_to_zettabytes":true,"nibbles_to_zebibytes":true,"nibbles_to_yottabits":true,"nibbles_to_yobibits":true,"nibbles_to_yottabytes":true,"nibbles_to_yobibytes":true,"bytes_to_bits":true,"bytes_to_nibbles":true,"bytes_to_kilobits":true,"bytes_to_kibibits":true,"bytes_to_kilobytes":true,"bytes_to_kibibytes":true,"bytes_to_megabits":true,"bytes_to_mebibits":true,"bytes_to_megabytes":true,"bytes_to_mebibytes":true,"bytes_to_gigabits":true,"bytes_to_gibibits":true,"bytes_to_gigabytes":true,"bytes_to_gibibytes":true,"bytes_to_terabits":true,"bytes_to_tebibits":true,"bytes_to_terabytes":true,"bytes_to_tebibytes":true,"bytes_to_petabits":true,"bytes_to_petabytes":true,"bytes_to_pebibytes":true,"bytes_to_pebibits":true,"bytes_to_exabits":true,"bytes_to_exbibits":true,"bytes_to_exabytes":true,"bytes_to_exbibytes":true,"bytes_to_zettabits":true,"bytes_to_zebibits":true,"bytes_to_zettabytes":true,"bytes_to_zebibytes":true,"bytes_to_yottabits":true,"bytes_to_yobibits":true,"bytes_to_yottabytes":true,"bytes_to_yobibytes":true}}}'),
('payment', '{\"is_enabled\":false,\"type\":\"both\",\"currency\":\"USD\",\"codes_is_enabled\":false,\"taxes_and_billing_is_enabled\":false,\"invoice_is_enabled\":false}'),
('paypal', '{\"is_enabled\":\"0\",\"mode\":\"sandbox\",\"client_id\":\"\",\"secret\":\"\"}'),
('stripe', '{\"is_enabled\":\"0\",\"publishable_key\":\"\",\"secret_key\":\"\",\"webhook_secret\":\"\"}'),
('offline_payment', '{\"is_enabled\":\"0\",\"instructions\":\"Your offline payment instructions go here..\"}'),
('coinbase', '{\"is_enabled\":\"0\"}'),
('payu', '{\"is_enabled\":\"0\"}'),
('paystack', '{\"is_enabled\":\"0\"}'),
('razorpay', '{\"is_enabled\":\"0\"}'),
('mollie', '{\"is_enabled\":\"0\"}'),
('yookassa', '{\"is_enabled\":\"0\"}'),
('crypto_com', '{\"is_enabled\":\"0\"}'),
('paddle', '{\"is_enabled\":\"0\"}'),
('smtp', '{\"host\":\"\",\"from\":\"\",\"from_name\":\"\",\"encryption\":\"tls\",\"port\":\"587\",\"auth\":\"1\",\"username\":\"\",\"password\":\"\"}'),
('custom', '{\"head_js\":\"\",\"head_css\":\"\"}'),
('socials', '{\"facebook\":\"\",\"instagram\":\"\",\"twitter\":\"\",\"youtube\":\"\"}'),
('announcements', '{\"id\":\"\",\"content\":\"\",\"show_logged_in\":\"\",\"show_logged_out\":\"\"}'),
('business', '{\"brand_name\":\"66toolkit\",\"invoice_nr_prefix\":\"INVOICE-\",\"name\":\"\",\"address\":\"\",\"city\":\"\",\"county\":\"\",\"zip\":\"\",\"country\":\"AF\",\"email\":\"\",\"phone\":\"\",\"tax_type\":\"\",\"tax_id\":\"\",\"custom_key_one\":\"\",\"custom_value_one\":\"\",\"custom_key_two\":\"\",\"custom_value_two\":\"\"}'),
('webhooks', '{\"user_new\": \"\", \"user_delete\": \"\"}'),
('tools', '{"available_tools":{"dns_lookup":true,"ip_lookup":true,"reverse_ip_lookup":true,"ssl_lookup":true,"whois_lookup":true,"ping":true,"http_headers_lookup":true,"safe_url_checker":true,"google_cache_checker":true,"url_redirect_checker":true,"password_strength_checker":true,"meta_tags_checker":true,"website_hosting_checker":true,"file_mime_type_checker":true,"gravatar_checker":true,"text_separator":true,"email_extractor":true,"url_extractor":true,"text_size_calculator":true,"duplicate_lines_remover":true,"text_to_speech":true,"idn_punnycode_converter":true,"case_converter":true,"character_counter":true,"list_randomizer":true,"reverse_words":true,"reverse_letters":true,"emojis_remover":true,"reverse_list":true,"list_alphabetizer":true,"upside_down_text_generator":true,"old_english_text_generator":true,"cursive_text_generator":true,"base64_encoder":true,"base64_decoder":true,"base64_to_image":true,"image_to_base64":true,"url_encoder":true,"url_decoder":true,"color_converter":true,"binary_converter":true,"hex_converter":true,"ascii_converter":true,"decimal_converter":true,"octal_converter":true,"morse_converter":true,"number_to_words_converter":true,"paypal_link_generator":true,"signature_generator":true,"mailto_link_generator":true,"utm_link_generator":true,"whatsapp_link_generator":true,"youtube_timestamp_link_generator":true,"slug_generator":true,"lorem_ipsum_generator":true,"password_generator":true,"random_number_generator":true,"uuid_v4_generator":true,"bcrypt_generator":true,"md2_generator":true,"md4_generator":true,"md5_generator":true,"whirlpool_generator":true,"sha1_generator":true,"sha224_generator":true,"sha256_generator":true,"sha384_generator":true,"sha512_generator":true,"sha512_224_generator":true,"sha512_256_generator":true,"sha3_224_generator":true,"sha3_256_generator":true,"sha3_384_generator":true,"sha3_512_generator":true,"html_minifier":true,"css_minifier":true,"js_minifier":true,"json_validator_beautifier":true,"sql_beautifier":true,"html_entity_converter":true,"bbcode_to_html":true,"markdown_to_html":true,"html_tags_remover":true,"user_agent_parser":true,"url_parser":true,"png_to_jpg":true,"png_to_webp":true,"png_to_bmp":true,"png_to_gif":true,"png_to_ico":true,"jpg_to_png":true,"jpg_to_webp":true,"jpg_to_gif":true,"jpg_to_ico":true,"jpg_to_bmp":true,"webp_to_jpg":true,"webp_to_gif":true,"webp_to_png":true,"webp_to_bmp":true,"webp_to_ico":true,"bmp_to_jpg":true,"bmp_to_gif":true,"bmp_to_png":true,"bmp_to_webp":true,"bmp_to_ico":true,"ico_to_jpg":true,"ico_to_gif":true,"ico_to_png":true,"ico_to_webp":true,"ico_to_bmp":true,"gif_to_jpg":true,"gif_to_ico":true,"gif_to_png":true,"gif_to_webp":true,"gif_to_bmp":true,"heic_to_png":true,"heic_to_gif":true,"heic_to_jpg":true,"youtube_thumbnail_downloader":true,"image_optimizer":true,"qr_code_reader":true,"exif_reader":true,"color_picker":true,"hex_to_hexa":true,"hex_to_rgb":true,"hex_to_rgba":true,"hex_to_hsv":true,"hex_to_hsl":true,"hex_to_hsla":true,"hexa_to_hex":true,"hexa_to_rgb":true,"hexa_to_rgba":true,"hexa_to_hsv":true,"hexa_to_hsl":true,"hexa_to_hsla":true,"rgb_to_hex":true,"rgb_to_hexa":true,"rgb_to_rgba":true,"rgb_to_hsv":true,"rgb_to_hsl":true,"rgb_to_hsla":true,"rgba_to_hex":true,"rgba_to_hexa":true,"rgba_to_rgb":true,"rgba_to_hsv":true,"rgba_to_hsl":true,"rgba_to_hsla":true,"hsv_to_hex":true,"hsv_to_hexa":true,"hsv_to_rgb":true,"hsv_to_rgba":true,"hsv_to_hsl":true,"hsv_to_hsla":true,"hsl_to_hex":true,"hsl_to_hexa":true,"hsl_to_rgb":true,"hsl_to_rgba":true,"hsl_to_hsv":true,"hsl_to_hsla":true,"hsla_to_hex":true,"hsla_to_hexa":true,"hsla_to_rgb":true,"hsla_to_rgba":true,"hsla_to_hsv":true,"hsla_to_hsl":true,"celsius_to_fahrenheit":true,"celsius_to_kelvin":true,"fahrenheit_to_celsius":true,"fahrenheit_to_kelvin":true,"kelvin_to_celsius":true,"kelvin_to_fahrenheit":true,"miles_to_kilometers":true,"kilometers_to_miles":true,"miles_per_hour_to_kilometers_per_hour":true,"kilometers_per_hour_to_miles_per_hour":true,"kilograms_to_pounds":true,"pounds_to_kilograms":true,"number_to_roman_numerals":true,"roman_numerals_to_number":true,"liters_to_gallons_us":true,"liters_to_gallons_imperial":true,"gallons_us_to_liters":true,"gallons_imperial_to_liters":true,"unix_timestamp_to_date":true,"date_to_unix_timestamp":true,"seconds_to_minutes":true,"seconds_to_hours":true,"seconds_to_days":true,"seconds_to_weeks":true,"seconds_to_months":true,"seconds_to_years":true,"minutes_to_seconds":true,"minutes_to_hours":true,"minutes_to_days":true,"minutes_to_weeks":true,"minutes_to_months":true,"minutes_to_years":true,"hours_to_seconds":true,"hours_to_minutes":true,"hours_to_days":true,"hours_to_weeks":true,"hours_to_months":true,"hours_to_years":true,"days_to_seconds":true,"days_to_minutes":true,"days_to_hours":true,"days_to_weeks":true,"days_to_months":true,"days_to_years":true,"weeks_to_seconds":true,"weeks_to_minutes":true,"weeks_to_hours":true,"weeks_to_days":true,"weeks_to_months":true,"weeks_to_years":true,"months_to_seconds":true,"months_to_minutes":true,"months_to_hours":true,"months_to_days":true,"months_to_weeks":true,"months_to_years":true,"years_to_seconds":true,"years_to_minutes":true,"years_to_hours":true,"years_to_days":true,"years_to_weeks":true,"years_to_months":true,"bits_to_nibbles":true,"bits_to_bytes":true,"bits_to_kilobits":true,"bits_to_kibibits":true,"bits_to_kibibytes":true,"bits_to_kilobytes":true,"bits_to_megabits":true,"bits_to_mebibits":true,"bits_to_megabytes":true,"bits_to_mebibytes":true,"bits_to_gigabits":true,"bits_to_gibibits":true,"bits_to_gigabytes":true,"bits_to_gibibytes":true,"bits_to_terabits":true,"bits_to_tebibits":true,"bits_to_terabytes":true,"bits_to_tebibytes":true,"bits_to_petabits":true,"bits_to_petabytes":true,"bits_to_pebibytes":true,"bits_to_pebibits":true,"bits_to_exabits":true,"bits_to_exbibits":true,"bits_to_exabytes":true,"bits_to_exbibytes":true,"bits_to_zettabits":true,"bits_to_zebibits":true,"bits_to_zettabytes":true,"bits_to_zebibytes":true,"bits_to_yottabits":true,"bits_to_yobibits":true,"bits_to_yottabytes":true,"bits_to_yobibytes":true,"nibbles_to_bits":true,"nibbles_to_bytes":true,"nibbles_to_kilobits":true,"nibbles_to_kibibits":true,"nibbles_to_kilobytes":true,"nibbles_to_kibibytes":true,"nibbles_to_megabits":true,"nibbles_to_mebibits":true,"nibbles_to_megabytes":true,"nibbles_to_mebibytes":true,"nibbles_to_gigabits":true,"nibbles_to_gibibits":true,"nibbles_to_gigabytes":true,"nibbles_to_gibibytes":true,"nibbles_to_terabits":true,"nibbles_to_tebibits":true,"nibbles_to_terabytes":true,"nibbles_to_tebibytes":true,"nibbles_to_petabits":true,"nibbles_to_petabytes":true,"nibbles_to_pebibytes":true,"nibbles_to_pebibits":true,"nibbles_to_exabits":true,"nibbles_to_exbibits":true,"nibbles_to_exabytes":true,"nibbles_to_exbibytes":true,"nibbles_to_zettabits":true,"nibbles_to_zebibits":true,"nibbles_to_zettabytes":true,"nibbles_to_zebibytes":true,"nibbles_to_yottabits":true,"nibbles_to_yobibits":true,"nibbles_to_yottabytes":true,"nibbles_to_yobibytes":true,"bytes_to_bits":true,"bytes_to_nibbles":true,"bytes_to_kilobits":true,"bytes_to_kibibits":true,"bytes_to_kilobytes":true,"bytes_to_kibibytes":true,"bytes_to_megabits":true,"bytes_to_mebibits":true,"bytes_to_megabytes":true,"bytes_to_mebibytes":true,"bytes_to_gigabits":true,"bytes_to_gibibits":true,"bytes_to_gigabytes":true,"bytes_to_gibibytes":true,"bytes_to_terabits":true,"bytes_to_tebibits":true,"bytes_to_terabytes":true,"bytes_to_tebibytes":true,"bytes_to_petabits":true,"bytes_to_petabytes":true,"bytes_to_pebibytes":true,"bytes_to_pebibits":true,"bytes_to_exabits":true,"bytes_to_exbibits":true,"bytes_to_exabytes":true,"bytes_to_exbibytes":true,"bytes_to_zettabits":true,"bytes_to_zebibits":true,"bytes_to_zettabytes":true,"bytes_to_zebibytes":true,"bytes_to_yottabits":true,"bytes_to_yobibits":true,"bytes_to_yottabytes":true,"bytes_to_yobibytes":true},"google_safe_browsing_is_enabled":false,"google_safe_browsing_api_key":""}'),
('cookie_consent', '{}'),
('license', '{\"license\":\"licensed\",\"type\":\"regular\"}'),
('product_info', '{\"version\":\"14.0.0\", \"code\":\"1400\"}');

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

-- SEPARATOR --

CREATE TABLE `tools_usage` (
`id` bigint unsigned NOT NULL AUTO_INCREMENT,
`tool_id` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`total_views` bigint unsigned DEFAULT '0',
PRIMARY KEY (`id`),
UNIQUE KEY `tools_usage_tool_id_idx` (`tool_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


