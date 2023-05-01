UPDATE `settings` SET `value` = '{\"version\":\"9.0.0\", \"code\":\"900\"}' WHERE `key` = 'product_info';
-- EXTENDED SEPARATOR --

alter table taxes modify value float null;
