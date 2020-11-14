-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 12, 2020 at 08:49 AM
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add contact', 1, 'add_contact'),
(2, 'Can change contact', 1, 'change_contact'),
(3, 'Can delete contact', 1, 'delete_contact'),
(4, 'Can view contact', 1, 'view_contact'),
(5, 'Can add course', 2, 'add_course'),
(6, 'Can change course', 2, 'change_course'),
(7, 'Can delete course', 2, 'delete_course'),
(8, 'Can view course', 2, 'view_course'),
(9, 'Can add enrolled course', 3, 'add_enrolledcourse'),
(10, 'Can change enrolled course', 3, 'change_enrolledcourse'),
(11, 'Can delete enrolled course', 3, 'delete_enrolledcourse'),
(12, 'Can view enrolled course', 3, 'view_enrolledcourse'),
(13, 'Can add instructor', 4, 'add_instructor'),
(14, 'Can change instructor', 4, 'change_instructor'),
(15, 'Can delete instructor', 4, 'delete_instructor'),
(16, 'Can view instructor', 4, 'view_instructor'),
(17, 'Can add study material', 5, 'add_studymaterial'),
(18, 'Can change study material', 5, 'change_studymaterial'),
(19, 'Can delete study material', 5, 'delete_studymaterial'),
(20, 'Can view study material', 5, 'view_studymaterial'),
(21, 'Can add subject', 6, 'add_subject'),
(22, 'Can change subject', 6, 'change_subject'),
(23, 'Can delete subject', 6, 'delete_subject'),
(24, 'Can view subject', 6, 'view_subject'),
(25, 'Can add video', 7, 'add_video'),
(26, 'Can change video', 7, 'change_video'),
(27, 'Can delete video', 7, 'delete_video'),
(28, 'Can view video', 7, 'view_video'),
(29, 'Can add user_profile', 8, 'add_user_profile'),
(30, 'Can change user_profile', 8, 'change_user_profile'),
(31, 'Can delete user_profile', 8, 'delete_user_profile'),
(32, 'Can view user_profile', 8, 'view_user_profile'),
(33, 'Can add review', 9, 'add_review'),
(34, 'Can change review', 9, 'change_review'),
(35, 'Can delete review', 9, 'delete_review'),
(36, 'Can view review', 9, 'view_review'),
(37, 'Can add question answer', 10, 'add_questionanswer'),
(38, 'Can change question answer', 10, 'change_questionanswer'),
(39, 'Can delete question answer', 10, 'delete_questionanswer'),
(40, 'Can view question answer', 10, 'view_questionanswer'),
(41, 'Can add logged in user', 11, 'add_loggedinuser'),
(42, 'Can change logged in user', 11, 'change_loggedinuser'),
(43, 'Can delete logged in user', 11, 'delete_loggedinuser'),
(44, 'Can view logged in user', 11, 'view_loggedinuser'),
(45, 'Can add category', 12, 'add_category'),
(46, 'Can change category', 12, 'change_category'),
(47, 'Can delete category', 12, 'delete_category'),
(48, 'Can view category', 12, 'view_category'),
(49, 'Can add log entry', 13, 'add_logentry'),
(50, 'Can change log entry', 13, 'change_logentry'),
(51, 'Can delete log entry', 13, 'delete_logentry'),
(52, 'Can view log entry', 13, 'view_logentry'),
(53, 'Can add permission', 14, 'add_permission'),
(54, 'Can change permission', 14, 'change_permission'),
(55, 'Can delete permission', 14, 'delete_permission'),
(56, 'Can view permission', 14, 'view_permission'),
(57, 'Can add group', 15, 'add_group'),
(58, 'Can change group', 15, 'change_group'),
(59, 'Can delete group', 15, 'delete_group'),
(60, 'Can view group', 15, 'view_group'),
(61, 'Can add user', 16, 'add_user'),
(62, 'Can change user', 16, 'change_user'),
(63, 'Can delete user', 16, 'delete_user'),
(64, 'Can view user', 16, 'view_user'),
(65, 'Can add content type', 17, 'add_contenttype'),
(66, 'Can change content type', 17, 'change_contenttype'),
(67, 'Can delete content type', 17, 'delete_contenttype'),
(68, 'Can view content type', 17, 'view_contenttype'),
(69, 'Can add session', 18, 'add_session'),
(70, 'Can change session', 18, 'change_session'),
(71, 'Can delete session', 18, 'delete_session'),
(72, 'Can view session', 18, 'view_session'),
(73, 'Can add category name', 19, 'add_categoryname'),
(74, 'Can change category name', 19, 'change_categoryname'),
(75, 'Can delete category name', 19, 'delete_categoryname'),
(76, 'Can view category name', 19, 'view_categoryname');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$Mjd41s8IXKTY$3/t73QZNxmNRrE/pkt43K+sSNr/ARDFfsqlZA91PWtg=', '2020-11-11 11:39:33.060302', 1, 'Shivam', 'Shivam', 'Gupta', 'sg330415@gmail.com', 1, 1, '2020-11-01 06:19:27.000000'),
(22, 'pbkdf2_sha256$216000$EDs7wlJEXmKb$hYShYtihd892cA6Qq4dg0f6r4z4W9aMOpIFJsZ01ZS4=', '2020-11-08 16:59:09.645945', 1, 'Pulkit', 'Pulkit', 'Arora', 'apulkit674@gmail.com', 1, 1, '2020-11-07 05:33:25.000000'),
(24, 'pbkdf2_sha256$216000$pvPJFcYEIer8$ZxdfKxEuECn3b9us0v7gTyGQdx+3ms2jnR7WRW188o8=', '2020-11-08 09:46:23.926120', 0, 'AmitKumar', 'Amit', 'Tyagi', 'aktyagi2807@gmail.com', 1, 1, '2020-11-08 07:49:33.000000'),
(25, 'pbkdf2_sha256$216000$Oh2JTnVfbhYq$IrGn90TujkSo5mfCMzx0ifntHkU7/4UQuICkzFii5SI=', NULL, 0, 'CSYadav', 'Chandrajeet Singh', 'Yadav', 'yashvita09@gmail.com', 1, 1, '2020-11-08 08:07:14.000000'),
(26, 'pbkdf2_sha256$216000$Z0clmwA2L5hu$4aQhh+FEEFVA6aRw2AtiVha6cqlil602SXlzQ2X96rs=', NULL, 0, 'Vikas', 'Vikas', 'Chauhan', 'vc171098@gmail.com', 1, 1, '2020-11-08 08:09:44.000000'),
(27, 'pbkdf2_sha256$216000$sxbhFcb2fTjs$0nfWN5/nFGvUh67uRzzcerUM10QDIBAjpBufPc+fPUQ=', '2020-11-08 08:23:57.766945', 0, 'Jyoti', 'Jyoti', 'Pal', 'jyotipal12341@gmail.com', 1, 1, '2020-11-08 08:11:12.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-11-01 06:48:19.355255', '1', 'Crash Courses', 1, '[{\"added\": {}}]', 19, 1),
(2, '2020-11-01 06:48:29.710437', '2', 'Test Series', 1, '[{\"added\": {}}]', 19, 1),
(3, '2020-11-01 07:21:36.415893', '1', ' ', 1, '[{\"added\": {}}]', 4, 1),
(4, '2020-11-01 07:21:52.992557', '1', 'Shivam', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]', 16, 1),
(5, '2020-11-01 07:22:03.890405', '2', 'Pulkit', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]', 16, 1),
(6, '2020-11-01 07:23:50.292993', '1', '1 Class 10 Crash Course by (Shivam Gupta)', 1, '[{\"added\": {}}]', 2, 1),
(7, '2020-11-01 07:24:02.344543', '1', 'Category object (1)', 1, '[{\"added\": {}}]', 12, 1),
(8, '2020-11-01 07:24:29.167341', '1', '1 Class 10 Crash Course by (Shivam Gupta)', 2, '[{\"changed\": {\"fields\": [\"Description\", \"Mini info\"]}}]', 2, 1),
(9, '2020-11-01 07:27:36.336960', '1', 'Maths Class 10 Crash Course by (Shivam Gupta)', 1, '[{\"added\": {}}]', 6, 1),
(10, '2020-11-01 07:28:15.920670', '2', 'Science Class 10 Crash Course by (Shivam Gupta)', 1, '[{\"added\": {}}]', 6, 1),
(11, '2020-11-01 07:29:18.982196', '2', 'Pulkit Arora', 1, '[{\"added\": {}}]', 4, 1),
(12, '2020-11-01 07:29:42.511045', '3', 'English Class 10 Crash Course by (Pulkit Arora)', 1, '[{\"added\": {}}]', 6, 1),
(13, '2020-11-01 07:31:31.282247', '1', 'Maths Class 10 Crash Course by (Shivam Gupta)', 2, '[{\"changed\": {\"fields\": [\"Display name\"]}}]', 6, 1),
(14, '2020-11-01 07:31:37.350203', '2', 'Science Class 10 Crash Course by (Shivam Gupta)', 2, '[{\"changed\": {\"fields\": [\"Display name\"]}}]', 6, 1),
(15, '2020-11-01 07:31:44.144153', '3', 'English Class 10 Crash Course by (Pulkit Arora)', 2, '[{\"changed\": {\"fields\": [\"Display name\"]}}]', 6, 1),
(16, '2020-11-01 07:43:20.289949', '3', 'Pre-Foundation Courses', 1, '[{\"added\": {}}]', 19, 1),
(17, '2020-11-01 07:43:35.134940', '3', 'Pre-Foundation Courses', 3, '', 19, 1),
(18, '2020-11-01 08:22:49.005668', '4', 'nobita', 3, '', 16, 1),
(19, '2020-11-01 08:23:04.884613', '3', 'shinchan', 3, '', 16, 1),
(20, '2020-11-01 09:10:14.121379', '2', '2 Class 12 Crash Course by (Pulkit Arora)', 1, '[{\"added\": {}}]', 2, 1),
(21, '2020-11-02 10:00:11.978469', '2', 'Category object (2)', 1, '[{\"added\": {}}]', 12, 1),
(22, '2020-11-02 11:48:38.961325', '5', 'mpsShivamGupta', 3, '', 16, 1),
(23, '2020-11-02 11:49:22.642004', '6', 'mpsShivamGupta', 3, '', 16, 1),
(24, '2020-11-02 12:04:56.194158', '8', 'mpsRishabhGogia', 3, '', 16, 1),
(25, '2020-11-02 12:04:56.241155', '7', 'mpsShivamGupta', 3, '', 16, 1),
(26, '2020-11-02 12:08:53.284448', '9', 'mpsShivamGupta', 2, '[{\"changed\": {\"fields\": [\"Active\"]}}]', 16, 1),
(27, '2020-11-02 12:11:03.132465', '10', 'mpsRishabhGogia', 3, '', 16, 1),
(28, '2020-11-02 12:11:03.161879', '9', 'mpsShivamGupta', 3, '', 16, 1),
(29, '2020-11-02 12:12:32.828931', '11', 'mpsShivamGupta', 2, '[{\"changed\": {\"fields\": [\"Active\"]}}]', 16, 1),
(30, '2020-11-02 12:13:37.997956', '11', 'mpsShivamGupta', 2, '[]', 16, 1),
(31, '2020-11-02 12:13:45.523045', '12', 'mpsRishabhGogia', 2, '[{\"changed\": {\"fields\": [\"Active\"]}}]', 16, 1),
(32, '2020-11-02 12:15:40.133227', '12', 'mpsRishabhGogia', 3, '', 16, 1),
(33, '2020-11-02 12:15:40.180297', '11', 'mpsShivamGupta', 3, '', 16, 1),
(34, '2020-11-02 12:21:37.414900', '14', 'mpsRishabhGogia', 3, '', 16, 1),
(35, '2020-11-02 12:21:37.458803', '13', 'mpsShivamGupta', 3, '', 16, 1),
(36, '2020-11-02 12:22:58.563935', '16', 'mpsRishabhGogia', 3, '', 16, 1),
(37, '2020-11-02 12:22:58.602972', '15', 'mpsShivamGupta', 3, '', 16, 1),
(38, '2020-11-02 12:23:54.057425', '11', 'ENCID000002', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 3, 1),
(39, '2020-11-02 12:23:57.062799', '10', 'ENCID000001', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 3, 1),
(40, '2020-11-02 12:24:53.244968', '17', 'mpsShivamGupta', 2, '[{\"changed\": {\"fields\": [\"Active\"]}}]', 16, 1),
(41, '2020-11-02 12:32:07.652169', '18', 'mpsRishabhGogia', 3, '', 16, 1),
(42, '2020-11-02 12:32:07.689023', '17', 'mpsShivamGupta', 3, '', 16, 1),
(43, '2020-11-03 08:57:10.790686', '21', 'mpsRishabhGogia', 2, '[{\"changed\": {\"fields\": [\"Active\"]}}]', 16, 1),
(44, '2020-11-03 08:57:23.404259', '20', 'mpsShivamGupta', 2, '[{\"changed\": {\"fields\": [\"Active\"]}}]', 16, 1),
(45, '2020-11-03 09:06:16.563365', '12', 'ENCID000001', 2, '[{\"changed\": {\"fields\": [\"Course\"]}}]', 3, 1),
(46, '2020-11-03 09:06:20.264338', '13', 'ENCID000002', 2, '[{\"changed\": {\"fields\": [\"Course\"]}}]', 3, 1),
(47, '2020-11-03 09:06:49.609110', '13', 'ENCID000002', 2, '[{\"changed\": {\"fields\": [\"Course\"]}}]', 3, 1),
(48, '2020-11-03 09:06:55.400406', '12', 'ENCID000001', 2, '[{\"changed\": {\"fields\": [\"Course\"]}}]', 3, 1),
(49, '2020-11-03 09:07:09.303717', '2', '2 Class 12 Crash Course by (Shivam Gupta)', 2, '[{\"changed\": {\"fields\": [\"Instructor\"]}}]', 2, 1),
(50, '2020-11-03 09:07:50.215405', '3', 'English Class 10 Crash Course by (Shivam Gupta)', 2, '[{\"changed\": {\"fields\": [\"Instructor\"]}}]', 6, 1),
(51, '2020-11-03 09:08:13.393417', '13', 'ENCID000002', 2, '[]', 3, 1),
(52, '2020-11-03 09:08:16.279488', '12', 'ENCID000001', 2, '[]', 3, 1),
(53, '2020-11-03 09:08:23.776412', '13', 'ENCID000002', 2, '[{\"changed\": {\"fields\": [\"Course\"]}}]', 3, 1),
(54, '2020-11-03 09:08:37.360333', '13', 'ENCID000002', 2, '[{\"changed\": {\"fields\": [\"Course\"]}}]', 3, 1),
(55, '2020-11-03 09:11:18.118154', '1', 'CLASS 10 CHAPTER 3 LINEAR EQATIONS - 2 of (Maths Class 10 Crash Course)', 2, '[{\"changed\": {\"fields\": [\"Course\"]}}]', 7, 1),
(56, '2020-11-03 09:11:24.383109', '1', 'CLASS 10 CHAPTER 3 LINEAR EQATIONS - 2 of (Maths Class 10 Crash Course)', 2, '[]', 7, 1),
(57, '2020-11-03 09:11:46.848940', '1', 'CLASS 10 CHAPTER 3 LINEAR EQATIONS - 2 of (Maths Class 10 Crash Course)', 2, '[{\"changed\": {\"fields\": [\"Course\"]}}]', 7, 1),
(58, '2020-11-03 09:12:23.832666', '19', 'mpsShivam', 3, '', 16, 1),
(59, '2020-11-03 09:12:56.443429', '2', '2 Class 12 Crash Course by (Shivam Gupta)', 2, '[]', 2, 1),
(60, '2020-11-03 09:14:43.822943', '12', 'ENCID000001', 2, '[{\"changed\": {\"fields\": [\"Course\"]}}]', 3, 1),
(61, '2020-11-03 09:15:03.104503', '1', '1 Class 10 Crash Course by (Pulkit Arora)', 2, '[{\"changed\": {\"fields\": [\"Instructor\"]}}]', 2, 1),
(62, '2020-11-03 09:15:18.402393', '12', 'ENCID000001', 2, '[{\"changed\": {\"fields\": [\"Course\"]}}]', 3, 1),
(63, '2020-11-03 09:43:38.046923', '1', '1 Class 10 Crash Course by (Pulkit Arora)', 2, '[{\"changed\": {\"fields\": [\"Intro video\"]}}]', 2, 1),
(64, '2020-11-03 09:44:42.685451', '2', '2 Class 12 Crash Course by (Shivam Gupta)', 2, '[{\"changed\": {\"fields\": [\"Intro video\"]}}]', 2, 1),
(65, '2020-11-03 09:46:26.658814', '1', '1 Class 10 Crash Course by (Pulkit Arora)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 2, 1),
(66, '2020-11-03 09:46:32.879226', '2', '2 Class 12 Crash Course by (Shivam Gupta)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 2, 1),
(67, '2020-11-05 06:14:17.631970', '1', '1 Class 10 Crash Course by (Pulkit Arora)', 2, '[{\"changed\": {\"fields\": [\"Price key\"]}}]', 2, 1),
(68, '2020-11-05 08:57:22.437842', '14', 'ENCID000003', 3, '', 3, 1),
(69, '2020-11-05 09:00:04.506191', '15', 'ENCID000003', 3, '', 3, 1),
(70, '2020-11-05 09:30:48.931067', '4', 'Programming Courses', 1, '[{\"added\": {}}]', 19, 1),
(71, '2020-11-05 09:35:04.995668', '3', '3 Python Programming by (Pulkit Arora)', 1, '[{\"added\": {}}]', 2, 1),
(72, '2020-11-05 09:35:14.994669', '3', 'Category object (3)', 1, '[{\"added\": {}}]', 12, 1),
(73, '2020-11-05 09:36:29.001373', '4', 'beginers by (Shivam Gupta)', 1, '[{\"added\": {}}]', 6, 1),
(74, '2020-11-05 09:37:20.653102', '3', '3 Python Programming by (Pulkit Arora)', 2, '[{\"changed\": {\"fields\": [\"Is popular\"]}}]', 2, 1),
(75, '2020-11-06 07:43:11.655792', '4', 'beginers by (Shivam Gupta)', 2, '[{\"changed\": {\"fields\": [\"Display name\"]}}]', 6, 1),
(76, '2020-11-06 07:43:53.680486', '5', 'intermediate-python by (Shivam Gupta)', 1, '[{\"added\": {}}]', 6, 1),
(77, '2020-11-06 07:44:19.920298', '6', 'advanced-python by (Pulkit Arora)', 1, '[{\"added\": {}}]', 6, 1),
(78, '2020-11-06 07:46:49.889004', '3', '3 Python Programming by (Shivam Gupta)', 2, '[{\"changed\": {\"fields\": [\"Price key\", \"Instructor\"]}}]', 2, 1),
(79, '2020-11-06 07:50:05.286804', '2', 'How To Install Python And Visual Studio Code of (beginers)', 1, '[{\"added\": {}}]', 7, 1),
(80, '2020-11-06 07:54:50.926755', '17', 'ENCID000004', 3, '', 3, 1),
(81, '2020-11-07 05:31:12.762691', '3', '3 Python Programming by (Shivam Gupta)', 3, '', 2, 1),
(82, '2020-11-07 05:31:12.802671', '2', '2 Class 12 Crash Course by (Shivam Gupta)', 3, '', 2, 1),
(83, '2020-11-07 05:31:12.838662', '1', '1 Class 10 Crash Course by (Pulkit Arora)', 3, '', 2, 1),
(84, '2020-11-07 05:31:40.700853', '21', 'mpsRishabhGogia', 3, '', 16, 1),
(85, '2020-11-07 05:31:40.729846', '20', 'mpsShivamGupta', 3, '', 16, 1),
(86, '2020-11-07 05:31:40.770008', '2', 'Pulkit', 3, '', 16, 1),
(87, '2020-11-07 05:32:12.604340', '1', 'Shivam Gupta', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 4, 1),
(88, '2020-11-07 05:33:25.610440', '22', 'Pulkit', 1, '[{\"added\": {}}]', 16, 1),
(89, '2020-11-07 05:34:05.910841', '22', 'Pulkit', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Staff status\", \"Superuser status\"]}}]', 16, 1),
(90, '2020-11-07 05:38:55.098849', '3', 'Pulkit Arora', 1, '[{\"added\": {}}]', 4, 1),
(91, '2020-11-07 05:41:48.010545', '1', 'Shivam Gupta', 2, '[{\"changed\": {\"fields\": [\"Phone\", \"Dob\", \"Address\", \"Qualifications\", \"Year of experience\"]}}]', 4, 1),
(92, '2020-11-07 05:41:54.487926', '1', 'Shivam Gupta', 2, '[]', 4, 1),
(93, '2020-11-07 06:36:09.413002', '4', '4 Python Programming by (Shivam Gupta)', 1, '[{\"added\": {}}]', 2, 1),
(94, '2020-11-07 06:36:56.585671', '7', 'Beginer Python by (Shivam Gupta)', 1, '[{\"added\": {}}]', 6, 1),
(95, '2020-11-07 06:37:11.093036', '8', 'Intermediate Python by (Pulkit Arora)', 1, '[{\"added\": {}}]', 6, 1),
(96, '2020-11-07 06:40:20.771397', '4', 'Category object (4)', 1, '[{\"added\": {}}]', 12, 1),
(97, '2020-11-07 06:40:27.378946', '4', '4 Python Programming by (Shivam Gupta)', 2, '[{\"changed\": {\"fields\": [\"Is popular\"]}}]', 2, 1),
(98, '2020-11-07 07:49:06.255319', '18', 'ENCID000001', 3, '', 3, 1),
(99, '2020-11-07 07:50:34.589212', '4', '4 Python Programming by (Shivam Gupta)', 2, '[{\"changed\": {\"fields\": [\"Message\"]}}]', 2, 1),
(100, '2020-11-07 07:52:08.169541', '4', '4 Python Programming by (Shivam Gupta)', 2, '[{\"changed\": {\"fields\": [\"Message\"]}}]', 2, 1),
(101, '2020-11-07 08:29:49.817447', '4', 'Python Programming by (Shivam Gupta)', 2, '[]', 2, 1),
(102, '2020-11-07 09:05:33.806291', '19', 'ENCID000001', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 3, 1),
(103, '2020-11-07 09:06:41.843479', '19', 'ENCID000001', 2, '[{\"changed\": {\"fields\": [\"Request deactivate\"]}}]', 3, 1),
(104, '2020-11-07 09:07:00.049325', '19', 'ENCID000001', 2, '[{\"changed\": {\"fields\": [\"Request deactivate\"]}}]', 3, 1),
(105, '2020-11-07 09:09:33.085218', '19', 'ENCID000001', 2, '[{\"changed\": {\"fields\": [\"Request deactivate\"]}}]', 3, 1),
(106, '2020-11-07 09:10:03.001753', '19', 'ENCID000001', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 3, 1),
(107, '2020-11-07 09:10:08.088540', '19', 'ENCID000001', 2, '[{\"changed\": {\"fields\": [\"Request deactivate\"]}}]', 3, 1),
(108, '2020-11-07 09:15:52.848776', '4', 'Python Programming by (Shivam Gupta)', 2, '[{\"changed\": {\"fields\": [\"Duration\"]}}]', 2, 1),
(109, '2020-11-07 09:16:38.145036', '19', 'ENCID000001', 2, '[{\"changed\": {\"fields\": [\"Status\", \"Request deactivate\"]}}]', 3, 1),
(110, '2020-11-07 12:21:16.121347', '19', 'ENCID000001', 3, '', 3, 1),
(111, '2020-11-07 13:00:28.024881', '1', 'Review object (1)', 1, '[{\"added\": {}}]', 9, 1),
(112, '2020-11-07 13:04:25.918645', '1', 'Review object (1)', 2, '[{\"changed\": {\"fields\": [\"Is approved\"]}}]', 9, 1),
(113, '2020-11-07 13:05:26.932207', '1', 'Review object (1)', 2, '[{\"changed\": {\"fields\": [\"Is approved\"]}}]', 9, 1),
(114, '2020-11-07 13:05:33.639283', '1', 'Review object (1)', 2, '[{\"changed\": {\"fields\": [\"Is approved\"]}}]', 9, 1),
(115, '2020-11-08 07:49:33.261222', '24', 'AmitKumar', 1, '[{\"added\": {}}]', 16, 1),
(116, '2020-11-08 07:50:22.482013', '24', 'AmitKumar', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Staff status\"]}}]', 16, 1),
(117, '2020-11-08 08:00:23.717573', '4', 'Amit Tyagi', 1, '[{\"added\": {}}]', 4, 1),
(118, '2020-11-08 08:00:36.164062', '4', 'Amit Tyagi', 3, '', 4, 1),
(119, '2020-11-08 08:01:55.077476', '5', 'Amit Tyagi', 1, '[{\"added\": {}}]', 4, 1),
(120, '2020-11-08 08:02:20.340682', '23', 'abc', 3, '', 16, 1),
(121, '2020-11-08 08:05:11.424672', '5', 'Amit Tyagi', 2, '[{\"changed\": {\"fields\": [\"Address\"]}}]', 4, 1),
(122, '2020-11-08 08:07:14.574437', '25', 'CSYadav', 1, '[{\"added\": {}}]', 16, 1),
(123, '2020-11-08 08:08:19.230606', '25', 'CSYadav', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Staff status\"]}}]', 16, 1),
(124, '2020-11-08 08:09:45.088611', '26', 'Vikas', 1, '[{\"added\": {}}]', 16, 1),
(125, '2020-11-08 08:10:23.448098', '26', 'Vikas', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Staff status\"]}}]', 16, 1),
(126, '2020-11-08 08:11:13.214087', '27', 'Jyoti', 1, '[{\"added\": {}}]', 16, 1),
(127, '2020-11-08 08:12:24.109706', '27', 'Jyoti', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Staff status\"]}}]', 16, 1),
(128, '2020-11-08 08:15:28.422224', '6', 'Chandrajeet Singh Yadav', 1, '[{\"added\": {}}]', 4, 1),
(129, '2020-11-08 08:18:36.938567', '7', 'Vikas Chauhan', 1, '[{\"added\": {}}]', 4, 1),
(130, '2020-11-08 08:22:18.397959', '8', 'Jyoti Pal', 1, '[{\"added\": {}}]', 4, 1),
(131, '2020-11-08 08:33:06.647742', '4', 'Python Programming by (Shivam Gupta)', 3, '', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(13, 'admin', 'logentry'),
(15, 'auth', 'group'),
(14, 'auth', 'permission'),
(16, 'auth', 'user'),
(17, 'contenttypes', 'contenttype'),
(12, 'learning_system_app', 'category'),
(19, 'learning_system_app', 'categoryname'),
(1, 'learning_system_app', 'contact'),
(2, 'learning_system_app', 'course'),
(3, 'learning_system_app', 'enrolledcourse'),
(4, 'learning_system_app', 'instructor'),
(11, 'learning_system_app', 'loggedinuser'),
(10, 'learning_system_app', 'questionanswer'),
(9, 'learning_system_app', 'review'),
(5, 'learning_system_app', 'studymaterial'),
(6, 'learning_system_app', 'subject'),
(8, 'learning_system_app', 'user_profile'),
(7, 'learning_system_app', 'video'),
(18, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-11-01 06:17:03.944421'),
(2, 'auth', '0001_initial', '2020-11-01 06:17:06.771955'),
(3, 'admin', '0001_initial', '2020-11-01 06:17:17.903707'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-11-01 06:17:20.252938'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-11-01 06:17:20.412001'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-11-01 06:17:22.326817'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-11-01 06:17:23.401518'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-11-01 06:17:23.531575'),
(9, 'auth', '0004_alter_user_username_opts', '2020-11-01 06:17:23.595554'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-11-01 06:17:24.600575'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-11-01 06:17:24.667597'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-11-01 06:17:24.784623'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-11-01 06:17:24.967582'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-11-01 06:17:25.098571'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-11-01 06:17:25.317567'),
(16, 'auth', '0011_update_proxy_permissions', '2020-11-01 06:17:25.595554'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2020-11-01 06:17:25.993365'),
(18, 'learning_system_app', '0001_initial', '2020-11-01 06:17:31.012705'),
(19, 'sessions', '0001_initial', '2020-11-01 06:17:55.982300'),
(20, 'learning_system_app', '0002_categoryname', '2020-11-01 06:47:50.690750'),
(21, 'learning_system_app', '0003_auto_20201101_1220', '2020-11-01 06:50:39.302065'),
(22, 'learning_system_app', '0004_subject_display_name', '2020-11-01 07:31:14.583767'),
(23, 'learning_system_app', '0005_auto_20201102_1805', '2020-11-02 12:35:52.998959'),
(24, 'learning_system_app', '0006_auto_20201103_1512', '2020-11-03 09:42:16.541310'),
(25, 'learning_system_app', '0007_course_image', '2020-11-03 09:45:53.108246'),
(26, 'learning_system_app', '0008_course_price_key', '2020-11-05 06:13:41.195214'),
(27, 'learning_system_app', '0009_enrolledcourse_date', '2020-11-07 06:29:51.796309'),
(28, 'learning_system_app', '0010_course_message', '2020-11-07 07:46:20.390233'),
(29, 'learning_system_app', '0011_enrolledcourse_request_deactivate', '2020-11-07 08:42:28.009531'),
(30, 'learning_system_app', '0012_enrolledcourse_expiry_date', '2020-11-07 12:20:44.377550'),
(31, 'learning_system_app', '0013_auto_20201111_1425', '2020-11-11 08:55:12.702952');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('2klj26mwhpiv759ckmpmui5t31x621jl', 'eyJfcGFzc3dvcmRfcmVzZXRfdG9rZW4iOiJhZDBzdzYtODY1MTFiZjdlNWI2YjY2Mjg3MDQ4ZGEzMmNkYzZlZjIifQ:1kbfQ4:qTI5PI30APfhHp_wKnZZ7NgTbavcvB5NvyvR9l4xPhE', '2020-11-22 07:47:24.414297'),
('77h02nax2ytylslc20dtfxlt2mkphfjq', '.eJxVjMEOwiAQRP-FsyFQKLt49N5vIJRdpGpoUtqT8d9tkx70NMm8N_MWIW5rCVvjJUwkrkKLy283xvTkegB6xHqfZZrrukyjPBR50iaHmfh1O92_gxJb2de9TcoCI_dKodHItCdAVp0nnb11hjB2fuTsTAJFBJh87o1BBxY1iM8XvlI21Q:1kcoTN:dW3C5g47s4_wZwpoIM2NP3fBv-bu2Wy2oNbGQ6gq1B0', '2020-11-25 11:39:33.071937'),
('7b2yi8ugr0ay1pn8r97jr5c2r17fy6ib', 'eyJfcGFzc3dvcmRfcmVzZXRfdG9rZW4iOiJhZDBzdzYtODY1MTFiZjdlNWI2YjY2Mjg3MDQ4ZGEzMmNkYzZlZjIifQ:1kbfQ5:KU1MGcOiZXbDQE1X0qexj_w0VpllrVSfQik9eDwz9xY', '2020-11-22 07:47:25.549877'),
('7vpjnl0afptheisr86cy3jq5ntp4tc4h', 'eyJfcGFzc3dvcmRfcmVzZXRfdG9rZW4iOiJhZDB5ZHAtNzZmNmIwMmY2ZWVmN2MxMTM3ODVkYjhiOGVkNTYyZGMifQ:1kbhGf:99GrJ5kQEgEUgA2sJs310ZVxIzIkkWLW5qJ0_QTwoSc', '2020-11-22 09:45:49.128246'),
('b97298utk07dwwe9h97lx0e5tw1nz97p', 'eyJfcGFzc3dvcmRfcmVzZXRfdG9rZW4iOiJhZDB5ZHAtNzZmNmIwMmY2ZWVmN2MxMTM3ODVkYjhiOGVkNTYyZGMifQ:1kbhGe:mC7HTZJPI_oqKlH1JPRdnNxaDg52Q_Vwrhzn_Qg6U4U', '2020-11-22 09:45:48.890393'),
('knv447mifj403z1kpp1zffqmmys8tffj', '.eJxVjsEOwiAQRP-FszYUZKEevfsNhGUXWzWlgRpjjP8uTbx4nXlvMm_hl1DrMxfyhSuvfs03nsVRBJIvWvYWEqBUCZiTjX2vrTOEDh2TAUVR7IQPj3X0j8rFT9RMdfgPMcQ2uTV0DfMldzHPa5mw25Du19bunInvpx_7NzCGOjabcSCGHtmQTYqUJGUwDeyQB8s6JG1cbB-1kwBRY2PAHkCjdoal0-LzBaZFTd0:1kbhHD:fd8H4_o0n7EedX0-HyiYZkQaIcTwJPEHw3nA_cr9KzQ', '2020-11-22 09:46:23.930363'),
('u9k559x14q2g8uzx0vnwej0715hkjgce', '.eJxVjEEOwiAQRe_C2hCGAkWX7j0DGYZBqgaS0q6Md7dNutDtf-_9twi4LiWsnecwJXERWonT7xiRnlx3kh5Y701Sq8s8Rbkr8qBd3lri1_Vw_w4K9rLV3sOgiclFn-OYmY2LyrrIOmk3MhACYGbaKCrjgYwbUgY_WCI4Jys-XyozOO4:1kawaS:wqDhuEmf5M2GgacC_Kr4XSpwKf0xMx9XJ1Oti8ByWVs', '2020-11-20 07:55:08.561116');

-- --------------------------------------------------------

--
-- Table structure for table `learning_system_app_category`
--

CREATE TABLE `learning_system_app_category` (
  `id` int(11) NOT NULL,
  `category_name_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `learning_system_app_categoryname`
--

CREATE TABLE `learning_system_app_categoryname` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_system_app_categoryname`
--

INSERT INTO `learning_system_app_categoryname` (`id`, `name`) VALUES
(1, 'Crash Courses'),
(2, 'Test Series'),
(4, 'Programming Courses');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_system_app_contact`
--

INSERT INTO `learning_system_app_contact` (`id`, `name`, `phone`, `email`, `message`) VALUES
(1, 'Pulkit Arora', '7065971154', 'apulkit674@gmail.com', 'HI'),
(2, 'Pulkit', '7065971154', 'sg330415@gmail.com', 'HI'),
(3, 'Pulkit', '7065971154', 'apulkit674@gmail.com', 'Hi');

-- --------------------------------------------------------

--
-- Table structure for table `learning_system_app_course`
--

CREATE TABLE `learning_system_app_course` (
  `id` int(11) NOT NULL,
  `course_name` varchar(300) NOT NULL,
  `price` double NOT NULL,
  `special_price` double NOT NULL,
  `description` longtext NOT NULL,
  `mini_info` longtext,
  `duration` varchar(50) NOT NULL,
  `language` varchar(50) NOT NULL,
  `prequisites` varchar(50) NOT NULL,
  `has_certificate` tinyint(1) NOT NULL,
  `is_popular` tinyint(1) NOT NULL,
  `instructor_id` int(11) NOT NULL,
  `intro_video` varchar(300) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `price_key` varchar(200) DEFAULT NULL,
  `message` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `learning_system_app_enrolledcourse`
--

CREATE TABLE `learning_system_app_enrolledcourse` (
  `id` int(11) NOT NULL,
  `enroll_id` varchar(30) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` datetime(6) DEFAULT NULL,
  `request_deactivate` int(11) NOT NULL,
  `expiry_date` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_system_app_instructor`
--

INSERT INTO `learning_system_app_instructor` (`id`, `instructor_id`, `phone`, `image`, `image_qr`, `dob`, `address`, `state`, `city`, `zip_code`, `qualifications`, `year_of_experience`, `user_id`) VALUES
(1, '1', '8800514445', 'GUPTA_SHIVAM.png', 'qr_code1_Mm36D0V.png', '2000-03-05', '358, New Layal Pur, East Krishna Nagar, Delhi-110051', 'Delhi', 'Delhi', 'Delhi', 'BCA, MCA', '2', 1),
(3, '2', '7065971154', 'ARORA_PULKIT.jpeg', 'qr_code2.png', '2000-06-10', 'Flat No L-5 Tower-B Himalaya Tanishq Raj Nagar Extension Ghaziabad', 'Uttar Pradesh', 'Ghaziabad', '201017', 'BCA, MCA', '2', 22),
(5, '3', '9717838491', 'KUMAR_AMIT_sDRe5qY.png', 'qr_code3_eij9ztM.png', '1980-04-01', 'House No. 1, Behind B-56 HIG, Raj Nagar Sector-23', 'Uttar Pradesh', 'Ghaziabad', '201002', 'Maths', '10', 24),
(6, '4', 'Not Availabale', 'YADAV_CS.jpeg', 'qr_code4.png', '1975-07-30', 'Not Availabale', 'Uttar Pradesh', 'Ghaziabad', '201002', 'English', '8', 25),
(7, '5', '9582094909', 'CHAUHAN_VIKAS.png', 'qr_code5.png', '1998-10-17', 'G-167/D, Sector-23, Sanjay Nagar', 'Uttar Pradesh', 'Ghaziabad', '201002', 'Accountacy', '3', 26),
(8, '6', 'Not Available', 'PAL_JYOTI.png', 'qr_code6.png', '2000-10-19', '142, Sector-4, Raj Nagar', 'Uttar Pradesh', 'Ghaziabad', '201002', 'Science(Physics, Chemistry, Biology)', '3', 27);

-- --------------------------------------------------------

--
-- Table structure for table `learning_system_app_loggedinuser`
--

CREATE TABLE `learning_system_app_loggedinuser` (
  `id` int(11) NOT NULL,
  `session_key` varchar(32) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_system_app_loggedinuser`
--

INSERT INTO `learning_system_app_loggedinuser` (`id`, `session_key`, `user_id`) VALUES
(80, 'knv447mifj403z1kpp1zffqmmys8tffj', 24),
(85, '77h02nax2ytylslc20dtfxlt2mkphfjq', 1);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `learning_system_app_subject`
--

CREATE TABLE `learning_system_app_subject` (
  `id` int(11) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `course_id` int(11) NOT NULL,
  `instructor_id` int(11) NOT NULL,
  `display_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `course_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `is_free` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  ADD KEY `learning_system_app__course_id_9d3f1bbd_fk_learning_` (`course_id`),
  ADD KEY `learning_system_app_category_category_name_id_458be2e2` (`category_name_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `learning_system_app_category`
--
ALTER TABLE `learning_system_app_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `learning_system_app_categoryname`
--
ALTER TABLE `learning_system_app_categoryname`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `learning_system_app_contact`
--
ALTER TABLE `learning_system_app_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `learning_system_app_course`
--
ALTER TABLE `learning_system_app_course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `learning_system_app_enrolledcourse`
--
ALTER TABLE `learning_system_app_enrolledcourse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `learning_system_app_instructor`
--
ALTER TABLE `learning_system_app_instructor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `learning_system_app_loggedinuser`
--
ALTER TABLE `learning_system_app_loggedinuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;
--
-- AUTO_INCREMENT for table `learning_system_app_questionanswer`
--
ALTER TABLE `learning_system_app_questionanswer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `learning_system_app_review`
--
ALTER TABLE `learning_system_app_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `learning_system_app_studymaterial`
--
ALTER TABLE `learning_system_app_studymaterial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `learning_system_app_subject`
--
ALTER TABLE `learning_system_app_subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `learning_system_app_user_profile`
--
ALTER TABLE `learning_system_app_user_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `learning_system_app_video`
--
ALTER TABLE `learning_system_app_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
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
