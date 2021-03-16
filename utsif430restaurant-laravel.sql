-- Adminer 4.7.8 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `carts`;
CREATE TABLE `carts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `products_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `carts` (`id`, `products_id`, `users_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1,	2,	4,	'2021-03-15 08:30:16',	'2021-03-15 08:30:16',	NULL),
(2,	2,	3,	'2021-03-15 11:11:43',	'2021-03-15 11:11:43',	NULL)
ON DUPLICATE KEY UPDATE `id` = VALUES(`id`), `products_id` = VALUES(`products_id`), `users_id` = VALUES(`users_id`), `created_at` = VALUES(`created_at`), `updated_at` = VALUES(`updated_at`), `deleted_at` = VALUES(`deleted_at`);

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `categories` (`id`, `name`, `photo`, `slug`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1,	'Drink',	'assets/category/9oZFkuWZCnO6SawIWoi6DomyL7R6QbVoMSL4eroH.png',	'drink',	NULL,	'2021-03-14 04:16:24',	'2021-03-14 20:27:39'),
(6,	'Appetizer',	'assets/category/tC0ER3vwYpe7lFzrzllWfNNPyjyqTG8JgXtI2Qy9.png',	'appetizer',	NULL,	'2021-03-14 21:29:43',	'2021-03-14 21:29:43'),
(7,	'Dessert',	'assets/category/oHg3GUIXeGlLwyKfwS2DXnB9saC8GiQm8QlbXB7U.png',	'dessert',	NULL,	'2021-03-14 22:03:27',	'2021-03-14 22:03:27'),
(8,	'Seafood',	'assets/category/t693RFEdE5sYIwwndpCfj6OePAYabw6GjjSkiqhQ.png',	'seafood',	NULL,	'2021-03-14 22:03:46',	'2021-03-14 22:03:46'),
(9,	'Vegetables',	'assets/category/QXTNmTdc0pPvBKQyKi8chA6TsMnQHyQKF5qlaN6Z.png',	'vegetables',	NULL,	'2021-03-14 22:06:32',	'2021-03-14 22:06:32')
ON DUPLICATE KEY UPDATE `id` = VALUES(`id`), `name` = VALUES(`name`), `photo` = VALUES(`photo`), `slug` = VALUES(`slug`), `deleted_at` = VALUES(`deleted_at`), `created_at` = VALUES(`created_at`), `updated_at` = VALUES(`updated_at`);

DROP TABLE IF EXISTS `districts`;
CREATE TABLE `districts` (
  `id` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `regency_id` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  KEY `districts_regency_id_foreign` (`regency_id`),
  KEY `districts_id_index` (`id`),
  CONSTRAINT `districts_regency_id_foreign` FOREIGN KEY (`regency_id`) REFERENCES `regencies` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1,	'2014_10_12_000000_create_users_table',	1),
(2,	'2014_10_12_100000_create_password_resets_table',	1),
(3,	'2019_08_19_000000_create_failed_jobs_table',	1),
(4,	'2021_03_05_180228_create_categories_table',	1),
(5,	'2021_03_06_015412_create_products_table',	1),
(6,	'2021_03_06_190243_create_product_galleries_table',	1),
(7,	'2021_03_06_191650_create_carts_table',	1),
(8,	'2021_03_06_194427_create_transactions_table',	2),
(9,	'2021_03_06_194527_create_transaction_details_table',	2),
(10,	'2021_03_11_032128_delete_resi_field_at_transactions_table',	3),
(11,	'2021_03_11_040230_add_resi_and_shipping_status_to_transaction_details_table',	4),
(12,	'2021_03_11_072029_add_code_to_transactions_table',	5),
(13,	'2021_03_11_074239_add_code_to_transaction_details_table',	6),
(14,	'2021_03_11_110757_add_slug_to_products_table',	7),
(15,	'2021_03_11_111816_add_roles_field_to_users_table',	8),
(16,	'2021_03_14_034101_change_nullable_field_at_users_table',	9),
(17,	'2017_05_02_140432_create_provinces_tables',	10),
(18,	'2017_05_02_140444_create_regencies_tables',	10),
(19,	'2017_05_02_142019_create_districts_tables',	10),
(20,	'2017_05_02_143454_create_villages_tables',	10),
(21,	'2021_03_15_144618_add_soft_delete_field_to_carts_table',	11)
ON DUPLICATE KEY UPDATE `id` = VALUES(`id`), `migration` = VALUES(`migration`), `batch` = VALUES(`batch`);

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `products` (`id`, `name`, `users_id`, `categories_id`, `price`, `description`, `deleted_at`, `created_at`, `updated_at`, `slug`) VALUES
(1,	'lobster enak banget',	2,	3,	10000,	'<p>lobster itu enak&nbsp;</p>',	'2021-03-14 21:34:43',	'2021-03-14 04:38:30',	'2021-03-14 21:34:43',	'lobster-enak-banget'),
(2,	'Jamu Sehat',	1,	1,	10000,	'<p>Jamunya Enak Hehehe</p>',	NULL,	'2021-03-14 21:46:40',	'2021-03-14 21:46:40',	'jamu-sehat'),
(3,	'hot Dog',	2,	7,	10000,	'<p><em><strong>makanan fresh dari dapoer saya&nbsp;</strong></em></p>',	NULL,	'2021-03-15 09:48:35',	'2021-03-15 10:20:00',	'hot-dog'),
(4,	'Kue',	2,	7,	10000,	'<p>kue enak banget</p>',	NULL,	'2021-03-15 10:21:18',	'2021-03-15 10:21:18',	'kue'),
(5,	'Martabak Telor',	2,	7,	10000,	'<p>martabak nya abang enak banget</p>',	NULL,	'2021-03-15 10:22:21',	'2021-03-15 10:22:21',	'martabak-telor'),
(6,	'oatmeal',	2,	7,	10000,	'<p>oatmeal nya enak&nbsp;</p>',	NULL,	'2021-03-15 10:22:56',	'2021-03-15 10:22:56',	'oatmeal'),
(7,	'Roti Abang Adek',	2,	7,	10000,	'<p>Roti Enak Banget&nbsp;</p>',	NULL,	'2021-03-15 10:26:04',	'2021-03-15 10:26:04',	'roti-abang-adek'),
(8,	'Jus Jeruk',	4,	1,	10000,	'<p>jus jeruk nya kakak</p>',	NULL,	'2021-03-15 10:34:36',	'2021-03-15 10:34:36',	'jus-jeruk'),
(9,	'Es Teh Manis',	4,	1,	10000,	'<p>Es nya dingin&nbsp;</p>',	NULL,	'2021-03-15 10:35:33',	'2021-03-15 10:35:33',	'es-teh-manis'),
(10,	'Wedang JAhe',	4,	1,	10000,	'<p>Jahe nya enak banget</p>',	NULL,	'2021-03-15 10:36:15',	'2021-03-15 10:36:15',	'wedang-jahe'),
(11,	'Teh Hijau',	4,	1,	10000,	'<p>Teh Hijau Enakkkkkk</p>',	NULL,	'2021-03-15 10:36:51',	'2021-03-15 10:36:51',	'teh-hijau'),
(12,	'Sate Cumi',	6,	8,	10000,	'<p>untuk pecinta cumi</p>',	NULL,	'2021-03-15 10:41:31',	'2021-03-15 10:41:31',	'sate-cumi'),
(13,	'udang goreng',	6,	8,	10000,	'<p>udang bukan sembarang udang hehe</p>',	NULL,	'2021-03-15 10:42:11',	'2021-03-15 10:42:11',	'udang-goreng'),
(14,	'salmon kekinian',	6,	8,	10000,	'<p>salmon di bakar anget anget&nbsp;</p>',	NULL,	'2021-03-15 10:42:57',	'2021-03-15 10:42:57',	'salmon-kekinian'),
(15,	'ikan bakar',	6,	8,	10000,	'<p>ikan nya mantap</p>',	NULL,	'2021-03-15 10:44:31',	'2021-03-15 10:44:31',	'ikan-bakar'),
(16,	'Oh ini Sosis ? Okee',	3,	6,	10000,	'<p>sosis enak</p>',	NULL,	'2021-03-15 10:53:44',	'2021-03-15 11:00:52',	'oh-ini-sosis-okee'),
(17,	'Sate Woiii',	3,	6,	10000,	'<p>sate</p>',	NULL,	'2021-03-15 10:54:26',	'2021-03-15 10:56:31',	'sate-woiii'),
(18,	'Lumpia Kang Reynardo',	3,	6,	10000,	'<p>lumpia enak</p>',	NULL,	'2021-03-15 10:55:11',	'2021-03-15 10:56:49',	'lumpia-kang-reynardo'),
(19,	'Gado Gado bu Ivana Tiktoker\'s',	3,	6,	10000,	'<p><strong>pedesnya nampoll</strong></p>',	NULL,	'2021-03-15 10:56:16',	'2021-03-15 11:01:23',	'gado-gado-bu-ivana-tiktokers'),
(20,	'Bakwan bang Akmal',	3,	9,	10000,	'<p>bakwan jagung&nbsp;</p>',	NULL,	'2021-03-15 10:57:56',	'2021-03-15 10:57:56',	'bakwan-bang-akmal'),
(21,	'Ketupat Sayur Bang Gio Jago',	3,	9,	10000,	'<p>enak kok dijamin&nbsp;</p>',	NULL,	'2021-03-15 10:58:57',	'2021-03-15 10:58:57',	'ketupat-sayur-bang-gio-jago'),
(22,	'Sayur Asem mama ritchie',	3,	9,	10000,	'<p>enak masakan mama ritchie</p>',	NULL,	'2021-03-15 11:00:13',	'2021-03-15 11:00:13',	'sayur-asem-mama-ritchie'),
(23,	'Soup Jagung by bANG  Gio Jago',	3,	9,	10000,	'<p>enak tau sumpah&nbsp;</p>',	NULL,	'2021-03-15 11:02:50',	'2021-03-15 11:02:50',	'soup-jagung-by-bang-gio-jago')
ON DUPLICATE KEY UPDATE `id` = VALUES(`id`), `name` = VALUES(`name`), `users_id` = VALUES(`users_id`), `categories_id` = VALUES(`categories_id`), `price` = VALUES(`price`), `description` = VALUES(`description`), `deleted_at` = VALUES(`deleted_at`), `created_at` = VALUES(`created_at`), `updated_at` = VALUES(`updated_at`), `slug` = VALUES(`slug`);

DROP TABLE IF EXISTS `product_galleries`;
CREATE TABLE `product_galleries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `photos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `products_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `product_galleries` (`id`, `photos`, `products_id`, `created_at`, `updated_at`) VALUES
(1,	'assets/product/wuSI3OESlaoJlqSTEdd3GTjgkMfzB0yPLzSzoWlx.png',	2,	'2021-03-14 21:47:12',	'2021-03-14 21:47:12'),
(3,	'assets/product/gOOBBVzgsrP3ewEhjULJH6t42h23G53N6LmXjGZX.png',	3,	'2021-03-15 10:19:45',	'2021-03-15 10:19:45'),
(4,	'assets/product/dGn9AIwXJJrloQsp9a48zJistdSZ6N26h7t8juoh.png',	4,	'2021-03-15 10:21:18',	'2021-03-15 10:21:18'),
(5,	'assets/product/CU2qFxTE8j1WFUCcXozzi9qIg8dRLKhhhOzDfjik.png',	5,	'2021-03-15 10:22:21',	'2021-03-15 10:22:21'),
(6,	'assets/product/glzcR9GPzvAeroSFjishGipTKrfWgrQvIA3MfAUH.png',	6,	'2021-03-15 10:22:56',	'2021-03-15 10:22:56'),
(7,	'assets/product/Iy094MZ7A5cjf2wrDyHP6nyuKr31toaupyLbGwqu.png',	7,	'2021-03-15 10:26:04',	'2021-03-15 10:26:04'),
(8,	'assets/product/QLazOV1fQzanqGvsZ6qCcH2YvY9seTNZpqLlSS0Q.png',	8,	'2021-03-15 10:34:37',	'2021-03-15 10:34:37'),
(9,	'assets/product/lDdGbotneHjP1NZHN4An6GfsU6MauLwucVd0yoek.png',	9,	'2021-03-15 10:35:33',	'2021-03-15 10:35:33'),
(10,	'assets/product/1GF0MRze9yCzeH6U299fOEqXavFlvR6EtaXfpXsg.png',	10,	'2021-03-15 10:36:15',	'2021-03-15 10:36:15'),
(11,	'assets/product/7Ce6apsA4XGckcw43cZXOeG6yCEpxaKJec80r2LQ.png',	11,	'2021-03-15 10:36:52',	'2021-03-15 10:36:52'),
(12,	'assets/product/2WmJySRTWJ539ztzuRKtH9eWkBSGc7gZW1ZfxU23.png',	12,	'2021-03-15 10:41:31',	'2021-03-15 10:41:31'),
(13,	'assets/product/WMbistzCvYwIs1sJeu3L6I32M6yIGXy0hlwcJwUQ.png',	13,	'2021-03-15 10:42:12',	'2021-03-15 10:42:12'),
(14,	'assets/product/njnUbo8usOqz70d8Ul2JcqusSeGQsZjlYQfhoAzV.png',	14,	'2021-03-15 10:42:57',	'2021-03-15 10:42:57'),
(15,	'assets/product/rPJhCoJYeNt82DEACiD4O4xff94bPtSjGWItg7zS.png',	15,	'2021-03-15 10:44:31',	'2021-03-15 10:44:31'),
(16,	'assets/product/9ziv8ovbkyhaN0W4LhhXZSy07ZMYpqXSdVgtARjf.png',	16,	'2021-03-15 10:53:44',	'2021-03-15 10:53:44'),
(17,	'assets/product/cIjIJiJE3XibAjE9EDW5mGlsOLbg1sNnhFNpcLlk.png',	17,	'2021-03-15 10:54:26',	'2021-03-15 10:54:26'),
(18,	'assets/product/XYi3gH0XyMVOPVPv31PUMaBp7hozWhDftD7E5NNs.png',	18,	'2021-03-15 10:55:11',	'2021-03-15 10:55:11'),
(19,	'assets/product/ENrCkcvoJ1ASa9MDnGG7zAJVOIeNEvn9eRtU4cWx.png',	19,	'2021-03-15 10:56:16',	'2021-03-15 10:56:16'),
(20,	'assets/product/pPuPh7QxhDXYjenieXaMzju9XYtqNLWoMDE3Yisn.png',	20,	'2021-03-15 10:57:56',	'2021-03-15 10:57:56'),
(21,	'assets/product/adRJmpRY86209p4u282lOw491kZyjLYxki8EjrvK.png',	21,	'2021-03-15 10:58:57',	'2021-03-15 10:58:57'),
(22,	'assets/product/x1Gyl0IhY6IAtkY6T0vMmpWUCwFitrDSZmUR7mSJ.png',	22,	'2021-03-15 11:00:13',	'2021-03-15 11:00:13'),
(23,	'assets/product/VRR8pBJo5Ub72iJEnmavGa8dB6BiLgw6WtgotyvB.png',	23,	'2021-03-15 11:02:51',	'2021-03-15 11:02:51')
ON DUPLICATE KEY UPDATE `id` = VALUES(`id`), `photos` = VALUES(`photos`), `products_id` = VALUES(`products_id`), `created_at` = VALUES(`created_at`), `updated_at` = VALUES(`updated_at`);

DROP TABLE IF EXISTS `provinces`;
CREATE TABLE `provinces` (
  `id` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  KEY `provinces_id_index` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `regencies`;
CREATE TABLE `regencies` (
  `id` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province_id` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  KEY `regencies_province_id_foreign` (`province_id`),
  KEY `regencies_id_index` (`id`),
  CONSTRAINT `regencies_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `transactions`;
CREATE TABLE `transactions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL,
  `asuransi_price` int(11) NOT NULL,
  `shiping_price` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `transactions_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `transaction_details`;
CREATE TABLE `transaction_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `transactions_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shippings_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_one` longtext COLLATE utf8mb4_unicode_ci,
  `address_two` longtext COLLATE utf8mb4_unicode_ci,
  `provinces_id` int(11) DEFAULT NULL,
  `regencies_id` int(11) DEFAULT NULL,
  `zip_code` int(11) DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categories_id` int(11) DEFAULT NULL,
  `store_status` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `address_one`, `address_two`, `provinces_id`, `regencies_id`, `zip_code`, `country`, `phone_number`, `store_name`, `categories_id`, `store_status`, `deleted_at`, `remember_token`, `created_at`, `updated_at`, `roles`) VALUES
(1,	'Giovanni kurniawan (0000000028665)',	'giovanni.kurniawan@student.umn.ac.id',	NULL,	'$2y$10$P4ju8twH.mIRaQXKfJKJUeOXVk2X5YdqfkbIx2yC1KJbF6KFTyZjW',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'2021-03-13 22:10:50',	'2021-03-15 09:06:15',	'ADMIN'),
(2,	'Ritchie . (00000032761)',	'ritchie@student.umn.ac.id',	NULL,	'$2y$10$hOBd.TALY.T5StZXG8Tkh.kFAwweyiNY4Ds4avzRcR27MQcxDB.wK',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'Ritchie Restaurant',	6,	0,	NULL,	NULL,	'2021-03-14 03:17:48',	'2021-03-15 09:58:47',	'ADMIN'),
(3,	'Muhammad Juan Akmal (00000031901)',	'muhammad.juan@student.umn.ac.id',	NULL,	'$2y$10$fmzdWh2NfDBC6Y17QAabk.s8HxhdhneYSyvwH2t0e9SPv0h0Ge6R6',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'2021-03-14 22:12:13',	'2021-03-15 09:03:32',	'ADMIN'),
(4,	'Ivana Angela',	'ivanaangel123@gmail.com',	NULL,	'$2y$10$KZ4MJa6LMwV9L99A94d.leoRLdFkn/Cz32n2EHN9SPUP1IM25Kb1u',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'2021-03-15 06:14:36',	'2021-03-15 06:14:36',	'USER'),
(5,	'I Putu Ananta Yogiswara',	'putu.yogiswara@lecturer.umn.ac.id',	NULL,	'$2y$10$VZH3iFCpFGP21JF8OsqOa.S7VRxlN/QdsEIqJPTInJyAFdQdoFUZG',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'2021-03-15 08:58:17',	'2021-03-15 10:50:07',	'ADMIN'),
(6,	'giovanniUser',	'gio@gmail.com',	NULL,	'$2y$10$qI1uls4zwm1VGo4DQ.rG9OQmFC1BuGHQSFN7gYCwqcXF6NDryTnFK',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'giovanni Restaurant',	8,	1,	NULL,	NULL,	'2021-03-15 10:40:23',	'2021-03-15 10:40:23',	'USER')
ON DUPLICATE KEY UPDATE `id` = VALUES(`id`), `name` = VALUES(`name`), `email` = VALUES(`email`), `email_verified_at` = VALUES(`email_verified_at`), `password` = VALUES(`password`), `address_one` = VALUES(`address_one`), `address_two` = VALUES(`address_two`), `provinces_id` = VALUES(`provinces_id`), `regencies_id` = VALUES(`regencies_id`), `zip_code` = VALUES(`zip_code`), `country` = VALUES(`country`), `phone_number` = VALUES(`phone_number`), `store_name` = VALUES(`store_name`), `categories_id` = VALUES(`categories_id`), `store_status` = VALUES(`store_status`), `deleted_at` = VALUES(`deleted_at`), `remember_token` = VALUES(`remember_token`), `created_at` = VALUES(`created_at`), `updated_at` = VALUES(`updated_at`), `roles` = VALUES(`roles`);

DROP TABLE IF EXISTS `villages`;
CREATE TABLE `villages` (
  `id` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_id` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  KEY `villages_district_id_foreign` (`district_id`),
  KEY `villages_id_index` (`id`),
  CONSTRAINT `villages_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- 2021-03-16 01:28:14
