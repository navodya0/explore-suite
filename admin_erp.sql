-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 26, 2026 at 12:34 PM
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
-- Database: `admin_erp`
--

-- --------------------------------------------------------

--
-- Table structure for table `arrival_evaluation`
--

CREATE TABLE `arrival_evaluation` (
  `id` int(11) NOT NULL,
  `employee_name` varchar(100) NOT NULL,
  `station` varchar(100) NOT NULL,
  `booking_number` varchar(50) NOT NULL,
  `greeting` tinyint(4) NOT NULL,
  `documentation` tinyint(4) NOT NULL,
  `value_info` tinyint(4) NOT NULL,
  `vehicle_inspection` tinyint(4) NOT NULL,
  `controls_photos` tinyint(4) NOT NULL,
  `checkout_time` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `arrival_evaluation`
--

INSERT INTO `arrival_evaluation` (`id`, `employee_name`, `station`, `booking_number`, `greeting`, `documentation`, `value_info`, `vehicle_inspection`, `controls_photos`, `checkout_time`, `created_at`) VALUES
(2, 'Ryan Monie', 'Europcar Station', '1196705375', 4, 3, 4, 3, 3, 4, '2025-11-21 16:54:39'),
(3, 'Heshan Sandaruwan', 'Europcar Station', '1195321889', 4, 3, 3, 4, 3, 4, '2025-11-21 16:55:17'),
(6, 'Sampath Fernando', 'Greenmotion Station', 'EXL-6239971-6220135', 4, 4, 4, 5, 3, 3, '2025-11-27 13:12:09'),
(7, 'Rashan Gamage', 'Greenmotion Station', '23243234', 3, 3, 2, 5, 5, 3, '2026-03-20 15:10:50');

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
(9, 'Airport Parking'),
(7, 'Digital Marketing Department'),
(4, 'FINANCE'),
(10, 'Fleet Management Department'),
(2, 'HR'),
(3, 'IT'),
(5, 'Marketing Department'),
(11, 'Procurement Department'),
(6, 'Rent a Car Department'),
(1, 'Senior Management'),
(8, 'Transfers Department');

-- --------------------------------------------------------

--
-- Table structure for table `departure_evaluation`
--

CREATE TABLE `departure_evaluation` (
  `id` int(11) NOT NULL,
  `employee_name` varchar(100) NOT NULL,
  `station` varchar(100) NOT NULL,
  `booking_number` varchar(50) NOT NULL,
  `greeting` int(11) NOT NULL,
  `review_attempt` int(11) NOT NULL,
  `vehicle_inspection` int(11) NOT NULL,
  `additional_charge` int(11) NOT NULL,
  `friendly_goodbye` int(11) NOT NULL,
  `date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departure_evaluation`
--

INSERT INTO `departure_evaluation` (`id`, `employee_name`, `station`, `booking_number`, `greeting`, `review_attempt`, `vehicle_inspection`, `additional_charge`, `friendly_goodbye`, `date_time`) VALUES
(10, 'Ryan Monie', 'Europcar Station', '1196705375', 4, 3, 4, 3, 4, '2025-11-21 16:52:10'),
(13, 'Sameera Dilshan', 'Greenmotion Station', 'asdasd', 2, 3, 1, 3, 4, '2026-03-20 15:20:56');

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
(8, 'EV-000008', 'Active', '2026-03-13 15:10:02', 'sdddf', 'sdf sdf', '2001-02-07', 'Male', 'Single', 'Sri Lankan', 'AB+', NULL, 'Fingerprint', '1', '1', '2026-03-13 15:10:02'),
(9, 'EV-000009', 'Active', '2026-03-13 15:20:20', 'asdasd', 'asd asd', '2002-03-05', 'Male', 'Single', 'Sri Lankan', 'B-', NULL, 'Fingerprint', '1', '1', '2026-03-13 15:23:35'),
(10, 'EV-000010', 'Active', '2026-03-14 22:09:17', 'Roshan Meerium', 'asd sad', '2002-02-14', 'Male', 'Single', 'Sri Lankan', 'A-', NULL, 'Fingerprint', '1', '1', '2026-03-18 11:20:27'),
(11, 'EV-000011', 'Active', '2026-03-26 16:36:28', 'adsasdads', 'asd asd', '2001-05-11', 'Male', 'Single', 'Sri Lankan', 'B+', NULL, 'Fingerprint', '1', '1', '2026-03-26 16:36:28'),
(12, 'EV-000012', 'Active', '2026-03-26 16:42:25', 'asasdasdasdasd', 'asdasda sdasasd', '2005-05-04', 'Male', 'Single', 'Sri Lankan', 'B-', NULL, 'Fingerprint', '1', '1', '2026-03-26 16:42:25');

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
(15, 8, 'Residential', '109/1 Andhimulla Katana', 'Katana', 'Sri Lanka', NULL, 1),
(18, 9, 'Other', '109/1 Andhimulla Katana', 'Katana', 'Sri Lanka', NULL, 1),
(20, 10, 'Residential', '109/1 Andhimulla Katana', 'Katana', 'Sri Lanka', NULL, 1),
(21, 11, 'Residential', '109/1 Andhimulla Katana', 'Katana', 'Sri Lanka', NULL, 1),
(22, 12, 'Residential', '109/1 Andhimulla Katana', 'Katana', 'Sri Lanka', NULL, 1);

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
(15, 8, 'Bank of Ceylon', 'sdf', 'sdf'),
(18, 9, 'Bank of Ceylon', 'asd', '0759191583'),
(20, 10, 'Nations Trust Bank', '0759191583', 'et'),
(21, 11, 'Bank of Ceylon', 'asdasdasd', 'asdasdasd'),
(22, 12, 'Bank of Ceylon', 'werwer', 'wrwre');

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
(8, 8, 'LKR', 'Monthly', '2026-03-13', '2026-03-20'),
(9, 9, 'LKR', 'Monthly', '2026-03-11', '2026-03-12'),
(10, 10, 'LKR', 'Monthly', '2026-03-13', '2026-03-20'),
(11, 11, 'LKR', 'Monthly', '2026-03-04', '2026-04-10'),
(12, 12, 'LKR', 'Monthly', NULL, NULL);

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
(15, 8, 'Basic', 'Basic Salary', 3000.00),
(18, 9, 'Basic', 'Basic Salary', 3000.00),
(20, 10, 'Basic', 'Basic Salary', 3000.00),
(21, 11, 'Basic', 'Basic Salary', 123213123.00),
(22, 12, 'Basic', 'Basic Salary', 23434.00);

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
(29, 8, 'Work Email', 'sd@gmail.com', 1),
(30, 8, 'Whatsapp Number', 'wr4', 1),
(35, 9, 'Work Email', 'adsads@gmail.com', 1),
(36, 9, 'Whatsapp Number', 'asdasd', 1),
(39, 10, 'Work Email', 'aasdasdsd@gmail.com', 1),
(40, 10, 'Whatsapp Number', 'asd', 1),
(41, 11, 'Work Email', 'asasdasdd@gmail.com', 1),
(42, 11, 'Whatsapp Number', 'adasdasdasd', 1),
(43, 12, 'Work Email', 'assdad@gmail.com', 1),
(44, 12, 'Whatsapp Number', 'werwer', 1);

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
(2, 12, 'Offer Letter', 'Screenshot 2026-03-12 142612.png', 'employees/asdasda-sdasasd/offer-letter/BeWJjhZsTpgjAszcibwjHlYyCcUxt7bCsb6zhgVA.png', 'image/png', 126474, '2026-03-26 16:42:27');

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
(15, 8, 'Navodya Divyanjali', 'sdf', '0761278989'),
(18, 9, 'Navodya Divyanjali', 'asd', '0761278989'),
(20, 10, 'Navodya Divyanjali', 'Katana', '0761278989'),
(21, 11, 'Navodya Divyanjali', 'asdasd', '0761278989'),
(22, 12, 'Navodya Divyanjali', 'wer', '0761278989');

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
(3, 8, 'sdf', 3.00);

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
(8, 4, 1, 'Part-Time', 'Fixed- Contract', '', '2026-03-13', '2026-03-05', NULL),
(9, 10, 2, 'Full-Time', 'Probation', 'Explore Vacations (Pvt) Ltd', '2026-03-11', NULL, NULL),
(10, 11, 10, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2026-03-13', NULL, 9),
(11, 2, 6, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2026-03-26', NULL, NULL),
(12, 3, 6, 'Full-Time', 'Permanent', 'Explore Vacations (Pvt) Ltd', '2026-03-26', NULL, NULL);

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
-- Table structure for table `employee_yearly_leave_balance`
--

CREATE TABLE `employee_yearly_leave_balance` (
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `leave_policy_id` bigint(20) UNSIGNED NOT NULL,
  `leave_entitlement` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_yearly_leave_balance`
--

INSERT INTO `employee_yearly_leave_balance` (`employee_id`, `leave_policy_id`, `leave_entitlement`) VALUES
(8, 3, 30),
(9, 1, 1),
(10, 1, 20),
(11, 2, 3),
(12, 2, 3);

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
(5, 'Accountant'),
(10, 'Chauffer'),
(6, 'Finance Manager'),
(2, 'General Manager'),
(3, 'Head of Department'),
(1, 'Managing Director'),
(9, 'Marketing Executive'),
(7, 'Operations Manager'),
(8, 'Sales Manager'),
(4, 'Software Engineer');

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
(2, 'Sick Leave');

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
('35xLuBoe8Syx1axDbunblZm6UHdYbZD90x5gOhNn', NULL, '192.168.1.62', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMFBIZkY3SVJxSDg2OVlxYktPMGl0VkZOdVRFYkoyQTZFRVZpUnp3USI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1774507812),
('9kMTkzHaxGfpFOeaCjhbnwZq01jeqHh84F8wtUHf', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36 Edg/146.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRVc4aFhkMHMxb0FYa2xXMVZNSFJNN1dLc1Badkduc0kzT3BiVVFTeSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6OTAwMC9sb2dpbiI7czo1OiJyb3V0ZSI7czo1OiJsb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1773998420),
('CptdMvKXx8jWotXMakS25PrA2FTbyM1IGnRG0jXw', NULL, '192.168.1.62', 'PostmanRuntime/7.51.1', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiaURIS05Rd1Q0RFRrUjVCTzcxeHM3bEtTd05DRW92Rkd0dExoZjlFMiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1774508064),
('HVNN8jdhLE4Fu9mZDiQM0fTHfNnz3M7RgmQKLMpi', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36 Edg/146.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVjJmc2VlbXp3ZmhaUGh4RWJ1cWtoM2sxMG1Yd3FXb1ppYktHcVc5byI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly8xMjcuMC4wLjE6OTAwMC9ocm1zL2VtcGxveWVlcy8xMCI7czo1OiJyb3V0ZSI7czoxOToiaHJtcy5lbXBsb3llZXMuc2hvdyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1773815575),
('SRQ7e8gl6wmKV1SITb3Kjyyj3bYwyX7WA9Z5Mtmn', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36 Edg/146.0.0.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiY1hqNHNDNnJDUFNsaXhZNW5wU3FwY0tYczEzY3g5QlhUT2NVS3VzNCI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjI6e3M6MzoidXJsIjtzOjM2OiJodHRwOi8vMTI3LjAuMC4xOjkwMDAvaHJtcy9lbXBsb3llZXMiO3M6NToicm91dGUiO3M6MjA6ImhybXMuZW1wbG95ZWVzLmluZGV4Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1773826609),
('UAQ07o6fBvKunOkCO64MD09BbcyADeei0BnvvIA9', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36 Edg/146.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoid3Ayb2E5c0VjM1BrVlpqSnl1N0ZpcDhCQ1Jha0I5aXB6TnBtUlA5TCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly8xMjcuMC4wLjE6OTAwMC9ocm1zL2VtcGxveWVlcy9jcmVhdGUiO3M6NToicm91dGUiO3M6MjE6ImhybXMuZW1wbG95ZWVzLmNyZWF0ZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1774523553),
('uOP9zUv5m4qSMniDlgi6IiDGfU5nCgxHHelC2f8Q', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36 Edg/146.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiS2k0bVladUFSVW1FNVV0a3NxOHN2YTc1elc1d1d1N1B2UXdsaXlGYyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6OTAwMC9zZXJ2aWNlcyI7czo1OiJyb3V0ZSI7czo4OiJzZXJ2aWNlcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1774507376);

-- --------------------------------------------------------

--
-- Table structure for table `transport_services`
--

CREATE TABLE `transport_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `source_id` bigint(20) UNSIGNED NOT NULL,
  `type` enum('shuttle','transfers','office','personal') NOT NULL,
  `vehicle_no` varchar(50) DEFAULT NULL,
  `is_vehicle_assigned` tinyint(1) DEFAULT NULL,
  `vehicle_type` varchar(255) DEFAULT NULL,
  `chauffer_phone` varchar(20) DEFAULT NULL,
  `chauffer_name` varchar(255) DEFAULT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `manager_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` enum('PENDING','APPROVED','REJECTED','IN_PROGRESS','ASSIGNED','START_TRIP','COMPLETED') DEFAULT NULL,
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

INSERT INTO `transport_services` (`id`, `source_id`, `type`, `vehicle_no`, `is_vehicle_assigned`, `vehicle_type`, `chauffer_phone`, `chauffer_name`, `employee_id`, `manager_id`, `status`, `reject_reason`, `assigned_start_at`, `pickup_location`, `dropoff_location`, `assigned_end_at`, `passenger_count`, `trip_code`, `delete_note`, `created_at`, `updated_at`, `deleted_at`, `deleted_by`) VALUES
(16, 19, 'shuttle', 'CAB-0744', 1, 'Car', NULL, NULL, 10, NULL, 'PENDING', NULL, '2026-03-18 05:51:00', 'Weligama, Sri Lanka', 'Ella, Sri Lanka', '2026-03-21 05:51:00', 3, NULL, NULL, '2026-03-18 05:51:34', '2026-03-18 05:51:34', NULL, NULL),
(17, 20, 'transfers', 'CBG-9526', 1, 'Car', NULL, NULL, 10, NULL, 'PENDING', NULL, '2026-03-18 09:19:00', 'Seeduwa Office', 'Sigiriya, Sri Lanka', '2026-03-21 09:19:00', 3, NULL, NULL, '2026-03-18 09:20:11', '2026-03-18 09:20:11', NULL, NULL),
(18, 21, 'transfers', 'CAC-6595', 1, 'Car', NULL, NULL, 10, NULL, NULL, NULL, '2026-03-19 12:19:00', 'Seeduwa Office', 'Wattala, Sri Lanka', '2026-03-21 12:19:00', 3, NULL, NULL, '2026-03-19 12:19:43', '2026-03-19 12:19:43', NULL, NULL),
(19, 22, 'transfers', 'CAD-7412', 1, 'Car', NULL, NULL, 10, NULL, NULL, NULL, '2026-03-19 12:20:00', 'Seeduwa Office', 'Sigiriya, Sri Lanka', '2026-03-26 12:20:00', 2, NULL, NULL, '2026-03-19 12:21:05', '2026-03-19 12:21:05', NULL, NULL),
(20, 23, 'transfers', 'CAE-4853', 1, 'Car', NULL, NULL, 10, NULL, NULL, NULL, '2026-03-19 12:22:00', 'Seeduwa Office', 'Sigiriya, Sri Lanka', '2026-03-21 12:22:00', 2, NULL, NULL, '2026-03-19 12:22:14', '2026-03-19 12:22:14', NULL, NULL),
(21, 24, 'transfers', 'CAD-6434', 1, 'Car', NULL, NULL, 10, NULL, NULL, NULL, '2026-03-19 12:24:00', 'Seeduwa Office', 'Dankotuwa, Sri Lanka', '2026-03-21 12:24:00', 3, NULL, NULL, '2026-03-19 12:24:13', '2026-03-19 12:24:13', NULL, NULL),
(22, 25, 'transfers', 'CAI-1848', 1, 'SUV', NULL, NULL, 10, NULL, NULL, NULL, '2026-03-19 12:26:00', 'Seeduwa Office', 'Seeduwa, Sri Lanka', '2026-03-25 12:26:00', 3, NULL, NULL, '2026-03-19 12:26:42', '2026-03-19 12:26:42', NULL, NULL),
(23, 26, 'transfers', 'CAJ-0422', 1, 'Car', NULL, NULL, 10, NULL, NULL, NULL, '2026-03-20 12:30:00', 'Seeduwa Office', 'Ahangama, Sri Lanka', '2026-03-21 12:30:00', 3, NULL, NULL, '2026-03-19 12:30:22', '2026-03-19 12:30:22', NULL, NULL),
(24, 0, 'office', 'CBM-5716', NULL, 'Car', 'asd', 'asd sad', 10, 9, 'PENDING', NULL, '2026-03-26 00:00:00', 'Head Office', 'Colombo, Sri Lanka', '2026-03-28 23:59:59', 1, NULL, NULL, '2026-03-26 07:18:09', '2026-03-26 07:18:09', NULL, NULL),
(25, 0, 'office', 'CBM-5716', NULL, NULL, 'asd', 'asd sad', 10, 9, 'PENDING', NULL, '2026-03-26 00:00:00', 'Head Office', 'Colombo, Sri Lanka', '2026-03-28 23:59:59', 1, NULL, NULL, '2026-03-26 07:27:53', '2026-03-26 07:27:53', NULL, NULL),
(26, 0, 'office', 'CBG-9526', NULL, NULL, 'asd', 'asd sad', 10, 9, 'PENDING', NULL, '2026-03-26 00:00:00', 'Head Office', 'Colombo, Sri Lanka', '2026-03-28 23:59:59', 1, NULL, NULL, '2026-03-26 07:28:51', '2026-03-26 07:28:51', NULL, NULL),
(27, 0, 'office', 'CAJ-0422', NULL, NULL, 'asd', 'asd sad', 10, 9, 'PENDING', NULL, '2026-03-26 00:00:00', 'Head Office', 'Colombo, Sri Lanka', '2026-03-28 23:59:59', 1, NULL, NULL, '2026-03-26 07:32:25', '2026-03-26 07:32:25', NULL, NULL),
(28, 0, 'office', 'CAE-4853', NULL, NULL, 'asd', 'asd sad', 10, 9, 'PENDING', NULL, '2026-03-31 00:00:00', 'Head Office', 'Negombo, Sri Lanka', '2026-04-04 23:59:59', 1, NULL, NULL, '2026-03-26 07:35:16', '2026-03-26 07:35:16', NULL, NULL),
(29, 0, 'office', 'CAT-9196', NULL, NULL, 'asd', 'asd sad', 10, 9, 'PENDING', NULL, '2026-03-31 00:00:00', 'Head Office', 'Jaffna, Sri Lanka', '2026-04-02 23:59:59', 1, NULL, NULL, '2026-03-26 07:50:11', '2026-03-26 07:50:11', NULL, NULL),
(30, 0, 'office', 'CAT-2967', NULL, NULL, 'asd', 'asd sad', 10, 9, 'PENDING', NULL, '2026-03-31 00:00:00', 'Head Office', 'Jaffna, Sri Lanka', '2026-04-02 23:59:59', 1, NULL, NULL, '2026-03-26 07:54:11', '2026-03-26 07:54:11', NULL, NULL),
(31, 0, 'office', 'CAT-2967', NULL, NULL, 'asd', 'asd sad', 10, 9, 'PENDING', NULL, '2026-03-31 00:00:00', 'Head Office', 'Jaffna, Sri Lanka', '2026-04-02 23:59:59', 1, NULL, NULL, '2026-03-26 07:57:03', '2026-03-26 07:57:03', NULL, NULL),
(32, 0, 'office', 'CAE-4853', NULL, NULL, 'asd', 'asd sad', 10, 9, 'PENDING', NULL, '2026-03-26 00:00:00', 'Head Office', 'Trincomalee, Sri Lanka', '2026-03-31 23:59:59', 1, NULL, NULL, '2026-03-26 08:44:16', '2026-03-26 08:44:16', NULL, NULL);

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
(1, NULL, 'Admin', 'admin@example.com', 'admin', '2026-02-24 05:58:50', '$2y$12$8IUGdN6Y/ozW5TAk1lDlYO1QV/91Vp40l97mLRFohifk9jCFFc.D6', NULL, 'svBPnZyfwGcyYabjs3alQC8wtycyUH56dZrk6PuxrxtKIUoqrO9aCMCsBBKB', '2026-02-24 05:58:50', '2026-02-24 05:58:50'),
(2, NULL, 'navodya', 'navodya@gmail.com', 'user', NULL, '$2y$12$dkrSqUR8BWewyOmKH/Y2E.HzmBqeVa.VI1KPMEUGmD7hV4MjahZ8G', NULL, NULL, '2026-02-24 06:01:17', '2026-02-24 06:01:17'),
(3, NULL, 'navodya', 'navodya11@gmail.com', 'user', NULL, '$2y$12$ST07P3B.lm0qbNNHPt3GOO9tQUdCFj8TBkrvbj70gb.BJYTmhPguK', NULL, NULL, '2026-02-24 06:03:30', '2026-02-24 06:03:30'),
(4, NULL, 'navodya', '12@gmail.com', 'user', NULL, '$2y$12$JIUmJ8Oj6k6zpJdZSuM2pOT/rmNDcURpACODIyQ1nnxJxn0eQXbSu', NULL, NULL, '2026-02-24 06:16:26', '2026-02-24 06:16:26'),
(5, NULL, 'navodya divyanjali', 'k@gmail.com', 'user', NULL, '$2y$12$8G9hVSAgSc21RYBAdz0AyOU2ousb4KHM5VOt2/uv7RCgbNHMVpX8e', NULL, NULL, '2026-02-24 09:13:24', '2026-02-24 09:13:24'),
(6, NULL, 'Test Test', 'fd@gmail.com', 'user', NULL, '$2y$12$22e5ySr5e92DODabQYsz5u4.1neGFarCY9srPZOAA84wZVPOqe.0q', NULL, NULL, '2026-02-24 11:57:24', '2026-02-24 11:57:24'),
(7, NULL, 'sdf sdf', 'sdf@gmail.com', 'user', NULL, '$2y$12$g9BGwkfuspZg8G/IEIhVreqxloGF.NmkLTmnBeNBb8nUXnfnqPJ0W', NULL, NULL, '2026-03-12 04:41:53', '2026-03-12 04:41:53'),
(8, NULL, 'Test', 'roshanzroshanz@gmail.com', 'user', NULL, '$2y$12$rlAWJfOLjO2B8fihK5DmMuMDmUyugAv6JeSvtcmObi9QzosfRLMX.', NULL, NULL, '2026-03-12 05:47:29', '2026-03-12 05:47:29'),
(9, NULL, 'zxzxczxc', 'acc.ass@explorevacations.lk', 'user', NULL, '$2y$12$rVrfWOZx83B3UPbxBQFpH.GioL51kM/EO5mFw3QQIDwNqarfZ/G9C', NULL, NULL, '2026-03-12 06:18:01', '2026-03-12 06:18:01'),
(10, NULL, 'asadasd', 'madhawasamantha99@gmail.com', 'hr-executive', NULL, '$2y$12$/zd1goEbQtWVv2qDF5Da1.6lUsJEBEB5radwX4iWdfGdKxCDumNWa', NULL, NULL, '2026-03-12 06:19:21', '2026-03-12 06:19:21'),
(11, NULL, 'asd asd', 'asd@gmail.com', 'user', NULL, '$2y$12$lcQnaSTS2NVffK.WN5yKne0/gIKQ8eVDx7Z/WqgTPbcspYQwmxF62', NULL, NULL, '2026-03-12 06:23:09', '2026-03-12 06:23:09'),
(12, 8, 'sdf sdf', 'sd@gmail.com', 'user', NULL, '$2y$12$0DilExmQcL37R2oloxpBc.24J3Bb5TVWS9uWP5k9GPvK.5WlTT3Nq', NULL, NULL, '2026-03-13 09:40:02', '2026-03-13 09:40:02'),
(13, 9, 'asd asd', 'adsads@gmail.com', 'user', NULL, '$2y$12$r5.TmhOfzcey/p28K.OFpeVUXnQZAXu8IoObnZME2lJKIaogyFaFa', NULL, NULL, '2026-03-13 09:50:20', '2026-03-13 09:50:20'),
(14, 10, 'asd sad', 'aasdasdsd@gmail.com', 'user', NULL, '$2y$10$f9/OGC.serLfjUzWcZudXuZCDHfABWxPXn4D/yhgHZF1P/E8CLf2K', 'HELLOOOPP', NULL, '2026-03-14 16:39:16', '2026-03-26 07:17:08'),
(15, 11, 'asd asd', 'asasdasdd@gmail.com', 'user', NULL, '$2y$12$QQYvFqeGnz0ray3omcQpLucQdBG1v9Ni0c1eESWRu0eUaqDhbHABq', NULL, NULL, '2026-03-26 11:06:28', '2026-03-26 11:06:29'),
(16, 12, 'asdasda sdasasd', 'assdad@gmail.com', 'user', NULL, '$2y$12$lSltYRC16h8WTFN.jYr32OaxiDlSIgZGXU6wFtToq0p16KbPH6aty', NULL, NULL, '2026-03-26 11:12:25', '2026-03-26 11:12:25');

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
(2, 8, 2, NULL, NULL),
(3, 9, 2, NULL, NULL),
(4, 10, 2, NULL, NULL);

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
-- Indexes for table `arrival_evaluation`
--
ALTER TABLE `arrival_evaluation`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `departure_evaluation`
--
ALTER TABLE `departure_evaluation`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `arrival_evaluation`
--
ALTER TABLE `arrival_evaluation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `department_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `departure_evaluation`
--
ALTER TABLE `departure_evaluation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `employee_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `employee_addresses`
--
ALTER TABLE `employee_addresses`
  MODIFY `employee_address_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `employee_bank_accounts`
--
ALTER TABLE `employee_bank_accounts`
  MODIFY `bank_account_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `employee_compensation`
--
ALTER TABLE `employee_compensation`
  MODIFY `comp_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `employee_compensation_components`
--
ALTER TABLE `employee_compensation_components`
  MODIFY `component_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `employee_contacts`
--
ALTER TABLE `employee_contacts`
  MODIFY `contact_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `employee_documents`
--
ALTER TABLE `employee_documents`
  MODIFY `employee_document_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employee_emergency_contacts`
--
ALTER TABLE `employee_emergency_contacts`
  MODIFY `emergency_contact_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `employee_experience`
--
ALTER TABLE `employee_experience`
  MODIFY `experience_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employee_leave_balances`
--
ALTER TABLE `employee_leave_balances`
  MODIFY `leave_balance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `job_title_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `leave_policies`
--
ALTER TABLE `leave_policies`
  MODIFY `leave_policy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `leave_requests`
--
ALTER TABLE `leave_requests`
  MODIFY `leave_request_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leave_request_documents`
--
ALTER TABLE `leave_request_documents`
  MODIFY `leave_request_document_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `trip_details`
--
ALTER TABLE `trip_details`
  MODIFY `trip_detail_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
