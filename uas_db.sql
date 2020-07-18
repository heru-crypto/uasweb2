-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 18 Jul 2020 pada 17.29
-- Versi Server: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `uas_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `biaya`
--

CREATE TABLE IF NOT EXISTS `biaya` (
  `id_biaya` int(10) NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `makan` varchar(50) NOT NULL,
  `biaya` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `biaya`
--

INSERT INTO `biaya` (`id_biaya`, `jenis`, `makan`, `biaya`) VALUES
(32, 'Warteg Kharisma', 'Paket nasi tempe orek, kentang balado, oseng-oseng', '30000'),
(33, 'Restoran Padang Sederhana', 'Paket nasi sate padang', '40000'),
(34, ' Soto Ayam Ndelik', 'Paket Nasi Soto Ayam plus mendoan', '35000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE IF NOT EXISTS `transaksi` (
  `id_transaksi` int(10) NOT NULL,
  `no_nota` varchar(100) NOT NULL,
  `jenis` varchar(100) NOT NULL,
  `makan` varchar(100) NOT NULL,
  `biaya` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `hape` varchar(50) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `email` char(100) NOT NULL,
  `id_user` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `no_nota`, `jenis`, `makan`, `biaya`, `nama`, `hape`, `mail`, `email`, `id_user`) VALUES
(82, 'C001', 'Warteg Kharisma', 'Paket nasi tempe orek, kentang balado, oseng-oseng, tongkol', '30000', 'Iqbal Saputra Widianto', '08972911197', 'iqbal.nyax@gmail.com', '', 0),
(83, 'C002', ' Restoran Padang\r\nSederhana', 'Paket nasi sate padang', '40000', 'Heru Pratama', '081319325206', 'herupratama1998@gmail.com', '', 0),
(84, 'C003', 'Soto Ayam Ndelik ', ' Paket Nasi Soto Ayam plus mendoan', '35000', 'Gilang Adi Prasetia', '089611109345', 'adig353@gmail.com', '', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id_user` tinyint(2) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(35) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `hp` varchar(20) NOT NULL,
  `level` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama`, `alamat`, `hp`, `level`) VALUES
(1, 'masrud', '7d05dc02abe9cda729d0c798c886db47', 'M. Rudianto', 'Ds. Bareng, Kec. Sawahan Kab. Nganjuk - Jawa Timur', '085735501035', 1),
(3, 'uask5', 'b70092ad385390fd8feec901879696f2', 'Uas Kelompok 5', 'Universitas Pamulang', '021 7879456', 1),
(4, 'iqbal', 'e10adc3949ba59abbe56e057f20f883e', 'Iqbal Saputra Widianto', 'Tangerang Selatan', '08972911197', 1),
(5, 'heru', 'e10adc3949ba59abbe56e057f20f883e', 'Heru Pratama', 'Tangerang Selatan', '081319325206', 1),
(6, 'gilang', 'e10adc3949ba59abbe56e057f20f883e', 'Gilang Adi Prasetia', 'Tangerang Selatan', '089677709345', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `biaya`
--
ALTER TABLE `biaya`
  ADD PRIMARY KEY (`id_biaya`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `biaya`
--
ALTER TABLE `biaya`
  MODIFY `id_biaya` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=85;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` tinyint(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
