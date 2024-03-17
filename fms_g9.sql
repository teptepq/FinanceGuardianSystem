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

-- Dumping structure for table thyearhrmtable.hr5_tblguests
CREATE TABLE IF NOT EXISTS `hr5_tblguests` (
  `GuestID` int NOT NULL AUTO_INCREMENT,
  `GuestNo` int DEFAULT NULL,
  `fname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `lname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `pno` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `state` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `postalcode` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `isActive` int DEFAULT '1',
  PRIMARY KEY (`GuestID`),
  KEY `idx_guest_no` (`GuestNo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table thyearhrmtable.hr5_tblguests: ~0 rows (approximately)
INSERT INTO `hr5_tblguests` (`GuestID`, `GuestNo`, `fname`, `lname`, `email`, `pno`, `address`, `city`, `state`, `postalcode`, `created_at`, `updated_at`, `isActive`) VALUES
	(1, 20240012, 'guest', 'guest', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-06 17:39:53', '2024-03-06 17:39:53', 1),
	(2, 20240013, 'guest2', 'guest2', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-06 17:45:20', '2024-03-06 17:45:20', 1);

-- Dumping structure for table thyearhrmtable.hr5_tblpersonaldata
CREATE TABLE IF NOT EXISTS `hr5_tblpersonaldata` (
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table thyearhrmtable.hr5_tblpersonaldata: ~4 rows (approximately)
INSERT INTO `hr5_tblpersonaldata` (`id`, `employeeid`, `plantillaid`, `employeecode`, `lname`, `fname`, `mname`, `nname`, `rank`, `dateposition`, `emp_tin`, `emp_pagibig`, `emp_sss`, `emp_philhealth`, `emp_hmo`, `emp_peraa`, `prc`, `prc_expiration`, `passport`, `emp_bank`, `teachingtype`, `positionid`, `employmentstat`, `office`, `deptid`, `gender`, `bplace`, `bdate`, `resigned_reason`, `nationalityid`, `religionid`, `civil_status`, `citizenid`, `personal_email`, `mobile`, `landline`, `email`, `isactive`, `teaching`, `branch`, `created_at`, `updated_at`, `present_address`, `isEmployee`) VALUES
	(49, '20240011', NULL, NULL, 'customer', 'customer', 'customer1@gmail.com', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, '2024-03-06 01:36:27', '2024-03-06 01:36:27', NULL, NULL),
	(53, '20240014', NULL, NULL, 'frontdesk', 'frontdesk', 'frontdesk@gmail.com', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, '2024-03-06 17:47:39', '2024-03-06 17:47:39', NULL, NULL),
	(54, '20240015', NULL, NULL, 'kitchen staff', 'kitchen staff', 'kitchenStaff@gmail.com', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, '2024-03-08 19:43:17', '2024-03-08 19:43:17', NULL, NULL),
	(55, '20240001', NULL, NULL, 'test', 'test', 'frontdesk@gmail.com', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, '2024-03-09 03:06:06', '2024-03-09 03:06:06', NULL, NULL);

-- Dumping structure for table thyearhrmtable.hr5_tblreservations
CREATE TABLE IF NOT EXISTS `hr5_tblreservations` (
  `ReservationID` int NOT NULL AUTO_INCREMENT,
  `GuestNo` int DEFAULT NULL,
  `RoomNo` int DEFAULT NULL,
  `CheckInDate` date DEFAULT NULL,
  `CheckOutDate` date DEFAULT NULL,
  `NumAdults` int DEFAULT NULL,
  `NumChildren` int DEFAULT NULL,
  `SpecialRequests` text,
  `ReservationStatus` enum('Pending','Confirmed','Cancelled') DEFAULT 'Pending',
  `CheckInStatus` enum('Checked-In','Not Checked-In') DEFAULT 'Not Checked-In',
  `CheckOutStatus` enum('Checked-Out','Not Checked-Out') DEFAULT 'Not Checked-Out',
  `RoomType` varchar(255) DEFAULT NULL,
  `isPaymentMethod` int DEFAULT NULL,
  `CreditCardNumber` varchar(255) DEFAULT NULL,
  `BillingAddress` varchar(255) DEFAULT NULL,
  `ConfirmationEmailSent` varchar(50) DEFAULT NULL,
  `ConfirmationNumber` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ReservationID`),
  KEY `idx_guest_no` (`GuestNo`),
  KEY `idx_room_no` (`RoomNo`),
  CONSTRAINT `hr5_tblreservations_ibfk_1` FOREIGN KEY (`GuestNo`) REFERENCES `hr5_tblguests` (`GuestNo`),
  CONSTRAINT `hr5_tblreservations_ibfk_2` FOREIGN KEY (`RoomNo`) REFERENCES `hr5_tblrooms` (`RoomNo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table thyearhrmtable.hr5_tblreservations: ~0 rows (approximately)
INSERT INTO `hr5_tblreservations` (`ReservationID`, `GuestNo`, `RoomNo`, `CheckInDate`, `CheckOutDate`, `NumAdults`, `NumChildren`, `SpecialRequests`, `ReservationStatus`, `CheckInStatus`, `CheckOutStatus`, `RoomType`, `isPaymentMethod`, `CreditCardNumber`, `BillingAddress`, `ConfirmationEmailSent`, `ConfirmationNumber`) VALUES
	(1, 20240012, NULL, NULL, NULL, NULL, NULL, NULL, 'Pending', 'Not Checked-In', 'Not Checked-Out', NULL, NULL, NULL, NULL, NULL, NULL);

-- Dumping structure for table thyearhrmtable.hr5_tblrooms
CREATE TABLE IF NOT EXISTS `hr5_tblrooms` (
  `RoomID` int NOT NULL,
  `RoomNo` int DEFAULT NULL,
  `RoomType` varchar(50) DEFAULT NULL,
  `BedType` varchar(50) DEFAULT NULL,
  `MaxOccupancy` int DEFAULT NULL,
  `RoomRate` decimal(10,2) DEFAULT NULL,
  `Description` text,
  `Status` enum('Available','Occupied','Maintenance') DEFAULT 'Available',
  PRIMARY KEY (`RoomID`),
  KEY `idx_room_no` (`RoomNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table thyearhrmtable.hr5_tblrooms: ~0 rows (approximately)

-- Dumping structure for table thyearhrmtable.hrms_h5_tbleventguests
CREATE TABLE IF NOT EXISTS `hrms_h5_tbleventguests` (
  `GuestID` int NOT NULL,
  `GuestNo` int DEFAULT NULL,
  `EventNo` int DEFAULT NULL,
  PRIMARY KEY (`GuestID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table thyearhrmtable.hrms_h5_tbleventguests: ~0 rows (approximately)

-- Dumping structure for table thyearhrmtable.hrms_h5_tblevents
CREATE TABLE IF NOT EXISTS `hrms_h5_tblevents` (
  `EventID` int NOT NULL AUTO_INCREMENT,
  `EventNo` varchar(255) DEFAULT NULL,
  `EventName` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `EventDate` date NOT NULL,
  `EventTime` longtext NOT NULL,
  `EventLocation` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `MaxCapacity` int NOT NULL DEFAULT '0',
  `Description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `OrganizerID` int NOT NULL,
  PRIMARY KEY (`EventID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table thyearhrmtable.hrms_h5_tblevents: ~2 rows (approximately)
INSERT INTO `hrms_h5_tblevents` (`EventID`, `EventNo`, `EventName`, `EventDate`, `EventTime`, `EventLocation`, `MaxCapacity`, `Description`, `OrganizerID`) VALUES
	(1, '20240309051809XdwDH6vf', 'sadsad', '2024-03-09', '12:00 PM', 'dsds', 2, 'dsdsd', 20240015),
	(2, '202403090518285lHDoEUn', 'sadsad', '2024-03-09', '12:00 PM', 'dsds', 2, 'dsdsd', 20240015),
	(3, '20240309051851b8Q7GOGe', 'sadsad', '2024-03-09', '12:00 PM', 'dsds', 3, 'dsdsd', 20240015);

-- Dumping structure for table thyearhrmtable.hrms_h5_tbleventservices
CREATE TABLE IF NOT EXISTS `hrms_h5_tbleventservices` (
  `EventID` int NOT NULL,
  `EventNo` int DEFAULT NULL,
  `ServiceID` int DEFAULT NULL,
  PRIMARY KEY (`EventID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table thyearhrmtable.hrms_h5_tbleventservices: ~0 rows (approximately)

-- Dumping structure for table thyearhrmtable.hrms_h5_tblservices
CREATE TABLE IF NOT EXISTS `hrms_h5_tblservices` (
  `ServiceID` int NOT NULL AUTO_INCREMENT,
  `ServiceNo` int DEFAULT NULL,
  `ServiceName` varchar(255) DEFAULT NULL,
  `Description` text,
  `Cost` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ServiceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table thyearhrmtable.hrms_h5_tblservices: ~0 rows (approximately)

-- Dumping structure for table thyearhrmtable.hrms_h5_tblstaff
CREATE TABLE IF NOT EXISTS `hrms_h5_tblstaff` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usertype` int NOT NULL,
  `userdesc` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table thyearhrmtable.hrms_h5_tblstaff: ~10 rows (approximately)
INSERT INTO `hrms_h5_tblstaff` (`id`, `usertype`, `userdesc`, `created_at`, `updated_at`) VALUES
	(1, 0, 'Superadmin', '2024-03-08 16:00:00', '2024-03-08 16:00:00'),
	(2, 1, 'Administrators', '2024-03-09 02:46:29', '2024-03-09 02:46:31'),
	(3, 2, 'Manager', '2024-03-09 02:47:02', '2024-03-09 02:47:06'),
	(4, 3, 'Front Desk Staff', NULL, NULL),
	(5, 4, 'Housekeeping Staff', NULL, NULL),
	(6, 5, 'Kitchen Staff', NULL, NULL),
	(7, 6, 'Waitstaff', NULL, NULL),
	(8, 7, 'Accounting/Finance Personnel', NULL, NULL),
	(9, 8, 'Human Resources Personnel', NULL, NULL),
	(10, 9, 'Customers/Guests', NULL, NULL);

-- Dumping structure for table thyearhrmtable.hrms_hr5_tblpromotions
CREATE TABLE IF NOT EXISTS `hrms_hr5_tblpromotions` (
  `PromotionID` int NOT NULL AUTO_INCREMENT,
  `Pcode` varchar(255) NOT NULL,
  `Pdiscount` int DEFAULT NULL,
  `PromotionName` varchar(255) NOT NULL,
  `Description` text,
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL,
  `TermsAndConditions` text,
  PRIMARY KEY (`PromotionID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table thyearhrmtable.hrms_hr5_tblpromotions: ~3 rows (approximately)
INSERT INTO `hrms_hr5_tblpromotions` (`PromotionID`, `Pcode`, `Pdiscount`, `PromotionName`, `Description`, `StartDate`, `EndDate`, `TermsAndConditions`) VALUES
	(1, '022', NULL, 'Summer Sale', 'Get 20% off on all room bookings', '2024-03-07', '2024-03-30', 'Valid for bookings made through hotel website only'),
	(2, '20240307215904JM0VZFjF', NULL, 'APRIL SALE', 'NOTHING sdjsijid', '2024-03-14', '2024-03-15', 'sjdijsd'),
	(6, '202403072256469GOiRgwd', NULL, 'sdadsa', 'dsadsa', '2024-03-08', '2024-03-28', 'dsadasdsa');

-- Dumping structure for table thyearhrmtable.users
CREATE TABLE IF NOT EXISTS `users` (
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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table thyearhrmtable.users: ~5 rows (approximately)
INSERT INTO `users` (`id`, `name`, `email`, `usertype`, `email_verified_at`, `password`, `userid`, `remember_token`, `created_at`, `updated_at`, `isNotice`) VALUES
	(1, 'Kelley Nicolas DDS', 'vena12@example.org', '0', NULL, '$2y$12$VgxkweGEk3kTH3pTNvBht.yN5B3FtDxAKrtr66UJIHg/KwuSiMNPK', NULL, NULL, '2024-02-24 19:13:16', '2024-02-24 19:13:16', 0),
	(85, 'customer', 'customer1@gmail.com', '9', NULL, '$2y$12$.BABTfwCNM9xsevW3fHOPONRB0TS5DZaxz9kEH76caU5.wHE2BR5S', '20240011', NULL, '2024-03-06 01:36:27', '2024-03-06 01:36:27', 0),
	(87, 'guest', 'quest@gmail.com', '9', NULL, '$2y$12$16TCkW8GvKQtOA5mRpc9muikcHirQJ7rwqaA/g0ZLX0Yes7aONZiu', '20240012', NULL, '2024-03-06 17:39:53', '2024-03-06 17:39:53', 0),
	(88, 'guest2', 'guest2@gmail.com', '9', NULL, '$2y$12$n14aIYx8iyH3EwgnxX/KHup2uEkJTK2Z6mZP9IrX3scv1lI2w1Puy', '20240013', NULL, '2024-03-06 17:45:20', '2024-03-06 17:45:20', 0),
	(89, 'frontdesk', 'frontdesk@gmail.com', '3', NULL, '$2y$12$3.d1sQ3RNZ8VPjj3tMiwBu0qtEPOWH2915gFmJOW.khFYY/uNL7xC', '20240014', NULL, '2024-03-06 17:47:39', '2024-03-06 17:47:39', 0),
	(90, 'kitchen staff', 'kitchenStaff@gmail.com', '5', NULL, '$2y$12$1gJU8KQkGkI9Lcz3AtYmCup0c0wn4mhRjlMzW1KowKPRvTsTfz33G', '20240015', NULL, '2024-03-08 19:43:17', '2024-03-08 19:43:17', 0);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
