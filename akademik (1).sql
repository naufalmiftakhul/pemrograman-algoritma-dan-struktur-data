-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2025 at 02:59 AM
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
-- Database: `akademik`
--

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id_jurusan` int(11) NOT NULL,
  `nama_jurusan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id_jurusan`, `nama_jurusan`) VALUES
(1, 'teknologi informasi'),
(2, 'industri'),
(3, 'elektro');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `npm` char(5) NOT NULL,
  `nama_mahasiswa` varchar(50) DEFAULT NULL,
  `id_jurusan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`npm`, `nama_mahasiswa`, `id_jurusan`) VALUES
('10', 'naufal', 1),
('11', 'indi', 1),
('12', 'mada', 2),
('13', 'supil', 2),
('14', 'iklim', 3),
('15', 'anggita', 3);

-- --------------------------------------------------------

--
-- Table structure for table `matkul`
--

CREATE TABLE `matkul` (
  `id_matkul` int(11) NOT NULL,
  `nama_matkul` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `matkul`
--

INSERT INTO `matkul` (`id_matkul`, `nama_matkul`) VALUES
(21, 'fisika'),
(22, 'mtk'),
(23, 'biologi'),
(24, 'kalkulus');

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` int(11) NOT NULL,
  `id_matkul` int(11) DEFAULT NULL,
  `npm` char(5) DEFAULT NULL,
  `nilai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`id_nilai`, `id_matkul`, `npm`, `nilai`) VALUES
(1, 21, '10', 100),
(2, 22, '10', 90),
(3, 22, '11', 80),
(4, 24, '11', 80),
(5, 24, '12', 85),
(6, 23, '12', 70),
(7, 21, '13', 70),
(8, 22, '13', 75),
(9, 21, '14', 95),
(10, 23, '14', 75),
(11, 24, '15', 75);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`npm`),
  ADD KEY `id_jurusan` (`id_jurusan`);

--
-- Indexes for table `matkul`
--
ALTER TABLE `matkul`
  ADD PRIMARY KEY (`id_matkul`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id_nilai`),
  ADD KEY `id_matkul` (`id_matkul`),
  ADD KEY `npm` (`npm`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`id_jurusan`) REFERENCES `jurusan` (`id_jurusan`);

--
-- Constraints for table `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `nilai_ibfk_1` FOREIGN KEY (`id_matkul`) REFERENCES `matkul` (`id_matkul`),
  ADD CONSTRAINT `nilai_ibfk_2` FOREIGN KEY (`npm`) REFERENCES `mahasiswa` (`npm`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
