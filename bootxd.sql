-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2019 at 11:10 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bootxd`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_07_23_175909_create_video_table', 1),
(4, '2019_07_23_175931_create_video_meta_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Khushal', 'kk123', 'khushal@bootxd.com', NULL, '$2y$10$tM0d5sFXTxDCTFzlgzMEa.AIbmevnk5m/W8/40v/ysifZ/cVBgyUS', NULL, '2019-07-23 13:02:24', '2019-07-23 13:02:24'),
(2, 'Ryan', 'ryan123', 'ryan@bootxd.com', NULL, '$2y$10$snj85bAxa2fTzkK/eb/4T.l3QYO4pakZwKr12hVfWUaRCzegPVNZC', NULL, '2019-07-23 13:02:24', '2019-07-23 13:02:24'),
(3, 'Caroline', 'caroline123', 'caroline@bootxd.com', NULL, '$2y$10$faLWo9WE3sY1iXEMES56Ler.WHl9Hs4/xx1sBw.6zQ7W1Uctw2PCy', NULL, '2019-07-23 13:02:24', '2019-07-23 13:02:24');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-07-23 13:04:35', '2019-07-23 13:04:35'),
(2, 3, '2019-07-23 13:04:35', '2019-07-23 13:04:35'),
(3, 1, '2019-07-23 13:04:35', '2019-07-23 13:04:35'),
(4, 1, '2019-07-23 13:04:35', '2019-07-23 13:04:35'),
(5, 3, '2019-07-23 13:04:35', '2019-07-23 13:04:35'),
(6, 3, '2019-07-23 13:04:35', '2019-07-23 13:04:35'),
(7, 1, '2019-07-23 13:04:35', '2019-07-23 13:04:35'),
(8, 1, '2019-07-23 13:04:35', '2019-07-23 13:04:35'),
(9, 2, '2019-07-23 13:04:35', '2019-07-23 13:04:35'),
(10, 3, '2019-07-23 13:04:35', '2019-07-23 13:04:35');

-- --------------------------------------------------------

--
-- Table structure for table `video_meta`
--

CREATE TABLE `video_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `video_id` bigint(20) UNSIGNED NOT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `views_count` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `video_meta`
--

INSERT INTO `video_meta` (`id`, `video_id`, `size`, `views_count`, `created_at`, `updated_at`) VALUES
(1, 1, 23222, 22222, '2019-07-23 13:08:40', '2019-07-23 15:20:29'),
(2, 10, 25, 277, '2019-07-23 13:08:40', '2019-07-23 13:08:40'),
(3, 1, 35, 677, '2019-07-23 13:08:40', '2019-07-23 13:08:40'),
(4, 1, 67, 625, '2019-07-23 13:08:40', '2019-07-23 13:08:40'),
(5, 5, 19, 373, '2019-07-23 13:08:40', '2019-07-23 13:08:40'),
(6, 10, 7, 832, '2019-07-23 13:08:40', '2019-07-23 13:08:40'),
(7, 7, 89, 472, '2019-07-23 13:08:40', '2019-07-23 13:08:40'),
(8, 4, 69, 738, '2019-07-23 13:08:40', '2019-07-23 13:08:40'),
(9, 2, 13, 955, '2019-07-23 13:08:40', '2019-07-23 13:08:40'),
(10, 1, 62, 327, '2019-07-23 13:08:40', '2019-07-23 13:08:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`),
  ADD KEY `video_created_by_foreign` (`created_by`);

--
-- Indexes for table `video_meta`
--
ALTER TABLE `video_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `video_meta_video_id_foreign` (`video_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `video_meta`
--
ALTER TABLE `video_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `video`
--
ALTER TABLE `video`
  ADD CONSTRAINT `video_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `video_meta`
--
ALTER TABLE `video_meta`
  ADD CONSTRAINT `video_meta_video_id_foreign` FOREIGN KEY (`video_id`) REFERENCES `video` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
