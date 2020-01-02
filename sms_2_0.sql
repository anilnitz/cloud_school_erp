-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 02, 2020 at 01:31 PM
-- Server version: 5.7.28-0ubuntu0.19.04.2
-- PHP Version: 7.2.24-0ubuntu0.19.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sms_2_0`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_contents`
--

CREATE TABLE `about_contents` (
  `id` int(10) UNSIGNED NOT NULL,
  `why_content` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `key_point_1_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `key_point_1_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `key_point_2_title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `key_point_2_content` longtext COLLATE utf8_unicode_ci,
  `key_point_3_title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `key_point_3_content` longtext COLLATE utf8_unicode_ci,
  `key_point_4_title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `key_point_4_content` longtext COLLATE utf8_unicode_ci,
  `key_point_5_title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `key_point_5_content` longtext COLLATE utf8_unicode_ci,
  `about_us` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `who_we_are` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `intro_video_embed_code` text COLLATE utf8_unicode_ci NOT NULL,
  `video_site_link` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `about_contents`
--

INSERT INTO `about_contents` (`id`, `why_content`, `key_point_1_title`, `key_point_1_content`, `key_point_2_title`, `key_point_2_content`, `key_point_3_title`, `key_point_3_content`, `key_point_4_title`, `key_point_4_content`, `key_point_5_title`, `key_point_5_content`, `about_us`, `who_we_are`, `intro_video_embed_code`, `video_site_link`, `created_at`, `updated_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy.', 'Key point 1', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock', 'Key point 2', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock', NULL, NULL, NULL, NULL, NULL, NULL, 'it is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 'it is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution', '<iframe src=\"https://www.youtube.com/embed/6sa1G_9jCb0\" frameborder=\"0\"  allowfullscreen></iframe>', 'https://www.youtube.com', '2020-01-02 06:36:56', '2020-01-02 06:36:56', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `about_sliders`
--

CREATE TABLE `about_sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `about_sliders`
--

INSERT INTO `about_sliders` (`id`, `image`, `order`, `created_at`, `updated_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, '1.jpg', 1, '2020-01-02 06:36:56', '2020-01-02 06:36:56', 0, 0, NULL),
(2, '2.jpg', 2, '2020-01-02 06:36:56', '2020-01-02 06:36:56', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `academic_calendars`
--

CREATE TABLE `academic_calendars` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_from` date NOT NULL,
  `date_upto` date NOT NULL,
  `is_holiday` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `is_exam` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `class_ids` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `academic_calendars`
--

INSERT INTO `academic_calendars` (`id`, `title`, `date_from`, `date_upto`, `is_holiday`, `is_exam`, `class_ids`, `description`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'New Year', '2020-01-01', '2020-01-01', '1', '0', NULL, 'Happy New Year', '2020-01-02 06:37:15', NULL, NULL, 1, NULL, NULL),
(2, 'Language Martyrs\' Day', '2020-02-21', '2020-02-21', '1', '0', NULL, 'International Mother Language Day', '2020-01-02 06:37:15', NULL, NULL, 1, NULL, NULL),
(3, 'Sheikh Mujibur Rahman\'s birthday', '2020-03-17', '2020-03-17', '1', '0', NULL, 'Father of Nation of Bangladesh', '2020-01-02 06:37:15', NULL, NULL, 1, NULL, NULL),
(4, 'Independence Day', '2020-03-26', '2020-03-26', '1', '0', NULL, 'Declaration of Independence from Pakistan in 1971', '2020-01-02 06:37:15', NULL, NULL, 1, NULL, NULL),
(5, '1st Term Exam', '2020-04-05', '2020-04-13', '0', '1', NULL, '', '2020-01-02 06:37:15', NULL, NULL, 1, NULL, NULL),
(6, 'Bengali New Year', '2020-04-14', '2020-04-14', '1', '0', NULL, 'Festival marking the start of the Bengali year', '2020-01-02 06:37:15', NULL, NULL, 1, NULL, NULL),
(7, 'May Day', '2020-05-01', '2020-05-01', '1', '0', NULL, 'International Labour Day', '2020-01-02 06:37:15', NULL, NULL, 1, NULL, NULL),
(8, 'Buddha Purnima', '2020-05-19', '2020-05-19', '1', '0', NULL, 'Birth of Buddha. Observed on the day of the full moon in May', '2020-01-02 06:37:15', NULL, NULL, 1, NULL, NULL),
(9, '2nd Term Exam', '2020-07-05', '2020-07-13', '0', '1', NULL, '', '2020-01-02 06:37:15', NULL, NULL, 1, NULL, NULL),
(10, 'National Mourning Day', '2020-08-15', '2020-08-15', '1', '0', NULL, 'National Mourning Day', '2020-01-02 06:37:15', NULL, NULL, 1, NULL, NULL),
(11, 'Janmashtami', '2020-08-24', '2020-08-24', '1', '0', NULL, 'Restricted Holiday. Celebrates the birth of Lord Shri Krishna', '2020-01-02 06:37:15', NULL, NULL, 1, NULL, NULL),
(12, 'Victory Day', '2020-12-16', '2020-12-16', '1', '0', NULL, 'Commemorates the surrender of the Pakistani army to the Mukti Bahini', '2020-01-02 06:37:15', NULL, NULL, 1, NULL, NULL),
(13, 'Final Exam', '2020-12-17', '2020-12-24', '0', '1', NULL, '', '2020-01-02 06:37:15', NULL, NULL, 1, NULL, NULL),
(14, 'Christmas Day', '2020-12-25', '2020-12-25', '1', '0', NULL, 'Christmas Day', '2020-01-02 06:37:15', NULL, NULL, 1, NULL, NULL),
(15, 'Year end holidays', '2020-12-26', '2020-12-31', '1', '0', NULL, '', '2020-01-02 06:37:15', NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `academic_years`
--

CREATE TABLE `academic_years` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `academic_years`
--

INSERT INTO `academic_years` (`id`, `title`, `start_date`, `end_date`, `status`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, '2020', '2020-01-01', '2020-12-31', '1', '2020-01-02 06:37:15', '2020-01-02 06:37:15', NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `app_metas`
--

CREATE TABLE `app_metas` (
  `id` int(10) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `app_metas`
--

INSERT INTO `app_metas` (`id`, `meta_key`, `meta_value`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'institute_settings', '{\"logo\":\"logo-md.png\",\"logo_small\":\"logo-xs.png\",\"favicon\":\"favicon.png\",\"name\":\"IOTtech School\",\"short_name\":\"CSBD\",\"establish\":\"2010\",\"website_link\":\"http:\\/\\/iottechsoft.com\",\"email\":\"info@iottechsoft.com\",\"phone_no\":\"+91-7302739565\",\"address\":\"Dwarka,India-110077\"}', '2020-01-02 06:37:15', '2020-01-02 07:07:10', NULL, 1, 1, NULL),
(2, 'academic_year', '1', '2020-01-02 06:37:15', '2020-01-02 07:01:41', NULL, 1, 1, NULL),
(3, 'frontend_website', '1', '2020-01-02 06:37:15', '2020-01-02 07:01:41', NULL, 1, 1, NULL),
(4, 'language', 'en', '2020-01-02 06:37:15', '2020-01-02 07:01:41', NULL, 1, 1, NULL),
(5, 'disable_language', '1', '2020-01-02 06:37:15', '2020-01-02 07:01:41', NULL, 1, 1, NULL),
(6, 'institute_type', '1', '2020-01-02 06:37:15', '2020-01-02 07:01:41', NULL, 1, 1, NULL),
(7, 'shift_data', '{\"Morning\":{\"start\":\"8:00 am\",\"end\":\"1:00 pm\"},\"Day\":{\"start\":\"2:00 pm\",\"end\":\"7:00 pm\"},\"Evening\":{\"start\":\"12:00 am\",\"end\":\"12:00 am\"}}', '2020-01-02 06:37:15', '2020-01-02 07:01:41', NULL, 1, 1, NULL),
(8, 'weekends', '[\"5\"]', '2020-01-02 06:37:15', '2020-01-02 07:01:41', NULL, 1, 1, NULL),
(9, 'total_casual_leave', '14', '2020-01-02 06:37:15', NULL, NULL, 1, NULL, NULL),
(10, 'total_sick_leave', '10', '2020-01-02 06:37:15', NULL, NULL, 1, NULL, NULL),
(11, 'student_idcard_template', '1', '2020-01-02 06:37:23', '2020-01-02 07:01:41', NULL, 1, 1, NULL),
(12, 'employee_idcard_template', '2', '2020-01-02 06:37:23', '2020-01-02 07:01:41', NULL, 1, 1, NULL),
(13, 'student_attendance_notification', '1', '2020-01-02 06:37:23', '2020-01-02 07:01:41', NULL, 1, 1, NULL),
(14, 'employee_attendance_notification', '2', '2020-01-02 06:37:23', '2020-01-02 07:01:41', NULL, 1, 1, NULL),
(15, 'student_attendance_template', '3', '2020-01-02 06:37:23', '2020-01-02 07:01:41', NULL, 1, 1, NULL),
(16, 'employee_attendance_template', '6', '2020-01-02 06:37:23', '2020-01-02 07:01:41', NULL, 1, 1, NULL),
(17, 'sms_gateway', '{\"gateway\":7,\"name\":\"student absent sms\",\"sender_id\":\"test\",\"user\":\"test\",\"password\":\"test\",\"api_url\":\"http:\\/\\/loglocally.test\"}', '2020-01-02 06:37:23', '2020-01-02 06:37:23', NULL, 1, 0, NULL),
(18, 'student_attendance_gateway', '17', '2020-01-02 06:37:23', '2020-01-02 07:01:41', NULL, 1, 1, NULL),
(19, 'result_default_grade_id', '1', '2020-01-02 06:37:24', '2020-01-02 07:01:41', NULL, 1, 1, NULL),
(20, 'employee_attendance_gateway', '0', '2020-01-02 07:01:41', '2020-01-02 07:01:41', NULL, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attendance_file_queues`
--

CREATE TABLE `attendance_file_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client_file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_format` int(11) NOT NULL DEFAULT '0',
  `total_rows` int(11) NOT NULL,
  `imported_rows` int(11) NOT NULL,
  `is_imported` smallint(6) NOT NULL DEFAULT '0',
  `send_notification` smallint(6) NOT NULL DEFAULT '0',
  `attendance_type` enum('1','2') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `class_profiles`
--

CREATE TABLE `class_profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `image_sm` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image_lg` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `teacher` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `room_no` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `capacity` int(11) NOT NULL,
  `shift` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `short_description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `outline` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `class_profiles`
--

INSERT INTO `class_profiles` (`id`, `name`, `slug`, `image_sm`, `image_lg`, `teacher`, `room_no`, `capacity`, `shift`, `short_description`, `description`, `outline`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'Class Three', 'class-three', '1-sm.jpg', '1-lg.jpg', 'MC Smith', 'R301-R302', 60, 'Morning', 'Lorem ipsum text', NULL, NULL, '2020-01-02 06:36:56', '2020-01-02 06:36:56', NULL, 0, 0, NULL),
(2, 'Class Four', 'class-four', '2-sm.jpg', '2-lg.jpg', 'Jhon Doe', 'R401-R402', 70, 'Morning', 'Lorem ipsum text', NULL, NULL, '2020-01-02 06:36:56', '2020-01-02 06:36:56', NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `id_card` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qualification` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `gender` enum('1','2') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `religion` enum('1','2','3','4','5') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_no` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `joining_date` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `signature` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shift` enum('1','2') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `duty_start` time DEFAULT NULL,
  `duty_end` time DEFAULT NULL,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `user_id`, `role_id`, `id_card`, `name`, `designation`, `qualification`, `dob`, `gender`, `religion`, `email`, `phone_no`, `address`, `joining_date`, `photo`, `signature`, `shift`, `duty_start`, `duty_end`, `status`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 5, 2, '0000000009', 'Kasey Kovacek', 'Dental Laboratory Technician', 'sit', '20/05/2014', '2', '2', 'uhalvorson@example.com', '+4344704995161', '6317 Dario Brook Suite 145\nLake Allison, AZ 37214-9989', '25/12/2017', NULL, NULL, '1', '09:00:00', '17:00:00', '1', '2020-01-02 06:37:15', '2020-01-02 06:37:16', NULL, 1, 0, NULL),
(2, 6, 2, '0000000004', 'Samanta Collier', 'Computer Operator', 'qui', '19/06/2019', '1', '3', 'rrolfson@example.net', '+6483620418807', '68363 Gulgowski Crossing Apt. 744\nLake Rafaela, IA 07782-3254', '10/01/2019', NULL, NULL, '2', '09:00:00', '17:00:00', '1', '2020-01-02 06:37:15', '2020-01-02 06:37:16', NULL, 1, 0, NULL),
(3, 7, 2, '0000000056', 'Tamara Daugherty', 'Crane and Tower Operator', 'est', '13/03/2012', '2', '5', 'towne.layne@example.com', '+3080835431993', '87426 Daren Streets\nWest Esthermouth, IA 11738', '30/07/2017', NULL, NULL, '2', '09:00:00', '17:00:00', '1', '2020-01-02 06:37:15', '2020-01-02 06:37:16', NULL, 1, 0, NULL),
(4, 8, 2, '0000000063', 'Ms. Ivy Haag Sr.', 'Explosives Expert', 'sed', '16/01/2011', '1', '5', 'brenna32@example.net', '+5360658509385', '745 Jodie Isle\nReillyland, IN 25416-5320', '31/08/2016', NULL, NULL, '1', '09:00:00', '17:00:00', '1', '2020-01-02 06:37:15', '2020-01-02 06:37:16', NULL, 1, 0, NULL),
(5, 9, 2, '0000000002', 'Miss Madisyn Hegmann', 'Admin', 'corrupti', '19/05/2000', '2', '4', 'rbrakus@example.net', '+6358365312488', '2927 Sauer Shoal Suite 785\nKipbury, LA 17826-8414', '06/12/2016', NULL, NULL, '1', '09:00:00', '17:00:00', '1', '2020-01-02 06:37:15', '2020-01-02 06:37:16', NULL, 1, 0, NULL),
(6, 10, 5, '0000000034', 'Angelo Wilderman', 'Door To Door Sales', 'officiis', '03/10/2005', '2', '2', 'frances72@example.com', '+1462332456903', '69919 Enrique Place\nPrestonton, CT 87852', '20/07/2018', NULL, NULL, '2', '09:00:00', '17:00:00', '1', '2020-01-02 06:37:17', '2020-01-02 06:37:17', NULL, 1, 0, NULL),
(7, 11, 6, '0000000001', 'Macey Carter', 'Spotters', 'aliquam', '20/12/2011', '2', '5', 'vfritsch@example.org', '+9529634570761', '9779 Adams Skyway Suite 840\nEast Annetown, DE 58546-4249', '31/01/2018', NULL, NULL, '2', '09:00:00', '17:00:00', '1', '2020-01-02 06:37:17', '2020-01-02 06:37:17', NULL, 1, 0, NULL),
(8, 12, 7, '0000000043', 'Arnaldo Leuschke', 'Library Science Teacher', 'est', '17/06/2006', '2', '4', 'zdooley@example.org', '+7079608569968', '4553 Romaguera Villages Apt. 137\nHeidenreichtown, NJ 62598-6679', '13/02/2018', NULL, NULL, '2', '09:00:00', '17:00:00', '1', '2020-01-02 06:37:17', '2020-01-02 06:37:17', NULL, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee_attendances`
--

CREATE TABLE `employee_attendances` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_id` int(10) UNSIGNED NOT NULL,
  `attendance_date` date NOT NULL,
  `in_time` datetime NOT NULL,
  `out_time` datetime NOT NULL,
  `working_hour` time NOT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `present` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employee_attendances`
--

INSERT INTO `employee_attendances` (`id`, `employee_id`, `attendance_date`, `in_time`, `out_time`, `working_hour`, `status`, `present`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 1, '2019-12-18', '2019-12-18 00:00:00', '2019-12-18 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(2, 2, '2019-12-18', '2019-12-18 08:00:00', '2019-12-18 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(3, 3, '2019-12-18', '2019-12-18 08:00:00', '2019-12-18 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(4, 4, '2019-12-18', '2019-12-18 08:00:00', '2019-12-18 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(5, 5, '2019-12-18', '2019-12-18 08:00:00', '2019-12-18 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(6, 6, '2019-12-18', '2019-12-18 08:00:00', '2019-12-18 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(7, 7, '2019-12-18', '2019-12-18 00:00:00', '2019-12-18 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(8, 8, '2019-12-18', '2019-12-18 08:00:00', '2019-12-18 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(9, 1, '2019-12-19', '2019-12-19 00:00:00', '2019-12-19 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(10, 2, '2019-12-19', '2019-12-19 08:00:00', '2019-12-19 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(11, 3, '2019-12-19', '2019-12-19 08:00:00', '2019-12-19 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(12, 4, '2019-12-19', '2019-12-19 08:00:00', '2019-12-19 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(13, 5, '2019-12-19', '2019-12-19 00:00:00', '2019-12-19 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(14, 6, '2019-12-19', '2019-12-19 00:00:00', '2019-12-19 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(15, 7, '2019-12-19', '2019-12-19 08:00:00', '2019-12-19 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(16, 8, '2019-12-19', '2019-12-19 00:00:00', '2019-12-19 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(17, 1, '2019-12-21', '2019-12-21 08:00:00', '2019-12-21 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(18, 2, '2019-12-21', '2019-12-21 08:00:00', '2019-12-21 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(19, 3, '2019-12-21', '2019-12-21 08:00:00', '2019-12-21 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(20, 4, '2019-12-21', '2019-12-21 08:00:00', '2019-12-21 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(21, 5, '2019-12-21', '2019-12-21 00:00:00', '2019-12-21 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(22, 6, '2019-12-21', '2019-12-21 00:00:00', '2019-12-21 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(23, 7, '2019-12-21', '2019-12-21 00:00:00', '2019-12-21 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(24, 8, '2019-12-21', '2019-12-21 08:00:00', '2019-12-21 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(25, 1, '2019-12-22', '2019-12-22 00:00:00', '2019-12-22 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(26, 2, '2019-12-22', '2019-12-22 08:00:00', '2019-12-22 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(27, 3, '2019-12-22', '2019-12-22 00:00:00', '2019-12-22 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(28, 4, '2019-12-22', '2019-12-22 00:00:00', '2019-12-22 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(29, 5, '2019-12-22', '2019-12-22 00:00:00', '2019-12-22 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(30, 6, '2019-12-22', '2019-12-22 08:00:00', '2019-12-22 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(31, 7, '2019-12-22', '2019-12-22 08:00:00', '2019-12-22 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(32, 8, '2019-12-22', '2019-12-22 08:00:00', '2019-12-22 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(33, 1, '2019-12-23', '2019-12-23 08:00:00', '2019-12-23 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(34, 2, '2019-12-23', '2019-12-23 00:00:00', '2019-12-23 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(35, 3, '2019-12-23', '2019-12-23 08:00:00', '2019-12-23 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(36, 4, '2019-12-23', '2019-12-23 00:00:00', '2019-12-23 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(37, 5, '2019-12-23', '2019-12-23 00:00:00', '2019-12-23 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(38, 6, '2019-12-23', '2019-12-23 00:00:00', '2019-12-23 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(39, 7, '2019-12-23', '2019-12-23 00:00:00', '2019-12-23 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(40, 8, '2019-12-23', '2019-12-23 08:00:00', '2019-12-23 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(41, 1, '2019-12-24', '2019-12-24 08:00:00', '2019-12-24 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(42, 2, '2019-12-24', '2019-12-24 08:00:00', '2019-12-24 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(43, 3, '2019-12-24', '2019-12-24 00:00:00', '2019-12-24 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(44, 4, '2019-12-24', '2019-12-24 08:00:00', '2019-12-24 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(45, 5, '2019-12-24', '2019-12-24 08:00:00', '2019-12-24 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(46, 6, '2019-12-24', '2019-12-24 00:00:00', '2019-12-24 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(47, 7, '2019-12-24', '2019-12-24 00:00:00', '2019-12-24 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(48, 8, '2019-12-24', '2019-12-24 00:00:00', '2019-12-24 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(49, 1, '2019-12-25', '2019-12-25 00:00:00', '2019-12-25 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(50, 2, '2019-12-25', '2019-12-25 00:00:00', '2019-12-25 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(51, 3, '2019-12-25', '2019-12-25 00:00:00', '2019-12-25 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(52, 4, '2019-12-25', '2019-12-25 00:00:00', '2019-12-25 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(53, 5, '2019-12-25', '2019-12-25 08:00:00', '2019-12-25 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(54, 6, '2019-12-25', '2019-12-25 08:00:00', '2019-12-25 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(55, 7, '2019-12-25', '2019-12-25 08:00:00', '2019-12-25 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(56, 8, '2019-12-25', '2019-12-25 00:00:00', '2019-12-25 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(57, 1, '2019-12-26', '2019-12-26 00:00:00', '2019-12-26 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(58, 2, '2019-12-26', '2019-12-26 08:00:00', '2019-12-26 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(59, 3, '2019-12-26', '2019-12-26 00:00:00', '2019-12-26 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(60, 4, '2019-12-26', '2019-12-26 08:00:00', '2019-12-26 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(61, 5, '2019-12-26', '2019-12-26 08:00:00', '2019-12-26 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(62, 6, '2019-12-26', '2019-12-26 08:00:00', '2019-12-26 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(63, 7, '2019-12-26', '2019-12-26 00:00:00', '2019-12-26 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(64, 8, '2019-12-26', '2019-12-26 00:00:00', '2019-12-26 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(65, 1, '2019-12-28', '2019-12-28 08:00:00', '2019-12-28 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(66, 2, '2019-12-28', '2019-12-28 08:00:00', '2019-12-28 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(67, 3, '2019-12-28', '2019-12-28 08:00:00', '2019-12-28 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(68, 4, '2019-12-28', '2019-12-28 08:00:00', '2019-12-28 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(69, 5, '2019-12-28', '2019-12-28 08:00:00', '2019-12-28 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(70, 6, '2019-12-28', '2019-12-28 00:00:00', '2019-12-28 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(71, 7, '2019-12-28', '2019-12-28 00:00:00', '2019-12-28 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(72, 8, '2019-12-28', '2019-12-28 00:00:00', '2019-12-28 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(73, 1, '2019-12-29', '2019-12-29 00:00:00', '2019-12-29 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(74, 2, '2019-12-29', '2019-12-29 08:00:00', '2019-12-29 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(75, 3, '2019-12-29', '2019-12-29 08:00:00', '2019-12-29 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(76, 4, '2019-12-29', '2019-12-29 00:00:00', '2019-12-29 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(77, 5, '2019-12-29', '2019-12-29 00:00:00', '2019-12-29 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(78, 6, '2019-12-29', '2019-12-29 08:00:00', '2019-12-29 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(79, 7, '2019-12-29', '2019-12-29 08:00:00', '2019-12-29 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(80, 8, '2019-12-29', '2019-12-29 00:00:00', '2019-12-29 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(81, 1, '2019-12-30', '2019-12-30 00:00:00', '2019-12-30 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(82, 2, '2019-12-30', '2019-12-30 08:00:00', '2019-12-30 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(83, 3, '2019-12-30', '2019-12-30 00:00:00', '2019-12-30 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(84, 4, '2019-12-30', '2019-12-30 08:00:00', '2019-12-30 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(85, 5, '2019-12-30', '2019-12-30 00:00:00', '2019-12-30 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(86, 6, '2019-12-30', '2019-12-30 00:00:00', '2019-12-30 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(87, 7, '2019-12-30', '2019-12-30 00:00:00', '2019-12-30 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(88, 8, '2019-12-30', '2019-12-30 08:00:00', '2019-12-30 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(89, 1, '2019-12-31', '2019-12-31 08:00:00', '2019-12-31 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(90, 2, '2019-12-31', '2019-12-31 08:00:00', '2019-12-31 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(91, 3, '2019-12-31', '2019-12-31 08:00:00', '2019-12-31 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(92, 4, '2019-12-31', '2019-12-31 00:00:00', '2019-12-31 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(93, 5, '2019-12-31', '2019-12-31 00:00:00', '2019-12-31 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(94, 6, '2019-12-31', '2019-12-31 00:00:00', '2019-12-31 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(95, 7, '2019-12-31', '2019-12-31 00:00:00', '2019-12-31 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(96, 8, '2019-12-31', '2019-12-31 08:00:00', '2019-12-31 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(97, 1, '2020-01-02', '2020-01-02 00:00:00', '2020-01-02 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(98, 2, '2020-01-02', '2020-01-02 00:00:00', '2020-01-02 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(99, 3, '2020-01-02', '2020-01-02 00:00:00', '2020-01-02 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(100, 4, '2020-01-02', '2020-01-02 08:00:00', '2020-01-02 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(101, 5, '2020-01-02', '2020-01-02 08:00:00', '2020-01-02 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(102, 6, '2020-01-02', '2020-01-02 00:00:00', '2020-01-02 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(103, 7, '2020-01-02', '2020-01-02 08:00:00', '2020-01-02 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(104, 8, '2020-01-02', '2020-01-02 00:00:00', '2020-01-02 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(10) UNSIGNED NOT NULL,
  `event_time` datetime NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `cover_photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cover_video` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `slider_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slider_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slider_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `event_time`, `title`, `slug`, `cover_photo`, `cover_video`, `tags`, `description`, `slider_1`, `slider_2`, `slider_3`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, '2018-12-04 13:36:00', 'Annual function 2018', 'annual-function-2018', '1.jpg', '', 'annual,function', 'it is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution', '11.jpg', '22.jpg', '33.jpg', '2020-01-02 06:36:56', '2020-01-02 06:36:56', NULL, 0, 0, NULL),
(2, '2018-12-20 15:00:00', 'Farewell Party', 'farewell-party', NULL, '<iframe src=\"https://www.youtube.com/embed/pXfqbimmBhE\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'farewell,party', '<p><b>Details:</b><br><ul><li><p>What restrooms are available prior to gates opening?</p><div>Angel Stadium restrooms are available prior to the gates opening; they are located in the parking lot near the Orangewood entrance.</div></li><li><div>Can I bring food or drinks into the stadium?</div><div>You can bring one unopened bottle of water per person into the stadium. No other food or drinks are permitted.</div></li><li><div>Will food be available for sale inside the stadium?</div><div>Yes. Concession stands will be open until Greg Laurie speaks. Alcohol will not be available.</div></li><li><div>Can I reserve or save seats?</div><div>No. Seating is first-come, first-served.</div></li></ul><br></p>', '11.jpg', '22.jpg', '33.jpg', '2020-01-02 06:36:56', '2020-01-02 06:36:56', NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` int(10) UNSIGNED NOT NULL,
  `class_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `elective_subject_point_addition` decimal(5,2) NOT NULL DEFAULT '0.00',
  `marks_distribution_types` text COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `class_id`, `name`, `elective_subject_point_addition`, `marks_distribution_types`, `status`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 8, 'Quis corrupti ex minus.', '0.00', '[2,3,6]', '1', '2020-01-02 06:37:24', '2020-01-02 06:37:24', NULL, 1, 0, NULL),
(2, 9, 'Dolor adipisci id est et.', '0.00', '[1,4,5]', '1', '2020-01-02 06:37:24', '2020-01-02 06:37:24', NULL, 1, 0, NULL),
(3, 9, 'Reprehenderit quis consectetur.', '1.00', '[3,4,6]', '1', '2020-01-02 06:37:24', '2020-01-02 06:37:24', NULL, 1, 0, NULL),
(4, 2, 'Officiis illo eveniet dolores.', '0.00', '[1,2,6]', '1', '2020-01-02 06:37:24', '2020-01-02 06:37:24', NULL, 1, 0, NULL),
(5, 3, 'Sed sit hic.', '2.00', '[1,2,5]', '1', '2020-01-02 06:37:24', '2020-01-02 06:37:24', NULL, 1, 0, NULL),
(6, 10, 'Optio ut consequatur sequi.', '0.00', '[4,5,7]', '1', '2020-01-02 06:37:24', '2020-01-02 06:37:24', NULL, 1, 0, NULL),
(7, 10, 'Cum atque sed.', '0.00', '[1,3,6]', '1', '2020-01-02 06:37:24', '2020-01-02 06:37:24', NULL, 1, 0, NULL),
(8, 4, 'Et velit illum.', '0.00', '[2,4,5]', '1', '2020-01-02 06:37:24', '2020-01-02 06:37:24', NULL, 1, 0, NULL),
(9, 7, 'Inventore debitis dolor.', '2.00', '[4,5,6]', '1', '2020-01-02 06:37:24', '2020-01-02 06:37:24', NULL, 1, 0, NULL),
(10, 8, 'Ut excepturi alias.', '2.00', '[1,4,6]', '1', '2020-01-02 06:37:24', '2020-01-02 06:37:24', NULL, 1, 0, NULL),
(11, 1, '1st Term Exam', '0.00', '[1,2,7]', '1', '2020-01-02 06:37:24', '2020-01-02 06:37:24', NULL, 1, 0, NULL),
(12, 1, 'Mid Term Exam', '2.00', '[1,2,5]', '1', '2020-01-02 06:37:24', '2020-01-02 06:37:24', NULL, 1, 0, NULL),
(13, 1, 'Final Exam', '0.00', '[1,2,7]', '1', '2020-01-02 06:37:24', '2020-01-02 06:37:24', NULL, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `exam_rules`
--

CREATE TABLE `exam_rules` (
  `id` int(10) UNSIGNED NOT NULL,
  `class_id` int(10) UNSIGNED NOT NULL,
  `subject_id` int(10) UNSIGNED NOT NULL,
  `exam_id` int(10) UNSIGNED NOT NULL,
  `grade_id` int(10) UNSIGNED NOT NULL,
  `combine_subject_id` int(10) UNSIGNED DEFAULT NULL,
  `marks_distribution` text COLLATE utf8_unicode_ci NOT NULL,
  `passing_rule` enum('1','2','3') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `total_exam_marks` int(11) NOT NULL DEFAULT '0',
  `over_all_pass` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `exam_rules`
--

INSERT INTO `exam_rules` (`id`, `class_id`, `subject_id`, `exam_id`, `grade_id`, `combine_subject_id`, `marks_distribution`, `passing_rule`, `total_exam_marks`, `over_all_pass`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 1, 11, 11, 1, 12, '[{\"type\":1,\"total_marks\":70,\"pass_marks\":0},{\"type\":2,\"total_marks\":30,\"pass_marks\":0},{\"type\":7,\"total_marks\":0,\"pass_marks\":0}]', '1', 100, 33, '2020-01-02 06:37:24', NULL, NULL, 1, NULL, NULL),
(2, 1, 12, 11, 2, NULL, '[{\"type\":1,\"total_marks\":35,\"pass_marks\":0},{\"type\":2,\"total_marks\":15,\"pass_marks\":0},{\"type\":7,\"total_marks\":0,\"pass_marks\":0}]', '1', 50, 17, '2020-01-02 06:37:24', NULL, NULL, 1, NULL, NULL),
(3, 1, 13, 11, 1, 14, '[{\"type\":1,\"total_marks\":70,\"pass_marks\":0},{\"type\":2,\"total_marks\":30,\"pass_marks\":0},{\"type\":7,\"total_marks\":0,\"pass_marks\":0}]', '1', 100, 33, '2020-01-02 06:37:24', NULL, NULL, 1, NULL, NULL),
(4, 1, 14, 11, 2, NULL, '[{\"type\":1,\"total_marks\":35,\"pass_marks\":0},{\"type\":2,\"total_marks\":15,\"pass_marks\":0},{\"type\":7,\"total_marks\":0,\"pass_marks\":0}]', '1', 50, 17, '2020-01-02 06:37:24', NULL, NULL, 1, NULL, NULL),
(5, 1, 15, 11, 1, NULL, '[{\"type\":1,\"total_marks\":70,\"pass_marks\":25},{\"type\":2,\"total_marks\":30,\"pass_marks\":10},{\"type\":7,\"total_marks\":0,\"pass_marks\":0}]', '2', 100, 0, '2020-01-02 06:37:24', NULL, NULL, 1, NULL, NULL),
(6, 1, 16, 11, 1, NULL, '[{\"type\":1,\"total_marks\":50,\"pass_marks\":25},{\"type\":2,\"total_marks\":30,\"pass_marks\":15},{\"type\":7,\"total_marks\":20,\"pass_marks\":10}]', '3', 100, 50, '2020-01-02 06:37:24', NULL, NULL, 1, NULL, NULL),
(7, 1, 11, 13, 1, 12, '[{\"type\":\"1\",\"total_marks\":\"0\",\"pass_marks\":\"40\"},{\"type\":\"2\",\"total_marks\":\"20\",\"pass_marks\":\"10\"},{\"type\":\"7\",\"total_marks\":\"40\",\"pass_marks\":\"10\"}]', '2', 100, 0, '2020-01-02 07:19:13', '2020-01-02 07:19:13', NULL, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rules` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `name`, `rules`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, '100 Marks', '[{\"grade\":1,\"point\":5,\"marks_from\":80,\"marks_upto\":100},{\"grade\":2,\"point\":4,\"marks_from\":70,\"marks_upto\":79},{\"grade\":3,\"point\":3.5,\"marks_from\":60,\"marks_upto\":69},{\"grade\":4,\"point\":3,\"marks_from\":50,\"marks_upto\":59},{\"grade\":5,\"point\":2,\"marks_from\":40,\"marks_upto\":49},{\"grade\":6,\"point\":1,\"marks_from\":33,\"marks_upto\":39},{\"grade\":7,\"point\":0,\"marks_from\":0,\"marks_upto\":32}]', '2020-01-02 06:37:24', NULL, NULL, 1, NULL, NULL),
(2, '50 Marks', '[{\"grade\":1,\"point\":5,\"marks_from\":40,\"marks_upto\":50},{\"grade\":2,\"point\":4,\"marks_from\":35,\"marks_upto\":39},{\"grade\":3,\"point\":3.5,\"marks_from\":30,\"marks_upto\":34},{\"grade\":4,\"point\":3,\"marks_from\":25,\"marks_upto\":29},{\"grade\":5,\"point\":2,\"marks_from\":20,\"marks_upto\":24},{\"grade\":6,\"point\":1,\"marks_from\":17,\"marks_upto\":19},{\"grade\":7,\"point\":0,\"marks_from\":0,\"marks_upto\":16}]', '2020-01-02 06:37:24', NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `i_classes`
--

CREATE TABLE `i_classes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `numeric_value` int(11) NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `group` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `i_classes`
--

INSERT INTO `i_classes` (`id`, `name`, `numeric_value`, `order`, `group`, `note`, `status`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'One', 1, 1, 'None', 'demo test', '1', '2020-01-02 06:37:15', NULL, NULL, 1, NULL, NULL),
(2, 'Two', 2, 2, 'None', 'demo test', '1', '2020-01-02 06:37:15', NULL, NULL, 1, NULL, NULL),
(3, 'Three', 3, 3, 'None', 'demo test', '1', '2020-01-02 06:37:15', NULL, NULL, 1, NULL, NULL),
(4, 'Four', 4, 4, 'None', 'demo test', '1', '2020-01-02 06:37:15', NULL, NULL, 1, NULL, NULL),
(5, 'Five', 5, 5, 'None', 'demo test', '1', '2020-01-02 06:37:15', NULL, NULL, 1, NULL, NULL),
(6, 'Six', 6, 6, 'None', 'demo test', '1', '2020-01-02 06:37:15', NULL, NULL, 1, NULL, NULL),
(7, 'Seven', 7, 7, 'None', 'demo test', '1', '2020-01-02 06:37:15', NULL, NULL, 1, NULL, NULL),
(8, 'Eight', 8, 8, 'None', 'demo test', '1', '2020-01-02 06:37:15', NULL, NULL, 1, NULL, NULL),
(9, 'Nine Science', 90, 9, 'Science', 'demo test', '1', '2020-01-02 06:37:15', NULL, NULL, 1, NULL, NULL),
(10, 'Nine Humanities', 91, 10, 'Humanities', 'demo test', '1', '2020-01-02 06:37:15', NULL, NULL, 1, NULL, NULL);

--
-- Triggers `i_classes`
--
DELIMITER $$
CREATE TRIGGER `i_class__ai` AFTER INSERT ON `i_classes` FOR EACH ROW INSERT INTO i_class_history SELECT 'insert', NULL, d.* 
    FROM i_classes AS d WHERE d.id = NEW.id
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `i_class__au` AFTER UPDATE ON `i_classes` FOR EACH ROW INSERT INTO i_class_history SELECT 'update', NULL, d.*
    FROM i_classes AS d WHERE d.id = NEW.id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `i_class_history`
--

CREATE TABLE `i_class_history` (
  `action` varchar(8) COLLATE utf8_unicode_ci DEFAULT 'insert',
  `revision` int(6) NOT NULL,
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `numeric_value` int(11) NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `group` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `i_class_history`
--

INSERT INTO `i_class_history` (`action`, `revision`, `id`, `name`, `numeric_value`, `order`, `group`, `note`, `status`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
('insert', 1, 1, 'One', 1, 1, 'None', 'demo test', '1', '2020-01-02 06:37:15', NULL, NULL, 1, NULL, NULL),
('insert', 1, 2, 'Two', 2, 2, 'None', 'demo test', '1', '2020-01-02 06:37:15', NULL, NULL, 1, NULL, NULL),
('insert', 1, 3, 'Three', 3, 3, 'None', 'demo test', '1', '2020-01-02 06:37:15', NULL, NULL, 1, NULL, NULL),
('insert', 1, 4, 'Four', 4, 4, 'None', 'demo test', '1', '2020-01-02 06:37:15', NULL, NULL, 1, NULL, NULL),
('insert', 1, 5, 'Five', 5, 5, 'None', 'demo test', '1', '2020-01-02 06:37:15', NULL, NULL, 1, NULL, NULL),
('insert', 1, 6, 'Six', 6, 6, 'None', 'demo test', '1', '2020-01-02 06:37:15', NULL, NULL, 1, NULL, NULL),
('insert', 1, 7, 'Seven', 7, 7, 'None', 'demo test', '1', '2020-01-02 06:37:15', NULL, NULL, 1, NULL, NULL),
('insert', 1, 8, 'Eight', 8, 8, 'None', 'demo test', '1', '2020-01-02 06:37:15', NULL, NULL, 1, NULL, NULL),
('insert', 1, 9, 'Nine Science', 90, 9, 'Science', 'demo test', '1', '2020-01-02 06:37:15', NULL, NULL, 1, NULL, NULL),
('insert', 1, 10, 'Nine Humanities', 91, 10, 'Humanities', 'demo test', '1', '2020-01-02 06:37:15', NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_id` int(10) UNSIGNED NOT NULL,
  `leave_type` enum('1','2','3') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `leave_date` date NOT NULL,
  `document` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `status` enum('1','2','3') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `leaves`
--

INSERT INTO `leaves` (`id`, `employee_id`, `leave_type`, `leave_date`, `document`, `description`, `status`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 2, '1', '2019-12-31', NULL, 'Dignissimos corporis beatae praesentium in magnam.', '2', '2020-01-02 06:37:24', '2020-01-02 06:37:24', NULL, 1, 0, NULL),
(2, 1, '2', '2019-12-25', NULL, 'Maxime dolorem ad nulla sed.', '1', '2020-01-02 06:37:24', '2020-01-02 06:37:24', NULL, 1, 0, NULL),
(3, 3, '2', '2019-12-20', NULL, 'Aut accusamus magni ullam.', '1', '2020-01-02 06:37:24', '2020-01-02 06:37:24', NULL, 1, 0, NULL),
(4, 2, '2', '2019-12-08', NULL, 'Ipsam dolor pariatur consequuntur quo aut doloremque.', '2', '2020-01-02 06:37:24', '2020-01-02 06:37:24', NULL, 1, 0, NULL),
(5, 8, '2', '2019-12-27', NULL, 'Porro earum magnam eum.', '1', '2020-01-02 06:37:24', '2020-01-02 06:37:24', NULL, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `id` int(10) UNSIGNED NOT NULL,
  `academic_year_id` int(10) UNSIGNED NOT NULL,
  `class_id` int(10) UNSIGNED NOT NULL,
  `section_id` int(10) UNSIGNED NOT NULL,
  `registration_id` int(10) UNSIGNED NOT NULL,
  `exam_id` int(10) UNSIGNED NOT NULL,
  `subject_id` int(10) UNSIGNED NOT NULL,
  `marks` text COLLATE utf8_unicode_ci NOT NULL,
  `total_marks` int(11) NOT NULL,
  `grade` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `point` decimal(5,2) NOT NULL,
  `present` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`id`, `academic_year_id`, `class_id`, `section_id`, `registration_id`, `exam_id`, `subject_id`, `marks`, `total_marks`, `grade`, `point`, `present`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 1, 1, 12, 1, 11, 11, '{\"1\":48,\"2\":10,\"7\":0}', 58, 'B', '3.00', '1', '2020-01-02 06:37:24', NULL, NULL, 1, NULL, NULL),
(2, 1, 1, 12, 2, 11, 11, '{\"1\":70,\"2\":10,\"7\":0}', 80, 'A+', '5.00', '1', '2020-01-02 06:37:24', NULL, NULL, 1, NULL, NULL),
(3, 1, 1, 12, 3, 11, 11, '{\"1\":5,\"2\":10,\"7\":0}', 15, 'F', '0.00', '1', '2020-01-02 06:37:24', NULL, NULL, 1, NULL, NULL),
(4, 1, 1, 12, 4, 11, 11, '{\"1\":5,\"2\":19,\"7\":0}', 24, 'F', '0.00', '1', '2020-01-02 06:37:24', NULL, NULL, 1, NULL, NULL),
(5, 1, 1, 12, 5, 11, 11, '{\"1\":13,\"2\":21,\"7\":0}', 34, 'D', '1.00', '1', '2020-01-02 06:37:24', NULL, NULL, 1, NULL, NULL),
(6, 1, 1, 12, 1, 11, 12, '{\"1\":33,\"2\":5,\"7\":0}', 38, 'A', '4.00', '1', '2020-01-02 06:37:24', NULL, NULL, 1, NULL, NULL),
(7, 1, 1, 12, 2, 11, 12, '{\"1\":32,\"2\":12,\"7\":0}', 44, 'A+', '5.00', '1', '2020-01-02 06:37:24', NULL, NULL, 1, NULL, NULL),
(8, 1, 1, 12, 3, 11, 12, '{\"1\":30,\"2\":11,\"7\":0}', 41, 'A+', '5.00', '1', '2020-01-02 06:37:24', NULL, NULL, 1, NULL, NULL),
(9, 1, 1, 12, 4, 11, 12, '{\"1\":10,\"2\":13,\"7\":0}', 23, 'C', '2.00', '1', '2020-01-02 06:37:24', NULL, NULL, 1, NULL, NULL),
(10, 1, 1, 12, 5, 11, 12, '{\"1\":28,\"2\":13,\"7\":0}', 41, 'A+', '5.00', '1', '2020-01-02 06:37:24', NULL, NULL, 1, NULL, NULL),
(11, 1, 1, 12, 1, 11, 13, '{\"1\":58,\"2\":17,\"7\":0}', 75, 'A', '4.00', '1', '2020-01-02 06:37:24', NULL, NULL, 1, NULL, NULL),
(12, 1, 1, 12, 2, 11, 13, '{\"1\":57,\"2\":30,\"7\":0}', 87, 'A+', '5.00', '1', '2020-01-02 06:37:24', NULL, NULL, 1, NULL, NULL),
(13, 1, 1, 12, 3, 11, 13, '{\"1\":42,\"2\":20,\"7\":0}', 62, 'A-', '3.50', '1', '2020-01-02 06:37:24', NULL, NULL, 1, NULL, NULL),
(14, 1, 1, 12, 4, 11, 13, '{\"1\":1,\"2\":9,\"7\":0}', 10, 'F', '0.00', '1', '2020-01-02 06:37:24', NULL, NULL, 1, NULL, NULL),
(15, 1, 1, 12, 5, 11, 13, '{\"1\":68,\"2\":0,\"7\":0}', 68, 'A-', '3.50', '1', '2020-01-02 06:37:24', NULL, NULL, 1, NULL, NULL),
(16, 1, 1, 12, 1, 11, 14, '{\"1\":16,\"2\":13,\"7\":0}', 29, 'B', '3.00', '1', '2020-01-02 06:37:24', NULL, NULL, 1, NULL, NULL),
(17, 1, 1, 12, 2, 11, 14, '{\"1\":5,\"2\":15,\"7\":0}', 20, 'C', '2.00', '1', '2020-01-02 06:37:24', NULL, NULL, 1, NULL, NULL),
(18, 1, 1, 12, 3, 11, 14, '{\"1\":21,\"2\":10,\"7\":0}', 31, 'A-', '3.50', '1', '2020-01-02 06:37:24', NULL, NULL, 1, NULL, NULL),
(19, 1, 1, 12, 4, 11, 14, '{\"1\":35,\"2\":3,\"7\":0}', 38, 'A', '4.00', '1', '2020-01-02 06:37:24', NULL, NULL, 1, NULL, NULL),
(20, 1, 1, 12, 5, 11, 14, '{\"1\":9,\"2\":11,\"7\":0}', 20, 'C', '2.00', '1', '2020-01-02 06:37:24', NULL, NULL, 1, NULL, NULL),
(21, 1, 1, 12, 1, 11, 15, '{\"1\":5,\"2\":2,\"7\":0}', 7, 'F', '0.00', '1', '2020-01-02 06:37:24', NULL, NULL, 1, NULL, NULL),
(22, 1, 1, 12, 2, 11, 15, '{\"1\":37,\"2\":9,\"7\":0}', 46, 'F', '0.00', '1', '2020-01-02 06:37:24', NULL, NULL, 1, NULL, NULL),
(23, 1, 1, 12, 3, 11, 15, '{\"1\":70,\"2\":14,\"7\":0}', 84, 'A+', '5.00', '1', '2020-01-02 06:37:24', NULL, NULL, 1, NULL, NULL),
(24, 1, 1, 12, 4, 11, 15, '{\"1\":26,\"2\":23,\"7\":0}', 49, 'C', '2.00', '1', '2020-01-02 06:37:24', NULL, NULL, 1, NULL, NULL),
(25, 1, 1, 12, 5, 11, 15, '{\"1\":64,\"2\":17,\"7\":0}', 81, 'A+', '5.00', '1', '2020-01-02 06:37:24', NULL, NULL, 1, NULL, NULL),
(26, 1, 1, 12, 1, 11, 16, '{\"1\":4,\"2\":2,\"7\":4}', 10, 'F', '0.00', '1', '2020-01-02 06:37:24', NULL, NULL, 1, NULL, NULL),
(27, 1, 1, 12, 2, 11, 16, '{\"1\":37,\"2\":19,\"7\":17}', 73, 'A', '4.00', '1', '2020-01-02 06:37:24', NULL, NULL, 1, NULL, NULL),
(28, 1, 1, 12, 3, 11, 16, '{\"1\":31,\"2\":8,\"7\":1}', 40, 'F', '0.00', '1', '2020-01-02 06:37:24', NULL, NULL, 1, NULL, NULL),
(29, 1, 1, 12, 4, 11, 16, '{\"1\":45,\"2\":30,\"7\":10}', 85, 'A+', '5.00', '1', '2020-01-02 06:37:24', NULL, NULL, 1, NULL, NULL),
(30, 1, 1, 12, 5, 11, 16, '{\"1\":42,\"2\":5,\"7\":0}', 47, 'F', '0.00', '1', '2020-01-02 06:37:24', NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2018_03_04_000000_create_roles_table', 1),
(2, '2018_03_05_000000_create_users_table', 1),
(3, '2018_03_05_000001_create_user_roles_table', 1),
(4, '2018_03_05_000002_create_permissions_table', 1),
(5, '2018_03_05_000003_create_users_permissions_table', 1),
(6, '2018_03_05_000004_create_roles_permissions_table', 1),
(7, '2018_03_05_000005_create_password_resets_table', 1),
(8, '2018_06_09_065945_create_sliders_table', 1),
(9, '2018_07_06_103920_create_about_content_tables', 1),
(10, '2018_07_08_110923_create_site_metas_table', 1),
(11, '2018_07_11_035714_create_testimonials_table', 1),
(12, '2018_07_14_115139_create_class_profiles_table', 1),
(13, '2018_07_14_155755_create_teacher_profiles_table', 1),
(14, '2018_07_14_180514_create_events_table', 1),
(15, '2018_08_11_092832_create_app_metas_table', 1),
(16, '2018_08_11_121754_create_academic_years_table', 1),
(17, '2018_08_14_052209_create_employees_table', 1),
(18, '2018_08_14_055151_create_i_classes_table', 1),
(19, '2018_08_14_064130_create_sections_table', 1),
(20, '2018_08_14_064556_create_students_table', 1),
(21, '2018_08_15_105155_create_registrations_table', 1),
(22, '2018_11_20_013140_create_notifications_table', 1),
(23, '2019_01_12_151224_create_subjects_table', 1),
(24, '2019_01_13_155559_create_student_attendances_table', 1),
(25, '2019_01_15_130708_create_templates_table', 1),
(26, '2019_01_18_160249_create_jobs_table', 1),
(27, '2019_01_18_160310_create_failed_jobs_table', 1),
(28, '2019_01_18_160745_create_sms_logs_table', 1),
(29, '2019_01_19_092522_create_attendance_file_queues_table', 1),
(30, '2019_02_12_105853_create_leaves_table', 1),
(31, '2019_02_12_163012_create_work_outsides_table', 1),
(32, '2019_02_15_111855_create_employee_attendances_table', 1),
(33, '2019_02_23_194914_create_exams_table', 1),
(34, '2019_02_23_195038_create_grades_table', 1),
(35, '2019_02_23_195053_create_exam_rules_table', 1),
(36, '2019_02_23_203247_create_marks_table', 1),
(37, '2019_02_23_203658_create_results_table', 1),
(38, '2019_03_14_173640_create_academic_calendars_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('7ebf81f1-692d-47be-9200-7e419c59fee5', 'App\\Notifications\\UserActivity', 'App\\User', 1, '{\"msg_type\":\"info\",\"msg_text\":\"Institute settings updated by Mr. admin\"}', NULL, '2020-01-02 07:01:42', '2020-01-02 07:01:42'),
('b2bd820e-eecc-490c-93a3-555f4fde6607', 'App\\Notifications\\UserActivity', 'App\\User', 1, '{\"msg_type\":\"info\",\"msg_text\":\"Exam rule added by Mr. admin\"}', NULL, '2020-01-02 07:19:13', '2020-01-02 07:19:13'),
('c51e5471-1862-4b14-b7d5-3d20b2e28d35', 'App\\Notifications\\UserActivity', 'App\\User', 1, '{\"msg_type\":\"info\",\"msg_text\":\"Institute settings updated by Mr. admin\"}', NULL, '2020-01-02 07:07:10', '2020-01-02 07:07:10');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `group` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `slug`, `name`, `group`, `created_at`) VALUES
(1, 'change_password', 'Change Password', 'Common', '2020-01-02 06:06:26'),
(2, 'user.dashboard', 'Dashboard', 'Common', '2020-01-02 06:06:26'),
(3, 'lockscreen', 'Lock Screen', 'Common', '2020-01-02 06:06:26'),
(4, 'logout', 'Logout', 'Common', '2020-01-02 06:06:26'),
(5, 'profile', 'Profile', 'Common', '2020-01-02 06:06:26'),
(6, 'user.notification_unread', 'Notification View', 'Common', '2020-01-02 06:06:26'),
(7, 'user.notification_read', 'Notification View', 'Common', '2020-01-02 06:06:26'),
(8, 'user.notification_all', 'Notification View', 'Common', '2020-01-02 06:06:26'),
(9, 'user.store', 'User Create', 'Administration', '2020-01-02 06:06:26'),
(10, 'user.index', 'User View', 'Administration', '2020-01-02 06:06:26'),
(11, 'user.create', 'User Create', 'Administration', '2020-01-02 06:06:26'),
(12, 'user.status', 'User Edit', 'Administration', '2020-01-02 06:06:26'),
(13, 'user.show', 'User View', 'Administration', '2020-01-02 06:06:26'),
(14, 'user.update', 'User Edit', 'Administration', '2020-01-02 06:06:26'),
(15, 'user.destroy', 'User Delete', 'Administration', '2020-01-02 06:06:26'),
(16, 'user.edit', 'User Edit', 'Administration', '2020-01-02 06:06:26'),
(17, 'user.permission', 'User Edit', 'Administration', '2020-01-02 06:06:26'),
(18, 'administrator.academic_year_destroy', 'Academic Year Delete', 'Admin Only', '2020-01-02 06:06:26'),
(19, 'administrator.academic_year', 'Academic Year View', 'Admin Only', '2020-01-02 06:06:26'),
(20, 'administrator.academic_year_store', 'Academic Year Create', 'Admin Only', '2020-01-02 06:06:26'),
(21, 'administrator.academic_year_create', 'Academic Year Create', 'Admin Only', '2020-01-02 06:06:26'),
(22, 'administrator.academic_year_edit', 'Academic Year Edit', 'Admin Only', '2020-01-02 06:06:26'),
(23, 'administrator.academic_year_status', 'Academic Year Edit', 'Admin Only', '2020-01-02 06:06:26'),
(24, 'administrator.academic_year_update', 'Academic Year Edit', 'Admin Only', '2020-01-02 06:06:26'),
(25, 'settings.institute', 'Institute Edit', 'Admin Only', '2020-01-02 06:06:26'),
(26, 'settings.report', 'Report Edit', 'Admin Only', '2020-01-02 06:06:26'),
(27, 'user.role_index', 'Role View', 'Admin Only', '2020-01-02 06:06:26'),
(28, 'user.role_destroy', 'Role Delete', 'Admin Only', '2020-01-02 06:06:26'),
(29, 'user.role_create', 'Role Create', 'Admin Only', '2020-01-02 06:06:26'),
(30, 'user.role_store', 'Role Create', 'Admin Only', '2020-01-02 06:06:26'),
(31, 'user.role_update', 'Role Edit', 'Admin Only', '2020-01-02 06:06:26'),
(32, 'administrator.user_index', 'System Admin View', 'Admin Only', '2020-01-02 06:06:26'),
(33, 'administrator.user_create', 'System Admin Create', 'Admin Only', '2020-01-02 06:06:26'),
(34, 'administrator.user_status', 'System Admin Edit', 'Admin Only', '2020-01-02 06:06:26'),
(35, 'administrator.user_store', 'System Admin Create', 'Admin Only', '2020-01-02 06:06:26'),
(36, 'administrator.user_update', 'System Admin Edit', 'Admin Only', '2020-01-02 06:06:26'),
(37, 'administrator.user_destroy', 'System Admin Delete', 'Admin Only', '2020-01-02 06:06:26'),
(38, 'administrator.user_edit', 'System Admin Edit', 'Admin Only', '2020-01-02 06:06:26'),
(39, 'administrator.user_password_reset', 'User Password Reset', 'Admin Only', '2020-01-02 06:06:26'),
(40, 'administrator.template.mailsms.index', 'Mail_and_SMS Template View', 'Admin Only', '2020-01-02 06:06:26'),
(41, 'administrator.template.mailsms.create', 'Mail_and_SMS Template Create', 'Admin Only', '2020-01-02 06:06:26'),
(42, 'administrator.template.mailsms.store', 'Mail_and_SMS Template Create', 'Admin Only', '2020-01-02 06:06:26'),
(43, 'administrator.template.mailsms.edit', 'Mail_and_SMS Template Edit', 'Admin Only', '2020-01-02 06:06:26'),
(44, 'administrator.template.mailsms.update', 'Mail_and_SMS Template Edit', 'Admin Only', '2020-01-02 06:06:26'),
(45, 'administrator.template.mailsms.destroy', 'Mail_and_SMS Template Delete', 'Admin Only', '2020-01-02 06:06:26'),
(46, 'administrator.template.idcard.index', 'Idcard Template View', 'Admin Only', '2020-01-02 06:06:26'),
(47, 'administrator.template.idcard.create', 'Idcard Template Create', 'Admin Only', '2020-01-02 06:06:26'),
(48, 'administrator.template.idcard.store', 'Idcard Template Create', 'Admin Only', '2020-01-02 06:06:26'),
(49, 'administrator.template.idcard.edit', 'Idcard Template Edit', 'Admin Only', '2020-01-02 06:06:26'),
(50, 'administrator.template.idcard.update', 'Idcard Template Edit', 'Admin Only', '2020-01-02 06:06:26'),
(51, 'administrator.template.idcard.destroy', 'Idcard Template Delete', 'Admin Only', '2020-01-02 06:06:26'),
(52, 'settings.sms_gateway.index', 'SMS Gateway View', 'Admin Only', '2020-01-02 06:06:26'),
(53, 'settings.sms_gateway.create', 'SMS Gateway Create', 'Admin Only', '2020-01-02 06:06:26'),
(54, 'settings.sms_gateway.store', 'SMS Gateway Create', 'Admin Only', '2020-01-02 06:06:26'),
(55, 'settings.sms_gateway.edit', 'SMS Gateway Edit', 'Admin Only', '2020-01-02 06:06:26'),
(56, 'settings.sms_gateway.update', 'SMS Gateway Edit', 'Admin Only', '2020-01-02 06:06:26'),
(57, 'settings.sms_gateway.destroy', 'SMS Gateway Delete', 'Admin Only', '2020-01-02 06:06:26'),
(58, 'settings.academic_calendar.index', 'Academic Calendar View', 'Admin Only', '2020-01-02 06:06:26'),
(59, 'settings.academic_calendar.create', 'Academic Calendar Create', 'Admin Only', '2020-01-02 06:06:26'),
(60, 'settings.academic_calendar.store', 'Academic Calendar Create', 'Admin Only', '2020-01-02 06:06:26'),
(61, 'settings.academic_calendar.edit', 'Academic Calendar Edit', 'Admin Only', '2020-01-02 06:06:26'),
(62, 'settings.academic_calendar.update', 'Academic Calendar Edit', 'Admin Only', '2020-01-02 06:06:26'),
(63, 'settings.academic_calendar.destroy', 'Academic Calendar Delete', 'Admin Only', '2020-01-02 06:06:26'),
(64, 'academic.class_destroy', 'Class Delete', 'Academic', '2020-01-02 06:06:26'),
(65, 'academic.class', 'Class View', 'Academic', '2020-01-02 06:06:26'),
(66, 'academic.class_store', 'Class Create', 'Academic', '2020-01-02 06:06:26'),
(67, 'academic.class_create', 'Class Create', 'Academic', '2020-01-02 06:06:26'),
(68, 'academic.class_edit', 'Class Edit', 'Academic', '2020-01-02 06:06:26'),
(69, 'academic.class_status', 'Class Edit', 'Academic', '2020-01-02 06:06:26'),
(70, 'academic.class_update', 'Class Edit', 'Academic', '2020-01-02 06:06:26'),
(71, 'academic.section_destroy', 'Section Delete', 'Academic', '2020-01-02 06:06:26'),
(72, 'academic.section', 'Section View', 'Academic', '2020-01-02 06:06:26'),
(73, 'academic.section_store', 'Section Create', 'Academic', '2020-01-02 06:06:26'),
(74, 'academic.section_create', 'Section Create', 'Academic', '2020-01-02 06:06:26'),
(75, 'academic.section_edit', 'Section Edit', 'Academic', '2020-01-02 06:06:26'),
(76, 'academic.section_status', 'Section Edit', 'Academic', '2020-01-02 06:06:26'),
(77, 'academic.section_update', 'Section Edit', 'Academic', '2020-01-02 06:06:26'),
(78, 'academic.subject_destroy', 'Subject Delete', 'Academic', '2020-01-02 06:06:26'),
(79, 'academic.subject', 'Subject View', 'Academic', '2020-01-02 06:06:26'),
(80, 'academic.subject_store', 'Subject Create', 'Academic', '2020-01-02 06:06:26'),
(81, 'academic.subject_create', 'Subject Create', 'Academic', '2020-01-02 06:06:26'),
(82, 'academic.subject_edit', 'Subject Edit', 'Academic', '2020-01-02 06:06:26'),
(83, 'academic.subject_status', 'Subject Edit', 'Academic', '2020-01-02 06:06:26'),
(84, 'academic.subject_update', 'Subject Edit', 'Academic', '2020-01-02 06:06:26'),
(85, 'student.store', 'Student Create', 'Academic', '2020-01-02 06:06:26'),
(86, 'student.index', 'Student View', 'Academic', '2020-01-02 06:06:26'),
(87, 'student.list_by_fitler', 'Student View', 'Academic', '2020-01-02 06:06:26'),
(88, 'student.create', 'Student Create', 'Academic', '2020-01-02 06:06:26'),
(89, 'student.status', 'Student Edit', 'Academic', '2020-01-02 06:06:26'),
(90, 'student.destroy', 'Student Delete', 'Academic', '2020-01-02 06:06:26'),
(91, 'student.update', 'Student Edit', 'Academic', '2020-01-02 06:06:26'),
(92, 'student.show', 'Student View', 'Academic', '2020-01-02 06:06:26'),
(93, 'student.edit', 'Student Edit', 'Academic', '2020-01-02 06:06:26'),
(94, 'teacher.index', 'Teacher View', 'Academic', '2020-01-02 06:06:26'),
(95, 'teacher.store', 'Teacher Create', 'Academic', '2020-01-02 06:06:26'),
(96, 'teacher.create', 'Teacher Create', 'Academic', '2020-01-02 06:06:26'),
(97, 'teacher.status', 'Teacher Edit', 'Academic', '2020-01-02 06:06:26'),
(98, 'teacher.destroy', 'Teacher Delete', 'Academic', '2020-01-02 06:06:26'),
(99, 'teacher.update', 'Teacher Edit', 'Academic', '2020-01-02 06:06:26'),
(100, 'teacher.show', 'Teacher View', 'Academic', '2020-01-02 06:06:26'),
(101, 'teacher.edit', 'Teacher Edit', 'Academic', '2020-01-02 06:06:26'),
(102, 'student_attendance.index', 'Student Attendance View', 'Academic', '2020-01-02 06:06:26'),
(103, 'student_attendance.store', 'Student Attendance Create', 'Academic', '2020-01-02 06:06:26'),
(104, 'student_attendance.create', 'Student Attendance Create', 'Academic', '2020-01-02 06:06:26'),
(105, 'student_attendance.status', 'Student Attendance Edit', 'Academic', '2020-01-02 06:06:26'),
(106, 'student_attendance.create_file', 'Student Attendance Create', 'Academic', '2020-01-02 06:06:26'),
(107, 'student_attendance.file_queue_status', 'Student Attendance Create', 'Academic', '2020-01-02 06:06:26'),
(108, 'class_profile.index', 'Class Profile View', 'Website', '2020-01-02 06:06:26'),
(109, 'class_profile.store', 'Class Profile Create', 'Website', '2020-01-02 06:06:26'),
(110, 'class_profile.create', 'Class Profile Create', 'Website', '2020-01-02 06:06:26'),
(111, 'class_profile.show', 'Class Profile View', 'Website', '2020-01-02 06:06:26'),
(112, 'class_profile.update', 'Class Profile Edit', 'Website', '2020-01-02 06:06:26'),
(113, 'class_profile.destroy', 'Class Profile Delete', 'Website', '2020-01-02 06:06:26'),
(114, 'class_profile.edit', 'Class Profile Edit', 'Website', '2020-01-02 06:06:26'),
(115, 'event.index', 'Event View', 'Website', '2020-01-02 06:06:26'),
(116, 'event.store', 'Event Create', 'Website', '2020-01-02 06:06:26'),
(117, 'event.create', 'Event Create', 'Website', '2020-01-02 06:06:26'),
(118, 'event.destroy', 'Event Delete', 'Website', '2020-01-02 06:06:26'),
(119, 'event.show', 'Event View', 'Website', '2020-01-02 06:06:26'),
(120, 'event.update', 'Event Edit', 'Website', '2020-01-02 06:06:26'),
(121, 'event.edit', 'Event Edit', 'Website', '2020-01-02 06:06:26'),
(122, 'teacher_profile.index', 'Teacher Profile View', 'Website', '2020-01-02 06:06:26'),
(123, 'teacher_profile.store', 'Teacher Profile Create', 'Website', '2020-01-02 06:06:26'),
(124, 'teacher_profile.create', 'Teacher Profile Create', 'Website', '2020-01-02 06:06:26'),
(125, 'teacher_profile.update', 'Teacher Profile Edit', 'Website', '2020-01-02 06:06:26'),
(126, 'teacher_profile.show', 'Teacher Profile View', 'Website', '2020-01-02 06:06:26'),
(127, 'teacher_profile.destroy', 'Teacher Profile Delete', 'Website', '2020-01-02 06:06:26'),
(128, 'teacher_profile.edit', 'Teacher Profile Edit', 'Website', '2020-01-02 06:06:26'),
(129, 'site.about_content', 'Site About Content Edit', 'Website', '2020-01-02 06:06:26'),
(130, 'site.about_content', 'Site About Content Edit', 'Website', '2020-01-02 06:06:26'),
(131, 'site.about_content_image', 'Site About Content Edit', 'Website', '2020-01-02 06:06:26'),
(132, 'site.about_content_image', 'Site About Content Edit', 'Website', '2020-01-02 06:06:26'),
(133, 'site.about_content_image_delete', 'Site About Content Delete', 'Website', '2020-01-02 06:06:26'),
(134, 'site.analytics', 'Site Analytics Setting Edit', 'Website', '2020-01-02 06:06:26'),
(135, 'site.analytics', 'Site Analytics Setting Edit', 'Website', '2020-01-02 06:06:26'),
(136, 'site.contact_us', 'Site Contact Us Edit', 'Website', '2020-01-02 06:06:26'),
(137, 'site.contact_us', 'Site Contact Us Edit', 'Website', '2020-01-02 06:06:26'),
(138, 'site.dashboard', 'Site Dashboard View', 'Website', '2020-01-02 06:06:26'),
(139, 'site.faq_delete', 'Site FAQ Delete', 'Website', '2020-01-02 06:06:26'),
(140, 'site.faq', 'Site FAQ Create', 'Website', '2020-01-02 06:06:26'),
(141, 'site.faq', 'Site FAQ Create', 'Website', '2020-01-02 06:06:26'),
(142, 'site.gallery', 'Site Gallery View', 'Website', '2020-01-02 06:06:26'),
(143, 'site.gallery_image', 'Site Gallery Create', 'Website', '2020-01-02 06:06:26'),
(144, 'site.gallery_image', 'Site Gallery Create', 'Website', '2020-01-02 06:06:26'),
(145, 'site.gallery_image_delete', 'Site Gallery Delete', 'Website', '2020-01-02 06:06:26'),
(146, 'site.service', 'Site Service Edit', 'Website', '2020-01-02 06:06:26'),
(147, 'site.service', 'Site Service Edit', 'Website', '2020-01-02 06:06:26'),
(148, 'site.settings', 'Site Settings Edit', 'Website', '2020-01-02 06:06:26'),
(149, 'site.settings', 'Site Settings Edit', 'Website', '2020-01-02 06:06:26'),
(150, 'site.statistic', 'Site Statistic Edit', 'Website', '2020-01-02 06:06:26'),
(151, 'site.statistic', 'Site Statistic Edit', 'Website', '2020-01-02 06:06:26'),
(152, 'site.subscribe', 'Site Subscriber View', 'Website', '2020-01-02 06:06:26'),
(153, 'site.testimonial', 'Site Testimonial View', 'Website', '2020-01-02 06:06:26'),
(154, 'site.testimonial_delete', 'Site Testimonial Delete', 'Website', '2020-01-02 06:06:26'),
(155, 'site.testimonial_create', 'Site Testimonial Create', 'Website', '2020-01-02 06:06:26'),
(156, 'site.testimonial_create', 'Site Testimonial Create', 'Website', '2020-01-02 06:06:26'),
(157, 'site.timeline', 'Site Timeline Create', 'Website', '2020-01-02 06:06:26'),
(158, 'site.timeline', 'Site Timeline Create', 'Website', '2020-01-02 06:06:26'),
(159, 'site.timeline_delete', 'Site Timeline Delete', 'Website', '2020-01-02 06:06:26'),
(160, 'slider.index', 'Slider View', 'Website', '2020-01-02 06:06:26'),
(161, 'slider.store', 'Slider Create', 'Website', '2020-01-02 06:06:26'),
(162, 'slider.create', 'Slider Create', 'Website', '2020-01-02 06:06:26'),
(163, 'slider.destroy', 'Slider Delete', 'Website', '2020-01-02 06:06:26'),
(164, 'slider.update', 'Slider Edit', 'Website', '2020-01-02 06:06:26'),
(165, 'slider.show', 'Slider View', 'Website', '2020-01-02 06:06:26'),
(166, 'slider.edit', 'Slider Edit', 'Website', '2020-01-02 06:06:26'),
(167, 'hrm.employee.index', 'Employee View', 'HRM', '2020-01-02 06:06:26'),
(168, 'hrm.employee.store', 'Employee Create', 'HRM', '2020-01-02 06:06:26'),
(169, 'hrm.employee.create', 'Employee Create', 'HRM', '2020-01-02 06:06:26'),
(170, 'hrm.employee.status', 'Employee Edit', 'HRM', '2020-01-02 06:06:26'),
(171, 'hrm.employee.destroy', 'Employee Delete', 'HRM', '2020-01-02 06:06:26'),
(172, 'hrm.employee.update', 'Employee Edit', 'HRM', '2020-01-02 06:06:26'),
(173, 'hrm.employee.show', 'Employee View', 'HRM', '2020-01-02 06:06:26'),
(174, 'hrm.employee.edit', 'Employee Edit', 'HRM', '2020-01-02 06:06:26'),
(175, 'hrm.leave.index', 'Leave View', 'HRM', '2020-01-02 06:06:26'),
(176, 'hrm.leave.store', 'Leave Create', 'HRM', '2020-01-02 06:06:26'),
(177, 'hrm.leave.create', 'Leave Create', 'HRM', '2020-01-02 06:06:26'),
(178, 'hrm.leave.destroy', 'Leave Delete', 'HRM', '2020-01-02 06:06:26'),
(179, 'hrm.leave.update', 'Leave Edit', 'HRM', '2020-01-02 06:06:26'),
(180, 'hrm.leave.show', 'Leave View', 'HRM', '2020-01-02 06:06:26'),
(181, 'hrm.leave.edit', 'Leave Edit', 'HRM', '2020-01-02 06:06:26'),
(182, 'hrm.policy', 'Policy View', 'HRM', '2020-01-02 06:06:26'),
(183, 'hrm.policy', 'Policy Create', 'HRM', '2020-01-02 06:06:26'),
(184, 'hrm.work_outside.index', 'Work Outside View', 'HRM', '2020-01-02 06:06:26'),
(185, 'hrm.work_outside.store', 'Work Outside Create', 'HRM', '2020-01-02 06:06:26'),
(186, 'hrm.work_outside.create', 'Work Outside Create', 'HRM', '2020-01-02 06:06:26'),
(187, 'hrm.work_outside.destroy', 'Work Outside Delete', 'HRM', '2020-01-02 06:06:26'),
(188, 'hrm.work_outside.update', 'Work Outside Edit', 'HRM', '2020-01-02 06:06:26'),
(189, 'hrm.work_outside.show', 'Work Outside View', 'HRM', '2020-01-02 06:06:26'),
(190, 'hrm.work_outside.edit', 'Work Outside Edit', 'HRM', '2020-01-02 06:06:26'),
(191, 'employee_attendance.index', 'Employee Attendance View', 'HRM', '2020-01-02 06:06:26'),
(192, 'employee_attendance.store', 'Employee Attendance Create', 'HRM', '2020-01-02 06:06:26'),
(193, 'employee_attendance.create', 'Employee Attendance Create', 'HRM', '2020-01-02 06:06:26'),
(194, 'employee_attendance.status', 'Employee Attendance Edit', 'HRM', '2020-01-02 06:06:26'),
(195, 'employee_attendance.create_file', 'Employee Attendance Create', 'HRM', '2020-01-02 06:06:26'),
(196, 'employee_attendance.file_queue_status', 'Employee Attendance Create', 'HRM', '2020-01-02 06:06:26'),
(197, 'exam.index', 'Exam View', 'Exam', '2020-01-02 06:06:26'),
(198, 'exam.create', 'Exam Create', 'Exam', '2020-01-02 06:06:26'),
(199, 'exam.store', 'Exam Create', 'Exam', '2020-01-02 06:06:26'),
(200, 'exam.edit', 'Exam Edit', 'Exam', '2020-01-02 06:06:26'),
(201, 'exam.update', 'Exam Edit', 'Exam', '2020-01-02 06:06:26'),
(202, 'exam.status', 'Exam Edit', 'Exam', '2020-01-02 06:06:26'),
(203, 'exam.destroy', 'Exam Delete', 'Exam', '2020-01-02 06:06:26'),
(204, 'exam.grade.index', 'Grade View', 'Exam', '2020-01-02 06:06:26'),
(205, 'exam.grade.create', 'Grade Create', 'Exam', '2020-01-02 06:06:26'),
(206, 'exam.grade.store', 'Grade Create', 'Exam', '2020-01-02 06:06:26'),
(207, 'exam.grade.edit', 'Grade Edit', 'Exam', '2020-01-02 06:06:26'),
(208, 'exam.grade.update', 'Grade Edit', 'Exam', '2020-01-02 06:06:26'),
(209, 'exam.grade.destroy', 'Grade Delete', 'Exam', '2020-01-02 06:06:26'),
(210, 'exam.rule.index', 'Grade View', 'Exam', '2020-01-02 06:06:26'),
(211, 'exam.rule.create', 'Grade Create', 'Exam', '2020-01-02 06:06:26'),
(212, 'exam.rule.store', 'Grade Create', 'Exam', '2020-01-02 06:06:26'),
(213, 'exam.rule.edit', 'Grade Edit', 'Exam', '2020-01-02 06:06:26'),
(214, 'exam.rule.update', 'Grade Edit', 'Exam', '2020-01-02 06:06:26'),
(215, 'exam.rule.destroy', 'Grade Delete', 'Exam', '2020-01-02 06:06:26'),
(216, 'marks.index', 'Marks View', 'Exam', '2020-01-02 06:06:26'),
(217, 'marks.create', 'Marks Create', 'Exam', '2020-01-02 06:06:26'),
(218, 'marks.store', 'Marks Create', 'Exam', '2020-01-02 06:06:26'),
(219, 'marks.edit', 'Marks Edit', 'Exam', '2020-01-02 06:06:26'),
(220, 'marks.update', 'Marks Edit', 'Exam', '2020-01-02 06:06:26'),
(221, 'result.index', 'Result View', 'Exam', '2020-01-02 06:06:26'),
(222, 'result.create', 'Result Create', 'Exam', '2020-01-02 06:06:26'),
(223, 'result.delete', 'Result Delete', 'Exam', '2020-01-02 06:06:26'),
(224, 'report.student_monthly_attendance', 'Student Monthly Attendance View', 'Report', '2020-01-02 06:06:26'),
(225, 'report.student_list', 'Student List View', 'Report', '2020-01-02 06:06:26'),
(226, 'report.employee_list', 'Employee List View', 'Report', '2020-01-02 06:06:26'),
(227, 'report.employee_monthly_attendance', 'Employee Monthly Attendance View', 'Report', '2020-01-02 06:06:26');

-- --------------------------------------------------------

--
-- Table structure for table `registrations`
--

CREATE TABLE `registrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `regi_no` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `class_id` int(10) UNSIGNED NOT NULL,
  `section_id` int(10) UNSIGNED NOT NULL,
  `academic_year_id` int(10) UNSIGNED NOT NULL,
  `roll_no` int(11) DEFAULT NULL,
  `shift` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `card_no` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `board_regi_no` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fourth_subject` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `alt_fourth_subject` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `house` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `registrations`
--

INSERT INTO `registrations` (`id`, `regi_no`, `student_id`, `class_id`, `section_id`, `academic_year_id`, `roll_no`, `shift`, `card_no`, `board_regi_no`, `fourth_subject`, `alt_fourth_subject`, `house`, `status`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, '201001', 1, 1, 12, 1, 1, 'Morning', NULL, NULL, 0, 0, NULL, '1', '2020-01-02 06:37:19', NULL, NULL, 1, NULL, NULL),
(2, '201002', 2, 1, 12, 1, 2, 'Morning', NULL, NULL, 0, 0, NULL, '1', '2020-01-02 06:37:19', NULL, NULL, 1, NULL, NULL),
(3, '201003', 3, 1, 12, 1, 3, 'Morning', NULL, NULL, 0, 0, NULL, '1', '2020-01-02 06:37:19', NULL, NULL, 1, NULL, NULL),
(4, '201004', 4, 1, 12, 1, 4, 'Morning', NULL, NULL, 0, 0, NULL, '1', '2020-01-02 06:37:19', NULL, NULL, 1, NULL, NULL),
(5, '201005', 5, 1, 12, 1, 5, 'Morning', NULL, NULL, 0, 0, NULL, '1', '2020-01-02 06:37:19', NULL, NULL, 1, NULL, NULL),
(6, '202001', 6, 2, 6, 1, 6, 'Morning', NULL, NULL, 0, 0, NULL, '1', '2020-01-02 06:37:19', NULL, NULL, 1, NULL, NULL),
(7, '202002', 7, 2, 6, 1, 7, 'Morning', NULL, NULL, 0, 0, NULL, '1', '2020-01-02 06:37:19', NULL, NULL, 1, NULL, NULL),
(8, '202003', 8, 2, 6, 1, 8, 'Morning', NULL, NULL, 0, 0, NULL, '1', '2020-01-02 06:37:19', NULL, NULL, 1, NULL, NULL),
(9, '202004', 9, 2, 6, 1, 9, 'Morning', NULL, NULL, 0, 0, NULL, '1', '2020-01-02 06:37:19', NULL, NULL, 1, NULL, NULL),
(10, '203001', 10, 3, 8, 1, 10, 'Morning', NULL, NULL, 0, 0, NULL, '1', '2020-01-02 06:37:19', NULL, NULL, 1, NULL, NULL),
(11, '203002', 11, 3, 8, 1, 11, 'Morning', NULL, NULL, 0, 0, NULL, '1', '2020-01-02 06:37:19', NULL, NULL, 1, NULL, NULL),
(12, '203003', 12, 3, 8, 1, 12, 'Morning', NULL, NULL, 0, 0, NULL, '1', '2020-01-02 06:37:19', NULL, NULL, 1, NULL, NULL),
(13, '204001', 13, 4, 11, 1, 13, 'Morning', NULL, NULL, 0, 0, NULL, '1', '2020-01-02 06:37:19', NULL, NULL, 1, NULL, NULL),
(14, '204002', 14, 4, 11, 1, 14, 'Morning', NULL, NULL, 0, 0, NULL, '1', '2020-01-02 06:37:19', NULL, NULL, 1, NULL, NULL),
(15, '204003', 15, 4, 11, 1, 15, 'Morning', NULL, NULL, 0, 0, NULL, '1', '2020-01-02 06:37:19', NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` int(10) UNSIGNED NOT NULL,
  `academic_year_id` int(10) UNSIGNED NOT NULL,
  `class_id` int(10) UNSIGNED NOT NULL,
  `registration_id` int(10) UNSIGNED NOT NULL,
  `exam_id` int(10) UNSIGNED NOT NULL,
  `total_marks` int(11) NOT NULL,
  `grade` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `point` decimal(5,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `academic_year_id`, `class_id`, `registration_id`, `exam_id`, `total_marks`, `grade`, `point`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 1, 1, 1, 11, 151, 'F', '1.88', '2020-01-02 06:37:25', NULL, NULL, 1, NULL, NULL),
(2, 1, 1, 2, 11, 274, 'F', '3.25', '2020-01-02 06:37:25', NULL, NULL, 1, NULL, NULL),
(3, 1, 1, 3, 11, 224, 'F', '2.38', '2020-01-02 06:37:25', NULL, NULL, 1, NULL, NULL),
(4, 1, 1, 4, 11, 198, 'F', '1.75', '2020-01-02 06:37:25', NULL, NULL, 1, NULL, NULL),
(5, 1, 1, 5, 11, 237, 'F', '2.75', '2020-01-02 06:37:25', NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `result_combines`
--

CREATE TABLE `result_combines` (
  `id` int(10) UNSIGNED NOT NULL,
  `registration_id` int(10) UNSIGNED NOT NULL,
  `subject_id` int(10) UNSIGNED NOT NULL,
  `exam_id` int(10) UNSIGNED NOT NULL,
  `total_marks` int(11) NOT NULL,
  `grade` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `point` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `result_combines`
--

INSERT INTO `result_combines` (`id`, `registration_id`, `subject_id`, `exam_id`, `total_marks`, `grade`, `point`) VALUES
(1, 1, 11, 11, 96, 'A-', '3.50'),
(2, 1, 13, 11, 104, 'A', '4.00'),
(3, 2, 11, 11, 124, 'A+', '5.00'),
(4, 2, 13, 11, 107, 'A', '4.00'),
(5, 3, 11, 11, 56, 'D', '1.00'),
(6, 3, 13, 11, 93, 'A-', '3.50'),
(7, 4, 11, 11, 47, 'F', '0.00'),
(8, 4, 13, 11, 48, 'F', '0.00'),
(9, 5, 11, 11, 75, 'B', '3.00'),
(10, 5, 13, 11, 88, 'B', '3.00');

-- --------------------------------------------------------

--
-- Table structure for table `result_publish`
--

CREATE TABLE `result_publish` (
  `id` int(10) UNSIGNED NOT NULL,
  `academic_year_id` int(10) UNSIGNED NOT NULL,
  `class_id` int(10) UNSIGNED NOT NULL,
  `exam_id` int(10) UNSIGNED NOT NULL,
  `publish_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `result_publish`
--

INSERT INTO `result_publish` (`id`, `academic_year_id`, `class_id`, `exam_id`, `publish_date`) VALUES
(1, 1, 1, 11, '2020-01-02');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deletable` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `deletable`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'Admin', 0, '2020-01-02 06:36:26', '2020-01-02 06:36:26', NULL, 0, 0, NULL),
(2, 'Teacher', 0, '2020-01-02 06:36:26', '2020-01-02 06:36:26', NULL, 0, 0, NULL),
(3, 'Student', 0, '2020-01-02 06:36:26', '2020-01-02 06:36:26', NULL, 0, 0, NULL),
(4, 'Parents', 0, '2020-01-02 06:36:26', '2020-01-02 06:36:26', NULL, 0, 0, NULL),
(5, 'Accountant', 0, '2020-01-02 06:36:26', '2020-01-02 06:36:26', NULL, 0, 0, NULL),
(6, 'Librarian', 0, '2020-01-02 06:36:26', '2020-01-02 06:36:26', NULL, 0, 0, NULL),
(7, 'Receptionist', 0, '2020-01-02 06:36:26', '2020-01-02 06:36:26', NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles_permissions`
--

CREATE TABLE `roles_permissions` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles_permissions`
--

INSERT INTO `roles_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 1, '2020-01-02 06:36:26', '2020-01-02 06:36:26', NULL, NULL, NULL, NULL),
(1, 2, '2020-01-02 06:36:26', '2020-01-02 06:36:26', NULL, NULL, NULL, NULL),
(1, 3, '2020-01-02 06:36:26', '2020-01-02 06:36:26', NULL, NULL, NULL, NULL),
(1, 4, '2020-01-02 06:36:26', '2020-01-02 06:36:26', NULL, NULL, NULL, NULL),
(1, 5, '2020-01-02 06:36:26', '2020-01-02 06:36:26', NULL, NULL, NULL, NULL),
(1, 6, '2020-01-02 06:36:26', '2020-01-02 06:36:26', NULL, NULL, NULL, NULL),
(1, 7, '2020-01-02 06:36:26', '2020-01-02 06:36:26', NULL, NULL, NULL, NULL),
(1, 8, '2020-01-02 06:36:26', '2020-01-02 06:36:26', NULL, NULL, NULL, NULL),
(1, 9, '2020-01-02 06:36:26', '2020-01-02 06:36:26', NULL, NULL, NULL, NULL),
(1, 10, '2020-01-02 06:36:26', '2020-01-02 06:36:26', NULL, NULL, NULL, NULL),
(1, 11, '2020-01-02 06:36:26', '2020-01-02 06:36:26', NULL, NULL, NULL, NULL),
(1, 12, '2020-01-02 06:36:26', '2020-01-02 06:36:26', NULL, NULL, NULL, NULL),
(1, 13, '2020-01-02 06:36:26', '2020-01-02 06:36:26', NULL, NULL, NULL, NULL),
(1, 14, '2020-01-02 06:36:26', '2020-01-02 06:36:26', NULL, NULL, NULL, NULL),
(1, 15, '2020-01-02 06:36:26', '2020-01-02 06:36:26', NULL, NULL, NULL, NULL),
(1, 16, '2020-01-02 06:36:26', '2020-01-02 06:36:26', NULL, NULL, NULL, NULL),
(1, 17, '2020-01-02 06:36:27', '2020-01-02 06:36:27', NULL, NULL, NULL, NULL),
(1, 18, '2020-01-02 06:36:27', '2020-01-02 06:36:27', NULL, NULL, NULL, NULL),
(1, 19, '2020-01-02 06:36:27', '2020-01-02 06:36:27', NULL, NULL, NULL, NULL),
(1, 20, '2020-01-02 06:36:27', '2020-01-02 06:36:27', NULL, NULL, NULL, NULL),
(1, 21, '2020-01-02 06:36:27', '2020-01-02 06:36:27', NULL, NULL, NULL, NULL),
(1, 22, '2020-01-02 06:36:27', '2020-01-02 06:36:27', NULL, NULL, NULL, NULL),
(1, 23, '2020-01-02 06:36:27', '2020-01-02 06:36:27', NULL, NULL, NULL, NULL),
(1, 24, '2020-01-02 06:36:27', '2020-01-02 06:36:27', NULL, NULL, NULL, NULL),
(1, 25, '2020-01-02 06:36:27', '2020-01-02 06:36:27', NULL, NULL, NULL, NULL),
(1, 26, '2020-01-02 06:36:27', '2020-01-02 06:36:27', NULL, NULL, NULL, NULL),
(1, 27, '2020-01-02 06:36:27', '2020-01-02 06:36:27', NULL, NULL, NULL, NULL),
(1, 28, '2020-01-02 06:36:27', '2020-01-02 06:36:27', NULL, NULL, NULL, NULL),
(1, 29, '2020-01-02 06:36:27', '2020-01-02 06:36:27', NULL, NULL, NULL, NULL),
(1, 30, '2020-01-02 06:36:27', '2020-01-02 06:36:27', NULL, NULL, NULL, NULL),
(1, 31, '2020-01-02 06:36:27', '2020-01-02 06:36:27', NULL, NULL, NULL, NULL),
(1, 32, '2020-01-02 06:36:27', '2020-01-02 06:36:27', NULL, NULL, NULL, NULL),
(1, 33, '2020-01-02 06:36:27', '2020-01-02 06:36:27', NULL, NULL, NULL, NULL),
(1, 34, '2020-01-02 06:36:27', '2020-01-02 06:36:27', NULL, NULL, NULL, NULL),
(1, 35, '2020-01-02 06:36:27', '2020-01-02 06:36:27', NULL, NULL, NULL, NULL),
(1, 36, '2020-01-02 06:36:27', '2020-01-02 06:36:27', NULL, NULL, NULL, NULL),
(1, 37, '2020-01-02 06:36:27', '2020-01-02 06:36:27', NULL, NULL, NULL, NULL),
(1, 38, '2020-01-02 06:36:27', '2020-01-02 06:36:27', NULL, NULL, NULL, NULL),
(1, 39, '2020-01-02 06:36:27', '2020-01-02 06:36:27', NULL, NULL, NULL, NULL),
(1, 40, '2020-01-02 06:36:27', '2020-01-02 06:36:27', NULL, NULL, NULL, NULL),
(1, 41, '2020-01-02 06:36:27', '2020-01-02 06:36:27', NULL, NULL, NULL, NULL),
(1, 42, '2020-01-02 06:36:27', '2020-01-02 06:36:27', NULL, NULL, NULL, NULL),
(1, 43, '2020-01-02 06:36:27', '2020-01-02 06:36:27', NULL, NULL, NULL, NULL),
(1, 44, '2020-01-02 06:36:27', '2020-01-02 06:36:27', NULL, NULL, NULL, NULL),
(1, 45, '2020-01-02 06:36:27', '2020-01-02 06:36:27', NULL, NULL, NULL, NULL),
(1, 46, '2020-01-02 06:36:27', '2020-01-02 06:36:27', NULL, NULL, NULL, NULL),
(1, 47, '2020-01-02 06:36:27', '2020-01-02 06:36:27', NULL, NULL, NULL, NULL),
(1, 48, '2020-01-02 06:36:27', '2020-01-02 06:36:27', NULL, NULL, NULL, NULL),
(1, 49, '2020-01-02 06:36:27', '2020-01-02 06:36:27', NULL, NULL, NULL, NULL),
(1, 50, '2020-01-02 06:36:27', '2020-01-02 06:36:27', NULL, NULL, NULL, NULL),
(1, 51, '2020-01-02 06:36:27', '2020-01-02 06:36:27', NULL, NULL, NULL, NULL),
(1, 52, '2020-01-02 06:36:27', '2020-01-02 06:36:27', NULL, NULL, NULL, NULL),
(1, 53, '2020-01-02 06:36:28', '2020-01-02 06:36:28', NULL, NULL, NULL, NULL),
(1, 54, '2020-01-02 06:36:28', '2020-01-02 06:36:28', NULL, NULL, NULL, NULL),
(1, 55, '2020-01-02 06:36:28', '2020-01-02 06:36:28', NULL, NULL, NULL, NULL),
(1, 56, '2020-01-02 06:36:28', '2020-01-02 06:36:28', NULL, NULL, NULL, NULL),
(1, 57, '2020-01-02 06:36:28', '2020-01-02 06:36:28', NULL, NULL, NULL, NULL),
(1, 58, '2020-01-02 06:36:28', '2020-01-02 06:36:28', NULL, NULL, NULL, NULL),
(1, 59, '2020-01-02 06:36:28', '2020-01-02 06:36:28', NULL, NULL, NULL, NULL),
(1, 60, '2020-01-02 06:36:28', '2020-01-02 06:36:28', NULL, NULL, NULL, NULL),
(1, 61, '2020-01-02 06:36:28', '2020-01-02 06:36:28', NULL, NULL, NULL, NULL),
(1, 62, '2020-01-02 06:36:28', '2020-01-02 06:36:28', NULL, NULL, NULL, NULL),
(1, 63, '2020-01-02 06:36:28', '2020-01-02 06:36:28', NULL, NULL, NULL, NULL),
(1, 64, '2020-01-02 06:36:28', '2020-01-02 06:36:28', NULL, NULL, NULL, NULL),
(1, 65, '2020-01-02 06:36:28', '2020-01-02 06:36:28', NULL, NULL, NULL, NULL),
(1, 66, '2020-01-02 06:36:28', '2020-01-02 06:36:28', NULL, NULL, NULL, NULL),
(1, 67, '2020-01-02 06:36:28', '2020-01-02 06:36:28', NULL, NULL, NULL, NULL),
(1, 68, '2020-01-02 06:36:28', '2020-01-02 06:36:28', NULL, NULL, NULL, NULL),
(1, 69, '2020-01-02 06:36:28', '2020-01-02 06:36:28', NULL, NULL, NULL, NULL),
(1, 70, '2020-01-02 06:36:28', '2020-01-02 06:36:28', NULL, NULL, NULL, NULL),
(1, 71, '2020-01-02 06:36:28', '2020-01-02 06:36:28', NULL, NULL, NULL, NULL),
(1, 72, '2020-01-02 06:36:28', '2020-01-02 06:36:28', NULL, NULL, NULL, NULL),
(1, 73, '2020-01-02 06:36:28', '2020-01-02 06:36:28', NULL, NULL, NULL, NULL),
(1, 74, '2020-01-02 06:36:28', '2020-01-02 06:36:28', NULL, NULL, NULL, NULL),
(1, 75, '2020-01-02 06:36:28', '2020-01-02 06:36:28', NULL, NULL, NULL, NULL),
(1, 76, '2020-01-02 06:36:28', '2020-01-02 06:36:28', NULL, NULL, NULL, NULL),
(1, 77, '2020-01-02 06:36:28', '2020-01-02 06:36:28', NULL, NULL, NULL, NULL),
(1, 78, '2020-01-02 06:36:28', '2020-01-02 06:36:28', NULL, NULL, NULL, NULL),
(1, 79, '2020-01-02 06:36:28', '2020-01-02 06:36:28', NULL, NULL, NULL, NULL),
(1, 80, '2020-01-02 06:36:28', '2020-01-02 06:36:28', NULL, NULL, NULL, NULL),
(1, 81, '2020-01-02 06:36:28', '2020-01-02 06:36:28', NULL, NULL, NULL, NULL),
(1, 82, '2020-01-02 06:36:28', '2020-01-02 06:36:28', NULL, NULL, NULL, NULL),
(1, 83, '2020-01-02 06:36:28', '2020-01-02 06:36:28', NULL, NULL, NULL, NULL),
(1, 84, '2020-01-02 06:36:28', '2020-01-02 06:36:28', NULL, NULL, NULL, NULL),
(1, 85, '2020-01-02 06:36:28', '2020-01-02 06:36:28', NULL, NULL, NULL, NULL),
(1, 86, '2020-01-02 06:36:28', '2020-01-02 06:36:28', NULL, NULL, NULL, NULL),
(1, 87, '2020-01-02 06:36:28', '2020-01-02 06:36:28', NULL, NULL, NULL, NULL),
(1, 88, '2020-01-02 06:36:29', '2020-01-02 06:36:29', NULL, NULL, NULL, NULL),
(1, 89, '2020-01-02 06:36:29', '2020-01-02 06:36:29', NULL, NULL, NULL, NULL),
(1, 90, '2020-01-02 06:36:29', '2020-01-02 06:36:29', NULL, NULL, NULL, NULL),
(1, 91, '2020-01-02 06:36:29', '2020-01-02 06:36:29', NULL, NULL, NULL, NULL),
(1, 92, '2020-01-02 06:36:29', '2020-01-02 06:36:29', NULL, NULL, NULL, NULL),
(1, 93, '2020-01-02 06:36:29', '2020-01-02 06:36:29', NULL, NULL, NULL, NULL),
(1, 94, '2020-01-02 06:36:29', '2020-01-02 06:36:29', NULL, NULL, NULL, NULL),
(1, 95, '2020-01-02 06:36:29', '2020-01-02 06:36:29', NULL, NULL, NULL, NULL),
(1, 96, '2020-01-02 06:36:29', '2020-01-02 06:36:29', NULL, NULL, NULL, NULL),
(1, 97, '2020-01-02 06:36:29', '2020-01-02 06:36:29', NULL, NULL, NULL, NULL),
(1, 98, '2020-01-02 06:36:29', '2020-01-02 06:36:29', NULL, NULL, NULL, NULL),
(1, 99, '2020-01-02 06:36:29', '2020-01-02 06:36:29', NULL, NULL, NULL, NULL),
(1, 100, '2020-01-02 06:36:29', '2020-01-02 06:36:29', NULL, NULL, NULL, NULL),
(1, 101, '2020-01-02 06:36:29', '2020-01-02 06:36:29', NULL, NULL, NULL, NULL),
(1, 102, '2020-01-02 06:36:29', '2020-01-02 06:36:29', NULL, NULL, NULL, NULL),
(1, 103, '2020-01-02 06:36:29', '2020-01-02 06:36:29', NULL, NULL, NULL, NULL),
(1, 104, '2020-01-02 06:36:29', '2020-01-02 06:36:29', NULL, NULL, NULL, NULL),
(1, 105, '2020-01-02 06:36:29', '2020-01-02 06:36:29', NULL, NULL, NULL, NULL),
(1, 106, '2020-01-02 06:36:29', '2020-01-02 06:36:29', NULL, NULL, NULL, NULL),
(1, 107, '2020-01-02 06:36:29', '2020-01-02 06:36:29', NULL, NULL, NULL, NULL),
(1, 108, '2020-01-02 06:36:29', '2020-01-02 06:36:29', NULL, NULL, NULL, NULL),
(1, 109, '2020-01-02 06:36:29', '2020-01-02 06:36:29', NULL, NULL, NULL, NULL),
(1, 110, '2020-01-02 06:36:29', '2020-01-02 06:36:29', NULL, NULL, NULL, NULL),
(1, 111, '2020-01-02 06:36:29', '2020-01-02 06:36:29', NULL, NULL, NULL, NULL),
(1, 112, '2020-01-02 06:36:29', '2020-01-02 06:36:29', NULL, NULL, NULL, NULL),
(1, 113, '2020-01-02 06:36:29', '2020-01-02 06:36:29', NULL, NULL, NULL, NULL),
(1, 114, '2020-01-02 06:36:29', '2020-01-02 06:36:29', NULL, NULL, NULL, NULL),
(1, 115, '2020-01-02 06:36:29', '2020-01-02 06:36:29', NULL, NULL, NULL, NULL),
(1, 116, '2020-01-02 06:36:29', '2020-01-02 06:36:29', NULL, NULL, NULL, NULL),
(1, 117, '2020-01-02 06:36:29', '2020-01-02 06:36:29', NULL, NULL, NULL, NULL),
(1, 118, '2020-01-02 06:36:29', '2020-01-02 06:36:29', NULL, NULL, NULL, NULL),
(1, 119, '2020-01-02 06:36:29', '2020-01-02 06:36:29', NULL, NULL, NULL, NULL),
(1, 120, '2020-01-02 06:36:29', '2020-01-02 06:36:29', NULL, NULL, NULL, NULL),
(1, 121, '2020-01-02 06:36:30', '2020-01-02 06:36:30', NULL, NULL, NULL, NULL),
(1, 122, '2020-01-02 06:36:30', '2020-01-02 06:36:30', NULL, NULL, NULL, NULL),
(1, 123, '2020-01-02 06:36:30', '2020-01-02 06:36:30', NULL, NULL, NULL, NULL),
(1, 124, '2020-01-02 06:36:30', '2020-01-02 06:36:30', NULL, NULL, NULL, NULL),
(1, 125, '2020-01-02 06:36:30', '2020-01-02 06:36:30', NULL, NULL, NULL, NULL),
(1, 126, '2020-01-02 06:36:30', '2020-01-02 06:36:30', NULL, NULL, NULL, NULL),
(1, 127, '2020-01-02 06:36:30', '2020-01-02 06:36:30', NULL, NULL, NULL, NULL),
(1, 128, '2020-01-02 06:36:30', '2020-01-02 06:36:30', NULL, NULL, NULL, NULL),
(1, 129, '2020-01-02 06:36:30', '2020-01-02 06:36:30', NULL, NULL, NULL, NULL),
(1, 130, '2020-01-02 06:36:30', '2020-01-02 06:36:30', NULL, NULL, NULL, NULL),
(1, 131, '2020-01-02 06:36:30', '2020-01-02 06:36:30', NULL, NULL, NULL, NULL),
(1, 132, '2020-01-02 06:36:30', '2020-01-02 06:36:30', NULL, NULL, NULL, NULL),
(1, 133, '2020-01-02 06:36:30', '2020-01-02 06:36:30', NULL, NULL, NULL, NULL),
(1, 134, '2020-01-02 06:36:30', '2020-01-02 06:36:30', NULL, NULL, NULL, NULL),
(1, 135, '2020-01-02 06:36:30', '2020-01-02 06:36:30', NULL, NULL, NULL, NULL),
(1, 136, '2020-01-02 06:36:30', '2020-01-02 06:36:30', NULL, NULL, NULL, NULL),
(1, 137, '2020-01-02 06:36:30', '2020-01-02 06:36:30', NULL, NULL, NULL, NULL),
(1, 138, '2020-01-02 06:36:30', '2020-01-02 06:36:30', NULL, NULL, NULL, NULL),
(1, 139, '2020-01-02 06:36:30', '2020-01-02 06:36:30', NULL, NULL, NULL, NULL),
(1, 140, '2020-01-02 06:36:30', '2020-01-02 06:36:30', NULL, NULL, NULL, NULL),
(1, 141, '2020-01-02 06:36:30', '2020-01-02 06:36:30', NULL, NULL, NULL, NULL),
(1, 142, '2020-01-02 06:36:30', '2020-01-02 06:36:30', NULL, NULL, NULL, NULL),
(1, 143, '2020-01-02 06:36:30', '2020-01-02 06:36:30', NULL, NULL, NULL, NULL),
(1, 144, '2020-01-02 06:36:30', '2020-01-02 06:36:30', NULL, NULL, NULL, NULL),
(1, 145, '2020-01-02 06:36:30', '2020-01-02 06:36:30', NULL, NULL, NULL, NULL),
(1, 146, '2020-01-02 06:36:30', '2020-01-02 06:36:30', NULL, NULL, NULL, NULL),
(1, 147, '2020-01-02 06:36:30', '2020-01-02 06:36:30', NULL, NULL, NULL, NULL),
(1, 148, '2020-01-02 06:36:30', '2020-01-02 06:36:30', NULL, NULL, NULL, NULL),
(1, 149, '2020-01-02 06:36:30', '2020-01-02 06:36:30', NULL, NULL, NULL, NULL),
(1, 150, '2020-01-02 06:36:30', '2020-01-02 06:36:30', NULL, NULL, NULL, NULL),
(1, 151, '2020-01-02 06:36:30', '2020-01-02 06:36:30', NULL, NULL, NULL, NULL),
(1, 152, '2020-01-02 06:36:30', '2020-01-02 06:36:30', NULL, NULL, NULL, NULL),
(1, 153, '2020-01-02 06:36:30', '2020-01-02 06:36:30', NULL, NULL, NULL, NULL),
(1, 154, '2020-01-02 06:36:30', '2020-01-02 06:36:30', NULL, NULL, NULL, NULL),
(1, 155, '2020-01-02 06:36:31', '2020-01-02 06:36:31', NULL, NULL, NULL, NULL),
(1, 156, '2020-01-02 06:36:31', '2020-01-02 06:36:31', NULL, NULL, NULL, NULL),
(1, 157, '2020-01-02 06:36:31', '2020-01-02 06:36:31', NULL, NULL, NULL, NULL),
(1, 158, '2020-01-02 06:36:31', '2020-01-02 06:36:31', NULL, NULL, NULL, NULL),
(1, 159, '2020-01-02 06:36:31', '2020-01-02 06:36:31', NULL, NULL, NULL, NULL),
(1, 160, '2020-01-02 06:36:31', '2020-01-02 06:36:31', NULL, NULL, NULL, NULL),
(1, 161, '2020-01-02 06:36:31', '2020-01-02 06:36:31', NULL, NULL, NULL, NULL),
(1, 162, '2020-01-02 06:36:31', '2020-01-02 06:36:31', NULL, NULL, NULL, NULL),
(1, 163, '2020-01-02 06:36:31', '2020-01-02 06:36:31', NULL, NULL, NULL, NULL),
(1, 164, '2020-01-02 06:36:31', '2020-01-02 06:36:31', NULL, NULL, NULL, NULL),
(1, 165, '2020-01-02 06:36:31', '2020-01-02 06:36:31', NULL, NULL, NULL, NULL),
(1, 166, '2020-01-02 06:36:31', '2020-01-02 06:36:31', NULL, NULL, NULL, NULL),
(1, 167, '2020-01-02 06:36:31', '2020-01-02 06:36:31', NULL, NULL, NULL, NULL),
(1, 168, '2020-01-02 06:36:31', '2020-01-02 06:36:31', NULL, NULL, NULL, NULL),
(1, 169, '2020-01-02 06:36:31', '2020-01-02 06:36:31', NULL, NULL, NULL, NULL),
(1, 170, '2020-01-02 06:36:31', '2020-01-02 06:36:31', NULL, NULL, NULL, NULL),
(1, 171, '2020-01-02 06:36:31', '2020-01-02 06:36:31', NULL, NULL, NULL, NULL),
(1, 172, '2020-01-02 06:36:31', '2020-01-02 06:36:31', NULL, NULL, NULL, NULL),
(1, 173, '2020-01-02 06:36:31', '2020-01-02 06:36:31', NULL, NULL, NULL, NULL),
(1, 174, '2020-01-02 06:36:31', '2020-01-02 06:36:31', NULL, NULL, NULL, NULL),
(1, 175, '2020-01-02 06:36:31', '2020-01-02 06:36:31', NULL, NULL, NULL, NULL),
(1, 176, '2020-01-02 06:36:31', '2020-01-02 06:36:31', NULL, NULL, NULL, NULL),
(1, 177, '2020-01-02 06:36:31', '2020-01-02 06:36:31', NULL, NULL, NULL, NULL),
(1, 178, '2020-01-02 06:36:31', '2020-01-02 06:36:31', NULL, NULL, NULL, NULL),
(1, 179, '2020-01-02 06:36:31', '2020-01-02 06:36:31', NULL, NULL, NULL, NULL),
(1, 180, '2020-01-02 06:36:31', '2020-01-02 06:36:31', NULL, NULL, NULL, NULL),
(1, 181, '2020-01-02 06:36:31', '2020-01-02 06:36:31', NULL, NULL, NULL, NULL),
(1, 182, '2020-01-02 06:36:31', '2020-01-02 06:36:31', NULL, NULL, NULL, NULL),
(1, 183, '2020-01-02 06:36:31', '2020-01-02 06:36:31', NULL, NULL, NULL, NULL),
(1, 184, '2020-01-02 06:36:31', '2020-01-02 06:36:31', NULL, NULL, NULL, NULL),
(1, 185, '2020-01-02 06:36:31', '2020-01-02 06:36:31', NULL, NULL, NULL, NULL),
(1, 186, '2020-01-02 06:36:31', '2020-01-02 06:36:31', NULL, NULL, NULL, NULL),
(1, 187, '2020-01-02 06:36:31', '2020-01-02 06:36:31', NULL, NULL, NULL, NULL),
(1, 188, '2020-01-02 06:36:31', '2020-01-02 06:36:31', NULL, NULL, NULL, NULL),
(1, 189, '2020-01-02 06:36:31', '2020-01-02 06:36:31', NULL, NULL, NULL, NULL),
(1, 190, '2020-01-02 06:36:32', '2020-01-02 06:36:32', NULL, NULL, NULL, NULL),
(1, 191, '2020-01-02 06:36:32', '2020-01-02 06:36:32', NULL, NULL, NULL, NULL),
(1, 192, '2020-01-02 06:36:32', '2020-01-02 06:36:32', NULL, NULL, NULL, NULL),
(1, 193, '2020-01-02 06:36:32', '2020-01-02 06:36:32', NULL, NULL, NULL, NULL),
(1, 194, '2020-01-02 06:36:32', '2020-01-02 06:36:32', NULL, NULL, NULL, NULL),
(1, 195, '2020-01-02 06:36:32', '2020-01-02 06:36:32', NULL, NULL, NULL, NULL),
(1, 196, '2020-01-02 06:36:32', '2020-01-02 06:36:32', NULL, NULL, NULL, NULL),
(1, 197, '2020-01-02 06:36:32', '2020-01-02 06:36:32', NULL, NULL, NULL, NULL),
(1, 198, '2020-01-02 06:36:32', '2020-01-02 06:36:32', NULL, NULL, NULL, NULL),
(1, 199, '2020-01-02 06:36:32', '2020-01-02 06:36:32', NULL, NULL, NULL, NULL),
(1, 200, '2020-01-02 06:36:32', '2020-01-02 06:36:32', NULL, NULL, NULL, NULL),
(1, 201, '2020-01-02 06:36:32', '2020-01-02 06:36:32', NULL, NULL, NULL, NULL),
(1, 202, '2020-01-02 06:36:32', '2020-01-02 06:36:32', NULL, NULL, NULL, NULL),
(1, 203, '2020-01-02 06:36:32', '2020-01-02 06:36:32', NULL, NULL, NULL, NULL),
(1, 204, '2020-01-02 06:36:32', '2020-01-02 06:36:32', NULL, NULL, NULL, NULL),
(1, 205, '2020-01-02 06:36:32', '2020-01-02 06:36:32', NULL, NULL, NULL, NULL),
(1, 206, '2020-01-02 06:36:32', '2020-01-02 06:36:32', NULL, NULL, NULL, NULL),
(1, 207, '2020-01-02 06:36:32', '2020-01-02 06:36:32', NULL, NULL, NULL, NULL),
(1, 208, '2020-01-02 06:36:32', '2020-01-02 06:36:32', NULL, NULL, NULL, NULL),
(1, 209, '2020-01-02 06:36:32', '2020-01-02 06:36:32', NULL, NULL, NULL, NULL),
(1, 210, '2020-01-02 06:36:32', '2020-01-02 06:36:32', NULL, NULL, NULL, NULL),
(1, 211, '2020-01-02 06:36:32', '2020-01-02 06:36:32', NULL, NULL, NULL, NULL),
(1, 212, '2020-01-02 06:36:32', '2020-01-02 06:36:32', NULL, NULL, NULL, NULL),
(1, 213, '2020-01-02 06:36:32', '2020-01-02 06:36:32', NULL, NULL, NULL, NULL),
(1, 214, '2020-01-02 06:36:32', '2020-01-02 06:36:32', NULL, NULL, NULL, NULL),
(1, 215, '2020-01-02 06:36:32', '2020-01-02 06:36:32', NULL, NULL, NULL, NULL),
(1, 216, '2020-01-02 06:36:32', '2020-01-02 06:36:32', NULL, NULL, NULL, NULL),
(1, 217, '2020-01-02 06:36:32', '2020-01-02 06:36:32', NULL, NULL, NULL, NULL),
(1, 218, '2020-01-02 06:36:32', '2020-01-02 06:36:32', NULL, NULL, NULL, NULL),
(1, 219, '2020-01-02 06:36:32', '2020-01-02 06:36:32', NULL, NULL, NULL, NULL),
(1, 220, '2020-01-02 06:36:32', '2020-01-02 06:36:32', NULL, NULL, NULL, NULL),
(1, 221, '2020-01-02 06:36:32', '2020-01-02 06:36:32', NULL, NULL, NULL, NULL),
(1, 222, '2020-01-02 06:36:32', '2020-01-02 06:36:32', NULL, NULL, NULL, NULL),
(1, 223, '2020-01-02 06:36:32', '2020-01-02 06:36:32', NULL, NULL, NULL, NULL),
(1, 224, '2020-01-02 06:36:32', '2020-01-02 06:36:32', NULL, NULL, NULL, NULL),
(1, 225, '2020-01-02 06:36:33', '2020-01-02 06:36:33', NULL, NULL, NULL, NULL),
(1, 226, '2020-01-02 06:36:33', '2020-01-02 06:36:33', NULL, NULL, NULL, NULL),
(1, 227, '2020-01-02 06:36:33', '2020-01-02 06:36:33', NULL, NULL, NULL, NULL),
(2, 1, '2020-01-02 06:36:33', '2020-01-02 06:36:33', NULL, NULL, NULL, NULL),
(2, 2, '2020-01-02 06:36:33', '2020-01-02 06:36:33', NULL, NULL, NULL, NULL),
(2, 3, '2020-01-02 06:36:33', '2020-01-02 06:36:33', NULL, NULL, NULL, NULL),
(2, 4, '2020-01-02 06:36:33', '2020-01-02 06:36:33', NULL, NULL, NULL, NULL),
(2, 5, '2020-01-02 06:36:33', '2020-01-02 06:36:33', NULL, NULL, NULL, NULL),
(2, 6, '2020-01-02 06:36:33', '2020-01-02 06:36:33', NULL, NULL, NULL, NULL),
(2, 7, '2020-01-02 06:36:33', '2020-01-02 06:36:33', NULL, NULL, NULL, NULL),
(2, 8, '2020-01-02 06:36:33', '2020-01-02 06:36:33', NULL, NULL, NULL, NULL),
(3, 1, '2020-01-02 06:36:33', '2020-01-02 06:36:33', NULL, NULL, NULL, NULL),
(3, 2, '2020-01-02 06:36:33', '2020-01-02 06:36:33', NULL, NULL, NULL, NULL),
(3, 3, '2020-01-02 06:36:33', '2020-01-02 06:36:33', NULL, NULL, NULL, NULL),
(3, 4, '2020-01-02 06:36:33', '2020-01-02 06:36:33', NULL, NULL, NULL, NULL),
(3, 5, '2020-01-02 06:36:33', '2020-01-02 06:36:33', NULL, NULL, NULL, NULL),
(3, 6, '2020-01-02 06:36:33', '2020-01-02 06:36:33', NULL, NULL, NULL, NULL),
(3, 7, '2020-01-02 06:36:33', '2020-01-02 06:36:33', NULL, NULL, NULL, NULL),
(3, 8, '2020-01-02 06:36:33', '2020-01-02 06:36:33', NULL, NULL, NULL, NULL),
(4, 1, '2020-01-02 06:36:33', '2020-01-02 06:36:33', NULL, NULL, NULL, NULL),
(4, 2, '2020-01-02 06:36:33', '2020-01-02 06:36:33', NULL, NULL, NULL, NULL),
(4, 3, '2020-01-02 06:36:33', '2020-01-02 06:36:33', NULL, NULL, NULL, NULL),
(4, 4, '2020-01-02 06:36:33', '2020-01-02 06:36:33', NULL, NULL, NULL, NULL),
(4, 5, '2020-01-02 06:36:33', '2020-01-02 06:36:33', NULL, NULL, NULL, NULL),
(4, 6, '2020-01-02 06:36:33', '2020-01-02 06:36:33', NULL, NULL, NULL, NULL),
(4, 7, '2020-01-02 06:36:33', '2020-01-02 06:36:33', NULL, NULL, NULL, NULL),
(4, 8, '2020-01-02 06:36:33', '2020-01-02 06:36:33', NULL, NULL, NULL, NULL),
(5, 1, '2020-01-02 06:36:33', '2020-01-02 06:36:33', NULL, NULL, NULL, NULL),
(5, 2, '2020-01-02 06:36:33', '2020-01-02 06:36:33', NULL, NULL, NULL, NULL),
(5, 3, '2020-01-02 06:36:33', '2020-01-02 06:36:33', NULL, NULL, NULL, NULL),
(5, 4, '2020-01-02 06:36:33', '2020-01-02 06:36:33', NULL, NULL, NULL, NULL),
(5, 5, '2020-01-02 06:36:33', '2020-01-02 06:36:33', NULL, NULL, NULL, NULL),
(5, 6, '2020-01-02 06:36:33', '2020-01-02 06:36:33', NULL, NULL, NULL, NULL),
(5, 7, '2020-01-02 06:36:33', '2020-01-02 06:36:33', NULL, NULL, NULL, NULL),
(5, 8, '2020-01-02 06:36:33', '2020-01-02 06:36:33', NULL, NULL, NULL, NULL),
(6, 1, '2020-01-02 06:36:33', '2020-01-02 06:36:33', NULL, NULL, NULL, NULL),
(6, 2, '2020-01-02 06:36:34', '2020-01-02 06:36:34', NULL, NULL, NULL, NULL),
(6, 3, '2020-01-02 06:36:34', '2020-01-02 06:36:34', NULL, NULL, NULL, NULL),
(6, 4, '2020-01-02 06:36:34', '2020-01-02 06:36:34', NULL, NULL, NULL, NULL),
(6, 5, '2020-01-02 06:36:34', '2020-01-02 06:36:34', NULL, NULL, NULL, NULL),
(6, 6, '2020-01-02 06:36:34', '2020-01-02 06:36:34', NULL, NULL, NULL, NULL),
(6, 7, '2020-01-02 06:36:34', '2020-01-02 06:36:34', NULL, NULL, NULL, NULL),
(6, 8, '2020-01-02 06:36:34', '2020-01-02 06:36:34', NULL, NULL, NULL, NULL),
(7, 1, '2020-01-02 06:36:34', '2020-01-02 06:36:34', NULL, NULL, NULL, NULL),
(7, 2, '2020-01-02 06:36:34', '2020-01-02 06:36:34', NULL, NULL, NULL, NULL),
(7, 3, '2020-01-02 06:36:34', '2020-01-02 06:36:34', NULL, NULL, NULL, NULL),
(7, 4, '2020-01-02 06:36:34', '2020-01-02 06:36:34', NULL, NULL, NULL, NULL),
(7, 5, '2020-01-02 06:36:34', '2020-01-02 06:36:34', NULL, NULL, NULL, NULL),
(7, 6, '2020-01-02 06:36:34', '2020-01-02 06:36:34', NULL, NULL, NULL, NULL),
(7, 7, '2020-01-02 06:36:34', '2020-01-02 06:36:34', NULL, NULL, NULL, NULL),
(7, 8, '2020-01-02 06:36:34', '2020-01-02 06:36:34', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `capacity` int(11) NOT NULL,
  `class_id` int(10) UNSIGNED NOT NULL,
  `teacher_id` int(10) UNSIGNED NOT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `name`, `capacity`, `class_id`, `teacher_id`, `note`, `status`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'V', 27, 2, 3, 'Fuga eligendi consequuntur aut.', '1', '2020-01-02 06:37:17', '2020-01-02 06:37:17', NULL, 1, 0, NULL),
(2, 'F', 38, 8, 5, 'Tempore omnis inventore neque.', '1', '2020-01-02 06:37:17', '2020-01-02 06:37:17', NULL, 1, 0, NULL),
(3, 'E', 35, 7, 4, 'Qui quia qui dolorum maxime ex quo.', '1', '2020-01-02 06:37:17', '2020-01-02 06:37:18', NULL, 1, 0, NULL),
(4, 'L', 39, 5, 3, 'Quasi hic at dolore harum.', '1', '2020-01-02 06:37:17', '2020-01-02 06:37:18', NULL, 1, 0, NULL),
(5, 'S', 24, 10, 4, 'Aut corrupti tenetur non aliquam laborum quas commodi nesciunt.', '1', '2020-01-02 06:37:17', '2020-01-02 06:37:18', NULL, 1, 0, NULL),
(6, 'C', 29, 2, 1, 'Recusandae qui minus earum voluptas sunt rerum.', '1', '2020-01-02 06:37:17', '2020-01-02 06:37:18', NULL, 1, 0, NULL),
(7, 'Q', 32, 2, 1, 'Pariatur debitis libero in porro itaque quae accusantium cupiditate.', '1', '2020-01-02 06:37:17', '2020-01-02 06:37:18', NULL, 1, 0, NULL),
(8, 'A', 29, 3, 1, 'Commodi aperiam odio enim rem quis eum.', '1', '2020-01-02 06:37:17', '2020-01-02 06:37:18', NULL, 1, 0, NULL),
(9, 'T', 28, 3, 3, 'Vel ut atque quae laborum porro.', '1', '2020-01-02 06:37:17', '2020-01-02 06:37:18', NULL, 1, 0, NULL),
(10, 'U', 20, 4, 4, 'Quasi nihil similique non.', '1', '2020-01-02 06:37:17', '2020-01-02 06:37:18', NULL, 1, 0, NULL),
(11, 'N', 37, 4, 1, 'Quibusdam autem ipsum sit et rem voluptatibus itaque.', '1', '2020-01-02 06:37:17', '2020-01-02 06:37:18', NULL, 1, 0, NULL),
(12, 'A', 21, 1, 2, 'Architecto porro porro libero incidunt vel rerum ipsa.', '1', '2020-01-02 06:37:17', '2020-01-02 06:37:18', NULL, 1, 0, NULL),
(13, 'B', 35, 1, 3, 'Laborum rerum perspiciatis reprehenderit ab aut possimus consequuntur.', '1', '2020-01-02 06:37:17', '2020-01-02 06:37:18', NULL, 1, 0, NULL),
(14, 'C', 31, 1, 5, 'Et est et iure ea aut ut.', '1', '2020-01-02 06:37:17', '2020-01-02 06:37:18', NULL, 1, 0, NULL);

--
-- Triggers `sections`
--
DELIMITER $$
CREATE TRIGGER `section__ai` AFTER INSERT ON `sections` FOR EACH ROW INSERT INTO section_history SELECT 'insert', NULL, d.* 
    FROM sections AS d WHERE d.id = NEW.id
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `section__au` AFTER UPDATE ON `sections` FOR EACH ROW INSERT INTO section_history SELECT 'update', NULL, d.*
    FROM sections AS d WHERE d.id = NEW.id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `section_history`
--

CREATE TABLE `section_history` (
  `action` varchar(8) COLLATE utf8_unicode_ci DEFAULT 'insert',
  `revision` int(6) NOT NULL,
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `capacity` int(11) NOT NULL,
  `class_id` int(10) UNSIGNED NOT NULL,
  `teacher_id` int(10) UNSIGNED NOT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `section_history`
--

INSERT INTO `section_history` (`action`, `revision`, `id`, `name`, `capacity`, `class_id`, `teacher_id`, `note`, `status`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
('insert', 1, 1, 'V', 27, 2, 3, 'Fuga eligendi consequuntur aut.', '1', '2020-01-02 06:37:17', '2020-01-02 06:37:17', NULL, 1, 0, NULL),
('insert', 1, 2, 'F', 38, 8, 5, 'Tempore omnis inventore neque.', '1', '2020-01-02 06:37:17', '2020-01-02 06:37:17', NULL, 1, 0, NULL),
('insert', 1, 3, 'E', 35, 7, 4, 'Qui quia qui dolorum maxime ex quo.', '1', '2020-01-02 06:37:17', '2020-01-02 06:37:18', NULL, 1, 0, NULL),
('insert', 1, 4, 'L', 39, 5, 3, 'Quasi hic at dolore harum.', '1', '2020-01-02 06:37:17', '2020-01-02 06:37:18', NULL, 1, 0, NULL),
('insert', 1, 5, 'S', 24, 10, 4, 'Aut corrupti tenetur non aliquam laborum quas commodi nesciunt.', '1', '2020-01-02 06:37:17', '2020-01-02 06:37:18', NULL, 1, 0, NULL),
('insert', 1, 6, 'C', 29, 2, 1, 'Recusandae qui minus earum voluptas sunt rerum.', '1', '2020-01-02 06:37:17', '2020-01-02 06:37:18', NULL, 1, 0, NULL),
('insert', 1, 7, 'Q', 32, 2, 1, 'Pariatur debitis libero in porro itaque quae accusantium cupiditate.', '1', '2020-01-02 06:37:17', '2020-01-02 06:37:18', NULL, 1, 0, NULL),
('insert', 1, 8, 'A', 29, 3, 1, 'Commodi aperiam odio enim rem quis eum.', '1', '2020-01-02 06:37:17', '2020-01-02 06:37:18', NULL, 1, 0, NULL),
('insert', 1, 9, 'T', 28, 3, 3, 'Vel ut atque quae laborum porro.', '1', '2020-01-02 06:37:17', '2020-01-02 06:37:18', NULL, 1, 0, NULL),
('insert', 1, 10, 'U', 20, 4, 4, 'Quasi nihil similique non.', '1', '2020-01-02 06:37:17', '2020-01-02 06:37:18', NULL, 1, 0, NULL),
('insert', 1, 11, 'N', 37, 4, 1, 'Quibusdam autem ipsum sit et rem voluptatibus itaque.', '1', '2020-01-02 06:37:17', '2020-01-02 06:37:18', NULL, 1, 0, NULL),
('insert', 1, 12, 'A', 21, 1, 2, 'Architecto porro porro libero incidunt vel rerum ipsa.', '1', '2020-01-02 06:37:17', '2020-01-02 06:37:18', NULL, 1, 0, NULL),
('insert', 1, 13, 'B', 35, 1, 3, 'Laborum rerum perspiciatis reprehenderit ab aut possimus consequuntur.', '1', '2020-01-02 06:37:17', '2020-01-02 06:37:18', NULL, 1, 0, NULL),
('insert', 1, 14, 'C', 31, 1, 5, 'Et est et iure ea aut ut.', '1', '2020-01-02 06:37:17', '2020-01-02 06:37:18', NULL, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `site_metas`
--

CREATE TABLE `site_metas` (
  `id` int(10) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `site_metas`
--

INSERT INTO `site_metas` (`id`, `meta_key`, `meta_value`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'settings', '{\"logo\":\"logo.png\",\"logo2x\":\"logo@2x.png\",\"favicon\":\"favicon.png\",\"name\":\"Cloud School\",\"short_name\":\"CloudSchool\",\"facebook\":\"#\",\"google\":\"#\",\"twitter\":\"#\",\"youtube\":\"#\"}', '2020-01-02 06:36:55', '2020-01-02 06:36:55', NULL, 0, 0, NULL),
(2, 'timeline', '{\"t\":\"We Start Here\",\"d\":\"Lorem ipsum\",\"y\":\"2006\"}', '2020-01-02 06:36:55', '2020-01-02 06:36:55', NULL, 0, 0, NULL),
(3, 'timeline', '{\"t\":\"Top Score\",\"d\":\"We achive top result score in the state\",\"y\":\"2010\"}', '2020-01-02 06:36:55', '2020-01-02 06:36:55', NULL, 0, 0, NULL),
(4, 'faq', '{\"q\":\"How to apply for adminission?\",\"a\":\"Just e-mail us, or contact on hot line.\"}', '2020-01-02 06:36:55', '2020-01-02 06:36:55', NULL, 0, 0, NULL),
(5, 'contact_address', 'Dhaka-1207', '2020-01-02 06:36:55', '2020-01-02 06:36:55', NULL, 0, 0, NULL),
(6, 'contact_phone', '+880258685', '2020-01-02 06:36:55', '2020-01-02 06:36:55', NULL, 0, 0, NULL),
(7, 'contact_email', 'contact@cloudschoolbd.com', '2020-01-02 06:36:55', '2020-01-02 06:36:55', NULL, 0, 0, NULL),
(8, 'contact_latlong', '23.7340076,90.3841824', '2020-01-02 06:36:55', '2020-01-02 06:36:55', NULL, 0, 0, NULL),
(9, 'gallery', '1.jpg', '2020-01-02 06:36:55', '2020-01-02 06:36:55', NULL, 0, 0, NULL),
(10, 'gallery', '2.jpg', '2020-01-02 06:36:55', '2020-01-02 06:36:55', NULL, 0, 0, NULL),
(11, 'gallery', '3.jpg', '2020-01-02 06:36:56', '2020-01-02 06:36:56', NULL, 0, 0, NULL),
(12, 'statistic', '4000,150,18000,9800', '2020-01-02 06:36:56', '2020-01-02 06:36:56', NULL, 0, 0, NULL),
(13, 'our_service_text', 'Lorem ipsum', '2020-01-02 06:36:56', '2020-01-02 06:36:56', NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `subtitle`, `image`, `order`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'First slider image', 'This is subtitle 1', '1.jpg', 1, '2020-01-02 06:36:56', '2020-01-02 06:36:56', NULL, 0, 0, NULL),
(2, 'Second slider image', 'This is subtitle 2', '2.jpg', 2, '2020-01-02 06:36:56', '2020-01-02 06:36:56', NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sms_logs`
--

CREATE TABLE `sms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `sender_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `to` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dob` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `gender` enum('1','2') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `religion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blood_group` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nationality` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extra_activity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `father_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `father_phone_no` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mother_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mother_phone_no` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardian` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardian_phone_no` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `present_address` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permanent_address` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `user_id`, `name`, `dob`, `gender`, `religion`, `blood_group`, `nationality`, `photo`, `email`, `phone_no`, `extra_activity`, `note`, `father_name`, `father_phone_no`, `mother_name`, `mother_phone_no`, `guardian`, `guardian_phone_no`, `present_address`, `permanent_address`, `status`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 13, 'Beth Murphy', '27/02/2004', '2', '1', '3', 'Guadeloupe', NULL, 'georgiana.aufderhar@example.com', '+8282451099927', '', '', 'Narciso Rutherford', '+3267154553116', 'Prof. Zelda Satterfield Jr.', '+6076517986530', NULL, NULL, '2515 Alexandria Glens\nNorth Lucas, RI 37420-4601', '83699 Melyna Ridges Apt. 727\nSouth Anabel, SD 56418', '1', '2020-01-02 06:37:19', '2020-01-02 06:37:21', NULL, 1, 0, NULL),
(2, 14, 'Prof. Josefa Deckow', '14/06/2014', '1', '3', '7', 'Ukraine', NULL, 'lenora.cummings@example.net', '+3896066493017', '', '', 'Mr. Tad Tromp MD', '+5043148840890', 'Elyse Miller', '+3156056163502', NULL, NULL, '27985 Rath Mountain\nPort Sofiaberg, RI 64985', '256 Schultz Lock\nNorth Mackenzie, SD 26947-7988', '1', '2020-01-02 06:37:19', '2020-01-02 06:37:21', NULL, 1, 0, NULL),
(3, 15, 'Mr. Zane Windler II', '18/06/2012', '1', '5', '2', 'British Virgin Islands', NULL, 'sunny.wiza@example.org', '+5610309927193', '', '', 'Stanford Waters', '+1439922956381', 'Anna Raynor MD', '+6936589479106', NULL, NULL, '6533 Harvey River Suite 956\nLake Frank, KS 45428', '2142 Broderick Lock Apt. 819\nPort Maximilian, MN 84634-3015', '1', '2020-01-02 06:37:19', '2020-01-02 06:37:21', NULL, 1, 0, NULL),
(4, 16, 'Eulalia Muller', '01/06/2008', '1', '2', '5', 'Romania', NULL, 'dpadberg@example.org', '+2450789969886', '', '', 'Damien Kemmer', '+3317547650153', 'Kirstin Reinger', '+8971662449471', NULL, NULL, '47991 Shirley Dam\nPort Angus, NM 58774-6311', '2738 Cassin Creek\nWest Henry, UT 20340-2619', '1', '2020-01-02 06:37:19', '2020-01-02 06:37:21', NULL, 1, 0, NULL),
(5, 17, 'Aurelia Davis', '04/10/2003', '2', '1', '3', 'Hong Kong', NULL, 'reyes.bechtelar@example.org', '+2917051477411', '', '', 'Davion Watsica', '+8206741564345', 'Cora Vandervort', '+3139363570737', NULL, NULL, '2264 Nikolaus Route Suite 731\nSouth Kody, MS 44188', '220 Rogahn Plain Suite 990\nLake Lucindastad, LA 03418', '1', '2020-01-02 06:37:19', '2020-01-02 06:37:21', NULL, 1, 0, NULL),
(6, 18, 'Jerad Rath', '14/09/2012', '1', '1', '5', 'Singapore', NULL, 'cummings.tianna@example.org', '+3941265226369', '', '', 'Rodrigo Hackett', '+4711057631565', 'Ebba Schmidt', '+1906791369057', NULL, NULL, '94857 Kshlerin Gardens Apt. 389\nKonopelskistad, MI 49759-2187', '62238 Corwin Pines\nDemarcusborough, NJ 82470', '1', '2020-01-02 06:37:19', '2020-01-02 06:37:22', NULL, 1, 0, NULL),
(7, 19, 'Mr. Carey Leuschke', '16/02/2015', '1', '2', '3', 'Lesotho', NULL, 'mklein@example.org', '+5835878822741', '', '', 'Donnell McGlynn', '+9048428725069', 'Emie Beatty III', '+5748947151681', NULL, NULL, '981 Halvorson Way\nWest Cordie, KS 77427', '174 Zulauf Harbor Apt. 789\nEast Columbusshire, IA 21611-9755', '1', '2020-01-02 06:37:19', '2020-01-02 06:37:22', NULL, 1, 0, NULL),
(8, 20, 'Crawford Dare', '21/04/2016', '1', '2', '5', 'Ethiopia', NULL, 'june58@example.org', '+1873126096060', '', '', 'Dr. Juwan Gutmann II', '+6382980659807', 'Miss Emily Hauck PhD', '+9244308236739', NULL, NULL, '892 Ankunding Fall Suite 718\nMcCulloughmouth, MN 21477', '4833 Catalina Key\nNorth Jaylon, DC 57040', '1', '2020-01-02 06:37:19', '2020-01-02 06:37:22', NULL, 1, 0, NULL),
(9, 21, 'Adele Medhurst', '15/07/2019', '2', '1', '6', 'Korea', NULL, 'hrunolfsdottir@example.com', '+7746571123805', '', '', 'Consuelo Padberg', '+8580896301736', 'Letha Smith', '+4883013556174', NULL, NULL, '469 Frederique Summit\nKirstinfort, MS 06447-6516', '9829 Jenkins Inlet Suite 328\nWest Alysson, FL 55159', '1', '2020-01-02 06:37:19', '2020-01-02 06:37:22', NULL, 1, 0, NULL),
(10, 22, 'Loy Hill', '20/05/2014', '2', '5', '2', 'Poland', NULL, 'cole.derek@example.net', '+9981071781833', '', '', 'Prof. Jaycee Turner IV', '+1909115057163', 'Mireya Grady', '+5598604877923', NULL, NULL, '672 Paucek Isle Suite 551\nJeromeberg, DC 26468', '7042 Layne Grove\nMariamhaven, WA 06141', '1', '2020-01-02 06:37:19', '2020-01-02 06:37:22', NULL, 1, 0, NULL),
(11, 23, 'Mr. Adrain Treutel DDS', '06/12/2011', '1', '2', '7', 'Lesotho', NULL, 'desiree40@example.com', '+3071488223876', '', '', 'Emerald Hackett Jr.', '+1282480275722', 'Leta Rippin', '+5732885749770', NULL, NULL, '5955 Abernathy Drive Suite 182\nWalshton, NM 12651', '7021 Nicolas Key Suite 176\nTurcottestad, AZ 45564', '1', '2020-01-02 06:37:19', '2020-01-02 06:37:22', NULL, 1, 0, NULL),
(12, 24, 'Jedediah Mertz', '15/12/2011', '2', '5', '8', 'Saint Pierre and Miquelon', NULL, 'rocky.jenkins@example.net', '+7998917961810', '', '', 'Dangelo Walter Jr.', '+5504628011651', 'Evie Konopelski', '+1792335155977', NULL, NULL, '15918 Jacobs Ridge\nNorth Keiraton, VT 49841-3014', '73755 Rippin Mountain\nNorth Cierraburgh, TX 94487-3024', '1', '2020-01-02 06:37:19', '2020-01-02 06:37:22', NULL, 1, 0, NULL),
(13, 25, 'Miss Rafaela Maggio', '07/04/2007', '1', '5', '1', 'Pitcairn Islands', NULL, 'dovie.windler@example.com', '+1218624256497', '', '', 'Bernard Baumbach', '+2230606894631', 'Alexandria Glover', '+9288884349536', NULL, NULL, '7130 Medhurst Turnpike\nSouth Jovani, VA 08853', '53447 Kaci Summit Apt. 100\nNew Ilabury, NH 71255-6665', '1', '2020-01-02 06:37:19', '2020-01-02 06:37:22', NULL, 1, 0, NULL),
(14, 26, 'Waylon Hessel', '04/10/2001', '1', '2', '4', 'Benin', NULL, 'kaycee56@example.org', '+4904970188252', '', '', 'Rigoberto Graham', '+2181779262930', 'Miss Roselyn Schiller DDS', '+2356569089091', NULL, NULL, '480 Strosin Shores Apt. 482\nLake Adelbertburgh, ID 69617-0532', '986 Hassan Ridges\nRodrigoshire, SD 75332-2194', '1', '2020-01-02 06:37:19', '2020-01-02 06:37:22', NULL, 1, 0, NULL),
(15, 27, 'Dr. Tania White', '17/10/2007', '2', '3', '6', 'Japan', NULL, 'bernard.kunze@example.com', '+5624707734738', '', '', 'Amos Gislason', '+4396428316491', 'Mrs. Kitty Walker', '+5390361750689', NULL, NULL, '615 Wyatt Tunnel\nLeopoldside, FL 98313-1068', '663 Lane Flat Apt. 202\nRoobmouth, NJ 08672', '1', '2020-01-02 06:37:19', '2020-01-02 06:37:22', NULL, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_attendances`
--

CREATE TABLE `student_attendances` (
  `id` int(10) UNSIGNED NOT NULL,
  `academic_year_id` int(10) UNSIGNED NOT NULL,
  `class_id` int(10) UNSIGNED NOT NULL,
  `registration_id` int(10) UNSIGNED NOT NULL,
  `attendance_date` date NOT NULL,
  `in_time` datetime NOT NULL,
  `out_time` datetime NOT NULL,
  `staying_hour` time NOT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `present` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student_attendances`
--

INSERT INTO `student_attendances` (`id`, `academic_year_id`, `class_id`, `registration_id`, `attendance_date`, `in_time`, `out_time`, `staying_hour`, `status`, `present`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 1, 1, 1, '2019-12-18', '2019-12-18 08:00:00', '2019-12-18 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(2, 1, 1, 2, '2019-12-18', '2019-12-18 08:00:00', '2019-12-18 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(3, 1, 1, 3, '2019-12-18', '2019-12-18 00:00:00', '2019-12-18 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(4, 1, 1, 4, '2019-12-18', '2019-12-18 08:00:00', '2019-12-18 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(5, 1, 1, 5, '2019-12-18', '2019-12-18 08:00:00', '2019-12-18 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(6, 1, 1, 1, '2019-12-19', '2019-12-19 08:00:00', '2019-12-19 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(7, 1, 1, 2, '2019-12-19', '2019-12-19 00:00:00', '2019-12-19 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(8, 1, 1, 3, '2019-12-19', '2019-12-19 08:00:00', '2019-12-19 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(9, 1, 1, 4, '2019-12-19', '2019-12-19 08:00:00', '2019-12-19 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(10, 1, 1, 5, '2019-12-19', '2019-12-19 00:00:00', '2019-12-19 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(11, 1, 1, 1, '2019-12-21', '2019-12-21 00:00:00', '2019-12-21 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(12, 1, 1, 2, '2019-12-21', '2019-12-21 00:00:00', '2019-12-21 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(13, 1, 1, 3, '2019-12-21', '2019-12-21 00:00:00', '2019-12-21 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(14, 1, 1, 4, '2019-12-21', '2019-12-21 00:00:00', '2019-12-21 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(15, 1, 1, 5, '2019-12-21', '2019-12-21 08:00:00', '2019-12-21 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(16, 1, 1, 1, '2019-12-22', '2019-12-22 08:00:00', '2019-12-22 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(17, 1, 1, 2, '2019-12-22', '2019-12-22 00:00:00', '2019-12-22 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(18, 1, 1, 3, '2019-12-22', '2019-12-22 08:00:00', '2019-12-22 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(19, 1, 1, 4, '2019-12-22', '2019-12-22 00:00:00', '2019-12-22 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(20, 1, 1, 5, '2019-12-22', '2019-12-22 00:00:00', '2019-12-22 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(21, 1, 1, 1, '2019-12-23', '2019-12-23 08:00:00', '2019-12-23 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(22, 1, 1, 2, '2019-12-23', '2019-12-23 08:00:00', '2019-12-23 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(23, 1, 1, 3, '2019-12-23', '2019-12-23 00:00:00', '2019-12-23 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(24, 1, 1, 4, '2019-12-23', '2019-12-23 00:00:00', '2019-12-23 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(25, 1, 1, 5, '2019-12-23', '2019-12-23 00:00:00', '2019-12-23 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(26, 1, 1, 1, '2019-12-24', '2019-12-24 08:00:00', '2019-12-24 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(27, 1, 1, 2, '2019-12-24', '2019-12-24 00:00:00', '2019-12-24 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(28, 1, 1, 3, '2019-12-24', '2019-12-24 08:00:00', '2019-12-24 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(29, 1, 1, 4, '2019-12-24', '2019-12-24 00:00:00', '2019-12-24 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(30, 1, 1, 5, '2019-12-24', '2019-12-24 00:00:00', '2019-12-24 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(31, 1, 1, 1, '2019-12-25', '2019-12-25 08:00:00', '2019-12-25 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(32, 1, 1, 2, '2019-12-25', '2019-12-25 08:00:00', '2019-12-25 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(33, 1, 1, 3, '2019-12-25', '2019-12-25 08:00:00', '2019-12-25 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(34, 1, 1, 4, '2019-12-25', '2019-12-25 00:00:00', '2019-12-25 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(35, 1, 1, 5, '2019-12-25', '2019-12-25 08:00:00', '2019-12-25 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(36, 1, 1, 1, '2019-12-26', '2019-12-26 00:00:00', '2019-12-26 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(37, 1, 1, 2, '2019-12-26', '2019-12-26 08:00:00', '2019-12-26 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(38, 1, 1, 3, '2019-12-26', '2019-12-26 00:00:00', '2019-12-26 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(39, 1, 1, 4, '2019-12-26', '2019-12-26 08:00:00', '2019-12-26 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(40, 1, 1, 5, '2019-12-26', '2019-12-26 08:00:00', '2019-12-26 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(41, 1, 1, 1, '2019-12-28', '2019-12-28 00:00:00', '2019-12-28 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(42, 1, 1, 2, '2019-12-28', '2019-12-28 00:00:00', '2019-12-28 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(43, 1, 1, 3, '2019-12-28', '2019-12-28 00:00:00', '2019-12-28 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(44, 1, 1, 4, '2019-12-28', '2019-12-28 08:00:00', '2019-12-28 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(45, 1, 1, 5, '2019-12-28', '2019-12-28 00:00:00', '2019-12-28 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(46, 1, 1, 1, '2019-12-29', '2019-12-29 00:00:00', '2019-12-29 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(47, 1, 1, 2, '2019-12-29', '2019-12-29 00:00:00', '2019-12-29 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(48, 1, 1, 3, '2019-12-29', '2019-12-29 08:00:00', '2019-12-29 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(49, 1, 1, 4, '2019-12-29', '2019-12-29 00:00:00', '2019-12-29 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(50, 1, 1, 5, '2019-12-29', '2019-12-29 08:00:00', '2019-12-29 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(51, 1, 1, 1, '2019-12-30', '2019-12-30 08:00:00', '2019-12-30 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(52, 1, 1, 2, '2019-12-30', '2019-12-30 08:00:00', '2019-12-30 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(53, 1, 1, 3, '2019-12-30', '2019-12-30 00:00:00', '2019-12-30 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(54, 1, 1, 4, '2019-12-30', '2019-12-30 08:00:00', '2019-12-30 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(55, 1, 1, 5, '2019-12-30', '2019-12-30 08:00:00', '2019-12-30 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(56, 1, 1, 1, '2019-12-31', '2019-12-31 00:00:00', '2019-12-31 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(57, 1, 1, 2, '2019-12-31', '2019-12-31 08:00:00', '2019-12-31 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(58, 1, 1, 3, '2019-12-31', '2019-12-31 00:00:00', '2019-12-31 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(59, 1, 1, 4, '2019-12-31', '2019-12-31 08:00:00', '2019-12-31 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(60, 1, 1, 5, '2019-12-31', '2019-12-31 08:00:00', '2019-12-31 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(61, 1, 1, 1, '2020-01-02', '2020-01-02 00:00:00', '2020-01-02 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(62, 1, 1, 2, '2020-01-02', '2020-01-02 00:00:00', '2020-01-02 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(63, 1, 1, 3, '2020-01-02', '2020-01-02 08:00:00', '2020-01-02 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(64, 1, 1, 4, '2020-01-02', '2020-01-02 08:00:00', '2020-01-02 13:00:00', '05:00:00', '', '1', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(65, 1, 1, 5, '2020-01-02', '2020-01-02 00:00:00', '2020-01-02 00:00:00', '00:00:00', '', '0', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_info_log`
--

CREATE TABLE `student_info_log` (
  `student_id` int(10) UNSIGNED NOT NULL,
  `academic_year_id` int(10) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('1','2') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `class_id` int(10) UNSIGNED NOT NULL,
  `teacher_id` int(10) UNSIGNED NOT NULL,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `code`, `type`, `class_id`, `teacher_id`, `status`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'Eius cumque.', '192', '1', 2, 2, '1', '2020-01-02 06:37:18', '2020-01-02 06:37:18', NULL, 1, 0, NULL),
(2, 'Expedita ut nemo.', '144', '1', 2, 5, '1', '2020-01-02 06:37:18', '2020-01-02 06:37:18', NULL, 1, 0, NULL),
(3, 'Eum asperiores tempore quis.', '169', '2', 3, 2, '1', '2020-01-02 06:37:18', '2020-01-02 06:37:18', NULL, 1, 0, NULL),
(4, 'Nisi aut error repudiandae.', '100', '1', 4, 4, '1', '2020-01-02 06:37:18', '2020-01-02 06:37:18', NULL, 1, 0, NULL),
(5, 'Ducimus id eum quo ipsam.', '123', '2', 5, 1, '1', '2020-01-02 06:37:18', '2020-01-02 06:37:18', NULL, 1, 0, NULL),
(6, 'Pariatur quidem autem.', '190', '1', 10, 2, '1', '2020-01-02 06:37:18', '2020-01-02 06:37:18', NULL, 1, 0, NULL),
(7, 'Et ea.', '198', '1', 8, 1, '1', '2020-01-02 06:37:18', '2020-01-02 06:37:18', NULL, 1, 0, NULL),
(8, 'Sed accusamus voluptatem.', '134', '1', 10, 5, '1', '2020-01-02 06:37:18', '2020-01-02 06:37:18', NULL, 1, 0, NULL),
(9, 'Commodi maxime ut beatae.', '191', '2', 7, 3, '1', '2020-01-02 06:37:18', '2020-01-02 06:37:18', NULL, 1, 0, NULL),
(10, 'Minima tempore qui dolores delectus.', '171', '1', 8, 5, '1', '2020-01-02 06:37:18', '2020-01-02 06:37:18', NULL, 1, 0, NULL),
(11, 'Bangla 1st', '101', '1', 1, 5, '1', '2020-01-02 06:37:18', '2020-01-02 06:37:18', NULL, 1, 0, NULL),
(12, 'Bangla 2nd', '102', '1', 1, 1, '1', '2020-01-02 06:37:18', '2020-01-02 06:37:18', NULL, 1, 0, NULL),
(13, 'English 1st', '107', '1', 1, 2, '1', '2020-01-02 06:37:18', '2020-01-02 06:37:18', NULL, 1, 0, NULL),
(14, 'English 2nd', '108', '1', 1, 3, '1', '2020-01-02 06:37:18', '2020-01-02 06:37:18', NULL, 1, 0, NULL),
(15, 'Math', '111', '1', 1, 5, '1', '2020-01-02 06:37:18', '2020-01-02 06:37:18', NULL, 1, 0, NULL),
(16, 'Computer', '112', '1', 1, 1, '1', '2020-01-02 06:37:18', '2020-01-02 06:37:18', NULL, 1, 0, NULL);

--
-- Triggers `subjects`
--
DELIMITER $$
CREATE TRIGGER `subject_ai` AFTER INSERT ON `subjects` FOR EACH ROW INSERT INTO subject_history SELECT 'insert', NULL, d.* 
    FROM subjects AS d WHERE d.id = NEW.id
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `subject_au` AFTER UPDATE ON `subjects` FOR EACH ROW INSERT INTO subject_history SELECT 'update', NULL, d.*
    FROM subjects AS d WHERE d.id = NEW.id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `subject_history`
--

CREATE TABLE `subject_history` (
  `action` varchar(8) COLLATE utf8_unicode_ci DEFAULT 'insert',
  `revision` int(6) NOT NULL,
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('1','2') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `class_id` int(10) UNSIGNED NOT NULL,
  `teacher_id` int(10) UNSIGNED NOT NULL,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subject_history`
--

INSERT INTO `subject_history` (`action`, `revision`, `id`, `name`, `code`, `type`, `class_id`, `teacher_id`, `status`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
('insert', 1, 1, 'Eius cumque.', '192', '1', 2, 2, '1', '2020-01-02 06:37:18', '2020-01-02 06:37:18', NULL, 1, 0, NULL),
('insert', 1, 2, 'Expedita ut nemo.', '144', '1', 2, 5, '1', '2020-01-02 06:37:18', '2020-01-02 06:37:18', NULL, 1, 0, NULL),
('insert', 1, 3, 'Eum asperiores tempore quis.', '169', '2', 3, 2, '1', '2020-01-02 06:37:18', '2020-01-02 06:37:18', NULL, 1, 0, NULL),
('insert', 1, 4, 'Nisi aut error repudiandae.', '100', '1', 4, 4, '1', '2020-01-02 06:37:18', '2020-01-02 06:37:18', NULL, 1, 0, NULL),
('insert', 1, 5, 'Ducimus id eum quo ipsam.', '123', '2', 5, 1, '1', '2020-01-02 06:37:18', '2020-01-02 06:37:18', NULL, 1, 0, NULL),
('insert', 1, 6, 'Pariatur quidem autem.', '190', '1', 10, 2, '1', '2020-01-02 06:37:18', '2020-01-02 06:37:18', NULL, 1, 0, NULL),
('insert', 1, 7, 'Et ea.', '198', '1', 8, 1, '1', '2020-01-02 06:37:18', '2020-01-02 06:37:18', NULL, 1, 0, NULL),
('insert', 1, 8, 'Sed accusamus voluptatem.', '134', '1', 10, 5, '1', '2020-01-02 06:37:18', '2020-01-02 06:37:18', NULL, 1, 0, NULL),
('insert', 1, 9, 'Commodi maxime ut beatae.', '191', '2', 7, 3, '1', '2020-01-02 06:37:18', '2020-01-02 06:37:18', NULL, 1, 0, NULL),
('insert', 1, 10, 'Minima tempore qui dolores delectus.', '171', '1', 8, 5, '1', '2020-01-02 06:37:18', '2020-01-02 06:37:18', NULL, 1, 0, NULL),
('insert', 1, 11, 'Bangla 1st', '101', '1', 1, 5, '1', '2020-01-02 06:37:18', '2020-01-02 06:37:18', NULL, 1, 0, NULL),
('insert', 1, 12, 'Bangla 2nd', '102', '1', 1, 1, '1', '2020-01-02 06:37:18', '2020-01-02 06:37:18', NULL, 1, 0, NULL),
('insert', 1, 13, 'English 1st', '107', '1', 1, 2, '1', '2020-01-02 06:37:18', '2020-01-02 06:37:18', NULL, 1, 0, NULL),
('insert', 1, 14, 'English 2nd', '108', '1', 1, 3, '1', '2020-01-02 06:37:18', '2020-01-02 06:37:18', NULL, 1, 0, NULL),
('insert', 1, 15, 'Math', '111', '1', 1, 5, '1', '2020-01-02 06:37:18', '2020-01-02 06:37:18', NULL, 1, 0, NULL),
('insert', 1, 16, 'Computer', '112', '1', 1, 1, '1', '2020-01-02 06:37:18', '2020-01-02 06:37:18', NULL, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_profiles`
--

CREATE TABLE `teacher_profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `qualification` longtext COLLATE utf8_unicode_ci,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `teacher_profiles`
--

INSERT INTO `teacher_profiles` (`id`, `name`, `designation`, `image`, `description`, `qualification`, `facebook`, `google`, `twitter`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'Fakir Chand', 'Head Master', '1.jpg', 'Super cool boy!', 'M.A in English', '#', '#', '#', '2020-01-02 06:36:56', '2020-01-02 06:36:56', NULL, 0, 0, NULL),
(2, 'Nosimon Beagum', 'Class Teacher', '2.jpg', '', 'Hons in English', '#', '#', '#', '2020-01-02 06:36:56', '2020-01-02 06:36:56', NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE `templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('1','2','3') COLLATE utf8_unicode_ci NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `templates`
--

INSERT INTO `templates` (`id`, `name`, `type`, `role_id`, `content`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'Student Idcard', '3', 3, '{\"format_id\":\"1\",\"bg_color\":null,\"border_color\":null,\"body_text_color\":null,\"fs_title_color\":null,\"picture_border_color\":null,\"bs_title_color\":null,\"website_link_color\":null,\"fs_title_bg_color\":null,\"id_title_color\":null,\"title_bg_image\":null,\"signature\":\"iVBORw0KGgoAAAANSUhEUgAAAHcAAAAhBAMAAAARwClTAAAAMFBMVEUAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABaPxwLAAAAAXRSTlMAQObYZgAAAV5JREFUOMulVFFugzAMNZ1WqRLCaBdYb7DegCtwg\\/ZIvUGvshvsCrvBDKh\\/lTzHToGyJVBiIQix34vzHAdgbNkR1ljVuTfWzyORuQQkgCIU8UohD5unidEHsXPkYkRRbP99Box+Oq5zAMwzmzLvm7xyVhvTdPFC5Bp7ZO5iWw5XkbnGIuRdchAowv3o2\\/0j2N9k71MXwfeuYjSGzHi\\/xtgX9d9GfB8uCo3RRmw\\/PKhKfjnmaTI7tngEA2uDDRy2cdv7XqYRp6KQxrkINi95QvIHRQcbx\\/nzKBMedElyOQiSJGIj4e8OVupeCSpPb5w05G75dgS1IeVpJBncQ6ViUEZQSkTpXHlnCvFQDYJv4DPgFbZC37BKw3xXsb0CnlvTBw94cqi2L54vkiw2te1n4BLQMtOC5l10KUECmBLAONtpEZO2qBKynrsg4mBKyHo9GFPB6ytFKfiUMyLdtDj0F4hoo+2pfCyPAAAAAElFTkSuQmCC\",\"logo\":\"iVBORw0KGgoAAAANSUhEUgAAAGQAAAB0CAYAAABzNJfPAAAgAElEQVR42u2dd3RV153vP\\/uce68q6qgghECA6WCaLUyzje3YPBvHju0kz45DnHH8kjiTZDKTvJc3mZWZZNrKymQSZ5L4JTB2qhPbiQvgFkw3mI4RiCKBUO9duvWc\\/f74ncsVRFcCdEECs9fSkkC65+yzv3v\\/yvdXDlwf18f1cX1cNUNdLRPVWqcCKUASkAgkAB7ADbj6PIsFhIAA4Ae8QA\\/QDXQopXwj+TldI3TxFZANZALpwJjWbib1+Cny+skPhMgJWmTZmlStSbBs3LZGaUDb2JbGb9t0mwZtHhdNLpPaxDiqCkdTrrUuB1qAVqBZKdV5\\/YT0D4IJoWRwpQQsJjV3UmzbzLc00zt7SSurx1PXhqeuDXd9O67mLlzdPujxQZcXQkHQWp5IA6YJGcnYeelYOWkEx2USmDeR4KRcvHFuauPdHEhLZI9S7AbdBLpbKbP3OiARQGYDK4HlpTVM3lTCqBO1pJxpJr6xA3r94AuANwC+IPhDEApByIaQBdp2HkjJUxkK4tyQ4JHviXGQHA+jU2BGAcwvovOmyXROzKEd2AO8A6wf7hOjhhmEJOB24L6aFub++TB5B06TW1aPWdUM9e3Q2AlomJAN+ZmQlw5j0iEnDVISZZFTEsBtCmBdXuj2Q1u3fL62FeraoaIRGltESOekwdhM+SrIhBvy6L75BmpvmkQt8BawTilV8qEBRGudAhQ3dXL7gdMsqWxmzvFakncdRx+qQAVCMDEPJuZAfgYUZMniZSZDejJkjIL0RNn18W4wDDkZWstp8Qah2wttPdDSLeA0tEN1qwBU0QRl9VDTBKYLpufD\\/InoW6bA9AJq5k5gV7ybd4HtWlNiGEpfk4Bo7YuHuNz6du6paeWx0hpu2nQY1xsHob1Hdn52CkzIgQUTYd4EmDYWslNFL1zqhPuu5qkGOHwG9p2C\\/aehsQOaOqChAxI9cP9CeGQxTMunZWwWr5qK36HtA9iBVuVK0NcMIFrrxECIJSGbr715gNt\\/tB7XwTMi690umD1OFuMjN8LkvCszp5AF75+ENw\\/Bur0Cji8AyoD7FsJXV8KMAuoNxRqlWKuhwlDKvqoB0Vq7gawuH08fPM2j\\/\\/UmeYfO4GnuFAW9oAg+tRxumwXZoyAhHswreG4DITEYmjthWym8\\/L6AZBqis+6bD6tvozc\\/nffdLn4KvNbrtwOJcQZKxV6UmZcXDL\\/bss1lrV186\\/nN3P+H9xi77ShmbZuciM9\\/BB5dBrfNFGXtccuJuZLDNCDeI3ppQrZYYIXZUF4PR6rgTBNUteBOSWRcQSZTDIMst0udUkp1XFUnRGufGzwf3XVSPbW9lBW\\/2QYHT8G8Ilg+E5ZPh7vmiFk60kaPDzYcgDcOwFsHoa4N7roRHl8Od8ymMzuFNbZtrTVNV8lVAYjWOito8cDGw3xl\\/T6mr31XrKDiG+CxpfDRmyEtceTTNSfr4fc7BJi95ZCbBk\\/fDR9bRKAom1eBH4QsdrtdyhqxgGit8zu8fGr3Sb78ow1kby\\/FSIyHhUXwtVVyQpLirg7+zNbi12w5Cms2wq6Tot8eXQb\\/6068RbnsV\\/Ddrp7A5pTkuJHHkWkdyPQF9L9sKtEtt\\/xfrdM\\/rXXGaq2\\/tEbro1VaBy19VQ5fQOsTtVp\\/5b+1Tv2U1qM\\/o\\/Xjz2hdVq8trfUurfXdI5EQTNZa\\/8vLu3TLwm9onfSo1oWf1\\/qZN7SubtHXxKhu0fofXtA6c7XWaZ\\/W+uP\\/ofWxGq211nttW\\/+PEcP2aq1TLJsn1+3nM8++Q8ahCphVCF+8G1bNh8wUromRnwGfu1MYgec2w4b9kJEMX7ib+TML+IatdbcF29xD8FWMoYPR5LFsHtxWyhd+vYXcTSXoWYXw1J3wySXXDhh9QfnsCnm2tGR4YTt67btQ2cxiBX9NyJrW2tGlhlNU3bfzhC759DNaux7RetZXtf7hOn3Nj5Yurb\\/+K62znxAR9tdrtW7p0j6t9dpgMJg2HEAorfX8Uw168988p3XcJ7We\\/mWt12zU2rb1h2LUtWn9f36jddrjWo\\/9nNbfeVHrxg7dpbX+jm3r5CstsgqbO3nqxZ0sfnGnyNLHb4UHb3ZiEh+CkZsGq2+F\\/7kEmrvgd9vhT7tJDoT4rFI80OOz4q8IIFr7PJbNo1tLefhXW3F1edEPFQsgaUnnsqvX+rhhDDx5J9x9I5Q3wC82wvsnydOapxPjjAVX6ITE3bfzOKt\\/uYW0sjq4dz7qCx+BvLRh4PRHwJhTCF+9F2YXQmk1\\/MfrUNfOQuDzWuvMywqI1jq\\/opEnXtzJpLcOwsJJ8MTtMDWfD+1QCm6eDE\\/cJhLi3RJ4eReq28dKYKXkC1wGQLTWBvDIc1sofm2v8FGfXAKLpvChH3FuWDkfbpsBLhN+8iYcqiAN+BIw6bIA4g9SvGE\\/j2wrJaO6Be5bAI\\/cImHU6wPGZcHf3Q9ZoySe\\/5O3oKOXhcBjltajYwqIL7BPhWxW7zhO8Z4yuGkyPHyLxLmvj8iYMgb+9wMSBX23BN49DEGLzxuwJKaAxLnnrdh6lGU7SiEQhJXzYOm06wCcPzwueGQRLJ4C3T5hiatbSAdW6Qs4JRcEiNbatGyeeGU34\\/edhkU3wIqZ10VVtJEUD5+5XbJm3joEW45iBC1WAAscPXzpgDgWworX97L0aDVxgRCsvk2sipEyfEH50iPIAbprDiyfAalJsOZdOFTBWOBBJEV2KCckGAc89PL7ZB+pgjtmQ\\/HkkeWN7zgGm0okayRoSeJCyBp+0fWJWyAnFfaXw75TqJDNSmBAm9Q18OnwKl\\/QnL6vnCUllXj8QbGsinJGlojYclSSEmpaJVHBH4DcdPGNEocpOmkomDNecsuqm+HVPbBiFmMm5bKip9d7ICkxofOiAYF4o9fPqj+8R0F1i\\/gbi24QC2KkDA20dEnqzqkGSE8S8TU1X2IXc8YPH3OQ4BFLdG85vHdMkvPGZbEqMSF+C7DxokVWIETGmSaW7j9NcqcXVi2AaSPMI1fIBvEGJW1n10nYXQbvHYeqZoaVWFMK7pwtfJcvCJtLoKmT2cDNl6RDgiFu3XSUSQ0d4vTMmyCyccRRF4DSotQtG2xbEhRGAsuZ4JG8szEZsPkoVLWggGKt9cSLBsQ0WbX1CFn17XI6JmSPUDtTg1aR9be1JMC5RsjmWbVQHMZjlVBaBcAs4MaL0iFa69yNJSyrbiHeH4R75kpq5QjEgpANRdmwbLpsGl9AMuYXThwZ1mBhlqQ\\/bT8Gm45A8VQKpo1hodb6VaVUaFBAtNYeoHjTB2S398CscSIHR+JQDiijU2HlXJg\\/UXKGE9ySIjoShqFg0WRYnwNbS+GBKsxpY5gJFALlFyKykizNXduPozp7JfiSmjBCpZUGyxJgTEPYg\\/SkkQNGWLnPmwjjR8OZBjhRB8AN\\/fkk0URWckM7Syqa8ARDcMtUSBpBgHT0Sv6tLyjFOHXtYvpuLZV\\/52dCVoqUr7nNkTHnnFQRoy6XAFLbRtGYdCZfECBVLRS8d5wCy0blZYp8dhnD\\/1CBkDh\\/r++FgxVSBdXaJcU+loafvS2xiASPlDl8YgncOF5OjMscfrE1p1BAOVIJZXWYY9KZqrVOVEr1RgVEax1fWsPsHcdwhULCWaUlDT8Ytg07T8Dzm8XPaOuGTq9QJQluEQvdXlHwSkm9x9FquGUKPLpUlOpwK7s548V9OHBaNtOy6UxwxNaBgU5IgraZvacMTyAkpWUpw5yp7g+KdfKD12HfaaH\\/3aboi3Cxp2VL1C45XgDxBuBQBZxulBP01Xth5rjhNT6mjxMx2tkJVS0QtJjgNgcHJK4nwIz6DtxBG6aOkdq74Rzl9fDDDfDeCQEgzh0BKiMZFk+V70er4VS9U6duCA3eG4A3D0rG4fSCK18QdI6l5BGOzXRDdQs0dTJ+TPq54d2\\/AORMM57KZvItCzUqXsKRwzF6\\/ZLr5PXDa\\/tg29Fzi3u0lt22cp7wa4WjYf8peH6LlEDjNBGIc0lJwcYSiXKOGw3JcVIOPRycXGEmjE4TQJo78YxJp3BAQDp7GVdeT6JtS4BlONjSkC1O1G+3SXVsZfN5wTANNgLGtx4W3qq+HT65FHwh+NlbUg4dtrDi3HCiFlb\\/WH5ePBX+8REhIK+04zhutCTYNbaLHgRytNYJSilvv36IoZh0phGPpWFi7vCUnO0\\/BT9cL6LmUAU0dZ67cDbiezy6VMqo95TB8VqJgTxcDDML5WSp8\\/wV24Yev7Cubx4Us\\/lKj\\/wMKfNu6BBTHUgDCqI7horxlc24LVviHsOhP1q7JQuw2yd6wrbPXVgFZI4SeQyi0N\\/YD28fgvwsqXcPWpyDiFLS\\/8RQIg4bOs697pUaBVmQmyq+U7OckBQgPzogmrFVrbhsB5CEYQzweFyRLg19Fzb8+6DDAq2YJdRJXZs4jAOxvMrpgzJcuj0\\/A7LTwPZCi4SokoGcqDpEKfLae3DbWhzCWImskOVQ4gMM05AvGHjBNBKu\\/eAMTMqVmMPYTDkpJ2ulhYbHNTgwKJmTZQ3O1Mcq7GAaYoxgitHS6SU5JYGsqICYBlkKTI0c\\/aGOoCW+wOkG8bRVFCM9GBKdNbtw8N0b7v7wiz9HuvuMyxL98MwGCVQleAZfZEOJMfBBhcxtIJO4MAfGZUJqDHyy5DjwJEB7L7R2k5CSQHpUQGxNpuGIsuQY8FcVTfA3z4mZF82iUUBXL3zqVlnc8O4dbDEPVMC\\/\\/lECQPEeOFwp3Rg6egenSgwlu7WkEr77MnT0RI+faC1APHmnlHUPdcR5xGr0SaupBCA1KiCWTQqG0BHGEPmr3gDsPiFmaa8\\/it3v+Avd3aJoLfviTt+ecum2YBgiAvxBUd4X6j13+cTxbO2JIpac+fX4ZLM8smjo4svjsAy+IASCuBw90j8gIYsEpSIUxJDEVUgWOUz4uU0hAW0n3GqqiNL2Ob9XUdakr5wP+xeGEgCrWqWBmdt17smwnFCuQu7Tn0gyDWfHBmShbR2xvoy+8\\/OL1dfjA88Q02c9LvGHnBOikP6RUQCx8SikuD\\/Wloh2HjLeI2D4g7JoAypwZ4cmxcvf2VoeJHx6XaY4r8phgy0d+TuPS0Cybdkc9gXE2MMxFdPoMz8VEaOxCNN73JET4hdfyBNdZFmYRp8FGDKp5piY4azCafliEbnd0kzsZK1QGwON0Skwv0jA9AZg7ylhdkFaORVmyeLXtsHxGmGBRyWIJz4mHQKWZKCU1kS3vLTDKM8qFNPU4xL9V14vohdit0HjwickeNY5NaICEnSOa6Jn6CJLnUeHmDb822OyuLYWxvNvnxeHrl\\/KXcvGePAm+IeHZfd39MB3XpI2SrYN\\/\\/CQUCFuUyjtr\\/0S3vkAbp0Bf\\/+QyH3TgLcPwpPPyumKdhK9QZlf8WTZuQfPwHdfgi1HYisp3C45JQHRIQzIZRnS99a0dIyzaJzrZadG2NrcNJHfA4kSU0l+rGlAnCliKSXBSf1BWN7k+D7Xc0RUvEfuFebA0pMH7sOlnbShzKQI\\/5WTKsaNHeN0IttJVfK4wTDPskH9e+qmSUBz+ZKX+1pRls2gqIdFSV+Hse8C9Z1jyD5rFJ3N0TqHclGD38vS5xkFxF6XBi05GR73WYstEPWEuAy8WpPc64\\/tJMKKcdcJ0QMKYXGbu0QxB0PRJ19WLySjRnyMiqYIEPtPi4L3uIT\\/au8WkdDYKemlHb1yr4MV0e9xlusyJO0z5Fh0H1RK5NGIcfg6EJI2tx4TPCYa6b4dlTrptDWjewOxnUSY2PveqyJK3C5hcRvaRV91hP5yuxqOJfbnD8TXQMnDnKyNnJIfv+Fcz6Ei6tpEhJVWw\\/dekdYeoZDcK2hFPyWGEsfwe69JDMhtihff0CFge\\/0xPiEhEYsukxDSBj0KdaJosW0m9IYwYik7w+tQ1SJck+GIB5chYOkoH1AKOryyc\\/v+Kuz8VbdI4gNOm1jTEF0RCEJZA5Q3RvSXyxxYRBpKgD\\/TKD\\/bWu5jxvqEOOZunIgsL9AxEJfVbGssrx8jcBniBYGQ7BCtZYGSPAMIdGfxLdthcZ1FS4qPNIsMhORLOw5jYpxoRhuxqIJOzpbHib\\/rQcSqPyjXCzugiZch26bbC529Yponx+MF2gZyDOuAoK1x17RKF+hYKXPTkK5yMwvkZFQ0wQs7JJqn+jkh4R1\\/63TpXKq1eMu\\/2gJHquXfX7wH5o6X3VbmtOQ7XifNkR+4WXJqLVuCWM9vjm6oaMfh\\/Pr9DsGphOd6dQ+caowtIJ0+8HnF8stOpRtojgpIIET1qARCPT5ZsBkFETN1SKaeE3b9WLEsoAbqWiVUe7gy+iFxmZLCs2qB7Ni2Hon4Ha2Wv7l\\/oaT6gDiaW47CoTMSCHp4kdDzYXP7N9vEEosGSMiGj94EcydEnNi9p85mGsZstHYDlgTZ0pPoBhqimr2BEBW5qQQNQ7zbmIU5HTs\\/3hURRY5SG9C8dhmOvW5EeKUkh2fTSkAywkEnQ\\/5eO7SJoSIBKdMYWGRpFZnT2XuLFRRTh6yuTQwMPGdLyjuBmqiAtHVTlptOwFRilvpjbG31NRQsPbiv47wT5OyiaH1u6NXu8\\/\\/ajqyd1pHrh30ZPYBPofrxk2wd+xKThg45IWnJZ\\/Ol24GqqCKrvp3KcVn0GoYkDvTEyNxThjz1+ycjCvNYrQT63WZEkZ6\\/SIGQ+BenGmVRO3qFXwp71gdOCxEa7xa90totp6OhAw6elmuEbBGL\\/kFOu2GIvxOOku4tk77wsbSyKpvEnM5JFR0CNIQzTvoFZPkMAkpRYxgUldagumMEiOmIjl9vE67JVBKDqGwWMREI9R+HsCxZmH96Uf7bH5KIYHgj\\/+E92HoU3IYkDdS2yoJWNsHadyXp2raFeAwzt9EsLLchiv+NA040sUPM9FjmBZfVyzPPKIDMZALAmQG5rBvy8Fc2cwQoburA09Au9SGx8tR3HHMW3zF7k+PFSezPDwnXflQ0RRS\\/UmIuhoNEu04ISGi5TlK8o\\/x7pbVF2DuPc8vnoolIhTiGW51OFWjRXYnxsc2gP90oOVn3zofcdCqAsgEBAbwKPkhNJNDjw3OsVqyYmCTMaempleg03O\\/1i0gM9RcT0ZFvyQkSMw\\/rnbYuRz84hGJSnIgbb0DM4pAlgGVmyWmxbaHQB6P5bRvy0+UzhiFz6\\/FH3t4zZP\\/D50RFQxKCyEnjNHB8QECUUr7f79AfzCgg1NQpmR1d3qEDYtugDbhzjpiTbhdUNMDbH8gRJoofYsip5cGbBZ1uP\\/zpfYdKQeLpMx3T\\/FSj9GqvbIbx6ZIeNClXAPrA8SkYwA8JWXD3XImjmAqO1sDmI2IZxcLILK0RQEYlCvBxrgsAxDE1q+ZNoGp7Kanvl6E6vUN3EC0NLg2fuU0WUDkZHyfr4WRd9IeI90i849GlIuLauoUqqWoRK+gTi6WnfJhGOVotQapJueJMTnb8kG2lEneJZqRoh2N6bKmUDWgtgFQ1R9kwFwuIFoKzugWK8iAvHQs41rc2pF+zF+DBYrpvn8V2SxOoaRZFNORWFY6IyRwl5Q2jEkThxg0SbzAcnZGaJJkfqc5nww+Znhz5\\/4xRkbh4nEcKdVKc36UlDhIPCV9vlOih5ATxE+LcsQlDWDYcOAVVTaKTi3I5BZzsJx7V7+iZVcjbY9PRpilZI0M2f52I0jl2vj14TN2yz9UxhiEUh+7Dc4UXNGRFFi9knWuuKiOKrgr\\/XkdA6TvnkB2beMiZJuk0EQzC9LEwdQwnzhdXUUWWUiqgtd41fyKNrT2M21QCT94xtCSxcGx90xEh11ymUBKNnaJP+vMRlCNGjlVLONW2obMHyuoGDji5TKH1Nx8RXipkwc7jTr7vABvGNGDbMcfKUsIwN7Y7zPIQGAtby7WqWiA3CwpHYwEl55u8UQFxQKl\\/Zbfeuv0YD+0vJ76mJWLpXIwi60uBGAq++ZvIrg5nICbG9UPROAtu2bB+P7yyOwKS23Vu2un5sjrOJfGQL62JiEPTCWINFA\\/xuOHvno98Jjw\\/jwuG8sZJ25aM\\/opGaSJQlEMVsOf8GvWBRBYAS6fzmsek2eWC1\\/aIEr6YEeaS\\/iIQ5HBOZyNx+tyo3fmZi0rJrg\\/HTox+kq\\/DZdF972cafe6l\\/tIrD7+A8rzww9nPmEZkGtq516VED083QkkV9HqluGjWOA4DB\\/tds4EudLKWzfMnUpY5Cv64W2jyC7UobB1JNOt7Wlym7Dq3K0IM9o0QGkak5KCvl+82I5\\/pu+hhbivcTkM5uVOGce69zve2w0l2fRf9\\/Pm5zruXIhK4upjg3Yb9QkNNyIOZBeikOHYppcr7FbeD7PDWe+axbfdJFhytIXlPuVTlDkbHN3XAH3YK77TvVKTmbyDRluARs\\/DfX5Gj3e0bPCnB0vDCdvH+DUN4rKpmh9UdwCO3bOHUfrheNlkgNMj8tJjfx2vhB+vEeptfJOb4hYjtLUehphk+dxdMyuMD4P2o7PZAF1s4yWe7XJ7XCrKMh2rbmbZhvzhbN44feBKltfDN34qijveIDDaNgWnshDhJWNh5wkn5cQ\\/+Ga2lfV7YUlPKqcwdoBQhrJd2nhCl73LybAcL7yZ44FiNkJkAn7vjwgDZdFj8rHBXoPwMXtOWb88lAaJUgv5zaeDoR+Ya20\\/UMXFvOZ6dx4UYG4jf6fYJVWE45KD\\/Ao93WAzY9l8mkA0Eijo3nsOFvKIrnPNr24OzwOfcS4G3V+pTBhu9fvjtdnEGb5kKk3KpNQ02KpXQeUmAAKyY6vYvv4GXfrmJe5o6GLtunzR3nD42+mdGp0gCW8gaGR0gYh3P8ZiDv6gm5JzCXSeFY1s5Dz05lw39+R4XBYhSytJab1x9G9vWvMuDm48Qt7dM+KhoMn7aWHjui8LbXGuvSrC1MNRzBhHb\\/qBQ+dXNcOtMuHE81fEe\\/gg0DgmQMCiWrde+eYh5lU1MeeE9cbhunND\\/34+KFxIxnClyLb0uIeznDFZ7uX6fGA7eAHz6Vux5RWwE9qpB3k91waUnhtq\\/cU7hvK01LUzZXgpvHHR0SZQruM2R0SNlOEZzJ\\/x6q\\/htS6dB8WTaEjy8ppRqGnSdL5z6mK+\\/cT\\/PTchml1JCZUfLWv8wD29AFPmeMsnIfPoeGJ3KT4HtF\\/L5i4qFdRR9u+aOWYyqaGLhoQoSXC6hvpPjrwMRHiWV8PVfSUHnqoXw2DL2ZI3iH5VSlRckiS7mZj\\/9K2U\\/vpw\\/TMxhV06q1Fy8vrf\\/BIUP46hthR+\\/KSbxmAx4eBHtuWk8Y+tzw7QxA8RR8DWrFrB2fDZlrT3wy81Cz18f8OJOSZAI2bD6VvTcCWwwDTaYxoW\\/vPiSvISPL\\/a\\/fssUnpuYTfveU\\/Ds2+jS6g8vEBp5C8KajZKzu2IW3H8Te3LT+KlSquVirnVJBb5KxQdKa\\/RvWrspbOnmM++W4MpOg3\\/6eGwK6686vXEG\\/nMdnG6SJmlP3kHd+Gx+DPbei73WJfvRU8dw5qm7ePamyezwBaW7zgvbh\\/+tBFd61LRKj64dxyQD5pFb6F46jTXxLv6klHnRr\\/S+5BJ4pZQG9r19SH8\\/GCJr42Fm\\/OQtiVf81YoPBxi9Afh\\/74jP4XHBAzfhv38BL6Ymhr6vlLv7Uq455JYqd85ufqu0JiszEOJbO45T9LO30T4\\/6umV1zYYXV545g345Ra0P4j6+GLsjy9m\\/cRc6\\/vg67jU6w4ZEKVGB7TWfwxaZDZ28rfHasj9+UbJKLl3wbXpo3R6pa7luU3Q0YtatRAeKmbH\\/CJ+BGapUqP0sAHiiK9OrfWzBmT+7G2eOtNMxrdfEg7rnrnXlqJv74EXd8GP1ksC3T3z4HN3sG\\/xVP5dKbVlqNePWRtIpVS31oHvd\\/S6+dVWnmruJONbL0h2+6PLJC\\/qah6WLdzU2o3w7J8lFWn5DOwvr2TP4ql8Wyn1ZizuE9O+nEp5WvaU6f8KWnS+dZAvn2og+8dvYDR3iaLPSbs64yOBkHSj\\/vlGSfbwh+D2mXi\\/uor9swr4LgQ2x+peMW+UunCSqtFa\\/6Khg5b0JL6y4zjTw8znY0svLOw5oiwpv6QgvbRT+gYHLXikmMCDi1i3aDI\\/AHYrFRczY\\/+yRSq09rn\\/7RXPR987pp7aW84KbxCWTJFk5o\\/dHGlgOZLHvlOwbh+8ulsSMKYXwKoFdN59I2uWTbfWKuUqifU9L1srYaXig1r7X9l81NP697+lrb2XJduOkVvqJDDfMRvmFo3MV7eW10vCxSu7IyGGZdOxlk3j8P038cr8Iv5bKVflZVm3y87zaO3+5m\\/J8od4+tXdPNrjJ88XwDMlH1bfKrzPmIzYdB8aqtLu8kp660s7pTKrvUdKB6bk0fvE7bx\\/1xx+2uHltYk5dgCMsHN8dQESHifrdGJ5A0v+cx1fO1TB7f4QLtOAaWPgY4ukrCA7dfgAOVIlHvefdkuVrGVJxv1DxdR\\/dgVr8tJZm55ExWAh2KsGEEevxN\\/zz3G50wu452Qdj+06wU1BC1d2qvRiv2UqPLBARJm+ApPzBeCdQ\\/D6PikYrW2Bhk4YmwH3zqNl1gReHZfB7xZNtQ8kegKtSiVc9pSNYRESWuuUb\\/2e4t0nud0bYMmZRuY0dJA8JhO9cCJq9jhp4jwhW75npZw3UXXhD3B++6bKZqlZPN0gWYsHK2BfOXT50DPGwQ151OSlsWvZNN59sJjtQMnlEE0jCpA+wCSt38\\/tP1jHfXVtzA0EyavvIDcYwpzk9PCdM17aY2QkS4ZhYpxkfHhc4tOEc3DPz9HVWjLqO3uF6ujwSsJaSaWU6R06IyciOw3GZtCdnEDtlDHUPn4rby2ZwjqlVMlwrMmISdBp7dGzf\\/g6KzccYHlNK5NNk1H+ICm9fuIVkk+bkyYUd166ZLQkxZ1t4EK8R2IJ4YZjIUvET1mtlM2V1UtbjqQ4SVMyTTpNg87xo2l\\/aBF7Pia1g6IAAAEWSURBVLWMdzwu1iulOodzHUYMIFpr8+fvhJLXHXCl3JDHpECQ4j3lzC+tYTqQ5jbxuAw8ponbULgMhUs5ddPh8gWDyM9O5znb1lihEEF\\/iIDLJDghG++N46mdOY4DqUnsOVzB7rvm6ablU3W3UmbvcK\\/DiExh01qrQxVk\\/\\/PLZO44TvrUfMbkpTMpZFHU5SW\\/vYecXj9Z3iCpvX4Seny4QzbKI3XqdoIHf4KH7oxk2vIzaMpJpTY5nqq2HsqbOylfPIWW1StojXfRPNwn4qoAJApIqW8cIOVQBUkn60hs7iKhoxdPey\\/ujm5cARuVIIWeVmoiofQkAoXZ+OdPwLt0Gj1jM+kGOpRSPq6P6+P6uD6uj1iM\\/w+vN0Nu47P0jAAAAABJRU5ErkJggg==\"}', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(2, 'Employee Idcard', '3', 2, '{\"format_id\":\"2\",\"bg_color\":null,\"border_color\":null,\"body_text_color\":null,\"fs_title_color\":null,\"picture_border_color\":null,\"bs_title_color\":null,\"website_link_color\":null,\"fs_title_bg_color\":null,\"id_title_color\":null,\"title_bg_image\":null,\"signature\":\"iVBORw0KGgoAAAANSUhEUgAAAHcAAAAhBAMAAAARwClTAAAAMFBMVEUAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABaPxwLAAAAAXRSTlMAQObYZgAAAV5JREFUOMulVFFugzAMNZ1WqRLCaBdYb7DegCtwg\\/ZIvUGvshvsCrvBDKh\\/lTzHToGyJVBiIQix34vzHAdgbNkR1ljVuTfWzyORuQQkgCIU8UohD5unidEHsXPkYkRRbP99Box+Oq5zAMwzmzLvm7xyVhvTdPFC5Bp7ZO5iWw5XkbnGIuRdchAowv3o2\\/0j2N9k71MXwfeuYjSGzHi\\/xtgX9d9GfB8uCo3RRmw\\/PKhKfjnmaTI7tngEA2uDDRy2cdv7XqYRp6KQxrkINi95QvIHRQcbx\\/nzKBMedElyOQiSJGIj4e8OVupeCSpPb5w05G75dgS1IeVpJBncQ6ViUEZQSkTpXHlnCvFQDYJv4DPgFbZC37BKw3xXsb0CnlvTBw94cqi2L54vkiw2te1n4BLQMtOC5l10KUECmBLAONtpEZO2qBKynrsg4mBKyHo9GFPB6ytFKfiUMyLdtDj0F4hoo+2pfCyPAAAAAElFTkSuQmCC\",\"logo\":\"iVBORw0KGgoAAAANSUhEUgAAAGQAAAB0CAYAAABzNJfPAAAgAElEQVR42u2dd3RV153vP\\/uce68q6qgghECA6WCaLUyzje3YPBvHju0kz45DnHH8kjiTZDKTvJc3mZWZZNrKymQSZ5L4JTB2qhPbiQvgFkw3mI4RiCKBUO9duvWc\\/f74ncsVRFcCdEECs9fSkkC65+yzv3v\\/yvdXDlwf18f1cX1cNUNdLRPVWqcCKUASkAgkAB7ADbj6PIsFhIAA4Ae8QA\\/QDXQopXwj+TldI3TxFZANZALpwJjWbib1+Cny+skPhMgJWmTZmlStSbBs3LZGaUDb2JbGb9t0mwZtHhdNLpPaxDiqCkdTrrUuB1qAVqBZKdV5\\/YT0D4IJoWRwpQQsJjV3UmzbzLc00zt7SSurx1PXhqeuDXd9O67mLlzdPujxQZcXQkHQWp5IA6YJGcnYeelYOWkEx2USmDeR4KRcvHFuauPdHEhLZI9S7AbdBLpbKbP3OiARQGYDK4HlpTVM3lTCqBO1pJxpJr6xA3r94AuANwC+IPhDEApByIaQBdp2HkjJUxkK4tyQ4JHviXGQHA+jU2BGAcwvovOmyXROzKEd2AO8A6wf7hOjhhmEJOB24L6aFub++TB5B06TW1aPWdUM9e3Q2AlomJAN+ZmQlw5j0iEnDVISZZFTEsBtCmBdXuj2Q1u3fL62FeraoaIRGltESOekwdhM+SrIhBvy6L75BmpvmkQt8BawTilV8qEBRGudAhQ3dXL7gdMsqWxmzvFakncdRx+qQAVCMDEPJuZAfgYUZMniZSZDejJkjIL0RNn18W4wDDkZWstp8Qah2wttPdDSLeA0tEN1qwBU0QRl9VDTBKYLpufD\\/InoW6bA9AJq5k5gV7ybd4HtWlNiGEpfk4Bo7YuHuNz6du6paeWx0hpu2nQY1xsHob1Hdn52CkzIgQUTYd4EmDYWslNFL1zqhPuu5qkGOHwG9p2C\\/aehsQOaOqChAxI9cP9CeGQxTMunZWwWr5qK36HtA9iBVuVK0NcMIFrrxECIJSGbr715gNt\\/tB7XwTMi690umD1OFuMjN8LkvCszp5AF75+ENw\\/Bur0Cji8AyoD7FsJXV8KMAuoNxRqlWKuhwlDKvqoB0Vq7gawuH08fPM2j\\/\\/UmeYfO4GnuFAW9oAg+tRxumwXZoyAhHswreG4DITEYmjthWym8\\/L6AZBqis+6bD6tvozc\\/nffdLn4KvNbrtwOJcQZKxV6UmZcXDL\\/bss1lrV186\\/nN3P+H9xi77ShmbZuciM9\\/BB5dBrfNFGXtccuJuZLDNCDeI3ppQrZYYIXZUF4PR6rgTBNUteBOSWRcQSZTDIMst0udUkp1XFUnRGufGzwf3XVSPbW9lBW\\/2QYHT8G8Ilg+E5ZPh7vmiFk60kaPDzYcgDcOwFsHoa4N7roRHl8Od8ymMzuFNbZtrTVNV8lVAYjWOito8cDGw3xl\\/T6mr31XrKDiG+CxpfDRmyEtceTTNSfr4fc7BJi95ZCbBk\\/fDR9bRKAom1eBH4QsdrtdyhqxgGit8zu8fGr3Sb78ow1kby\\/FSIyHhUXwtVVyQpLirg7+zNbi12w5Cms2wq6Tot8eXQb\\/6068RbnsV\\/Ddrp7A5pTkuJHHkWkdyPQF9L9sKtEtt\\/xfrdM\\/rXXGaq2\\/tEbro1VaBy19VQ5fQOsTtVp\\/5b+1Tv2U1qM\\/o\\/Xjz2hdVq8trfUurfXdI5EQTNZa\\/8vLu3TLwm9onfSo1oWf1\\/qZN7SubtHXxKhu0fofXtA6c7XWaZ\\/W+uP\\/ofWxGq211nttW\\/+PEcP2aq1TLJsn1+3nM8++Q8ahCphVCF+8G1bNh8wUromRnwGfu1MYgec2w4b9kJEMX7ib+TML+IatdbcF29xD8FWMoYPR5LFsHtxWyhd+vYXcTSXoWYXw1J3wySXXDhh9QfnsCnm2tGR4YTt67btQ2cxiBX9NyJrW2tGlhlNU3bfzhC759DNaux7RetZXtf7hOn3Nj5Yurb\\/+K62znxAR9tdrtW7p0j6t9dpgMJg2HEAorfX8Uw168988p3XcJ7We\\/mWt12zU2rb1h2LUtWn9f36jddrjWo\\/9nNbfeVHrxg7dpbX+jm3r5CstsgqbO3nqxZ0sfnGnyNLHb4UHb3ZiEh+CkZsGq2+F\\/7kEmrvgd9vhT7tJDoT4rFI80OOz4q8IIFr7PJbNo1tLefhXW3F1edEPFQsgaUnnsqvX+rhhDDx5J9x9I5Q3wC82wvsnydOapxPjjAVX6ITE3bfzOKt\\/uYW0sjq4dz7qCx+BvLRh4PRHwJhTCF+9F2YXQmk1\\/MfrUNfOQuDzWuvMywqI1jq\\/opEnXtzJpLcOwsJJ8MTtMDWfD+1QCm6eDE\\/cJhLi3RJ4eReq28dKYKXkC1wGQLTWBvDIc1sofm2v8FGfXAKLpvChH3FuWDkfbpsBLhN+8iYcqiAN+BIw6bIA4g9SvGE\\/j2wrJaO6Be5bAI\\/cImHU6wPGZcHf3Q9ZoySe\\/5O3oKOXhcBjltajYwqIL7BPhWxW7zhO8Z4yuGkyPHyLxLmvj8iYMgb+9wMSBX23BN49DEGLzxuwJKaAxLnnrdh6lGU7SiEQhJXzYOm06wCcPzwueGQRLJ4C3T5hiatbSAdW6Qs4JRcEiNbatGyeeGU34\\/edhkU3wIqZ10VVtJEUD5+5XbJm3joEW45iBC1WAAscPXzpgDgWworX97L0aDVxgRCsvk2sipEyfEH50iPIAbprDiyfAalJsOZdOFTBWOBBJEV2KCckGAc89PL7ZB+pgjtmQ\\/HkkeWN7zgGm0okayRoSeJCyBp+0fWJWyAnFfaXw75TqJDNSmBAm9Q18OnwKl\\/QnL6vnCUllXj8QbGsinJGlojYclSSEmpaJVHBH4DcdPGNEocpOmkomDNecsuqm+HVPbBiFmMm5bKip9d7ICkxofOiAYF4o9fPqj+8R0F1i\\/gbi24QC2KkDA20dEnqzqkGSE8S8TU1X2IXc8YPH3OQ4BFLdG85vHdMkvPGZbEqMSF+C7DxokVWIETGmSaW7j9NcqcXVi2AaSPMI1fIBvEGJW1n10nYXQbvHYeqZoaVWFMK7pwtfJcvCJtLoKmT2cDNl6RDgiFu3XSUSQ0d4vTMmyCyccRRF4DSotQtG2xbEhRGAsuZ4JG8szEZsPkoVLWggGKt9cSLBsQ0WbX1CFn17XI6JmSPUDtTg1aR9be1JMC5RsjmWbVQHMZjlVBaBcAs4MaL0iFa69yNJSyrbiHeH4R75kpq5QjEgpANRdmwbLpsGl9AMuYXThwZ1mBhlqQ\\/bT8Gm45A8VQKpo1hodb6VaVUaFBAtNYeoHjTB2S398CscSIHR+JQDiijU2HlXJg\\/UXKGE9ySIjoShqFg0WRYnwNbS+GBKsxpY5gJFALlFyKykizNXduPozp7JfiSmjBCpZUGyxJgTEPYg\\/SkkQNGWLnPmwjjR8OZBjhRB8AN\\/fkk0URWckM7Syqa8ARDcMtUSBpBgHT0Sv6tLyjFOHXtYvpuLZV\\/52dCVoqUr7nNkTHnnFQRoy6XAFLbRtGYdCZfECBVLRS8d5wCy0blZYp8dhnD\\/1CBkDh\\/r++FgxVSBdXaJcU+loafvS2xiASPlDl8YgncOF5OjMscfrE1p1BAOVIJZXWYY9KZqrVOVEr1RgVEax1fWsPsHcdwhULCWaUlDT8Ytg07T8Dzm8XPaOuGTq9QJQluEQvdXlHwSkm9x9FquGUKPLpUlOpwK7s548V9OHBaNtOy6UxwxNaBgU5IgraZvacMTyAkpWUpw5yp7g+KdfKD12HfaaH\\/3aboi3Cxp2VL1C45XgDxBuBQBZxulBP01Xth5rjhNT6mjxMx2tkJVS0QtJjgNgcHJK4nwIz6DtxBG6aOkdq74Rzl9fDDDfDeCQEgzh0BKiMZFk+V70er4VS9U6duCA3eG4A3D0rG4fSCK18QdI6l5BGOzXRDdQs0dTJ+TPq54d2\\/AORMM57KZvItCzUqXsKRwzF6\\/ZLr5PXDa\\/tg29Fzi3u0lt22cp7wa4WjYf8peH6LlEDjNBGIc0lJwcYSiXKOGw3JcVIOPRycXGEmjE4TQJo78YxJp3BAQDp7GVdeT6JtS4BlONjSkC1O1G+3SXVsZfN5wTANNgLGtx4W3qq+HT65FHwh+NlbUg4dtrDi3HCiFlb\\/WH5ePBX+8REhIK+04zhutCTYNbaLHgRytNYJSilvv36IoZh0phGPpWFi7vCUnO0\\/BT9cL6LmUAU0dZ67cDbiezy6VMqo95TB8VqJgTxcDDML5WSp8\\/wV24Yev7Cubx4Us\\/lKj\\/wMKfNu6BBTHUgDCqI7horxlc24LVviHsOhP1q7JQuw2yd6wrbPXVgFZI4SeQyi0N\\/YD28fgvwsqXcPWpyDiFLS\\/8RQIg4bOs697pUaBVmQmyq+U7OckBQgPzogmrFVrbhsB5CEYQzweFyRLg19Fzb8+6DDAq2YJdRJXZs4jAOxvMrpgzJcuj0\\/A7LTwPZCi4SokoGcqDpEKfLae3DbWhzCWImskOVQ4gMM05AvGHjBNBKu\\/eAMTMqVmMPYTDkpJ2ulhYbHNTgwKJmTZQ3O1Mcq7GAaYoxgitHS6SU5JYGsqICYBlkKTI0c\\/aGOoCW+wOkG8bRVFCM9GBKdNbtw8N0b7v7wiz9HuvuMyxL98MwGCVQleAZfZEOJMfBBhcxtIJO4MAfGZUJqDHyy5DjwJEB7L7R2k5CSQHpUQGxNpuGIsuQY8FcVTfA3z4mZF82iUUBXL3zqVlnc8O4dbDEPVMC\\/\\/lECQPEeOFwp3Rg6egenSgwlu7WkEr77MnT0RI+faC1APHmnlHUPdcR5xGr0SaupBCA1KiCWTQqG0BHGEPmr3gDsPiFmaa8\\/it3v+Avd3aJoLfviTt+ecum2YBgiAvxBUd4X6j13+cTxbO2JIpac+fX4ZLM8smjo4svjsAy+IASCuBw90j8gIYsEpSIUxJDEVUgWOUz4uU0hAW0n3GqqiNL2Ob9XUdakr5wP+xeGEgCrWqWBmdt17smwnFCuQu7Tn0gyDWfHBmShbR2xvoy+8\\/OL1dfjA88Q02c9LvGHnBOikP6RUQCx8SikuD\\/Wloh2HjLeI2D4g7JoAypwZ4cmxcvf2VoeJHx6XaY4r8phgy0d+TuPS0Cybdkc9gXE2MMxFdPoMz8VEaOxCNN73JET4hdfyBNdZFmYRp8FGDKp5piY4azCafliEbnd0kzsZK1QGwON0Skwv0jA9AZg7ylhdkFaORVmyeLXtsHxGmGBRyWIJz4mHQKWZKCU1kS3vLTDKM8qFNPU4xL9V14vohdit0HjwickeNY5NaICEnSOa6Jn6CJLnUeHmDb822OyuLYWxvNvnxeHrl\\/KXcvGePAm+IeHZfd39MB3XpI2SrYN\\/\\/CQUCFuUyjtr\\/0S3vkAbp0Bf\\/+QyH3TgLcPwpPPyumKdhK9QZlf8WTZuQfPwHdfgi1HYisp3C45JQHRIQzIZRnS99a0dIyzaJzrZadG2NrcNJHfA4kSU0l+rGlAnCliKSXBSf1BWN7k+D7Xc0RUvEfuFebA0pMH7sOlnbShzKQI\\/5WTKsaNHeN0IttJVfK4wTDPskH9e+qmSUBz+ZKX+1pRls2gqIdFSV+Hse8C9Z1jyD5rFJ3N0TqHclGD38vS5xkFxF6XBi05GR73WYstEPWEuAy8WpPc64\\/tJMKKcdcJ0QMKYXGbu0QxB0PRJ19WLySjRnyMiqYIEPtPi4L3uIT\\/au8WkdDYKemlHb1yr4MV0e9xlusyJO0z5Fh0H1RK5NGIcfg6EJI2tx4TPCYa6b4dlTrptDWjewOxnUSY2PveqyJK3C5hcRvaRV91hP5yuxqOJfbnD8TXQMnDnKyNnJIfv+Fcz6Ei6tpEhJVWw\\/dekdYeoZDcK2hFPyWGEsfwe69JDMhtihff0CFge\\/0xPiEhEYsukxDSBj0KdaJosW0m9IYwYik7w+tQ1SJck+GIB5chYOkoH1AKOryyc\\/v+Kuz8VbdI4gNOm1jTEF0RCEJZA5Q3RvSXyxxYRBpKgD\\/TKD\\/bWu5jxvqEOOZunIgsL9AxEJfVbGssrx8jcBniBYGQ7BCtZYGSPAMIdGfxLdthcZ1FS4qPNIsMhORLOw5jYpxoRhuxqIJOzpbHib\\/rQcSqPyjXCzugiZch26bbC529Yponx+MF2gZyDOuAoK1x17RKF+hYKXPTkK5yMwvkZFQ0wQs7JJqn+jkh4R1\\/63TpXKq1eMu\\/2gJHquXfX7wH5o6X3VbmtOQ7XifNkR+4WXJqLVuCWM9vjm6oaMfh\\/Pr9DsGphOd6dQ+caowtIJ0+8HnF8stOpRtojgpIIET1qARCPT5ZsBkFETN1SKaeE3b9WLEsoAbqWiVUe7gy+iFxmZLCs2qB7Ni2Hon4Ha2Wv7l\\/oaT6gDiaW47CoTMSCHp4kdDzYXP7N9vEEosGSMiGj94EcydEnNi9p85mGsZstHYDlgTZ0pPoBhqimr2BEBW5qQQNQ7zbmIU5HTs\\/3hURRY5SG9C8dhmOvW5EeKUkh2fTSkAywkEnQ\\/5eO7SJoSIBKdMYWGRpFZnT2XuLFRRTh6yuTQwMPGdLyjuBmqiAtHVTlptOwFRilvpjbG31NRQsPbiv47wT5OyiaH1u6NXu8\\/\\/ajqyd1pHrh30ZPYBPofrxk2wd+xKThg45IWnJZ\\/Ol24GqqCKrvp3KcVn0GoYkDvTEyNxThjz1+ycjCvNYrQT63WZEkZ6\\/SIGQ+BenGmVRO3qFXwp71gdOCxEa7xa90totp6OhAw6elmuEbBGL\\/kFOu2GIvxOOku4tk77wsbSyKpvEnM5JFR0CNIQzTvoFZPkMAkpRYxgUldagumMEiOmIjl9vE67JVBKDqGwWMREI9R+HsCxZmH96Uf7bH5KIYHgj\\/+E92HoU3IYkDdS2yoJWNsHadyXp2raFeAwzt9EsLLchiv+NA040sUPM9FjmBZfVyzPPKIDMZALAmQG5rBvy8Fc2cwQoburA09Au9SGx8tR3HHMW3zF7k+PFSezPDwnXflQ0RRS\\/UmIuhoNEu04ISGi5TlK8o\\/x7pbVF2DuPc8vnoolIhTiGW51OFWjRXYnxsc2gP90oOVn3zofcdCqAsgEBAbwKPkhNJNDjw3OsVqyYmCTMaempleg03O\\/1i0gM9RcT0ZFvyQkSMw\\/rnbYuRz84hGJSnIgbb0DM4pAlgGVmyWmxbaHQB6P5bRvy0+UzhiFz6\\/FH3t4zZP\\/D50RFQxKCyEnjNHB8QECUUr7f79AfzCgg1NQpmR1d3qEDYtugDbhzjpiTbhdUNMDbH8gRJoofYsip5cGbBZ1uP\\/zpfYdKQeLpMx3T\\/FSj9GqvbIbx6ZIeNClXAPrA8SkYwA8JWXD3XImjmAqO1sDmI2IZxcLILK0RQEYlCvBxrgsAxDE1q+ZNoGp7Kanvl6E6vUN3EC0NLg2fuU0WUDkZHyfr4WRd9IeI90i849GlIuLauoUqqWoRK+gTi6WnfJhGOVotQapJueJMTnb8kG2lEneJZqRoh2N6bKmUDWgtgFQ1R9kwFwuIFoKzugWK8iAvHQs41rc2pF+zF+DBYrpvn8V2SxOoaRZFNORWFY6IyRwl5Q2jEkThxg0SbzAcnZGaJJkfqc5nww+Znhz5\\/4xRkbh4nEcKdVKc36UlDhIPCV9vlOih5ATxE+LcsQlDWDYcOAVVTaKTi3I5BZzsJx7V7+iZVcjbY9PRpilZI0M2f52I0jl2vj14TN2yz9UxhiEUh+7Dc4UXNGRFFi9knWuuKiOKrgr\\/XkdA6TvnkB2beMiZJuk0EQzC9LEwdQwnzhdXUUWWUiqgtd41fyKNrT2M21QCT94xtCSxcGx90xEh11ymUBKNnaJP+vMRlCNGjlVLONW2obMHyuoGDji5TKH1Nx8RXipkwc7jTr7vABvGNGDbMcfKUsIwN7Y7zPIQGAtby7WqWiA3CwpHYwEl55u8UQFxQKl\\/Zbfeuv0YD+0vJ76mJWLpXIwi60uBGAq++ZvIrg5nICbG9UPROAtu2bB+P7yyOwKS23Vu2un5sjrOJfGQL62JiEPTCWINFA\\/xuOHvno98Jjw\\/jwuG8sZJ25aM\\/opGaSJQlEMVsOf8GvWBRBYAS6fzmsek2eWC1\\/aIEr6YEeaS\\/iIQ5HBOZyNx+tyo3fmZi0rJrg\\/HTox+kq\\/DZdF972cafe6l\\/tIrD7+A8rzww9nPmEZkGtq516VED083QkkV9HqluGjWOA4DB\\/tds4EudLKWzfMnUpY5Cv64W2jyC7UobB1JNOt7Wlym7Dq3K0IM9o0QGkak5KCvl+82I5\\/pu+hhbivcTkM5uVOGce69zve2w0l2fRf9\\/Pm5zruXIhK4upjg3Yb9QkNNyIOZBeikOHYppcr7FbeD7PDWe+axbfdJFhytIXlPuVTlDkbHN3XAH3YK77TvVKTmbyDRluARs\\/DfX5Gj3e0bPCnB0vDCdvH+DUN4rKpmh9UdwCO3bOHUfrheNlkgNMj8tJjfx2vhB+vEeptfJOb4hYjtLUehphk+dxdMyuMD4P2o7PZAF1s4yWe7XJ7XCrKMh2rbmbZhvzhbN44feBKltfDN34qijveIDDaNgWnshDhJWNh5wkn5cQ\\/+Ga2lfV7YUlPKqcwdoBQhrJd2nhCl73LybAcL7yZ44FiNkJkAn7vjwgDZdFj8rHBXoPwMXtOWb88lAaJUgv5zaeDoR+Ya20\\/UMXFvOZ6dx4UYG4jf6fYJVWE45KD\\/Ao93WAzY9l8mkA0Eijo3nsOFvKIrnPNr24OzwOfcS4G3V+pTBhu9fvjtdnEGb5kKk3KpNQ02KpXQeUmAAKyY6vYvv4GXfrmJe5o6GLtunzR3nD42+mdGp0gCW8gaGR0gYh3P8ZiDv6gm5JzCXSeFY1s5Dz05lw39+R4XBYhSytJab1x9G9vWvMuDm48Qt7dM+KhoMn7aWHjui8LbXGuvSrC1MNRzBhHb\\/qBQ+dXNcOtMuHE81fEe\\/gg0DgmQMCiWrde+eYh5lU1MeeE9cbhunND\\/34+KFxIxnClyLb0uIeznDFZ7uX6fGA7eAHz6Vux5RWwE9qpB3k91waUnhtq\\/cU7hvK01LUzZXgpvHHR0SZQruM2R0SNlOEZzJ\\/x6q\\/htS6dB8WTaEjy8ppRqGnSdL5z6mK+\\/cT\\/PTchml1JCZUfLWv8wD29AFPmeMsnIfPoeGJ3KT4HtF\\/L5i4qFdRR9u+aOWYyqaGLhoQoSXC6hvpPjrwMRHiWV8PVfSUHnqoXw2DL2ZI3iH5VSlRckiS7mZj\\/9K2U\\/vpw\\/TMxhV06q1Fy8vrf\\/BIUP46hthR+\\/KSbxmAx4eBHtuWk8Y+tzw7QxA8RR8DWrFrB2fDZlrT3wy81Cz18f8OJOSZAI2bD6VvTcCWwwDTaYxoW\\/vPiSvISPL\\/a\\/fssUnpuYTfveU\\/Ds2+jS6g8vEBp5C8KajZKzu2IW3H8Te3LT+KlSquVirnVJBb5KxQdKa\\/RvWrspbOnmM++W4MpOg3\\/6eGwK6686vXEG\\/nMdnG6SJmlP3kHd+Gx+DPbei73WJfvRU8dw5qm7ePamyezwBaW7zgvbh\\/+tBFd61LRKj64dxyQD5pFb6F46jTXxLv6klHnRr\\/S+5BJ4pZQG9r19SH8\\/GCJr42Fm\\/OQtiVf81YoPBxi9Afh\\/74jP4XHBAzfhv38BL6Ymhr6vlLv7Uq455JYqd85ufqu0JiszEOJbO45T9LO30T4\\/6umV1zYYXV545g345Ra0P4j6+GLsjy9m\\/cRc6\\/vg67jU6w4ZEKVGB7TWfwxaZDZ28rfHasj9+UbJKLl3wbXpo3R6pa7luU3Q0YtatRAeKmbH\\/CJ+BGapUqP0sAHiiK9OrfWzBmT+7G2eOtNMxrdfEg7rnrnXlqJv74EXd8GP1ksC3T3z4HN3sG\\/xVP5dKbVlqNePWRtIpVS31oHvd\\/S6+dVWnmruJONbL0h2+6PLJC\\/qah6WLdzU2o3w7J8lFWn5DOwvr2TP4ql8Wyn1ZizuE9O+nEp5WvaU6f8KWnS+dZAvn2og+8dvYDR3iaLPSbs64yOBkHSj\\/vlGSfbwh+D2mXi\\/uor9swr4LgQ2x+peMW+UunCSqtFa\\/6Khg5b0JL6y4zjTw8znY0svLOw5oiwpv6QgvbRT+gYHLXikmMCDi1i3aDI\\/AHYrFRczY\\/+yRSq09rn\\/7RXPR987pp7aW84KbxCWTJFk5o\\/dHGlgOZLHvlOwbh+8ulsSMKYXwKoFdN59I2uWTbfWKuUqifU9L1srYaXig1r7X9l81NP697+lrb2XJduOkVvqJDDfMRvmFo3MV7eW10vCxSu7IyGGZdOxlk3j8P038cr8Iv5bKVflZVm3y87zaO3+5m\\/J8od4+tXdPNrjJ88XwDMlH1bfKrzPmIzYdB8aqtLu8kp660s7pTKrvUdKB6bk0fvE7bx\\/1xx+2uHltYk5dgCMsHN8dQESHifrdGJ5A0v+cx1fO1TB7f4QLtOAaWPgY4ukrCA7dfgAOVIlHvefdkuVrGVJxv1DxdR\\/dgVr8tJZm55ExWAh2KsGEEevxN\\/zz3G50wu452Qdj+06wU1BC1d2qvRiv2UqPLBARJm+ApPzBeCdQ\\/D6PikYrW2Bhk4YmwH3zqNl1gReHZfB7xZNtQ8kegKtSiVc9pSNYRESWuuUb\\/2e4t0nud0bYMmZRuY0dJA8JhO9cCJq9jhp4jwhW75npZw3UXXhD3B++6bKZqlZPN0gWYsHK2BfOXT50DPGwQ151OSlsWvZNN59sJjtQMnlEE0jCpA+wCSt38\\/tP1jHfXVtzA0EyavvIDcYwpzk9PCdM17aY2QkS4ZhYpxkfHhc4tOEc3DPz9HVWjLqO3uF6ujwSsJaSaWU6R06IyciOw3GZtCdnEDtlDHUPn4rby2ZwjqlVMlwrMmISdBp7dGzf\\/g6KzccYHlNK5NNk1H+ICm9fuIVkk+bkyYUd166ZLQkxZ1t4EK8R2IJ4YZjIUvET1mtlM2V1UtbjqQ4SVMyTTpNg87xo2l\\/aBF7Pia1g6IAAAEWSURBVLWMdzwu1iulOodzHUYMIFpr8+fvhJLXHXCl3JDHpECQ4j3lzC+tYTqQ5jbxuAw8ponbULgMhUs5ddPh8gWDyM9O5znb1lihEEF\\/iIDLJDghG++N46mdOY4DqUnsOVzB7rvm6ablU3W3UmbvcK\\/DiExh01qrQxVk\\/\\/PLZO44TvrUfMbkpTMpZFHU5SW\\/vYecXj9Z3iCpvX4Seny4QzbKI3XqdoIHf4KH7oxk2vIzaMpJpTY5nqq2HsqbOylfPIWW1StojXfRPNwn4qoAJApIqW8cIOVQBUkn60hs7iKhoxdPey\\/ujm5cARuVIIWeVmoiofQkAoXZ+OdPwLt0Gj1jM+kGOpRSPq6P6+P6uD6uj1iM\\/w+vN0Nu47P0jAAAAABJRU5ErkJggg==\"}', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(3, 'Student Absent SMS Template', '1', 3, 'Dear Parents your child (Name-{{name}},Class-{{class}},Roll-{{roll_no}}) is absent from school on {{date}}. Head master, CloudSchool BD.', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(4, 'Student Absent Email Template', '2', 3, '<p></p><pre>Dear <b>{{name}}</b>,</pre><pre><b></b>You are absent from school on {{date}}. Bring your parents to school on next day.</pre><p></p>', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(5, 'Employee Absent SMS Template', '1', 2, 'Dear {{name}}, You are absent from school on {{date}}. Head master, CloudSchool BD.', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL),
(6, 'Employee Absent Email Template', '2', 2, '<p></p><pre>Dear <b>{{name}}</b>,</pre><pre><b></b>You are absent from school on {{date}}. Meet the authority of the school on next day.</pre><p></p>', '2020-01-02 06:37:23', NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(10) UNSIGNED NOT NULL,
  `writer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comments` text COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `writer`, `comments`, `avatar`, `order`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'Shadhin', 'Awesome Academy', NULL, 1, '2020-01-02 06:36:56', '2020-01-02 06:36:56', NULL, 0, 0, NULL),
(2, 'HRS', 'Great school', NULL, 2, '2020-01-02 06:36:56', '2020-01-02 06:36:56', NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_no` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `force_logout` tinyint(1) NOT NULL DEFAULT '0',
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `phone_no`, `password`, `remember_token`, `force_logout`, `status`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'Mr. admin', 'admin', 'admin@sms.com', NULL, '$2y$10$7DHrNU88JCczy5o2SlHr6.gEY373lk6dL1E9Cn5/NvBG28y2VgEFy', NULL, 0, '1', '2020-01-02 06:36:34', '2020-01-02 06:36:34', NULL, 0, 0, NULL),
(2, 'Mrs. Jodie Jast V', 'samson39', 'johnson.bell@example.org', NULL, '$2y$10$GfaAloTRQlKJ0Y4PV8khUe9SzdyJ7hhyOLuWgQ42TGeYRNPAbv9CS', 'kAU5hqcm7W', 0, '1', '2020-01-02 06:37:14', '2020-01-02 06:37:14', NULL, 1, 0, NULL),
(3, 'Tamara Torp', 'kunze.cole', 'marianne81@example.org', NULL, '$2y$10$0lsJCP9toi01OsSx06UtEOZ.i6YE4Y9xJkQSNpn9Yqg1cND4KVlwG', 'u5h84rOyx2', 0, '1', '2020-01-02 06:37:14', '2020-01-02 06:37:15', NULL, 1, 0, NULL),
(4, 'Colten Hickle III', 'stroman.vern', 'shea84@example.org', NULL, '$2y$10$2qRE7wW8CJLSiCuE/aQCg.mMPAgKA0Qvf/CkzPt5.ZQvg9Z9ZFhbC', 'zLnJHcs184', 0, '1', '2020-01-02 06:37:14', '2020-01-02 06:37:15', NULL, 1, 0, NULL),
(5, 'Consuelo Treutel', 'wisoky.icie', 'uhalvorson@example.com', NULL, '$2y$10$g2OxE1WSNgeglKbF4B0YJOhca53omi0uQTxDh2INUwG5UoDOl6IzW', 'lCS1r9jjWF', 0, '1', '2020-01-02 06:37:15', '2020-01-02 06:37:15', NULL, 1, 0, NULL),
(6, 'Vito Heaney', 'fisher.loyal', 'rrolfson@example.net', NULL, '$2y$10$x8hL32BjfRGF/8VmIPEV4u5OBYLxMaA/oEvddIY4idFCPzNdfJYGS', 'U53JIa0c58', 0, '1', '2020-01-02 06:37:16', '2020-01-02 06:37:16', NULL, 1, 0, NULL),
(7, 'Gudrun Wolf', 'velva.kemmer', 'towne.layne@example.com', NULL, '$2y$10$4TbR8Ay0xOw3tpali3Cdq.w7rR7ruKOCBRr6Cjg7hepMTcDPl2.J6', 'wOvnqgcsVD', 0, '1', '2020-01-02 06:37:16', '2020-01-02 06:37:16', NULL, 1, 0, NULL),
(8, 'Lilian Smith', 'dickinson.maxwell', 'brenna32@example.net', NULL, '$2y$10$QFdqMcpsvi1haZIRobJldeRIFTaAoZmpDygzHUlNjh7UvvDqvNnJm', 'CLKNqo4qbU', 0, '1', '2020-01-02 06:37:16', '2020-01-02 06:37:16', NULL, 1, 0, NULL),
(9, 'Rhianna Kuphal', 'jhayes', 'rbrakus@example.net', NULL, '$2y$10$6p6Z2b8w52Ukxd7WQBcV1eC0N5FmpmKWR75/tUXMxmGMlzExEqXJa', 'tJ0ZKe7S6o', 0, '1', '2020-01-02 06:37:16', '2020-01-02 06:37:16', NULL, 1, 0, NULL),
(10, 'Miss Julia Thiel V', 'ora.stroman', 'frances72@example.com', NULL, '$2y$10$BAdnDFQ2LgkZau1cwkK.qeyMab81aqGNs5nZbCU4xww9QA.Se7cEK', 'JQ1cYE1cTx', 0, '1', '2020-01-02 06:37:17', '2020-01-02 06:37:17', NULL, 1, 0, NULL),
(11, 'Megane Walker', 'swaniawski.eryn', 'vfritsch@example.org', NULL, '$2y$10$Tb9TYRPYBzfgAm.GYUFBcerbAncZg0PE6MFrawjv7Tq7OgqvYjBXe', 'WF9mWVzz6I', 0, '1', '2020-01-02 06:37:17', '2020-01-02 06:37:17', NULL, 1, 0, NULL),
(12, 'Russ Terry', 'retta.stiedemann', 'zdooley@example.org', NULL, '$2y$10$WOhc0FnjW3.HSmHGuJqY6.mHdsI5FR1gsVJLW1E8WiesAu8DtfFxO', 'rOtGatozMa', 0, '1', '2020-01-02 06:37:17', '2020-01-02 06:37:17', NULL, 1, 0, NULL),
(13, 'Moses Wehner', 'treutel.tia', 'georgiana.aufderhar@example.com', NULL, '$2y$10$UqfjrDJMXSGu5yfHPlnOg.ePqhIDLCeax11pm1dbNS74FRt6B2lyu', '9hfQhsmHGb', 0, '1', '2020-01-02 06:37:19', '2020-01-02 06:37:19', NULL, 1, 0, NULL),
(14, 'Miss Charity Wuckert', 'theresa.doyle', 'lenora.cummings@example.net', NULL, '$2y$10$8R/MKTr5FOyamP232RLKiev3/R5ANHmSaVV.OJvE0akW9ohh4cElm', 'bcsShCZkmE', 0, '1', '2020-01-02 06:37:19', '2020-01-02 06:37:19', NULL, 1, 0, NULL),
(15, 'Kirk Schaefer', 'epouros', 'sunny.wiza@example.org', NULL, '$2y$10$estvwUimIenl8jUpc.RI8eRELXA1ORNuKxDH4JR54IfNlHDktYHDG', 'oJDJDAczgX', 0, '1', '2020-01-02 06:37:19', '2020-01-02 06:37:19', NULL, 1, 0, NULL),
(16, 'Erich Rice', 'thermann', 'dpadberg@example.org', NULL, '$2y$10$58U45kr.7lUXHzAMMnU4Hu8iz9pEB1Ne5fDa9RUwZZDw.c5yDJzfi', 'r8dIgRDk3V', 0, '1', '2020-01-02 06:37:19', '2020-01-02 06:37:19', NULL, 1, 0, NULL),
(17, 'Meagan Fay', 'nelson34', 'reyes.bechtelar@example.org', NULL, '$2y$10$yQPybujinUNCidu3eU8aW.7hlPbbURDyhekc8/i/mYVTwCzFACwOK', '8d7O3cCymI', 0, '1', '2020-01-02 06:37:19', '2020-01-02 06:37:19', NULL, 1, 0, NULL),
(18, 'Malachi Towne PhD', 'swift.domenick', 'cummings.tianna@example.org', NULL, '$2y$10$PMCYA.jyCUvQ7XgFS8//y.cx2hxrSnQlbWz.GDbXPmQmznZGnqryy', 'c9c2cITw4Z', 0, '1', '2020-01-02 06:37:20', '2020-01-02 06:37:20', NULL, 1, 0, NULL),
(19, 'Nicole Stroman', 'dpowlowski', 'mklein@example.org', NULL, '$2y$10$q4spLoClXOcOB0ono48zJecb7DHgweW2Iub8vmspitdRj5rs4rMEW', 'kNLwvdnNkB', 0, '1', '2020-01-02 06:37:20', '2020-01-02 06:37:20', NULL, 1, 0, NULL),
(20, 'Mr. Kaley Waelchi V', 'adan.rohan', 'june58@example.org', NULL, '$2y$10$Q/e0OEqOvHlRbkoNnelpQ.reOnii4tllDDsWWTWxiYf2SeJ26IZ6a', 'NYibYELCSW', 0, '1', '2020-01-02 06:37:20', '2020-01-02 06:37:20', NULL, 1, 0, NULL),
(21, 'Mellie Kub', 'veda.ebert', 'hrunolfsdottir@example.com', NULL, '$2y$10$AOkWzsbrtj.Np2Caf7x9XOp1ozLo8ub2o4U4ngKiFwCpYaW61a/Oy', 'R6om2Oj4vL', 0, '1', '2020-01-02 06:37:20', '2020-01-02 06:37:20', NULL, 1, 0, NULL),
(22, 'Judge Doyle', 'murazik.ines', 'cole.derek@example.net', NULL, '$2y$10$IMxEmJ.9S8107r9BeiWJU.eArIPR4yGHM/SXQeOlthqY6OvIWYoVS', 'VfjXdlhv51', 0, '1', '2020-01-02 06:37:20', '2020-01-02 06:37:20', NULL, 1, 0, NULL),
(23, 'Mr. Ramon Tillman', 'ora.hane', 'desiree40@example.com', NULL, '$2y$10$/MUuGqn.V3mHUeo7oqFABucmM6Ajg2jp4HAYWCK0vY9fe9a5Ezz2C', 'HqwkkFK056', 0, '1', '2020-01-02 06:37:21', '2020-01-02 06:37:21', NULL, 1, 0, NULL),
(24, 'Wade Dare', 'reed63', 'rocky.jenkins@example.net', NULL, '$2y$10$r/UNa/67tptGE2bYlipMPepTJB8cm8.bMZCBswAyfo0cdxehRalqi', 'Qrm7tJAyRg', 0, '1', '2020-01-02 06:37:21', '2020-01-02 06:37:21', NULL, 1, 0, NULL),
(25, 'Conor Pagac', 'oschimmel', 'dovie.windler@example.com', NULL, '$2y$10$hUM83682GczDnUghLydQ/.ZkVojOsyg4yuZwOPVtPPxB76SifXiOq', 'GSAPuYVrHo', 0, '1', '2020-01-02 06:37:21', '2020-01-02 06:37:21', NULL, 1, 0, NULL),
(26, 'Alanis Padberg', 'brianne.little', 'kaycee56@example.org', NULL, '$2y$10$MItfCTdAQAfQCgozxtstjOC3qOAqn.mCJ/kavYN2cj8q.eoeryMB6', 'Vxz8kIvQRT', 0, '1', '2020-01-02 06:37:21', '2020-01-02 06:37:21', NULL, 1, 0, NULL),
(27, 'Lucy Strosin', 'awuckert', 'bernard.kunze@example.com', NULL, '$2y$10$nhFYKvHsUW7Ri.RMi7RQner522EMuHu80j41ZlHU5tURdBOe8EUlW', 'EL73NekeHe', 0, '1', '2020-01-02 06:37:21', '2020-01-02 06:37:21', NULL, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_permissions`
--

CREATE TABLE `users_permissions` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 1, '2020-01-02 06:36:34', '2020-01-02 06:36:34', NULL, 0, 0, NULL),
(2, 4, '2020-01-02 06:37:14', '2020-01-02 06:37:15', NULL, 1, 0, NULL),
(3, 7, '2020-01-02 06:37:14', '2020-01-02 06:37:15', NULL, 1, 0, NULL),
(4, 6, '2020-01-02 06:37:14', '2020-01-02 06:37:15', NULL, 1, 0, NULL),
(5, 2, '2020-01-02 06:37:15', '2020-01-02 06:37:16', NULL, 1, 0, NULL),
(6, 2, '2020-01-02 06:37:15', '2020-01-02 06:37:17', NULL, 1, 0, NULL),
(7, 2, '2020-01-02 06:37:15', '2020-01-02 06:37:17', NULL, 1, 0, NULL),
(8, 2, '2020-01-02 06:37:15', '2020-01-02 06:37:17', NULL, 1, 0, NULL),
(9, 2, '2020-01-02 06:37:15', '2020-01-02 06:37:17', NULL, 1, 0, NULL),
(10, 5, '2020-01-02 06:37:17', '2020-01-02 06:37:17', NULL, 1, 0, NULL),
(11, 6, '2020-01-02 06:37:17', '2020-01-02 06:37:17', NULL, 1, 0, NULL),
(12, 7, '2020-01-02 06:37:17', '2020-01-02 06:37:17', NULL, 1, 0, NULL),
(13, 3, '2020-01-02 06:37:19', '2020-01-02 06:37:22', NULL, 1, 0, NULL),
(14, 3, '2020-01-02 06:37:19', '2020-01-02 06:37:22', NULL, 1, 0, NULL),
(15, 3, '2020-01-02 06:37:19', '2020-01-02 06:37:22', NULL, 1, 0, NULL),
(16, 3, '2020-01-02 06:37:19', '2020-01-02 06:37:22', NULL, 1, 0, NULL),
(17, 3, '2020-01-02 06:37:19', '2020-01-02 06:37:22', NULL, 1, 0, NULL),
(18, 3, '2020-01-02 06:37:19', '2020-01-02 06:37:22', NULL, 1, 0, NULL),
(19, 3, '2020-01-02 06:37:19', '2020-01-02 06:37:22', NULL, 1, 0, NULL),
(20, 3, '2020-01-02 06:37:19', '2020-01-02 06:37:22', NULL, 1, 0, NULL),
(21, 3, '2020-01-02 06:37:19', '2020-01-02 06:37:22', NULL, 1, 0, NULL),
(22, 3, '2020-01-02 06:37:19', '2020-01-02 06:37:22', NULL, 1, 0, NULL),
(23, 3, '2020-01-02 06:37:19', '2020-01-02 06:37:22', NULL, 1, 0, NULL),
(24, 3, '2020-01-02 06:37:19', '2020-01-02 06:37:22', NULL, 1, 0, NULL),
(25, 3, '2020-01-02 06:37:19', '2020-01-02 06:37:22', NULL, 1, 0, NULL),
(26, 3, '2020-01-02 06:37:19', '2020-01-02 06:37:22', NULL, 1, 0, NULL),
(27, 3, '2020-01-02 06:37:19', '2020-01-02 06:37:22', NULL, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `work_outsides`
--

CREATE TABLE `work_outsides` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_id` int(10) UNSIGNED NOT NULL,
  `work_date` date NOT NULL,
  `document` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `work_outsides`
--

INSERT INTO `work_outsides` (`id`, `employee_id`, `work_date`, `document`, `description`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 6, '2019-12-25', NULL, 'Labore similique unde repudiandae maxime.', '2020-01-02 06:37:24', '2020-01-02 06:37:24', NULL, 1, 0, NULL),
(2, 2, '2019-12-18', NULL, 'Aut amet voluptatem velit eveniet voluptas.', '2020-01-02 06:37:24', '2020-01-02 06:37:24', NULL, 1, 0, NULL),
(3, 6, '2019-12-16', NULL, 'In omnis voluptatem et delectus maiores quis.', '2020-01-02 06:37:24', '2020-01-02 06:37:24', NULL, 1, 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_contents`
--
ALTER TABLE `about_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `about_contents_created_by_index` (`created_by`),
  ADD KEY `about_contents_updated_by_index` (`updated_by`),
  ADD KEY `about_contents_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `about_sliders`
--
ALTER TABLE `about_sliders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `about_sliders_created_by_index` (`created_by`),
  ADD KEY `about_sliders_updated_by_index` (`updated_by`),
  ADD KEY `about_sliders_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `academic_calendars`
--
ALTER TABLE `academic_calendars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `academic_calendars_created_by_index` (`created_by`),
  ADD KEY `academic_calendars_updated_by_index` (`updated_by`),
  ADD KEY `academic_calendars_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `academic_years`
--
ALTER TABLE `academic_years`
  ADD PRIMARY KEY (`id`),
  ADD KEY `academic_years_created_by_index` (`created_by`),
  ADD KEY `academic_years_updated_by_index` (`updated_by`),
  ADD KEY `academic_years_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `app_metas`
--
ALTER TABLE `app_metas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_metas_created_by_index` (`created_by`),
  ADD KEY `app_metas_updated_by_index` (`updated_by`),
  ADD KEY `app_metas_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `attendance_file_queues`
--
ALTER TABLE `attendance_file_queues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendance_file_queues_created_by_index` (`created_by`),
  ADD KEY `attendance_file_queues_updated_by_index` (`updated_by`),
  ADD KEY `attendance_file_queues_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `class_profiles`
--
ALTER TABLE `class_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_profiles_created_by_index` (`created_by`),
  ADD KEY `class_profiles_updated_by_index` (`updated_by`),
  ADD KEY `class_profiles_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_id_card_unique` (`id_card`),
  ADD KEY `employees_user_id_foreign` (`user_id`),
  ADD KEY `employees_role_id_foreign` (`role_id`),
  ADD KEY `employees_created_by_index` (`created_by`),
  ADD KEY `employees_updated_by_index` (`updated_by`),
  ADD KEY `employees_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `employee_attendances`
--
ALTER TABLE `employee_attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_attendances_employee_id_foreign` (`employee_id`),
  ADD KEY `employee_attendances_created_by_index` (`created_by`),
  ADD KEY `employee_attendances_updated_by_index` (`updated_by`),
  ADD KEY `employee_attendances_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `events_created_by_index` (`created_by`),
  ADD KEY `events_updated_by_index` (`updated_by`),
  ADD KEY `events_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exams_class_id_foreign` (`class_id`),
  ADD KEY `exams_created_by_index` (`created_by`),
  ADD KEY `exams_updated_by_index` (`updated_by`),
  ADD KEY `exams_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `exam_rules`
--
ALTER TABLE `exam_rules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_rules_class_id_foreign` (`class_id`),
  ADD KEY `exam_rules_subject_id_foreign` (`subject_id`),
  ADD KEY `exam_rules_grade_id_foreign` (`grade_id`),
  ADD KEY `exam_rules_combine_subject_id_foreign` (`combine_subject_id`),
  ADD KEY `exam_rules_created_by_index` (`created_by`),
  ADD KEY `exam_rules_updated_by_index` (`updated_by`),
  ADD KEY `exam_rules_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `grades_created_by_index` (`created_by`),
  ADD KEY `grades_updated_by_index` (`updated_by`),
  ADD KEY `grades_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `i_classes`
--
ALTER TABLE `i_classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `i_classes_created_by_index` (`created_by`),
  ADD KEY `i_classes_updated_by_index` (`updated_by`),
  ADD KEY `i_classes_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `i_class_history`
--
ALTER TABLE `i_class_history`
  ADD PRIMARY KEY (`id`,`revision`),
  ADD KEY `i_classes_created_by_index` (`created_by`),
  ADD KEY `i_classes_updated_by_index` (`updated_by`),
  ADD KEY `i_classes_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `leaves`
--
ALTER TABLE `leaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leaves_employee_id_foreign` (`employee_id`),
  ADD KEY `leaves_created_by_index` (`created_by`),
  ADD KEY `leaves_updated_by_index` (`updated_by`),
  ADD KEY `leaves_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `marks_academic_year_id_foreign` (`academic_year_id`),
  ADD KEY `marks_class_id_foreign` (`class_id`),
  ADD KEY `marks_section_id_foreign` (`section_id`),
  ADD KEY `marks_registration_id_foreign` (`registration_id`),
  ADD KEY `marks_exam_id_foreign` (`exam_id`),
  ADD KEY `marks_subject_id_foreign` (`subject_id`),
  ADD KEY `marks_created_by_index` (`created_by`),
  ADD KEY `marks_updated_by_index` (`updated_by`),
  ADD KEY `marks_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registrations`
--
ALTER TABLE `registrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `registrations_regi_no_unique` (`regi_no`),
  ADD KEY `registrations_student_id_foreign` (`student_id`),
  ADD KEY `registrations_class_id_foreign` (`class_id`),
  ADD KEY `registrations_section_id_foreign` (`section_id`),
  ADD KEY `registrations_academic_year_id_foreign` (`academic_year_id`),
  ADD KEY `registrations_regi_no_index` (`regi_no`),
  ADD KEY `registrations_created_by_index` (`created_by`),
  ADD KEY `registrations_updated_by_index` (`updated_by`),
  ADD KEY `registrations_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `results_academic_year_id_foreign` (`academic_year_id`),
  ADD KEY `results_class_id_foreign` (`class_id`),
  ADD KEY `results_registration_id_foreign` (`registration_id`),
  ADD KEY `results_exam_id_foreign` (`exam_id`),
  ADD KEY `results_created_by_index` (`created_by`),
  ADD KEY `results_updated_by_index` (`updated_by`),
  ADD KEY `results_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `result_combines`
--
ALTER TABLE `result_combines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `result_combines_registration_id_foreign` (`registration_id`),
  ADD KEY `result_combines_subject_id_foreign` (`subject_id`),
  ADD KEY `result_combines_exam_id_foreign` (`exam_id`);

--
-- Indexes for table `result_publish`
--
ALTER TABLE `result_publish`
  ADD PRIMARY KEY (`id`),
  ADD KEY `result_publish_academic_year_id_foreign` (`academic_year_id`),
  ADD KEY `result_publish_class_id_foreign` (`class_id`),
  ADD KEY `result_publish_exam_id_foreign` (`exam_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`),
  ADD KEY `roles_created_by_index` (`created_by`),
  ADD KEY `roles_updated_by_index` (`updated_by`),
  ADD KEY `roles_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD KEY `roles_permissions_role_id_foreign` (`role_id`),
  ADD KEY `roles_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `roles_permissions_created_by_index` (`created_by`),
  ADD KEY `roles_permissions_updated_by_index` (`updated_by`),
  ADD KEY `roles_permissions_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sections_class_id_foreign` (`class_id`),
  ADD KEY `sections_teacher_id_foreign` (`teacher_id`),
  ADD KEY `sections_created_by_index` (`created_by`),
  ADD KEY `sections_updated_by_index` (`updated_by`),
  ADD KEY `sections_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `section_history`
--
ALTER TABLE `section_history`
  ADD PRIMARY KEY (`id`,`revision`),
  ADD KEY `sections_class_id_foreign` (`class_id`),
  ADD KEY `sections_teacher_id_foreign` (`teacher_id`),
  ADD KEY `sections_created_by_index` (`created_by`),
  ADD KEY `sections_updated_by_index` (`updated_by`),
  ADD KEY `sections_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `site_metas`
--
ALTER TABLE `site_metas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `site_metas_created_by_index` (`created_by`),
  ADD KEY `site_metas_updated_by_index` (`updated_by`),
  ADD KEY `site_metas_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sliders_created_by_index` (`created_by`),
  ADD KEY `sliders_updated_by_index` (`updated_by`),
  ADD KEY `sliders_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `sms_logs`
--
ALTER TABLE `sms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `students_created_by_index` (`created_by`),
  ADD KEY `students_updated_by_index` (`updated_by`),
  ADD KEY `students_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `student_attendances`
--
ALTER TABLE `student_attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_attendances_academic_year_id_foreign` (`academic_year_id`),
  ADD KEY `student_attendances_class_id_foreign` (`class_id`),
  ADD KEY `student_attendances_registration_id_foreign` (`registration_id`),
  ADD KEY `student_attendances_created_by_index` (`created_by`),
  ADD KEY `student_attendances_updated_by_index` (`updated_by`),
  ADD KEY `student_attendances_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `student_info_log`
--
ALTER TABLE `student_info_log`
  ADD KEY `student_info_log_student_id_foreign` (`student_id`),
  ADD KEY `student_info_log_academic_year_id_foreign` (`academic_year_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subjects_class_id_foreign` (`class_id`),
  ADD KEY `subjects_teacher_id_foreign` (`teacher_id`),
  ADD KEY `subjects_created_by_index` (`created_by`),
  ADD KEY `subjects_updated_by_index` (`updated_by`),
  ADD KEY `subjects_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `subject_history`
--
ALTER TABLE `subject_history`
  ADD PRIMARY KEY (`id`,`revision`),
  ADD KEY `subjects_class_id_foreign` (`class_id`),
  ADD KEY `subjects_teacher_id_foreign` (`teacher_id`),
  ADD KEY `subjects_created_by_index` (`created_by`),
  ADD KEY `subjects_updated_by_index` (`updated_by`),
  ADD KEY `subjects_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `teacher_profiles`
--
ALTER TABLE `teacher_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacher_profiles_created_by_index` (`created_by`),
  ADD KEY `teacher_profiles_updated_by_index` (`updated_by`),
  ADD KEY `teacher_profiles_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `templates_created_by_index` (`created_by`),
  ADD KEY `templates_updated_by_index` (`updated_by`),
  ADD KEY `templates_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `testimonials_created_by_index` (`created_by`),
  ADD KEY `testimonials_updated_by_index` (`updated_by`),
  ADD KEY `testimonials_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_created_by_index` (`created_by`),
  ADD KEY `users_updated_by_index` (`updated_by`),
  ADD KEY `users_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `users_permissions`
--
ALTER TABLE `users_permissions`
  ADD KEY `users_permissions_user_id_foreign` (`user_id`),
  ADD KEY `users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `users_permissions_created_by_index` (`created_by`),
  ADD KEY `users_permissions_updated_by_index` (`updated_by`),
  ADD KEY `users_permissions_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_role_id_foreign` (`role_id`),
  ADD KEY `user_roles_created_by_index` (`created_by`),
  ADD KEY `user_roles_updated_by_index` (`updated_by`),
  ADD KEY `user_roles_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `work_outsides`
--
ALTER TABLE `work_outsides`
  ADD PRIMARY KEY (`id`),
  ADD KEY `work_outsides_employee_id_foreign` (`employee_id`),
  ADD KEY `work_outsides_created_by_index` (`created_by`),
  ADD KEY `work_outsides_updated_by_index` (`updated_by`),
  ADD KEY `work_outsides_deleted_by_index` (`deleted_by`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_contents`
--
ALTER TABLE `about_contents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `about_sliders`
--
ALTER TABLE `about_sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `academic_calendars`
--
ALTER TABLE `academic_calendars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `academic_years`
--
ALTER TABLE `academic_years`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `app_metas`
--
ALTER TABLE `app_metas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `attendance_file_queues`
--
ALTER TABLE `attendance_file_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `class_profiles`
--
ALTER TABLE `class_profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `employee_attendances`
--
ALTER TABLE `employee_attendances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `exam_rules`
--
ALTER TABLE `exam_rules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `i_classes`
--
ALTER TABLE `i_classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `i_class_history`
--
ALTER TABLE `i_class_history`
  MODIFY `revision` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `leaves`
--
ALTER TABLE `leaves`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;
--
-- AUTO_INCREMENT for table `registrations`
--
ALTER TABLE `registrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `result_combines`
--
ALTER TABLE `result_combines`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `result_publish`
--
ALTER TABLE `result_publish`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `section_history`
--
ALTER TABLE `section_history`
  MODIFY `revision` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `site_metas`
--
ALTER TABLE `site_metas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sms_logs`
--
ALTER TABLE `sms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `student_attendances`
--
ALTER TABLE `student_attendances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `subject_history`
--
ALTER TABLE `subject_history`
  MODIFY `revision` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `teacher_profiles`
--
ALTER TABLE `teacher_profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `templates`
--
ALTER TABLE `templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `work_outsides`
--
ALTER TABLE `work_outsides`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `employees_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `employee_attendances`
--
ALTER TABLE `employee_attendances`
  ADD CONSTRAINT `employee_attendances_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`);

--
-- Constraints for table `exams`
--
ALTER TABLE `exams`
  ADD CONSTRAINT `exams_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `i_classes` (`id`);

--
-- Constraints for table `exam_rules`
--
ALTER TABLE `exam_rules`
  ADD CONSTRAINT `exam_rules_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `i_classes` (`id`),
  ADD CONSTRAINT `exam_rules_combine_subject_id_foreign` FOREIGN KEY (`combine_subject_id`) REFERENCES `subjects` (`id`),
  ADD CONSTRAINT `exam_rules_grade_id_foreign` FOREIGN KEY (`grade_id`) REFERENCES `grades` (`id`),
  ADD CONSTRAINT `exam_rules_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`);

--
-- Constraints for table `leaves`
--
ALTER TABLE `leaves`
  ADD CONSTRAINT `leaves_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`);

--
-- Constraints for table `marks`
--
ALTER TABLE `marks`
  ADD CONSTRAINT `marks_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  ADD CONSTRAINT `marks_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `i_classes` (`id`),
  ADD CONSTRAINT `marks_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`),
  ADD CONSTRAINT `marks_registration_id_foreign` FOREIGN KEY (`registration_id`) REFERENCES `registrations` (`id`),
  ADD CONSTRAINT `marks_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`),
  ADD CONSTRAINT `marks_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`);

--
-- Constraints for table `registrations`
--
ALTER TABLE `registrations`
  ADD CONSTRAINT `registrations_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  ADD CONSTRAINT `registrations_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `i_classes` (`id`),
  ADD CONSTRAINT `registrations_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`),
  ADD CONSTRAINT `registrations_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `results_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  ADD CONSTRAINT `results_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `i_classes` (`id`),
  ADD CONSTRAINT `results_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`),
  ADD CONSTRAINT `results_registration_id_foreign` FOREIGN KEY (`registration_id`) REFERENCES `registrations` (`id`);

--
-- Constraints for table `result_combines`
--
ALTER TABLE `result_combines`
  ADD CONSTRAINT `result_combines_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`),
  ADD CONSTRAINT `result_combines_registration_id_foreign` FOREIGN KEY (`registration_id`) REFERENCES `registrations` (`id`),
  ADD CONSTRAINT `result_combines_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`);

--
-- Constraints for table `result_publish`
--
ALTER TABLE `result_publish`
  ADD CONSTRAINT `result_publish_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  ADD CONSTRAINT `result_publish_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `i_classes` (`id`),
  ADD CONSTRAINT `result_publish_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`);

--
-- Constraints for table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD CONSTRAINT `roles_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `roles_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `sections_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `i_classes` (`id`),
  ADD CONSTRAINT `sections_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `employees` (`id`);

--
-- Constraints for table `student_attendances`
--
ALTER TABLE `student_attendances`
  ADD CONSTRAINT `student_attendances_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  ADD CONSTRAINT `student_attendances_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `i_classes` (`id`),
  ADD CONSTRAINT `student_attendances_registration_id_foreign` FOREIGN KEY (`registration_id`) REFERENCES `registrations` (`id`);

--
-- Constraints for table `student_info_log`
--
ALTER TABLE `student_info_log`
  ADD CONSTRAINT `student_info_log_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  ADD CONSTRAINT `student_info_log_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `i_classes` (`id`),
  ADD CONSTRAINT `subjects_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `employees` (`id`);

--
-- Constraints for table `users_permissions`
--
ALTER TABLE `users_permissions`
  ADD CONSTRAINT `users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `work_outsides`
--
ALTER TABLE `work_outsides`
  ADD CONSTRAINT `work_outsides_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
