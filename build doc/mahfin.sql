-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2023 at 01:12 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mahfin`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_userprofile'),
(22, 'Can change user', 6, 'change_userprofile'),
(23, 'Can delete user', 6, 'delete_userprofile'),
(24, 'Can view user', 6, 'view_userprofile'),
(25, 'Can add population data', 7, 'add_populationdata'),
(26, 'Can change population data', 7, 'change_populationdata'),
(27, 'Can delete population data', 7, 'delete_populationdata'),
(28, 'Can view population data', 7, 'view_populationdata'),
(29, 'Can add user graph permission', 8, 'add_usergraphpermission'),
(30, 'Can change user graph permission', 8, 'change_usergraphpermission'),
(31, 'Can delete user graph permission', 8, 'delete_usergraphpermission'),
(32, 'Can view user graph permission', 8, 'view_usergraphpermission');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_populationdata`
--

CREATE TABLE `dashboard_populationdata` (
  `id` bigint(20) NOT NULL,
  `country` varchar(100) NOT NULL,
  `year` int(11) NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dashboard_populationdata`
--

INSERT INTO `dashboard_populationdata` (`id`, `country`, `year`, `value`) VALUES
(1, 'India', 1960, 445954579),
(2, 'India', 1961, 456351876),
(3, 'India', 1962, 467024193),
(4, 'India', 1963, 477933619),
(5, 'India', 1964, 489059309),
(6, 'India', 1965, 500114346),
(7, 'India', 1966, 510992617),
(8, 'India', 1967, 521987069),
(9, 'India', 1968, 533431909),
(10, 'India', 1969, 545314670),
(11, 'India', 1970, 557501301),
(12, 'India', 1971, 569999178),
(13, 'India', 1972, 582837973),
(14, 'India', 1973, 596107483),
(15, 'India', 1974, 609721951),
(16, 'India', 1975, 623524219),
(17, 'India', 1976, 637451448),
(18, 'India', 1977, 651685628),
(19, 'India', 1978, 666267760),
(20, 'India', 1979, 681248383),
(21, 'India', 1980, 696828385),
(22, 'India', 1981, 712869298),
(23, 'India', 1982, 729169466),
(24, 'India', 1983, 745826546),
(25, 'India', 1984, 762895156),
(26, 'India', 1985, 780242084),
(27, 'India', 1986, 797878993),
(28, 'India', 1987, 815716125),
(29, 'India', 1988, 833729681),
(30, 'India', 1989, 852012673),
(31, 'India', 1990, 870452165),
(32, 'India', 1991, 888941756),
(33, 'India', 1992, 907574049),
(34, 'India', 1993, 926351297),
(35, 'India', 1994, 945261958),
(36, 'India', 1995, 964279129),
(37, 'India', 1996, 983281218),
(38, 'India', 1997, 1002335230),
(39, 'India', 1998, 1021434576),
(40, 'India', 1999, 1040500054),
(41, 'India', 2000, 1059633675),
(42, 'India', 2001, 1078970907),
(43, 'India', 2002, 1098313039),
(44, 'India', 2003, 1117415123),
(45, 'India', 2004, 1136264583),
(46, 'India', 2005, 1154638713),
(47, 'India', 2006, 1172373788),
(48, 'India', 2007, 1189691809),
(49, 'India', 2008, 1206734806),
(50, 'India', 2009, 1223640160),
(51, 'India', 2010, 1240613620),
(52, 'India', 2011, 1257621191),
(53, 'India', 2012, 1274487215),
(54, 'India', 2013, 1291132063),
(55, 'India', 2014, 1307246509),
(56, 'India', 2015, 1322866505),
(57, 'India', 2016, 1338636340),
(58, 'India', 2017, 1354195680),
(59, 'India', 2018, 1369003306),
(60, 'India', 2019, 1383112050),
(61, 'India', 2020, 1396387127),
(62, 'India', 2021, 1407563842),
(63, 'India', 2022, 1417173173);

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_usergraphpermission`
--

CREATE TABLE `dashboard_usergraphpermission` (
  `id` bigint(20) NOT NULL,
  `graph_type` varchar(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dashboard_usergraphpermission`
--

INSERT INTO `dashboard_usergraphpermission` (`id`, `graph_type`, `user_id`) VALUES
(3, 'line', 3),
(5, 'histogram', 4),
(1, 'line', 4),
(4, 'pie', 4);

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
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-10-11 06:02:08.098868', '1', 'admin', 2, '[{\"changed\": {\"fields\": [\"Role\"]}}]', 6, 1),
(2, '2023-10-11 06:02:57.409094', '1', 'admin', 2, '[{\"changed\": {\"fields\": [\"Role\"]}}]', 6, 1),
(3, '2023-10-11 06:06:50.515392', '1', 'admin', 2, '[]', 6, 1),
(4, '2023-10-11 06:09:52.990626', '1', 'admin', 2, '[]', 6, 1),
(5, '2023-10-11 06:15:05.368105', '2', 'anil', 1, '[{\"added\": {}}]', 6, 1),
(6, '2023-10-11 06:17:27.181849', '2', 'anil', 2, '[{\"changed\": {\"fields\": [\"Role\"]}}]', 6, 1),
(7, '2023-10-11 13:43:48.822153', '2', 'anil', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 6, 1),
(8, '2023-10-11 14:58:10.454080', '3', 'user_one', 1, '[{\"added\": {}}]', 6, 1),
(9, '2023-10-11 14:58:15.649515', '3', 'user_one', 2, '[]', 6, 1),
(10, '2023-10-11 14:58:45.088200', '4', 'user_two', 1, '[{\"added\": {}}]', 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(7, 'dashboard', 'populationdata'),
(8, 'dashboard', 'usergraphpermission'),
(5, 'sessions', 'session'),
(6, 'user_profiles', 'userprofile');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-10-11 05:47:51.720379'),
(2, 'contenttypes', '0002_remove_content_type_name', '2023-10-11 05:47:51.852376'),
(3, 'auth', '0001_initial', '2023-10-11 05:47:52.233379'),
(4, 'auth', '0002_alter_permission_name_max_length', '2023-10-11 05:47:52.314375'),
(5, 'auth', '0003_alter_user_email_max_length', '2023-10-11 05:47:52.358385'),
(6, 'auth', '0004_alter_user_username_opts', '2023-10-11 05:47:52.372382'),
(7, 'auth', '0005_alter_user_last_login_null', '2023-10-11 05:47:52.384379'),
(8, 'auth', '0006_require_contenttypes_0002', '2023-10-11 05:47:52.394383'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2023-10-11 05:47:52.405374'),
(10, 'auth', '0008_alter_user_username_max_length', '2023-10-11 05:47:52.419376'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2023-10-11 05:47:52.434378'),
(12, 'auth', '0010_alter_group_name_max_length', '2023-10-11 05:47:52.470383'),
(13, 'auth', '0011_update_proxy_permissions', '2023-10-11 05:47:52.486379'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2023-10-11 05:47:52.503378'),
(15, 'user_profiles', '0001_initial', '2023-10-11 05:47:52.959376'),
(16, 'admin', '0001_initial', '2023-10-11 05:47:53.283373'),
(17, 'admin', '0002_logentry_remove_auto_add', '2023-10-11 05:47:53.303386'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2023-10-11 05:47:53.332378'),
(19, 'sessions', '0001_initial', '2023-10-11 05:47:53.418379'),
(20, 'dashboard', '0001_initial', '2023-10-11 09:22:35.285610'),
(21, 'user_profiles', '0002_alter_userprofile_role', '2023-10-11 09:22:35.302608'),
(22, 'dashboard', '0002_usergraphpermission', '2023-10-11 14:33:33.302781'),
(23, 'dashboard', '0002_auto_20231011_2110', '2023-10-11 15:40:26.723777'),
(24, 'dashboard', '0003_usergraphpermission', '2023-10-11 15:40:26.897784');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('63etqghg77twvuf1hhxxn0e1bembbprc', '.eJxVjEEOwiAQRe_C2hAGKC0u3fcMBGYGqRpISrsy3t006UK3_7333yLEfSth77yGhcRVaHH53VLEJ9cD0CPWe5PY6rYuSR6KPGmXcyN-3U7376DEXo7aweQMK0bKo4sa7ABILmJCD8TOjqzUxDbrwZA3frCMViVgn_M4aRCfL_EoOAk:1qqsGM:ckFAGrMbt8y4MiMBQaw0oJfte-BxerWv_5i6Q1l5q5c', '2023-10-26 09:45:50.572833'),
('b65umz43tgd9wn6pqihm5u3emj1hcdti', '.eJxVjMsOwiAQRf-FtSFQ3i7d-w1kBgapGkhKuzL-uzbpQrf3nHNfLMK21rgNWuKc2ZlJdvrdENKD2g7yHdqt89TbuszId4UfdPBrz_S8HO7fQYVRv7WwxSeXZVAwaS0xOAHOlpDBJC2Tp1KEB0uqCKm9MIhmUkRBCsKCgOz9Ad9jOFg:1qqT2J:MWEkFy6PlaKXXwcX3pBhRdMlo1hQGxQ01cD9RXY9Mow', '2023-10-25 06:49:39.203210'),
('b9lhqtgtqdmgcyjbux6e3r8hqwanhgh5', '.eJxVjMsOwiAQRf-FtSFQ3i7d-w1kBgapGkhKuzL-uzbpQrf3nHNfLMK21rgNWuKc2ZlJdvrdENKD2g7yHdqt89TbuszId4UfdPBrz_S8HO7fQYVRv7WwxSeXZVAwaS0xOAHOlpDBJC2Tp1KEB0uqCKm9MIhmUkRBCsKCgOz9Ad9jOFg:1qqT5D:iwNQJs7MhgLX4C94ZXXTFZeUWp12UzBivXTL_4RJKDc', '2023-10-25 06:52:39.968602'),
('nrpur6p9xexs3sn21i9j79o0v0woftxk', '.eJxVjMsOwiAQRf-FtSFQ3i7d-w1kBgapGkhKuzL-uzbpQrf3nHNfLMK21rgNWuKc2ZlJdvrdENKD2g7yHdqt89TbuszId4UfdPBrz_S8HO7fQYVRv7WwxSeXZVAwaS0xOAHOlpDBJC2Tp1KEB0uqCKm9MIhmUkRBCsKCgOz9Ad9jOFg:1qqT7g:pcU4X8oko3TSgt-TemADvZR0GRlkEh4A8oZtxCt-Nzs', '2023-10-25 06:55:12.595423');

-- --------------------------------------------------------

--
-- Table structure for table `user_profiles_userprofile`
--

CREATE TABLE `user_profiles_userprofile` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_profiles_userprofile`
--

INSERT INTO `user_profiles_userprofile` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `role`) VALUES
(1, 'pbkdf2_sha256$600000$7kaIrPCdYF3K1bEuRDfufN$p6otEHnD0f4pODeFwegIRLiEzRfFpK/TM5ZcT1FEMw0=', '2023-10-12 05:20:59.985104', 1, 'admin', '', '', 'admin@mahfin.com', 1, 1, '2023-10-11 05:50:56.117435', 'admin'),
(2, 'pbkdf2_sha256$600000$ZI4lPqlae7NQbUYrDdYr7m$1Si1DSQERhXE4xHBXndtTpo9VSi/ZQTJmJjspX5n+Yg=', '2023-10-12 09:45:50.560904', 0, 'anil', 'Anil', '', 'anil@test.com', 1, 1, '2023-10-11 06:15:04.385107', 'requestor'),
(3, 'pbkdf2_sha256$600000$fZ59DMMyoHB7PsfAUKGG39$RGGvjdGQQXSD5in/xKYb+vQejsLLgFxSNvX24LvWuZ4=', '2023-10-12 05:23:38.136490', 0, 'user_one', 'user1', '', '', 1, 1, '2023-10-11 14:58:09.553103', 'user'),
(4, 'pbkdf2_sha256$600000$MjI8xHWzc9c4QseU93go7E$wMYSWNUaS1aKnVZK4zyRjtLwzq3+MRgAtqzZ7xPXPC8=', '2023-10-12 05:31:20.501821', 0, 'user_two', 'user two', '', '', 1, 1, '2023-10-11 14:58:44.189863', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `user_profiles_userprofile_groups`
--

CREATE TABLE `user_profiles_userprofile_groups` (
  `id` bigint(20) NOT NULL,
  `userprofile_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_profiles_userprofile_user_permissions`
--

CREATE TABLE `user_profiles_userprofile_user_permissions` (
  `id` bigint(20) NOT NULL,
  `userprofile_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Indexes for table `dashboard_populationdata`
--
ALTER TABLE `dashboard_populationdata`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dashboard_populationdata_country_year_fbfbdeba_uniq` (`country`,`year`);

--
-- Indexes for table `dashboard_usergraphpermission`
--
ALTER TABLE `dashboard_usergraphpermission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dashboard_usergraphpermission_user_id_graph_type_19b0fa95_uniq` (`user_id`,`graph_type`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_user_prof` (`user_id`);

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
-- Indexes for table `user_profiles_userprofile`
--
ALTER TABLE `user_profiles_userprofile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `user_profiles_userprofile_groups`
--
ALTER TABLE `user_profiles_userprofile_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_profiles_userprofil_userprofile_id_group_id_71a00aad_uniq` (`userprofile_id`,`group_id`),
  ADD KEY `user_profiles_userpr_group_id_ffc8da2c_fk_auth_grou` (`group_id`);

--
-- Indexes for table `user_profiles_userprofile_user_permissions`
--
ALTER TABLE `user_profiles_userprofile_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_profiles_userprofil_userprofile_id_permissio_f63adcaf_uniq` (`userprofile_id`,`permission_id`),
  ADD KEY `user_profiles_userpr_permission_id_bd3cb033_fk_auth_perm` (`permission_id`);

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `dashboard_populationdata`
--
ALTER TABLE `dashboard_populationdata`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- AUTO_INCREMENT for table `dashboard_usergraphpermission`
--
ALTER TABLE `dashboard_usergraphpermission`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `user_profiles_userprofile`
--
ALTER TABLE `user_profiles_userprofile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_profiles_userprofile_groups`
--
ALTER TABLE `user_profiles_userprofile_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_profiles_userprofile_user_permissions`
--
ALTER TABLE `user_profiles_userprofile_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

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
-- Constraints for table `dashboard_usergraphpermission`
--
ALTER TABLE `dashboard_usergraphpermission`
  ADD CONSTRAINT `dashboard_usergraphp_user_id_5c4bd8d1_fk_user_prof` FOREIGN KEY (`user_id`) REFERENCES `user_profiles_userprofile` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_user_prof` FOREIGN KEY (`user_id`) REFERENCES `user_profiles_userprofile` (`id`);

--
-- Constraints for table `user_profiles_userprofile_groups`
--
ALTER TABLE `user_profiles_userprofile_groups`
  ADD CONSTRAINT `user_profiles_userpr_group_id_ffc8da2c_fk_auth_grou` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `user_profiles_userpr_userprofile_id_8b9326dd_fk_user_prof` FOREIGN KEY (`userprofile_id`) REFERENCES `user_profiles_userprofile` (`id`);

--
-- Constraints for table `user_profiles_userprofile_user_permissions`
--
ALTER TABLE `user_profiles_userprofile_user_permissions`
  ADD CONSTRAINT `user_profiles_userpr_permission_id_bd3cb033_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `user_profiles_userpr_userprofile_id_a8152d66_fk_user_prof` FOREIGN KEY (`userprofile_id`) REFERENCES `user_profiles_userprofile` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
