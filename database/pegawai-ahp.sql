-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2024 at 02:13 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jabatan-ahp`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_alternatif`
--

CREATE TABLE `tb_alternatif` (
  `kode_alternatif` varchar(16) NOT NULL,
  `nama_alternatif` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `rank` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_alternatif`
--

INSERT INTO `tb_alternatif` (`kode_alternatif`, `nama_alternatif`, `keterangan`, `total`, `rank`) VALUES
('MB', 'Misbah', '', 0.20152022582515, 1),
('AP', 'Asep', '', 0.10271830834499, 4),
('Kasep', 'Kasep', '', 0.1378689905351, 3),
('A4', 'BYDIYY', '', 0.1378689905351, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tb_kriteria`
--

CREATE TABLE `tb_kriteria` (
  `kode_kriteria` varchar(16) NOT NULL,
  `nama_kriteria` varchar(256) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_kriteria`
--

INSERT INTO `tb_kriteria` (`kode_kriteria`, `nama_kriteria`) VALUES
('KJ', 'Kejujuran'),
('ET', 'Keterampilan'),
('DP', 'Disiplin'),
('KM', 'Kerjasama');

-- --------------------------------------------------------

--
-- Table structure for table `tb_rel_alternatif`
--

CREATE TABLE `tb_rel_alternatif` (
  `ID` int(11) NOT NULL,
  `kode_alternatif` varchar(255) DEFAULT NULL,
  `kode_kriteria` varchar(255) DEFAULT NULL,
  `kode_sub` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_rel_alternatif`
--

INSERT INTO `tb_rel_alternatif` (`ID`, `kode_alternatif`, `kode_kriteria`, `kode_sub`) VALUES
(1, 'MB', 'DP', 'DP3'),
(2, 'MB', 'ET', 'ET1'),
(3, 'MB', 'KJ', 'KJ3'),
(4, 'MB', 'KM', 'KM1'),
(31, 'A4', 'KM', 'KM2'),
(8, 'AP', 'DP', 'DP2'),
(9, 'AP', 'ET', 'ET3'),
(10, 'AP', 'KJ', 'KJ2'),
(11, 'AP', 'KM', 'KM3'),
(30, 'A4', 'KJ', 'KJ3'),
(29, 'A4', 'ET', 'ET2'),
(25, 'Kasep', 'KM', 'KM2'),
(24, 'Kasep', 'KJ', 'KJ1'),
(23, 'Kasep', 'ET', 'ET2'),
(22, 'Kasep', 'DP', 'DP1'),
(28, 'A4', 'DP', 'DP2');

-- --------------------------------------------------------

--
-- Table structure for table `tb_rel_kriteria`
--

CREATE TABLE `tb_rel_kriteria` (
  `ID` int(11) NOT NULL,
  `ID1` varchar(16) DEFAULT NULL,
  `ID2` varchar(16) DEFAULT NULL,
  `nilai` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_rel_kriteria`
--

INSERT INTO `tb_rel_kriteria` (`ID`, `ID1`, `ID2`, `nilai`) VALUES
(5, 'KJ', 'KJ', 1),
(17, 'ET', 'ET', 1),
(18, 'ET', 'KJ', 3),
(22, 'KJ', 'ET', 0.333333333),
(26, 'DP', 'DP', 1),
(27, 'DP', 'ET', 3),
(28, 'DP', 'KJ', 5),
(32, 'ET', 'DP', 0.333333333),
(33, 'KJ', 'DP', 0.2),
(37, 'KM', 'DP', 0.142857142),
(38, 'KM', 'ET', 0.2),
(39, 'KM', 'KJ', 0.333333333),
(40, 'KM', 'KM', 1),
(44, 'DP', 'KM', 7),
(45, 'ET', 'KM', 5),
(46, 'KJ', 'KM', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tb_rel_sub`
--

CREATE TABLE `tb_rel_sub` (
  `ID` int(11) NOT NULL,
  `ID1` varchar(255) DEFAULT NULL,
  `ID2` varchar(255) DEFAULT NULL,
  `nilai` double DEFAULT NULL,
  `bobot` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_rel_sub`
--

INSERT INTO `tb_rel_sub` (`ID`, `ID1`, `ID2`, `nilai`, `bobot`) VALUES
(10, 'DP1', 'DP1', 1, NULL),
(17, 'DP2', 'DP1', 0.5, NULL),
(18, 'DP2', 'DP2', 1, NULL),
(22, 'DP1', 'DP2', 2, NULL),
(26, 'DP3', 'DP1', 0.333333333, NULL),
(27, 'DP3', 'DP2', 0.5, NULL),
(28, 'DP3', 'DP3', 1, NULL),
(32, 'DP1', 'DP3', 3, NULL),
(33, 'DP2', 'DP3', 2, NULL),
(37, 'ET1', 'DP1', 1, NULL),
(38, 'ET1', 'DP2', 1, NULL),
(39, 'ET1', 'DP3', 1, NULL),
(40, 'ET1', 'ET1', 1, NULL),
(44, 'DP1', 'ET1', 1, NULL),
(45, 'DP2', 'ET1', 1, NULL),
(46, 'DP3', 'ET1', 1, NULL),
(50, 'ET2', 'DP1', 1, NULL),
(51, 'ET2', 'DP2', 1, NULL),
(52, 'ET2', 'DP3', 1, NULL),
(53, 'ET2', 'ET1', 0.5, NULL),
(54, 'ET2', 'ET2', 1, NULL),
(58, 'DP1', 'ET2', 1, NULL),
(59, 'DP2', 'ET2', 1, NULL),
(60, 'DP3', 'ET2', 1, NULL),
(61, 'ET1', 'ET2', 2, NULL),
(65, 'ET3', 'DP1', 1, NULL),
(66, 'ET3', 'DP2', 1, NULL),
(67, 'ET3', 'DP3', 1, NULL),
(68, 'ET3', 'ET1', 0.333333333, NULL),
(69, 'ET3', 'ET2', 0.5, NULL),
(70, 'ET3', 'ET3', 1, NULL),
(74, 'DP1', 'ET3', 1, NULL),
(75, 'DP2', 'ET3', 1, NULL),
(76, 'DP3', 'ET3', 1, NULL),
(77, 'ET1', 'ET3', 3, NULL),
(78, 'ET2', 'ET3', 2, NULL),
(82, 'KJ1', 'DP1', 1, NULL),
(83, 'KJ1', 'DP2', 1, NULL),
(84, 'KJ1', 'DP3', 1, NULL),
(85, 'KJ1', 'ET1', 1, NULL),
(86, 'KJ1', 'ET2', 1, NULL),
(87, 'KJ1', 'ET3', 1, NULL),
(88, 'KJ1', 'KJ1', 1, NULL),
(92, 'DP1', 'KJ1', 1, NULL),
(93, 'DP2', 'KJ1', 1, NULL),
(94, 'DP3', 'KJ1', 1, NULL),
(95, 'ET1', 'KJ1', 1, NULL),
(96, 'ET2', 'KJ1', 1, NULL),
(97, 'ET3', 'KJ1', 1, NULL),
(101, 'KJ2', 'DP1', 1, NULL),
(102, 'KJ2', 'DP2', 1, NULL),
(103, 'KJ2', 'DP3', 1, NULL),
(104, 'KJ2', 'ET1', 1, NULL),
(105, 'KJ2', 'ET2', 1, NULL),
(106, 'KJ2', 'ET3', 1, NULL),
(107, 'KJ2', 'KJ1', 1, NULL),
(108, 'KJ2', 'KJ2', 1, NULL),
(112, 'DP1', 'KJ2', 1, NULL),
(113, 'DP2', 'KJ2', 1, NULL),
(114, 'DP3', 'KJ2', 1, NULL),
(115, 'ET1', 'KJ2', 1, NULL),
(116, 'ET2', 'KJ2', 1, NULL),
(117, 'ET3', 'KJ2', 1, NULL),
(118, 'KJ1', 'KJ2', 1, NULL),
(122, 'KJ3', 'DP1', 1, NULL),
(123, 'KJ3', 'DP2', 1, NULL),
(124, 'KJ3', 'DP3', 1, NULL),
(125, 'KJ3', 'ET1', 1, NULL),
(126, 'KJ3', 'ET2', 1, NULL),
(127, 'KJ3', 'ET3', 1, NULL),
(128, 'KJ3', 'KJ1', 1, NULL),
(129, 'KJ3', 'KJ2', 1, NULL),
(130, 'KJ3', 'KJ3', 1, NULL),
(134, 'DP1', 'KJ3', 1, NULL),
(135, 'DP2', 'KJ3', 1, NULL),
(136, 'DP3', 'KJ3', 1, NULL),
(137, 'ET1', 'KJ3', 1, NULL),
(138, 'ET2', 'KJ3', 1, NULL),
(139, 'ET3', 'KJ3', 1, NULL),
(140, 'KJ1', 'KJ3', 1, NULL),
(141, 'KJ2', 'KJ3', 1, NULL),
(145, 'KM1', 'DP1', 1, NULL),
(146, 'KM1', 'DP2', 1, NULL),
(147, 'KM1', 'DP3', 1, NULL),
(148, 'KM1', 'ET1', 1, NULL),
(149, 'KM1', 'ET2', 1, NULL),
(150, 'KM1', 'ET3', 1, NULL),
(151, 'KM1', 'KJ1', 1, NULL),
(152, 'KM1', 'KJ2', 1, NULL),
(153, 'KM1', 'KJ3', 1, NULL),
(154, 'KM1', 'KM1', 1, NULL),
(158, 'DP1', 'KM1', 1, NULL),
(159, 'DP2', 'KM1', 1, NULL),
(160, 'DP3', 'KM1', 1, NULL),
(161, 'ET1', 'KM1', 1, NULL),
(162, 'ET2', 'KM1', 1, NULL),
(163, 'ET3', 'KM1', 1, NULL),
(164, 'KJ1', 'KM1', 1, NULL),
(165, 'KJ2', 'KM1', 1, NULL),
(166, 'KJ3', 'KM1', 1, NULL),
(170, 'KM2', 'DP1', 1, NULL),
(171, 'KM2', 'DP2', 1, NULL),
(172, 'KM2', 'DP3', 1, NULL),
(173, 'KM2', 'ET1', 1, NULL),
(174, 'KM2', 'ET2', 1, NULL),
(175, 'KM2', 'ET3', 1, NULL),
(176, 'KM2', 'KJ1', 1, NULL),
(177, 'KM2', 'KJ2', 1, NULL),
(178, 'KM2', 'KJ3', 1, NULL),
(179, 'KM2', 'KM1', 1, NULL),
(180, 'KM2', 'KM2', 1, NULL),
(184, 'DP1', 'KM2', 1, NULL),
(185, 'DP2', 'KM2', 1, NULL),
(186, 'DP3', 'KM2', 1, NULL),
(187, 'ET1', 'KM2', 1, NULL),
(188, 'ET2', 'KM2', 1, NULL),
(189, 'ET3', 'KM2', 1, NULL),
(190, 'KJ1', 'KM2', 1, NULL),
(191, 'KJ2', 'KM2', 1, NULL),
(192, 'KJ3', 'KM2', 1, NULL),
(193, 'KM1', 'KM2', 1, NULL),
(197, 'KM3', 'DP1', 1, NULL),
(198, 'KM3', 'DP2', 1, NULL),
(199, 'KM3', 'DP3', 1, NULL),
(200, 'KM3', 'ET1', 1, NULL),
(201, 'KM3', 'ET2', 1, NULL),
(202, 'KM3', 'ET3', 1, NULL),
(203, 'KM3', 'KJ1', 1, NULL),
(204, 'KM3', 'KJ2', 1, NULL),
(205, 'KM3', 'KJ3', 1, NULL),
(206, 'KM3', 'KM1', 1, NULL),
(207, 'KM3', 'KM2', 1, NULL),
(208, 'KM3', 'KM3', 1, NULL),
(212, 'DP1', 'KM3', 1, NULL),
(213, 'DP2', 'KM3', 1, NULL),
(214, 'DP3', 'KM3', 1, NULL),
(215, 'ET1', 'KM3', 1, NULL),
(216, 'ET2', 'KM3', 1, NULL),
(217, 'ET3', 'KM3', 1, NULL),
(218, 'KJ1', 'KM3', 1, NULL),
(219, 'KJ2', 'KM3', 1, NULL),
(220, 'KJ3', 'KM3', 1, NULL),
(221, 'KM1', 'KM3', 1, NULL),
(222, 'KM2', 'KM3', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_sub`
--

CREATE TABLE `tb_sub` (
  `kode_sub` varchar(255) NOT NULL,
  `kode_kriteria` varchar(255) DEFAULT NULL,
  `nama_sub` varchar(255) DEFAULT NULL,
  `nilai_sub` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_sub`
--

INSERT INTO `tb_sub` (`kode_sub`, `kode_kriteria`, `nama_sub`, `nilai_sub`) VALUES
('DP1', 'DP', 'Kurang', 0.5389610389941),
('DP2', 'DP', 'Baik', 0.29725829727483),
('DP3', 'DP', 'Sangat Baik', 0.16378066373108),
('ET1', 'ET', 'Kurang', 0.5389610389941),
('ET2', 'ET', 'Baik', 0.29725829727483),
('ET3', 'ET', 'Sangat Baik', 0.16378066373108),
('KJ1', 'KJ', 'Kurang', 0.33333333333333),
('KJ2', 'KJ', 'Baik', 0.33333333333333),
('KJ3', 'KJ', 'Sangat Baik', 0.33333333333333),
('KM1', 'KM', 'Kurang', 0.33333333333333),
('KM2', 'KM', 'Baik', 0.33333333333333),
('KM3', 'KM', 'Sangat Baik', 0.33333333333333);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `kode_user` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `nama_user` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`kode_user`, `user`, `pass`, `nama_user`, `level`) VALUES
('A1', 'admin', 'admin', 'administrator', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_alternatif`
--
ALTER TABLE `tb_alternatif`
  ADD PRIMARY KEY (`kode_alternatif`);

--
-- Indexes for table `tb_kriteria`
--
ALTER TABLE `tb_kriteria`
  ADD PRIMARY KEY (`kode_kriteria`);

--
-- Indexes for table `tb_rel_alternatif`
--
ALTER TABLE `tb_rel_alternatif`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tb_rel_kriteria`
--
ALTER TABLE `tb_rel_kriteria`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tb_rel_sub`
--
ALTER TABLE `tb_rel_sub`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tb_sub`
--
ALTER TABLE `tb_sub`
  ADD PRIMARY KEY (`kode_sub`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_rel_alternatif`
--
ALTER TABLE `tb_rel_alternatif`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tb_rel_kriteria`
--
ALTER TABLE `tb_rel_kriteria`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `tb_rel_sub`
--
ALTER TABLE `tb_rel_sub`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=467;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
