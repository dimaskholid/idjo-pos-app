-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Aug 21, 2015 at 12:06 AM
-- Server version: 5.5.38
-- PHP Version: 5.6.2

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
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
`id_barang` int(10) NOT NULL,
  `id_kategori` int(10) NOT NULL,
  `barang` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
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
-- Table structure for table `barang_jual`
--

CREATE TABLE `barang_jual` (
`id_barang_jual` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `id_satuan` int(11) NOT NULL,
  `alias` varchar(100) NOT NULL,
  `multiplier` int(11) NOT NULL,
  `harga` decimal(15,2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang_jual`
--

INSERT INTO `barang_jual` (`id_barang_jual`, `id_barang`, `id_satuan`, `alias`, `multiplier`, `harga`) VALUES
(1, 1, 17, 'wert', 1, 3000.00),
(3, 5, 17, 'calc', 1, 12000.00),
(4, 7, 21, 'benamg sari', 1, 5000.00),
(7, 2, 17, '1', 1, 1.00),
(9, 5, 20, '12', 12, 12.00),
(10, 1, 20, 'NPK 1 karung', 50, 150000.00),
(11, 1, 22, 'NPK kg', 1, 5000.00);

-- --------------------------------------------------------

--
-- Table structure for table `distributor`
--

CREATE TABLE `distributor` (
`id_distributor` int(10) NOT NULL,
  `distributor` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `distributor`
--

INSERT INTO `distributor` (`id_distributor`, `distributor`) VALUES
(1, 'HCS Farma'),
(2, 'Farma Cibitung'),
(3, 'Kimia Farma'),
(4, 'Hadi Cemical'),
(5, 'farma ');

-- --------------------------------------------------------

--
-- Table structure for table `grup_pengguna`
--

CREATE TABLE `grup_pengguna` (
`id_grup` int(10) NOT NULL,
  `grup_pengguna` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grup_pengguna`
--

INSERT INTO `grup_pengguna` (`id_grup`, `grup_pengguna`) VALUES
(1, 'administrator'),
(2, 'karyawan');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
`id_kategori` int(10) NOT NULL,
  `kategori` varchar(35) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori`) VALUES
(1, 'Pupuk'),
(3, 'Obat'),
(4, 'Bibit');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
`id_pembelian` int(10) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pembelian_detail`
--

CREATE TABLE `pembelian_detail` (
`id_pembelian_detail` int(10) NOT NULL,
  `id_pembelian` int(10) NOT NULL,
  `id_barang` int(10) NOT NULL,
  `id_distributor` int(10) NOT NULL,
  `id_satuan` int(10) NOT NULL,
  `qty` int(12) NOT NULL,
  `harga_satuan` decimal(15,2) NOT NULL,
  `harga_total` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
`id_pengguna` int(10) NOT NULL,
  `id_grup` int(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `id_grup`, `nama`, `username`, `password`) VALUES
(1, 1, 'Administrator', 'Admin', '21232f297a57a5a743894a0e4a801fc3'),
(2, 2, 'dimas', 'dimas', '7d49e40f4b3d8f68c19406a58303f826'),
(19, 2, 'idaman', 'idaman', '9682c8b501ac64a28d1833a511ba61b4'),
(20, 2, 'anandam', 'anandam', '782f82bca258130be976ad18dea6ab3d');

-- --------------------------------------------------------

--
-- Table structure for table `satuan`
--

CREATE TABLE `satuan` (
`id_satuan` int(11) NOT NULL,
  `satuan` varchar(25) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `satuan`
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
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
`id_stock` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `id_unit` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `harga_jual` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stock_detail`
--

CREATE TABLE `stock_detail` (
`id_stock_detail` int(11) NOT NULL,
  `id_stock` int(11) NOT NULL,
  `id_pembelian_detail` int(11) NOT NULL,
  `tanggal` datetime NOT NULL,
  `pembelian_stock` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `harga_beli` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
`id_transaksi` int(11) NOT NULL,
  `id_pengguna` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `total_transaksi` decimal(15,2) NOT NULL,
  `bayar` decimal(15,2) NOT NULL,
  `kembalian` decimal(15,2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_pengguna`, `tanggal`, `total_transaksi`, `bayar`, `kembalian`) VALUES
(1, 1, '2015-08-20 16:39:35', 12000.00, 0.00, 0.00),
(2, 1, '2015-08-20 16:41:07', 12000.00, 20000.00, 8000.00),
(3, 1, '2015-08-20 16:45:16', 12001.00, 50000.00, 37999.00),
(4, 1, '2015-08-20 16:48:43', 25200.00, 30000.00, 4800.00),
(5, 1, '2015-08-20 16:50:13', 12000.00, 15000.00, 3000.00),
(6, 1, '2015-08-20 16:50:34', 12000.00, 15000.00, 3000.00),
(7, 1, '2015-08-20 16:51:26', 120000.00, 200000.00, 80000.00),
(8, 1, '2015-08-20 16:52:41', 12000.00, 20000.00, 8000.00);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_detail`
--

CREATE TABLE `transaksi_detail` (
`id_transaksi_detail` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `id_barang_jual` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga_satuan` decimal(15,2) NOT NULL,
  `jumlah` decimal(15,2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi_detail`
--

INSERT INTO `transaksi_detail` (`id_transaksi_detail`, `id_transaksi`, `id_barang_jual`, `qty`, `harga_satuan`, `jumlah`) VALUES
(1, 3, 3, 1, 12000.00, 12000.00),
(2, 3, 7, 1, 1.00, 1.00),
(3, 4, 3, 2, 12000.00, 24000.00),
(4, 4, 9, 100, 12.00, 1200.00),
(5, 5, 3, 1, 12000.00, 12000.00),
(6, 6, 3, 1, 12000.00, 12000.00),
(7, 7, 3, 10, 12000.00, 120000.00),
(8, 8, 3, 1, 12000.00, 12000.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
 ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `barang_jual`
--
ALTER TABLE `barang_jual`
 ADD PRIMARY KEY (`id_barang_jual`);

--
-- Indexes for table `distributor`
--
ALTER TABLE `distributor`
 ADD PRIMARY KEY (`id_distributor`);

--
-- Indexes for table `grup_pengguna`
--
ALTER TABLE `grup_pengguna`
 ADD PRIMARY KEY (`id_grup`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
 ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
 ADD PRIMARY KEY (`id_pembelian`);

--
-- Indexes for table `pembelian_detail`
--
ALTER TABLE `pembelian_detail`
 ADD PRIMARY KEY (`id_pembelian_detail`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
 ADD PRIMARY KEY (`id_pengguna`);

--
-- Indexes for table `satuan`
--
ALTER TABLE `satuan`
 ADD PRIMARY KEY (`id_satuan`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
 ADD PRIMARY KEY (`id_stock`);

--
-- Indexes for table `stock_detail`
--
ALTER TABLE `stock_detail`
 ADD PRIMARY KEY (`id_stock_detail`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
 ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
 ADD PRIMARY KEY (`id_transaksi_detail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
MODIFY `id_barang` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `barang_jual`
--
ALTER TABLE `barang_jual`
MODIFY `id_barang_jual` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `distributor`
--
ALTER TABLE `distributor`
MODIFY `id_distributor` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `grup_pengguna`
--
ALTER TABLE `grup_pengguna`
MODIFY `id_grup` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
MODIFY `id_kategori` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
MODIFY `id_pembelian` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pembelian_detail`
--
ALTER TABLE `pembelian_detail`
MODIFY `id_pembelian_detail` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
MODIFY `id_pengguna` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `satuan`
--
ALTER TABLE `satuan`
MODIFY `id_satuan` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
MODIFY `id_stock` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `stock_detail`
--
ALTER TABLE `stock_detail`
MODIFY `id_stock_detail` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
MODIFY `id_transaksi_detail` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
