-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2022 at 05:01 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbakademik2`
--

-- --------------------------------------------------------

--
-- Table structure for table `tababsensi`
--

CREATE TABLE `tababsensi` (
  `idabsen` int(4) NOT NULL,
  `idjadwal` int(4) NOT NULL,
  `npm` char(9) NOT NULL,
  `keterangan` char(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tababsensi`
--

INSERT INTO `tababsensi` (`idabsen`, `idjadwal`, `npm`, `keterangan`) VALUES
(1, 3, '200810001', 'Hadir'),
(2, 3, '200810002', 'Hadir'),
(3, 1, '200970001', 'Hadir'),
(4, 1, '200970002', 'Hadir'),
(5, 2, '200970001', 'Hadir'),
(6, 2, '200810002', 'Hadir'),
(7, 4, '200810001', 'Hadir'),
(8, 4, '200810002', 'Hadir'),
(9, 5, '200810001', 'Hadir'),
(10, 5, '200810002', 'Hadir');

-- --------------------------------------------------------

--
-- Table structure for table `tabdosen`
--

CREATE TABLE `tabdosen` (
  `nidn` char(10) NOT NULL,
  `nama_dosen` varchar(30) NOT NULL,
  `pendidikan` char(20) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `telepon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabdosen`
--

INSERT INTO `tabdosen` (`nidn`, `nama_dosen`, `pendidikan`, `alamat`, `telepon`) VALUES
('1803897845', 'Johnny', 'S.Psi, M.Psi', 'jl.bunga desa', '0812489467890'),
('1807458967', 'Sarah', 'S.Kom, M.Kom', 'jl.imam bonjol', '081245789956'),
('1900450067', 'Tiffany ', 'S.Pd, M.Pd', 'jl.kenari', '081267894567'),
('1900450089', 'Jamal', 'S.Ak, M.Ak', 'jl.cafe jake', '081267896667');

-- --------------------------------------------------------

--
-- Table structure for table `tabjadwalkuliah`
--

CREATE TABLE `tabjadwalkuliah` (
  `idjadwal` int(4) NOT NULL,
  `hari` char(8) NOT NULL,
  `jam` char(10) NOT NULL,
  `kdmk` char(8) NOT NULL,
  `nidn` char(10) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabjadwalkuliah`
--

INSERT INTO `tabjadwalkuliah` (`idjadwal`, `hari`, `jam`, `kdmk`, `nidn`, `keterangan`) VALUES
(1, 'Senin', 'AB', '7000001', '1803897845', 'Hadir'),
(2, 'Selasa', 'EF', '7000002', '1803897845', 'Hadir'),
(3, 'Rabu', 'GHI', '8000001', '1807458967', 'Hadir'),
(4, 'Kamis', 'JKI', '8000002', '1807458967', 'Hadir'),
(5, 'Jumat', 'ABCD', '8000003', '1807458967', 'Hadir'),
(6, 'Sabtu', 'EFGH', '8000004', '1807458967', 'Hadir');

-- --------------------------------------------------------

--
-- Table structure for table `tabmahasiwa`
--

CREATE TABLE `tabmahasiwa` (
  `npm` char(9) NOT NULL,
  `nm_mahasiswa` varchar(30) NOT NULL,
  `jurusan` varchar(30) NOT NULL,
  `semester` char(7) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `tlahir` varchar(30) NOT NULL,
  `tgllahir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabmahasiwa`
--

INSERT INTO `tabmahasiwa` (`npm`, `nm_mahasiswa`, `jurusan`, `semester`, `alamat`, `tlahir`, `tgllahir`) VALUES
('200810001', 'Jarel', 'Sistem Informasi', '5', 'jl.seoul', 'seoul', '2000-05-02'),
('200810002', 'Jendral', 'Sistem Informasi', '5', 'jl.opol', 'seoul', '2000-02-03'),
('200970001', 'Reihan', 'Psikologi', '5', 'jl.kenanga', 'bandung', '2000-02-01'),
('200970002', 'Haikal', 'Psikologi', '5', 'jl.imam', 'bandung', '2000-03-04');

-- --------------------------------------------------------

--
-- Table structure for table `tabmatkul`
--

CREATE TABLE `tabmatkul` (
  `kdmk` char(8) NOT NULL,
  `nm_matkul` varchar(30) NOT NULL,
  `sks` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabmatkul`
--

INSERT INTO `tabmatkul` (`kdmk`, `nm_matkul`, `sks`) VALUES
('7000001', 'Psikologi Dasar', '2'),
('7000002', 'Psikologi Lanjutan', '3'),
('7000003', 'Psikologi Sosial', '4'),
('7000004', 'Psikologi Pendidikan', '4'),
('8000001', 'Interaksi Manusia dan Komputer', '4'),
('8000002', 'Administrasi Data', '4'),
('8000003', 'Audit Sistem Informasi', '3'),
('8000004', 'Pemrograman Berorientasi Objek', '3');

-- --------------------------------------------------------

--
-- Table structure for table `tabnilai`
--

CREATE TABLE `tabnilai` (
  `idnilai` int(4) NOT NULL,
  `npm` char(9) NOT NULL,
  `kdmk` char(8) NOT NULL,
  `nidn` char(10) NOT NULL,
  `nsikap` char(4) NOT NULL,
  `ntugas` char(4) NOT NULL,
  `nuts` char(4) NOT NULL,
  `nuas` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabnilai`
--

INSERT INTO `tabnilai` (`idnilai`, `npm`, `kdmk`, `nidn`, `nsikap`, `ntugas`, `nuts`, `nuas`) VALUES
(1, '200810001', '8000001', '1807458967', '100', '80', '70', '85'),
(2, '200810002', '8000001', '1807458967', '100', '80', '97', '80'),
(3, '200810001', '8000002', '1807458967', '100', '90', '85', '80'),
(4, '200810002', '8000002', '1807458967', '100', '80', '89', '95'),
(5, '200970001', '7000001', '1803897845', '100', '75', '89', '95'),
(6, '200970002', '7000001', '1803897845', '100', '85', '96', '90'),
(7, '200970001', '7000002', '1803897845', '100', '80', '85', '85'),
(8, '200970002', '7000002', '1803897845', '100', '85', '89', '80');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tababsensi`
--
ALTER TABLE `tababsensi`
  ADD PRIMARY KEY (`idabsen`),
  ADD KEY `idjadwal` (`idjadwal`),
  ADD KEY `npm` (`npm`);

--
-- Indexes for table `tabdosen`
--
ALTER TABLE `tabdosen`
  ADD PRIMARY KEY (`nidn`);

--
-- Indexes for table `tabjadwalkuliah`
--
ALTER TABLE `tabjadwalkuliah`
  ADD PRIMARY KEY (`idjadwal`),
  ADD KEY `kdmk` (`kdmk`),
  ADD KEY `nidn` (`nidn`);

--
-- Indexes for table `tabmahasiwa`
--
ALTER TABLE `tabmahasiwa`
  ADD PRIMARY KEY (`npm`);

--
-- Indexes for table `tabmatkul`
--
ALTER TABLE `tabmatkul`
  ADD PRIMARY KEY (`kdmk`);

--
-- Indexes for table `tabnilai`
--
ALTER TABLE `tabnilai`
  ADD PRIMARY KEY (`idnilai`),
  ADD KEY `kdmk` (`kdmk`),
  ADD KEY `npm` (`npm`),
  ADD KEY `nidn` (`nidn`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tababsensi`
--
ALTER TABLE `tababsensi`
  MODIFY `idabsen` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tabjadwalkuliah`
--
ALTER TABLE `tabjadwalkuliah`
  MODIFY `idjadwal` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tabnilai`
--
ALTER TABLE `tabnilai`
  MODIFY `idnilai` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tababsensi`
--
ALTER TABLE `tababsensi`
  ADD CONSTRAINT `tababsensi_ibfk_1` FOREIGN KEY (`idjadwal`) REFERENCES `tabjadwalkuliah` (`idjadwal`),
  ADD CONSTRAINT `tababsensi_ibfk_2` FOREIGN KEY (`npm`) REFERENCES `tabmahasiwa` (`npm`);

--
-- Constraints for table `tabjadwalkuliah`
--
ALTER TABLE `tabjadwalkuliah`
  ADD CONSTRAINT `tabjadwalkuliah_ibfk_1` FOREIGN KEY (`kdmk`) REFERENCES `tabmatkul` (`kdmk`),
  ADD CONSTRAINT `tabjadwalkuliah_ibfk_2` FOREIGN KEY (`nidn`) REFERENCES `tabdosen` (`nidn`);

--
-- Constraints for table `tabnilai`
--
ALTER TABLE `tabnilai`
  ADD CONSTRAINT `tabnilai_ibfk_1` FOREIGN KEY (`kdmk`) REFERENCES `tabmatkul` (`kdmk`),
  ADD CONSTRAINT `tabnilai_ibfk_2` FOREIGN KEY (`npm`) REFERENCES `tabmahasiwa` (`npm`),
  ADD CONSTRAINT `tabnilai_ibfk_3` FOREIGN KEY (`nidn`) REFERENCES `tabdosen` (`nidn`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
