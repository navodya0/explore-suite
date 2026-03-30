-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 30, 2026 at 05:41 AM
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
(10, 'EV-000010', 'Active', '2026-03-18 11:29:18', 'Test1 Test2 Test3', 'Test1 Test2', '2000-01-18', 'Male', 'Single', 'Sri Lankan', 'AB+', '00003', 'Fingerprint', '1', '1', '2026-03-30 11:08:53'),
(11, 'EV-000011', 'Active', '2026-03-24 17:43:08', 'Manuweldura Anton Shermal Perera', 'Shermal', '1987-07-11', 'Male', 'Married', 'Sri Lankan', NULL, NULL, 'Fingerprint', '12', '12', '2026-03-24 17:43:08'),
(14, 'EV-000014', 'Active', '2026-03-29 17:45:46', 'Ralston Aaron Josheph Gerreyn', 'Ralston', '1987-02-25', 'Male', 'Married', 'Sri Lankan', NULL, '36', 'Fingerprint', '12', '1', '2026-03-29 19:21:59'),
(17, 'EV-000017', 'Active', '2026-03-29 19:44:11', 'Delkadura Arachchige Mihiran Rajitha Dhananjaya Silva Gunarathne', 'Mihiran', '1993-11-11', 'Male', 'Married', 'Sri Lankan', NULL, '39', 'Fingerprint', '12', '12', '2026-03-29 19:44:11'),
(18, 'EV-000018', 'Active', '2026-03-29 19:51:51', 'Sundarige Chalani Hansika Fernando', 'Hansi', '1999-04-30', 'Female', 'Married', 'Sri Lankan', NULL, '06', 'Fingerprint', '12', '12', '2026-03-29 19:51:51'),
(19, 'EV-000019', 'Active', '2026-03-29 20:08:31', 'Liyanage Wasantha Srimal Kamaral', 'Srimal kamaral', '1987-06-27', 'Male', 'Single', 'Sri Lankan', 'B+', '064', 'Fingerprint', '1', '1', '2026-03-29 20:09:30'),
(20, 'EV-000020', 'Active', '2026-03-29 20:18:52', 'Ranepura  Dewage Deshan Madhubhashana Rathnasinghe', 'Deshan', '1997-06-01', 'Male', 'Single', 'Sri Lankan', NULL, '37', 'Fingerprint', '12', '12', '2026-03-29 20:18:52'),
(21, 'EV-000021', 'Active', '2026-03-29 20:30:03', 'Konganige Nilantha Kumar Anthony', 'Nilantha', '1972-04-06', 'Male', 'Single', 'Sri Lankan', NULL, '02', 'Fingerprint', '12', '12', '2026-03-29 20:30:03');

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
(14, 14, 'Residential', '56/2, Dharmapala Mw, Ekala', 'Ekala', 'Sri Lanka', NULL, 1),
(18, 17, 'Residential', '33, Silva Mw, Nagoda, Kandana', 'Kandana', 'Sri Lanka', NULL, 1),
(19, 18, 'Residential', '127, Winston Park, Kadirana, Negombo', 'Negombo', 'Sri Lanka', NULL, 1),
(21, 19, 'Residential', 'No:228/B/1B, Kondagammulla,Miriswatta', 'Negombo', 'Sri Lanka', NULL, 1),
(22, 20, 'Residential', '209/A, Walpola, Ragama', 'Ragama', 'Sri Lanka', NULL, 1),
(23, 21, 'Residential', '66/B, Magulpokuna, Ragama', 'Ragama', 'Sri Lanka', NULL, 1),
(33, 10, 'Residential', 'Ihala Kottaramulla', 'Nattandiya', 'Sri Lanka', NULL, 1);

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
(15, 14, 'Hatton National Bank', 'Seeduwa', '083478658931'),
(19, 17, 'Hatton National Bank', 'Seeduwa', '0000000000000'),
(20, 18, 'Hatton National Bank', 'Seeduwa', '000000000000'),
(22, 19, 'Hatton National Bank', 'Negombo', '024020684176'),
(23, 20, 'Hatton National Bank', 'Seeduwa', '000000000000'),
(24, 21, 'Hatton National Bank', 'Seeduwa', '000000000000'),
(34, 10, 'Nations Trust Bank', 'Seeduwa', '45689156156');

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
(10, 10, 'LKR', 'Monthly', '2026-03-02', '2026-03-02'),
(11, 11, 'LKR', 'Monthly', '2024-07-24', NULL),
(13, 14, 'LKR', 'Monthly', '2026-02-19', '2026-03-20'),
(16, 17, 'LKR', 'Monthly', '2026-02-20', '2026-03-21'),
(17, 18, 'LKR', 'Monthly', '2026-02-20', '2026-03-21'),
(18, 19, 'LKR', 'Monthly', NULL, NULL),
(19, 20, 'LKR', 'Monthly', '2026-02-20', '2026-03-21'),
(20, 21, 'LKR', 'Monthly', '2026-02-20', '2026-03-21');

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
(14, 13, 'Basic', 'Basic Salary', 100000.00),
(18, 16, 'Basic', 'Basic Salary', 100000.00),
(19, 17, 'Basic', 'Basic Salary', 99999.00),
(21, 18, 'Basic', 'Basic Salary', 0.00),
(22, 19, 'Basic', 'Basic Salary', 121400.00),
(23, 20, 'Basic', 'Basic Salary', 139875.00),
(33, 10, 'Basic', 'Basic Salary', 1000.00);

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
(27, 14, 'Work Email', 'gm@explorevacations.lk', 1),
(28, 14, 'Whatsapp Number', '0768200098', 1),
(35, 17, 'Work Email', 'digitalmarketing@explorevacations.lk', 1),
(36, 17, 'Whatsapp Number', '071 477 0069', 1),
(37, 18, 'Work Email', 'finance@platinumdrive.lk', 1),
(38, 18, 'Whatsapp Number', '071 313 7031', 1),
(41, 19, 'Work Email', 'it@explorevacations.lk', 1),
(42, 19, 'Whatsapp Number', '0714357976', 1),
(43, 20, 'Work Email', 'deshan@srilankarentacar.com', 1),
(44, 20, 'Whatsapp Number', '076 534 5883', 1),
(45, 21, 'Work Email', 'fleet@srilankarentacar.lk', 1),
(46, 21, 'Whatsapp Number', '076 820 0093', 1),
(65, 10, 'Work Email', 'test@gmail.com', 1),
(66, 10, 'Whatsapp Number', '0769304365', 1);

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
(14, 10, 'Profile Photo', 'flyre_en_050226 (1).webp', 'employees/10/profile-photo/PPL5Qkprb4lwZaGl5d1U3mj0yU41xreROBjdF5Od.webp', 'image/webp', 82642, '2026-03-30 11:08:53');

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
(15, 14, 'Melissa', 'Wife', '0777007140'),
(19, 17, 'Null', 'Null', 'Null'),
(20, 18, 'Null', 'Null', 'Null'),
(22, 19, 'Arusha', 'Brother', '0719400013'),
(23, 20, 'Null', 'Null', 'Null'),
(24, 21, 'Null', 'Null', 'Null'),
(34, 10, 'Induru Udantha', 'Relationship', '0763904365');

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
(4, 14, '5', 10.00),
(7, 19, 'Sri Lanka Navy', 16.00),
(8, 19, 'Sanoreech Hotel', 2.00),
(9, 20, '00', -0.25),
(10, 21, '00', 0.00);

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
(10, 16, 10, 'Full-Time', 'Probation', 'Explore Vacations (Pvt) Ltd', '2026-01-03', NULL, 11),
(11, 16, 14, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2004-07-14', NULL, NULL),
(14, 16, 15, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2019-03-10', NULL, 11),
(17, 18, 17, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2019-11-18', NULL, 14),
(18, 17, 11, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2025-02-25', NULL, 11),
(19, 24, 20, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2024-05-18', NULL, 14),
(20, 19, 19, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2022-02-23', NULL, 14),
(21, 20, 18, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2016-01-01', NULL, 14);

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
(21, 3, 4.50);

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
(11, 'Assistant Accountant'),
(17, 'Assistant Manager Digital Marketing'),
(18, 'Assistant Manager Fleet'),
(20, 'Assistant Manager IT'),
(19, 'Assistant Manager Rent A Car'),
(10, 'Chauffer'),
(15, 'Group General Manager'),
(16, 'HR & Admin Manager'),
(14, 'Managing Director');

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
(1, 'manage_employees', NULL, '2026-03-12 05:46:47', '2026-03-12 05:46:47');

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
('7DUoxMutTHcGy4ElJMSVo6Vu5PRhzbZ4zWl1PVwM', 1, '124.43.23.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoieWE4bGp6cjZlQ0pzbWJDTnlQQktURUdhNW92OXFFQUhCT05Ec212WSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDE6Imh0dHBzOi8vZXhwbG9yZXN1aXRlLmxrL2hybXMvZW1wbG95ZWVzLzEwIjtzOjU6InJvdXRlIjtzOjE5OiJocm1zLmVtcGxveWVlcy5zaG93Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1774849220),
('nwmrC8Wxm8xF4kTqxBrfLsDiVPylfK0bWKWymsJ0', NULL, '54.194.199.245', 'Plesk screenshot bot https://support.plesk.com/hc/en-us/articles/10301006946066', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiemZKZEx3UEdRSWlzcmpHdUtIaVpLajh5VXB4Z3JWNHFnQ0o2S2M0VyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8vZXhwbG9yZXN1aXRlLmxrL2xvZ2luIjtzOjU6InJvdXRlIjtzOjU6ImxvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1774844633),
('poc169BHE5uOk8DnLjSl9DaVW2jeTIE5ph7lQcyN', 1, '124.43.23.48', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZ0JIUjRYamVnU3lDdll5UmlpU3QwTFVUeVVPZ1Y3TGdvSDhqSjJRdCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTA6Imh0dHBzOi8vZXhwbG9yZXN1aXRlLmxrL2hybXMvZW1wbG95ZWVzL2Zhdmljb24uaWNvIjtzOjU6InJvdXRlIjtzOjE5OiJocm1zLmVtcGxveWVlcy5zaG93Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1774848114),
('tMnJZjnJ1fdnOff3wCzjXnhPPD3jYftes5kUmII5', NULL, '54.216.2.194', 'Plesk screenshot bot https://support.plesk.com/hc/en-us/articles/10301006946066', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUjdyWDA3RGxGckpoRGlXcURtZTRqcjFtdFhlaWNiWXJQUVRhM0tGcCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8vZXhwbG9yZXN1aXRlLmxrL2xvZ2luIjtzOjU6InJvdXRlIjtzOjU6ImxvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1774848809),
('XH7b2lBjf70gJIJCveYSi7gPCxfUwIeOGXoGHcaZ', NULL, '124.43.23.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:149.0) Gecko/20100101 Firefox/149.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVUdSRkw1NmNlOE43Y0dCTXRaYkxWWXNmejN4RnFqampTVjhKcjl0WCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8vZXhwbG9yZXN1aXRlLmxrL2xvZ2luIjtzOjU6InJvdXRlIjtzOjU6ImxvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1774843906);

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
  `status` enum('PENDING','APPROVED','REJECTED','IN_PROGRESS','ASSIGNED','START_TRIP','COMPLETED') NOT NULL DEFAULT 'ASSIGNED',
  `reject_reason` varchar(500) DEFAULT NULL,
  `assigned_start_at` datetime NOT NULL,
  `pickup_location` varchar(255) NOT NULL DEFAULT 'Seeduwa Office',
  `dropoff_location` varchar(255) NOT NULL,
  `assigned_end_at` datetime DEFAULT NULL,
  `passenger_count` int(10) UNSIGNED NOT NULL,
  `trip_code` varchar(255) DEFAULT NULL,
  `delete_note` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transport_services`
--

INSERT INTO `transport_services` (`id`, `source_id`, `type`, `vehicle_no`, `vehicle_id`, `is_vehicle_assigned`, `chauffer_reason`, `vehicle_type`, `chauffer_phone`, `chauffer_name`, `employee_id`, `manager_id`, `status`, `reject_reason`, `assigned_start_at`, `pickup_location`, `dropoff_location`, `assigned_end_at`, `passenger_count`, `trip_code`, `delete_note`, `created_at`, `updated_at`, `deleted_at`, `deleted_by`) VALUES
(16, 31, 'transfers', 'CAC-7603', NULL, 1, NULL, 'Car', NULL, NULL, 10, NULL, 'ASSIGNED', NULL, '2026-03-22 09:38:00', 'Seeduwa Office', 'Sigiriya, Sri Lanka', '2026-03-27 09:38:00', 3, NULL, NULL, '2026-03-18 15:07:49', '2026-03-18 15:07:49', NULL, NULL),
(17, 32, 'transfers', 'CAX-4197', NULL, 1, 'update', 'SUV', NULL, NULL, 10, NULL, 'ASSIGNED', NULL, '2026-03-19 08:58:00', 'Seeduwa Office', 'Erewwala West, Sri Lanka', '2026-03-19 08:58:00', 2, NULL, NULL, '2026-03-19 14:28:46', '2026-03-25 09:27:47', NULL, NULL),
(18, 33, 'transfers', 'CAX-4197', NULL, 1, 'sss', 'SUV', NULL, NULL, 10, NULL, 'START_TRIP', NULL, '2026-03-25 08:57:00', 'Seeduwa Office', 'Colombo, Sri Lanka', '2026-03-26 08:57:00', 2, '#TEST5336', NULL, '2026-03-24 14:27:09', '2026-03-25 04:03:01', NULL, NULL),
(23, 0, 'office', 'CBM-5716', NULL, NULL, NULL, NULL, '0769304365', 'Test1 Test2', 10, 11, 'PENDING', NULL, '2026-03-26 00:00:00', 'Head Office', 'Seeduwa, Sri Lanka', '2026-03-27 23:59:59', 1, NULL, NULL, '2026-03-26 05:24:24', '2026-03-26 05:24:24', NULL, NULL),
(24, 0, 'office', 'CBM-5716', NULL, NULL, NULL, NULL, '0769304365', 'Test1 Test2', 10, 11, 'PENDING', NULL, '2026-03-26 00:00:00', 'Head Office', 'Seeduwa, Sri Lanka', '2026-03-31 23:59:59', 1, NULL, NULL, '2026-03-26 06:07:58', '2026-03-26 06:07:58', NULL, NULL);

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
(1, NULL, 'Admin', 'admin@example.com', 'admin', '2026-02-24 05:58:50', '$2y$12$8IUGdN6Y/ozW5TAk1lDlYO1QV/91Vp40l97mLRFohifk9jCFFc.D6', NULL, 'qYkE2oHNJ1I4LDuyu8QIF0Bmt4hGCfRspz8CazI8MTRsxK3UnE514SSA6F7l', '2026-02-24 05:58:50', '2026-02-24 05:58:50'),
(12, NULL, 'Dulshan Wanigasekara', 'dulshan@explorevacations.lk', 'hr-executive', NULL, '$2y$12$A2ST8xMqsuufKmTFiTumLON.kg/zDaDfzbLPtUc0TJ3pNlKWjUw7.', NULL, 'PsQm7KMzOJmTXzXUNyAHJw0sM9ptyHf8m7JO9eshOGuayTJoRbUW1WOZs9Aw', '2026-03-13 14:43:13', '2026-03-13 14:43:13'),
(15, 10, 'Test1 Test2', 'test@gmail.com', 'user', NULL, '$2y$12$YMpbbYfhKjO9/ebtovY/JuTYB1gLXcgaHC9GalupPr53WBDN.6xUq', 'UDANTHA', NULL, '2026-03-18 11:29:18', '2026-03-18 08:24:51'),
(16, 11, 'Shermal', 'shermal@explorevacations.lk', 'user', NULL, '$2y$12$TQ95DM9lo7uErW/Z17UL0ecroP51c4.ihXvnOahNgjlBRFk7KM5Ua', NULL, NULL, '2026-03-24 17:43:08', '2026-03-24 17:43:08'),
(19, 14, 'Ralston', 'gm@explorevacations.lk', 'user', NULL, '$2y$12$zC2/Pej62D4g02gxQnTo0OlC0dIv6mrKmp3ngmWAKv9BnPGPBrZzy', NULL, NULL, '2026-03-29 17:45:46', '2026-03-29 17:45:46'),
(20, NULL, 'sdfs sdf', 'sdfsdfsdf@gmail.com', 'user', NULL, '$2y$12$SWAp7HuF5IezhdXn619oRuA3O96oIZgPO8ei8kgxMrqiqIRttVaK6', NULL, NULL, '2026-03-29 19:38:30', '2026-03-29 19:38:30'),
(21, NULL, 'wer wre', 'werwerwer@gmail.com', 'user', NULL, '$2y$12$i5qxukloOZlwnOozbvGd0OwszBqg1AONNvLxvLmXaz09u4k5zQfwK', NULL, NULL, '2026-03-29 19:40:51', '2026-03-29 19:40:51'),
(22, 17, 'Mihiran', 'digitalmarketing@explorevacations.lk', 'user', NULL, '$2y$12$.Yy79G2lBw3XOKEIxorJgetpWlBoNwVWq6JQjoHYY.QYpBWkkmQLi', NULL, NULL, '2026-03-29 19:44:11', '2026-03-29 19:44:11'),
(23, 18, 'Hansi', 'finance@platinumdrive.lk', 'user', NULL, '$2y$12$XEFHkhOzYpKERy0OFpoIs.0YxAOjSJnuWUQJ1xZM69.p19rMBEGhO', NULL, NULL, '2026-03-29 19:51:51', '2026-03-29 19:51:51'),
(24, 19, 'Srimal kamaral', 'it@explorevacations.lk', 'user', NULL, '$2y$12$xx6XJMP9ng/RG.Fna50lBOPVPogt6.5L5xvz8oE9Ao0wkwSxVQVM.', NULL, NULL, '2026-03-29 20:08:31', '2026-03-29 20:08:31'),
(25, 20, 'Deshan', 'deshan@srilankarentacar.com', 'user', NULL, '$2y$12$j160oRtaKqxKyzFUHwl8de4UYfUF8sV8Ox8ljKOIqR56o048G904m', NULL, NULL, '2026-03-29 20:18:52', '2026-03-29 20:18:52'),
(26, 21, 'Nilantha', 'fleet@srilankarentacar.lk', 'user', NULL, '$2y$12$r47TKIEGjqOtb9Mq/rfMZOj1WM.aTQTIel7wfav2jdD/28/1vO7G6', NULL, NULL, '2026-03-29 20:30:03', '2026-03-29 20:30:03'),
(27, NULL, 'sdf sdf', 'sfdfd@gmail.com', 'user', NULL, '$2y$12$AWpVTb7RvDORX2N2/0.juOsHbPZIuZq81zOafOSOeX8eAToHIe4GC', NULL, NULL, '2026-03-30 09:59:07', '2026-03-30 09:59:07'),
(28, NULL, 't ert', 'ertertret@gmail.com', 'user', NULL, '$2y$12$AS308/x0Dv8eSabZOr0FQ.wtIWqu2AplrThvEvZAIsv6VUj/sRPi2', NULL, NULL, '2026-03-30 11:10:04', '2026-03-30 11:10:04');

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
(69, 10, 'Test1 Test2', 'PH-7503', '2026-03-25 12:48:03', 1, 'SUCCESS');

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
  MODIFY `employee_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `employee_addresses`
--
ALTER TABLE `employee_addresses`
  MODIFY `employee_address_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `employee_bank_accounts`
--
ALTER TABLE `employee_bank_accounts`
  MODIFY `bank_account_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `employee_compensation`
--
ALTER TABLE `employee_compensation`
  MODIFY `comp_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `employee_compensation_components`
--
ALTER TABLE `employee_compensation_components`
  MODIFY `component_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `employee_contacts`
--
ALTER TABLE `employee_contacts`
  MODIFY `contact_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `employee_documents`
--
ALTER TABLE `employee_documents`
  MODIFY `employee_document_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `employee_emergency_contacts`
--
ALTER TABLE `employee_emergency_contacts`
  MODIFY `emergency_contact_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `employee_experience`
--
ALTER TABLE `employee_experience`
  MODIFY `experience_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
  MODIFY `job_title_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `leave_policies`
--
ALTER TABLE `leave_policies`
  MODIFY `leave_policy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `leave_requests`
--
ALTER TABLE `leave_requests`
  MODIFY `leave_request_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `trip_details`
--
ALTER TABLE `trip_details`
  MODIFY `trip_detail_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vehicle_qr_search_logs`
--
ALTER TABLE `vehicle_qr_search_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

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
