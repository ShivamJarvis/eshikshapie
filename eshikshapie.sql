-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2020 at 10:20 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
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
(1, 'pbkdf2_sha256$216000$gM0ONSynpTy7$jyMvKeNMTYkGPNnlOdDcpAO0XGvb7bKla1+N6koLSNc=', '2020-11-05 09:00:19.721832', 1, 'Shivam', 'Shivam', 'Gupta', 'sg330415@gmail.com', 1, 1, '2020-11-01 06:19:27.000000'),
(2, 'pbkdf2_sha256$216000$GsTaXvcx1Vqi$dkiiBQLWdwKywPOzz7lBBPPV2SscrS7B1cB5Adb0cXo=', NULL, 1, 'Pulkit', 'Pulkit', 'Arora', 'apulkit674@gmail.com', 1, 1, '2020-11-01 06:20:02.000000'),
(20, 'pbkdf2_sha256$216000$AcCCTUf2L9UC$EataHN5mDt7Az5i4oT8SrUD71hDUwkAzi2V/VFVmQOA=', '2020-11-05 09:00:44.750064', 0, 'mpsShivamGupta', 'Shivam', 'Gupta', 'shivamgupta812367@gmail.com', 0, 1, '2020-11-03 08:55:59.000000'),
(21, 'pbkdf2_sha256$216000$VwBFjbp3PJ4h$EhDuZbqFKqh9d7Kr4smGTEHMkAhBRDKhMTnjl07Vzvk=', NULL, 0, 'mpsRishabhGogia', 'Rishabh', 'Gogia', 'jarvis12g@gmail.com', 0, 1, '2020-11-03 08:56:04.000000');

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
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
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
(69, '2020-11-05 09:00:04.506191', '15', 'ENCID000003', 3, '', 3, 1);

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
(26, 'learning_system_app', '0008_course_price_key', '2020-11-05 06:13:41.195214');

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
('4p2mdoy6us7xje1ya6cgecwo0dkp7w8a', '.eJxVjEEOwiAQRe_C2hCGAkWX7j0DGYZBqgaS0q6Md7dNutDtf-_9twi4LiWsnecwJXERWonT7xiRnlx3kh5Y701Sq8s8Rbkr8qBd3lri1_Vw_w4K9rLV3sOgiclFn-OYmY2LyrrIOmk3MhACYGbaKCrjgYwbUgY_WCI4Jys-XyozOO4:1kab8O:UCwdCsMYGVCE-XfUB3quuFnU56hfXu9POuHCyE3_g9A', '2020-11-19 09:00:44.848978');

-- --------------------------------------------------------

--
-- Table structure for table `learning_system_app_category`
--

CREATE TABLE `learning_system_app_category` (
  `id` int(11) NOT NULL,
  `category_name_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_system_app_category`
--

INSERT INTO `learning_system_app_category` (`id`, `category_name_id`, `course_id`) VALUES
(1, 1, 1),
(2, 1, 2);

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
(2, 'Test Series');

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

-- --------------------------------------------------------

--
-- Table structure for table `learning_system_app_course`
--

CREATE TABLE `learning_system_app_course` (
  `id` int(11) NOT NULL,
  `course_name` varchar(300) NOT NULL,
  `curriculum` varchar(200) DEFAULT NULL,
  `price` double NOT NULL,
  `special_price` double NOT NULL,
  `description` longtext NOT NULL,
  `mini_info` longtext DEFAULT NULL,
  `duration` varchar(50) NOT NULL,
  `language` varchar(50) NOT NULL,
  `prequisites` varchar(50) NOT NULL,
  `has_certificate` tinyint(1) NOT NULL,
  `is_popular` tinyint(1) NOT NULL,
  `instructor_id` int(11) NOT NULL,
  `intro_video` varchar(300) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `price_key` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_system_app_course`
--

INSERT INTO `learning_system_app_course` (`id`, `course_name`, `curriculum`, `price`, `special_price`, `description`, `mini_info`, `duration`, `language`, `prequisites`, `has_certificate`, `is_popular`, `instructor_id`, `intro_video`, `image`, `price_key`) VALUES
(1, 'Class 10 Crash Course', NULL, 4000, 3500, 'This crash course for class 10 students who want to score more than 95% in Board Exams.', 'This crash course for class 10 students who want to score more than 95% in Board Exams.', 'Complete', 'Hindi/English', 'No', 1, 1, 2, 'https://www.youtube.com/embed/dKIYUWrSc-0', 'corfor6.jpg', 'price_1Hk1YCEJThTwkNoP8krnIHM3'),
(2, 'Class 12 Crash Course', NULL, 4500, 4000, 'This Course for class 12 Students who wants to score more than 95% marks in boards', 'This Course for class 12 Students who wants to score more than 95% marks in boards', 'Complete', 'English/Hindi', 'No', 0, 1, 1, 'https://www.youtube.com/embed/6G5Qr5eo-pk', 'corfor9.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `learning_system_app_enrolledcourse`
--

CREATE TABLE `learning_system_app_enrolledcourse` (
  `id` int(11) NOT NULL,
  `enroll_id` varchar(30) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_system_app_enrolledcourse`
--

INSERT INTO `learning_system_app_enrolledcourse` (`id`, `enroll_id`, `status`, `course_id`, `user_id`) VALUES
(12, 'ENCID000001', 1, 2, 20),
(13, 'ENCID000002', 1, 2, 21);

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
(1, '1', '123456789', 'director.jpg', 'qr_code1.png', '2020-11-01', 'Delhi', 'Delhi', 'Delhi', 'Delhi', 'BCA', '4', 1),
(2, '2', '123456789', 'banner1.jpg', 'qr_code2.png', '2020-11-01', 'Ghaziabad', 'Ghaziabad', 'Ghaziabad', '201016', 'BCA', '3', 2);

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
(38, '4p2mdoy6us7xje1ya6cgecwo0dkp7w8a', 20);

-- --------------------------------------------------------

--
-- Table structure for table `learning_system_app_questionanswer`
--

CREATE TABLE `learning_system_app_questionanswer` (
  `id` int(11) NOT NULL,
  `question` longtext NOT NULL,
  `answer` longtext DEFAULT NULL,
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

--
-- Dumping data for table `learning_system_app_subject`
--

INSERT INTO `learning_system_app_subject` (`id`, `subject_name`, `course_id`, `instructor_id`, `display_name`) VALUES
(1, 'Maths Class 10 Crash Course', 1, 1, 'Mathematics'),
(2, 'Science Class 10 Crash Course', 1, 1, 'Science'),
(3, 'English Class 10 Crash Course', 1, 1, 'English');

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

--
-- Dumping data for table `learning_system_app_user_profile`
--

INSERT INTO `learning_system_app_user_profile` (`id`, `student_id`, `phone`, `image`, `image_qr`, `school_name`, `dob`, `session`, `mother_name`, `father_name`, `address`, `state`, `city`, `zip_code`, `user_id`) VALUES
(16, 'ESKP000002', '1234567890', '', 'qr_codeESKP000002_EfrN0ZP.png', 'Modern Public School', '2000-05-03', '', 'XYZ', 'ABC', 'Delhi', 'Delhi', 'Delhi', '110051', 20),
(17, 'ESKP000003', '1234567891', '', 'qr_codeESKP000003.png', 'Modern Public School', '2000-03-05', '', 'XYZ', 'ABC', 'Delhi', 'Delhi', 'Delhi', '110051', 21);

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
  `subject_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_system_app_video`
--

INSERT INTO `learning_system_app_video` (`id`, `title`, `url`, `description`, `resources`, `course_id`, `subject_id`) VALUES
(1, 'CLASS 10 CHAPTER 3 LINEAR EQATIONS - 2', 'https://www.youtube.com/embed/dKIYUWrSc-0', 'This Video on CLASS 10 CHAPTER 3 LINEAR EQATIONS - 2', NULL, 1, 1);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `learning_system_app_category`
--
ALTER TABLE `learning_system_app_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `learning_system_app_categoryname`
--
ALTER TABLE `learning_system_app_categoryname`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `learning_system_app_contact`
--
ALTER TABLE `learning_system_app_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `learning_system_app_course`
--
ALTER TABLE `learning_system_app_course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `learning_system_app_enrolledcourse`
--
ALTER TABLE `learning_system_app_enrolledcourse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `learning_system_app_instructor`
--
ALTER TABLE `learning_system_app_instructor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `learning_system_app_loggedinuser`
--
ALTER TABLE `learning_system_app_loggedinuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `learning_system_app_user_profile`
--
ALTER TABLE `learning_system_app_user_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `learning_system_app_video`
--
ALTER TABLE `learning_system_app_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
