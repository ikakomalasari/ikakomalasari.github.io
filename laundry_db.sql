-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Jan 2023 pada 10.32
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laundry_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(8) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `email`, `pass`) VALUES
(1, 'sbd8@email.com', 'bismillah'),
(2, 'komalaika229@gmail.com', 'ika123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `No_Order` char(4) NOT NULL,
  `Id_Pakaian` char(2) NOT NULL,
  `Jumlah_pakaian` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`No_Order`, `Id_Pakaian`, `Jumlah_pakaian`) VALUES
('1135', 'B3', 2),
('1135', 'S4', 2),
('1134', 'S4', 8),
('1136', 'B1', 1),
('1136', 'K2', 1),
('1137', 'K1', 1),
('1137', 'B1', 1),
('1138', 'K1', 2),
('1138', 'K3', 1),
('1139', 'J1', 2),
('1139', 'M1', 1),
('1139', 'S2', 1),
('1140', 'B2', 1),
('1141', 'B1', 2),
('1140', 'C2', 2),
('1144', 'R1', 3),
('1146', 'B3', 2),
('1149', 'B1', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pakaian`
--

CREATE TABLE `pakaian` (
  `Id_Pakaian` char(2) NOT NULL,
  `Jenis_Pakaian` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pakaian`
--

INSERT INTO `pakaian` (`Id_Pakaian`, `Jenis_Pakaian`) VALUES
('B1', 'Baju Muslim'),
('B2', 'Bad Cover'),
('B3', 'Boneka'),
('C1', 'Celana Dalam'),
('C2', 'Celana Panjang'),
('C3', 'Celana Pendek'),
('D1', 'Daster'),
('H1', 'Handuk'),
('J1', 'Jaket'),
('K1', 'Kaos'),
('K2', 'Kaos Dalam'),
('K3', 'Kaos Kaki'),
('K4', 'Kebaya'),
('K5', 'Kemeja'),
('M1', 'Mukena'),
('R1', 'Rok'),
('R2', 'Rompi'),
('S1', 'Sarung Bantal'),
('S2', 'Sejadah'),
('S3', 'Sarung Guling'),
('S4', 'Selimut'),
('S5', 'Seprei'),
('S6', 'Sweater');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `No_Identitas` char(8) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `Alamat` varchar(30) DEFAULT NULL,
  `No_Hp` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`No_Identitas`, `Nama`, `Alamat`, `No_Hp`) VALUES
('10115562', 'Hani', 'Bandung', '081232121111'),
('10115310', 'Barrur', 'Bandung', '089123222321'),
('10115315', 'Nanda', 'Bandung', '087824521555'),
('10115313', 'Fata', 'Bandung', '087822555784'),
('10115322', 'Sinta', 'Bandung', '082313112111'),
('10115320', 'Nur', 'Bandung', '082122122122'),
('10115413', 'ika', 'majalengka', '0857223345776'),
('10115326', 'Vina', 'Karanglewas', '08572245655');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `No_Order` char(4) NOT NULL,
  `No_Identitas` char(8) NOT NULL,
  `Tgl_Terima` date DEFAULT NULL,
  `Tgl_Ambil` date DEFAULT NULL,
  `total_berat` float NOT NULL,
  `diskon` float NOT NULL,
  `Total_Bayar` int(6) DEFAULT NULL,
  `admin_id` int(8) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`No_Order`, `No_Identitas`, `Tgl_Terima`, `Tgl_Ambil`, `total_berat`, `diskon`, `Total_Bayar`, `admin_id`) VALUES
('1134', '10115562', '2017-06-10', '2017-06-12', 7.7, 0, 46000, 1),
('1135', '10115310', '2017-06-10', '2017-06-12', 4, 0, 24000, 1),
('1136', '10115315', '2017-06-11', '2017-06-13', 2, 0, 12000, 1),
('1137', '10115313', '2017-06-12', '2017-06-14', 1.6, 0, 9000, 1),
('1138', '10115322', '2017-06-12', '2017-06-14', 2.7, 0, 16200, 1),
('1139', '10115320', '2017-06-13', '2017-06-14', 4, 0, 24000, 1),
('1140', '10115310', '2018-01-23', '2018-01-23', 3, 0, 21000, 0),
('1141', '10115313', '2018-01-23', '2018-01-23', 3, 0, 21000, 0),
('1146', '10115413', '2022-12-27', NULL, 7, 0, 49000, 1),
('1144', '10115413', '2022-12-11', NULL, 9.9, 0, 69300, 1),
('1145', '10115562', '2022-12-23', NULL, 7.2, 0, 50400, 1),
('1147', '10115413', '2023-01-06', NULL, 2.5, 0, 17500, 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD KEY `No_Order` (`No_Order`),
  ADD KEY `Id_Pakaian` (`Id_Pakaian`);

--
-- Indeks untuk tabel `pakaian`
--
ALTER TABLE `pakaian`
  ADD PRIMARY KEY (`Id_Pakaian`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`No_Identitas`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`No_Order`),
  ADD KEY `No_Identitas` (`No_Identitas`),
  ADD KEY `No_Identitas_2` (`No_Identitas`),
  ADD KEY `No_Identitas_3` (`No_Identitas`),
  ADD KEY `admin_id` (`admin_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
