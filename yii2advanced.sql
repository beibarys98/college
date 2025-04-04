-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Apr 04, 2025 at 12:52 PM
-- Server version: 5.7.44
-- PHP Version: 8.2.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yii2advanced`
--

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci,
  `img_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`id`, `question_id`, `answer`, `img_path`) VALUES
(73, 19, 'Asdferagh erg', NULL),
(74, 19, 'Aerg erg aerg tyn', NULL),
(75, 19, 'Uymrytf thsrg', NULL),
(76, 19, 'Yujrthsfb yty jty', NULL),
(77, 20, 'Asdferagh erg', NULL),
(78, 20, 'Aerg erg aerg tyn', NULL),
(79, 20, 'Uymrytf thsrg', NULL),
(80, 20, 'Yujrthsfb yty jty', NULL),
(81, 21, 'Asdferagh erg', NULL),
(82, 21, 'Aerg erg aerg tyn', NULL),
(83, 21, 'Uymrytf thsrg', NULL),
(84, 21, 'Yujrthsfb yty jty', NULL),
(85, 22, 'Asdferagh erg', NULL),
(86, 22, 'Aerg erg aerg tyn', NULL),
(87, 22, 'Uymrytf thsrg', NULL),
(88, 22, 'Yujrthsfb yty jty', NULL),
(89, 23, 'Asdferagh erg', NULL),
(90, 23, 'Aerg erg aerg tyn', NULL),
(91, 23, 'Uymrytf thsrg', NULL),
(92, 23, 'Yujrthsfb yty jty', NULL),
(93, 24, 'Asdferagh erg', NULL),
(94, 24, 'Aerg erg aerg tyn', NULL),
(95, 24, 'Uymrytf thsrg', NULL),
(96, 24, 'Yujrthsfb yty jty', NULL),
(97, 25, 'Asdferagh erg', NULL),
(98, 25, 'Aerg erg aerg tyn', NULL),
(99, 25, 'Uymrytf thsrg', NULL),
(100, 25, 'Yujrthsfb yty jty', NULL),
(101, 26, 'Asdferagh erg', NULL),
(102, 26, 'Aerg erg aerg tyn', NULL),
(103, 26, 'Uymrytf thsrg', NULL),
(104, 26, 'Yujrthsfb yty jty', NULL),
(105, 27, 'Asdferagh erg', NULL),
(106, 27, 'Aerg erg aerg tyn', NULL),
(107, 27, 'Uymrytf thsrg', NULL),
(108, 27, 'Yujrthsfb yty jty', NULL),
(109, 28, 'Asdferagh erg', NULL),
(110, 28, 'Aerg erg aerg tyn', NULL),
(111, 28, 'Uymrytf thsrg', NULL),
(112, 28, 'Yujrthsfb yty jty', NULL),
(113, 29, 'Asdferagh erg', NULL),
(114, 29, 'Aerg erg aerg tyn', NULL),
(115, 29, 'Uymrytf thsrg', NULL),
(116, 29, 'Yujrthsfb yty jty', NULL),
(117, 30, 'Asdferagh erg', NULL),
(118, 30, 'Aerg erg aerg tyn', NULL),
(119, 30, 'Uymrytf thsrg', NULL),
(120, 30, 'Yujrthsfb yty jty', NULL),
(121, 31, 'Asdferagh erg', NULL),
(122, 31, 'Aerg erg aerg tyn', NULL),
(123, 31, 'Uymrytf thsrg', NULL),
(124, 31, 'Yujrthsfb yty jty', NULL),
(125, 32, 'Asdferagh erg', NULL),
(126, 32, 'Aerg erg aerg tyn', NULL),
(127, 32, 'Uymrytf thsrg', NULL),
(128, 32, 'Yujrthsfb yty jty', NULL),
(129, 33, 'Asdferagh erg', NULL),
(130, 33, 'Aerg erg aerg tyn', NULL),
(131, 33, 'Uymrytf thsrg', NULL),
(132, 33, 'Yujrthsfb yty jty', NULL),
(133, 34, 'Asdferagh erg', NULL),
(134, 34, 'Aerg erg aerg tyn', NULL),
(135, 34, 'Uymrytf thsrg', NULL),
(136, 34, 'Yujrthsfb yty jty', NULL),
(137, 35, 'Asdferagh erg', NULL),
(138, 35, 'Aerg erg aerg tyn', NULL),
(139, 35, 'Uymrytf thsrg', NULL),
(140, 35, 'Yujrthsfb yty jty', NULL),
(141, 36, 'Asdferagh erg', NULL),
(142, 36, 'Aerg erg aerg tyn', NULL),
(143, 36, 'Uymrytf thsrg', NULL),
(144, 36, 'Yujrthsfb yty jty', NULL),
(145, 37, 'Asdferagh erg', NULL),
(146, 37, 'Aerg erg aerg tyn', NULL),
(147, 37, 'Uymrytf thsrg', NULL),
(148, 37, 'Yujrthsfb yty jty', NULL),
(149, 38, 'Asdferagh erg', NULL),
(150, 38, 'Aerg erg aerg tyn', NULL),
(151, 38, 'Uymrytf thsrg', NULL),
(152, 38, 'Yujrthsfb yty jty', NULL),
(153, 39, 'Asdferagh erg', NULL),
(154, 39, 'Aerg erg aerg tyn', NULL),
(155, 39, 'Uymrytf thsrg', NULL),
(156, 39, 'Yujrthsfb yty jty', NULL),
(157, 40, 'Asdferagh erg', NULL),
(158, 40, 'Aerg erg aerg tyn', NULL),
(159, 40, 'Uymrytf thsrg', NULL),
(160, 40, 'Yujrthsfb yty jty', NULL),
(161, 41, 'Asdferagh erg', NULL),
(162, 41, 'Aerg erg aerg tyn', NULL),
(163, 41, 'Uymrytf thsrg', NULL),
(164, 41, 'Yujrthsfb yty jty', NULL),
(165, 42, 'Asdferagh erg', NULL),
(166, 42, 'Aerg erg aerg tyn', NULL),
(167, 42, 'Uymrytf thsrg', NULL),
(168, 42, 'Yujrthsfb yty jty', NULL),
(169, 43, 'Asdferagh erg', NULL),
(170, 43, 'Aerg erg aerg tyn', NULL),
(171, 43, 'Uymrytf thsrg', NULL),
(172, 43, 'Yujrthsfb yty jty', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `certificate`
--

CREATE TABLE `certificate` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `img_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `month` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `title`, `category`, `month`, `duration`) VALUES
(2, 'aaa', 'Сестринское дело', 'aaa', 'aaa'),
(3, 'bbb', 'Акушерское дело', 'bbb', 'bbb'),
(4, 'ccc', 'Медсестра общей практики', 'ccc', 'ccc'),
(5, 'ddd', 'Сестринское дело в рентгенологии', 'ddd', 'ddd'),
(6, 'eee', 'Классический и лечебный массаж', 'eee', 'eee3'),
(7, 'fff', 'Сестринское дело в школьной медицине', 'fff', 'fff'),
(8, 'lol', 'Сестринское дело', '01', '1'),
(9, 'lol2', 'Сестринское дело', 'Январь', '1 неделя'),
(10, 'med', 'Медсестра общей практики', 'Январь', '2 месяца'),
(11, 'sdvsdv', 'Эпидемиология и гигиена', 'Апрель', '1 неделя'),
(12, 'rgerg', 'Стоматология', 'Июль', '2 недели'),
(13, 'dbdrtb', 'Стоматология', 'Апрель', '3 недели'),
(14, 'frgbrtb', 'Стоматология', 'Декабрь', '1 неделя'),
(15, 'rfthrth', 'Акушерское дело', 'Май', '3 недели'),
(16, 'ghmngmy', 'Медсестра общей практики', 'Март', '1.5 месяца');

-- --------------------------------------------------------

--
-- Table structure for table `participant`
--

CREATE TABLE `participant` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organisation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `participant`
--

INSERT INTO `participant` (`id`, `course_id`, `name`, `telephone`, `organisation`) VALUES
(73, 9, 'Мухаммедьяров Бейбарыс Жарасович', '87478725287', ''),
(74, 9, 'Мухаммедьяров Бейбарыс Жарасович', '', ''),
(75, 9, 'Мухаммедьяров Бейбарыс Жарасович', '', ''),
(76, 9, 'Мухаммедьяров Бейбарыс Жарасович', '', ''),
(77, 9, 'Мухаммедьяров Бейбарыс Жарасович', '', ''),
(78, 9, 'Мухаммедьяров Бейбарыс Жарасович', '', ''),
(79, 9, 'Мухаммедьяров Бейбарыс Жарасович', '', ''),
(80, 9, 'Мухаммедьяров Бейбарыс Жарасович', '', ''),
(81, 9, 'Мухаммедьяров Бейбарыс Жарасович', '', ''),
(82, 9, 'Мухаммедьяров Бейбарыс Жарасович', '', ''),
(83, 9, 'Мухаммедьяров Бейбарыс Жарасович', '87478725287', ''),
(84, 9, 'Мухаммедьяров Бейбарыс Жарасович', '', ''),
(85, 9, 'Мухаммедьяров Бейбарыс Жарасович', '', ''),
(86, 9, 'Мухаммедьяров Бейбарыс Жарасович', '', ''),
(87, 9, 'Мухаммедьяров Бейбарыс Жарасович', '', ''),
(88, 9, 'Мухаммедьяров Бейбарыс Жарасович', '', ''),
(89, 9, 'Мухаммедьяров Бейбарыс Жарасович', '', ''),
(90, 9, 'Мухаммедьяров Бейбарыс Жарасович', '', ''),
(91, 9, 'Мухаммедьяров Бейбарыс Жарасович', '', ''),
(92, 9, 'Мухаммедьяров Бейбарыс Жарасович', '', ''),
(93, 9, 'Мухаммедьяров Бейбарыс Жарасович', '87478725287', ''),
(94, 9, 'Мухаммедьяров Бейбарыс Жарасович', '', ''),
(95, 9, 'Мухаммедьяров Бейбарыс Жарасович', '', ''),
(96, 9, 'Мухаммедьяров Бейбарыс Жарасович', '', ''),
(97, 9, 'Мухаммедьяров Бейбарыс Жарасович', '', ''),
(98, 9, 'Мухаммедьяров Бейбарыс Жарасович', '', ''),
(99, 9, 'Мухаммедьяров Бейбарыс Жарасович', '', ''),
(100, 9, 'Мухаммедьяров Бейбарыс Жарасович', '', ''),
(101, 9, 'Мухаммедьяров Бейбарыс Жарасович', '', ''),
(102, 9, 'Мухаммедьяров Бейбарыс Жарасович', '', ''),
(103, 2, 'Мухаммедьяров Бейбарыс Жарасович', '87478725287', ''),
(104, 2, 'Мухаммедьяров Бейбарыс Жарасович', '', ''),
(105, 2, 'Мухаммедьяров Бейбарыс Жарасович', '', ''),
(106, 2, 'Мухаммедьяров Бейбарыс Жарасович', '', ''),
(107, 2, 'Мухаммедьяров Бейбарыс Жарасович', '', ''),
(108, 2, 'Мухаммедьяров Бейбарыс Жарасович', '', ''),
(109, 2, 'Мухаммедьяров Бейбарыс Жарасович', '', ''),
(110, 2, 'Мухаммедьяров Бейбарыс Жарасович', '', ''),
(111, 2, 'Мухаммедьяров Бейбарыс Жарасович', '', ''),
(112, 2, 'Мухаммедьяров Бейбарыс Жарасович', '', ''),
(113, 11, 'Мухаммедьяров Бейбарыс Жарасович', '87478725287', ''),
(114, 11, 'Мухаммедьяров Бейбарыс Жарасович', '', ''),
(115, 11, 'Мухаммедьяров Бейбарыс Жарасович', '', ''),
(116, 11, 'Мухаммедьяров Бейбарыс Жарасович', '', ''),
(117, 11, 'Мухаммедьяров Бейбарыс Жарасович', '', ''),
(118, 11, 'Мухаммедьяров Бейбарыс Жарасович', '', ''),
(119, 11, 'Мухаммедьяров Бейбарыс Жарасович', '', ''),
(120, 11, 'Мухаммедьяров Бейбарыс Жарасович', '', ''),
(121, 11, 'Мухаммедьяров Бейбарыс Жарасович', '', ''),
(122, 11, 'Мухаммедьяров Бейбарыс Жарасович', '', ''),
(128, 16, 'Мухаммедьяров Бейбарыс Жарасович', '', ''),
(129, 16, 'Мухаммедьяров Бейбарыс Жарасович', '', ''),
(130, 16, 'Мухаммедьяров Бейбарыс Жарасович', '', ''),
(131, 16, 'Мухаммедьяров Бейбарыс Жарасович', '', ''),
(132, 16, 'Мухаммедьяров Бейбарыс Жарасович', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `participant_answer`
--

CREATE TABLE `participant_answer` (
  `id` int(11) NOT NULL,
  `participant_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `place`
--

CREATE TABLE `place` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `test_id` int(11) NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` int(11) DEFAULT NULL,
  `img_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `test_id`, `question`, `answer`, `img_path`) VALUES
(19, 6, 'Lkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm\nLkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm\nLkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm\n', NULL, NULL),
(20, 6, 'Lkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm\n', NULL, NULL),
(21, 6, 'Lkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm\n', NULL, NULL),
(22, 6, 'Lkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm\n', NULL, NULL),
(23, 6, 'Lkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm\n\n', NULL, NULL),
(24, 7, 'Lkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm\nLkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm\nLkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm\n', NULL, NULL),
(25, 7, 'Lkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm\n\n', NULL, NULL),
(26, 7, 'Lkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm\n', NULL, NULL),
(27, 7, 'Lkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm\n', NULL, NULL),
(28, 7, 'Lkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm\n\n', NULL, NULL),
(29, 10, 'Lkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm\nLkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm\nLkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm', NULL, NULL),
(30, 10, 'Lkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm', NULL, NULL),
(31, 10, 'Lkmrelgvk emrlkgm eklrmglkem rlkgmklrme  glkmeragm alkremgk rm', NULL, NULL),
(32, 10, 'Lkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm', NULL, NULL),
(33, 10, 'Lkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm', NULL, NULL),
(34, 12, 'Lkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm\nLkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm\nLkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm', NULL, NULL),
(35, 12, 'Lkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm', NULL, NULL),
(36, 12, 'Lkmrelgvk emrlkgm eklrmglkem rlkgmklrme  glkmeragm alkremgk rm', NULL, NULL),
(37, 12, 'Lkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm', NULL, NULL),
(38, 12, 'Lkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm', NULL, NULL),
(39, 13, 'Lkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm\nLkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm\nLkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm', 153, NULL),
(40, 13, 'Lkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm', 157, NULL),
(41, 13, 'Lkmrelgvk emrlkgm eklrmglkem rlkgmklrme  glkmeragm alkremgk rm', 161, NULL),
(42, 13, 'Lkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm', 165, NULL),
(43, 13, 'Lkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm', 169, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `seminar`
--

CREATE TABLE `seminar` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seminar`
--

INSERT INTO `seminar` (`id`, `title`, `category`) VALUES
(1, '11111', 'Семинар, тренинг, мастер-класс'),
(2, '222', 'Съезд, конгресс, конференции');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `duration` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `course_id`, `lang`, `status`, `duration`) VALUES
(6, 16, 'kz', 'new', '01:00:00'),
(7, 16, 'kz', 'new', '01:00:00'),
(8, 16, 'kz', 'new', '01:00:00'),
(9, 16, 'kz', 'new', '01:00:00'),
(10, 16, 'kz', 'new', '01:00:00'),
(11, 16, 'kz', 'new', '01:00:00'),
(12, 16, 'kz', 'new', '01:00:00'),
(13, 16, 'kz', 'new', '01:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`) VALUES
(1, 'admin', 'UtyMhA-2oaZxG2F0x2AHrdAm84ikD4X9', '$2y$13$CrNavEggzV7bHoxNVlrBIeC8pkxErJpI9bXq68oXbPgIXGwOxCjr6'),
(12, '73', 'ipHTd79MU9UAXbYJcL9MD_zV0cS3a-FD', '$2y$13$w5/qYaaxIoc6RDemaW7Zi.iPYvfATrXIs5GUa1jaM.s6gCPu49uQe'),
(13, '74', 'JwaJqZZ_5JkEFFK5XYRS8jzUCYVgbJTA', '$2y$13$ILS0POMXBYTRkkmZTP2hoOsY.MV09WD2OmlFS1eQaH3gSKLdE2Ksa'),
(14, '75', 'CdZEFkI_jz5BxrF1DXzCNBBU7vT6lNAr', '$2y$13$Hv2kaQ6HNXVqMO1zOuwEeOr16n1k.4e/wNUqWtxjlz512tWJb4U1u'),
(15, '76', '--60vm8DEz3gHtbTZnOpejMEf9pqVcbR', '$2y$13$G4j0meqvomvLCgOBvlaPuehHZQWXqs6rH85eo1unirgTchqmk56TG'),
(16, '77', 'tJ3_oy7yV4vetrSKWHPKA61Mq_SBzCGP', '$2y$13$yydlURwonY9I9FomXeymyeCYF51w4L3W437.UszVuWBoutJegeJMC'),
(17, '78', 'PwYsW1IyKXyOieZBNRsP-lzbNsZub4sB', '$2y$13$dM1ZPkp0iiCEPKpekkWMkOo6d6jypf1BhjokIykQiZGfuxjX2LlL2'),
(18, '79', '7br3vBbMWIyGgunWhifrEuQmm1VeDYGE', '$2y$13$6AVjXPq4LoHHXZNNEM.fOOz40JmPFlVeJoYhwmi2pUDqtaCRRm6I6'),
(19, '80', 'ZCehIM5kuj7HLztqJaicxHGjr9YKxwi0', '$2y$13$JOcC9U1PhigqC/pZSGRTNezqPyll6BAlNN9enT1GQEbLh9bDrwCdi'),
(20, '81', 'oNv85-Tw-ShixvJXe1FT9mRFP9s8AVDR', '$2y$13$akBxUnKRMDlYw2HIP/r1se/YQluTOZEiOne6mlb5ZxNEsqrjN0dqm'),
(21, '82', 'wk_KYL4CN2wsXU6B-6cRERSPfk6AjxNP', '$2y$13$z8yo9jl1MXDaONPbeIbi9.xWPtKI.EFh0H99Ynujeb4vEk5U/agU6'),
(22, '83', 'O0xbuPH2Jdj1F1XgIqucRAOHgFiMdoSq', '$2y$13$lKGMv0vKhP2kBFVOnP0Uj.uHky/xaMkQO5Xd.BhLTTmUlpTnwopd2'),
(23, '84', 'wC_H_F3OqFJHwM5JjnNVFfOEqacc2PlW', '$2y$13$Qn8/5n0wS7kmJpxHj6Zpq./6WUA5ncLghANDslZr45umd0LZI5OTi'),
(24, '85', 'IpVXdzEwybQIDgG8nVUlPnJQ6k6reW1V', '$2y$13$0frXPgsrDnj5DCtZkV.2NeW0gKjqVY5TaZ/vi2BFUkYrEWFCgu3B2'),
(25, '86', 'YFvMMr87N-nQbUaZuqLCig8L2RxZ3tbk', '$2y$13$aZodb5PTkYwib.n7hOQwuuQ0Emwqgc15BZYmDsKExRtzIQffFg0Ga'),
(26, '87', 'BKfGUNVxUgYcbPl7on6cbp2fwOCEMLfn', '$2y$13$6yyvrUpEHU3e15wsCKmaNuKgVdA2sodP.IX.2o.UTMdTa5NRLtlMC'),
(27, '88', 'S21Go3sMULwynuMCFuxP3IuOYd3SCAfP', '$2y$13$tRNHMcXc/vzhltnTpBeTu.k8uXk2nXQQZgO0VeAnDzG7yFmJm8UeK'),
(28, '89', 'P1IcmnKlqYyuY-qkGq9ruWYDfjHZ3Nqo', '$2y$13$SgrurQjl/uJjO0qJA9/rhO.INypxSuezab.LKuWKnRDj2Pe5YVpv6'),
(29, '90', '4cRllM9MMxoNteGd5c9CNDq91Ury8YBQ', '$2y$13$pZwi1HWtuszpXtIOucKjqOBTeXMiWR/2URL2HyUuw.9jjB4d9dV76'),
(30, '91', '79Bw5KXvOL2JnnDxktGipJ-cq0-sHxW_', '$2y$13$YIRukfOZDeeLZRHx7ddCrul.H902nxsq/EwxI/SKTxYgz/f3Ab/Nm'),
(31, '92', '1FkKT5F_WzV0iHfbVjcCp9x_iTbFra_0', '$2y$13$pk5jOj7jD4aSFCnF1WsIFe4grekIe.ccmymOjHbERUTTBitDK.gGa'),
(32, '93', 'X_WR_OWM5NwrcUzI1jSjl0FwjeLyOGu_', '$2y$13$W8j/SndVfRU.u9.ijJuLLOwNiMK8j6NSz/okuHM1o4VDbqzR2t2mO'),
(33, '94', 'c6CPlDlJpGUGzmHFuLTr--xiHMyIhNwb', '$2y$13$6UqLTRh1VBNrGvzk/W.VEu/sce0csQBVLnBjpXTuDRpRrHfmf5Fsu'),
(34, '95', '2HODHm2a_vDZwz7cPenZnPgnTIqK2MMK', '$2y$13$XIx/RRwuwxl8Aw4R3UAc1OZXllnro3B5d5c1jA2bb1PeadAvA7rVW'),
(35, '96', 'PACeSvgtRFvbzHCdDunmEuzmiDmoTptE', '$2y$13$ti6PzQH0M6.sV8kbv3KeBO1oIozFh0E./.AXwslHRYNhbVmI/oFhW'),
(36, '97', 'rIcpq9PdZFGYDCcza7dQlrGGjc1eJinS', '$2y$13$U1u4YazTKaJpDHsHPXmtVe4sqljgovW5rgpxBJ9NQjFQ6/W9gFN02'),
(37, '98', 'PMPzfQ4ePiBuSoNymoJBwdQIMP-9dAX-', '$2y$13$pVtvXiDABVfNblqJzImYrumSeKlZUJMHsWZnekiGI8WN7UPnv8hpG'),
(38, '99', '3tMBDIRHsAYFEOrDHaTxt2r_KVKi0O69', '$2y$13$Yb4CLkPDskc0uAVztEx2DegJ3Gc137nj2OadT38PXGWfjXck8CHDq'),
(39, '100', 'huKSi-gdZkhhRTmntdehPPhSDBCQlu0q', '$2y$13$aHD7S7KYIX5nzkEUc880d.s4xq95v.2xwf177SNFlXj26T6uFdNjC'),
(40, '101', 'OmTWTyPjegsPVmfizxBzBfhfygU4hjIl', '$2y$13$PALTXwH6MB6dv7MzliutTuRrvi8bCzLJMEJua4.fRlrc9OQI7CnPy'),
(41, '102', 'sMt-_yI-eOZdo3pnTNn0Ut_NpvPEPzfA', '$2y$13$zjT7FbDwq8ZQl4laycFkFe0FeLYhtBd4o.hjsUGLaBjaTU.gU.jnu'),
(42, '103', 'VXCcZSMoCDoKt4b_8v3QSZaqjhOTS4PB', '$2y$13$f8DBWPDN9J2YylQJUW3W/.ma4pI1esDQRJyYiWzp8eqnqjNIokWM.'),
(43, '104', 'y36bT3xvj-79OnPYmW5JHWm4Irt15XFh', '$2y$13$.8eVUuC33xyVY3A5VleNm.vZX8NJLlsbGxyNyH/.CGl/9D7Q6gdxq'),
(44, '105', 'es2IrRMlckR7ZXSHI3FIi-bs9Df5-NUZ', '$2y$13$8XdWIstBLdyGykT5bRney.43a0aSVzkKvzYUKxskZHJjiaKja0A3e'),
(45, '106', 'rjjABC2M-2e0hHK20PCDB3LpSQv-LF6J', '$2y$13$aODhAhvV5/bu30WNJuzliu74pPf8UquxAXhlHlnh/qDGS2v4J9n6K'),
(46, '107', '2KjXNWhAo2tggpIHJKWNqVqHeK_jA4r-', '$2y$13$fRoLoI3DEXXF9/1n2d4LteN7IApCki1vjLfJoP4pQp.Jz4pp3CVNq'),
(47, '108', 'MAP_tVBhw8n4phIOv_IY5WwQDlw9eVVC', '$2y$13$aRVKimuSDTgq./pEeMXd9ue0nECfQ2RWtViUXpxxoqBrbnm.ceYMu'),
(48, '109', 'wyNTToCyqeU-BECFvkDYXLGUaxwQjkKi', '$2y$13$VJ4TtoR6ElTzMqR3KIQj6.0qnIlSno.GlqKdlh5esna6717vOEfUW'),
(49, '110', 'qud7tlTHC-jHaGo-fjscsCG11KINO2N0', '$2y$13$PrhieF8gGScOnuZUMR.EqeUoHvFD5KNMhAGU.B2e9P4aJCXuO02sW'),
(50, '111', '6WYZG1WPicVngIUAOYW9s1rEqwINnFVC', '$2y$13$XXLgRqPHTvCE8vbyE8Yas.Z7xiw26OTA99oW0nZMlOlb4sOXQNKX2'),
(51, '112', 'v3WUcSxDIawyvWp19d4m9GXtTezlMncd', '$2y$13$CKU0d5FLKwxtn9BL7DIgae81u2vGGujVboVQWlFG8o0aOm5k8295O'),
(52, '113', 'NifuBicXBfvwM927MQGUyiz3Oq2A1xyh', '$2y$13$ajz6KYPbsmpHmkrvw5F6A.tOHsSn789bhhdkHU3/nbpC5WojcbGwu'),
(53, '114', 'guIDQVcbTEm3AcgwJHkxyRxGCWmgZD_4', '$2y$13$KYgwU0rmcQa339KlA1427O3kRFIP05CsLaXUzwCHlsT8wZ2LAqQXO'),
(54, '115', 'zaB66iuev-Tj_7HuF9tN11xFoW-bAz68', '$2y$13$yRMcdyAlVqLsFARqFqZqQ.glnPl9oJzHuSGrTMAdSRRUEEqKZYua6'),
(55, '116', 'uJiGmWEznJBU6VDKadAdlG2dcEpgvFqo', '$2y$13$9DvJH1yk9kllYcRZiM4aQuAJAamr6XlSe1/2KGzsyL6xY5lbK3GC.'),
(56, '117', 'XXbM2CtyE3eaSqMpL1hMMbft5Cq2gdSy', '$2y$13$lZPVdWE995Sz.FfKHqypGOQ8cTlcf.PrYMW04Cj0EveTYq8hIZ8UC'),
(57, '118', 'onL7E6sjRtTD85-lY8kwjtxJJVblPRVh', '$2y$13$lkkG283XB.rBHJDy5uSZjed84b1Ngv0CK6QubQfzkyVSc8.OqBYrW'),
(58, '119', 'HhfHX8VnW7tQp_N1TcKEbdYUUtV3rSMY', '$2y$13$ULnPbluv6tZvONZS8CNGyOjo.McFdijB2KA1b//immGEgT8AWYd7i'),
(59, '120', 'o3Fb4qMxed4mAP1pqV9RrwLqVbas5VSp', '$2y$13$HxfrT68E4G4asNZan26bt.Iv03RauPhNc.n9KoCWv9PvSAeg7DlpW'),
(60, '121', 'UtMUFLufkrisAocfHju98fX6zu9gZMvc', '$2y$13$0cz3InUwW8t9FMrusTvaS.YZeJf7tp1m.iD0IJeIvlXRfH.Detoe6'),
(61, '122', '9syNuwjLuMVkzAb4cr0jUzHgA8FWWjFY', '$2y$13$dB4aecErn2l0IpWq3kK.o.xA.v.mK2evcwOjIR45KO3B8F0PyyAZa'),
(62, '123', 'CzbM-sSvSR_ndVYkrkwUTS6ZsbQpacl_', '$2y$13$SEH6pDd6t91B8.r399HwtuvM6PGvI57mcyiBlScod1VmhvUBR144i'),
(67, '128', '9nxLcA2S46TswZpbmLOkc3XxH0zHe15Y', '$2y$13$LH4K9wb6VxU/KcGk2QYMk.qkjfrHjEDVEpijbCRlzafCWN4xYptmu'),
(68, '129', 'zhnTa2AZc01RZbIsrnuqqBXIIPtStzY3', '$2y$13$TLbmYs6eje3IroJEPYAmqONyKK4QBzxeom4Uqjxm1ycjLPpszKcD2'),
(69, '130', 'nzys8HV2fQq58x6VPIpgduNypM6y34p3', '$2y$13$MncPlNBHV3a4HyFrSV.m4.9CAYMXVR8YjjWZ1xjVIWDJ9ZurTRN6i'),
(70, '131', 'seKhUuyEAUGX9NuiUcmJVpMxOsfBpbMO', '$2y$13$a5sMpsuKep.5qoFjtVEp3O/1RyYFzLiUJFHcHQUE.pKoMNEL.viS.'),
(71, '132', 'VmO5PU0puGRKDwUfRIll5PUBwStRqN1w', '$2y$13$rfVa3O22N/GABhC9rZTmoOTItU161PHBVyuVpeQkmkbzsCnzoyQKq');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `certificate`
--
ALTER TABLE `certificate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `participant`
--
ALTER TABLE `participant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_participant_course` (`course_id`);

--
-- Indexes for table `participant_answer`
--
ALTER TABLE `participant_answer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `participant_id` (`participant_id`),
  ADD KEY `question_id` (`question_id`),
  ADD KEY `answer_id` (`answer_id`);

--
-- Indexes for table `place`
--
ALTER TABLE `place`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `test_id` (`test_id`);

--
-- Indexes for table `seminar`
--
ALTER TABLE `seminar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT for table `certificate`
--
ALTER TABLE `certificate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `participant`
--
ALTER TABLE `participant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `participant_answer`
--
ALTER TABLE `participant_answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `place`
--
ALTER TABLE `place`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `seminar`
--
ALTER TABLE `seminar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answer`
--
ALTER TABLE `answer`
  ADD CONSTRAINT `answer_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `certificate`
--
ALTER TABLE `certificate`
  ADD CONSTRAINT `certificate_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `participant`
--
ALTER TABLE `participant`
  ADD CONSTRAINT `fk_participant_course` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `participant_answer`
--
ALTER TABLE `participant_answer`
  ADD CONSTRAINT `participant_answer_ibfk_1` FOREIGN KEY (`participant_id`) REFERENCES `participant` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `participant_answer_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `participant_answer_ibfk_3` FOREIGN KEY (`answer_id`) REFERENCES `answer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `question_ibfk_1` FOREIGN KEY (`test_id`) REFERENCES `test` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `test`
--
ALTER TABLE `test`
  ADD CONSTRAINT `test_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
