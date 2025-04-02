-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Apr 02, 2025 at 12:44 PM
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `organisation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `participant`
--

INSERT INTO `participant` (`id`, `name`, `telephone`, `organisation`) VALUES
(2, 'Мухаммедьяров Бейбарыс Жарасович', '87478725287', 'ктл'),
(3, 'Мухаммедьяров Бейбарыс Жарасович', '87478725288', 'ктл'),
(4, 'Мухаммедьяров Бейбарыс Жарасович', '87478725289', 'ктл'),
(5, 'Мухаммедьяров Бейбарыс Жарасович', '87478725290', 'ктл'),
(6, 'Мухаммедьяров Бейбарыс Жарасович', '87478725291', 'ктл'),
(7, 'Мухаммедьяров Бейбарыс Жарасович', '87478725292', 'ктл'),
(8, 'Мухаммедьяров Бейбарыс Жарасович', '87478725293', 'ктл'),
(9, 'Мухаммедьяров Бейбарыс Жарасович', '87478725294', 'ктл'),
(10, 'Мухаммедьяров Бейбарыс Жарасович', '87478725295', 'ктл'),
(11, 'Мухаммедьяров Бейбарыс Жарасович', '87478725296', 'ктл'),
(12, 'Мухаммедьяров Бейбарыс Жарасович', '87478725287', 'ктл'),
(13, 'Мухаммедьяров Бейбарыс Жарасович', '87478725288', 'ктл'),
(14, 'Мухаммедьяров Бейбарыс Жарасович', '87478725289', 'ктл'),
(15, 'Мухаммедьяров Бейбарыс Жарасович', '87478725290', 'ктл'),
(16, 'Мухаммедьяров Бейбарыс Жарасович', '87478725291', 'ктл'),
(17, 'Мухаммедьяров Бейбарыс Жарасович', '87478725292', 'ктл'),
(18, 'Мухаммедьяров Бейбарыс Жарасович', '87478725293', 'ктл'),
(19, 'Мухаммедьяров Бейбарыс Жарасович', '87478725294', 'ктл'),
(20, 'Мухаммедьяров Бейбарыс Жарасович', '87478725295', 'ктл'),
(21, 'Мухаммедьяров Бейбарыс Жарасович', '87478725296', 'ктл'),
(22, 'Мухаммедьяров Бейбарыс Жарасович', '87478725287', 'ктл'),
(23, 'Мухаммедьяров Бейбарыс Жарасович', '87478725288', 'ктл'),
(24, 'Мухаммедьяров Бейбарыс Жарасович', '87478725289', 'ктл'),
(25, 'Мухаммедьяров Бейбарыс Жарасович', '87478725290', 'ктл'),
(26, 'Мухаммедьяров Бейбарыс Жарасович', '87478725291', 'ктл'),
(27, 'Мухаммедьяров Бейбарыс Жарасович', '87478725292', 'ктл'),
(28, 'Мухаммедьяров Бейбарыс Жарасович', '87478725293', 'ктл'),
(29, 'Мухаммедьяров Бейбарыс Жарасович', '87478725294', 'ктл'),
(30, 'Мухаммедьяров Бейбарыс Жарасович', '87478725295', 'ктл'),
(31, 'Мухаммедьяров Бейбарыс Жарасович', '87478725296', 'ктл');

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
(1, 'admin', 'UtyMhA-2oaZxG2F0x2AHrdAm84ikD4X9', '$2y$13$CrNavEggzV7bHoxNVlrBIeC8pkxErJpI9bXq68oXbPgIXGwOxCjr6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `participant`
--
ALTER TABLE `participant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seminar`
--
ALTER TABLE `seminar`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `participant`
--
ALTER TABLE `participant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `seminar`
--
ALTER TABLE `seminar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
