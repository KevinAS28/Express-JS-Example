-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 28, 2019 at 06:02 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sekolah`
--

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `id` int(11) NOT NULL,
  `nama_penyewa` varchar(55) NOT NULL,
  `kode_kamar` varchar(11) NOT NULL,
  `jenis_kamar` varchar(15) NOT NULL,
  `biaya_sewa` int(11) NOT NULL,
  `fasilitas_tambahan` int(11) NOT NULL,
  `total_sewa` int(11) NOT NULL,
  `bayar` int(11) NOT NULL,
  `kembali` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`id`, `nama_penyewa`, `kode_kamar`, `jenis_kamar`, `biaya_sewa`, `fasilitas_tambahan`, `total_sewa`, `bayar`, `kembali`) VALUES
(12, 'Aldi', 'D001', 'Double Bed', 1200000, 200000, 1400000, 1000000, -400000);

-- --------------------------------------------------------

--
-- Table structure for table `kereta_api`
--

CREATE TABLE `kereta_api` (
  `id` int(11) NOT NULL,
  `jenis_kereta` varchar(155) NOT NULL,
  `jumlah_tiket` int(11) NOT NULL,
  `nama_kereta` varchar(155) NOT NULL,
  `harga_tiket` int(11) NOT NULL,
  `biaya_asuransi` int(11) NOT NULL,
  `biaya` int(11) NOT NULL,
  `potongan` int(11) NOT NULL,
  `PPN` int(11) NOT NULL,
  `jumlah_uang` int(11) NOT NULL,
  `total_bayar` int(11) NOT NULL,
  `kembalian` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kereta_api`
--

INSERT INTO `kereta_api` (`id`, `jenis_kereta`, `jumlah_tiket`, `nama_kereta`, `harga_tiket`, `biaya_asuransi`, `biaya`, `potongan`, `PPN`, `jumlah_uang`, `total_bayar`, `kembalian`) VALUES
(50, 'AG001', 6, 'Argo Bromo', 1000000, 600000, 6000000, 5400000, 600000, 70000000, 6015000, 63985000),
(51, 'AG001', 1, 'Argo Bromo', 1000000, 150000, 1000000, 850000, 100000, 10000000, 955000, 9045000),
(54, 'AG001', 1, 'Argo Bromo', 1000000, 50000, 1000000, 950000, 100000, 100000000, 1065000, 98935000);

-- --------------------------------------------------------

--
-- Table structure for table `komputer`
--

CREATE TABLE `komputer` (
  `id` int(11) NOT NULL,
  `no_pendaftaran` int(11) NOT NULL,
  `jenis_kursus` varchar(255) NOT NULL,
  `nama_kursus` varchar(255) NOT NULL,
  `hari` int(11) NOT NULL,
  `biaya_pendaftaran` varchar(255) NOT NULL,
  `biaya_fasilitas` varchar(255) NOT NULL,
  `total_pembayaran` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `komputer`
--

INSERT INTO `komputer` (`id`, `no_pendaftaran`, `jenis_kursus`, `nama_kursus`, `hari`, `biaya_pendaftaran`, `biaya_fasilitas`, `total_pembayaran`) VALUES
(30, 5, 'P001', 'Private', 4, '400000', '70000', '470000'),
(33, 999, 'U001', 'Umum', 3, '150000', '70000', '220000'),
(35, 934034, 'P001', 'Private', 1, '120000', '70000', '190000'),
(36, 0, 'U001', 'Umum', 3, '210000', '20000', '230000'),
(37, 1, 'P001', 'Private', 3, '120000', '50000', '170000'),
(38, 997, 'U001', 'Umum', 3, '70000', '150000', '220000'),
(40, 997, 'U001', 'Umum', 3, '100000', '70000', '170000');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nis` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `kelas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nis`, `nama`, `jenis_kelamin`, `alamat`, `kelas`) VALUES
('1017007661', 'Akmal', 'Laki-Laki', 'Mars', '12 TKJ 1');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `namalengkap` varchar(250) NOT NULL,
  `tagline` varchar(250) NOT NULL,
  `file_photo` varchar(250) NOT NULL,
  `followers` int(11) NOT NULL,
  `following` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `namalengkap`, `tagline`, `file_photo`, `followers`, `following`) VALUES
(1, 'Naisu', '12345', 'Naisu Pangestu', 'Everyday is ...', 'smk_bisa.jpg', 190302, 3),
(2, 'test0', 'test0', 'Tester', 'TestTag', 'pc.jpg', 3000, -1);

-- --------------------------------------------------------

--
-- Table structure for table `user_images`
--

CREATE TABLE `user_images` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_images`
--

INSERT INTO `user_images` (`id`, `username`, `image`) VALUES
(3, 'test0', 'pc'),
(4, 'Naisu', 'smk_bisa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kereta_api`
--
ALTER TABLE `kereta_api`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `komputer`
--
ALTER TABLE `komputer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_images`
--
ALTER TABLE `user_images`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `kereta_api`
--
ALTER TABLE `kereta_api`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `komputer`
--
ALTER TABLE `komputer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_images`
--
ALTER TABLE `user_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
