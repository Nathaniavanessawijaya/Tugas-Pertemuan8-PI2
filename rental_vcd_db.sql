-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Jun 2021 pada 17.31
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rental_vcd`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_anggota`
--

CREATE TABLE `tbl_anggota` (
  `id_anggota` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `no_tlp` varchar(20) NOT NULL,
  `alamat` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_anggota`
--

INSERT INTO `tbl_anggota` (`id_anggota`, `nama`, `no_tlp`, `alamat`) VALUES
(1, 'Nathania Vanessa Wijaya', '0871234567', 'Jl. Anggur'),
(2, 'Aulia Apriliani Mulyadi', '0897665568', 'Jl. Apel'),
(3, 'Nur Intan Agustin', '0823456788', 'Jl. Mangga'),
(4, 'Agus Permadi', '0854327890', 'Jl. Semangka'),
(5, 'Nandi Saputra', '0896547654', 'Jl. Strawberry');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pjm`
--

CREATE TABLE `tbl_pjm` (
  `id_pjm` int(11) NOT NULL,
  `id_anggota` int(11) NOT NULL,
  `nama_vcd` varchar(200) NOT NULL,
  `tgl_pjm` date NOT NULL,
  `tgl_kmbl` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_pjm`
--

INSERT INTO `tbl_pjm` (`id_pjm`, `id_anggota`, `nama_vcd`, `tgl_pjm`, `tgl_kmbl`) VALUES
(100, 1, 'Harry Potter', '2021-06-01', '2021-06-05'),
(101, 2, 'Ant man', '2021-06-02', '2021-06-06'),
(102, 3, 'Avangers', '2021-06-03', '2021-06-07'),
(103, 4, 'Divergent', '2021-06-10', '2021-06-15'),
(104, 5, 'Kungfu Panda', '2021-06-11', '2021-06-16');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_anggota`
--
ALTER TABLE `tbl_anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indeks untuk tabel `tbl_pjm`
--
ALTER TABLE `tbl_pjm`
  ADD PRIMARY KEY (`id_pjm`),
  ADD KEY `id_anggota` (`id_anggota`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_anggota`
--
ALTER TABLE `tbl_anggota`
  MODIFY `id_anggota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_pjm`
--
ALTER TABLE `tbl_pjm`
  MODIFY `id_pjm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tbl_pjm`
--
ALTER TABLE `tbl_pjm`
  ADD CONSTRAINT `tbl_pjm_ibfk_1` FOREIGN KEY (`id_anggota`) REFERENCES `tbl_anggota` (`id_anggota`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
