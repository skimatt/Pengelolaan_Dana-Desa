-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Feb 2025 pada 04.20
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_danadesa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_danamasuk`
--

CREATE TABLE `tb_danamasuk` (
  `id_danamasuk` int(11) NOT NULL,
  `sumber` varchar(50) NOT NULL,
  `nominal` double NOT NULL,
  `tgl_masuk` date NOT NULL,
  `nama_dana` varchar(50) NOT NULL,
  `penanggung_jawab` varchar(30) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_danamasuk`
--

INSERT INTO `tb_danamasuk` (`id_danamasuk`, `sumber`, `nominal`, `tgl_masuk`, `nama_dana`, `penanggung_jawab`, `keterangan`) VALUES
(3, 'Pemerintah Pusat', 17000000, '2024-01-01', 'Pembangunan Infrastruktur Desa', 'Rahamat', 'Dana tahap 1'),
(4, 'Pemerintah Pusat', 86000000, '2024-03-01', 'Pembangunan Infrastruktur Desa', 'Zaiyadi', 'Dana tahap 2'),
(6, 'Pemerintah Kota', 12000000, '2024-06-01', 'Pembangunan Musholla Desa', 'Razak ', 'Dana tahap 3'),
(7, 'Pemerintah Kota', 19000000, '2024-09-01', 'Pembangunan Musholla Desa', 'Muzakir', 'Dana tahap 4'),
(8, 'Pemertah Puasat', 675000000, '2024-12-16', 'Pembangunan Wisata ', 'Jonah', 'Dana tahap 5'),
(9, 'BUMN', 75000000, '2024-12-11', 'bantuan anak yatim', 'muhammad ruslan', 'Tahap 1'),
(10, 'bumn', 75000000, '0000-00-00', 'bantuan anak yatim', 'muhammad ruslan', '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_operator`
--

CREATE TABLE `tb_operator` (
  `operator_id` int(20) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `last_login` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_operator`
--

INSERT INTO `tb_operator` (`operator_id`, `nama_lengkap`, `username`, `password`, `last_login`) VALUES
(1, 'Rahmat', 'Rahmat', '827ccb0eea8a706c4c34a16891f84e7b', '2025-02-02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_penggunaan`
--

CREATE TABLE `tb_penggunaan` (
  `id_penggunaan` int(11) NOT NULL,
  `nama_keperluan` varchar(50) NOT NULL,
  `jumlah_dana` double NOT NULL,
  `tahap` int(11) NOT NULL,
  `tgl_pengeluaran` date NOT NULL,
  `penerima` varchar(30) NOT NULL,
  `status` enum('selesai','berlanjut') NOT NULL,
  `info` text NOT NULL,
  `id_danamasuk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_penggunaan`
--

INSERT INTO `tb_penggunaan` (`id_penggunaan`, `nama_keperluan`, `jumlah_dana`, `tahap`, `tgl_pengeluaran`, `penerima`, `status`, `info`, `id_danamasuk`) VALUES
(24, 'pembangunan', 34000000, 1, '2024-11-12', 'Rahmat', 'selesai', 'Terselesaikan', 3),
(27, 'Renovasi Balai Desa', 43757465, 2, '2024-12-31', 'skimatt', 'berlanjut', 'Terselesaikan', 6),
(28, 'Renovasi Balai Desa', 23000000, 3, '2024-12-05', 'Ramayana', 'berlanjut', 'Terselesaikan', 3),
(29, 'belanja seragam sekolah', 25000000, 1, '2024-12-11', 'syamsuddin', 'selesai', 'baju seragam anak yatim 4 keluarga', 9);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_danamasuk`
--
ALTER TABLE `tb_danamasuk`
  ADD PRIMARY KEY (`id_danamasuk`);

--
-- Indeks untuk tabel `tb_operator`
--
ALTER TABLE `tb_operator`
  ADD PRIMARY KEY (`operator_id`);

--
-- Indeks untuk tabel `tb_penggunaan`
--
ALTER TABLE `tb_penggunaan`
  ADD PRIMARY KEY (`id_penggunaan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_danamasuk`
--
ALTER TABLE `tb_danamasuk`
  MODIFY `id_danamasuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tb_operator`
--
ALTER TABLE `tb_operator`
  MODIFY `operator_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_penggunaan`
--
ALTER TABLE `tb_penggunaan`
  MODIFY `id_penggunaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
