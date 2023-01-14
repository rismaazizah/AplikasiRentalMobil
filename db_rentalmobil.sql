-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Jan 2023 pada 09.32
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_rentalmobil`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_mobil`
--

CREATE TABLE `tb_mobil` (
  `id_mobil` varchar(20) NOT NULL,
  `merk_mobil` varchar(100) NOT NULL,
  `tipe_mobil` varchar(100) NOT NULL,
  `warna` varchar(50) NOT NULL,
  `tahun_keluaran` int(30) NOT NULL,
  `harga_sewa` bigint(20) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_mobil`
--

INSERT INTO `tb_mobil` (`id_mobil`, `merk_mobil`, `tipe_mobil`, `warna`, `tahun_keluaran`, `harga_sewa`, `status`) VALUES
('MBL-001', 'Toyota', 'Avanza', 'Putih', 2012, 100000, 'Tersedia'),
('MBL-002', 'Daihatsu', 'Sigra', 'Hitam', 2015, 200000, 'Disewa'),
('MBL-003', 'Mitsubishi', 'Xpander', 'Biru', 2019, 250000, 'Tersedia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pelanggan`
--

CREATE TABLE `tb_pelanggan` (
  `id_pelanggan` varchar(20) NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `no_telepon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_pelanggan`
--

INSERT INTO `tb_pelanggan` (`id_pelanggan`, `nama_pelanggan`, `alamat`, `no_telepon`) VALUES
('PLG-001', 'Amel', 'Jl. Pisang', '087812319472'),
('PLG-002', 'Maria', 'Jl. Delima', '085232148274'),
('PLG-003', 'Anggun', 'Jl. Salak', '081928372162');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pemesanan`
--

CREATE TABLE `tb_pemesanan` (
  `id_pemesanan` varchar(20) NOT NULL,
  `merk_mobil` varchar(100) NOT NULL,
  `id_sopir` varchar(20) NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `tanggal_sewa` date NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `jumlah_hari` int(11) NOT NULL,
  `harga_total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_pemesanan`
--

INSERT INTO `tb_pemesanan` (`id_pemesanan`, `merk_mobil`, `id_sopir`, `nama_pelanggan`, `tanggal_sewa`, `tanggal_kembali`, `jumlah_hari`, `harga_total`) VALUES
('2001231', 'Toyota', 'SPR-003', 'Amel', '2023-01-02', '2020-01-08', 7, 700000),
('2001232', 'Honda', 'SPR-005', 'Ayu', '2023-03-06', '2023-03-08', 2, 200000),
('2001234', 'Daihatsu', 'SPR-001', 'Rama', '2019-01-05', '2019-01-08', 3, 600000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_sopir`
--

CREATE TABLE `tb_sopir` (
  `id_sopir` varchar(20) NOT NULL,
  `nama_sopir` varchar(100) NOT NULL,
  `umur` int(11) NOT NULL,
  `no_sim` varchar(50) NOT NULL,
  `jenis_sim` varchar(20) NOT NULL,
  `gaji` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_sopir`
--

INSERT INTO `tb_sopir` (`id_sopir`, `nama_sopir`, `umur`, `no_sim`, `jenis_sim`, `gaji`) VALUES
('SPR-001', 'Amat', 25, '1234231', 'SIM B1', 2000000),
('SPR-002', 'Ramadhani', 23, '0982312', 'SIM A', 4000000),
('SPR-003', 'Bayu', 30, '4354323', 'SIM A', 1000000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_mobil`
--
ALTER TABLE `tb_mobil`
  ADD PRIMARY KEY (`id_mobil`);

--
-- Indeks untuk tabel `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indeks untuk tabel `tb_pemesanan`
--
ALTER TABLE `tb_pemesanan`
  ADD PRIMARY KEY (`id_pemesanan`);

--
-- Indeks untuk tabel `tb_sopir`
--
ALTER TABLE `tb_sopir`
  ADD PRIMARY KEY (`id_sopir`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
