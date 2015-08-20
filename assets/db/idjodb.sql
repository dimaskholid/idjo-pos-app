-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 20 Agu 2015 pada 07.29
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
  `id_barang` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `barang` varchar(100) NOT NULL,
  PRIMARY KEY (`id_barang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `id_kategori`, `barang`) VALUES
(1, 1, 'NPK'),
(2, 4, 'biji bunga matahari'),
(5, 1, 'Caldilac'),
(7, 4, 'Benang sari'),
(8, 0, ''),
(9, 3, 'Pupuk');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data untuk tabel `barang_jual`
--

INSERT INTO `barang_jual` (`id_barang_jual`, `id_barang`, `id_satuan`, `alias`, `multiplier`, `harga`) VALUES
(1, 1, 17, 'wert', 1, '3000.00'),
(3, 5, 17, 'calc', 1, '12000.00'),
(4, 7, 21, 'benamg sari', 1, '5000.00'),
(7, 2, 17, '1', 1, '1.00'),
(9, 5, 20, '12', 12, '12.00'),
(10, 1, 20, 'NPK 1 karung', 50, '150000.00'),
(11, 1, 22, 'NPK kg', 1, '5000.00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `distributor`
--

CREATE TABLE IF NOT EXISTS `distributor` (
  `id_distributor` int(11) NOT NULL,
  `distributor` varchar(100) NOT NULL,
  PRIMARY KEY (`id_distributor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `distributor`
--

INSERT INTO `distributor` (`id_distributor`, `distributor`) VALUES
(1, 'HCS Farma'),
(2, 'Farma Cibitung'),
(3, 'Kimia Farma'),
(4, 'Hadi Cemical'),
(5, 'farma ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `grup_pengguna`
--

CREATE TABLE IF NOT EXISTS `grup_pengguna` (
  `id_grup` int(11) NOT NULL,
  `grup_pengguna` varchar(100) NOT NULL,
  PRIMARY KEY (`id_grup`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `grup_pengguna`
--

INSERT INTO `grup_pengguna` (`id_grup`, `grup_pengguna`) VALUES
(1, 'administrator'),
(2, 'karyawan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `id_kategori` int(11) NOT NULL,
  `kategori` varchar(35) NOT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori`) VALUES
(1, 'Pupuk'),
(3, 'Obat'),
(4, 'Bibit');

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
  `tanggal` datetime DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `harga_beli` decimal(15,2) DEFAULT NULL,
  `harga_jual` decimal(15,2) DEFAULT NULL,
  `laba_satuan` decimal(15,2) DEFAULT NULL,
  `laba_total` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`id_laba`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian`
--

CREATE TABLE IF NOT EXISTS `pembelian` (
  `id_pembelian` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `total` int(11) NOT NULL,
  PRIMARY KEY (`id_pembelian`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian_detail`
--

CREATE TABLE IF NOT EXISTS `pembelian_detail` (
  `id_pembelian_detail` int(11) NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `id_distributor` int(11) NOT NULL,
  `id_satuan` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga_satuan` decimal(15,2) NOT NULL,
  `harga_total` decimal(15,2) NOT NULL,
  PRIMARY KEY (`id_pembelian_detail`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE IF NOT EXISTS `pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `id_grup` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id_pengguna`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `id_grup`, `nama`, `username`, `password`) VALUES
(1, 1, 'Administrator', 'Admin', '21232f297a57a5a743894a0e4a801fc3'),
(2, 2, 'dimas', 'dimas', '7d49e40f4b3d8f68c19406a58303f826'),
(19, 2, 'idaman', 'idaman', '9682c8b501ac64a28d1833a511ba61b4'),
(20, 2, 'anandam', 'anandam', '782f82bca258130be976ad18dea6ab3d');

-- --------------------------------------------------------

--
-- Struktur dari tabel `satuan`
--

CREATE TABLE IF NOT EXISTS `satuan` (
  `id_satuan` int(11) NOT NULL AUTO_INCREMENT,
  `satuan` varchar(25) NOT NULL,
  PRIMARY KEY (`id_satuan`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data untuk tabel `satuan`
--

INSERT INTO `satuan` (`id_satuan`, `satuan`) VALUES
(17, 'Liter'),
(19, 'botol'),
(20, 'karung'),
(21, 'biji'),
(22, 'kg'),
(24, 'Biji');

-- --------------------------------------------------------

--
-- Struktur dari tabel `stock`
--

CREATE TABLE IF NOT EXISTS `stock` (
  `id_stock` int(11) NOT NULL AUTO_INCREMENT,
  `id_item` int(11) NOT NULL,
  `id_unit` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `harga_jual` decimal(15,2) NOT NULL,
  PRIMARY KEY (`id_stock`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `stock_detail`
--

CREATE TABLE IF NOT EXISTS `stock_detail` (
  `id_stock_detail` int(11) NOT NULL AUTO_INCREMENT,
  `id_stock` int(11) NOT NULL,
  `id_pembelian_detail` int(11) NOT NULL,
  `tanggal` datetime NOT NULL,
  `pembelian_stock` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `harga_beli` decimal(15,2) NOT NULL,
  PRIMARY KEY (`id_stock_detail`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE IF NOT EXISTS `transaksi` (
  `id_transaksi` int(11) NOT NULL AUTO_INCREMENT,
  `id_pengguna` int(11) DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `total_transaksi` decimal(15,2) DEFAULT NULL,
  `bayar` decimal(15,2) DEFAULT NULL,
  `kembalian` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_transaksi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_harian`
--

CREATE TABLE IF NOT EXISTS `transaksi_harian` (
  `id_transaksi_harian` int(11) NOT NULL AUTO_INCREMENT,
  `nominal` decimal(15,2) DEFAULT NULL,
  `id_pengguna` int(11) DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `total` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`id_transaksi_harian`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
