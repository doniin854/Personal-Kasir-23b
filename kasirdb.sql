-- Xampp control panel [Complied: Apr 6th 2021]
-- Version: v.3.30
-- localhost/kasir/
-- 
-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30
-- 
-- Laragon full 6.0 220916 
-- version: 127.0.0.1
--
-- SQLyog unlimate 64
-- -------------------------------------------------------


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


-- Database: `kasirdb`
-- --------------------------------------------------------


-- Table structure for table `barang`
CREATE TABLE `barang` (
  `id` INT(11) NOT NULL,
  `id_barang` VARCHAR(255) NOT NULL,
  `id_kategori` INT(11) NOT NULL,
  `nama_barang` TEXT NOT NULL,
  `merk` VARCHAR(255) NOT NULL,
  `harga_beli` VARCHAR(255) NOT NULL,
  `harga_jual` VARCHAR(255) NOT NULL,
  `satuan_barang` VARCHAR(255) NOT NULL,
  `stok` TEXT NOT NULL,
  `tgl_input` VARCHAR(255) NOT NULL,
  `tgl_update` VARCHAR(255) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- Insert data for table `barang`
INSERT INTO `barang` (`id`, `id_barang`, `id_kategori`, `nama_barang`, `merk`, `harga_beli`, `harga_jual`, `satuan_barang`, `stok`, `tgl_input`, `tgl_update`) VALUES
(6, 'BR001', 14, 'Rumput laut', 'mama suka', '12000', '12500', 'PCS', '976', '30 Juni 2024, 12:12', NULL),
(7, 'BR002', 14, 'Oreo', 'Oreo', '18000', '18900', 'PCS', '976', '30 January 2024, 12:12', NULL),
(8, 'BR003', 15, 'Teh Pucuk 350ml', 'Mayora', '2500', '3000', 'PCS', '988', '30 January 2024, 12:12', NULL),
(9, 'BR004', 15, 'Floridina', 'Florida', '2600', '3000', 'PCS', '476', '30 January 2024, 12:12', '28 January 2024, 12:12');


-- Table structure for table `kategori`
CREATE TABLE `kategori` (
  `id_kategori` INT(11) NOT NULL,
  `nama_kategori` VARCHAR(255) NOT NULL,
  `tgl_input` VARCHAR(255) NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- Insert data for table `kategori`
INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `tgl_input`) VALUES
(14, 'Makanan', '30 Juni 2024, 12:12'),
(15, 'Minuman', '30 Juni 2024, 12:12');


-- Table structure for table `login`
CREATE TABLE `login` (
  `id_login` INT(11) NOT NULL,
  `user` VARCHAR(255) NOT NULL,
  `pass` CHAR(32) NOT NULL,
  `id_member` INT(11) NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- Insert data for table `login`
INSERT INTO `login` (`id_login`, `user`, `pass`, `id_member`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1);


-- Table structure for table `member`
CREATE TABLE `member` (
  `id_member` INT(11) NOT NULL,
  `nm_member` VARCHAR(255) NOT NULL,
  `alamat_member` TEXT NOT NULL,
  `telepon` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `gambar` TEXT NOT NULL,
  `NIK` TEXT NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- Insert data for table `member`
INSERT INTO `member` (`id_member`, `nm_member`, `alamat_member`, `telepon`, `email`, `gambar`, `NIK`) VALUES
(1, 'admin', 'Jl. Soedirman, Pwt Barat', '08400890017', 'admin@gmail.com', '1719839517WhatsApp Image 2024-07-01 at 7.33.04 PM.jpeg', '3212323522131');


-- Table structure for table `nota`
CREATE TABLE `nota` (
  `id_nota` INT(11) NOT NULL,
  `id_barang` VARCHAR(255) NOT NULL,
  `id_member` INT(11) NOT NULL,
  `jumlah` VARCHAR(255) NOT NULL,
  `total` VARCHAR(255) NOT NULL,
  `tanggal_input` VARCHAR(255) NOT NULL,
  `periode` VARCHAR(255) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- Insert data for table `nota`
INSERT INTO `nota` (`id_nota`, `id_barang`, `id_member`, `jumlah`, `total`, `tanggal_input`, `periode`) VALUES
(4, 'BR004', 6, '24', '72000', ' 30 Juli 2024, 12:12', '05-2024'),
(5, 'BR001', 6, '24', '120000', '30 Juli 2024, 12:12', '05-2024'),
(6, 'BR003', 6, '12', '36000', '30 Juli 2024, 12:12', '05-2024'),
(7, 'BR002', 6, '24', '60000', '30 Juli 2024, 12:12', '05-2024');


-- Table structure for table `penjualan`
CREATE TABLE `penjualan` (
  `id_penjualan` INT(11) NOT NULL,
  `id_barang` VARCHAR(255) NOT NULL,
  `id_member` INT(11) NOT NULL,
  `jumlah` VARCHAR(255) NOT NULL,
  `total` VARCHAR(255) NOT NULL,
  `tanggal_input` VARCHAR(255) NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- Table structure for table `toko`
CREATE TABLE `toko` (
  `id_toko` INT(11) NOT NULL,
  `nama_toko` VARCHAR(255) NOT NULL,
  `alamat_toko` TEXT NOT NULL,
  `tlp` VARCHAR(255) NOT NULL,
  `nama_pemilik` VARCHAR(255) NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- Insert data for table `toko`
INSERT INTO `toko` (`id_toko`, `nama_toko`, `alamat_toko`, `tlp`, `nama_pemilik`) VALUES
(1, 'CV Toko Kerja Bareng', 'Purwokerto', '08634674277', 'Bapak Barjo');


-- Indexes for enter tables
-- -----------------------------------------


-- Indexes for table `barang`
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);


-- Indexes for table `kategori`
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);


-- Indexes for table `login`
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`),
  ADD KEY `id_member` (`id_member`);


-- Indexes for table `member`
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);


-- Indexes for table `nota`
ALTER TABLE `nota`
  ADD PRIMARY KEY (`id_nota`);


-- Indexes for table `penjualan`
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`),
  ADD KEY `id_member` (`id_member`);


-- Indexes for table `toko`
ALTER TABLE `toko`
  ADD PRIMARY KEY (`id_toko`);


-- AUTO_INCREMENT for enter tables


-- AUTO_INCREMENT for table `barang`
ALTER TABLE `barang`
  MODIFY `id` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;


-- AUTO_INCREMENT for table `kategori`
ALTER TABLE `kategori`
  MODIFY `id_kategori` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;


-- AUTO_INCREMENT for table `login`
ALTER TABLE `login`
  MODIFY `id_login` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;


-- AUTO_INCREMENT for table `member`
ALTER TABLE `member`
  MODIFY `id_member` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;


-- AUTO_INCREMENT for table `nota`
ALTER TABLE `nota`
  MODIFY `id_nota` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;


-- AUTO_INCREMENT for table `penjualan`
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;


-- AUTO_INCREMENT for table `toko`
ALTER TABLE `toko`
  MODIFY `id_toko` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


-- Constraints for enter tables


-- Constraints for table `login'
ALTER TABLE `login`
  ADD CONSTRAINT `login_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `member` (`id_member`);


-- Constraints for table `penjualan`
ALTER TABLE `penjualan`
  ADD CONSTRAINT `penjualan_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `member` (`id_member`);
COMMIT;
