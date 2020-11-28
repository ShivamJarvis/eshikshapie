-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 21, 2020 at 07:28 AM
-- Server version: 5.7.32-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eshikshapie`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add category name', 1, 'add_categoryname'),
(2, 'Can change category name', 1, 'change_categoryname'),
(3, 'Can delete category name', 1, 'delete_categoryname'),
(4, 'Can view category name', 1, 'view_categoryname'),
(5, 'Can add contact', 2, 'add_contact'),
(6, 'Can change contact', 2, 'change_contact'),
(7, 'Can delete contact', 2, 'delete_contact'),
(8, 'Can view contact', 2, 'view_contact'),
(9, 'Can add course', 3, 'add_course'),
(10, 'Can change course', 3, 'change_course'),
(11, 'Can delete course', 3, 'delete_course'),
(12, 'Can view course', 3, 'view_course'),
(13, 'Can add enrolled course', 4, 'add_enrolledcourse'),
(14, 'Can change enrolled course', 4, 'change_enrolledcourse'),
(15, 'Can delete enrolled course', 4, 'delete_enrolledcourse'),
(16, 'Can view enrolled course', 4, 'view_enrolledcourse'),
(17, 'Can add instructor', 5, 'add_instructor'),
(18, 'Can change instructor', 5, 'change_instructor'),
(19, 'Can delete instructor', 5, 'delete_instructor'),
(20, 'Can view instructor', 5, 'view_instructor'),
(21, 'Can add study material', 6, 'add_studymaterial'),
(22, 'Can change study material', 6, 'change_studymaterial'),
(23, 'Can delete study material', 6, 'delete_studymaterial'),
(24, 'Can view study material', 6, 'view_studymaterial'),
(25, 'Can add subject', 7, 'add_subject'),
(26, 'Can change subject', 7, 'change_subject'),
(27, 'Can delete subject', 7, 'delete_subject'),
(28, 'Can view subject', 7, 'view_subject'),
(29, 'Can add video', 8, 'add_video'),
(30, 'Can change video', 8, 'change_video'),
(31, 'Can delete video', 8, 'delete_video'),
(32, 'Can view video', 8, 'view_video'),
(33, 'Can add user_profile', 9, 'add_user_profile'),
(34, 'Can change user_profile', 9, 'change_user_profile'),
(35, 'Can delete user_profile', 9, 'delete_user_profile'),
(36, 'Can view user_profile', 9, 'view_user_profile'),
(37, 'Can add review', 10, 'add_review'),
(38, 'Can change review', 10, 'change_review'),
(39, 'Can delete review', 10, 'delete_review'),
(40, 'Can view review', 10, 'view_review'),
(41, 'Can add question answer', 11, 'add_questionanswer'),
(42, 'Can change question answer', 11, 'change_questionanswer'),
(43, 'Can delete question answer', 11, 'delete_questionanswer'),
(44, 'Can view question answer', 11, 'view_questionanswer'),
(45, 'Can add logged in user', 12, 'add_loggedinuser'),
(46, 'Can change logged in user', 12, 'change_loggedinuser'),
(47, 'Can delete logged in user', 12, 'delete_loggedinuser'),
(48, 'Can view logged in user', 12, 'view_loggedinuser'),
(49, 'Can add category', 13, 'add_category'),
(50, 'Can change category', 13, 'change_category'),
(51, 'Can delete category', 13, 'delete_category'),
(52, 'Can view category', 13, 'view_category'),
(53, 'Can add log entry', 14, 'add_logentry'),
(54, 'Can change log entry', 14, 'change_logentry'),
(55, 'Can delete log entry', 14, 'delete_logentry'),
(56, 'Can view log entry', 14, 'view_logentry'),
(57, 'Can add permission', 15, 'add_permission'),
(58, 'Can change permission', 15, 'change_permission'),
(59, 'Can delete permission', 15, 'delete_permission'),
(60, 'Can view permission', 15, 'view_permission'),
(61, 'Can add group', 16, 'add_group'),
(62, 'Can change group', 16, 'change_group'),
(63, 'Can delete group', 16, 'delete_group'),
(64, 'Can view group', 16, 'view_group'),
(65, 'Can add user', 17, 'add_user'),
(66, 'Can change user', 17, 'change_user'),
(67, 'Can delete user', 17, 'delete_user'),
(68, 'Can view user', 17, 'view_user'),
(69, 'Can add content type', 18, 'add_contenttype'),
(70, 'Can change content type', 18, 'change_contenttype'),
(71, 'Can delete content type', 18, 'delete_contenttype'),
(72, 'Can view content type', 18, 'view_contenttype'),
(73, 'Can add session', 19, 'add_session'),
(74, 'Can change session', 19, 'change_session'),
(75, 'Can delete session', 19, 'delete_session'),
(76, 'Can view session', 19, 'view_session');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$VIMchPbCzUEn$qImFvdkOYsvd/60sPnpzeoVAJmnluQnOV8XwMHFjnXo=', '2020-11-19 05:17:47.391702', 1, 'Shivam', 'Shivam', 'Gupta', 'sg330415@gmail.com', 1, 1, '2020-11-13 06:14:29.000000'),
(2, 'pbkdf2_sha256$216000$0PZetGYJluyw$2sHOXT0trKly1ldIcs51hATTMjQvAcrfBAkHwxYXMug=', '2020-11-15 14:38:16.267671', 1, 'Pulkit', 'Pulkit', 'Arora', 'apulkit674@gmail.com', 1, 1, '2020-11-13 06:30:39.000000'),
(3, 'pbkdf2_sha256$216000$CDq77iVoYeLV$rV97Yxl0ySi9ACFfMQZqsFD+43oHckWnX62W2PCfwwc=', '2020-11-15 10:45:48.095022', 1, 'AmitKumar', 'Amit', 'Tyagi', 'aktyagi2807@gmail.com', 1, 1, '2020-11-13 07:10:06.000000'),
(4, 'pbkdf2_sha256$216000$OQbbB02znjv8$/kkSkxMD3qNvb430DfF1voyvx2Z7C3QJx7ouThV1Mkw=', '2020-11-13 15:11:49.737887', 0, 'CSYadav', 'C.S.', 'Yadav', 'yashvita09@gmail.com', 1, 1, '2020-11-13 07:11:24.000000'),
(5, 'pbkdf2_sha256$216000$IMHwouk15X3Y$qmScJBzmCOHAkD2taavLsV6rBw329KFd69Qf/FKw0cs=', NULL, 0, 'Vikas', 'Vikas', 'Chauhan', 'vc171098@gmail.com', 1, 1, '2020-11-13 07:13:38.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-11-13 06:29:39.466433', '1', ' ', 1, '[{\"added\": {}}]', 5, 1),
(2, '2020-11-13 06:29:54.475055', '1', 'Shivam', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]', 17, 1),
(3, '2020-11-13 06:30:39.376587', '2', 'Pulkit', 1, '[{\"added\": {}}]', 17, 1),
(4, '2020-11-13 06:32:07.015543', '2', 'Pulkit', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Staff status\", \"Superuser status\"]}}]', 17, 1),
(5, '2020-11-13 06:35:20.666889', '2', 'Pulkit Arora', 1, '[{\"added\": {}}]', 5, 1),
(6, '2020-11-13 06:35:30.421064', '1', 'Shivam Gupta', 2, '[{\"changed\": {\"fields\": [\"Qualifications\"]}}]', 5, 1),
(7, '2020-11-13 07:10:07.000119', '3', 'AmitKumar', 1, '[{\"added\": {}}]', 17, 1),
(8, '2020-11-13 07:10:33.265924', '3', 'AmitKumar', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Staff status\", \"Superuser status\"]}}]', 17, 1),
(9, '2020-11-13 07:11:24.789669', '4', 'CSYadav', 1, '[{\"added\": {}}]', 17, 1),
(10, '2020-11-13 07:12:55.996729', '4', 'CSYadav', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Staff status\"]}}]', 17, 1),
(11, '2020-11-13 07:13:38.853669', '5', 'Vikas', 1, '[{\"added\": {}}]', 17, 1),
(12, '2020-11-13 07:14:18.687034', '5', 'Vikas', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Staff status\"]}}]', 17, 1),
(13, '2020-11-13 07:16:33.805350', '3', 'Amit Tyagi', 1, '[{\"added\": {}}]', 5, 1),
(14, '2020-11-13 07:18:36.785698', '4', 'Vikas Chauhan', 1, '[{\"added\": {}}]', 5, 1),
(15, '2020-11-13 07:21:00.130180', '5', 'C.S. Yadav', 1, '[{\"added\": {}}]', 5, 1),
(16, '2020-11-13 07:21:57.958301', '1', 'Programming Courses', 1, '[{\"added\": {}}]', 1, 1),
(17, '2020-11-13 07:22:12.062609', '2', 'Crash Courses', 1, '[{\"added\": {}}]', 1, 1),
(18, '2020-11-13 07:22:51.984258', '3', 'Test Series', 1, '[{\"added\": {}}]', 1, 1),
(19, '2020-11-13 07:32:53.746298', '1', 'Learn Python Programming Bootcamp by (Shivam Gupta)', 1, '[{\"added\": {}}]', 3, 1),
(20, '2020-11-13 07:57:28.191980', '1', 'basic_python by (Shivam Gupta)', 1, '[{\"added\": {}}]', 7, 1),
(21, '2020-11-13 07:58:10.045323', '2', 'advance_python by (Pulkit Arora)', 1, '[{\"added\": {}}]', 7, 1),
(22, '2020-11-13 08:02:35.271758', '1', 'Learn Python Programming Bootcamp by (Shivam Gupta)', 2, '[{\"changed\": {\"fields\": [\"Intro video\"]}}]', 3, 1),
(23, '2020-11-13 08:31:50.126237', '1', 'Category object (1)', 1, '[{\"added\": {}}]', 13, 1),
(24, '2020-11-14 05:40:51.514459', '1', 'Shivam Gupta', 2, '[{\"changed\": {\"fields\": [\"Address\"]}}]', 5, 1),
(25, '2020-11-15 06:51:54.517563', '1', 'Learn Python Programming Bootcamp by (Shivam Gupta)', 2, '[{\"changed\": {\"fields\": [\"Language\"]}}]', 3, 2),
(26, '2020-11-15 08:37:13.793011', '1', 'Python Introduction of (basic_python)', 2, '[{\"changed\": {\"fields\": [\"Is free\"]}}]', 8, 1),
(27, '2020-11-15 08:46:20.410791', '1', 'Learn Python Programming Bootcamp by (Shivam Gupta)', 2, '[{\"changed\": {\"fields\": [\"Intro video\"]}}]', 3, 1),
(28, '2020-11-15 10:44:09.037513', '3', 'AmitKumar', 2, '[{\"changed\": {\"fields\": [\"Staff status\", \"Superuser status\"]}}]', 17, 1),
(29, '2020-11-15 10:45:23.223092', '3', 'AmitKumar', 2, '[{\"changed\": {\"fields\": [\"Staff status\", \"Superuser status\"]}}]', 17, 1),
(30, '2020-11-15 15:26:45.834003', '2', 'Class 9 | Class 10 Crash Course by (Amit Tyagi)', 1, '[{\"added\": {}}]', 3, 1),
(31, '2020-11-15 15:29:20.694327', '2', 'Class 9 | Class 10 Crash Course by (Amit Tyagi)', 2, '[{\"changed\": {\"fields\": [\"Special price\", \"Message\"]}}]', 3, 1),
(32, '2020-11-15 15:29:53.070624', '2', 'Class 9 | Class 10 Crash Course (With Live Lectures) by (Amit Tyagi)', 2, '[{\"changed\": {\"fields\": [\"Course name\", \"Message\"]}}]', 3, 1),
(33, '2020-11-15 15:30:57.708522', '3', 'Class 9 | Class 10 Crash Course by (Amit Tyagi)', 1, '[{\"added\": {}}]', 3, 1),
(34, '2020-11-15 15:31:12.132475', '2', 'Category object (2)', 1, '[{\"added\": {}}]', 13, 1),
(35, '2020-11-15 15:31:20.166622', '3', 'Category object (3)', 1, '[{\"added\": {}}]', 13, 1),
(36, '2020-11-16 04:45:26.053517', '2', 'Class 9 | Class 10 Crash Course by (Amit Tyagi)', 2, '[{\"changed\": {\"fields\": [\"Course name\"]}}]', 3, 1),
(37, '2020-11-16 04:45:40.717050', '3', 'Class 9 | Class 10 Crash Course by (Amit Tyagi)', 3, '', 3, 1),
(38, '2020-11-16 04:46:06.179434', '2', 'Class 10 Crash Course by (Amit Tyagi)', 2, '[{\"changed\": {\"fields\": [\"Course name\"]}}]', 3, 1),
(39, '2020-11-16 11:34:40.509949', '2', 'Class 10 Crash Course by (Amit Tyagi)', 2, '[{\"changed\": {\"fields\": [\"Duration\"]}}]', 3, 1),
(40, '2020-11-16 11:43:42.338821', '2', 'Class 10 Crash Course by (Amit Tyagi)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 3, 1),
(41, '2020-11-16 16:04:24.857849', '2', 'Python Installation of (basic_python)', 2, '[{\"changed\": {\"fields\": [\"Is free\"]}}]', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(14, 'admin', 'logentry'),
(16, 'auth', 'group'),
(15, 'auth', 'permission'),
(17, 'auth', 'user'),
(18, 'contenttypes', 'contenttype'),
(13, 'learning_system_app', 'category'),
(1, 'learning_system_app', 'categoryname'),
(2, 'learning_system_app', 'contact'),
(3, 'learning_system_app', 'course'),
(4, 'learning_system_app', 'enrolledcourse'),
(5, 'learning_system_app', 'instructor'),
(12, 'learning_system_app', 'loggedinuser'),
(11, 'learning_system_app', 'questionanswer'),
(10, 'learning_system_app', 'review'),
(6, 'learning_system_app', 'studymaterial'),
(7, 'learning_system_app', 'subject'),
(9, 'learning_system_app', 'user_profile'),
(8, 'learning_system_app', 'video'),
(19, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-11-13 06:13:14.766635'),
(2, 'auth', '0001_initial', '2020-11-13 06:13:14.870805'),
(3, 'admin', '0001_initial', '2020-11-13 06:13:15.058064'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-11-13 06:13:15.131953'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-11-13 06:13:15.149694'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-11-13 06:13:15.210012'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-11-13 06:13:15.229452'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-11-13 06:13:15.253542'),
(9, 'auth', '0004_alter_user_username_opts', '2020-11-13 06:13:15.270479'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-11-13 06:13:15.302895'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-11-13 06:13:15.306651'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-11-13 06:13:15.325679'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-11-13 06:13:15.343087'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-11-13 06:13:15.362249'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-11-13 06:13:15.383904'),
(16, 'auth', '0011_update_proxy_permissions', '2020-11-13 06:13:15.397104'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2020-11-13 06:13:15.420310'),
(18, 'learning_system_app', '0001_initial', '2020-11-13 06:13:16.186636'),
(19, 'sessions', '0001_initial', '2020-11-13 06:13:16.526235');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('vea4y341tm8jp0aoakb6avdabgoec9y3', '.eJxVjDsOwyAQRO9CHSFYm1_K9D4DAnYdnEQgGbuKcvdgyUUiTTXvzbyZD_uW_d5o9QuyK5Ps8tvFkJ5UDoCPUO6Vp1q2dYn8UPhJG58q0ut2un8HObTc1wmUIXRmtMrRPFgyUggrR2dRDz3ORlBKAEmQACJJ5WYEbSLqDgZgny-zIDZf:1kfcKJ:Q9SblaEuStLQXvnB17hyFPsrLkhN_lzR11V7ibo2E-0', '2020-12-03 05:17:47.398414');

-- --------------------------------------------------------

--
-- Table structure for table `learning_system_app_category`
--

CREATE TABLE `learning_system_app_category` (
  `id` int(11) NOT NULL,
  `category_name_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `learning_system_app_category`
--

INSERT INTO `learning_system_app_category` (`id`, `category_name_id`, `course_id`) VALUES
(1, 1, 1),
(2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `learning_system_app_categoryname`
--

CREATE TABLE `learning_system_app_categoryname` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `learning_system_app_categoryname`
--

INSERT INTO `learning_system_app_categoryname` (`id`, `name`) VALUES
(1, 'Programming Courses'),
(2, 'Crash Courses'),
(3, 'Test Series');

-- --------------------------------------------------------

--
-- Table structure for table `learning_system_app_contact`
--

CREATE TABLE `learning_system_app_contact` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `learning_system_app_contact`
--

INSERT INTO `learning_system_app_contact` (`id`, `name`, `phone`, `email`, `message`) VALUES
(1, 'Eric Jones', '555-555-1212', 'ericjonesonline@outlook.com', 'Hello, my name’s Eric and I just ran across your website at eshikshapie.com...\r\n\r\nI found it after a quick search, so your SEO’s working out…\r\n\r\nContent looks pretty good…\r\n\r\nOne thing’s missing though…\r\n\r\nA QUICK, EASY way to connect with you NOW.\r\n\r\nBecause studies show that a web lead like me will only hang out a few seconds – 7 out of 10 disappear almost instantly, Surf Surf Surf… then gone forever.\r\n\r\nI have the solution:\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to TALK with them - literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE http://www.talkwithcustomer.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works and even give it a try… it could be huge for your business.\r\n\r\nPlus, now that you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation pronto… which is so powerful, because connecting with someone within the first 5 minutes is 100 times more effective than waiting 30 minutes or more later.\r\n\r\nThe new text messaging feature lets you follow up regularly with new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable.\r\n \r\nCLICK HERE http://www.talkwithcustomer.com to discover what Talk With Web Visitor can do for your business, potentially converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://www.talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=eshikshapie.com\r\n'),
(2, 'Virginia Weingarth', '06-35173367', 'eshikshapie.com@eshikshapie.com', 'Your domain name: eshikshapie.com\r\n\r\nE-Shiksha Pie - Aspiring Your Minds\r\n\r\nThis announcement  EXPIRES ON: Nov 18, 2020.\r\n\r\n\r\nWe have actually not received a settlement from you.\r\nWe  have actually tried to email you however were incapable to reach you.\r\n\r\n\r\nPlease Browse Through:  https://cutt.ly/yhqbiM8\r\n\r\n\r\nFor details and to post a optional payment for services.\r\n\r\n\r\n11182020195128\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `learning_system_app_course`
--

CREATE TABLE `learning_system_app_course` (
  `id` int(11) NOT NULL,
  `course_name` varchar(300) NOT NULL,
  `intro_video` varchar(300) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `price` double NOT NULL,
  `special_price` double NOT NULL,
  `price_key` varchar(200) DEFAULT NULL,
  `description` longtext NOT NULL,
  `mini_info` longtext,
  `duration` varchar(50) NOT NULL,
  `language` varchar(50) NOT NULL,
  `prequisites` varchar(50) NOT NULL,
  `has_certificate` tinyint(1) NOT NULL,
  `is_popular` tinyint(1) NOT NULL,
  `message` varchar(300) DEFAULT NULL,
  `instructor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `learning_system_app_course`
--

INSERT INTO `learning_system_app_course` (`id`, `course_name`, `intro_video`, `image`, `price`, `special_price`, `price_key`, `description`, `mini_info`, `duration`, `language`, `prequisites`, `has_certificate`, `is_popular`, `message`, `instructor_id`) VALUES
(1, 'Learn Python Programming Bootcamp', 'https://www.youtube.com/embed/QbFuodyr_30?rel=0', '1294275.jpg', 8000, 1500, NULL, 'Whether you want to:\r\n\r\n- build the skills you need to get your first Python programming job\r\n\r\n- move to a more senior software developer position\r\n\r\n- get started with Machine Learning, Data Science, Django or other hot areas that Python specialises in\r\n\r\n- or just learn Python to be able to create your own Python apps quickly.\r\n\r\n…then you need a solid foundation in Python programming. And this course is designed to give you those core skills, fast.\r\n\r\nThis course is aimed at complete beginners who have never programmed before, as well as existing programmers who want to increase their career options by learning Python.\r\n\r\nThe fact is, Python is one of the most popular programming languages in the world – Huge companies like Google use it in mission critical applications like Google Search.', 'Become a Python Programmer and learn one of employer\'s most requested skills of 2020!', '2', 'Hindi/English', 'No', 1, 1, 'Registration Starts From 1st December 2020', 1),
(2, 'Class 10 Crash Course', 'https://www.youtube.com/embed/X2YrKz9TtTo?rel=0', 'Untitled-Project.jpg', 8000, 2400, NULL, 'This course is designed for students looking to strengthen their concepts as well as get exposed to the different types of questions asked in the Board Exam without having to deviate too much from their own preparation.\r\nThe sessions cover all the important topics as well as strategies for the exam. Students can resolve their doubts during the class or discuss their doubts later on with the respective faculty members.', 'This course is designed for students looking to strengthen their concepts as well as get exposed to the different types of questions asked in the Board Exam without having to deviate too much from their own preparation.', '3', 'Hindi/English', 'No', 0, 1, 'Registration Start from 5th December (With Live Classes)', 3);

-- --------------------------------------------------------

--
-- Table structure for table `learning_system_app_enrolledcourse`
--

CREATE TABLE `learning_system_app_enrolledcourse` (
  `id` int(11) NOT NULL,
  `enroll_id` varchar(30) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date` datetime(6) DEFAULT NULL,
  `request_deactivate` int(11) NOT NULL,
  `expiry_date` datetime(6) DEFAULT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `learning_system_app_instructor`
--

CREATE TABLE `learning_system_app_instructor` (
  `id` int(11) NOT NULL,
  `instructor_id` varchar(30) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `image` varchar(100) NOT NULL,
  `image_qr` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `address` longtext NOT NULL,
  `state` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `zip_code` varchar(50) NOT NULL,
  `qualifications` varchar(500) NOT NULL,
  `year_of_experience` varchar(300) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `learning_system_app_instructor`
--

INSERT INTO `learning_system_app_instructor` (`id`, `instructor_id`, `phone`, `image`, `image_qr`, `dob`, `address`, `state`, `city`, `zip_code`, `qualifications`, `year_of_experience`, `user_id`) VALUES
(1, 'INSTID1', '9643873974', 'GUPTA_SHIVAM.png', 'qr_codeINSTID1_O7CHRgQ.png', '2000-03-05', 'Krishna Nagar', 'Delhi', 'Delhi', '110051', 'Programming Instructor', '2', 1),
(2, 'INSTID2', '7065971154', 'ARORA_PULKIT.jpeg', 'qr_codeINSTID2.png', '2000-06-10', 'Raj Nagar Extension, Ghaziabad', 'Uttar Pradesh', 'Ghaziabad', '201017', 'Programming Instructor', '2', 2),
(3, 'INSTID3', '9717838491', 'KUMAR_AMIT.png', 'qr_codeINSTID3.png', '1980-04-01', 'Sanjay Nagar, Ghaziabad', 'Uttar Pradesh', 'Ghaziabad', '201002', 'Maths Instructor', '12', 3),
(4, 'INSTID4', '9582094909', 'CHAUHAN_VIKAS.png', 'qr_codeINSTID4.png', '1998-10-17', 'Sanjay Nagar, Ghaziabad', 'Uttar Pradesh', 'Ghaziabad', '201002', 'Accounts Instructor', '3', 5),
(5, 'INSTID5', '9873702827', 'YADAV_CS.jpeg', 'qr_codeINSTID5.png', '1975-07-30', 'Govindpuram, Ghaziabad', 'Uttar Pradesh', 'Ghaziabad', '201013', 'English Instructor', '10', 4);

-- --------------------------------------------------------

--
-- Table structure for table `learning_system_app_loggedinuser`
--

CREATE TABLE `learning_system_app_loggedinuser` (
  `id` int(11) NOT NULL,
  `session_key` varchar(32) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `learning_system_app_loggedinuser`
--

INSERT INTO `learning_system_app_loggedinuser` (`id`, `session_key`, `user_id`) VALUES
(26, 'vea4y341tm8jp0aoakb6avdabgoec9y3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `learning_system_app_questionanswer`
--

CREATE TABLE `learning_system_app_questionanswer` (
  `id` int(11) NOT NULL,
  `question` longtext NOT NULL,
  `answer` longtext,
  `course_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `video_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `learning_system_app_review`
--

CREATE TABLE `learning_system_app_review` (
  `id` int(11) NOT NULL,
  `review` longtext NOT NULL,
  `is_approved` tinyint(1) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `enrolled_course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `learning_system_app_studymaterial`
--

CREATE TABLE `learning_system_app_studymaterial` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `study_file` varchar(200) DEFAULT NULL,
  `answer_file` varchar(200) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `class_level` int(11) NOT NULL,
  `chapter_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `learning_system_app_subject`
--

CREATE TABLE `learning_system_app_subject` (
  `id` int(11) NOT NULL,
  `display_name` varchar(200) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `course_id` int(11) NOT NULL,
  `instructor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `learning_system_app_subject`
--

INSERT INTO `learning_system_app_subject` (`id`, `display_name`, `subject_name`, `course_id`, `instructor_id`) VALUES
(1, 'Basic Python', 'basic_python', 1, 1),
(2, 'Advance Python', 'advance_python', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `learning_system_app_user_profile`
--

CREATE TABLE `learning_system_app_user_profile` (
  `id` int(11) NOT NULL,
  `student_id` varchar(30) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `image_qr` varchar(100) NOT NULL,
  `school_name` varchar(100) DEFAULT NULL,
  `dob` date NOT NULL,
  `session` varchar(40) DEFAULT NULL,
  `mother_name` varchar(100) DEFAULT NULL,
  `father_name` varchar(100) DEFAULT NULL,
  `address` longtext NOT NULL,
  `state` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `zip_code` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `learning_system_app_video`
--

CREATE TABLE `learning_system_app_video` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `resources` varchar(200) DEFAULT NULL,
  `is_free` tinyint(1) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `learning_system_app_video`
--

INSERT INTO `learning_system_app_video` (`id`, `title`, `url`, `description`, `resources`, `is_free`, `course_id`, `subject_id`) VALUES
(1, 'Python Introduction', 'https://www.youtube.com/embed/QbFuodyr_30?rel=0', 'In this video I discuss about what is python and what is programming language and also discuss about why learn python, etc.', '/media/Intro%20Python%20Eshikshapie.pdf', 1, 1, 1),
(2, 'Python Installation', 'https://www.youtube.com/embed/VxuswGkXShk?rel=0', 'In this video I discuss about how to install python on windows 10', NULL, 1, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `learning_system_app_category`
--
ALTER TABLE `learning_system_app_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `learning_system_app__category_name_id_458be2e2_fk_learning_` (`category_name_id`),
  ADD KEY `learning_system_app__course_id_9d3f1bbd_fk_learning_` (`course_id`);

--
-- Indexes for table `learning_system_app_categoryname`
--
ALTER TABLE `learning_system_app_categoryname`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_system_app_contact`
--
ALTER TABLE `learning_system_app_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_system_app_course`
--
ALTER TABLE `learning_system_app_course`
  ADD PRIMARY KEY (`id`),
  ADD KEY `learning_system_app__instructor_id_705b78b5_fk_learning_` (`instructor_id`);

--
-- Indexes for table `learning_system_app_enrolledcourse`
--
ALTER TABLE `learning_system_app_enrolledcourse`
  ADD PRIMARY KEY (`id`),
  ADD KEY `learning_system_app__course_id_cf72fbf0_fk_learning_` (`course_id`),
  ADD KEY `learning_system_app__user_id_2f269222_fk_auth_user` (`user_id`);

--
-- Indexes for table `learning_system_app_instructor`
--
ALTER TABLE `learning_system_app_instructor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `learning_system_app_loggedinuser`
--
ALTER TABLE `learning_system_app_loggedinuser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `learning_system_app_questionanswer`
--
ALTER TABLE `learning_system_app_questionanswer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `learning_system_app__course_id_32997938_fk_learning_` (`course_id`),
  ADD KEY `learning_system_app__subject_id_34d4d69b_fk_learning_` (`subject_id`),
  ADD KEY `learning_system_app__user_id_dd1d6981_fk_auth_user` (`user_id`),
  ADD KEY `learning_system_app__video_id_e3dc6220_fk_learning_` (`video_id`);

--
-- Indexes for table `learning_system_app_review`
--
ALTER TABLE `learning_system_app_review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `learning_system_app__course_id_bad3c82f_fk_learning_` (`course_id`),
  ADD KEY `learning_system_app__enrolled_course_id_29440b4e_fk_learning_` (`enrolled_course_id`),
  ADD KEY `learning_system_app_review_user_id_fce04fc6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `learning_system_app_studymaterial`
--
ALTER TABLE `learning_system_app_studymaterial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_system_app_subject`
--
ALTER TABLE `learning_system_app_subject`
  ADD PRIMARY KEY (`id`),
  ADD KEY `learning_system_app__course_id_c167d6f2_fk_learning_` (`course_id`),
  ADD KEY `learning_system_app__instructor_id_71749277_fk_learning_` (`instructor_id`);

--
-- Indexes for table `learning_system_app_user_profile`
--
ALTER TABLE `learning_system_app_user_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `learning_system_app_video`
--
ALTER TABLE `learning_system_app_video`
  ADD PRIMARY KEY (`id`),
  ADD KEY `learning_system_app__course_id_73d29314_fk_learning_` (`course_id`),
  ADD KEY `learning_system_app__subject_id_2c901a44_fk_learning_` (`subject_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `learning_system_app_category`
--
ALTER TABLE `learning_system_app_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `learning_system_app_categoryname`
--
ALTER TABLE `learning_system_app_categoryname`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `learning_system_app_contact`
--
ALTER TABLE `learning_system_app_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `learning_system_app_course`
--
ALTER TABLE `learning_system_app_course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `learning_system_app_enrolledcourse`
--
ALTER TABLE `learning_system_app_enrolledcourse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `learning_system_app_instructor`
--
ALTER TABLE `learning_system_app_instructor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `learning_system_app_loggedinuser`
--
ALTER TABLE `learning_system_app_loggedinuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `learning_system_app_questionanswer`
--
ALTER TABLE `learning_system_app_questionanswer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `learning_system_app_review`
--
ALTER TABLE `learning_system_app_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `learning_system_app_studymaterial`
--
ALTER TABLE `learning_system_app_studymaterial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `learning_system_app_subject`
--
ALTER TABLE `learning_system_app_subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `learning_system_app_user_profile`
--
ALTER TABLE `learning_system_app_user_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `learning_system_app_video`
--
ALTER TABLE `learning_system_app_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `learning_system_app_category`
--
ALTER TABLE `learning_system_app_category`
  ADD CONSTRAINT `learning_system_app__category_name_id_458be2e2_fk_learning_` FOREIGN KEY (`category_name_id`) REFERENCES `learning_system_app_categoryname` (`id`),
  ADD CONSTRAINT `learning_system_app__course_id_9d3f1bbd_fk_learning_` FOREIGN KEY (`course_id`) REFERENCES `learning_system_app_course` (`id`);

--
-- Constraints for table `learning_system_app_course`
--
ALTER TABLE `learning_system_app_course`
  ADD CONSTRAINT `learning_system_app__instructor_id_705b78b5_fk_learning_` FOREIGN KEY (`instructor_id`) REFERENCES `learning_system_app_instructor` (`id`);

--
-- Constraints for table `learning_system_app_enrolledcourse`
--
ALTER TABLE `learning_system_app_enrolledcourse`
  ADD CONSTRAINT `learning_system_app__course_id_cf72fbf0_fk_learning_` FOREIGN KEY (`course_id`) REFERENCES `learning_system_app_course` (`id`),
  ADD CONSTRAINT `learning_system_app__user_id_2f269222_fk_auth_user` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `learning_system_app_instructor`
--
ALTER TABLE `learning_system_app_instructor`
  ADD CONSTRAINT `learning_system_app_instructor_user_id_095fc803_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `learning_system_app_loggedinuser`
--
ALTER TABLE `learning_system_app_loggedinuser`
  ADD CONSTRAINT `learning_system_app__user_id_f223ae98_fk_auth_user` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `learning_system_app_questionanswer`
--
ALTER TABLE `learning_system_app_questionanswer`
  ADD CONSTRAINT `learning_system_app__course_id_32997938_fk_learning_` FOREIGN KEY (`course_id`) REFERENCES `learning_system_app_course` (`id`),
  ADD CONSTRAINT `learning_system_app__subject_id_34d4d69b_fk_learning_` FOREIGN KEY (`subject_id`) REFERENCES `learning_system_app_subject` (`id`),
  ADD CONSTRAINT `learning_system_app__user_id_dd1d6981_fk_auth_user` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `learning_system_app__video_id_e3dc6220_fk_learning_` FOREIGN KEY (`video_id`) REFERENCES `learning_system_app_video` (`id`);

--
-- Constraints for table `learning_system_app_review`
--
ALTER TABLE `learning_system_app_review`
  ADD CONSTRAINT `learning_system_app__course_id_bad3c82f_fk_learning_` FOREIGN KEY (`course_id`) REFERENCES `learning_system_app_course` (`id`),
  ADD CONSTRAINT `learning_system_app__enrolled_course_id_29440b4e_fk_learning_` FOREIGN KEY (`enrolled_course_id`) REFERENCES `learning_system_app_enrolledcourse` (`id`),
  ADD CONSTRAINT `learning_system_app_review_user_id_fce04fc6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `learning_system_app_subject`
--
ALTER TABLE `learning_system_app_subject`
  ADD CONSTRAINT `learning_system_app__course_id_c167d6f2_fk_learning_` FOREIGN KEY (`course_id`) REFERENCES `learning_system_app_course` (`id`),
  ADD CONSTRAINT `learning_system_app__instructor_id_71749277_fk_learning_` FOREIGN KEY (`instructor_id`) REFERENCES `learning_system_app_instructor` (`id`);

--
-- Constraints for table `learning_system_app_user_profile`
--
ALTER TABLE `learning_system_app_user_profile`
  ADD CONSTRAINT `learning_system_app__user_id_51bba71b_fk_auth_user` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `learning_system_app_video`
--
ALTER TABLE `learning_system_app_video`
  ADD CONSTRAINT `learning_system_app__course_id_73d29314_fk_learning_` FOREIGN KEY (`course_id`) REFERENCES `learning_system_app_course` (`id`),
  ADD CONSTRAINT `learning_system_app__subject_id_2c901a44_fk_learning_` FOREIGN KEY (`subject_id`) REFERENCES `learning_system_app_subject` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
