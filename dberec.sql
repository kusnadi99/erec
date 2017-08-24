-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2017 at 11:23 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dberec`
--

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_department` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `nama_department`, `created_at`, `updated_at`) VALUES
(1, 'Human Capital ', '2017-08-21 19:35:43', '2017-08-21 19:35:44'),
(2, 'Corporate Secretary, Legal & General Affair', '2017-08-21 19:36:26', '2017-08-21 19:36:27'),
(3, 'Ancillary Revenue & Business Development', '2017-08-21 19:36:59', '2017-08-21 19:37:00'),
(4, 'Strategic Sourcing', '2017-08-21 19:37:34', '2017-08-21 19:37:35'),
(5, 'Internal Audit, Quality Assurance & Risk Managemen', '2017-08-21 19:38:35', '2017-08-21 19:38:36'),
(6, 'Business Process & System Integration', '2017-08-21 19:39:26', '2017-08-21 19:39:27'),
(7, 'Finance', '2017-08-21 19:39:40', '2017-08-21 19:39:41'),
(9, 'Operation GA', '2017-08-21 20:16:47', '2017-08-21 20:16:47'),
(10, 'GA Logistic', '2017-08-21 20:16:57', '2017-08-21 20:16:57'),
(11, 'House Keeping', '2017-08-21 20:17:13', '2017-08-21 20:17:14'),
(12, 'Production Administration', '2017-08-21 20:17:33', '2017-08-21 20:17:33'),
(13, 'Kitchen', '2017-08-21 20:17:43', '2017-08-21 20:17:43'),
(14, 'Production Planning & Inventory Control', '2017-08-21 20:18:06', '2017-08-21 20:18:06'),
(15, 'Banquet', '2017-08-21 20:18:18', '2017-08-21 20:18:19'),
(16, 'Store', '2017-08-21 20:18:36', '2017-08-21 20:18:36'),
(17, 'Engineering', '2017-08-21 20:19:22', '2017-08-21 20:19:22'),
(18, 'Proccurement', '2017-08-21 20:19:35', '2017-08-21 20:19:35'),
(19, 'Custumer Service', '2017-08-21 20:19:50', '2017-08-21 20:19:51'),
(20, 'GEL - Administration', '2017-08-21 20:20:25', '2017-08-21 20:20:25'),
(21, 'Operation Non GA', '2017-08-21 20:20:40', '2017-08-21 20:20:40'),
(22, 'Outside Catering', '2017-08-21 20:20:54', '2017-08-21 20:20:54'),
(23, 'Supply Chain', '2017-08-21 20:23:31', '2017-08-21 20:23:32'),
(24, 'Warehouse & Expedition BM', '2017-08-21 20:24:28', '2017-08-21 20:24:28'),
(25, 'Warehouse DPS', '2017-08-21 20:24:44', '2017-08-21 20:24:44'),
(26, 'Food Community', '2017-08-21 20:25:04', '2017-08-21 20:25:04');

-- --------------------------------------------------------

--
-- Table structure for table `devisis`
--

CREATE TABLE `devisis` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_devisi` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `devisis`
--

INSERT INTO `devisis` (`id`, `nama_devisi`, `created_at`, `updated_at`) VALUES
(1, 'Human Capital', NULL, NULL),
(2, 'Corporate Secretary, Legal & General Affair', NULL, NULL),
(3, 'Ancillary Revenue & Business Development ', NULL, NULL),
(4, 'Strategic Sourcing', NULL, NULL),
(5, 'Internal Audit, Quality Assurance & Risk Management', NULL, NULL),
(6, 'Business Process & System Integration', NULL, NULL),
(7, 'Finance', NULL, NULL),
(8, 'Inflight', NULL, NULL),
(9, 'Industrial Catering', NULL, NULL),
(10, 'Inflight Service Total Solution', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `sto_id` int(10) UNSIGNED NOT NULL,
  `level_position_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `sto_id`, `level_position_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(3, 2, 7, NULL, NULL),
(4, 3, 8, NULL, NULL),
(5, 4, 10, NULL, NULL),
(6, 5, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `level_positions`
--

CREATE TABLE `level_positions` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_posisi` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `level_positions`
--

INSERT INTO `level_positions` (`id`, `nama_posisi`, `created_at`, `updated_at`) VALUES
(1, 'BOD', NULL, NULL),
(2, 'VP', NULL, NULL),
(3, 'Manager', NULL, NULL),
(4, 'GM/EM/SM', NULL, NULL),
(5, 'Manager', NULL, NULL),
(6, 'Assistance Manager', NULL, NULL),
(7, 'Head BU', NULL, NULL),
(8, 'Officer', NULL, NULL),
(9, 'Supervisor', NULL, NULL),
(10, 'Staff', NULL, NULL);

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
(1, '2013_08_23_034352_create_roles_table', 1),
(2, '2013_08_23_034730_create_devisis_table', 1),
(3, '2013_08_23_034743_create_units_table', 1),
(4, '2013_08_23_034759_create_departments_table', 1),
(5, '2013_08_23_034815_create_sections_table', 1),
(6, '2013_08_23_034942_create_stos_table', 1),
(7, '2013_08_23_035235_create_level_positions_table', 1),
(8, '2013_08_23_035334_create_employees_table', 1),
(9, '2013_08_23_035335_create_personnels_table', 1),
(10, '2014_10_12_000000_create_users_table', 1),
(11, '2014_10_12_100000_create_password_resets_table', 1);

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
-- Table structure for table `personnels`
--

CREATE TABLE `personnels` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('laki-laki','perempuan') COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personnels`
--

INSERT INTO `personnels` (`id`, `employee_id`, `first_name`, `last_name`, `gender`, `email`, `no_hp`, `tgl_lahir`, `created_at`, `updated_at`) VALUES
(1, 1, 'Muh', 'Kusnadi', 'laki-laki', 'kusnadi@gmail.com', '085231745162', '1996-12-01', NULL, NULL),
(2, 3, 'Ervina', 'Sahrati', 'perempuan', 'ervina@gmail.com', '102931023011', '1995-07-23', NULL, NULL),
(3, 4, 'Tentri', 'May', 'perempuan', 'tentri@gmail.com', '128391283913', '1994-06-23', '2017-08-23 05:00:16', '2017-08-23 05:00:17'),
(4, 5, 'Ilham', 'Malik', 'laki-laki', 'malik@gmail.com', '192831938122', '2017-08-23', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `nama_role`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, NULL),
(2, 'Request', NULL, NULL),
(3, 'Prepared', NULL, NULL),
(4, 'Recommended', NULL, NULL),
(5, 'Approval', NULL, NULL),
(6, 'Candidate', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_section` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `nama_section`, `created_at`, `updated_at`) VALUES
(1, 'Learning & Culture', '2017-08-21 19:43:22', '2017-08-21 19:43:23'),
(2, 'Talent Management', '2017-08-21 19:46:43', '2017-08-21 19:46:44'),
(3, 'Organization Development', '2017-08-21 19:47:07', '2017-08-21 19:47:07'),
(4, 'Talent Acquisition', '2017-08-21 19:47:49', '2017-08-21 19:47:30'),
(5, 'Rewarrd & Payroll', '2017-08-21 19:48:07', '2017-08-21 19:48:07'),
(6, 'Industrial Realtion', '2017-08-21 19:48:21', '2017-08-21 19:48:21'),
(7, 'Corporate Secretary', '2017-08-21 19:49:30', '2017-08-21 19:49:30'),
(8, 'Legal', '2017-08-21 19:49:42', '2017-08-21 19:49:43'),
(9, 'Custom Compliance', '2017-08-21 19:50:08', '2017-08-21 19:50:08'),
(10, 'General Affair', '2017-08-21 19:50:23', '2017-08-21 19:50:23'),
(11, 'Corporate Security', '2017-08-21 19:50:36', '2017-08-21 19:50:36'),
(12, 'Sales On Board', '2017-08-21 19:51:00', '2017-08-21 19:51:00'),
(13, 'F & B Retail', '2017-08-21 19:51:13', '2017-08-21 19:51:13'),
(14, 'SKY Lounge', '2017-08-21 19:51:38', '2017-08-21 19:51:39'),
(15, 'Corporate Planing', '2017-08-21 19:51:53', '2017-08-21 19:51:53'),
(16, 'Business Development', '2017-08-21 19:52:20', '2017-08-21 19:52:20'),
(17, 'Product Innovation', '2017-08-21 19:52:33', '2017-08-21 19:52:33'),
(18, 'Quality Assurance & Policy Control', '2017-08-21 19:53:18', '2017-08-21 19:53:18'),
(19, 'Operation Sourcing', '2017-08-21 19:53:30', '2017-08-21 19:53:30'),
(20, 'Line Replenishment', '2017-08-21 19:54:00', '2017-08-21 19:54:00'),
(21, 'Corporate Sourcing', '2017-08-21 19:54:11', '2017-08-21 19:54:11'),
(22, 'Product Designer', '2017-08-21 19:54:22', '2017-08-21 19:54:23'),
(23, 'Internal Audit', '2017-08-21 19:54:48', '2017-08-21 19:54:50'),
(24, 'Corporate Quality Assurance', '2017-08-21 19:55:03', '2017-08-21 19:55:04'),
(25, 'Corporate HSE', '2017-08-21 19:55:22', '2017-08-21 19:55:22'),
(26, 'Risk Management', '2017-08-21 19:55:39', '2017-08-21 19:55:40'),
(27, 'IT Support & Delivery Manager', '2017-08-21 20:00:59', '2017-08-21 20:00:59'),
(28, 'Network & Infrastucture Specialist', '2017-08-21 20:01:30', '2017-08-21 20:01:31'),
(29, 'Operational Officer / Implementer', '2017-08-21 20:02:34', '2017-08-21 20:02:34'),
(30, 'IT Operation', '2017-08-21 20:03:26', '2017-08-21 20:03:26'),
(31, 'IT Solution Developmnet', '2017-08-21 20:03:39', '2017-08-21 20:03:39'),
(32, 'Functional SAP', '2017-08-21 20:03:58', '2017-08-21 20:03:58'),
(33, 'System Analisyt', '2017-08-21 20:04:08', '2017-08-21 20:04:09'),
(34, 'SAP ABAPER', '2017-08-21 20:04:18', '2017-08-21 20:04:18'),
(35, 'Programmer', '2017-08-21 20:04:31', '2017-08-21 20:04:31'),
(36, 'User Experience', '2017-08-21 20:04:46', '2017-08-21 20:04:46'),
(37, 'Software Tester', '2017-08-21 20:04:57', '2017-08-21 20:04:57'),
(38, 'IT Strategic & Bussines Partner', '2017-08-21 20:05:21', '2017-08-21 20:05:21'),
(39, 'Strategic & Planning', '2017-08-21 20:05:48', '2017-08-21 20:05:49'),
(40, 'Bussiness Partner', '2017-08-21 20:06:09', '2017-08-21 20:06:09'),
(41, 'Financial Reporting', '2017-08-21 20:06:55', '2017-08-21 20:06:55'),
(42, 'Tax Accounting', '2017-08-21 20:07:11', '2017-08-21 20:07:12'),
(43, 'Accounting Standart & Procedure', '2017-08-21 20:07:26', '2017-08-21 20:07:26'),
(44, 'Treasury', '2017-08-21 20:07:42', '2017-08-21 20:07:43'),
(45, 'Bussiness Analyst & Budget Control', '2017-08-21 20:07:55', '2017-08-21 20:07:55'),
(46, 'Insurance & Asset Management', '2017-08-21 20:08:32', '2017-08-21 20:08:32'),
(47, 'Assembly GA', '2017-08-21 20:27:33', '2017-08-21 20:27:33'),
(48, 'Handling GA', '2017-08-21 20:27:52', '2017-08-21 20:27:52'),
(49, 'Charter & VVIP Flight', '2017-08-21 20:28:39', '2017-08-21 20:28:39'),
(50, 'Apron', '2017-08-21 20:28:58', '2017-08-21 20:28:58'),
(51, 'Off Loading Dock', '2017-08-21 20:29:15', '2017-08-21 20:29:15'),
(52, 'Transport', '2017-08-21 20:29:29', '2017-08-21 20:29:29'),
(53, 'Cabin Set Up', '2017-08-21 20:29:51', '2017-08-21 20:29:52'),
(54, 'Standart Up lift Set Up', '2017-08-21 20:30:26', '2017-08-21 20:30:26'),
(55, 'Equiptment Set Up', '2017-08-21 20:30:55', '2017-08-21 20:30:55'),
(56, 'Store & Planning IFS Material GA', '2017-08-21 20:31:17', '2017-08-21 20:31:18'),
(57, 'Dishwashing', '2017-08-21 20:31:36', '2017-08-21 20:31:36'),
(58, 'Cleaning & Gardening', '2017-08-21 20:31:51', '2017-08-21 20:31:51'),
(59, 'Seasoning Permulation', '2017-08-21 20:32:12', '2017-08-21 20:32:12'),
(60, 'Menu Costing', '2017-08-21 20:32:24', '2017-08-21 20:32:24'),
(61, 'Quality Production Control', '2017-08-21 20:32:41', '2017-08-21 20:32:41'),
(62, 'Meal Tray Set Up', '2017-08-21 20:32:46', '2017-08-21 20:32:46'),
(63, 'Order Center', '2017-08-21 20:33:21', '2017-08-21 20:33:21'),
(64, 'Hot Kitchen', '2017-08-21 20:33:39', '2017-08-21 20:33:40'),
(65, 'Hot Dishing', '2017-08-21 20:33:52', '2017-08-21 20:33:52'),
(66, 'Cold Kitchen', '2017-08-21 20:34:01', '2017-08-21 20:34:01'),
(67, 'Pastry', '2017-08-21 20:34:08', '2017-08-21 20:34:08'),
(68, 'Bakery', '2017-08-21 20:34:21', '2017-08-21 20:34:21'),
(69, 'Production Preparation', '2017-08-21 20:34:39', '2017-08-21 20:34:39'),
(70, 'Planning Production & Food Cost Control', '2017-08-21 20:34:58', '2017-08-21 20:34:58'),
(71, 'Planning Material', '2017-08-21 20:35:06', '2017-08-21 20:35:06'),
(72, 'Banquet Service', '2017-08-21 20:35:14', '2017-08-21 20:35:14'),
(73, 'Banquet SOG', '2017-08-21 20:35:24', '2017-08-21 20:35:24'),
(74, 'Sales Banquet', '2017-08-21 20:35:39', '2017-08-21 20:35:40'),
(75, 'Tax', '2017-08-21 20:35:55', '2017-08-21 20:35:55'),
(76, 'Cost & Asset Management', '2017-08-21 20:36:41', '2017-08-21 20:36:41'),
(77, 'Sales & Business Analyst', '2017-08-21 20:37:29', '2017-08-21 20:37:29'),
(78, 'Cash Management', '2017-08-21 20:37:46', '2017-08-21 20:37:46'),
(79, 'Dry Storage & Material Supplies', '2017-08-21 20:38:03', '2017-08-21 20:38:04'),
(80, 'Cold Storage', '2017-08-21 20:38:13', '2017-08-21 20:38:14'),
(81, 'Bonded Store', '2017-08-21 20:38:25', '2017-08-21 20:38:25'),
(82, 'Distribution & PEB', '2017-08-21 20:38:37', '2017-08-21 20:38:37'),
(83, 'Custom Clearence', '2017-08-21 20:38:59', '2017-08-21 20:38:59'),
(84, 'Building', '2017-08-21 20:39:13', '2017-08-21 20:39:13'),
(85, 'Automotive', '2017-08-21 20:39:32', '2017-08-21 20:39:32'),
(86, 'Production & Operational Support', '2017-08-21 20:39:46', '2017-08-21 20:39:47'),
(87, 'Utility', '2017-08-21 20:40:05', '2017-08-21 20:40:05'),
(88, 'Raw Material', '2017-08-21 20:40:24', '2017-08-21 20:40:24'),
(89, 'CI & Engineering Supply', '2017-08-21 20:40:47', '2017-08-21 20:40:48'),
(90, 'Procurement Administration', '2017-08-21 20:41:25', '2017-08-21 20:41:25'),
(91, 'Procurement GEL', '2017-08-21 20:41:38', '2017-08-21 20:41:38'),
(92, 'Recruitment & Selection', '2017-08-21 20:41:50', '2017-08-21 20:41:50'),
(93, 'Learning & Development', '2017-08-21 20:42:02', '2017-08-21 20:42:02'),
(94, 'HC Planning & PMS', '2017-08-21 20:42:12', '2017-08-21 20:42:12'),
(95, 'Employee Service Payroll', '2017-08-21 20:42:28', '2017-08-21 20:42:28'),
(96, 'General Affair', '2017-08-21 20:42:39', '2017-08-21 20:42:40'),
(97, 'Medical Analyst', '2017-08-21 20:42:49', '2017-08-21 20:42:50'),
(98, 'Industrial Relation', '2017-08-21 20:43:19', '2017-08-21 20:43:19'),
(99, 'Legal', '2017-08-21 20:43:27', '2017-08-21 20:43:27'),
(100, 'Customer Relation', '2017-08-21 20:43:35', '2017-08-21 20:43:36'),
(101, 'Accounting & Finance', '2017-08-21 20:44:24', '2017-08-21 20:44:24'),
(102, 'Procurement', '2017-08-21 20:45:00', '2017-08-21 20:45:00'),
(103, 'Human Capital', '2017-08-21 20:45:34', '2017-08-21 20:45:34'),
(104, 'Airline Store', '2017-08-21 20:46:40', '2017-08-21 20:46:40'),
(105, 'Buyer', '2017-08-21 20:46:47', '2017-08-21 20:46:47'),
(106, 'Pre Production', '2017-08-21 20:46:54', '2017-08-21 20:46:56'),
(107, 'Pastry & Bakery', '2017-08-21 20:47:38', '2017-08-21 20:47:38'),
(108, 'Frozen Food', '2017-08-21 20:47:49', '2017-08-21 20:47:49'),
(109, 'Handling Non GA', '2017-08-21 20:48:26', '2017-08-21 20:48:26'),
(110, 'Security', '2017-08-21 20:48:53', '2017-08-21 20:48:54'),
(111, 'Duty Manager', '2017-08-21 20:49:22', '2017-08-21 20:49:22'),
(112, 'Planning Production & Material', '2017-08-21 20:49:43', '2017-08-21 20:49:44'),
(113, 'Menu Development', '2017-08-21 20:50:06', '2017-08-21 20:50:07'),
(114, 'Outside Cateering', '2017-08-21 20:50:47', '2017-08-21 20:50:47'),
(115, 'Customer Relation & Sales', '2017-08-21 20:51:34', '2017-08-21 20:51:34'),
(116, 'Sales', '2017-08-21 20:52:43', '2017-08-21 20:52:43'),
(117, 'Distribution', '2017-08-21 20:53:22', '2017-08-21 20:53:23'),
(118, 'Purchasing', '2017-08-21 20:53:34', '2017-08-21 20:53:34'),
(119, 'Inventory Planning & Control', '2017-08-21 20:54:07', '2017-08-21 20:54:07'),
(120, 'Tax & Reporting', '2017-08-21 20:54:29', '2017-08-21 20:54:29'),
(121, 'AR & Treasury', '2017-08-21 20:55:06', '2017-08-21 20:55:06'),
(122, 'Technician', '2017-08-21 20:55:31', '2017-08-21 20:55:32'),
(123, 'Main Warehouse', '2017-08-21 20:56:00', '2017-08-21 20:56:00'),
(124, 'Warehouse Bonded', '2017-08-21 20:56:26', '2017-08-21 20:56:26'),
(125, 'Return & Repacking', '2017-08-21 20:56:45', '2017-08-21 20:56:45'),
(126, 'Expedition', '2017-08-21 20:57:01', '2017-08-21 20:57:01'),
(127, 'Cost Control - Catering Partner', '2017-08-21 20:57:32', '2017-08-21 20:57:32'),
(128, 'Recruitment & People Development ', '2017-08-21 20:57:55', '2017-08-21 20:57:56'),
(129, 'Employee Service & General Affair', '2017-08-21 20:58:36', '2017-08-21 20:58:36');

-- --------------------------------------------------------

--
-- Table structure for table `stos`
--

CREATE TABLE `stos` (
  `id` int(10) UNSIGNED NOT NULL,
  `devisi_id` int(10) UNSIGNED NOT NULL,
  `unit_id` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `section_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stos`
--

INSERT INTO `stos` (`id`, `devisi_id`, `unit_id`, `department_id`, `section_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 3, 104, NULL, NULL),
(2, 7, 10, 26, 13, NULL, NULL),
(3, 10, 3, 7, 57, NULL, NULL),
(4, 3, 9, 26, 68, NULL, NULL),
(5, 5, 6, 22, 100, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_unit` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `nama_unit`, `created_at`, `updated_at`) VALUES
(1, 'Head Office', '2017-08-21 20:10:27', '2017-08-21 20:10:27'),
(2, 'ACS Cengkareng', '2017-08-21 20:10:36', '2017-08-21 20:10:36'),
(3, 'ACS Denpasar', '2017-08-21 20:10:48', '2017-08-21 20:10:48'),
(4, 'ACS Surabaya', '2017-08-21 20:10:56', '2017-08-21 20:10:56'),
(5, 'ACS Kualanamu', '2017-08-21 20:11:05', '2017-08-21 20:11:05'),
(6, 'ACS Balikpapan', '2017-08-21 20:11:23', '2017-08-21 20:11:23'),
(7, 'ACS Yogyakarta', '2017-08-21 20:11:56', '2017-08-21 20:11:56'),
(8, 'ACS Bandung', '2017-08-21 20:12:03', '2017-08-21 20:12:03'),
(9, 'ACS Lombok', '2017-08-21 20:12:16', '2017-08-21 20:12:16'),
(10, 'ACS Pekanbaru', '2017-08-21 20:12:26', '2017-08-21 20:12:26'),
(11, 'Marketing', '2017-08-21 20:13:05', '2017-08-21 20:13:05'),
(12, 'Operation', '2017-08-21 20:13:17', '2017-08-21 20:13:17'),
(13, 'Human Capital', '2017-08-21 20:13:25', '2017-08-21 20:13:25'),
(14, 'Logistic', '2017-08-21 20:13:40', '2017-08-21 20:13:40'),
(15, 'Laundry', '2017-08-21 20:13:47', '2017-08-21 20:13:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `personnel_id` int(10) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `personnel_id`, `username`, `nip`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'kusnadi', '1144056', '$2y$10$pNT7kbl77xUwnM35SRP2KOh.TEo3vpWgjf6Kj3Db18PJ87CQxBiKW', '1r6nlZKNHcYpX5gTAFcCNMEuTr4XkLOnR0BiL2wbTLjB9frGOoCX5fCZkt6L', NULL, NULL),
(2, 2, 2, 'vina', '1144001', '$2y$10$qD62L.4CoyJb1wn9imrlUeoD61EOfYpv/GdhJw6mL7vlgaSSxOBVq', 'qLZHsE43yR', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `devisis`
--
ALTER TABLE `devisis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employees_sto_id_foreign` (`sto_id`),
  ADD KEY `employees_level_position_id_foreign` (`level_position_id`);

--
-- Indexes for table `level_positions`
--
ALTER TABLE `level_positions`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `personnels`
--
ALTER TABLE `personnels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `personnels_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stos`
--
ALTER TABLE `stos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stos_devisi_id_foreign` (`devisi_id`),
  ADD KEY `stos_unit_id_foreign` (`unit_id`),
  ADD KEY `stos_department_id_foreign` (`department_id`),
  ADD KEY `stos_section_id_foreign` (`section_id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_nip_unique` (`nip`),
  ADD KEY `users_role_id_foreign` (`role_id`),
  ADD KEY `users_personnel_id_foreign` (`personnel_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `devisis`
--
ALTER TABLE `devisis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `level_positions`
--
ALTER TABLE `level_positions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `personnels`
--
ALTER TABLE `personnels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;
--
-- AUTO_INCREMENT for table `stos`
--
ALTER TABLE `stos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_level_position_id_foreign` FOREIGN KEY (`level_position_id`) REFERENCES `level_positions` (`id`),
  ADD CONSTRAINT `employees_sto_id_foreign` FOREIGN KEY (`sto_id`) REFERENCES `stos` (`id`);

--
-- Constraints for table `personnels`
--
ALTER TABLE `personnels`
  ADD CONSTRAINT `personnels_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`);

--
-- Constraints for table `stos`
--
ALTER TABLE `stos`
  ADD CONSTRAINT `stos_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `stos_devisi_id_foreign` FOREIGN KEY (`devisi_id`) REFERENCES `devisis` (`id`),
  ADD CONSTRAINT `stos_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`),
  ADD CONSTRAINT `stos_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_personnel_id_foreign` FOREIGN KEY (`personnel_id`) REFERENCES `personnels` (`id`),
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
