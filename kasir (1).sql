-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2024 at 08:37 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasir`
--

-- --------------------------------------------------------

--
-- Table structure for table `detailpenjualan`
--

CREATE TABLE `detailpenjualan` (
  `DetailID` int(11) NOT NULL,
  `PenjualanID` int(11) NOT NULL,
  `ProdukID` int(11) NOT NULL,
  `JumlahProduk` int(11) NOT NULL,
  `Subtotal` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detailpenjualan`
--

INSERT INTO `detailpenjualan` (`DetailID`, `PenjualanID`, `ProdukID`, `JumlahProduk`, `Subtotal`) VALUES
(1, 1, 4, 1, 100000.00),
(2, 2, 4, 1, 100000.00),
(2, 3, 5, 3, 10000.00),
(4, 5, 5, 1, 10000.00),
(5, 7, 5, 6, 10000.00),
(6, 8, 6, 24, 10000.00),
(7, 9, 5, 1, 10000.00),
(8, 10, 5, 1, 10000.00),
(9, 11, 5, 2, 10000.00),
(10, 12, 5, 19, 10000.00),
(11, 13, 6, 21, 10000.00),
(12, 14, 5, 12, 10000.00),
(13, 15, 6, 12, 10000.00),
(14, 16, 6, 3, 10000.00),
(14, 17, 5, 3, 10000.00),
(18, 18, 6, 2, 10000.00),
(19, 19, 6, 12, 10000.00),
(20, 20, 6, 4, 10000.00),
(22, 22, 5, 2, 10000.00),
(22, 23, 6, 2, 10000.00),
(23, 24, 5, 1, 10000.00),
(23, 25, 6, 1, 10000.00),
(24, 26, 6, 1, 10000.00),
(26, 28, 3, 5, 15000.00);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `PelangganID` int(11) NOT NULL,
  `NamaPelanggan` varchar(255) NOT NULL,
  `NoMeja` int(11) NOT NULL,
  `NomorTelpon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`PelangganID`, `NamaPelanggan`, `NoMeja`, `NomorTelpon`) VALUES
(1, 'tes', 1, ''),
(2, 'tes', 1, ''),
(3, 'tes', 11, ''),
(4, 'sea', 2, ''),
(5, 'sea', 1, ''),
(6, 'sea', 12, ''),
(8, 'sea', 2, ''),
(9, 'sea', 5, ''),
(10, 'Amina', 12, ''),
(11, 'tes', 4, ''),
(12, 'ara', 14, ''),
(13, 'yuna', 11, ''),
(14, 'sea', 4, ''),
(17, 'rara', 23, ''),
(18, 'rara', 23, ''),
(19, 'ina', 23, ''),
(20, 'Anna', 19, ''),
(21, 'Zay', 23, ''),
(22, 'Terra', 12, ''),
(23, 'sea', 1, ''),
(24, 'ara', 1, ''),
(25, 'ara', 23, ''),
(26, 'sea', 9, '');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `PenjualanID` int(11) NOT NULL,
  `TanggalPenjualan` date NOT NULL,
  `TotalHarga` decimal(10,2) NOT NULL,
  `PelangganID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`PenjualanID`, `TanggalPenjualan`, `TotalHarga`, `PelangganID`) VALUES
(1, '2024-02-13', 0.00, 0),
(2, '2024-02-13', 0.00, 0),
(3, '2024-02-13', 0.00, 0),
(4, '2024-02-13', 0.00, 0),
(5, '2024-02-13', 0.00, 0),
(6, '2024-02-13', 0.00, 0),
(7, '2024-02-14', 0.00, 0),
(8, '2024-02-17', 0.00, 0),
(9, '2024-02-19', 0.00, 0),
(10, '2024-02-19', 0.00, 0),
(11, '2024-02-19', 0.00, 0),
(12, '2024-02-19', 0.00, 0),
(13, '2024-02-20', 0.00, 0),
(14, '2024-02-20', 0.00, 0),
(15, '2024-02-20', 0.00, 0),
(16, '2024-02-20', 0.00, 0),
(17, '2024-02-20', 0.00, 0),
(18, '2024-02-20', 0.00, 0),
(19, '2024-02-20', 0.00, 0),
(20, '2024-02-20', 0.00, 0),
(21, '2024-02-20', 0.00, 0),
(22, '2024-02-20', 0.00, 0),
(23, '2024-02-21', 0.00, 0),
(24, '2024-02-21', 0.00, 0),
(25, '2024-02-21', 0.00, 0),
(26, '2024-02-22', 0.00, 0);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `ProdukID` int(11) NOT NULL,
  `NamaProduk` varchar(255) NOT NULL,
  `Harga` decimal(10,2) NOT NULL,
  `Stok` int(11) NOT NULL,
  `terjual` int(11) NOT NULL,
  `foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`ProdukID`, `NamaProduk`, `Harga`, `Stok`, `terjual`, `foto`) VALUES
(3, 'Cupcake', 15000.00, 10, 0, '22022024070829.jpg'),
(5, 'Ikan Bakar', 10000.00, 12, 62, 'Grilled Whole Red Snapper (Oven Grilled).JPG'),
(6, 'Bakso', 10000.00, 16, 87, 'bakso.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` enum('Administrator','Petugas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `username`, `password`, `level`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator'),
(2, 'petugas', 'afb91ef692fd08c445e8cb1bab2ccf9c', 'Petugas'),
(4, 'petugas2', 'afb91ef692fd08c445e8cb1bab2ccf9c', 'Petugas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detailpenjualan`
--
ALTER TABLE `detailpenjualan`
  ADD PRIMARY KEY (`PenjualanID`),
  ADD KEY `DetailID` (`PenjualanID`,`ProdukID`),
  ADD KEY `ProdukID` (`ProdukID`),
  ADD KEY `DetailID_2` (`DetailID`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`PelangganID`),
  ADD KEY `PelangganID` (`PelangganID`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`PenjualanID`),
  ADD KEY `PenjualanID` (`PenjualanID`,`TanggalPenjualan`,`TotalHarga`,`PelangganID`),
  ADD KEY `PelangganID` (`PelangganID`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`ProdukID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detailpenjualan`
--
ALTER TABLE `detailpenjualan`
  MODIFY `PenjualanID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `PelangganID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `PenjualanID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
