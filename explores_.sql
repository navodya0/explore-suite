-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 01, 2026 at 02:29 PM
-- Server version: 10.11.15-MariaDB-cll-lve
-- PHP Version: 8.4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `explores_`
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
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `department_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`department_id`, `name`) VALUES
(16, 'Cooperate'),
(18, 'Digital Marketing'),
(22, 'EV Operations'),
(17, 'Finance'),
(20, 'Fleet'),
(2, 'HR & Admin'),
(24, 'IT'),
(25, 'Maintaince'),
(23, 'Marketing'),
(19, 'Rent A Car'),
(21, 'Transfer');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `employee_code` varchar(50) DEFAULT NULL,
  `employment_status` varchar(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `preferred_name` varchar(100) NOT NULL,
  `date_of_birth` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `marital_status` varchar(10) DEFAULT NULL,
  `nationality` varchar(100) DEFAULT NULL,
  `blood_group` varchar(10) DEFAULT NULL,
  `epf_number` varchar(50) DEFAULT NULL,
  `attendance_type` varchar(20) NOT NULL,
  `created_by` char(36) NOT NULL,
  `last_updated_by` char(36) NOT NULL,
  `last_updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employee_id`, `employee_code`, `employment_status`, `date_created`, `full_name`, `preferred_name`, `date_of_birth`, `gender`, `marital_status`, `nationality`, `blood_group`, `epf_number`, `attendance_type`, `created_by`, `last_updated_by`, `last_updated_date`) VALUES
(10, 'EV-000010', 'Active', '2026-03-18 11:29:18', 'Test1 Test2 Test3', 'IT Test', '2000-01-18', 'Male', 'Single', 'Sri Lankan', 'AB+', '00003', 'Fingerprint', '1', '1', '2026-03-30 20:38:56'),
(11, 'EV-000011', 'Active', '2026-03-24 17:43:08', 'Manuweldura Anton Shermal Perera', 'Shermal', '1987-07-11', 'Male', 'Married', 'Sri Lankan', NULL, NULL, 'Fingerprint', '12', '12', '2026-03-24 17:43:08'),
(14, 'EV-000014', 'Active', '2026-03-29 17:45:46', 'Ralston Aaron Josheph Gerreyn', 'Ralston', '1987-02-25', 'Male', 'Married', 'Sri Lankan', NULL, '36', 'Fingerprint', '12', '12', '2026-03-30 13:40:38'),
(17, 'EV-000017', 'Active', '2026-03-29 19:44:11', 'Delkadura Arachchige Mihiran Rajitha Dhananjaya Silva Gunarathne', 'Mihiran', '1993-11-11', 'Male', 'Married', 'Sri Lankan', NULL, '39', 'Fingerprint', '12', '1', '2026-04-01 11:28:12'),
(18, 'EV-000018', 'Active', '2026-03-29 19:51:51', 'Sundarige Chalani Hansika Fernando', 'Hansi', '1999-04-30', 'Female', 'Married', 'Sri Lankan', 'A+', '06', 'Fingerprint', '12', '1', '2026-04-01 11:09:46'),
(19, 'EV-000019', 'Active', '2026-03-29 20:08:31', 'Liyanage Wasantha Srimal Kamaral', 'Srimal kamaral', '1987-06-27', 'Male', 'Single', 'Sri Lankan', 'B+', '064', 'Fingerprint', '1', '1', '2026-04-01 16:13:20'),
(20, 'EV-000020', 'Active', '2026-03-29 20:18:52', 'Ranepura  Dewage Deshan Madhubhashana Rathnasinghe', 'Deshan', '1997-06-01', 'Male', 'Single', 'Sri Lankan', NULL, '37', 'Fingerprint', '12', '1', '2026-04-01 11:28:59'),
(21, 'EV-000021', 'Active', '2026-03-29 20:30:03', 'Konganige Nilantha Kumar Anthony', 'Nilantha', '1972-04-06', 'Male', 'Single', 'Sri Lankan', NULL, '02', 'Fingerprint', '12', '1', '2026-04-01 11:27:38'),
(24, 'EV-000024', 'Active', '2026-03-30 12:55:35', 'Manuwel Arachchigae Navodya Divyanjali', 'Navodya  Divyanjali', '2002-04-20', 'Female', 'Single', 'Sri Lankan', 'B+', '79', 'Fingerprint', '1', '1', '2026-03-31 11:10:59'),
(25, 'EV-000025', 'Active', '2026-03-30 13:01:57', 'Kuruwita Bandaralage Yuwanee Ahinsika Jayasena', 'Yuwanee Ahinsika', '2000-05-20', 'Female', 'Single', 'Sri Lankan', 'B+', NULL, 'Manual', '1', '1', '2026-03-30 13:13:39'),
(26, 'EV-000026', 'Active', '2026-03-30 13:09:10', 'Wadu Arachchilage Induru Udantha Waduarachchi', 'Induru Udantha', '2001-05-22', 'Male', 'Single', 'Sri Lankan', 'AB+', NULL, 'Manual', '1', '1', '2026-03-30 13:09:10'),
(27, 'EV-000027', 'Active', '2026-03-30 13:25:51', 'Thisaru Nadeeshana Meemanage', 'Thisaru', '1999-08-03', 'Male', 'Married', 'Sri Lankan', NULL, '78', 'Fingerprint', '12', '12', '2026-03-30 13:25:51'),
(28, 'EV-000028', 'Active', '2026-03-30 14:13:56', 'Chandrasekara Mudiyanselage Hasitha Lakmal Chandrasekara', 'Hasitha Chandrasekara', '1995-11-04', 'Male', 'Single', 'Sri Lankan', 'O+', '050', 'Fingerprint', '12', '1', '2026-04-01 11:23:52'),
(29, 'EV-000029', 'Active', '2026-03-30 14:31:47', 'Kuranage Primali Verjinia Muthumali Perera', 'Primali Perera', '1989-04-06', 'Female', 'Single', 'Sri Lankan', 'O+', '48', 'Fingerprint', '12', '1', '2026-04-01 11:23:19'),
(30, 'EV-000030', 'Active', '2026-03-30 18:02:38', 'Rankiri Hetti Arachchige Dona Shalinika Nilakshi Perera', 'Shalinika Nilakshi', '1992-07-31', 'Female', 'Married', 'Sri Lankan', 'O+', '035', 'Fingerprint', '12', '1', '2026-04-01 11:12:20'),
(31, 'EV-000031', 'Active', '2026-03-30 18:12:08', 'Aiththappulige Tilmi Nimasha', 'Tilmi Nimasha', '2003-08-13', 'Female', 'Single', 'Sri Lankan', 'O+', '05', 'Fingerprint', '12', '1', '2026-04-01 11:11:21'),
(32, 'EV-000032', 'Active', '2026-03-30 18:22:59', 'Sewmini Chamodya', 'Sewmini', '2000-07-21', 'Female', 'Single', 'Sri Lankan', 'O+', '68', 'Fingerprint', '12', '1', '2026-04-01 11:10:51'),
(33, 'EV-000033', 'Active', '2026-03-30 18:38:11', 'Rajapaksha Mahapathirannahalage Dewmi Sanjana Fonseka', 'Dewmi Sanjana', '2004-01-14', 'Female', 'Single', 'Sri Lankan', 'B+', '61', 'Fingerprint', '12', '1', '2026-04-01 11:10:18'),
(35, 'EV-000035', 'Active', '2026-03-31 11:47:04', 'Nethaki Thimansa Victoria', 'Thimansa Victoria', '2007-03-01', 'Female', 'Single', 'Sri Lankan', 'B+', '76', 'Fingerprint', '12', '1', '2026-04-01 11:08:22'),
(36, 'EV-000036', 'Active', '2026-03-31 12:05:29', 'Kiridurayalage Kavindi Sankalpana Arunasiri', 'Sankalpana Arunasiri', '2005-06-21', 'Female', 'Single', 'Sri Lankan', 'B+', '07', 'Fingerprint', '12', '1', '2026-04-01 11:07:53'),
(37, 'EV-000037', 'Active', '2026-03-31 12:32:10', 'Sri Narayana Bamunu Mudiyanselage Kavinda Sandagomi Bandara', 'Kavinda Sandagomi', '2000-02-28', 'Female', 'Single', 'Sri Lankan', NULL, '048', 'Fingerprint', '12', '1', '2026-04-01 11:06:45'),
(38, 'EV-000038', 'Active', '2026-03-31 17:04:46', 'Bachchawa Arachchige Sanduni Aloka Prasadhi Guyes', 'Sanduni Guyes', '2004-08-13', 'Female', 'Single', 'Sri Lankan', 'AB+', '64', 'Fingerprint', '12', '1', '2026-04-01 11:03:13'),
(39, 'EV-000039', 'Active', '2026-03-31 17:24:24', 'Mariyan Anton Niroshan Fernando', 'Anton Niroshan', '1990-08-10', 'Male', 'Single', 'Sri Lankan', 'O+', '62', 'Fingerprint', '12', '1', '2026-04-01 11:02:15'),
(40, 'EV-000040', 'Active', '2026-03-31 17:38:30', 'Winthakankanamalage Dilan Damitha Perera', 'Dilan Damitha', '1989-09-08', 'Male', 'Married', 'Sri Lankan', 'B+', '44', 'Fingerprint', '12', '1', '2026-04-01 11:01:47'),
(41, 'EV-000041', 'Active', '2026-03-31 17:52:15', 'Jayakumar Lakshika', 'Lakshika', '2004-10-29', 'Female', 'Single', 'Sri Lankan', 'O+', '74', 'Fingerprint', '12', '1', '2026-04-01 11:01:10'),
(42, 'EV-000042', 'Active', '2026-03-31 18:06:48', 'Korala Gamage Dilmi Menaka Nayanamali Fernando', 'Dilmi Fernando', '2004-03-09', 'Female', 'Single', 'Sri Lankan', NULL, '75', 'Fingerprint', '12', '1', '2026-04-01 10:59:28'),
(43, 'EV-000043', 'Active', '2026-03-31 19:41:34', 'Kakulandala Liyanage Don Sameera Dilshan', 'Sameera  Dilshan', '1995-04-20', 'Male', 'Single', 'Sri Lankan', 'A+', '59', 'Fingerprint', '12', '1', '2026-04-01 11:00:43'),
(44, 'EV-000044', 'Active', '2026-03-31 19:54:24', 'Dominikku Arachchige Don Anil Krishantha', 'Krishan Dominic', '1982-10-12', 'Male', 'Married', 'Sri Lankan', 'O+', '72', 'Fingerprint', '12', '1', '2026-04-01 11:00:14'),
(45, 'EV-000045', 'Active', '2026-04-01 14:07:02', 'Oswattaliyanage Dhilhara Sudharshi Perera', 'Dhilhara Perera', '1988-07-16', 'Female', 'Single', 'Sri Lankan', NULL, '42', 'Fingerprint', '12', '12', '2026-04-01 14:07:02'),
(46, 'EV-000046', 'Active', '2026-04-01 14:26:37', 'Kumarasinghe Hettiarachchige Dinith Sanuka Perera', 'Dinith Sanuka', '1989-06-08', 'Male', 'Single', 'Sri Lankan', NULL, '81', 'Fingerprint', '12', '1', '2026-04-01 17:43:22'),
(47, 'EV-000047', 'Active', '2026-04-01 18:12:06', 'Konganige Lasantha Kumar Anthony', 'Lasantha Anthony', '1977-08-24', 'Male', 'Married', 'Sri Lankan', NULL, '14', 'Fingerprint', '12', '12', '2026-04-01 18:13:28'),
(48, 'EV-000048', 'Active', '2026-04-01 18:20:28', 'Sembu Arachchilage Ajith', 'Sembu Ajith', '1969-09-21', 'Male', 'Married', 'Sri Lankan', NULL, '29', 'Fingerprint', '12', '12', '2026-04-01 18:20:28'),
(49, 'EV-000049', 'Active', '2026-04-01 18:25:34', 'Nissanka Kaplia Silva', 'Kapila Silva', '1980-06-01', 'Male', 'Married', 'Sri Lankan', NULL, '50', 'Fingerprint', '12', '12', '2026-04-01 18:25:34'),
(50, 'EV-000050', 'Active', '2026-04-01 18:31:11', 'Hodamuni Sahan Madusanka Mendis', 'Sahan Mendis', '1996-10-25', 'Male', 'Married', 'Sri Lankan', NULL, '56', 'Fingerprint', '12', '12', '2026-04-01 18:31:11'),
(51, 'EV-000051', 'Active', '2026-04-01 19:41:59', 'Mohottige Moshin Glenter Fernando', 'Moshin  Fernando', '1989-01-10', 'Male', 'Other', 'Sri Lankan', 'B+', '80', 'Fingerprint', '1', '1', '2026-04-01 19:41:59');

-- --------------------------------------------------------

--
-- Table structure for table `employee_addresses`
--

CREATE TABLE `employee_addresses` (
  `employee_address_id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `address_type` varchar(20) NOT NULL,
  `address_line_1` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `postal_code` varchar(20) DEFAULT NULL,
  `is_current` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_addresses`
--

INSERT INTO `employee_addresses` (`employee_address_id`, `employee_id`, `address_type`, `address_line_1`, `city`, `country`, `postal_code`, `is_current`) VALUES
(6, 11, 'Residential', '685 C Nimsalamariya mawatha Thewatha Road Ragama', 'Ragama', 'Sri Lanka', NULL, 1),
(41, 26, 'Residential', 'No 251, Ihala Kottaramulla, Pahala Kottaramulla', 'Nattandiya', 'Sri Lanka', NULL, 1),
(42, 25, 'Residential', '6th lane, Pothuvil road, Sirigala', 'Monaragala', 'Sri Lanka', NULL, 1),
(43, 25, 'Other', 'No. 11, Sadasarana Mawatha, Bolawalana', 'Negombo', 'Sri Lanka', NULL, 0),
(45, 27, 'Residential', '70/1 F sama mawatha, padiliyathuduwa road, hunupitiya', 'wattala', 'Sri Lanka', NULL, 1),
(46, 14, 'Residential', '56/2, Dharmapala Mw, Ekala', 'Ekala', 'Sri Lanka', NULL, 1),
(56, 10, 'Residential', 'Ihala Kottaramulla', 'Nattandiya', 'Sri Lanka', NULL, 1),
(60, 24, 'Residential', '109/1 Andhimulla Katana', 'Katana', 'Sri Lanka', NULL, 1),
(72, 42, 'Residential', '357/36,B,1, Gallawaththa , Raddoluwa , Seeduwa', 'Seeduwa', 'Sri Lanka', NULL, 1),
(73, 44, 'Residential', 'NO 48/8B PETER RODRIGO MW', 'Ja Ela', 'Sri Lanka', NULL, 1),
(74, 43, 'Residential', 'R/p 672 Rajapakshapura Banndarawatta Seeduwa', 'Seeduwa', 'Sri Lanka', NULL, 1),
(75, 41, 'Residential', '28/1/1 3rd cross street, Negombo', 'Negombo', 'Sri Lanka', NULL, 1),
(76, 40, 'Residential', 'No. 624/4 Gamameda Rd Kurana', 'Katunayake', 'Sri Lanka', NULL, 1),
(77, 39, 'Residential', '209/ St. Nicholas Road, Munnakkaraya', 'Negombo', 'Sri Lanka', NULL, 1),
(78, 38, 'Residential', '114/6 Kaluwarippuwa west', 'Katana', 'Sri Lanka', NULL, 1),
(79, 37, 'Residential', 'RP 746, 15th lane , RajapakshaPura', 'Seeduwa', 'Sri Lanka', NULL, 1),
(80, 36, 'Residential', 'J 2/2 A, Kandewaththa, Bogahamula', 'Mawanella', 'Sri Lanka', NULL, 1),
(81, 35, 'Residential', '478/D, Raddoluwa Raddolugama', 'Raddoluwa', 'Sri Lanka', NULL, 1),
(82, 18, 'Residential', '127, Winston Park, Kadirana, Negombo', 'Negombo', 'Sri Lanka', '11500', 1),
(83, 33, 'Residential', '117/D ST. John Mawatha Kandawala Katana', 'Katana', 'Sri Lanka', NULL, 1),
(84, 32, 'Residential', 'No. 101/10 Melrose Park Seeduwa Road Kotugoda', 'Kotugoda', 'Sri Lanka', NULL, 1),
(85, 31, 'Residential', '464/1A Welihena South Kochchikade', 'Negombo', 'Sri Lanka', NULL, 1),
(86, 30, 'Residential', '345/D,8,Aweriwatta rd,Batagama north', 'Ja Ela', 'Sri Lanka', NULL, 1),
(87, 29, 'Residential', 'No.105/A2, St Annes Road, Thimbirigaskatuwa', 'Negombo', 'Sri Lanka', NULL, 1),
(88, 28, 'Residential', '878/C, Siriwardhana Road', 'Ragama', 'Sri Lanka', NULL, 1),
(89, 21, 'Residential', '66/B, Magulpokuna, Ragama', 'Ragama', 'Sri Lanka', NULL, 1),
(90, 17, 'Residential', '33, Silva Mw, Nagoda, Kandana', 'Kandana', 'Sri Lanka', '11010', 1),
(91, 20, 'Residential', '209/A, Walpola, Ragama', 'Ragama', 'Sri Lanka', NULL, 1),
(92, 45, 'Residential', '32A, Indivitya Rd, Weligampitiya, Ja ela', 'Jaela', 'Sri Lanka', NULL, 1),
(94, 19, 'Residential', 'No:228/B/1B, Kondagammulla,Miriswatta', 'Negombo', 'Sri Lanka', NULL, 1),
(95, 46, 'Residential', '354,Halgasthota,Katunayake', 'Katunayake', 'Sri Lanka', NULL, 1),
(97, 47, 'Residential', '66/A, Magulpokuna,Ragama.', 'Ragama', 'Sri Lanka', NULL, 1),
(98, 48, 'Residential', '662/3,Narangoda Paluwa, Batuwatta', 'Batuwatta', 'Sri Lanka', NULL, 1),
(99, 49, 'Residential', '329/B,Mukkalangamuwa,Seeduwa', 'Seeduwa', 'Sri Lanka', NULL, 1),
(100, 50, 'Residential', '159/C, Dabaruyaya,Seeduwa.', 'Seeduwa', 'Sri Lanka', NULL, 1),
(101, 51, 'Residential', '65,Bandarawatta Seeduwa', 'Seeduwa', 'Sri Lanka', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee_bank_accounts`
--

CREATE TABLE `employee_bank_accounts` (
  `bank_account_id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `bank_name` varchar(150) NOT NULL,
  `bank_branch_name` varchar(150) NOT NULL,
  `bank_account_number` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_bank_accounts`
--

INSERT INTO `employee_bank_accounts` (`bank_account_id`, `employee_id`, `bank_name`, `bank_branch_name`, `bank_account_number`) VALUES
(6, 11, 'Hatton National Bank', 'M A S Perera', '102020014889'),
(40, 26, 'People\'s Bank', 'Nattandiya', '083200150043028'),
(41, 25, 'People\'s Bank', 'Monaragala', '068200190081414'),
(43, 27, 'Hatton National Bank', 'Kiribathgoda', '500020017441'),
(44, 14, 'Hatton National Bank', 'Seeduwa', '083478658931'),
(54, 10, 'Nations Trust Bank', 'Seeduwa', '45689156156'),
(58, 24, 'Hatton National Bank', 'Negombo', '024020742018'),
(70, 42, 'Hatton National Bank', 'Seeduwa', '209020152438'),
(71, 44, 'Hatton National Bank', 'JA ELA', '087020501814'),
(72, 43, 'Hatton National Bank', 'Seeduwa', '209020131499'),
(73, 41, 'Hatton National Bank', 'Negombo', '024020731234'),
(74, 40, 'Hatton National Bank', 'Seeduwa', '209020113396'),
(75, 39, 'Commercial Bank', 'Negombo Main', '8026636111'),
(76, 38, 'Hatton National Bank', 'Ragama', '102020370506'),
(77, 37, 'Hatton National Bank', 'Seeduwa', '209020098862'),
(78, 36, 'Hatton National Bank', 'Mawanella', '089020243686'),
(79, 35, 'Hatton National Bank', 'Seeduwa', '209020141672'),
(80, 18, 'Hatton National Bank', 'Seeduwa', '209020074385'),
(81, 33, 'Hatton National Bank', 'Negombo', '024020666985'),
(82, 32, 'Hatton National Bank', 'Negombo', '024020667577'),
(83, 31, 'Hatton National Bank', 'Ragama', '102020372638'),
(84, 30, 'Hatton National Bank', 'seeduwa', '102020367177'),
(85, 29, 'Hatton National Bank', 'Seeduwa', '209020089952'),
(86, 28, 'Hatton National Bank', 'Ragama', '102020351006'),
(87, 21, 'Hatton National Bank', 'Seeduwa', '000000000000'),
(88, 17, 'Hatton National Bank', 'Bambalapitiya', '039020401726'),
(89, 20, 'Hatton National Bank', 'Seeduwa', '000000000000'),
(90, 45, 'Hatton National Bank', 'Null', '000000000000'),
(92, 19, 'Hatton National Bank', 'Negombo', '024020684176'),
(93, 46, 'Hatton National Bank', 'Null', '000000000000'),
(95, 47, 'Hatton National Bank', 'Seeduwa', '0000000000'),
(96, 48, 'Hatton National Bank', 'Null', '000000000000'),
(97, 49, 'Hatton National Bank', 'Seeduwa', '000000000000'),
(98, 50, 'Hatton National Bank', 'Seeduwa', '000000000000'),
(99, 51, 'Hatton National Bank', 'Seeduwa', '209020138207');

-- --------------------------------------------------------

--
-- Table structure for table `employee_compensation`
--

CREATE TABLE `employee_compensation` (
  `comp_id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `salary_currency` char(3) NOT NULL,
  `pay_frequency` varchar(10) NOT NULL,
  `effective_from` date DEFAULT NULL,
  `effective_to` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_compensation`
--

INSERT INTO `employee_compensation` (`comp_id`, `employee_id`, `salary_currency`, `pay_frequency`, `effective_from`, `effective_to`) VALUES
(10, 10, 'LKR', 'Monthly', '2026-02-28', '2026-02-28'),
(11, 11, 'LKR', 'Monthly', '2024-07-24', NULL),
(13, 14, 'LKR', 'Monthly', '2026-02-18', '2026-03-19'),
(16, 17, 'LKR', 'Monthly', '2026-02-18', '2026-03-19'),
(17, 18, 'LKR', 'Monthly', '2026-02-20', '2026-03-19'),
(18, 19, 'LKR', 'Monthly', NULL, NULL),
(19, 20, 'LKR', 'Monthly', '2026-02-19', '2026-03-20'),
(20, 21, 'LKR', 'Monthly', '2026-02-18', '2026-03-19'),
(23, 24, 'LKR', 'Monthly', NULL, NULL),
(24, 25, 'LKR', 'Monthly', NULL, NULL),
(25, 26, 'LKR', 'Monthly', NULL, NULL),
(26, 27, 'LKR', 'Monthly', '2026-02-20', '2026-03-21'),
(27, 28, 'LKR', 'Monthly', '2026-02-20', '2026-03-19'),
(28, 29, 'LKR', 'Monthly', '2026-02-19', '2026-03-20'),
(29, 30, 'LKR', 'Monthly', '2026-02-20', '2026-03-19'),
(30, 31, 'LKR', 'Monthly', '2026-02-20', '2026-03-19'),
(31, 32, 'LKR', 'Monthly', '2026-02-20', '2026-03-19'),
(32, 33, 'LKR', 'Monthly', '2026-02-20', '2026-03-19'),
(34, 35, 'LKR', 'Monthly', '2026-02-20', '2026-03-19'),
(35, 36, 'LKR', 'Monthly', '2026-02-20', '2026-03-19'),
(36, 37, 'LKR', 'Monthly', '2026-02-20', '2026-03-19'),
(37, 38, 'LKR', 'Monthly', '2026-02-20', '2026-03-19'),
(38, 39, 'LKR', 'Monthly', '2026-02-20', '2026-03-19'),
(39, 40, 'LKR', 'Monthly', '2026-02-20', '2026-03-19'),
(40, 41, 'LKR', 'Monthly', '2026-02-20', '2026-03-19'),
(41, 42, 'LKR', 'Monthly', '2026-02-20', '2026-03-19'),
(42, 43, 'LKR', 'Monthly', NULL, NULL),
(43, 44, 'LKR', 'Monthly', '2026-02-20', '2026-03-19'),
(44, 45, 'LKR', 'Monthly', '2026-02-21', '2026-03-20'),
(45, 46, 'LKR', 'Monthly', '2026-02-20', '2026-03-19'),
(46, 47, 'LKR', 'Monthly', '2026-02-20', '2026-03-19'),
(47, 48, 'LKR', 'Monthly', '2026-02-21', '2026-03-20'),
(48, 49, 'LKR', 'Monthly', '2026-02-21', '2026-03-20'),
(49, 50, 'LKR', 'Monthly', '2026-02-21', '2026-03-20'),
(50, 51, 'LKR', 'Monthly', '2026-02-21', '2026-03-20');

-- --------------------------------------------------------

--
-- Table structure for table `employee_compensation_components`
--

CREATE TABLE `employee_compensation_components` (
  `component_id` bigint(20) UNSIGNED NOT NULL,
  `comp_id` bigint(20) UNSIGNED NOT NULL,
  `component_type` varchar(10) NOT NULL,
  `component_name` varchar(120) NOT NULL,
  `amount` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_compensation_components`
--

INSERT INTO `employee_compensation_components` (`component_id`, `comp_id`, `component_type`, `component_name`, `amount`) VALUES
(6, 11, 'Basic', 'Basic Salary', 311781.00),
(39, 25, 'Allowance', 'Basic Salary', 30000.00),
(40, 24, 'Allowance', 'Basic Salary', 30000.00),
(42, 26, 'Basic', 'Basic Salary', 119000.00),
(43, 13, 'Basic', 'Basic Salary', 100000.00),
(65, 10, 'Basic', 'Basic Salary', 1000.00),
(77, 23, 'Basic', 'Basic Salary', 71400.00),
(78, 23, 'Allowance', 'Fuel Incentive', 5000.00),
(79, 23, 'Allowance', 'Attendance Incentive', 2000.00),
(80, 23, 'Deduction', 'EPF 8%', 5712.00),
(111, 41, 'Basic', 'Basic Salary', 43000.00),
(112, 41, 'Allowance', 'Attendance', 2000.00),
(113, 43, 'Basic', 'Basic Salary', 73000.00),
(114, 43, 'Allowance', 'FUEL', 5000.00),
(115, 43, 'Allowance', 'MEAL', 4500.00),
(116, 42, 'Basic', 'Basic Salary', 70000.00),
(117, 42, 'Allowance', 'Fuel', 6000.00),
(118, 42, 'Allowance', 'Meal', 4500.00),
(119, 40, 'Basic', 'Basic Salary', 45000.00),
(120, 40, 'Allowance', 'Fuel', 5000.00),
(121, 40, 'Allowance', 'Attendance', 2000.00),
(122, 39, 'Basic', 'Basic Salary', 81250.00),
(123, 39, 'Allowance', 'Fuel', 6000.00),
(124, 39, 'Allowance', 'Attendance', 2000.00),
(125, 38, 'Basic', 'Basic Salary', 78750.00),
(126, 38, 'Allowance', 'Fuel', 5000.00),
(127, 38, 'Allowance', 'Attendence', 2000.00),
(128, 37, 'Basic', 'Basic Salary', 40000.00),
(129, 37, 'Allowance', 'Fuel', 3000.00),
(130, 37, 'Allowance', 'Attendance', 2000.00),
(131, 36, 'Basic', 'Basic Salary', 78750.00),
(132, 36, 'Allowance', 'Fuel', 6000.00),
(133, 36, 'Allowance', 'Attendance', 2000.00),
(134, 35, 'Basic', 'Basic Salary', 45000.00),
(135, 35, 'Allowance', 'Fuel', 5000.00),
(136, 35, 'Allowance', 'Attendance', 2000.00),
(137, 34, 'Basic', 'Basic Salary', 46000.00),
(138, 34, 'Allowance', 'Fuel', 5000.00),
(139, 34, 'Allowance', 'Attendance', 2000.00),
(140, 17, 'Basic', 'Basic Salary', 116925.00),
(141, 17, 'Allowance', 'Fuel', 7500.00),
(142, 17, 'Allowance', 'Attendance', 2000.00),
(143, 32, 'Basic', 'Basic Salary', 47300.00),
(144, 32, 'Allowance', 'Fuel', 5000.00),
(145, 32, 'Allowance', 'Attendance', 2000.00),
(146, 31, 'Basic', 'Basic Salary', 38000.00),
(147, 31, 'Allowance', 'Fuel', 5000.00),
(148, 31, 'Allowance', 'Attendance', 2000.00),
(149, 30, 'Basic', 'Basic Salary', 38000.00),
(150, 30, 'Allowance', 'Fuel', 5000.00),
(151, 30, 'Allowance', 'Attendence', 2001.00),
(152, 29, 'Basic', 'Basic Salary', 94694.00),
(153, 29, 'Allowance', 'fuel', 6500.00),
(154, 29, 'Allowance', 'Attendence', 2000.00),
(155, 28, 'Basic', 'Basic Salary', 85002.00),
(156, 28, 'Allowance', 'Fuel Allowance', 6000.00),
(157, 28, 'Allowance', 'Attendance Allowance', 2000.00),
(158, 27, 'Basic', 'Basic Salary', 83009.00),
(159, 27, 'Allowance', 'Fuel Allowance', 6000.00),
(160, 27, 'Allowance', 'Attendance', 2000.00),
(161, 20, 'Basic', 'Basic Salary', 139875.00),
(162, 16, 'Basic', 'Basic Salary', 100000.00),
(163, 19, 'Basic', 'Basic Salary', 121400.00),
(164, 44, 'Basic', 'Basic Salary', 100000.00),
(166, 18, 'Basic', 'Basic Salary', 0.00),
(167, 45, 'Basic', 'Basic Salary', 0.00),
(169, 46, 'Basic', 'Basic Salary', 90822.00),
(170, 47, 'Basic', 'Basic Salary', 90045.00),
(171, 48, 'Basic', 'Basic Salary', 79749.00),
(172, 49, 'Basic', 'Basic Salary', 65000.00),
(173, 50, 'Basic', 'Basic Salary', 67000.00),
(174, 50, 'Allowance', 'Fuel', 5000.00),
(175, 50, 'Allowance', 'Attendance', 2000.00);

-- --------------------------------------------------------

--
-- Table structure for table `employee_contacts`
--

CREATE TABLE `employee_contacts` (
  `contact_id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `contact_type` varchar(30) NOT NULL,
  `contact_value` varchar(255) NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_contacts`
--

INSERT INTO `employee_contacts` (`contact_id`, `employee_id`, `contact_type`, `contact_value`, `is_primary`) VALUES
(11, 11, 'Work Email', 'shermal@explorevacations.lk', 1),
(12, 11, 'Whatsapp Number', '0773207107', 1),
(77, 26, 'Work Email', 'udantha@explorevacations.lk', 1),
(78, 26, 'Whatsapp Number', '0763904365', 1),
(79, 26, 'Personal Email', 'induruudantha45615@gmail.com', 0),
(80, 25, 'Work Email', 'yuwanee@explorevacations.lk', 1),
(81, 25, 'Whatsapp Number', '0711681061', 1),
(84, 27, 'Work Email', 'nadeeshana@explorevacations.lk', 1),
(85, 27, 'Whatsapp Number', '0762990124', 1),
(86, 14, 'Work Email', 'gm@explorevacations.lk', 1),
(87, 14, 'Whatsapp Number', '0768200098', 1),
(106, 10, 'Work Email', 'test@gmail.com', 1),
(107, 10, 'Whatsapp Number', '0769304365', 1),
(114, 24, 'Work Email', 'navoda@explorevacations.lk', 1),
(115, 24, 'Whatsapp Number', '0761278989', 1),
(138, 42, 'Work Email', 'dilmi@srilankarentacar.com', 1),
(139, 42, 'Whatsapp Number', '0762901927', 1),
(140, 44, 'Work Email', 'anil@srilankarentacar.com', 1),
(141, 44, 'Personal Email', '0712650900', 1),
(142, 43, 'Work Email', 'sameera@srilankarentacar.lk', 1),
(143, 43, 'Whatsapp Number', '0777897292', 1),
(144, 41, 'Work Email', 'lakshika@srilankarentacar.com', 1),
(145, 41, 'Whatsapp Number', '0768244627', 1),
(146, 40, 'Work Email', 'dilan@srilankarentacar.com', 1),
(147, 40, 'Whatsapp Number', '763603588', 1),
(148, 39, 'Work Email', 'niroshan@srilankarentacar.lk', 1),
(149, 39, 'Whatsapp Number', '0763603667', 1),
(150, 38, 'Work Email', 'Sandunig@srilankarentacar.com', 1),
(151, 38, 'Whatsapp Number', '0728524416', 1),
(152, 37, 'Work Email', 'kavinda@srilankarentacar.com', 1),
(153, 37, 'Whatsapp Number', '0763230618', 1),
(154, 36, 'Work Email', 'rates@eliterentacar.lk', 1),
(155, 36, 'Whatsapp Number', '0764428250', 1),
(156, 35, 'Work Email', 'victoria@explorevacations.lk', 1),
(157, 35, 'Whatsapp Number', '0764801145', 1),
(158, 18, 'Work Email', 'finance@eliterentacar.lk', 1),
(159, 18, 'Whatsapp Number', '071 313 7031', 1),
(160, 33, 'Work Email', 'dewmi.sanjana@explorevacations.lk', 1),
(161, 33, 'Whatsapp Number', '0766673889', 1),
(162, 32, 'Work Email', 'sewmini@explorevacations.lk', 1),
(163, 32, 'Whatsapp Number', '0778742883', 1),
(164, 31, 'Work Email', 'acc.ass@eliterentacar.lk', 1),
(165, 31, 'Whatsapp Number', '0775102485', 1),
(166, 30, 'Work Email', 'acc.ass@explorevacations.lk', 1),
(167, 30, 'Whatsapp Number', '0776786608', 1),
(168, 29, 'Work Email', 'acc.ex@explorevacations.lk', 1),
(169, 29, 'Whatsapp Number', '0766197274', 1),
(170, 28, 'Work Email', 'hasitha@explorevacations.lk', 1),
(171, 28, 'Whatsapp Number', '0762545661', 1),
(172, 21, 'Work Email', 'fleet@srilankarentacar.lk', 1),
(173, 21, 'Whatsapp Number', '076 820 0093', 1),
(174, 17, 'Work Email', 'digitalmarketing@explorevacations.lk', 1),
(175, 17, 'Whatsapp Number', '071 477 0069', 1),
(176, 20, 'Work Email', 'deshan@srilankarentacar.com', 1),
(177, 20, 'Whatsapp Number', '076 534 5883', 1),
(178, 45, 'Work Email', 'hr@explorevacations.lk', 1),
(179, 45, 'Whatsapp Number', '0764160777', 1),
(182, 19, 'Work Email', 'it@explorevacations.lk', 1),
(183, 19, 'Whatsapp Number', '0714357976', 1),
(184, 46, 'Work Email', 'admin.executive@explorevacations.lk', 1),
(185, 46, 'Whatsapp Number', '075-7159099', 1),
(188, 47, 'Work Email', 'lasantha@srrentacar.lk', 1),
(189, 47, 'Whatsapp Number', '0772204390', 1),
(190, 48, 'Work Email', 'ajith@srrentacar.lk', 1),
(191, 48, 'Whatsapp Number', '0765105679', 1),
(192, 49, 'Work Email', 'Kapila@srrentacar.lk', 1),
(193, 49, 'Whatsapp Number', '0768743357', 1),
(194, 50, 'Work Email', 'sahan@srrentacar.lk', 1),
(195, 50, 'Whatsapp Number', '0765945684', 1),
(196, 51, 'Personal Email', 'omega11410@gmail.com', 1),
(197, 51, 'Whatsapp Number', '0787358598', 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee_documents`
--

CREATE TABLE `employee_documents` (
  `employee_document_id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `doc_type` varchar(30) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(500) NOT NULL,
  `mime_type` varchar(100) DEFAULT NULL,
  `file_size_bytes` bigint(20) UNSIGNED DEFAULT NULL,
  `uploaded_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_documents`
--

INSERT INTO `employee_documents` (`employee_document_id`, `employee_id`, `doc_type`, `file_name`, `file_path`, `mime_type`, `file_size_bytes`, `uploaded_at`) VALUES
(18, 10, 'Profile Photo', 'profile_1.png', 'employees/10/profile-photo/dTlg5seLkjIyRT6zSDm500yq4N6u86QyUyKvY5T3.png', 'image/png', 241171, '2026-03-30 20:38:56'),
(20, 24, 'Profile Photo', 'DSC03316 (1).jpg', 'employees/24/profile-photo/jOIZ6EWiyLnTH7FTd9oyslATLJegZ2dZuFbMWv15.jpg', 'image/jpeg', 1309315, '2026-03-31 11:10:59'),
(21, 42, 'Profile Photo', 'WhatsApp Image 2026-04-01 at 09.06.47.jpeg', 'employees/42/profile-photo/yty04SyDhB6zlKntgqtzUN9ylYol9KIrW54fLR9I.jpeg', 'image/jpeg', 313581, '2026-04-01 10:59:28'),
(22, 44, 'Profile Photo', 'WhatsApp Image 2026-04-01 at 09.06.47 (1).jpeg', 'employees/44/profile-photo/bS4zhOeHAwgcOzKv9TMnTp5PXutBeHKGujCjE5kb.jpeg', 'image/jpeg', 539774, '2026-04-01 11:00:14'),
(23, 43, 'Profile Photo', 'WhatsApp Image 2026-04-01 at 09.06.47 (2).jpeg', 'employees/43/profile-photo/XTq31UT2XxdFwSVCKbAtcWKlNmIqK0GKBNZ4LGmd.jpeg', 'image/jpeg', 331219, '2026-04-01 11:00:43'),
(24, 41, 'Profile Photo', 'WhatsApp Image 2026-04-01 at 09.06.47 (3).jpeg', 'employees/41/profile-photo/7JgzDAEZrLgo1s6tnmZ5SjRhnWp8lnQT8yHEzIn8.jpeg', 'image/jpeg', 381819, '2026-04-01 11:01:10'),
(25, 40, 'Profile Photo', 'WhatsApp Image 2026-04-01 at 09.06.47 (4).jpeg', 'employees/40/profile-photo/QtN8fbVuxdMz3dzLRGrpPMqZ7Lc3mfGUqVKqdtFP.jpeg', 'image/jpeg', 443093, '2026-04-01 11:01:47'),
(26, 39, 'Profile Photo', 'WhatsApp Image 2026-04-01 at 09.06.47 (5).jpeg', 'employees/39/profile-photo/HwVElIEY4u2pBEZvPsPBedi2URQ1AkEWPggse7o2.jpeg', 'image/jpeg', 488150, '2026-04-01 11:02:15'),
(27, 38, 'Profile Photo', 'WhatsApp Image 2026-04-01 at 09.06.47 (6).jpeg', 'employees/38/profile-photo/ZGsQPKZG2FOyAZjZjzUldx9zGcThHDTcwdia6ldg.jpeg', 'image/jpeg', 309124, '2026-04-01 11:03:13'),
(28, 37, 'Profile Photo', 'WhatsApp Image 2026-04-01 at 09.06.47 (7).jpeg', 'employees/37/profile-photo/7IGXgp6yLFgvNyuWNEnVs1WVIOZya1lcHVGfuZQv.jpeg', 'image/jpeg', 625065, '2026-04-01 11:06:45'),
(29, 36, 'Profile Photo', 'WhatsApp Image 2026-04-01 at 09.06.47 (8).jpeg', 'employees/36/profile-photo/bBiUimlQMxIfTcr8HDznfMIpM0Z5SCJFP0Xpr4dn.jpeg', 'image/jpeg', 378166, '2026-04-01 11:07:53'),
(30, 35, 'Profile Photo', 'WhatsApp Image 2026-04-01 at 09.06.25.jpeg', 'employees/35/profile-photo/XdQ8u6YRXpPUdwSnk8GmY8Z37MZgm4f5jEGHH4Yd.jpeg', 'image/jpeg', 425935, '2026-04-01 11:08:22'),
(31, 18, 'Profile Photo', 'WhatsApp Image 2026-04-01 at 09.06.47 (9).jpeg', 'employees/18/profile-photo/iQjzCVeMgT4uRm8mYTYgPKXu5vGM1gzk1vIXlHKV.jpeg', 'image/jpeg', 454217, '2026-04-01 11:09:46'),
(32, 33, 'Profile Photo', 'WhatsApp Image 2026-04-01 at 09.06.47 (10).jpeg', 'employees/33/profile-photo/xq8y51BCHo4BPjaah0YjY7O8yVbdrLQ8qXZUGV6B.jpeg', 'image/jpeg', 475990, '2026-04-01 11:10:18'),
(33, 32, 'Profile Photo', 'WhatsApp Image 2026-04-01 at 09.06.47 (11).jpeg', 'employees/32/profile-photo/eGmujqJdjKHcxXF09s6scRZctK4oiileV8WsgqL6.jpeg', 'image/jpeg', 570399, '2026-04-01 11:10:51'),
(34, 31, 'Profile Photo', 'WhatsApp Image 2026-04-01 at 09.06.47 (12).jpeg', 'employees/31/profile-photo/mzmSWHrgVq5JlqOgQweFX2ghhvahNDWVGFDrePV0.jpeg', 'image/jpeg', 613785, '2026-04-01 11:11:22'),
(35, 30, 'Profile Photo', 'WhatsApp Image 2026-04-01 at 09.06.47 (13).jpeg', 'employees/30/profile-photo/KSbHIS5ezrAmtXXGslzeYUItkxPRsx2663tfcL7A.jpeg', 'image/jpeg', 486210, '2026-04-01 11:12:20'),
(36, 29, 'Profile Photo', 'WhatsApp Image 2026-04-01 at 09.06.47 (14).jpeg', 'employees/29/profile-photo/TxSQ7VUx3NVTbCeoYnQ4is2iu1NWkYZ1yxKv5u7G.jpeg', 'image/jpeg', 511963, '2026-04-01 11:23:19'),
(37, 28, 'Profile Photo', 'WhatsApp Image 2026-04-01 at 09.06.47 (15).jpeg', 'employees/28/profile-photo/g6tYglk0JqhIHycmLUmPyxUNaOVjHkASR8DBAQTI.jpeg', 'image/jpeg', 605807, '2026-04-01 11:23:52'),
(38, 21, 'Profile Photo', 'WhatsApp Image 2026-04-01 at 09.06.47 (16).jpeg', 'employees/21/profile-photo/Dd5EJ203StNw0t7QQZZK2Zo9FPPauFsNwHKGyIsT.jpeg', 'image/jpeg', 486352, '2026-04-01 11:27:38'),
(39, 17, 'Profile Photo', 'WhatsApp Image 2026-04-01 at 09.06.47 (17).jpeg', 'employees/17/profile-photo/4Bvl6VvfuxBjVjfhR2gbfprhFoUvb2yqLq8O5yaV.jpeg', 'image/jpeg', 399384, '2026-04-01 11:28:12'),
(40, 20, 'Profile Photo', 'WhatsApp Image 2026-04-01 at 09.06.47 (18).jpeg', 'employees/20/profile-photo/fV0MQqBHVDY9cxP6lCTpsG7BuOZa0BKNPalsNcWN.jpeg', 'image/jpeg', 535720, '2026-04-01 11:28:59'),
(41, 19, 'Profile Photo', 'file.jpg', 'employees/19/profile-photo/cvodEZbaTldL8ZS2CafjFE3vjt1u6RfmbKLzNhJh.jpg', 'image/jpeg', 39676, '2026-04-01 16:13:20'),
(42, 46, 'Profile Photo', 'WhatsApp Image 2026-04-01 at 09.06.47 (19).jpeg', 'employees/46/profile-photo/TNZH02FmaJErTSOkReipKXZbkxCBjksM0wVC8zMl.jpeg', 'image/jpeg', 532006, '2026-04-01 17:43:22'),
(43, 51, 'Profile Photo', 'WhatsApp Image 2026-04-01 at 09.06.47 (20).jpeg', 'employees/moshin-fernando/profile-photo/ExlQ6B1k1Lb4zdb4EV8WgiulQXbOv8YeUJrfF7bp.jpg', 'image/jpeg', 386323, '2026-04-01 19:41:59');

-- --------------------------------------------------------

--
-- Table structure for table `employee_emergency_contacts`
--

CREATE TABLE `employee_emergency_contacts` (
  `emergency_contact_id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(150) NOT NULL,
  `relationship` varchar(100) NOT NULL,
  `phone` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_emergency_contacts`
--

INSERT INTO `employee_emergency_contacts` (`emergency_contact_id`, `employee_id`, `name`, `relationship`, `phone`) VALUES
(6, 11, 'Shone', 'Son', '0773207107'),
(40, 26, 'R Vajira Kanthi', 'Mother', '0767241365'),
(41, 25, 'Jayasena', 'Father', '0707095826'),
(43, 27, 'Dilmi Manoja', 'Wife', '076330975'),
(44, 14, 'Melissa', 'Wife', '0777007140'),
(54, 10, 'Induru Udantha', 'Relationship', '0763904365'),
(58, 24, 'Roshan Meerium', 'Father', '0770206336'),
(70, 42, 'K.Thilanka Dilshan', 'Father', '0776373279'),
(71, 44, 'K NADEESHANI ASANGIKA PERERA', 'WIFE', '0767090558'),
(72, 43, 'W.D.E.M.F Perera', 'Mother', '0774465454'),
(73, 41, 'Selvi Jayakumar', 'Mother', '0777855617'),
(74, 40, 'Lakmini Fernando', 'Wife', '766620032'),
(75, 39, 'Niranjani Fernando', 'Sister', '0776117707'),
(76, 38, 'Dagma Fernando', 'Mother', '0777148715'),
(77, 37, 'Manjula Krishanthi Aberathne', 'Mother', '0767718456'),
(78, 36, 'Manori Gunawardhana', 'Mother', '0761849125'),
(79, 35, 'Susanthi Priyadarshani', 'Mother', '0770629643'),
(80, 18, 'Chamila Gunawardena', 'Mother', '0771299701'),
(81, 33, 'S. Anusha', 'Mother', '076 8910378'),
(82, 32, 'Ashoka Chandrasiri', 'Farther', '0779971049'),
(83, 31, 'Nimali Renuka', 'Mother', '0769622485'),
(84, 30, 'Chulan Lasantha', 'Husbund', '0774674899'),
(85, 29, 'E A Jayasinghe', 'Mother', '0763548209'),
(86, 28, 'Mrs. Karuna Balasuriya', 'Mother', '0718404094'),
(87, 21, 'Null', 'Null', 'Null'),
(88, 17, 'Sandali Madushiks', 'Wife', '077 367 3070'),
(89, 20, 'Null', 'Null', 'Null'),
(90, 45, 'Null', 'Null', 'Null'),
(92, 19, 'Arusha', 'Brother', '0719400013'),
(93, 46, 'Ramya', 'Mother', '0740368556'),
(95, 47, 'Null', 'Null', 'Null'),
(96, 48, 'Null', 'Null', 'Null'),
(97, 49, 'Null', 'Null', 'Null'),
(98, 50, 'Null', 'Null', 'Null'),
(99, 51, 'Moshe Dilmi Fernando', 'Sister', '0716978015');

-- --------------------------------------------------------

--
-- Table structure for table `employee_experience`
--

CREATE TABLE `employee_experience` (
  `experience_id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `previous_employer` varchar(150) DEFAULT NULL,
  `total_years` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_experience`
--

INSERT INTO `employee_experience` (`experience_id`, `employee_id`, `previous_employer`, `total_years`) VALUES
(13, 27, 'BDO partners', 6.00),
(14, 27, 'Idea Group limited', 1.00),
(15, 14, '5', 10.00),
(37, 24, 'Pixzarloop (Pvt) Ltd', 1.00),
(55, 44, 'UAE EXCHANGE CENTRE LLC', 7.00),
(56, 44, 'BURJ COOL TECHNICAL SERVICES', 3.00),
(57, 44, 'HSBC', 3.00),
(58, 43, 'Jet Wing Sea', 0.60),
(59, 43, 'Onreech Hotel', 1.00),
(60, 43, 'Simms Boutique Hotel Malaysia', 0.60),
(61, 43, 'Beach Walk Hotel', 0.75),
(62, 43, 'MAS Active Shadowline', 5.00),
(63, 41, 'SR Rent A Car (Pvt) Ltd', 1.00),
(64, 40, 'Abans Office Automation (pvt) LTD', 10.00),
(65, 39, 'Ansell Textile Lanka PVT LTD', 6.50),
(66, 39, 'Melbourne Textile Washing Plant', 2.00),
(67, 38, 'SR Rent a Car', 1.00),
(68, 37, 'St. Michell\'s International School ( Thimbirigaskatuwa)', 2.00),
(69, 37, 'Maris Stella  College Thimbirigaskatuwa', 1.00),
(70, 36, 'Elite Rent A Car (Pvt) Ltd', 1.00),
(71, 35, 'Spillburg Vacations (Pvt) Ltd', 0.80),
(72, 18, 'Explore Vacations & Travels (Pvt) Ltd', 6.00),
(73, 33, 'Explore Vacations & Travels PVT LTD', 2.20),
(74, 32, 'ADE Lanka (Pvt) Ltd', 1.00),
(75, 32, 'Advanced Cleaning Service (Pvt) Ltd', 1.00),
(76, 32, 'Explore Vacations & Travels (Pvt) Ltd', 1.50),
(77, 31, 'Elite Rent A Car (pvt) Ltd', 1.00),
(78, 30, 'RV Fashion', 2.00),
(79, 30, 'Soar Technology Pvt Ltd', 2.50),
(80, 30, 'Luck Fashion Pvt Ltd', 2.50),
(81, 30, 'Explore Vacations & Travels Pvt Latd', 7.00),
(82, 29, 'Ave Maria Hospital Pvt Ltd -', 6.00),
(83, 29, 'Ammirato Foods', 3.00),
(84, 29, 'Formula Express Pvt Ltd', 3.00),
(85, 29, 'Explore Vacations and Travels Pvt Ltd', 3.50),
(86, 28, 'Union Bank of Colombo PLC', 1.00),
(87, 28, 'National Transport Commission', 5.00),
(88, 28, 'Explore Vacations and Travels Pvt. Ltd.', 3.00),
(89, 21, '00', 0.00),
(90, 17, '2', 5.50),
(91, 20, '00', -0.25),
(92, 45, 'Bread Talk', 3.00),
(94, 19, 'Sri Lanka Navy', 16.00),
(95, 19, 'Sanoreech Hotel', 2.00),
(96, 46, 'Mas Holding', 10.00),
(98, 47, 'Null', 0.00),
(99, 48, 'Null', 0.00),
(100, 49, 'Null', 0.00),
(101, 50, 'Null', -0.25),
(102, 51, 'Lanka Sports Reizen Pvt Ltd', 2.50),
(103, 51, 'Dilaksha Fashions - Seeduwa', 5.00),
(104, 51, 'Fits Express Pvt Ltd', 2.00);

-- --------------------------------------------------------

--
-- Table structure for table `employee_job`
--

CREATE TABLE `employee_job` (
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `department_id` bigint(20) UNSIGNED NOT NULL,
  `job_title_id` bigint(20) UNSIGNED NOT NULL,
  `employment_type` varchar(20) NOT NULL,
  `employment_level` varchar(20) NOT NULL,
  `company_type` varchar(255) NOT NULL,
  `date_of_joining` date NOT NULL,
  `probation_end_date` date DEFAULT NULL,
  `reporting_manager_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_job`
--

INSERT INTO `employee_job` (`employee_id`, `department_id`, `job_title_id`, `employment_type`, `employment_level`, `company_type`, `date_of_joining`, `probation_end_date`, `reporting_manager_id`) VALUES
(10, 24, 10, 'Full-Time', 'Probation', 'Explore Vacations (Pvt) Ltd', '2026-01-01', NULL, 11),
(11, 16, 14, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2004-07-14', NULL, NULL),
(14, 16, 15, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2019-03-09', NULL, 11),
(17, 18, 17, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2019-11-16', '2020-11-24', 14),
(18, 17, 11, 'Full-Time', 'Permanent', 'Elite Rent a Car (Pvt) Ltd', '2025-02-22', NULL, 11),
(19, 24, 20, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2024-05-17', NULL, 14),
(20, 19, 19, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2022-02-22', NULL, 14),
(21, 20, 18, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2015-12-30', NULL, 14),
(24, 24, 22, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2025-08-14', NULL, 19),
(25, 24, 21, 'Full-Time', 'Fixed- Contract', 'Explore Vacations (Pvt) Ltd', '2026-02-14', '2027-02-14', 19),
(26, 24, 21, 'Full-Time', 'Fixed- Contract', 'Explore Vacations (Pvt) Ltd', '2026-01-19', NULL, 19),
(27, 18, 23, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2025-08-04', NULL, 17),
(28, 17, 24, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2023-09-30', NULL, 11),
(29, 17, 24, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2022-05-08', NULL, 11),
(30, 17, 25, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2019-02-19', NULL, 11),
(31, 17, 26, 'Full-Time', 'Permanent', 'Elite Rent a Car (Pvt) Ltd', '2024-11-17', NULL, 18),
(32, 17, 26, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2024-09-30', NULL, 11),
(33, 17, 26, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2024-01-22', NULL, 11),
(35, 18, 28, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2025-05-25', NULL, 17),
(36, 23, 29, 'Full-Time', 'Permanent', 'Elite Rent a Car (Pvt) Ltd', '2025-01-19', NULL, 11),
(37, 23, 30, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2023-09-17', NULL, 14),
(38, 23, 30, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2024-10-13', NULL, 14),
(39, 20, 32, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2024-05-07', NULL, 21),
(40, 21, 33, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2023-02-22', NULL, 14),
(41, 21, 34, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2025-01-26', NULL, 14),
(42, 21, 34, 'Full-Time', 'Probation', 'SR Rent a Car (Pvt) Ltd', '2025-12-02', NULL, 14),
(43, 19, 27, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2024-06-30', NULL, 20),
(44, 19, 27, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2025-08-24', NULL, 20),
(45, 2, 16, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2021-05-05', NULL, 14),
(46, 2, 36, 'Full-Time', 'Probation', 'Explore Vacations (Pvt) Ltd', '2025-09-21', NULL, 45),
(47, 21, 10, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2017-12-31', NULL, 14),
(48, 21, 10, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2019-08-21', NULL, 14),
(49, 21, 10, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2023-11-05', NULL, 14),
(50, 21, 10, 'Full-Time', 'Permanent', 'SR Rent a Car (Pvt) Ltd', '2024-06-27', NULL, 14),
(51, 2, 35, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2025-08-27', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee_leave_balances`
--

CREATE TABLE `employee_leave_balances` (
  `leave_balance_id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `leave_policy_id` bigint(20) UNSIGNED NOT NULL,
  `total_taken` decimal(5,2) NOT NULL DEFAULT 0.00,
  `remaining` decimal(5,2) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee_personal_vehicle_usage`
--

CREATE TABLE `employee_personal_vehicle_usage` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `usage_count` int(11) DEFAULT 0,
  `charge_per_request` decimal(10,2) DEFAULT 0.00,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee_yearly_leave_balance`
--

CREATE TABLE `employee_yearly_leave_balance` (
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `leave_policy_id` bigint(20) UNSIGNED NOT NULL,
  `leave_entitlement` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_yearly_leave_balance`
--

INSERT INTO `employee_yearly_leave_balance` (`employee_id`, `leave_policy_id`, `leave_entitlement`) VALUES
(10, 1, 15.00),
(10, 2, 10.00),
(10, 3, 5.00),
(11, 1, 14.00),
(14, 1, 14.00),
(14, 2, 2.00),
(14, 3, 6.00),
(17, 1, 14.00),
(17, 2, 9.00),
(17, 3, 2.50),
(18, 1, 14.00),
(18, 2, 9.00),
(18, 3, 3.00),
(19, 1, 14.00),
(20, 1, 14.00),
(20, 2, 13.00),
(20, 3, 6.00),
(21, 1, 14.00),
(21, 2, 12.00),
(21, 3, 4.50),
(24, 1, 7.00),
(24, 2, 14.00),
(24, 3, 7.00),
(25, 3, 6.00),
(26, 3, 6.00),
(27, 1, 7.00),
(27, 2, 13.00),
(27, 3, 5.00),
(28, 1, 14.00),
(28, 2, 12.00),
(28, 3, 6.00),
(29, 1, 14.00),
(29, 2, 10.00),
(29, 3, 5.00),
(30, 1, 14.00),
(30, 2, 10.00),
(30, 3, 6.50),
(31, 1, 14.00),
(31, 2, 9.00),
(31, 3, 5.50),
(32, 1, 14.00),
(32, 2, 13.00),
(32, 3, 5.50),
(33, 1, 14.00),
(33, 2, 8.00),
(33, 3, 6.00),
(35, 1, 9.00),
(35, 2, 14.00),
(35, 3, 6.50),
(36, 1, 14.00),
(36, 2, 11.00),
(36, 3, 6.50),
(37, 1, 13.00),
(37, 2, 11.00),
(37, 3, 7.00),
(38, 1, 14.00),
(38, 2, 11.00),
(38, 3, 7.00),
(39, 1, 14.00),
(39, 2, 5.00),
(39, 3, 6.50),
(40, 1, 14.00),
(40, 2, 13.00),
(40, 3, 7.00),
(41, 1, 2.00),
(41, 2, 11.00),
(41, 3, 6.50),
(42, 1, 0.00),
(42, 2, 0.00),
(42, 3, 0.00),
(43, 1, 13.00),
(43, 2, 14.00),
(43, 3, 5.50),
(44, 1, 7.00),
(44, 2, 14.00),
(44, 3, 6.00),
(45, 1, 14.00),
(45, 2, 8.00),
(45, 3, 7.00),
(46, 1, 7.00),
(46, 2, 13.00),
(46, 3, 6.00),
(47, 1, 14.00),
(47, 2, 0.00),
(47, 3, 0.00),
(48, 1, 14.00),
(48, 2, 0.00),
(48, 3, 0.00),
(49, 1, 14.00),
(49, 2, 0.00),
(49, 3, 0.00),
(50, 1, 14.00),
(50, 2, 0.00),
(50, 3, 0.00),
(51, 1, 6.00),
(51, 2, 9.00),
(51, 3, 6.50);

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
-- Table structure for table `job_titles`
--

CREATE TABLE `job_titles` (
  `job_title_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_titles`
--

INSERT INTO `job_titles` (`job_title_id`, `name`) VALUES
(26, 'Accounts Assistant'),
(24, 'Accounts Executive'),
(36, 'Admin Executive'),
(11, 'Assistant Accountant'),
(17, 'Assistant Manager Digital Marketing'),
(18, 'Assistant Manager Fleet'),
(20, 'Assistant Manager IT'),
(19, 'Assistant Manager Rent A Car'),
(22, 'Associate Web Developer'),
(29, 'Business Associate'),
(38, 'Caretaker'),
(10, 'Chauffer'),
(39, 'Cleaning Assistant'),
(32, 'Fleet Executive'),
(23, 'Graphic Designer Cum Video Editor'),
(15, 'Group General Manager'),
(16, 'HR & Admin Manager'),
(37, 'Junior Hr & Admin Executive'),
(28, 'Junior Social Media Executive'),
(14, 'Managing Director'),
(30, 'Marketing Executive'),
(35, 'Office Assistant'),
(27, 'Reservation Executive'),
(25, 'Senior Accounts Executive'),
(33, 'Senior Reservation Executive'),
(21, 'Software Engineer Intern'),
(31, 'Trainee Marketing Executive'),
(34, 'Trainee Reservation Executive');

-- --------------------------------------------------------

--
-- Table structure for table `leave_policies`
--

CREATE TABLE `leave_policies` (
  `leave_policy_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leave_policies`
--

INSERT INTO `leave_policies` (`leave_policy_id`, `name`) VALUES
(1, 'Annual Leave'),
(3, 'Casual Leave'),
(2, 'Medical Leave');

-- --------------------------------------------------------

--
-- Table structure for table `leave_requests`
--

CREATE TABLE `leave_requests` (
  `leave_request_id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `leave_policy_id` bigint(20) UNSIGNED NOT NULL,
  `leave_start_date` date NOT NULL,
  `leave_end_date` date NOT NULL,
  `number_of_days` decimal(5,2) NOT NULL,
  `reason` varchar(500) NOT NULL,
  `oversee_member_id` bigint(20) UNSIGNED DEFAULT NULL,
  `half_day_session` enum('MORNING','EVENING') DEFAULT NULL,
  `manager_comment` text DEFAULT NULL,
  `reliever_comment` text DEFAULT NULL,
  `is_special_request` tinyint(1) NOT NULL DEFAULT 0,
  `address` varchar(255) DEFAULT NULL,
  `status` varchar(30) NOT NULL,
  `requested_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leave_requests`
--

INSERT INTO `leave_requests` (`leave_request_id`, `employee_id`, `leave_policy_id`, `leave_start_date`, `leave_end_date`, `number_of_days`, `reason`, `oversee_member_id`, `half_day_session`, `manager_comment`, `reliever_comment`, `is_special_request`, `address`, `status`, `requested_at`, `updated_at`) VALUES
(22, 24, 1, '2026-04-01', '2026-04-04', 4.00, 'test leave', 25, NULL, NULL, NULL, 0, '', 'PENDING', '2026-04-01 11:09:17', '2026-04-01 11:09:17');

-- --------------------------------------------------------

--
-- Table structure for table `leave_request_documents`
--

CREATE TABLE `leave_request_documents` (
  `leave_request_document_id` bigint(20) UNSIGNED NOT NULL,
  `leave_request_id` bigint(20) UNSIGNED NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(500) NOT NULL,
  `mime_type` varchar(100) DEFAULT NULL,
  `file_size_bytes` bigint(20) UNSIGNED DEFAULT NULL,
  `uploaded_at` datetime NOT NULL
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
(1, '0001_01_01_000001_create_cache_table', 1),
(2, '0001_01_01_000002_create_jobs_table', 1),
(3, '2026_02_09_094756_create_departments_table', 1),
(4, '2026_02_09_094831_create_job_titles_table', 1),
(5, '2026_02_09_094846_create_leave_policies_table', 1),
(6, '2026_02_09_094903_create_employees_table', 1),
(7, '2026_02_09_094918_create_employee_jobs_table', 1),
(8, '2026_02_09_094935_create_employee_contacts_table', 1),
(9, '2026_02_09_094949_create_employee_addresses_table', 1),
(10, '2026_02_09_095006_create_employee_emergency_contacts_table', 1),
(11, '2026_02_09_095023_create_employee_compensation_table', 1),
(12, '2026_02_09_095044_create_employee_compensation_components_table', 1),
(13, '2026_02_09_095135_create_employee_bank_accounts_table', 1),
(14, '2026_02_09_095152_create_employee_yearly_leave_balances_table', 1),
(15, '2026_02_09_095204_create_employee_documents_table', 1),
(16, '2026_02_09_095232_create_employee_experiences_table', 1),
(17, '2026_02_09_095300_create_leave_requests_table', 1),
(18, '2026_02_09_095312_create_leave_request_documents_table', 1),
(19, '2026_02_09_095322_create_employee_leave_balances_table', 1),
(20, '2026_02_16_111840_create_transport_services_table', 1),
(21, '2026_02_17_115856_create_vehicle_requests_table', 1),
(22, '2026_02_17_124205_create_trip_details_table', 1),
(23, '2026_02_22_192935_create_personal_access_tokens_table', 1),
(24, '2026_03_09_094903_create_users_table', 1),
(25, '2026_03_10_000001_create_roles_permissions_tables', 1);

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
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'manage_employees', NULL, '2026-03-12 05:46:47', '2026-03-12 05:46:47'),
(2, 'manage_transfers', NULL, '2026-03-30 14:45:27', '2026-03-30 14:45:27'),
(3, 'manage_rent_a_car', NULL, '2026-03-30 14:45:45', '2026-03-30 14:45:45'),
(4, 'manage_it', NULL, '2026-03-30 14:45:51', '2026-03-30 14:45:51'),
(5, 'manage_hr', NULL, '2026-03-30 14:46:00', '2026-03-30 14:46:00'),
(6, 'manage_procument', NULL, '2026-03-30 14:46:12', '2026-03-30 14:46:12');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
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
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, '2026-03-12 05:46:34', '2026-03-12 05:46:34'),
(2, 'hr-executive', NULL, '2026-03-12 06:17:17', '2026-03-12 06:17:17');

-- --------------------------------------------------------

--
-- Table structure for table `role_permissions`
--

CREATE TABLE `role_permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_permissions`
--

INSERT INTO `role_permissions` (`id`, `role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 1, NULL, NULL);

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

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('6vsjEw3NDEN6NlOaKWjYm0HazNfnkuNW4IGYt8RS', 1, '123.231.86.117', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko/20100101 Firefox/149.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiNjQ3SzRKV0JwRTV5RlhteWt0VzFKSWk5OUlqSFBDd3dxNlduMEl0TiI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjI6e3M6MzoidXJsIjtzOjI5OiJodHRwczovL2V4cGxvcmVzdWl0ZS5say9sb2dpbiI7czo1OiJyb3V0ZSI7czo1OiJsb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1775048946),
('7gVxDyJxODb12T1aeWUGTNtK7yBiZJqPP7V91MKD', 12, '112.134.227.13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoieUtNQWZlNTNXSlp6NGFXZTFqaG00MnE1ZUJVRHJZaWxZbWRYdFJPWiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjI6e3M6MzoidXJsIjtzOjI5OiJodHRwczovL2V4cGxvcmVzdWl0ZS5say9sb2dpbiI7czo1OiJyb3V0ZSI7czo1OiJsb2dpbiI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjEyO30=', 1775048571),
('8iKOaV4eIMfID4lD1Y3yH6gKUPLSQKq5eetVuUWk', 1, '112.134.101.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiZk91cXpRN0k0RkNJY0NPcXlFazBmb3JIMWtTSlYyZDhOUUZMZFFyWCI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjI6e3M6MzoidXJsIjtzOjMyOiJodHRwczovL2V4cGxvcmVzdWl0ZS5say9zZXJ2aWNlcyI7czo1OiJyb3V0ZSI7czo4OiJzZXJ2aWNlcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1775053580),
('OWyDdZGd3wCnkGpfV28KvKxtKRTh9CH1XwGT3Y36', NULL, '54.74.156.222', 'Plesk screenshot bot https://support.plesk.com/hc/en-us/articles/10301006946066', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOEQxam1nM2FoNUU5RXU2aXA5RHA4cDliMmhKQXo3VmpkdEprb2hESyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8vZXhwbG9yZXN1aXRlLmxrL2xvZ2luIjtzOjU6InJvdXRlIjtzOjU6ImxvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1775051780),
('QUMki3e6N2uUsaGCH3Knq4rbgBED2QJm0Xvlh6jS', 1, '223.224.31.115', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTEIyaEpKenM4Z1JRZFdBaTlNR2Vyd2h1YWp3dFdzR09JOE4xMFdmNCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8vZXhwbG9yZXN1aXRlLmxrL3N1aXRlLXNlcnZpY2VzIjtzOjU6InJvdXRlIjtzOjE0OiJzdWl0ZS1zZXJ2aWNlcyI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1775048422),
('vQA5bwXlCi9uBkOk2KK3ZLnXUtu8Hpbl98eHGvNO', 1, '223.224.31.115', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36 Edg/146.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiaDQ5TkMyV2tVek9EVEhKTUVhaHhkYzRqUnBGOU56TVlIaXR5aGJNQiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8vZXhwbG9yZXN1aXRlLmxrL2xvZ2luIjtzOjU6InJvdXRlIjtzOjU6ImxvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1775049192),
('w1IOiW1fKLMLD7emmVljZaGdT6zRl0Ekwj1v1c0U', NULL, '54.78.96.137', 'Plesk screenshot bot https://support.plesk.com/hc/en-us/articles/10301006946066', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWDV5R2xXU01uSUxCZXFRZ0JBaFAyNUhveWpLenVNMTllNDM0V0t6aiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8vZXhwbG9yZXN1aXRlLmxrL2xvZ2luIjtzOjU6InJvdXRlIjtzOjU6ImxvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1775047857);

-- --------------------------------------------------------

--
-- Table structure for table `transport_services`
--

CREATE TABLE `transport_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `source_id` bigint(20) UNSIGNED NOT NULL,
  `type` enum('shuttle','transfers','office','personal') NOT NULL,
  `vehicle_no` varchar(50) DEFAULT NULL,
  `vehicle_id` int(255) DEFAULT NULL,
  `is_vehicle_assigned` tinyint(1) DEFAULT NULL,
  `chauffer_reason` varchar(255) DEFAULT NULL,
  `vehicle_type` varchar(255) DEFAULT NULL,
  `chauffer_phone` varchar(20) DEFAULT NULL,
  `chauffer_name` varchar(255) DEFAULT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `manager_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` enum('PENDING','APPROVED','REJECTED','IN_PROGRESS','ASSIGNED','START_TRIP','COMPLETED','HOD_APPROVED') NOT NULL DEFAULT 'ASSIGNED',
  `reject_reason` varchar(500) DEFAULT NULL,
  `assigned_start_at` datetime NOT NULL,
  `pickup_location` varchar(255) NOT NULL DEFAULT 'Seeduwa Office',
  `dropoff_location` varchar(255) NOT NULL,
  `assigned_end_at` datetime DEFAULT NULL,
  `passenger_count` int(10) UNSIGNED NOT NULL,
  `trip_code` varchar(255) DEFAULT NULL,
  `hod_comment` varchar(255) DEFAULT NULL,
  `delete_note` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transport_services`
--

INSERT INTO `transport_services` (`id`, `source_id`, `type`, `vehicle_no`, `vehicle_id`, `is_vehicle_assigned`, `chauffer_reason`, `vehicle_type`, `chauffer_phone`, `chauffer_name`, `employee_id`, `manager_id`, `status`, `reject_reason`, `assigned_start_at`, `pickup_location`, `dropoff_location`, `assigned_end_at`, `passenger_count`, `trip_code`, `hod_comment`, `delete_note`, `created_at`, `updated_at`, `deleted_at`, `deleted_by`) VALUES
(1, 1, 'transfers', 'CAC-6595', NULL, 1, NULL, 'Car', NULL, NULL, 10, NULL, 'COMPLETED', NULL, '2026-03-31 08:55:00', 'Seeduwa Office', 'Kataragama, Sri Lanka', '2026-04-04 08:55:00', 6, '#ITTE9136', NULL, NULL, '2026-03-31 14:25:28', '2026-03-31 14:46:58', '2026-03-31 14:46:58', NULL),
(2, 2, 'shuttle', 'PE-6837', NULL, 1, NULL, 'Van', NULL, NULL, 10, NULL, 'COMPLETED', NULL, '2026-03-31 08:56:00', 'Seeduwa Office', 'Wattala, Sri Lanka', '2026-04-04 08:56:00', 2, '#ITTE2995', NULL, NULL, '2026-03-31 14:26:26', '2026-03-31 14:46:28', '2026-03-31 14:46:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `trip_details`
--

CREATE TABLE `trip_details` (
  `trip_detail_id` bigint(20) UNSIGNED NOT NULL,
  `transport_service_id` bigint(20) UNSIGNED NOT NULL,
  `trip_start_datetime` datetime NOT NULL,
  `trip_end_datetime` datetime DEFAULT NULL,
  `trip_start_odometer` int(11) NOT NULL,
  `trip_end_odometer` int(11) DEFAULT NULL,
  `trip_start_odometer_photo` varchar(500) NOT NULL,
  `trip_end_odometer_photo` varchar(500) DEFAULT NULL,
  `start_trip_fuel` decimal(5,2) DEFAULT NULL,
  `end_trip_fuel` decimal(5,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trip_details`
--

INSERT INTO `trip_details` (`trip_detail_id`, `transport_service_id`, `trip_start_datetime`, `trip_end_datetime`, `trip_start_odometer`, `trip_end_odometer`, `trip_start_odometer_photo`, `trip_end_odometer_photo`, `start_trip_fuel`, `end_trip_fuel`, `created_at`, `updated_at`) VALUES
(1, 2, '2026-03-31 09:01:34', '2026-03-31 09:02:18', 85000, 85150, 'uploads/trips/start_2_1774947694.jpg', 'uploads/trips/end_2_1774947738.jpg', 75.00, 50.00, '2026-03-31 09:01:34', '2026-03-31 09:02:18'),
(2, 1, '2026-03-31 09:11:07', '2026-03-31 09:11:50', 90000, 90500, 'uploads/trips/start_1_1774948267.jpg', 'uploads/trips/end_1_1774948310.jpg', 50.00, 75.00, '2026-03-31 09:11:07', '2026-03-31 09:11:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` varchar(30) DEFAULT 'user',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `recovery_key` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `employee_id`, `name`, `email`, `role`, `email_verified_at`, `password`, `recovery_key`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Admin', 'admin@example.com', 'admin', '2026-02-24 05:58:50', '$2y$12$8IUGdN6Y/ozW5TAk1lDlYO1QV/91Vp40l97mLRFohifk9jCFFc.D6', NULL, 'R9uFkPtGN40Zsv6POqS8Ry1J8uApsE6cu2KwY7HhMS3vADmPpIc68hKuEXsW', '2026-02-24 05:58:50', '2026-02-24 05:58:50'),
(12, NULL, 'Dulshan Wanigasekara', 'dulshan@explorevacations.lk', 'hr-executive', NULL, '$2y$12$A2ST8xMqsuufKmTFiTumLON.kg/zDaDfzbLPtUc0TJ3pNlKWjUw7.', NULL, 'vi5oh37ar7rNDUgIKtKWL71XxDg4JTItUUmePQdHvvahKfM0iUbEsEGLtDkC', '2026-03-13 14:43:13', '2026-03-13 14:43:13'),
(15, 10, 'Test1 Test2', 'test@gmail.com', 'user', NULL, '$2y$12$YMpbbYfhKjO9/ebtovY/JuTYB1gLXcgaHC9GalupPr53WBDN.6xUq', 'UDANTHA', NULL, '2026-03-18 11:29:18', '2026-03-18 08:24:51'),
(16, 11, 'Shermal', 'shermal@explorevacations.lk', 'user', NULL, '$2y$12$TQ95DM9lo7uErW/Z17UL0ecroP51c4.ihXvnOahNgjlBRFk7KM5Ua', NULL, NULL, '2026-03-24 17:43:08', '2026-03-24 17:43:08'),
(19, 14, 'Ralston', 'gm@explorevacations.lk', 'user', NULL, '$2y$12$zC2/Pej62D4g02gxQnTo0OlC0dIv6mrKmp3ngmWAKv9BnPGPBrZzy', NULL, NULL, '2026-03-29 17:45:46', '2026-03-29 17:45:46'),
(20, NULL, 'sdfs sdf', 'sdfsdfsdf@gmail.com', 'user', NULL, '$2y$12$SWAp7HuF5IezhdXn619oRuA3O96oIZgPO8ei8kgxMrqiqIRttVaK6', NULL, NULL, '2026-03-29 19:38:30', '2026-03-29 19:38:30'),
(21, NULL, 'wer wre', 'werwerwer@gmail.com', 'user', NULL, '$2y$12$i5qxukloOZlwnOozbvGd0OwszBqg1AONNvLxvLmXaz09u4k5zQfwK', NULL, NULL, '2026-03-29 19:40:51', '2026-03-29 19:40:51'),
(22, 17, 'Mihiran', 'digitalmarketing@explorevacations.lk', 'user', NULL, '$2y$12$.Yy79G2lBw3XOKEIxorJgetpWlBoNwVWq6JQjoHYY.QYpBWkkmQLi', NULL, NULL, '2026-03-29 19:44:11', '2026-03-29 19:44:11'),
(23, 18, 'Hansi', 'finance@platinumdrive.lk', 'user', NULL, '$2y$12$XEFHkhOzYpKERy0OFpoIs.0YxAOjSJnuWUQJ1xZM69.p19rMBEGhO', NULL, NULL, '2026-03-29 19:51:51', '2026-03-29 19:51:51'),
(24, 19, 'Srimal kamaral', 'it@explorevacations.lk', 'user', NULL, '$2y$12$I7GDOrEzZARUBMIFOoWqfuhfOJ7Ie.rH1ym65oOQzrZocF4Jm0Ruu', 'SRIMAL', NULL, '2026-03-29 20:08:31', '2026-03-30 16:54:04'),
(25, 20, 'Deshan', 'deshan@srilankarentacar.com', 'user', NULL, '$2y$12$j160oRtaKqxKyzFUHwl8de4UYfUF8sV8Ox8ljKOIqR56o048G904m', NULL, NULL, '2026-03-29 20:18:52', '2026-03-29 20:18:52'),
(26, 21, 'Nilantha', 'fleet@srilankarentacar.lk', 'user', NULL, '$2y$12$r47TKIEGjqOtb9Mq/rfMZOj1WM.aTQTIel7wfav2jdD/28/1vO7G6', NULL, NULL, '2026-03-29 20:30:03', '2026-03-29 20:30:03'),
(27, NULL, 'sdf sdf', 'sfdfd@gmail.com', 'user', NULL, '$2y$12$AWpVTb7RvDORX2N2/0.juOsHbPZIuZq81zOafOSOeX8eAToHIe4GC', NULL, NULL, '2026-03-30 09:59:07', '2026-03-30 09:59:07'),
(28, NULL, 't ert', 'ertertret@gmail.com', 'user', NULL, '$2y$12$AS308/x0Dv8eSabZOr0FQ.wtIWqu2AplrThvEvZAIsv6VUj/sRPi2', NULL, NULL, '2026-03-30 11:10:04', '2026-03-30 11:10:04'),
(29, 24, 'Navodya  Divyanjali', 'navoda@explorevacations.lk', 'user', NULL, '$2y$12$Ai5mHh11Kg9rV30j9Dor4e3H5mha6i031sONiHLGYHLnOjIw3m.Xq', 'HEYTHERE', NULL, '2026-03-30 12:55:35', '2026-03-31 04:26:18'),
(30, 25, 'Yuwanee Ahinsika', 'Yuwanee@explorevacations.lk', 'user', NULL, '$2y$12$fh.4fBMj9uaa2tFl3xt8vO3Rk4AhEC06roEO5N3fVMOdclLw1Suby', NULL, NULL, '2026-03-30 13:01:57', '2026-03-30 13:01:57'),
(31, 26, 'Induru Udantha', 'udantha@explorevacations.lk', 'user', NULL, '$2y$12$OLdpHFWBSP77yq7RT9fIFeD0hAGuehzldHgRuNDhXa7YhEVJfw7V6', NULL, NULL, '2026-03-30 13:09:10', '2026-03-30 13:09:10'),
(32, 27, 'Thisaru', 'nadeeshana@explorevacations.lk', 'user', NULL, '$2y$12$LMOAJBSgdCU99jXU3iqmGeinjdkJrExYR/DMLK8RpIHTj1gD..jh2', NULL, NULL, '2026-03-30 13:25:51', '2026-03-30 13:25:51'),
(33, 28, 'Hasitha Chandrasekara', 'hasitha@explorevacations.lk', 'user', NULL, '$2y$12$FRiohqYUCC6Iz8f7V6tsDOerr6TXF2iN0lKDKt2aTQjgJwwZDdTmy', NULL, NULL, '2026-03-30 14:13:56', '2026-03-30 14:13:56'),
(34, 29, 'Primali Perera', 'acc.ex@explorevacations.lk', 'user', NULL, '$2y$12$wsBzgvOG4c5P157qBNLyu.qMPtWti4ipn3vBlLK7vuOYL2pII6e0.', NULL, NULL, '2026-03-30 14:31:47', '2026-03-30 14:31:47'),
(35, 30, 'Shalinika Nilakshi', 'acc.ass@explorevacations.lk', 'user', NULL, '$2y$12$BpAEDU6tlfJlUJQKNCfkNuBrRjXOSEJFGKnAsDPyTJO38ltTBLJKK', NULL, NULL, '2026-03-30 18:02:38', '2026-03-30 18:02:38'),
(36, 31, 'Tilmi Nimasha', 'acc.ass@eliterentacar.lk', 'user', NULL, '$2y$12$9TCcP927LLWo9KxYjtHhnOUs9P/FcdW3nm6lOAR1jloJAS76ToPHy', NULL, NULL, '2026-03-30 18:12:08', '2026-03-30 18:12:08'),
(37, 32, 'Sewmini', 'sewmini@explorevacations.lk', 'user', NULL, '$2y$12$JxCzma.xtMzVeYwNVnPY0eZ9WvbWJSAsYSKd0GQUPI4lBRXRg3YRW', NULL, NULL, '2026-03-30 18:22:59', '2026-03-30 18:22:59'),
(38, 33, 'Dewmi Sanjana', 'dewmi.sanjana@explorevacations.lk', 'user', NULL, '$2y$12$esvVMW7J.hPgxCpJWRQSGudmfOcOz6HBFxLvi9v8Ye53Fi3wmYbGq', NULL, NULL, '2026-03-30 18:38:11', '2026-03-30 18:38:11'),
(39, NULL, 'ewr ewr', 'tharindu@gmail.com', 'user', NULL, '$2y$12$YdNXkuEXQX.S0ldVo5kETeeEdh5tkWrWBKS5zkpTvhd2cnkn8HtQW', NULL, NULL, '2026-03-31 11:44:42', '2026-03-31 11:44:42'),
(40, 35, 'Thimansa Victoria', 'victoria@explorevacations.lk', 'user', NULL, '$2y$12$myUceqqrBP5wy31qcD2UZOrBbt2QzX9i9Vrn.JXIROEzIV16O/8Ca', NULL, NULL, '2026-03-31 11:47:04', '2026-03-31 11:47:04'),
(41, 36, 'Sankalpana Arunasiri', 'rates@eliterentacar.lk', 'user', NULL, '$2y$12$HVcmgmhrRUt4Nt1HeKjOKOLZO.60RgPzvOf2siTIRDoc9OPx3luf.', NULL, NULL, '2026-03-31 12:05:29', '2026-03-31 12:05:29'),
(42, 37, 'Kavinda Sandagomi', 'kavinda@srilankarentacar.com', 'user', NULL, '$2y$12$0K9EOeTPZtVd4mlKay4BvuzFG8MpK7XPw49lYRGRThIogN4xJSsgu', NULL, NULL, '2026-03-31 12:32:10', '2026-03-31 12:32:10'),
(43, 38, 'Sanduni Guyes', 'Sandunig@srilankarentacar.com', 'user', NULL, '$2y$12$1PTxFfLfnDGCtVV3s.IaHuPA0i2efl.f/6y0A/JTQxr8Xj/acTiQC', NULL, NULL, '2026-03-31 17:04:46', '2026-03-31 17:04:46'),
(44, 39, 'Anton Niroshan', 'niroshan@srilankarentacar.lk', 'user', NULL, '$2y$12$nTCf8esaOdZyhw5ouBMjVu4rvPGL30DvzW7v3ieJDFL77F4E6Bkz2', NULL, NULL, '2026-03-31 17:24:24', '2026-03-31 17:24:24'),
(45, 40, 'Dilan Damitha', 'dilan@srilankarentacar.com', 'user', NULL, '$2y$12$RNRsYkYZ.uSTAXs0g.Z2vuPnXtdaZecla9agWjt19mxFYPTtN8jbO', NULL, NULL, '2026-03-31 17:38:30', '2026-03-31 17:38:30'),
(46, 41, 'Lakshika', 'lakshika@srilankarentacar.com', 'user', NULL, '$2y$12$Md72JPN51h7KR86eQFDmyO5IATCm81EahMCHAD5CeY39gCmJAqQWO', NULL, NULL, '2026-03-31 17:52:15', '2026-03-31 17:52:15'),
(47, 42, 'Dilmi Fernando', 'dilmi@srilankarentacar.com', 'user', NULL, '$2y$12$LAA992Yp4octUsgUcmWedeG3GfWPVR7MwCDjheGkIiaUbd/UVek1q', NULL, NULL, '2026-03-31 18:06:48', '2026-03-31 18:06:48'),
(48, 43, 'Sameera  Dilshan', 'sameera@srilankarentacar.lk', 'user', NULL, '$2y$12$5GN86BN62Xxd12.zETHnwe8UrxQzt82gvI/zk2llZ0W5MMCUgprtG', NULL, NULL, '2026-03-31 19:41:34', '2026-03-31 19:41:34'),
(49, 44, 'Krishan Dominic', 'anil@srilankarentacar.com', 'user', NULL, '$2y$12$OZKDCZE1fwHUrudtf0N/TO9zRWjYIifcfVkSKOrSKHR7zXHmoepHa', NULL, NULL, '2026-03-31 19:54:24', '2026-03-31 19:54:24'),
(50, 45, 'Dhilhara Perera', 'hr@explorevacations.lk', 'user', NULL, '$2y$12$qrGNeBWKfh2kt65o6AqE1O1MtpksbC0KmyCZlp.8ZKZjkedp7PFtK', NULL, NULL, '2026-04-01 14:07:02', '2026-04-01 14:07:02'),
(51, 46, 'Dinith Sanuka', 'admin.executive@explorevacations.lk', 'user', NULL, '$2y$12$pgB1kh.XYcpQKgzSAsyNd.jR/eqlSZvGRvl1jzPo.KtJFjjClBAIm', NULL, NULL, '2026-04-01 14:26:37', '2026-04-01 14:26:37'),
(52, 47, 'Lasantha Anthony', 'lasantha@srrentacar.lk', 'user', NULL, '$2y$12$PctOpZPinClVZ20ryXsAMOhFNkBa44rVEfcyAuWTZBbcVB4rKZMbu', NULL, NULL, '2026-04-01 18:12:06', '2026-04-01 18:12:06'),
(53, 48, 'Sembu Ajith', 'ajith@srrentacar.lk', 'user', NULL, '$2y$12$4WTyomcCQ5aH2UAOSuBFSeF9qXZQ/egKuHRPHAMCVMo88VBfXcm/.', NULL, NULL, '2026-04-01 18:20:28', '2026-04-01 18:20:28'),
(54, 49, 'Kapila Silva', 'Kapila@srrentacar.lk', 'user', NULL, '$2y$12$uh93k0fSaPhFyAXxEz/kz.WT7Dw24hFu/Z/YhA7CsyALNEahfZ1Bi', NULL, NULL, '2026-04-01 18:25:34', '2026-04-01 18:25:34'),
(55, 50, 'Sahan Mendis', 'sahan@srrentacar.lk', 'user', NULL, '$2y$12$SBgFhJI8hKi2b6LUw5NlCOl9j74SDQyoU8XdAqEo9OkriQCFxXXs2', NULL, NULL, '2026-04-01 18:31:11', '2026-04-01 18:31:11'),
(56, 51, 'Moshin  Fernando', 'omega11410@gmail.com', 'user', NULL, '$2y$12$le81yKk2Ls8R7Xy7aruIp.sVK5K.EEyn1U9XBs8S8wtteKuvzeiTG', NULL, NULL, '2026-04-01 19:41:59', '2026-04-01 19:41:59');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(5, 12, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_qr_search_logs`
--

CREATE TABLE `vehicle_qr_search_logs` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `preferred_name` varchar(150) NOT NULL,
  `vehicle_number` varchar(20) NOT NULL,
  `searched_at` datetime NOT NULL DEFAULT current_timestamp(),
  `is_qr_found` tinyint(1) NOT NULL DEFAULT 0,
  `api_message` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehicle_qr_search_logs`
--

INSERT INTO `vehicle_qr_search_logs` (`id`, `employee_id`, `preferred_name`, `vehicle_number`, `searched_at`, `is_qr_found`, `api_message`) VALUES
(65, 10, 'Test1 Test2', 'CBM-5687', '2026-03-19 12:26:36', 1, 'SUCCESS'),
(66, 10, 'Test1 Test2', 'CAA-6364', '2026-03-19 12:27:02', 0, 'QR_IMAGE_NOT_UPLOADED'),
(67, 10, 'Test1 Test2', 'CBM-5687', '2026-03-19 15:32:56', 1, 'SUCCESS'),
(68, 10, 'Test1 Test2', 'CAA-6364', '2026-03-24 05:59:13', 1, 'SUCCESS'),
(69, 10, 'Test1 Test2', 'PH-7503', '2026-03-25 12:48:03', 1, 'SUCCESS'),
(70, 19, 'Srimal kamaral', 'CBM-5716', '2026-03-30 16:57:07', 1, 'SUCCESS'),
(71, 24, 'Navodya  Divyanjali', 'CBM-5716', '2026-03-31 07:20:35', 1, 'SUCCESS');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_requests`
--

CREATE TABLE `vehicle_requests` (
  `vehicle_request_id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `vehicle_reg_no` varchar(50) DEFAULT NULL,
  `start_date` datetime NOT NULL,
  `is_one_day` tinyint(1) NOT NULL DEFAULT 0,
  `end_date` datetime DEFAULT NULL,
  `reason` enum('Shuttle','Transport','Office','Personal') NOT NULL DEFAULT 'Shuttle',
  `manager_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` enum('PENDING','APPROVED','REJECTED','CANCELLED') NOT NULL DEFAULT 'PENDING',
  `destinations` text NOT NULL,
  `trip_code` varchar(50) NOT NULL,
  `reject_reason` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`department_id`),
  ADD UNIQUE KEY `departments_name_unique` (`name`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employee_id`),
  ADD UNIQUE KEY `uq_epf_number` (`epf_number`),
  ADD UNIQUE KEY `employees_employee_code_unique` (`employee_code`),
  ADD UNIQUE KEY `employees_epf_number_unique` (`epf_number`),
  ADD KEY `idx_emp_name` (`full_name`,`preferred_name`),
  ADD KEY `idx_emp_status` (`employment_status`);

--
-- Indexes for table `employee_addresses`
--
ALTER TABLE `employee_addresses`
  ADD PRIMARY KEY (`employee_address_id`),
  ADD KEY `idx_addr_emp` (`employee_id`);

--
-- Indexes for table `employee_bank_accounts`
--
ALTER TABLE `employee_bank_accounts`
  ADD PRIMARY KEY (`bank_account_id`),
  ADD KEY `idx_bank_emp` (`employee_id`);

--
-- Indexes for table `employee_compensation`
--
ALTER TABLE `employee_compensation`
  ADD PRIMARY KEY (`comp_id`),
  ADD KEY `idx_comp_emp` (`employee_id`),
  ADD KEY `idx_comp_effective` (`employee_id`,`effective_from`);

--
-- Indexes for table `employee_compensation_components`
--
ALTER TABLE `employee_compensation_components`
  ADD PRIMARY KEY (`component_id`),
  ADD KEY `idx_comp_comp` (`comp_id`);

--
-- Indexes for table `employee_contacts`
--
ALTER TABLE `employee_contacts`
  ADD PRIMARY KEY (`contact_id`),
  ADD KEY `idx_contact_emp` (`employee_id`);

--
-- Indexes for table `employee_documents`
--
ALTER TABLE `employee_documents`
  ADD PRIMARY KEY (`employee_document_id`),
  ADD KEY `idx_doc_emp` (`employee_id`),
  ADD KEY `idx_doc_type` (`employee_id`,`doc_type`);

--
-- Indexes for table `employee_emergency_contacts`
--
ALTER TABLE `employee_emergency_contacts`
  ADD PRIMARY KEY (`emergency_contact_id`),
  ADD KEY `idx_emg_emp` (`employee_id`);

--
-- Indexes for table `employee_experience`
--
ALTER TABLE `employee_experience`
  ADD PRIMARY KEY (`experience_id`),
  ADD KEY `idx_exp_emp` (`employee_id`);

--
-- Indexes for table `employee_job`
--
ALTER TABLE `employee_job`
  ADD PRIMARY KEY (`employee_id`),
  ADD KEY `employee_job_department_id_index` (`department_id`),
  ADD KEY `employee_job_job_title_id_index` (`job_title_id`),
  ADD KEY `employee_job_reporting_manager_id_index` (`reporting_manager_id`);

--
-- Indexes for table `employee_leave_balances`
--
ALTER TABLE `employee_leave_balances`
  ADD PRIMARY KEY (`leave_balance_id`),
  ADD UNIQUE KEY `uq_lb_emp_policy` (`employee_id`,`leave_policy_id`),
  ADD KEY `idx_lb_employee` (`employee_id`),
  ADD KEY `idx_lb_policy` (`leave_policy_id`);

--
-- Indexes for table `employee_personal_vehicle_usage`
--
ALTER TABLE `employee_personal_vehicle_usage`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employee_id` (`employee_id`);

--
-- Indexes for table `employee_yearly_leave_balance`
--
ALTER TABLE `employee_yearly_leave_balance`
  ADD PRIMARY KEY (`employee_id`,`leave_policy_id`),
  ADD KEY `employee_yearly_leave_balance_leave_policy_id_index` (`leave_policy_id`);

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
-- Indexes for table `job_titles`
--
ALTER TABLE `job_titles`
  ADD PRIMARY KEY (`job_title_id`),
  ADD UNIQUE KEY `job_titles_name_unique` (`name`);

--
-- Indexes for table `leave_policies`
--
ALTER TABLE `leave_policies`
  ADD PRIMARY KEY (`leave_policy_id`),
  ADD UNIQUE KEY `leave_policies_name_unique` (`name`);

--
-- Indexes for table `leave_requests`
--
ALTER TABLE `leave_requests`
  ADD PRIMARY KEY (`leave_request_id`),
  ADD KEY `idx_leave_emp_start` (`employee_id`,`leave_start_date`),
  ADD KEY `idx_leave_policy` (`leave_policy_id`),
  ADD KEY `idx_leave_status` (`status`),
  ADD KEY `idx_leave_oversee` (`oversee_member_id`);

--
-- Indexes for table `leave_request_documents`
--
ALTER TABLE `leave_request_documents`
  ADD PRIMARY KEY (`leave_request_document_id`),
  ADD KEY `idx_leave_req_docs` (`leave_request_id`);

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
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  ADD KEY `personal_access_tokens_expires_at_index` (`expires_at`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role_permissions_role_id_permission_id_unique` (`role_id`,`permission_id`),
  ADD KEY `role_permissions_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `transport_services`
--
ALTER TABLE `transport_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transport_services_source_id_index` (`source_id`),
  ADD KEY `transport_services_employee_id_index` (`employee_id`),
  ADD KEY `transport_services_manager_id_index` (`manager_id`),
  ADD KEY `transport_services_status_index` (`status`),
  ADD KEY `transport_services_assigned_start_at_index` (`assigned_start_at`);

--
-- Indexes for table `trip_details`
--
ALTER TABLE `trip_details`
  ADD PRIMARY KEY (`trip_detail_id`),
  ADD KEY `trip_details_transport_service_id_index` (`transport_service_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_employee_id_unique` (`employee_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_roles_user_id_role_id_unique` (`user_id`,`role_id`),
  ADD KEY `user_roles_role_id_foreign` (`role_id`);

--
-- Indexes for table `vehicle_qr_search_logs`
--
ALTER TABLE `vehicle_qr_search_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_employee_id` (`employee_id`),
  ADD KEY `idx_vehicle_number` (`vehicle_number`),
  ADD KEY `idx_searched_at` (`searched_at`);

--
-- Indexes for table `vehicle_requests`
--
ALTER TABLE `vehicle_requests`
  ADD PRIMARY KEY (`vehicle_request_id`),
  ADD UNIQUE KEY `vehicle_requests_trip_code_unique` (`trip_code`),
  ADD KEY `vehicle_requests_manager_id_foreign` (`manager_id`),
  ADD KEY `vehicle_requests_employee_id_status_index` (`employee_id`,`status`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `department_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `employee_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `employee_addresses`
--
ALTER TABLE `employee_addresses`
  MODIFY `employee_address_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `employee_bank_accounts`
--
ALTER TABLE `employee_bank_accounts`
  MODIFY `bank_account_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `employee_compensation`
--
ALTER TABLE `employee_compensation`
  MODIFY `comp_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `employee_compensation_components`
--
ALTER TABLE `employee_compensation_components`
  MODIFY `component_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT for table `employee_contacts`
--
ALTER TABLE `employee_contacts`
  MODIFY `contact_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

--
-- AUTO_INCREMENT for table `employee_documents`
--
ALTER TABLE `employee_documents`
  MODIFY `employee_document_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `employee_emergency_contacts`
--
ALTER TABLE `employee_emergency_contacts`
  MODIFY `emergency_contact_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `employee_experience`
--
ALTER TABLE `employee_experience`
  MODIFY `experience_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `employee_leave_balances`
--
ALTER TABLE `employee_leave_balances`
  MODIFY `leave_balance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_personal_vehicle_usage`
--
ALTER TABLE `employee_personal_vehicle_usage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `job_titles`
--
ALTER TABLE `job_titles`
  MODIFY `job_title_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `leave_policies`
--
ALTER TABLE `leave_policies`
  MODIFY `leave_policy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `leave_requests`
--
ALTER TABLE `leave_requests`
  MODIFY `leave_request_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `leave_request_documents`
--
ALTER TABLE `leave_request_documents`
  MODIFY `leave_request_document_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `role_permissions`
--
ALTER TABLE `role_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transport_services`
--
ALTER TABLE `transport_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `trip_details`
--
ALTER TABLE `trip_details`
  MODIFY `trip_detail_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vehicle_qr_search_logs`
--
ALTER TABLE `vehicle_qr_search_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `vehicle_requests`
--
ALTER TABLE `vehicle_requests`
  MODIFY `vehicle_request_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee_addresses`
--
ALTER TABLE `employee_addresses`
  ADD CONSTRAINT `employee_addresses_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON DELETE SET NULL;

--
-- Constraints for table `employee_bank_accounts`
--
ALTER TABLE `employee_bank_accounts`
  ADD CONSTRAINT `employee_bank_accounts_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON DELETE SET NULL;

--
-- Constraints for table `employee_compensation`
--
ALTER TABLE `employee_compensation`
  ADD CONSTRAINT `employee_compensation_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON DELETE SET NULL;

--
-- Constraints for table `employee_compensation_components`
--
ALTER TABLE `employee_compensation_components`
  ADD CONSTRAINT `employee_compensation_components_comp_id_foreign` FOREIGN KEY (`comp_id`) REFERENCES `employee_compensation` (`comp_id`) ON DELETE CASCADE;

--
-- Constraints for table `employee_contacts`
--
ALTER TABLE `employee_contacts`
  ADD CONSTRAINT `employee_contacts_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON DELETE SET NULL;

--
-- Constraints for table `employee_documents`
--
ALTER TABLE `employee_documents`
  ADD CONSTRAINT `employee_documents_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON DELETE SET NULL;

--
-- Constraints for table `employee_emergency_contacts`
--
ALTER TABLE `employee_emergency_contacts`
  ADD CONSTRAINT `employee_emergency_contacts_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON DELETE SET NULL;

--
-- Constraints for table `employee_experience`
--
ALTER TABLE `employee_experience`
  ADD CONSTRAINT `employee_experience_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON DELETE SET NULL;

--
-- Constraints for table `employee_job`
--
ALTER TABLE `employee_job`
  ADD CONSTRAINT `employee_job_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`department_id`),
  ADD CONSTRAINT `employee_job_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `employee_job_job_title_id_foreign` FOREIGN KEY (`job_title_id`) REFERENCES `job_titles` (`job_title_id`),
  ADD CONSTRAINT `employee_job_reporting_manager_id_foreign` FOREIGN KEY (`reporting_manager_id`) REFERENCES `employees` (`employee_id`) ON DELETE SET NULL;

--
-- Constraints for table `employee_leave_balances`
--
ALTER TABLE `employee_leave_balances`
  ADD CONSTRAINT `employee_leave_balances_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `employee_leave_balances_leave_policy_id_foreign` FOREIGN KEY (`leave_policy_id`) REFERENCES `leave_policies` (`leave_policy_id`);

--
-- Constraints for table `employee_yearly_leave_balance`
--
ALTER TABLE `employee_yearly_leave_balance`
  ADD CONSTRAINT `employee_yearly_leave_balance_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `employee_yearly_leave_balance_leave_policy_id_foreign` FOREIGN KEY (`leave_policy_id`) REFERENCES `leave_policies` (`leave_policy_id`);

--
-- Constraints for table `leave_requests`
--
ALTER TABLE `leave_requests`
  ADD CONSTRAINT `leave_requests_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `leave_requests_leave_policy_id_foreign` FOREIGN KEY (`leave_policy_id`) REFERENCES `leave_policies` (`leave_policy_id`),
  ADD CONSTRAINT `leave_requests_oversee_member_id_foreign` FOREIGN KEY (`oversee_member_id`) REFERENCES `employees` (`employee_id`) ON DELETE SET NULL;

--
-- Constraints for table `leave_request_documents`
--
ALTER TABLE `leave_request_documents`
  ADD CONSTRAINT `leave_request_documents_leave_request_id_foreign` FOREIGN KEY (`leave_request_id`) REFERENCES `leave_requests` (`leave_request_id`) ON DELETE CASCADE;

--
-- Constraints for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD CONSTRAINT `role_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `trip_details`
--
ALTER TABLE `trip_details`
  ADD CONSTRAINT `trip_details_transport_service_id_foreign` FOREIGN KEY (`transport_service_id`) REFERENCES `transport_services` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON DELETE SET NULL;

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vehicle_requests`
--
ALTER TABLE `vehicle_requests`
  ADD CONSTRAINT `vehicle_requests_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vehicle_requests_manager_id_foreign` FOREIGN KEY (`manager_id`) REFERENCES `employees` (`employee_id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
