-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2024 at 03:03 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aksa`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Mobile Apps', '2024-08-12 17:19:10', '2024-08-12 17:19:10'),
(2, 'QA', '2024-08-12 17:19:10', '2024-08-12 17:19:10'),
(3, 'Full Stack', '2024-08-12 17:19:10', '2024-08-12 17:19:10'),
(4, 'Backend', '2024-08-12 17:19:10', '2024-08-12 17:19:10'),
(5, 'Frontend', '2024-08-12 17:19:10', '2024-08-12 17:19:10'),
(6, 'UI/UX Designer', '2024-08-12 17:19:10', '2024-08-12 17:19:10');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `position` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `image`, `name`, `phone`, `division_id`, `position`, `created_at`, `updated_at`) VALUES
(1, 'images/QIMRDhQf60oY0IVdZiSVUGIFPkS1mi7Hm5o7CVOG.jpg', 'Employee 1Mobile Apps', '1234567890', 1, 'Position 1', '2024-08-12 17:19:10', '2024-08-12 17:39:08'),
(2, 'images/qJhchb2eKVT7YZPWyGHywQNAVQ7wTBNyC7hhbV8z.png', 'Employee 2Mobile Apps', '1234567890', 1, 'Position 2', '2024-08-12 17:19:10', '2024-08-12 17:38:34'),
(3, 'images/eQssqdpuFFpOTvsqNDOTme2f6tF7QjXN7i1ev6OY.png', 'Employee 3Mobile Apps', '1234567890', 1, 'Position 3', '2024-08-12 17:19:10', '2024-08-12 17:38:42'),
(4, 'images/KfE1uWKaLyQ5gVXroLmfyleVAlJh3eSWCSUT4Kbs.jpg', 'Employee 1QA', '1234567890', 2, 'Position 1', '2024-08-12 17:19:10', '2024-08-12 17:38:50'),
(5, 'https://example.com/image2.jpg', 'Employee 2QA', '1234567890', 2, 'Position 2', '2024-08-12 17:19:10', '2024-08-12 17:19:10'),
(6, 'https://example.com/image3.jpg', 'Employee 3QA', '1234567890', 2, 'Position 3', '2024-08-12 17:19:10', '2024-08-12 17:19:10'),
(7, 'https://example.com/image1.jpg', 'Employee 1Full Stack', '1234567890', 3, 'Position 1', '2024-08-12 17:19:10', '2024-08-12 17:19:10'),
(8, 'https://example.com/image2.jpg', 'Employee 2Full Stack', '1234567890', 3, 'Position 2', '2024-08-12 17:19:10', '2024-08-12 17:19:10'),
(9, 'https://example.com/image3.jpg', 'Employee 3Full Stack', '1234567890', 3, 'Position 3', '2024-08-12 17:19:10', '2024-08-12 17:19:10'),
(10, 'https://example.com/image1.jpg', 'Employee 1Backend', '1234567890', 4, 'Position 1', '2024-08-12 17:19:10', '2024-08-12 17:19:10'),
(11, 'https://example.com/image2.jpg', 'Employee 2Backend', '1234567890', 4, 'Position 2', '2024-08-12 17:19:10', '2024-08-12 17:19:10'),
(12, 'https://example.com/image3.jpg', 'Employee 3Backend', '1234567890', 4, 'Position 3', '2024-08-12 17:19:10', '2024-08-12 17:19:10'),
(13, 'https://example.com/image1.jpg', 'Employee 1Frontend', '1234567890', 5, 'Position 1', '2024-08-12 17:19:10', '2024-08-12 17:19:10'),
(14, 'https://example.com/image2.jpg', 'Employee 2Frontend', '1234567890', 5, 'Position 2', '2024-08-12 17:19:10', '2024-08-12 17:19:10'),
(15, 'https://example.com/image3.jpg', 'Employee 3Frontend', '1234567890', 5, 'Position 3', '2024-08-12 17:19:10', '2024-08-12 17:19:10'),
(16, 'https://example.com/image1.jpg', 'Employee 1UI/UX Designer', '1234567890', 6, 'Position 1', '2024-08-12 17:19:10', '2024-08-12 17:19:10'),
(17, 'https://example.com/image2.jpg', 'Employee 2UI/UX Designer', '1234567890', 6, 'Position 2', '2024-08-12 17:19:10', '2024-08-12 17:19:10'),
(18, 'https://example.com/image3.jpg', 'Employee 3UI/UX Designer', '1234567890', 6, 'Position 3', '2024-08-12 17:19:10', '2024-08-12 17:19:10');

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_08_12_151603_create_personal_access_tokens_table', 1),
(5, '2024_08_12_153002_create_divisions_table', 1),
(6, '2024_08_12_154603_create_employees_table', 1);

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
(1, 'App\\Models\\User', 1, 'Personal Access Token', '80871218754b9746a3a2b3b9e8b250b9368f752e30f307f73b1be15f99e36471', '[\"*\"]', '2024-08-12 17:23:08', NULL, '2024-08-12 17:20:14', '2024-08-12 17:23:08'),
(2, 'App\\Models\\User', 1, 'Personal Access Token', '96273cccd3b4f07b93eaa35c307bab145033d56cf73590b716e2ae42ca2f9c6a', '[\"*\"]', '2024-08-12 17:24:15', NULL, '2024-08-12 17:23:17', '2024-08-12 17:24:15'),
(3, 'App\\Models\\User', 1, 'Personal Access Token', '6ee8e3ab6ef9a649eb032421209642a51e65cc7c4975caf079113d6749673ddd', '[\"*\"]', '2024-08-12 17:28:57', NULL, '2024-08-12 17:24:28', '2024-08-12 17:28:57'),
(4, 'App\\Models\\User', 1, 'Personal Access Token', 'cf44f9af9e63a25883079ac6bc795281ff862303f34e44a406fb65fe4210e49d', '[\"*\"]', '2024-08-12 17:29:10', NULL, '2024-08-12 17:29:09', '2024-08-12 17:29:10'),
(5, 'App\\Models\\User', 1, 'Personal Access Token', 'c8bbefb98a8fc8b0fd0ef146ff46a9c7403f18f1bb07197fa90d2cee2a1e1906', '[\"*\"]', '2024-08-12 17:29:41', NULL, '2024-08-12 17:29:40', '2024-08-12 17:29:41'),
(6, 'App\\Models\\User', 1, 'Personal Access Token', 'd104991922d82ced3c51344ef49531422459d38916b77cfccda226d9e66deae2', '[\"*\"]', '2024-08-12 17:31:20', NULL, '2024-08-12 17:29:56', '2024-08-12 17:31:20'),
(7, 'App\\Models\\User', 1, 'Personal Access Token', 'ca47414febd99fbb7a628dccfd20b167badd71e8e076789739c783303f46acc5', '[\"*\"]', '2024-08-12 17:37:28', NULL, '2024-08-12 17:31:43', '2024-08-12 17:37:28'),
(8, 'App\\Models\\User', 1, 'Personal Access Token', '8616c6b83edbd51bb3efde315d05fe8725d8b86489dbc43929ef35bf73192c51', '[\"*\"]', '2024-08-12 17:39:04', NULL, '2024-08-12 17:37:25', '2024-08-12 17:39:04'),
(9, 'App\\Models\\User', 1, 'Personal Access Token', 'e5af88b5de4f342662d4feb1b20dc04b02136cdddf367f032b6a256fae0e8b10', '[\"*\"]', '2024-08-12 17:40:46', NULL, '2024-08-12 17:37:52', '2024-08-12 17:40:46'),
(10, 'App\\Models\\User', 1, 'Personal Access Token', '4531abdde47ce4e5f45570ce0430115b1e3dedb0a0fffad89a126d1d53dfff39', '[\"*\"]', '2024-08-12 17:57:03', NULL, '2024-08-12 17:46:31', '2024-08-12 17:57:03'),
(11, 'App\\Models\\User', 1, 'Personal Access Token', 'f31b6c9b40eb4fb5f51a67429174a7a0673f4ed2575545134a0a6407febe39e2', '[\"*\"]', '2024-08-12 18:02:36', NULL, '2024-08-12 17:57:15', '2024-08-12 18:02:36'),
(12, 'App\\Models\\User', 1, 'Personal Access Token', '3a399eb85a1b7fc739297deb0810e26d396b72dfa15cb3cb0fab77349ea6bb4f', '[\"*\"]', '2024-08-12 18:02:50', NULL, '2024-08-12 18:02:49', '2024-08-12 18:02:50');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `phone`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin 1', 'admin', '1234567890', 'admin@example.com', '2024-08-12 17:19:10', '$2y$12$v0kg1zLp/njve9cg4Z28X.o1VzoaBX1M24PsEg4mvKQtWfDgvz3He', 'pIY80Ly2sW', '2024-08-12 17:19:10', '2024-08-12 17:38:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employees_division_id_foreign` (`division_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_division_id_foreign` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
