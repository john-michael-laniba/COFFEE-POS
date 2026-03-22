-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2026 at 05:00 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jcopos_db;`
--

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `total` double DEFAULT NULL,
  `cash` double DEFAULT NULL,
  `change_amount` double DEFAULT NULL,
  `payment_method` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `total`, `cash`, `change_amount`, `payment_method`, `created_at`) VALUES
(1, 675, 1000, 325, 'Cash', '2026-03-20 07:09:45'),
(2, 1269, 0, 0, 'GCash', '2026-03-20 07:24:40'),
(3, 675, 1000, 325, 'Cash', '2026-03-21 01:34:46'),
(4, 2295, 0, 0, 'Maya', '2026-03-21 01:36:00'),
(5, 2370, 0, 0, 'GCash', '2026-03-21 03:19:24'),
(6, 189, 1000, 811, 'Cash', '2026-03-21 03:19:59');

-- --------------------------------------------------------

--
-- Table structure for table `sale_items`
--

CREATE TABLE `sale_items` (
  `id` int(11) NOT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `item_name` varchar(100) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `total` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sale_items`
--

INSERT INTO `sale_items` (`id`, `sale_id`, `item_name`, `qty`, `price`, `total`) VALUES
(1, 1, 'Oreology', 10, 75, 750),
(2, 1, 'Free Espresso', 1, 0, 0),
(3, 2, 'Matchalicious', 10, 75, 750),
(4, 2, 'Free Espresso', 1, 0, 0),
(5, 2, 'Hazel Latte | Large | Sugar:100% | ExtraShot WhippedCream ', 3, 220, 660),
(6, 3, 'Oreology', 10, 75, 750),
(7, 3, 'Free Espresso', 1, 0, 0),
(8, 4, 'Oreo Frappe | Large | Sugar:50%, | ExtraShot WhippedCream Pearls ', 10, 255, 2550),
(9, 5, 'Blueberrymore', 10, 70, 700),
(10, 5, 'Free Espresso', 1, 0, 0),
(11, 5, 'Alcapone', 20, 75, 1500),
(12, 5, 'Ice Americano', 1, 0, 0),
(13, 5, 'Hazel Latte | Large | Sugar:50%, | ', 1, 170, 170),
(14, 6, 'Blueberrymore', 3, 70, 210);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(1, 'admin', '123456789', 'admin'),
(2, 'cashier', '123456789', 'cashier');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sale_items`
--
ALTER TABLE `sale_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sale_items`
--
ALTER TABLE `sale_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
