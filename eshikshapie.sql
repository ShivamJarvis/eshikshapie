-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2020 at 09:25 AM
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
(5, 'Can add user_profile', 2, 'add_user_profile'),
(6, 'Can change user_profile', 2, 'change_user_profile'),
(7, 'Can delete user_profile', 2, 'delete_user_profile'),
(8, 'Can view user_profile', 2, 'view_user_profile'),
(9, 'Can add instructor', 3, 'add_instructor'),
(10, 'Can change instructor', 3, 'change_instructor'),
(11, 'Can delete instructor', 3, 'delete_instructor'),
(12, 'Can view instructor', 3, 'view_instructor'),
(13, 'Can add course', 4, 'add_course'),
(14, 'Can change course', 4, 'change_course'),
(15, 'Can delete course', 4, 'delete_course'),
(16, 'Can view course', 4, 'view_course'),
(17, 'Can add enrolled course', 5, 'add_enrolledcourse'),
(18, 'Can change enrolled course', 5, 'change_enrolledcourse'),
(19, 'Can delete enrolled course', 5, 'delete_enrolledcourse'),
(20, 'Can view enrolled course', 5, 'view_enrolledcourse'),
(21, 'Can add review', 6, 'add_review'),
(22, 'Can change review', 6, 'change_review'),
(23, 'Can delete review', 6, 'delete_review'),
(24, 'Can view review', 6, 'view_review'),
(25, 'Can add video', 7, 'add_video'),
(26, 'Can change video', 7, 'change_video'),
(27, 'Can delete video', 7, 'delete_video'),
(28, 'Can view video', 7, 'view_video'),
(29, 'Can add question answer', 8, 'add_questionanswer'),
(30, 'Can change question answer', 8, 'change_questionanswer'),
(31, 'Can delete question answer', 8, 'delete_questionanswer'),
(32, 'Can view question answer', 8, 'view_questionanswer'),
(33, 'Can add subject', 9, 'add_subject'),
(34, 'Can change subject', 9, 'change_subject'),
(35, 'Can delete subject', 9, 'delete_subject'),
(36, 'Can view subject', 9, 'view_subject'),
(37, 'Can add log entry', 10, 'add_logentry'),
(38, 'Can change log entry', 10, 'change_logentry'),
(39, 'Can delete log entry', 10, 'delete_logentry'),
(40, 'Can view log entry', 10, 'view_logentry'),
(41, 'Can add permission', 11, 'add_permission'),
(42, 'Can change permission', 11, 'change_permission'),
(43, 'Can delete permission', 11, 'delete_permission'),
(44, 'Can view permission', 11, 'view_permission'),
(45, 'Can add group', 12, 'add_group'),
(46, 'Can change group', 12, 'change_group'),
(47, 'Can delete group', 12, 'delete_group'),
(48, 'Can view group', 12, 'view_group'),
(49, 'Can add user', 13, 'add_user'),
(50, 'Can change user', 13, 'change_user'),
(51, 'Can delete user', 13, 'delete_user'),
(52, 'Can view user', 13, 'view_user'),
(53, 'Can add content type', 14, 'add_contenttype'),
(54, 'Can change content type', 14, 'change_contenttype'),
(55, 'Can delete content type', 14, 'delete_contenttype'),
(56, 'Can view content type', 14, 'view_contenttype'),
(57, 'Can add session', 15, 'add_session'),
(58, 'Can change session', 15, 'change_session'),
(59, 'Can delete session', 15, 'delete_session'),
(60, 'Can view session', 15, 'view_session'),
(61, 'Can add logged in user', 16, 'add_loggedinuser'),
(62, 'Can change logged in user', 16, 'change_loggedinuser'),
(63, 'Can delete logged in user', 16, 'delete_loggedinuser'),
(64, 'Can view logged in user', 16, 'view_loggedinuser'),
(65, 'Can add category', 17, 'add_category'),
(66, 'Can change category', 17, 'change_category'),
(67, 'Can delete category', 17, 'delete_category'),
(68, 'Can view category', 17, 'view_category');

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
(1, 'pbkdf2_sha256$216000$M2ajmfwunzju$2a5aG0XQfZXjT4igBWRTPurtuXbo3uMR7uh0b9th32g=', '2020-10-21 06:25:45.861276', 1, 'admin', '', '', 'spdevelopers2000@gmail.com', 1, 1, '2020-10-17 07:54:28.361793'),
(2, 'pbkdf2_sha256$216000$kdvtkHgHUQ4x$WIyEub5Nux93g6J5ge23BXpc7l8JEIN82tsHBCqDl+o=', '2020-10-20 15:24:17.631326', 1, 'Shivam', 'Shivam', 'Gupta', 'sg330415@gmail.com', 1, 1, '2020-10-17 07:56:32.000000'),
(3, 'pbkdf2_sha256$216000$EihILIlIV9pn$eyGjN62mA2rq85Rib689JLbMsBIvNXcyftdF2Ifv4cs=', '2020-10-20 15:21:12.925256', 0, 'Pulkit', 'Pulkit', 'Arora', 'apulkit674@gmail.com', 1, 1, '2020-10-17 08:04:46.000000'),
(4, 'pbkdf2_sha256$216000$gO6iDpDhvo3S$h1PrD9oXo9UrMjTjJsX/Pv/Z5xOoi7zIfa5fQKJXgoM=', '2020-10-20 15:27:57.386060', 0, 'shinchan', 'Shinchan', 'Nohara', 'jarvis12g@gmail.com', 0, 1, '2020-10-17 08:10:47.353673'),
(5, 'pbkdf2_sha256$216000$UsXnJledoM3V$ZOkeR1uL6XzYfv+PnnbDb1N7TM12yRd2qdYaVOnOM9Y=', '2020-10-17 10:04:59.908220', 0, 'himawari', 'Himawari', 'Nohara', 'shivamgupta812367@gmail.com', 0, 1, '2020-10-17 10:02:36.582852'),
(7, 'pbkdf2_sha256$216000$zU2dUYEDmUQ5$ALJGvPxKI+WIsbDskHHnccgoUzXHuRy2VKpG7rainjg=', '2020-10-20 07:29:23.920302', 0, 'kartik', 'Kartik', 'Gupta', 'rg63026@gmail.com', 0, 1, '2020-10-20 07:12:05.696239'),
(8, 'pbkdf2_sha256$216000$c6sAP4yC0wIm$8PMlvT4eN1VeQD0Ncvv0c2Flz5b8ccwaCdeULquCUs0=', NULL, 0, 'abc', 'Kartik', 'Gupta', 'apulkit672@gmail.com', 0, 0, '2020-10-20 15:30:20.201957');

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
(1, '2020-10-17 07:56:32.713168', '2', 'Shivam', 1, '[{\"added\": {}}]', 13, 1),
(2, '2020-10-17 07:56:51.737933', '2', 'Shivam', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Staff status\"]}}]', 13, 1),
(3, '2020-10-17 07:58:56.643201', '1', 'Shivam Gupta', 1, '[{\"added\": {}}]', 3, 1),
(4, '2020-10-17 07:59:02.878506', '1', 'Shivam Gupta', 2, '[]', 3, 1),
(5, '2020-10-17 08:01:00.658605', '1', '1 Pre-Foundation Online Course by (Shivam Gupta)', 1, '[{\"added\": {}}]', 4, 1),
(6, '2020-10-17 08:01:40.588698', '1', 'Mathematics by (Shivam Gupta)', 1, '[{\"added\": {}}]', 9, 1),
(7, '2020-10-17 08:03:10.675463', '2', 'Hindi by (Shivam Gupta)', 1, '[{\"added\": {}}]', 9, 1),
(8, '2020-10-17 08:03:26.134655', '3', 'English by (Shivam Gupta)', 1, '[{\"added\": {}}]', 9, 1),
(9, '2020-10-17 08:04:46.916587', '3', 'Pulkit', 1, '[{\"added\": {}}]', 13, 1),
(10, '2020-10-17 08:05:06.391455', '3', 'Pulkit', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Staff status\"]}}]', 13, 1),
(11, '2020-10-17 08:07:16.065493', '2', 'Pulkit Arora', 1, '[{\"added\": {}}]', 3, 1),
(12, '2020-10-17 08:07:37.268665', '4', 'Science by (Pulkit Arora)', 1, '[{\"added\": {}}]', 9, 1),
(13, '2020-10-17 09:07:55.453694', '2', 'Shivam', 2, '[{\"changed\": {\"fields\": [\"Superuser status\"]}}]', 13, 1),
(14, '2020-10-17 09:10:21.674294', '2', 'Pulkit Arora', 2, '[]', 3, 2),
(15, '2020-10-17 09:10:25.129873', '1', 'Shivam Gupta', 2, '[]', 3, 2),
(16, '2020-10-18 06:21:09.257124', '5', 'Every Sniper Lover Will Watch This Epic Gameplay In PUBG Mobile | Solo Vs Squad of (Science)', 1, '[{\"added\": {}}]', 7, 2),
(17, '2020-10-18 06:26:56.016461', '5', 'Every Sniper Lover Will Watch This Epic Gameplay In PUBG Mobile | Solo Vs Squad of (Science)', 2, '[{\"changed\": {\"fields\": [\"Course\"]}}]', 7, 2),
(18, '2020-10-18 06:32:42.456429', '2', 'QuestionAnswer object (2)', 2, '[{\"changed\": {\"fields\": [\"Subject\"]}}]', 8, 2),
(19, '2020-10-18 06:32:47.570590', '3', 'QuestionAnswer object (3)', 2, '[{\"changed\": {\"fields\": [\"Subject\"]}}]', 8, 2),
(20, '2020-10-18 06:32:53.144482', '4', 'QuestionAnswer object (4)', 2, '[{\"changed\": {\"fields\": [\"Subject\"]}}]', 8, 2),
(21, '2020-10-18 06:44:00.072650', '2', '2 Foundation Online Course by (Shivam Gupta)', 1, '[{\"added\": {}}]', 4, 2),
(22, '2020-10-18 06:45:31.841814', '6', 'How To Make A Website Using HTML CSS Bootstrap | Complete Website Design Tutorial of (English)', 1, '[{\"added\": {}}]', 7, 2),
(23, '2020-10-18 06:47:16.646138', '5', 'English (Foundation) by (Shivam Gupta)', 1, '[{\"added\": {}}]', 9, 2),
(24, '2020-10-18 06:47:30.558283', '6', 'How To Make A Website Using HTML CSS Bootstrap | Complete Website Design Tutorial of (English (Foundation))', 2, '[{\"changed\": {\"fields\": [\"Subject\"]}}]', 7, 2),
(25, '2020-10-18 06:48:17.283160', '9', 'ENCID000005', 3, '', 5, 2),
(26, '2020-10-18 06:58:25.551600', '6', 'Science (Foundation) by (Pulkit Arora)', 1, '[{\"added\": {}}]', 9, 1),
(27, '2020-10-20 07:08:49.695112', '6', 'kartik', 3, '', 13, 1),
(28, '2020-10-21 06:26:42.532540', '1', 'Category object (1)', 1, '[{\"added\": {}}]', 17, 1),
(29, '2020-10-21 06:26:50.465642', '2', 'Category object (2)', 1, '[{\"added\": {}}]', 17, 1),
(30, '2020-10-21 07:00:21.452147', '3', 'Category object (3)', 1, '[{\"added\": {}}]', 17, 1),
(31, '2020-10-21 07:00:26.116988', '4', 'Category object (4)', 1, '[{\"added\": {}}]', 17, 1),
(32, '2020-10-21 07:00:30.022204', '5', 'Category object (5)', 1, '[{\"added\": {}}]', 17, 1),
(33, '2020-10-21 07:00:41.541929', '6', 'Category object (6)', 1, '[{\"added\": {}}]', 17, 1),
(34, '2020-10-21 07:00:50.683444', '7', 'Category object (7)', 1, '[{\"added\": {}}]', 17, 1),
(35, '2020-10-21 07:04:16.554655', '7', 'Category object (7)', 3, '', 17, 1),
(36, '2020-10-21 07:04:16.625104', '6', 'Category object (6)', 3, '', 17, 1),
(37, '2020-10-21 07:04:16.665574', '5', 'Category object (5)', 3, '', 17, 1),
(38, '2020-10-21 07:04:16.715459', '4', 'Category object (4)', 3, '', 17, 1),
(39, '2020-10-21 07:04:16.812323', '3', 'Category object (3)', 3, '', 17, 1);

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
(10, 'admin', 'logentry'),
(12, 'auth', 'group'),
(11, 'auth', 'permission'),
(13, 'auth', 'user'),
(14, 'contenttypes', 'contenttype'),
(17, 'learning_system_app', 'category'),
(1, 'learning_system_app', 'contact'),
(4, 'learning_system_app', 'course'),
(5, 'learning_system_app', 'enrolledcourse'),
(3, 'learning_system_app', 'instructor'),
(16, 'learning_system_app', 'loggedinuser'),
(8, 'learning_system_app', 'questionanswer'),
(6, 'learning_system_app', 'review'),
(9, 'learning_system_app', 'subject'),
(2, 'learning_system_app', 'user_profile'),
(7, 'learning_system_app', 'video'),
(15, 'sessions', 'session');

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
(1, 'contenttypes', '0001_initial', '2020-10-17 07:51:46.672789'),
(2, 'auth', '0001_initial', '2020-10-17 07:51:51.740399'),
(3, 'admin', '0001_initial', '2020-10-17 07:52:13.901189'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-10-17 07:52:18.134704'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-10-17 07:52:18.300937'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-10-17 07:52:20.798559'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-10-17 07:52:22.673044'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-10-17 07:52:23.022958'),
(9, 'auth', '0004_alter_user_username_opts', '2020-10-17 07:52:23.372222'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-10-17 07:52:24.759037'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-10-17 07:52:24.893442'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-10-17 07:52:25.111971'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-10-17 07:52:26.042920'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-10-17 07:52:26.594101'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-10-17 07:52:26.846104'),
(16, 'auth', '0011_update_proxy_permissions', '2020-10-17 07:52:26.910078'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2020-10-17 07:52:27.413013'),
(18, 'learning_system_app', '0001_initial', '2020-10-17 07:52:28.137753'),
(19, 'learning_system_app', '0002_user_profile', '2020-10-17 07:52:28.922046'),
(20, 'learning_system_app', '0003_auto_20201012_1551', '2020-10-17 07:52:32.080058'),
(21, 'learning_system_app', '0004_user_profile_image_qr', '2020-10-17 07:52:32.654863'),
(22, 'learning_system_app', '0005_auto_20201013_1452', '2020-10-17 07:52:32.731854'),
(23, 'learning_system_app', '0006_course_instructor', '2020-10-17 07:52:34.034801'),
(24, 'learning_system_app', '0007_course_image', '2020-10-17 07:52:40.629964'),
(25, 'learning_system_app', '0008_course_curriculum', '2020-10-17 07:52:40.933135'),
(26, 'learning_system_app', '0009_course_is_popular', '2020-10-17 07:52:42.192696'),
(27, 'learning_system_app', '0010_auto_20201014_1145', '2020-10-17 07:52:43.759534'),
(28, 'learning_system_app', '0011_enrolledcourse', '2020-10-17 07:52:44.864440'),
(29, 'learning_system_app', '0012_review', '2020-10-17 07:52:49.910102'),
(30, 'learning_system_app', '0013_auto_20201014_1349', '2020-10-17 07:52:59.081465'),
(31, 'learning_system_app', '0014_auto_20201014_1350', '2020-10-17 07:53:02.337676'),
(32, 'learning_system_app', '0015_auto_20201014_1352', '2020-10-17 07:53:05.539047'),
(33, 'learning_system_app', '0016_enrolledcourse_status', '2020-10-17 07:53:05.904746'),
(34, 'learning_system_app', '0017_video', '2020-10-17 07:53:06.337451'),
(35, 'learning_system_app', '0018_video_resources', '2020-10-17 07:53:09.930438'),
(36, 'learning_system_app', '0019_questionanswer', '2020-10-17 07:53:11.156456'),
(37, 'learning_system_app', '0020_subject', '2020-10-17 07:53:19.713558'),
(38, 'learning_system_app', '0021_auto_20201015_1241', '2020-10-17 07:53:27.137721'),
(39, 'sessions', '0001_initial', '2020-10-17 07:53:28.928785'),
(40, 'learning_system_app', '0022_review_course', '2020-10-17 09:46:43.046670'),
(41, 'learning_system_app', '0023_questionanswer_course', '2020-10-18 05:51:03.603308'),
(42, 'learning_system_app', '0024_auto_20201018_1154', '2020-10-18 06:24:47.177265'),
(43, 'learning_system_app', '0025_questionanswer_subject', '2020-10-18 06:32:28.861574'),
(44, 'learning_system_app', '0026_loggedinuser', '2020-10-19 08:28:27.540042'),
(45, 'learning_system_app', '0027_category', '2020-10-21 06:25:27.127257');

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
('2ftqdjfoeh9soiyuqqt0dstzau231jqc', '.eJxVjDsOwjAQRO_iGln-O6Kk5wzWOruLA8iW4qSKuDuJlAKaKea9mU0kWJeS1k5zmlBchRaX3y7D-KJ6AHxCfTQ5trrMU5aHIk_a5b0hvW-n-3dQoJd97Qk1GjY2R8qZomILHDQjO-OUJ2-tAXLeKRwc7xltHpADEWhlOYjPFwKSOIM:1kU2hg:71NpJjLz68WoYIIpZabldT1w-S4Vh1TrH-WAQTimumc', '2020-11-01 07:02:04.587033'),
('jxqnkipz9trniwpwb11zr7y2hdobj5s9', '.eJxVjDsOwjAQRO_iGln-O6Kk5wzWOruLA8iW4qSKuDuJlAKaKea9mU0kWJeS1k5zmlBchRaX3y7D-KJ6AHxCfTQ5trrMU5aHIk_a5b0hvW-n-3dQoJd97Qk1GjY2R8qZomILHDQjO-OUJ2-tAXLeKRwc7xltHpADEWhlOYjPFwKSOIM:1kV7ZB:fTHjkfTL8xd8-7JaDnUSCJi-het5kWDYfdn5BuJYw-Y', '2020-11-04 06:25:45.966652');

-- --------------------------------------------------------

--
-- Table structure for table `learning_system_app_category`
--

CREATE TABLE `learning_system_app_category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(200) DEFAULT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_system_app_category`
--

INSERT INTO `learning_system_app_category` (`id`, `category_name`, `course_id`) VALUES
(1, 'Crash Courses', 1),
(2, 'Crash Courses', 2);

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
  `price` double NOT NULL,
  `special_price` double NOT NULL,
  `description` longtext NOT NULL,
  `mini_info` longtext DEFAULT NULL,
  `duration` varchar(50) NOT NULL,
  `language` varchar(50) NOT NULL,
  `prequisites` varchar(50) NOT NULL,
  `has_certificate` tinyint(1) NOT NULL,
  `instructor_id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `curriculum` varchar(200) DEFAULT NULL,
  `is_popular` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_system_app_course`
--

INSERT INTO `learning_system_app_course` (`id`, `course_name`, `price`, `special_price`, `description`, `mini_info`, `duration`, `language`, `prequisites`, `has_certificate`, `instructor_id`, `image`, `curriculum`, `is_popular`) VALUES
(1, 'Pre-Foundation Online Course', 25000, 20000, 'Group Seed (For VI, VII and VIII)\r\n\r\nIt is a program offered by E SHIKSHA PIE for VI, VII and VIII class students. In our country, admission to various engineering, medical and other professional courses of repute is mostly done through entrance examination at the class XII. Hence a solid foundation of maths, science and mental aptitude in some cases at VI, VII and VIII level may help the students immensely during his/her career chose in any field.\r\n\r\nEligibility:\r\n\r\nV pass for three year program, VI pass for two year program and VII pass for one year program.\r\n\r\nMode of admission:\r\n\r\nDirect admission to the students securing more than 80% marks in PCM, in previous class exams. Aptitude test is compulsory for other students.', 'It is a program offered by E SHIKSHA PIE for VI, VII and VIII class students. In our country, admission to various engineering, medical and other professional courses of repute is mostly done through entrance examination at the class XII. Hence a solid foundation of maths, science and mental aptitude in some cases at VI, VII and VIII level may help the students immensely during his/her career chos', 'Complete', 'Hindi', 'No', 0, 1, 'prefound_tuhBM3Z.jpg', NULL, 1),
(2, 'Foundation Online Course', 25000, 20000, 'Group Plant (For IX and X)\r\n\r\nThis is a special program for IX and X class students. An obvious choice for students who have engineering as a long terms goal and therefore need to develop a strong foundation andI.Q.in IX and X.\r\n\r\nThis program includes school studies + IIT-JEE foundation + preparation of NTSE, STSE and Olympiads.\r\n\r\nEligibility:\r\n\r\nIX pass for three year program and VIII pass for four year program.\r\n\r\nMode of admission:\r\n\r\nDirect admission to the students securing more than 80% marks in PCM, in previous class exams. Aptitude test is compulsory for other students.', 'This is a special program for IX and X class students. An obvious choice for students who have engineering as a long terms goal and therefore need to develop a strong foundation andI.Q.in IX and X.', 'Complete', 'Hindi, English', 'No', 0, 1, 'found_TajcZyb.jpg', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `learning_system_app_enrolledcourse`
--

CREATE TABLE `learning_system_app_enrolledcourse` (
  `id` int(11) NOT NULL,
  `enroll_id` varchar(30) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_system_app_enrolledcourse`
--

INSERT INTO `learning_system_app_enrolledcourse` (`id`, `enroll_id`, `course_id`, `user_id`, `status`) VALUES
(3, 'ENCID000001', 1, 2, 1),
(6, 'ENCID000002', 1, 4, 1),
(7, 'ENCID000003', 1, 5, 1),
(8, 'ENCID000004', 2, 4, 1),
(10, 'ENCID000005', 2, 7, 1),
(11, 'ENCID000006', 1, 7, 1);

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
(1, '1', '7777777777', 'Video0245.jpg', 'qr_code1_pr0Yz06.png', '2000-03-05', 'Delhi', 'Delhi', 'Delhi', '110051', 'BCA, ML Engineer', '5', 2),
(2, '2', '7777777777', '2.png', 'qr_code2_5wI2XQI.png', '2000-06-10', 'Ghaziabad', 'UP', 'Ghaziabad', '201017', '12th Pass', '1', 3);

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
(19, 'jxqnkipz9trniwpwb11zr7y2hdobj5s9', 1);

-- --------------------------------------------------------

--
-- Table structure for table `learning_system_app_questionanswer`
--

CREATE TABLE `learning_system_app_questionanswer` (
  `id` int(11) NOT NULL,
  `question` longtext NOT NULL,
  `answer` longtext DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `video_id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_system_app_questionanswer`
--

INSERT INTO `learning_system_app_questionanswer` (`id`, `question`, `answer`, `user_id`, `video_id`, `course_id`, `subject_id`) VALUES
(6, 'New course?', 'ff', 2, 6, 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `learning_system_app_review`
--

CREATE TABLE `learning_system_app_review` (
  `id` int(11) NOT NULL,
  `review` longtext NOT NULL,
  `is_approved` tinyint(1) NOT NULL,
  `enrolled_course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_system_app_review`
--

INSERT INTO `learning_system_app_review` (`id`, `review`, `is_approved`, `enrolled_course_id`, `user_id`, `course_id`) VALUES
(1, 'This awesome course', 0, 7, 5, 1),
(2, 'This is good course', 0, 6, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `learning_system_app_subject`
--

CREATE TABLE `learning_system_app_subject` (
  `id` int(11) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `course_id` int(11) NOT NULL,
  `instructor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_system_app_subject`
--

INSERT INTO `learning_system_app_subject` (`id`, `subject_name`, `course_id`, `instructor_id`) VALUES
(1, 'Mathematics', 1, 1),
(2, 'Hindi', 1, 1),
(3, 'English', 1, 1),
(4, 'Science', 1, 2),
(5, 'English (Foundation)', 2, 1),
(6, 'Science (Foundation)', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `learning_system_app_user_profile`
--

CREATE TABLE `learning_system_app_user_profile` (
  `id` int(11) NOT NULL,
  `student_id` varchar(30) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `image` varchar(100) NOT NULL,
  `school_name` varchar(100) DEFAULT NULL,
  `dob` date NOT NULL,
  `session` varchar(40) DEFAULT NULL,
  `mother_name` varchar(100) DEFAULT NULL,
  `father_name` varchar(100) DEFAULT NULL,
  `address` longtext NOT NULL,
  `state` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `zip_code` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `image_qr` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_system_app_user_profile`
--

INSERT INTO `learning_system_app_user_profile` (`id`, `student_id`, `phone`, `image`, `school_name`, `dob`, `session`, `mother_name`, `father_name`, `address`, `state`, `city`, `zip_code`, `user_id`, `image_qr`) VALUES
(1, 'ESKP000001', '7777777777', '/media/1.png', '', '1994-04-12', '', 'Mixi', 'Harry', 'Japan', 'Tokyo', 'Kasukabe', '4582155', 4, 'qr_codeESKP000001_8q2icNp.png'),
(2, 'ESKP000002', '7777777777', '/media/326639b9222134ad58bac74de715d468a18e7e1bv2_hq.jpg', '', '2000-04-10', '', 'Mixi', 'Harry', 'Japan', 'Tokyo', 'Kasukabe', '452445', 5, 'qr_codeESKP000002.png'),
(4, 'ESKP000003', '7777777777', '/media/IMG_20170105_103651_HDR_FFSJPVL.jpg', '', '2013-03-21', '', 'XYZ', 'ABC', 'Iscon Flower Society', 'Ahemadabad', 'Gujarat', '1152265', 7, 'qr_codeESKP000003_RpKwM7y.png'),
(5, 'ESKP000004', '77777777777', '/media/unnamed.png', '', '2020-10-16', '', 'XYZ', 'ABC', 'Delhi', 'Delhi', 'Delhi', '110051', 8, 'qr_codeESKP000004.png');

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
  `subject_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_system_app_video`
--

INSERT INTO `learning_system_app_video` (`id`, `title`, `url`, `description`, `resources`, `subject_id`, `course_id`) VALUES
(1, 'Rajesh Arora & Gulati\'s Tender Love - The Kapil Sharma Show', 'https://www.youtube.com/embed/TjtfAPHHBeY', 'This is comedy video', '', 2, NULL),
(2, 'BB Ki Vines- | Goa Chalte Hain |', 'https://www.youtube.com/embed/X79M2qxsrig', 'This is video on BB', '', 1, NULL),
(3, 'BB Ki Vines- | Goa Chalte Hain |', 'https://www.youtube.com/embed/X79M2qxsrig', 'This video on BB Ki Vines- | Goa Chalte Hain |', '', 3, NULL),
(4, 'BB Ki Vines- | Goa Chalte Hain |', 'https://www.youtube.com/embed/X79M2qxsrig', 'This video on BB Ki Vines- | Goa Chalte Hain |', '/media/Heart_Attack.csv', 2, NULL),
(5, 'Every Sniper Lover Will Watch This Epic Gameplay In PUBG Mobile | Solo Vs Squad', 'https://www.youtube.com/embed/ph37dP0VW_A', 'This is video on pubg', NULL, 4, 1),
(6, 'How To Make A Website Using HTML CSS Bootstrap | Complete Website Design Tutorial', 'https://www.youtube.com/embed/v0IgI8vYD_o', 'This video on web development', NULL, 5, 2),
(7, 'BB Ki Vines- | Angry Masterji- Part 13 |', 'https://www.youtube.com/embed/Wg-ZgiQvlTY', 'This Video on BB Ki Vines- | Angry Masterji- Part 13 |', '', 5, 2),
(8, 'Restaurant Sutiyapa | Ashish Chanchlani', 'https://www.youtube.com/embed/WDiK14qI3pQ', 'This video on Restaurant Sutiyapa | Ashish Chanchlani', '/media/unnamed.png', 6, 2);

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
  ADD KEY `learning_system_app__course_id_9d3f1bbd_fk_learning_` (`course_id`);

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
  ADD KEY `learning_system_app__user_id_dd1d6981_fk_auth_user` (`user_id`),
  ADD KEY `learning_system_app__video_id_e3dc6220_fk_learning_` (`video_id`),
  ADD KEY `learning_system_app__course_id_32997938_fk_learning_` (`course_id`),
  ADD KEY `learning_system_app__subject_id_34d4d69b_fk_learning_` (`subject_id`);

--
-- Indexes for table `learning_system_app_review`
--
ALTER TABLE `learning_system_app_review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `learning_system_app__enrolled_course_id_29440b4e_fk_learning_` (`enrolled_course_id`),
  ADD KEY `learning_system_app_review_user_id_fce04fc6_fk_auth_user_id` (`user_id`),
  ADD KEY `learning_system_app__course_id_bad3c82f_fk_learning_` (`course_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `learning_system_app_category`
--
ALTER TABLE `learning_system_app_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `learning_system_app_instructor`
--
ALTER TABLE `learning_system_app_instructor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `learning_system_app_loggedinuser`
--
ALTER TABLE `learning_system_app_loggedinuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `learning_system_app_questionanswer`
--
ALTER TABLE `learning_system_app_questionanswer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `learning_system_app_review`
--
ALTER TABLE `learning_system_app_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `learning_system_app_subject`
--
ALTER TABLE `learning_system_app_subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `learning_system_app_user_profile`
--
ALTER TABLE `learning_system_app_user_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `learning_system_app_video`
--
ALTER TABLE `learning_system_app_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
