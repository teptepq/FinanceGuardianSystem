-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table 4thyeardb.admin_g59_failed_jobs
CREATE TABLE IF NOT EXISTS `admin_g59_failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table 4thyeardb.admin_g59_failed_jobs: ~0 rows (approximately)

-- Dumping structure for table 4thyeardb.admin_g59_password_resets
CREATE TABLE IF NOT EXISTS `admin_g59_password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table 4thyeardb.admin_g59_password_resets: ~0 rows (approximately)

-- Dumping structure for table 4thyeardb.admin_g59_personal_access_tokens
CREATE TABLE IF NOT EXISTS `admin_g59_personal_access_tokens` (
  `id` bigint unsigned NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table 4thyeardb.admin_g59_personal_access_tokens: ~0 rows (approximately)

-- Dumping structure for table 4thyeardb.admin_g59_tickets
CREATE TABLE IF NOT EXISTS `admin_g59_tickets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `concern` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `priority` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table 4thyeardb.admin_g59_tickets: ~5 rows (approximately)
INSERT INTO `admin_g59_tickets` (`id`, `name`, `email`, `company`, `department`, `concern`, `priority`, `created_at`, `updated_at`) VALUES
	(15, 'warren', 'warrenryo@gmail.com', 'dadasda', 'asdasdasd', 'asdasdasd', 'Low', '2024-02-13 06:38:14', '2024-02-13 06:38:14'),
	(16, 'nathaniel', 'daniel@gmail.com', 'asdaww', 'adwawdawdasdas', 'please help me okay.', 'Low', '2024-02-13 08:05:52', '2024-02-13 08:07:02'),
	(18, 'robert', 'balagbag@gmail.com', 'qwe', 'cscs', 'i have problema on my pc\r\n\r\nhelp!!', 'Medium', '2024-02-14 07:46:51', '2024-02-14 07:46:51'),
	(19, 'Daniels', 'amiebaroso10@yahoo.com', 'adsasda', 'dasdasd', 'asdasdasd', 'Medium', '2024-02-19 05:33:15', '2024-02-19 05:33:15'),
	(20, 'aljane', 'aljane@gmail.com', 'cluster f', 'it department', 'help me', 'Low', '2024-02-27 00:48:04', '2024-02-27 00:48:04');

-- Dumping structure for table 4thyeardb.admin_g59_ticket_attachments
CREATE TABLE IF NOT EXISTS `admin_g59_ticket_attachments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ticket_id` bigint unsigned NOT NULL,
  `attachments` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ticket_attachments_ticket_id_foreign` (`ticket_id`),
  CONSTRAINT `ticket_attachments_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `admin_g59_tickets` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table 4thyeardb.admin_g59_ticket_attachments: ~3 rows (approximately)
INSERT INTO `admin_g59_ticket_attachments` (`id`, `ticket_id`, `attachments`, `created_at`, `updated_at`) VALUES
	(10, 16, 'uploads/attachments/17078403521.png', '2024-02-13 08:05:52', '2024-02-13 08:05:52'),
	(11, 16, 'uploads/attachments/17078403522.png', '2024-02-13 08:05:52', '2024-02-13 08:05:52'),
	(13, 19, 'uploads/attachments/17083495951.png', '2024-02-19 05:33:15', '2024-02-19 05:33:15');

-- Dumping structure for table 4thyeardb.admin_g59_users
CREATE TABLE IF NOT EXISTS `admin_g59_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table 4thyeardb.admin_g59_users: ~2 rows (approximately)
INSERT INTO `admin_g59_users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Daniel', 'daniel@gmail.com', NULL, '$2y$10$MQgqF088vkONhfcw88yAs.2TJ61w5MGtyaXpTbo1LdKDvwP6fmMqu', NULL, '2024-02-13 00:53:47', '2024-02-13 00:53:47'),
	(2, 'nathaniel', 'nathaniel@gmail.com', NULL, '$2y$10$aYTnTHYw1i2JfMOoXeGY1u3CUUwQZpB9RRIzjihlrhfbyW.1LCH9G', NULL, '2024-02-24 06:56:18', '2024-02-24 06:56:18');

-- Dumping structure for table 4thyeardb.fgms_g2_allocations
CREATE TABLE IF NOT EXISTS `fgms_g2_allocations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `expense_id` bigint unsigned NOT NULL,
  `cost_center_id` bigint unsigned NOT NULL,
  `percentage` decimal(5,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fgms_g2_allocations_expense_id_foreign` (`expense_id`),
  KEY `fgms_g2_allocations_cost_center_id_foreign` (`cost_center_id`),
  CONSTRAINT `fgms_g2_allocations_cost_center_id_foreign` FOREIGN KEY (`cost_center_id`) REFERENCES `fgms_g2_cost_centers` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fgms_g2_allocations_expense_id_foreign` FOREIGN KEY (`expense_id`) REFERENCES `fgms_g2_expenses` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table 4thyeardb.fgms_g2_allocations: ~0 rows (approximately)

-- Dumping structure for table 4thyeardb.fgms_g2_budget_items
CREATE TABLE IF NOT EXISTS `fgms_g2_budget_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `proposal_id` bigint unsigned NOT NULL,
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fgms_g2_budget_items_proposal_id_foreign` (`proposal_id`),
  CONSTRAINT `fgms_g2_budget_items_proposal_id_foreign` FOREIGN KEY (`proposal_id`) REFERENCES `fgms_g2_budget_proposals` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table 4thyeardb.fgms_g2_budget_items: ~0 rows (approximately)

-- Dumping structure for table 4thyeardb.fgms_g2_budget_proposals
CREATE TABLE IF NOT EXISTS `fgms_g2_budget_proposals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `submitted_by` bigint unsigned NOT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT '2024-02-29 15:32:28',
  `status` enum('pending','approved','rejected') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fgms_g2_budget_proposals_submitted_by_foreign` (`submitted_by`),
  CONSTRAINT `fgms_g2_budget_proposals_submitted_by_foreign` FOREIGN KEY (`submitted_by`) REFERENCES `fgms_g2_users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table 4thyeardb.fgms_g2_budget_proposals: ~6 rows (approximately)
INSERT INTO `fgms_g2_budget_proposals` (`id`, `title`, `description`, `submitted_by`, `submitted_at`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'test', 'hirap si roldan', 3, '2024-02-29 15:32:28', 'pending', '2024-02-29 15:39:19', '2024-02-29 15:39:19'),
	(2, 'test', 'hirap si roldan', 3, '2024-02-29 15:32:28', 'pending', '2024-02-29 15:41:54', '2024-02-29 15:41:54'),
	(3, 'test', 'hirap si roldan', 3, '2024-02-29 15:32:28', 'pending', '2024-02-29 15:42:11', '2024-02-29 15:42:11'),
	(4, 'test', 'hirap si roldan', 3, '2024-02-29 15:32:28', 'pending', '2024-02-29 15:43:18', '2024-02-29 15:43:18'),
	(5, 'test', 'hirap si roldan', 3, '2024-02-29 15:32:28', 'pending', '2024-02-29 15:48:36', '2024-02-29 15:48:36'),
	(6, 'test', 'hirap si roldan', 3, '2024-02-29 15:32:28', 'pending', '2024-02-29 15:50:53', '2024-02-29 15:50:53');

-- Dumping structure for table 4thyeardb.fgms_g2_cost_centers
CREATE TABLE IF NOT EXISTS `fgms_g2_cost_centers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table 4thyeardb.fgms_g2_cost_centers: ~0 rows (approximately)

-- Dumping structure for table 4thyeardb.fgms_g2_expenses
CREATE TABLE IF NOT EXISTS `fgms_g2_expenses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `date` date NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fgms_g2_expenses_user_id_foreign` (`user_id`),
  CONSTRAINT `fgms_g2_expenses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `fgms_g2_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table 4thyeardb.fgms_g2_expenses: ~1 rows (approximately)
INSERT INTO `fgms_g2_expenses` (`id`, `user_id`, `category`, `amount`, `date`, `description`, `created_at`, `updated_at`) VALUES
	(1, 3, 'test', 1000.00, '2024-02-22', 'hirap na si roldan', '2024-02-29 15:36:19', '2024-02-29 15:36:19');

-- Dumping structure for table 4thyeardb.fgms_g2_financial_metrics
CREATE TABLE IF NOT EXISTS `fgms_g2_financial_metrics` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table 4thyeardb.fgms_g2_financial_metrics: ~0 rows (approximately)

-- Dumping structure for table 4thyeardb.fgms_g2_forecast_data
CREATE TABLE IF NOT EXISTS `fgms_g2_forecast_data` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `metric_id` bigint unsigned NOT NULL,
  `date` date NOT NULL,
  `value` decimal(15,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fgms_g2_forecast_data_metric_id_foreign` (`metric_id`),
  CONSTRAINT `fgms_g2_forecast_data_metric_id_foreign` FOREIGN KEY (`metric_id`) REFERENCES `fgms_g2_financial_metrics` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table 4thyeardb.fgms_g2_forecast_data: ~0 rows (approximately)

-- Dumping structure for table 4thyeardb.fgms_g2_roles
CREATE TABLE IF NOT EXISTS `fgms_g2_roles` (
  `id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table 4thyeardb.fgms_g2_roles: ~0 rows (approximately)

-- Dumping structure for table 4thyeardb.fgms_g2_users
CREATE TABLE IF NOT EXISTS `fgms_g2_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fgms_g2_users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table 4thyeardb.fgms_g2_users: ~3 rows (approximately)
INSERT INTO `fgms_g2_users` (`id`, `name`, `username`, `email`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'User', 'User', 'user@markluisbonifacio.com', 0, NULL, '$2y$12$iFvbUpS8.afyO5PaOCWRW.qElpRX9CehLT40IuMNQ59JyG/yT2bv6', NULL, '2024-02-29 15:34:12', '2024-02-29 15:34:12'),
	(2, 'superadmin', 'Superadmin', 'superadmin@markluisbonifacio.com', 1, NULL, '$2y$12$eWCllyVJZZeMQ4wa.WTGi.n/KfaQC6N9vz.DKepjPNTy704i7Xige', NULL, '2024-02-29 15:34:12', '2024-02-29 15:34:12'),
	(3, 'employee', 'employee', 'employee@markluisbonifacio.com', 2, NULL, '$2y$12$o2jDvSHmYY4PNui3oIM4beHtFWwQH2GSHWwY323Cn2EnJUqM1p5s.', NULL, '2024-02-29 15:34:12', '2024-02-29 15:34:12');

-- Dumping structure for table 4thyeardb.fgms_g3_failed_jobs
CREATE TABLE IF NOT EXISTS `fgms_g3_failed_jobs` (
  `id` bigint unsigned NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table 4thyeardb.fgms_g3_failed_jobs: ~0 rows (approximately)

-- Dumping structure for table 4thyeardb.fgms_g3_password_reset_tokens
CREATE TABLE IF NOT EXISTS `fgms_g3_password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table 4thyeardb.fgms_g3_password_reset_tokens: ~0 rows (approximately)

-- Dumping structure for table 4thyeardb.fgms_g3_pendingdocus
CREATE TABLE IF NOT EXISTS `fgms_g3_pendingdocus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `fgms_g3_user_id` bigint unsigned DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `charges` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fgms_g3_pendingdocus_fgms_g3_user_id_foreign` (`fgms_g3_user_id`),
  CONSTRAINT `fgms_g3_pendingdocus_fgms_g3_user_id_foreign` FOREIGN KEY (`fgms_g3_user_id`) REFERENCES `fgms_g3_users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table 4thyeardb.fgms_g3_pendingdocus: ~4 rows (approximately)
INSERT INTO `fgms_g3_pendingdocus` (`id`, `fgms_g3_user_id`, `type`, `about`, `charges`, `status`, `created_at`, `updated_at`) VALUES
	(1, NULL, 'Computer Repair', 'For Approval', '7000.00', 'Completed', '2024-02-29 10:28:18', '2024-02-29 10:28:18'),
	(2, NULL, 'Services', 'For Approval', '3000.00', 'Cancelled', '2024-02-29 10:28:18', '2024-02-29 10:28:18'),
	(3, NULL, 'Services', 'For Approval', '5000.00', 'Declined', '2024-02-29 10:28:18', '2024-02-29 10:28:18'),
	(4, NULL, 'Services', 'For Approval', '8000.00', 'Pending', '2024-02-29 10:28:18', '2024-02-29 10:28:18');

-- Dumping structure for table 4thyeardb.fgms_g3_personal_access_tokens
CREATE TABLE IF NOT EXISTS `fgms_g3_personal_access_tokens` (
  `id` bigint unsigned NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table 4thyeardb.fgms_g3_personal_access_tokens: ~0 rows (approximately)

-- Dumping structure for table 4thyeardb.fgms_g3_profiles
CREATE TABLE IF NOT EXISTS `fgms_g3_profiles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `fgms_g3_user_id` bigint unsigned DEFAULT NULL,
  `full_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fgms_g3_profiles_fgms_g3_user_id_foreign` (`fgms_g3_user_id`),
  CONSTRAINT `fgms_g3_profiles_fgms_g3_user_id_foreign` FOREIGN KEY (`fgms_g3_user_id`) REFERENCES `fgms_g3_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table 4thyeardb.fgms_g3_profiles: ~0 rows (approximately)

-- Dumping structure for table 4thyeardb.fgms_g3_users
CREATE TABLE IF NOT EXISTS `fgms_g3_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fgms_g3_users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table 4thyeardb.fgms_g3_users: ~1 rows (approximately)
INSERT INTO `fgms_g3_users` (`id`, `name`, `email`, `email_verified_at`, `username`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Admin T', 'admin@gmail.com', NULL, 'admin', '$2y$12$ppOfRWXNsInSrCw/cdGO8eO8RdEd/pXNej5218/U7Wv5ZV.Ocg8LS', NULL, '2024-02-29 10:27:10', '2024-02-29 10:27:10');

-- Dumping structure for table 4thyeardb.fgms_g7_users
CREATE TABLE IF NOT EXISTS `fgms_g7_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `join_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table 4thyeardb.fgms_g7_users: ~2 rows (approximately)
INSERT INTO `fgms_g7_users` (`id`, `user_id`, `name`, `email`, `date_of_birth`, `join_date`, `phone_number`, `status`, `role_name`, `avatar`, `position`, `department`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, '000001', 'Cat', 'Cat@gmail.com', NULL, 'Thu, Feb 29, 2024 7:20 AM', NULL, NULL, 'Super Admin', 'photo_defaults.jpg', NULL, NULL, NULL, '$2y$10$NG/AG4Ptw3zTMmgnCwTItOC.DQ9yZv.IgkkaxV12lqgubsMSTpCle', NULL, '2024-02-29 15:20:59', '2024-02-29 15:20:59'),
	(2, '000002', 'Hotdog', 'hotdog@g.c', NULL, 'Thu, Feb 29, 2024 7:23 AM', NULL, NULL, 'Super Admin', 'photo_defaults.jpg', NULL, NULL, NULL, '$2y$10$sTz5jrXaM0rCMxkBIWEVuuuz8dGlZWxcKm7PY9r.T0KtceUk.LgJa', NULL, '2024-02-29 15:23:09', '2024-02-29 15:23:09');

-- Dumping structure for table 4thyeardb.fgms_g9_category
CREATE TABLE IF NOT EXISTS `fgms_g9_category` (
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`category`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table 4thyeardb.fgms_g9_category: ~3 rows (approximately)
INSERT INTO `fgms_g9_category` (`category`) VALUES
	('equipment'),
	('person'),
	('services');

-- Dumping structure for table 4thyeardb.fgms_g9_vm_dt
CREATE TABLE IF NOT EXISTS `fgms_g9_vm_dt` (
  `vendor_id` int NOT NULL AUTO_INCREMENT,
  `vendor_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `company_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `contact` int NOT NULL,
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `cost` float NOT NULL,
  `spend` float NOT NULL,
  `starting_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`vendor_id`),
  KEY `category` (`category`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table 4thyeardb.fgms_g9_vm_dt: ~2 rows (approximately)
INSERT INTO `fgms_g9_vm_dt` (`vendor_id`, `vendor_name`, `company_name`, `address`, `contact`, `category`, `cost`, `spend`, `starting_date`, `end_date`, `status`) VALUES
	(1, 'Jake Benten ', 'Jake Industries', 'BRGY 161 JAN LANG BARANGAY NA YAN', 2131232154, 'person', 25, 50, '2017-02-02', '2022-02-03', 'Working'),
	(2, 'Sewing Machine', 'Jake\'s Tailoring', 'BRGY PAG-ASA', 231254767, 'equipment', 25, 50, '2017-02-02', '2022-02-03', 'Active');

-- Dumping structure for table 4thyeardb.fms_4g_access
CREATE TABLE IF NOT EXISTS `fms_4g_access` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `folder_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_folder_id_access` (`folder_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table 4thyeardb.fms_4g_access: ~2 rows (approximately)
INSERT INTO `fms_4g_access` (`id`, `user_id`, `folder_id`) VALUES
	(19, 34, 3),
	(20, 34, 5);

-- Dumping structure for table 4thyeardb.fms_4g_accounts
CREATE TABLE IF NOT EXISTS `fms_4g_accounts` (
  `u_id` int NOT NULL,
  `u_username` varchar(250) NOT NULL,
  `u_first_name` varchar(255) NOT NULL,
  `u_last_name` varchar(255) NOT NULL,
  `u_password` varchar(250) NOT NULL,
  `u_isactive` varchar(100) NOT NULL DEFAULT '1',
  `u_email` varchar(256) NOT NULL,
  `u_role` varchar(255) NOT NULL,
  `u_profile_picture` varchar(255) NOT NULL,
  `u_created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`u_id`),
  UNIQUE KEY `user_name` (`u_username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table 4thyeardb.fms_4g_accounts: ~4 rows (approximately)
INSERT INTO `fms_4g_accounts` (`u_id`, `u_username`, `u_first_name`, `u_last_name`, `u_password`, `u_isactive`, `u_email`, `u_role`, `u_profile_picture`, `u_created_date`) VALUES
	(1, 'Matthew', 'Matt', 'Manabat', '$2b$10$uQRhi1vYbYk8p9DoHEUS2OdU7BbfT3Rkf.kUGoj1vCwjDLuFfvIwi', '1', 'ralphmatthewmanabat@gmail.com', 'admin', '', '2024-02-27 02:06:13'),
	(2, 'Ralph', 'Ralph Matthew', 'Manabat', '$2b$10$B48va.MNU1DFrXvgVXyo/.WIkGYpbVk8DD58h2.hnU238NwWYhqdm', '1', 'ralphmatthewmanabat@gmail.com', 'admin', 'qisl53c3a7bsjxqhzjpn.png', '2024-02-27 10:59:48'),
	(3, 'Ryomen', 'Ryomen', 'Sukuna', '$2b$10$8gGSUrTcJjMEXYa/zQvRnuBeRLQ6IdDh1OHhb2EZXj15Mo124e4RS', '1', 'Ryomen@gmail.com', 'driver', 'viatcjdtvalnpig7tpsd.avif', '2024-02-12 17:12:30'),
	(4, 'Satoru', 'Satoru', 'Gojo', '$2b$10$pVPzO4/e5Y.zP0cT.JQ/PePwBbMhZwUiMpgIqfDfhyXfy9iUu/bzu', '1', 'sensei@gmail.com', 'driver', 'pajido2wn3c1g7satmse.avif', '2024-02-12 17:01:45');

-- Dumping structure for table 4thyeardb.fms_4g_accounts_access
CREATE TABLE IF NOT EXISTS `fms_4g_accounts_access` (
  `a_id` int NOT NULL,
  `a_u_id` int NOT NULL,
  `a_admin_board` tinyint(1) NOT NULL,
  `a_driver_board` tinyint(1) NOT NULL,
  `a_fuel` tinyint(1) NOT NULL,
  `a_maintenance` tinyint(1) NOT NULL,
  `a_tracking` tinyint(1) NOT NULL,
  `a_admin_chat` tinyint(1) NOT NULL,
  `a_settings` tinyint(1) NOT NULL,
  `a_deliveries` tinyint(1) NOT NULL,
  `a_history` tinyint(1) NOT NULL,
  `a_driver_chat` tinyint(1) NOT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table 4thyeardb.fms_4g_accounts_access: ~4 rows (approximately)
INSERT INTO `fms_4g_accounts_access` (`a_id`, `a_u_id`, `a_admin_board`, `a_driver_board`, `a_fuel`, `a_maintenance`, `a_tracking`, `a_admin_chat`, `a_settings`, `a_deliveries`, `a_history`, `a_driver_chat`) VALUES
	(1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0),
	(2, 2, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0),
	(3, 3, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1),
	(4, 4, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1);

-- Dumping structure for table 4thyeardb.fms_4g_files
CREATE TABLE IF NOT EXISTS `fms_4g_files` (
  `id` int NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` int NOT NULL,
  `folder_id` int NOT NULL,
  `file_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `file_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT '0',
  `date_updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table 4thyeardb.fms_4g_files: ~0 rows (approximately)

-- Dumping structure for table 4thyeardb.fms_4g_folder
CREATE TABLE IF NOT EXISTS `fms_4g_folder` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `parent_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table 4thyeardb.fms_4g_folder: ~6 rows (approximately)
INSERT INTO `fms_4g_folder` (`id`, `user_id`, `file_name`, `parent_id`, `created_at`) VALUES
	(2, 11, 'Invoice and Payment Management', 0, '2024-02-19 16:41:01'),
	(3, 11, 'Driver Management and Compliance', 0, '2024-02-19 16:47:31'),
	(4, 11, 'Order Management', 0, '2024-02-19 16:47:50'),
	(5, 11, 'Carrier Collaboration and Communication', 0, '2024-02-19 16:48:12'),
	(6, 11, 'Custom Compliance and Documentation', 0, '2024-02-19 16:56:53'),
	(16, 11, 'dasd', 2, '2024-02-24 02:37:54');

-- Dumping structure for table 4thyeardb.fms_4g_fuel
CREATE TABLE IF NOT EXISTS `fms_4g_fuel` (
  `v_fuel_id` int NOT NULL,
  `v_id` varchar(100) NOT NULL,
  `v_fuel_quantity` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `v_odometerreading` varchar(100) DEFAULT NULL,
  `v_fuelprice` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `v_fuelfilldate` date NOT NULL,
  `v_fueladdedby` varchar(100) NOT NULL,
  `v_fuelcomments` varchar(256) NOT NULL,
  `v_modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `v_created_date` date NOT NULL,
  PRIMARY KEY (`v_fuel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Dumping data for table 4thyeardb.fms_4g_fuel: ~2 rows (approximately)
INSERT INTO `fms_4g_fuel` (`v_fuel_id`, `v_id`, `v_fuel_quantity`, `v_odometerreading`, `v_fuelprice`, `v_fuelfilldate`, `v_fueladdedby`, `v_fuelcomments`, `v_modified_date`, `v_created_date`) VALUES
	(1, 'Scania R730', '200', '12679', '600', '2024-02-11', 'Matt', 'So good', '2024-02-11 02:51:48', '2024-02-11'),
	(2, 'DAF XF', '2334', '235465', '1223', '2024-02-07', 'Matt', 'MAhusays', '2024-02-11 03:11:53', '2024-02-11');

-- Dumping structure for table 4thyeardb.fms_4g_inbound
CREATE TABLE IF NOT EXISTS `fms_4g_inbound` (
  `id` int NOT NULL,
  `files_id` int NOT NULL,
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_inbound_files_id` (`files_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table 4thyeardb.fms_4g_inbound: ~0 rows (approximately)

-- Dumping structure for table 4thyeardb.fms_4g_maintenance
CREATE TABLE IF NOT EXISTS `fms_4g_maintenance` (
  `m_id` int NOT NULL,
  `m_v_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `m_start_date` date NOT NULL,
  `m_end_date` date NOT NULL,
  `m_details` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `m_cost` int NOT NULL,
  `m_vendor_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `m_service` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `m_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `v_created_date` date NOT NULL,
  `v_modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table 4thyeardb.fms_4g_maintenance: ~5 rows (approximately)
INSERT INTO `fms_4g_maintenance` (`m_id`, `m_v_id`, `m_start_date`, `m_end_date`, `m_details`, `m_cost`, `m_vendor_name`, `m_service`, `m_status`, `v_created_date`, `v_modified_date`) VALUES
	(1, 'Mercedes-Benz Actros', '2024-02-09', '2024-02-29', 'Matindi tama', 1200, 'Emferyork', 'Headlight/Taillight Bulb Replacement', 'Scheduled', '2024-02-11', '2024-02-10 16:00:00'),
	(2, 'Kenworth W900', '2024-02-22', '2024-03-01', 'Paki ayos ', 234, 'AHAHAHA', 'Serpentine Belt Replacement', 'In Progress', '2024-02-11', '2024-02-11 02:54:01'),
	(3, 'Mack Anthem', '2024-02-01', '2024-02-28', 'Galingan pls', 123, 'HAHAh2we23erw', 'Trailer Lighting Inspection/Service', 'Deferred', '2024-02-11', '2024-02-11 02:58:26'),
	(4, 'Fuso Super Great', '2024-02-22', '2024-03-20', 'fwergsd', 234, 'sdfasdf', 'Trailer Suspension Inspection/Service', 'Completed', '2024-02-11', '2024-02-11 02:59:21'),
	(5, 'Fuso Super Great', '2024-02-08', '2024-02-29', 'Hasdfasd', 234, 'sdf4wdf', 'Windshield Wiper Blade Replacement', 'Failed', '2024-02-12', '2024-02-12 05:18:16');

-- Dumping structure for table 4thyeardb.fms_4g_message
CREATE TABLE IF NOT EXISTS `fms_4g_message` (
  `msg_id` int NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `timesent` bigint DEFAULT NULL,
  `prof_pic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table 4thyeardb.fms_4g_message: ~50 rows (approximately)
INSERT INTO `fms_4g_message` (`msg_id`, `username`, `role`, `message`, `timesent`, `prof_pic`) VALUES
	(1, 'Ralph', 'admin', 'Hello Driver', 1707013432535, 'pcjcodb2lrtlmhxqsyqb.jpg'),
	(2, 'driver', 'driver', 'Hello Admin', 1707013457426, 'r4szszd46if7boqpr8b9.jpg'),
	(3, 'John', 'driver', 'Hello Champ', 1707459322990, 'r4szszd46if7boqpr8b9.jpg'),
	(4, 'Ralph', 'admin', 'Hello John the driver', 1707459340638, 'pcjcodb2lrtlmhxqsyqb.jpg'),
	(5, 'Ralph', 'admin', 'Hello Ronillo', 1707461406631, 'pcjcodb2lrtlmhxqsyqb.jpg'),
	(6, 'John', 'driver', 'Hello Admin', 1707461420552, 'tu7c8nlclzidu8wzpa9j.jpg'),
	(7, 'Ralph', 'admin', '????', 1707712847602, 'pcjcodb2lrtlmhxqsyqb.jpg'),
	(8, 'Ralph', 'admin', '????', 1707713106660, 'pcjcodb2lrtlmhxqsyqb.jpg'),
	(9, 'Ralph', 'admin', 'Hello', 1707714245390, 'pcjcodb2lrtlmhxqsyqb.jpg'),
	(10, 'Ralph', 'admin', 'Hi', 1707714337662, 'pcjcodb2lrtlmhxqsyqb.jpg'),
	(11, 'Ralph', 'admin', 'Hello', 1707714342972, 'pcjcodb2lrtlmhxqsyqb.jpg'),
	(12, 'Ralph', 'admin', 'Hello', 1707714351836, 'pcjcodb2lrtlmhxqsyqb.jpg'),
	(13, 'Ralph', 'admin', 'asd', 1707714363741, 'pcjcodb2lrtlmhxqsyqb.jpg'),
	(14, 'Ralph', 'admin', 'Hello', 1707714488022, 'pcjcodb2lrtlmhxqsyqb.jpg'),
	(15, 'Ralph', 'admin', 'asd', 1707714529825, 'pcjcodb2lrtlmhxqsyqb.jpg'),
	(16, 'Ralph', 'admin', 'try', 1707714675606, 'pcjcodb2lrtlmhxqsyqb.jpg'),
	(17, 'Satoru', 'driver', 'domain expansion', 1707728753963, 'pajido2wn3c1g7satmse.avif'),
	(18, 'Satoru', 'driver', 'Infinite Void!!!!!', 1707728771019, 'pajido2wn3c1g7satmse.avif'),
	(19, 'Satoru', 'driver', 'Muryokushooo', 1707728778707, 'pajido2wn3c1g7satmse.avif'),
	(20, 'Ryomen', 'driver', 'Malevolent kitcheeeen!!', 1707729217051, 'viatcjdtvalnpig7tpsd.avif'),
	(21, 'Satoru', 'driver', 'asd', 1707880575990, 'pajido2wn3c1g7satmse.avif'),
	(22, 'Satoru', 'driver', '123', 1707880675432, 'pajido2wn3c1g7satmse.avif'),
	(23, 'Ralph', 'admin', 'hello', 1708913812277, 'pcjcodb2lrtlmhxqsyqb.jpg'),
	(24, 'Ralph', 'admin', 'test', 1708913863355, 'pcjcodb2lrtlmhxqsyqb.jpg'),
	(25, 'Ralph', 'admin', '2nd', 1708913898242, 'pcjcodb2lrtlmhxqsyqb.jpg'),
	(1, 'Ralph', 'admin', 'Hello Driver', 1707013432535, 'pcjcodb2lrtlmhxqsyqb.jpg'),
	(2, 'driver', 'driver', 'Hello Admin', 1707013457426, 'r4szszd46if7boqpr8b9.jpg'),
	(3, 'John', 'driver', 'Hello Champ', 1707459322990, 'r4szszd46if7boqpr8b9.jpg'),
	(4, 'Ralph', 'admin', 'Hello John the driver', 1707459340638, 'pcjcodb2lrtlmhxqsyqb.jpg'),
	(5, 'Ralph', 'admin', 'Hello Ronillo', 1707461406631, 'pcjcodb2lrtlmhxqsyqb.jpg'),
	(6, 'John', 'driver', 'Hello Admin', 1707461420552, 'tu7c8nlclzidu8wzpa9j.jpg'),
	(7, 'Ralph', 'admin', '????', 1707712847602, 'pcjcodb2lrtlmhxqsyqb.jpg'),
	(8, 'Ralph', 'admin', '????', 1707713106660, 'pcjcodb2lrtlmhxqsyqb.jpg'),
	(9, 'Ralph', 'admin', 'Hello', 1707714245390, 'pcjcodb2lrtlmhxqsyqb.jpg'),
	(10, 'Ralph', 'admin', 'Hi', 1707714337662, 'pcjcodb2lrtlmhxqsyqb.jpg'),
	(11, 'Ralph', 'admin', 'Hello', 1707714342972, 'pcjcodb2lrtlmhxqsyqb.jpg'),
	(12, 'Ralph', 'admin', 'Hello', 1707714351836, 'pcjcodb2lrtlmhxqsyqb.jpg'),
	(13, 'Ralph', 'admin', 'asd', 1707714363741, 'pcjcodb2lrtlmhxqsyqb.jpg'),
	(14, 'Ralph', 'admin', 'Hello', 1707714488022, 'pcjcodb2lrtlmhxqsyqb.jpg'),
	(15, 'Ralph', 'admin', 'asd', 1707714529825, 'pcjcodb2lrtlmhxqsyqb.jpg'),
	(16, 'Ralph', 'admin', 'try', 1707714675606, 'pcjcodb2lrtlmhxqsyqb.jpg'),
	(17, 'Satoru', 'driver', 'domain expansion', 1707728753963, 'pajido2wn3c1g7satmse.avif'),
	(18, 'Satoru', 'driver', 'Infinite Void!!!!!', 1707728771019, 'pajido2wn3c1g7satmse.avif'),
	(19, 'Satoru', 'driver', 'Muryokushooo', 1707728778707, 'pajido2wn3c1g7satmse.avif'),
	(20, 'Ryomen', 'driver', 'Malevolent kitcheeeen!!', 1707729217051, 'viatcjdtvalnpig7tpsd.avif'),
	(21, 'Satoru', 'driver', 'asd', 1707880575990, 'pajido2wn3c1g7satmse.avif'),
	(22, 'Satoru', 'driver', '123', 1707880675432, 'pajido2wn3c1g7satmse.avif'),
	(23, 'Ralph', 'admin', 'hello', 1708913812277, 'pcjcodb2lrtlmhxqsyqb.jpg'),
	(24, 'Ralph', 'admin', 'test', 1708913863355, 'pcjcodb2lrtlmhxqsyqb.jpg'),
	(25, 'Ralph', 'admin', '2nd', 1708913898242, 'pcjcodb2lrtlmhxqsyqb.jpg');

-- Dumping structure for table 4thyeardb.fms_4g_migrations
CREATE TABLE IF NOT EXISTS `fms_4g_migrations` (
  `id` int unsigned NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table 4thyeardb.fms_4g_migrations: ~14 rows (approximately)
INSERT INTO `fms_4g_migrations` (`id`, `migration`, `batch`) VALUES
	(2, '2024_02_24_145751_tb_user', 1),
	(7, '2024_02_25_120515_user_order_table', 3),
	(41, '2024_02_25_121121_create_orderdetails', 4),
	(42, '2024_02_26_100945_create_orderdetails_table', 5),
	(56, '2019_12_14_000001_create_personal_access_tokens_table', 6),
	(57, '2024_02_24_152731_create_tb_useracc_table', 6),
	(58, '2024_02_26_161509_user_order_table', 6),
	(2, '2024_02_24_145751_tb_user', 1),
	(7, '2024_02_25_120515_user_order_table', 3),
	(41, '2024_02_25_121121_create_orderdetails', 4),
	(42, '2024_02_26_100945_create_orderdetails_table', 5),
	(56, '2019_12_14_000001_create_personal_access_tokens_table', 6),
	(57, '2024_02_24_152731_create_tb_useracc_table', 6),
	(58, '2024_02_26_161509_user_order_table', 6);

-- Dumping structure for table 4thyeardb.fms_4g_notifications
CREATE TABLE IF NOT EXISTS `fms_4g_notifications` (
  `id` int NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table 4thyeardb.fms_4g_notifications: ~0 rows (approximately)

-- Dumping structure for table 4thyeardb.fms_4g_outbound
CREATE TABLE IF NOT EXISTS `fms_4g_outbound` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `files_id` int NOT NULL,
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `view` int NOT NULL,
  `download` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table 4thyeardb.fms_4g_outbound: ~0 rows (approximately)

-- Dumping structure for table 4thyeardb.fms_4g_personal_access_tokens
CREATE TABLE IF NOT EXISTS `fms_4g_personal_access_tokens` (
  `id` bigint unsigned NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table 4thyeardb.fms_4g_personal_access_tokens: ~0 rows (approximately)

-- Dumping structure for table 4thyeardb.fms_4g_positions
CREATE TABLE IF NOT EXISTS `fms_4g_positions` (
  `id` int NOT NULL,
  `trip_id` int NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `altitude` double DEFAULT NULL,
  `speed` double DEFAULT NULL,
  `heading` double DEFAULT NULL,
  `accuracy` int DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Dumping data for table 4thyeardb.fms_4g_positions: ~10 rows (approximately)
INSERT INTO `fms_4g_positions` (`id`, `trip_id`, `latitude`, `longitude`, `altitude`, `speed`, `heading`, `accuracy`, `created_date`) VALUES
	(1, 4, 14.6046976, 121.0351616, NULL, 0, NULL, 9237, '2024-02-27 08:41:00'),
	(2, 3, 14.598144, 121.0253312, NULL, 0, NULL, 4901, '2024-02-22 02:34:25'),
	(3, 1, 14.598144, 121.0253312, NULL, 0, NULL, 4901, '2024-02-22 02:35:30'),
	(4, 5, 14.598144, 121.0253312, NULL, 0, NULL, 4901, '2024-02-22 02:36:13'),
	(5, 2, 14.598144, 121.0253312, NULL, 0, NULL, 4901, '2024-02-22 02:36:32'),
	(1, 4, 14.6046976, 121.0351616, NULL, 0, NULL, 9237, '2024-02-27 08:41:00'),
	(2, 3, 14.598144, 121.0253312, NULL, 0, NULL, 4901, '2024-02-22 02:34:25'),
	(3, 1, 14.598144, 121.0253312, NULL, 0, NULL, 4901, '2024-02-22 02:35:30'),
	(4, 5, 14.598144, 121.0253312, NULL, 0, NULL, 4901, '2024-02-22 02:36:13'),
	(5, 2, 14.598144, 121.0253312, NULL, 0, NULL, 4901, '2024-02-22 02:36:32');

-- Dumping structure for table 4thyeardb.fms_4g_reports
CREATE TABLE IF NOT EXISTS `fms_4g_reports` (
  `id` int NOT NULL,
  `folder_id` int NOT NULL,
  `report_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `report_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `access` int NOT NULL,
  `user` int NOT NULL,
  `download` int NOT NULL,
  `upload` int NOT NULL,
  `include_access` int NOT NULL DEFAULT '0',
  `include_users` int NOT NULL DEFAULT '0',
  `include_downloads` int NOT NULL DEFAULT '0',
  `include_uploads` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table 4thyeardb.fms_4g_reports: ~0 rows (approximately)

-- Dumping structure for table 4thyeardb.fms_4g_shared_report
CREATE TABLE IF NOT EXISTS `fms_4g_shared_report` (
  `id` int NOT NULL,
  `report_id` int NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table 4thyeardb.fms_4g_shared_report: ~0 rows (approximately)

-- Dumping structure for table 4thyeardb.fms_4g_shippingrates
CREATE TABLE IF NOT EXISTS `fms_4g_shippingrates` (
  `Origin` varchar(50) DEFAULT NULL,
  `Destination` varchar(50) DEFAULT NULL,
  `Package` varchar(50) DEFAULT NULL,
  `BoxFee` decimal(10,2) DEFAULT NULL,
  `Rate` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Dumping data for table 4thyeardb.fms_4g_shippingrates: ~60 rows (approximately)
INSERT INTO `fms_4g_shippingrates` (`Origin`, `Destination`, `Package`, `BoxFee`, `Rate`) VALUES
	('NCR', 'NCR', 'KB Mini', 15.00, 70.00),
	('NCR', 'NCR', 'KB Small', 20.00, 100.00),
	('NCR', 'NCR', 'KB Slim', 20.00, 100.00),
	('NCR', 'NCR', 'KB Medium', 20.00, 220.00),
	('NCR', 'NCR', 'KB Large', 35.00, 420.00),
	('NCR', 'NCR', 'KB XL', 60.00, 820.00),
	('NCR', 'N.Luzon', 'KB Mini', 15.00, 85.00),
	('NCR', 'N.Luzon', 'KB Small', 20.00, 120.00),
	('NCR', 'N.Luzon', 'KB Slim', 20.00, 120.00),
	('NCR', 'N.Luzon', 'KB Medium', 20.00, 320.00),
	('NCR', 'N.Luzon', 'KB Large', 35.00, 620.00),
	('NCR', 'N.Luzon', 'KB XL', 60.00, 1220.00),
	('NCR', 'S.Luzon', 'KB Mini', 15.00, 85.00),
	('NCR', 'S.Luzon', 'KB Small', 20.00, 120.00),
	('NCR', 'S.Luzon', 'KB Slim', 20.00, 120.00),
	('NCR', 'S.Luzon', 'KB Medium', 20.00, 320.00),
	('NCR', 'S.Luzon', 'KB Large', 35.00, 620.00),
	('NCR', 'S.Luzon', 'KB XL', 60.00, 1220.00),
	('NCR', 'Visayas', 'KB Mini', 15.00, 125.00),
	('NCR', 'Visayas', 'KB Small', 20.00, 140.00),
	('NCR', 'Visayas', 'KB Slim', 20.00, 140.00),
	('NCR', 'Visayas', 'KB Medium', 20.00, 370.00),
	('NCR', 'Visayas', 'KB Large', 35.00, 720.00),
	('NCR', 'Visayas', 'KB XL', 60.00, 1420.00),
	('NCR', 'Mindanao', 'KB Mini', 15.00, 125.00),
	('NCR', 'Mindanao', 'KB Small', 20.00, 140.00),
	('NCR', 'Mindanao', 'KB Slim', 20.00, 140.00),
	('NCR', 'Mindanao', 'KB Medium', 20.00, 370.00),
	('NCR', 'Mindanao', 'KB Large', 35.00, 720.00),
	('NCR', 'Mindanao', 'KB XL', 60.00, 1420.00),
	('NCR', 'NCR', 'KB Mini', 15.00, 70.00),
	('NCR', 'NCR', 'KB Small', 20.00, 100.00),
	('NCR', 'NCR', 'KB Slim', 20.00, 100.00),
	('NCR', 'NCR', 'KB Medium', 20.00, 220.00),
	('NCR', 'NCR', 'KB Large', 35.00, 420.00),
	('NCR', 'NCR', 'KB XL', 60.00, 820.00),
	('NCR', 'N.Luzon', 'KB Mini', 15.00, 85.00),
	('NCR', 'N.Luzon', 'KB Small', 20.00, 120.00),
	('NCR', 'N.Luzon', 'KB Slim', 20.00, 120.00),
	('NCR', 'N.Luzon', 'KB Medium', 20.00, 320.00),
	('NCR', 'N.Luzon', 'KB Large', 35.00, 620.00),
	('NCR', 'N.Luzon', 'KB XL', 60.00, 1220.00),
	('NCR', 'S.Luzon', 'KB Mini', 15.00, 85.00),
	('NCR', 'S.Luzon', 'KB Small', 20.00, 120.00),
	('NCR', 'S.Luzon', 'KB Slim', 20.00, 120.00),
	('NCR', 'S.Luzon', 'KB Medium', 20.00, 320.00),
	('NCR', 'S.Luzon', 'KB Large', 35.00, 620.00),
	('NCR', 'S.Luzon', 'KB XL', 60.00, 1220.00),
	('NCR', 'Visayas', 'KB Mini', 15.00, 125.00),
	('NCR', 'Visayas', 'KB Small', 20.00, 140.00),
	('NCR', 'Visayas', 'KB Slim', 20.00, 140.00),
	('NCR', 'Visayas', 'KB Medium', 20.00, 370.00),
	('NCR', 'Visayas', 'KB Large', 35.00, 720.00),
	('NCR', 'Visayas', 'KB XL', 60.00, 1420.00),
	('NCR', 'Mindanao', 'KB Mini', 15.00, 125.00),
	('NCR', 'Mindanao', 'KB Small', 20.00, 140.00),
	('NCR', 'Mindanao', 'KB Slim', 20.00, 140.00),
	('NCR', 'Mindanao', 'KB Medium', 20.00, 370.00),
	('NCR', 'Mindanao', 'KB Large', 35.00, 720.00),
	('NCR', 'Mindanao', 'KB XL', 60.00, 1420.00);

-- Dumping structure for table 4thyeardb.fms_4g_sustainability_data
CREATE TABLE IF NOT EXISTS `fms_4g_sustainability_data` (
  `sd_id` int DEFAULT NULL,
  `sd_trip_id` int DEFAULT NULL,
  `sd_fuelcost` varchar(7) DEFAULT NULL,
  `sd_fuelconsumption` varchar(6) DEFAULT NULL,
  `sd_carbon_emission` varchar(9) DEFAULT NULL,
  `sd_rainfall_rate` varchar(6) DEFAULT NULL,
  `sd_current_weather` varchar(10) DEFAULT NULL,
  `sd_air_quality` varchar(5) DEFAULT NULL,
  `sd_wind_speed` varchar(7) DEFAULT NULL,
  `sd_wind_direction` varchar(14) DEFAULT NULL,
  `sd_wind_angle` varchar(4) DEFAULT NULL,
  `sd_temperature` varchar(6) DEFAULT NULL,
  `sd_humidity` varchar(5) DEFAULT NULL,
  `sd_visibility` varchar(4) DEFAULT NULL,
  `sd_uv_index` varchar(13) DEFAULT NULL,
  `sd_solar_radiation` varchar(9) DEFAULT NULL,
  `sd_pressure` varchar(8) DEFAULT NULL,
  `sd_sealevel_pressure` varchar(12) DEFAULT NULL,
  `alerts` varchar(17) DEFAULT NULL,
  `sd_modified_date` varchar(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Dumping data for table 4thyeardb.fms_4g_sustainability_data: ~10 rows (approximately)
INSERT INTO `fms_4g_sustainability_data` (`sd_id`, `sd_trip_id`, `sd_fuelcost`, `sd_fuelconsumption`, `sd_carbon_emission`, `sd_rainfall_rate`, `sd_current_weather`, `sd_air_quality`, `sd_wind_speed`, `sd_wind_direction`, `sd_wind_angle`, `sd_temperature`, `sd_humidity`, `sd_visibility`, `sd_uv_index`, `sd_solar_radiation`, `sd_pressure`, `sd_sealevel_pressure`, `alerts`, `sd_modified_date`) VALUES
	(1, 2, '₱18.03', '0.27l', '539.44g', '0mm/hr', 'Clear sky', '69AQI', '3.6m/s', 'east-southeast', '113°', '32.2°C', '48%RH', '16km', '8.94UV Index', '928.2W/m2', '1005mb', '1007.724mb', 'No Current Alerts', '2024-01-07 11:51:32'),
	(2, 4, '₱91.50', '1.38l', '1200.67g', '0mm/hr', 'Clear sky', '42AQI', '5.66m/s', 'east-southeast', '103°', '30.6°C', '51%RH', '16km', '3.32UV Index', '454.7W/m2', '1003.5mb', '1007.5081mb', 'No Current Alerts', '2024-04-14 11:52:01'),
	(3, 3, '₱44.73', '0.67l', '939.23g', '0mm/hr', 'Clear sky', '69AQI', '3.6m/s', 'east-southeast', '113°', '32.2°C', '48%RH', '16km', '8.94UV Index', '928.2W/m2', '1005mb', '1007.724mb', 'No Current Alerts', '2024-03-17 11:52:26'),
	(4, 5, '₱927.41', '13.94l', '43325.30g', '0mm/hr', 'Clear sky', '56AQI', '5.66m/s', 'east-southeast', '113°', '31.7°C', '53%RH', '16km', '10.08UV Index', '988.8W/m2', '1003.5mb', '1006.8903mb', 'No Current Alerts', '2024-02-22 04:37:03'),
	(5, 1, '₱18.88', '0.28l', '431.17g', '0mm/hr', 'Clear sky', '69AQI', '3.6m/s', 'east-southeast', '113°', '32.2°C', '48%RH', '16km', '8.94UV Index', '928.2W/m2', '1005mb', '1007.724mb', 'No Current Alerts', '2024-05-20 11:55:09'),
	(1, 2, '₱18.03', '0.27l', '539.44g', '0mm/hr', 'Clear sky', '69AQI', '3.6m/s', 'east-southeast', '113°', '32.2°C', '48%RH', '16km', '8.94UV Index', '928.2W/m2', '1005mb', '1007.724mb', 'No Current Alerts', '2024-01-07 11:51:32'),
	(2, 4, '₱91.50', '1.38l', '1200.67g', '0mm/hr', 'Clear sky', '42AQI', '5.66m/s', 'east-southeast', '103°', '30.6°C', '51%RH', '16km', '3.32UV Index', '454.7W/m2', '1003.5mb', '1007.5081mb', 'No Current Alerts', '2024-04-14 11:52:01'),
	(3, 3, '₱44.73', '0.67l', '939.23g', '0mm/hr', 'Clear sky', '69AQI', '3.6m/s', 'east-southeast', '113°', '32.2°C', '48%RH', '16km', '8.94UV Index', '928.2W/m2', '1005mb', '1007.724mb', 'No Current Alerts', '2024-03-17 11:52:26'),
	(4, 5, '₱927.41', '13.94l', '43325.30g', '0mm/hr', 'Clear sky', '56AQI', '5.66m/s', 'east-southeast', '113°', '31.7°C', '53%RH', '16km', '10.08UV Index', '988.8W/m2', '1003.5mb', '1006.8903mb', 'No Current Alerts', '2024-02-22 04:37:03'),
	(5, 1, '₱18.88', '0.28l', '431.17g', '0mm/hr', 'Clear sky', '69AQI', '3.6m/s', 'east-southeast', '113°', '32.2°C', '48%RH', '16km', '8.94UV Index', '928.2W/m2', '1005mb', '1007.724mb', 'No Current Alerts', '2024-05-20 11:55:09');

-- Dumping structure for table 4thyeardb.fms_4g_tb_useracc
CREATE TABLE IF NOT EXISTS `fms_4g_tb_useracc` (
  `id` bigint unsigned NOT NULL,
  `firstname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table 4thyeardb.fms_4g_tb_useracc: ~0 rows (approximately)

-- Dumping structure for table 4thyeardb.fms_4g_trips
CREATE TABLE IF NOT EXISTS `fms_4g_trips` (
  `t_id` int NOT NULL,
  `t_start_date` date NOT NULL,
  `t_end_date` date NOT NULL,
  `t_trip_fromlocation` varchar(100) NOT NULL,
  `t_trip_tolocation` varchar(100) NOT NULL,
  `t_trip_fromlat` double DEFAULT NULL,
  `t_trip_fromlog` double DEFAULT NULL,
  `t_trip_tolat` double DEFAULT NULL,
  `t_trip_tolog` double DEFAULT NULL,
  `t_driver` varchar(255) NOT NULL,
  `t_vehicle` varchar(255) NOT NULL,
  `t_totalweight` int NOT NULL,
  `t_totaldistance` double DEFAULT NULL,
  `t_totaldrivetime` varchar(255) DEFAULT NULL,
  `t_trip_amount` varchar(100) NOT NULL DEFAULT '0',
  `t_trip_status` varchar(50) NOT NULL DEFAULT 'OnGoing',
  `t_trackingcode` varchar(100) DEFAULT NULL,
  `t_created_by` varchar(100) NOT NULL,
  `t_created_date` datetime NOT NULL,
  `t_modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table 4thyeardb.fms_4g_trips: ~10 rows (approximately)
INSERT INTO `fms_4g_trips` (`t_id`, `t_start_date`, `t_end_date`, `t_trip_fromlocation`, `t_trip_tolocation`, `t_trip_fromlat`, `t_trip_fromlog`, `t_trip_tolat`, `t_trip_tolog`, `t_driver`, `t_vehicle`, `t_totalweight`, `t_totaldistance`, `t_totaldrivetime`, `t_trip_amount`, `t_trip_status`, `t_trackingcode`, `t_created_by`, `t_created_date`, `t_modified_date`) VALUES
	(1, '2024-01-05', '2024-01-08', 'Tangke Road, Brgy. Balon-bato, Quezon Citu', 'P2GP+MVG, Topaz, Novaliches, Quezon City, Metro Manila', 14.6676937, 121.0021727, 14.726582928426808, 121.03666348624142, 'Ryomen', 'Mercedes-Benz Actros', 435, 6.1260557615, '0h 30m', '12345', 'Pending', 'BN1jb0mU', 'Admin', '2024-01-05 09:38:47', '2024-02-27 05:41:22'),
	(2, '2024-02-07', '2024-02-10', 'Andres Soriano Avenue Barangay 655, Manila.', '150 D. Aquino St, Grace Park West, Caloocan, 1406 Metro Manila', 14.592171720661497, 120.97251356426898, 14.6483901, 120.9769461, 'Satoru', 'Iveco Stralis', 570, 5.84785722784, '0h 22m', '200', 'Cancelled', 'FjTaF39k', 'Ralph', '2024-02-07 02:42:54', '2024-02-28 04:14:49'),
	(3, '2024-03-17', '2024-03-21', 'Andres Soriano Avenue Barangay 655, Manila', 'BLK 15 LOT 1, BRIÑAS CORNER BANZON ST, BF Resort Dr, Las Piñas, 1747 Metro Manila', 14.592171720661497, 120.97251356426898, 14.4256336, 120.9867445, 'Ryomen', 'Freightliner Cascadia', 400, 14.5158183563, '0h 42m', '600', 'Pending', 'QwErTy', 'Ralph', '2024-02-07 03:30:14', '2024-02-27 05:41:23'),
	(4, '2024-04-14', '2024-04-17', 'Andres Soriano Avenue Barangay 655, Manila', 'Silangan Warehousing, Calamba, 4027 Laguna', 14.592171720661497, 120.97251356426898, 14.2303719, 121.1187231, 'Ryomen', 'Western Star 4900', 250, 29.682711305450002, '1h 1m', '600', 'In Progress', 'SJasfQ3S8', 'ralph', '2024-02-14 11:10:42', '2024-02-28 04:14:19'),
	(5, '2024-05-20', '2024-05-23', 'Andres Soriano Avenue Barangay 655, Manila', '5 Daisy Panacal Vill. P.C. 3500, Tuguegarao City, Cagayan', 14.592171720661497, 120.97251356426898, 17.6022249, 121.6770585, 'Satoru', 'Fuso Super Great', 890, 300.86597517997, '8h 9m', '900', 'Completed', 'Asf35J7', 'Ralph', '2024-02-14 11:10:42', '2024-02-28 04:14:31'),
	(1, '2024-01-05', '2024-01-08', 'Tangke Road, Brgy. Balon-bato, Quezon Citu', 'P2GP+MVG, Topaz, Novaliches, Quezon City, Metro Manila', 14.6676937, 121.0021727, 14.726582928426808, 121.03666348624142, 'Ryomen', 'Mercedes-Benz Actros', 435, 6.1260557615, '0h 30m', '12345', 'Pending', 'BN1jb0mU', 'Admin', '2024-01-05 09:38:47', '2024-02-27 05:41:22'),
	(2, '2024-02-07', '2024-02-10', 'Andres Soriano Avenue Barangay 655, Manila.', '150 D. Aquino St, Grace Park West, Caloocan, 1406 Metro Manila', 14.592171720661497, 120.97251356426898, 14.6483901, 120.9769461, 'Satoru', 'Iveco Stralis', 570, 5.84785722784, '0h 22m', '200', 'Cancelled', 'FjTaF39k', 'Ralph', '2024-02-07 02:42:54', '2024-02-28 04:14:49'),
	(3, '2024-03-17', '2024-03-21', 'Andres Soriano Avenue Barangay 655, Manila', 'BLK 15 LOT 1, BRIÑAS CORNER BANZON ST, BF Resort Dr, Las Piñas, 1747 Metro Manila', 14.592171720661497, 120.97251356426898, 14.4256336, 120.9867445, 'Ryomen', 'Freightliner Cascadia', 400, 14.5158183563, '0h 42m', '600', 'Pending', 'QwErTy', 'Ralph', '2024-02-07 03:30:14', '2024-02-27 05:41:23'),
	(4, '2024-04-14', '2024-04-17', 'Andres Soriano Avenue Barangay 655, Manila', 'Silangan Warehousing, Calamba, 4027 Laguna', 14.592171720661497, 120.97251356426898, 14.2303719, 121.1187231, 'Ryomen', 'Western Star 4900', 250, 29.682711305450002, '1h 1m', '600', 'In Progress', 'SJasfQ3S8', 'ralph', '2024-02-14 11:10:42', '2024-02-28 04:14:19'),
	(5, '2024-05-20', '2024-05-23', 'Andres Soriano Avenue Barangay 655, Manila', '5 Daisy Panacal Vill. P.C. 3500, Tuguegarao City, Cagayan', 14.592171720661497, 120.97251356426898, 17.6022249, 121.6770585, 'Satoru', 'Fuso Super Great', 890, 300.86597517997, '8h 9m', '900', 'Completed', 'Asf35J7', 'Ralph', '2024-02-14 11:10:42', '2024-02-28 04:14:31');

-- Dumping structure for table 4thyeardb.fms_4g_userformdetails
CREATE TABLE IF NOT EXISTS `fms_4g_userformdetails` (
  `id` bigint unsigned NOT NULL,
  `order_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `item` enum('ElectronicAndGadget','FoodAndBeverages','MedicalSupply','AutomobileAndMachinery','ChemicalsAndDrugs','FurnitureAndKitchenware','Others') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dimensions` enum('KB Mini (9 X 5 X 3) Inch','KB Small (12 X 10 X 5) Inch','KB Slim (16 X 10 X 3) Inch','KB Medium (14 X 10.5 X 7) Inch','KB Large (18 X 12 X 9) Inch','KB XL (20 X 16 X 12) Inch') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `LocationFrom` enum('Andres Soriano Avenue Barangay 655, Manila, Philippines') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `LocationTo` enum('MetroManila','Luzon','Visayas','Mindanao') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `DropOffWarehouse` enum('150 D. Aquino St, Grace Park West, Caloocan, 1406 Metro Manila','BLK 15 LOT 1, BRIÑAS CORNER BANZON ST, BF Resort Dr, Las Piñas, 1747 Metro Manila','Silangan Warehousing, Calamba, 4027 Laguna','5 Daisy Panacal Vill. P.C. 3500, Tuguegarao City, Cagayan','14 Lavilles Street, Mj Cuenco Avenue. P.C. 6000, Cebu City, Cebu','347115 Rizal St, Lapuz, Iloilo City, Iloilo','Door No. 2, Luzviminda Building, Km. 9 Old Arpt Rd, Sasa, Davao City, 8000 Davao del Sur','Kasanyangan Rd, Zamboanga, 7000 Zamboanga del Sur') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `consigneeName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `receiverContact` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `receiveraddress` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `modeSelection` enum('Land','Air','Sea') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deliveryDate` date NOT NULL,
  `price` int NOT NULL,
  `fee` int NOT NULL,
  `totalAmount` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table 4thyeardb.fms_4g_userformdetails: ~0 rows (approximately)

-- Dumping structure for table 4thyeardb.fms_4g_users
CREATE TABLE IF NOT EXISTS `fms_4g_users` (
  `id` int NOT NULL,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `verify_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `activate` int NOT NULL,
  `role` int NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table 4thyeardb.fms_4g_users: ~8 rows (approximately)
INSERT INTO `fms_4g_users` (`id`, `username`, `email`, `password`, `verify_token`, `created_at`, `activate`, `role`, `image`) VALUES
	(11, 'admin', 'ica@gmail.com', '$2y$10$OvfYQF./684ulw6HtornuewOqsx/3ZQgxe1qmeGh3Lcl5ESTGpmsy', NULL, '2024-02-22 06:17:14', 1, 1, '../assets/uploads/jose.jpg'),
	(12, 'alyssa', 'treisadiutor@gmail.com', '$2y$10$Qctlgpm.NHWuFwIjD8TCjuOPlfVWn4IfGLWBqP8ANAfbwtZQR7ITi', NULL, '2024-02-18 17:42:12', 1, 0, '../img/default-img.jpg'),
	(20, 'cris', 'cris@gmail.com', '$2y$10$Mk6.rwE8ZM1RAA10FOGMQOpvOK7tbT3Z8.SUR53X.nh6xfDb9oIPi', NULL, '2024-02-20 07:58:43', 1, 0, '../assets/uploads/jose.jpg'),
	(34, 'ryan', 'ryan@gmail.com', '$2y$10$s.1L1nK.iHX/Gi7QfcxtmuRCBKQtqBS4FXVWEFKhE4K1s45CNtlV6', NULL, '2024-02-23 15:47:35', 1, 0, '../img/default-img.jpg'),
	(11, 'admin', 'ica@gmail.com', '$2y$10$OvfYQF./684ulw6HtornuewOqsx/3ZQgxe1qmeGh3Lcl5ESTGpmsy', NULL, '2024-02-22 06:17:14', 1, 1, '../assets/uploads/jose.jpg'),
	(12, 'alyssa', 'treisadiutor@gmail.com', '$2y$10$Qctlgpm.NHWuFwIjD8TCjuOPlfVWn4IfGLWBqP8ANAfbwtZQR7ITi', NULL, '2024-02-18 17:42:12', 1, 0, '../img/default-img.jpg'),
	(20, 'cris', 'cris@gmail.com', '$2y$10$Mk6.rwE8ZM1RAA10FOGMQOpvOK7tbT3Z8.SUR53X.nh6xfDb9oIPi', NULL, '2024-02-20 07:58:43', 1, 0, '../assets/uploads/jose.jpg'),
	(34, 'ryan', 'ryan@gmail.com', '$2y$10$s.1L1nK.iHX/Gi7QfcxtmuRCBKQtqBS4FXVWEFKhE4K1s45CNtlV6', NULL, '2024-02-23 15:47:35', 1, 0, '../img/default-img.jpg');

-- Dumping structure for table 4thyeardb.fms_g9_assetcategories
CREATE TABLE IF NOT EXISTS `fms_g9_assetcategories` (
  `CategoryID` int NOT NULL,
  `CategoryName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table 4thyeardb.fms_g9_assetcategories: ~20 rows (approximately)
INSERT INTO `fms_g9_assetcategories` (`CategoryID`, `CategoryName`) VALUES
	(1, 'IT Equipment'),
	(2, 'Office Furniture'),
	(3, 'Vehicles'),
	(4, 'Machinery'),
	(5, 'Electronics'),
	(6, 'Tools'),
	(7, 'Furniture'),
	(8, 'Building'),
	(9, 'Land'),
	(10, 'Vehicles'),
	(11, 'Laboratory Equipment'),
	(12, 'Medical Equipment'),
	(13, 'Industrial Equipment'),
	(14, 'Construction Equipment'),
	(15, 'Musical Instruments'),
	(16, 'Artwork'),
	(17, 'Sporting Goods'),
	(18, 'Books'),
	(19, 'Kitchen Equipment'),
	(20, 'Security Equipment');

-- Dumping structure for table 4thyeardb.fms_g9_assets
CREATE TABLE IF NOT EXISTS `fms_g9_assets` (
  `AssetID` int NOT NULL,
  `AssetName` varchar(255) DEFAULT NULL,
  `AcquisitionDate` date DEFAULT NULL,
  `InitialCost` decimal(10,2) DEFAULT NULL,
  `UsefulLifeInYears` int DEFAULT NULL,
  `SalvageValue` decimal(10,2) DEFAULT NULL,
  `DepreciationMethod` varchar(50) DEFAULT NULL,
  `DepreciationMethodID` int DEFAULT NULL,
  `DepreciationExpense` decimal(10,2) DEFAULT NULL,
  `CategoryID` int DEFAULT NULL,
  PRIMARY KEY (`AssetID`),
  KEY `DepreciationMethodID` (`DepreciationMethodID`),
  KEY `CategoryID` (`CategoryID`),
  CONSTRAINT `fms_g9_assets_ibfk_1` FOREIGN KEY (`DepreciationMethodID`) REFERENCES `fms_g9_depreciationmethods` (`MethodID`),
  CONSTRAINT `fms_g9_assets_ibfk_2` FOREIGN KEY (`CategoryID`) REFERENCES `fms_g9_assetcategories` (`CategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table 4thyeardb.fms_g9_assets: ~20 rows (approximately)
INSERT INTO `fms_g9_assets` (`AssetID`, `AssetName`, `AcquisitionDate`, `InitialCost`, `UsefulLifeInYears`, `SalvageValue`, `DepreciationMethod`, `DepreciationMethodID`, `DepreciationExpense`, `CategoryID`) VALUES
	(1, 'Desktop Computer', '2023-01-01', 1500.00, 5, 100.00, 'Straight-Line', 1, 0.00, 1),
	(2, 'Office Chair', '2022-06-15', 200.00, 7, 20.00, 'Straight-Line', 1, 0.00, 2),
	(3, 'Delivery Van', '2023-03-10', 25000.00, 8, 2000.00, 'Straight-Line', 1, 0.00, 3),
	(4, 'Production Machine', '2021-12-20', 50000.00, 10, 5000.00, 'Straight-Line', 1, NULL, 4),
	(5, 'Laptop', '2024-02-28', 1200.00, 3, 100.00, 'Straight-Line', 1, NULL, 1),
	(6, 'Desk', '2022-09-01', 300.00, 10, 50.00, 'Straight-Line', 1, 0.00, 7),
	(7, 'Building A', '2020-01-01', 500000.00, 50, 50000.00, 'Straight-Line', 1, 0.00, 8),
	(8, 'Land Plot', '2019-06-01', 1000000.00, -1, 0.00, 'N/A', NULL, NULL, 9),
	(9, 'Forklift', '2023-07-15', 35000.00, 7, 3000.00, 'Straight-Line', 1, NULL, 13),
	(10, 'Microscope', '2022-04-10', 8000.00, 10, 1000.00, 'Straight-Line', 1, NULL, 11),
	(11, 'X-ray Machine', '2021-11-20', 70000.00, 15, 5000.00, 'Straight-Line', 1, NULL, 12),
	(12, 'Construction Crane', '2020-05-10', 200000.00, 20, 20000.00, 'Straight-Line', 1, 0.00, 14),
	(13, 'Grand Piano', '2022-12-01', 25000.00, 30, 5000.00, 'Straight-Line', 1, NULL, 15),
	(14, 'Oil Painting', '2019-03-05', 5000.00, 50, 500.00, 'Straight-Line', 1, NULL, 16),
	(15, 'Basketball Hoop', '2023-08-15', 1500.00, 8, 200.00, 'Straight-Line', 1, 0.00, 17),
	(16, 'Bookshelf', '2022-02-20', 200.00, 15, 20.00, 'Straight-Line', 1, 0.00, 18),
	(17, 'Industrial Oven', '2020-10-10', 10000.00, 12, 1000.00, 'Straight-Line', 1, NULL, 13),
	(18, 'Chef Knife Set', '2023-05-01', 500.00, 5, 50.00, 'Straight-Line', 1, 0.00, 19),
	(19, 'Surveillance Camera', '2022-11-10', 1000.00, 7, 100.00, 'Straight-Line', 1, NULL, 20),
	(20, 'Fire Alarm System', '2023-09-15', 3000.00, 10, 200.00, 'Straight-Line', 1, NULL, 20);

-- Dumping structure for table 4thyeardb.fms_g9_asset_depreciation
CREATE TABLE IF NOT EXISTS `fms_g9_asset_depreciation` (
  `depreciation_id` int NOT NULL AUTO_INCREMENT,
  `asset_id` int DEFAULT NULL,
  `employeeid` varchar(255) DEFAULT NULL,
  `depreciation_date` date DEFAULT NULL,
  `depreciation_amount` decimal(10,2) DEFAULT NULL,
  `accumulated_depreciation` decimal(10,2) DEFAULT NULL,
  `book_value` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`depreciation_id`),
  KEY `asset_id` (`asset_id`),
  CONSTRAINT `fms_g9_asset_depreciation_ibfk_1` FOREIGN KEY (`asset_id`) REFERENCES `asset_inventory` (`asset_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table 4thyeardb.fms_g9_asset_depreciation: ~0 rows (approximately)

-- Dumping structure for table 4thyeardb.fms_g9_asset_details
CREATE TABLE IF NOT EXISTS `fms_g9_asset_details` (
  `asset_id` int NOT NULL,
  `warranty_start_date` date DEFAULT NULL,
  `warranty_end_date` date DEFAULT NULL,
  `serial_number` varchar(50) DEFAULT NULL,
  `manufacturer` varchar(100) DEFAULT NULL,
  `model` varchar(100) DEFAULT NULL,
  `supplier` varchar(100) DEFAULT NULL,
  `purchase_order_number` varchar(50) DEFAULT NULL,
  `invoice_number` varchar(50) DEFAULT NULL,
  `notes` text,
  PRIMARY KEY (`asset_id`),
  CONSTRAINT `fms_g9_asset_details_ibfk_1` FOREIGN KEY (`asset_id`) REFERENCES `asset_inventory` (`asset_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table 4thyeardb.fms_g9_asset_details: ~5 rows (approximately)
INSERT INTO `fms_g9_asset_details` (`asset_id`, `warranty_start_date`, `warranty_end_date`, `serial_number`, `manufacturer`, `model`, `supplier`, `purchase_order_number`, `invoice_number`, `notes`) VALUES
	(1, '2022-01-15', '2025-01-14', 'DL123456', 'Dell', 'Latitude E7450', 'ABC Electronics', 'PO12345', 'INV67890', 'Includes 3-year warranty'),
	(2, '2021-08-20', NULL, 'OC987654', 'Office Furnishings Inc.', 'Ergo Mesh 2000', 'Furniture World', 'PO54321', 'INV24680', 'Black color'),
	(3, '2020-05-10', NULL, 'TC123ABC', 'Toyota', 'Camry', 'Car Dealership Inc.', 'PO45678', 'INV13579', 'Model year 2020'),
	(4, '2023-02-28', NULL, 'HP456DEF', 'HP', 'ProLiant DL380', 'Tech Solutions', 'PO98765', 'INV65432', 'Includes 5-year warranty'),
	(5, '2022-09-05', NULL, 'EP789GHI', 'Epson', 'PowerLite 1781W', 'Electronics Superstore', 'PO23456', 'INV78901', 'Portable model');

-- Dumping structure for table 4thyeardb.fms_g9_asset_empdepreciation
CREATE TABLE IF NOT EXISTS `fms_g9_asset_empdepreciation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `asset_id` int DEFAULT NULL,
  `employeeid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `depreciation_method` varchar(255) DEFAULT NULL,
  `depreciation_result` decimal(8,2) DEFAULT NULL,
  `depreciation_rate` decimal(8,2) DEFAULT NULL,
  `depreciation_start_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `original_cost` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `asset_id` (`asset_id`),
  CONSTRAINT `fms_g9_asset_empdepreciation_ibfk_1` FOREIGN KEY (`asset_id`) REFERENCES `fms_g9_assets` (`AssetID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table 4thyeardb.fms_g9_asset_empdepreciation: ~20 rows (approximately)
INSERT INTO `fms_g9_asset_empdepreciation` (`id`, `asset_id`, `employeeid`, `depreciation_method`, `depreciation_result`, `depreciation_rate`, `depreciation_start_date`, `created_at`, `updated_at`, `original_cost`) VALUES
	(1, 1, '101', 'Straight-line', 0.13, 10.50, '2023-01-01', '2024-03-31 12:16:03', '2024-03-31 12:17:02', NULL),
	(2, 2, '102', 'Double-declining', NULL, 15.00, '2022-12-15', '2024-03-31 12:16:03', '2024-03-31 12:16:03', NULL),
	(3, 3, '103', 'Units of production', NULL, 8.75, '2023-02-20', '2024-03-31 12:16:03', '2024-03-31 12:16:03', NULL),
	(4, 4, '104', 'Straight-line', 0.13, 12.25, '2023-03-10', '2024-03-31 12:16:03', '2024-03-31 12:17:02', NULL),
	(5, 5, '105', 'Straight-line', 0.11, 9.00, '2023-01-05', '2024-03-31 12:16:03', '2024-03-31 12:17:02', NULL),
	(6, 6, '106', 'Double-declining', NULL, 14.00, '2022-11-20', '2024-03-31 12:16:03', '2024-03-31 12:16:03', NULL),
	(7, 7, '107', 'Units of production', NULL, 7.50, '2023-02-28', '2024-03-31 12:16:03', '2024-03-31 12:16:03', NULL),
	(8, 8, '108', 'Straight-line', 0.11, 11.00, '2023-04-15', '2024-03-31 12:16:03', '2024-03-31 12:17:02', NULL),
	(9, 9, '109', 'Straight-line', 0.11, 8.75, '2023-01-15', '2024-03-31 12:16:03', '2024-03-31 12:17:02', NULL),
	(10, 10, '110', 'Double-declining', NULL, 13.50, '2022-10-30', '2024-03-31 12:16:03', '2024-03-31 12:16:03', NULL),
	(11, 11, '111', 'Units of production', NULL, 6.25, '2023-03-05', '2024-03-31 12:16:03', '2024-03-31 12:16:03', NULL),
	(12, 12, '112', 'Straight-line', 0.12, 10.00, '2023-01-20', '2024-03-31 12:16:03', '2024-03-31 12:17:02', NULL),
	(13, 13, '113', 'Straight-line', 0.09, 7.50, '2023-02-10', '2024-03-31 12:16:03', '2024-03-31 12:17:02', NULL),
	(14, 14, '114', 'Double-declining', NULL, 12.00, '2022-12-05', '2024-03-31 12:16:03', '2024-03-31 12:16:03', NULL),
	(15, 15, '115', 'Units of production', NULL, 5.00, '2023-01-25', '2024-03-31 12:16:03', '2024-03-31 12:16:03', NULL),
	(16, 16, '116', 'Straight-line', 0.10, 9.25, '2023-03-20', '2024-03-31 12:16:03', '2024-03-31 12:17:02', NULL),
	(17, 17, '117', 'Straight-line', 0.08, 6.75, '2023-01-30', '2024-03-31 12:16:03', '2024-03-31 12:17:02', NULL),
	(18, 18, '118', 'Double-declining', NULL, 11.50, '2022-11-15', '2024-03-31 12:16:03', '2024-03-31 12:16:03', NULL),
	(19, 19, '119', 'Units of production', NULL, 3.75, '2023-02-15', '2024-03-31 12:16:03', '2024-03-31 12:16:03', NULL),
	(20, 20, '120', 'Straight-line', 0.08, 8.50, '2023-04-05', '2024-03-31 12:16:03', '2024-03-31 12:17:02', NULL);

-- Dumping structure for table 4thyeardb.fms_g9_asset_inventory
CREATE TABLE IF NOT EXISTS `fms_g9_asset_inventory` (
  `asset_id` int NOT NULL AUTO_INCREMENT,
  `asset_name` varchar(100) NOT NULL,
  `description` text,
  `category` varchar(50) DEFAULT NULL,
  `acquisition_date` date DEFAULT NULL,
  `purchase_cost` decimal(10,2) DEFAULT NULL,
  `current_value` decimal(10,2) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `depreciation_method` varchar(50) DEFAULT NULL,
  `depreciation_rate` decimal(5,2) DEFAULT NULL,
  `last_maintenance_date` date DEFAULT NULL,
  `next_maintenance_date` date DEFAULT NULL,
  `assigned_to` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`asset_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table 4thyeardb.fms_g9_asset_inventory: ~5 rows (approximately)
INSERT INTO `fms_g9_asset_inventory` (`asset_id`, `asset_name`, `description`, `category`, `acquisition_date`, `purchase_cost`, `current_value`, `location`, `status`, `depreciation_method`, `depreciation_rate`, `last_maintenance_date`, `next_maintenance_date`, `assigned_to`) VALUES
	(1, 'Laptop', 'Dell Latitude E7450', 'IT Equipment', '2022-01-15', 1200.00, 900.00, 'Office 1', 'In Use', 'Straight-Line', 10.00, '2023-06-10', '2023-12-10', 'John Doe'),
	(2, 'Office Chair', 'Ergonomic mesh chair', 'Furniture', '2021-08-20', 150.00, 120.00, 'Office 2', 'In Use', 'Straight-Line', 5.00, '2023-02-05', '2023-08-05', 'Jane Smith'),
	(3, 'Company Car', 'Toyota Camry', 'Vehicle', '2020-05-10', 25000.00, 18000.00, 'Parking Lot', 'In Use', 'Straight-Line', 15.00, '2023-03-20', '2023-09-20', 'Mark Johnson'),
	(4, 'Server', 'HP ProLiant DL380', 'IT Equipment', '2023-02-28', 5000.00, 4000.00, 'Data Center', 'In Use', 'Straight-Line', 10.00, '2023-08-15', '2024-02-15', 'IT Department'),
	(5, 'Projector', 'Epson PowerLite 1781W', 'IT Equipment', '2022-09-05', 800.00, 600.00, 'Conference Room', 'In Use', 'Straight-Line', 10.00, '2023-05-01', '2023-11-01', 'Office Manager');

-- Dumping structure for table 4thyeardb.fms_g9_asset_locations
CREATE TABLE IF NOT EXISTS `fms_g9_asset_locations` (
  `location_id` int NOT NULL AUTO_INCREMENT,
  `location_name` varchar(100) NOT NULL,
  `description` text,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table 4thyeardb.fms_g9_asset_locations: ~5 rows (approximately)
INSERT INTO `fms_g9_asset_locations` (`location_id`, `location_name`, `description`, `address`, `city`, `state`, `country`) VALUES
	(1, 'Office 1', 'Main office building', '123 Main Street', 'Anytown', 'State', 'Country'),
	(2, 'Office 2', 'Branch office', '456 Oak Avenue', 'Smalltown', 'State', 'Country'),
	(3, 'Parking Lot', 'Employee parking area', '789 Elm Street', 'Cityville', 'State', 'Country'),
	(4, 'Data Center', 'Centralized server room', '101 Data Center Drive', 'Tech City', 'State', 'Country'),
	(5, 'Conference Room', 'Meeting room', '789 Maple Avenue', 'Metropolis', 'State', 'Country');

-- Dumping structure for table 4thyeardb.fms_g9_asset_maintenance
CREATE TABLE IF NOT EXISTS `fms_g9_asset_maintenance` (
  `maintenance_id` int NOT NULL AUTO_INCREMENT,
  `asset_id` int DEFAULT NULL,
  `maintenance_date` date DEFAULT NULL,
  `maintenance_type` varchar(50) DEFAULT NULL,
  `maintenance_description` text,
  `maintenance_cost` decimal(10,2) DEFAULT NULL,
  `maintenance_notes` text,
  PRIMARY KEY (`maintenance_id`),
  KEY `asset_id` (`asset_id`),
  CONSTRAINT `fms_g9_asset_maintenance_ibfk_1` FOREIGN KEY (`asset_id`) REFERENCES `asset_inventory` (`asset_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table 4thyeardb.fms_g9_asset_maintenance: ~3 rows (approximately)
INSERT INTO `fms_g9_asset_maintenance` (`maintenance_id`, `asset_id`, `maintenance_date`, `maintenance_type`, `maintenance_description`, `maintenance_cost`, `maintenance_notes`) VALUES
	(1, 1, '2023-03-15', 'Routine Maintenance', 'Performed routine maintenance', 50.00, 'Cleaned dust and updated software'),
	(2, 2, '2023-01-10', 'Repair', 'Repaired broken armrest', 30.00, 'Replaced armrest with new part'),
	(3, 3, '2023-04-20', 'Oil Change', 'Performed oil change', 80.00, 'Changed engine oil');

-- Dumping structure for table 4thyeardb.fms_g9_asset_performance
CREATE TABLE IF NOT EXISTS `fms_g9_asset_performance` (
  `asset_id` int NOT NULL,
  `asset_name` varchar(100) DEFAULT NULL,
  `performance_metric1` decimal(10,2) DEFAULT NULL,
  `performance_metric2` decimal(10,2) DEFAULT NULL,
  `performance_metric3` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`asset_id`),
  CONSTRAINT `fms_g9_asset_performance_ibfk_1` FOREIGN KEY (`asset_id`) REFERENCES `asset_inventory` (`asset_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table 4thyeardb.fms_g9_asset_performance: ~0 rows (approximately)

-- Dumping structure for table 4thyeardb.fms_g9_asset_status
CREATE TABLE IF NOT EXISTS `fms_g9_asset_status` (
  `status_id` int NOT NULL AUTO_INCREMENT,
  `status_name` varchar(50) NOT NULL,
  `description` text,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table 4thyeardb.fms_g9_asset_status: ~4 rows (approximately)
INSERT INTO `fms_g9_asset_status` (`status_id`, `status_name`, `description`) VALUES
	(1, 'In Use', 'Currently in use'),
	(2, 'Under Maintenance', 'Undergoing maintenance'),
	(3, 'In Storage', 'Stored in inventory'),
	(4, 'Retired', 'No longer in use');

-- Dumping structure for table 4thyeardb.fms_g9_asset_transactions
CREATE TABLE IF NOT EXISTS `fms_g9_asset_transactions` (
  `transaction_id` int NOT NULL AUTO_INCREMENT,
  `asset_id` int DEFAULT NULL,
  `transaction_date` date DEFAULT NULL,
  `transaction_type` varchar(50) DEFAULT NULL,
  `transaction_description` text,
  `transaction_amount` decimal(10,2) DEFAULT NULL,
  `transaction_notes` text,
  PRIMARY KEY (`transaction_id`),
  KEY `asset_id` (`asset_id`),
  CONSTRAINT `fms_g9_asset_transactions_ibfk_1` FOREIGN KEY (`asset_id`) REFERENCES `asset_inventory` (`asset_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table 4thyeardb.fms_g9_asset_transactions: ~0 rows (approximately)

-- Dumping structure for table 4thyeardb.fms_g9_asset_utilization
CREATE TABLE IF NOT EXISTS `fms_g9_asset_utilization` (
  `asset_id` int NOT NULL,
  `asset_name` varchar(100) DEFAULT NULL,
  `utilization_rate` decimal(5,2) DEFAULT NULL,
  `last_utilization_date` date DEFAULT NULL,
  PRIMARY KEY (`asset_id`),
  CONSTRAINT `fms_g9_asset_utilization_ibfk_1` FOREIGN KEY (`asset_id`) REFERENCES `asset_inventory` (`asset_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table 4thyeardb.fms_g9_asset_utilization: ~0 rows (approximately)

-- Dumping structure for table 4thyeardb.fms_g9_depreciationmethods
CREATE TABLE IF NOT EXISTS `fms_g9_depreciationmethods` (
  `MethodID` int NOT NULL,
  `MethodName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`MethodID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table 4thyeardb.fms_g9_depreciationmethods: ~3 rows (approximately)
INSERT INTO `fms_g9_depreciationmethods` (`MethodID`, `MethodName`) VALUES
	(1, 'Straight-Line'),
	(2, 'Double-Declining Balance'),
	(3, 'Units of Production');

-- Dumping structure for table 4thyeardb.fms_g9_financial_transactions
CREATE TABLE IF NOT EXISTS `fms_g9_financial_transactions` (
  `transaction_id` int NOT NULL,
  `transaction_date` date DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `transaction_type` varchar(50) DEFAULT NULL,
  `assetid` int DEFAULT NULL,
  `employeeid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  KEY `assetid` (`assetid`),
  CONSTRAINT `fms_g9_financial_transactions_ibfk_1` FOREIGN KEY (`assetid`) REFERENCES `fms_g9_assets` (`AssetID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table 4thyeardb.fms_g9_financial_transactions: ~20 rows (approximately)
INSERT INTO `fms_g9_financial_transactions` (`transaction_id`, `transaction_date`, `amount`, `transaction_type`, `assetid`, `employeeid`) VALUES
	(1, '2024-03-15', 1000.00, 'Sale', 1, '2'),
	(2, '2024-03-20', 500.00, 'Purchase', 2, '4'),
	(3, '2024-03-25', 1500.00, 'Sale', 4, '1'),
	(4, '2024-03-28', 800.00, 'Purchase', 3, '3'),
	(5, '2024-03-30', 2000.00, 'Sale', 5, '5'),
	(6, '2024-04-02', 1200.00, 'Purchase', 1, '2'),
	(7, '2024-04-05', 3000.00, 'Sale', 2, '4'),
	(8, '2024-04-10', 600.00, 'Purchase', 3, '3'),
	(9, '2024-04-15', 1800.00, 'Sale', 5, '5'),
	(10, '2024-04-18', 900.00, 'Purchase', 4, '1'),
	(11, '2024-04-20', 2200.00, 'Sale', 1, '2'),
	(12, '2024-04-25', 700.00, 'Purchase', 2, '4'),
	(13, '2024-04-28', 2500.00, 'Sale', 4, '1'),
	(14, '2024-05-01', 1000.00, 'Purchase', 3, '3'),
	(15, '2024-05-05', 1900.00, 'Sale', 5, '5'),
	(16, '2024-05-08', 800.00, 'Purchase', 1, '2'),
	(17, '2024-05-10', 2800.00, 'Sale', 2, '4'),
	(18, '2024-05-15', 500.00, 'Purchase', 3, '3'),
	(19, '2024-05-20', 1600.00, 'Sale', 5, '5'),
	(20, '2024-05-25', 1100.00, 'Purchase', 4, '1');

-- Dumping structure for table 4thyeardb.fms_g9_taxrates
CREATE TABLE IF NOT EXISTS `fms_g9_taxrates` (
  `tax_rate_id` int NOT NULL AUTO_INCREMENT,
  `tax_rate_name` varchar(100) NOT NULL,
  `rate_percentage` decimal(5,2) NOT NULL,
  `effective_from` date NOT NULL,
  `effective_to` date DEFAULT NULL,
  `description` text,
  `tax_authority` varchar(100) DEFAULT NULL,
  `region` varchar(100) DEFAULT NULL,
  `tax_type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tax_rate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table 4thyeardb.fms_g9_taxrates: ~5 rows (approximately)
INSERT INTO `fms_g9_taxrates` (`tax_rate_id`, `tax_rate_name`, `rate_percentage`, `effective_from`, `effective_to`, `description`, `tax_authority`, `region`, `tax_type`) VALUES
	(1, 'State Sales Tax', 6.50, '2023-01-01', NULL, 'State sales tax rate for retail transactions within the state.', 'State Department of Revenue', 'California', 'Sales Tax'),
	(2, 'Local Sales Tax', 2.00, '2023-01-01', NULL, 'Local sales tax rate imposed by city ordinance.', 'City Council', 'Los Angeles', 'Sales Tax'),
	(3, 'Federal Income Tax', 15.00, '2021-01-01', NULL, 'Federal income tax rate for individuals and businesses.', 'Internal Revenue Service (IRS)', NULL, 'Income Tax'),
	(4, 'State Sales Tax', 7.00, '2024-01-01', NULL, 'Revised state sales tax rate effective from the new fiscal year.', 'State Department of Revenue', 'California', 'Sales Tax'),
	(5, 'Philippine Social Security System (SSS)', 255.00, '2024-03-31', NULL, 'Social insurance program in the Philippines to workers in the private, professional and informal sectors. SSS is established by virtue of Republic Act No. 1161, better known as the Social Security Act of 1954.', 'Philippine Social Security System (SSS)', 'Philippines', 'Philippine Social Security System (SSS)');

-- Dumping structure for table 4thyeardb.fms_g9_taxtypes
CREATE TABLE IF NOT EXISTS `fms_g9_taxtypes` (
  `tax_type_id` int NOT NULL AUTO_INCREMENT,
  `tax_type_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tax_type_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`tax_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table 4thyeardb.fms_g9_taxtypes: ~11 rows (approximately)
INSERT INTO `fms_g9_taxtypes` (`tax_type_id`, `tax_type_name`, `tax_type_code`, `description`) VALUES
	(1, 'Sales Tax', 'ST', 'A tax imposed on the sale of goods and services.'),
	(2, 'Income Tax', 'IT', 'A tax levied on the income earned by individuals or businesses.'),
	(3, 'Property Tax', 'PT', 'A tax assessed on the value of real estate or personal property.'),
	(4, 'Value Added Tax (VAT)', 'VAT', 'A consumption tax levied on the value added to goods and services.'),
	(5, 'Corporate Tax', 'CT', 'A tax imposed on the profits earned by corporations or businesses.'),
	(6, 'Excise Tax', 'ET', 'A tax levied on specific goods or activities, such as alcohol, tobacco, etc.'),
	(7, 'Payroll Tax', 'PT', 'A tax withheld from employees\' wages by employers for social insurance programs.'),
	(8, 'Capital Gains Tax', 'CGT', 'A tax imposed on the capital gains arising from the sale of assets.'),
	(9, 'Customs Duty', 'CD', 'A tax imposed on goods imported into or exported from a country.'),
	(10, 'Goods and Services Tax (GST)', 'GST', 'A broad-based consumption tax similar to VAT.'),
	(11, 'Philippine Social Security System (SSS)', 'SSS', ' A social insurance program in the Philippines to workers in the private, professional and informal sectors. SSS is established by virtue of Republic Act No. 1161, better known as the Social Security Act of 1954');

-- Dumping structure for table 4thyeardb.fms_g9_tblempsalary
CREATE TABLE IF NOT EXISTS `fms_g9_tblempsalary` (
  `SalaryID` int NOT NULL,
  `employeeid` varchar(255) DEFAULT NULL,
  `CutoffStartDate` date DEFAULT NULL,
  `CutoffEndDate` date DEFAULT NULL,
  `Salary` decimal(10,2) DEFAULT NULL,
  `FixedSalary` decimal(10,2) DEFAULT NULL,
  `PagIbigDeduction` decimal(10,2) DEFAULT NULL,
  `SssDeduction` decimal(10,2) DEFAULT NULL,
  `PhilHealthDeduction` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`SalaryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table 4thyeardb.fms_g9_tblempsalary: ~20 rows (approximately)
INSERT INTO `fms_g9_tblempsalary` (`SalaryID`, `employeeid`, `CutoffStartDate`, `CutoffEndDate`, `Salary`, `FixedSalary`, `PagIbigDeduction`, `SssDeduction`, `PhilHealthDeduction`) VALUES
	(1, '1', '2024-03-01', '2024-03-15', 5000.00, 20000.00, 200.00, 300.00, 250.00),
	(2, '2', '2024-03-01', '2024-03-15', 5500.00, 20000.00, 220.00, 320.00, 270.00),
	(3, '3', '2024-03-01', '2024-03-15', 6000.00, 20000.00, 240.00, 340.00, 290.00),
	(4, '4', '2024-03-01', '2024-03-15', 6500.00, 20000.00, 260.00, 360.00, 310.00),
	(5, '5', '2024-03-01', '2024-03-15', 7000.00, 20000.00, 280.00, 380.00, 330.00),
	(6, '6', '2024-03-01', '2024-03-15', 7500.00, 20000.00, 300.00, 400.00, 350.00),
	(7, '7', '2024-03-01', '2024-03-15', 8000.00, 20000.00, 320.00, 420.00, 370.00),
	(8, '8', '2024-03-01', '2024-03-15', 8500.00, 20000.00, 340.00, 440.00, 390.00),
	(9, '9', '2024-03-01', '2024-03-15', 9000.00, 20000.00, 360.00, 460.00, 410.00),
	(10, '10', '2024-03-01', '2024-03-15', 9500.00, 20000.00, 380.00, 480.00, 430.00),
	(11, '1', '2024-03-16', '2024-03-31', 5000.00, 20000.00, 200.00, 300.00, 250.00),
	(12, '2', '2024-03-16', '2024-03-31', 5500.00, 20000.00, 220.00, 320.00, 270.00),
	(13, '3', '2024-03-16', '2024-03-31', 6000.00, 20000.00, 240.00, 340.00, 290.00),
	(14, '4', '2024-03-16', '2024-03-31', 6500.00, 20000.00, 260.00, 360.00, 310.00),
	(15, '5', '2024-03-16', '2024-03-31', 7000.00, 20000.00, 280.00, 380.00, 330.00),
	(16, '6', '2024-03-16', '2024-03-31', 7500.00, 20000.00, 300.00, 400.00, 350.00),
	(17, '7', '2024-03-16', '2024-03-31', 8000.00, 20000.00, 320.00, 420.00, 370.00),
	(18, '8', '2024-03-16', '2024-03-31', 8500.00, 20000.00, 340.00, 440.00, 390.00),
	(19, '9', '2024-03-16', '2024-03-31', 9000.00, 20000.00, 360.00, 460.00, 410.00),
	(20, '10', '2024-03-16', '2024-03-31', 9500.00, 20000.00, 380.00, 480.00, 430.00);

-- Dumping structure for table 4thyeardb.fms_g9_tblpaymenttrail
CREATE TABLE IF NOT EXISTS `fms_g9_tblpaymenttrail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_date` date NOT NULL,
  `payment_method` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table 4thyeardb.fms_g9_tblpaymenttrail: ~2 rows (approximately)
INSERT INTO `fms_g9_tblpaymenttrail` (`id`, `employee_id`, `amount`, `payment_date`, `payment_method`, `description`, `created_at`, `updated_at`) VALUES
	(1, 20242455, 0.00, '0000-00-00', '', NULL, '2024-03-03 22:39:14', '2024-03-03 22:39:14'),
	(2, 20249939, 0.00, '0000-00-00', '', NULL, '2024-03-03 22:39:25', '2024-03-03 22:39:25');

-- Dumping structure for table 4thyeardb.fms_g9_tblpersonaldata
CREATE TABLE IF NOT EXISTS `fms_g9_tblpersonaldata` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `employeeid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `plantillaid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employeecode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `rank` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `dateposition` date DEFAULT NULL,
  `emp_tin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emp_pagibig` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emp_sss` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emp_philhealth` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emp_hmo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emp_peraa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prc_expiration` date DEFAULT NULL,
  `passport` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emp_bank` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teachingtype` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `positionid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employmentstat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `office` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deptid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `bplace` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `bdate` date DEFAULT NULL,
  `resigned_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationalityid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religionid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `civil_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `citizenid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `personal_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landline` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isactive` tinyint(1) DEFAULT NULL,
  `teaching` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `branch` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `present_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isEmployee` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table 4thyeardb.fms_g9_tblpersonaldata: ~4 rows (approximately)
INSERT INTO `fms_g9_tblpersonaldata` (`id`, `employeeid`, `plantillaid`, `employeecode`, `lname`, `fname`, `mname`, `nname`, `rank`, `dateposition`, `emp_tin`, `emp_pagibig`, `emp_sss`, `emp_philhealth`, `emp_hmo`, `emp_peraa`, `prc`, `prc_expiration`, `passport`, `emp_bank`, `teachingtype`, `positionid`, `employmentstat`, `office`, `deptid`, `gender`, `bplace`, `bdate`, `resigned_reason`, `nationalityid`, `religionid`, `civil_status`, `citizenid`, `personal_email`, `mobile`, `landline`, `email`, `isactive`, `teaching`, `branch`, `created_at`, `updated_at`, `present_address`, `isEmployee`) VALUES
	(1, '20240001', NULL, NULL, '', 'shielaHR1', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', 1, '2024-02-24 19:15:49', '2024-02-24 19:15:49', NULL, 1),
	(2, '20240002', NULL, NULL, '', 'shielaHR2', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', 2, '2024-02-24 19:16:15', '2024-02-24 19:16:15', NULL, 1),
	(3, '20242455', NULL, NULL, 'O\'Keefe', 'Marisa', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', 1, '2024-02-27 07:20:58', '2024-02-27 07:20:58', NULL, 1),
	(4, '20249939', NULL, NULL, 'Bergstrom', 'Joyce', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', 1, '2024-02-27 10:09:33', '2024-02-27 10:09:33', NULL, 1);

-- Dumping structure for table 4thyeardb.fms_g9_tblsubcontractor
CREATE TABLE IF NOT EXISTS `fms_g9_tblsubcontractor` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `employeeid` int DEFAULT NULL,
  `employee_branch` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_department` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subcontractor_id` int DEFAULT NULL,
  `subcontractor_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subcontractor_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_id` int DEFAULT NULL,
  `product_prize` decimal(10,2) DEFAULT NULL,
  `transac_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `isNotice` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table 4thyeardb.fms_g9_tblsubcontractor: ~20 rows (approximately)
INSERT INTO `fms_g9_tblsubcontractor` (`id`, `employeeid`, `employee_branch`, `employee_department`, `subcontractor_id`, `subcontractor_code`, `subcontractor_desc`, `vendor_id`, `product_prize`, `transac_status`, `employee_review`, `isNotice`, `created_at`, `updated_at`) VALUES
	(1, 20240001, 'Dummy Branch 1', 'Dummy Department 1', 1, 'Code1', 'Description 1', 1, 346.00, 'Status 1', 'Review 1', 1, '2024-02-26 07:03:53', '2024-02-26 07:03:53'),
	(2, 20240002, 'Dummy Branch 2', 'Dummy Department 2', 2, 'Code2', 'Description 2', 2, 795.00, 'Status 2', 'Review 2', 1, '2024-02-26 07:03:53', '2024-02-26 07:03:53'),
	(3, 20240003, 'Dummy Branch 3', 'Dummy Department 3', 3, 'Code3', 'Description 3', 3, 275.00, 'Status 3', 'Review 3', 1, '2024-02-26 07:03:53', '2024-02-26 07:03:53'),
	(4, 20240004, 'Dummy Branch 4', 'Dummy Department 4', 4, 'Code4', 'Description 4', 4, 247.00, 'Status 4', 'Review 4', 1, '2024-02-26 07:03:53', '2024-02-26 07:03:53'),
	(5, 20240005, 'Dummy Branch 5', 'Dummy Department 5', 5, 'Code5', 'Description 5', 5, 403.00, 'Status 5', 'Review 5', 1, '2024-02-26 07:03:53', '2024-02-26 07:03:53'),
	(6, 20240006, 'Dummy Branch 6', 'Dummy Department 6', 6, 'Code6', 'Description 6', 6, 285.00, 'Status 6', 'Review 6', 1, '2024-02-26 07:03:53', '2024-02-26 07:03:53'),
	(7, 20240007, 'Dummy Branch 7', 'Dummy Department 7', 7, 'Code7', 'Description 7', 7, 118.00, 'Status 7', 'Review 7', 1, '2024-02-26 07:03:53', '2024-02-26 07:03:53'),
	(8, 20240008, 'Dummy Branch 8', 'Dummy Department 8', 8, 'Code8', 'Description 8', 8, 207.00, 'Status 8', 'Review 8', 1, '2024-02-26 07:03:53', '2024-02-26 07:03:53'),
	(9, 20240009, 'Dummy Branch 9', 'Dummy Department 9', 9, 'Code9', 'Description 9', 9, 270.00, 'Status 9', 'Review 9', 1, '2024-02-26 07:03:54', '2024-02-26 07:03:54'),
	(10, 20240010, 'Dummy Branch 10', 'Dummy Department 10', 10, 'Code10', 'Description 10', 10, 685.00, 'Status 10', 'Review 10', 1, '2024-02-26 07:03:54', '2024-02-26 07:03:54'),
	(11, 20240011, 'iure Branch', 'autem Department', 11, 'fuga Code', 'Voluptatem nisi quibusdam est asperiores ducimus.', 11, 544.13, 'maxime Status', 'Aut corrupti quia necessitatibus quasi autem voluptatem. Velit fugiat quaerat sed consectetur non. Blanditiis asperiores enim explicabo asperiores quisquam autem cupiditate.', 1, '2023-12-16 15:00:14', '2023-08-12 13:34:03'),
	(12, 20240012, 'omnis Branch', 'consequuntur Department', 12, 'ab Code', 'Et maiores ullam eveniet soluta atque.', 12, 188.99, 'architecto Status', 'Quo nesciunt et vitae aliquid veniam eligendi eos. Dolores aut autem ab harum dolorem ex aliquid non. Fuga aut possimus commodi quaerat. Aut dolorem reiciendis ut temporibus et cupiditate.', 0, '2023-07-22 18:16:14', '2023-07-02 06:59:08'),
	(13, 20240013, 'animi Branch', 'mollitia Department', 13, 'ex Code', 'Aut voluptates rem odio qui.', 13, 502.38, 'libero Status', 'Aut dolores similique eius ut enim. Voluptatem quae suscipit esse exercitationem voluptas. Temporibus sed a quia facilis voluptatibus officiis inventore.', 0, '2023-11-04 04:39:07', '2023-08-04 12:51:48'),
	(14, 20240014, 'reiciendis Branch', 'eum Department', 14, 'quaerat Code', 'Sunt laudantium rerum deserunt voluptates animi.', 14, 103.50, 'cum Status', 'Modi nulla ut omnis quidem consectetur. Expedita tempore error facilis delectus suscipit aut quibusdam. Nisi perferendis qui molestiae distinctio ea maiores. Odio quos in qui qui reprehenderit.', 1, '2023-10-13 12:07:42', '2023-03-02 10:35:17'),
	(15, 20240015, 'nesciunt Branch', 'et Department', 15, 'sed Code', 'Voluptatum consequatur dolores quidem facilis aut laboriosam quod.', 15, 838.75, 'sapiente Status', 'Eveniet fugiat quisquam et ea. Dolor quo quisquam ut quos ratione minima. Optio sint ad est sapiente necessitatibus quisquam. Veritatis praesentium aut quia cupiditate totam distinctio cupiditate error. Culpa autem sapiente in quisquam.', 1, '2023-04-03 04:48:51', '2023-06-22 04:10:44'),
	(16, 20240016, 'ducimus Branch', 'consequatur Department', 16, 'itaque Code', 'Eum fuga neque veniam est modi incidunt dignissimos.', 16, 233.23, 'reiciendis Status', 'Eum quas tempora alias earum. Eius neque aut enim enim natus aspernatur delectus. Natus impedit ad a voluptas animi quasi. Tenetur qui facilis et.', 1, '2023-03-08 20:33:12', '2023-03-07 20:59:04'),
	(17, 20240017, 'tempore Branch', 'quia Department', 17, 'asperiores Code', 'Autem autem aliquid possimus veniam numquam ut error rerum.', 17, 902.48, 'accusamus Status', 'Blanditiis ut sit pariatur qui odit ducimus ducimus praesentium. Culpa quasi et maiores dolor facilis quas. Similique ut enim non consequatur distinctio dolorum omnis debitis.', 0, '2023-05-31 20:33:09', '2023-05-13 10:02:57'),
	(18, 20240018, 'et Branch', 'suscipit Department', 18, 'esse Code', 'Quibusdam labore doloribus mollitia quia et.', 18, 409.55, 'enim Status', 'Temporibus labore iusto et nostrum sit cumque. Facere reprehenderit voluptatum et sit cum. A ducimus nobis non vero nihil. Sed suscipit aperiam rerum et dolor.', 0, '2024-02-08 21:08:15', '2023-03-03 22:25:19'),
	(19, 20240019, 'mollitia Branch', 'nulla Department', 19, 'libero Code', 'Ut rerum ea veniam officia mollitia qui nesciunt.', 19, 560.80, 'praesentium Status', 'Minus optio est sunt et voluptatibus. Placeat fugiat dolorem explicabo iure. Laudantium placeat incidunt voluptate ipsam minima minus quae. Odio explicabo et error eum est voluptatem eum quia.', 1, '2023-05-12 01:55:23', '2024-01-07 14:03:47'),
	(20, 20240020, 'sequi Branch', 'quae Department', 20, 'rem Code', 'Asperiores vel ullam cupiditate fuga odio non et expedita.', 20, 350.47, 'consequatur Status', 'Voluptas praesentium ab quia ut laborum. Aliquam sed et maxime libero id asperiores.', 1, '2023-10-15 16:02:52', '2023-07-19 19:38:41');

-- Dumping structure for table 4thyeardb.fms_g9_tbluserdesc
CREATE TABLE IF NOT EXISTS `fms_g9_tbluserdesc` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `cid` int NOT NULL,
  `descid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table 4thyeardb.fms_g9_tbluserdesc: ~21 rows (approximately)
INSERT INTO `fms_g9_tbluserdesc` (`id`, `cid`, `descid`, `created_at`, `updated_at`) VALUES
	(1, 3, 'Customer', NULL, NULL),
	(2, 3, 'Customer', NULL, NULL),
	(3, 1, 'Admin', NULL, NULL),
	(4, 1, 'Admin', NULL, NULL),
	(5, 2, 'Manager', NULL, NULL),
	(6, 1, 'Admin', NULL, NULL),
	(7, 3, 'Customer', NULL, NULL),
	(8, 1, 'Admin', NULL, NULL),
	(9, 2, 'Manager', NULL, NULL),
	(10, 0, 'Superadmin', NULL, NULL),
	(11, 1, 'Admin', NULL, NULL),
	(12, 2, 'Manager', NULL, NULL),
	(13, 1, 'Admin', NULL, NULL),
	(14, 2, 'Manager', NULL, NULL),
	(15, 2, 'Manager', NULL, NULL),
	(16, 2, 'Manager', NULL, NULL),
	(17, 1, 'Admin', NULL, NULL),
	(18, 3, 'Customer', NULL, NULL),
	(19, 1, 'Admin', NULL, NULL),
	(20, 1, 'Admin', NULL, NULL),
	(21, 4, 'HR', NULL, NULL);

-- Dumping structure for table 4thyeardb.fms_g9_tbluserdescrip
CREATE TABLE IF NOT EXISTS `fms_g9_tbluserdescrip` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usertype` int NOT NULL,
  `userdesc` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table 4thyeardb.fms_g9_tbluserdescrip: ~13 rows (approximately)
INSERT INTO `fms_g9_tbluserdescrip` (`id`, `usertype`, `userdesc`, `created_at`, `updated_at`) VALUES
	(1, 0, 'Super Administrator', '2024-03-08 16:00:00', '2024-03-08 16:00:00'),
	(2, 1, 'Administrator', '2024-03-09 02:46:29', '2024-03-09 02:46:31'),
	(3, 2, 'Tax Manager', '2024-03-09 02:47:02', '2024-03-09 02:47:06'),
	(4, 3, 'Asset Manager', NULL, NULL),
	(5, 4, 'Maintenance Supervisor', NULL, NULL),
	(6, 5, 'Maintenance Technician', NULL, NULL),
	(7, 6, 'Financial Analyst', NULL, NULL),
	(8, 7, 'Auditor', NULL, NULL),
	(9, 8, 'General User', NULL, NULL),
	(11, 9, 'test', '2024-03-17 07:19:54', '2024-03-17 07:19:54'),
	(12, 92, 'tests', '2024-03-17 07:22:02', '2024-03-17 07:22:02'),
	(13, 88, 'dsd', '2024-03-17 07:22:24', '2024-03-17 07:22:24'),
	(14, 10, 'Accountant', '2024-03-23 02:00:46', '2024-03-23 02:00:46');

-- Dumping structure for table 4thyeardb.fms_g9_transaction_tax_rates
CREATE TABLE IF NOT EXISTS `fms_g9_transaction_tax_rates` (
  `transaction_id` int DEFAULT NULL,
  `tax_type` varchar(50) DEFAULT NULL,
  KEY `transaction_id` (`transaction_id`),
  CONSTRAINT `fms_g9_transaction_tax_rates_ibfk_1` FOREIGN KEY (`transaction_id`) REFERENCES `fms_g9_financial_transactions` (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table 4thyeardb.fms_g9_transaction_tax_rates: ~20 rows (approximately)
INSERT INTO `fms_g9_transaction_tax_rates` (`transaction_id`, `tax_type`) VALUES
	(1, 'Sales Tax'),
	(2, 'Sales Tax'),
	(3, 'Sales Tax'),
	(4, 'Sales Tax'),
	(5, 'Sales Tax'),
	(6, 'Sales Tax'),
	(7, 'Sales Tax'),
	(8, 'Sales Tax'),
	(9, 'Sales Tax'),
	(10, 'Sales Tax'),
	(11, 'Sales Tax'),
	(12, 'Sales Tax'),
	(13, 'Sales Tax'),
	(14, 'Sales Tax'),
	(15, 'Sales Tax'),
	(16, 'Sales Tax'),
	(17, 'Sales Tax'),
	(18, 'Sales Tax'),
	(19, 'Sales Tax'),
	(20, 'Sales Tax');

-- Dumping structure for table 4thyeardb.fms_g9_users
CREATE TABLE IF NOT EXISTS `fms_g9_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `usertype` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `userid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `isNotice` int DEFAULT '0',
  `isSuper` int DEFAULT '0',
  `Column 13` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_userid_unique` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table 4thyeardb.fms_g9_users: ~13 rows (approximately)
INSERT INTO `fms_g9_users` (`id`, `name`, `email`, `usertype`, `email_verified_at`, `password`, `userid`, `remember_token`, `created_at`, `updated_at`, `isNotice`, `isSuper`, `Column 13`) VALUES
	(1, 'Kelley Nicolas DDS', 'superadmin@gmail.com', '0', NULL, '$2y$12$VgxkweGEk3kTH3pTNvBht.yN5B3FtDxAKrtr66UJIHg/KwuSiMNPK', NULL, NULL, '2024-02-24 19:13:16', '2024-02-24 19:13:16', 0, NULL, NULL),
	(2, 'Eden Volkman', 'gudrun53@example.com', '1', NULL, '$2y$12$7ujDIG.WubVqZ7c/xtpPG.mpM8XSIHdN/7aRHZ/UCN/SC.PsBNoD6', NULL, NULL, '2024-02-24 19:13:16', '2024-02-24 19:13:16', 0, NULL, NULL),
	(3, 'Robert Wilkson', 'manager@gmail.com', '2', NULL, '$2y$12$G.81Q19UqXSTJDUbHrvfIe0mh96lF6jTGy3yNkewF2qzuLhYl5F66', NULL, NULL, '2024-02-24 19:13:16', '2024-02-24 19:13:16', 0, NULL, NULL),
	(4, 'Joyce Bergstrom', 'kaylee.carroll@example.com', '3', NULL, '$2y$12$D4OPaCcc78iEyX9OzEAz5eQXxbXuElzJXZl2yp4kdBIcEMQap.XOi', '20249939', NULL, '2024-02-24 19:13:16', '2024-02-24 19:13:16', 0, NULL, NULL),
	(5, 'Marisa O\'Keefe', 'nicolas.dillon@example.com', '3', NULL, '$2y$12$dIYgzE/R/WXzYtiLOLJaluB1MIrugr4RBrA13xM3ZS5vQeC/3lk7u', '20242455', NULL, '2024-02-24 19:13:17', '2024-02-24 19:13:17', 0, NULL, NULL),
	(75, 'test, testtest', 'test@gmail.com', '1', NULL, '$2y$12$QoxGTFBTytboeN/natsqz.bja.Ou7rLiYAS6j5iH/b3QNn9Ak3aWi', '20249940', NULL, '2024-03-17 02:16:20', '2024-03-17 02:16:20', 0, NULL, NULL),
	(76, 'test, testtest', 'test123@gmail.com', '1', NULL, '$2y$12$BrYZmaUPrSzBTo1tiJ917.TbsVGZLb2ZtUI/1VM/tn42ibVkMBrhq', '20249941', NULL, '2024-03-17 02:17:16', '2024-03-17 02:17:16', 0, NULL, NULL),
	(77, 'employee, employee employee', 'employee@gmail.com', '8', NULL, '$2y$12$qIO6gdsg0LYs8a.QNDYGxuT6ShJ9EgclL/wfNnMkl236DYTp63GrK', '20249942', NULL, '2024-03-17 04:40:51', '2024-03-17 04:40:51', 0, NULL, NULL),
	(78, 'test, test test', 'test2@gmail.com', '7', NULL, '$2y$12$GJ279/UQEVzoBhLkHJQPXekpGa8AlJnJTAfGP8hSfVn3Vvhuwtc26', '20249943', NULL, '2024-03-17 04:50:06', '2024-03-17 04:50:06', 0, NULL, NULL),
	(79, 'Guardian, Finance Admin', 'SAMPLEADMIN@GMAIL.COM', '1', NULL, '$2y$12$TI7rEWhnA.xwZg2uNOttUeCDr8pf2OzZYtSlNu6trzvzxMGmABR32', '20249944', NULL, '2024-03-17 07:32:55', '2024-03-17 07:32:55', 0, 1, NULL),
	(80, 'employee, employee employee', 'employee2024@gmail.com', '8', NULL, '$2y$12$PHFPtAZ.uR4O26pdx06pCuGUsMZvABJnUpiwe5D1V1MjeCdl/26Ny', '20249945', NULL, '2024-03-18 14:37:32', '2024-03-18 14:37:32', 0, NULL, NULL),
	(81, 'super, super super', 'superadmin123@gmail.com', '0', NULL, '$2y$12$TaLCh8QqH0vPoQVGQTi1J.GZQguCeLfvmbOlRjtuzReyakPUeKp.y', '20249946', NULL, '2024-03-19 06:41:05', '2024-03-19 06:41:05', 0, 1, NULL),
	(82, 'Ipsum, Lorem Manager', 'Loremipsum@gmail.com', '3', NULL, '$2y$12$GuoC/xsAXGzpIizBeNXNS.FDnqpsZUeAVi.MMhfYcHF0b1B/1zHO6', '20249947', NULL, '2024-03-23 02:11:33', '2024-03-23 02:11:33', 0, 0, NULL);

-- Dumping structure for table 4thyeardb.fms_g9_vendorinfo
CREATE TABLE IF NOT EXISTS `fms_g9_vendorinfo` (
  `vendor_id` int NOT NULL AUTO_INCREMENT,
  `vendor_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contact_person` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone_number` int DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contract_start` date DEFAULT NULL,
  `contract_end` date DEFAULT NULL,
  `payment_terms` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`vendor_id`),
  KEY `category` (`category`) USING BTREE,
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table 4thyeardb.fms_g9_vendorinfo: ~22 rows (approximately)
INSERT INTO `fms_g9_vendorinfo` (`vendor_id`, `vendor_name`, `contact_person`, `phone_number`, `email`, `address`, `category`, `contract_start`, `contract_end`, `payment_terms`, `status`) VALUES
	(1, 'ABC Company', 'Jake Tennyson', 55515, 'jaketennyson@gmail.com', 'Liwasang Kalayaan Streetmarikina Heights, Metro Manila\n', 'equipment', '2024-01-01', '2024-02-01', 'Net 30', 'Decline'),
	(2, 'XYZ Corporation', 'Jane Doe', 5555678, 'doe@xyzcorporation.com', '83 Atis Roadpotrero, Metro Manila', 'services', '2023-02-02', '2024-02-29', 'Net 60', 'Approve'),
	(3, 'Stark Industries', 'Tony Stark', 123123123, 'tony@industries.com', '1090 Paz Guazon Cor. Mendiola Extension Otis,Pandacan, Manila\n', 'equipment', '2024-02-17', '2024-02-17', 'Net 70', 'Approve'),
	(4, 'Space X', 'Elon Musk', 123123123, 'elon@spacex.com', '14 Ireneville Avenue Ireneville - I Subdivision, Paranaque\n', 'services', '2024-02-15', '2024-02-15', 'Net 45', 'Waiting'),
	(5, 'Tesla', 'Mark Stark', 123123, 'mark@tesla.com', 'Mario Lupato, Blk 8 Lot 10 La Trinidad Village, Talipapa, Novaliches, Quezon City 1123\n', 'equipment', '2024-02-16', '2024-02-16', 'Net 30', 'Approve'),
	(6, 'Pokemon Company', 'Ash', 12312, 'ash@pokemon.com', '174 Salcedo Street Legaspi Village, Makati\n', 'services', '2024-02-10', '2024-02-10', 'Net 40', 'Approve'),
	(7, 'Tony', 'Stark', 123123, 'USA', 'Timog Morato Rotonda, Quezon City\n', 'equipment', '2024-02-16', '2024-02-16', 'Net 45', 'Approve'),
	(8, 'Ben', 'Tennyson', 123123, 'Dyan lang', '1193 Don Pedro Street Marulas, Valenzuela\n', 'services', '2024-03-09', '2024-03-09', 'Net 60', 'Decline'),
	(9, 'Kevin', 'Eleven', 123123, 'BRGY PAG-ASA', '1633 M. Adriatico St., Malate, Metro Manila, Philippines Malate, Philippines\n', 'equipment', '2024-06-02', '2022-06-02', 'Net 40', 'Decline'),
	(10, 'Peper', 'Stark', 123123, 'USA', 'Levi B. Mariano Street, Taguig City, 1607, Metro Manila\n', 'equipment', '2024-03-17', '2024-03-17', 'Net 60', 'Approve'),
	(11, 'Steve', 'Musk', 123123, 'USA', 'Ortigas Avenue Greenhills Shopping Center, San Juan\n', 'services', '2024-03-18', '2024-03-18', 'Net 55', 'Waiting'),
	(12, 'Mark', 'Musk', 1531, 'USA', '2277 Chino Roces Avenue, Makati\n', 'equipment', '2024-01-19', '2024-01-19', 'Net 45', 'Approve'),
	(13, 'Jarvis', 'Stark', 12321, 'USA', '11th Avenue Fort Bonifacio Global City, Taguig\n', 'equipment', '2024-03-11', '2024-03-11', 'Net 60', 'Approve'),
	(14, 'Veronica', 'Stark', 12312321, 'USA', 'Marcos Highway Barangay Dela Paz, Pasig\n', 'equipment', '2024-01-06', '2024-01-06', 'Net 60', 'Approve'),
	(15, 'Pepito', 'Manaloto', 1351, 'USA', '11th Avenue Fort Bonifacio Global City, Taguig\n', 'consultant', '2024-03-04', '2024-03-04', 'Net 60', 'Approve'),
	(16, 'Elsa', 'Manaloto', 153, 'Philippines', 'E. Rodriguez Jr. Avenue, Quezon City\n', 'equipment', '2024-03-17', '2024-03-17', 'Net 60', 'Approve'),
	(17, 'Patrick', 'Dela Cruz', 1351, 'Philippines', '1229 V Concepcion Streetsampaloc, Metro Manila\n', 'consultant', '2024-03-17', '2024-03-17', 'Net 60', 'Approve'),
	(18, 'Janice', 'Delacruz', 153, 'Philippines', 'EDSA cor. North Ave., Quezon City, 1100\n', 'equipment', '2024-03-02', '2024-03-02', 'Net 60', 'Approve'),
	(19, 'Dean', 'Winchester', 151, 'Philippines', 'Edsa Corner North Avenue, Quezon City\n', 'equipment', '2024-03-13', '2024-03-13', 'Net 60', 'Approve'),
	(20, 'Aiman', 'Tennyson', 151351, 'BRGY PAG-ASA', 'Unit 1C-A Greenstreet Commercial Center Capitol Golf and Country Club\n', 'advertising', '2024-03-04', '2024-03-04', 'Net 60', 'Waiting'),
	(21, 'Jonathan', 'Eleven', 1351, 'BRGY PAG-ASA', '5/F Atrium Bulding, Makati Avenue, Makati City\n', 'equipment', '2024-01-09', '2024-01-09', 'Net 60', 'Waiting'),
	(22, 'Josh', 'Josh', 13513, 'BRGY PAG-ASA', '68 Dasmarinas Street Binondo, Manila\n', 'advertising', '2024-02-02', '2024-02-02', 'Net 60', 'Waiting');

-- Dumping structure for table 4thyeardb.hr5_tblguests
CREATE TABLE IF NOT EXISTS `hr5_tblguests` (
  `GuestID` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `LastName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `City` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `State` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `PostalCode` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`GuestID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table 4thyeardb.hr5_tblguests: ~0 rows (approximately)

-- Dumping structure for table 4thyeardb.hr5_tblreservation
CREATE TABLE IF NOT EXISTS `hr5_tblreservation` (
  `ReservationID` int NOT NULL AUTO_INCREMENT,
  `GuestID` int DEFAULT NULL,
  `RoomNumber` int DEFAULT NULL,
  `CheckInDate` date DEFAULT NULL,
  `CheckOutDate` date DEFAULT NULL,
  `NumAdults` int DEFAULT NULL,
  `NumChildren` int DEFAULT NULL,
  `SpecialRequests` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `ReservationStatus` enum('Pending','Confirmed','Cancelled') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'Pending',
  `CheckInStatus` enum('Checked-In','Not Checked-In') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'Not Checked-In',
  `CheckOutStatus` enum('Checked-Out','Not Checked-Out') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'Not Checked-Out',
  PRIMARY KEY (`ReservationID`),
  KEY `GuestID` (`GuestID`),
  KEY `RoomNumber` (`RoomNumber`),
  CONSTRAINT `hr5_tblreservation_ibfk_1` FOREIGN KEY (`GuestID`) REFERENCES `hr5_tblguests` (`GuestID`),
  CONSTRAINT `hr5_tblreservation_ibfk_2` FOREIGN KEY (`RoomNumber`) REFERENCES `hr5_tblrooms` (`RoomNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table 4thyeardb.hr5_tblreservation: ~0 rows (approximately)

-- Dumping structure for table 4thyeardb.hr5_tblrooms
CREATE TABLE IF NOT EXISTS `hr5_tblrooms` (
  `RoomNumber` int NOT NULL,
  `RoomType` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `BedType` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `MaxOccupancy` int DEFAULT NULL,
  `RoomRate` decimal(10,2) DEFAULT NULL,
  `Description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `Status` enum('Available','Occupied','Maintenance') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'Available',
  PRIMARY KEY (`RoomNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table 4thyeardb.hr5_tblrooms: ~0 rows (approximately)

-- Dumping structure for table 4thyeardb.lgu_g63_adds
CREATE TABLE IF NOT EXISTS `lgu_g63_adds` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `market_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table 4thyeardb.lgu_g63_adds: ~1 rows (approximately)
INSERT INTO `lgu_g63_adds` (`id`, `market_name`, `location`, `created_at`, `updated_at`) VALUES
	(6, 'Pamilihang Bayan', 'Caloocan City Brngy 178 Kiko St', NULL, NULL);

-- Dumping structure for table 4thyeardb.lgu_g63_communities
CREATE TABLE IF NOT EXISTS `lgu_g63_communities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `knowledge` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table 4thyeardb.lgu_g63_communities: ~1 rows (approximately)
INSERT INTO `lgu_g63_communities` (`id`, `knowledge`, `created_at`, `updated_at`) VALUES
	(26, 'Ideas', '2024-02-25 00:40:42', '2024-02-25 00:40:42');

-- Dumping structure for table 4thyeardb.lgu_g63_failed_jobs
CREATE TABLE IF NOT EXISTS `lgu_g63_failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table 4thyeardb.lgu_g63_failed_jobs: ~0 rows (approximately)

-- Dumping structure for table 4thyeardb.lgu_g63_galleries
CREATE TABLE IF NOT EXISTS `lgu_g63_galleries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `market_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photos` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `videos` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table 4thyeardb.lgu_g63_galleries: ~1 rows (approximately)
INSERT INTO `lgu_g63_galleries` (`id`, `market_name`, `photos`, `videos`, `created_at`, `updated_at`) VALUES
	(1, 'Bicas Dry Market', 'Photos of the market', 'Video of the market', NULL, NULL);

-- Dumping structure for table 4thyeardb.lgu_g63_invitations
CREATE TABLE IF NOT EXISTS `lgu_g63_invitations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `doc_photo` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `docs` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table 4thyeardb.lgu_g63_invitations: ~1 rows (approximately)
INSERT INTO `lgu_g63_invitations` (`id`, `doc_photo`, `description`, `docs`, `created_at`, `updated_at`) VALUES
	(1, 'Photo of doc', 'Description', 'Docs download', NULL, NULL);

-- Dumping structure for table 4thyeardb.lgu_g63_maps
CREATE TABLE IF NOT EXISTS `lgu_g63_maps` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `market_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table 4thyeardb.lgu_g63_maps: ~1 rows (approximately)
INSERT INTO `lgu_g63_maps` (`id`, `market_name`, `location`, `created_at`, `updated_at`) VALUES
	(51, 'Pamilihang Bayan', 'Caloocan City Brngy 178 Kiko St', '2024-02-25 02:05:58', '2024-02-25 02:05:58');

-- Dumping structure for table 4thyeardb.lgu_g63_migrations
CREATE TABLE IF NOT EXISTS `lgu_g63_migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table 4thyeardb.lgu_g63_migrations: ~23 rows (approximately)
INSERT INTO `lgu_g63_migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_100000_create_password_reset_tokens_table', 1),
	(2, '2019_08_19_000000_create_failed_jobs_table', 1),
	(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(4, '2024_02_09_055609_create_adds_table', 1),
	(5, '2024_02_10_135411_create_videos_table', 1),
	(6, '2024_02_10_164349_create_users_table', 1),
	(7, '2024_02_12_131553_add_image_to_adds_table', 1),
	(8, '2024_02_12_153816_add_stallment_number_to_adds_table', 1),
	(9, '2024_02_12_154139_add_description_to_adds_table', 1),
	(10, '2024_02_15_131346_create_admins_table', 2),
	(11, '2024_02_17_153540_create_map_table', 3),
	(12, '2024_02_20_105904_create_community_table', 4),
	(13, '2024_02_20_130002_add_issues_to_communities_table', 5),
	(14, '2024_02_20_130649_create_communities_table', 6),
	(15, '2024_02_20_130950_create_communities_table', 7),
	(16, '2024_02_20_131452_create_community_table', 8),
	(17, '2024_02_20_153209_create_barangay_table', 9),
	(18, '2024_02_21_074029_create_tablenisirandy_table', 10),
	(19, '2024_02_26_120438_create_sched_table', 11),
	(20, '2024_02_26_121934_create_gallery_table', 12),
	(21, '2024_02_27_024431_create_invitation_table', 13),
	(22, '2024_02_27_080001_create_admin_table', 14),
	(23, '2024_02_27_162526_create_permit_table', 15);

-- Dumping structure for table 4thyeardb.lgu_g63_password_reset_tokens
CREATE TABLE IF NOT EXISTS `lgu_g63_password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table 4thyeardb.lgu_g63_password_reset_tokens: ~1 rows (approximately)
INSERT INTO `lgu_g63_password_reset_tokens` (`email`, `token`, `created_at`) VALUES
	('admin@gmail.com', '$2y$12$Wl0N2hkkJb7d9I0raSsXW.IyYihz8kNaAljUwAzEv9ZZoCpUX4J.6', '2024-02-20 23:38:16');

-- Dumping structure for table 4thyeardb.lgu_g63_permits
CREATE TABLE IF NOT EXISTS `lgu_g63_permits` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `process` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `docs` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table 4thyeardb.lgu_g63_permits: ~1 rows (approximately)
INSERT INTO `lgu_g63_permits` (`id`, `process`, `docs`, `created_at`, `updated_at`) VALUES
	(1, 'Step\r\n1.\r\n2.\r\n3.', 'Docs', NULL, NULL);

-- Dumping structure for table 4thyeardb.lgu_g63_personal_access_tokens
CREATE TABLE IF NOT EXISTS `lgu_g63_personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table 4thyeardb.lgu_g63_personal_access_tokens: ~0 rows (approximately)

-- Dumping structure for table 4thyeardb.lgu_g63_scheds
CREATE TABLE IF NOT EXISTS `lgu_g63_scheds` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `clean_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `several` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guide` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table 4thyeardb.lgu_g63_scheds: ~1 rows (approximately)
INSERT INTO `lgu_g63_scheds` (`id`, `clean_type`, `several`, `guide`, `created_at`, `updated_at`) VALUES
	(1, 'Cleaning Stall Operation', 'Weekly', 'DOC', NULL, NULL);

-- Dumping structure for table 4thyeardb.lgu_g63_users
CREATE TABLE IF NOT EXISTS `lgu_g63_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `usertype` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table 4thyeardb.lgu_g63_users: ~3 rows (approximately)
INSERT INTO `lgu_g63_users` (`id`, `name`, `email`, `email_verified_at`, `password`, `usertype`, `remember_token`, `created_at`, `updated_at`) VALUES
	(10, 'admin', 'admin@gmail.com', NULL, '$2y$12$cxoYmlvsatLVod85A3esweYUZm7x8R0JQIn4ltsqzKLYRFyd1zwAm', 'admin', NULL, '2024-02-24 03:45:32', '2024-02-24 03:45:32'),
	(13, 'employee04', 'employee04@gmail.com', NULL, '$2y$12$7.z9GpUR0UTsoVvaNDZ/juu0IOZh0X2lMxGin5zvD9YAfVmQxxOF2', 'user', NULL, '2024-02-27 07:31:35', '2024-02-27 07:31:35'),
	(14, 'employee05', 'employee05@gmail.com', NULL, '$2y$12$q/DZXytEHEs.AflFRyYvOuLCQcEFbcn4mJswC66Vy5wji9AKFb72S', 'user', NULL, '2024-02-27 07:56:07', '2024-02-27 07:56:07');

-- Dumping structure for table 4thyeardb.lgu_g64_admin
CREATE TABLE IF NOT EXISTS `lgu_g64_admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `created_on` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table 4thyeardb.lgu_g64_admin: ~1 rows (approximately)
INSERT INTO `lgu_g64_admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `created_on`) VALUES
	(1, 'nurhodelta', '$2y$10$fLK8s7ZDnM.1lE7XMP.J6OuPbQ.DPUVKBo7rENnQY7gYq0xAzsKJy', 'Neovic', 'Devierte', 'facebook-profile-image.jpeg', '2018-04-02');

-- Dumping structure for table 4thyeardb.lgu_g64_candidates
CREATE TABLE IF NOT EXISTS `lgu_g64_candidates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `position_id` int NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `platform` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- Dumping data for table 4thyeardb.lgu_g64_candidates: ~0 rows (approximately)

-- Dumping structure for table 4thyeardb.lgu_g64_positions
CREATE TABLE IF NOT EXISTS `lgu_g64_positions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(50) NOT NULL,
  `max_vote` int NOT NULL,
  `priority` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Dumping data for table 4thyeardb.lgu_g64_positions: ~0 rows (approximately)

-- Dumping structure for table 4thyeardb.lgu_g64_voters
CREATE TABLE IF NOT EXISTS `lgu_g64_voters` (
  `id` int NOT NULL AUTO_INCREMENT,
  `voters_id` varchar(15) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table 4thyeardb.lgu_g64_voters: ~0 rows (approximately)

-- Dumping structure for table 4thyeardb.lgu_g64_votes
CREATE TABLE IF NOT EXISTS `lgu_g64_votes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `voters_id` int NOT NULL,
  `candidate_id` int NOT NULL,
  `position_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=latin1;

-- Dumping data for table 4thyeardb.lgu_g64_votes: ~0 rows (approximately)

-- Dumping structure for table 4thyeardb.lgu_g65_tbladmin
CREATE TABLE IF NOT EXISTS `lgu_g65_tbladmin` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `AdminName` varchar(120) DEFAULT NULL,
  `AdminuserName` varchar(20) NOT NULL,
  `MobileNumber` bigint NOT NULL,
  `Email` varchar(120) NOT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `userRole` int DEFAULT NULL,
  `isActive` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table 4thyeardb.lgu_g65_tbladmin: ~1 rows (approximately)
INSERT INTO `lgu_g65_tbladmin` (`ID`, `AdminName`, `AdminuserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`, `userRole`, `isActive`) VALUES
	(1, 'Admin', 'admin@admin.com', 9560563149, 'towntechinnovations@gmail.com', 'ca8971255b57e6c1038e4a47cb9df178', '2022-10-20 18:30:00', NULL, 1);

-- Dumping structure for table 4thyeardb.lgu_g65_tblemergencyreport
CREATE TABLE IF NOT EXISTS `lgu_g65_tblemergencyreport` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fullName` varchar(255) DEFAULT NULL,
  `mobileNumber` bigint DEFAULT NULL,
  `location` mediumtext,
  `messgae` mediumtext,
  `assignTo` int DEFAULT NULL,
  `status` varchar(120) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `assignTime` varchar(255) DEFAULT NULL,
  `assignTme` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table 4thyeardb.lgu_g65_tblemergencyreport: ~3 rows (approximately)
INSERT INTO `lgu_g65_tblemergencyreport` (`id`, `fullName`, `mobileNumber`, `location`, `messgae`, `assignTo`, `status`, `postingDate`, `assignTime`, `assignTme`) VALUES
	(1, 'Anuj Kumar', 1234567890, 'New Delhi india', 'NA', 2, 'Request Completed', '2022-04-19 14:55:50', NULL, '26-04-22 03:04:11'),
	(2, 'Rahul', 1425362514, 'H 23423 ABC Street  Noida Sector 2 UP', 'NA', 3, 'Request Completed', '2022-04-23 09:02:18', NULL, '20-10-22 11:10:01'),
	(3, 'Amit Kumar', 4758963210, 'A 123 Sector4 Noida UP', 'Fire in Home', 2, 'Request Completed', '2022-04-27 01:46:41', NULL, '27-04-22 03:04:13');

-- Dumping structure for table 4thyeardb.lgu_g65_tblemergencyrequesthistory
CREATE TABLE IF NOT EXISTS `lgu_g65_tblemergencyrequesthistory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `requestId` int DEFAULT NULL,
  `status` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `remark` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table 4thyeardb.lgu_g65_tblemergencyrequesthistory: ~9 rows (approximately)
INSERT INTO `lgu_g65_tblemergencyrequesthistory` (`id`, `requestId`, `status`, `remark`, `postingDate`) VALUES
	(1, 1, 'Team On the Way', 'Team is on the way.', '2022-04-26 01:35:35'),
	(2, 1, 'Fire Relief Work in Progress', 'Team work in progress.', '2022-04-26 01:42:18'),
	(3, 1, 'Request Completed', 'Fire controlled. Request completed', '2022-04-26 01:43:29'),
	(4, 3, 'Team On the Way', 'Team is on the for relief work.', '2022-04-27 01:47:48'),
	(5, 3, 'Fire Relief Work in Progress', 'Fire relief work in progress. Team will control the fire soon.', '2022-04-27 01:48:20'),
	(6, 3, 'Request Completed', 'Job FInished. Fire is under control now.', '2022-04-27 01:48:49'),
	(7, 2, 'Team On the Way', 'as', '2022-10-20 09:49:46'),
	(8, 2, 'Fire Relief Work in Progress', ',', '2022-10-20 09:51:09'),
	(9, 2, 'Request Completed', 'd', '2022-10-20 09:52:01');

-- Dumping structure for table 4thyeardb.lgu_g65_tblsite
CREATE TABLE IF NOT EXISTS `lgu_g65_tblsite` (
  `id` int NOT NULL AUTO_INCREMENT,
  `siteTitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `siteLogo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table 4thyeardb.lgu_g65_tblsite: ~1 rows (approximately)
INSERT INTO `lgu_g65_tblsite` (`id`, `siteTitle`, `siteLogo`) VALUES
	(1, 'TowntechInnovations', '1bb87d41d15fe27b500a4bfcde01bb0e.png');

-- Dumping structure for table 4thyeardb.lgu_g65_tblteams
CREATE TABLE IF NOT EXISTS `lgu_g65_tblteams` (
  `id` int NOT NULL AUTO_INCREMENT,
  `teamName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `teamLeaderName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `teamLeadMobno` bigint DEFAULT NULL,
  `teamMembers` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table 4thyeardb.lgu_g65_tblteams: ~2 rows (approximately)
INSERT INTO `lgu_g65_tblteams` (`id`, `teamName`, `teamLeaderName`, `teamLeadMobno`, `teamMembers`, `postingDate`) VALUES
	(6, 'SOLID GROUP', 'Dugsssss', 9999, 'Sophia, Jecktopher, Emel, Dugayy', '2022-10-20 16:29:33'),
	(7, 'Group#67', 'Jake', 975520142, 'NONE', '2024-02-26 14:19:14');

-- Dumping structure for table 4thyeardb.lgu_g66_archived_document
CREATE TABLE IF NOT EXISTS `lgu_g66_archived_document` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `lname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `dtitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fileFormat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `dates` datetime NOT NULL,
  `fileInput` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `size` int NOT NULL,
  `download` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table 4thyeardb.lgu_g66_archived_document: ~2 rows (approximately)
INSERT INTO `lgu_g66_archived_document` (`id`, `fname`, `lname`, `dtitle`, `fileFormat`, `dates`, `fileInput`, `size`, `download`) VALUES
	(14, 'ang', 'mga', 'asd', 'pdf', '2024-02-26 00:00:00', '28.drawio.pdf', 54835, 0),
	(15, 'balut', 'na ', 'lami', 'pdf', '2024-02-24 00:00:00', 'AllIANA BARRETE.pdf', 83611, 1);

-- Dumping structure for table 4thyeardb.lgu_g66_file_table
CREATE TABLE IF NOT EXISTS `lgu_g66_file_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `lname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `dtitle` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fileFormat` set('doc','docx','pdf','txt','ppt','image','video') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `dates` datetime NOT NULL,
  `fileInput` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `size` int NOT NULL,
  `download` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table 4thyeardb.lgu_g66_file_table: ~3 rows (approximately)
INSERT INTO `lgu_g66_file_table` (`id`, `fname`, `lname`, `dtitle`, `fileFormat`, `dates`, `fileInput`, `size`, `download`) VALUES
	(64, 'sopas', 'na ', 'maasim', 'pdf', '2024-02-24 00:00:00', 'HIGH.pdf', 69838, 2),
	(68, 'soaps', 'na ', 'malagkit', 'pdf', '2024-02-24 00:00:00', 'BPA1.pdf', 1396611, 0),
	(70, 'lugaw', 'ni', 'inday', 'doc', '2024-02-27 00:00:00', 'last-task.docx', 14392, 0);

-- Dumping structure for table 4thyeardb.lgu_g67_discussions
CREATE TABLE IF NOT EXISTS `lgu_g67_discussions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table 4thyeardb.lgu_g67_discussions: ~0 rows (approximately)

-- Dumping structure for table 4thyeardb.lgu_g68_barangay
CREATE TABLE IF NOT EXISTS `lgu_g68_barangay` (
  `brgy_id` int NOT NULL AUTO_INCREMENT,
  `Type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `barangay_no` int NOT NULL,
  `geom` geometry NOT NULL,
  PRIMARY KEY (`brgy_id`),
  UNIQUE KEY `barangay_no` (`barangay_no`),
  SPATIAL KEY `geom` (`geom`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table 4thyeardb.lgu_g68_barangay: ~3 rows (approximately)
INSERT INTO `lgu_g68_barangay` (`brgy_id`, `Type`, `Name`, `barangay_no`, `geom`) VALUES
	(13, 'Boundary', 'BARANGAY 179', 179, _binary 0x000000000103000000010000001f000000c31c1d7d2cb56941ce9f4317ea553941c31c1d7d2cb56941ec775762805339411b7eb56a37b56941ec77576280533941aacc713138b569415756de55ac5339412e1311fc39b56941692b9da4d05339412a62b9073db569418c4ddec8ed53394148d067e940b569414c65f075ff533941f3c24b1f47b5694180df9d500d54394159dbb6c74bb56941529db2361a54394102e7c97b53b56941d803f7cc2d54394108aa819e58b56941d1ccd6903d54394167bb7f655db569415c2c4cd757543941f28e5dc562b5694110e5227e7f543941bf058b0a69b56941bf66d9e8b65439416b5db2796eb5694192db1462e2543941383923f873b56941cb051a80155539416b23feec78b5694194f59e3a465539411962f6dd7cb569416b0a8b0076553941142f11a180b5694100a6dd98a955394183375ce285b56941ce9f4317ea55394164c572018eb569418d1c5b3f435639417ecac21894b5694165f7720a88563941f6258ff696b5694186fef452c2563941a7f894cc97b56941f752ff8e28573941f55b088498b56941059dda5383573941848d7a3b99b569410dee8468d75739413289b4b269b5694149c352b8d05739418e5f6c8268b56941f783915ced5939415667019baab46941ca70172edf5939416b34db5daab4694190bd19d6e6553941c31c1d7d2cb56941ce9f4317ea553941),
	(15, 'Boundary', 'BAGUMBONG BRGY 171', 171, _binary 0x00000000010300000001000000ca00000074c2f85edeb26941490e479aa65339415e9aa69b9bb26941490e479aa6533941d994e6d097b26941061db968a8533941e8a9e68791b2694186e374fda3533941ba79939e8db26941adce72c4a8533941aba62ecc89b26941e44fb5cba25339418d25bb7b86b269412c5ab968a8533941d6f51da179b2694190f81d109d5339417952932a78b26941152b932ba853394156044b0477b269412fe8e918af533941abe85dd675b2694146d35a97b453394177867a3972b269410de3d324b6533941cd2191c66db26941371ae6a6b85339412663213167b269412f711e66bb5339414337f03064b26941f80b650abb53394194f0888c62b26941dbdacd4eb5533941f4c8b6f655b26941511c11e36d53394199ef2a9755b269416ec473516753394143356a7c55b26941b99734915453394177db02d853b269414b8ba5e44a5339411b4b3dd051b2694102f6d3304753394109bf99b150b26941b53f7d6e4f53394143c2e5924eb26941b1689b9c535339412b0e5a2d2cb26941097c5894d252394192f90f8529b26941318b3e03d45239417aaa2ce825b26941a7e2ef4fd85239419db9430e24b26941d46e565bd7523941de14aa8020b26941509c1faac0523941c5dd24471db26941d81c6a95a752394178b4556517b2694156e92aaa85523941c4b2959a13b269411c202ec65d52394115aa163711b26941e0da52ca62523941dea9a01410b26941d107ef8678523941e54074010fb26941aec308359a52394178ee09f20cb26941eec32555b2523941fb14ec5c0bb26941c24362b1ba523941cee4987307b26941efcfc8bcb95239419a957a4503b26941c1ed4358a752394136006e00ffb16941bbfffc8898523941cf44d7ddfbb16941637b3d57975239415e4baa31f8b16941c28c3b1e9c523941f0e57ab3f6b16941cb0e90d2a7523941b69a455ff4b1694103e37697c75239415dbca866f0b1694110cba79dec523941fd8420c2ecb16941753d750a09533941a5006190ebb16941d947a48114533941e76e8c71e7b16941d6b8d14ce3523941a59e873bdfb16941c0d4c88519533941c246eaa9d8b16941dda7baa01c5339413a5c7f01d4b16941c0ed99d76d533941cdf8e84cc4b169419ab13b5c98533941fdedbdd9bbb16941490e479aa653394149038b57b7b169414f54273feb533941f9286481b4b16941bed5c0890a543941d1935622b1b16941e430bafaf653394104e9970aafb169414a5bf68ee453394179f85fe4aeb169412bc2d86ecc53394120a887c1a7b1694148bababf9a5339414b74fcb1a3b16941394a1f3c80533941d902c75da1b16941167efc7076533941e72f9d1c9eb1694182d791f3805339413dab2c379bb16941b5b247089a5339416b9396ad9ab16941274a7c80b55339414e4676469bb16941150f6345d553394158a1669696b16941c2ad832d025439411d71656491b1694106d0c7e03854394147c5d1ac8eb16941b4394f7e465439410e98c73988b16941830ad61b54543941e97f80fc85b16941b58f6dd7595439413461fa907db169416542cee1485439413258ca7979b16941ed80be196f5439413f212e1a78b169412693946a785439418e6d244074b16941e970002169543941b44c7f9f71b16941ab78324659543941acfef9656eb16941d03a5b2a48543941e6afc77c6cb1694112185f9c3e5439412ef47fa667b169412708f4c82a5439415898c88362b169419d5fa5152f54394137639aa559b1694159053809205439411b1b76a154b169417c27792d3d54394162faea9150b1694162dd93145a54394175475db04eb16941c04f9a156a543941fb18ca914eb169410383bce0735439410f8cc68d4bb169413508549c795439419b1e591349b169413bdf0d2389543941d0b05be546b169415886904ea0543941191b9eec40b16941232ffc21b45439410d327dec3eb1694132d7a9fcc1543941d0adf84b3eb169418bb18787d6543941e00a5a1a3fb169411a7db65400553941243977163eb16941cedf6ea2145539412abd85943db16941e611f8781d553941e4c24fa738b16941e1708f3423553941871fc53037b169410770b7aa1e553941dd35111235b169410efdf53f22553941cf04079f2eb16941bf82de3d3d553941e8d4b6202bb16941e27131b94d553941081117bd26b16941a91682fb6255394142019e2f25b1694111374ca06a553941adf8595d23b16941f55870a46f5539418ba22adf21b16941919f24d6ab553941b8efd78e20b16941420a4ef8e3553941cb25bd641fb169410d09d8240b5639414e2473bc1cb16941d4ad28672056394130ad94c314b16941e4005a6d455639418b20942a12b169418f618bc9885639412565fd070fb16941e062d7b6ca5639417a54eef00cb1694126b5bd7bea563941c925e5af0bb16941a07eee810f573941351da1dd09b16941a5e56c5853573941605a80dd07b16941ce61fe6867573941c4c4fd7502b169414a08ffbe855739417d33382b1cb1694167f22fadd55739419314a8771cb16941645c6242145839415963da601eb1694118badfdf5c5839413e53a9d430b16941f3bd1226735839416e4433ab39b16941efc4e1756c58394119bb110d9ab1694183b6a8e679593941140c454cbab169412b7a761cf6593941e2124577c9b169416dc5c7b4295a394129a0a02ce5b16941cdfb39358a5a3941e404b9aff7b1694136615b1db75a3941b96d68c300b26941454cee2dcb5a3941dc641a3b14b2694144ab36e2115b3941b0ba696f3db269413e21c7d8a85b3941f89c41f941b26941c2f4b610cf5b39410881459647b269415a6f1d02515c3941248ab03e4cb269414e1ac5dda95c3941ac8ba82f50b269418f94d28b065d3941d021526d58b269414dab8131cf5d3941e3a1c2eb5db26941756718d3575e3941a970e9536db269416ed9fab99b5f3941cd06939175b26941e19f379c6c5f3941248b52c376b26941809923b65f5f3941cca14f5876b269418efc794d485f3941fa92f99c74b2694156899bc2335f3941b725234575b26941671ff7040e5f3941b18dface79b2694172e1facac75e3941c76e6a1b7ab269410ade9aa3b55e3941b35d3e0879b26941e79829cf915e394100a467b079b269418ebe4b447d5e39413458c9177db26941095807ae695e394130a7712380b26941c281d28b6c5e39416f99691484b26941090f2e41885e394182e6cb7b87b2694168202c088d5e3941e25c0d7c8bb26941edcf490b825e3941581902028fb269416370d4c4675e3941afd33ac191b269412f3f00573b5e3941a149907c93b26941908eeda9295e39413942d5e797b269415e0956ee235e39416455ffc19db26941a130d551265e3941347d84fba0b2694175e25dd2105e3941ce113648a5b26941e1aa757ed75d394137dd9a1aa9b269412a6a345aba5d3941564b49fcacb26941e1546e27a95d3941ecc1001fb2b26941daaf00c57b5d3941cc0f9d7eb3b269418bc439926a5d3941adc27c17b4b269418723e7c03b5d3941c408309db3b2694108f4c266185d3941d192dae1b1b269414a2f9b0cf55c394146bffc81acb269419f821519c95c3941b1ce1613abb269410c7bb963ad5c39412972dc1aadb26941e4305d75965c3941a215a222afb269412b079297935c3941dd56421fb6b2694111bdc380955c394173cdf941bbb26941e4305d75965c39419d600f2fbeb269416de495098a5c3941bb984483c0b269413666cd9d7d5c3941e7f5e0e2c1b269410f1187ce6e5c39419763a37fc3b269414412fda1475c3941f0b1e923c3b26941f5586b91335c3941148247eec0b269415ba18994285c394138b7e8f1bdb2694166d1da801f5c394132e2b032bbb26941c5e2d847245c39413476be17b8b26941326c286d165c39412c86de7eb7b26941e6649723075c3941365f31cfb8b26941ab078d5ae25b3941dc4664b8bab2694187e54b36c55b3941b759bcdebcb26941f9ca94cb8d5b39414aac9336bcb26941ac20082d705b394169ae4ffdbcb26941d1c9114a585b39418968129abeb269418f4ae20b485b394192241bdbbfb26941e64999ca425b3941bcb730c8c2b269413b3a4b17475b394105e8be42c7b26941fc755dfd535b39414f7d90f6cab26941169141fa5e5b3941a69c0cefccb269416aa1d8ee5f5b3941dc7f3802ceb2694121c192e6555b394149e56780cfb26941bafb214b2d5b3941c8a627b2d0b26941c7fcb621fb5a39415b1aa486b9b2694192e042f55d5a3941492e41edb0b26941fc5edfaf185a39410bdb40c2a1b269415e7e6e68b3593941029542d08db2694125ced554345939411c92137d9bb26941b50c2077bb5839419bc2171aa1b2694173c1cede8758394117e781bbafb269411bd91779eb5739414c00275cb2b269416032fa02b5573941f7cd4118c0b26941310da1819356394141a52fc1ccb269417881d565945539418baa0e21d2b26941e06443a8f854394174c2f85edeb26941490e479aa6533941),
	(16, 'Boundary', 'CONGRESS 173', 173, _binary 0x000000000103000000010000004f000000689d9153dfb26941a5df11cc6c5339413a53473de9b2694178f15681fe533941d5b2faa5efb26941fd8ca8b55c54394119dc021ff6b2694177b006dabb543941af2dcc6dfdb269412fc4534427553941f6c457b1ffb26941a8a9d65950553941fe645bb502b36941626d5e4d7c5539416ea0a4560fb369415397ec603656394168647f4b14b369417cdc0d9f81563941b5280bf41ab36941f52f26c0e4563941e2585edd1eb36941471782cb1e57394178e6a24823b369410358735963573941faa174fc26b36941a9ca5de69757394120f013c728b36941a8573e8cb057394100e4d25f27b36941120c1616b5573941fb2093e124b36941c1149579b7573941bf5ddd4021b36941f563b3a7bb573941d40ec27d1db3694132a3b16ec0573941ae3f419819b36941651d5f49ce5739416d73b2cd18b369410d2537fee1573941ec10ab0e19b369415f093070135839412147221a19b3694131171e8d35583941c216285717b36941d8546fcf4a583941a844e65613b369417cdee6a47e583941682c648810b36941a416c3f697583941c9e5892c0eb3694141ef290297583941c66ee6c406b36941d7f6b3bb7c583941729b7e8702b369412e08eb1675583941d3e630dbfcb26941722480997f583941e23a6292f9b2694103bb151c8a5839419c9ed145f7b26941737a9ef29258394107d475b4f4b26941f47aef34a85839411b34ad41f2b269418f766feec8583941eb65c7d2f0b26941a3f1a4bc0259394178e1cc0fefb269418a4193bb2d593941cfe08ba8edb26941de43aea24a59394176364299edb2694130914d985b593941f683a0fcedb269417a51aef868593941a2f82132eeb2694192d0155a865939417d27f34cefb269412a4f2c798e5939419a95a12ef3b26941f91fb3169c593941b2e484cbf6b26941cae54fd3b1593941e3c52fa9f7b269415de10821c65939417f780cd7f7b26941501daa4fd25939410b8fcedaf6b26941f6bb03ccf2593941e550fdbff5b269418c5d4a9b015a3941edfa951bf4b26941a204065b0c5a3941863ffff8f0b2694184311440095a3941ed17f0e1eeb269419800245e015a3941ee7b6200edb269411d8b6830035a394115fd17bfe7b26941766546bb175a394140525522e6b269412958f15c2a5a3941132b3250e6b26941c7ca147e525a39417652cb44e7b269417595a4556b5a3941d9796439e8b2694106e3606b945a394155ce8135e7b269415691089bb05a3941f3706fb3e4b26941e32e6d6db45a39416487f625e3b26941e32e6d6db45a39415dfab790dfb269419f8b3df6a85a39416c4ee947dcb26941f386d923a55a39414fe03a66d8b269417d2f28d7a05a394113dd72f3d5b269414fc6f17ba85a394120145a9bd2b26941b5c53612bc5a3941f5b6bd3bd1b26941697e0db9e35a394108ddd461cfb2694186b2070ef25a39417d6458e89fb2694140cec3ff9b5939418bf9dbc48eb26941c0180cb02c593941ca4e7e25a0b26941e59015ae96583941de2bb372acb269410d48b0bc145839415dc1fa48b1b26941c3314805d957394143caefceb4b26941a4bd1a1b8c573941afed0bc4bdb26941bdecead8c556394185daea55c8b26941b515dbd2ef553941e04f7c3bcdb26941ef4ccf5d8e55394145cfcc52d3b26941603e37d7cd543941dec9b3f3d9b269417520139727543941ad8cf5f3ddb26941fdf7b0dea0533941f3fb5322e0b2694107ccd14769533941689d9153dfb26941a5df11cc6c533941);

-- Dumping structure for table 4thyeardb.lgu_g68_drawn_features
CREATE TABLE IF NOT EXISTS `lgu_g68_drawn_features` (
  `id` int NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `feature_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `coordinates` geometry NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table 4thyeardb.lgu_g68_drawn_features: ~8 rows (approximately)
INSERT INTO `lgu_g68_drawn_features` (`id`, `address`, `feature_type`, `coordinates`, `name`, `title`) VALUES
	(1, '', 'Polygon', _binary 0x0000000001030000000100000005000000bc883004183e5e40184964c40a4c2d4054b86812183e5e40c0228c88044c2d4090c05993193e5e40c00b9bf6044c2d40b8972987193e5e4060bb6bfb0a4c2d40bc883004183e5e40184964c40a4c2d40, 'residential_area', NULL),
	(2, '', 'Point', _binary 0x000000000101000000040f70c2173e5e40c06def74074c2d40, 'point_test', NULL),
	(4, '', 'Polygon', _binary 0x0000000001030000000100000005000000001fb47f173e5e40e09af015034c2d40fc4b8b89173e5e40c896c485f94b2d40a890512d183e5e4030a85fd7f94b2d400473c622183e5e40588eb32b034c2d40001fb47f173e5e40e09af015034c2d40, 'barangay_177', NULL),
	(5, '', 'Point', _binary 0x0000000001010000005ce19aa51b3e5e40480c8d10124c2d40, 'hospital', NULL),
	(6, '', '', _binary 0x0000000001030000000100000014000000b01bb62dcac850c0e86a2bf69791464099f04bfdbcbd50c01dc9e53fa4674640d21dc4ce140251c061545227a0294640a4703d0ad74351c03d0ad7a370fd4540afb14b546f8751c0166a4df38ed74540f302eca353a951c00803cfbd878b454015a930b610b051c075594c6c3e8a45409b3dd00a0cb351c09cf9d51c209c45405721e527d5be51c04243ff0417af45403f8c101e6dbc51c0649291b3b0bb4540fd82ddb06dc551c02cb7b41a12a746402ead86c43daa51c0897b2c7de8ba4640933a014d849351c09b5ab6d617f54640f9da334b028051c0bf4868cbb958474049a297512c4f51c0a110018750b94740cb845feae73951c05d50df32a7974740fb5c6dc5fe0e51c0f6402b3064ad474031992a1895f250c0f1d7648d7a8847408dee2076a6f250c06e693524eed94640b01bb62dcac850c0e86a2bf697914640, 'Maine Polygon', NULL),
	(7, '', 'Polygon', _binary 0x0000000001030000000100000005000000dc805c79173e5e40508b17641e4c2d40e8b3b57a173e5e40f02120e3184c2d40788aac71193e5e4070953d75194c2d40e4575370193e5e40f8fc34f61e4c2d40dc805c79173e5e40508b17641e4c2d40, 'residential_area', NULL),
	(8, '', 'Polygon', _binary 0x000000000103000000010000000500000058272b4f173e5e40e81dd5e7174c2d40f8ec3459173e5e4018f441570b4c2d4054ac6b9f193e5e4078ce2f020c4c2d40b4155a8d193e5e4090fbae73184c2d4058272b4f173e5e40e81dd5e7174c2d40, 'banko', 'bank'),
	(9, '', 'Polygon', _binary 0x000000000103000000010000000c0000002069113a3a425e40485b6fca227d2d40586dbf783b425e40180aef5bff7a2d401cec5f3850425e40180aef5bff7a2d40eca6d5d551425e4050f8b56bc3792d40e416eaac9c425e4040e70a740c7c2d40f878b4e8f8425e4048e5aa15137c2d402c50449eca425e40f8fe46bf1c832d405428ccb2bd425e40b831c99911832d40eca033e3ae425e4060db0e05f9822d408c1fc17aa0425e4098f688bcb6822d40e82ca47e96425e40c0e253a159822d402069113a3a425e40485b6fca227d2d40, 'barangay 172', 'government');

-- Dumping structure for table 4thyeardb.lgu_g68_drivers
CREATE TABLE IF NOT EXISTS `lgu_g68_drivers` (
  `driver_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table 4thyeardb.lgu_g68_drivers: ~1 rows (approximately)
INSERT INTO `lgu_g68_drivers` (`driver_id`, `user_id`, `name`) VALUES
	(6, 3, 'test_name');

-- Dumping structure for table 4thyeardb.lgu_g68_featuredrawn
CREATE TABLE IF NOT EXISTS `lgu_g68_featuredrawn` (
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `baranggay_no` int NOT NULL,
  `geom` geometry NOT NULL,
  `feature_id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`feature_id`),
  SPATIAL KEY `geom` (`geom`),
  KEY `barangay no` (`baranggay_no`),
  CONSTRAINT `barangay no` FOREIGN KEY (`baranggay_no`) REFERENCES `lgu_g68_barangay` (`barangay_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=252 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table 4thyeardb.lgu_g68_featuredrawn: ~20 rows (approximately)
INSERT INTO `lgu_g68_featuredrawn` (`type`, `name`, `baranggay_no`, `geom`, `feature_id`) VALUES
	('School', 'AMPARO HIGH SCHOOL', 179, _binary 0x000000000103000000010000000600000092004b24e2b46941d741f8bd75573941db30d99ee6b469414ece58c864573941c61b8243ecb46941193bda9b0257394110729a9befb46941534c3c6cab5639415665393be2b46941f5aa4b51a856394192004b24e2b46941d741f8bd75573941, 223),
	('School', 'AMPARO ELEMENTARY SCHOOL', 179, _binary 0x0000000001030000000100000009000000254b7c5516b56941b3e66eb0cc57394166d171741cb56941b3e66eb0cc573941762ed3421db56941abebe2f48b5739417c3044c122b569415d886f3d8b57394133e35b8023b569417bed1332515739419f6400ea1eb56941874c876b4d573941d57b17151fb569417e9b276c21573941772eea9c17b569415a18f8971f573941254b7c5516b56941b3e66eb0cc573941, 224),
	('Barangay Station', 'BARANGAY 179 STATION', 179, _binary 0x0000000001030000000100000005000000e844b37a42b5694194e42195805439410f9f017744b5694194e42195805439410f9f017744b56941f0f2e40d69543941e844b37a42b56941eff2e40d69543941e844b37a42b5694194e4219580543941, 225),
	('Clinic', 'BARANGAY 179 HEALTH CENTER', 179, _binary 0x00000000010300000001000000050000000bf1a04146b569415f514ea8815439414cc05cb84ab5694171c01f5c85543941018cd8f94ab56941ec24529f715439416a46927d46b56941d8360b976f5439410bf1a04146b569415f514ea881543941, 226),
	('Church', 'HOLY CROSS PARISH CHURCH', 179, _binary 0x0000000001030000000100000008000000328a203e4bb5694101e50dda82543941ec3579644db569410afd19868454394138049a644fb56941a93effc976543941114ec0a14fb5694132d0e87f5f543941a799e8174bb56941c71b11f65a54394146e9f0cd4ab56941f433fd736d543941a6f28d7e4bb56941543d9a246e543941328a203e4bb5694101e50dda82543941, 227),
	('School', 'SAINT ANTHONY NOVA SCHOOL', 179, _binary 0x0000000001030000000100000008000000f295fb5d5fb56941cea1c80ccf54394163339d4365b569416f64e60fc454394174f5414b65b569417484a14ea1543941fe9460e75cb569416391d6fd5c5439417a2acb2457b56941a95545448a543941c66d8fcc5bb569415e800abeaa5439415834ccdf5db569414bdc894cbc543941f295fb5d5fb56941cea1c80ccf543941, 228),
	('Police Station', 'AMPARO POLICE STATION', 179, _binary 0x0000000001030000000100000004000000315a010951b569417898f87248543941ec74aa6450b5694180999f21375439412fcf33f252b5694170e02a313b543941315a010951b569417898f87248543941, 229),
	('Church', 'IGLESIA NI CRISTO CHURCH', 179, _binary 0x00000000010300000001000000050000007ae26aecbcb4694167dd865d1a583941d67230f4beb469414ceb80b228583941797d7284c1b4694186566e7411583941363a00c7bfb4694178a31a2c055839417ae26aecbcb4694167dd865d1a583941, 230),
	('Residential', 'DLP', 179, _binary 0x00000000010300000001000000050000009fc06977d3b46941a29bee20e7573941169a3068d4b4694113b27593e557394169ea5248d4b4694109230ac0e0573941f2108c57d3b469419b0c834de25739419fc06977d3b46941a29bee20e7573941, 231),
	('Residential', 'Edwin', 171, _binary 0x0000000001030000000100000005000000ff74ff35b3b26941f23f468df4543941ff74ff35b3b26941aa60d19cf854394122d60ccbb3b26941aa60d19cf854394122d60ccbb3b26941f23f468df4543941ff74ff35b3b26941f23f468df4543941, 234),
	('Residential', 'TRY', 173, _binary 0x000000000103000000010000000500000069b3633dfdb269416b46f049e5553941d1428ecefcb269415189995cde553941aa76f282fdb26941d89a088bdb55394141e7c7f1fdb26941f5575f78e255394169b3633dfdb269416b46f049e5553941, 235),
	('BarberShop', 'AMARI BARBERSHOP', 171, _binary 0x000000000103000000010000000500000049d3e03cb6b2694160167440ee54394140fa0591b7b269418cd853d9ee5439414b9379b1b7b2694101b338ccdc543941546c545db6b26941d4f05833dc54394149d3e03cb6b2694160167440ee543941, 240),
	('Street Light', 'marie', 171, _binary 0x000000000101000000834a201da6b169411d1133d6e8553941, 244),
	('Street Light', 'exe', 171, _binary 0x000000000101000000ade5a4bda6b169416eeb19d6e6553941, 245),
	('Street Light', 'exe', 171, _binary 0x0000000001010000003acc5e6f99b16941655fb8f649573941, 246),
	('Street Light', 'marie', 171, _binary 0x000000000101000000d1f6f0c418b26941692bcf9e5b583941, 247),
	('Street Light', 'marie', 171, _binary 0x00000000010100000001d287d02bb16941ec504b58b7583941, 248),
	('Street Light', 'STREETLIGHT', 171, _binary 0x000000000101000000ceb2f22702b36941c1e6b00f1f533941, 249),
	('BarberShop', 'KABITBAHAY', 179, _binary 0x0000000001030000000100000005000000a065f182d4b46941dc4cbc37e557394157414827d5b469419b0eb08be35739413e0d49f9d4b46941875d7b21df5739418831f254d4b46941cc9b87cde0573941a065f182d4b46941dc4cbc37e5573941, 250),
	('Evacuation Area', 'EVACUATION', 171, _binary 0x00000000010300000001000000050000003f08da30dab269418cfe3e29fb53394175a30c1adcb26941ca0e81dad653394122e85c05d9b26941ca40df79cc533941b7d80e08d6b2694162329126ed5339413f08da30dab269418cfe3e29fb533941, 251);

-- Dumping structure for table 4thyeardb.lgu_g68_residents
CREATE TABLE IF NOT EXISTS `lgu_g68_residents` (
  `ResidentID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `age` int NOT NULL,
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Occupation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `height` int NOT NULL,
  `weight` int NOT NULL,
  `bmi` int NOT NULL,
  `bmi_category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `feature_id` int NOT NULL,
  `brgy_no` int NOT NULL,
  PRIMARY KEY (`ResidentID`),
  KEY `residentialpolygon- residents` (`feature_id`),
  KEY `residents to baranggay` (`brgy_no`),
  CONSTRAINT `residentialpolygon-resident` FOREIGN KEY (`feature_id`) REFERENCES `lgu_g68_featuredrawn` (`feature_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `residents to baranggay` FOREIGN KEY (`brgy_no`) REFERENCES `lgu_g68_barangay` (`barangay_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table 4thyeardb.lgu_g68_residents: ~6 rows (approximately)
INSERT INTO `lgu_g68_residents` (`ResidentID`, `Name`, `age`, `gender`, `Occupation`, `height`, `weight`, `bmi`, `bmi_category`, `feature_id`, `brgy_no`) VALUES
	(66, 'marie', 40, 'female', 'no', 159, 50, 19, 'Normal weight', 234, 171),
	(67, 'marie', 22, 'female', 'yes', 156, 50, 20, 'Normal weight', 231, 179),
	(68, 'Edwin', 40, 'male', 'no', 157, 50, 20, 'Normal weight', 234, 171),
	(69, 'marie', 35, 'female', 'yes', 157, 59, 23, 'Normal weight', 234, 171),
	(70, 'exe', 40, 'female', 'no', 159, 54, 21, 'Normal weight', 235, 173),
	(71, 'sabares', 40, 'male', 'no', 140, 90, 45, 'Obesity', 234, 171);

-- Dumping structure for table 4thyeardb.lgu_g68_routes
CREATE TABLE IF NOT EXISTS `lgu_g68_routes` (
  `route_id` int NOT NULL,
  `driver_id` int DEFAULT NULL,
  `end_location` geometry NOT NULL,
  `constraints` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` enum('Pending','Assigned','Completed') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table 4thyeardb.lgu_g68_routes: ~1 rows (approximately)
INSERT INTO `lgu_g68_routes` (`route_id`, `driver_id`, `end_location`, `constraints`, `status`) VALUES
	(1, 6, _binary 0x00000000010100000078895e37c0425e40c80dda24f8832d40, 'test_end_point', 'Pending');

-- Dumping structure for table 4thyeardb.lgu_g68_shopinfo
CREATE TABLE IF NOT EXISTS `lgu_g68_shopinfo` (
  `OwnerID` int NOT NULL AUTO_INCREMENT,
  `O_Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `O_age` int NOT NULL,
  `O_gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `O_permit` blob NOT NULL,
  `O_featureID` int NOT NULL,
  `O_barangay_no` int NOT NULL,
  PRIMARY KEY (`OwnerID`),
  KEY `shop info feat id to feature drawn feat id` (`O_featureID`),
  CONSTRAINT `shop info feat id to feature drawn feature id` FOREIGN KEY (`O_featureID`) REFERENCES `lgu_g68_featuredrawn` (`feature_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table 4thyeardb.lgu_g68_shopinfo: ~4 rows (approximately)
INSERT INTO `lgu_g68_shopinfo` (`OwnerID`, `O_Name`, `O_age`, `O_gender`, `O_permit`, `O_featureID`, `O_barangay_no`) VALUES
	(6, 'KABITBAHAY', 23, 'male', _binary 0x30, 250, 179),
	(7, 'KABITBAHAY', 23, 'male', _binary 0x30, 250, 179),
	(8, 'ako', 21, 'male', _binary 0x30, 240, 171),
	(9, 'we', 20, 'male', _binary 0x30, 240, 171);

-- Dumping structure for table 4thyeardb.lgu_g68_users
CREATE TABLE IF NOT EXISTS `lgu_g68_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `mobile_no` int NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `role` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table 4thyeardb.lgu_g68_users: ~3 rows (approximately)
INSERT INTO `lgu_g68_users` (`id`, `first_name`, `last_name`, `email`, `mobile_no`, `password`, `role`) VALUES
	(2, 'fname', 'lname', 'admin@admin.com', 0, '$2y$10$wWd5KW8ZEIVX8iakTOv6guzEr9aBGYMajf27X2exF4.kKyVNymvD.', 'admin'),
	(3, 'james', 'delapuz', 'jonathan.delapuz64@gmail.com', 0, '$2y$10$eJeWekQDE/cNzVzRKzAhaeLUGfiLX/BweOEsPwMDs4ji6q.Li8PD.', 'admin'),
	(4, 'jonathan', 'dlp', 'samej.delacruz59@gmail.com', 0, '$2y$10$d9hxiRPxQQGmUXCTW1LAAeVAxwvyaJP7sA423occtH1fO9QOy0M8K', 'admin');

-- Dumping structure for table 4thyeardb.lgu_g70_data
CREATE TABLE IF NOT EXISTS `lgu_g70_data` (
  `id` int NOT NULL,
  `firstname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `middlename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `surname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `birthdate` int NOT NULL,
  `birthplace` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `gender` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `citizenship` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `religion` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `number` int NOT NULL,
  `father` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fatherwork` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fatherhome` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fathercontact` int NOT NULL,
  `mother` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `motherwork` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `motherhome` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `mothercontact` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `housenumber` int NOT NULL,
  `street` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `barangay` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `province` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table 4thyeardb.lgu_g70_data: ~0 rows (approximately)

-- Dumping structure for table 4thyeardb.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=223 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table 4thyeardb.migrations: ~51 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(41, '2024_02_15_122658_usertype_in_users_table', 2),
	(117, '2024_02_13_174833_profile', 5),
	(118, '2024_02_21_164800_create_pendingdocus_table', 5),
	(124, '2014_10_12_100000_create_password_resets_table', 6),
	(127, '2024_02_18_121632_create_tbl_userdesc_table', 6),
	(128, '2024_02_22_054506_create_tbl_payments_trail_table', 6),
	(129, '2024_02_24_141212_create_personaldata_table', 6),
	(130, '2024_02_26_145722_create_tbl_subcontractors_table', 6),
	(131, '2024_02_26_173702_create_requests_table', 6),
	(132, '2024_02_26_175237_create_tblnotifications_table', 6),
	(133, '2014_08_12_000000_create_users_table', 7),
	(134, '2022_08_03_061844_create_user_types_table', 7),
	(135, '2022_08_03_061918_create_role_type_users_table', 7),
	(136, '2023_02_26_224452_create_clients_table', 7),
	(137, '2023_04_17_223959_create_vendors_table', 7),
	(138, '2023_11_06_120643_create_departments_table', 7),
	(139, '2023_12_03_013131_create_invoice_customer_names_table', 7),
	(140, '2023_12_03_013232_create_invoice_details_table', 7),
	(141, '2023_12_03_013327_create_invoice_payment_details_table', 7),
	(142, '2023_12_03_013436_create_invoice_total_amounts_table', 7),
	(143, '2023_12_03_013554_create_invoice_additional_charges_table', 7),
	(144, '2023_12_03_013631_create_invoice_discounts_table', 7),
	(145, '2024_02_20_133250_create_payment_term_table', 7),
	(146, '2024_02_20_133315_create_payment_method_table', 7),
	(147, '2024_02_20_214700_create_vendor_user_table', 7),
	(163, '2024_02_27_091154_roles', 8),
	(164, '2024_02_27_095000_create_budget_proposals_table', 8),
	(165, '2024_02_27_095003_create_budget_items_table', 8),
	(166, '2024_02_27_095245_create_expenses_table', 8),
	(167, '2024_02_27_095433_create_cost_centers_table', 8),
	(168, '2024_02_27_095437_create_allocations_table', 8),
	(169, '2024_02_27_095655_create_financial_metrics_table', 8),
	(170, '2024_02_27_100241_create_forecast_data_table', 8),
	(204, '2014_10_12_000000_create_users_table', 9),
	(205, '2014_10_12_100000_create_password_reset_tokens_table', 9),
	(206, '2019_08_19_000000_create_failed_jobs_table', 9),
	(207, '2019_12_14_000001_create_personal_access_tokens_table', 9),
	(208, '2024_02_11_025010_create_ppm_public_biddings_table', 9),
	(209, '2024_02_11_025114_create_ppm_small_value_procurements_table', 9),
	(210, '2024_02_25_143200_create_products_table', 9),
	(211, '2024_02_25_143241_create_inventories_table', 9),
	(212, '2024_02_25_143309_create_inventory_product_table', 9),
	(213, '2024_02_25_143342_create_demand_forecast_annual_table', 9),
	(214, '2024_02_25_143419_create_demand_forecast_monthly_table', 9),
	(215, '2024_02_25_143438_create_biddings_table', 9),
	(216, '2024_02_25_143521_create_budget_requests_table', 9),
	(217, '2024_02_25_144205_create_vendors_table', 9),
	(218, '2024_02_25_144206_create_contracts_table', 9),
	(219, '2024_02_25_144207_create_purchase_orders_table', 9),
	(220, '2024_02_25_144209_create_audits_table', 9),
	(221, '2024_02_24_151011_create_users_table', 10);

-- Dumping structure for table 4thyeardb.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table 4thyeardb.personal_access_tokens: ~0 rows (approximately)

-- Dumping structure for table 4thyeardb._personaldata
CREATE TABLE IF NOT EXISTS `_personaldata` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `employeeid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `plantillaid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employeecode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `rank` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `dateposition` date DEFAULT NULL,
  `emp_tin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emp_pagibig` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emp_sss` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emp_philhealth` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emp_hmo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emp_peraa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prc_expiration` date DEFAULT NULL,
  `passport` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emp_bank` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teachingtype` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `positionid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employmentstat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `office` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deptid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `bplace` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `bdate` date DEFAULT NULL,
  `resigned_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationalityid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religionid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `civil_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `citizenid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `personal_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landline` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isactive` tinyint(1) DEFAULT NULL,
  `teaching` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `branch` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `present_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isEmployee` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table 4thyeardb._personaldata: ~7 rows (approximately)
INSERT INTO `_personaldata` (`id`, `employeeid`, `plantillaid`, `employeecode`, `lname`, `fname`, `mname`, `nname`, `rank`, `dateposition`, `emp_tin`, `emp_pagibig`, `emp_sss`, `emp_philhealth`, `emp_hmo`, `emp_peraa`, `prc`, `prc_expiration`, `passport`, `emp_bank`, `teachingtype`, `positionid`, `employmentstat`, `office`, `deptid`, `gender`, `bplace`, `bdate`, `resigned_reason`, `nationalityid`, `religionid`, `civil_status`, `citizenid`, `personal_email`, `mobile`, `landline`, `email`, `isactive`, `teaching`, `branch`, `created_at`, `updated_at`, `present_address`, `isEmployee`) VALUES
	(1, '20249941', NULL, NULL, 'test', 'test', 'test', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', 1, '2024-03-17 02:17:16', '2024-03-17 02:17:16', NULL, NULL),
	(2, '20249942', NULL, NULL, 'employee', 'employee', 'employee', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', 1, '2024-03-17 04:40:51', '2024-03-17 04:40:51', NULL, NULL),
	(3, '20249943', NULL, NULL, 'test', 'test', 'test', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', 1, '2024-03-17 04:50:06', '2024-03-17 04:50:06', NULL, NULL),
	(4, '20249944', NULL, NULL, 'GUARDIAN', 'FINANCE', 'ADMIN', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', 1, '2024-03-17 07:32:55', '2024-03-17 07:32:55', NULL, NULL),
	(5, '20249945', NULL, NULL, 'employee', 'employee', 'employee', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', 1, '2024-03-18 14:37:32', '2024-03-18 14:37:32', NULL, NULL),
	(6, '20249946', NULL, NULL, 'super', 'super', 'super', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', 1, '2024-03-19 06:41:05', '2024-03-19 06:41:05', NULL, NULL),
	(7, '20249947', NULL, NULL, 'Ipsum', 'Lorem', 'Manager', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', 1, '2024-03-23 02:11:33', '2024-03-23 02:11:33', NULL, NULL);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
