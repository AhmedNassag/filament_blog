-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2024 at 03:46 PM
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
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `home` tinyint(1) DEFAULT 0,
  `header` tinyint(1) DEFAULT 0,
  `footer` tinyint(1) DEFAULT 0,
  `seo` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`seo`)),
  `meta` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`meta`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `home`, `header`, `footer`, `seo`, `meta`, `created_at`, `updated_at`) VALUES
(1, 'قسم المحاسبة', ' قسم المحاسبة قسم المحاسبة  قسم المحاسبة قسم المحاسبة  قسم المحاسبة قسم المحاسبة  قسم المحاسبة قسم المحاسبة ', 0, 1, 0, '[{\"seo\":\" \\u0642\\u0633\\u0645 \\u0627\\u0644\\u0645\\u062d\\u0627\\u0633\\u0628\\u0629 \"},{\"seo\":\" \\u0642\\u0633\\u0645 \\u0627\\u0644\\u0645\\u062d\\u0627\\u0633\\u0628\\u0629 \"}]', '[{\"meta\":\" \\u0642\\u0633\\u0645 \\u0627\\u0644\\u0645\\u062d\\u0627\\u0633\\u0628\\u0629\"},{\"meta\":\" \\u0642\\u0633\\u0645 \\u0627\\u0644\\u0645\\u062d\\u0627\\u0633\\u0628\\u0629 \"}]', '2024-08-11 17:38:18', '2024-08-11 17:38:18'),
(2, 'قسم المراجعة', 'قسم المراجعة قسم المراجعة قسم المراجعة', 0, 1, 0, '[{\"seo\":\"\\u0642\\u0633\\u0645 \\u0627\\u0644\\u0645\\u0631\\u0627\\u062c\\u0639\\u0629\"},{\"seo\":\"\\u0642\\u0633\\u0645 \\u0627\\u0644\\u0645\\u0631\\u0627\\u062c\\u0639\\u0629\"}]', '[{\"meta\":\"\\u0642\\u0633\\u0645 \\u0627\\u0644\\u0645\\u0631\\u0627\\u062c\\u0639\\u0629\"},{\"meta\":\"\\u0642\\u0633\\u0645 \\u0627\\u0644\\u0645\\u0631\\u0627\\u062c\\u0639\\u0629\"}]', '2024-08-11 17:40:21', '2024-08-11 17:40:21'),
(3, 'قسم الزكاه والضرائب', 'قسم الزكاه والضرائب قسم الزكاه والضرائب قسم الزكاه والضرائب', 0, 1, 0, '[{\"seo\":\"\\u0642\\u0633\\u0645 \\u0627\\u0644\\u0632\\u0643\\u0627\\u0647 \\u0648\\u0627\\u0644\\u0636\\u0631\\u0627\\u0626\\u0628\"},{\"seo\":\"\\u0642\\u0633\\u0645 \\u0627\\u0644\\u0632\\u0643\\u0627\\u0647 \\u0648\\u0627\\u0644\\u0636\\u0631\\u0627\\u0626\\u0628\"}]', '[{\"meta\":\"\\u0642\\u0633\\u0645 \\u0627\\u0644\\u0632\\u0643\\u0627\\u0647 \\u0648\\u0627\\u0644\\u0636\\u0631\\u0627\\u0626\\u0628\"},{\"meta\":\"\\u0642\\u0633\\u0645 \\u0627\\u0644\\u0632\\u0643\\u0627\\u0647 \\u0648\\u0627\\u0644\\u0636\\u0631\\u0627\\u0626\\u0628\"}]', '2024-08-11 17:42:22', '2024-08-11 17:42:22'),
(4, 'منظمات ومؤسسات مهنيه', 'منظمات ومؤسسات مهنيه منظمات ومؤسسات مهنيه منظمات ومؤسسات مهنيه', 0, 1, 0, '[{\"seo\":\"\\u0645\\u0646\\u0638\\u0645\\u0627\\u062a \\u0648\\u0645\\u0624\\u0633\\u0633\\u0627\\u062a \\u0645\\u0647\\u0646\\u064a\\u0647\"},{\"seo\":\"\\u0645\\u0646\\u0638\\u0645\\u0627\\u062a \\u0648\\u0645\\u0624\\u0633\\u0633\\u0627\\u062a \\u0645\\u0647\\u0646\\u064a\\u0647\"}]', '[{\"meta\":\"\\u0645\\u0646\\u0638\\u0645\\u0627\\u062a \\u0648\\u0645\\u0624\\u0633\\u0633\\u0627\\u062a \\u0645\\u0647\\u0646\\u064a\\u0647\"},{\"meta\":\"\\u0645\\u0646\\u0638\\u0645\\u0627\\u062a \\u0648\\u0645\\u0624\\u0633\\u0633\\u0627\\u062a \\u0645\\u0647\\u0646\\u064a\\u0647\"}]', '2024-08-11 17:43:59', '2024-08-11 17:43:59'),
(5, 'اخبار مهنيه', 'اخبار مهنيه اخبار مهنيه اخبار مهنيه', 0, 1, 0, '[{\"seo\":\"\\u0627\\u062e\\u0628\\u0627\\u0631 \\u0645\\u0647\\u0646\\u064a\\u0647\"},{\"seo\":\"\\u0627\\u062e\\u0628\\u0627\\u0631 \\u0645\\u0647\\u0646\\u064a\\u0647\"}]', '[{\"meta\":\"\\u0627\\u062e\\u0628\\u0627\\u0631 \\u0645\\u0647\\u0646\\u064a\\u0647\"},{\"meta\":\"\\u0627\\u062e\\u0628\\u0627\\u0631 \\u0645\\u0647\\u0646\\u064a\\u0647\"}]', '2024-08-11 17:45:10', '2024-08-11 17:45:10'),
(6, 'انشاء الشركات ', 'انشاء الشركات انشاء الشركات انشاء الشركات ', 0, 1, 0, '[{\"seo\":\"\\u0627\\u0646\\u0634\\u0627\\u0621 \\u0627\\u0644\\u0634\\u0631\\u0643\\u0627\\u062a\"},{\"seo\":\"\\u0627\\u0646\\u0634\\u0627\\u0621 \\u0627\\u0644\\u0634\\u0631\\u0643\\u0627\\u062a\"}]', '[{\"meta\":\"\\u0627\\u0646\\u0634\\u0627\\u0621 \\u0627\\u0644\\u0634\\u0631\\u0643\\u0627\\u062a\"},{\"meta\":\"\\u0627\\u0646\\u0634\\u0627\\u0621 \\u0627\\u0644\\u0634\\u0631\\u0643\\u0627\\u062a\"}]', '2024-08-11 17:46:20', '2024-08-11 17:46:20');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'comment 1', '2024-08-12 09:47:42', '2024-08-12 09:47:42');

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
-- Table structure for table `last_news`
--

CREATE TABLE `last_news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `last_news`
--

INSERT INTO `last_news` (`id`, `category_id`, `post_id`, `title`, `created_at`, `updated_at`) VALUES
(1, 5, 1, 'خطوات وإجراءات تعديل شركة الشخص الواحد', '2024-08-11 19:02:13', '2024-08-11 19:02:13'),
(2, 6, 2, 'شرح معيار المراجعة المصرى 540 مراجعة التقديرات المحاسبية', '2024-08-11 19:02:58', '2024-08-11 19:02:58');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(5, '2024_07_31_002241_create_categories_table', 1),
(6, '2024_07_31_002350_create_posts_table', 1),
(7, '2024_07_31_002354_create_tags_table', 1),
(8, '2024_07_31_002516_create_post_tag_table', 1),
(9, '2024_08_01_044857_create_comments_table', 1),
(10, '2024_08_01_045227_create_likes_table', 1),
(11, '2024_08_01_051114_create_settings_table', 1),
(12, '2024_08_06_182817_create_last_news_table', 1),
(15, '2024_08_09_011025_create_permission_tables', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'view_category', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(2, 'view_any_category', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(3, 'create_category', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(4, 'update_category', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(5, 'restore_category', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(6, 'restore_any_category', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(7, 'replicate_category', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(8, 'reorder_category', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(9, 'delete_category', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(10, 'delete_any_category', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(11, 'force_delete_category', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(12, 'force_delete_any_category', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(13, 'view_comment', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(14, 'view_any_comment', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(15, 'create_comment', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(16, 'update_comment', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(17, 'restore_comment', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(18, 'restore_any_comment', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(19, 'replicate_comment', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(20, 'reorder_comment', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(21, 'delete_comment', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(22, 'delete_any_comment', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(23, 'force_delete_comment', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(24, 'force_delete_any_comment', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(25, 'view_last::news', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(26, 'view_any_last::news', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(27, 'create_last::news', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(28, 'update_last::news', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(29, 'restore_last::news', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(30, 'restore_any_last::news', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(31, 'replicate_last::news', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(32, 'reorder_last::news', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(33, 'delete_last::news', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(34, 'delete_any_last::news', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(35, 'force_delete_last::news', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(36, 'force_delete_any_last::news', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(37, 'view_post', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(38, 'view_any_post', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(39, 'create_post', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(40, 'update_post', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(41, 'restore_post', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(42, 'restore_any_post', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(43, 'replicate_post', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(44, 'reorder_post', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(45, 'delete_post', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(46, 'delete_any_post', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(47, 'force_delete_post', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(48, 'force_delete_any_post', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(49, 'view_role', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(50, 'view_any_role', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(51, 'create_role', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(52, 'update_role', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(53, 'delete_role', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(54, 'delete_any_role', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(55, 'view_setting', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(56, 'view_any_setting', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(57, 'create_setting', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(58, 'update_setting', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(59, 'restore_setting', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(60, 'restore_any_setting', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(61, 'replicate_setting', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(62, 'reorder_setting', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(63, 'delete_setting', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(64, 'delete_any_setting', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(65, 'force_delete_setting', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(66, 'force_delete_any_setting', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(67, 'view_user', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(68, 'view_any_user', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(69, 'create_user', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(70, 'update_user', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(71, 'restore_user', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(72, 'restore_any_user', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(73, 'replicate_user', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(74, 'reorder_user', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(75, 'delete_user', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(76, 'delete_any_user', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(77, 'force_delete_user', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(78, 'force_delete_any_user', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44'),
(79, 'widget_StatsDashboardtOverview', 'web', '2024-08-12 09:43:45', '2024-08-12 09:43:45'),
(80, 'widget_PostsChart', 'web', '2024-08-12 09:43:45', '2024-08-12 09:43:45'),
(81, 'widget_CommentsChart', 'web', '2024-08-12 09:43:45', '2024-08-12 09:43:45');

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

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `sub_title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `sub_content` text DEFAULT NULL,
  `img` text DEFAULT NULL,
  `seo` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`seo`)),
  `meta` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`meta`)),
  `is_published` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `sub_title`, `content`, `sub_content`, `img`, `seo`, `meta`, `is_published`, `created_at`, `updated_at`) VALUES
(1, 5, 1, 'المقال الاول', 'استخدام الذكاء الأصطناعى فى عملية التدقيق وتأثيرة على وظائف المراجعين', 'استخدام الذكاء الأصطناعى فى عملية التدقيق وتأثيرة على وظائف المراجعين استخدام الذكاء الأصطناعى فى عملية التدقيق وتأثيرة على وظائف المراجعين', 'استخدام الذكاء الأصطناعى فى عملية التدقيق وتأثيرة على وظائف المراجعين استخدام الذكاء الأصطناعى فى عملية التدقيق وتأثيرة على وظائف المراجعين استخدام الذكاء الأصطناعى فى عملية التدقيق وتأثيرة على وظائف المراجعين استخدام الذكاء الأصطناعى فى عملية التدقيق وتأثيرة على وظائف المراجعين استخدام الذكاء الأصطناعى فى عملية التدقيق وتأثيرة على وظائف المراجعين استخدام الذكاء الأصطناعى فى عملية التدقيق وتأثيرة على وظائف المراجعين استخدام الذكاء الأصطناعى فى عملية التدقيق وتأثيرة على وظائف المراجعين استخدام الذكاء الأصطناعى فى عملية التدقيق وتأثيرة على وظائف المراجعين استخدام الذكاء الأصطناعى فى عملية التدقيق وتأثيرة على وظائف المراجعين استخدام الذكاء الأصطناعى فى عملية التدقيق وتأثيرة على وظائف المراجعين استخدام الذكاء الأصطناعى فى عملية التدقيق وتأثيرة على وظائف المراجعين استخدام الذكاء الأصطناعى فى عملية التدقيق وتأثيرة على وظائف المراجعين استخدام الذكاء الأصطناعى فى عملية التدقيق وتأثيرة على وظائف المراجعين استخدام الذكاء الأصطناعى فى عملية التدقيق وتأثيرة على وظائف المراجعين استخدام الذكاء الأصطناعى فى عملية التدقيق وتأثيرة على وظائف المراجعين استخدام الذكاء الأصطناعى فى عملية التدقيق وتأثيرة على وظائف المراجعين استخدام الذكاء الأصطناعى فى عملية التدقيق وتأثيرة على وظائف المراجعين استخدام الذكاء الأصطناعى فى عملية التدقيق وتأثيرة على وظائف المراجعين استخدام الذكاء الأصطناعى فى عملية التدقيق وتأثيرة على وظائف المراجعين استخدام الذكاء الأصطناعى فى عملية التدقيق وتأثيرة على وظائف المراجعين استخدام الذكاء الأصطناعى فى عملية التدقيق وتأثيرة على وظائف المراجعين استخدام الذكاء الأصطناعى فى عملية التدقيق وتأثيرة على وظائف المراجعين استخدام الذكاء الأصطناعى فى عملية التدقيق وتأثيرة على وظائف المراجعين استخدام الذكاء الأصطناعى فى عملية التدقيق وتأثيرة على وظائف المراجعين استخدام الذكاء الأصطناعى فى عملية التدقيق وتأثيرة على وظائف المراجعين استخدام الذكاء الأصطناعى فى عملية التدقيق وتأثيرة على وظائف المراجعين استخدام الذكاء الأصطناعى فى عملية التدقيق وتأثيرة على وظائف المراجعين استخدام الذكاء الأصطناعى فى عملية التدقيق وتأثيرة على وظائف المراجعين استخدام الذكاء الأصطناعى فى عملية التدقيق وتأثيرة على وظائف المراجعين استخدام الذكاء الأصطناعى فى عملية التدقيق وتأثيرة على وظائف المراجعين استخدام الذكاء الأصطناعى فى عملية التدقيق وتأثيرة على وظائف المراجعين استخدام الذكاء الأصطناعى فى عملية التدقيق وتأثيرة على وظائف المراجعين استخدام الذكاء الأصطناعى فى عملية التدقيق وتأثيرة على وظائف المراجعين استخدام الذكاء الأصطناعى فى عملية التدقيق وتأثيرة على وظائف المراجعين استخدام الذكاء الأصطناعى فى عملية التدقيق وتأثيرة على وظائف المراجعين استخدام الذكاء الأصطناعى فى عملية التدقيق وتأثيرة على وظائف المراجعين استخدام الذكاء الأصطناعى فى عملية التدقيق وتأثيرة على وظائف المراجعين استخدام الذكاء الأصطناعى فى عملية التدقيق وتأثيرة على وظائف المراجعين استخدام الذكاء الأصطناعى فى عملية التدقيق وتأثيرة على وظائف المراجعين استخدام الذكاء الأصطناعى فى عملية التدقيق وتأثيرة على وظائف المراجعين ', 'Post/01J51M2FX9MHQBS33VCBVD7M0N.jpg', '[{\"seo\":\" \\u0627\\u0644\\u0630\\u0643\\u0627\\u0621 \\u0627\\u0644\\u0623\\u0635\\u0637\\u0646\\u0627\\u0639\\u0649\"},{\"seo\":\" \\u0627\\u0644\\u0630\\u0643\\u0627\\u0621 \\u0627\\u0644\\u0623\\u0635\\u0637\\u0646\\u0627\\u0639\\u0649\"}]', '[{\"meta\":\" \\u0627\\u0644\\u0630\\u0643\\u0627\\u0621 \\u0627\\u0644\\u0623\\u0635\\u0637\\u0646\\u0627\\u0639\\u0649\"},{\"meta\":\" \\u0627\\u0644\\u0630\\u0643\\u0627\\u0621 \\u0627\\u0644\\u0623\\u0635\\u0637\\u0646\\u0627\\u0639\\u0649\"}]', 1, '2024-08-11 18:03:55', '2024-08-11 18:31:18'),
(2, 6, 1, 'المقال الثاني (صفحة غير شخصية):', 'البحرين: ندوة كى بى إم جى تناقش الإجراءات والعواقب المتعلّقة بالمرحلة الثالثة والأخيرة من تطبيق نظام ضريبة القيمة المضافة البحرين: ', ' البحرين: ندوة كى بى إم جى تناقش الإجراءات والعواقب المتعلّقة بالمرحلة الثالثة والأخيرة من تطبيق نظام ضريبة القيمة المضافة البحرين: ندوة كى بى إم جى تناقش الإجراءات والعواقب المتعلّقة بالمرحلة الثالثة والأخيرة من تطبيق نظام ضريبة القيمة المضافة البحرين: ندوة كى بى إم جى تناقش الإجراءات والعواقب المتعلّقة بالمرحلة الثالثة والأخيرة من تطبيق نظام ضريبة القيمة المضافة البحرين: ندوة كى بى إم جى تناقش الإجراءات والعواقب المتعلّقة بالمرحلة الثالثة والأخيرة من تطبيق نظام ضريبة القيمة المضافة البحرين: ندوة كى بى إم جى تناقش الإجراءات والعواقب المتعلّقة بالمرحلة الثالثة والأخيرة من تطبيق نظام ضريبة القيمة المضافة البحرين: ندوة كى بى إم جى تناقش الإجراءات والعواقب المتعلّقة بالمرحلة الثالثة والأخيرة من تطبيق نظام ضريبة القيمة المضافة البحرين: ندوة كى بى إم جى تناقش الإجراءات والعواقب المتعلّقة بالمرحلة الثالثة والأخيرة من تطبيق نظام ضريبة القيمة المضافة البحرين: ندوة كى بى إم جى تناقش الإجراءات والعواقب المتعلّقة بالمرحلة الثالثة والأخيرة من تطبيق نظام ضريبة القيمة المضافة البحرين: ندوة كى بى إم جى تناقش الإجراءات والعواقب المتعلّقة بالمرحلة الثالثة والأخيرة من تطبيق نظام ضريبة القيمة المضافة البحرين: ندوة كى بى إم جى تناقش الإجراءات والعواقب المتعلّقة بالمرحلة الثالثة والأخيرة من تطبيق نظام ضريبة القيمة المضافة البحرين: ندوة كى بى إم جى تناقش الإجراءات والعواقب المتعلّقة بالمرحلة الثالثة والأخيرة من تطبيق نظام ضريبة القيمة المضافة البحرين: ندوة كى بى إم جى تناقش الإجراءات والعواقب المتعلّقة بالمرحلة الثالثة والأخيرة من تطبيق نظام ضريبة القيمة المضافة البحرين: ندوة كى بى إم جى تناقش الإجراءات والعواقب المتعلّقة بالمرحلة الثالثة والأخيرة من تطبيق نظام ضريبة القيمة المضافة البحرين: ندوة كى بى إم جى تناقش الإجراءات والعواقب المتعلّقة بالمرحلة الثالثة والأخيرة من تطبيق نظام ضريبة القيمة المضافة البحرين: ندوة كى بى إم جى تناقش الإجراءات والعواقب المتعلّقة بالمرحلة الثالثة والأخيرة من تطبيق نظام ضريبة القيمة المضافة البحرين: ندوة كى بى إم جى تناقش الإجراءات والعواقب المتعلّقة بالمرحلة الثالثة والأخيرة من تطبيق نظام ضريبة القيمة المضافة البحرين: ندوة كى بى إم جى تناقش الإجراءات والعواقب المتعلّقة بالمرحلة الثالثة والأخيرة من تطبيق نظام ضريبة القيمة المضافة البحرين: ندوة كى بى إم جى تناقش الإجراءات والعواقب المتعلّقة بالمرحلة الثالثة والأخيرة من تطبيق نظام ضريبة القيمة المضافة البحرين: ندوة كى بى إم جى تناقش الإجراءات والعواقب المتعلّقة بالمرحلة الثالثة والأخيرة من تطبيق نظام ضريبة القيمة المضافة البحرين: ندوة كى بى إم جى تناقش الإجراءات والعواقب المتعلّقة بالمرحلة الثالثة والأخيرة من تطبيق نظام ضريبة القيمة المضافة البحرين: ندوة كى بى إم جى تناقش الإجراءات والعواقب المتعلّقة بالمرحلة الثالثة والأخيرة من تطبيق نظام ضريبة القيمة المضافة', 'البحرين: ندوة كى بى إم جى تناقش الإجراءات والعواقب المتعلّقة بالمرحلة الثالثة والأخيرة من تطبيق نظام ضريبة القيمة المضافة', 'Post/01J51M9NVJQH9CEWJFY60GJ190.jpg', '[{\"seo\":\"\\u0646\\u062f\\u0648\\u0629 \\u0643\\u0649 \\u0628\\u0649 \\u0625\\u0645 \\u062c\\u0649\"},{\"seo\":\"\\u0646\\u062f\\u0648\\u0629 \\u0643\\u0649 \\u0628\\u0649 \\u0625\\u0645 \\u062c\\u0649\"}]', '[{\"meta\":\"\\u0646\\u062f\\u0648\\u0629 \\u0643\\u0649 \\u0628\\u0649 \\u0625\\u0645 \\u062c\\u0649\"},{\"meta\":\"\\u0646\\u062f\\u0648\\u0629 \\u0643\\u0649 \\u0628\\u0649 \\u0625\\u0645 \\u062c\\u0649\"}]', 1, '2024-08-11 18:07:50', '2024-08-11 18:31:23'),
(3, 3, 1, 'المقال الثالث (رد على الجميع):', 'الهيئة تستعرض أبرز إنجازاتها في تقرير \"دور مهنة المحاسبة في بناء اقتصاد مزدهر\" ', 'الهيئة تستعرض أبرز إنجازاتها في تقرير \"دور مهنة المحاسبة في بناء اقتصاد مزدهر\"الهيئة تستعرض أبرز إنجازاتها في تقرير \"دور مهنة المحاسبة في بناء اقتصاد مزدهر\"الهيئة تستعرض أبرز إنجازاتها في تقرير \"دور مهنة المحاسبة في بناء اقتصاد مزدهر\"الهيئة تستعرض أبرز إنجازاتها في تقرير \"دور مهنة المحاسبة في بناء اقتصاد مزدهر\"الهيئة تستعرض أبرز إنجازاتها في تقرير \"دور مهنة المحاسبة في بناء اقتصاد مزدهر\"الهيئة تستعرض أبرز إنجازاتها في تقرير \"دور مهنة المحاسبة في بناء اقتصاد مزدهر\"الهيئة تستعرض أبرز إنجازاتها في تقرير \"دور مهنة المحاسبة في بناء اقتصاد مزدهر\"الهيئة تستعرض أبرز إنجازاتها في تقرير \"دور مهنة المحاسبة في بناء اقتصاد مزدهر\"الهيئة تستعرض أبرز إنجازاتها في تقرير \"دور مهنة المحاسبة في بناء اقتصاد مزدهر\"الهيئة تستعرض أبرز إنجازاتها في تقرير \"دور مهنة المحاسبة في بناء اقتصاد مزدهر\"الهيئة تستعرض أبرز إنجازاتها في تقرير \"دور مهنة المحاسبة في بناء اقتصاد مزدهر\"الهيئة تستعرض أبرز إنجازاتها في تقرير \"دور مهنة المحاسبة في بناء اقتصاد مزدهر\"الهيئة تستعرض أبرز إنجازاتها في تقرير \"دور مهنة المحاسبة في بناء اقتصاد مزدهر\"الهيئة تستعرض أبرز إنجازاتها في تقرير \"دور مهنة المحاسبة في بناء اقتصاد مزدهر\"الهيئة تستعرض أبرز إنجازاتها في تقرير \"دور مهنة المحاسبة في بناء اقتصاد مزدهر\"الهيئة تستعرض أبرز إنجازاتها في تقرير \"دور مهنة المحاسبة في بناء اقتصاد مزدهر\"الهيئة تستعرض أبرز إنجازاتها في تقرير \"دور مهنة المحاسبة في بناء اقتصاد مزدهر\"الهيئة تستعرض أبرز إنجازاتها في تقرير \"دور مهنة المحاسبة في بناء اقتصاد مزدهر\"الهيئة تستعرض أبرز إنجازاتها في تقرير \"دور مهنة المحاسبة في بناء اقتصاد مزدهر\"', 'الهيئة تستعرض أبرز إنجازاتها في تقرير \"دور مهنة المحاسبة في بناء اقتصاد مزدهر\"', 'Post/01J51MGTYXC8YSH225VAB5PVKQ.webp', '[{\"seo\":\"\\u0627\\u0644\\u0645\\u062d\\u0627\\u0633\\u0628\\u0629 \\u0641\\u064a \\u0628\\u0646\\u0627\\u0621 \\u0627\\u0642\\u062a\\u0635\\u0627\\u062f \\u0645\\u0632\\u062f\\u0647\\u0631\"},{\"seo\":\"\\u0627\\u0644\\u0645\\u062d\\u0627\\u0633\\u0628\\u0629 \\u0641\\u064a \\u0628\\u0646\\u0627\\u0621 \\u0627\\u0642\\u062a\\u0635\\u0627\\u062f \\u0645\\u0632\\u062f\\u0647\\u0631\"}]', '[{\"meta\":\"\\u0627\\u0644\\u0645\\u062d\\u0627\\u0633\\u0628\\u0629 \\u0641\\u064a \\u0628\\u0646\\u0627\\u0621 \\u0627\\u0642\\u062a\\u0635\\u0627\\u062f \\u0645\\u0632\\u062f\\u0647\\u0631\"},{\"meta\":\"\\u0627\\u0644\\u0645\\u062d\\u0627\\u0633\\u0628\\u0629 \\u0641\\u064a \\u0628\\u0646\\u0627\\u0621 \\u0627\\u0642\\u062a\\u0635\\u0627\\u062f \\u0645\\u0632\\u062f\\u0647\\u0631\"}]', 1, '2024-08-11 18:11:45', '2024-08-11 18:31:08'),
(4, 6, 1, 'Title', 'عنوان مصغر', 'المحتوى', 'محتوى مصغر', 'Post/01J53AP92X9N4WVWVWZMR5RT9J.png', '[{\"seo\":\"google\"},{\"seo\":\"firefox\"}]', '[{\"meta\":\"coding system\"},{\"meta\":\"system\"},{\"meta\":\"coding\"}]', 1, '2024-08-12 09:58:26', '2024-08-12 10:05:11');

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super_admin', 'web', '2024-08-12 09:43:44', '2024-08-12 09:43:44');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `phone1` varchar(255) DEFAULT NULL,
  `phone2` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `logo` text DEFAULT NULL,
  `favicon` text DEFAULT NULL,
  `social_midea` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`social_midea`)),
  `seo` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`seo`)),
  `meta` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`meta`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `phone1`, `phone2`, `address`, `logo`, `favicon`, `social_midea`, `seo`, `meta`, `created_at`, `updated_at`) VALUES
(1, 'الاهرام', '01110731636', '01110731635', 'بجوار المبنى الرئيسى للمستشفى مصر الدولى', 'logo/01J51RN6CSFG92YJHHH3VH7JC7.png', 'favicon/01J51RN6CZJ39N4B4J3J7E1RVB.png', '[{\"social_midea\":\"https:\\/\\/faceboock.com\"},{\"social_midea\":\"https:\\/\\/youtube.com\"},{\"social_midea\":\"https:\\/\\/tiktok.com\"}]', '[{\"seo\":\"\\u0627\\u0644\\u0627\\u0647\\u0631\\u0627\\u0645\"},{\"seo\":\"\\u0627\\u0644\\u0627\\u0647\\u0631\\u0627\\u0645\"}]', '[{\"meta\":\"\\u0627\\u0644\\u0627\\u0647\\u0631\\u0627\\u0645\"},{\"meta\":\"\\u0627\\u0644\\u0627\\u0647\\u0631\\u0627\\u0645\"}]', '2024-08-11 19:24:02', '2024-08-11 19:24:02');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
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

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ahmed Nabil', 'ahmednassag@gmail.com', NULL, '$2y$10$cZunuRn/CYy6zN31XmPNgeRT2G.5E9yQ9.xPTrhxoL8BV2eOx6A4i', '3qJWM6Wwk2eYDuLkvdd4FFDk59gyDv5cOkvDiBiqwcKjmw2AqqyS5k3UKsON', '2024-08-11 17:29:07', '2024-08-11 17:29:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_description_unique` (`description`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `last_news`
--
ALTER TABLE `last_news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `last_news_category_id_foreign` (`category_id`),
  ADD KEY `last_news_post_id_foreign` (`post_id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `likes_user_id_foreign` (`user_id`),
  ADD KEY `likes_post_id_foreign` (`post_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_category_id_foreign` (`category_id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_tag_post_id_foreign` (`post_id`),
  ADD KEY `post_tag_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_slug_unique` (`slug`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `last_news`
--
ALTER TABLE `last_news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `last_news`
--
ALTER TABLE `last_news`
  ADD CONSTRAINT `last_news_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `last_news_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD CONSTRAINT `post_tag_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `post_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`);

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
