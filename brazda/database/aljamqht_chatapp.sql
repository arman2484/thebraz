-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2023 at 07:38 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aljamqht_chatapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_profiles`
--

CREATE TABLE `admin_profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_profiles`
--

INSERT INTO `admin_profiles` (`id`, `username`, `password`, `first_name`, `last_name`, `email`, `phone`, `image`, `created_at`, `updated_at`) VALUES
(1, 'primocys', '$2y$10$quzokcKidvrOZL15ZAd8Q.WzaLse7AwNqevkZ0ShiUvw5AstYA8Oq', 'Primocys', 'Company', 'primocys@gmail.com', '9998884445', 'img-8.jpg', NULL, '2023-11-10 03:53:35');

-- --------------------------------------------------------

--
-- Table structure for table `blocked_tbl`
--

CREATE TABLE `blocked_tbl` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `blocked_user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blocked_tbl`
--

INSERT INTO `blocked_tbl` (`id`, `user_id`, `blocked_user_id`, `created_at`, `updated_at`) VALUES
(4, 14, 13, '2023-10-06 06:30:22', '2023-10-06 06:30:22'),
(5, 14, 5, '2023-10-06 08:43:29', '2023-10-06 08:43:29');

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` int(11) NOT NULL,
  `from_user` int(11) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `to_user` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `seen` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `chat_del_from` int(11) DEFAULT 0,
  `chat_del_to` int(11) DEFAULT 0,
  `msg_del_from` int(11) NOT NULL DEFAULT 0,
  `msg_del_to` int(11) NOT NULL DEFAULT 0,
  `time` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`id`, `from_user`, `message`, `to_user`, `url`, `thumbnail`, `seen`, `type`, `chat_del_from`, `chat_del_to`, `msg_del_from`, `msg_del_to`, `time`, `created_at`, `updated_at`) VALUES
(1, 8, 'hiii', 3, '', '', 0, 'text', 8, 3, 0, 0, NULL, '2023-10-03 04:29:15', '2023-10-04 01:22:51'),
(2, 8, 'hiii', 3, '', '', 0, 'text', 8, 3, 0, 3, NULL, '2023-10-03 04:31:06', '2023-10-04 01:55:09'),
(3, 8, 'hiii', 3, '', '', 0, 'text', 8, 3, 0, 0, NULL, '2023-10-03 04:31:32', '2023-10-04 01:22:51'),
(4, 8, 'hiii', 3, '', '', 0, 'text', 8, 3, 0, 0, NULL, '2023-10-03 04:32:06', '2023-10-04 01:22:51'),
(5, 8, 'hiii', 3, '', '', 0, 'text', 8, 3, 0, 0, NULL, '2023-10-03 04:32:43', '2023-10-04 01:22:51'),
(6, 8, 'hiii', 3, '', '', 0, 'text', 8, 3, 0, 0, NULL, '2023-10-03 04:34:35', '2023-10-04 01:22:51'),
(7, 8, 'hiii', 3, '', '', 0, 'text', 8, 3, 0, 0, NULL, '2023-10-03 04:36:21', '2023-10-04 01:22:51'),
(8, 8, 'hiii', 3, '', '', 0, 'text', 8, 3, 0, 0, NULL, '2023-10-03 04:36:42', '2023-10-04 01:22:51'),
(9, 8, 'how are you ??', 3, '', '', 0, 'text', 8, 3, 0, 0, NULL, '2023-10-03 04:38:13', '2023-10-04 01:22:51'),
(12, 8, '', 3, 'chat_651c07e2cd102.png', '', 0, 'image', 8, 3, 0, 0, NULL, '2023-10-03 06:54:02', '2023-10-04 01:22:51'),
(13, 8, '', 3, 'chat_651c0eb33e545.mp3', '', 0, 'video', 8, 3, 0, 0, NULL, '2023-10-03 07:23:07', '2023-10-04 01:22:51'),
(14, 9, 'how are you ??', 3, '', '', 0, 'text', 9, NULL, 0, 0, NULL, '2023-10-03 07:43:29', '2023-10-04 04:25:04'),
(15, 9, 'hiii', 3, '', '', 0, 'text', 9, NULL, 0, 0, NULL, '2023-10-03 08:24:11', '2023-10-04 04:25:04'),
(16, 9, 'hiiiiii', 3, '', '', 0, 'text', 9, NULL, 0, 0, NULL, '2023-10-03 08:24:22', '2023-10-04 04:25:04'),
(17, 9, '', 3, 'chat_651c1d320155b.jpg', '', 0, 'image', 9, NULL, 0, 0, NULL, '2023-10-03 08:24:58', '2023-10-04 04:25:04'),
(18, 9, 'hii', 3, '', '', 0, 'text', 9, NULL, 0, 0, NULL, '2023-10-03 08:28:47', '2023-10-04 04:25:04'),
(19, 8, '', 3, 'chat_651c221150920.mp4', '', 0, 'video', 8, 3, 0, 0, NULL, '2023-10-03 08:45:45', '2023-10-04 01:22:51'),
(20, 9, '', 3, 'chat_651c22bf56325.mp4', '', 0, 'video', 9, NULL, 0, 0, NULL, '2023-10-03 08:48:39', '2023-10-04 04:25:04'),
(21, 9, '', 3, 'chat_651c22e9f32ad.mp4', '', 0, 'video', 9, NULL, 0, 0, NULL, '2023-10-03 08:49:22', '2023-10-04 04:25:04'),
(22, 8, '', 3, 'chat_651c23c661b03.mp4', 'thumbnail651c23c66259e.png', 0, 'video', 8, 3, 0, 0, NULL, '2023-10-03 08:53:02', '2023-10-04 01:22:51'),
(23, 9, '', 3, 'chat_651cfd93bc9e3.mp4', 'thumbnail651cfd93d0b10.jpg', 0, 'video', 9, NULL, 0, 0, NULL, '2023-10-04 00:22:19', '2023-10-04 04:25:04'),
(24, 8, 'done', 3, '', '', 0, 'text', 8, 3, 0, 0, NULL, '2023-10-04 01:20:31', '2023-10-04 01:22:51'),
(27, 3, 'done', 8, '', '', 0, 'text', 0, 0, 0, 0, NULL, '2023-10-04 03:38:04', '2023-10-04 03:38:04'),
(28, 9, 'how are you ??', 3, '', '', 0, 'text', 9, 0, 0, 0, NULL, '2023-10-04 04:16:50', '2023-10-04 04:25:04'),
(29, 9, 'how are you ??', 3, '', '', 0, 'text', 0, 0, 0, 0, NULL, '2023-10-04 04:25:33', '2023-10-04 04:25:33'),
(30, 9, 'Giiiii', 3, '', '', 0, 'text', 0, 0, 0, 0, NULL, '2023-10-04 04:33:46', '2023-10-04 04:33:46'),
(32, 2, 'done', 8, '', '', 0, 'text', 2, 0, 0, 0, '02:30', '2023-10-04 05:33:00', '2023-10-06 05:35:23'),
(33, 9, '', 3, 'chat_651d4928236ce.mp4', 'thumbnail651d492827a16.jpg', 0, 'video', 0, 0, 0, 0, '10', '2023-10-04 05:44:48', '2023-10-04 05:44:48'),
(34, 3, 'done', 8, '', '', 0, 'text', 0, 0, 0, 0, '02:30', '2023-10-04 07:24:35', '2023-10-04 07:24:35'),
(35, 9, '', 2, 'chat_651d63df46b5e.mp4', 'thumbnail651d63df4d3e4.jpg', 0, 'video', 0, 2, 0, 0, '0:00', '2023-10-04 07:38:47', '2023-10-06 05:35:19'),
(36, 2, 'how are you ??', 3, '', '', 0, 'text', 2, 0, 0, 0, '', '2023-10-05 01:47:32', '2023-10-06 05:35:17'),
(37, 5, 'hii', 2, '', '', 0, 'text', 0, 2, 0, 0, '', '2023-10-05 01:48:01', '2023-10-06 05:35:15'),
(38, 2, 'hello', 6, '', '', 0, 'text', 2, 0, 0, 0, '', '2023-10-05 01:52:47', '2023-10-06 05:35:14'),
(39, 12, 'hello', 2, '', '', 0, 'text', 0, 2, 0, 0, '', '2023-10-05 08:59:45', '2023-10-06 05:35:09'),
(40, 12, 'hello', 3, '', '', 0, 'text', 0, 0, 0, 0, '', '2023-10-05 09:00:08', '2023-10-05 09:00:08'),
(41, 2, 'hii', 2, '', '', 0, 'text', 2, 2, 0, 0, '', '2023-10-05 09:00:17', '2023-10-06 05:35:04'),
(42, 2, 'hiii', 2, '', '', 0, 'text', 2, 2, 0, 0, '', '2023-10-05 09:00:51', '2023-10-06 05:35:04'),
(43, 12, '', 2, 'chat_651ec937ce398.jpg', '', 0, 'image', 0, 2, 0, 0, '', '2023-10-05 09:03:27', '2023-10-06 05:35:09'),
(44, 2, 'hii', 2, '', '', 0, 'text', 2, 2, 0, 0, '', '2023-10-05 09:04:08', '2023-10-06 05:35:04'),
(45, 13, 'done', 14, '', '', 0, NULL, 0, 0, 0, 0, '', '2023-10-06 00:03:42', '2023-10-06 00:03:42'),
(46, 14, 'Video call initiated.', 3, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 01:30:02', '2023-10-06 01:30:02'),
(47, 14, 'Video call initiated.', 3, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 01:30:37', '2023-10-06 01:30:37'),
(48, 14, 'Video call initiated.', 3, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 01:36:18', '2023-10-06 01:36:18'),
(49, 15, 'Hi', 2, '', '', 0, 'text', 0, 0, 0, 0, '', '2023-10-06 04:11:47', '2023-10-06 04:11:47'),
(50, 15, 'hello', 2, '', '', 0, 'text', 0, 0, 0, 0, '', '2023-10-06 04:12:15', '2023-10-06 04:12:15'),
(51, 15, 'hello', 2, '', '', 0, 'text', 0, 0, 0, 0, '', '2023-10-06 04:12:22', '2023-10-06 04:12:22'),
(52, 2, '', 15, 'chat_651fd69449d81.jpg', '', 0, 'image', 0, 0, 0, 0, '', '2023-10-06 04:12:44', '2023-10-06 04:12:44'),
(53, 2, '', 15, 'chat_651fd6c4b39d6.mp4', 'thumbnail651fd6c4b8cf2.jpg', 0, 'video', 0, 0, 0, 0, '0:00', '2023-10-06 04:13:32', '2023-10-06 04:13:32'),
(55, 14, 'Call Received at 09:59', 8, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 04:29:45', '2023-10-06 04:29:45'),
(56, 14, 'Audio call initiated.', 3, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 05:01:18', '2023-10-06 05:01:18'),
(57, 14, ' Missed call at 10:31', 3, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 05:01:32', '2023-10-06 05:01:32'),
(58, 14, ' Missed call at 10:32', 3, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 05:02:32', '2023-10-06 05:02:32'),
(59, 14, ' Missed call at 10:56', 3, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 05:26:08', '2023-10-06 05:26:08'),
(60, 14, ' Missed call at 10:57', 3, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 05:27:44', '2023-10-06 05:27:44'),
(61, 14, 'Missed call at 11:00', 3, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 05:30:39', '2023-10-06 05:30:39'),
(62, 14, 'Missed call at 11:03', 3, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 05:33:47', '2023-10-06 05:33:47'),
(63, 14, 'Missed call at 11:05', 3, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 05:35:36', '2023-10-06 05:35:36'),
(64, 14, 'Audio call initiated.', 3, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 05:39:56', '2023-10-06 05:39:56'),
(65, 3, 'Audio call initiated.', 8, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 05:40:09', '2023-10-06 05:40:09'),
(66, 3, 'Audio call initiated.', 8, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 05:40:38', '2023-10-06 05:40:38'),
(67, 3, 'Audio call initiated.', 8, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 05:40:41', '2023-10-06 05:40:41'),
(68, 14, ' Unblocked ..!', 5, NULL, NULL, NULL, 'block', 0, 0, 0, 0, NULL, '2023-10-06 06:26:52', '2023-10-06 06:26:52'),
(69, 14, ' blocked ..!', 5, NULL, NULL, NULL, 'block', 0, 0, 0, 0, NULL, '2023-10-06 06:27:41', '2023-10-06 06:27:41'),
(70, 14, ' Unblocked ..!', 5, NULL, NULL, NULL, 'block', 0, 0, 0, 0, NULL, '2023-10-06 06:28:40', '2023-10-06 06:28:40'),
(71, 14, 'umesh blocked ..!', 5, NULL, NULL, NULL, 'block', 0, 0, 0, 0, NULL, '2023-10-06 06:30:22', '2023-10-06 06:30:22'),
(72, 2, 'hi', 12, '', '', 0, 'text', 0, 0, 0, 0, '', '2023-10-06 06:31:41', '2023-10-06 06:31:41'),
(74, 2, 'fine', 12, '', '', 0, 'text', 0, 0, 0, 0, '', '2023-10-06 06:32:46', '2023-10-06 06:32:46'),
(75, 12, '', 2, 'chat_651ff76e60595.mp4', 'thumbnail651ff76e6124d.jpg', 0, 'video', 0, 0, 0, 0, '0:00', '2023-10-06 06:32:54', '2023-10-06 06:32:54'),
(76, 13, 'done', 14, '', '', 0, NULL, 0, 0, 0, 0, '', '2023-10-06 06:49:35', '2023-10-06 06:49:35'),
(77, 12, 'Audio call initiated.', 2, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 07:30:01', '2023-10-06 07:30:01'),
(78, 14, 'Audio call initiated.', 3, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 07:33:09', '2023-10-06 07:33:09'),
(79, 14, 'Audio call initiated.', 3, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 07:33:56', '2023-10-06 07:33:56'),
(80, 14, 'Audio call initiated.', 3, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 07:34:59', '2023-10-06 07:34:59'),
(81, 14, 'Audio call initiated.', 3, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 07:36:36', '2023-10-06 07:36:36'),
(82, 12, 'Audio call initiated.', 2, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 07:37:12', '2023-10-06 07:37:12'),
(83, 12, 'Audio call initiated.', 2, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 07:39:20', '2023-10-06 07:39:20'),
(84, 12, 'Audio call initiated.', 2, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 07:40:01', '2023-10-06 07:40:01'),
(85, 15, 'Audio call initiated.', 2, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 07:48:41', '2023-10-06 07:48:41'),
(86, 2, 'hiii', 12, '', '', 0, 'text', 0, 0, 0, 0, '', '2023-10-06 07:49:57', '2023-10-06 07:49:57'),
(87, 2, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 07:50:46', '2023-10-06 07:50:46'),
(88, 2, 'hii', 15, '', '', 0, 'text', 0, 0, 0, 0, '', '2023-10-06 07:51:01', '2023-10-06 07:51:01'),
(89, 15, 'Audio call initiated.', 2, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 07:58:06', '2023-10-06 07:58:06'),
(90, 14, 'Audio call initiated.', 3, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 07:58:38', '2023-10-06 07:58:38'),
(91, 2, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 07:58:39', '2023-10-06 07:58:39'),
(92, 14, 'Audio call initiated.', 3, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 08:01:23', '2023-10-06 08:01:23'),
(93, 2, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 08:01:39', '2023-10-06 08:01:39'),
(94, 15, 'Audio call initiated.', 2, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 08:01:46', '2023-10-06 08:01:46'),
(95, 14, 'Audio call initiated.', 3, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 08:03:32', '2023-10-06 08:03:32'),
(96, 15, 'Audio call initiated.', 2, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 08:04:20', '2023-10-06 08:04:20'),
(97, 14, 'Audio call initiated.', 3, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 08:05:11', '2023-10-06 08:05:11'),
(98, 14, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 08:11:25', '2023-10-06 08:11:25'),
(99, 14, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 08:12:02', '2023-10-06 08:12:02'),
(100, 14, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 08:12:26', '2023-10-06 08:12:26'),
(101, 14, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 08:13:10', '2023-10-06 08:13:10'),
(102, 14, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 08:13:35', '2023-10-06 08:13:35'),
(103, 14, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 08:13:56', '2023-10-06 08:13:56'),
(104, 14, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 08:14:45', '2023-10-06 08:14:45'),
(105, 14, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 08:15:13', '2023-10-06 08:15:13'),
(106, 14, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 08:15:21', '2023-10-06 08:15:21'),
(107, 14, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 08:16:23', '2023-10-06 08:16:23'),
(108, 14, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 08:17:03', '2023-10-06 08:17:03'),
(109, 14, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 08:17:43', '2023-10-06 08:17:43'),
(110, 2, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 08:22:20', '2023-10-06 08:22:20'),
(111, 14, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 08:23:14', '2023-10-06 08:23:14'),
(112, 15, 'Audio call initiated.', 2, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 08:23:35', '2023-10-06 08:23:35'),
(113, 14, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 08:23:35', '2023-10-06 08:23:35'),
(114, 15, 'Audio call initiated.', 2, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 08:23:44', '2023-10-06 08:23:44'),
(115, 2, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 08:24:09', '2023-10-06 08:24:09'),
(116, 14, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 08:24:41', '2023-10-06 08:24:41'),
(117, 14, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 08:26:24', '2023-10-06 08:26:24'),
(118, 14, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 08:26:33', '2023-10-06 08:26:33'),
(119, 14, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 08:29:58', '2023-10-06 08:29:58'),
(120, 2, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 08:30:55', '2023-10-06 08:30:55'),
(121, 2, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 08:31:03', '2023-10-06 08:31:03'),
(122, 15, 'Audio call initiated.', 2, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 08:31:08', '2023-10-06 08:31:08'),
(123, 2, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 08:31:46', '2023-10-06 08:31:46'),
(124, 14, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 08:33:46', '2023-10-06 08:33:46'),
(125, 14, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 08:33:58', '2023-10-06 08:33:58'),
(126, 14, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 08:37:14', '2023-10-06 08:37:14'),
(127, 14, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 08:37:59', '2023-10-06 08:37:59'),
(128, 14, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 08:38:10', '2023-10-06 08:38:10'),
(129, 14, 'umesh blocked ..!', 5, NULL, NULL, NULL, 'block', 0, 0, 0, 0, NULL, '2023-10-06 08:43:29', '2023-10-06 08:43:29'),
(130, 14, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 08:58:39', '2023-10-06 08:58:39'),
(131, 14, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 08:59:28', '2023-10-06 08:59:28'),
(132, 14, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 08:59:58', '2023-10-06 08:59:58'),
(133, 14, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 09:00:10', '2023-10-06 09:00:10'),
(134, 14, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 09:01:03', '2023-10-06 09:01:03'),
(135, 14, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 09:01:14', '2023-10-06 09:01:14'),
(136, 14, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 09:01:22', '2023-10-06 09:01:22'),
(137, 14, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 09:02:09', '2023-10-06 09:02:09'),
(138, 14, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 09:02:26', '2023-10-06 09:02:26'),
(139, 14, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 09:03:56', '2023-10-06 09:03:56'),
(140, 14, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 09:06:22', '2023-10-06 09:06:22'),
(141, 14, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 09:06:31', '2023-10-06 09:06:31'),
(142, 14, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 09:07:07', '2023-10-06 09:07:07'),
(143, 14, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 09:11:10', '2023-10-06 09:11:10'),
(144, 14, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 09:12:44', '2023-10-06 09:12:44'),
(145, 14, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 09:13:27', '2023-10-06 09:13:27'),
(146, 14, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 09:14:11', '2023-10-06 09:14:11'),
(147, 14, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 09:14:36', '2023-10-06 09:14:36'),
(148, 14, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 09:17:01', '2023-10-06 09:17:01'),
(149, 14, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 09:17:17', '2023-10-06 09:17:17'),
(150, 14, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 09:17:51', '2023-10-06 09:17:51'),
(151, 2, 'jk blocked primocys..!', 12, NULL, NULL, NULL, 'block', 0, 0, 0, 0, NULL, '2023-10-06 09:18:03', '2023-10-06 09:18:03'),
(152, 14, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 09:18:54', '2023-10-06 09:18:54'),
(153, 14, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 09:19:43', '2023-10-06 09:19:43'),
(154, 14, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 09:20:16', '2023-10-06 09:20:16'),
(155, 14, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 09:20:51', '2023-10-06 09:20:51'),
(156, 14, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 09:21:03', '2023-10-06 09:21:03'),
(157, 14, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 09:21:17', '2023-10-06 09:21:17'),
(158, 14, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 09:21:36', '2023-10-06 09:21:36'),
(159, 14, 'done', 14, '', '', 0, NULL, 0, 0, 0, 0, '', '2023-10-06 09:25:13', '2023-10-06 09:25:13'),
(160, 14, 'done', 13, '', '', 0, NULL, 0, 0, 0, 0, '', '2023-10-06 09:25:35', '2023-10-06 09:25:35'),
(161, 9, 'Audio call initiated.', 2, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 09:26:49', '2023-10-06 09:26:49'),
(162, 9, 'Audio call initiated.', 2, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-06 09:29:51', '2023-10-06 09:29:51'),
(163, 16, 'hshss', 2, '', '', 0, 'text', 0, 0, 0, 0, '', '2023-10-06 09:47:48', '2023-10-06 09:47:48'),
(164, 2, 'jk blocked arpansagar..!', 16, NULL, NULL, NULL, 'block', 0, 0, 0, 0, NULL, '2023-10-06 09:47:59', '2023-10-06 09:47:59'),
(165, 2, 'jk Unblocked arpansagar..!', 16, NULL, NULL, NULL, 'block', 0, 0, 0, 0, NULL, '2023-10-06 09:48:11', '2023-10-06 09:48:11'),
(166, 17, 'fgg', 17, '', '', 0, 'text', 0, 0, 0, 0, '', '2023-10-06 11:19:55', '2023-10-06 11:19:55'),
(167, 18, 'Hi', 2, '', '', 0, 'text', 0, 0, 0, 0, '', '2023-10-07 15:46:48', '2023-10-07 15:46:48'),
(168, 18, 'Audio call initiated.', 2, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-07 15:47:04', '2023-10-07 15:47:04'),
(169, 18, 'jk08 blocked jk..!', 2, NULL, NULL, NULL, 'block', 0, 0, 0, 0, NULL, '2023-10-07 15:47:14', '2023-10-07 15:47:14'),
(170, 18, 'jk08 Unblocked jk..!', 2, NULL, NULL, NULL, 'block', 0, 0, 0, 0, NULL, '2023-10-07 15:47:21', '2023-10-07 15:47:21'),
(171, 18, 'Audio call initiated.', 2, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-08 10:14:59', '2023-10-08 10:14:59'),
(172, 15, 'hiiiiiii', 2, '', '', 0, 'text', 0, 0, 0, 0, '', '2023-10-09 00:12:31', '2023-10-09 00:12:31'),
(173, 15, 'hhhhhh', 2, '', '', 0, 'text', 0, 0, 0, 0, '', '2023-10-09 00:12:40', '2023-10-09 00:12:40'),
(175, 15, 'Audio call initiated.', 2, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 00:14:42', '2023-10-09 00:14:42'),
(176, 2, 'giiiii', 15, '', '', 0, 'text', 0, 0, 0, 0, '', '2023-10-09 00:18:33', '2023-10-09 00:18:33'),
(177, 15, 'Audio call initiated.', 2, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 00:18:51', '2023-10-09 00:18:51'),
(178, 15, 'Audio call initiated.', 2, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 00:24:03', '2023-10-09 00:24:03'),
(179, 15, 'Audio call initiated.', 2, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 00:27:30', '2023-10-09 00:27:30'),
(180, 15, 'Audio call initiated.', 2, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 00:28:21', '2023-10-09 00:28:21'),
(181, 15, 'Audio call initiated.', 2, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 00:36:05', '2023-10-09 00:36:05'),
(182, 14, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 00:39:28', '2023-10-09 00:39:28'),
(183, 14, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 00:40:00', '2023-10-09 00:40:00'),
(184, 14, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 00:43:02', '2023-10-09 00:43:02'),
(185, 14, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 00:44:46', '2023-10-09 00:44:46'),
(186, 14, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 00:45:07', '2023-10-09 00:45:07'),
(187, 15, 'Audio call initiated.', 2, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 00:45:10', '2023-10-09 00:45:10'),
(188, 15, 'Audio call initiated.', 2, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 00:45:23', '2023-10-09 00:45:23'),
(189, 14, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 00:45:42', '2023-10-09 00:45:42'),
(190, 14, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 00:47:35', '2023-10-09 00:47:35'),
(191, 15, 'Missed call at 06:21', 2, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 00:51:42', '2023-10-09 00:51:42'),
(192, 14, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 00:55:25', '2023-10-09 00:55:25'),
(193, 14, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 00:56:53', '2023-10-09 00:56:53'),
(194, 14, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 01:03:30', '2023-10-09 01:03:30'),
(195, 14, 'Missed call at 06:34', 3, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 01:04:06', '2023-10-09 01:04:06'),
(196, 15, 'Audio call initiated.', 2, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 01:16:16', '2023-10-09 01:16:16'),
(197, 15, 'Audio call initiated.', 2, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 01:21:43', '2023-10-09 01:21:43'),
(198, 15, 'Audio call initiated.', 2, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 01:22:23', '2023-10-09 01:22:23'),
(199, 15, 'Audio call initiated.', 2, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 01:27:59', '2023-10-09 01:27:59'),
(200, NULL, 'Missed call at 06:58', 2, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 01:28:29', '2023-10-09 01:28:29'),
(201, 15, 'Audio call initiated.', 2, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 01:31:56', '2023-10-09 01:31:56'),
(202, NULL, 'Missed call at 07:02', 2, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 01:32:27', '2023-10-09 01:32:27'),
(203, 15, 'Audio call initiated.', 2, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 01:46:55', '2023-10-09 01:46:55'),
(204, NULL, 'Missed call at 07:17', 2, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 01:47:24', '2023-10-09 01:47:24'),
(205, 15, 'Audio call initiated.', 2, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 01:59:33', '2023-10-09 01:59:33'),
(206, NULL, 'Missed call at 07:30', 2, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 02:00:00', '2023-10-09 02:00:00'),
(207, 14, 'Audio call initiated.', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 02:01:48', '2023-10-09 02:01:48'),
(208, 2, 'Audio call initiated.', 18, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 02:05:49', '2023-10-09 02:05:49'),
(209, 3, 'Audio call initiated.', 8, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 03:15:43', '2023-10-09 03:15:43'),
(210, 3, 'Audio call initiated.', 8, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 03:25:29', '2023-10-09 03:25:29'),
(211, 3, 'Audio call initiated.', 8, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 03:49:19', '2023-10-09 03:49:19'),
(212, 2, 'Audio call initiated.', 18, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 03:57:00', '2023-10-09 03:57:00'),
(213, NULL, 'Missed call at 09:27', 18, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 03:57:28', '2023-10-09 03:57:28'),
(214, 2, 'Audio call initiated.', 18, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 03:58:29', '2023-10-09 03:58:29'),
(215, NULL, 'Missed call at 09:29', 18, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 03:59:27', '2023-10-09 03:59:27'),
(216, 2, 'jk Unblocked primocys..!', 12, NULL, NULL, NULL, 'block', 0, 0, 0, 0, NULL, '2023-10-09 04:01:06', '2023-10-09 04:01:06'),
(217, 2, 'Audio call initiated.', 12, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 04:01:14', '2023-10-09 04:01:14'),
(218, 15, 'Audio call initiated.', 2, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 04:08:05', '2023-10-09 04:08:05'),
(219, 3, 'Audio call initiated.', 12, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 04:12:34', '2023-10-09 04:12:34'),
(220, 3, 'Audio call initiated.', 2, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 04:13:05', '2023-10-09 04:13:05'),
(221, NULL, 'Missed call at 09:45', 3, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 04:15:45', '2023-10-09 04:15:45'),
(222, 3, 'Audio call initiated.', 2, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 04:16:16', '2023-10-09 04:16:16'),
(223, NULL, 'Missed call at 09:47', 3, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 04:17:29', '2023-10-09 04:17:29'),
(224, 3, 'Audio call initiated.', 2, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 04:17:36', '2023-10-09 04:17:36'),
(225, NULL, 'Missed call at 09:51', 3, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 04:21:53', '2023-10-09 04:21:53'),
(226, 15, 'Audio call initiated.', 2, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 04:27:58', '2023-10-09 04:27:58'),
(227, 15, 'Audio call initiated.', 2, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 04:33:03', '2023-10-09 04:33:03'),
(228, 15, 'Audio call initiated.', 2, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 04:39:49', '2023-10-09 04:39:49'),
(229, 15, 'Audio call initiated.', 2, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 04:45:23', '2023-10-09 04:45:23'),
(230, NULL, 'Missed call at 10:15', 15, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 04:45:28', '2023-10-09 04:45:28'),
(231, 15, 'Audio call initiated.', 2, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 04:45:29', '2023-10-09 04:45:29'),
(232, 15, 'Audio call initiated.', 2, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 04:46:33', '2023-10-09 04:46:33'),
(233, NULL, 'Missed call at 10:18', 2, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 04:48:53', '2023-10-09 04:48:53'),
(234, 15, 'Audio call initiated.', 2, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 04:50:13', '2023-10-09 04:50:13'),
(235, NULL, 'Missed call at 10:22', 2, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 04:52:33', '2023-10-09 04:52:33'),
(236, 15, 'Audio call initiated.', 2, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 04:54:36', '2023-10-09 04:54:36'),
(237, 15, 'Audio call initiated.', 2, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 04:55:36', '2023-10-09 04:55:36'),
(238, 15, 'hiii', 2, '', '', 0, 'text', 0, 0, 0, 0, '', '2023-10-09 05:01:32', '2023-10-09 05:01:32'),
(239, 15, 'Audio call initiated.', 2, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 05:01:45', '2023-10-09 05:01:45'),
(240, NULL, 'Missed call at 10:34', 2, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 05:04:03', '2023-10-09 05:04:03'),
(241, 15, 'Audio call initiated.', 2, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 05:04:35', '2023-10-09 05:04:35'),
(242, 15, 'Audio call initiated.', 2, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 05:05:36', '2023-10-09 05:05:36'),
(243, 15, 'Audio call initiated.', 2, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 05:06:49', '2023-10-09 05:06:49'),
(244, NULL, 'Missed call at 10:39', 2, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 05:09:10', '2023-10-09 05:09:10'),
(245, 15, 'Audio call initiated.', 2, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 05:09:13', '2023-10-09 05:09:13'),
(246, 15, 'Audio call initiated.', 2, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 05:10:28', '2023-10-09 05:10:28'),
(247, 15, 'Audio call initiated.', 2, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 05:30:53', '2023-10-09 05:30:53'),
(248, NULL, 'Missed call at 11:01', 2, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 05:31:20', '2023-10-09 05:31:20'),
(249, 15, 'Audio call initiated.', 2, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 05:33:51', '2023-10-09 05:33:51'),
(250, NULL, 'Missed call at 11:04', 2, NULL, NULL, NULL, 'call', 0, 0, 0, 0, NULL, '2023-10-09 05:34:18', '2023-10-09 05:34:18');

-- --------------------------------------------------------

--
-- Table structure for table `chat_accept`
--

CREATE TABLE `chat_accept` (
  `id` int(11) NOT NULL,
  `from_user` int(11) DEFAULT NULL,
  `to_user` int(11) DEFAULT NULL,
  `is_status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chat_accept`
--

INSERT INTO `chat_accept` (`id`, `from_user`, `to_user`, `is_status`, `created_at`, `updated_at`) VALUES
(1, 13, 14, '1', '2023-10-06 07:07:48', '2023-10-06 07:16:54'),
(2, 2, 12, '1', '2023-10-06 09:16:48', '2023-10-06 09:16:48'),
(3, 9, 2, '1', '2023-10-06 09:26:42', '2023-10-06 09:26:42'),
(4, 16, 2, '1', '2023-10-06 09:47:28', '2023-10-06 09:47:29'),
(5, 2, 16, '1', '2023-10-06 09:48:06', '2023-10-06 09:48:08'),
(6, 2, 9, '1', '2023-10-06 10:10:12', '2023-10-06 10:10:12'),
(7, 18, 2, '1', '2023-10-07 15:46:59', '2023-10-07 15:46:59'),
(8, 15, 2, '1', '2023-10-09 00:11:38', '2023-10-09 00:11:38'),
(9, 2, 15, '1', '2023-10-09 00:18:22', '2023-10-09 00:18:22'),
(10, 2, 18, '1', '2023-10-09 02:05:43', '2023-10-09 02:05:43');

-- --------------------------------------------------------

--
-- Table structure for table `chat_lock`
--

CREATE TABLE `chat_lock` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `locked_user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chat_lock`
--

INSERT INTO `chat_lock` (`id`, `user_id`, `locked_user_id`, `created_at`, `updated_at`, `password`) VALUES
(2, 3, 8, '2023-10-04 03:32:40', '2023-10-04 03:32:40', '123456'),
(3, 3, 1, '2023-10-04 07:17:43', '2023-10-04 07:17:43', '123456'),
(6, 12, 2, '2023-10-05 09:02:42', '2023-10-05 09:02:42', '1234'),
(7, 2, 15, '2023-10-06 04:28:15', '2023-10-06 04:28:15', '2580');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_07_094312_create_admins_table', 2),
(6, '2023_11_07_123408_create_admin_profiles_table', 3),
(7, '2023_11_07_124212_add_image_to_admin_profiles_table', 4),
(8, '2023_11_09_064004_create_admin_profiles_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 2, 'jakvan.primocys@gmail.com', 'cfb194efea5e2098a6a8d124c65b51b7c1cc5863add44f9c97285391dbb81552', '[\"*\"]', NULL, NULL, '2023-09-26 00:28:55', '2023-09-26 00:28:55'),
(2, 'App\\Models\\User', 5, 'jk@gmail.com', '9526dca2d6e378ebdef858afec18224b1e58790c9e0150bfd41ff37339642b07', '[\"*\"]', NULL, NULL, '2023-09-26 03:40:34', '2023-09-26 03:40:34'),
(3, 'App\\Models\\User', 1, 'pradip.primocys@gmail.com', '673147d63bab65d23d4858be4f30078ae183ca7c1ab3225da7eeb4f63a66fc5c', '[\"*\"]', NULL, NULL, '2023-09-26 05:34:33', '2023-09-26 05:34:33'),
(4, 'App\\Models\\User', 5, 'jk@gmail.com', '7db6610d97b5aaa1c1f6a5068047d9b814a59d8e280e3527dcdd4dac1f302fd6', '[\"*\"]', NULL, NULL, '2023-09-26 05:40:16', '2023-09-26 05:40:16'),
(5, 'App\\Models\\User', 1, 'pradip.primocys@gmail.com', '36e64ba235f1154694d3f15c5f323e06ad078166b3ae85a64b64569b656c727d', '[\"*\"]', NULL, NULL, '2023-09-26 05:40:27', '2023-09-26 05:40:27'),
(6, 'App\\Models\\User', 2, 'jakvan.primocys@gmail.com', '48895a29e1e6246a207c3c58479bc529754ea1d7cd4d6de7512901bb05167aab', '[\"*\"]', NULL, NULL, '2023-09-26 05:45:04', '2023-09-26 05:45:04'),
(7, 'App\\Models\\User', 2, 'jakvan.primocys@gmail.com', '329b5f1d6dd77ab15b2a76eca7978b69c91b710f7f65a471c3e8709f5236aed4', '[\"*\"]', NULL, NULL, '2023-09-26 06:36:27', '2023-09-26 06:36:27'),
(8, 'App\\Models\\User', 2, 'jakvan.primocys@gmail.com', '76e5a359b292afbc4e69b07393050158272efc5977f18e7666768fa3c2cb0ce9', '[\"*\"]', NULL, NULL, '2023-09-26 06:38:37', '2023-09-26 06:38:37'),
(9, 'App\\Models\\User', 2, 'jakvan.primocys@gmail.com', 'f38cf6f405354d245a88bea808d062dfe6a714eb97facd3d43292c5fa85fc3f5', '[\"*\"]', NULL, NULL, '2023-09-26 06:48:05', '2023-09-26 06:48:05'),
(10, 'App\\Models\\User', 2, 'jakvan.primocys@gmail.com', 'f6e0ab5021e5745a441cc0f6017cdb496ba38c938da6d241023229a8e92bd19a', '[\"*\"]', NULL, NULL, '2023-09-26 07:17:09', '2023-09-26 07:17:09'),
(11, 'App\\Models\\User', 2, 'jakvan.primocys@gmail.com', 'cedf5fe4e95a4acc4774f9e3c26102efe2ab2e188ffef40410b45d2004c00633', '[\"*\"]', NULL, NULL, '2023-09-26 07:20:45', '2023-09-26 07:20:45'),
(12, 'App\\Models\\User', 2, 'jakvan.primocys@gmail.com', '5f22520166f39729a7c067b30475055d3727c1dbaff47253094c0523ffb2669d', '[\"*\"]', NULL, NULL, '2023-09-26 08:40:47', '2023-09-26 08:40:47'),
(13, 'App\\Models\\User', 9, 'MyApp', 'fad5fcd669e48cf918ecdb2907b6c4ccacdfc57bec2388cba71622342f788b88', '[\"*\"]', NULL, NULL, '2023-10-03 00:10:50', '2023-10-03 00:10:50'),
(14, 'App\\Models\\User', 9, 'MyApp', '2e9d1b8e755464b2fa519f38873e1ba819f2345b7ab02a1049b45db84d6d3367', '[\"*\"]', NULL, NULL, '2023-10-03 00:10:57', '2023-10-03 00:10:57'),
(15, 'App\\Models\\User', 9, 'MyApp', '71cf0184f340c8245a7679a21daaa37c9a6309763a8f85baa62dece9574daa31', '[\"*\"]', NULL, NULL, '2023-10-03 00:10:59', '2023-10-03 00:10:59'),
(16, 'App\\Models\\User', 1, 'MyApp', '5fd5ffe3759f90a3e98929bceb3183f230c46fce0f9f589ab9035ba7f0b70834', '[\"*\"]', NULL, NULL, '2023-10-03 00:13:11', '2023-10-03 00:13:11'),
(17, 'App\\Models\\User', 8, 'MyApp', 'fc57cc88ada325dbc4f6a8608e2ad54362604f306f2d88ad2b034a16fad9b62d', '[\"*\"]', NULL, NULL, '2023-10-03 00:15:50', '2023-10-03 00:15:50'),
(18, 'App\\Models\\User', 8, 'MyApp', '3af9a0857cfd91e0df04d8ac29120f51f1a45ff6f7fbcaa6240fabbe53017ebc', '[\"*\"]', NULL, NULL, '2023-10-03 00:35:33', '2023-10-03 00:35:33'),
(19, 'App\\Models\\User', 1, 'MyApp', 'b0b8711819190ff06d4330f46b6ef5ad2f509dfc5ff418b925fe3ba7d3daa23f', '[\"*\"]', NULL, NULL, '2023-10-03 00:36:01', '2023-10-03 00:36:01'),
(20, 'App\\Models\\User', 1, 'MyApp', 'deec4a227fbc27c47953ff16c67116bdec08d51c5e8e0d138ee0bfaad1ab1531', '[\"*\"]', NULL, NULL, '2023-10-03 00:36:42', '2023-10-03 00:36:42'),
(21, 'App\\Models\\User', 10, 'MyApp', '798b617ec43c304b2ba55eeab0379ccb61f9669177fbfc2f029ac307c0a9f410', '[\"*\"]', NULL, NULL, '2023-10-03 00:51:14', '2023-10-03 00:51:14'),
(22, 'App\\Models\\User', 10, 'MyApp', 'dceefd061a54163edc0df792d80b7f5382a7333c1265fdf255952e93428d7649', '[\"*\"]', NULL, NULL, '2023-10-03 00:58:12', '2023-10-03 00:58:12'),
(23, 'App\\Models\\User', 10, 'MyApp', 'ae9ed785f5702651a12d241b8e0c394004e1b8327ef67afe1ec50e52c569f306', '[\"*\"]', NULL, NULL, '2023-10-03 00:59:51', '2023-10-03 00:59:51'),
(24, 'App\\Models\\User', 10, 'MyApp', 'f4b2c38126f8dcb4b950c0eb2d5627ed49b56dfec62c4d69fa7e73f2788d1fde', '[\"*\"]', NULL, NULL, '2023-10-03 01:00:57', '2023-10-03 01:00:57'),
(25, 'App\\Models\\User', 8, 'MyApp', '26425fc242e93574350b5992ce937f1b4aedfec9b9e4f1d048a1bf7e07b7396f', '[\"*\"]', NULL, NULL, '2023-10-03 01:02:15', '2023-10-03 01:02:15'),
(26, 'App\\Models\\User', 8, 'MyApp', '0188ea06eb1d44bbf6618f8d96754e60ca7bcffe303debf9c32c311bfcc9de82', '[\"*\"]', NULL, NULL, '2023-10-03 01:10:26', '2023-10-03 01:10:26'),
(27, 'App\\Models\\User', 8, 'MyApp', '1b17448dc480079718b1c30d0f35b32064639c69683cd7c2330fb412d32758d0', '[\"*\"]', NULL, NULL, '2023-10-03 01:10:45', '2023-10-03 01:10:45'),
(28, 'App\\Models\\User', 11, 'MyApp', 'aac66ffe6337573d817eab91af31ffbd794ebfac7e5180c920e3f8fe7f05b96d', '[\"*\"]', NULL, NULL, '2023-10-03 01:25:07', '2023-10-03 01:25:07'),
(29, 'App\\Models\\User', 9, 'MyApp', '558a8010ce8b417afabac69f2af983ff149f9f018196e3d86bfb454bf62b3da7', '[\"*\"]', NULL, NULL, '2023-10-03 01:58:18', '2023-10-03 01:58:18'),
(30, 'App\\Models\\User', 8, 'MyApp', '4877be1b17d759eee26b85f4ea9704510b85b978a17c7bd9f57b6e9362497a31', '[\"*\"]', '2023-10-06 08:34:03', NULL, '2023-10-03 03:07:15', '2023-10-06 08:34:03'),
(31, 'App\\Models\\User', 9, 'MyApp', '70232083ce7a0a866292de6609614bbfcbbd1de90eb717ed5a8099852758a5c5', '[\"*\"]', '2023-10-06 09:28:22', NULL, '2023-10-03 07:31:20', '2023-10-06 09:28:22'),
(32, 'App\\Models\\User', 3, 'MyApp', '311e82acea8bc53a041c9ba04571eacccaa935c48dcb49383939a5bc7a51c9b3', '[\"*\"]', '2023-10-05 23:58:24', NULL, '2023-10-04 01:21:50', '2023-10-05 23:58:24'),
(33, 'App\\Models\\User', 12, 'MyApp', '08d2a6fcdd2ba4240d07b9069b8437863f4deca520c707d983a16c9661641dea', '[\"*\"]', '2023-10-04 08:52:06', NULL, '2023-10-04 08:48:59', '2023-10-04 08:52:06'),
(34, 'App\\Models\\User', 3, 'MyApp', '2520cef1af7ac14c6660c82f6997376479889459d6bcfc6d3fb045f38217ffd6', '[\"*\"]', NULL, NULL, '2023-10-05 00:20:54', '2023-10-05 00:20:54'),
(35, 'App\\Models\\User', 3, 'MyApp', '95e11003a5f4ef2111360619cf5d2eef68e6ab587833933589463d656140cfc2', '[\"*\"]', NULL, NULL, '2023-10-05 00:33:46', '2023-10-05 00:33:46'),
(36, 'App\\Models\\User', 3, 'MyApp', '513f411a5c1741a5d9c53ec99784ba9f3d5aba9b8321a11704dafd8cd9d0c5df', '[\"*\"]', NULL, NULL, '2023-10-05 00:34:03', '2023-10-05 00:34:03'),
(37, 'App\\Models\\User', 3, 'MyApp', '37408da1ee2f164ea7b6d387856a8d7660573a2a6535ccc92ab5f64198f9faff', '[\"*\"]', NULL, NULL, '2023-10-05 00:34:37', '2023-10-05 00:34:37'),
(38, 'App\\Models\\User', 3, 'MyApp', 'c92ce9f4e8101d1dddf836f659695871c8ec1e5d85414607cc4ee612b8e28eec', '[\"*\"]', NULL, NULL, '2023-10-05 00:35:13', '2023-10-05 00:35:13'),
(39, 'App\\Models\\User', 3, 'MyApp', '0300212590113d90702007c665f20aea9cd46a9af2c1739a9c09613a6fb28916', '[\"*\"]', NULL, NULL, '2023-10-05 00:35:38', '2023-10-05 00:35:38'),
(40, 'App\\Models\\User', 3, 'MyApp', 'cfe2d9afea6d6cf2e5ce83d1726fd935f202f76d0973f2f4c1c04a464003c679', '[\"*\"]', NULL, NULL, '2023-10-05 00:36:05', '2023-10-05 00:36:05'),
(41, 'App\\Models\\User', 3, 'MyApp', '48b77d9370801aafc6a5a3266979cbe807311f623284366226551901e01dee50', '[\"*\"]', NULL, NULL, '2023-10-05 00:36:28', '2023-10-05 00:36:28'),
(42, 'App\\Models\\User', 3, 'MyApp', 'c71a1f897c2f94e6f5c9e5caab15dd3635b7ec40c291950f472e45b537306c50', '[\"*\"]', NULL, NULL, '2023-10-05 00:41:50', '2023-10-05 00:41:50'),
(43, 'App\\Models\\User', 3, 'MyApp', 'a543ffba52fb9826a8804ebd3dad61c2fa54dc968780a56e0914f498843a86ba', '[\"*\"]', NULL, NULL, '2023-10-05 00:42:58', '2023-10-05 00:42:58'),
(44, 'App\\Models\\User', 3, 'MyApp', '858d367d760f8f0426838ad91a445715768facf312b8ee4a178fc37a57dec398', '[\"*\"]', NULL, NULL, '2023-10-05 00:44:51', '2023-10-05 00:44:51'),
(45, 'App\\Models\\User', 3, 'MyApp', '70876733e5624ec6a74996efd019419e294d3ca3d1f8683600e02deb04690473', '[\"*\"]', NULL, NULL, '2023-10-05 00:45:20', '2023-10-05 00:45:20'),
(46, 'App\\Models\\User', 3, 'MyApp', 'e9270bbc0f7bbe3cf2852085bdb1e820c50a990852b91ac33dfce7d37034eb28', '[\"*\"]', NULL, NULL, '2023-10-05 00:46:27', '2023-10-05 00:46:27'),
(47, 'App\\Models\\User', 3, 'MyApp', '38b6359c8e00b8c4e48c3b05be19c02d132f8912e030b1224b02cb73f72b8c5b', '[\"*\"]', NULL, NULL, '2023-10-05 00:46:35', '2023-10-05 00:46:35'),
(48, 'App\\Models\\User', 2, 'MyApp', 'e618326897f7fa409b523924bb519ca1b6197b332f84f194608bd1d1375908b1', '[\"*\"]', NULL, NULL, '2023-10-05 00:57:26', '2023-10-05 00:57:26'),
(49, 'App\\Models\\User', 2, 'MyApp', '26fc518eb15127a2c9d9d730386572b93914c4584dbebd18318e1172b592d1e6', '[\"*\"]', NULL, NULL, '2023-10-05 01:10:12', '2023-10-05 01:10:12'),
(50, 'App\\Models\\User', 2, 'MyApp', 'c74396ebffcac35aabdc0a54249cf58fbcb9ccebc440da997338d4a211c71fed', '[\"*\"]', NULL, NULL, '2023-10-05 01:10:51', '2023-10-05 01:10:51'),
(51, 'App\\Models\\User', 3, 'MyApp', '6b98d65726fe3e5a795b83e238b2f71c996d85a208879c188c7ce9ad525b93c2', '[\"*\"]', '2023-10-09 04:17:36', NULL, '2023-10-05 01:11:19', '2023-10-09 04:17:36'),
(52, 'App\\Models\\User', 2, 'MyApp', '22ac80579dd43d22a9e185db16a864e562b9987c65c096967d47c0a69a1eeaa5', '[\"*\"]', NULL, NULL, '2023-10-05 01:12:05', '2023-10-05 01:12:05'),
(53, 'App\\Models\\User', 2, 'MyApp', 'df1ed8b3b08ea05079ac3040e60ccfae61cd5c66b46678e4c1f7fe9f63722b7b', '[\"*\"]', '2023-10-05 03:28:07', NULL, '2023-10-05 01:16:38', '2023-10-05 03:28:07'),
(54, 'App\\Models\\User', 2, 'MyApp', '5b2247a14e3fbef521707eaef386ae1d78d1dda6a8ee19f20d982972aac421ed', '[\"*\"]', '2023-10-05 23:55:50', NULL, '2023-10-05 03:49:06', '2023-10-05 23:55:50'),
(55, 'App\\Models\\User', 2, 'MyApp', '0e333105773f6950333c1f9b2ad0862696ace488b093f34ff9f4dd6a1343e6df', '[\"*\"]', '2023-10-06 00:34:24', NULL, '2023-10-05 03:58:31', '2023-10-06 00:34:24'),
(56, 'App\\Models\\User', 12, 'MyApp', '2289ccd6ec75666f72fec4e4a856f982d4f056da7b9e52306c90da7273ebd14b', '[\"*\"]', '2023-10-05 09:06:09', NULL, '2023-10-05 08:58:33', '2023-10-05 09:06:09'),
(57, 'App\\Models\\User', 13, 'MyApp', 'a39cbc83b1eaad382e7e834a6293ad0c2a7c02c75ec3e203665d103499d79877', '[\"*\"]', '2023-10-06 08:06:49', NULL, '2023-10-06 00:02:15', '2023-10-06 08:06:49'),
(58, 'App\\Models\\User', 14, 'MyApp', '9806fcf167041be013cb4b6552f42ecb641a886cae9d22cd220884ae0ec1cbed', '[\"*\"]', '2023-10-09 02:00:56', NULL, '2023-10-06 00:02:59', '2023-10-09 02:00:56'),
(59, 'App\\Models\\User', 14, 'MyApp', '6a33db1259839c45970baa60b9f63e7e12ca025693087b20cd75da19abe6f7c4', '[\"*\"]', NULL, NULL, '2023-10-06 01:47:35', '2023-10-06 01:47:35'),
(60, 'App\\Models\\User', 9, 'MyApp', 'ae5b7c279ecb70eccb793abf9a8c92cd04634a6eaafd85f0914569310aa50d0f', '[\"*\"]', NULL, NULL, '2023-10-06 01:59:19', '2023-10-06 01:59:19'),
(61, 'App\\Models\\User', 9, 'MyApp', '447d11585df3b09a6abeb2baff951a9ae4674e202eecf38c9d707d3e963a0abf', '[\"*\"]', '2023-10-06 03:08:39', NULL, '2023-10-06 02:02:29', '2023-10-06 03:08:39'),
(62, 'App\\Models\\User', 2, 'MyApp', '5dfde3e54df41e2fec673c81386383b10537dfb1a26cec46c1792bed1f61ba39', '[\"*\"]', '2023-10-06 04:08:54', NULL, '2023-10-06 03:21:10', '2023-10-06 04:08:54'),
(63, 'App\\Models\\User', 15, 'MyApp', '9bdf5a8b304fd4a9fcbd69ede2a22c5bb835b16e9fcae78d39baf10127a2dbfd', '[\"*\"]', '2023-10-09 05:42:17', NULL, '2023-10-06 04:05:22', '2023-10-09 05:42:17'),
(64, 'App\\Models\\User', 2, 'MyApp', '1a4594a63d196f2f39e1e8a12061abc34643a849b78c5f7219b36c3f74b52b51', '[\"*\"]', '2023-10-06 05:52:02', NULL, '2023-10-06 04:09:31', '2023-10-06 05:52:02'),
(65, 'App\\Models\\User', 2, 'MyApp', 'e851e1780977f368e2136ebf1a721a88283c7e8f432a6e386e3e9983d4776edc', '[\"*\"]', '2023-10-09 05:33:27', NULL, '2023-10-06 06:01:55', '2023-10-09 05:33:27'),
(66, 'App\\Models\\User', 12, 'MyApp', '427b65c60f53c2e81191d84134b1a9b178e826153ec09526b8fa4eac7aed1acf', '[\"*\"]', '2023-10-06 07:42:12', NULL, '2023-10-06 06:24:42', '2023-10-06 07:42:12'),
(67, 'App\\Models\\User', 15, 'MyApp', '2c8f2dd96d0e25dd2fdf2804b8b5b5dca34aab8a18d5969a75ffd7788981790e', '[\"*\"]', '2023-10-06 08:52:58', NULL, '2023-10-06 07:48:13', '2023-10-06 08:52:58'),
(68, 'App\\Models\\User', 14, 'MyApp', 'b6b9841e458e2cf50079a5c03af2dfdf1658caa39f79c12347a263b2ff316b4f', '[\"*\"]', NULL, NULL, '2023-10-06 08:24:30', '2023-10-06 08:24:30'),
(69, 'App\\Models\\User', 9, 'MyApp', '397302bff687c61c656657b8f5a11624bea54b7a0dcb836a6c0b1b1274d1a224', '[\"*\"]', '2023-10-06 09:34:13', NULL, '2023-10-06 09:26:14', '2023-10-06 09:34:13'),
(70, 'App\\Models\\User', 16, 'MyApp', 'b533df49988e9e0cc2da884e4513d2a8defbd4206512954ea2b0820341964be5', '[\"*\"]', '2023-10-06 10:07:07', NULL, '2023-10-06 09:46:17', '2023-10-06 10:07:07'),
(71, 'App\\Models\\User', 17, 'MyApp', '9e45214f61c1a275d61b3bac4addb05a1d21d0359547105af3cfe1c10b1549b1', '[\"*\"]', '2023-10-06 11:20:36', NULL, '2023-10-06 11:16:55', '2023-10-06 11:20:36'),
(72, 'App\\Models\\User', 18, 'MyApp', '72ca34db93ad9ff10c1cdd2d5e6753eafb285476fda886ba16c349a3e3c49132', '[\"*\"]', '2023-10-08 00:17:49', NULL, '2023-10-07 15:46:08', '2023-10-08 00:17:49'),
(73, 'App\\Models\\User', 18, 'MyApp', 'd0da0648341e8871c36f342b9e4831c826bba1136df64e37047501e43481f7e0', '[\"*\"]', '2023-10-09 02:09:28', NULL, '2023-10-08 10:12:59', '2023-10-09 02:09:28'),
(74, 'App\\Models\\User', 14, 'MyApp', 'af99c2654350714a8379ae58ca5bca88f8fc28f611d42a612d945e46873a23dd', '[\"*\"]', '2023-10-09 02:01:48', NULL, '2023-10-09 00:52:53', '2023-10-09 02:01:48'),
(75, 'App\\Models\\User', 3, 'MyApp', '384959483435e6bffb8c679501769168f80cc7a23baa82f767186b7c09139017', '[\"*\"]', '2023-10-09 04:02:55', NULL, '2023-10-09 03:11:55', '2023-10-09 04:02:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `otp` varchar(255) DEFAULT NULL,
  `otp_expiry` timestamp NULL DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `profile_pic` text DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `device_token` varchar(255) DEFAULT NULL,
  `video_token` text DEFAULT NULL,
  `about` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `mobile`, `password`, `otp`, `otp_expiry`, `status`, `profile_pic`, `remember_token`, `device_token`, `video_token`, `about`, `created_at`, `updated_at`) VALUES
(2, 'jk', 'jacdsckvan.primocys@gmail.com', NULL, NULL, '3216', NULL, 'Active', 'img-2.jpg', NULL, 'f4tcWjk4TV2dyPMJLdaiKp:APA91bFaZG-kDZxTtNhHYZ557oOu6mJ5es3AUbnAUCYWCXMC5i0ntZ3_eV_RuqgIfkDWQJtKWgZxAPiH-fchOwNZfOJ5jw6IBHcmr1v0ovql-5owaxgVl-OwVZ_fmunL7lE3_wEVLtOr', '006ab6c288b0598439295973e11f8dfd080IABBSh7w770bpc1tpBgx2YsutYSJcS7j+Y8PzsagzNR1ys1EU08AAAAAIgD8egAA4hklZQQAAQBy1iNlAwBy1iNlAgBy1iNlBABy1iNl', 'Available', '2023-05-26 00:26:17', '2023-10-09 04:01:14'),
(3, 'jakavan', 'javan.primocys@gmail.com', NULL, NULL, '1970', NULL, 'Block', '', NULL, 'asdfg', '006ab6c288b0598439295973e11f8dfd080IACznX+ntRSOpLj9ubvDEMweJLM8yskdie5evAF5fmXLBQ2+1RoAAAAAIgDoHAAAuB0lZQQAAQBI2iNlAwBI2iNlAgBI2iNlBABI2iNl', 'Busy', '2023-02-26 01:08:54', '2023-10-09 04:17:36'),
(4, 'Pawan', 'jk@outlook.com', NULL, NULL, '2806', NULL, 'Block', 'img-3.jpg', NULL, NULL, NULL, 'Not a moment', '2023-03-26 03:18:11', '2023-09-26 03:18:11'),
(9, 'jkk', 'padarvalajakvan@gmail.com', NULL, NULL, '5394', NULL, 'Active', 'img-4.jpeg', NULL, 'cmc5Ja5qScmhwuuMdSrSEa:APA91bHYhek7GphfBG_zqriEVj4HKMctU2PGssS-ZMXVifyNlY__HxRvMMJrub_ZaIwg0vA072GDpsXuoCAbzC7WIGaaRr2ZrvNnviBLQy2ak2LZ2LxZtultWsUBN8mSBryKCC8qGnfT', '006ab6c288b0598439295973e11f8dfd080IADP+qM6z0tPtLelXA0zXBmSRTTo39a+eN5mWj3q/CuH9w2+1RoAAAAAIgD3hgAAZ3IhZQQAAQD3LiBlAwD3LiBlAgD3LiBlBAD3LiBl', 'JK Knows', '2023-05-03 00:10:31', '2023-11-06 00:51:41'),
(10, 'Umang', 'umang.primocys11@gmail.com', NULL, NULL, '9703', NULL, 'Block', NULL, NULL, NULL, NULL, 'Api Created', '2023-06-03 00:49:00', '2023-11-10 03:43:12'),
(11, 'Dhyey', 'dd@gmail.com', '+917265907313', NULL, '7563', NULL, 'Block', 'img-7.jpeg', NULL, NULL, NULL, 'Dhyey knows', '2023-05-03 01:20:47', '2023-11-10 04:18:17'),
(12, 'primocys', 'arpan.primo@gmail.com', NULL, NULL, '3976', NULL, 'Block', '', NULL, 'fk8ulAmAT0uMBnpGbCIurl:APA91bHLaT6-1YxP7zwbpBIYslzPsoO7Z8B_e691sV6leDd9eMpjrodyLnA1vJZrwJgFf86iUyXfiVPpdMPzNsJb_QQAz4x2Ak3_2ugAziR-_9kNbYTmT0WowEhcdaRPotrT2l7WVwss', '006ab6c288b0598439295973e11f8dfd080IABaI7GGPhH2/AqUiCBhBNkspwHH1HcWOR+OCbYJmIpT7g2+1RoAAAAAIgALBAEAqVghZQQAAQA5FSBlAwA5FSBlAgA5FSBlBAA5FSBl', 'Company', '2023-08-04 08:48:46', '2023-11-10 00:59:31'),
(14, 'umesh', 'umang.primocys07@gmail.com', NULL, NULL, '6016', NULL, 'Block', '', NULL, 'asdfggghhhh', '006ab6c288b0598439295973e11f8dfd080IAAn70U5YtWVwh/KMy8yh9ldvPRgBt5QJZcvwaN3whqkXm7RN9EAAAAAIgBR1QAA5P0kZQQAAQB0uiNlAwB0uiNlAgB0uiNlBAB0uiNl', 'Kotak bank ', '2023-10-06 00:02:38', '2023-12-05 01:02:47'),
(15, 'Hardii', 'Amit.primocys@gmail.com', NULL, NULL, '3765', NULL, 'Active', 'img-7.jpeg', NULL, 'ezrVGFqASfGFu2JxW13QJW:APA91bEqOy2drY3HaJHY4GTcrA21nDV3BqSm2kE8t4AE8tyOzkTPFro_AABhgH2yGj5HSmcLfDEPT2F2wX7LNE9sTVl98-gXesteXhlrtQIq_3Wsycx2HRVUdJhJZiqNmCoa80S7ieOq', '006ab6c288b0598439295973e11f8dfd080IACa9Pe5T4uEyTc2pHwpA0ZeYwUbiglQfVBW7W2v9qJRCw2+1RoAAAAAIgBLngAAly8lZQQAAQAn7CNlAwAn7CNlAgAn7CNlBAAn7CNl', 'Busy', '2023-11-06 04:04:56', '2023-11-10 04:13:18'),
(16, 'arpansagar', 'primocys.seo@gmail.com', NULL, NULL, '3835', NULL, 'Active', 'img-4.jpeg', NULL, 'fgYSlLorTS-DiSKMFdE-pj:APA91bGSuonvTnYf97mS76Ln1IvRcF17bsBX-6ABXd_o6A3SRQ2dDAQe43ni3hBEUrGjoWlVxDDor-2MoXOD2f70vovPMConXuGQX-objEiMST1cLmOQMdJvFy_KKDYP_S8OEF70a7SD', NULL, 'CEO', '2023-12-06 09:46:05', '2023-11-06 23:54:13'),
(23, 'Amit ', 'umaxgng.primocys06@gmail.com', NULL, NULL, '7376', NULL, 'Active', NULL, NULL, NULL, NULL, 'Busy', '2023-05-06 00:01:24', '2023-11-10 03:29:05'),
(24, 'jakavan', 'jcdavan.primocys@gmail.com', NULL, NULL, '1970', NULL, 'Active', '', NULL, 'asdfg', '006ab6c288b0598439295973e11f8dfd080IACznX+ntRSOpLj9ubvDEMweJLM8yskdie5evAF5fmXLBQ2+1RoAAAAAIgDoHAAAuB0lZQQAAQBI2iNlAwBI2iNlAgBI2iNlBABI2iNl', 'Busy', '2023-05-26 01:08:54', '2023-12-05 01:02:41'),
(26, 'Arushi', 'ar7usghi@gads.com', NULL, NULL, NULL, NULL, 'Block', NULL, NULL, NULL, NULL, 'Hello', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_notification`
--

CREATE TABLE `user_notification` (
  `not_id` int(11) NOT NULL,
  `from_user` int(11) DEFAULT NULL,
  `to_user` int(11) DEFAULT NULL,
  `post_id` varchar(255) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `message` text DEFAULT NULL,
  `date` text DEFAULT NULL,
  `tokenid` varchar(255) DEFAULT NULL,
  `channelname` varchar(255) DEFAULT NULL,
  `call_type` varchar(255) DEFAULT NULL,
  `is_type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_notification`
--

INSERT INTO `user_notification` (`not_id`, `from_user`, `to_user`, `post_id`, `title`, `message`, `date`, `tokenid`, `channelname`, `call_type`, `is_type`, `created_at`, `updated_at`) VALUES
(1, 3, 14, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 01:36:18', '2023-10-06 01:36:18'),
(2, 14, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 05:01:18', '2023-10-06 05:01:18'),
(3, 14, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'audio_call', NULL, '2023-10-06 05:01:32', '2023-10-06 05:01:32'),
(4, 14, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'audio_call', NULL, '2023-10-06 05:02:32', '2023-10-06 05:02:32'),
(5, 14, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'audio_call', NULL, '2023-10-06 05:26:08', '2023-10-06 05:26:08'),
(6, 14, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'audio_call', NULL, '2023-10-06 05:27:44', '2023-10-06 05:27:44'),
(7, 14, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'audio_call', NULL, '2023-10-06 05:30:39', '2023-10-06 05:30:39'),
(8, 14, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'audio_call', NULL, '2023-10-06 05:33:47', '2023-10-06 05:33:47'),
(9, 14, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'audio_call', NULL, '2023-10-06 05:35:36', '2023-10-06 05:35:36'),
(10, 14, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 05:39:56', '2023-10-06 05:39:56'),
(11, 3, 8, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 05:40:09', '2023-10-06 05:40:09'),
(12, 3, 8, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 05:40:38', '2023-10-06 05:40:38'),
(13, 3, 8, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 05:40:41', '2023-10-06 05:40:41'),
(14, 12, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 07:30:01', '2023-10-06 07:30:01'),
(24, 14, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 08:01:23', '2023-10-06 08:01:23'),
(25, 2, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 08:01:39', '2023-10-06 08:01:39'),
(26, 15, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 08:01:46', '2023-10-06 08:01:46'),
(27, 14, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 08:03:32', '2023-10-06 08:03:32'),
(28, 15, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 08:04:20', '2023-10-06 08:04:20'),
(29, 14, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 08:05:11', '2023-10-06 08:05:11'),
(30, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 08:11:25', '2023-10-06 08:11:25'),
(31, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 08:12:02', '2023-10-06 08:12:02'),
(32, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 08:12:26', '2023-10-06 08:12:26'),
(33, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 08:13:10', '2023-10-06 08:13:10'),
(34, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 08:13:35', '2023-10-06 08:13:35'),
(35, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 08:13:56', '2023-10-06 08:13:56'),
(36, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 08:14:45', '2023-10-06 08:14:45'),
(37, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 08:15:13', '2023-10-06 08:15:13'),
(38, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 08:15:21', '2023-10-06 08:15:21'),
(39, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 08:16:23', '2023-10-06 08:16:23'),
(40, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 08:17:03', '2023-10-06 08:17:03'),
(41, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 08:17:43', '2023-10-06 08:17:43'),
(42, 2, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 08:22:20', '2023-10-06 08:22:20'),
(43, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 08:23:14', '2023-10-06 08:23:14'),
(44, 15, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 08:23:35', '2023-10-06 08:23:35'),
(45, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 08:23:35', '2023-10-06 08:23:35'),
(46, 15, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 08:23:44', '2023-10-06 08:23:44'),
(47, 2, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 08:24:09', '2023-10-06 08:24:09'),
(48, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 08:24:41', '2023-10-06 08:24:41'),
(49, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 08:26:24', '2023-10-06 08:26:24'),
(50, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 08:26:33', '2023-10-06 08:26:33'),
(51, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 08:29:58', '2023-10-06 08:29:58'),
(52, 2, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 08:30:55', '2023-10-06 08:30:55'),
(53, 2, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 08:31:03', '2023-10-06 08:31:03'),
(54, 15, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 08:31:08', '2023-10-06 08:31:08'),
(55, 2, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 08:31:46', '2023-10-06 08:31:46'),
(56, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 08:33:46', '2023-10-06 08:33:46'),
(57, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 08:33:58', '2023-10-06 08:33:58'),
(58, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 08:37:14', '2023-10-06 08:37:14'),
(59, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 08:37:59', '2023-10-06 08:37:59'),
(60, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 08:38:10', '2023-10-06 08:38:10'),
(61, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 08:58:39', '2023-10-06 08:58:39'),
(62, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 08:59:28', '2023-10-06 08:59:28'),
(63, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 08:59:58', '2023-10-06 08:59:58'),
(64, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 09:00:10', '2023-10-06 09:00:10'),
(65, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 09:01:03', '2023-10-06 09:01:03'),
(66, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 09:01:14', '2023-10-06 09:01:14'),
(67, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 09:01:22', '2023-10-06 09:01:22'),
(68, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 09:02:09', '2023-10-06 09:02:09'),
(69, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 09:02:26', '2023-10-06 09:02:26'),
(70, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 09:03:56', '2023-10-06 09:03:56'),
(71, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 09:06:22', '2023-10-06 09:06:22'),
(72, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 09:06:31', '2023-10-06 09:06:31'),
(73, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 09:07:07', '2023-10-06 09:07:07'),
(74, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 09:11:10', '2023-10-06 09:11:10'),
(75, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 09:12:44', '2023-10-06 09:12:44'),
(76, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 09:13:27', '2023-10-06 09:13:27'),
(77, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 09:14:11', '2023-10-06 09:14:11'),
(78, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 09:14:36', '2023-10-06 09:14:36'),
(79, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 09:17:01', '2023-10-06 09:17:01'),
(80, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 09:17:17', '2023-10-06 09:17:17'),
(81, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 09:17:51', '2023-10-06 09:17:51'),
(82, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 09:18:54', '2023-10-06 09:18:54'),
(83, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 09:19:43', '2023-10-06 09:19:43'),
(84, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 09:20:16', '2023-10-06 09:20:16'),
(85, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 09:20:51', '2023-10-06 09:20:51'),
(86, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 09:21:03', '2023-10-06 09:21:03'),
(87, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 09:21:17', '2023-10-06 09:21:17'),
(88, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 09:21:36', '2023-10-06 09:21:36'),
(89, 9, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 09:26:49', '2023-10-06 09:26:49'),
(90, 9, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-06 09:29:51', '2023-10-06 09:29:51'),
(91, 18, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-07 15:47:04', '2023-10-07 15:47:04'),
(92, 18, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-08 10:14:59', '2023-10-08 10:14:59'),
(93, 15, 14, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-09 00:14:42', '2023-10-09 00:14:42'),
(94, 15, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-09 00:18:51', '2023-10-09 00:18:51'),
(95, 15, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-09 00:24:03', '2023-10-09 00:24:03'),
(96, 15, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-09 00:27:30', '2023-10-09 00:27:30'),
(97, 15, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-09 00:28:21', '2023-10-09 00:28:21'),
(98, 15, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-09 00:36:05', '2023-10-09 00:36:05'),
(99, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-09 00:39:28', '2023-10-09 00:39:28'),
(100, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-09 00:40:00', '2023-10-09 00:40:00'),
(101, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-09 00:43:02', '2023-10-09 00:43:02'),
(102, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-09 00:44:46', '2023-10-09 00:44:46'),
(103, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-09 00:45:07', '2023-10-09 00:45:07'),
(104, 15, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-09 00:45:10', '2023-10-09 00:45:10'),
(105, 15, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-09 00:45:23', '2023-10-09 00:45:23'),
(106, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-09 00:45:42', '2023-10-09 00:45:42'),
(107, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-09 00:47:35', '2023-10-09 00:47:35'),
(108, 15, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'audio_call', NULL, '2023-10-09 00:51:42', '2023-10-09 00:51:42'),
(109, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-09 00:55:25', '2023-10-09 00:55:25'),
(110, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-09 00:56:53', '2023-10-09 00:56:53'),
(111, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-09 01:03:30', '2023-10-09 01:03:30'),
(112, 14, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'audio_call', NULL, '2023-10-09 01:04:06', '2023-10-09 01:04:06'),
(113, 15, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-09 01:16:16', '2023-10-09 01:16:16'),
(114, 15, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-09 01:21:43', '2023-10-09 01:21:43'),
(115, 15, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-09 01:22:23', '2023-10-09 01:22:23'),
(116, 15, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-09 01:27:59', '2023-10-09 01:27:59'),
(118, 15, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-09 01:31:56', '2023-10-09 01:31:56'),
(120, 15, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-09 01:46:55', '2023-10-09 01:46:55'),
(122, 15, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-09 01:59:33', '2023-10-09 01:59:33'),
(124, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-09 02:01:48', '2023-10-09 02:01:48'),
(125, 2, 18, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-09 02:05:49', '2023-10-09 02:05:49'),
(126, 3, 8, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-09 03:15:43', '2023-10-09 03:15:43'),
(127, 3, 8, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-09 03:25:29', '2023-10-09 03:25:29'),
(128, 3, 8, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-09 03:49:19', '2023-10-09 03:49:19'),
(129, 2, 18, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-09 03:57:00', '2023-10-09 03:57:00'),
(130, NULL, 18, NULL, NULL, NULL, NULL, NULL, NULL, 'audio_call', NULL, '2023-10-09 03:57:28', '2023-10-09 03:57:28'),
(131, 2, 18, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-09 03:58:29', '2023-10-09 03:58:29'),
(132, NULL, 18, NULL, NULL, NULL, NULL, NULL, NULL, 'audio_call', NULL, '2023-10-09 03:59:27', '2023-10-09 03:59:27'),
(133, 2, 12, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-09 04:01:14', '2023-10-09 04:01:14'),
(134, 15, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-09 04:08:05', '2023-10-09 04:08:05'),
(135, 3, 12, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-09 04:12:34', '2023-10-09 04:12:34'),
(136, 3, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-09 04:13:05', '2023-10-09 04:13:05'),
(137, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'audio_call', NULL, '2023-10-09 04:15:45', '2023-10-09 04:15:45'),
(138, 3, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-09 04:16:16', '2023-10-09 04:16:16'),
(139, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'audio_call', NULL, '2023-10-09 04:17:29', '2023-10-09 04:17:29'),
(140, 3, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-09 04:17:36', '2023-10-09 04:17:36'),
(141, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'audio_call', NULL, '2023-10-09 04:21:53', '2023-10-09 04:21:53'),
(142, 15, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-09 04:27:58', '2023-10-09 04:27:58'),
(143, 15, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-09 04:33:03', '2023-10-09 04:33:03'),
(144, 15, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-09 04:39:49', '2023-10-09 04:39:49'),
(145, 15, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-09 04:45:23', '2023-10-09 04:45:23'),
(146, NULL, 15, NULL, NULL, NULL, NULL, NULL, NULL, 'audio_call', NULL, '2023-10-09 04:45:28', '2023-10-09 04:45:28'),
(147, 15, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-09 04:45:29', '2023-10-09 04:45:29'),
(148, 15, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-09 04:46:33', '2023-10-09 04:46:33'),
(149, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'audio_call', NULL, '2023-10-09 04:48:53', '2023-10-09 04:48:53'),
(150, 15, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-09 04:50:13', '2023-10-09 04:50:13'),
(151, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'audio_call', NULL, '2023-10-09 04:52:33', '2023-10-09 04:52:33'),
(152, 15, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-09 04:54:36', '2023-10-09 04:54:36'),
(153, 15, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-09 04:55:36', '2023-10-09 04:55:36'),
(154, 15, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-09 05:01:45', '2023-10-09 05:01:45'),
(155, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'audio_call', NULL, '2023-10-09 05:04:03', '2023-10-09 05:04:03'),
(156, 15, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-09 05:04:35', '2023-10-09 05:04:35'),
(157, 15, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-09 05:05:36', '2023-10-09 05:05:36'),
(158, 15, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-09 05:06:49', '2023-10-09 05:06:49'),
(159, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'audio_call', NULL, '2023-10-09 05:09:10', '2023-10-09 05:09:10'),
(160, 15, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-09 05:09:13', '2023-10-09 05:09:13'),
(161, 15, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-09 05:10:28', '2023-10-09 05:10:28'),
(162, 15, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-09 05:30:53', '2023-10-09 05:30:53'),
(163, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'audio_call', NULL, '2023-10-09 05:31:20', '2023-10-09 05:31:20'),
(164, 15, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'video_call', NULL, '2023-10-09 05:33:51', '2023-10-09 05:33:51'),
(165, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'audio_call', NULL, '2023-10-09 05:34:18', '2023-10-09 05:34:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_profiles`
--
ALTER TABLE `admin_profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blocked_tbl`
--
ALTER TABLE `blocked_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_accept`
--
ALTER TABLE `chat_accept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_lock`
--
ALTER TABLE `chat_lock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_mobile_unique` (`mobile`);

--
-- Indexes for table `user_notification`
--
ALTER TABLE `user_notification`
  ADD PRIMARY KEY (`not_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_profiles`
--
ALTER TABLE `admin_profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blocked_tbl`
--
ALTER TABLE `blocked_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `chat_accept`
--
ALTER TABLE `chat_accept`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `chat_lock`
--
ALTER TABLE `chat_lock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `user_notification`
--
ALTER TABLE `user_notification`
  MODIFY `not_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
