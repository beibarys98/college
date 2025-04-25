-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Apr 25, 2025 at 12:07 PM
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
(309, 75, 'Asdferagh erg', NULL),
(310, 75, 'Aerg erg aerg tyn', NULL),
(311, 75, 'Uymrytf thsrg', NULL),
(312, 75, 'Yujrthsfb yty jty', NULL),
(313, 76, 'Asdferagh erg', NULL),
(314, 76, 'Aerg erg aerg tyn', NULL),
(315, 76, 'Uymrytf thsrg', NULL),
(316, 76, 'Yujrthsfb yty jty', NULL),
(317, 77, 'Asdferagh erg', NULL),
(318, 77, 'Aerg erg aerg tyn', NULL),
(319, 77, 'Uymrytf thsrg', NULL),
(320, 77, 'Yujrthsfb yty jty', NULL),
(321, 78, 'Asdferagh erg', NULL),
(322, 78, 'Aerg erg aerg tyn', NULL),
(323, 78, 'Uymrytf thsrg', NULL),
(324, 78, 'Yujrthsfb yty jty', NULL),
(325, 79, 'Asdferagh erg', NULL),
(326, 79, 'Aerg erg aerg tyn', NULL),
(327, 79, 'Uymrytf thsrg', NULL),
(328, 79, 'Yujrthsfb yty jty', NULL),
(329, 80, 'Asdferagh erg', NULL),
(330, 80, 'Aerg erg aerg tyn', NULL),
(331, 80, 'Uymrytf thsrg', NULL),
(332, 80, 'Yujrthsfb yty jty', NULL),
(333, 81, 'Asdferagh erg', NULL),
(334, 81, 'Aerg erg aerg tyn', NULL),
(335, 81, 'Uymrytf thsrg', NULL),
(336, 81, 'Yujrthsfb yty jty', NULL),
(337, 82, 'Asdferagh erg', NULL),
(338, 82, 'Aerg erg aerg tyn', NULL),
(339, 82, 'Uymrytf thsrg', NULL),
(340, 82, 'Yujrthsfb yty jty', NULL),
(341, 83, 'Asdferagh erg', NULL),
(342, 83, 'Aerg erg aerg tyn', NULL),
(343, 83, 'Uymrytf thsrg', NULL),
(344, 83, 'Yujrthsfb yty jty', NULL),
(345, 84, 'Asdferagh erg', NULL),
(346, 84, 'Aerg erg aerg tyn', NULL),
(347, 84, 'Uymrytf thsrg', NULL),
(348, 84, 'Yujrthsfb yty jty', NULL),
(349, 85, 'Asdferagh erg', NULL),
(350, 85, 'Aerg erg aerg tyn', NULL),
(351, 85, 'Uymrytf thsrg', NULL),
(352, 85, 'Yujrthsfb yty jty', NULL),
(353, 86, 'Asdferagh erg', NULL),
(354, 86, 'Aerg erg aerg tyn', NULL),
(355, 86, 'Uymrytf thsrg', NULL),
(356, 86, 'Yujrthsfb yty jty', NULL),
(357, 87, 'Asdferagh erg', NULL),
(358, 87, 'Aerg erg aerg tyn', NULL),
(359, 87, 'Uymrytf thsrg', NULL),
(360, 87, 'Yujrthsfb yty jty', NULL),
(361, 88, 'Asdferagh erg', NULL),
(362, 88, 'Aerg erg aerg tyn', NULL),
(363, 88, 'Uymrytf thsrg', NULL),
(364, 88, 'Yujrthsfb yty jty', NULL),
(365, 89, 'Asdferagh erg', NULL),
(366, 89, 'Aerg erg aerg tyn', NULL),
(367, 89, 'Uymrytf thsrg', NULL),
(368, 89, 'Yujrthsfb yty jty', NULL),
(369, 90, 'Asdferagh erg', NULL),
(370, 90, 'Aerg erg aerg tyn', NULL),
(371, 90, 'Uymrytf thsrg', NULL),
(372, 90, 'Yujrthsfb yty jty', NULL),
(373, 91, 'Asdferagh erg', NULL),
(374, 91, 'Aerg erg aerg tyn', NULL),
(375, 91, 'Uymrytf thsrg', NULL),
(376, 91, 'Yujrthsfb yty jty', NULL),
(377, 92, 'Asdferagh erg', NULL),
(378, 92, 'Aerg erg aerg tyn', NULL),
(379, 92, 'Uymrytf thsrg', NULL),
(380, 92, 'Yujrthsfb yty jty', NULL),
(381, 93, 'Asdferagh erg', NULL),
(382, 93, 'Aerg erg aerg tyn', NULL),
(383, 93, 'Uymrytf thsrg', NULL),
(384, 93, 'Yujrthsfb yty jty', NULL),
(385, 94, 'Asdferagh erg', NULL),
(386, 94, 'Aerg erg aerg tyn', NULL),
(387, 94, 'Uymrytf thsrg', NULL),
(388, 94, 'Yujrthsfb yty jty', NULL),
(389, 80, 'керкер', NULL),
(390, 95, 'Asdferagh erg', NULL),
(391, 95, 'Aerg erg aerg tyn', NULL),
(392, 95, 'Uymrytf thsrg', NULL),
(393, 95, 'Yujrthsfb yty jty', NULL),
(394, 96, 'Asdferagh erg', NULL),
(395, 96, 'Aerg erg aerg tyn', NULL),
(396, 96, 'Uymrytf thsrg', NULL),
(397, 96, 'Yujrthsfb yty jty', NULL),
(398, 97, 'Asdferagh erg', NULL),
(399, 97, 'Aerg erg aerg tyn', NULL),
(400, 97, 'Uymrytf thsrg', NULL),
(401, 97, 'Yujrthsfb yty jty', NULL),
(402, 98, 'Asdferagh erg', NULL),
(403, 98, 'Aerg erg aerg tyn', NULL),
(404, 98, 'Uymrytf thsrg', NULL),
(405, 98, 'Yujrthsfb yty jty', NULL),
(406, 99, 'Asdferagh erg', NULL),
(407, 99, 'Aerg erg aerg tyn', NULL),
(408, 99, 'Uymrytf thsrg', NULL),
(409, 99, 'Yujrthsfb yty jty', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_ru` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `title`, `title_ru`, `type`) VALUES
(1, 'Мейіргер ісі', 'Сестринское дело', 'pov'),
(2, 'Акушерлік іс', 'Акушерское дело', 'pov'),
(3, 'Емдеу ісі', 'Лечебное дело', 'pov'),
(4, 'Зертханалық диагностика', 'Лабораторная диагностика', 'pov'),
(5, 'Фармация', 'Фармация', 'pov'),
(6, 'Стоматология', 'Стоматология', 'pov'),
(7, 'Эпидемиология және гигиена ', 'Эпидемиология и гигиена', 'pov'),
(8, 'Әлеуметтік жұмысшы', 'Соц работник', 'pov'),
(9, 'Жалпы тәжірибелік мейіргер', 'Медсестра общей практики', 'cert'),
(10, 'Рентгенологиядағы мейіргер ісі', 'Сестринское дело в рентгенологии', 'cert'),
(11, 'Классикалық және емдік массаж ', 'Классический и лечебный массаж', 'cert'),
(12, 'Мектеп медицинасындағы мейіргер ісі ', 'Сестринское дело в школьной медицине', 'cert'),
(13, 'Семинар, тренинг, шебер-класс', 'Семинар, тренинг, мастер-класс', 'sem'),
(14, 'Съезд, конгресс, конференциялар', 'Съезд, конгресс, конференции', 'sem'),
(15, 'Медициналық білімі жоқ адамдар (парамедик)', 'Лица без медицинского образование (парамедик)', 'sem');

-- --------------------------------------------------------

--
-- Table structure for table `certificate`
--

CREATE TABLE `certificate` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `img_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `certificate`
--

INSERT INTO `certificate` (`id`, `course_id`, `img_path`) VALUES
(2, 31, 'certificates/6mKdft_F.png'),
(3, 31, 'certificates/jPZbEMFx.png'),
(4, 31, 'certificates/KNwm5G3q.png'),
(5, 35, 'certificates/OOnrK66f.png');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `month` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `category_id`, `title`, `month`, `duration`) VALUES
(31, 1, 'aaa', 'Қаңтар', '1 апта'),
(32, 9, 'фывфыв', 'Қаңтар', '1 ай'),
(33, 14, 'мфцукацу', NULL, NULL),
(34, 15, 'вркер', NULL, NULL),
(35, 2, 'bbbbb', 'Қаңтар', '2 апта'),
(36, 1, 'bbb', 'Ақпан', '2 апта');

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE `file` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `title_ru` varchar(255) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `file`
--

INSERT INTO `file` (`id`, `user_id`, `course_id`, `title`, `title_ru`, `file_path`, `type`) VALUES
(95, 230, 31, 'Жеке куәлік ', 'Удостоверение личности ', 'documents/LBFKOt8I.pdf', 'doc'),
(96, 230, 31, 'Білім туралы диплом ', 'Диплом об оброзование', 'documents/cOcGfqiD.pdf', 'doc'),
(97, 230, 31, 'Денсаулық сақтау маманының сертификаты ', 'Сертификат специалиста в области здравоохранения', 'documents/qvDcpepm.pdf', 'doc'),
(98, 230, 31, 'Біліктілікті арттыру туралы куәлігі ', 'Свидетельство о повышении квалификации специалиста', 'documents/gx33gAL_.pdf', 'doc'),
(99, 230, 31, 'Неке туралы куәлік (тегін өзгерткен жағдайда)', 'Свидетельство о браке (в случаи смены фамилии)', 'documents/p8sMdnrH.pdf', 'doc'),
(100, 230, 31, 'Мекеме ұйымынан  бұйрық', 'Приказ с организации', '', 'doc'),
(101, 230, 31, 'Төлем туралы түбіртек', 'Квитанция об оплате', 'documents/kIMNhsxE.pdf', 'doc'),
(102, 230, 36, 'Жеке куәлік ', 'Удостоверение личности ', '', 'doc'),
(103, 230, 36, 'Білім туралы диплом ', 'Диплом об оброзование', '', 'doc'),
(104, 230, 36, 'Денсаулық сақтау маманының сертификаты ', 'Сертификат специалиста в области здравоохранения', '', 'doc'),
(105, 230, 36, 'Біліктілікті арттыру туралы куәлігі ', 'Свидетельство о повышении квалификации специалиста', '', 'doc'),
(106, 230, 36, 'Неке туралы куәлік (тегін өзгерткен жағдайда)', 'Свидетельство о браке (в случаи смены фамилии)', '', 'doc'),
(107, 230, 36, 'Мекеме ұйымынан  бұйрық', 'Приказ с организации', '', 'doc'),
(108, 230, 36, 'Төлем туралы түбіртек', 'Квитанция об оплате', '', 'doc');

-- --------------------------------------------------------

--
-- Table structure for table `file_type`
--

CREATE TABLE `file_type` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_ru` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `file_type`
--

INSERT INTO `file_type` (`id`, `title`, `title_ru`) VALUES
(1, 'Жеке куәлік ', 'Удостоверение личности '),
(2, 'Білім туралы диплом ', 'Диплом об оброзование'),
(3, 'Денсаулық сақтау маманының сертификаты ', 'Сертификат специалиста в области здравоохранения'),
(4, 'Біліктілікті арттыру туралы куәлігі ', 'Свидетельство о повышении квалификации специалиста'),
(5, 'Неке туралы куәлік (тегін өзгерткен жағдайда)', 'Свидетельство о браке (в случаи смены фамилии)'),
(6, 'Мекеме ұйымынан  бұйрық', 'Приказ с организации'),
(7, 'Төлем туралы түбіртек', 'Квитанция об оплате');

-- --------------------------------------------------------

--
-- Table structure for table `participant`
--

CREATE TABLE `participant` (
  `id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organisation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `check` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `participant`
--

INSERT INTO `participant` (`id`, `course_id`, `name`, `telephone`, `organisation`, `check`) VALUES
(212, 31, 'Мухаммедьяров Бейбарыс Жарасович', '', '', NULL),
(242, 31, 'фукауцка пфкпукп', NULL, NULL, NULL),
(243, 31, 'уцауца цуацуа', '', '', NULL),
(248, 31, 'Мухаммедьяров Бейбарыс Жарасович', '87478725287', '', NULL),
(249, 31, 'Мухаммедьяров Бейбарыс Жарасович', '', '', NULL),
(250, 31, 'Мухаммедьяров Бейбарыс Жарасович', '', '', NULL),
(251, 31, 'Мухаммедьяров Бейбарыс Жарасович', '', '', NULL),
(252, 31, 'Мухаммедьяров Бейбарыс Жарасович', '', '', NULL),
(253, 31, 'Мухаммедьяров Бейбарыс Жарасович', '', '', NULL),
(254, 31, 'Мухаммедьяров Бейбарыс Жарасович', '', '', NULL),
(255, 31, 'Мухаммедьяров Бейбарыс Жарасович', '', '', NULL),
(256, 31, 'Мухаммедьяров Бейбарыс Жарасович', '', '', NULL),
(257, 31, 'Мухаммедьяров Бейбарыс Жарасович', '', '', NULL),
(258, 31, 'ыпукпу уфкпкуп', '', '', NULL),
(260, 31, 'Мухаммедьяров Бейбарыс', '+77478725287', 'ктл', NULL),
(261, 35, 'Мухаммедьяров Бейбарыс Жарасович', '87478725287', '', NULL),
(262, 35, 'Мухаммедьяров Бейбарыс Жарасович', '', '', NULL),
(263, 35, 'Мухаммедьяров Бейбарыс Жарасович', '', '', NULL),
(264, 35, 'Мухаммедьяров Бейбарыс Жарасович', '', '', NULL),
(265, 35, 'Мухаммедьяров Бейбарыс Жарасович', '', '', NULL),
(266, 35, 'Мухаммедьяров Бейбарыс Жарасович', '', '', NULL),
(267, 35, 'Мухаммедьяров Бейбарыс Жарасович', '', '', NULL),
(268, 35, 'Мухаммедьяров Бейбарыс Жарасович', '', '', NULL),
(269, 35, 'Мухаммедьяров Бейбарыс Жарасович', '', '', NULL),
(270, 35, 'Мухаммедьяров Бейбарыс Жарасович', '', '', NULL),
(271, 35, 'Чина Машина', '87478725287', 'кызылжар', NULL),
(272, 35, 'Мими Волчица', '87478725287', 'мед больница', NULL),
(273, 35, 'фыуауыа ыуафыуа', '', '', NULL);

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
(75, 29, 'Lkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm\nLkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm\nLkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm', 309, NULL),
(76, 29, 'Lkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm', 313, NULL),
(77, 29, 'Lkmrelgvk emrlkgm eklrmglkem rlkgmklrme  glkmeragm alkremgk rm', 317, NULL),
(78, 29, 'Lkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm', 321, NULL),
(79, 29, 'Lkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm', 325, NULL),
(80, 30, 'Lkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm\nLkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm\nLkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm', 329, NULL),
(81, 30, 'Lkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm', 333, NULL),
(82, 30, 'Lkmrelgvk emrlkgm eklrmglkem rlkgmklrme  glkmeragm alkremgk rm', 337, NULL),
(83, 30, 'Lkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm', 341, NULL),
(84, 30, 'Lkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm', 345, NULL),
(85, 31, 'Lkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm\nLkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm\nLkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm', 349, NULL),
(86, 31, 'Lkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm', 353, NULL),
(87, 31, 'Lkmrelgvk emrlkgm eklrmglkem rlkgmklrme  glkmeragm alkremgk rm', 357, NULL),
(88, 31, 'Lkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm', 361, NULL),
(89, 31, 'Lkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm', 365, NULL),
(90, 32, 'Lkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm\nLkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm\nLkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm', 369, NULL),
(91, 32, 'Lkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm', 373, NULL),
(92, 32, 'Lkmrelgvk emrlkgm eklrmglkem rlkgmklrme  glkmeragm alkremgk rm', 377, NULL),
(93, 32, 'Lkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm', 381, NULL),
(94, 32, 'Lkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm', 385, NULL),
(95, 33, 'Lkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm\nLkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm\nLkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm', 390, NULL),
(96, 33, 'Lkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm', 394, NULL),
(97, 33, 'Lkmrelgvk emrlkgm eklrmglkem rlkgmklrme  glkmeragm alkremgk rm', 398, NULL),
(98, 33, 'Lkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm', 402, NULL),
(99, 33, 'Lkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm', 406, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `duration` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `course_id`, `type`, `lang`, `status`, `duration`) VALUES
(29, 31, 'test', 'kz', 'public', '01:00:00'),
(30, 31, 'test', 'ru', 'new', '01:00:00'),
(31, 31, 'survey', 'kz', 'public', NULL),
(32, 31, 'survey', 'ru', 'new', NULL),
(33, 35, 'test', 'kz', 'new', '01:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `ssn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telephone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `organization` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `category_id`, `course_id`, `ssn`, `name`, `telephone`, `organization`, `auth_key`, `password_hash`) VALUES
(1, NULL, NULL, 'admin', '', NULL, NULL, 'UtyMhA-2oaZxG2F0x2AHrdAm84ikD4X9', '$2y$13$CrNavEggzV7bHoxNVlrBIeC8pkxErJpI9bXq68oXbPgIXGwOxCjr6'),
(207, NULL, 31, '', 'Мухаммедьяров Бейбарыс Жарасович', '87478725287', '', 'ul-luC6W_ZBbh7soNuYfakkDU5oiuX05', '$2y$13$DPtvlugplimRpX3GKv.E.eohecQj66qQWSjmqMx3FarYGkUX/F1ZW'),
(208, NULL, 31, NULL, 'Мухаммедьяров Бейбарыс Жарасович', '', '', '_-kYX5A6D6qyF5i3_8zFfVhz-_ddgADY', '$2y$13$v16DFIcAyNcseN79rCXNp.UJB2S/oG07YX0o4WiAc2zViDWxLi8Vq'),
(209, NULL, 31, NULL, 'Мухаммедьяров Бейбарыс Жарасович', '', '', 'IghoaqyiO3dJdxtwWUK4gPTyBP5BUxHW', '$2y$13$f.X6QFzeXgWrdl40EUngaOR6a8JfOKDlFAl77Z6oxqZY8Tp/yCX2W'),
(210, NULL, 31, NULL, 'Мухаммедьяров Бейбарыс Жарасович', '', '', 'jFmG0_mityIw3hE_VnmEmo53orOM32ve', '$2y$13$kLca9haRF3QhDOlTHfiNOuTg/Uc7pNtfCTT30Cri1DujIQ4Mvy8vm'),
(211, NULL, 31, NULL, 'Мухаммедьяров Бейбарыс Жарасович', '', '', '0KLmiNV_243S2Sa7MheNYPLIytu3g4YB', '$2y$13$2wXLgwC95xbBaFPTQgmNLequrOykTih80GKeQLdzQetYstn4.dnOi'),
(212, NULL, 31, NULL, 'Мухаммедьяров Бейбарыс Жарасович', '', '', 'Y6TzsH9tJBxT7Qz0IHKwWJlbrbNs5DAH', '$2y$13$OSBvFbMoa3olRpNGLQr1JOpFkVBWeUou/OlvbvXZAXbgb0ci5/tXG'),
(213, NULL, 31, NULL, 'Мухаммедьяров Бейбарыс Жарасович', '', '', 'wH23rzNNq-RsNjEUVEyzQqqr70ysPkqc', '$2y$13$/nthN0o9a8/qDbAFlHUOQuzpUSTSU/Ed8VavhhG8i6YAPJy07ZbOO'),
(214, NULL, 31, NULL, 'Мухаммедьяров Бейбарыс Жарасович', '', '', 'bIqp4C8Uq0Rm27ifJvz3u0xBUE-B6pno', '$2y$13$OWwSaYxEslXpqZBbNizj5.0n0uP4auZf6B.evaSh4PM0UzwVdlzfK'),
(215, NULL, 31, NULL, 'Мухаммедьяров Бейбарыс Жарасович', '', '', 'zPn7P9wl5veAhV8u-m31XWydHUqN5qHA', '$2y$13$kxlAua/wW7MEsfMBrtSKBuwgLdE0FTNrKRswAVlOBTaiL8OkucAEG'),
(216, NULL, 31, NULL, 'Мухаммедьяров Бейбарыс Жарасович', '', '', '_0Nm0HGdUsopuypFcWPJHM0Tvo518xx8', '$2y$13$SEH/YTguf//GGS9tdRoQSOkKbiHwB8ofWwSPvASUBS/mX3rSHka0G'),
(217, NULL, 31, NULL, 'Мухаммедьяров Бейбарыс Жарасович', '87478725287', '', '_i_R2U7oDeJrI7sRCOCCMcLFqa16R669', '$2y$13$HeIfa9R/vUg4bAepso3OcOJwQrsjmQ1YEhrUppd/Rpyu9S3hgNr56'),
(218, NULL, 31, NULL, 'Мухаммедьяров Бейбарыс Жарасович', '', '', 'ndbCR5AKE8qNA9igKMhjFZm7IH0ae-Zm', '$2y$13$4W1jdATQx9VfePJ07jvBHO1zXL9wd4cm5E9ue2BgEP7I7U4aIwFNW'),
(219, NULL, 31, NULL, 'Мухаммедьяров Бейбарыс Жарасович', '', '', 'MIQCfOQdzSCmOHQXOvrZUa6zUlpEl41S', '$2y$13$0bHPzIW9XFcTgnSXcSdDY..BmYmXtW8Z2h2bsmDJTExPrxPL3IX1O'),
(220, NULL, 31, NULL, 'Мухаммедьяров Бейбарыс Жарасович', '', '', '-33JPgT8Bqq9sk8d2zICVwhKexfzBFVR', '$2y$13$MJVK797/4ay5gBecthSp5Ou1jNz5eHxWSA1vlS8P4VklUuzkICBxW'),
(221, NULL, 31, NULL, 'Мухаммедьяров Бейбарыс Жарасович', '', '', '86oFEiswum_UnraMka1ZUUKkhwqMT59L', '$2y$13$KhPVhuCNFlltovbqzibL.uvuMZDNN21x/nSd3AprSVYLJabD.1WEa'),
(222, NULL, 31, NULL, 'Мухаммедьяров Бейбарыс Жарасович', '', '', 'YML-AhB4Q6SH4AOMhdU3CpO_XMQ1I_Wy', '$2y$13$5yCnuYwP88LQdkYSCoj7CeyDcSAqY7ZrMusmCaY5p8M26zy9W2FZm'),
(223, NULL, 31, NULL, 'Мухаммедьяров Бейбарыс Жарасович', '', '', 'VLBH1IVc3Q34VwWmcjH6YslXVPqsAegZ', '$2y$13$kdsul/QJJ5dmnMjlAdw84OuF4U0ZuNNG0IW2nSd0sliV1/wWCF0Eq'),
(224, NULL, 31, NULL, 'Мухаммедьяров Бейбарыс Жарасович', '', '', '_pogA91BeoGOGAIgfy3FRVPMf6xcKlV9', '$2y$13$0G1kcUbSJG2jE8gzSpOTeObbUXDAF3uLMJFz5SCAGwFAvbUx7TQ4y'),
(225, NULL, 31, NULL, 'Мухаммедьяров Бейбарыс Жарасович', '', '', '9dr1mxb9yA-J0mj6dv1mQ8npUent3gR1', '$2y$13$Yvhcwr6VVCMMQ1Bi94LsmeHb3Yy1K6M7TU2XSnekS21rquZcUYGlC'),
(229, NULL, NULL, '369369369369', 'лоло лоло', '87078725287', 'ниш', 'tnDzTdz3Ey6FSL4HnUngo-aRmoBdB1WI', '$2y$13$fd/y.uf/SaLfvWeVJs5INOgy17ImyYQ7aAc8rC2AfNFBoNCNTE9R2'),
(230, 1, 31, '111111111111', 'биба биба', '87771112233', 'ктл ктл', 'Tpm80mOEfOUTiQqZkuS8lEUIgsJ6kXw0', '$2y$13$Q4oGfpotOq9YKSzR/bWNBeEcWS52cZZgWnjV4p1Ev.0SUnccOID7W'),
(231, 1, 31, '555555444666', 'дан дан', '87478725287', 'ктлктлктл', '0gle7ZUzcNTRLBBmcOeXxIGwyvlp3Mva', '$2y$13$XsY0P8QYJygunNeaXkuKquu8I.7yC5enSygu0prSXiTmAPdY8mGhS');

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
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_category_fk` (`category_id`);

--
-- Indexes for table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `fk_file_user` (`user_id`);

--
-- Indexes for table `file_type`
--
ALTER TABLE `file_type`
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
  ADD KEY `fk_course` (`course_id`),
  ADD KEY `fk_category` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=410;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `certificate`
--
ALTER TABLE `certificate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `file_type`
--
ALTER TABLE `file_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `participant`
--
ALTER TABLE `participant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=274;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=232;

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
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_category_fk` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `file`
--
ALTER TABLE `file`
  ADD CONSTRAINT `file_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_file_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

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

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `fk_course` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
