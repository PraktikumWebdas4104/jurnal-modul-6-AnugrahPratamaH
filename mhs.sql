-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Okt 2018 pada 05.04
-- Versi server: 10.1.34-MariaDB
-- Versi PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mhs`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `datamhs`
--

CREATE TABLE `datamhs` (
  `nama` varchar(35) NOT NULL,
  `nim` varchar(10) NOT NULL,
  `password` varchar(15) NOT NULL,
  `kelas` varchar(25) NOT NULL,
  `jenis_kelamin` varchar(25) NOT NULL,
  `hobi` varchar(25) NOT NULL,
  `fakultas` varchar(25) NOT NULL,
  `alamat` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `datamhs`
--

INSERT INTO `datamhs` (`nama`, `nim`, `password`, `kelas`, `jenis_kelamin`, `hobi`, `fakultas`, `alamat`) VALUES
('', '', '', '', '', '', 'FIT', ''),
('tama', '6701174034', '1', 'MI04', 'Laki-Laki', 'Mancing', 'FIT', 'Bandung'),
('ernisa', '670174038', 'ernisa', 'MI04', 'Perempuan', 'Mancing', 'FIK', 'Bandung');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `datamhs`
--
ALTER TABLE `datamhs`
  ADD PRIMARY KEY (`nim`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
