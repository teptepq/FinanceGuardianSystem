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

-- Dumping structure for table 4thyeardb.fms_g9_tblemployeesalary
CREATE TABLE IF NOT EXISTS `fms_g9_tblemployeesalary` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `salary` decimal(10,2) NOT NULL,
  `effective_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table 4thyeardb.fms_g9_tblemployeesalary: ~2 rows (approximately)
INSERT INTO `fms_g9_tblemployeesalary` (`id`, `employee_id`, `salary`, `effective_date`, `created_at`, `updated_at`) VALUES
	(1, 20242455, 20000.00, '0000-00-00', '2024-03-03 22:44:02', '2024-03-03 22:44:13'),
	(2, 20249939, 20000.00, '0000-00-00', '2024-03-03 22:44:27', '2024-03-03 22:44:36');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;





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

-- Dumping structure for table 4thyeardb.fms_g9_tblpaymenttrail
CREATE TABLE IF NOT EXISTS `fms_g9_tblpaymenttrail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_date` date NOT NULL,
  `payment_method` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table 4thyeardb.fms_g9_tblpaymenttrail: ~2 rows (approximately)
INSERT INTO `fms_g9_tblpaymenttrail` (`id`, `employee_id`, `amount`, `payment_date`, `payment_method`, `description`, `created_at`, `updated_at`) VALUES
	(1, 20242455, 0.00, '0000-00-00', '', NULL, '2024-03-03 22:39:14', '2024-03-03 22:39:14'),
	(2, 20249939, 0.00, '0000-00-00', '', NULL, '2024-03-03 22:39:25', '2024-03-03 22:39:25');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

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

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;


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

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;


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

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;


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
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_userid_unique` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table 4thyeardb.fms_g9_users: ~5 rows (approximately)
INSERT INTO `fms_g9_users` (`id`, `name`, `email`, `usertype`, `email_verified_at`, `password`, `userid`, `remember_token`, `created_at`, `updated_at`, `isNotice`) VALUES
	(1, 'Kelley Nicolas DDS', 'vena12@example.org', '0', NULL, '$2y$12$VgxkweGEk3kTH3pTNvBht.yN5B3FtDxAKrtr66UJIHg/KwuSiMNPK', NULL, NULL, '2024-02-24 19:13:16', '2024-02-24 19:13:16', 0),
	(2, 'Eden Volkman', 'gudrun53@example.com', '1', NULL, '$2y$12$7ujDIG.WubVqZ7c/xtpPG.mpM8XSIHdN/7aRHZ/UCN/SC.PsBNoD6', NULL, NULL, '2024-02-24 19:13:16', '2024-02-24 19:13:16', 0),
	(3, 'Robert Wilkson', 'manager@gmail.com', '2', NULL, '$2y$12$G.81Q19UqXSTJDUbHrvfIe0mh96lF6jTGy3yNkewF2qzuLhYl5F66', NULL, NULL, '2024-02-24 19:13:16', '2024-02-24 19:13:16', 0),
	(4, 'Joyce Bergstrom', 'kaylee.carroll@example.com', '3', NULL, '$2y$12$D4OPaCcc78iEyX9OzEAz5eQXxbXuElzJXZl2yp4kdBIcEMQap.XOi', NULL, NULL, '2024-02-24 19:13:16', '2024-02-24 19:13:16', 0),
	(5, 'Marisa O\'Keefe', 'nicolas.dillon@example.com', '3', NULL, '$2y$12$dIYgzE/R/WXzYtiLOLJaluB1MIrugr4RBrA13xM3ZS5vQeC/3lk7u', NULL, NULL, '2024-02-24 19:13:17', '2024-02-24 19:13:17', 0);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

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

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

