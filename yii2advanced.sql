-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Apr 03, 2025 at 12:40 PM
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
(1, 'aaa', 'Сестринское дело', 'aaa', 'aaa'),
(2, 'aaa', 'Сестринское дело', 'aaa', 'aaa'),
(3, 'bbb', 'Акушерское дело', 'bbb', 'bbb'),
(4, 'ccc', 'Медсестра общей практики', 'ccc', 'ccc'),
(5, 'ddd', 'Сестринское дело в рентгенологии', 'ddd', 'ddd'),
(6, 'eee', 'Классический и лечебный массаж', 'eee', 'eee3'),
(7, 'fff', 'Сестринское дело в школьной медицине', 'fff', 'fff'),
(8, 'lol', 'Сестринское дело', '01', '1'),
(9, 'lol2', 'Сестринское дело', 'Январь', '1 неделя'),
(10, 'med', 'Медсестра общей практики', 'Январь', '2 месяца');

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
(102, 9, 'Мухаммедьяров Бейбарыс Жарасович', '', '');

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
(41, '102', 'sMt-_yI-eOZdo3pnTNn0Ut_NpvPEPzfA', '$2y$13$zjT7FbDwq8ZQl4laycFkFe0FeLYhtBd4o.hjsUGLaBjaTU.gU.jnu');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `certificate`
--
ALTER TABLE `certificate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `participant`
--
ALTER TABLE `participant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seminar`
--
ALTER TABLE `seminar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

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
