-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2020 at 03:58 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `hobby_tb`
--

CREATE TABLE `hobby_tb` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hobby_tb`
--

INSERT INTO `hobby_tb` (`id`, `name`) VALUES
(1, 'Renang'),
(2, 'Futsal'),
(3, 'Billiard'),
(4, 'Senam'),
(5, 'Masak');

-- --------------------------------------------------------

--
-- Table structure for table `profile_tb`
--

CREATE TABLE `profile_tb` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `born_date` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `hobby_id` int(11) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile_tb`
--

INSERT INTO `profile_tb` (`id`, `nama`, `born_date`, `address`, `hobby_id`, `photo`) VALUES
(1, 'Panji Anugerah', '16 Juni 1999', 'Bengkulu', 1, 'panjiar.jpg'),
(2, 'Brazella Jasmine', '02 Februari 1999', 'Palembang', 5, 'jasmine.jpg'),
(3, 'Ruslan Hottua', '10 April 1998', 'Medan', 3, 'ruslan.jpg'),
(4, 'Khairum Rahman', '17 Maret 1998', 'Jakarta Selatan', 2, 'rahman.jpg'),
(5, 'Wawan Kurniawan', '23 Mei 1999', 'Lampung', 1, 'wawan.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hobby_tb`
--
ALTER TABLE `hobby_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile_tb`
--
ALTER TABLE `profile_tb`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hobby_id` (`hobby_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hobby_tb`
--
ALTER TABLE `hobby_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `profile_tb`
--
ALTER TABLE `profile_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `profile_tb`
--
ALTER TABLE `profile_tb`
  ADD CONSTRAINT `profile_tb_ibfk_1` FOREIGN KEY (`hobby_id`) REFERENCES `hobby_tb` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
