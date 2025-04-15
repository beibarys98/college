-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 15, 2025 at 09:11 AM
-- Server version: 10.6.20-MariaDB-cll-lve
-- PHP Version: 8.3.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `p-347124_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer` text DEFAULT NULL,
  `img_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `title_ru` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL
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
  `img_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `month` varchar(20) DEFAULT NULL,
  `duration` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `participant`
--

CREATE TABLE `participant` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `organisation` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

--
-- Dumping data for table `place`
--

INSERT INTO `place` (`id`, `score`) VALUES
(9, 45),
(10, 40),
(11, 35);

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `test_id` int(11) NOT NULL,
  `question` text DEFAULT NULL,
  `answer` int(11) DEFAULT NULL,
  `img_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `lang` varchar(10) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'new',
  `duration` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `auth_key` varchar(32) NOT NULL,
  `password_hash` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`) VALUES
(1, 'admin', 'UtyMhA-2oaZxG2F0x2AHrdAm84ikD4X9', '$2y$13$CrNavEggzV7bHoxNVlrBIeC8pkxErJpI9bXq68oXbPgIXGwOxCjr6'),
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
(68, '129', 'zhnTa2AZc01RZbIsrnuqqBXIIPtStzY3', '$2y$13$TLbmYs6eje3IroJEPYAmqONyKK4QBzxeom4Uqjxm1ycjLPpszKcD2'),
(69, '130', 'nzys8HV2fQq58x6VPIpgduNypM6y34p3', '$2y$13$MncPlNBHV3a4HyFrSV.m4.9CAYMXVR8YjjWZ1xjVIWDJ9ZurTRN6i'),
(70, '131', 'seKhUuyEAUGX9NuiUcmJVpMxOsfBpbMO', '$2y$13$a5sMpsuKep.5qoFjtVEp3O/1RyYFzLiUJFHcHQUE.pKoMNEL.viS.'),
(71, '132', 'VmO5PU0puGRKDwUfRIll5PUBwStRqN1w', '$2y$13$rfVa3O22N/GABhC9rZTmoOTItU161PHBVyuVpeQkmkbzsCnzoyQKq'),
(72, '133', 'kdmZJ1LTjlNxz4q5BfvdS_My-Y4cr0Tv', '$2y$13$ui/C3iUA1L.34Us6wTNQcOxbF6HS6K61jL32TdKU2tiGp8K1TuTeW'),
(73, '134', 'vHymbs0G1y8ABvkP4oNVjn61UEKIuyl4', '$2y$13$aizq49ayKIkGuTZUvgodXufi44/vTrv65rqbUOitbVvOuUue6NcKu'),
(74, '135', 'lnzzKE6VlXsVIa9bvma8U6VvAmBui8us', '$2y$13$NR0vbkt7i7z/J080fYBLBeKo3tkIxPi8ldTiDN.dPcL8SzKwzTiw.'),
(75, '136', 'JkOIIJ94vkc09W2M0Zg5NW-7tx6ctWQP', '$2y$13$FUESoCT20WTNfqw76jRtKeQLazIuP7gn2T1hr88H2yXlOj1FfAfR.'),
(76, '137', 'MatYFbOFYufbVBOwALmlxjSQ6U16Adbu', '$2y$13$WS0yTS58xM1sDOVDEv1R..74ppkzDydF8ARsAzu6FXuZtRf2tvKte'),
(77, '138', 'kw5FJoZB3kgeBrY6sody_HdshuOuxmQl', '$2y$13$MiXLQuoW3O4T6EVsFKw4WOJNBTngivVmpmkXsZLWNP4bnCQOkD0tS'),
(78, '139', '8KEzC0YhrPs1lMXyUddmSQBsaOR9t76C', '$2y$13$ZpSgj10fEAEhxqg8sItJs.UKSeKIDgoiZDegstCY5TDiJuWCVmlCq'),
(79, '140', 'hy00W08dD9ktVfb-8_j_GrlsDG_bmxAF', '$2y$13$Gbk1ZE/sg0XisZWqIk1q/.bWkt8Utj35R0o5yzqkRoTp3BfT4Euu2'),
(80, '141', 'EPJwHJx6If_lYuyxV092fMuQGuJtnvV7', '$2y$13$zuLiCWJbeytMILNVUrnrG.HVmzAQfpWv6T.7VRTLwnA4sgLfx6E1G'),
(81, '142', 'e0PCFmQmRzam6bJVtqzhPqMtrHJNeamr', '$2y$13$n/BTSxv8ObfctJBndFVRgex5HZzT4w1H6aBbYk/ISaK/1gzkcBzcq'),
(82, '143', 'BIDmNs3TWhk9Nsg8WssQSe91fBwUiHxn', '$2y$13$xKfPy1kOPBxWP5JVDd4Fg.yjOm1J11pswG8qc4wjdkraDCEPHWkkq'),
(83, '144', '0zTVfmvk5OmB96mDLDwKMYAClKU4Nk_R', '$2y$13$/EnTNd3Q8n9iAw3YTzmfweCQYuNHVWcAn9J1FfoqGFpuGxPEoNsx6'),
(84, '145', 'zRw6ppRRP8NTjNIKDbqFrvtpwyLu8bXO', '$2y$13$KBq07BA2dyRW1T0ujtOUU.ayKTmaceONCMrj224Hoihm5BZ8bgMBG'),
(85, '146', 'o7Zxc8E9weyz7_edG39nNFup3y6ZHJlk', '$2y$13$PuTnCJiBMLovJ0jdQmaCXeJHiKDZpFANaSw69IcmzK9PN7OA/npAW'),
(86, '147', '7AuzoCjiI2Xp0H98m7sWpq0shFejFSEt', '$2y$13$nsL/w/hRA31tGTdcE1kmxOoLRSoWvE96eCciqH6WPYyjN42gMJuNO'),
(87, '148', 'KRnmmtUAgHI3Dz2tI_HbwuFoW2LdT-Bf', '$2y$13$AfQ/COUiRk98kmeqbrWNmubu/qXEdQSwU8GviEYQujaCmJaM2kN0W'),
(88, '149', 'OjkKbBFYtFfIeEq8oBwG9hHnTlh-aWq4', '$2y$13$SRBQKLpbmxB0AqXfzgz/2O4wPKJ8CTa/S.Z9A8HHSOz2Z7H8nZ/h6'),
(89, '150', 'qWM7dFSEBD23RqOBzyxWPUgat5RyHTV_', '$2y$13$dE1y7LZu5CYDT8QuXC5x4.eoKZEuwDODv9U9/Ua9LZS5RrnDptFHq'),
(90, '151', 'WXyWeygT9e5505N9TvOG9kkWm1uo9sw7', '$2y$13$c4mCVUQf9U8qnGko9/wjF.U6f27VOfc/Kulan7L7jhDy.aFjTndeW'),
(91, '152', 'OkhwLcJeHyxlKjPMd_5iptc1auU0FOQ7', '$2y$13$m9IqqHncSW2s4iUBRcmNSeI70IW13J2dZAzb/oKuN8wNqyAS2ZUv6'),
(92, '153', 't_mj10tgDkgCgOk8FeJSGN6NULtDUXYs', '$2y$13$V5W4xI5lKMwKrbx8dAVpvOaCcOhXLOelz/sIbCYQ.RyQPGuH1SuQK'),
(93, '154', '-zX9UqINLl64ui-O4680R7vzB_z883WX', '$2y$13$sf2bUCyO/b.QhgiL1dV91enkImjEPZHmcyEjCcoUuv7.0CL9KCV9u'),
(94, '155', 'ZCVgnhqmzPhEof4MR7iGYwbX9DDqCWEM', '$2y$13$yAHy1b/UKT3L4nXJrenhl.RELZwioh8xdL7hhdNUYGQbcRkHitUHG'),
(95, '156', 'EyN8Hqt61U0n-EXPtQVwdkMeeDqoJmQk', '$2y$13$vWxw3OoIFRzkjTZO7IHi3.HYENxZ8x7dx/LBgtnhEww2LyY2F1Nqe'),
(96, '157', 'pQjhSY9cYhIEMLJgFIFsK4SkDtsqjiHW', '$2y$13$CroNnMymxC6MKM4REXTTZ.P7/PK4.qVTFJN.vTCd4DJEuxKGbj00q'),
(97, '158', 'lJWo8Jo9FyWoQYHM5W_HJdZhJhUEDSLG', '$2y$13$XrSyVxJG4utWuTdxDB3q/.DajqSw3Do3vc4hzIcZAa6ctRt.u7nTe'),
(98, '159', 'BN0LWzKHveFMUTK2PqyBF0DVfWyR9VXG', '$2y$13$Q4Y8NWRClxW4fgQz6r8ffeoYbXP/5qX5nCR0ercJqaOPf8ZEInx0u'),
(99, '160', 'N1933KR0qVJFM3aYCP1cOfLgQUaNWZx6', '$2y$13$KPdKTOcAwXV3oizz.lY1EeMmnFpeHrTfKfYKYcQDJV4SxeMeFotSu'),
(100, '161', '2KvvkeLSzGTFbejLuS2cLQ96iw3WeN2t', '$2y$13$FY81NLW7h9nUh0xdcJJPW.FqdALP5HmYSFa/AmxSQJJZW9TAHbVl.'),
(101, '162', '6q-FZEhDuaFiNJrdQ10OfVe1aIgrovKO', '$2y$13$3R03WGWUpPWdl7NxpqYwnuO5Iqn6fH3wPSbNBUP9qBxfsj72arRxa'),
(102, '163', 'DMYpmu4x0rHGHasCJOrg2UT3Qw9OGj_O', '$2y$13$lTl54H73HvF1LWOuHRCNhuVDliUzlPHWmvJBflQj1A4S8NwY4EulC'),
(103, '164', 'y6GmFEJCoG985WfqaIRiMOgInwARFqyL', '$2y$13$k53yJZkQSqDivRxiUcAUoOR5SMeTr2Vg6en6djT8m84LNIsdGCRoG'),
(104, '165', 'Updhp1x2ApFXWtiJeWkthi20l2TjVpJx', '$2y$13$1tA/cPGHVrx4IHCs7i.zl.Iaw0i0iZsRYH/1gedHD93Fma8hyZkGu'),
(105, '166', 'DvLZ7LoB035GnmwbjF_cg8EEWekyV_YZ', '$2y$13$KnAqTaV7/pwJid12baFxyedmdKflgVW3yfVuqBHcYruwfqmKsa4CO'),
(106, '167', 'DYTrxAMgM3hgT4j5rPrTcCkLClKd47dl', '$2y$13$.tH9x10yQ/bHRWJr8GjaDed9AOaLfopEg43LzDgbgQZ0H7y65OMGa'),
(107, '168', 'XihwzKuNgDqwKwoZiWIltSwnQvqjlORJ', '$2y$13$VI5vlt.w2qFMZPywfYoN1uAhHUlUfkGyUxXPcHAWqsUs9Qh/SFqlO'),
(108, '169', 'bhX_mPWvbL4CZxPc8jO6KQQIiaoDWQn2', '$2y$13$Wkmlo7Fk7CQqHy4tfSj6JOBs7B6eBs4zou0vSpAPUXneqlKkyTjOS'),
(109, '170', 'JsGlulAXenfW9zjZhbUJu5Db_z--S1nK', '$2y$13$TNfFz/1/2vSTnXklJkkULuKmEBKRw3dSa/hbPTtxmnuj6HzZW3/Ni'),
(110, '171', 'z-XN6NtxgmC2PT6PSwWF3Y4sbxKOLd44', '$2y$13$B06oB.lgJf/vBkgXZ8ClRuc/TYWZkFg7NXmFht49MAmIqGDH/yfjK'),
(111, '172', 'N-0qTAMhz64rCjbSS0sHpILXYvGqc_VS', '$2y$13$TIeWq3C06aASHPCDrcNzw.HjBpCq5uvA4fyGEZLFE9XEOh817avaS'),
(112, '173', 'p3xEPVPSzmy4MJ6_6QIQfIm0nuI_da7R', '$2y$13$W4.L2PmnpG0JgV.8N/a/OegcWlPsltnE0jcQ8D9uAyBWrJDdsh9I6'),
(113, '174', 'N0L3qPyWGSxwKuuzaVYaIWLsajUS5Djw', '$2y$13$d5Zs1nyaABrzJpawLs2bU.i0VLS9khkGJapCodIZTjBaTpIX/X8vS'),
(114, '175', 'XKZohv2Azzf8e4VSn5wqktpkOhLG_dxh', '$2y$13$BMCEN2g5D8oeGakdRxCVk.hz0tPTX8MpILk2wDLibzzQ.zUyiWONe'),
(115, '176', 'MDFnWk2uWV6Mi7xj4h1ZfGimrOLBLFd1', '$2y$13$3a4iPtSNb47X1NL6X0HTyuNVoeSk2yEO/cul/lAfHiOy2g1rYGSee'),
(116, '177', 'R5auOQRkonwZS85INct-NWrFSVOMwQNA', '$2y$13$NBeoSvVqgBnqfd2ruwmnl.bXvmIwzjbJl0sVDxiAMisQboTItpX/W'),
(117, '178', 'nELEe3qZ32uDcGe8ET0mw2eoIBzRqq5-', '$2y$13$rdFgjCjQ1HJtvzO0geeL/eAZWDTTaE9Kx/uvPxnNw3yB3coJlkmYy'),
(118, '179', 'tHi8BX3NhBquejdgxGByQpNx7zMG5sA2', '$2y$13$yw63mm97Emt5rqQIvyuhheQAvSotCbPVU8PuWKoqmHCgxJJJF6e5K'),
(119, '180', '-wKxU5b5l6rI1DBhy1tI3wcCZ7QJMC1r', '$2y$13$xEz78jBxsLqoHWA5XKD9.OZhPZ7cjQ1HC86Px3LSIS2geN3YNKmV2'),
(120, '181', 'd_-VXaaojv_KDYBY_kheWbtyUr22QGzG', '$2y$13$n9AUYp59kBSKt3eHyxv97OPWyBVMdvBMpb0eShJROCR/m/7p4/HFm'),
(121, '182', 'oZp8OqENxBJby9v-2mdN4SDM6YcRw90D', '$2y$13$Q2qQEpeWw8FiKYuWbfDbp.ASy.xSNjBGkIM0hruB3asCAWoZOsYVu'),
(122, '185', 'ZTl1ZUjmGy_mf3v52kQyOHT4Kl1NHACJ', '$2y$13$AMs2gtmt20OgD4svE.VMO.8l9ESEul/8TXCtnDOIY6TSLhw9bv1Bm'),
(123, '186', 'XZ2d1maI2fhPD4qadD0JcnTUmUR_O-v-', '$2y$13$oReAVOflvXTZzwCxSUKga.Uf4nUe4ehZqQDkqtjE5CJuBYWlESHZq'),
(124, '187', 'epWZrISCdrvnQ89xunhSfioc2wrRMXym', '$2y$13$i.PbaLt/K6w.IbGHAoh.gO9VAm..sfmr1pwyXo3Sv0uTUaZrwtoue'),
(125, '188', '3SXSOCz3dJx2aJ1oTkoLBsTMeThPgTQn', '$2y$13$BzbrzhBvlKJUyNnnUBAGoe81PKdYnLjSuucy0W7Q/a5VnEjkaysqG'),
(126, '189', 'fTE4FUKxR1QbtMmRcQFy-uxwxg9F0VvH', '$2y$13$puNGeyXZO3s.axY/h1lnLOsGQSnB8RzmXX6X4Xp7nLUC6w53uF3cG'),
(127, '190', 'p3ry1qHcL_dOZ5hLNT_hCU-Z5wgQt14B', '$2y$13$Px73u9W82YVAST1S0.YlQOcB4ydoKsv8lHew670YcCof2JzriRUt6'),
(128, '191', 'VhONV8PfDjtvpdSTV9-g-Yac9kXj4F6E', '$2y$13$SHgFV5fBO4vZh5P1rUsQ5edGPpSZVr4aXghDcb7DeD25VvbuevYuS'),
(129, '192', 'G8gwe9aX502-sWxmQgbmKUYoPDkaQpIk', '$2y$13$/YdeOepP22AHxfzDcBFDweHOAXJbgTpsUs1v9YDAc846t6pQBXKS.'),
(130, '193', 'y9bRwv1kAErLv1FK_3ogk08VV0JbOn1-', '$2y$13$G8CPtHde9Tc3Z0dkohVl9.X7dfg03eeNdfoySo32OFtmlNLTMnsvW'),
(131, '194', 'wOk-jwa9qmadLsH7t4dhGAtOJoRgnEn9', '$2y$13$9K9MSsA4U8YrzK5UzHvXoOZ81mAR8n5RE9GobQ1GmAesnvfvhZvLi'),
(134, '197', 'cmcdbQ-jOTY2dMAH3vanicBMQrWuQDnT', '$2y$13$1TbkqyKT6SpRdLTyAJaeOOKx7v3zQuDRQfahv5ysq7MW6SpErXDsi'),
(135, '198', 'Y9byH9gwFmX-zbm-f5ijJnbQmvzOZA2G', '$2y$13$6l603JNqtOfXVI8jeKYYouV/MvOf9.zY9JdbzQDYu37FV5EsgeMhS'),
(136, '199', 'N_XcZgG9IozoVW6h2AP9gYrVFGL8syGW', '$2y$13$Xr1Ppn3qW/w3ybOcKyT4vuIUqWb3yBceOzxqL8eXMXWRvRZI.UnuK'),
(137, '200', 'lRIKUTb-MgM00WhiQnau9UgxwN6Dw_Ff', '$2y$13$LmkitLkA7a51b9PpPVHFBeZVwZVyfq2zR2wtD3dDHFVFveS4YZsay'),
(138, '201', 'U2q30InG3Z0KVowovODTKpIy5iIlwfFf', '$2y$13$uF.rbZmZV8dHF3SszEIVBeU0Ua9X38grZSk79Q8PpZNUR7JYcJxle'),
(139, '202', 'Y1wVpQoEailBOHHOpc6BpsAQakffyRGS', '$2y$13$AcQ6MyPjLQ7qGeXitPGSz.Wj.dv/7erHVkKXD7liy3945fVZwpbSK'),
(140, '203', 'vO764VctjDCLAfi8YT9bh81Y6jWG2WhS', '$2y$13$wfTscSR3LIhUG2juqqMiZOYdbh6nh5JZhdtgXD7/C9jjK0mY4BGSa'),
(141, '204', 'OndTyibqodpdQBl7DVGn2BK9vCVWZN5n', '$2y$13$RAf5Xj8LMt9oqC80F5xRxe91FTAz3igtYWPkznJAPC3SfgfgRDlFK'),
(142, '205', 'P4PJwK0oJu82v1qaHgqkGYD7Trvt6IaK', '$2y$13$FKcvv5ElF6lTICEY19SOZutcDLmzzBS8Ugd6H93UmLEjnNMV.fiQK'),
(143, '206', '4uHcvQ1oDwnRJ4cPcIApK91tsman2Zij', '$2y$13$cbGze7LBVFsnOcGv5cRHree.dZnooq3ETyf1vJAPG09pAHZydWPLO'),
(144, '207', 'zwtvuoFR2jdqJieG7_l4SmUjGMvL5RaP', '$2y$13$IYM4boANpoKrdUBtdHZ1Eun.zNFa/XtS8GDe5XKfrgNP8fseDj.da'),
(145, '208', 'P6rCaPj6AFAmAtdGmUG3m4vtHFaTgyWn', '$2y$13$J7yDxoaBecE.61XBGeSu.eHCBbtn0sVQpJyyzm0ELQGyH4KSWar6i'),
(146, '209', 'LW9mqIewn_u-K_r90uMSuX9qTULVKpNV', '$2y$13$MpS/mSfxb6hwMB0CUvJHCOzSnYSH8Nfnximp1QueYz16Qht.G.SXe'),
(147, '210', 'n3YIFgLlG251ufOEoW57NMO1sUgtWqFl', '$2y$13$IFMZasPwFTihG8GEaYj3T.NDDa4cpS1I3b3vnfYjUUSSxNbA9YB52');

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
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=309;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `certificate`
--
ALTER TABLE `certificate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `participant`
--
ALTER TABLE `participant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT for table `participant_answer`
--
ALTER TABLE `participant_answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `place`
--
ALTER TABLE `place`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

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
