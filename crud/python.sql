-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2024 at 07:04 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `python`
--

-- --------------------------------------------------------

--
-- Table structure for table `crud`
--

CREATE TABLE `crud` (
  `id` int(5) NOT NULL,
  `fnm` varchar(50) NOT NULL,
  `lnm` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phno` bigint(10) NOT NULL,
  `addr` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crud`
--

INSERT INTO `crud` (`id`, `fnm`, `lnm`, `email`, `phno`, `addr`) VALUES
(2, 'Vishwas', 'Bhatt', 'bhattvishwas7@gmail.com', 9106533108, 'Khodiyar Colony'),
(3, 'Visu', 'Bhai', 'freefire@india.com', 1307, 'Khambhaliya'),
(4, 'gae', 'aeg', 'aeg', 0, 'aet'),
(5, 'Visu', 'Bhai', 'freefire', 1307, 'Khambhalia'),
(6, 'Visu', 'Bhai', 'freefire', 1307, 'Khambhalia'),
(7, 'Visu', 'Bhai', 'freefire', 1307, 'Khambhalia'),
(8, 'Visu', 'Bhai', 'freefire', 1307, 'Khambhaliya'),
(9, 'ae', 'aef', 'hdt', 0, 'aega'),
(10, 'zs', 'xfn', 'ah', 0, 'sg'),
(11, 'zs', 'xfn', 'ah', 0, 'sg'),
(12, 'xdv', 'fy', 'srg', 0, 'segs'),
(13, 'Vishwas', 'Bhatt', 'bhattvishwas7@gmail.com', 9106533108, 'Khodiyar Colony'),
(14, 'Hello', 'Mr', 'DJ', 0, 'CJ');

-- --------------------------------------------------------

--
-- Table structure for table `testcase`
--

CREATE TABLE `testcase` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `class` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `testcase`
--

INSERT INTO `testcase` (`id`, `name`, `class`) VALUES
(2, 'Visu', 'BCA'),
(3, 'Darshan', 'BCA'),
(4, 'Vishwas', 'MCA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `crud`
--
ALTER TABLE `crud`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testcase`
--
ALTER TABLE `testcase`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `crud`
--
ALTER TABLE `crud`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `testcase`
--
ALTER TABLE `testcase`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
