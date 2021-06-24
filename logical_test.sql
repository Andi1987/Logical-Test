-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2021 at 06:58 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.1.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `logical_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_looping`
--

CREATE TABLE `tbl_looping` (
  `gtAkademik` varchar(25) NOT NULL,
  `gtFinansi` varchar(25) NOT NULL,
  `gtPerizinan` varchar(25) NOT NULL,
  `eCampuz` varchar(25) NOT NULL,
  `eOviz` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_looping`
--

INSERT INTO `tbl_looping` (`gtAkademik`, `gtFinansi`, `gtPerizinan`, `eCampuz`, `eOviz`) VALUES
('gtAkademik', 'gtFinansi', 'gtPerizinan', 'eCampuz', 'eOviz');

-- --------------------------------------------------------

--
-- Table structure for table `tb_mahasiswa`
--

CREATE TABLE `tb_mahasiswa` (
  `mhs_id` int(2) NOT NULL,
  `mhs_nim` int(10) NOT NULL,
  `mhs_nama` varchar(20) NOT NULL,
  `mhs_angkatan` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_mahasiswa`
--

INSERT INTO `tb_mahasiswa` (`mhs_id`, `mhs_nim`, `mhs_nama`, `mhs_angkatan`) VALUES
(1, 20180001, 'Jono', 2018),
(2, 20180002, 'Taufik', 2018),
(3, 20180003, 'Maria', 2018),
(4, 20190001, 'Sari', 2019),
(5, 20190002, 'Bambang', 2019);

-- --------------------------------------------------------

--
-- Table structure for table `tb_mahasiswa_nilai`
--

CREATE TABLE `tb_mahasiswa_nilai` (
  `mhs_nilai_id` int(2) NOT NULL,
  `mhs_id` int(2) NOT NULL,
  `mk_id` int(2) NOT NULL,
  `nilai` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_mahasiswa_nilai`
--

INSERT INTO `tb_mahasiswa_nilai` (`mhs_nilai_id`, `mhs_id`, `mk_id`, `nilai`) VALUES
(1, 1, 1, 70),
(2, 1, 2, 76),
(3, 2, 1, 82),
(4, 2, 2, 74),
(5, 4, 1, 78),
(6, 4, 2, 80),
(7, 5, 1, 60);

-- --------------------------------------------------------

--
-- Table structure for table `tb_matakuliah`
--

CREATE TABLE `tb_matakuliah` (
  `mk_id` int(2) NOT NULL,
  `mk_kode` varchar(5) NOT NULL,
  `mk_sks` int(2) NOT NULL,
  `mk_nama` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_matakuliah`
--

INSERT INTO `tb_matakuliah` (`mk_id`, `mk_kode`, `mk_sks`, `mk_nama`) VALUES
(1, 'MK202', 3, 'OOP'),
(2, 'MK303', 2, 'Basis Data');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
