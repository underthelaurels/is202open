-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 14, 2018 at 02:50 AM
-- Server version: 5.6.39
-- PHP Version: 7.0.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Classes`
--
CREATE DATABASE IF NOT EXISTS `Classes` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `Classes`;

-- --------------------------------------------------------

--
-- Table structure for table `Class`
--

CREATE TABLE `Class` (
  `ID` int(5) UNSIGNED NOT NULL,
  `Day` int(5) UNSIGNED NOT NULL,
  `StartTime` time NOT NULL DEFAULT '00:00:00',
  `EndTime` time NOT NULL DEFAULT '00:00:00',
  `LastDay` timestamp NOT NULL DEFAULT '2019-05-08 17:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Crews`
--

INSERT INTO `Class` (`ID`, `Day`, `StartTime`, `EndTime`, `LastDay`) VALUES
(1, 1, '10:10:00', '12:45:00', '2019-05-08 17:00:00'),
(2, 1, '13:25:00', '14:15:00', '2019-05-08 17:00:00'),
(3, 3, '10:10:00', '12:45:00', '2019-05-08 17:00:00'),
(4, 3, '13:25:00', '14:15:00', '2019-05-08 17:00:00');

-- --------------------------------------------------------


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
