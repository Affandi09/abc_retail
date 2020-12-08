-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2020 at 08:16 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `abc`
--

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `stok` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`id`, `nama`, `slug`, `foto`, `stok`, `created_at`, `updated_at`) VALUES
(1, 'Acyclovir Topikal', 'acyclovir-topikal', 'acyclovir-topikal.jpg', 3, NULL, '2020-12-07 13:15:06'),
(3, 'Amoxillin', 'amoxillin', 'amoxillin.jpg', 0, NULL, NULL),
(30, 'Ampicillin', 'ampicillin', 'default.jpg', 12, '2020-12-07 10:14:10', '2020-12-07 12:58:15');

-- --------------------------------------------------------

--
-- Table structure for table `obatkeluar`
--

CREATE TABLE `obatkeluar` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `unit` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `obatkeluar`
--

INSERT INTO `obatkeluar` (`id`, `nama`, `slug`, `unit`, `created_at`, `updated_at`) VALUES
(1, 'Acyclovir Topikal', 'acyclovir-topikal', 1, '2020-12-07 11:03:27', '2020-12-07 11:03:27'),
(2, 'Acyclovir Topikal', 'acyclovir-topikal', 2, '2020-12-07 11:04:10', '2020-12-07 11:04:10'),
(3, 'Ampicillin', 'ampicillin', 1, '2020-12-07 12:58:15', '2020-12-07 12:58:15');

-- --------------------------------------------------------

--
-- Table structure for table `obatmasuk`
--

CREATE TABLE `obatmasuk` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `unit` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `obatmasuk`
--

INSERT INTO `obatmasuk` (`id`, `nama`, `slug`, `unit`, `created_at`, `updated_at`) VALUES
(1, 'Ampicillin', 'ampicillin', 0, '2020-12-07 10:14:10', '2020-12-07 10:14:10'),
(2, 'Acyclovir Topikal', 'acyclovir-topikal', 1, '2020-12-07 10:52:34', '2020-12-07 10:52:34'),
(3, 'Acyclovir Topikal', 'acyclovir-topikal', 5, '2020-12-07 10:53:12', '2020-12-07 10:53:12'),
(4, 'Ampicillin', 'ampicillin', 13, '2020-12-07 12:57:56', '2020-12-07 12:57:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(13) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_password`, `user_created_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$CMzVra3poT2gOuZoUMytN.urcx4WlLSon3PcMFxVAbWE4f5xd3xJ.', '2020-12-08 12:27:21'),
(2, 'saiaai', 'saiaai@gmail.com', '$2y$10$MlmVygKBlTNV8zH1MkuK0uQJ4CPLkrsp/Z2DkScvx4GW9crJ76FAO', '2020-12-08 13:38:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `obatkeluar`
--
ALTER TABLE `obatkeluar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `obatmasuk`
--
ALTER TABLE `obatmasuk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `obat`
--
ALTER TABLE `obat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `obatkeluar`
--
ALTER TABLE `obatkeluar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `obatmasuk`
--
ALTER TABLE `obatmasuk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
