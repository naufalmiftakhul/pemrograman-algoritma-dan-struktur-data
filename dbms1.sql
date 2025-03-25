-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2025 at 03:30 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbms1`
--

-- --------------------------------------------------------

--
-- Table structure for table `gaji`
--

CREATE TABLE `gaji` (
  `gol` int(1) NOT NULL,
  `gopek` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gaji`
--

INSERT INTO `gaji` (`gol`, `gopek`) VALUES
(1, 1500000),
(2, 2000000),
(3, 3500000),
(4, 5000000);

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `nip` char(5) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `alamat` varchar(20) DEFAULT NULL,
  `tahun_masuk` year(4) DEFAULT NULL,
  `gol` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`nip`, `nama`, `tanggal_lahir`, `alamat`, `tahun_masuk`, `gol`) VALUES
('001', 'ahmad burhanudin', '1990-12-12', 'bandung', '2010', 3),
('002', 'sahal amin', '1989-10-12', 'temanggung', '2010', 3),
('003', 'widad nabil', '1999-10-09', 'wonosobo', '2011', 4),
('004', 'naufal miftakhul', '1998-07-09', 'wonosobo', '2009', 1),
('005', 'galang dwi', '1988-06-25', 'kendal', '2009', 1),
('006', 'amsyal', '1996-06-15', 'magelang', '2011', 2),
('007', 'tio', '1970-10-15', 'semarang', '2010', 4),
('008', 'syamil', '1988-06-05', 'semarang', '2009', 2),
('009', 'supil', '1990-10-05', 'temanggung', '2010', 1),
('010', 'ahmada', '1987-01-06', 'magelang', '2009', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gaji`
--
ALTER TABLE `gaji`
  ADD PRIMARY KEY (`gol`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`nip`),
  ADD KEY `gol` (`gol`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD CONSTRAINT `pegawai_ibfk_1` FOREIGN KEY (`gol`) REFERENCES `gaji` (`gol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
