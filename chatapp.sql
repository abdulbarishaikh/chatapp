-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 13, 2022 at 10:28 AM
-- Server version: 5.7.31
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `message`, `created_at`, `updated_at`) VALUES
(1, 1, 'sd', '2022-08-12 15:57:33', '2022-08-12 15:57:33'),
(2, 1, 'how are you', '2022-08-12 16:00:16', '2022-08-12 16:00:16'),
(3, 2, 'hi', '2022-08-12 16:01:02', '2022-08-12 16:01:02'),
(4, 1, 'aaa', '2022-08-12 16:01:58', '2022-08-12 16:01:58'),
(5, 2, 'asdaaaa', '2022-08-12 16:05:03', '2022-08-12 16:05:03'),
(6, 1, 'asdfasf', '2022-08-12 16:05:10', '2022-08-12 16:05:10'),
(7, 1, 'sadfasdf', '2022-08-12 16:05:12', '2022-08-12 16:05:12'),
(8, 1, 'sadfsadf', '2022-08-12 16:05:13', '2022-08-12 16:05:13'),
(9, 1, 'asdfsadf', '2022-08-12 16:05:16', '2022-08-12 16:05:16'),
(10, 1, 'asdfasdf', '2022-08-12 16:05:17', '2022-08-12 16:05:17'),
(11, 2, 'safasaa adfasdfsd', '2022-08-12 16:10:20', '2022-08-12 16:10:20'),
(12, 2, 'hello', '2022-08-13 00:45:16', '2022-08-13 00:45:16'),
(13, 2, 'how are you', '2022-08-13 00:45:31', '2022-08-13 00:45:31'),
(14, 2, 'aaaa', '2022-08-13 00:49:16', '2022-08-13 00:49:16'),
(15, 1, 'asdfad', '2022-08-13 00:49:27', '2022-08-13 00:49:27'),
(16, 1, 'asdfsd', '2022-08-13 00:52:10', '2022-08-13 00:52:10'),
(17, 1, 'asfasdf', '2022-08-13 00:52:24', '2022-08-13 00:52:24');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0000_00_00_000000_create_websockets_statistics_entries_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_08_12_180006_create_messages_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'abdul bari', 'shaikhabdulbari555@gmail.com', NULL, '$2y$10$FlhUyS6.7XcDeJ0PgBVcDOrO3ZUsLrn10uUWeqI7a0P3b7d60wOuy', NULL, '2022-08-12 14:07:02', '2022-08-12 14:07:02'),
(2, 'abdul majid', 'abdulmajid@gmail.com', NULL, '$2y$10$tgtonJP6w/pcpHAgNDO0aOq5TDowqxYTC/vOgzZ//rW6ps7ZvNula', NULL, '2022-08-12 16:00:01', '2022-08-12 16:00:01');

-- --------------------------------------------------------

--
-- Table structure for table `websockets_statistics_entries`
--

DROP TABLE IF EXISTS `websockets_statistics_entries`;
CREATE TABLE IF NOT EXISTS `websockets_statistics_entries` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `app_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `peak_connection_count` int(11) NOT NULL,
  `websocket_message_count` int(11) NOT NULL,
  `api_message_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `websockets_statistics_entries`
--

INSERT INTO `websockets_statistics_entries` (`id`, `app_id`, `peak_connection_count`, `websocket_message_count`, `api_message_count`, `created_at`, `updated_at`) VALUES
(1, 'pusher_app_id', 1, 1, 1, '2022-08-12 14:06:58', '2022-08-12 14:06:58'),
(2, 'pusher_app_id', 1, 1, 1, '2022-08-12 14:07:58', '2022-08-12 14:07:58'),
(3, 'pusher_app_id', 1, 1, 1, '2022-08-12 14:08:59', '2022-08-12 14:08:59'),
(4, 'pusher_app_id', 1, 1, 1, '2022-08-12 14:09:58', '2022-08-12 14:09:58'),
(5, 'pusher_app_id', 1, 1, 1, '2022-08-12 14:10:58', '2022-08-12 14:10:58'),
(6, 'pusher_app_id', 1, 1, 1, '2022-08-12 14:11:58', '2022-08-12 14:11:58'),
(7, 'pusher_app_id', 1, 1, 1, '2022-08-12 14:12:59', '2022-08-12 14:12:59'),
(8, 'pusher_app_id', 1, 1, 1, '2022-08-12 14:13:58', '2022-08-12 14:13:58'),
(9, 'pusher_app_id', 1, 1, 1, '2022-08-12 14:14:58', '2022-08-12 14:14:58'),
(10, 'pusher_app_id', 1, 1, 1, '2022-08-12 14:15:59', '2022-08-12 14:15:59'),
(11, 'pusher_app_id', 1, 1, 1, '2022-08-12 14:16:58', '2022-08-12 14:16:58'),
(12, 'pusher_app_id', 1, 1, 1, '2022-08-12 14:17:59', '2022-08-12 14:17:59'),
(13, 'pusher_app_id', 1, 1, 1, '2022-08-12 14:18:59', '2022-08-12 14:18:59'),
(14, 'pusher_app_id', 1, 1, 1, '2022-08-12 14:19:59', '2022-08-12 14:19:59'),
(15, 'pusher_app_id', 1, 1, 1, '2022-08-12 14:20:59', '2022-08-12 14:20:59'),
(16, 'pusher_app_id', 1, 1, 1, '2022-08-12 14:21:59', '2022-08-12 14:21:59'),
(17, 'pusher_app_id', 1, 1, 1, '2022-08-12 14:22:59', '2022-08-12 14:22:59'),
(18, 'pusher_app_id', 1, 1, 1, '2022-08-12 14:23:59', '2022-08-12 14:23:59'),
(19, 'pusher_app_id', 1, 1, 1, '2022-08-12 14:24:59', '2022-08-12 14:24:59'),
(20, 'pusher_app_id', 1, 1, 1, '2022-08-12 14:25:59', '2022-08-12 14:25:59'),
(21, 'pusher_app_id', 1, 1, 1, '2022-08-12 14:26:59', '2022-08-12 14:26:59'),
(22, 'pusher_app_id', 1, 1, 1, '2022-08-12 14:27:59', '2022-08-12 14:27:59'),
(23, 'pusher_app_id', 1, 1, 1, '2022-08-12 14:28:59', '2022-08-12 14:28:59'),
(24, 'pusher_app_id', 1, 1, 1, '2022-08-12 14:29:59', '2022-08-12 14:29:59'),
(25, 'pusher_app_id', 1, 1, 1, '2022-08-12 14:30:59', '2022-08-12 14:30:59'),
(26, 'pusher_app_id', 1, 1, 1, '2022-08-12 14:31:59', '2022-08-12 14:31:59'),
(27, 'pusher_app_id', 1, 1, 1, '2022-08-12 14:32:59', '2022-08-12 14:32:59'),
(28, 'pusher_app_id', 1, 1, 1, '2022-08-12 14:33:59', '2022-08-12 14:33:59'),
(29, 'pusher_app_id', 1, 1, 1, '2022-08-12 14:34:59', '2022-08-12 14:34:59'),
(30, 'pusher_app_id', 1, 1, 1, '2022-08-12 14:35:59', '2022-08-12 14:35:59'),
(31, 'pusher_app_id', 1, 1, 1, '2022-08-12 14:36:59', '2022-08-12 14:36:59'),
(32, 'pusher_app_id', 1, 1, 1, '2022-08-12 14:37:59', '2022-08-12 14:37:59'),
(33, 'pusher_app_id', 1, 1, 1, '2022-08-12 14:38:59', '2022-08-12 14:38:59'),
(34, 'pusher_app_id', 1, 1, 1, '2022-08-12 14:39:59', '2022-08-12 14:39:59'),
(35, 'pusher_app_id', 1, 1, 1, '2022-08-12 14:40:59', '2022-08-12 14:40:59'),
(36, 'pusher_app_id', 1, 1, 1, '2022-08-12 14:41:59', '2022-08-12 14:41:59'),
(37, 'pusher_app_id', 1, 1, 1, '2022-08-12 14:42:59', '2022-08-12 14:42:59'),
(38, 'pusher_app_id', 1, 1, 1, '2022-08-12 14:43:59', '2022-08-12 14:43:59'),
(39, 'pusher_app_id', 1, 1, 1, '2022-08-12 14:44:59', '2022-08-12 14:44:59'),
(40, 'pusher_app_id', 1, 1, 1, '2022-08-12 14:45:59', '2022-08-12 14:45:59'),
(41, 'pusher_app_id', 1, 1, 1, '2022-08-12 14:46:59', '2022-08-12 14:46:59'),
(42, 'pusher_app_id', 1, 1, 1, '2022-08-12 14:47:59', '2022-08-12 14:47:59'),
(43, 'pusher_app_id', 1, 1, 1, '2022-08-12 14:48:59', '2022-08-12 14:48:59'),
(44, 'pusher_app_id', 1, 1, 1, '2022-08-12 14:49:59', '2022-08-12 14:49:59'),
(45, 'pusher_app_id', 1, 1, 1, '2022-08-12 14:50:59', '2022-08-12 14:50:59'),
(46, 'pusher_app_id', 1, 1, 1, '2022-08-12 14:51:59', '2022-08-12 14:51:59'),
(47, 'pusher_app_id', 1, 1, 1, '2022-08-12 14:52:59', '2022-08-12 14:52:59'),
(48, 'pusher_app_id', 1, 1, 1, '2022-08-12 14:53:59', '2022-08-12 14:53:59'),
(49, 'pusher_app_id', 1, 1, 1, '2022-08-12 14:54:59', '2022-08-12 14:54:59'),
(50, 'pusher_app_id', 1, 1, 1, '2022-08-12 14:55:59', '2022-08-12 14:55:59'),
(51, 'pusher_app_id', 1, 1, 1, '2022-08-12 14:56:59', '2022-08-12 14:56:59'),
(52, 'pusher_app_id', 1, 1, 1, '2022-08-12 14:57:59', '2022-08-12 14:57:59'),
(53, 'pusher_app_id', 1, 1, 1, '2022-08-12 14:58:59', '2022-08-12 14:58:59'),
(54, 'pusher_app_id', 1, 1, 1, '2022-08-12 14:59:59', '2022-08-12 14:59:59'),
(55, 'pusher_app_id', 1, 1, 1, '2022-08-12 15:00:59', '2022-08-12 15:00:59'),
(56, 'pusher_app_id', 1, 1, 1, '2022-08-12 15:01:59', '2022-08-12 15:01:59'),
(57, 'pusher_app_id', 1, 1, 0, '2022-08-12 15:05:20', '2022-08-12 15:05:20'),
(58, 'pusher_app_id', 0, 2, 1, '2022-08-12 15:06:19', '2022-08-12 15:06:19'),
(59, 'pusher_app_id', 0, 2, 1, '2022-08-12 15:07:20', '2022-08-12 15:07:20'),
(60, 'pusher_app_id', 0, 1, 1, '2022-08-12 15:08:19', '2022-08-12 15:08:19'),
(61, 'pusher_app_id', 0, 2, 1, '2022-08-12 15:09:20', '2022-08-12 15:09:20'),
(62, 'pusher_app_id', 0, 2, 1, '2022-08-12 15:10:19', '2022-08-12 15:10:19'),
(63, 'pusher_app_id', 0, 2, 1, '2022-08-12 15:11:19', '2022-08-12 15:11:19'),
(64, 'pusher_app_id', 1, 1, 0, '2022-08-12 15:12:52', '2022-08-12 15:12:52'),
(65, 'pusher_app_id', 0, 1, 1, '2022-08-12 15:13:52', '2022-08-12 15:13:52'),
(66, 'pusher_app_id', 0, 2, 1, '2022-08-12 15:14:52', '2022-08-12 15:14:52'),
(67, 'pusher_app_id', 1, 1, 0, '2022-08-12 15:16:18', '2022-08-12 15:16:18'),
(68, 'pusher_app_id', 0, 2, 1, '2022-08-12 15:17:18', '2022-08-12 15:17:18'),
(69, 'pusher_app_id', 1, 9, 0, '2022-08-12 15:30:50', '2022-08-12 15:30:50'),
(70, 'pusher_app_id', 1, 1, 1, '2022-08-12 15:31:50', '2022-08-12 15:31:50'),
(71, 'pusher_app_id', 1, 1, 1, '2022-08-12 15:32:50', '2022-08-12 15:32:50'),
(72, 'pusher_app_id', 1, 1, 1, '2022-08-12 15:33:50', '2022-08-12 15:33:50'),
(73, 'pusher_app_id', 1, 9, 0, '2022-08-12 15:35:17', '2022-08-12 15:35:17'),
(74, 'pusher_app_id', 1, 1, 1, '2022-08-12 15:36:17', '2022-08-12 15:36:17'),
(75, 'pusher_app_id', 1, 1, 1, '2022-08-12 15:37:20', '2022-08-12 15:37:20'),
(76, 'pusher_app_id', 1, 2, 1, '2022-08-12 15:38:17', '2022-08-12 15:38:17'),
(77, 'pusher_app_id', 1, 1, 1, '2022-08-12 15:39:17', '2022-08-12 15:39:17'),
(78, 'pusher_app_id', 1, 1, 1, '2022-08-12 15:40:17', '2022-08-12 15:40:17'),
(79, 'pusher_app_id', 1, 0, 0, '2022-08-12 15:43:54', '2022-08-12 15:43:54'),
(80, 'pusher_app_id', 0, 9, 1, '2022-08-12 15:44:54', '2022-08-12 15:44:54'),
(81, 'pusher_app_id', 1, 1, 1, '2022-08-12 15:45:54', '2022-08-12 15:45:54'),
(82, 'pusher_app_id', 1, 1, 1, '2022-08-12 15:46:54', '2022-08-12 15:46:54'),
(83, 'pusher_app_id', 1, 1, 1, '2022-08-12 15:47:54', '2022-08-12 15:47:54'),
(84, 'pusher_app_id', 1, 1, 1, '2022-08-12 15:48:54', '2022-08-12 15:48:54'),
(85, 'pusher_app_id', 1, 1, 1, '2022-08-12 15:49:54', '2022-08-12 15:49:54'),
(86, 'pusher_app_id', 1, 1, 0, '2022-08-12 15:53:01', '2022-08-12 15:53:01'),
(87, 'pusher_app_id', 1, 9, 0, '2022-08-12 15:56:37', '2022-08-12 15:56:37'),
(88, 'pusher_app_id', 1, 1, 2, '2022-08-12 15:57:37', '2022-08-12 15:57:37'),
(89, 'pusher_app_id', 1, 1, 1, '2022-08-12 15:58:37', '2022-08-12 15:58:37'),
(90, 'pusher_app_id', 1, 1, 1, '2022-08-12 15:59:37', '2022-08-12 15:59:37'),
(91, 'pusher_app_id', 1, 1, 2, '2022-08-12 16:00:37', '2022-08-12 16:00:37'),
(92, 'pusher_app_id', 1, 9, 1, '2022-08-12 16:02:43', '2022-08-12 16:02:43'),
(93, 'pusher_app_id', 1, 1, 1, '2022-08-12 16:03:43', '2022-08-12 16:03:43'),
(94, 'pusher_app_id', 1, 1, 1, '2022-08-12 16:04:43', '2022-08-12 16:04:43'),
(95, 'pusher_app_id', 1, 0, 7, '2022-08-12 16:05:43', '2022-08-12 16:05:43'),
(96, 'pusher_app_id', 1, 1, 1, '2022-08-12 16:06:43', '2022-08-12 16:06:43'),
(97, 'pusher_app_id', 1, 2, 1, '2022-08-12 16:10:43', '2022-08-12 16:10:43'),
(98, 'pusher_app_id', 1, 1, 1, '2022-08-12 16:11:43', '2022-08-12 16:11:43'),
(99, 'pusher_app_id', 1, 1, 1, '2022-08-12 16:12:43', '2022-08-12 16:12:43'),
(100, 'pusher_app_id', 1, 1, 1, '2022-08-12 16:13:43', '2022-08-12 16:13:43'),
(101, 'pusher_app_id', 1, 1, 1, '2022-08-12 16:14:43', '2022-08-12 16:14:43'),
(102, 'pusher_app_id', 1, 1, 1, '2022-08-12 16:15:43', '2022-08-12 16:15:43'),
(103, 'pusher_app_id', 1, 1, 1, '2022-08-12 16:16:43', '2022-08-12 16:16:43'),
(104, 'pusher_app_id', 1, 1, 1, '2022-08-12 16:17:43', '2022-08-12 16:17:43'),
(105, 'pusher_app_id', 1, 1, 1, '2022-08-12 16:18:43', '2022-08-12 16:18:43');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
