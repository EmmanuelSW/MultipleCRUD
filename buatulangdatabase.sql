-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 21 Okt 2015 pada 06.30
-- Versi Server: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `asamurat`
--
CREATE DATABASE `asamurat`;
USE `asamurat`;
-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_surat_masuk`
--

CREATE TABLE IF NOT EXISTS `tbl_surat_masuk` (
  `id` int(11) NOT NULL,
  `no_surat` varchar(255) NOT NULL,
  `tgl_pengiriman` date NOT NULL,
  `tgl_masuk` date NOT NULL,
  `asal` varchar(255) NOT NULL,
  `perihal` varchar(255) NOT NULL,
  `aksi` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_surat_masuk`
--

INSERT INTO `tbl_surat_masuk` (`id`, `no_surat`, `tgl_pengiriman`, `tgl_masuk`, `asal`, `perihal`, `aksi`) VALUES
(21, '123023', '2015-10-04', '2015-10-11', 'AHASS Serdam', 'Event', ''),
(29, '23232', '2015-10-11', '2015-10-11', 'AHASS Singkawang', 'Undangan', ''),
(31, '0', '0000-00-00', '0000-00-00', 'qweqe', 'qweq', ''),
(33, '12312', '0000-00-00', '0000-00-00', 'asdasd', 'asdasd', ''),
(34, '12312', '0000-00-00', '0000-00-00', 'asdasd', 'asdasd', ''),
(35, '2434', '0000-00-00', '0000-00-00', '34234', '234234', ''),
(36, '22342', '0000-00-00', '0000-00-00', '123213', '123213', ''),
(37, '2234234', '0000-00-00', '0000-00-00', 'adsdas', 'adsadsasd', ''),
(38, '2234234', '0000-00-00', '0000-00-00', 'adsdas', 'adsadsasd', ''),
(39, '2234234', '0000-00-00', '0000-00-00', 'adsdas', 'adsadsasd', ''),
(40, '2234234', '0000-00-00', '0000-00-00', 'adsdas', 'adsadsasd', ''),
(43, '112123', '2015-10-12', '2015-10-15', 'AHASS Singkawang', 'Undangan', ''),
(44, '0', '2015-10-04', '2016-01-04', 'kkjkjk', 'jjhj', ''),
(45, '0', '2015-10-04', '2015-10-20', 'jhjhjhh', 'ggfgfgf', ''),
(46, 'lklklk', '2015-10-13', '2015-10-21', 'hkjjk', 'ggfgfgf', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_surat_masuk`
--
ALTER TABLE `tbl_surat_masuk`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_surat_masuk`
--
ALTER TABLE `tbl_surat_masuk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
