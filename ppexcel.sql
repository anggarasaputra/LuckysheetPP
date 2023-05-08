-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 08, 2023 at 05:11 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ppexcel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `position` text DEFAULT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `devision_id` bigint(20) DEFAULT NULL,
  `position_2` varchar(255) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `position`, `company_id`, `devision_id`, `position_2`, `signature`) VALUES
(1, 'Super Admin', 'superadmin@example.com', 'superadmin', NULL, '$2y$10$mT7mD5DEJFmj6PoSJjXkTOIo.T7Uug162EEoiuj/2oT8yMalsTopO', 'PoOdXa2EGFWE7pv4ybJOj1Mpj5dAAfMiM8Q8oyVeN2HAozPiqEBRzCpfStou', '2023-03-16 03:10:05', '2023-03-16 03:10:05', '$2y$10$AScIyYeEc1XSm4l/O7mJQ.RSrhagQ22/p83HedzrmnJnRZINnmJZq', NULL, NULL, NULL, NULL),
(2, 'Manager Example', 'manager@example.com', 'manager', NULL, '$2y$10$McU2BipOoUOsBNbxK87eHuaGfK18gs.GhjaaGcNGgX.2zwgvRHHSu', NULL, '2023-02-07 23:54:12', '2023-03-16 08:01:03', 'Senior Manager, <br> Head of Bid & Technic Departement Building Division', 2, 2, NULL, NULL),
(3, 'Director Example', 'director@example.com', 'director', NULL, '$2y$10$VCirKqTw39MBzit4ruQJZOn/T5v/1rIgJJsL06hlf0kPGJ/VKGrPy', NULL, '2023-02-07 23:54:12', '2023-02-07 23:54:12', 'Director', 2, 2, NULL, NULL),
(4, 'Vice President Example', 'vp@example.com', 'vp', NULL, '$2y$10$FYQ8rDtIn5dfYi7XI8LtHujI6YsAkKM6zF4uLuI2sAqmN1VQ4cZCi', NULL, '2023-02-08 12:09:16', '2023-02-08 12:09:16', 'Vice President', 2, 2, NULL, NULL),
(5, 'usergedung', 'usergedung@example.com', 'usergedung@example.com', NULL, '$2y$10$8KJV5n2Baox8jd/TADYaR./QoGYz7qIiMnCXNSorQT71mE7qjimRa', 'iGIQ5Hn155pavqmCwhrF2Y3niGHblIF9Ff82J4rUCJcS3j1Z3RSPy3r4lwxB', '2023-03-16 05:57:48', '2023-03-16 05:57:48', 'User Input', 2, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `approval_rules`
--

CREATE TABLE `approval_rules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `division_id` bigint(20) DEFAULT NULL,
  `user_id_1` bigint(20) DEFAULT NULL,
  `user_id_2` bigint(20) DEFAULT NULL,
  `user_id_3` bigint(20) DEFAULT NULL,
  `nominal_lower_limit` varchar(255) DEFAULT NULL,
  `nominal_upper_limit` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `approval_rules`
--

INSERT INTO `approval_rules` (`id`, `company_id`, `division_id`, `user_id_1`, `user_id_2`, `user_id_3`, `nominal_lower_limit`, `nominal_upper_limit`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 2, 4, 3, '1', '200000000000', '2023-03-16 07:12:26', '2023-03-16 07:12:26'),
(2, 2, 2, 2, 4, 3, '200000000001', '500000000000', '2023-03-16 07:13:07', '2023-03-16 07:13:07'),
(3, 2, 2, 2, 4, 3, '500000000001', '750000000000', '2023-03-16 07:13:51', '2023-03-16 07:13:51'),
(4, 2, 2, 2, 4, 3, '750000000001', '10000000000000', '2023-03-16 07:14:43', '2023-03-16 07:14:43');

-- --------------------------------------------------------

--
-- Table structure for table `companys`
--

CREATE TABLE `companys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `companys`
--

INSERT INTO `companys` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'PP Konsolidasi', '2023-02-07 23:54:12', '2023-02-07 23:54:12'),
(2, 'PP Induk', '2023-02-07 23:54:12', '2023-02-07 23:54:12'),
(3, 'PP Presisi', '2023-02-08 12:09:16', '2023-02-08 12:09:16'),
(4, 'PP Urban', '2023-02-08 12:27:35', '2023-02-08 12:27:49');

-- --------------------------------------------------------

--
-- Stand-in structure for view `contoh`
-- (See below for the actual view)
--
CREATE TABLE `contoh` (
`id` bigint(20) unsigned
,`name` varchar(255)
,`email` varchar(255)
,`email_verified_at` timestamp
,`password` varchar(255)
,`remember_token` varchar(100)
,`created_at` timestamp
,`updated_at` timestamp
);

-- --------------------------------------------------------

--
-- Table structure for table `contoh2`
--

CREATE TABLE `contoh2` (
  `id` int(10) UNSIGNED NOT NULL,
  `isi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contoh2`
--

INSERT INTO `contoh2` (`id`, `isi`) VALUES
(1, '22'),
(2, 'Ini Isi10'),
(3, 'Ini Isi11'),
(4, 'Proyek Jababeka'),
(11, 'Proyek Jembatan Suramadu'),
(12, 'Proyek Jembatan Karanganyar'),
(13, 'Proyek Bundaran HI'),
(14, 'Proyek Bandara NYIA'),
(15, 'Hotel Fave Fave'),
(16, 'Hotel Dirgantara');

-- --------------------------------------------------------

--
-- Table structure for table `customer_descriptions`
--

CREATE TABLE `customer_descriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `customer_descriptions`
--

INSERT INTO `customer_descriptions` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'REGULAR', '2023-03-16 03:10:11', '2023-03-16 03:10:11'),
(2, 'JO', '2023-03-16 03:10:11', '2023-03-16 03:10:11');

-- --------------------------------------------------------

--
-- Table structure for table `customer_owners`
--

CREATE TABLE `customer_owners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `owner_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `customer_owners`
--

INSERT INTO `customer_owners` (`id`, `title`, `owner_name`, `created_at`, `updated_at`) VALUES
(1, 'BSH - ALDY PRANATA', 'ALDY PRANATA', '2023-02-07 23:54:12', '2023-02-07 23:54:12'),
(2, 'PT NUSAPALA - Robin', 'Robin', '2023-02-07 23:54:12', '2023-02-07 23:54:12'),
(3, 'PT Banjanran', NULL, '2023-02-08 12:15:30', '2023-02-08 12:15:30'),
(4, 'PT Wira Hadi', NULL, '2023-02-08 19:17:53', '2023-02-08 19:17:53'),
(5, 'PT FAVE - Angga', NULL, '2023-02-08 20:12:05', '2023-02-08 20:12:05'),
(6, 'Pemprov Sumatra Utara', NULL, '2023-03-16 07:18:10', '2023-03-16 07:18:10');

-- --------------------------------------------------------

--
-- Table structure for table `devisions`
--

CREATE TABLE `devisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `devisions`
--

INSERT INTO `devisions` (`id`, `company_id`, `title`, `created_at`, `updated_at`) VALUES
(1, 2, 'OPERASI 3/EPC', '2023-02-07 23:54:12', '2023-02-08 12:10:14'),
(2, 2, 'OPERASI 1/GEDUNG', '2023-02-07 23:54:12', '2023-02-08 12:10:33'),
(3, 2, 'OPERASI 2/INFRA 1', '2023-02-08 12:09:45', '2023-02-08 12:09:57'),
(4, 2, 'OPERASI 2/INFRA 2', '2023-02-08 12:10:49', '2023-02-08 12:10:49'),
(5, 3, 'PP02', '2023-02-08 12:35:19', '2023-03-16 06:41:06'),
(6, 4, 'PP04', '2023-02-08 12:35:29', '2023-03-16 06:40:56'),
(7, 3, 'PP02', '2023-03-16 06:40:46', '2023-03-16 06:40:46');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `fundings`
--

CREATE TABLE `fundings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `fundings`
--

INSERT INTO `fundings` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'BUMN', '2023-03-16 03:10:11', '2023-03-16 03:10:11'),
(2, 'APBN', '2023-03-16 03:10:11', '2023-03-16 03:10:11'),
(3, 'SWASTA', '2023-03-16 03:10:11', '2023-03-16 03:10:11'),
(4, 'LOAN', '2023-03-16 03:10:11', '2023-03-16 03:10:11'),
(5, 'APBD', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `labels`
--

CREATE TABLE `labels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `labels`
--

INSERT INTO `labels` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'PQ', '2023-03-16 03:10:11', '2023-03-16 03:10:11'),
(2, 'Pasca', '2023-03-16 03:10:11', '2023-03-16 03:10:11');

-- --------------------------------------------------------

--
-- Table structure for table `label_status`
--

CREATE TABLE `label_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `label_status`
--

INSERT INTO `label_status` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Belum Diputuskan', '2023-03-16 03:10:11', '2023-03-16 03:10:11'),
(2, 'Lulus', '2023-03-16 03:10:11', '2023-03-16 03:10:11'),
(3, 'Tidak Lulus', '2023-03-16 03:10:11', '2023-03-16 03:10:11');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Aceh', '2023-02-07 23:54:12', '2023-02-07 23:54:12'),
(2, 'Medan', '2023-02-07 23:54:12', '2023-02-07 23:54:12'),
(3, 'Padang', '2010-02-22 23:54:00', '2010-02-22 23:54:00'),
(4, 'Pekanbaru', '2011-02-22 23:54:00', '2011-02-22 23:54:00'),
(5, 'Jambi', '2012-02-22 23:54:00', '2012-02-22 23:54:00'),
(6, 'Palembang', '2013-02-22 23:54:00', '2013-02-22 23:54:00'),
(7, 'Bengkulu', '2014-02-22 23:54:00', '2014-02-22 23:54:00'),
(8, 'Bandar Lampung', '2015-02-22 23:54:00', '2015-02-22 23:54:00'),
(9, 'Pangkal Pinang', '2016-02-22 23:54:00', '2016-02-22 23:54:00'),
(10, 'Tanjung Pinang', '2017-02-22 23:54:00', '2017-02-22 23:54:00'),
(11, 'Jakarta', '2018-02-22 23:54:00', '2018-02-22 23:54:00'),
(12, 'Bandung', '2019-02-22 23:54:00', '2019-02-22 23:54:00'),
(13, 'Semarang', '2020-02-22 23:54:00', '2020-02-22 23:54:00'),
(14, 'Yogyakarta', '2021-02-22 23:54:00', '2021-02-22 23:54:00'),
(15, 'Surabaya', '2022-02-22 23:54:00', '2022-02-22 23:54:00'),
(16, 'Banten', '2023-02-22 23:54:00', '2023-02-22 23:54:00'),
(17, 'Denpasar', '2024-02-22 23:54:00', '2024-02-22 23:54:00'),
(18, 'Mataram', '2025-02-22 23:54:00', '2025-02-22 23:54:00'),
(19, 'Kupang', '2026-02-22 23:54:00', '2026-02-22 23:54:00'),
(20, 'Pontianak', '2027-02-22 23:54:00', '2027-02-22 23:54:00'),
(21, 'Palangka Raya', '2028-02-22 23:54:00', '2028-02-22 23:54:00'),
(22, 'Banjarmasin', '2001-03-22 23:54:00', '2001-03-22 23:54:00'),
(23, 'Samarinda', '2002-03-22 23:54:00', '2002-03-22 23:54:00'),
(24, 'Tanjung Selor', '2003-03-22 23:54:00', '2003-03-22 23:54:00'),
(25, 'Manado', '2004-03-22 23:54:00', '2004-03-22 23:54:00'),
(26, 'Palu', '2005-03-22 23:54:00', '2005-03-22 23:54:00'),
(27, 'Makassar', '2006-03-22 23:54:00', '2006-03-22 23:54:00'),
(28, 'Kendari', '2007-03-22 23:54:00', '2007-03-22 23:54:00'),
(29, 'Gorontalo', '2008-03-22 23:54:00', '2008-03-22 23:54:00'),
(30, 'Mamuju', '2009-03-22 23:54:00', '2009-03-22 23:54:00'),
(31, 'Ambon', '2010-03-22 23:54:00', '2010-03-22 23:54:00'),
(32, 'Sofifi', '2011-03-22 23:54:00', '2011-03-22 23:54:00'),
(33, 'Jayapura', '2012-03-22 23:54:00', '2012-03-22 23:54:00'),
(34, 'Manokwari', '2013-03-22 23:54:00', '2013-03-22 23:54:00');

-- --------------------------------------------------------

--
-- Table structure for table `market_validations`
--

CREATE TABLE `market_validations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_name` varchar(255) NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `devision_id` bigint(20) UNSIGNED NOT NULL,
  `project_type_id` bigint(20) UNSIGNED NOT NULL,
  `specific_construction_id` bigint(20) UNSIGNED NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `customer_owner_id` bigint(20) UNSIGNED NOT NULL,
  `owner_type_id` bigint(20) UNSIGNED NOT NULL,
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `customer_description_id` bigint(20) UNSIGNED NOT NULL,
  `score_total` int(11) NOT NULL,
  `rating_result` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `market_validations`
--

INSERT INTO `market_validations` (`id`, `project_name`, `company_id`, `devision_id`, `project_type_id`, `specific_construction_id`, `month`, `year`, `file`, `note`, `customer_owner_id`, `owner_type_id`, `location_id`, `customer_description_id`, `score_total`, `rating_result`, `created_at`, `updated_at`) VALUES
(1, 'UII Tahap 2', 1, 1, 1, 1, 'Januari', '2021', NULL, NULL, 1, 1, 1, 1, 100, 'Shortlist Optimis', '2023-02-07 23:54:12', '2023-02-07 23:54:12'),
(2, 'Bunderan HI', 2, 1, 1, 1, 'Januari', '2021', NULL, NULL, 3, 2, 1, 1, 66, 'Longlist / Cadangan', '2023-02-08 12:15:30', '2023-02-08 12:15:30'),
(3, 'Pembangunan Hotel', 2, 2, 2, 4, 'Maret', '2023', NULL, NULL, 4, 2, 1, 1, 100, 'Shortlist Optimis', '2023-02-08 19:17:53', '2023-02-08 19:17:53'),
(4, 'Stadion Madya Medan', 2, 2, 35, 33, 'Januari', '2023', NULL, 'Pembangunan stadion', 6, 2, 2, 1, 96, 'Shortlist Optimis', '2023-02-08 20:12:05', '2023-03-16 08:10:21'),
(5, 'PROYEK ABC', 2, 2, 2, 2, 'Februari', '2024', NULL, 'ok ok jos', 4, 2, 1, 1, 100, 'Shortlist Optimis', '2023-03-16 06:36:30', '2023-03-16 06:36:30'),
(6, 'Proyek 123', 2, 2, 4, 7, 'Maret', '2023', NULL, NULL, 5, 2, 14, 1, 98, 'Shortlist Optimis', '2023-03-30 01:57:04', '2023-03-30 01:58:52'),
(7, 'Proyek 112', 3, 5, 33, 32, 'Mei', '2023', NULL, 'test catatan', 4, 1, 2, 1, 53, 'Longlist / Cadangan', '2023-03-30 02:05:52', '2023-03-30 02:06:05'),
(8, 'PROYEK 113', 2, 2, 4, 7, 'Mei', '2024', NULL, 'catatan untuk pengajuan', 3, 1, 4, 1, 52, 'Longlist / Cadangan', '2023-03-30 02:25:57', '2023-03-30 02:25:57');

-- --------------------------------------------------------

--
-- Table structure for table `market_validations_approval`
--

CREATE TABLE `market_validations_approval` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `market_validation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tender_participation_status` tinyint(1) DEFAULT NULL,
  `tender_participation_status_participate_notes` text DEFAULT NULL,
  `tender_participation_status_decline_notes` text DEFAULT NULL,
  `review_administration` tinyint(1) DEFAULT NULL,
  `review_technical_resume` tinyint(1) DEFAULT NULL,
  `review_technical_schedule` tinyint(1) DEFAULT NULL,
  `review_technical_survey` tinyint(1) DEFAULT NULL,
  `review_risk_management` tinyint(1) DEFAULT NULL,
  `review_minit` tinyint(1) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `owner_project_address` varchar(255) DEFAULT NULL,
  `owner_track_record` text DEFAULT NULL,
  `consultant_planner` varchar(255) DEFAULT NULL,
  `consultant_qs` varchar(255) DEFAULT NULL,
  `consultant_mk` varchar(255) DEFAULT NULL,
  `consultant_track_record` text DEFAULT NULL,
  `tender_characteristics` text DEFAULT NULL,
  `tender_offering_date` date DEFAULT NULL,
  `tender_participats_bumn_1` varchar(255) DEFAULT NULL,
  `tender_participats_bumn_2` varchar(255) DEFAULT NULL,
  `tender_participats_bumn_3` varchar(255) DEFAULT NULL,
  `tender_participats_bumn_4` varchar(255) DEFAULT NULL,
  `tender_participats_bumn_5` varchar(255) DEFAULT NULL,
  `tender_participats_swasta_1` varchar(255) DEFAULT NULL,
  `tender_participats_swasta_2` varchar(255) DEFAULT NULL,
  `tender_participats_swasta_3` varchar(255) DEFAULT NULL,
  `tender_participats_swasta_4` varchar(255) DEFAULT NULL,
  `tender_participats_swasta_5` varchar(255) DEFAULT NULL,
  `tender_participats_asing_1` varchar(255) DEFAULT NULL,
  `tender_participats_asing_2` varchar(255) DEFAULT NULL,
  `tender_participats_asing_3` varchar(255) DEFAULT NULL,
  `tender_participats_asing_4` varchar(255) DEFAULT NULL,
  `tender_participats_asing_5` varchar(255) DEFAULT NULL,
  `financial_source` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `financial_allocation` varchar(255) DEFAULT NULL,
  `financial_tender_bond_value` varchar(255) DEFAULT NULL,
  `financial_tender_bond_time` varchar(255) DEFAULT NULL,
  `financial_tender_down_payment_bond_percentage` int(11) DEFAULT NULL,
  `financial_tender_implementation_bond_percentage` int(11) DEFAULT NULL,
  `financial_tender_down_payment_bond_source` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `financial_tender_implementation_bond_source` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `financial_currency_id` int(11) DEFAULT NULL,
  `financial_down_payment_percentage` int(11) DEFAULT NULL,
  `financial_supervision_cost` varchar(255) DEFAULT NULL,
  `contract_type` varchar(255) DEFAULT NULL,
  `contract_payment_method` varchar(255) DEFAULT NULL,
  `contract_payment_duration` varchar(255) DEFAULT NULL,
  `contract_payment_retention` varchar(255) DEFAULT NULL,
  `contract_mos` varchar(255) DEFAULT NULL,
  `contract_escalation` varchar(255) DEFAULT NULL,
  `contract_work_adjustment` varchar(255) DEFAULT NULL,
  `contract_nsc` varchar(255) DEFAULT NULL,
  `contract_sbo` varchar(255) DEFAULT NULL,
  `contract_late_charge` varchar(255) DEFAULT NULL,
  `contract_implementation_time` varchar(255) DEFAULT NULL,
  `contract_late_time` varchar(255) DEFAULT NULL,
  `common_license` varchar(255) DEFAULT NULL,
  `common_license_responsibility_by` varchar(255) DEFAULT NULL,
  `common_land_acquisition` varchar(255) DEFAULT NULL,
  `common_land_acquisition_responsibility_by` varchar(255) DEFAULT NULL,
  `etc` text DEFAULT NULL,
  `technical_review_specific_metode` varchar(255) DEFAULT NULL,
  `technical_review_aggravating_condition_1` varchar(255) DEFAULT NULL,
  `technical_review_aggravating_condition_2` varchar(255) DEFAULT NULL,
  `technical_review_aggravating_condition_3` varchar(255) DEFAULT NULL,
  `safety_review_resource` varchar(255) DEFAULT NULL,
  `safety_review_apk` varchar(255) DEFAULT NULL,
  `safety_review_apd` varchar(255) DEFAULT NULL,
  `risk_management_priority_1` varchar(255) DEFAULT NULL,
  `risk_management_priority_2` varchar(255) DEFAULT NULL,
  `risk_management_priority_3` varchar(255) DEFAULT NULL,
  `approval_user_1` int(11) DEFAULT NULL,
  `approval_user_2` int(11) DEFAULT NULL,
  `approval_user_3` int(11) DEFAULT NULL,
  `approval_signature_user_1` varchar(255) DEFAULT NULL,
  `approval_signature_user_2` varchar(255) DEFAULT NULL,
  `approval_signature_user_3` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `item_specification_material` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `item_specification_peralatan` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `item_specification_metode` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `item_specification_tk` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `item_specification_ts` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `item_specification_waktu` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `file_jadual_tender` varchar(255) DEFAULT NULL,
  `file_survey_tender` varchar(255) DEFAULT NULL,
  `approval_number` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `market_validations_approval`
--

INSERT INTO `market_validations_approval` (`id`, `market_validation_id`, `tender_participation_status`, `tender_participation_status_participate_notes`, `tender_participation_status_decline_notes`, `review_administration`, `review_technical_resume`, `review_technical_schedule`, `review_technical_survey`, `review_risk_management`, `review_minit`, `notes`, `owner_project_address`, `owner_track_record`, `consultant_planner`, `consultant_qs`, `consultant_mk`, `consultant_track_record`, `tender_characteristics`, `tender_offering_date`, `tender_participats_bumn_1`, `tender_participats_bumn_2`, `tender_participats_bumn_3`, `tender_participats_bumn_4`, `tender_participats_bumn_5`, `tender_participats_swasta_1`, `tender_participats_swasta_2`, `tender_participats_swasta_3`, `tender_participats_swasta_4`, `tender_participats_swasta_5`, `tender_participats_asing_1`, `tender_participats_asing_2`, `tender_participats_asing_3`, `tender_participats_asing_4`, `tender_participats_asing_5`, `financial_source`, `financial_allocation`, `financial_tender_bond_value`, `financial_tender_bond_time`, `financial_tender_down_payment_bond_percentage`, `financial_tender_implementation_bond_percentage`, `financial_tender_down_payment_bond_source`, `financial_tender_implementation_bond_source`, `financial_currency_id`, `financial_down_payment_percentage`, `financial_supervision_cost`, `contract_type`, `contract_payment_method`, `contract_payment_duration`, `contract_payment_retention`, `contract_mos`, `contract_escalation`, `contract_work_adjustment`, `contract_nsc`, `contract_sbo`, `contract_late_charge`, `contract_implementation_time`, `contract_late_time`, `common_license`, `common_license_responsibility_by`, `common_land_acquisition`, `common_land_acquisition_responsibility_by`, `etc`, `technical_review_specific_metode`, `technical_review_aggravating_condition_1`, `technical_review_aggravating_condition_2`, `technical_review_aggravating_condition_3`, `safety_review_resource`, `safety_review_apk`, `safety_review_apd`, `risk_management_priority_1`, `risk_management_priority_2`, `risk_management_priority_3`, `approval_user_1`, `approval_user_2`, `approval_user_3`, `approval_signature_user_1`, `approval_signature_user_2`, `approval_signature_user_3`, `created_by`, `updated_by`, `created_at`, `updated_at`, `item_specification_material`, `item_specification_peralatan`, `item_specification_metode`, `item_specification_tk`, `item_specification_ts`, `item_specification_waktu`, `file_jadual_tender`, `file_survey_tender`, `approval_number`) VALUES
(1, 5, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 'jalankan yoo', 'aceh', 'ok', 'c', 'c', 'c', 'c', 'dd', '2023-04-25', 'WK', 'WSKT', 'NK', 'HK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"Kas Internal\"]', '350000000000', '350000000', '150', 10, 10, '[\"Bank\"]', '[\"Bank\"]', NULL, 20, '5', 'fasdf', 'progress', '90', '10', 'd', 'sd', 'd', '15', '10', '1', '400', '120', 'x', NULL, 'x', NULL, 'xx', 'zx', 'x', 'x', 'x', 'x', 'xx', 'x', 'x', 'x', 'x', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 06:41:21', '2023-03-16 06:41:21', '[{\"spesifikasi_awal\":null,\"spesifikasi_hasil\":null,\"volume\":null,\"satuan\":null}]', '[{\"spesifikasi_awal\":null,\"spesifikasi_hasil\":null,\"volume\":null,\"satuan\":null}]', '[{\"spesifikasi_awal\":null,\"spesifikasi_hasil\":null,\"volume\":null,\"satuan\":null}]', '[{\"spesifikasi_awal\":null,\"spesifikasi_hasil\":null,\"volume\":null,\"satuan\":null}]', '[{\"spesifikasi_awal\":null,\"spesifikasi_hasil\":null,\"volume\":null,\"satuan\":null}]', '[{\"spesifikasi_awal\":null,\"spesifikasi_hasil\":null,\"volume\":null,\"satuan\":null}]', NULL, NULL, '001/OPERASI 1/GEDUNG/2023'),
(2, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Medan Jaya', 'Baru', 'Gamatechno', 'Gamatechno', 'Gamatechno', 'Baru', 'Terbuka', '2023-03-16', 'Hutama Karya', 'Waskita karya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"APBD\"]', '220000000000', '20000000000', '375', 10, 10, '[\"Bank\"]', '[\"Bank\"]', NULL, 5, '10', 'Lumsum', 'Monthly Progress', '14', '5 %', '-', '-', 'Ada', '2', '5', 'Maksimal 5 %', '360 hari', '180 hari', '-', 'Budi', '-', 'Rahayu', '-', '-', '-', '-', '-', 'sesuai dengan peraturan', 'sesuai dengan peraturan', 'sesuai dengan peraturan', '-', '-', '-', 2, 4, 3, NULL, NULL, NULL, NULL, NULL, '2023-03-16 07:25:12', '2023-03-16 07:25:12', '[{\"spesifikasi_awal\":\"Baja Ringan\",\"spesifikasi_hasil\":\"Baja berat\",\"volume\":\"1\",\"satuan\":\"Kg\"}]', '[{\"spesifikasi_awal\":null,\"spesifikasi_hasil\":null,\"volume\":null,\"satuan\":null}]', '[{\"spesifikasi_awal\":null,\"spesifikasi_hasil\":null,\"volume\":null,\"satuan\":null}]', '[{\"spesifikasi_awal\":null,\"spesifikasi_hasil\":null,\"volume\":null,\"satuan\":null}]', '[{\"spesifikasi_awal\":null,\"spesifikasi_hasil\":null,\"volume\":null,\"satuan\":null}]', '[{\"spesifikasi_awal\":null,\"spesifikasi_hasil\":null,\"volume\":null,\"satuan\":null}]', 'survey_1678951512.jpeg', 'jadual_1678951512.jpeg', '002/OPERASI 1/GEDUNG/2023');

-- --------------------------------------------------------

--
-- Stand-in structure for view `market_validations_view`
-- (See below for the actual view)
--
CREATE TABLE `market_validations_view` (
`id` bigint(20) unsigned
,`project_name` varchar(255)
,`company_id` bigint(20) unsigned
,`devision_id` bigint(20) unsigned
,`project_type_id` bigint(20) unsigned
,`specific_construction_id` bigint(20) unsigned
,`month` varchar(255)
,`year` varchar(255)
,`file` varchar(255)
,`customer_owner_id` bigint(20) unsigned
,`owner_type_id` bigint(20) unsigned
,`location_id` bigint(20) unsigned
,`customer_description_id` bigint(20) unsigned
,`score_total` int(11)
,`rating_result` varchar(255)
,`created_at` timestamp
,`updated_at` timestamp
,`track_record_owner` varchar(255)
,`perkiraan_nkppn_porsi_pp` varchar(255)
,`pendanaan` varchar(255)
,`sistem_pembayaran` varchar(255)
,`status_design` varchar(255)
,`perijinan_imb_dll` varchar(255)
,`pembebasan_tanah` varchar(255)
,`pelanggan_lama__baru` varchar(255)
,`waktu_pelaksanaan_tender` varchar(255)
,`pembinaan_relasi` varchar(255)
,`kesiapan_sdm_teknologi__pengalaman` varchar(255)
,`kesiapan_bermitra__jo` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `master_months`
--

CREATE TABLE `master_months` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `value` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `master_months`
--

INSERT INTO `master_months` (`id`, `value`, `label`, `created_at`, `updated_at`) VALUES
(1, '1', 'Januari', '2023-02-07 23:54:12', '2023-02-07 23:54:12'),
(2, '2', 'Februari', '2023-02-07 23:54:12', '2023-02-07 23:54:12'),
(3, '3', 'Maret', '2023-02-07 23:54:12', '2023-02-07 23:54:12'),
(4, '4', 'April', '2023-02-08 23:54:12', '2023-02-08 23:54:12'),
(5, '5', 'Mei', '2023-02-09 23:54:12', '2023-02-09 23:54:12'),
(6, '6', 'Juni', '2023-02-10 23:54:12', '2023-02-10 23:54:12'),
(7, '7', 'Juli', '2023-02-11 23:54:12', '2023-02-11 23:54:12'),
(8, '8', 'Agustus', '2023-02-12 23:54:12', '2023-02-12 23:54:12'),
(9, '9', 'September', '2023-02-13 23:54:12', '2023-02-13 23:54:12'),
(10, '10', 'Oktober', '2023-02-14 23:54:12', '2023-02-14 23:54:12'),
(11, '11', 'November', '2023-02-15 23:54:12', '2023-02-15 23:54:12'),
(12, '12', 'Desember', '2023-02-16 23:54:12', '2023-02-16 23:54:12');

-- --------------------------------------------------------

--
-- Table structure for table `master_years`
--

CREATE TABLE `master_years` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `value` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `master_years`
--

INSERT INTO `master_years` (`id`, `value`, `label`, `created_at`, `updated_at`) VALUES
(1, '2021', '2021', '2023-02-07 23:54:12', '2023-02-07 23:54:12'),
(2, '2022', '2022', '2023-02-07 23:54:12', '2023-02-07 23:54:12'),
(3, '2023', '2023', '2023-02-07 23:54:12', '2023-02-07 23:54:12'),
(4, '2024', '2024', '2023-02-07 23:54:12', '2023-02-07 23:54:12'),
(5, '2025', '2025', '2023-02-07 23:54:12', '2023-02-07 23:54:12'),
(6, '2026', '2026', '2023-02-07 23:54:12', '2023-02-07 23:54:12'),
(7, '2027', '2027', '2023-02-07 23:54:12', '2023-02-07 23:54:12'),
(8, '2028', '2028', '2023-02-07 23:54:12', '2023-02-07 23:54:12'),
(9, '2029', '2029', '2023-02-07 23:54:12', '2023-02-07 23:54:12'),
(10, '2030', '2030', '2023-02-07 23:54:12', '2023-02-07 23:54:12'),
(11, '2031', '2031', '2023-02-07 23:54:12', '2023-02-07 23:54:12'),
(12, '2032', '2032', '2023-02-07 23:54:12', '2023-02-07 23:54:12'),
(13, '2033', '2033', '2023-02-07 23:54:12', '2023-02-07 23:54:12'),
(14, '2034', '2034', '2023-02-07 23:54:12', '2023-02-07 23:54:12'),
(15, '2035', '2035', '2023-02-07 23:54:12', '2023-02-07 23:54:12'),
(16, '2036', '2036', '2023-02-07 23:54:12', '2023-02-07 23:54:12'),
(17, '2037', '2037', '2023-02-07 23:54:12', '2023-02-07 23:54:12'),
(18, '2038', '2038', '2023-02-07 23:54:12', '2023-02-07 23:54:12');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_07_24_184706_create_permission_tables', 1),
(5, '2020_09_12_043205_create_admins_table', 1),
(6, '2023_02_04_032352_create_companys_table', 1),
(7, '2023_02_04_063139_create_devisions_table', 1),
(8, '2023_02_04_100914_create_project_types_table', 1),
(9, '2023_02_05_045644_create_specific_constructions_table', 1),
(10, '2023_02_06_021802_create_customer_owners_table', 1),
(11, '2023_02_06_025128_create_scoring_forms_table', 1),
(12, '2023_02_06_032517_create_owner_types_table', 1),
(13, '2023_02_06_033003_create_locations_table', 1),
(14, '2023_02_06_033201_create_fundings_table', 1),
(15, '2023_02_06_033459_create_customer_descriptions_table', 1),
(16, '2023_02_06_035634_create_market_validations_table', 1),
(17, '2023_02_06_041042_create_validation_scorings_table', 1),
(18, '2023_02_06_062138_create_master_months_table', 1),
(19, '2023_02_06_062503_create_master_years_table', 1),
(20, '2023_02_06_143022_create_validation_scoring_tmps_table', 1),
(21, '2023_02_08_131852_create_market_validations_view_table', 1),
(22, '2023_02_15_022635_create_owner_categorys_table', 1),
(23, '2023_02_15_023201_create_project_categorys_table', 1),
(24, '2023_02_15_023202_create_pg_tenders_table', 1),
(25, '2023_02_21_042429_create_pg_status_table', 1),
(26, '2023_02_21_043101_create_pg_status_loses_table', 1),
(27, '2023_02_21_043118_create_pg_status_wins_table', 1),
(28, '2023_02_25_124453_create_market_validations_approval_table', 1),
(29, '2023_02_27_053223_create_labels_table', 1),
(30, '2023_02_27_053715_create_label_status_table', 1),
(31, '2023_02_28_145041_add_item_specification_columns_to_market_validations_approval_table', 1),
(32, '2023_03_01_141915_add_pq_date_to_pq_tenders_table', 1),
(33, '2023_03_02_215856_add_jabatan-perusahaan-divisi_to_admins_table', 1),
(34, '2023_03_04_134925_create_approval_rules_table', 1),
(35, '2023_03_05_110821_add_month_year_to_pq_tenders', 1),
(36, '2023_03_06_181655_add_approval_number_column_to_market_validation_approval_table', 1),
(37, '2023_03_19_202038_add_position_2_and_signature_column_to_admins_table', 2),
(38, '2023_03_21_100847_change_status_percent_to_pq_tenders_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\Admin', 1),
(1, 'App\\Models\\Admin', 5),
(2, 'App\\Models\\Admin', 2),
(3, 'App\\Models\\Admin', 3),
(4, 'App\\Models\\Admin', 4);

-- --------------------------------------------------------

--
-- Table structure for table `owner_categorys`
--

CREATE TABLE `owner_categorys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `owner_categorys`
--

INSERT INTO `owner_categorys` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Pemerintah', '2023-03-16 03:10:11', '2023-03-16 03:10:11');

-- --------------------------------------------------------

--
-- Table structure for table `owner_types`
--

CREATE TABLE `owner_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `owner_types`
--

INSERT INTO `owner_types` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Repeat Order', '2023-03-16 03:10:11', '2023-03-16 03:10:11'),
(2, 'Baru', '2023-03-16 03:10:11', '2023-03-16 03:10:11');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `group_label` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `group_name`, `group_label`, `created_at`, `updated_at`) VALUES
(1, 'dashboard.view', 'admin', 'dashboard', '', '2023-03-16 03:10:05', '2023-03-16 03:10:05'),
(2, 'dashboard.edit', 'admin', 'dashboard', '', '2023-03-16 03:10:05', '2023-03-16 03:10:05'),
(3, 'blog.create', 'admin', 'blog', '', '2023-03-16 03:10:05', '2023-03-16 03:10:05'),
(4, 'blog.view', 'admin', 'blog', '', '2023-03-16 03:10:05', '2023-03-16 03:10:05'),
(5, 'blog.edit', 'admin', 'blog', '', '2023-03-16 03:10:05', '2023-03-16 03:10:05'),
(6, 'blog.delete', 'admin', 'blog', '', '2023-03-16 03:10:05', '2023-03-16 03:10:05'),
(7, 'blog.approve', 'admin', 'blog', '', '2023-03-16 03:10:06', '2023-03-16 03:10:06'),
(8, 'admin.create', 'admin', 'admin', '', '2023-03-16 03:10:06', '2023-03-16 03:10:06'),
(9, 'admin.view', 'admin', 'admin', '', '2023-03-16 03:10:06', '2023-03-16 03:10:06'),
(10, 'admin.edit', 'admin', 'admin', '', '2023-03-16 03:10:06', '2023-03-16 03:10:06'),
(11, 'admin.delete', 'admin', 'admin', '', '2023-03-16 03:10:06', '2023-03-16 03:10:06'),
(12, 'admin.approve', 'admin', 'admin', '', '2023-03-16 03:10:06', '2023-03-16 03:10:06'),
(13, 'role.create', 'admin', 'role', '', '2023-03-16 03:10:06', '2023-03-16 03:10:06'),
(14, 'role.view', 'admin', 'role', '', '2023-03-16 03:10:06', '2023-03-16 03:10:06'),
(15, 'role.edit', 'admin', 'role', '', '2023-03-16 03:10:06', '2023-03-16 03:10:06'),
(16, 'role.delete', 'admin', 'role', '', '2023-03-16 03:10:06', '2023-03-16 03:10:06'),
(17, 'role.approve', 'admin', 'role', '', '2023-03-16 03:10:06', '2023-03-16 03:10:06'),
(18, 'profile.view', 'admin', 'profile', '', '2023-03-16 03:10:06', '2023-03-16 03:10:06'),
(19, 'profile.edit', 'admin', 'profile', '', '2023-03-16 03:10:06', '2023-03-16 03:10:06'),
(20, 'company.view', 'admin', 'company', 'perusahaan', '2023-03-16 03:10:07', '2023-03-16 03:10:07'),
(21, 'company.create', 'admin', 'company', 'perusahaan', '2023-03-16 03:10:07', '2023-03-16 03:10:07'),
(22, 'company.edit', 'admin', 'company', 'perusahaan', '2023-03-16 03:10:07', '2023-03-16 03:10:07'),
(23, 'company.delete', 'admin', 'company', 'perusahaan', '2023-03-16 03:10:07', '2023-03-16 03:10:07'),
(24, 'devision.view', 'admin', 'devision', 'devisi', '2023-03-16 03:10:07', '2023-03-16 03:10:07'),
(25, 'devision.create', 'admin', 'devision', 'devisi', '2023-03-16 03:10:07', '2023-03-16 03:10:07'),
(26, 'devision.edit', 'admin', 'devision', 'devisi', '2023-03-16 03:10:07', '2023-03-16 03:10:07'),
(27, 'devision.delete', 'admin', 'devision', 'devisi', '2023-03-16 03:10:07', '2023-03-16 03:10:07'),
(28, 'project_type.view', 'admin', 'project_type', 'jenis proyek', '2023-03-16 03:10:07', '2023-03-16 03:10:07'),
(29, 'project_type.create', 'admin', 'project_type', 'jenis proyek', '2023-03-16 03:10:08', '2023-03-16 03:10:08'),
(30, 'project_type.edit', 'admin', 'project_type', 'jenis proyek', '2023-03-16 03:10:08', '2023-03-16 03:10:08'),
(31, 'project_type.delete', 'admin', 'project_type', 'jenis proyek', '2023-03-16 03:10:08', '2023-03-16 03:10:08'),
(32, 'specific_construction.view', 'admin', 'specific_construction', 'konstruksi spesifik', '2023-03-16 03:10:08', '2023-03-16 03:10:08'),
(33, 'specific_construction.create', 'admin', 'specific_construction', 'konstruksi spesifik', '2023-03-16 03:10:08', '2023-03-16 03:10:08'),
(34, 'specific_construction.edit', 'admin', 'specific_construction', 'konstruksi spesifik', '2023-03-16 03:10:08', '2023-03-16 03:10:08'),
(35, 'specific_construction.delete', 'admin', 'specific_construction', 'konstruksi spesifik', '2023-03-16 03:10:08', '2023-03-16 03:10:08'),
(36, 'scoring_form.view', 'admin', 'scoring_form', 'form penilaian', '2023-03-16 03:10:08', '2023-03-16 03:10:08'),
(37, 'scoring_form.create', 'admin', 'scoring_form', 'form penilaian', '2023-03-16 03:10:09', '2023-03-16 03:10:09'),
(38, 'scoring_form.edit', 'admin', 'scoring_form', 'form penilaian', '2023-03-16 03:10:09', '2023-03-16 03:10:09'),
(39, 'scoring_form.delete', 'admin', 'scoring_form', 'form penilaian', '2023-03-16 03:10:09', '2023-03-16 03:10:09'),
(40, 'customer_owner.view', 'admin', 'customer_owner', 'owner pelanggan', '2023-03-16 03:10:09', '2023-03-16 03:10:09'),
(41, 'customer_owner.create', 'admin', 'customer_owner', 'owner pelanggan', '2023-03-16 03:10:09', '2023-03-16 03:10:09'),
(42, 'customer_owner.edit', 'admin', 'customer_owner', 'owner pelanggan', '2023-03-16 03:10:09', '2023-03-16 03:10:09'),
(43, 'customer_owner.delete', 'admin', 'customer_owner', 'owner pelanggan', '2023-03-16 03:10:09', '2023-03-16 03:10:09'),
(44, 'market_validation.view', 'admin', 'market_validation', 'market validasi', '2023-03-16 03:10:09', '2023-03-16 03:10:09'),
(45, 'market_validation.create', 'admin', 'market_validation', 'market validasi', '2023-03-16 03:10:10', '2023-03-16 03:10:10'),
(46, 'market_validation.edit', 'admin', 'market_validation', 'market validasi', '2023-03-16 03:10:10', '2023-03-16 03:10:10'),
(47, 'market_validation.delete', 'admin', 'market_validation', 'market validasi', '2023-03-16 03:10:10', '2023-03-16 03:10:10'),
(48, 'approval_rules.view', 'admin', 'approval_rules', 'approval rules', '2023-03-16 03:10:10', '2023-03-16 03:10:10'),
(49, 'approval_rules.create', 'admin', 'approval_rules', 'approval rules', '2023-03-16 03:10:10', '2023-03-16 03:10:10'),
(50, 'approval_rules.edit', 'admin', 'approval_rules', 'approval rules', '2023-03-16 03:10:10', '2023-03-16 03:10:10'),
(51, 'approval_rules.delete', 'admin', 'approval_rules', 'approval rules', '2023-03-16 03:10:10', '2023-03-16 03:10:10');

-- --------------------------------------------------------

--
-- Table structure for table `pg_status`
--

CREATE TABLE `pg_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `value` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `pg_status`
--

INSERT INTO `pg_status` (`id`, `value`, `label`, `created_at`, `updated_at`) VALUES
(1, 'Menang', 'Menang', '2023-03-16 03:10:11', '2023-03-16 03:10:11'),
(2, 'Kalah Harga dll', 'Kalah Harga dll', '2023-03-16 03:10:11', '2023-03-16 03:10:11'),
(3, 'Belum Diputuskan', 'Belum Diputuskan', '2023-03-16 03:10:11', '2023-03-16 03:10:11'),
(4, 'Gagal', 'Gagal', '2023-03-16 03:10:11', '2023-03-16 03:10:11');

-- --------------------------------------------------------

--
-- Table structure for table `pg_status_loses`
--

CREATE TABLE `pg_status_loses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `value` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `pg_status_loses`
--

INSERT INTO `pg_status_loses` (`id`, `value`, `label`, `created_at`, `updated_at`) VALUES
(1, 'Harga Terendah', 'Harga Terendah', '2023-03-16 03:10:11', '2023-03-16 03:10:11'),
(2, 'Merit point', 'Merit point', '2023-03-16 03:10:11', '2023-03-16 03:10:11'),
(3, 'Pembinaan Relasi', 'Pembinaan Relasi', '2023-03-16 03:10:11', '2023-03-16 03:10:11'),
(4, 'Lainnya', 'Lainnya', '2023-03-16 03:10:11', '2023-03-16 03:10:11');

-- --------------------------------------------------------

--
-- Table structure for table `pg_status_wins`
--

CREATE TABLE `pg_status_wins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `value` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `pg_status_wins`
--

INSERT INTO `pg_status_wins` (`id`, `value`, `label`, `created_at`, `updated_at`) VALUES
(1, 'Harga Terendah', 'Harga Terendah', '2023-03-16 03:10:11', '2023-03-16 03:10:11'),
(2, 'Merit point', 'Merit point', '2023-03-16 03:10:11', '2023-03-16 03:10:11'),
(3, 'Pembinaan Relasi', 'Pembinaan Relasi', '2023-03-16 03:10:11', '2023-03-16 03:10:11'),
(4, 'Lainnya', 'Lainnya', '2023-03-16 03:10:11', '2023-03-16 03:10:11');

-- --------------------------------------------------------

--
-- Table structure for table `pq_tenders`
--

CREATE TABLE `pq_tenders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `market_validation_id` bigint(20) UNSIGNED NOT NULL,
  `implementation_date` date DEFAULT NULL,
  `tender_code` varchar(255) DEFAULT NULL,
  `project_category_id` bigint(20) UNSIGNED NOT NULL,
  `pagu_value` bigint(20) UNSIGNED DEFAULT NULL,
  `contract_value` bigint(20) UNSIGNED DEFAULT NULL,
  `owner_category_id` bigint(20) UNSIGNED NOT NULL,
  `doc_specification` varchar(255) DEFAULT NULL,
  `doc_picture` varchar(255) DEFAULT NULL,
  `doc_administration` varchar(255) DEFAULT NULL,
  `doc_method` varchar(255) DEFAULT NULL,
  `doc_boq` varchar(255) DEFAULT NULL,
  `doc_ba_aanwijzing` varchar(255) DEFAULT NULL,
  `doc_bid_document` varchar(255) DEFAULT NULL,
  `doc_sph` varchar(255) DEFAULT NULL,
  `doc_bid_guarantee` varchar(255) DEFAULT NULL,
  `doc_implementation_method` varchar(255) DEFAULT NULL,
  `doc_rab` varchar(255) DEFAULT NULL,
  `doc_implementation_schedule` varchar(255) DEFAULT NULL,
  `doc_tender_review_sheet` varchar(255) DEFAULT NULL,
  `doc_tender_schedule` varchar(255) DEFAULT NULL,
  `doc_field_survey_checklist` varchar(255) DEFAULT NULL,
  `doc_risk_management_review` varchar(255) DEFAULT NULL,
  `pagu_min_ppn` bigint(20) UNSIGNED DEFAULT NULL,
  `tender_date` date DEFAULT NULL,
  `is_complete_technical_document` tinyint(4) NOT NULL DEFAULT 0,
  `technical_document_date` date DEFAULT NULL,
  `price_document_date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `announcement_date` date DEFAULT NULL,
  `announcement_attachment` varchar(255) DEFAULT NULL,
  `win_price` bigint(20) UNSIGNED DEFAULT NULL,
  `win_status` varchar(255) DEFAULT NULL,
  `win_percent` text DEFAULT NULL,
  `competitor_price` bigint(20) UNSIGNED DEFAULT NULL,
  `lose_status` varchar(255) DEFAULT NULL,
  `lose_percent` text DEFAULT NULL,
  `notyet_price` bigint(20) UNSIGNED DEFAULT NULL,
  `fail_price` bigint(20) UNSIGNED DEFAULT NULL,
  `funding` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `label_status` varchar(255) DEFAULT NULL,
  `tender_duration` varchar(255) DEFAULT NULL,
  `evaluation_fall` text DEFAULT NULL,
  `evaluation_accepted` text DEFAULT NULL,
  `evaluation_winner` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pq_date` date DEFAULT NULL,
  `year` varchar(4) NOT NULL DEFAULT '2023',
  `month` varchar(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `pq_tenders`
--

INSERT INTO `pq_tenders` (`id`, `market_validation_id`, `implementation_date`, `tender_code`, `project_category_id`, `pagu_value`, `contract_value`, `owner_category_id`, `doc_specification`, `doc_picture`, `doc_administration`, `doc_method`, `doc_boq`, `doc_ba_aanwijzing`, `doc_bid_document`, `doc_sph`, `doc_bid_guarantee`, `doc_implementation_method`, `doc_rab`, `doc_implementation_schedule`, `doc_tender_review_sheet`, `doc_tender_schedule`, `doc_field_survey_checklist`, `doc_risk_management_review`, `pagu_min_ppn`, `tender_date`, `is_complete_technical_document`, `technical_document_date`, `price_document_date`, `status`, `announcement_date`, `announcement_attachment`, `win_price`, `win_status`, `win_percent`, `competitor_price`, `lose_status`, `lose_percent`, `notyet_price`, `fail_price`, `funding`, `label`, `label_status`, `tender_duration`, `evaluation_fall`, `evaluation_accepted`, `evaluation_winner`, `created_at`, `updated_at`, `pq_date`, `year`, `month`) VALUES
(1, 4, '2023-03-13', '002/OPERASI 1/GEDUNG/2023', 1, 220000000000, 200000000000, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 180180180180, '2023-02-22', 0, '2023-02-22', '2023-02-22', 'Menang', '2023-03-17', NULL, 180180180180, 'Merit point', '91', NULL, NULL, NULL, NULL, NULL, 'APBN', 'Pasca', 'Lulus', '23 Hari', '{\"Evaluasi Persyaratan Administrasi\":{\"1.Tender Bond\":{\"hasil\":\"TIDAK\",\"keterangan\":null},\"2.Pengalaman Kerja\":{\"hasil\":\"TIDAK\",\"keterangan\":null},\"3.Curriculum Vitae & Organisasi\":{\"hasil\":\"TIDAK\",\"keterangan\":null},\"4.Kelengkapan Administrasi\":{\"hasil\":\"TIDAK\",\"keterangan\":null},\"5.Redaksi Penawaran\":{\"hasil\":\"TIDAK\",\"keterangan\":null}},\"Evaluasi Persyaratan Teknis\":{\"1.Metoda Pelaksanaan\":{\"hasil\":\"TIDAK\",\"keterangan\":null},\"2.Peralatan yang digunakan\":{\"hasil\":\"TIDAK\",\"keterangan\":null},\"3.Jadual Pelaksanaan yang diusulkan\":{\"hasil\":\"TIDAK\",\"keterangan\":null},\"4.Sistem Manajemen QSHE\":{\"hasil\":\"TIDAK\",\"keterangan\":null},\"5. Beauty kontes\":{\"hasil\":\"TIDAK\",\"keterangan\":null}},\"kesimpulan\":null}', '{\"Penawaran Terendah dengan Harga Penawaran Lebih Rendah 10 % terhadap Penawaran Kedua\":{\"1.Evaluasi Finalisasi Harga\":{\"hasil\":\"TIDAK\",\"keterangan\":null},\"2.Evaluasi Real Cost\":{\"hasil\":\"TIDAK\",\"keterangan\":null},\"3.Evaluasi Metode Pelaksanaan\":{\"hasil\":\"TIDAK\",\"keterangan\":null}},\"Tender Kalah dengan Harga Penawaran lebih Besar 10 % Terhadap Penawaran Terendah\":{\"1.Evaluasi Finalisasi Harga\":{\"hasil\":\"TIDAK\",\"keterangan\":null},\"2.Evaluasi Real Cost\":{\"hasil\":\"TIDAK\",\"keterangan\":null},\"3.Evaluasi Metode Pelaksanaan\":{\"hasil\":\"TIDAK\",\"keterangan\":null}},\"kesimpulan\":null}', '[{\"name\":null,\"value\":null}]', '2023-03-16 08:18:33', '2023-03-16 08:25:11', '2023-03-22', '2023', '2');

-- --------------------------------------------------------

--
-- Table structure for table `project_categorys`
--

CREATE TABLE `project_categorys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `project_categorys`
--

INSERT INTO `project_categorys` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Sipil', '2023-03-16 03:10:11', '2023-03-16 03:10:11');

-- --------------------------------------------------------

--
-- Table structure for table `project_types`
--

CREATE TABLE `project_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `devision_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `project_types`
--

INSERT INTO `project_types` (`id`, `company_id`, `devision_id`, `title`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'APARTEMEN', '2023-02-07 23:54:12', '2023-02-07 23:54:12'),
(2, 1, 2, 'HOTEL', '2023-02-07 23:54:12', '2023-02-07 23:54:12'),
(3, 1, 2, 'RUMAH SAKIT', '2023-02-07 23:54:12', '2023-02-07 23:54:12'),
(4, 1, 2, 'PERKANTORAN', '2023-02-07 23:54:12', '2023-02-07 23:54:12'),
(5, 1, 2, 'PENDIDIKAN', '2023-02-07 23:54:12', '2023-02-07 23:54:12'),
(6, 1, 3, 'JALAN TOL', '2023-02-07 23:54:12', '2023-02-07 23:54:12'),
(7, 1, 3, 'JALAN', '2023-02-07 23:54:12', '2023-02-07 23:54:12'),
(8, 1, 3, 'FLY OVER/UNDERPAS', '2023-02-07 23:54:12', '2023-02-07 23:54:12'),
(9, 1, 3, 'APRON, TAXIWAY & RUNWAY', '2023-02-07 23:54:12', '2023-02-07 23:54:12'),
(10, 1, 4, 'BENDUNGAN, BENDUNG, IRIGASI & SUNGAI', '2023-02-08 23:54:12', '2023-02-08 23:54:12'),
(11, 1, 4, 'PELABUHAN, PENGAMAN PANTAI, REKLAMASI & PENGERUKAN', '2023-02-09 23:54:12', '2023-02-09 23:54:12'),
(12, 1, 4, 'SPAM/LIMBAH, INSTALASI, POMPA & WWTP', '2023-02-10 23:54:12', '2023-02-10 23:54:12'),
(13, 1, 4, 'PERSAMPAHAN', '2023-02-11 23:54:12', '2023-02-11 23:54:12'),
(14, 1, 1, 'REL KA & PERSINYALAN', '2023-02-12 23:54:12', '2023-02-12 23:54:12'),
(15, 1, 1, 'POWER PLANT', '2023-02-13 23:54:12', '2023-02-13 23:54:12'),
(16, 1, 1, 'OIL & GAS', '2023-02-14 23:54:12', '2023-02-14 23:54:12'),
(17, 4, 4, 'LAIN-LAIN', '2023-02-15 23:54:12', '2023-02-15 23:54:12'),
(18, 4, 4, 'HOTEL', '2023-02-16 23:54:12', '2023-02-16 23:54:12'),
(19, 4, 4, 'PERKANTORAN', '2023-02-17 23:54:12', '2023-02-17 23:54:12'),
(20, 4, 4, 'RUMAH SAKIT', '2023-02-18 23:54:12', '2023-02-18 23:54:12'),
(21, 4, 4, 'KOMERSIL', '2023-02-19 23:54:12', '2023-02-19 23:54:12'),
(22, 4, 4, 'PENDIDIKAN', '2023-02-20 23:54:12', '2023-02-20 23:54:12'),
(23, 4, 4, 'APARTEMEN', '2023-02-21 23:54:12', '2023-02-21 23:54:12'),
(24, 4, 4, 'STADION OLAHRAGA', '2023-02-22 23:54:12', '2023-02-22 23:54:12'),
(25, 3, 3, 'GEDUNG TERMINAL', '2023-02-23 23:54:12', '2023-02-23 23:54:12'),
(26, 3, 3, 'JALAN', '2023-02-24 23:54:12', '2023-02-24 23:54:12'),
(27, 3, 3, 'JEMBATAN', '2023-02-25 23:54:12', '2023-02-25 23:54:12'),
(28, 3, 3, 'FLY OVER/UNDERPAS', '2023-02-26 23:54:12', '2023-02-26 23:54:12'),
(29, 3, 3, 'APRON, TAXIWAY & RUNWAY', '2023-02-27 23:54:12', '2023-02-27 23:54:12'),
(30, 3, 3, 'BENDUNGAN, BENDUNG, IRIGASI & SUNGAI', '2023-02-28 23:54:12', '2023-02-28 23:54:12'),
(31, 3, 3, 'PELABUHAN, PENGAMAN PANTAI, REKLAMASI & PENGERUKAN', '2023-03-01 23:54:12', '2023-03-01 23:54:12'),
(32, 3, 3, 'SPAM/LIMBAH, INSTALASI, POMPA & WWTP', '2023-03-02 23:54:12', '2023-03-02 23:54:12'),
(33, 3, 5, 'PERSAMPAHAN', '2023-03-03 23:54:12', '2023-03-30 02:04:24'),
(34, 2, 1, 'REL KA & PERSINYALAN', '2023-03-04 23:54:12', '2023-03-16 06:41:42'),
(35, 2, 2, 'STADION', '2023-03-16 08:07:43', '2023-03-16 08:07:43');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'admin', '2023-03-16 03:10:05', '2023-03-16 03:10:05'),
(2, 'manager', 'admin', '2023-03-16 03:10:05', '2023-03-16 03:10:05'),
(3, 'director', 'admin', '2023-03-16 03:10:05', '2023-03-16 03:10:05'),
(4, 'vp', 'admin', '2023-03-16 03:10:05', '2023-03-16 03:10:05');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(6, 1),
(6, 2),
(6, 3),
(6, 4),
(7, 1),
(7, 2),
(7, 3),
(7, 4),
(8, 1),
(8, 2),
(8, 3),
(8, 4),
(9, 1),
(9, 2),
(9, 3),
(9, 4),
(10, 1),
(10, 2),
(10, 3),
(10, 4),
(11, 1),
(11, 2),
(11, 3),
(11, 4),
(12, 1),
(12, 2),
(12, 3),
(12, 4),
(13, 1),
(13, 2),
(13, 3),
(13, 4),
(14, 1),
(14, 2),
(14, 3),
(14, 4),
(15, 1),
(15, 2),
(15, 3),
(15, 4),
(16, 1),
(16, 2),
(16, 3),
(16, 4),
(17, 1),
(17, 2),
(17, 3),
(17, 4),
(18, 1),
(18, 2),
(18, 3),
(18, 4),
(19, 1),
(19, 2),
(19, 3),
(19, 4),
(20, 1),
(20, 2),
(20, 3),
(20, 4),
(21, 1),
(21, 2),
(21, 3),
(21, 4),
(22, 1),
(22, 2),
(22, 3),
(22, 4),
(23, 1),
(23, 2),
(23, 3),
(23, 4),
(24, 1),
(24, 2),
(24, 3),
(24, 4),
(25, 1),
(25, 2),
(25, 3),
(25, 4),
(26, 1),
(26, 2),
(26, 3),
(26, 4),
(27, 1),
(27, 2),
(27, 3),
(27, 4),
(28, 1),
(28, 2),
(28, 3),
(28, 4),
(29, 1),
(29, 2),
(29, 3),
(29, 4),
(30, 1),
(30, 2),
(30, 3),
(30, 4),
(31, 1),
(31, 2),
(31, 3),
(31, 4),
(32, 1),
(32, 2),
(32, 3),
(32, 4),
(33, 1),
(33, 2),
(33, 3),
(33, 4),
(34, 1),
(34, 2),
(34, 3),
(34, 4),
(35, 1),
(35, 2),
(35, 3),
(35, 4),
(36, 1),
(36, 2),
(36, 3),
(36, 4),
(37, 1),
(37, 2),
(37, 3),
(37, 4),
(38, 1),
(38, 2),
(38, 3),
(38, 4),
(39, 1),
(39, 2),
(39, 3),
(39, 4),
(40, 1),
(40, 2),
(40, 3),
(40, 4),
(41, 1),
(41, 2),
(41, 3),
(41, 4),
(42, 1),
(42, 2),
(42, 3),
(42, 4),
(43, 1),
(43, 2),
(43, 3),
(43, 4),
(44, 1),
(44, 2),
(44, 3),
(44, 4),
(45, 1),
(45, 2),
(45, 3),
(45, 4),
(46, 1),
(46, 2),
(46, 3),
(46, 4),
(47, 1),
(47, 2),
(47, 3),
(47, 4),
(48, 1),
(48, 2),
(48, 3),
(48, 4),
(49, 1),
(49, 2),
(49, 3),
(49, 4),
(50, 1),
(50, 2),
(50, 3),
(50, 4),
(51, 1),
(51, 2),
(51, 3),
(51, 4);

-- --------------------------------------------------------

--
-- Table structure for table `scoring_forms`
--

CREATE TABLE `scoring_forms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `criteria1` varchar(255) NOT NULL,
  `criteria2` varchar(255) NOT NULL,
  `criteria3` varchar(255) NOT NULL,
  `grade` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `scoring_forms`
--

INSERT INTO `scoring_forms` (`id`, `title`, `criteria1`, `criteria2`, `criteria3`, `grade`, `created_at`, `updated_at`) VALUES
(1, 'Track Record', 'Bermasalah', 'Biasa', 'Tidak bermasalah & Repeat Order', 12, '2023-02-07 23:54:12', '2023-02-08 21:25:20'),
(2, 'Perkiraan NK-PPN Porsi PP', '< 200 M', '-', '> 200 M', 8, '2023-02-07 23:54:12', '2023-02-07 23:54:12'),
(3, 'Pendanaan', 'Swasta Dengan Kepastian Pendanaan', 'Pemerintah / BUMN (Belum Teranggarkan)', 'Pemerintah / BUMN (Sudah Teranggarkan)', 12, '2023-02-07 23:54:12', '2023-02-07 23:54:12'),
(4, 'Sistem Pembayaran', 'Turnkey', 'Milestone tanpa UM', 'Monthly/Progress dgn UM', 12, '2023-02-07 23:54:12', '2023-02-07 23:54:12'),
(5, 'Status Design', 'Konsep Design', 'DED 50%', 'Final Design', 5, '2023-02-07 23:54:12', '2023-02-07 23:54:12'),
(6, 'Perijinan ( IMB dll )', 'Belum Proses', 'Proses', 'Siap', 5, '2023-02-07 23:54:12', '2023-02-07 23:54:12'),
(7, 'Pembebasan Tanah', '< 50%', '50% - 75%', '75% - 100%', 5, '2023-02-07 23:54:12', '2023-02-07 23:54:12'),
(8, 'Pelanggan Lama / Baru', 'Lama', '-', 'Baru', 5, '2023-02-07 23:54:12', '2023-02-07 23:54:12'),
(9, 'Waktu Pelaksanaan Tender', '6-12  bulan kedepan', '3 - 6 bulan kedepan', '3 bulan kedepan`', 5, '2023-02-07 23:54:12', '2023-02-07 23:54:12'),
(10, 'Pembinaan Relasi', 'Biasa', 'Baik', 'Sangat Baik', 15, '2023-02-07 23:54:12', '2023-02-07 23:54:12'),
(11, 'Kesiapan SDM, Teknologi & Pengalaman', 'Kurang', 'Sedang', 'Siap', 8, '2023-02-07 23:54:12', '2023-02-07 23:54:12'),
(12, 'Kesiapan Bermitra / JO', 'Mitra  Kompetensi Biasa', 'Mitra Kompetensi Baik', 'Reguler & Kompeten', 8, '2023-02-07 23:54:12', '2023-02-07 23:54:12');

-- --------------------------------------------------------

--
-- Table structure for table `specific_constructions`
--

CREATE TABLE `specific_constructions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `devision_id` bigint(20) UNSIGNED NOT NULL,
  `project_type_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `specific_constructions`
--

INSERT INTO `specific_constructions` (`id`, `company_id`, `devision_id`, `project_type_id`, `title`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'BASEMENT', '2023-02-07 23:54:12', '2023-02-07 23:54:12'),
(2, 1, 2, 2, 'TOP DOWN', '2023-02-08 23:54:12', '2023-02-08 23:54:12'),
(3, 1, 2, 2, 'PRECASTING', '2023-02-09 23:54:12', '2023-02-09 23:54:12'),
(4, 1, 2, 2, 'KONST BAJA', '2023-02-10 23:54:12', '2023-02-10 23:54:12'),
(5, 4, 4, 23, 'BASEMENT', '2023-02-11 23:54:12', '2023-02-11 23:54:12'),
(6, 1, 2, 4, 'TOP DOWN', '2023-02-12 23:54:12', '2023-02-12 23:54:12'),
(7, 1, 2, 4, 'PRECASTING', '2023-02-13 23:54:12', '2023-02-13 23:54:12'),
(8, 1, 2, 4, 'KONST BAJA', '2023-02-14 23:54:12', '2023-02-14 23:54:12'),
(9, 1, 2, 3, 'PRECASTING', '2023-02-15 23:54:12', '2023-02-15 23:54:12'),
(10, 1, 2, 3, 'KONST BAJA', '2023-02-16 23:54:12', '2023-02-16 23:54:12'),
(11, 1, 2, 3, 'BASEMENT', '2023-02-17 23:54:12', '2023-02-17 23:54:12'),
(12, 1, 2, 3, 'TOP DOWN', '2023-02-18 23:54:12', '2023-02-18 23:54:12'),
(13, 4, 4, 21, 'BASEMENT', '2023-02-19 23:54:12', '2023-02-19 23:54:12'),
(14, 4, 4, 21, 'TOP DOWN', '2023-02-20 23:54:12', '2023-02-20 23:54:12'),
(15, 4, 4, 21, 'PRECASTING', '2023-02-21 23:54:12', '2023-02-21 23:54:12'),
(16, 4, 4, 21, 'KONST BAJA', '2023-02-22 23:54:12', '2023-02-22 23:54:12'),
(17, 1, 2, 5, 'BASEMENT', '2023-02-23 23:54:12', '2023-02-23 23:54:12'),
(18, 1, 2, 5, 'TOP DOWN', '2023-02-24 23:54:12', '2023-02-24 23:54:12'),
(19, 1, 2, 5, 'PRECASTING', '2023-02-25 23:54:12', '2023-02-25 23:54:12'),
(20, 1, 2, 5, 'KONST BAJA', '2023-02-26 23:54:12', '2023-02-26 23:54:12'),
(21, 1, 2, 2, 'BASEMENT', '2023-02-27 23:54:12', '2023-02-27 23:54:12'),
(22, 1, 2, 2, 'TOP-DOWN', '2023-02-28 23:54:12', '2023-02-28 23:54:12'),
(23, 1, 2, 2, 'PRECASTING', '2023-03-01 23:54:12', '2023-03-01 23:54:12'),
(24, 1, 2, 2, 'KONST BAJA', '2023-03-02 23:54:12', '2023-03-02 23:54:12'),
(25, 4, 4, 24, 'PRECASTING', '2023-03-03 23:54:12', '2023-03-03 23:54:12'),
(26, 4, 4, 24, 'KONST BAJA', '2023-03-04 23:54:12', '2023-03-04 23:54:12'),
(27, 4, 4, 24, 'BASEMENT', '2023-03-05 23:54:12', '2023-03-05 23:54:12'),
(28, 4, 4, 24, 'TOP-DOWN', '2023-03-06 23:54:12', '2023-03-06 23:54:12'),
(29, 3, 3, 25, 'PRECASTING', '2023-03-07 23:54:12', '2023-03-07 23:54:12'),
(30, 3, 3, 25, 'KONST BAJA', '2023-03-08 23:54:12', '2023-03-08 23:54:12'),
(31, 3, 3, 25, 'BASEMENT', '2023-03-09 23:54:12', '2023-03-09 23:54:12'),
(32, 3, 5, 33, 'TOP-DOWN', '2023-03-10 23:54:12', '2023-03-30 02:05:10'),
(33, 2, 2, 35, 'ATAP BAJA', '2023-03-16 08:09:37', '2023-03-16 08:09:37');

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE `templates` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `catalogue` int(11) NOT NULL,
  `hash` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `templates`
--

INSERT INTO `templates` (`id`, `name`, `catalogue`, `hash`, `created_at`, `updated_at`) VALUES
(1, 'Default', 1, '[{\"name\":\"Sheet1\",\"config\":{},\"index\":\"1\",\"status\":1,\"order\":\"0\",\"zoomRatio\":1,\"showGridLines\":\"1\",\"defaultColWidth\":72,\"defaultRowHeight\":20,\"celldata\":[{\"r\":1,\"c\":0,\"v\":{\"v\":1,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"1\"}},{\"r\":1,\"c\":1,\"v\":{\"v\":2,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"2\"}},{\"r\":1,\"c\":2,\"v\":{\"v\":3,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"3\"}},{\"r\":1,\"c\":3,\"v\":{\"v\":4,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"4\"}},{\"r\":1,\"c\":4,\"v\":{\"v\":5,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"5\"}},{\"r\":1,\"c\":5,\"v\":{\"v\":6,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"6\"}},{\"r\":1,\"c\":6,\"v\":{\"v\":7,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"7\"}},{\"r\":1,\"c\":7,\"v\":{\"v\":8,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"8\"}},{\"r\":1,\"c\":8,\"v\":{\"v\":9,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"9\"}},{\"r\":1,\"c\":9,\"v\":{\"v\":10,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"10\"}}],\"calcChain\":[],\"jfgird_select_save\":[],\"luckysheet_select_save\":[{\"left\":219,\"width\":72,\"top\":210,\"height\":20,\"left_move\":219,\"width_move\":72,\"top_move\":210,\"height_move\":20,\"row\":[10,10],\"column\":[3,3],\"row_focus\":10,\"column_focus\":3}],\"visibledatarow\":[21,42,63,84,105,126,147,168,189,210,231,252,273,294,315,336,357,378,399,420,441,462,483,504,525,546,567,588,609,630,651,672,693,714,735,756,777,798,819,840,861,882,903,924,945,966,987,1008,1029,1050,1071,1092,1113,1134,1155,1176,1197,1218,1239,1260,1281,1302,1323,1344,1365,1386,1407,1428,1449,1470,1491,1512,1533,1554,1575,1596,1617,1638,1659,1680,1701,1722,1743,1764],\"visibledatacolumn\":[73,146,219,292,365,438,511,584,657,730,803,876,949,1022,1095,1168,1241,1314,1387,1460,1533,1606,1679,1752,1825,1898,1971,2044,2117,2190,2263,2336,2409,2482,2555,2628,2701,2774,2847,2920,2993,3066,3139,3212,3285,3358,3431,3504,3577,3650,3723,3796,3869,3942,4015,4088,4161,4234,4307,4380],\"ch_width\":4500,\"rh_height\":1844,\"luckysheet_selection_range\":[]},{\"name\":\"Sheet2\",\"config\":{},\"index\":\"2\",\"status\":\"0\",\"order\":\"1\",\"zoomRatio\":1,\"showGridLines\":\"1\",\"defaultColWidth\":72,\"defaultRowHeight\":20,\"celldata\":[],\"calcChain\":[]},{\"name\":\"Sheet3\",\"config\":{},\"index\":\"3\",\"status\":\"0\",\"order\":\"2\",\"zoomRatio\":1,\"showGridLines\":\"1\",\"defaultColWidth\":72,\"defaultRowHeight\":20,\"celldata\":[],\"calcChain\":[]}]', '2023-04-02 23:56:47', '2023-04-02 23:56:47');
INSERT INTO `templates` (`id`, `name`, `catalogue`, `hash`, `created_at`, `updated_at`) VALUES
(2, 'RKAP 2023 W1', 1, '[{\"name\":\"Prognosa 2023\",\"config\":{\"merge\":{\"0_0\":{\"r\":0,\"c\":0,\"rs\":2,\"cs\":1},\"0_1\":{\"r\":0,\"c\":1,\"rs\":2,\"cs\":1},\"0_2\":{\"r\":0,\"c\":2,\"rs\":2,\"cs\":1},\"0_3\":{\"r\":0,\"c\":3,\"rs\":2,\"cs\":1},\"0_4\":{\"r\":0,\"c\":4,\"rs\":2,\"cs\":1},\"0_5\":{\"r\":0,\"c\":5,\"rs\":2,\"cs\":1},\"0_6\":{\"r\":0,\"c\":6,\"rs\":2,\"cs\":1},\"0_7\":{\"r\":0,\"c\":7,\"rs\":2,\"cs\":1},\"0_9\":{\"r\":0,\"c\":9,\"rs\":2,\"cs\":1},\"0_10\":{\"r\":0,\"c\":10,\"rs\":2,\"cs\":1},\"0_11\":{\"r\":0,\"c\":11,\"rs\":2,\"cs\":1},\"0_12\":{\"r\":0,\"c\":12,\"rs\":2,\"cs\":1},\"0_13\":{\"r\":0,\"c\":13,\"rs\":2,\"cs\":1},\"0_14\":{\"r\":0,\"c\":14,\"rs\":2,\"cs\":1},\"0_15\":{\"r\":0,\"c\":15,\"rs\":2,\"cs\":1},\"0_16\":{\"r\":0,\"c\":16,\"rs\":2,\"cs\":1},\"0_17\":{\"r\":0,\"c\":17,\"rs\":2,\"cs\":1},\"0_18\":{\"r\":0,\"c\":18,\"rs\":2,\"cs\":1},\"0_19\":{\"r\":0,\"c\":19,\"rs\":2,\"cs\":1},\"0_20\":{\"r\":0,\"c\":20,\"rs\":2,\"cs\":1},\"0_21\":{\"r\":0,\"c\":21,\"rs\":2,\"cs\":1},\"0_22\":{\"r\":0,\"c\":22,\"rs\":2,\"cs\":1},\"0_23\":{\"r\":0,\"c\":23,\"rs\":2,\"cs\":1},\"0_24\":{\"r\":0,\"c\":24,\"rs\":2,\"cs\":1},\"0_25\":{\"r\":0,\"c\":25,\"rs\":2,\"cs\":1},\"0_26\":{\"r\":0,\"c\":26,\"rs\":2,\"cs\":1},\"0_27\":{\"r\":0,\"c\":27,\"rs\":2,\"cs\":1},\"0_28\":{\"r\":0,\"c\":28,\"rs\":2,\"cs\":1},\"0_29\":{\"r\":0,\"c\":29,\"rs\":2,\"cs\":1},\"0_30\":{\"r\":0,\"c\":30,\"rs\":2,\"cs\":1},\"0_31\":{\"r\":0,\"c\":31,\"rs\":2,\"cs\":1},\"0_32\":{\"r\":0,\"c\":32,\"rs\":2,\"cs\":1},\"0_33\":{\"r\":0,\"c\":33,\"rs\":2,\"cs\":1},\"0_34\":{\"r\":0,\"c\":34,\"rs\":2,\"cs\":1},\"0_35\":{\"r\":0,\"c\":35,\"rs\":2,\"cs\":1},\"0_36\":{\"r\":0,\"c\":36,\"rs\":2,\"cs\":1},\"0_37\":{\"r\":0,\"c\":37,\"rs\":2,\"cs\":1},\"0_38\":{\"r\":0,\"c\":38,\"rs\":2,\"cs\":1},\"0_39\":{\"r\":0,\"c\":39,\"rs\":2,\"cs\":1},\"0_40\":{\"r\":0,\"c\":40,\"rs\":2,\"cs\":1},\"0_41\":{\"r\":0,\"c\":41,\"rs\":2,\"cs\":1},\"0_42\":{\"r\":0,\"c\":42,\"rs\":2,\"cs\":1},\"0_43\":{\"r\":0,\"c\":43,\"rs\":2,\"cs\":1},\"0_44\":{\"r\":0,\"c\":44,\"rs\":2,\"cs\":1},\"0_45\":{\"r\":0,\"c\":45,\"rs\":2,\"cs\":1},\"0_46\":{\"r\":0,\"c\":46,\"rs\":2,\"cs\":1},\"0_8\":{\"r\":0,\"c\":8,\"rs\":2,\"cs\":1}},\"borderInfo\":[{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":0,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":1,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":2,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":3,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":4,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":5,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":0,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":1,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":2,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":3,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":4,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":5,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":6,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":7,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":8,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":9,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":10,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":11,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":12,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":13,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":14,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":15,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":16,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":17,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":18,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":19,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":20,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":21,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":22,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":23,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":24,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":25,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":26,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":27,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":28,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":29,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":30,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":31,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":32,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":33,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":34,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":35,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":36,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":37,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":38,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":39,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":40,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":41,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":42,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":43,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":44,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":45,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":46,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":6,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":7,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":8,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":9,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":10,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":11,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":12,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":13,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":14,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":15,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":16,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":17,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":18,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":19,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":20,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":21,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":22,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":23,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":24,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":25,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":26,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":27,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":28,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":29,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":30,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":31,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":32,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":33,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":34,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":35,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":36,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":37,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":38,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":39,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":40,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":41,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":42,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":43,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":44,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":45,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":46,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":8,\"l\":{\"color\":\"rgb(0, 0, 0)\",\"style\":1},\"r\":{\"color\":\"rgb(0, 0, 0)\",\"style\":1},\"t\":{\"color\":\"rgb(0, 0, 0)\",\"style\":1},\"b\":null}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":8,\"l\":{\"color\":\"rgb(0, 0, 0)\",\"style\":1},\"r\":{\"color\":\"rgb(0, 0, 0)\",\"style\":1},\"t\":null,\"b\":{\"color\":\"rgb(0, 0, 0)\",\"style\":1}}}],\"rowlen\":{\"0\":28.91384220123291},\"columnlen\":{\"0\":38,\"1\":36,\"2\":133,\"3\":136,\"4\":91,\"5\":117.18110656738281,\"6\":114.73300170898438,\"8\":124,\"10\":159.5217742919922,\"11\":129.400146484375,\"12\":92.75015258789062,\"13\":75.64207458496094,\"14\":129.4073028564453,\"15\":92.75730895996094,\"16\":75.64923095703125,\"17\":110,\"18\":99.2569580078125,\"19\":82.14888000488281,\"20\":131.0250701904297,\"21\":94.37507629394531,\"22\":77.26699829101562,\"23\":130.21617126464844,\"24\":93.56617736816406,\"25\":76.45809936523438,\"26\":129.400146484375,\"27\":92.75015258789062,\"28\":75.64207458496094,\"29\":135.11236572265625,\"30\":91.94126892089844,\"31\":74.83319091796875,\"32\":141.62635803222656,\"33\":104.97636413574219,\"34\":87.8682861328125,\"35\":137.56048583984375,\"36\":100.91049194335938,\"37\":83.80241394042969,\"38\":133.48033142089844,\"39\":96.83033752441406,\"40\":79.72225952148438,\"41\":140.53831481933594,\"42\":96.82318115234375,\"43\":79.71510314941406,\"44\":129.41445922851562,\"45\":92.76446533203125,\"46\":75.65638732910156},\"customWidth\":{\"0\":1,\"1\":1,\"2\":1,\"3\":1,\"4\":1,\"8\":1,\"17\":1},\"customHeight\":{},\"rowhidden\":{}},\"index\":\"1\",\"status\":1,\"order\":0,\"zoomRatio\":1,\"showGridLines\":\"1\",\"defaultColWidth\":72,\"defaultRowHeight\":20,\"celldata\":[{\"r\":0,\"c\":0,\"v\":{\"v\":\"NO.\",\"ct\":{\"fa\":\"@\",\"t\":\"s\"},\"m\":\"NO.\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":0,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":1,\"v\":{\"v\":\"OP\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"OP\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":1,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":2,\"v\":{\"v\":\"DIV\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"DIV\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":2,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":3,\"v\":{\"v\":\"NAMA PROYEK\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"NAMA PROYEK\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":3,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":4,\"v\":{\"v\":\"REG/JO\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"REG/JO\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":4,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":5,\"v\":{\"v\":\"PROJECT TYPE\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"PROJECT TYPE\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":5,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":6,\"v\":{\"v\":\"SUMBER DANA\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"SUMBER DANA\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":6,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":7,\"v\":{\"v\":\"BLN\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"BLN\",\"bg\":\"rgb(128, 96, 0)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":7,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":8,\"v\":{\"v\":\"RKAPK\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"RKAPK\",\"bg\":\"rgb(128, 96, 0)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":8,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":9,\"v\":{\"v\":\"BLN\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"BLN\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":9,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":10,\"v\":{\"v\":\"Prognosa\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"Prognosa\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":10,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":11,\"v\":{\"v\":\"PROYEKSI JAN\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"PROYEKSI JAN\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":11,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":12,\"v\":{\"v\":\"REAL JAN\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"REAL JAN\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":12,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":13,\"v\":{\"v\":\"S/D JAN\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"S/D JAN\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":13,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":14,\"v\":{\"v\":\"PROYEKSI FEB\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"PROYEKSI FEB\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":14,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":15,\"v\":{\"v\":\"REAL FEB\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"REAL FEB\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":15,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":16,\"v\":{\"v\":\"S/D FEB\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"S/D FEB\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":16,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":17,\"v\":{\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"#ffffff\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":17,\"rs\":2,\"cs\":1},\"m\":\"PROYEKSI FEB\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"v\":\"PROYEKSI FEB\"}},{\"r\":0,\"c\":18,\"v\":{\"v\":\"REAL MAR\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"REAL MAR\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":18,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":19,\"v\":{\"v\":\"S/D MAR\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"S/D MAR\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":19,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":20,\"v\":{\"v\":\"PROYEKSI APR\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"PROYEKSI APR\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":20,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":21,\"v\":{\"v\":\"REAL APR\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"REAL APR\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":21,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":22,\"v\":{\"v\":\"S/D APR\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"S/D APR\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":22,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":23,\"v\":{\"v\":\"PROYEKSI MEI\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"PROYEKSI MEI\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":23,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":24,\"v\":{\"v\":\"REAL MEI\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"REAL MEI\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":24,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":25,\"v\":{\"v\":\"S/D MEI\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"S/D MEI\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":25,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":26,\"v\":{\"v\":\"PROYEKSI JUN\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"PROYEKSI JUN\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":26,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":27,\"v\":{\"v\":\"REAL JUN\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"REAL JUN\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":27,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":28,\"v\":{\"v\":\"S/D JUN\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"S/D JUN\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":28,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":29,\"v\":{\"v\":\" PROYEKSI JUL \",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\" PROYEKSI JUL \",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":29,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":30,\"v\":{\"v\":\"REAL JUL\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"REAL JUL\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":30,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":31,\"v\":{\"v\":\"S/D JUL\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"S/D JUL\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":31,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":32,\"v\":{\"v\":\"PROYEKSI AGUS\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"PROYEKSI AGUS\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":32,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":33,\"v\":{\"v\":\"REAL AGUS\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"REAL AGUS\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":33,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":34,\"v\":{\"v\":\"S/D AGUS\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"S/D AGUS\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":34,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":35,\"v\":{\"v\":\"PROYEKSI SEPT\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"PROYEKSI SEPT\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":35,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":36,\"v\":{\"v\":\"REAL SEPT\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"REAL SEPT\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":36,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":37,\"v\":{\"v\":\"S/D SEPT\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"S/D SEPT\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":37,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":38,\"v\":{\"v\":\"PROYEKSI OKT\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"PROYEKSI OKT\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":38,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":39,\"v\":{\"v\":\"REAL OKT\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"REAL OKT\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":39,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":40,\"v\":{\"v\":\"S/D OKT\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"S/D OKT\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":40,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":41,\"v\":{\"v\":\" PROYEKSI NOV \",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\" PROYEKSI NOV \",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":41,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":42,\"v\":{\"v\":\"REAL NOV\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"REAL NOV\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":42,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":43,\"v\":{\"v\":\"S/D NOV\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"S/D NOV\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":43,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":44,\"v\":{\"v\":\"PROYEKSI DES\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"PROYEKSI DES\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":44,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":45,\"v\":{\"v\":\"REAL DES\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"REAL DES\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":45,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":46,\"v\":{\"v\":\"S/D DES\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"S/D DES\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":46,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":47,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":0,\"c\":48,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":0,\"c\":49,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":0,\"c\":50,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":0,\"c\":51,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":0,\"c\":52,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":0,\"c\":53,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":0,\"c\":54,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":0,\"c\":55,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":0,\"c\":56,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":0,\"c\":57,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":0,\"c\":58,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":0,\"c\":59,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":0,\"v\":{\"mc\":{\"r\":0,\"c\":0},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"}}},{\"r\":1,\"c\":1,\"v\":{\"mc\":{\"r\":0,\"c\":1},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"}}},{\"r\":1,\"c\":2,\"v\":{\"mc\":{\"r\":0,\"c\":2},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"}}},{\"r\":1,\"c\":3,\"v\":{\"mc\":{\"r\":0,\"c\":3},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"}}},{\"r\":1,\"c\":4,\"v\":{\"mc\":{\"r\":0,\"c\":4},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"}}},{\"r\":1,\"c\":5,\"v\":{\"mc\":{\"r\":0,\"c\":5},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"}}},{\"r\":1,\"c\":6,\"v\":{\"mc\":{\"r\":0,\"c\":6},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"}}},{\"r\":1,\"c\":7,\"v\":{\"mc\":{\"r\":0,\"c\":7},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":8,\"v\":{\"mc\":{\"r\":0,\"c\":8}}},{\"r\":1,\"c\":9,\"v\":{\"mc\":{\"r\":0,\"c\":9},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":10,\"v\":{\"mc\":{\"r\":0,\"c\":10},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":11,\"v\":{\"mc\":{\"r\":0,\"c\":11},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":12,\"v\":{\"mc\":{\"r\":0,\"c\":12},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":13,\"v\":{\"mc\":{\"r\":0,\"c\":13},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":14,\"v\":{\"mc\":{\"r\":0,\"c\":14},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":15,\"v\":{\"mc\":{\"r\":0,\"c\":15},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":16,\"v\":{\"mc\":{\"r\":0,\"c\":16},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":17,\"v\":{\"mc\":{\"r\":0,\"c\":17},\"fc\":\"#ffffff\",\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":18,\"v\":{\"mc\":{\"r\":0,\"c\":18},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":19,\"v\":{\"mc\":{\"r\":0,\"c\":19},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":20,\"v\":{\"mc\":{\"r\":0,\"c\":20},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":21,\"v\":{\"mc\":{\"r\":0,\"c\":21},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":22,\"v\":{\"mc\":{\"r\":0,\"c\":22},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":23,\"v\":{\"mc\":{\"r\":0,\"c\":23},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":24,\"v\":{\"mc\":{\"r\":0,\"c\":24},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":25,\"v\":{\"mc\":{\"r\":0,\"c\":25},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":26,\"v\":{\"mc\":{\"r\":0,\"c\":26},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":27,\"v\":{\"mc\":{\"r\":0,\"c\":27},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":28,\"v\":{\"mc\":{\"r\":0,\"c\":28},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":29,\"v\":{\"mc\":{\"r\":0,\"c\":29},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":30,\"v\":{\"mc\":{\"r\":0,\"c\":30},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":31,\"v\":{\"mc\":{\"r\":0,\"c\":31},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":32,\"v\":{\"mc\":{\"r\":0,\"c\":32},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":33,\"v\":{\"mc\":{\"r\":0,\"c\":33},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":34,\"v\":{\"mc\":{\"r\":0,\"c\":34},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":35,\"v\":{\"mc\":{\"r\":0,\"c\":35},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":36,\"v\":{\"mc\":{\"r\":0,\"c\":36},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":37,\"v\":{\"mc\":{\"r\":0,\"c\":37},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":38,\"v\":{\"mc\":{\"r\":0,\"c\":38},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":39,\"v\":{\"mc\":{\"r\":0,\"c\":39},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":40,\"v\":{\"mc\":{\"r\":0,\"c\":40},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":41,\"v\":{\"mc\":{\"r\":0,\"c\":41},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":42,\"v\":{\"mc\":{\"r\":0,\"c\":42},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":43,\"v\":{\"mc\":{\"r\":0,\"c\":43},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":44,\"v\":{\"mc\":{\"r\":0,\"c\":44},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":45,\"v\":{\"mc\":{\"r\":0,\"c\":45},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":46,\"v\":{\"mc\":{\"r\":0,\"c\":46},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":47,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":48,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":49,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":50,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":51,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":52,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":53,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":54,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":55,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":56,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":57,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":58,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":59,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":0,\"v\":{\"v\":1,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"1\"}},{\"r\":2,\"c\":1,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"g\"}}},{\"r\":2,\"c\":2,\"v\":{\"m\":\"Gedung\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"v\":\"Gedung\"}},{\"r\":2,\"c\":3,\"v\":{\"m\":\"Hotel Fave 6 Lantai\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"v\":\"Hotel Fave 6 Lantai\"}},{\"r\":2,\"c\":4,\"v\":{\"m\":\"REG\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"v\":\"REG\"}},{\"r\":2,\"c\":7,\"v\":{\"v\":2,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"2\"}},{\"r\":2,\"c\":8,\"v\":{\"v\":3000000,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"3000000\"}},{\"r\":2,\"c\":9,\"v\":{\"v\":6,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"6\"}},{\"r\":2,\"c\":10,\"v\":{\"v\":350,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"350\"}},{\"r\":2,\"c\":11,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":0,\"m\":\"0\",\"f\":\"=IF(H3=1,I3,0)\"}},{\"r\":2,\"c\":12,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":0,\"m\":\"0\",\"f\":\"=IF(J3=1,K3,0)\"}},{\"r\":2,\"c\":13,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"f\":\"=IF(L3=0,M3,L3)\",\"v\":0,\"m\":\"0\"}},{\"r\":2,\"c\":14,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":3000000,\"m\":\"3000000\",\"f\":\"=IF(H3=2,I3,0)\"}},{\"r\":2,\"c\":15,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":350,\"m\":\"350\",\"f\":\"=IF(H3=2,K3,0)\"}},{\"r\":2,\"c\":16,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"f\":\"=IF(P3=0,(N3+O3),(N3+P3))\",\"v\":350,\"m\":\"350\"}},{\"r\":2,\"c\":17,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":0,\"m\":\"0\",\"f\":\"=IF(H3=3,I3,0)\"}},{\"r\":2,\"c\":18,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":0,\"m\":\"0\",\"f\":\"=IF(J3=3,K3,0)\"}},{\"r\":2,\"c\":19,\"v\":{\"v\":350,\"f\":\"=IF(S3=0,(Q3+R3),(Q3+S3))\",\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"350\"}},{\"r\":2,\"c\":20,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":0,\"m\":\"0\",\"f\":\"=IF(H3=4,I3,0)\"}},{\"r\":2,\"c\":21,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":0,\"m\":\"0\",\"f\":\"=IF(J3=4,K3,0)\"}},{\"r\":2,\"c\":22,\"v\":{\"v\":350,\"f\":\"=IF(V3=0,(T3+U3),(T3+V3))\",\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"350\"}},{\"r\":2,\"c\":23,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":0,\"m\":\"0\",\"f\":\"=IF(H3=5,I3,0)\"}},{\"r\":2,\"c\":24,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":0,\"m\":\"0\",\"f\":\"=IF(J3=5,K3,0)\"}},{\"r\":2,\"c\":25,\"v\":{\"v\":350,\"f\":\"=IF(Y3=0,(W3+X3),(W3+Y3))\",\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"350\"}},{\"r\":2,\"c\":26,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":0,\"m\":\"0\",\"f\":\"=IF(H3=6,I3,0)\"}},{\"r\":2,\"c\":27,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":350,\"m\":\"350\",\"f\":\"=IF(J3=6,K3,0)\"}},{\"r\":2,\"c\":28,\"v\":{\"v\":700,\"f\":\"=IF(AB3=0,(Z3+AA3),(Z3+AB3))\",\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"700\"}},{\"r\":2,\"c\":29,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":0,\"m\":\"0\",\"f\":\"=IF(H3=7,I3,0)\"}},{\"r\":2,\"c\":30,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":350,\"m\":\"350\",\"f\":\"=IF(J3=6,K3,0)\"}},{\"r\":2,\"c\":31,\"v\":{\"v\":1050,\"f\":\"=IF(AE3=0,(AC3+AD3),(AC3+AE3))\",\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"1050\"}},{\"r\":2,\"c\":32,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":0,\"m\":\"0\",\"f\":\"=IF(H3=8,I3,0)\"}},{\"r\":2,\"c\":33,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":0,\"m\":\"0\",\"f\":\"=IF(J3=8,K3,0)\"}},{\"r\":2,\"c\":34,\"v\":{\"v\":1050,\"f\":\"=IF(AH3=0,(AF3+AG3),(AF3+AH3))\",\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"1050\"}},{\"r\":2,\"c\":35,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":0,\"m\":\"0\",\"f\":\"=IF(H3=9,I3,0)\"}},{\"r\":2,\"c\":36,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":0,\"m\":\"0\",\"f\":\"=IF(J3=9,K3,0)\"}},{\"r\":2,\"c\":37,\"v\":{\"v\":1050,\"f\":\"=IF(AK3=0,(AI3+AJ3),(AI3+AK3))\",\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"1050\"}},{\"r\":2,\"c\":38,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":0,\"m\":\"0\",\"f\":\"=IF(H3=10,I3,0)\"}},{\"r\":2,\"c\":39,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":0,\"m\":\"0\",\"f\":\"=IF(J3=10,K3,0)\"}},{\"r\":2,\"c\":40,\"v\":{\"v\":1050,\"f\":\"=IF(AN3=0,(AL3+AM3),(AL3+AN3))\",\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"1050\"}},{\"r\":2,\"c\":41,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":0,\"m\":\"0\",\"f\":\"=IF(H3=11,I3,0)\"}},{\"r\":2,\"c\":42,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":0,\"m\":\"0\",\"f\":\"=IF(J3=11,K3,0)\"}},{\"r\":2,\"c\":43,\"v\":{\"v\":1050,\"f\":\"=IF(AQ3=0,(AO3+AP3),(AO3+AQ3))\",\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"1050\"}},{\"r\":2,\"c\":44,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":0,\"m\":\"0\",\"f\":\"=IF(H3=12,I3,0)\"}},{\"r\":2,\"c\":45,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":0,\"m\":\"0\",\"f\":\"=IF(J3=12,K3,0)\"}},{\"r\":2,\"c\":46,\"v\":{\"v\":1050,\"f\":\"=IF(AT3=0,(AR3+AS3),(AR3+AT3))\",\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"1050\"}}],\"calcChain\":[{\"r\":2,\"c\":13,\"index\":\"1\",\"func\":[true,0,\"=IF(L3=0,M3,L3)\"]},{\"r\":2,\"c\":16,\"index\":\"1\",\"func\":[true,350,\"=IF(P3=0,(N3+O3),(N3+P3))\"]},{\"r\":2,\"c\":19,\"index\":\"1\",\"func\":[true,350,\"=IF(S3=0,(Q3+R3),(Q3+S3))\"]},{\"r\":2,\"c\":22,\"index\":\"1\",\"func\":[true,700,\"=IF(V3=0,(T3+U3),(T3+V3))\"]},{\"r\":2,\"c\":25,\"index\":\"1\",\"func\":[true,700,\"=IF(Y3=0,(W3+X3),(W3+Y3))\"]},{\"r\":2,\"c\":28,\"index\":\"1\",\"func\":[true,700,\"=IF(AB3=0,(Z3+AA3),(Z3+AB3))\"]},{\"r\":2,\"c\":31,\"index\":\"1\",\"func\":[true,700,\"=IF(AE3=0,(AC3+AD3),(AC3+AE3))\"]},{\"r\":2,\"c\":34,\"index\":\"1\",\"func\":[true,700,\"=IF(AH3=0,(AF3+AG3),(AF3+AH3))\"]},{\"r\":2,\"c\":37,\"index\":\"1\",\"func\":[true,700,\"=IF(AK3=0,(AI3+AJ3),(AI3+AK3))\"]},{\"r\":2,\"c\":40,\"index\":\"1\",\"func\":[true,700,\"=IF(AN3=0,(AL3+AM3),(AL3+AN3))\"]},{\"r\":2,\"c\":43,\"index\":\"1\",\"func\":[true,700,\"=IF(AQ3=0,(AO3+AP3),(AO3+AQ3))\"]},{\"r\":2,\"c\":46,\"index\":\"1\",\"func\":[true,700,\"=IF(AT3=0,(AR3+AS3),(AR3+AT3))\"]},{\"r\":2,\"c\":11,\"index\":\"1\",\"func\":[true,0,\"=IF(H3=1,I3,0)\"]},{\"r\":2,\"c\":12,\"index\":\"1\",\"func\":[true,0,\"=IF(J3=1,K3,0)\"]},{\"r\":2,\"c\":14,\"index\":\"1\",\"func\":[true,3000000,\"=IF(H3=2,I3,0)\"]},{\"r\":2,\"c\":15,\"index\":\"1\",\"func\":[true,350,\"=IF(H3=2,K3,0)\"]},{\"r\":2,\"c\":17,\"index\":\"1\",\"func\":[true,0,\"=IF(H3=3,I3,0)\"]},{\"r\":2,\"c\":18,\"index\":\"1\",\"func\":[true,0,\"=IF(J3=3,K3,0)\"]},{\"r\":2,\"c\":20,\"index\":\"1\",\"func\":[true,0,\"=IF(H3=4,I3,0)\"]},{\"r\":2,\"c\":21,\"index\":\"1\",\"func\":[true,350,\"=IF(J3=4,K3,0)\"]},{\"r\":2,\"c\":23,\"index\":\"1\",\"func\":[true,0,\"=IF(H3=5,I3,0)\"]},{\"r\":2,\"c\":24,\"index\":\"1\",\"func\":[true,0,\"=IF(J3=5,K3,0)\"]},{\"r\":2,\"c\":26,\"index\":\"1\",\"func\":[true,0,\"=IF(H3=6,I3,0)\"]},{\"r\":2,\"c\":27,\"index\":\"1\",\"func\":[true,0,\"=IF(J3=6,K3,0)\"]},{\"r\":2,\"c\":29,\"index\":\"1\",\"func\":[true,0,\"=IF(H3=7,I3,0)\"]},{\"r\":2,\"c\":30,\"index\":\"1\",\"func\":[true,0,\"=IF(J3=6,K3,0)\"]},{\"r\":2,\"c\":32,\"index\":\"1\",\"func\":[true,0,\"=IF(H3=8,I3,0)\"]},{\"r\":2,\"c\":33,\"index\":\"1\",\"func\":[true,0,\"=IF(J3=8,K3,0)\"]},{\"r\":2,\"c\":35,\"index\":\"1\",\"func\":[true,0,\"=IF(H3=9,I3,0)\"]},{\"r\":2,\"c\":36,\"index\":\"1\",\"func\":[true,0,\"=IF(J3=9,K3,0)\"]},{\"r\":2,\"c\":38,\"index\":\"1\",\"func\":[true,0,\"=IF(H3=10,I3,0)\"]},{\"r\":2,\"c\":39,\"index\":\"1\",\"func\":[true,0,\"=IF(J3=10,K3,0)\"]},{\"r\":2,\"c\":41,\"index\":\"1\",\"func\":[true,0,\"=IF(H3=11,I3,0)\"]},{\"r\":2,\"c\":42,\"index\":\"1\",\"func\":[true,0,\"=IF(J3=11,K3,0)\"]},{\"r\":2,\"c\":44,\"index\":\"1\",\"func\":[true,0,\"=IF(H3=12,I3,0)\"]},{\"r\":2,\"c\":45,\"index\":\"1\",\"func\":[true,0,\"=IF(J3=12,K3,0)\"]}],\"jfgird_select_save\":[],\"luckysheet_select_save\":[{\"left\":347,\"width\":91,\"top\":51,\"height\":20,\"left_move\":347,\"width_move\":91,\"top_move\":51,\"height_move\":20,\"row\":[2,2],\"column\":[4,4],\"row_focus\":2,\"column_focus\":4}],\"visibledatarow\":[30,51,72,93,114,135,156,177,198,219,240,261,282,303,324,345,366,387,408,429,450,471,492,513,534,555,576,597,618,639,660,681,702,723,744,765,786,807,828,849,870,891,912,933,954,975,996,1017,1038,1059,1080,1101,1122,1143,1164,1185,1206,1227,1248,1269,1290,1311,1332,1353,1374,1395,1416,1437,1458,1479,1500,1521,1542,1563,1584,1605,1626,1647,1668,1689,1710,1731,1752,1773],\"visibledatacolumn\":[39,76,210,347,439,557,673,746,871,944,1105,1235,1329,1406,1536,1630,1707,1818,1918,2001,2133,2228,2306,2437,2532,2609,2739,2833,2910,3046,3139,3215,3358,3464,3553,3692,3794,3879,4013,4111,4192,4334,4432,4513,4643,4737,4814,4887,4960,5033,5106,5179,5252,5325,5398,5471,5544,5617,5690,5763],\"ch_width\":5883,\"rh_height\":1853,\"luckysheet_selection_range\":[],\"scrollLeft\":0,\"scrollTop\":0,\"images\":{},\"filter_select\":null,\"filter\":null,\"luckysheet_conditionformat_save\":[],\"luckysheet_alternateformat_save\":[],\"dataVerification\":{},\"hyperlink\":{},\"dynamicArray\":[]},{\"name\":\"Gedung\",\"config\":{\"merge\":{\"1_1\":{\"r\":1,\"c\":1,\"rs\":1,\"cs\":3},\"1_11\":{\"r\":1,\"c\":11,\"rs\":1,\"cs\":1},\"1_16\":{\"r\":1,\"c\":16,\"rs\":1,\"cs\":1},\"24_0\":{\"r\":24,\"c\":0,\"rs\":1,\"cs\":14}},\"rowlen\":{\"0\":20},\"columnlen\":{\"0\":37,\"5\":43,\"6\":120,\"10\":50,\"11\":156.1988525390625,\"16\":153.3302459716797},\"customWidth\":{\"0\":1,\"5\":1,\"6\":1,\"10\":1},\"colhidden\":{},\"customHeight\":{\"0\":1},\"rowhidden\":{}},\"index\":\"2\",\"status\":0,\"order\":1,\"zoomRatio\":1,\"showGridLines\":\"1\",\"defaultColWidth\":72,\"defaultRowHeight\":20,\"celldata\":[{\"r\":1,\"c\":0,\"v\":{\"m\":\"No\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"v\":\"No\",\"bg\":\"#cccccc\",\"fs\":\"12\",\"bl\":1}},{\"r\":1,\"c\":1,\"v\":{\"v\":\" REALISASI S.D SEPT : \",\"ct\":{\"fa\":\"@\",\"t\":\"s\"},\"m\":\" REALISASI S.D SEPT : \",\"bg\":\"rgb(217, 217, 217)\",\"bl\":1,\"it\":0,\"ff\":0,\"fs\":13,\"fc\":\"rgb(0, 0, 0)\",\"ht\":1,\"vt\":0,\"mc\":{\"r\":1,\"c\":1,\"rs\":1,\"cs\":3}}},{\"r\":1,\"c\":2,\"v\":{\"mc\":{\"r\":1,\"c\":1}}},{\"r\":1,\"c\":3,\"v\":{\"mc\":{\"r\":1,\"c\":1}}},{\"r\":1,\"c\":4,\"v\":{\"bg\":\"#ffffff\",\"bl\":1,\"it\":0,\"ff\":0,\"fs\":13,\"fc\":\"rgb(0, 0, 0)\",\"ht\":1,\"vt\":0}},{\"r\":1,\"c\":5,\"v\":{\"m\":\"No\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"v\":\"No\",\"bg\":\"#cccccc\",\"ht\":\"0\",\"fs\":\"12\",\"bl\":1}},{\"r\":1,\"c\":6,\"v\":{\"v\":\"REAL OKT :\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"REAL OKT :\",\"bg\":\"rgb(217, 217, 217)\",\"bl\":1,\"it\":0,\"ff\":0,\"fs\":13,\"fc\":\"rgb(0, 0, 0)\",\"ht\":1,\"vt\":0}},{\"r\":1,\"c\":7,\"v\":{\"v\":\" PK - 47 \",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\" PK - 47 \",\"bg\":\"rgb(155, 194, 230)\",\"bl\":1,\"it\":0,\"ff\":0,\"fs\":13,\"fc\":\"rgb(0, 0, 0)\",\"ht\":0,\"vt\":0}},{\"r\":1,\"c\":8,\"v\":{\"v\":\" PK - 48 \",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\" PK - 48 \",\"bg\":\"rgb(248, 203, 173)\",\"bl\":1,\"it\":0,\"ff\":0,\"fs\":13,\"fc\":\"rgb(0, 0, 0)\",\"ht\":0,\"vt\":0}},{\"r\":1,\"c\":9,\"v\":{\"bg\":\"#ffffff\",\"bl\":1,\"it\":0,\"ff\":0,\"fs\":13,\"fc\":\"rgb(0, 0, 0)\",\"ht\":1,\"vt\":0}},{\"r\":1,\"c\":10,\"v\":{\"m\":\"No\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"v\":\"No\",\"bg\":\"#cccccc\",\"ht\":\"0\",\"fs\":\"12\",\"bl\":1}},{\"r\":1,\"c\":11,\"v\":{\"v\":\"PROYEKSI\\n  NOP :\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"PROYEKSI\\n  NOP :\",\"bg\":\"rgb(217, 217, 217)\",\"bl\":1,\"it\":0,\"ff\":0,\"fs\":13,\"fc\":\"rgb(0, 0, 0)\",\"ht\":1,\"vt\":0,\"mc\":{\"r\":1,\"c\":11,\"rs\":1,\"cs\":1}}},{\"r\":1,\"c\":12,\"v\":{\"v\":\" PK - 47 \",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\" PK - 47 \",\"bg\":\"rgb(155, 194, 230)\",\"bl\":1,\"it\":0,\"ff\":0,\"fs\":13,\"fc\":\"rgb(0, 0, 0)\",\"ht\":0,\"vt\":0}},{\"r\":1,\"c\":13,\"v\":{\"v\":\" PK - 48 \",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\" PK - 48 \",\"bg\":\"rgb(248, 203, 173)\",\"bl\":1,\"it\":0,\"ff\":0,\"fs\":13,\"fc\":\"rgb(0, 0, 0)\",\"ht\":0,\"vt\":0}},{\"r\":1,\"c\":14,\"v\":{\"bg\":\"#ffffff\",\"bl\":0,\"it\":0,\"ff\":0,\"fs\":13,\"fc\":\"rgb(0, 0, 0)\",\"ht\":1,\"vt\":0}},{\"r\":1,\"c\":15,\"v\":{\"m\":\"No\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"v\":\"No\",\"ht\":\"0\",\"bg\":\"#cccccc\",\"bl\":1,\"fs\":\"12\"}},{\"r\":1,\"c\":16,\"v\":{\"v\":\"PROYEKSI\\n  DES :\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"PROYEKSI\\n  DES :\",\"bg\":\"rgb(217, 217, 217)\",\"bl\":1,\"it\":0,\"ff\":0,\"fs\":13,\"fc\":\"rgb(0, 0, 0)\",\"ht\":1,\"vt\":0,\"mc\":{\"r\":1,\"c\":16,\"rs\":1,\"cs\":1}}},{\"r\":1,\"c\":17,\"v\":{\"v\":\" PK - 47 \",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\" PK - 47 \",\"bg\":\"rgb(155, 194, 230)\",\"bl\":1,\"it\":0,\"ff\":0,\"fs\":13,\"fc\":\"rgb(0, 0, 0)\",\"ht\":0,\"vt\":0}},{\"r\":1,\"c\":18,\"v\":{\"v\":\" PK - 48 \",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\" PK - 48 \",\"bg\":\"rgb(248, 203, 173)\",\"bl\":1,\"it\":0,\"ff\":0,\"fs\":13,\"fc\":\"rgb(0, 0, 0)\",\"ht\":0,\"vt\":0}},{\"r\":2,\"c\":0,\"v\":{\"v\":1,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"1\"}},{\"r\":2,\"c\":5,\"v\":{\"v\":1,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"1\"}},{\"r\":2,\"c\":10,\"v\":{\"v\":1,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"1\"}},{\"r\":2,\"c\":15,\"v\":{\"v\":1,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"1\"}},{\"r\":3,\"c\":0,\"v\":{\"v\":2,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"2\"}},{\"r\":3,\"c\":5,\"v\":{\"v\":2,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"2\"}},{\"r\":3,\"c\":10,\"v\":{\"v\":2,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"2\"}},{\"r\":3,\"c\":15,\"v\":{\"v\":2,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"2\"}},{\"r\":4,\"c\":0,\"v\":{\"v\":3,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"3\"}},{\"r\":4,\"c\":5,\"v\":{\"v\":3,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"3\"}},{\"r\":4,\"c\":10,\"v\":{\"v\":3,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"3\"}},{\"r\":4,\"c\":15,\"v\":{\"v\":3,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"3\"}},{\"r\":5,\"c\":0,\"v\":{\"v\":4,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"4\"}},{\"r\":5,\"c\":5,\"v\":{\"v\":4,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"4\"}},{\"r\":5,\"c\":10,\"v\":{\"v\":4,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"4\"}},{\"r\":5,\"c\":15,\"v\":{\"v\":4,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"4\"}},{\"r\":6,\"c\":0,\"v\":{\"v\":5,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"5\"}},{\"r\":6,\"c\":5,\"v\":{\"v\":5,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"5\"}},{\"r\":6,\"c\":10,\"v\":{\"v\":5,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"5\"}},{\"r\":6,\"c\":15,\"v\":{\"v\":5,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"5\"}},{\"r\":7,\"c\":0,\"v\":{\"v\":6,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"6\"}},{\"r\":7,\"c\":5,\"v\":{\"v\":6,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"6\"}},{\"r\":7,\"c\":10,\"v\":{\"v\":6,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"6\"}},{\"r\":7,\"c\":15,\"v\":{\"v\":6,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"6\"}},{\"r\":8,\"c\":0,\"v\":{\"v\":7,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"7\"}},{\"r\":8,\"c\":5,\"v\":{\"v\":7,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"7\"}},{\"r\":8,\"c\":10,\"v\":{\"v\":7,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"7\"}},{\"r\":8,\"c\":15,\"v\":{\"v\":7,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"7\"}},{\"r\":9,\"c\":0,\"v\":{\"v\":8,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"8\"}},{\"r\":9,\"c\":5,\"v\":{\"v\":8,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"8\"}},{\"r\":9,\"c\":10,\"v\":{\"v\":8,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"8\"}},{\"r\":9,\"c\":15,\"v\":{\"v\":8,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"8\"}},{\"r\":10,\"c\":0,\"v\":{\"v\":9,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"9\"}},{\"r\":10,\"c\":5,\"v\":{\"v\":9,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"9\"}},{\"r\":10,\"c\":10,\"v\":{\"v\":9,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"9\"}},{\"r\":10,\"c\":15,\"v\":{\"v\":9,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"9\"}},{\"r\":11,\"c\":0,\"v\":{\"v\":10,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"10\"}},{\"r\":11,\"c\":5,\"v\":{\"v\":10,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"10\"}},{\"r\":11,\"c\":10,\"v\":{\"v\":10,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"10\"}},{\"r\":11,\"c\":15,\"v\":{\"v\":10,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"10\"}},{\"r\":12,\"c\":0,\"v\":{\"v\":11,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"11\"}},{\"r\":12,\"c\":5,\"v\":{\"v\":11,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"11\"}},{\"r\":12,\"c\":10,\"v\":{\"v\":11,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"11\"}},{\"r\":12,\"c\":15,\"v\":{\"v\":11,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"11\"}},{\"r\":13,\"c\":0,\"v\":{\"v\":12,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"12\"}},{\"r\":13,\"c\":5,\"v\":{\"v\":12,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"12\"}},{\"r\":13,\"c\":10,\"v\":{\"v\":12,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"12\"}},{\"r\":13,\"c\":15,\"v\":{\"v\":12,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"12\"}},{\"r\":14,\"c\":0,\"v\":{\"v\":13,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"13\"}},{\"r\":14,\"c\":5,\"v\":{\"v\":13,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"13\"}},{\"r\":14,\"c\":10,\"v\":{\"v\":13,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"13\"}},{\"r\":14,\"c\":15,\"v\":{\"v\":13,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"13\"}},{\"r\":15,\"c\":0,\"v\":{\"v\":14,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"14\"}},{\"r\":15,\"c\":5,\"v\":{\"v\":14,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"14\"}},{\"r\":15,\"c\":10,\"v\":{\"v\":14,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"14\"}},{\"r\":15,\"c\":15,\"v\":{\"v\":14,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"14\"}},{\"r\":16,\"c\":0,\"v\":{\"v\":15,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"15\"}},{\"r\":16,\"c\":5,\"v\":{\"v\":15,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"15\"}},{\"r\":16,\"c\":10,\"v\":{\"v\":15,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"15\"}},{\"r\":16,\"c\":15,\"v\":{\"v\":15,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"15\"}},{\"r\":17,\"c\":0,\"v\":{\"v\":16,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"16\"}},{\"r\":17,\"c\":5,\"v\":{\"v\":16,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"16\"}},{\"r\":17,\"c\":10,\"v\":{\"v\":16,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"16\"}},{\"r\":17,\"c\":15,\"v\":{\"v\":16,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"16\"}},{\"r\":18,\"c\":0,\"v\":{\"v\":17,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"17\"}},{\"r\":18,\"c\":5,\"v\":{\"v\":17,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"17\"}},{\"r\":18,\"c\":10,\"v\":{\"v\":17,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"17\"}},{\"r\":18,\"c\":15,\"v\":{\"v\":17,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"17\"}},{\"r\":19,\"c\":0,\"v\":{\"v\":18,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"18\"}},{\"r\":19,\"c\":5,\"v\":{\"v\":18,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"18\"}},{\"r\":19,\"c\":10,\"v\":{\"v\":18,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"18\"}},{\"r\":19,\"c\":15,\"v\":{\"v\":18,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"18\"}},{\"r\":20,\"c\":0,\"v\":{\"v\":19,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"19\"}},{\"r\":20,\"c\":5,\"v\":{\"v\":19,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"19\"}},{\"r\":20,\"c\":10,\"v\":{\"v\":19,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"19\"}},{\"r\":20,\"c\":15,\"v\":{\"v\":19,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"19\"}},{\"r\":21,\"c\":0,\"v\":{\"v\":20,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"20\"}},{\"r\":21,\"c\":5,\"v\":{\"v\":20,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"20\"}},{\"r\":21,\"c\":10,\"v\":{\"v\":20,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"20\"}},{\"r\":21,\"c\":15,\"v\":{\"v\":20,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"20\"}},{\"r\":24,\"c\":0,\"v\":{\"mc\":{\"r\":24,\"c\":0,\"rs\":1,\"cs\":14},\"m\":\"Catatan\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"v\":\"Catatan\",\"bg\":\"#cccccc\"}},{\"r\":24,\"c\":1,\"v\":{\"mc\":{\"r\":24,\"c\":0},\"bg\":\"#cccccc\"}},{\"r\":24,\"c\":2,\"v\":{\"mc\":{\"r\":24,\"c\":0},\"bg\":\"#cccccc\"}},{\"r\":24,\"c\":3,\"v\":{\"mc\":{\"r\":24,\"c\":0},\"bg\":\"#cccccc\"}},{\"r\":24,\"c\":4,\"v\":{\"mc\":{\"r\":24,\"c\":0},\"bg\":\"#cccccc\"}},{\"r\":24,\"c\":5,\"v\":{\"mc\":{\"r\":24,\"c\":0},\"bg\":\"#cccccc\"}},{\"r\":24,\"c\":6,\"v\":{\"mc\":{\"r\":24,\"c\":0},\"bg\":\"#cccccc\"}},{\"r\":24,\"c\":7,\"v\":{\"mc\":{\"r\":24,\"c\":0},\"bg\":\"#cccccc\"}},{\"r\":24,\"c\":8,\"v\":{\"mc\":{\"r\":24,\"c\":0},\"bg\":\"#cccccc\"}},{\"r\":24,\"c\":9,\"v\":{\"mc\":{\"r\":24,\"c\":0},\"bg\":\"#cccccc\"}},{\"r\":24,\"c\":10,\"v\":{\"mc\":{\"r\":24,\"c\":0},\"bg\":\"#cccccc\"}},{\"r\":24,\"c\":11,\"v\":{\"mc\":{\"r\":24,\"c\":0},\"bg\":\"#cccccc\"}},{\"r\":24,\"c\":12,\"v\":{\"mc\":{\"r\":24,\"c\":0},\"bg\":\"#cccccc\"}},{\"r\":24,\"c\":13,\"v\":{\"mc\":{\"r\":24,\"c\":0},\"bg\":\"#cccccc\"}}],\"calcChain\":[],\"luckysheet_select_save\":[{\"left\":374,\"width\":120,\"top\":735,\"height\":20,\"left_move\":374,\"width_move\":120,\"top_move\":735,\"height_move\":20,\"row\":[35,35],\"column\":[6,6],\"row_focus\":35,\"column_focus\":6}],\"visibledatarow\":[21,42,63,84,105,126,147,168,189,210,231,252,273,294,315,336,357,378,399,420,441,462,483,504,525,546,567,588,609,630,651,672,693,714,735,756,777,798,819,840,861,882,903,924,945,966,987,1008,1029,1050,1071,1092,1113,1134,1155,1176,1197,1218,1239,1260,1281,1302,1323,1344,1365,1386,1407,1428,1449,1470,1491,1512,1533,1554,1575,1596,1617,1638,1659,1680,1701,1722,1743,1764],\"visibledatacolumn\":[38,111,184,257,330,374,495,568,641,714,765,922,995,1068,1141,1214,1368,1441,1514,1587,1660,1733,1806,1879,1952,2025,2098,2171,2244,2317,2390,2463,2536,2609,2682,2755,2828,2901,2974,3047,3120,3193,3266,3339,3412,3485,3558,3631,3704,3777,3850,3923,3996,4069,4142,4215,4288,4361,4434,4507],\"ch_width\":4627,\"rh_height\":1844,\"luckysheet_selection_range\":[],\"scrollLeft\":220,\"scrollTop\":0,\"images\":{},\"filter_select\":null,\"filter\":null,\"luckysheet_conditionformat_save\":[],\"luckysheet_alternateformat_save\":[],\"dataVerification\":[],\"hyperlink\":{},\"dynamicArray\":[]},{\"name\":\"Infra 1\",\"color\":\"\",\"status\":0,\"order\":2,\"index\":\"Sheet_a7k3Ht5Wle0o_1680766343384\",\"celldata\":[],\"row\":84,\"column\":60,\"config\":{},\"pivotTable\":null,\"isPivotTable\":false,\"luckysheet_select_save\":[{\"row\":[0,0],\"column\":[0,0],\"row_focus\":0,\"column_focus\":0,\"left\":0,\"width\":73,\"top\":0,\"height\":19,\"left_move\":0,\"width_move\":73,\"top_move\":0,\"height_move\":19}],\"visibledatarow\":[20,40,60,80,100,120,140,160,180,200,220,240,260,280,300,320,340,360,380,400,420,440,460,480,500,520,540,560,580,600,620,640,660,680,700,720,740,760,780,800,820,840,860,880,900,920,940,960,980,1000,1020,1040,1060,1080,1100,1120,1140,1160,1180,1200,1220,1240,1260,1280,1300,1320,1340,1360,1380,1400,1420,1440,1460,1480,1500,1520,1540,1560,1580,1600,1620,1640,1660,1680],\"visibledatacolumn\":[74,148,222,296,370,444,518,592,666,740,814,888,962,1036,1110,1184,1258,1332,1406,1480,1554,1628,1702,1776,1850,1924,1998,2072,2146,2220,2294,2368,2442,2516,2590,2664,2738,2812,2886,2960,3034,3108,3182,3256,3330,3404,3478,3552,3626,3700,3774,3848,3922,3996,4070,4144,4218,4292,4366,4440],\"ch_width\":4560,\"rh_height\":1760,\"luckysheet_selection_range\":[],\"scrollLeft\":0,\"scrollTop\":0,\"zoomRatio\":1},{\"name\":\"Infra 2\",\"config\":{},\"index\":\"3\",\"status\":0,\"order\":3,\"zoomRatio\":1,\"showGridLines\":\"1\",\"defaultColWidth\":72,\"defaultRowHeight\":20,\"celldata\":[{\"r\":2,\"c\":1,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"g\"}}},{\"r\":2,\"c\":2,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"n\"}}},{\"r\":3,\"c\":2,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"n\"}}},{\"r\":4,\"c\":2,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"n\"}}},{\"r\":5,\"c\":2,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"n\"}}},{\"r\":6,\"c\":2,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"n\"}}}],\"calcChain\":[],\"luckysheet_select_save\":[{\"left\":219,\"width\":72,\"top\":378,\"height\":20,\"left_move\":219,\"width_move\":72,\"top_move\":378,\"height_move\":20,\"row\":[18,18],\"column\":[3,3],\"row_focus\":18,\"column_focus\":3}],\"jfgird_select_save\":[],\"visibledatarow\":[21,42,63,84,105,126,147,168,189,210,231,252,273,294,315,336,357,378,399,420,441,462,483,504,525,546,567,588,609,630,651,672,693,714,735,756,777,798,819,840,861,882,903,924,945,966,987,1008,1029,1050,1071,1092,1113,1134,1155,1176,1197,1218,1239,1260,1281,1302,1323,1344,1365,1386,1407,1428,1449,1470,1491,1512,1533,1554,1575,1596,1617,1638,1659,1680,1701,1722,1743,1764],\"visibledatacolumn\":[73,146,219,292,365,438,511,584,657,730,803,876,949,1022,1095,1168,1241,1314,1387,1460,1533,1606,1679,1752,1825,1898,1971,2044,2117,2190,2263,2336,2409,2482,2555,2628,2701,2774,2847,2920,2993,3066,3139,3212,3285,3358,3431,3504,3577,3650,3723,3796,3869,3942,4015,4088,4161,4234,4307,4380],\"ch_width\":4500,\"rh_height\":1844,\"luckysheet_selection_range\":[],\"scrollLeft\":0,\"scrollTop\":0,\"chart\":[{\"chart_id\":\"chart_6k0e0ihaeMIe_1680760949716\",\"width\":400,\"height\":250,\"left\":0,\"top\":0,\"sheetIndex\":\"3\",\"needRangeShow\":false,\"isShow\":false}]},{\"name\":\"EPC\",\"color\":\"\",\"status\":0,\"order\":4,\"index\":\"Sheet_eimeKXmlhaie_1681789608024\",\"celldata\":[],\"row\":84,\"column\":60,\"config\":{},\"pivotTable\":null,\"isPivotTable\":false,\"luckysheet_select_save\":[{\"row\":[0,0],\"column\":[0,0],\"row_focus\":0,\"column_focus\":0,\"left\":0,\"width\":73,\"top\":0,\"height\":19,\"left_move\":0,\"width_move\":73,\"top_move\":0,\"height_move\":19}],\"jfgird_select_save\":[],\"visibledatarow\":[20,40,60,80,100,120,140,160,180,200,220,240,260,280,300,320,340,360,380,400,420,440,460,480,500,520,540,560,580,600,620,640,660,680,700,720,740,760,780,800,820,840,860,880,900,920,940,960,980,1000,1020,1040,1060,1080,1100,1120,1140,1160,1180,1200,1220,1240,1260,1280,1300,1320,1340,1360,1380,1400,1420,1440,1460,1480,1500,1520,1540,1560,1580,1600,1620,1640,1660,1680],\"visibledatacolumn\":[74,148,222,296,370,444,518,592,666,740,814,888,962,1036,1110,1184,1258,1332,1406,1480,1554,1628,1702,1776,1850,1924,1998,2072,2146,2220,2294,2368,2442,2516,2590,2664,2738,2812,2886,2960,3034,3108,3182,3256,3330,3404,3478,3552,3626,3700,3774,3848,3922,3996,4070,4144,4218,4292,4366,4440],\"ch_width\":4560,\"rh_height\":1760,\"luckysheet_selection_range\":[],\"zoomRatio\":1,\"scrollLeft\":0,\"scrollTop\":0}]', '2023-04-02 23:56:47', '2023-04-02 23:56:47');
INSERT INTO `templates` (`id`, `name`, `catalogue`, `hash`, `created_at`, `updated_at`) VALUES
(3, 'RKAP 2023 W1', 1, '[{\"name\":\"Prognosa 2023\",\"config\":{\"merge\":{\"1_0\":{\"r\":1,\"c\":0,\"rs\":2,\"cs\":1},\"1_1\":{\"r\":1,\"c\":1,\"rs\":2,\"cs\":1},\"1_2\":{\"r\":1,\"c\":2,\"rs\":2,\"cs\":1},\"1_3\":{\"r\":1,\"c\":3,\"rs\":2,\"cs\":1},\"1_4\":{\"r\":1,\"c\":4,\"rs\":2,\"cs\":1},\"1_5\":{\"r\":1,\"c\":5,\"rs\":2,\"cs\":1},\"1_6\":{\"r\":1,\"c\":6,\"rs\":2,\"cs\":1},\"1_7\":{\"r\":1,\"c\":7,\"rs\":2,\"cs\":1},\"1_9\":{\"r\":1,\"c\":9,\"rs\":2,\"cs\":1},\"1_10\":{\"r\":1,\"c\":10,\"rs\":2,\"cs\":1},\"1_11\":{\"r\":1,\"c\":11,\"rs\":2,\"cs\":1},\"1_12\":{\"r\":1,\"c\":12,\"rs\":2,\"cs\":1},\"1_13\":{\"r\":1,\"c\":13,\"rs\":2,\"cs\":1},\"1_14\":{\"r\":1,\"c\":14,\"rs\":2,\"cs\":1},\"1_15\":{\"r\":1,\"c\":15,\"rs\":2,\"cs\":1},\"1_16\":{\"r\":1,\"c\":16,\"rs\":2,\"cs\":1},\"1_17\":{\"r\":1,\"c\":17,\"rs\":2,\"cs\":1},\"1_18\":{\"r\":1,\"c\":18,\"rs\":2,\"cs\":1},\"1_19\":{\"r\":1,\"c\":19,\"rs\":2,\"cs\":1},\"1_20\":{\"r\":1,\"c\":20,\"rs\":2,\"cs\":1},\"1_21\":{\"r\":1,\"c\":21,\"rs\":2,\"cs\":1},\"1_22\":{\"r\":1,\"c\":22,\"rs\":2,\"cs\":1},\"1_23\":{\"r\":1,\"c\":23,\"rs\":2,\"cs\":1},\"1_24\":{\"r\":1,\"c\":24,\"rs\":2,\"cs\":1},\"1_25\":{\"r\":1,\"c\":25,\"rs\":2,\"cs\":1},\"1_26\":{\"r\":1,\"c\":26,\"rs\":2,\"cs\":1},\"1_27\":{\"r\":1,\"c\":27,\"rs\":2,\"cs\":1},\"1_28\":{\"r\":1,\"c\":28,\"rs\":2,\"cs\":1},\"1_29\":{\"r\":1,\"c\":29,\"rs\":2,\"cs\":1},\"1_30\":{\"r\":1,\"c\":30,\"rs\":2,\"cs\":1},\"1_31\":{\"r\":1,\"c\":31,\"rs\":2,\"cs\":1},\"1_32\":{\"r\":1,\"c\":32,\"rs\":2,\"cs\":1},\"1_33\":{\"r\":1,\"c\":33,\"rs\":2,\"cs\":1},\"1_34\":{\"r\":1,\"c\":34,\"rs\":2,\"cs\":1},\"1_35\":{\"r\":1,\"c\":35,\"rs\":2,\"cs\":1},\"1_36\":{\"r\":1,\"c\":36,\"rs\":2,\"cs\":1},\"1_37\":{\"r\":1,\"c\":37,\"rs\":2,\"cs\":1},\"1_38\":{\"r\":1,\"c\":38,\"rs\":2,\"cs\":1},\"1_39\":{\"r\":1,\"c\":39,\"rs\":2,\"cs\":1},\"1_40\":{\"r\":1,\"c\":40,\"rs\":2,\"cs\":1},\"1_41\":{\"r\":1,\"c\":41,\"rs\":2,\"cs\":1},\"1_42\":{\"r\":1,\"c\":42,\"rs\":2,\"cs\":1},\"1_43\":{\"r\":1,\"c\":43,\"rs\":2,\"cs\":1},\"1_44\":{\"r\":1,\"c\":44,\"rs\":2,\"cs\":1},\"1_45\":{\"r\":1,\"c\":45,\"rs\":2,\"cs\":1},\"1_46\":{\"r\":1,\"c\":46,\"rs\":2,\"cs\":1},\"1_8\":{\"r\":1,\"c\":8,\"rs\":2,\"cs\":1}},\"borderInfo\":[{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":0,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":1,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":2,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":3,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":4,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":5,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":0,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":1,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":2,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":3,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":4,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":5,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":6,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":7,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":8,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":9,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":10,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":11,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":12,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":13,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":14,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":15,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":16,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":17,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":18,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":19,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":20,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":21,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":22,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":23,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":24,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":25,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":26,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":27,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":28,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":29,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":30,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":31,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":32,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":33,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":34,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":35,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":36,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":37,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":38,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":39,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":40,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":41,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":42,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":43,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":44,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":45,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":46,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":6,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":7,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":8,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":9,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":10,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":11,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":12,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":13,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":14,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":15,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":16,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":17,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":18,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":19,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":20,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":21,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":22,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":23,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":24,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":25,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":26,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":27,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":28,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":29,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":30,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":31,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":32,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":33,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":34,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":35,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":36,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":37,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":38,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":39,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":40,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":41,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":42,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":43,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":44,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":45,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":46,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":8,\"l\":{\"color\":\"rgb(0, 0, 0)\",\"style\":1},\"r\":{\"color\":\"rgb(0, 0, 0)\",\"style\":1},\"t\":{\"color\":\"rgb(0, 0, 0)\",\"style\":1},\"b\":null}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":8,\"l\":{\"color\":\"rgb(0, 0, 0)\",\"style\":1},\"r\":{\"color\":\"rgb(0, 0, 0)\",\"style\":1},\"t\":null,\"b\":{\"color\":\"rgb(0, 0, 0)\",\"style\":1}}}],\"rowlen\":{\"1\":28.91384220123291,\"6\":24,\"7\":24,\"8\":24,\"9\":24},\"columnlen\":{\"0\":38,\"1\":160,\"2\":133,\"3\":136,\"4\":91,\"5\":117.18110656738281,\"6\":114.73300170898438,\"8\":124,\"10\":159.5217742919922,\"11\":129.400146484375,\"12\":92.75015258789062,\"13\":75.64207458496094,\"14\":129.4073028564453,\"15\":92.75730895996094,\"16\":75.64923095703125,\"17\":110,\"18\":99.2569580078125,\"19\":82.14888000488281,\"20\":131.0250701904297,\"21\":94.37507629394531,\"22\":77.26699829101562,\"23\":130.21617126464844,\"24\":93.56617736816406,\"25\":76.45809936523438,\"26\":129.400146484375,\"27\":92.75015258789062,\"28\":75.64207458496094,\"29\":135.11236572265625,\"30\":91.94126892089844,\"31\":74.83319091796875,\"32\":141.62635803222656,\"33\":104.97636413574219,\"34\":87.8682861328125,\"35\":137.56048583984375,\"36\":100.91049194335938,\"37\":83.80241394042969,\"38\":133.48033142089844,\"39\":96.83033752441406,\"40\":79.72225952148438,\"41\":140.53831481933594,\"42\":96.82318115234375,\"43\":79.71510314941406,\"44\":129.41445922851562,\"45\":92.76446533203125,\"46\":75.65638732910156},\"customWidth\":{\"0\":1,\"1\":1,\"2\":1,\"3\":1,\"4\":1,\"8\":1,\"17\":1},\"customHeight\":{}},\"index\":\"1\",\"status\":1,\"order\":0,\"zoomRatio\":1,\"showGridLines\":\"1\",\"defaultColWidth\":72,\"defaultRowHeight\":20,\"celldata\":[{\"r\":1,\"c\":0,\"v\":{\"v\":\"NO.\",\"ct\":{\"fa\":\"@\",\"t\":\"s\"},\"m\":\"NO.\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":0,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":1,\"v\":{\"v\":\"OP\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"OP\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":1,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":2,\"v\":{\"v\":\"DIV\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"DIV\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":2,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":3,\"v\":{\"v\":\"NAMA PROYEK\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"NAMA PROYEK\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":3,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":4,\"v\":{\"v\":\"REG/JO\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"REG/JO\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":4,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":5,\"v\":{\"v\":\"PROJECT TYPE\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"PROJECT TYPE\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":5,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":6,\"v\":{\"v\":\"SUMBER DANA\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"SUMBER DANA\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":6,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":7,\"v\":{\"v\":\"BLN\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"BLN\",\"bg\":\"rgb(128, 96, 0)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":7,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":8,\"v\":{\"v\":\"RKAPK\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"RKAPK\",\"bg\":\"rgb(128, 96, 0)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":8,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":9,\"v\":{\"v\":\"BLN\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"BLN\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":9,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":10,\"v\":{\"v\":\"Prognosa\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"Prognosa\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":10,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":11,\"v\":{\"v\":\"PROYEKSI JAN\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"PROYEKSI JAN\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":11,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":12,\"v\":{\"v\":\"REAL JAN\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"REAL JAN\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":12,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":13,\"v\":{\"v\":\"S/D JAN\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"S/D JAN\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":13,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":14,\"v\":{\"v\":\"PROYEKSI FEB\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"PROYEKSI FEB\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":14,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":15,\"v\":{\"v\":\"REAL FEB\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"REAL FEB\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":15,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":16,\"v\":{\"v\":\"S/D FEB\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"S/D FEB\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":16,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":17,\"v\":{\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"#ffffff\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":17,\"rs\":2,\"cs\":1},\"m\":\"PROYEKSI FEB\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"v\":\"PROYEKSI FEB\"}},{\"r\":1,\"c\":18,\"v\":{\"v\":\"REAL MAR\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"REAL MAR\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":18,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":19,\"v\":{\"v\":\"S/D MAR\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"S/D MAR\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":19,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":20,\"v\":{\"v\":\"PROYEKSI APR\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"PROYEKSI APR\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":20,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":21,\"v\":{\"v\":\"REAL APR\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"REAL APR\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":21,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":22,\"v\":{\"v\":\"S/D APR\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"S/D APR\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":22,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":23,\"v\":{\"v\":\"PROYEKSI MEI\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"PROYEKSI MEI\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":23,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":24,\"v\":{\"v\":\"REAL MEI\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"REAL MEI\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":24,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":25,\"v\":{\"v\":\"S/D MEI\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"S/D MEI\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":25,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":26,\"v\":{\"v\":\"PROYEKSI JUN\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"PROYEKSI JUN\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":26,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":27,\"v\":{\"v\":\"REAL JUN\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"REAL JUN\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":27,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":28,\"v\":{\"v\":\"S/D JUN\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"S/D JUN\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":28,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":29,\"v\":{\"v\":\" PROYEKSI JUL \",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\" PROYEKSI JUL \",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":29,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":30,\"v\":{\"v\":\"REAL JUL\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"REAL JUL\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":30,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":31,\"v\":{\"v\":\"S/D JUL\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"S/D JUL\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":31,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":32,\"v\":{\"v\":\"PROYEKSI AGUS\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"PROYEKSI AGUS\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":32,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":33,\"v\":{\"v\":\"REAL AGUS\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"REAL AGUS\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":33,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":34,\"v\":{\"v\":\"S/D AGUS\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"S/D AGUS\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":34,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":35,\"v\":{\"v\":\"PROYEKSI SEPT\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"PROYEKSI SEPT\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":35,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":36,\"v\":{\"v\":\"REAL SEPT\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"REAL SEPT\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":36,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":37,\"v\":{\"v\":\"S/D SEPT\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"S/D SEPT\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":37,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":38,\"v\":{\"v\":\"PROYEKSI OKT\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"PROYEKSI OKT\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":38,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":39,\"v\":{\"v\":\"REAL OKT\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"REAL OKT\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":39,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":40,\"v\":{\"v\":\"S/D OKT\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"S/D OKT\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":40,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":41,\"v\":{\"v\":\" PROYEKSI NOV \",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\" PROYEKSI NOV \",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":41,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":42,\"v\":{\"v\":\"REAL NOV\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"REAL NOV\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":42,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":43,\"v\":{\"v\":\"S/D NOV\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"S/D NOV\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":43,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":44,\"v\":{\"v\":\"PROYEKSI DES\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"PROYEKSI DES\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":44,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":45,\"v\":{\"v\":\"REAL DES\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"REAL DES\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":45,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":46,\"v\":{\"v\":\"S/D DES\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"S/D DES\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":46,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":47,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":48,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":49,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":50,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":51,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":52,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":53,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":54,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":55,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":56,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":57,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":58,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":59,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":0,\"v\":{\"mc\":{\"r\":1,\"c\":0},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"}}},{\"r\":2,\"c\":1,\"v\":{\"mc\":{\"r\":1,\"c\":1},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"}}},{\"r\":2,\"c\":2,\"v\":{\"mc\":{\"r\":1,\"c\":2},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"}}},{\"r\":2,\"c\":3,\"v\":{\"mc\":{\"r\":1,\"c\":3},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"}}},{\"r\":2,\"c\":4,\"v\":{\"mc\":{\"r\":1,\"c\":4},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"}}},{\"r\":2,\"c\":5,\"v\":{\"mc\":{\"r\":1,\"c\":5},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"}}},{\"r\":2,\"c\":6,\"v\":{\"mc\":{\"r\":1,\"c\":6},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"}}},{\"r\":2,\"c\":7,\"v\":{\"mc\":{\"r\":1,\"c\":7},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":8,\"v\":{\"mc\":{\"r\":1,\"c\":8}}},{\"r\":2,\"c\":9,\"v\":{\"mc\":{\"r\":1,\"c\":9},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":10,\"v\":{\"mc\":{\"r\":1,\"c\":10},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":11,\"v\":{\"mc\":{\"r\":1,\"c\":11},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":12,\"v\":{\"mc\":{\"r\":1,\"c\":12},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":13,\"v\":{\"mc\":{\"r\":1,\"c\":13},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":14,\"v\":{\"mc\":{\"r\":1,\"c\":14},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":15,\"v\":{\"mc\":{\"r\":1,\"c\":15},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":16,\"v\":{\"mc\":{\"r\":1,\"c\":16},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":17,\"v\":{\"mc\":{\"r\":1,\"c\":17},\"fc\":\"#ffffff\",\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":18,\"v\":{\"mc\":{\"r\":1,\"c\":18},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":19,\"v\":{\"mc\":{\"r\":1,\"c\":19},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":20,\"v\":{\"mc\":{\"r\":1,\"c\":20},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":21,\"v\":{\"mc\":{\"r\":1,\"c\":21},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":22,\"v\":{\"mc\":{\"r\":1,\"c\":22},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":23,\"v\":{\"mc\":{\"r\":1,\"c\":23},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":24,\"v\":{\"mc\":{\"r\":1,\"c\":24},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":25,\"v\":{\"mc\":{\"r\":1,\"c\":25},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":26,\"v\":{\"mc\":{\"r\":1,\"c\":26},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":27,\"v\":{\"mc\":{\"r\":1,\"c\":27},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":28,\"v\":{\"mc\":{\"r\":1,\"c\":28},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":29,\"v\":{\"mc\":{\"r\":1,\"c\":29},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":30,\"v\":{\"mc\":{\"r\":1,\"c\":30},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":31,\"v\":{\"mc\":{\"r\":1,\"c\":31},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":32,\"v\":{\"mc\":{\"r\":1,\"c\":32},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":33,\"v\":{\"mc\":{\"r\":1,\"c\":33},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":34,\"v\":{\"mc\":{\"r\":1,\"c\":34},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":35,\"v\":{\"mc\":{\"r\":1,\"c\":35},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":36,\"v\":{\"mc\":{\"r\":1,\"c\":36},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":37,\"v\":{\"mc\":{\"r\":1,\"c\":37},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":38,\"v\":{\"mc\":{\"r\":1,\"c\":38},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":39,\"v\":{\"mc\":{\"r\":1,\"c\":39},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":40,\"v\":{\"mc\":{\"r\":1,\"c\":40},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":41,\"v\":{\"mc\":{\"r\":1,\"c\":41},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":42,\"v\":{\"mc\":{\"r\":1,\"c\":42},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":43,\"v\":{\"mc\":{\"r\":1,\"c\":43},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":44,\"v\":{\"mc\":{\"r\":1,\"c\":44},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":45,\"v\":{\"mc\":{\"r\":1,\"c\":45},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":46,\"v\":{\"mc\":{\"r\":1,\"c\":46},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":47,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":48,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":49,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":50,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":51,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":52,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":53,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":54,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":55,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":56,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":57,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":58,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":59,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":3,\"c\":0,\"v\":{\"m\":\"1\",\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":1}},{\"r\":3,\"c\":1,\"v\":{\"m\":\"22\",\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":22}},{\"r\":4,\"c\":0,\"v\":{\"m\":\"2\",\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":2}},{\"r\":4,\"c\":1,\"v\":{\"m\":\"Ini Isi10\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"v\":\"Ini Isi10\"}},{\"r\":5,\"c\":0,\"v\":{\"m\":\"3\",\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":3}},{\"r\":5,\"c\":1,\"v\":{\"m\":\"Ini Isi11\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"v\":\"Ini Isi11\"}},{\"r\":6,\"c\":0,\"v\":{\"m\":\"4\",\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":4}},{\"r\":6,\"c\":1,\"v\":{\"m\":\"Proyek Jababeka\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"v\":\"Proyek Jababeka\"}},{\"r\":7,\"c\":0,\"v\":{\"m\":\"5\",\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":5}},{\"r\":7,\"c\":1,\"v\":{\"m\":\"Proyek Jembatan Suramadu\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"v\":\"Proyek Jembatan Suramadu\"}},{\"r\":8,\"c\":0,\"v\":{\"m\":\"6\",\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":6}},{\"r\":8,\"c\":1,\"v\":{\"m\":\"Proyek Jembatan Karanganyar\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"v\":\"Proyek Jembatan Karanganyar\"}},{\"r\":9,\"c\":0,\"v\":{\"m\":\"7\",\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":7}},{\"r\":9,\"c\":1,\"v\":{\"m\":\"Proyek Bundaran HI\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"v\":\"Proyek Bundaran HI\"}},{\"r\":10,\"c\":0,\"v\":{\"m\":\"8\",\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":8}},{\"r\":10,\"c\":1,\"v\":{\"m\":\"Proyek Bandara NYIA\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"v\":\"Proyek Bandara NYIA\"}},{\"r\":11,\"c\":0,\"v\":{\"m\":\"9\",\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":9}},{\"r\":11,\"c\":1,\"v\":{\"m\":\"Hotel Fave Fave\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"v\":\"Hotel Fave Fave\"}},{\"r\":12,\"c\":0,\"v\":{\"m\":\"10\",\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":10}},{\"r\":12,\"c\":1,\"v\":{\"m\":\"Hotel Dirgantara\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"v\":\"Hotel Dirgantara\"}},{\"r\":13,\"c\":1,\"v\":{\"m\":\"lkjhgkgkjhgjhgjg\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"v\":\"lkjhgkgkjhgjhgjg\"}}],\"calcChain\":[],\"jfgird_select_save\":[],\"luckysheet_select_save\":[{\"left\":471,\"width\":91,\"top\":424,\"height\":20,\"left_move\":471,\"width_move\":91,\"top_move\":424,\"height_move\":20,\"row\":[19,19],\"column\":[4,4],\"row_focus\":19,\"column_focus\":4}],\"visibledatarow\":[21,51,72,93,114,135,160,185,210,235,256,277,298,319,340,361,382,403,424,445,466,487,508,529,550,571,592,613,634,655,676,697,718,739,760,781,802,823,844,865,886,907,928,949,970,991,1012,1033,1054,1075,1096,1117,1138,1159,1180,1201,1222,1243,1264,1285,1306,1327,1348,1369,1390,1411,1432,1453,1474,1495,1516,1537,1558,1579,1600,1621,1642,1663,1684,1705,1726,1747,1768,1789],\"visibledatacolumn\":[39,200,334,471,563,681,797,870,995,1068,1229,1359,1453,1530,1660,1754,1831,1942,2042,2125,2257,2352,2430,2561,2656,2733,2863,2957,3034,3170,3263,3339,3482,3588,3677,3816,3918,4003,4137,4235,4316,4458,4556,4637,4767,4861,4938,5011,5084,5157,5230,5303,5376,5449,5522,5595,5668,5741,5814,5887],\"ch_width\":6007,\"rh_height\":1869,\"luckysheet_selection_range\":[],\"scrollLeft\":0,\"scrollTop\":0,\"images\":{},\"filter_select\":null,\"filter\":null,\"luckysheet_conditionformat_save\":[],\"luckysheet_alternateformat_save\":[],\"dataVerification\":{},\"hyperlink\":{},\"chart\":[{\"chart_id\":\"chart_7kHloa50MlLM_1683099908843\",\"width\":400,\"height\":250,\"left\":0,\"top\":0,\"sheetIndex\":\"1\",\"needRangeShow\":false}]},{\"name\":\"Gedung\",\"config\":{\"merge\":{\"1_1\":{\"r\":1,\"c\":1,\"rs\":1,\"cs\":3},\"1_11\":{\"r\":1,\"c\":11,\"rs\":1,\"cs\":1},\"1_16\":{\"r\":1,\"c\":16,\"rs\":1,\"cs\":1},\"24_0\":{\"r\":24,\"c\":0,\"rs\":1,\"cs\":14}},\"rowlen\":{\"0\":20},\"columnlen\":{\"0\":37,\"5\":43,\"6\":120,\"10\":50,\"11\":156.1988525390625,\"16\":153.3302459716797},\"customWidth\":{\"0\":1,\"5\":1,\"6\":1,\"10\":1},\"colhidden\":{},\"customHeight\":{\"0\":1},\"rowhidden\":{}},\"index\":\"2\",\"status\":0,\"order\":1,\"zoomRatio\":1,\"showGridLines\":\"1\",\"defaultColWidth\":72,\"defaultRowHeight\":20,\"celldata\":[{\"r\":1,\"c\":0,\"v\":{\"m\":\"No\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"v\":\"No\",\"bg\":\"#cccccc\",\"fs\":\"12\",\"bl\":1}},{\"r\":1,\"c\":1,\"v\":{\"v\":\" REALISASI S.D SEPT : \",\"ct\":{\"fa\":\"@\",\"t\":\"s\"},\"m\":\" REALISASI S.D SEPT : \",\"bg\":\"rgb(217, 217, 217)\",\"bl\":1,\"it\":0,\"ff\":0,\"fs\":13,\"fc\":\"rgb(0, 0, 0)\",\"ht\":1,\"vt\":0,\"mc\":{\"r\":1,\"c\":1,\"rs\":1,\"cs\":3}}},{\"r\":1,\"c\":2,\"v\":{\"mc\":{\"r\":1,\"c\":1}}},{\"r\":1,\"c\":3,\"v\":{\"mc\":{\"r\":1,\"c\":1}}},{\"r\":1,\"c\":4,\"v\":{\"bg\":\"#ffffff\",\"bl\":1,\"it\":0,\"ff\":0,\"fs\":13,\"fc\":\"rgb(0, 0, 0)\",\"ht\":1,\"vt\":0}},{\"r\":1,\"c\":5,\"v\":{\"m\":\"No\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"v\":\"No\",\"bg\":\"#cccccc\",\"ht\":\"0\",\"fs\":\"12\",\"bl\":1}},{\"r\":1,\"c\":6,\"v\":{\"v\":\"REAL OKT :\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"REAL OKT :\",\"bg\":\"rgb(217, 217, 217)\",\"bl\":1,\"it\":0,\"ff\":0,\"fs\":13,\"fc\":\"rgb(0, 0, 0)\",\"ht\":1,\"vt\":0}},{\"r\":1,\"c\":7,\"v\":{\"v\":\" PK - 47 \",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\" PK - 47 \",\"bg\":\"rgb(155, 194, 230)\",\"bl\":1,\"it\":0,\"ff\":0,\"fs\":13,\"fc\":\"rgb(0, 0, 0)\",\"ht\":0,\"vt\":0}},{\"r\":1,\"c\":8,\"v\":{\"v\":\" PK - 48 \",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\" PK - 48 \",\"bg\":\"rgb(248, 203, 173)\",\"bl\":1,\"it\":0,\"ff\":0,\"fs\":13,\"fc\":\"rgb(0, 0, 0)\",\"ht\":0,\"vt\":0}},{\"r\":1,\"c\":9,\"v\":{\"bg\":\"#ffffff\",\"bl\":1,\"it\":0,\"ff\":0,\"fs\":13,\"fc\":\"rgb(0, 0, 0)\",\"ht\":1,\"vt\":0}},{\"r\":1,\"c\":10,\"v\":{\"m\":\"No\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"v\":\"No\",\"bg\":\"#cccccc\",\"ht\":\"0\",\"fs\":\"12\",\"bl\":1}},{\"r\":1,\"c\":11,\"v\":{\"v\":\"PROYEKSI\\n  NOP :\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"PROYEKSI\\n  NOP :\",\"bg\":\"rgb(217, 217, 217)\",\"bl\":1,\"it\":0,\"ff\":0,\"fs\":13,\"fc\":\"rgb(0, 0, 0)\",\"ht\":1,\"vt\":0,\"mc\":{\"r\":1,\"c\":11,\"rs\":1,\"cs\":1}}},{\"r\":1,\"c\":12,\"v\":{\"v\":\" PK - 47 \",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\" PK - 47 \",\"bg\":\"rgb(155, 194, 230)\",\"bl\":1,\"it\":0,\"ff\":0,\"fs\":13,\"fc\":\"rgb(0, 0, 0)\",\"ht\":0,\"vt\":0}},{\"r\":1,\"c\":13,\"v\":{\"v\":\" PK - 48 \",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\" PK - 48 \",\"bg\":\"rgb(248, 203, 173)\",\"bl\":1,\"it\":0,\"ff\":0,\"fs\":13,\"fc\":\"rgb(0, 0, 0)\",\"ht\":0,\"vt\":0}},{\"r\":1,\"c\":14,\"v\":{\"bg\":\"#ffffff\",\"bl\":0,\"it\":0,\"ff\":0,\"fs\":13,\"fc\":\"rgb(0, 0, 0)\",\"ht\":1,\"vt\":0}},{\"r\":1,\"c\":15,\"v\":{\"m\":\"No\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"v\":\"No\",\"ht\":\"0\",\"bg\":\"#cccccc\",\"bl\":1,\"fs\":\"12\"}},{\"r\":1,\"c\":16,\"v\":{\"v\":\"PROYEKSI\\n  DES :\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"PROYEKSI\\n  DES :\",\"bg\":\"rgb(217, 217, 217)\",\"bl\":1,\"it\":0,\"ff\":0,\"fs\":13,\"fc\":\"rgb(0, 0, 0)\",\"ht\":1,\"vt\":0,\"mc\":{\"r\":1,\"c\":16,\"rs\":1,\"cs\":1}}},{\"r\":1,\"c\":17,\"v\":{\"v\":\" PK - 47 \",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\" PK - 47 \",\"bg\":\"rgb(155, 194, 230)\",\"bl\":1,\"it\":0,\"ff\":0,\"fs\":13,\"fc\":\"rgb(0, 0, 0)\",\"ht\":0,\"vt\":0}},{\"r\":1,\"c\":18,\"v\":{\"v\":\" PK - 48 \",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\" PK - 48 \",\"bg\":\"rgb(248, 203, 173)\",\"bl\":1,\"it\":0,\"ff\":0,\"fs\":13,\"fc\":\"rgb(0, 0, 0)\",\"ht\":0,\"vt\":0}},{\"r\":2,\"c\":0,\"v\":{\"v\":1,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"1\"}},{\"r\":2,\"c\":5,\"v\":{\"v\":1,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"1\"}},{\"r\":2,\"c\":10,\"v\":{\"v\":1,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"1\"}},{\"r\":2,\"c\":15,\"v\":{\"v\":1,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"1\"}},{\"r\":3,\"c\":0,\"v\":{\"v\":2,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"2\"}},{\"r\":3,\"c\":5,\"v\":{\"v\":2,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"2\"}},{\"r\":3,\"c\":10,\"v\":{\"v\":2,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"2\"}},{\"r\":3,\"c\":15,\"v\":{\"v\":2,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"2\"}},{\"r\":4,\"c\":0,\"v\":{\"v\":3,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"3\"}},{\"r\":4,\"c\":5,\"v\":{\"v\":3,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"3\"}},{\"r\":4,\"c\":10,\"v\":{\"v\":3,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"3\"}},{\"r\":4,\"c\":15,\"v\":{\"v\":3,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"3\"}},{\"r\":5,\"c\":0,\"v\":{\"v\":4,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"4\"}},{\"r\":5,\"c\":5,\"v\":{\"v\":4,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"4\"}},{\"r\":5,\"c\":10,\"v\":{\"v\":4,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"4\"}},{\"r\":5,\"c\":15,\"v\":{\"v\":4,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"4\"}},{\"r\":6,\"c\":0,\"v\":{\"v\":5,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"5\"}},{\"r\":6,\"c\":5,\"v\":{\"v\":5,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"5\"}},{\"r\":6,\"c\":10,\"v\":{\"v\":5,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"5\"}},{\"r\":6,\"c\":15,\"v\":{\"v\":5,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"5\"}},{\"r\":7,\"c\":0,\"v\":{\"v\":6,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"6\"}},{\"r\":7,\"c\":5,\"v\":{\"v\":6,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"6\"}},{\"r\":7,\"c\":10,\"v\":{\"v\":6,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"6\"}},{\"r\":7,\"c\":15,\"v\":{\"v\":6,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"6\"}},{\"r\":8,\"c\":0,\"v\":{\"v\":7,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"7\"}},{\"r\":8,\"c\":5,\"v\":{\"v\":7,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"7\"}},{\"r\":8,\"c\":10,\"v\":{\"v\":7,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"7\"}},{\"r\":8,\"c\":15,\"v\":{\"v\":7,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"7\"}},{\"r\":9,\"c\":0,\"v\":{\"v\":8,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"8\"}},{\"r\":9,\"c\":5,\"v\":{\"v\":8,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"8\"}},{\"r\":9,\"c\":10,\"v\":{\"v\":8,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"8\"}},{\"r\":9,\"c\":15,\"v\":{\"v\":8,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"8\"}},{\"r\":10,\"c\":0,\"v\":{\"v\":9,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"9\"}},{\"r\":10,\"c\":5,\"v\":{\"v\":9,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"9\"}},{\"r\":10,\"c\":10,\"v\":{\"v\":9,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"9\"}},{\"r\":10,\"c\":15,\"v\":{\"v\":9,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"9\"}},{\"r\":11,\"c\":0,\"v\":{\"v\":10,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"10\"}},{\"r\":11,\"c\":5,\"v\":{\"v\":10,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"10\"}},{\"r\":11,\"c\":10,\"v\":{\"v\":10,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"10\"}},{\"r\":11,\"c\":15,\"v\":{\"v\":10,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"10\"}},{\"r\":12,\"c\":0,\"v\":{\"v\":11,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"11\"}},{\"r\":12,\"c\":5,\"v\":{\"v\":11,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"11\"}},{\"r\":12,\"c\":10,\"v\":{\"v\":11,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"11\"}},{\"r\":12,\"c\":15,\"v\":{\"v\":11,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"11\"}},{\"r\":13,\"c\":0,\"v\":{\"v\":12,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"12\"}},{\"r\":13,\"c\":5,\"v\":{\"v\":12,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"12\"}},{\"r\":13,\"c\":10,\"v\":{\"v\":12,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"12\"}},{\"r\":13,\"c\":15,\"v\":{\"v\":12,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"12\"}},{\"r\":14,\"c\":0,\"v\":{\"v\":13,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"13\"}},{\"r\":14,\"c\":5,\"v\":{\"v\":13,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"13\"}},{\"r\":14,\"c\":10,\"v\":{\"v\":13,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"13\"}},{\"r\":14,\"c\":15,\"v\":{\"v\":13,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"13\"}},{\"r\":15,\"c\":0,\"v\":{\"v\":14,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"14\"}},{\"r\":15,\"c\":5,\"v\":{\"v\":14,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"14\"}},{\"r\":15,\"c\":10,\"v\":{\"v\":14,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"14\"}},{\"r\":15,\"c\":15,\"v\":{\"v\":14,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"14\"}},{\"r\":16,\"c\":0,\"v\":{\"v\":15,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"15\"}},{\"r\":16,\"c\":5,\"v\":{\"v\":15,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"15\"}},{\"r\":16,\"c\":10,\"v\":{\"v\":15,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"15\"}},{\"r\":16,\"c\":15,\"v\":{\"v\":15,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"15\"}},{\"r\":17,\"c\":0,\"v\":{\"v\":16,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"16\"}},{\"r\":17,\"c\":5,\"v\":{\"v\":16,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"16\"}},{\"r\":17,\"c\":10,\"v\":{\"v\":16,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"16\"}},{\"r\":17,\"c\":15,\"v\":{\"v\":16,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"16\"}},{\"r\":18,\"c\":0,\"v\":{\"v\":17,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"17\"}},{\"r\":18,\"c\":5,\"v\":{\"v\":17,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"17\"}},{\"r\":18,\"c\":10,\"v\":{\"v\":17,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"17\"}},{\"r\":18,\"c\":15,\"v\":{\"v\":17,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"17\"}},{\"r\":19,\"c\":0,\"v\":{\"v\":18,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"18\"}},{\"r\":19,\"c\":5,\"v\":{\"v\":18,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"18\"}},{\"r\":19,\"c\":10,\"v\":{\"v\":18,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"18\"}},{\"r\":19,\"c\":15,\"v\":{\"v\":18,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"18\"}},{\"r\":20,\"c\":0,\"v\":{\"v\":19,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"19\"}},{\"r\":20,\"c\":5,\"v\":{\"v\":19,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"19\"}},{\"r\":20,\"c\":10,\"v\":{\"v\":19,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"19\"}},{\"r\":20,\"c\":15,\"v\":{\"v\":19,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"19\"}},{\"r\":21,\"c\":0,\"v\":{\"v\":20,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"20\"}},{\"r\":21,\"c\":5,\"v\":{\"v\":20,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"20\"}},{\"r\":21,\"c\":10,\"v\":{\"v\":20,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"20\"}},{\"r\":21,\"c\":15,\"v\":{\"v\":20,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"20\"}},{\"r\":24,\"c\":0,\"v\":{\"mc\":{\"r\":24,\"c\":0,\"rs\":1,\"cs\":14},\"m\":\"Catatan\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"v\":\"Catatan\",\"bg\":\"#cccccc\"}},{\"r\":24,\"c\":1,\"v\":{\"mc\":{\"r\":24,\"c\":0},\"bg\":\"#cccccc\"}},{\"r\":24,\"c\":2,\"v\":{\"mc\":{\"r\":24,\"c\":0},\"bg\":\"#cccccc\"}},{\"r\":24,\"c\":3,\"v\":{\"mc\":{\"r\":24,\"c\":0},\"bg\":\"#cccccc\"}},{\"r\":24,\"c\":4,\"v\":{\"mc\":{\"r\":24,\"c\":0},\"bg\":\"#cccccc\"}},{\"r\":24,\"c\":5,\"v\":{\"mc\":{\"r\":24,\"c\":0},\"bg\":\"#cccccc\"}},{\"r\":24,\"c\":6,\"v\":{\"mc\":{\"r\":24,\"c\":0},\"bg\":\"#cccccc\"}},{\"r\":24,\"c\":7,\"v\":{\"mc\":{\"r\":24,\"c\":0},\"bg\":\"#cccccc\"}},{\"r\":24,\"c\":8,\"v\":{\"mc\":{\"r\":24,\"c\":0},\"bg\":\"#cccccc\"}},{\"r\":24,\"c\":9,\"v\":{\"mc\":{\"r\":24,\"c\":0},\"bg\":\"#cccccc\"}},{\"r\":24,\"c\":10,\"v\":{\"mc\":{\"r\":24,\"c\":0},\"bg\":\"#cccccc\"}},{\"r\":24,\"c\":11,\"v\":{\"mc\":{\"r\":24,\"c\":0},\"bg\":\"#cccccc\"}},{\"r\":24,\"c\":12,\"v\":{\"mc\":{\"r\":24,\"c\":0},\"bg\":\"#cccccc\"}},{\"r\":24,\"c\":13,\"v\":{\"mc\":{\"r\":24,\"c\":0},\"bg\":\"#cccccc\"}}],\"calcChain\":[],\"luckysheet_select_save\":[{\"left\":374,\"width\":120,\"top\":735,\"height\":20,\"left_move\":374,\"width_move\":120,\"top_move\":735,\"height_move\":20,\"row\":[35,35],\"column\":[6,6],\"row_focus\":35,\"column_focus\":6}],\"visibledatarow\":[21,42,63,84,105,126,147,168,189,210,231,252,273,294,315,336,357,378,399,420,441,462,483,504,525,546,567,588,609,630,651,672,693,714,735,756,777,798,819,840,861,882,903,924,945,966,987,1008,1029,1050,1071,1092,1113,1134,1155,1176,1197,1218,1239,1260,1281,1302,1323,1344,1365,1386,1407,1428,1449,1470,1491,1512,1533,1554,1575,1596,1617,1638,1659,1680,1701,1722,1743,1764],\"visibledatacolumn\":[38,111,184,257,330,374,495,568,641,714,765,922,995,1068,1141,1214,1368,1441,1514,1587,1660,1733,1806,1879,1952,2025,2098,2171,2244,2317,2390,2463,2536,2609,2682,2755,2828,2901,2974,3047,3120,3193,3266,3339,3412,3485,3558,3631,3704,3777,3850,3923,3996,4069,4142,4215,4288,4361,4434,4507],\"ch_width\":4627,\"rh_height\":1844,\"luckysheet_selection_range\":[],\"scrollLeft\":0,\"scrollTop\":0,\"images\":{},\"filter_select\":null,\"filter\":null,\"luckysheet_conditionformat_save\":[],\"luckysheet_alternateformat_save\":[],\"dataVerification\":[],\"hyperlink\":{},\"dynamicArray\":[]},{\"name\":\"Sheet4\",\"color\":\"\",\"status\":0,\"order\":2,\"index\":\"Sheet_a7k3Ht5Wle0o_1680766343384\",\"celldata\":[],\"row\":84,\"column\":60,\"config\":{},\"pivotTable\":null,\"isPivotTable\":false,\"luckysheet_select_save\":[{\"row\":[0,0],\"column\":[0,0],\"row_focus\":0,\"column_focus\":0,\"left\":0,\"width\":73,\"top\":0,\"height\":19,\"left_move\":0,\"width_move\":73,\"top_move\":0,\"height_move\":19}],\"visibledatarow\":[20,40,60,80,100,120,140,160,180,200,220,240,260,280,300,320,340,360,380,400,420,440,460,480,500,520,540,560,580,600,620,640,660,680,700,720,740,760,780,800,820,840,860,880,900,920,940,960,980,1000,1020,1040,1060,1080,1100,1120,1140,1160,1180,1200,1220,1240,1260,1280,1300,1320,1340,1360,1380,1400,1420,1440,1460,1480,1500,1520,1540,1560,1580,1600,1620,1640,1660,1680],\"visibledatacolumn\":[74,148,222,296,370,444,518,592,666,740,814,888,962,1036,1110,1184,1258,1332,1406,1480,1554,1628,1702,1776,1850,1924,1998,2072,2146,2220,2294,2368,2442,2516,2590,2664,2738,2812,2886,2960,3034,3108,3182,3256,3330,3404,3478,3552,3626,3700,3774,3848,3922,3996,4070,4144,4218,4292,4366,4440],\"ch_width\":4560,\"rh_height\":1760,\"luckysheet_selection_range\":[],\"scrollLeft\":0,\"scrollTop\":0,\"zoomRatio\":1},{\"name\":\"Sheet3\",\"config\":{},\"index\":\"3\",\"status\":0,\"order\":3,\"zoomRatio\":1,\"showGridLines\":\"1\",\"defaultColWidth\":72,\"defaultRowHeight\":20,\"celldata\":[{\"r\":2,\"c\":1,\"v\":{\"m\":\"candra\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"v\":\"candra\"}},{\"r\":2,\"c\":2,\"v\":{\"v\":4500,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"4500\"}},{\"r\":3,\"c\":2,\"v\":{\"v\":3500,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"3500\"}},{\"r\":4,\"c\":2,\"v\":{\"v\":3500,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"3500\"}},{\"r\":5,\"c\":2,\"v\":{\"v\":2000,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"2000\"}},{\"r\":6,\"c\":2,\"v\":{\"v\":13500,\"f\":\"=sum(C3:C6)\",\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"13500\"}}],\"calcChain\":[{\"r\":6,\"c\":2,\"index\":3}],\"luckysheet_select_save\":[{\"left\":584,\"width\":72,\"top\":231,\"height\":20,\"left_move\":584,\"width_move\":72,\"top_move\":231,\"height_move\":20,\"row\":[11,11],\"column\":[8,8],\"row_focus\":11,\"column_focus\":8}],\"jfgird_select_save\":[],\"visibledatarow\":[21,42,63,84,105,126,147,168,189,210,231,252,273,294,315,336,357,378,399,420,441,462,483,504,525,546,567,588,609,630,651,672,693,714,735,756,777,798,819,840,861,882,903,924,945,966,987,1008,1029,1050,1071,1092,1113,1134,1155,1176,1197,1218,1239,1260,1281,1302,1323,1344,1365,1386,1407,1428,1449,1470,1491,1512,1533,1554,1575,1596,1617,1638,1659,1680,1701,1722,1743,1764],\"visibledatacolumn\":[73,146,219,292,365,438,511,584,657,730,803,876,949,1022,1095,1168,1241,1314,1387,1460,1533,1606,1679,1752,1825,1898,1971,2044,2117,2190,2263,2336,2409,2482,2555,2628,2701,2774,2847,2920,2993,3066,3139,3212,3285,3358,3431,3504,3577,3650,3723,3796,3869,3942,4015,4088,4161,4234,4307,4380],\"ch_width\":4500,\"rh_height\":1844,\"luckysheet_selection_range\":[],\"scrollLeft\":0,\"scrollTop\":0,\"chart\":[{\"chart_id\":\"chart_6k0e0ihaeMIe_1680760949716\",\"width\":400,\"height\":250,\"left\":0,\"top\":0,\"sheetIndex\":\"3\",\"needRangeShow\":false,\"isShow\":false}]}]', '2023-04-02 16:56:47', '2023-05-04 00:32:50');
INSERT INTO `templates` (`id`, `name`, `catalogue`, `hash`, `created_at`, `updated_at`) VALUES
(44, 'RKAP 2023 W2', 1, '[{\"name\":\"Prognosa 2023\",\"config\":{\"merge\":{\"0_0\":{\"r\":0,\"c\":0,\"rs\":2,\"cs\":1},\"0_1\":{\"r\":0,\"c\":1,\"rs\":2,\"cs\":1},\"0_2\":{\"r\":0,\"c\":2,\"rs\":2,\"cs\":1},\"0_3\":{\"r\":0,\"c\":3,\"rs\":2,\"cs\":1},\"0_4\":{\"r\":0,\"c\":4,\"rs\":2,\"cs\":1},\"0_5\":{\"r\":0,\"c\":5,\"rs\":2,\"cs\":1},\"0_6\":{\"r\":0,\"c\":6,\"rs\":2,\"cs\":1},\"0_7\":{\"r\":0,\"c\":7,\"rs\":2,\"cs\":1},\"0_9\":{\"r\":0,\"c\":9,\"rs\":2,\"cs\":1},\"0_10\":{\"r\":0,\"c\":10,\"rs\":2,\"cs\":1},\"0_11\":{\"r\":0,\"c\":11,\"rs\":2,\"cs\":1},\"0_12\":{\"r\":0,\"c\":12,\"rs\":2,\"cs\":1},\"0_13\":{\"r\":0,\"c\":13,\"rs\":2,\"cs\":1},\"0_14\":{\"r\":0,\"c\":14,\"rs\":2,\"cs\":1},\"0_15\":{\"r\":0,\"c\":15,\"rs\":2,\"cs\":1},\"0_16\":{\"r\":0,\"c\":16,\"rs\":2,\"cs\":1},\"0_17\":{\"r\":0,\"c\":17,\"rs\":2,\"cs\":1},\"0_18\":{\"r\":0,\"c\":18,\"rs\":2,\"cs\":1},\"0_19\":{\"r\":0,\"c\":19,\"rs\":2,\"cs\":1},\"0_20\":{\"r\":0,\"c\":20,\"rs\":2,\"cs\":1},\"0_21\":{\"r\":0,\"c\":21,\"rs\":2,\"cs\":1},\"0_22\":{\"r\":0,\"c\":22,\"rs\":2,\"cs\":1},\"0_23\":{\"r\":0,\"c\":23,\"rs\":2,\"cs\":1},\"0_24\":{\"r\":0,\"c\":24,\"rs\":2,\"cs\":1},\"0_25\":{\"r\":0,\"c\":25,\"rs\":2,\"cs\":1},\"0_26\":{\"r\":0,\"c\":26,\"rs\":2,\"cs\":1},\"0_27\":{\"r\":0,\"c\":27,\"rs\":2,\"cs\":1},\"0_28\":{\"r\":0,\"c\":28,\"rs\":2,\"cs\":1},\"0_29\":{\"r\":0,\"c\":29,\"rs\":2,\"cs\":1},\"0_30\":{\"r\":0,\"c\":30,\"rs\":2,\"cs\":1},\"0_31\":{\"r\":0,\"c\":31,\"rs\":2,\"cs\":1},\"0_32\":{\"r\":0,\"c\":32,\"rs\":2,\"cs\":1},\"0_33\":{\"r\":0,\"c\":33,\"rs\":2,\"cs\":1},\"0_34\":{\"r\":0,\"c\":34,\"rs\":2,\"cs\":1},\"0_35\":{\"r\":0,\"c\":35,\"rs\":2,\"cs\":1},\"0_36\":{\"r\":0,\"c\":36,\"rs\":2,\"cs\":1},\"0_37\":{\"r\":0,\"c\":37,\"rs\":2,\"cs\":1},\"0_38\":{\"r\":0,\"c\":38,\"rs\":2,\"cs\":1},\"0_39\":{\"r\":0,\"c\":39,\"rs\":2,\"cs\":1},\"0_40\":{\"r\":0,\"c\":40,\"rs\":2,\"cs\":1},\"0_41\":{\"r\":0,\"c\":41,\"rs\":2,\"cs\":1},\"0_42\":{\"r\":0,\"c\":42,\"rs\":2,\"cs\":1},\"0_43\":{\"r\":0,\"c\":43,\"rs\":2,\"cs\":1},\"0_44\":{\"r\":0,\"c\":44,\"rs\":2,\"cs\":1},\"0_45\":{\"r\":0,\"c\":45,\"rs\":2,\"cs\":1},\"0_46\":{\"r\":0,\"c\":46,\"rs\":2,\"cs\":1},\"0_8\":{\"r\":0,\"c\":8,\"rs\":2,\"cs\":1}},\"borderInfo\":[{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":0,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":1,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":2,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":3,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":4,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":5,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":0,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":1,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":2,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":3,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":4,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":5,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":6,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":7,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":8,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":9,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":10,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":11,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":12,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":13,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":14,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":15,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":16,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":17,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":18,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":19,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":20,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":21,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":22,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":23,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":24,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":25,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":26,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":27,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":28,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":29,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":30,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":31,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":32,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":33,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":34,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":35,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":36,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":37,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":38,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":39,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":40,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":41,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":42,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":43,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":44,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":45,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":46,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":6,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":7,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":8,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":9,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":10,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":11,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":12,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":13,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":14,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":15,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":16,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":17,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":18,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":19,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":20,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":21,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":22,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":23,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":24,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":25,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":26,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":27,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":28,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":29,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":30,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":31,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":32,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":33,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":34,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":35,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":36,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":37,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":38,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":39,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":40,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":41,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":42,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":43,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":44,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":45,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":46,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":0,\"col_index\":8,\"l\":{\"color\":\"rgb(0, 0, 0)\",\"style\":1},\"r\":{\"color\":\"rgb(0, 0, 0)\",\"style\":1},\"t\":{\"color\":\"rgb(0, 0, 0)\",\"style\":1},\"b\":null}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":8,\"l\":{\"color\":\"rgb(0, 0, 0)\",\"style\":1},\"r\":{\"color\":\"rgb(0, 0, 0)\",\"style\":1},\"t\":null,\"b\":{\"color\":\"rgb(0, 0, 0)\",\"style\":1}}}],\"rowlen\":{\"0\":28.91384220123291},\"columnlen\":{\"0\":38,\"1\":36,\"2\":133,\"3\":136,\"4\":91,\"5\":117.18110656738281,\"6\":114.73300170898438,\"8\":124,\"10\":159.5217742919922,\"11\":129.400146484375,\"12\":92.75015258789062,\"13\":75.64207458496094,\"14\":129.4073028564453,\"15\":92.75730895996094,\"16\":75.64923095703125,\"17\":110,\"18\":99.2569580078125,\"19\":82.14888000488281,\"20\":131.0250701904297,\"21\":94.37507629394531,\"22\":77.26699829101562,\"23\":130.21617126464844,\"24\":93.56617736816406,\"25\":76.45809936523438,\"26\":129.400146484375,\"27\":92.75015258789062,\"28\":75.64207458496094,\"29\":135.11236572265625,\"30\":91.94126892089844,\"31\":74.83319091796875,\"32\":141.62635803222656,\"33\":104.97636413574219,\"34\":87.8682861328125,\"35\":137.56048583984375,\"36\":100.91049194335938,\"37\":83.80241394042969,\"38\":133.48033142089844,\"39\":96.83033752441406,\"40\":79.72225952148438,\"41\":140.53831481933594,\"42\":96.82318115234375,\"43\":79.71510314941406,\"44\":129.41445922851562,\"45\":92.76446533203125,\"46\":75.65638732910156},\"customWidth\":{\"0\":1,\"1\":1,\"2\":1,\"3\":1,\"4\":1,\"8\":1,\"17\":1},\"customHeight\":{},\"rowhidden\":{}},\"index\":\"1\",\"status\":0,\"order\":0,\"zoomRatio\":1,\"showGridLines\":\"1\",\"defaultColWidth\":72,\"defaultRowHeight\":20,\"celldata\":[{\"r\":0,\"c\":0,\"v\":{\"v\":\"NO.\",\"ct\":{\"fa\":\"@\",\"t\":\"s\"},\"m\":\"NO.\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":0,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":1,\"v\":{\"v\":\"OP\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"OP\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":1,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":2,\"v\":{\"v\":\"DIV\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"DIV\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":2,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":3,\"v\":{\"v\":\"NAMA PROYEK\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"NAMA PROYEK\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":3,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":4,\"v\":{\"v\":\"REG/JO\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"REG/JO\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":4,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":5,\"v\":{\"v\":\"PROJECT TYPE\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"PROJECT TYPE\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":5,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":6,\"v\":{\"v\":\"SUMBER DANA\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"SUMBER DANA\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":6,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":7,\"v\":{\"v\":\"BLN\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"BLN\",\"bg\":\"rgb(128, 96, 0)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":7,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":8,\"v\":{\"v\":\"RKAPK\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"RKAPK\",\"bg\":\"rgb(128, 96, 0)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":8,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":9,\"v\":{\"v\":\"BLN\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"BLN\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":9,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":10,\"v\":{\"v\":\"Prognosa\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"Prognosa\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":10,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":11,\"v\":{\"v\":\"PROYEKSI JAN\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"PROYEKSI JAN\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":11,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":12,\"v\":{\"v\":\"REAL JAN\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"REAL JAN\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":12,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":13,\"v\":{\"v\":\"S/D JAN\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"S/D JAN\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":13,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":14,\"v\":{\"v\":\"PROYEKSI FEB\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"PROYEKSI FEB\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":14,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":15,\"v\":{\"v\":\"REAL FEB\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"REAL FEB\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":15,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":16,\"v\":{\"v\":\"S/D FEB\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"S/D FEB\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":16,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":17,\"v\":{\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"#ffffff\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":17,\"rs\":2,\"cs\":1},\"m\":\"PROYEKSI FEB\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"v\":\"PROYEKSI FEB\"}},{\"r\":0,\"c\":18,\"v\":{\"v\":\"REAL MAR\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"REAL MAR\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":18,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":19,\"v\":{\"v\":\"S/D MAR\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"S/D MAR\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":19,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":20,\"v\":{\"v\":\"PROYEKSI APR\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"PROYEKSI APR\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":20,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":21,\"v\":{\"v\":\"REAL APR\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"REAL APR\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":21,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":22,\"v\":{\"v\":\"S/D APR\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"S/D APR\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":22,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":23,\"v\":{\"v\":\"PROYEKSI MEI\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"PROYEKSI MEI\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":23,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":24,\"v\":{\"v\":\"REAL MEI\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"REAL MEI\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":24,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":25,\"v\":{\"v\":\"S/D MEI\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"S/D MEI\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":25,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":26,\"v\":{\"v\":\"PROYEKSI JUN\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"PROYEKSI JUN\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":26,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":27,\"v\":{\"v\":\"REAL JUN\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"REAL JUN\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":27,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":28,\"v\":{\"v\":\"S/D JUN\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"S/D JUN\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":28,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":29,\"v\":{\"v\":\" PROYEKSI JUL \",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\" PROYEKSI JUL \",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":29,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":30,\"v\":{\"v\":\"REAL JUL\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"REAL JUL\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":30,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":31,\"v\":{\"v\":\"S/D JUL\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"S/D JUL\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":31,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":32,\"v\":{\"v\":\"PROYEKSI AGUS\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"PROYEKSI AGUS\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":32,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":33,\"v\":{\"v\":\"REAL AGUS\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"REAL AGUS\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":33,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":34,\"v\":{\"v\":\"S/D AGUS\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"S/D AGUS\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":34,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":35,\"v\":{\"v\":\"PROYEKSI SEPT\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"PROYEKSI SEPT\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":35,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":36,\"v\":{\"v\":\"REAL SEPT\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"REAL SEPT\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":36,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":37,\"v\":{\"v\":\"S/D SEPT\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"S/D SEPT\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":37,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":38,\"v\":{\"v\":\"PROYEKSI OKT\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"PROYEKSI OKT\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":38,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":39,\"v\":{\"v\":\"REAL OKT\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"REAL OKT\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":39,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":40,\"v\":{\"v\":\"S/D OKT\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"S/D OKT\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":40,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":41,\"v\":{\"v\":\" PROYEKSI NOV \",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\" PROYEKSI NOV \",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":41,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":42,\"v\":{\"v\":\"REAL NOV\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"REAL NOV\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":42,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":43,\"v\":{\"v\":\"S/D NOV\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"S/D NOV\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":43,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":44,\"v\":{\"v\":\"PROYEKSI DES\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"PROYEKSI DES\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":44,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":45,\"v\":{\"v\":\"REAL DES\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"REAL DES\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":45,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":46,\"v\":{\"v\":\"S/D DES\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"S/D DES\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":0,\"c\":46,\"rs\":2,\"cs\":1}}},{\"r\":0,\"c\":47,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":0,\"c\":48,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":0,\"c\":49,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":0,\"c\":50,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":0,\"c\":51,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":0,\"c\":52,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":0,\"c\":53,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":0,\"c\":54,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":0,\"c\":55,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":0,\"c\":56,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":0,\"c\":57,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":0,\"c\":58,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":0,\"c\":59,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":0,\"v\":{\"mc\":{\"r\":0,\"c\":0},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"}}},{\"r\":1,\"c\":1,\"v\":{\"mc\":{\"r\":0,\"c\":1},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"}}},{\"r\":1,\"c\":2,\"v\":{\"mc\":{\"r\":0,\"c\":2},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"}}},{\"r\":1,\"c\":3,\"v\":{\"mc\":{\"r\":0,\"c\":3},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"}}},{\"r\":1,\"c\":4,\"v\":{\"mc\":{\"r\":0,\"c\":4},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"}}},{\"r\":1,\"c\":5,\"v\":{\"mc\":{\"r\":0,\"c\":5},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"}}},{\"r\":1,\"c\":6,\"v\":{\"mc\":{\"r\":0,\"c\":6},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"}}},{\"r\":1,\"c\":7,\"v\":{\"mc\":{\"r\":0,\"c\":7},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":8,\"v\":{\"mc\":{\"r\":0,\"c\":8}}},{\"r\":1,\"c\":9,\"v\":{\"mc\":{\"r\":0,\"c\":9},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":10,\"v\":{\"mc\":{\"r\":0,\"c\":10},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":11,\"v\":{\"mc\":{\"r\":0,\"c\":11},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":12,\"v\":{\"mc\":{\"r\":0,\"c\":12},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":13,\"v\":{\"mc\":{\"r\":0,\"c\":13},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":14,\"v\":{\"mc\":{\"r\":0,\"c\":14},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":15,\"v\":{\"mc\":{\"r\":0,\"c\":15},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":16,\"v\":{\"mc\":{\"r\":0,\"c\":16},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":17,\"v\":{\"mc\":{\"r\":0,\"c\":17},\"fc\":\"#ffffff\",\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":18,\"v\":{\"mc\":{\"r\":0,\"c\":18},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":19,\"v\":{\"mc\":{\"r\":0,\"c\":19},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":20,\"v\":{\"mc\":{\"r\":0,\"c\":20},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":21,\"v\":{\"mc\":{\"r\":0,\"c\":21},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":22,\"v\":{\"mc\":{\"r\":0,\"c\":22},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":23,\"v\":{\"mc\":{\"r\":0,\"c\":23},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":24,\"v\":{\"mc\":{\"r\":0,\"c\":24},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":25,\"v\":{\"mc\":{\"r\":0,\"c\":25},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":26,\"v\":{\"mc\":{\"r\":0,\"c\":26},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":27,\"v\":{\"mc\":{\"r\":0,\"c\":27},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":28,\"v\":{\"mc\":{\"r\":0,\"c\":28},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":29,\"v\":{\"mc\":{\"r\":0,\"c\":29},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":30,\"v\":{\"mc\":{\"r\":0,\"c\":30},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":31,\"v\":{\"mc\":{\"r\":0,\"c\":31},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":32,\"v\":{\"mc\":{\"r\":0,\"c\":32},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":33,\"v\":{\"mc\":{\"r\":0,\"c\":33},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":34,\"v\":{\"mc\":{\"r\":0,\"c\":34},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":35,\"v\":{\"mc\":{\"r\":0,\"c\":35},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":36,\"v\":{\"mc\":{\"r\":0,\"c\":36},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":37,\"v\":{\"mc\":{\"r\":0,\"c\":37},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":38,\"v\":{\"mc\":{\"r\":0,\"c\":38},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":39,\"v\":{\"mc\":{\"r\":0,\"c\":39},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":40,\"v\":{\"mc\":{\"r\":0,\"c\":40},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":41,\"v\":{\"mc\":{\"r\":0,\"c\":41},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":42,\"v\":{\"mc\":{\"r\":0,\"c\":42},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":43,\"v\":{\"mc\":{\"r\":0,\"c\":43},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":44,\"v\":{\"mc\":{\"r\":0,\"c\":44},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":45,\"v\":{\"mc\":{\"r\":0,\"c\":45},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":46,\"v\":{\"mc\":{\"r\":0,\"c\":46},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":47,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":48,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":49,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":50,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":51,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":52,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":53,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":54,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":55,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":56,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":57,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":58,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":59,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":0,\"v\":{\"v\":1,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"1\"}},{\"r\":2,\"c\":1,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"g\"}}},{\"r\":2,\"c\":2,\"v\":{\"m\":\"Gedung\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"v\":\"Gedung\"}},{\"r\":2,\"c\":3,\"v\":{\"m\":\"Hotel Fave 6 Lantai\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"v\":\"Hotel Fave 6 Lantai\"}},{\"r\":2,\"c\":4,\"v\":{\"m\":\"REG\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"v\":\"REG\"}},{\"r\":2,\"c\":7,\"v\":{\"v\":2,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"2\"}},{\"r\":2,\"c\":8,\"v\":{\"v\":3000000,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"3000000\"}},{\"r\":2,\"c\":9,\"v\":{\"v\":6,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"6\"}},{\"r\":2,\"c\":10,\"v\":{\"v\":350,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"350\"}},{\"r\":2,\"c\":11,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":0,\"m\":\"0\",\"f\":\"=IF(H3=1,I3,0)\"}},{\"r\":2,\"c\":12,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":0,\"m\":\"0\",\"f\":\"=IF(J3=1,K3,0)\"}},{\"r\":2,\"c\":13,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"f\":\"=IF(L3=0,M3,L3)\",\"v\":0,\"m\":\"0\"}},{\"r\":2,\"c\":14,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":3000000,\"m\":\"3000000\",\"f\":\"=IF(H3=2,I3,0)\"}},{\"r\":2,\"c\":15,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":350,\"m\":\"350\",\"f\":\"=IF(H3=2,K3,0)\"}},{\"r\":2,\"c\":16,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"f\":\"=IF(P3=0,(N3+O3),(N3+P3))\",\"v\":350,\"m\":\"350\"}},{\"r\":2,\"c\":17,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":0,\"m\":\"0\",\"f\":\"=IF(H3=3,I3,0)\"}},{\"r\":2,\"c\":18,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":0,\"m\":\"0\",\"f\":\"=IF(J3=3,K3,0)\"}},{\"r\":2,\"c\":19,\"v\":{\"v\":350,\"f\":\"=IF(S3=0,(Q3+R3),(Q3+S3))\",\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"350\"}},{\"r\":2,\"c\":20,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":0,\"m\":\"0\",\"f\":\"=IF(H3=4,I3,0)\"}},{\"r\":2,\"c\":21,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":0,\"m\":\"0\",\"f\":\"=IF(J3=4,K3,0)\"}},{\"r\":2,\"c\":22,\"v\":{\"v\":350,\"f\":\"=IF(V3=0,(T3+U3),(T3+V3))\",\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"350\"}},{\"r\":2,\"c\":23,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":0,\"m\":\"0\",\"f\":\"=IF(H3=5,I3,0)\"}},{\"r\":2,\"c\":24,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":0,\"m\":\"0\",\"f\":\"=IF(J3=5,K3,0)\"}},{\"r\":2,\"c\":25,\"v\":{\"v\":350,\"f\":\"=IF(Y3=0,(W3+X3),(W3+Y3))\",\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"350\"}},{\"r\":2,\"c\":26,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":0,\"m\":\"0\",\"f\":\"=IF(H3=6,I3,0)\"}},{\"r\":2,\"c\":27,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":350,\"m\":\"350\",\"f\":\"=IF(J3=6,K3,0)\"}},{\"r\":2,\"c\":28,\"v\":{\"v\":700,\"f\":\"=IF(AB3=0,(Z3+AA3),(Z3+AB3))\",\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"700\"}},{\"r\":2,\"c\":29,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":0,\"m\":\"0\",\"f\":\"=IF(H3=7,I3,0)\"}},{\"r\":2,\"c\":30,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":350,\"m\":\"350\",\"f\":\"=IF(J3=6,K3,0)\"}},{\"r\":2,\"c\":31,\"v\":{\"v\":1050,\"f\":\"=IF(AE3=0,(AC3+AD3),(AC3+AE3))\",\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"1050\"}},{\"r\":2,\"c\":32,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":0,\"m\":\"0\",\"f\":\"=IF(H3=8,I3,0)\"}},{\"r\":2,\"c\":33,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":0,\"m\":\"0\",\"f\":\"=IF(J3=8,K3,0)\"}},{\"r\":2,\"c\":34,\"v\":{\"v\":1050,\"f\":\"=IF(AH3=0,(AF3+AG3),(AF3+AH3))\",\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"1050\"}},{\"r\":2,\"c\":35,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":0,\"m\":\"0\",\"f\":\"=IF(H3=9,I3,0)\"}},{\"r\":2,\"c\":36,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":0,\"m\":\"0\",\"f\":\"=IF(J3=9,K3,0)\"}},{\"r\":2,\"c\":37,\"v\":{\"v\":1050,\"f\":\"=IF(AK3=0,(AI3+AJ3),(AI3+AK3))\",\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"1050\"}},{\"r\":2,\"c\":38,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":0,\"m\":\"0\",\"f\":\"=IF(H3=10,I3,0)\"}},{\"r\":2,\"c\":39,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":0,\"m\":\"0\",\"f\":\"=IF(J3=10,K3,0)\"}},{\"r\":2,\"c\":40,\"v\":{\"v\":1050,\"f\":\"=IF(AN3=0,(AL3+AM3),(AL3+AN3))\",\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"1050\"}},{\"r\":2,\"c\":41,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":0,\"m\":\"0\",\"f\":\"=IF(H3=11,I3,0)\"}},{\"r\":2,\"c\":42,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":0,\"m\":\"0\",\"f\":\"=IF(J3=11,K3,0)\"}},{\"r\":2,\"c\":43,\"v\":{\"v\":1050,\"f\":\"=IF(AQ3=0,(AO3+AP3),(AO3+AQ3))\",\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"1050\"}},{\"r\":2,\"c\":44,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":0,\"m\":\"0\",\"f\":\"=IF(H3=12,I3,0)\"}},{\"r\":2,\"c\":45,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":0,\"m\":\"0\",\"f\":\"=IF(J3=12,K3,0)\"}},{\"r\":2,\"c\":46,\"v\":{\"v\":1050,\"f\":\"=IF(AT3=0,(AR3+AS3),(AR3+AT3))\",\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"1050\"}},{\"r\":3,\"c\":3,\"v\":{\"m\":\"asdadad\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"v\":\"asdadad\"}},{\"r\":4,\"c\":3,\"v\":{\"m\":\"adadasd\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"v\":\"adadasd\"}}],\"calcChain\":[{\"r\":2,\"c\":13,\"index\":\"1\",\"func\":[true,0,\"=IF(L3=0,M3,L3)\"]},{\"r\":2,\"c\":16,\"index\":\"1\",\"func\":[true,350,\"=IF(P3=0,(N3+O3),(N3+P3))\"]},{\"r\":2,\"c\":19,\"index\":\"1\",\"func\":[true,350,\"=IF(S3=0,(Q3+R3),(Q3+S3))\"]},{\"r\":2,\"c\":22,\"index\":\"1\",\"func\":[true,700,\"=IF(V3=0,(T3+U3),(T3+V3))\"]},{\"r\":2,\"c\":25,\"index\":\"1\",\"func\":[true,700,\"=IF(Y3=0,(W3+X3),(W3+Y3))\"]},{\"r\":2,\"c\":28,\"index\":\"1\",\"func\":[true,700,\"=IF(AB3=0,(Z3+AA3),(Z3+AB3))\"]},{\"r\":2,\"c\":31,\"index\":\"1\",\"func\":[true,700,\"=IF(AE3=0,(AC3+AD3),(AC3+AE3))\"]},{\"r\":2,\"c\":34,\"index\":\"1\",\"func\":[true,700,\"=IF(AH3=0,(AF3+AG3),(AF3+AH3))\"]},{\"r\":2,\"c\":37,\"index\":\"1\",\"func\":[true,700,\"=IF(AK3=0,(AI3+AJ3),(AI3+AK3))\"]},{\"r\":2,\"c\":40,\"index\":\"1\",\"func\":[true,700,\"=IF(AN3=0,(AL3+AM3),(AL3+AN3))\"]},{\"r\":2,\"c\":43,\"index\":\"1\",\"func\":[true,700,\"=IF(AQ3=0,(AO3+AP3),(AO3+AQ3))\"]},{\"r\":2,\"c\":46,\"index\":\"1\",\"func\":[true,700,\"=IF(AT3=0,(AR3+AS3),(AR3+AT3))\"]},{\"r\":2,\"c\":11,\"index\":\"1\",\"func\":[true,0,\"=IF(H3=1,I3,0)\"]},{\"r\":2,\"c\":12,\"index\":\"1\",\"func\":[true,0,\"=IF(J3=1,K3,0)\"]},{\"r\":2,\"c\":14,\"index\":\"1\",\"func\":[true,3000000,\"=IF(H3=2,I3,0)\"]},{\"r\":2,\"c\":15,\"index\":\"1\",\"func\":[true,350,\"=IF(H3=2,K3,0)\"]},{\"r\":2,\"c\":17,\"index\":\"1\",\"func\":[true,0,\"=IF(H3=3,I3,0)\"]},{\"r\":2,\"c\":18,\"index\":\"1\",\"func\":[true,0,\"=IF(J3=3,K3,0)\"]},{\"r\":2,\"c\":20,\"index\":\"1\",\"func\":[true,0,\"=IF(H3=4,I3,0)\"]},{\"r\":2,\"c\":21,\"index\":\"1\",\"func\":[true,350,\"=IF(J3=4,K3,0)\"]},{\"r\":2,\"c\":23,\"index\":\"1\",\"func\":[true,0,\"=IF(H3=5,I3,0)\"]},{\"r\":2,\"c\":24,\"index\":\"1\",\"func\":[true,0,\"=IF(J3=5,K3,0)\"]},{\"r\":2,\"c\":26,\"index\":\"1\",\"func\":[true,0,\"=IF(H3=6,I3,0)\"]},{\"r\":2,\"c\":27,\"index\":\"1\",\"func\":[true,0,\"=IF(J3=6,K3,0)\"]},{\"r\":2,\"c\":29,\"index\":\"1\",\"func\":[true,0,\"=IF(H3=7,I3,0)\"]},{\"r\":2,\"c\":30,\"index\":\"1\",\"func\":[true,0,\"=IF(J3=6,K3,0)\"]},{\"r\":2,\"c\":32,\"index\":\"1\",\"func\":[true,0,\"=IF(H3=8,I3,0)\"]},{\"r\":2,\"c\":33,\"index\":\"1\",\"func\":[true,0,\"=IF(J3=8,K3,0)\"]},{\"r\":2,\"c\":35,\"index\":\"1\",\"func\":[true,0,\"=IF(H3=9,I3,0)\"]},{\"r\":2,\"c\":36,\"index\":\"1\",\"func\":[true,0,\"=IF(J3=9,K3,0)\"]},{\"r\":2,\"c\":38,\"index\":\"1\",\"func\":[true,0,\"=IF(H3=10,I3,0)\"]},{\"r\":2,\"c\":39,\"index\":\"1\",\"func\":[true,0,\"=IF(J3=10,K3,0)\"]},{\"r\":2,\"c\":41,\"index\":\"1\",\"func\":[true,0,\"=IF(H3=11,I3,0)\"]},{\"r\":2,\"c\":42,\"index\":\"1\",\"func\":[true,0,\"=IF(J3=11,K3,0)\"]},{\"r\":2,\"c\":44,\"index\":\"1\",\"func\":[true,0,\"=IF(H3=12,I3,0)\"]},{\"r\":2,\"c\":45,\"index\":\"1\",\"func\":[true,0,\"=IF(J3=12,K3,0)\"]}],\"jfgird_select_save\":[],\"luckysheet_select_save\":[{\"left\":746,\"width\":124,\"top\":240,\"height\":20,\"left_move\":746,\"width_move\":124,\"top_move\":240,\"height_move\":20,\"row\":[11,11],\"column\":[8,8],\"row_focus\":11,\"column_focus\":8}],\"visibledatarow\":[30,51,72,93,114,135,156,177,198,219,240,261,282,303,324,345,366,387,408,429,450,471,492,513,534,555,576,597,618,639,660,681,702,723,744,765,786,807,828,849,870,891,912,933,954,975,996,1017,1038,1059,1080,1101,1122,1143,1164,1185,1206,1227,1248,1269,1290,1311,1332,1353,1374,1395,1416,1437,1458,1479,1500,1521,1542,1563,1584,1605,1626,1647,1668,1689,1710,1731,1752,1773],\"visibledatacolumn\":[39,76,210,347,439,557,673,746,871,944,1105,1235,1329,1406,1536,1630,1707,1818,1918,2001,2133,2228,2306,2437,2532,2609,2739,2833,2910,3046,3139,3215,3358,3464,3553,3692,3794,3879,4013,4111,4192,4334,4432,4513,4643,4737,4814,4887,4960,5033,5106,5179,5252,5325,5398,5471,5544,5617,5690,5763],\"ch_width\":5883,\"rh_height\":1853,\"luckysheet_selection_range\":[],\"scrollLeft\":0,\"scrollTop\":0,\"images\":{},\"filter_select\":null,\"filter\":null,\"luckysheet_conditionformat_save\":[],\"luckysheet_alternateformat_save\":[],\"dataVerification\":{},\"hyperlink\":{},\"dynamicArray\":[]},{\"name\":\"Gedung\",\"config\":{\"merge\":{\"1_1\":{\"r\":1,\"c\":1,\"rs\":1,\"cs\":3},\"1_11\":{\"r\":1,\"c\":11,\"rs\":1,\"cs\":1},\"1_16\":{\"r\":1,\"c\":16,\"rs\":1,\"cs\":1},\"24_0\":{\"r\":24,\"c\":0,\"rs\":1,\"cs\":14}},\"rowlen\":{\"0\":20},\"columnlen\":{\"0\":37,\"5\":43,\"6\":120,\"10\":50,\"11\":156.1988525390625,\"16\":153.3302459716797},\"customWidth\":{\"0\":1,\"5\":1,\"6\":1,\"10\":1},\"colhidden\":{},\"customHeight\":{\"0\":1},\"rowhidden\":{}},\"index\":\"2\",\"status\":0,\"order\":1,\"zoomRatio\":1,\"showGridLines\":\"1\",\"defaultColWidth\":72,\"defaultRowHeight\":20,\"celldata\":[{\"r\":1,\"c\":0,\"v\":{\"m\":\"No\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"v\":\"No\",\"bg\":\"#cccccc\",\"fs\":\"12\",\"bl\":1}},{\"r\":1,\"c\":1,\"v\":{\"v\":\" REALISASI S.D SEPT : \",\"ct\":{\"fa\":\"@\",\"t\":\"s\"},\"m\":\" REALISASI S.D SEPT : \",\"bg\":\"rgb(217, 217, 217)\",\"bl\":1,\"it\":0,\"ff\":0,\"fs\":13,\"fc\":\"rgb(0, 0, 0)\",\"ht\":1,\"vt\":0,\"mc\":{\"r\":1,\"c\":1,\"rs\":1,\"cs\":3}}},{\"r\":1,\"c\":2,\"v\":{\"mc\":{\"r\":1,\"c\":1}}},{\"r\":1,\"c\":3,\"v\":{\"mc\":{\"r\":1,\"c\":1}}},{\"r\":1,\"c\":4,\"v\":{\"bg\":\"#ffffff\",\"bl\":1,\"it\":0,\"ff\":0,\"fs\":13,\"fc\":\"rgb(0, 0, 0)\",\"ht\":1,\"vt\":0}},{\"r\":1,\"c\":5,\"v\":{\"m\":\"No\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"v\":\"No\",\"bg\":\"#cccccc\",\"ht\":\"0\",\"fs\":\"12\",\"bl\":1}},{\"r\":1,\"c\":6,\"v\":{\"v\":\"REAL OKT :\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"REAL OKT :\",\"bg\":\"rgb(217, 217, 217)\",\"bl\":1,\"it\":0,\"ff\":0,\"fs\":13,\"fc\":\"rgb(0, 0, 0)\",\"ht\":1,\"vt\":0}},{\"r\":1,\"c\":7,\"v\":{\"v\":\" PK - 47 \",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\" PK - 47 \",\"bg\":\"rgb(155, 194, 230)\",\"bl\":1,\"it\":0,\"ff\":0,\"fs\":13,\"fc\":\"rgb(0, 0, 0)\",\"ht\":0,\"vt\":0}},{\"r\":1,\"c\":8,\"v\":{\"v\":\" PK - 48 \",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\" PK - 48 \",\"bg\":\"rgb(248, 203, 173)\",\"bl\":1,\"it\":0,\"ff\":0,\"fs\":13,\"fc\":\"rgb(0, 0, 0)\",\"ht\":0,\"vt\":0}},{\"r\":1,\"c\":9,\"v\":{\"bg\":\"#ffffff\",\"bl\":1,\"it\":0,\"ff\":0,\"fs\":13,\"fc\":\"rgb(0, 0, 0)\",\"ht\":1,\"vt\":0}},{\"r\":1,\"c\":10,\"v\":{\"m\":\"No\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"v\":\"No\",\"bg\":\"#cccccc\",\"ht\":\"0\",\"fs\":\"12\",\"bl\":1}},{\"r\":1,\"c\":11,\"v\":{\"v\":\"PROYEKSI\\n  NOP :\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"PROYEKSI\\n  NOP :\",\"bg\":\"rgb(217, 217, 217)\",\"bl\":1,\"it\":0,\"ff\":0,\"fs\":13,\"fc\":\"rgb(0, 0, 0)\",\"ht\":1,\"vt\":0,\"mc\":{\"r\":1,\"c\":11,\"rs\":1,\"cs\":1}}},{\"r\":1,\"c\":12,\"v\":{\"v\":\" PK - 47 \",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\" PK - 47 \",\"bg\":\"rgb(155, 194, 230)\",\"bl\":1,\"it\":0,\"ff\":0,\"fs\":13,\"fc\":\"rgb(0, 0, 0)\",\"ht\":0,\"vt\":0}},{\"r\":1,\"c\":13,\"v\":{\"v\":\" PK - 48 \",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\" PK - 48 \",\"bg\":\"rgb(248, 203, 173)\",\"bl\":1,\"it\":0,\"ff\":0,\"fs\":13,\"fc\":\"rgb(0, 0, 0)\",\"ht\":0,\"vt\":0}},{\"r\":1,\"c\":14,\"v\":{\"bg\":\"#ffffff\",\"bl\":0,\"it\":0,\"ff\":0,\"fs\":13,\"fc\":\"rgb(0, 0, 0)\",\"ht\":1,\"vt\":0}},{\"r\":1,\"c\":15,\"v\":{\"m\":\"No\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"v\":\"No\",\"ht\":\"0\",\"bg\":\"#cccccc\",\"bl\":1,\"fs\":\"12\"}},{\"r\":1,\"c\":16,\"v\":{\"v\":\"PROYEKSI\\n  DES :\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"PROYEKSI\\n  DES :\",\"bg\":\"rgb(217, 217, 217)\",\"bl\":1,\"it\":0,\"ff\":0,\"fs\":13,\"fc\":\"rgb(0, 0, 0)\",\"ht\":1,\"vt\":0,\"mc\":{\"r\":1,\"c\":16,\"rs\":1,\"cs\":1}}},{\"r\":1,\"c\":17,\"v\":{\"v\":\" PK - 47 \",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\" PK - 47 \",\"bg\":\"rgb(155, 194, 230)\",\"bl\":1,\"it\":0,\"ff\":0,\"fs\":13,\"fc\":\"rgb(0, 0, 0)\",\"ht\":0,\"vt\":0}},{\"r\":1,\"c\":18,\"v\":{\"v\":\" PK - 48 \",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\" PK - 48 \",\"bg\":\"rgb(248, 203, 173)\",\"bl\":1,\"it\":0,\"ff\":0,\"fs\":13,\"fc\":\"rgb(0, 0, 0)\",\"ht\":0,\"vt\":0}},{\"r\":2,\"c\":0,\"v\":{\"v\":1,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"1\"}},{\"r\":2,\"c\":5,\"v\":{\"v\":1,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"1\"}},{\"r\":2,\"c\":10,\"v\":{\"v\":1,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"1\"}},{\"r\":2,\"c\":15,\"v\":{\"v\":1,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"1\"}},{\"r\":3,\"c\":0,\"v\":{\"v\":2,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"2\"}},{\"r\":3,\"c\":5,\"v\":{\"v\":2,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"2\"}},{\"r\":3,\"c\":10,\"v\":{\"v\":2,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"2\"}},{\"r\":3,\"c\":15,\"v\":{\"v\":2,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"2\"}},{\"r\":4,\"c\":0,\"v\":{\"v\":3,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"3\"}},{\"r\":4,\"c\":5,\"v\":{\"v\":3,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"3\"}},{\"r\":4,\"c\":10,\"v\":{\"v\":3,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"3\"}},{\"r\":4,\"c\":15,\"v\":{\"v\":3,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"3\"}},{\"r\":5,\"c\":0,\"v\":{\"v\":4,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"4\"}},{\"r\":5,\"c\":5,\"v\":{\"v\":4,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"4\"}},{\"r\":5,\"c\":10,\"v\":{\"v\":4,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"4\"}},{\"r\":5,\"c\":15,\"v\":{\"v\":4,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"4\"}},{\"r\":6,\"c\":0,\"v\":{\"v\":5,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"5\"}},{\"r\":6,\"c\":5,\"v\":{\"v\":5,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"5\"}},{\"r\":6,\"c\":10,\"v\":{\"v\":5,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"5\"}},{\"r\":6,\"c\":15,\"v\":{\"v\":5,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"5\"}},{\"r\":7,\"c\":0,\"v\":{\"v\":6,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"6\"}},{\"r\":7,\"c\":5,\"v\":{\"v\":6,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"6\"}},{\"r\":7,\"c\":10,\"v\":{\"v\":6,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"6\"}},{\"r\":7,\"c\":15,\"v\":{\"v\":6,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"6\"}},{\"r\":8,\"c\":0,\"v\":{\"v\":7,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"7\"}},{\"r\":8,\"c\":5,\"v\":{\"v\":7,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"7\"}},{\"r\":8,\"c\":10,\"v\":{\"v\":7,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"7\"}},{\"r\":8,\"c\":15,\"v\":{\"v\":7,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"7\"}},{\"r\":9,\"c\":0,\"v\":{\"v\":8,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"8\"}},{\"r\":9,\"c\":5,\"v\":{\"v\":8,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"8\"}},{\"r\":9,\"c\":10,\"v\":{\"v\":8,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"8\"}},{\"r\":9,\"c\":15,\"v\":{\"v\":8,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"8\"}},{\"r\":10,\"c\":0,\"v\":{\"v\":9,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"9\"}},{\"r\":10,\"c\":5,\"v\":{\"v\":9,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"9\"}},{\"r\":10,\"c\":10,\"v\":{\"v\":9,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"9\"}},{\"r\":10,\"c\":15,\"v\":{\"v\":9,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"9\"}},{\"r\":11,\"c\":0,\"v\":{\"v\":10,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"10\"}},{\"r\":11,\"c\":5,\"v\":{\"v\":10,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"10\"}},{\"r\":11,\"c\":10,\"v\":{\"v\":10,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"10\"}},{\"r\":11,\"c\":15,\"v\":{\"v\":10,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"10\"}},{\"r\":12,\"c\":0,\"v\":{\"v\":11,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"11\"}},{\"r\":12,\"c\":5,\"v\":{\"v\":11,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"11\"}},{\"r\":12,\"c\":10,\"v\":{\"v\":11,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"11\"}},{\"r\":12,\"c\":15,\"v\":{\"v\":11,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"11\"}},{\"r\":13,\"c\":0,\"v\":{\"v\":12,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"12\"}},{\"r\":13,\"c\":5,\"v\":{\"v\":12,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"12\"}},{\"r\":13,\"c\":10,\"v\":{\"v\":12,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"12\"}},{\"r\":13,\"c\":15,\"v\":{\"v\":12,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"12\"}},{\"r\":14,\"c\":0,\"v\":{\"v\":13,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"13\"}},{\"r\":14,\"c\":5,\"v\":{\"v\":13,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"13\"}},{\"r\":14,\"c\":10,\"v\":{\"v\":13,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"13\"}},{\"r\":14,\"c\":15,\"v\":{\"v\":13,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"13\"}},{\"r\":15,\"c\":0,\"v\":{\"v\":14,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"14\"}},{\"r\":15,\"c\":5,\"v\":{\"v\":14,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"14\"}},{\"r\":15,\"c\":10,\"v\":{\"v\":14,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"14\"}},{\"r\":15,\"c\":15,\"v\":{\"v\":14,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"14\"}},{\"r\":16,\"c\":0,\"v\":{\"v\":15,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"15\"}},{\"r\":16,\"c\":5,\"v\":{\"v\":15,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"15\"}},{\"r\":16,\"c\":10,\"v\":{\"v\":15,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"15\"}},{\"r\":16,\"c\":15,\"v\":{\"v\":15,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"15\"}},{\"r\":17,\"c\":0,\"v\":{\"v\":16,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"16\"}},{\"r\":17,\"c\":5,\"v\":{\"v\":16,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"16\"}},{\"r\":17,\"c\":10,\"v\":{\"v\":16,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"16\"}},{\"r\":17,\"c\":15,\"v\":{\"v\":16,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"16\"}},{\"r\":18,\"c\":0,\"v\":{\"v\":17,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"17\"}},{\"r\":18,\"c\":5,\"v\":{\"v\":17,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"17\"}},{\"r\":18,\"c\":10,\"v\":{\"v\":17,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"17\"}},{\"r\":18,\"c\":15,\"v\":{\"v\":17,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"17\"}},{\"r\":19,\"c\":0,\"v\":{\"v\":18,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"18\"}},{\"r\":19,\"c\":5,\"v\":{\"v\":18,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"18\"}},{\"r\":19,\"c\":10,\"v\":{\"v\":18,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"18\"}},{\"r\":19,\"c\":15,\"v\":{\"v\":18,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"18\"}},{\"r\":20,\"c\":0,\"v\":{\"v\":19,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"19\"}},{\"r\":20,\"c\":5,\"v\":{\"v\":19,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"19\"}},{\"r\":20,\"c\":10,\"v\":{\"v\":19,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"19\"}},{\"r\":20,\"c\":15,\"v\":{\"v\":19,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"19\"}},{\"r\":21,\"c\":0,\"v\":{\"v\":20,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"20\"}},{\"r\":21,\"c\":5,\"v\":{\"v\":20,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"20\"}},{\"r\":21,\"c\":10,\"v\":{\"v\":20,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"20\"}},{\"r\":21,\"c\":15,\"v\":{\"v\":20,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"20\"}},{\"r\":24,\"c\":0,\"v\":{\"mc\":{\"r\":24,\"c\":0,\"rs\":1,\"cs\":14},\"m\":\"Catatan\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"v\":\"Catatan\",\"bg\":\"#cccccc\"}},{\"r\":24,\"c\":1,\"v\":{\"mc\":{\"r\":24,\"c\":0},\"bg\":\"#cccccc\"}},{\"r\":24,\"c\":2,\"v\":{\"mc\":{\"r\":24,\"c\":0},\"bg\":\"#cccccc\"}},{\"r\":24,\"c\":3,\"v\":{\"mc\":{\"r\":24,\"c\":0},\"bg\":\"#cccccc\"}},{\"r\":24,\"c\":4,\"v\":{\"mc\":{\"r\":24,\"c\":0},\"bg\":\"#cccccc\"}},{\"r\":24,\"c\":5,\"v\":{\"mc\":{\"r\":24,\"c\":0},\"bg\":\"#cccccc\"}},{\"r\":24,\"c\":6,\"v\":{\"mc\":{\"r\":24,\"c\":0},\"bg\":\"#cccccc\"}},{\"r\":24,\"c\":7,\"v\":{\"mc\":{\"r\":24,\"c\":0},\"bg\":\"#cccccc\"}},{\"r\":24,\"c\":8,\"v\":{\"mc\":{\"r\":24,\"c\":0},\"bg\":\"#cccccc\"}},{\"r\":24,\"c\":9,\"v\":{\"mc\":{\"r\":24,\"c\":0},\"bg\":\"#cccccc\"}},{\"r\":24,\"c\":10,\"v\":{\"mc\":{\"r\":24,\"c\":0},\"bg\":\"#cccccc\"}},{\"r\":24,\"c\":11,\"v\":{\"mc\":{\"r\":24,\"c\":0},\"bg\":\"#cccccc\"}},{\"r\":24,\"c\":12,\"v\":{\"mc\":{\"r\":24,\"c\":0},\"bg\":\"#cccccc\"}},{\"r\":24,\"c\":13,\"v\":{\"mc\":{\"r\":24,\"c\":0},\"bg\":\"#cccccc\"}}],\"calcChain\":[],\"luckysheet_select_save\":[{\"left\":374,\"width\":120,\"top\":735,\"height\":20,\"left_move\":374,\"width_move\":120,\"top_move\":735,\"height_move\":20,\"row\":[35,35],\"column\":[6,6],\"row_focus\":35,\"column_focus\":6}],\"visibledatarow\":[21,42,63,84,105,126,147,168,189,210,231,252,273,294,315,336,357,378,399,420,441,462,483,504,525,546,567,588,609,630,651,672,693,714,735,756,777,798,819,840,861,882,903,924,945,966,987,1008,1029,1050,1071,1092,1113,1134,1155,1176,1197,1218,1239,1260,1281,1302,1323,1344,1365,1386,1407,1428,1449,1470,1491,1512,1533,1554,1575,1596,1617,1638,1659,1680,1701,1722,1743,1764],\"visibledatacolumn\":[38,111,184,257,330,374,495,568,641,714,765,922,995,1068,1141,1214,1368,1441,1514,1587,1660,1733,1806,1879,1952,2025,2098,2171,2244,2317,2390,2463,2536,2609,2682,2755,2828,2901,2974,3047,3120,3193,3266,3339,3412,3485,3558,3631,3704,3777,3850,3923,3996,4069,4142,4215,4288,4361,4434,4507],\"ch_width\":4627,\"rh_height\":1844,\"luckysheet_selection_range\":[],\"scrollLeft\":220,\"scrollTop\":0,\"images\":{},\"filter_select\":null,\"filter\":null,\"luckysheet_conditionformat_save\":[],\"luckysheet_alternateformat_save\":[],\"dataVerification\":[],\"hyperlink\":{},\"dynamicArray\":[]},{\"name\":\"Infra 1\",\"color\":\"\",\"status\":1,\"order\":2,\"index\":\"Sheet_a7k3Ht5Wle0o_1680766343384\",\"celldata\":[{\"r\":3,\"c\":4,\"v\":{\"v\":1,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"1\"}},{\"r\":4,\"c\":4,\"v\":{\"v\":2,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"2\"}},{\"r\":5,\"c\":4,\"v\":{\"v\":3,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"3\"}},{\"r\":6,\"c\":4,\"v\":{\"v\":4,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"4\"}},{\"r\":7,\"c\":4,\"v\":{\"v\":5,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"5\"}}],\"row\":84,\"column\":60,\"config\":{},\"pivotTable\":null,\"isPivotTable\":false,\"luckysheet_select_save\":[{\"left\":592,\"width\":73,\"top\":140,\"height\":19,\"left_move\":592,\"width_move\":73,\"top_move\":140,\"height_move\":19,\"row\":[7,7],\"column\":[8,8],\"row_focus\":7,\"column_focus\":8}],\"visibledatarow\":[20,40,60,80,100,120,140,160,180,200,220,240,260,280,300,320,340,360,380,400,420,440,460,480,500,520,540,560,580,600,620,640,660,680,700,720,740,760,780,800,820,840,860,880,900,920,940,960,980,1000,1020,1040,1060,1080,1100,1120,1140,1160,1180,1200,1220,1240,1260,1280,1300,1320,1340,1360,1380,1400,1420,1440,1460,1480,1500,1520,1540,1560,1580,1600,1620,1640,1660,1680],\"visibledatacolumn\":[74,148,222,296,370,444,518,592,666,740,814,888,962,1036,1110,1184,1258,1332,1406,1480,1554,1628,1702,1776,1850,1924,1998,2072,2146,2220,2294,2368,2442,2516,2590,2664,2738,2812,2886,2960,3034,3108,3182,3256,3330,3404,3478,3552,3626,3700,3774,3848,3922,3996,4070,4144,4218,4292,4366,4440],\"ch_width\":4560,\"rh_height\":1760,\"luckysheet_selection_range\":[],\"scrollLeft\":0,\"scrollTop\":0,\"zoomRatio\":1,\"jfgird_select_save\":[],\"images\":{\"img_1tGl0f0klelM_1683041265984\":{\"type\":\"3\",\"src\":\"data:image/png;base64,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\",\"originWidth\":401,\"originHeight\":114,\"default\":{\"width\":400,\"height\":114,\"left\":40,\"top\":351},\"crop\":{\"width\":400,\"height\":114,\"offsetLeft\":0,\"offsetTop\":0},\"isFixedPos\":false,\"fixedLeft\":342,\"fixedTop\":207,\"border\":{\"width\":0,\"radius\":0,\"style\":\"solid\",\"color\":\"#000\"}}},\"chart\":[{\"chart_id\":\"chart_K5h1tL0eaesG_1683041310541\",\"width\":400,\"height\":250,\"left\":0,\"top\":0,\"sheetIndex\":\"Sheet_a7k3Ht5Wle0o_1680766343384\",\"needRangeShow\":true}]},{\"name\":\"Infra 2\",\"config\":{},\"index\":\"3\",\"status\":0,\"order\":3,\"zoomRatio\":1,\"showGridLines\":\"1\",\"defaultColWidth\":72,\"defaultRowHeight\":20,\"celldata\":[{\"r\":2,\"c\":1,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"g\"}}},{\"r\":2,\"c\":2,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"n\"}}},{\"r\":3,\"c\":2,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"n\"}}},{\"r\":4,\"c\":2,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"n\"}}},{\"r\":5,\"c\":2,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"n\"}}},{\"r\":6,\"c\":2,\"v\":{\"ct\":{\"fa\":\"General\",\"t\":\"n\"}}}],\"calcChain\":[],\"luckysheet_select_save\":[{\"left\":219,\"width\":72,\"top\":378,\"height\":20,\"left_move\":219,\"width_move\":72,\"top_move\":378,\"height_move\":20,\"row\":[18,18],\"column\":[3,3],\"row_focus\":18,\"column_focus\":3}],\"jfgird_select_save\":[],\"visibledatarow\":[21,42,63,84,105,126,147,168,189,210,231,252,273,294,315,336,357,378,399,420,441,462,483,504,525,546,567,588,609,630,651,672,693,714,735,756,777,798,819,840,861,882,903,924,945,966,987,1008,1029,1050,1071,1092,1113,1134,1155,1176,1197,1218,1239,1260,1281,1302,1323,1344,1365,1386,1407,1428,1449,1470,1491,1512,1533,1554,1575,1596,1617,1638,1659,1680,1701,1722,1743,1764],\"visibledatacolumn\":[73,146,219,292,365,438,511,584,657,730,803,876,949,1022,1095,1168,1241,1314,1387,1460,1533,1606,1679,1752,1825,1898,1971,2044,2117,2190,2263,2336,2409,2482,2555,2628,2701,2774,2847,2920,2993,3066,3139,3212,3285,3358,3431,3504,3577,3650,3723,3796,3869,3942,4015,4088,4161,4234,4307,4380],\"ch_width\":4500,\"rh_height\":1844,\"luckysheet_selection_range\":[],\"scrollLeft\":0,\"scrollTop\":0,\"chart\":[{\"chart_id\":\"chart_6k0e0ihaeMIe_1680760949716\",\"width\":400,\"height\":250,\"left\":0,\"top\":0,\"sheetIndex\":\"3\",\"needRangeShow\":false,\"isShow\":false}]},{\"name\":\"EPC\",\"color\":\"\",\"status\":0,\"order\":4,\"index\":\"Sheet_eimeKXmlhaie_1681789608024\",\"celldata\":[],\"row\":84,\"column\":60,\"config\":{},\"pivotTable\":null,\"isPivotTable\":false,\"luckysheet_select_save\":[{\"row\":[0,0],\"column\":[0,0],\"row_focus\":0,\"column_focus\":0,\"left\":0,\"width\":73,\"top\":0,\"height\":19,\"left_move\":0,\"width_move\":73,\"top_move\":0,\"height_move\":19}],\"jfgird_select_save\":[],\"visibledatarow\":[20,40,60,80,100,120,140,160,180,200,220,240,260,280,300,320,340,360,380,400,420,440,460,480,500,520,540,560,580,600,620,640,660,680,700,720,740,760,780,800,820,840,860,880,900,920,940,960,980,1000,1020,1040,1060,1080,1100,1120,1140,1160,1180,1200,1220,1240,1260,1280,1300,1320,1340,1360,1380,1400,1420,1440,1460,1480,1500,1520,1540,1560,1580,1600,1620,1640,1660,1680],\"visibledatacolumn\":[74,148,222,296,370,444,518,592,666,740,814,888,962,1036,1110,1184,1258,1332,1406,1480,1554,1628,1702,1776,1850,1924,1998,2072,2146,2220,2294,2368,2442,2516,2590,2664,2738,2812,2886,2960,3034,3108,3182,3256,3330,3404,3478,3552,3626,3700,3774,3848,3922,3996,4070,4144,4218,4292,4366,4440],\"ch_width\":4560,\"rh_height\":1760,\"luckysheet_selection_range\":[],\"zoomRatio\":1,\"scrollLeft\":0,\"scrollTop\":0}]', '2023-05-02 07:23:17', '2023-05-02 07:23:17');
INSERT INTO `templates` (`id`, `name`, `catalogue`, `hash`, `created_at`, `updated_at`) VALUES
(45, 'candra', 1, '[{\"name\":\"Prognosa 2023\",\"config\":{\"merge\":{\"1_0\":{\"r\":1,\"c\":0,\"rs\":2,\"cs\":1},\"1_1\":{\"r\":1,\"c\":1,\"rs\":2,\"cs\":1},\"1_2\":{\"r\":1,\"c\":2,\"rs\":2,\"cs\":1},\"1_3\":{\"r\":1,\"c\":3,\"rs\":2,\"cs\":1},\"1_4\":{\"r\":1,\"c\":4,\"rs\":2,\"cs\":1},\"1_5\":{\"r\":1,\"c\":5,\"rs\":2,\"cs\":1},\"1_6\":{\"r\":1,\"c\":6,\"rs\":2,\"cs\":1},\"1_7\":{\"r\":1,\"c\":7,\"rs\":2,\"cs\":1},\"1_9\":{\"r\":1,\"c\":9,\"rs\":2,\"cs\":1},\"1_10\":{\"r\":1,\"c\":10,\"rs\":2,\"cs\":1},\"1_11\":{\"r\":1,\"c\":11,\"rs\":2,\"cs\":1},\"1_12\":{\"r\":1,\"c\":12,\"rs\":2,\"cs\":1},\"1_13\":{\"r\":1,\"c\":13,\"rs\":2,\"cs\":1},\"1_14\":{\"r\":1,\"c\":14,\"rs\":2,\"cs\":1},\"1_15\":{\"r\":1,\"c\":15,\"rs\":2,\"cs\":1},\"1_16\":{\"r\":1,\"c\":16,\"rs\":2,\"cs\":1},\"1_17\":{\"r\":1,\"c\":17,\"rs\":2,\"cs\":1},\"1_18\":{\"r\":1,\"c\":18,\"rs\":2,\"cs\":1},\"1_19\":{\"r\":1,\"c\":19,\"rs\":2,\"cs\":1},\"1_20\":{\"r\":1,\"c\":20,\"rs\":2,\"cs\":1},\"1_21\":{\"r\":1,\"c\":21,\"rs\":2,\"cs\":1},\"1_22\":{\"r\":1,\"c\":22,\"rs\":2,\"cs\":1},\"1_23\":{\"r\":1,\"c\":23,\"rs\":2,\"cs\":1},\"1_24\":{\"r\":1,\"c\":24,\"rs\":2,\"cs\":1},\"1_25\":{\"r\":1,\"c\":25,\"rs\":2,\"cs\":1},\"1_26\":{\"r\":1,\"c\":26,\"rs\":2,\"cs\":1},\"1_27\":{\"r\":1,\"c\":27,\"rs\":2,\"cs\":1},\"1_28\":{\"r\":1,\"c\":28,\"rs\":2,\"cs\":1},\"1_29\":{\"r\":1,\"c\":29,\"rs\":2,\"cs\":1},\"1_30\":{\"r\":1,\"c\":30,\"rs\":2,\"cs\":1},\"1_31\":{\"r\":1,\"c\":31,\"rs\":2,\"cs\":1},\"1_32\":{\"r\":1,\"c\":32,\"rs\":2,\"cs\":1},\"1_33\":{\"r\":1,\"c\":33,\"rs\":2,\"cs\":1},\"1_34\":{\"r\":1,\"c\":34,\"rs\":2,\"cs\":1},\"1_35\":{\"r\":1,\"c\":35,\"rs\":2,\"cs\":1},\"1_36\":{\"r\":1,\"c\":36,\"rs\":2,\"cs\":1},\"1_37\":{\"r\":1,\"c\":37,\"rs\":2,\"cs\":1},\"1_38\":{\"r\":1,\"c\":38,\"rs\":2,\"cs\":1},\"1_39\":{\"r\":1,\"c\":39,\"rs\":2,\"cs\":1},\"1_40\":{\"r\":1,\"c\":40,\"rs\":2,\"cs\":1},\"1_41\":{\"r\":1,\"c\":41,\"rs\":2,\"cs\":1},\"1_42\":{\"r\":1,\"c\":42,\"rs\":2,\"cs\":1},\"1_43\":{\"r\":1,\"c\":43,\"rs\":2,\"cs\":1},\"1_44\":{\"r\":1,\"c\":44,\"rs\":2,\"cs\":1},\"1_45\":{\"r\":1,\"c\":45,\"rs\":2,\"cs\":1},\"1_46\":{\"r\":1,\"c\":46,\"rs\":2,\"cs\":1},\"1_8\":{\"r\":1,\"c\":8,\"rs\":2,\"cs\":1}},\"borderInfo\":[{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":0,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":1,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":2,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":3,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":4,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":5,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":0,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":1,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":2,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":3,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":4,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":5,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":6,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":7,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":8,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":9,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":10,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":11,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":12,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":13,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":14,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":15,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":16,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":17,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":18,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":19,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":20,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":21,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":22,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":23,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":24,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":25,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":26,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":27,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":28,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":29,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":30,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":31,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":32,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":33,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":34,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":35,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":36,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":37,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":38,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":39,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":40,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":41,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":42,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":43,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":44,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":45,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":46,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"t\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":6,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":7,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":8,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":9,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":10,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":11,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":12,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":13,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":14,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":15,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":16,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":17,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":18,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":19,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":20,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":21,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":22,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":23,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":24,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":25,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":26,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":27,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":28,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":29,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":30,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":31,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":32,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":33,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":34,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":35,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":36,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":37,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":38,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":39,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":40,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":41,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":42,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":43,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":44,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":45,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":46,\"l\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"r\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"},\"b\":{\"style\":1,\"color\":\"rgb(0, 0, 0)\"}}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":1,\"col_index\":8,\"l\":{\"color\":\"rgb(0, 0, 0)\",\"style\":1},\"r\":{\"color\":\"rgb(0, 0, 0)\",\"style\":1},\"t\":{\"color\":\"rgb(0, 0, 0)\",\"style\":1},\"b\":null}},{\"rangeType\":\"cell\",\"value\":{\"row_index\":2,\"col_index\":8,\"l\":{\"color\":\"rgb(0, 0, 0)\",\"style\":1},\"r\":{\"color\":\"rgb(0, 0, 0)\",\"style\":1},\"t\":null,\"b\":{\"color\":\"rgb(0, 0, 0)\",\"style\":1}}}],\"rowlen\":{\"1\":28.91384220123291,\"6\":24,\"7\":24,\"8\":24,\"9\":24},\"columnlen\":{\"0\":38,\"1\":160,\"2\":133,\"3\":136,\"4\":91,\"5\":117.18110656738281,\"6\":114.73300170898438,\"8\":124,\"10\":159.5217742919922,\"11\":129.400146484375,\"12\":92.75015258789062,\"13\":75.64207458496094,\"14\":129.4073028564453,\"15\":92.75730895996094,\"16\":75.64923095703125,\"17\":110,\"18\":99.2569580078125,\"19\":82.14888000488281,\"20\":131.0250701904297,\"21\":94.37507629394531,\"22\":77.26699829101562,\"23\":130.21617126464844,\"24\":93.56617736816406,\"25\":76.45809936523438,\"26\":129.400146484375,\"27\":92.75015258789062,\"28\":75.64207458496094,\"29\":135.11236572265625,\"30\":91.94126892089844,\"31\":74.83319091796875,\"32\":141.62635803222656,\"33\":104.97636413574219,\"34\":87.8682861328125,\"35\":137.56048583984375,\"36\":100.91049194335938,\"37\":83.80241394042969,\"38\":133.48033142089844,\"39\":96.83033752441406,\"40\":79.72225952148438,\"41\":140.53831481933594,\"42\":96.82318115234375,\"43\":79.71510314941406,\"44\":129.41445922851562,\"45\":92.76446533203125,\"46\":75.65638732910156},\"customWidth\":{\"0\":1,\"1\":1,\"2\":1,\"3\":1,\"4\":1,\"8\":1,\"17\":1},\"customHeight\":{}},\"index\":\"1\",\"status\":1,\"order\":0,\"zoomRatio\":1,\"showGridLines\":\"1\",\"defaultColWidth\":72,\"defaultRowHeight\":20,\"celldata\":[{\"r\":1,\"c\":0,\"v\":{\"v\":\"NO.\",\"ct\":{\"fa\":\"@\",\"t\":\"s\"},\"m\":\"NO.\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":0,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":1,\"v\":{\"v\":\"OP\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"OP\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":1,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":2,\"v\":{\"v\":\"DIV\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"DIV\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":2,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":3,\"v\":{\"v\":\"NAMA PROYEK\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"NAMA PROYEK\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":3,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":4,\"v\":{\"v\":\"REG/JO\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"REG/JO\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":4,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":5,\"v\":{\"v\":\"PROJECT TYPE\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"PROJECT TYPE\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":5,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":6,\"v\":{\"v\":\"SUMBER DANA\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"SUMBER DANA\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":6,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":7,\"v\":{\"v\":\"BLN\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"BLN\",\"bg\":\"rgb(128, 96, 0)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":7,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":8,\"v\":{\"v\":\"RKAPK\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"RKAPK\",\"bg\":\"rgb(128, 96, 0)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":8,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":9,\"v\":{\"v\":\"BLN\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"BLN\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":9,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":10,\"v\":{\"v\":\"Prognosa\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"Prognosa\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":10,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":11,\"v\":{\"v\":\"PROYEKSI JAN\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"PROYEKSI JAN\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":11,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":12,\"v\":{\"v\":\"REAL JAN\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"REAL JAN\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":12,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":13,\"v\":{\"v\":\"S/D JAN\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"S/D JAN\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":13,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":14,\"v\":{\"v\":\"PROYEKSI FEB\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"PROYEKSI FEB\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":14,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":15,\"v\":{\"v\":\"REAL FEB\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"REAL FEB\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":15,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":16,\"v\":{\"v\":\"S/D FEB\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"S/D FEB\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":16,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":17,\"v\":{\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"#ffffff\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":17,\"rs\":2,\"cs\":1},\"m\":\"PROYEKSI FEB\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"v\":\"PROYEKSI FEB\"}},{\"r\":1,\"c\":18,\"v\":{\"v\":\"REAL MAR\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"REAL MAR\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":18,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":19,\"v\":{\"v\":\"S/D MAR\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"S/D MAR\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":19,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":20,\"v\":{\"v\":\"PROYEKSI APR\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"PROYEKSI APR\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":20,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":21,\"v\":{\"v\":\"REAL APR\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"REAL APR\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":21,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":22,\"v\":{\"v\":\"S/D APR\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"S/D APR\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":22,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":23,\"v\":{\"v\":\"PROYEKSI MEI\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"PROYEKSI MEI\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":23,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":24,\"v\":{\"v\":\"REAL MEI\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"REAL MEI\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":24,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":25,\"v\":{\"v\":\"S/D MEI\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"S/D MEI\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":25,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":26,\"v\":{\"v\":\"PROYEKSI JUN\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"PROYEKSI JUN\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":26,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":27,\"v\":{\"v\":\"REAL JUN\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"REAL JUN\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":27,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":28,\"v\":{\"v\":\"S/D JUN\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"S/D JUN\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":28,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":29,\"v\":{\"v\":\" PROYEKSI JUL \",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\" PROYEKSI JUL \",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":29,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":30,\"v\":{\"v\":\"REAL JUL\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"REAL JUL\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":30,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":31,\"v\":{\"v\":\"S/D JUL\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"S/D JUL\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":31,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":32,\"v\":{\"v\":\"PROYEKSI AGUS\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"PROYEKSI AGUS\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":32,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":33,\"v\":{\"v\":\"REAL AGUS\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"REAL AGUS\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":33,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":34,\"v\":{\"v\":\"S/D AGUS\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"S/D AGUS\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":34,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":35,\"v\":{\"v\":\"PROYEKSI SEPT\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"PROYEKSI SEPT\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":35,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":36,\"v\":{\"v\":\"REAL SEPT\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"REAL SEPT\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":36,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":37,\"v\":{\"v\":\"S/D SEPT\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"S/D SEPT\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":37,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":38,\"v\":{\"v\":\"PROYEKSI OKT\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"PROYEKSI OKT\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":38,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":39,\"v\":{\"v\":\"REAL OKT\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"REAL OKT\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":39,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":40,\"v\":{\"v\":\"S/D OKT\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"S/D OKT\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":40,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":41,\"v\":{\"v\":\" PROYEKSI NOV \",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\" PROYEKSI NOV \",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":41,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":42,\"v\":{\"v\":\"REAL NOV\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"REAL NOV\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":42,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":43,\"v\":{\"v\":\"S/D NOV\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"S/D NOV\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":43,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":44,\"v\":{\"v\":\"PROYEKSI DES\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"PROYEKSI DES\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":44,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":45,\"v\":{\"v\":\"REAL DES\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"REAL DES\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":45,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":46,\"v\":{\"v\":\"S/D DES\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"S/D DES\",\"bg\":\"rgb(51, 63, 79)\",\"bl\":0,\"it\":0,\"ff\":\"Arial\",\"fs\":\"10\",\"fc\":\"rgb(255, 255, 255)\",\"ht\":0,\"vt\":0,\"mc\":{\"r\":1,\"c\":46,\"rs\":2,\"cs\":1}}},{\"r\":1,\"c\":47,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":48,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":49,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":50,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":51,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":52,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":53,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":54,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":55,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":56,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":57,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":58,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":1,\"c\":59,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":0,\"v\":{\"mc\":{\"r\":1,\"c\":0},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"}}},{\"r\":2,\"c\":1,\"v\":{\"mc\":{\"r\":1,\"c\":1},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"}}},{\"r\":2,\"c\":2,\"v\":{\"mc\":{\"r\":1,\"c\":2},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"}}},{\"r\":2,\"c\":3,\"v\":{\"mc\":{\"r\":1,\"c\":3},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"}}},{\"r\":2,\"c\":4,\"v\":{\"mc\":{\"r\":1,\"c\":4},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"}}},{\"r\":2,\"c\":5,\"v\":{\"mc\":{\"r\":1,\"c\":5},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"}}},{\"r\":2,\"c\":6,\"v\":{\"mc\":{\"r\":1,\"c\":6},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"}}},{\"r\":2,\"c\":7,\"v\":{\"mc\":{\"r\":1,\"c\":7},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":8,\"v\":{\"mc\":{\"r\":1,\"c\":8}}},{\"r\":2,\"c\":9,\"v\":{\"mc\":{\"r\":1,\"c\":9},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":10,\"v\":{\"mc\":{\"r\":1,\"c\":10},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":11,\"v\":{\"mc\":{\"r\":1,\"c\":11},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":12,\"v\":{\"mc\":{\"r\":1,\"c\":12},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":13,\"v\":{\"mc\":{\"r\":1,\"c\":13},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":14,\"v\":{\"mc\":{\"r\":1,\"c\":14},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":15,\"v\":{\"mc\":{\"r\":1,\"c\":15},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":16,\"v\":{\"mc\":{\"r\":1,\"c\":16},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":17,\"v\":{\"mc\":{\"r\":1,\"c\":17},\"fc\":\"#ffffff\",\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":18,\"v\":{\"mc\":{\"r\":1,\"c\":18},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":19,\"v\":{\"mc\":{\"r\":1,\"c\":19},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":20,\"v\":{\"mc\":{\"r\":1,\"c\":20},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":21,\"v\":{\"mc\":{\"r\":1,\"c\":21},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":22,\"v\":{\"mc\":{\"r\":1,\"c\":22},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":23,\"v\":{\"mc\":{\"r\":1,\"c\":23},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":24,\"v\":{\"mc\":{\"r\":1,\"c\":24},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":25,\"v\":{\"mc\":{\"r\":1,\"c\":25},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":26,\"v\":{\"mc\":{\"r\":1,\"c\":26},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":27,\"v\":{\"mc\":{\"r\":1,\"c\":27},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":28,\"v\":{\"mc\":{\"r\":1,\"c\":28},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":29,\"v\":{\"mc\":{\"r\":1,\"c\":29},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":30,\"v\":{\"mc\":{\"r\":1,\"c\":30},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":31,\"v\":{\"mc\":{\"r\":1,\"c\":31},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":32,\"v\":{\"mc\":{\"r\":1,\"c\":32},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":33,\"v\":{\"mc\":{\"r\":1,\"c\":33},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":34,\"v\":{\"mc\":{\"r\":1,\"c\":34},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":35,\"v\":{\"mc\":{\"r\":1,\"c\":35},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":36,\"v\":{\"mc\":{\"r\":1,\"c\":36},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":37,\"v\":{\"mc\":{\"r\":1,\"c\":37},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":38,\"v\":{\"mc\":{\"r\":1,\"c\":38},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":39,\"v\":{\"mc\":{\"r\":1,\"c\":39},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":40,\"v\":{\"mc\":{\"r\":1,\"c\":40},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":41,\"v\":{\"mc\":{\"r\":1,\"c\":41},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":42,\"v\":{\"mc\":{\"r\":1,\"c\":42},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":43,\"v\":{\"mc\":{\"r\":1,\"c\":43},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":44,\"v\":{\"mc\":{\"r\":1,\"c\":44},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":45,\"v\":{\"mc\":{\"r\":1,\"c\":45},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":46,\"v\":{\"mc\":{\"r\":1,\"c\":46},\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":47,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":48,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":49,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":50,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":51,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":52,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":53,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":54,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":55,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":56,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":57,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":58,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":2,\"c\":59,\"v\":{\"ff\":\"Arial\",\"bl\":0,\"fs\":\"10\"}},{\"r\":3,\"c\":0,\"v\":{\"m\":\"1\",\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":1}},{\"r\":3,\"c\":1,\"v\":{\"m\":\"22\",\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":22}},{\"r\":4,\"c\":0,\"v\":{\"m\":\"2\",\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":2}},{\"r\":4,\"c\":1,\"v\":{\"m\":\"Ini Isi10\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"v\":\"Ini Isi10\"}},{\"r\":5,\"c\":0,\"v\":{\"m\":\"3\",\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":3}},{\"r\":5,\"c\":1,\"v\":{\"m\":\"Ini Isi11\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"v\":\"Ini Isi11\"}},{\"r\":6,\"c\":0,\"v\":{\"m\":\"4\",\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":4}},{\"r\":6,\"c\":1,\"v\":{\"m\":\"Proyek Jababeka\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"v\":\"Proyek Jababeka\"}},{\"r\":7,\"c\":0,\"v\":{\"m\":\"5\",\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":5}},{\"r\":7,\"c\":1,\"v\":{\"m\":\"Proyek Jembatan Suramadu\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"v\":\"Proyek Jembatan Suramadu\"}},{\"r\":8,\"c\":0,\"v\":{\"m\":\"6\",\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":6}},{\"r\":8,\"c\":1,\"v\":{\"m\":\"Proyek Jembatan Karanganyar\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"v\":\"Proyek Jembatan Karanganyar\"}},{\"r\":9,\"c\":0,\"v\":{\"m\":\"7\",\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":7}},{\"r\":9,\"c\":1,\"v\":{\"m\":\"Proyek Bundaran HI\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"v\":\"Proyek Bundaran HI\"}},{\"r\":10,\"c\":0,\"v\":{\"m\":\"8\",\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":8}},{\"r\":10,\"c\":1,\"v\":{\"m\":\"Proyek Bandara NYIA\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"v\":\"Proyek Bandara NYIA\"}},{\"r\":11,\"c\":0,\"v\":{\"m\":\"9\",\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":9}},{\"r\":11,\"c\":1,\"v\":{\"m\":\"Hotel Fave Fave\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"v\":\"Hotel Fave Fave\"}},{\"r\":12,\"c\":0,\"v\":{\"m\":\"10\",\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"v\":10}},{\"r\":12,\"c\":1,\"v\":{\"m\":\"Hotel Dirgantara\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"v\":\"Hotel Dirgantara\"}},{\"r\":13,\"c\":1,\"v\":{\"m\":\"lkjhgkgkjhgjhgjg\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"v\":\"lkjhgkgkjhgjhgjg\"}},{\"r\":15,\"c\":1,\"v\":{\"m\":\"asasas\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"v\":\"asasas\"}},{\"r\":15,\"c\":4,\"v\":{\"m\":\"kjhaskjas\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"v\":\"kjhaskjas\"}}],\"calcChain\":[],\"jfgird_select_save\":[],\"luckysheet_select_save\":[{\"row\":[16,16],\"column\":[1,1],\"row_focus\":16,\"column_focus\":1,\"moveXY\":{\"x\":16,\"y\":1},\"left\":39,\"width\":160,\"top\":361,\"height\":20,\"left_move\":39,\"width_move\":160,\"top_move\":361,\"height_move\":20}],\"visibledatarow\":[21,51,72,93,114,135,160,185,210,235,256,277,298,319,340,361,382,403,424,445,466,487,508,529,550,571,592,613,634,655,676,697,718,739,760,781,802,823,844,865,886,907,928,949,970,991,1012,1033,1054,1075,1096,1117,1138,1159,1180,1201,1222,1243,1264,1285,1306,1327,1348,1369,1390,1411,1432,1453,1474,1495,1516,1537,1558,1579,1600,1621,1642,1663,1684,1705,1726,1747,1768,1789],\"visibledatacolumn\":[39,200,334,471,563,681,797,870,995,1068,1229,1359,1453,1530,1660,1754,1831,1942,2042,2125,2257,2352,2430,2561,2656,2733,2863,2957,3034,3170,3263,3339,3482,3588,3677,3816,3918,4003,4137,4235,4316,4458,4556,4637,4767,4861,4938,5011,5084,5157,5230,5303,5376,5449,5522,5595,5668,5741,5814,5887],\"ch_width\":6007,\"rh_height\":1869,\"luckysheet_selection_range\":[],\"scrollLeft\":0,\"scrollTop\":0,\"images\":{},\"filter_select\":null,\"filter\":null,\"luckysheet_conditionformat_save\":[],\"luckysheet_alternateformat_save\":[],\"dataVerification\":{},\"hyperlink\":{},\"chart\":[{\"chart_id\":\"chart_7kHloa50MlLM_1683099908843\",\"width\":400,\"height\":250,\"left\":0,\"top\":0,\"sheetIndex\":\"1\",\"needRangeShow\":false,\"isShow\":false}]},{\"name\":\"Gedung\",\"config\":{\"merge\":{\"1_1\":{\"r\":1,\"c\":1,\"rs\":1,\"cs\":3},\"1_11\":{\"r\":1,\"c\":11,\"rs\":1,\"cs\":1},\"1_16\":{\"r\":1,\"c\":16,\"rs\":1,\"cs\":1},\"24_0\":{\"r\":24,\"c\":0,\"rs\":1,\"cs\":14}},\"rowlen\":{\"0\":20},\"columnlen\":{\"0\":37,\"5\":43,\"6\":120,\"10\":50,\"11\":156.1988525390625,\"16\":153.3302459716797},\"customWidth\":{\"0\":1,\"5\":1,\"6\":1,\"10\":1},\"colhidden\":{},\"customHeight\":{\"0\":1},\"rowhidden\":{}},\"index\":\"2\",\"status\":0,\"order\":1,\"zoomRatio\":1,\"showGridLines\":\"1\",\"defaultColWidth\":72,\"defaultRowHeight\":20,\"celldata\":[{\"r\":1,\"c\":0,\"v\":{\"m\":\"No\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"v\":\"No\",\"bg\":\"#cccccc\",\"fs\":\"12\",\"bl\":1}},{\"r\":1,\"c\":1,\"v\":{\"v\":\" REALISASI S.D SEPT : \",\"ct\":{\"fa\":\"@\",\"t\":\"s\"},\"m\":\" REALISASI S.D SEPT : \",\"bg\":\"rgb(217, 217, 217)\",\"bl\":1,\"it\":0,\"ff\":0,\"fs\":13,\"fc\":\"rgb(0, 0, 0)\",\"ht\":1,\"vt\":0,\"mc\":{\"r\":1,\"c\":1,\"rs\":1,\"cs\":3}}},{\"r\":1,\"c\":2,\"v\":{\"mc\":{\"r\":1,\"c\":1}}},{\"r\":1,\"c\":3,\"v\":{\"mc\":{\"r\":1,\"c\":1}}},{\"r\":1,\"c\":4,\"v\":{\"bg\":\"#ffffff\",\"bl\":1,\"it\":0,\"ff\":0,\"fs\":13,\"fc\":\"rgb(0, 0, 0)\",\"ht\":1,\"vt\":0}},{\"r\":1,\"c\":5,\"v\":{\"m\":\"No\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"v\":\"No\",\"bg\":\"#cccccc\",\"ht\":\"0\",\"fs\":\"12\",\"bl\":1}},{\"r\":1,\"c\":6,\"v\":{\"v\":\"REAL OKT :\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"REAL OKT :\",\"bg\":\"rgb(217, 217, 217)\",\"bl\":1,\"it\":0,\"ff\":0,\"fs\":13,\"fc\":\"rgb(0, 0, 0)\",\"ht\":1,\"vt\":0}},{\"r\":1,\"c\":7,\"v\":{\"v\":\" PK - 47 \",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\" PK - 47 \",\"bg\":\"rgb(155, 194, 230)\",\"bl\":1,\"it\":0,\"ff\":0,\"fs\":13,\"fc\":\"rgb(0, 0, 0)\",\"ht\":0,\"vt\":0}},{\"r\":1,\"c\":8,\"v\":{\"v\":\" PK - 48 \",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\" PK - 48 \",\"bg\":\"rgb(248, 203, 173)\",\"bl\":1,\"it\":0,\"ff\":0,\"fs\":13,\"fc\":\"rgb(0, 0, 0)\",\"ht\":0,\"vt\":0}},{\"r\":1,\"c\":9,\"v\":{\"bg\":\"#ffffff\",\"bl\":1,\"it\":0,\"ff\":0,\"fs\":13,\"fc\":\"rgb(0, 0, 0)\",\"ht\":1,\"vt\":0}},{\"r\":1,\"c\":10,\"v\":{\"m\":\"No\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"v\":\"No\",\"bg\":\"#cccccc\",\"ht\":\"0\",\"fs\":\"12\",\"bl\":1}},{\"r\":1,\"c\":11,\"v\":{\"v\":\"PROYEKSI\\n  NOP :\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"PROYEKSI\\n  NOP :\",\"bg\":\"rgb(217, 217, 217)\",\"bl\":1,\"it\":0,\"ff\":0,\"fs\":13,\"fc\":\"rgb(0, 0, 0)\",\"ht\":1,\"vt\":0,\"mc\":{\"r\":1,\"c\":11,\"rs\":1,\"cs\":1}}},{\"r\":1,\"c\":12,\"v\":{\"v\":\" PK - 47 \",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\" PK - 47 \",\"bg\":\"rgb(155, 194, 230)\",\"bl\":1,\"it\":0,\"ff\":0,\"fs\":13,\"fc\":\"rgb(0, 0, 0)\",\"ht\":0,\"vt\":0}},{\"r\":1,\"c\":13,\"v\":{\"v\":\" PK - 48 \",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\" PK - 48 \",\"bg\":\"rgb(248, 203, 173)\",\"bl\":1,\"it\":0,\"ff\":0,\"fs\":13,\"fc\":\"rgb(0, 0, 0)\",\"ht\":0,\"vt\":0}},{\"r\":1,\"c\":14,\"v\":{\"bg\":\"#ffffff\",\"bl\":0,\"it\":0,\"ff\":0,\"fs\":13,\"fc\":\"rgb(0, 0, 0)\",\"ht\":1,\"vt\":0}},{\"r\":1,\"c\":15,\"v\":{\"m\":\"No\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"v\":\"No\",\"ht\":\"0\",\"bg\":\"#cccccc\",\"bl\":1,\"fs\":\"12\"}},{\"r\":1,\"c\":16,\"v\":{\"v\":\"PROYEKSI\\n  DES :\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\"PROYEKSI\\n  DES :\",\"bg\":\"rgb(217, 217, 217)\",\"bl\":1,\"it\":0,\"ff\":0,\"fs\":13,\"fc\":\"rgb(0, 0, 0)\",\"ht\":1,\"vt\":0,\"mc\":{\"r\":1,\"c\":16,\"rs\":1,\"cs\":1}}},{\"r\":1,\"c\":17,\"v\":{\"v\":\" PK - 47 \",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\" PK - 47 \",\"bg\":\"rgb(155, 194, 230)\",\"bl\":1,\"it\":0,\"ff\":0,\"fs\":13,\"fc\":\"rgb(0, 0, 0)\",\"ht\":0,\"vt\":0}},{\"r\":1,\"c\":18,\"v\":{\"v\":\" PK - 48 \",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"m\":\" PK - 48 \",\"bg\":\"rgb(248, 203, 173)\",\"bl\":1,\"it\":0,\"ff\":0,\"fs\":13,\"fc\":\"rgb(0, 0, 0)\",\"ht\":0,\"vt\":0}},{\"r\":2,\"c\":0,\"v\":{\"v\":1,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"1\"}},{\"r\":2,\"c\":5,\"v\":{\"v\":1,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"1\"}},{\"r\":2,\"c\":10,\"v\":{\"v\":1,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"1\"}},{\"r\":2,\"c\":15,\"v\":{\"v\":1,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"1\"}},{\"r\":3,\"c\":0,\"v\":{\"v\":2,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"2\"}},{\"r\":3,\"c\":5,\"v\":{\"v\":2,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"2\"}},{\"r\":3,\"c\":10,\"v\":{\"v\":2,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"2\"}},{\"r\":3,\"c\":15,\"v\":{\"v\":2,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"2\"}},{\"r\":4,\"c\":0,\"v\":{\"v\":3,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"3\"}},{\"r\":4,\"c\":5,\"v\":{\"v\":3,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"3\"}},{\"r\":4,\"c\":10,\"v\":{\"v\":3,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"3\"}},{\"r\":4,\"c\":15,\"v\":{\"v\":3,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"3\"}},{\"r\":5,\"c\":0,\"v\":{\"v\":4,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"4\"}},{\"r\":5,\"c\":5,\"v\":{\"v\":4,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"4\"}},{\"r\":5,\"c\":10,\"v\":{\"v\":4,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"4\"}},{\"r\":5,\"c\":15,\"v\":{\"v\":4,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"4\"}},{\"r\":6,\"c\":0,\"v\":{\"v\":5,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"5\"}},{\"r\":6,\"c\":5,\"v\":{\"v\":5,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"5\"}},{\"r\":6,\"c\":10,\"v\":{\"v\":5,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"5\"}},{\"r\":6,\"c\":15,\"v\":{\"v\":5,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"5\"}},{\"r\":7,\"c\":0,\"v\":{\"v\":6,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"6\"}},{\"r\":7,\"c\":5,\"v\":{\"v\":6,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"6\"}},{\"r\":7,\"c\":10,\"v\":{\"v\":6,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"6\"}},{\"r\":7,\"c\":15,\"v\":{\"v\":6,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"6\"}},{\"r\":8,\"c\":0,\"v\":{\"v\":7,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"7\"}},{\"r\":8,\"c\":5,\"v\":{\"v\":7,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"7\"}},{\"r\":8,\"c\":10,\"v\":{\"v\":7,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"7\"}},{\"r\":8,\"c\":15,\"v\":{\"v\":7,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"7\"}},{\"r\":9,\"c\":0,\"v\":{\"v\":8,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"8\"}},{\"r\":9,\"c\":5,\"v\":{\"v\":8,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"8\"}},{\"r\":9,\"c\":10,\"v\":{\"v\":8,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"8\"}},{\"r\":9,\"c\":15,\"v\":{\"v\":8,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"8\"}},{\"r\":10,\"c\":0,\"v\":{\"v\":9,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"9\"}},{\"r\":10,\"c\":5,\"v\":{\"v\":9,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"9\"}},{\"r\":10,\"c\":10,\"v\":{\"v\":9,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"9\"}},{\"r\":10,\"c\":15,\"v\":{\"v\":9,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"9\"}},{\"r\":11,\"c\":0,\"v\":{\"v\":10,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"10\"}},{\"r\":11,\"c\":5,\"v\":{\"v\":10,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"10\"}},{\"r\":11,\"c\":10,\"v\":{\"v\":10,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"10\"}},{\"r\":11,\"c\":15,\"v\":{\"v\":10,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"10\"}},{\"r\":12,\"c\":0,\"v\":{\"v\":11,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"11\"}},{\"r\":12,\"c\":5,\"v\":{\"v\":11,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"11\"}},{\"r\":12,\"c\":10,\"v\":{\"v\":11,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"11\"}},{\"r\":12,\"c\":15,\"v\":{\"v\":11,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"11\"}},{\"r\":13,\"c\":0,\"v\":{\"v\":12,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"12\"}},{\"r\":13,\"c\":5,\"v\":{\"v\":12,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"12\"}},{\"r\":13,\"c\":10,\"v\":{\"v\":12,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"12\"}},{\"r\":13,\"c\":15,\"v\":{\"v\":12,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"12\"}},{\"r\":14,\"c\":0,\"v\":{\"v\":13,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"13\"}},{\"r\":14,\"c\":5,\"v\":{\"v\":13,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"13\"}},{\"r\":14,\"c\":10,\"v\":{\"v\":13,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"13\"}},{\"r\":14,\"c\":15,\"v\":{\"v\":13,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"13\"}},{\"r\":15,\"c\":0,\"v\":{\"v\":14,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"14\"}},{\"r\":15,\"c\":5,\"v\":{\"v\":14,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"14\"}},{\"r\":15,\"c\":10,\"v\":{\"v\":14,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"14\"}},{\"r\":15,\"c\":15,\"v\":{\"v\":14,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"14\"}},{\"r\":16,\"c\":0,\"v\":{\"v\":15,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"15\"}},{\"r\":16,\"c\":5,\"v\":{\"v\":15,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"15\"}},{\"r\":16,\"c\":10,\"v\":{\"v\":15,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"15\"}},{\"r\":16,\"c\":15,\"v\":{\"v\":15,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"15\"}},{\"r\":17,\"c\":0,\"v\":{\"v\":16,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"16\"}},{\"r\":17,\"c\":5,\"v\":{\"v\":16,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"16\"}},{\"r\":17,\"c\":10,\"v\":{\"v\":16,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"16\"}},{\"r\":17,\"c\":15,\"v\":{\"v\":16,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"16\"}},{\"r\":18,\"c\":0,\"v\":{\"v\":17,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"17\"}},{\"r\":18,\"c\":5,\"v\":{\"v\":17,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"17\"}},{\"r\":18,\"c\":10,\"v\":{\"v\":17,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"17\"}},{\"r\":18,\"c\":15,\"v\":{\"v\":17,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"17\"}},{\"r\":19,\"c\":0,\"v\":{\"v\":18,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"18\"}},{\"r\":19,\"c\":5,\"v\":{\"v\":18,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"18\"}},{\"r\":19,\"c\":10,\"v\":{\"v\":18,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"18\"}},{\"r\":19,\"c\":15,\"v\":{\"v\":18,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"18\"}},{\"r\":20,\"c\":0,\"v\":{\"v\":19,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"19\"}},{\"r\":20,\"c\":5,\"v\":{\"v\":19,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"19\"}},{\"r\":20,\"c\":10,\"v\":{\"v\":19,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"19\"}},{\"r\":20,\"c\":15,\"v\":{\"v\":19,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"19\"}},{\"r\":21,\"c\":0,\"v\":{\"v\":20,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"20\"}},{\"r\":21,\"c\":5,\"v\":{\"v\":20,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"20\"}},{\"r\":21,\"c\":10,\"v\":{\"v\":20,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"20\"}},{\"r\":21,\"c\":15,\"v\":{\"v\":20,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"20\"}},{\"r\":24,\"c\":0,\"v\":{\"mc\":{\"r\":24,\"c\":0,\"rs\":1,\"cs\":14},\"m\":\"Catatan\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"v\":\"Catatan\",\"bg\":\"#cccccc\"}},{\"r\":24,\"c\":1,\"v\":{\"mc\":{\"r\":24,\"c\":0},\"bg\":\"#cccccc\"}},{\"r\":24,\"c\":2,\"v\":{\"mc\":{\"r\":24,\"c\":0},\"bg\":\"#cccccc\"}},{\"r\":24,\"c\":3,\"v\":{\"mc\":{\"r\":24,\"c\":0},\"bg\":\"#cccccc\"}},{\"r\":24,\"c\":4,\"v\":{\"mc\":{\"r\":24,\"c\":0},\"bg\":\"#cccccc\"}},{\"r\":24,\"c\":5,\"v\":{\"mc\":{\"r\":24,\"c\":0},\"bg\":\"#cccccc\"}},{\"r\":24,\"c\":6,\"v\":{\"mc\":{\"r\":24,\"c\":0},\"bg\":\"#cccccc\"}},{\"r\":24,\"c\":7,\"v\":{\"mc\":{\"r\":24,\"c\":0},\"bg\":\"#cccccc\"}},{\"r\":24,\"c\":8,\"v\":{\"mc\":{\"r\":24,\"c\":0},\"bg\":\"#cccccc\"}},{\"r\":24,\"c\":9,\"v\":{\"mc\":{\"r\":24,\"c\":0},\"bg\":\"#cccccc\"}},{\"r\":24,\"c\":10,\"v\":{\"mc\":{\"r\":24,\"c\":0},\"bg\":\"#cccccc\"}},{\"r\":24,\"c\":11,\"v\":{\"mc\":{\"r\":24,\"c\":0},\"bg\":\"#cccccc\"}},{\"r\":24,\"c\":12,\"v\":{\"mc\":{\"r\":24,\"c\":0},\"bg\":\"#cccccc\"}},{\"r\":24,\"c\":13,\"v\":{\"mc\":{\"r\":24,\"c\":0},\"bg\":\"#cccccc\"}}],\"calcChain\":[],\"luckysheet_select_save\":[{\"left\":374,\"width\":120,\"top\":735,\"height\":20,\"left_move\":374,\"width_move\":120,\"top_move\":735,\"height_move\":20,\"row\":[35,35],\"column\":[6,6],\"row_focus\":35,\"column_focus\":6}],\"visibledatarow\":[21,42,63,84,105,126,147,168,189,210,231,252,273,294,315,336,357,378,399,420,441,462,483,504,525,546,567,588,609,630,651,672,693,714,735,756,777,798,819,840,861,882,903,924,945,966,987,1008,1029,1050,1071,1092,1113,1134,1155,1176,1197,1218,1239,1260,1281,1302,1323,1344,1365,1386,1407,1428,1449,1470,1491,1512,1533,1554,1575,1596,1617,1638,1659,1680,1701,1722,1743,1764],\"visibledatacolumn\":[38,111,184,257,330,374,495,568,641,714,765,922,995,1068,1141,1214,1368,1441,1514,1587,1660,1733,1806,1879,1952,2025,2098,2171,2244,2317,2390,2463,2536,2609,2682,2755,2828,2901,2974,3047,3120,3193,3266,3339,3412,3485,3558,3631,3704,3777,3850,3923,3996,4069,4142,4215,4288,4361,4434,4507],\"ch_width\":4627,\"rh_height\":1844,\"luckysheet_selection_range\":[],\"scrollLeft\":0,\"scrollTop\":0,\"images\":{},\"filter_select\":null,\"filter\":null,\"luckysheet_conditionformat_save\":[],\"luckysheet_alternateformat_save\":[],\"dataVerification\":[],\"hyperlink\":{},\"dynamicArray\":[]},{\"name\":\"Sheet4\",\"color\":\"\",\"status\":0,\"order\":2,\"index\":\"Sheet_a7k3Ht5Wle0o_1680766343384\",\"celldata\":[],\"row\":84,\"column\":60,\"config\":{},\"pivotTable\":null,\"isPivotTable\":false,\"luckysheet_select_save\":[{\"row\":[0,0],\"column\":[0,0],\"row_focus\":0,\"column_focus\":0,\"left\":0,\"width\":73,\"top\":0,\"height\":19,\"left_move\":0,\"width_move\":73,\"top_move\":0,\"height_move\":19}],\"visibledatarow\":[20,40,60,80,100,120,140,160,180,200,220,240,260,280,300,320,340,360,380,400,420,440,460,480,500,520,540,560,580,600,620,640,660,680,700,720,740,760,780,800,820,840,860,880,900,920,940,960,980,1000,1020,1040,1060,1080,1100,1120,1140,1160,1180,1200,1220,1240,1260,1280,1300,1320,1340,1360,1380,1400,1420,1440,1460,1480,1500,1520,1540,1560,1580,1600,1620,1640,1660,1680],\"visibledatacolumn\":[74,148,222,296,370,444,518,592,666,740,814,888,962,1036,1110,1184,1258,1332,1406,1480,1554,1628,1702,1776,1850,1924,1998,2072,2146,2220,2294,2368,2442,2516,2590,2664,2738,2812,2886,2960,3034,3108,3182,3256,3330,3404,3478,3552,3626,3700,3774,3848,3922,3996,4070,4144,4218,4292,4366,4440],\"ch_width\":4560,\"rh_height\":1760,\"luckysheet_selection_range\":[],\"scrollLeft\":0,\"scrollTop\":0,\"zoomRatio\":1},{\"name\":\"Sheet3\",\"config\":{},\"index\":\"3\",\"status\":0,\"order\":3,\"zoomRatio\":1,\"showGridLines\":\"1\",\"defaultColWidth\":72,\"defaultRowHeight\":20,\"celldata\":[{\"r\":2,\"c\":1,\"v\":{\"m\":\"candra\",\"ct\":{\"fa\":\"General\",\"t\":\"g\"},\"v\":\"candra\"}},{\"r\":2,\"c\":2,\"v\":{\"v\":4500,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"4500\"}},{\"r\":3,\"c\":2,\"v\":{\"v\":3500,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"3500\"}},{\"r\":4,\"c\":2,\"v\":{\"v\":3500,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"3500\"}},{\"r\":5,\"c\":2,\"v\":{\"v\":2000,\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"2000\"}},{\"r\":6,\"c\":2,\"v\":{\"v\":13500,\"f\":\"=sum(C3:C6)\",\"ct\":{\"fa\":\"General\",\"t\":\"n\"},\"m\":\"13500\"}}],\"calcChain\":[{\"r\":6,\"c\":2,\"index\":3}],\"luckysheet_select_save\":[{\"left\":584,\"width\":72,\"top\":231,\"height\":20,\"left_move\":584,\"width_move\":72,\"top_move\":231,\"height_move\":20,\"row\":[11,11],\"column\":[8,8],\"row_focus\":11,\"column_focus\":8}],\"jfgird_select_save\":[],\"visibledatarow\":[21,42,63,84,105,126,147,168,189,210,231,252,273,294,315,336,357,378,399,420,441,462,483,504,525,546,567,588,609,630,651,672,693,714,735,756,777,798,819,840,861,882,903,924,945,966,987,1008,1029,1050,1071,1092,1113,1134,1155,1176,1197,1218,1239,1260,1281,1302,1323,1344,1365,1386,1407,1428,1449,1470,1491,1512,1533,1554,1575,1596,1617,1638,1659,1680,1701,1722,1743,1764],\"visibledatacolumn\":[73,146,219,292,365,438,511,584,657,730,803,876,949,1022,1095,1168,1241,1314,1387,1460,1533,1606,1679,1752,1825,1898,1971,2044,2117,2190,2263,2336,2409,2482,2555,2628,2701,2774,2847,2920,2993,3066,3139,3212,3285,3358,3431,3504,3577,3650,3723,3796,3869,3942,4015,4088,4161,4234,4307,4380],\"ch_width\":4500,\"rh_height\":1844,\"luckysheet_selection_range\":[],\"scrollLeft\":0,\"scrollTop\":0,\"chart\":[{\"chart_id\":\"chart_6k0e0ihaeMIe_1680760949716\",\"width\":400,\"height\":250,\"left\":0,\"top\":0,\"sheetIndex\":\"3\",\"needRangeShow\":false,\"isShow\":false}]}]', '2023-05-08 07:38:53', '2023-05-08 07:38:53');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Maniruzzaman Akash', 'manirujjamanakash@gmail.com', NULL, '$2y$10$LPmI1T1jyvM/uaz5gP9Njubv1B35lb5aHYAQI33JhdyF7Ipcygoxi', NULL, '2023-03-16 03:10:05', '2023-03-16 03:10:05');

-- --------------------------------------------------------

--
-- Table structure for table `validation_scorings`
--

CREATE TABLE `validation_scorings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `market_validation_id` bigint(20) UNSIGNED NOT NULL,
  `market_validation_type` varchar(255) NOT NULL DEFAULT 'App\\Models\\MarketValidationView',
  `parameter` varchar(255) NOT NULL,
  `grade` int(11) NOT NULL,
  `criteria1` varchar(255) NOT NULL,
  `criteria2` varchar(255) NOT NULL,
  `criteria3` varchar(255) NOT NULL,
  `criteria_selected` varchar(255) NOT NULL,
  `criteria_value` varchar(255) NOT NULL,
  `value` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `validation_scorings`
--

INSERT INTO `validation_scorings` (`id`, `market_validation_id`, `market_validation_type`, `parameter`, `grade`, `criteria1`, `criteria2`, `criteria3`, `criteria_selected`, `criteria_value`, `value`, `score`, `created_at`, `updated_at`) VALUES
(1, 1, 'App\\Models\\MarketValidationView', 'Track Record Owner', 12, 'Bermasalah', 'Biasa', 'Tidak bermasalah & Repeat Order', 'criteria3', 'Tidak bermasalah & Repeat Order', 100, 12, '2023-02-07 23:54:12', '2023-02-07 23:54:12'),
(2, 1, 'App\\Models\\MarketValidationView', 'Perkiraan NK-PPN Porsi PP', 8, '< 200 M', '-', '> 200 M', 'criteria3', '> 200 M', 100, 8, '2023-02-07 23:54:12', '2023-02-07 23:54:12'),
(3, 1, 'App\\Models\\MarketValidationView', 'Pendanaan', 80, 'Swasta Dengan Kepastian Pendanaan', 'Pemerintah / BUMN (Belum Teranggarkan)', 'Pemerintah / BUMN (Sudah Teranggarkan)', 'criteria3', 'Pemerintah / BUMN (Sudah Teranggarkan)', 100, 80, '2023-02-07 23:54:12', '2023-02-07 23:54:12'),
(4, 2, 'App\\Models\\MarketValidationView', 'Track Record Owner', 12, 'Bermasalah', 'Biasa', 'Tidak bermasalah & Repeat Order', 'criteria2', 'Biasa', 50, 6, '2023-02-08 12:15:30', '2023-02-08 12:15:30'),
(5, 2, 'App\\Models\\MarketValidationView', 'Perkiraan NK-PPN Porsi PP', 8, '< 200 M', '-', '> 200 M', 'criteria3', '> 200 M', 100, 8, '2023-02-08 12:15:30', '2023-02-08 12:15:30'),
(6, 2, 'App\\Models\\MarketValidationView', 'Pendanaan', 12, 'Swasta Dengan Kepastian Pendanaan', 'Pemerintah / BUMN (Belum Teranggarkan)', 'Pemerintah / BUMN (Sudah Teranggarkan)', 'criteria2', 'Pemerintah / BUMN (Belum Teranggarkan)', 50, 6, '2023-02-08 12:15:30', '2023-02-08 12:15:30'),
(7, 2, 'App\\Models\\MarketValidationView', 'Sistem Pembayaran', 12, 'Turnkey', 'Milestone tanpa UM', 'Monthly/Progress dgn UM', 'criteria2', 'Milestone tanpa UM', 50, 6, '2023-02-08 12:15:30', '2023-02-08 12:15:30'),
(8, 2, 'App\\Models\\MarketValidationView', 'Status Design', 5, 'Konsep Design', 'DED 50%', 'Final Design', 'criteria3', 'Final Design', 100, 5, '2023-02-08 12:15:30', '2023-02-08 12:15:30'),
(9, 2, 'App\\Models\\MarketValidationView', 'Perijinan ( IMB dll )', 5, 'Belum Proses', 'Proses', 'Siap', 'criteria2', 'Proses', 50, 3, '2023-02-08 12:15:30', '2023-02-08 12:15:30'),
(10, 2, 'App\\Models\\MarketValidationView', 'Pembebasan Tanah', 5, '< 50%', '50% - 75%', '75% - 100%', 'criteria3', '75% - 100%', 100, 5, '2023-02-08 12:15:30', '2023-02-08 12:15:30'),
(11, 2, 'App\\Models\\MarketValidationView', 'Pelanggan Lama / Baru', 5, 'Lama', '-', 'Baru', 'criteria2', '-', 50, 3, '2023-02-08 12:15:30', '2023-02-08 12:15:30'),
(12, 2, 'App\\Models\\MarketValidationView', 'Waktu Pelaksanaan Tender', 5, '6-12  bulan kedepan', '3 - 6 bulan kedepan', '3 bulan kedepan`', 'criteria3', '3 bulan kedepan`', 100, 5, '2023-02-08 12:15:30', '2023-02-08 12:15:30'),
(13, 2, 'App\\Models\\MarketValidationView', 'Pembinaan Relasi', 15, 'Biasa', 'Baik', 'Sangat Baik', 'criteria2', 'Baik', 50, 8, '2023-02-08 12:15:30', '2023-02-08 12:15:30'),
(14, 2, 'App\\Models\\MarketValidationView', 'Kesiapan SDM, Teknologi & Pengalaman', 8, 'Kurang', 'Sedang', 'Siap', 'criteria3', 'Siap', 100, 8, '2023-02-08 12:15:30', '2023-02-08 12:15:30'),
(15, 2, 'App\\Models\\MarketValidationView', 'Kesiapan Bermitra / JO', 8, 'Mitra  Kompetensi Biasa', 'Mitra Kompetensi Baik', 'Reguler & Kompeten', 'criteria2', 'Mitra Kompetensi Baik', 50, 4, '2023-02-08 12:15:30', '2023-02-08 12:15:30'),
(16, 3, 'App\\Models\\MarketValidationView', 'Track Record Owner', 12, 'Bermasalah', 'Biasa', 'Tidak bermasalah & Repeat Order', 'criteria3', 'Tidak bermasalah & Repeat Order', 100, 12, '2023-02-08 19:17:53', '2023-02-08 19:17:53'),
(17, 3, 'App\\Models\\MarketValidationView', 'Perkiraan NK-PPN Porsi PP', 8, '< 200 M', '-', '> 200 M', 'criteria3', '> 200 M', 100, 8, '2023-02-08 19:17:53', '2023-02-08 19:17:53'),
(18, 3, 'App\\Models\\MarketValidationView', 'Pendanaan', 12, 'Swasta Dengan Kepastian Pendanaan', 'Pemerintah / BUMN (Belum Teranggarkan)', 'Pemerintah / BUMN (Sudah Teranggarkan)', 'criteria3', 'Pemerintah / BUMN (Sudah Teranggarkan)', 100, 12, '2023-02-08 19:17:53', '2023-02-08 19:17:53'),
(19, 3, 'App\\Models\\MarketValidationView', 'Sistem Pembayaran', 12, 'Turnkey', 'Milestone tanpa UM', 'Monthly/Progress dgn UM', 'criteria3', 'Monthly/Progress dgn UM', 100, 12, '2023-02-08 19:17:53', '2023-02-08 19:17:53'),
(20, 3, 'App\\Models\\MarketValidationView', 'Status Design', 5, 'Konsep Design', 'DED 50%', 'Final Design', 'criteria3', 'Final Design', 100, 5, '2023-02-08 19:17:53', '2023-02-08 19:17:53'),
(21, 3, 'App\\Models\\MarketValidationView', 'Perijinan ( IMB dll )', 5, 'Belum Proses', 'Proses', 'Siap', 'criteria3', 'Siap', 100, 5, '2023-02-08 19:17:53', '2023-02-08 19:17:53'),
(22, 3, 'App\\Models\\MarketValidationView', 'Pembebasan Tanah', 5, '< 50%', '50% - 75%', '75% - 100%', 'criteria3', '75% - 100%', 100, 5, '2023-02-08 19:17:53', '2023-02-08 19:17:53'),
(23, 3, 'App\\Models\\MarketValidationView', 'Pelanggan Lama / Baru', 5, 'Lama', '-', 'Baru', 'criteria3', 'Baru', 100, 5, '2023-02-08 19:17:53', '2023-02-08 19:17:53'),
(24, 3, 'App\\Models\\MarketValidationView', 'Waktu Pelaksanaan Tender', 5, '6-12  bulan kedepan', '3 - 6 bulan kedepan', '3 bulan kedepan`', 'criteria3', '3 bulan kedepan`', 100, 5, '2023-02-08 19:17:53', '2023-02-08 19:17:53'),
(25, 3, 'App\\Models\\MarketValidationView', 'Pembinaan Relasi', 15, 'Biasa', 'Baik', 'Sangat Baik', 'criteria3', 'Sangat Baik', 100, 15, '2023-02-08 19:17:53', '2023-02-08 19:17:53'),
(26, 3, 'App\\Models\\MarketValidationView', 'Kesiapan SDM, Teknologi & Pengalaman', 8, 'Kurang', 'Sedang', 'Siap', 'criteria3', 'Siap', 100, 8, '2023-02-08 19:17:53', '2023-02-08 19:17:53'),
(27, 3, 'App\\Models\\MarketValidationView', 'Kesiapan Bermitra / JO', 8, 'Mitra  Kompetensi Biasa', 'Mitra Kompetensi Baik', 'Reguler & Kompeten', 'criteria3', 'Reguler & Kompeten', 100, 8, '2023-02-08 19:17:53', '2023-02-08 19:17:53'),
(28, 4, 'App\\Models\\MarketValidationView', 'Track Record Owner', 12, 'Bermasalah', 'Biasa', 'Tidak bermasalah & Repeat Order', 'criteria3', 'Tidak bermasalah & Repeat Order', 100, 12, '2023-02-08 20:12:05', '2023-02-08 20:12:05'),
(29, 4, 'App\\Models\\MarketValidationView', 'Perkiraan NK-PPN Porsi PP', 8, '< 200 M', '-', '> 200 M', 'criteria3', '> 200 M', 100, 8, '2023-02-08 20:12:05', '2023-02-08 20:12:05'),
(30, 4, 'App\\Models\\MarketValidationView', 'Pendanaan', 12, 'Swasta Dengan Kepastian Pendanaan', 'Pemerintah / BUMN (Belum Teranggarkan)', 'Pemerintah / BUMN (Sudah Teranggarkan)', 'criteria3', 'Pemerintah / BUMN (Sudah Teranggarkan)', 100, 12, '2023-02-08 20:12:05', '2023-02-08 20:12:05'),
(31, 4, 'App\\Models\\MarketValidationView', 'Sistem Pembayaran', 12, 'Turnkey', 'Milestone tanpa UM', 'Monthly/Progress dgn UM', 'criteria3', 'Monthly/Progress dgn UM', 100, 12, '2023-02-08 20:12:05', '2023-02-08 20:12:05'),
(32, 4, 'App\\Models\\MarketValidationView', 'Status Design', 5, 'Konsep Design', 'DED 50%', 'Final Design', 'criteria2', 'DED 50%', 50, 3, '2023-02-08 20:12:05', '2023-02-08 20:12:05'),
(33, 4, 'App\\Models\\MarketValidationView', 'Perijinan ( IMB dll )', 5, 'Belum Proses', 'Proses', 'Siap', 'criteria3', 'Siap', 100, 5, '2023-02-08 20:12:05', '2023-02-08 20:12:05'),
(34, 4, 'App\\Models\\MarketValidationView', 'Pembebasan Tanah', 5, '< 50%', '50% - 75%', '75% - 100%', 'criteria3', '75% - 100%', 100, 5, '2023-02-08 20:12:05', '2023-02-08 20:12:05'),
(35, 4, 'App\\Models\\MarketValidationView', 'Pelanggan Lama / Baru', 5, 'Lama', '-', 'Baru', 'criteria2', '-', 50, 3, '2023-02-08 20:12:05', '2023-02-08 20:12:05'),
(36, 4, 'App\\Models\\MarketValidationView', 'Waktu Pelaksanaan Tender', 5, '6-12  bulan kedepan', '3 - 6 bulan kedepan', '3 bulan kedepan`', 'criteria3', '3 bulan kedepan`', 100, 5, '2023-02-08 20:12:05', '2023-02-08 20:12:05'),
(37, 4, 'App\\Models\\MarketValidationView', 'Pembinaan Relasi', 15, 'Biasa', 'Baik', 'Sangat Baik', 'criteria3', 'Sangat Baik', 100, 15, '2023-02-08 20:12:05', '2023-02-08 20:12:05'),
(38, 4, 'App\\Models\\MarketValidationView', 'Kesiapan SDM, Teknologi & Pengalaman', 8, 'Kurang', 'Sedang', 'Siap', 'criteria3', 'Siap', 100, 8, '2023-02-08 20:12:05', '2023-02-08 20:12:05'),
(39, 4, 'App\\Models\\MarketValidationView', 'Kesiapan Bermitra / JO', 8, 'Mitra  Kompetensi Biasa', 'Mitra Kompetensi Baik', 'Reguler & Kompeten', 'criteria3', 'Reguler & Kompeten', 100, 8, '2023-02-08 20:12:05', '2023-02-08 20:12:05'),
(40, 5, 'App\\Models\\MarketValidationView', 'Track Record', 12, 'Bermasalah', 'Biasa', 'Tidak bermasalah & Repeat Order', 'criteria3', 'Tidak bermasalah & Repeat Order', 100, 12, '2023-03-16 06:36:30', '2023-03-16 06:36:30'),
(41, 5, 'App\\Models\\MarketValidationView', 'Perkiraan NK-PPN Porsi PP', 8, '< 200 M', '-', '> 200 M', 'criteria3', '> 200 M', 100, 8, '2023-03-16 06:36:30', '2023-03-16 06:36:30'),
(42, 5, 'App\\Models\\MarketValidationView', 'Pendanaan', 12, 'Swasta Dengan Kepastian Pendanaan', 'Pemerintah / BUMN (Belum Teranggarkan)', 'Pemerintah / BUMN (Sudah Teranggarkan)', 'criteria3', 'Pemerintah / BUMN (Sudah Teranggarkan)', 100, 12, '2023-03-16 06:36:30', '2023-03-16 06:36:30'),
(43, 5, 'App\\Models\\MarketValidationView', 'Sistem Pembayaran', 12, 'Turnkey', 'Milestone tanpa UM', 'Monthly/Progress dgn UM', 'criteria3', 'Monthly/Progress dgn UM', 100, 12, '2023-03-16 06:36:30', '2023-03-16 06:36:30'),
(44, 5, 'App\\Models\\MarketValidationView', 'Status Design', 5, 'Konsep Design', 'DED 50%', 'Final Design', 'criteria3', 'Final Design', 100, 5, '2023-03-16 06:36:30', '2023-03-16 06:36:30'),
(45, 5, 'App\\Models\\MarketValidationView', 'Perijinan ( IMB dll )', 5, 'Belum Proses', 'Proses', 'Siap', 'criteria3', 'Siap', 100, 5, '2023-03-16 06:36:30', '2023-03-16 06:36:30'),
(46, 5, 'App\\Models\\MarketValidationView', 'Pembebasan Tanah', 5, '< 50%', '50% - 75%', '75% - 100%', 'criteria3', '75% - 100%', 100, 5, '2023-03-16 06:36:30', '2023-03-16 06:36:30'),
(47, 5, 'App\\Models\\MarketValidationView', 'Pelanggan Lama / Baru', 5, 'Lama', '-', 'Baru', 'criteria3', 'Baru', 100, 5, '2023-03-16 06:36:30', '2023-03-16 06:36:30'),
(48, 5, 'App\\Models\\MarketValidationView', 'Waktu Pelaksanaan Tender', 5, '6-12  bulan kedepan', '3 - 6 bulan kedepan', '3 bulan kedepan`', 'criteria3', '3 bulan kedepan`', 100, 5, '2023-03-16 06:36:30', '2023-03-16 06:36:30'),
(49, 5, 'App\\Models\\MarketValidationView', 'Pembinaan Relasi', 15, 'Biasa', 'Baik', 'Sangat Baik', 'criteria3', 'Sangat Baik', 100, 15, '2023-03-16 06:36:30', '2023-03-16 06:36:30'),
(50, 5, 'App\\Models\\MarketValidationView', 'Kesiapan SDM, Teknologi & Pengalaman', 8, 'Kurang', 'Sedang', 'Siap', 'criteria3', 'Siap', 100, 8, '2023-03-16 06:36:30', '2023-03-16 06:36:30'),
(51, 5, 'App\\Models\\MarketValidationView', 'Kesiapan Bermitra / JO', 8, 'Mitra  Kompetensi Biasa', 'Mitra Kompetensi Baik', 'Reguler & Kompeten', 'criteria3', 'Reguler & Kompeten', 100, 8, '2023-03-16 06:36:30', '2023-03-16 06:36:30'),
(52, 6, 'App\\Models\\MarketValidationView', 'Track Record', 12, 'Bermasalah', 'Biasa', 'Tidak bermasalah & Repeat Order', 'criteria3', 'Tidak bermasalah & Repeat Order', 100, 12, '2023-03-30 01:57:04', '2023-03-30 01:57:04'),
(53, 6, 'App\\Models\\MarketValidationView', 'Perkiraan NK-PPN Porsi PP', 8, '< 200 M', '-', '> 200 M', 'criteria3', '> 200 M', 100, 8, '2023-03-30 01:57:04', '2023-03-30 01:57:04'),
(54, 6, 'App\\Models\\MarketValidationView', 'Pendanaan', 12, 'Swasta Dengan Kepastian Pendanaan', 'Pemerintah / BUMN (Belum Teranggarkan)', 'Pemerintah / BUMN (Sudah Teranggarkan)', 'criteria3', 'Pemerintah / BUMN (Sudah Teranggarkan)', 100, 12, '2023-03-30 01:57:04', '2023-03-30 01:57:04'),
(55, 6, 'App\\Models\\MarketValidationView', 'Sistem Pembayaran', 12, 'Turnkey', 'Milestone tanpa UM', 'Monthly/Progress dgn UM', 'criteria3', 'Monthly/Progress dgn UM', 100, 12, '2023-03-30 01:57:04', '2023-03-30 01:57:04'),
(56, 6, 'App\\Models\\MarketValidationView', 'Status Design', 5, 'Konsep Design', 'DED 50%', 'Final Design', 'criteria3', 'Final Design', 100, 5, '2023-03-30 01:57:04', '2023-03-30 01:57:04'),
(57, 6, 'App\\Models\\MarketValidationView', 'Perijinan ( IMB dll )', 5, 'Belum Proses', 'Proses', 'Siap', 'criteria3', 'Siap', 100, 5, '2023-03-30 01:57:04', '2023-03-30 01:57:04'),
(58, 6, 'App\\Models\\MarketValidationView', 'Pembebasan Tanah', 5, '< 50%', '50% - 75%', '75% - 100%', 'criteria3', '75% - 100%', 100, 5, '2023-03-30 01:57:04', '2023-03-30 01:57:04'),
(59, 6, 'App\\Models\\MarketValidationView', 'Pelanggan Lama / Baru', 5, 'Lama', '-', 'Baru', 'criteria3', 'Baru', 100, 5, '2023-03-30 01:57:04', '2023-03-30 01:57:04'),
(60, 6, 'App\\Models\\MarketValidationView', 'Waktu Pelaksanaan Tender', 5, '6-12  bulan kedepan', '3 - 6 bulan kedepan', '3 bulan kedepan`', 'criteria2', '3 - 6 bulan kedepan', 50, 3, '2023-03-30 01:57:04', '2023-03-30 01:58:52'),
(61, 6, 'App\\Models\\MarketValidationView', 'Pembinaan Relasi', 15, 'Biasa', 'Baik', 'Sangat Baik', 'criteria3', 'Sangat Baik', 100, 15, '2023-03-30 01:57:04', '2023-03-30 01:57:04'),
(62, 6, 'App\\Models\\MarketValidationView', 'Kesiapan SDM, Teknologi & Pengalaman', 8, 'Kurang', 'Sedang', 'Siap', 'criteria3', 'Siap', 100, 8, '2023-03-30 01:57:04', '2023-03-30 01:57:04'),
(63, 6, 'App\\Models\\MarketValidationView', 'Kesiapan Bermitra / JO', 8, 'Mitra  Kompetensi Biasa', 'Mitra Kompetensi Baik', 'Reguler & Kompeten', 'criteria3', 'Reguler & Kompeten', 100, 8, '2023-03-30 01:57:04', '2023-03-30 01:57:04'),
(64, 7, 'App\\Models\\MarketValidationView', 'Track Record', 12, 'Bermasalah', 'Biasa', 'Tidak bermasalah & Repeat Order', 'criteria2', 'Biasa', 50, 6, '2023-03-30 02:05:52', '2023-03-30 02:05:52'),
(65, 7, 'App\\Models\\MarketValidationView', 'Perkiraan NK-PPN Porsi PP', 8, '< 200 M', '-', '> 200 M', 'criteria2', '-', 50, 4, '2023-03-30 02:05:52', '2023-03-30 02:05:52'),
(66, 7, 'App\\Models\\MarketValidationView', 'Pendanaan', 12, 'Swasta Dengan Kepastian Pendanaan', 'Pemerintah / BUMN (Belum Teranggarkan)', 'Pemerintah / BUMN (Sudah Teranggarkan)', 'criteria2', 'Pemerintah / BUMN (Belum Teranggarkan)', 50, 6, '2023-03-30 02:05:52', '2023-03-30 02:05:52'),
(67, 7, 'App\\Models\\MarketValidationView', 'Sistem Pembayaran', 12, 'Turnkey', 'Milestone tanpa UM', 'Monthly/Progress dgn UM', 'criteria2', 'Milestone tanpa UM', 50, 6, '2023-03-30 02:05:52', '2023-03-30 02:05:52'),
(68, 7, 'App\\Models\\MarketValidationView', 'Status Design', 5, 'Konsep Design', 'DED 50%', 'Final Design', 'criteria2', 'DED 50%', 50, 3, '2023-03-30 02:05:52', '2023-03-30 02:05:52'),
(69, 7, 'App\\Models\\MarketValidationView', 'Perijinan ( IMB dll )', 5, 'Belum Proses', 'Proses', 'Siap', 'criteria2', 'Proses', 50, 3, '2023-03-30 02:05:52', '2023-03-30 02:05:52'),
(70, 7, 'App\\Models\\MarketValidationView', 'Pembebasan Tanah', 5, '< 50%', '50% - 75%', '75% - 100%', 'criteria2', '50% - 75%', 50, 3, '2023-03-30 02:05:52', '2023-03-30 02:05:52'),
(71, 7, 'App\\Models\\MarketValidationView', 'Pelanggan Lama / Baru', 5, 'Lama', '-', 'Baru', 'criteria2', '-', 50, 3, '2023-03-30 02:05:52', '2023-03-30 02:05:52'),
(72, 7, 'App\\Models\\MarketValidationView', 'Waktu Pelaksanaan Tender', 5, '6-12  bulan kedepan', '3 - 6 bulan kedepan', '3 bulan kedepan`', 'criteria2', '3 - 6 bulan kedepan', 50, 3, '2023-03-30 02:05:52', '2023-03-30 02:05:52'),
(73, 7, 'App\\Models\\MarketValidationView', 'Pembinaan Relasi', 15, 'Biasa', 'Baik', 'Sangat Baik', 'criteria2', 'Baik', 50, 8, '2023-03-30 02:05:52', '2023-03-30 02:05:52'),
(74, 7, 'App\\Models\\MarketValidationView', 'Kesiapan SDM, Teknologi & Pengalaman', 8, 'Kurang', 'Sedang', 'Siap', 'criteria2', 'Sedang', 50, 4, '2023-03-30 02:05:52', '2023-03-30 02:05:52'),
(75, 7, 'App\\Models\\MarketValidationView', 'Kesiapan Bermitra / JO', 8, 'Mitra  Kompetensi Biasa', 'Mitra Kompetensi Baik', 'Reguler & Kompeten', 'criteria2', 'Mitra Kompetensi Baik', 50, 4, '2023-03-30 02:05:52', '2023-03-30 02:05:52'),
(76, 8, 'App\\Models\\MarketValidationView', 'Track Record', 12, 'Bermasalah', 'Biasa', 'Tidak bermasalah & Repeat Order', 'criteria2', 'Biasa', 50, 6, '2023-03-30 02:25:58', '2023-03-30 02:25:58'),
(77, 8, 'App\\Models\\MarketValidationView', 'Perkiraan NK-PPN Porsi PP', 8, '< 200 M', '-', '> 200 M', 'criteria1', '< 200 M', 25, 2, '2023-03-30 02:25:58', '2023-03-30 02:25:58'),
(78, 8, 'App\\Models\\MarketValidationView', 'Pendanaan', 12, 'Swasta Dengan Kepastian Pendanaan', 'Pemerintah / BUMN (Belum Teranggarkan)', 'Pemerintah / BUMN (Sudah Teranggarkan)', 'criteria2', 'Pemerintah / BUMN (Belum Teranggarkan)', 50, 6, '2023-03-30 02:25:58', '2023-03-30 02:25:58'),
(79, 8, 'App\\Models\\MarketValidationView', 'Sistem Pembayaran', 12, 'Turnkey', 'Milestone tanpa UM', 'Monthly/Progress dgn UM', 'criteria1', 'Turnkey', 25, 3, '2023-03-30 02:25:58', '2023-03-30 02:25:58'),
(80, 8, 'App\\Models\\MarketValidationView', 'Status Design', 5, 'Konsep Design', 'DED 50%', 'Final Design', 'criteria3', 'Final Design', 100, 5, '2023-03-30 02:25:58', '2023-03-30 02:25:58'),
(81, 8, 'App\\Models\\MarketValidationView', 'Perijinan ( IMB dll )', 5, 'Belum Proses', 'Proses', 'Siap', 'criteria1', 'Belum Proses', 25, 1, '2023-03-30 02:25:58', '2023-03-30 02:25:58'),
(82, 8, 'App\\Models\\MarketValidationView', 'Pembebasan Tanah', 5, '< 50%', '50% - 75%', '75% - 100%', 'criteria2', '50% - 75%', 50, 3, '2023-03-30 02:25:58', '2023-03-30 02:25:58'),
(83, 8, 'App\\Models\\MarketValidationView', 'Pelanggan Lama / Baru', 5, 'Lama', '-', 'Baru', 'criteria3', 'Baru', 100, 5, '2023-03-30 02:25:58', '2023-03-30 02:25:58'),
(84, 8, 'App\\Models\\MarketValidationView', 'Waktu Pelaksanaan Tender', 5, '6-12  bulan kedepan', '3 - 6 bulan kedepan', '3 bulan kedepan`', 'criteria1', '6-12  bulan kedepan', 25, 1, '2023-03-30 02:25:58', '2023-03-30 02:25:58'),
(85, 8, 'App\\Models\\MarketValidationView', 'Pembinaan Relasi', 15, 'Biasa', 'Baik', 'Sangat Baik', 'criteria2', 'Baik', 50, 8, '2023-03-30 02:25:58', '2023-03-30 02:25:58'),
(86, 8, 'App\\Models\\MarketValidationView', 'Kesiapan SDM, Teknologi & Pengalaman', 8, 'Kurang', 'Sedang', 'Siap', 'criteria3', 'Siap', 100, 8, '2023-03-30 02:25:58', '2023-03-30 02:25:58'),
(87, 8, 'App\\Models\\MarketValidationView', 'Kesiapan Bermitra / JO', 8, 'Mitra  Kompetensi Biasa', 'Mitra Kompetensi Baik', 'Reguler & Kompeten', 'criteria2', 'Mitra Kompetensi Baik', 50, 4, '2023-03-30 02:25:58', '2023-03-30 02:25:58');

-- --------------------------------------------------------

--
-- Table structure for table `validation_scoring_tmps`
--

CREATE TABLE `validation_scoring_tmps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tmp_id` bigint(20) UNSIGNED NOT NULL,
  `parameter` varchar(255) NOT NULL,
  `grade` int(11) NOT NULL,
  `criteria1` varchar(255) NOT NULL,
  `criteria2` varchar(255) NOT NULL,
  `criteria3` varchar(255) NOT NULL,
  `criteria_selected` varchar(255) NOT NULL,
  `criteria_value` varchar(255) NOT NULL,
  `value` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `validation_scoring_tmps`
--

INSERT INTO `validation_scoring_tmps` (`id`, `tmp_id`, `parameter`, `grade`, `criteria1`, `criteria2`, `criteria3`, `criteria_selected`, `criteria_value`, `value`, `score`, `created_at`, `updated_at`) VALUES
(1, 9, 'Track Record', 12, 'Bermasalah', 'Biasa', 'Tidak bermasalah & Repeat Order', 'criteria3', 'Tidak bermasalah & Repeat Order', 100, 12, '2023-03-30 02:35:11', '2023-03-30 02:35:11'),
(2, 9, 'Perkiraan NK-PPN Porsi PP', 8, '< 200 M', '-', '> 200 M', 'criteria3', '> 200 M', 100, 8, '2023-03-30 02:35:11', '2023-03-30 02:35:11'),
(3, 9, 'Pendanaan', 12, 'Swasta Dengan Kepastian Pendanaan', 'Pemerintah / BUMN (Belum Teranggarkan)', 'Pemerintah / BUMN (Sudah Teranggarkan)', 'criteria3', 'Pemerintah / BUMN (Sudah Teranggarkan)', 100, 12, '2023-03-30 02:35:11', '2023-03-30 02:35:11'),
(4, 9, 'Sistem Pembayaran', 12, 'Turnkey', 'Milestone tanpa UM', 'Monthly/Progress dgn UM', 'criteria3', 'Monthly/Progress dgn UM', 100, 12, '2023-03-30 02:35:11', '2023-03-30 02:35:11'),
(5, 9, 'Status Design', 5, 'Konsep Design', 'DED 50%', 'Final Design', 'criteria3', 'Final Design', 100, 5, '2023-03-30 02:35:11', '2023-03-30 02:35:11'),
(6, 9, 'Perijinan ( IMB dll )', 5, 'Belum Proses', 'Proses', 'Siap', 'criteria3', 'Siap', 100, 5, '2023-03-30 02:35:11', '2023-03-30 02:35:11'),
(7, 9, 'Pembebasan Tanah', 5, '< 50%', '50% - 75%', '75% - 100%', 'criteria3', '75% - 100%', 100, 5, '2023-03-30 02:35:11', '2023-03-30 02:35:11'),
(8, 9, 'Pelanggan Lama / Baru', 5, 'Lama', '-', 'Baru', 'criteria3', 'Baru', 100, 5, '2023-03-30 02:35:11', '2023-03-30 02:35:11'),
(9, 9, 'Waktu Pelaksanaan Tender', 5, '6-12  bulan kedepan', '3 - 6 bulan kedepan', '3 bulan kedepan`', 'criteria3', '3 bulan kedepan`', 100, 5, '2023-03-30 02:35:11', '2023-03-30 02:35:11'),
(10, 9, 'Pembinaan Relasi', 15, 'Biasa', 'Baik', 'Sangat Baik', 'criteria3', 'Sangat Baik', 100, 15, '2023-03-30 02:35:11', '2023-03-30 02:35:11'),
(11, 9, 'Kesiapan SDM, Teknologi & Pengalaman', 8, 'Kurang', 'Sedang', 'Siap', 'criteria3', 'Siap', 100, 8, '2023-03-30 02:35:11', '2023-03-30 02:35:11'),
(12, 9, 'Kesiapan Bermitra / JO', 8, 'Mitra  Kompetensi Biasa', 'Mitra Kompetensi Baik', 'Reguler & Kompeten', 'criteria3', 'Reguler & Kompeten', 100, 8, '2023-03-30 02:35:11', '2023-03-30 02:35:11');

-- --------------------------------------------------------

--
-- Structure for view `contoh`
--
DROP TABLE IF EXISTS `contoh`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `contoh`  AS SELECT `users`.`id` AS `id`, `users`.`name` AS `name`, `users`.`email` AS `email`, `users`.`email_verified_at` AS `email_verified_at`, `users`.`password` AS `password`, `users`.`remember_token` AS `remember_token`, `users`.`created_at` AS `created_at`, `users`.`updated_at` AS `updated_at` FROM `users``users`  ;

-- --------------------------------------------------------

--
-- Structure for view `market_validations_view`
--
DROP TABLE IF EXISTS `market_validations_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `market_validations_view`  AS SELECT `market_validations`.`id` AS `id`, `market_validations`.`project_name` AS `project_name`, `market_validations`.`company_id` AS `company_id`, `market_validations`.`devision_id` AS `devision_id`, `market_validations`.`project_type_id` AS `project_type_id`, `market_validations`.`specific_construction_id` AS `specific_construction_id`, `market_validations`.`month` AS `month`, `market_validations`.`year` AS `year`, `market_validations`.`file` AS `file`, `market_validations`.`customer_owner_id` AS `customer_owner_id`, `market_validations`.`owner_type_id` AS `owner_type_id`, `market_validations`.`location_id` AS `location_id`, `market_validations`.`customer_description_id` AS `customer_description_id`, `market_validations`.`score_total` AS `score_total`, `market_validations`.`rating_result` AS `rating_result`, `market_validations`.`created_at` AS `created_at`, `market_validations`.`updated_at` AS `updated_at`, (select `validation_scorings`.`criteria_value` from `validation_scorings` where `validation_scorings`.`market_validation_id` = `market_validations`.`id` and `validation_scorings`.`parameter` = 'Track Record Owner') AS `track_record_owner`, (select `validation_scorings`.`criteria_value` from `validation_scorings` where `validation_scorings`.`market_validation_id` = `market_validations`.`id` and `validation_scorings`.`parameter` = 'Perkiraan NK-PPN Porsi PP') AS `perkiraan_nkppn_porsi_pp`, (select `validation_scorings`.`criteria_value` from `validation_scorings` where `validation_scorings`.`market_validation_id` = `market_validations`.`id` and `validation_scorings`.`parameter` = 'Pendanaan') AS `pendanaan`, (select `validation_scorings`.`criteria_value` from `validation_scorings` where `validation_scorings`.`market_validation_id` = `market_validations`.`id` and `validation_scorings`.`parameter` = 'Sistem Pembayaran') AS `sistem_pembayaran`, (select `validation_scorings`.`criteria_value` from `validation_scorings` where `validation_scorings`.`market_validation_id` = `market_validations`.`id` and `validation_scorings`.`parameter` = 'Status Design') AS `status_design`, (select `validation_scorings`.`criteria_value` from `validation_scorings` where `validation_scorings`.`market_validation_id` = `market_validations`.`id` and `validation_scorings`.`parameter` = 'Perijinan ( IMB dll )') AS `perijinan_imb_dll`, (select `validation_scorings`.`criteria_value` from `validation_scorings` where `validation_scorings`.`market_validation_id` = `market_validations`.`id` and `validation_scorings`.`parameter` = 'Pembebasan Tanah') AS `pembebasan_tanah`, (select `validation_scorings`.`criteria_value` from `validation_scorings` where `validation_scorings`.`market_validation_id` = `market_validations`.`id` and `validation_scorings`.`parameter` = 'Pelanggan Lama / Baru') AS `pelanggan_lama__baru`, (select `validation_scorings`.`criteria_value` from `validation_scorings` where `validation_scorings`.`market_validation_id` = `market_validations`.`id` and `validation_scorings`.`parameter` = 'Waktu Pelaksanaan Tender') AS `waktu_pelaksanaan_tender`, (select `validation_scorings`.`criteria_value` from `validation_scorings` where `validation_scorings`.`market_validation_id` = `market_validations`.`id` and `validation_scorings`.`parameter` = 'Pembinaan Relasi') AS `pembinaan_relasi`, (select `validation_scorings`.`criteria_value` from `validation_scorings` where `validation_scorings`.`market_validation_id` = `market_validations`.`id` and `validation_scorings`.`parameter` = 'Kesiapan SDM, Teknologi & Pengalaman') AS `kesiapan_sdm_teknologi__pengalaman`, (select `validation_scorings`.`criteria_value` from `validation_scorings` where `validation_scorings`.`market_validation_id` = `market_validations`.`id` and `validation_scorings`.`parameter` = 'Kesiapan Bermitra / JO') AS `kesiapan_bermitra__jo` FROM `market_validations``market_validations`  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `admins_email_unique` (`email`) USING BTREE,
  ADD UNIQUE KEY `admins_username_unique` (`username`) USING BTREE;

--
-- Indexes for table `approval_rules`
--
ALTER TABLE `approval_rules`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `companys`
--
ALTER TABLE `companys`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `contoh2`
--
ALTER TABLE `contoh2`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `customer_descriptions`
--
ALTER TABLE `customer_descriptions`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `customer_owners`
--
ALTER TABLE `customer_owners`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `devisions`
--
ALTER TABLE `devisions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `devisions_company_id_foreign` (`company_id`) USING BTREE;

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `fundings`
--
ALTER TABLE `fundings`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `labels`
--
ALTER TABLE `labels`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `label_status`
--
ALTER TABLE `label_status`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `market_validations`
--
ALTER TABLE `market_validations`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `market_validations_company_id_foreign` (`company_id`) USING BTREE,
  ADD KEY `market_validations_devision_id_foreign` (`devision_id`) USING BTREE,
  ADD KEY `market_validations_project_type_id_foreign` (`project_type_id`) USING BTREE,
  ADD KEY `market_validations_specific_construction_id_foreign` (`specific_construction_id`) USING BTREE,
  ADD KEY `market_validations_customer_owner_id_foreign` (`customer_owner_id`) USING BTREE,
  ADD KEY `market_validations_owner_type_id_foreign` (`owner_type_id`) USING BTREE,
  ADD KEY `market_validations_location_id_foreign` (`location_id`) USING BTREE,
  ADD KEY `market_validations_customer_description_id_foreign` (`customer_description_id`) USING BTREE;

--
-- Indexes for table `market_validations_approval`
--
ALTER TABLE `market_validations_approval`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `master_months`
--
ALTER TABLE `master_months`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `master_years`
--
ALTER TABLE `master_years`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`) USING BTREE,
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`) USING BTREE;

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`) USING BTREE,
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`) USING BTREE;

--
-- Indexes for table `owner_categorys`
--
ALTER TABLE `owner_categorys`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `owner_types`
--
ALTER TABLE `owner_types`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`) USING BTREE;

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `pg_status`
--
ALTER TABLE `pg_status`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `pg_status_loses`
--
ALTER TABLE `pg_status_loses`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `pg_status_wins`
--
ALTER TABLE `pg_status_wins`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `pq_tenders`
--
ALTER TABLE `pq_tenders`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `pq_tenders_market_validation_id_foreign` (`market_validation_id`) USING BTREE,
  ADD KEY `pq_tenders_project_category_id_foreign` (`project_category_id`) USING BTREE,
  ADD KEY `pq_tenders_owner_category_id_foreign` (`owner_category_id`) USING BTREE;

--
-- Indexes for table `project_categorys`
--
ALTER TABLE `project_categorys`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `project_types`
--
ALTER TABLE `project_types`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `project_types_company_id_foreign` (`company_id`) USING BTREE,
  ADD KEY `project_types_devision_id_foreign` (`devision_id`) USING BTREE;

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`) USING BTREE,
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`) USING BTREE;

--
-- Indexes for table `scoring_forms`
--
ALTER TABLE `scoring_forms`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `specific_constructions`
--
ALTER TABLE `specific_constructions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `specific_constructions_company_id_foreign` (`company_id`) USING BTREE,
  ADD KEY `specific_constructions_devision_id_foreign` (`devision_id`) USING BTREE,
  ADD KEY `specific_constructions_project_type_id_foreign` (`project_type_id`) USING BTREE;

--
-- Indexes for table `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `users_email_unique` (`email`) USING BTREE;

--
-- Indexes for table `validation_scorings`
--
ALTER TABLE `validation_scorings`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `validation_scorings_market_validation_id_foreign` (`market_validation_id`) USING BTREE;

--
-- Indexes for table `validation_scoring_tmps`
--
ALTER TABLE `validation_scoring_tmps`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `approval_rules`
--
ALTER TABLE `approval_rules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `companys`
--
ALTER TABLE `companys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contoh2`
--
ALTER TABLE `contoh2`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `customer_descriptions`
--
ALTER TABLE `customer_descriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer_owners`
--
ALTER TABLE `customer_owners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `devisions`
--
ALTER TABLE `devisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fundings`
--
ALTER TABLE `fundings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `labels`
--
ALTER TABLE `labels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `label_status`
--
ALTER TABLE `label_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `market_validations`
--
ALTER TABLE `market_validations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `market_validations_approval`
--
ALTER TABLE `market_validations_approval`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `master_months`
--
ALTER TABLE `master_months`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `master_years`
--
ALTER TABLE `master_years`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `owner_categorys`
--
ALTER TABLE `owner_categorys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `owner_types`
--
ALTER TABLE `owner_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `pg_status`
--
ALTER TABLE `pg_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pg_status_loses`
--
ALTER TABLE `pg_status_loses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pg_status_wins`
--
ALTER TABLE `pg_status_wins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pq_tenders`
--
ALTER TABLE `pq_tenders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `project_categorys`
--
ALTER TABLE `project_categorys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `project_types`
--
ALTER TABLE `project_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `scoring_forms`
--
ALTER TABLE `scoring_forms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `specific_constructions`
--
ALTER TABLE `specific_constructions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `templates`
--
ALTER TABLE `templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `validation_scorings`
--
ALTER TABLE `validation_scorings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `validation_scoring_tmps`
--
ALTER TABLE `validation_scoring_tmps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `devisions`
--
ALTER TABLE `devisions`
  ADD CONSTRAINT `devisions_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companys` (`id`);

--
-- Constraints for table `market_validations`
--
ALTER TABLE `market_validations`
  ADD CONSTRAINT `market_validations_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companys` (`id`),
  ADD CONSTRAINT `market_validations_customer_description_id_foreign` FOREIGN KEY (`customer_description_id`) REFERENCES `customer_descriptions` (`id`),
  ADD CONSTRAINT `market_validations_customer_owner_id_foreign` FOREIGN KEY (`customer_owner_id`) REFERENCES `customer_owners` (`id`),
  ADD CONSTRAINT `market_validations_devision_id_foreign` FOREIGN KEY (`devision_id`) REFERENCES `devisions` (`id`),
  ADD CONSTRAINT `market_validations_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`),
  ADD CONSTRAINT `market_validations_owner_type_id_foreign` FOREIGN KEY (`owner_type_id`) REFERENCES `owner_types` (`id`),
  ADD CONSTRAINT `market_validations_project_type_id_foreign` FOREIGN KEY (`project_type_id`) REFERENCES `project_types` (`id`),
  ADD CONSTRAINT `market_validations_specific_construction_id_foreign` FOREIGN KEY (`specific_construction_id`) REFERENCES `specific_constructions` (`id`);

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
-- Constraints for table `pq_tenders`
--
ALTER TABLE `pq_tenders`
  ADD CONSTRAINT `pq_tenders_market_validation_id_foreign` FOREIGN KEY (`market_validation_id`) REFERENCES `market_validations` (`id`),
  ADD CONSTRAINT `pq_tenders_owner_category_id_foreign` FOREIGN KEY (`owner_category_id`) REFERENCES `owner_categorys` (`id`),
  ADD CONSTRAINT `pq_tenders_project_category_id_foreign` FOREIGN KEY (`project_category_id`) REFERENCES `project_categorys` (`id`);

--
-- Constraints for table `project_types`
--
ALTER TABLE `project_types`
  ADD CONSTRAINT `project_types_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companys` (`id`),
  ADD CONSTRAINT `project_types_devision_id_foreign` FOREIGN KEY (`devision_id`) REFERENCES `devisions` (`id`);

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `specific_constructions`
--
ALTER TABLE `specific_constructions`
  ADD CONSTRAINT `specific_constructions_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companys` (`id`),
  ADD CONSTRAINT `specific_constructions_devision_id_foreign` FOREIGN KEY (`devision_id`) REFERENCES `devisions` (`id`),
  ADD CONSTRAINT `specific_constructions_project_type_id_foreign` FOREIGN KEY (`project_type_id`) REFERENCES `project_types` (`id`);

--
-- Constraints for table `validation_scorings`
--
ALTER TABLE `validation_scorings`
  ADD CONSTRAINT `validation_scorings_market_validation_id_foreign` FOREIGN KEY (`market_validation_id`) REFERENCES `market_validations` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
