-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Mar 2024 pada 05.09
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bpu`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `company` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address_delivery` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `delivery order`
--

CREATE TABLE `delivery order` (
  `no_do` int(11) NOT NULL,
  `no_dev_pnbp` varchar(50) DEFAULT NULL,
  `date_delivery` varchar(50) DEFAULT NULL,
  `date_acc` varchar(50) DEFAULT NULL,
  `no_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `order`
--

CREATE TABLE `order` (
  `no_order` int(11) NOT NULL,
  `date_order` varchar(50) DEFAULT NULL,
  `no_pnbp` varchar(50) DEFAULT NULL,
  `no_quotation` int(11) DEFAULT NULL,
  `no_po` varchar(50) DEFAULT NULL,
  `mthd_ship` varchar(50) DEFAULT NULL,
  `ship_cost` varchar(50) DEFAULT NULL,
  `ppn` varchar(50) DEFAULT NULL,
  `add_cost` varchar(50) DEFAULT NULL,
  `payment` varchar(50) DEFAULT NULL,
  `total` varchar(50) DEFAULT NULL,
  `amount_due` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `quotation`
--

CREATE TABLE `quotation` (
  `no_quotation` int(11) NOT NULL,
  `date_quotation` varchar(50) DEFAULT NULL,
  `no_rfq` int(11) DEFAULT NULL,
  `up` varchar(50) DEFAULT NULL,
  `name_sales` varchar(50) DEFAULT NULL,
  `cc` varchar(50) DEFAULT NULL,
  `tunggakan` varchar(50) DEFAULT NULL,
  `est_date_start` varchar(50) DEFAULT NULL,
  `est_date_end` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `retur`
--

CREATE TABLE `retur` (
  `no_retur` int(11) NOT NULL,
  `reg_cust` varchar(50) DEFAULT NULL,
  `date_retur` varchar(50) DEFAULT NULL,
  `no_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rfq`
--

CREATE TABLE `rfq` (
  `no_rfq` int(11) NOT NULL,
  `product` varchar(50) DEFAULT NULL,
  `production_type` varchar(50) DEFAULT NULL,
  `qty` varchar(50) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `date_rfq` varchar(50) DEFAULT NULL,
  `pic` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `spk`
--

CREATE TABLE `spk` (
  `no_spk` int(11) NOT NULL,
  `no_order` int(11) DEFAULT NULL,
  `date_spk` varchar(50) DEFAULT NULL,
  `no_quotation` int(11) DEFAULT NULL,
  `mthd_ship_fix` varchar(50) DEFAULT NULL,
  `no_po` varchar(50) DEFAULT NULL,
  `date_start` varchar(50) DEFAULT NULL,
  `date_end` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `idUsers` int(11) NOT NULL,
  `uidUsers` varchar(256) NOT NULL,
  `emailUsers` tinytext NOT NULL,
  `pwdUsers` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`idUsers`, `uidUsers`, `emailUsers`, `pwdUsers`) VALUES
(27, 'user', 'user@gmail.com', '$2y$10$OThI9LYo8sZtwFTB1pPE.uOJ9qlelnnVdjLICduf4i8p8sQOGSxPu');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indeks untuk tabel `delivery order`
--
ALTER TABLE `delivery order`
  ADD PRIMARY KEY (`no_do`),
  ADD KEY `no_order` (`no_order`);

--
-- Indeks untuk tabel `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`no_order`);

--
-- Indeks untuk tabel `quotation`
--
ALTER TABLE `quotation`
  ADD PRIMARY KEY (`no_quotation`);

--
-- Indeks untuk tabel `retur`
--
ALTER TABLE `retur`
  ADD PRIMARY KEY (`no_retur`);

--
-- Indeks untuk tabel `rfq`
--
ALTER TABLE `rfq`
  ADD PRIMARY KEY (`no_rfq`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indeks untuk tabel `spk`
--
ALTER TABLE `spk`
  ADD PRIMARY KEY (`no_spk`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idUsers`),
  ADD KEY `idUsers` (`idUsers`),
  ADD KEY `idUsers_2` (`idUsers`),
  ADD KEY `uidUsers` (`uidUsers`(255)),
  ADD KEY `idUsers_3` (`idUsers`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `idUsers` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `delivery order`
--
ALTER TABLE `delivery order`
  ADD CONSTRAINT `delivery order_ibfk_1` FOREIGN KEY (`no_order`) REFERENCES `order` (`no_order`);

--
-- Ketidakleluasaan untuk tabel `rfq`
--
ALTER TABLE `rfq`
  ADD CONSTRAINT `rfq_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
