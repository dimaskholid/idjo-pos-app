-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 04 Feb 2016 pada 06.08
-- Versi Server: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `idjodb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE IF NOT EXISTS `barang` (
  `id_barang` int(11) NOT NULL AUTO_INCREMENT,
  `id_kategori` int(11) NOT NULL,
  `barang` varchar(100) NOT NULL,
  PRIMARY KEY (`id_barang`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `id_kategori`, `barang`) VALUES
(1, 1, 'NPK'),
(2, 4, 'Bisi 2'),
(5, 1, 'Ponska'),
(7, 4, 'Kangkung bangkok'),
(9, 3, 'Plant catalys'),
(12, 4, 'Kangkung Super'),
(13, 1, 'Urea'),
(14, 10, 'Pelet Lele'),
(15, 10, 'Pur Ayam'),
(16, 11, 'Petrokum'),
(17, 1, 'Gandasil B 100gr');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang_jual`
--

CREATE TABLE IF NOT EXISTS `barang_jual` (
  `id_barang_jual` int(11) NOT NULL AUTO_INCREMENT,
  `id_barang` int(11) NOT NULL,
  `id_satuan` int(11) NOT NULL,
  `alias` varchar(100) NOT NULL,
  `multiplier` int(11) NOT NULL,
  `harga` decimal(15,2) NOT NULL,
  PRIMARY KEY (`id_barang_jual`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data untuk tabel `barang_jual`
--

INSERT INTO `barang_jual` (`id_barang_jual`, `id_barang`, `id_satuan`, `alias`, `multiplier`, `harga`) VALUES
(14, 17, 42, 'Gandasil B 100gr', 1, '15000.00'),
(15, 13, 20, 'Urea karung ', 50, '90000.00'),
(16, 13, 22, 'Urea 1kg', 1, '1800.00'),
(17, 1, 22, 'NPK 1kg', 1, '2300.00'),
(18, 1, 20, 'NPK karung', 50, '115000.00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `distributor`
--

CREATE TABLE IF NOT EXISTS `distributor` (
  `id_distributor` int(11) NOT NULL AUTO_INCREMENT,
  `distributor` varchar(100) NOT NULL,
  PRIMARY KEY (`id_distributor`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data untuk tabel `distributor`
--

INSERT INTO `distributor` (`id_distributor`, `distributor`) VALUES
(1, 'Mulyo Tani'),
(2, 'CV Sumber Hidup'),
(3, 'Anugrah Tani'),
(4, 'Alam Tani'),
(13, 'KUD Sri Rahayu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `grup_pengguna`
--

CREATE TABLE IF NOT EXISTS `grup_pengguna` (
  `id_grup` int(11) NOT NULL AUTO_INCREMENT,
  `grup_pengguna` varchar(100) NOT NULL,
  PRIMARY KEY (`id_grup`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `grup_pengguna`
--

INSERT INTO `grup_pengguna` (`id_grup`, `grup_pengguna`) VALUES
(1, 'Admin'),
(2, 'Kasir');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `id_kategori` int(11) NOT NULL AUTO_INCREMENT,
  `kategori` varchar(35) NOT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori`) VALUES
(1, 'Pupuk'),
(3, 'Obat tanaman'),
(4, 'Bibit'),
(10, 'Pakan '),
(11, 'Obat tikus');

-- --------------------------------------------------------

--
-- Struktur dari tabel `laba`
--

CREATE TABLE IF NOT EXISTS `laba` (
  `id_laba` int(11) NOT NULL AUTO_INCREMENT,
  `id_transaksi_detail` int(11) DEFAULT NULL,
  `id_barang` int(11) DEFAULT NULL,
  `id_satuan` int(11) DEFAULT NULL,
  `id_barang_jual` int(11) DEFAULT NULL,
  `tanggal` datetime DEFAULT CURRENT_TIMESTAMP,
  `qty` int(11) DEFAULT NULL,
  `harga_beli` decimal(15,2) DEFAULT NULL,
  `harga_jual` decimal(15,2) DEFAULT NULL,
  `laba_satuan` decimal(15,2) DEFAULT NULL,
  `laba_total` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`id_laba`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

--
-- Dumping data untuk tabel `laba`
--

INSERT INTO `laba` (`id_laba`, `id_transaksi_detail`, `id_barang`, `id_satuan`, `id_barang_jual`, `tanggal`, `qty`, `harga_beli`, `harga_jual`, `laba_satuan`, `laba_total`) VALUES
(42, 42, 1, 22, 17, '2016-01-29 05:14:03', 10, '1700.00', '2300.00', '600.00', '6000.00'),
(43, 43, 17, 42, 14, '2016-01-29 05:14:03', 2, '10000.00', '15000.00', '5000.00', '10000.00'),
(44, 44, 1, 22, 17, '2016-01-29 05:17:21', 5, '1700.00', '2300.00', '600.00', '3000.00'),
(45, 45, 13, 22, 16, '2016-01-29 05:17:21', 5, '1500.00', '1800.00', '300.00', '1500.00'),
(46, 46, 1, 22, 17, '2016-02-03 05:21:13', 5, '1700.00', '2300.00', '600.00', '3000.00'),
(47, 47, 17, 42, 14, '2016-02-03 05:21:26', 1, '10000.00', '15000.00', '5000.00', '5000.00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian`
--

CREATE TABLE IF NOT EXISTS `pembelian` (
  `id_pembelian` int(11) NOT NULL AUTO_INCREMENT,
  `id_barang` int(11) NOT NULL,
  `id_distributor` int(11) NOT NULL,
  `id_satuan` int(11) NOT NULL,
  `tanggal` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `qty` int(11) NOT NULL,
  `harga_satuan` decimal(15,2) NOT NULL,
  `harga_total` decimal(15,2) NOT NULL,
  PRIMARY KEY (`id_pembelian`),
  KEY `id_satuan` (`id_satuan`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=123 ;

--
-- Dumping data untuk tabel `pembelian`
--

INSERT INTO `pembelian` (`id_pembelian`, `id_barang`, `id_distributor`, `id_satuan`, `tanggal`, `qty`, `harga_satuan`, `harga_total`) VALUES
(120, 1, 13, 20, '2016-01-29 05:06:00', 10, '1700.00', '850000.00'),
(121, 13, 13, 20, '2016-01-29 05:06:58', 10, '1500.00', '750000.00'),
(122, 17, 2, 42, '2016-01-29 05:08:22', 25, '10000.00', '250000.00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE IF NOT EXISTS `pengguna` (
  `id_pengguna` int(11) NOT NULL AUTO_INCREMENT,
  `id_grup` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id_pengguna`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `id_grup`, `nama`, `username`, `password`) VALUES
(1, 1, 'Administrator', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(2, 2, 'Dimas Kholid', 'dimas', '7d49e40f4b3d8f68c19406a58303f826');

-- --------------------------------------------------------

--
-- Struktur dari tabel `satuan`
--

CREATE TABLE IF NOT EXISTS `satuan` (
  `id_satuan` int(11) NOT NULL AUTO_INCREMENT,
  `satuan` varchar(25) NOT NULL,
  PRIMARY KEY (`id_satuan`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

--
-- Dumping data untuk tabel `satuan`
--

INSERT INTO `satuan` (`id_satuan`, `satuan`) VALUES
(17, 'Liter'),
(19, 'botol'),
(20, 'karung'),
(21, 'biji'),
(22, 'kg'),
(42, 'bungkus'),
(43, 'gr');

-- --------------------------------------------------------

--
-- Struktur dari tabel `stock`
--

CREATE TABLE IF NOT EXISTS `stock` (
  `id_stock` int(11) NOT NULL AUTO_INCREMENT,
  `id_barang` int(11) NOT NULL,
  `id_satuan` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `harga_jual` decimal(15,2) NOT NULL,
  PRIMARY KEY (`id_stock`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

--
-- Dumping data untuk tabel `stock`
--

INSERT INTO `stock` (`id_stock`, `id_barang`, `id_satuan`, `stock`, `harga_jual`) VALUES
(38, 1, 22, 480, '115000.00'),
(39, 13, 22, 495, '90000.00'),
(40, 17, 42, 22, '15000.00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `stock_detail`
--

CREATE TABLE IF NOT EXISTS `stock_detail` (
  `id_stock_detail` int(11) NOT NULL AUTO_INCREMENT,
  `id_stock` int(11) NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `tanggal` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pembelian_stock` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `harga_beli` decimal(15,2) NOT NULL,
  PRIMARY KEY (`id_stock_detail`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=56 ;

--
-- Dumping data untuk tabel `stock_detail`
--

INSERT INTO `stock_detail` (`id_stock_detail`, `id_stock`, `id_pembelian`, `tanggal`, `pembelian_stock`, `stock`, `harga_beli`) VALUES
(53, 38, 120, '2016-01-29 05:06:01', 500, 480, '1700.00'),
(54, 39, 121, '2016-01-29 05:06:59', 500, 495, '1500.00'),
(55, 40, 122, '2016-01-29 05:08:22', 25, 22, '10000.00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE IF NOT EXISTS `transaksi` (
  `id_transaksi` int(11) NOT NULL AUTO_INCREMENT,
  `id_pengguna` int(11) DEFAULT NULL,
  `tanggal` datetime DEFAULT CURRENT_TIMESTAMP,
  `total_transaksi` decimal(15,2) DEFAULT NULL,
  `bayar` decimal(15,2) DEFAULT NULL,
  `kembalian` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_transaksi`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_pengguna`, `tanggal`, `total_transaksi`, `bayar`, `kembalian`) VALUES
(27, 1, '2016-01-29 05:14:03', '53000.00', '60000.00', 7000),
(28, 1, '2016-01-29 05:17:20', '20500.00', '25000.00', 4500),
(29, 1, '2016-02-03 05:21:13', '11500.00', '12000.00', 500),
(30, 1, '2016-02-03 05:21:26', '15000.00', '15000.00', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_detail`
--

CREATE TABLE IF NOT EXISTS `transaksi_detail` (
  `id_transaksi_detail` int(11) NOT NULL AUTO_INCREMENT,
  `id_transaksi` int(11) DEFAULT NULL,
  `id_barang_jual` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `harga_satuan` decimal(15,2) DEFAULT NULL,
  `total_harga` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`id_transaksi_detail`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

--
-- Dumping data untuk tabel `transaksi_detail`
--

INSERT INTO `transaksi_detail` (`id_transaksi_detail`, `id_transaksi`, `id_barang_jual`, `qty`, `harga_satuan`, `total_harga`) VALUES
(42, 27, 17, 10, '2300.00', '23000.00'),
(43, 27, 14, 2, '15000.00', '30000.00'),
(44, 28, 17, 5, '2300.00', '11500.00'),
(45, 28, 16, 5, '1800.00', '9000.00'),
(46, 29, 17, 5, '2300.00', '11500.00'),
(47, 30, 14, 1, '15000.00', '15000.00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
