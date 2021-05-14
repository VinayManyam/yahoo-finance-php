-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2021 at 05:20 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stock`
--

-- --------------------------------------------------------

--
-- Table structure for table `acc`
--

CREATE TABLE `acc` (
  `Sno` int(6) UNSIGNED NOT NULL,
  `sdate` varchar(12) NOT NULL,
  `sopen` decimal(10,2) NOT NULL,
  `sclose` decimal(10,2) NOT NULL,
  `svolume` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `adanient`
--

CREATE TABLE `adanient` (
  `Sno` int(6) UNSIGNED NOT NULL,
  `sdate` varchar(12) NOT NULL,
  `sopen` decimal(10,2) NOT NULL,
  `sclose` decimal(10,2) NOT NULL,
  `svolume` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `adaniports`
--

CREATE TABLE `adaniports` (
  `Sno` int(6) UNSIGNED NOT NULL,
  `sdate` varchar(12) NOT NULL,
  `sopen` decimal(10,2) NOT NULL,
  `sclose` decimal(10,2) NOT NULL,
  `svolume` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `adanitrans`
--

CREATE TABLE `adanitrans` (
  `Sno` int(6) UNSIGNED NOT NULL,
  `sdate` varchar(12) NOT NULL,
  `sopen` decimal(10,2) NOT NULL,
  `sclose` decimal(10,2) NOT NULL,
  `svolume` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ambujacem`
--

CREATE TABLE `ambujacem` (
  `Sno` int(6) UNSIGNED NOT NULL,
  `sdate` varchar(12) NOT NULL,
  `sopen` decimal(10,2) NOT NULL,
  `sclose` decimal(10,2) NOT NULL,
  `svolume` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `apollohosp`
--

CREATE TABLE `apollohosp` (
  `Sno` int(6) UNSIGNED NOT NULL,
  `sdate` varchar(12) NOT NULL,
  `sopen` decimal(10,2) NOT NULL,
  `sclose` decimal(10,2) NOT NULL,
  `svolume` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `asianpaint`
--

CREATE TABLE `asianpaint` (
  `Sno` int(6) UNSIGNED NOT NULL,
  `sdate` varchar(12) NOT NULL,
  `sopen` decimal(10,2) NOT NULL,
  `sclose` decimal(10,2) NOT NULL,
  `svolume` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auropharma`
--

CREATE TABLE `auropharma` (
  `Sno` int(6) UNSIGNED NOT NULL,
  `sdate` varchar(12) NOT NULL,
  `sopen` decimal(10,2) NOT NULL,
  `sclose` decimal(10,2) NOT NULL,
  `svolume` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `axisbank`
--

CREATE TABLE `axisbank` (
  `Sno` int(6) UNSIGNED NOT NULL,
  `sdate` varchar(12) NOT NULL,
  `sopen` decimal(10,2) NOT NULL,
  `sclose` decimal(10,2) NOT NULL,
  `svolume` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bajajfinsv`
--

CREATE TABLE `bajajfinsv` (
  `Sno` int(6) UNSIGNED NOT NULL,
  `sdate` varchar(12) NOT NULL,
  `sopen` decimal(10,2) NOT NULL,
  `sclose` decimal(10,2) NOT NULL,
  `svolume` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bajajhldng`
--

CREATE TABLE `bajajhldng` (
  `Sno` int(6) UNSIGNED NOT NULL,
  `sdate` varchar(12) NOT NULL,
  `sopen` decimal(10,2) NOT NULL,
  `sclose` decimal(10,2) NOT NULL,
  `svolume` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bajaj_auto`
--

CREATE TABLE `bajaj_auto` (
  `Sno` int(6) UNSIGNED NOT NULL,
  `sdate` varchar(12) NOT NULL,
  `sopen` decimal(10,2) NOT NULL,
  `sclose` decimal(10,2) NOT NULL,
  `svolume` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bajfinance`
--

CREATE TABLE `bajfinance` (
  `Sno` int(6) UNSIGNED NOT NULL,
  `sdate` varchar(12) NOT NULL,
  `sopen` decimal(10,2) NOT NULL,
  `sclose` decimal(10,2) NOT NULL,
  `svolume` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bergepaint`
--

CREATE TABLE `bergepaint` (
  `Sno` int(6) UNSIGNED NOT NULL,
  `sdate` varchar(12) NOT NULL,
  `sopen` decimal(10,2) NOT NULL,
  `sclose` decimal(10,2) NOT NULL,
  `svolume` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cadilahc`
--

CREATE TABLE `cadilahc` (
  `Sno` int(6) UNSIGNED NOT NULL,
  `sdate` varchar(12) NOT NULL,
  `sopen` decimal(10,2) NOT NULL,
  `sclose` decimal(10,2) NOT NULL,
  `svolume` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cipla`
--

CREATE TABLE `cipla` (
  `Sno` int(6) UNSIGNED NOT NULL,
  `sdate` varchar(12) NOT NULL,
  `sopen` decimal(10,2) NOT NULL,
  `sclose` decimal(10,2) NOT NULL,
  `svolume` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dabur`
--

CREATE TABLE `dabur` (
  `Sno` int(6) UNSIGNED NOT NULL,
  `sdate` varchar(12) NOT NULL,
  `sopen` decimal(10,2) NOT NULL,
  `sclose` decimal(10,2) NOT NULL,
  `svolume` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `divislab`
--

CREATE TABLE `divislab` (
  `Sno` int(6) UNSIGNED NOT NULL,
  `sdate` varchar(12) NOT NULL,
  `sopen` decimal(10,2) NOT NULL,
  `sclose` decimal(10,2) NOT NULL,
  `svolume` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dlf`
--

CREATE TABLE `dlf` (
  `Sno` int(6) UNSIGNED NOT NULL,
  `sdate` varchar(12) NOT NULL,
  `sopen` decimal(10,2) NOT NULL,
  `sclose` decimal(10,2) NOT NULL,
  `svolume` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dmart`
--

CREATE TABLE `dmart` (
  `Sno` int(6) UNSIGNED NOT NULL,
  `sdate` varchar(12) NOT NULL,
  `sopen` decimal(10,2) NOT NULL,
  `sclose` decimal(10,2) NOT NULL,
  `svolume` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `drreddy`
--

CREATE TABLE `drreddy` (
  `Sno` int(6) UNSIGNED NOT NULL,
  `sdate` varchar(12) NOT NULL,
  `sopen` decimal(10,2) NOT NULL,
  `sclose` decimal(10,2) NOT NULL,
  `svolume` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `grasim`
--

CREATE TABLE `grasim` (
  `Sno` int(6) UNSIGNED NOT NULL,
  `sdate` varchar(12) NOT NULL,
  `sopen` decimal(10,2) NOT NULL,
  `sclose` decimal(10,2) NOT NULL,
  `svolume` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `havells`
--

CREATE TABLE `havells` (
  `Sno` int(6) UNSIGNED NOT NULL,
  `sdate` varchar(12) NOT NULL,
  `sopen` decimal(10,2) NOT NULL,
  `sclose` decimal(10,2) NOT NULL,
  `svolume` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hcltech`
--

CREATE TABLE `hcltech` (
  `Sno` int(6) UNSIGNED NOT NULL,
  `sdate` varchar(12) NOT NULL,
  `sopen` decimal(10,2) NOT NULL,
  `sclose` decimal(10,2) NOT NULL,
  `svolume` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hdfc`
--

CREATE TABLE `hdfc` (
  `Sno` int(6) UNSIGNED NOT NULL,
  `sdate` varchar(12) NOT NULL,
  `sopen` decimal(10,2) NOT NULL,
  `sclose` decimal(10,2) NOT NULL,
  `svolume` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hdfcbank`
--

CREATE TABLE `hdfcbank` (
  `Sno` int(6) UNSIGNED NOT NULL,
  `sdate` varchar(12) NOT NULL,
  `sopen` decimal(10,2) NOT NULL,
  `sclose` decimal(10,2) NOT NULL,
  `svolume` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hdfclife`
--

CREATE TABLE `hdfclife` (
  `Sno` int(6) UNSIGNED NOT NULL,
  `sdate` varchar(12) NOT NULL,
  `sopen` decimal(10,2) NOT NULL,
  `sclose` decimal(10,2) NOT NULL,
  `svolume` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hindalco`
--

CREATE TABLE `hindalco` (
  `Sno` int(6) UNSIGNED NOT NULL,
  `sdate` varchar(12) NOT NULL,
  `sopen` decimal(10,2) NOT NULL,
  `sclose` decimal(10,2) NOT NULL,
  `svolume` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `icicibank`
--

CREATE TABLE `icicibank` (
  `Sno` int(6) UNSIGNED NOT NULL,
  `sdate` varchar(12) NOT NULL,
  `sopen` decimal(10,2) NOT NULL,
  `sclose` decimal(10,2) NOT NULL,
  `svolume` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `icicipruli`
--

CREATE TABLE `icicipruli` (
  `Sno` int(6) UNSIGNED NOT NULL,
  `sdate` varchar(12) NOT NULL,
  `sopen` decimal(10,2) NOT NULL,
  `sclose` decimal(10,2) NOT NULL,
  `svolume` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `indigo`
--

CREATE TABLE `indigo` (
  `Sno` int(6) UNSIGNED NOT NULL,
  `sdate` varchar(12) NOT NULL,
  `sopen` decimal(10,2) NOT NULL,
  `sclose` decimal(10,2) NOT NULL,
  `svolume` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `infy`
--

CREATE TABLE `infy` (
  `Sno` int(6) UNSIGNED NOT NULL,
  `sdate` varchar(12) NOT NULL,
  `sopen` decimal(10,2) NOT NULL,
  `sclose` decimal(10,2) NOT NULL,
  `svolume` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jswsteel`
--

CREATE TABLE `jswsteel` (
  `Sno` int(6) UNSIGNED NOT NULL,
  `sdate` varchar(12) NOT NULL,
  `sopen` decimal(10,2) NOT NULL,
  `sclose` decimal(10,2) NOT NULL,
  `svolume` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jublfood`
--

CREATE TABLE `jublfood` (
  `Sno` int(6) UNSIGNED NOT NULL,
  `sdate` varchar(12) NOT NULL,
  `sopen` decimal(10,2) NOT NULL,
  `sclose` decimal(10,2) NOT NULL,
  `svolume` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kotakbank`
--

CREATE TABLE `kotakbank` (
  `Sno` int(6) UNSIGNED NOT NULL,
  `sdate` varchar(12) NOT NULL,
  `sopen` decimal(10,2) NOT NULL,
  `sclose` decimal(10,2) NOT NULL,
  `svolume` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lti`
--

CREATE TABLE `lti` (
  `Sno` int(6) UNSIGNED NOT NULL,
  `sdate` varchar(12) NOT NULL,
  `sopen` decimal(10,2) NOT NULL,
  `sclose` decimal(10,2) NOT NULL,
  `svolume` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `marico`
--

CREATE TABLE `marico` (
  `Sno` int(6) UNSIGNED NOT NULL,
  `sdate` varchar(12) NOT NULL,
  `sopen` decimal(10,2) NOT NULL,
  `sclose` decimal(10,2) NOT NULL,
  `svolume` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `muthootfin`
--

CREATE TABLE `muthootfin` (
  `Sno` int(6) UNSIGNED NOT NULL,
  `sdate` varchar(12) NOT NULL,
  `sopen` decimal(10,2) NOT NULL,
  `sclose` decimal(10,2) NOT NULL,
  `svolume` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `naukri`
--

CREATE TABLE `naukri` (
  `Sno` int(6) UNSIGNED NOT NULL,
  `sdate` varchar(12) NOT NULL,
  `sopen` decimal(10,2) NOT NULL,
  `sclose` decimal(10,2) NOT NULL,
  `svolume` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pghh`
--

CREATE TABLE `pghh` (
  `Sno` int(6) UNSIGNED NOT NULL,
  `sdate` varchar(12) NOT NULL,
  `sopen` decimal(10,2) NOT NULL,
  `sclose` decimal(10,2) NOT NULL,
  `svolume` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pidilitind`
--

CREATE TABLE `pidilitind` (
  `Sno` int(6) UNSIGNED NOT NULL,
  `sdate` varchar(12) NOT NULL,
  `sopen` decimal(10,2) NOT NULL,
  `sclose` decimal(10,2) NOT NULL,
  `svolume` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `powergrid`
--

CREATE TABLE `powergrid` (
  `Sno` int(6) UNSIGNED NOT NULL,
  `sdate` varchar(12) NOT NULL,
  `sopen` decimal(10,2) NOT NULL,
  `sclose` decimal(10,2) NOT NULL,
  `svolume` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `reliance`
--

CREATE TABLE `reliance` (
  `Sno` int(6) UNSIGNED NOT NULL,
  `sdate` varchar(12) NOT NULL,
  `sopen` decimal(10,2) NOT NULL,
  `sclose` decimal(10,2) NOT NULL,
  `svolume` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sbilife`
--

CREATE TABLE `sbilife` (
  `Sno` int(6) UNSIGNED NOT NULL,
  `sdate` varchar(12) NOT NULL,
  `sopen` decimal(10,2) NOT NULL,
  `sclose` decimal(10,2) NOT NULL,
  `svolume` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sbin`
--

CREATE TABLE `sbin` (
  `Sno` int(6) UNSIGNED NOT NULL,
  `sdate` varchar(12) NOT NULL,
  `sopen` decimal(10,2) NOT NULL,
  `sclose` decimal(10,2) NOT NULL,
  `svolume` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shreecem`
--

CREATE TABLE `shreecem` (
  `Sno` int(6) UNSIGNED NOT NULL,
  `sdate` varchar(12) NOT NULL,
  `sopen` decimal(10,2) NOT NULL,
  `sclose` decimal(10,2) NOT NULL,
  `svolume` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `siemens`
--

CREATE TABLE `siemens` (
  `Sno` int(6) UNSIGNED NOT NULL,
  `sdate` varchar(12) NOT NULL,
  `sopen` decimal(10,2) NOT NULL,
  `sclose` decimal(10,2) NOT NULL,
  `svolume` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tataconsum`
--

CREATE TABLE `tataconsum` (
  `Sno` int(6) UNSIGNED NOT NULL,
  `sdate` varchar(12) NOT NULL,
  `sopen` decimal(10,2) NOT NULL,
  `sclose` decimal(10,2) NOT NULL,
  `svolume` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tatasteel`
--

CREATE TABLE `tatasteel` (
  `Sno` int(6) UNSIGNED NOT NULL,
  `sdate` varchar(12) NOT NULL,
  `sopen` decimal(10,2) NOT NULL,
  `sclose` decimal(10,2) NOT NULL,
  `svolume` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tcs`
--

CREATE TABLE `tcs` (
  `Sno` int(6) UNSIGNED NOT NULL,
  `sdate` varchar(12) NOT NULL,
  `sopen` decimal(10,2) NOT NULL,
  `sclose` decimal(10,2) NOT NULL,
  `svolume` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `techm`
--

CREATE TABLE `techm` (
  `Sno` int(6) UNSIGNED NOT NULL,
  `sdate` varchar(12) NOT NULL,
  `sopen` decimal(10,2) NOT NULL,
  `sclose` decimal(10,2) NOT NULL,
  `svolume` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `titan`
--

CREATE TABLE `titan` (
  `Sno` int(6) UNSIGNED NOT NULL,
  `sdate` varchar(12) NOT NULL,
  `sopen` decimal(10,2) NOT NULL,
  `sclose` decimal(10,2) NOT NULL,
  `svolume` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ubl`
--

CREATE TABLE `ubl` (
  `Sno` int(6) UNSIGNED NOT NULL,
  `sdate` varchar(12) NOT NULL,
  `sopen` decimal(10,2) NOT NULL,
  `sclose` decimal(10,2) NOT NULL,
  `svolume` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ultracemco`
--

CREATE TABLE `ultracemco` (
  `Sno` int(6) UNSIGNED NOT NULL,
  `sdate` varchar(12) NOT NULL,
  `sopen` decimal(10,2) NOT NULL,
  `sclose` decimal(10,2) NOT NULL,
  `svolume` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `upl`
--

CREATE TABLE `upl` (
  `Sno` int(6) UNSIGNED NOT NULL,
  `sdate` varchar(12) NOT NULL,
  `sopen` decimal(10,2) NOT NULL,
  `sclose` decimal(10,2) NOT NULL,
  `svolume` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wipro`
--

CREATE TABLE `wipro` (
  `Sno` int(6) UNSIGNED NOT NULL,
  `sdate` varchar(12) NOT NULL,
  `sopen` decimal(10,2) NOT NULL,
  `sclose` decimal(10,2) NOT NULL,
  `svolume` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acc`
--
ALTER TABLE `acc`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `adanient`
--
ALTER TABLE `adanient`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `adaniports`
--
ALTER TABLE `adaniports`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `adanitrans`
--
ALTER TABLE `adanitrans`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `ambujacem`
--
ALTER TABLE `ambujacem`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `apollohosp`
--
ALTER TABLE `apollohosp`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `asianpaint`
--
ALTER TABLE `asianpaint`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `auropharma`
--
ALTER TABLE `auropharma`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `axisbank`
--
ALTER TABLE `axisbank`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `bajajfinsv`
--
ALTER TABLE `bajajfinsv`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `bajajhldng`
--
ALTER TABLE `bajajhldng`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `bajaj_auto`
--
ALTER TABLE `bajaj_auto`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `bajfinance`
--
ALTER TABLE `bajfinance`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `bergepaint`
--
ALTER TABLE `bergepaint`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `cadilahc`
--
ALTER TABLE `cadilahc`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `cipla`
--
ALTER TABLE `cipla`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `dabur`
--
ALTER TABLE `dabur`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `divislab`
--
ALTER TABLE `divislab`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `dlf`
--
ALTER TABLE `dlf`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `dmart`
--
ALTER TABLE `dmart`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `drreddy`
--
ALTER TABLE `drreddy`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `grasim`
--
ALTER TABLE `grasim`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `havells`
--
ALTER TABLE `havells`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `hcltech`
--
ALTER TABLE `hcltech`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `hdfc`
--
ALTER TABLE `hdfc`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `hdfcbank`
--
ALTER TABLE `hdfcbank`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `hdfclife`
--
ALTER TABLE `hdfclife`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `hindalco`
--
ALTER TABLE `hindalco`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `icicibank`
--
ALTER TABLE `icicibank`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `icicipruli`
--
ALTER TABLE `icicipruli`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `indigo`
--
ALTER TABLE `indigo`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `infy`
--
ALTER TABLE `infy`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `jswsteel`
--
ALTER TABLE `jswsteel`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `jublfood`
--
ALTER TABLE `jublfood`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `kotakbank`
--
ALTER TABLE `kotakbank`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `lti`
--
ALTER TABLE `lti`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `marico`
--
ALTER TABLE `marico`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `muthootfin`
--
ALTER TABLE `muthootfin`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `naukri`
--
ALTER TABLE `naukri`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `pghh`
--
ALTER TABLE `pghh`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `pidilitind`
--
ALTER TABLE `pidilitind`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `powergrid`
--
ALTER TABLE `powergrid`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `reliance`
--
ALTER TABLE `reliance`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `sbilife`
--
ALTER TABLE `sbilife`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `sbin`
--
ALTER TABLE `sbin`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `shreecem`
--
ALTER TABLE `shreecem`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `siemens`
--
ALTER TABLE `siemens`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `tataconsum`
--
ALTER TABLE `tataconsum`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `tatasteel`
--
ALTER TABLE `tatasteel`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `tcs`
--
ALTER TABLE `tcs`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `techm`
--
ALTER TABLE `techm`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `titan`
--
ALTER TABLE `titan`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `ubl`
--
ALTER TABLE `ubl`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `ultracemco`
--
ALTER TABLE `ultracemco`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `upl`
--
ALTER TABLE `upl`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `wipro`
--
ALTER TABLE `wipro`
  ADD PRIMARY KEY (`Sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acc`
--
ALTER TABLE `acc`
  MODIFY `Sno` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `adanient`
--
ALTER TABLE `adanient`
  MODIFY `Sno` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `adaniports`
--
ALTER TABLE `adaniports`
  MODIFY `Sno` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `adanitrans`
--
ALTER TABLE `adanitrans`
  MODIFY `Sno` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ambujacem`
--
ALTER TABLE `ambujacem`
  MODIFY `Sno` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `apollohosp`
--
ALTER TABLE `apollohosp`
  MODIFY `Sno` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `asianpaint`
--
ALTER TABLE `asianpaint`
  MODIFY `Sno` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auropharma`
--
ALTER TABLE `auropharma`
  MODIFY `Sno` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `axisbank`
--
ALTER TABLE `axisbank`
  MODIFY `Sno` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bajajfinsv`
--
ALTER TABLE `bajajfinsv`
  MODIFY `Sno` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bajajhldng`
--
ALTER TABLE `bajajhldng`
  MODIFY `Sno` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bajaj_auto`
--
ALTER TABLE `bajaj_auto`
  MODIFY `Sno` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bajfinance`
--
ALTER TABLE `bajfinance`
  MODIFY `Sno` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bergepaint`
--
ALTER TABLE `bergepaint`
  MODIFY `Sno` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cadilahc`
--
ALTER TABLE `cadilahc`
  MODIFY `Sno` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cipla`
--
ALTER TABLE `cipla`
  MODIFY `Sno` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dabur`
--
ALTER TABLE `dabur`
  MODIFY `Sno` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `divislab`
--
ALTER TABLE `divislab`
  MODIFY `Sno` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dlf`
--
ALTER TABLE `dlf`
  MODIFY `Sno` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dmart`
--
ALTER TABLE `dmart`
  MODIFY `Sno` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drreddy`
--
ALTER TABLE `drreddy`
  MODIFY `Sno` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grasim`
--
ALTER TABLE `grasim`
  MODIFY `Sno` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `havells`
--
ALTER TABLE `havells`
  MODIFY `Sno` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hcltech`
--
ALTER TABLE `hcltech`
  MODIFY `Sno` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hdfc`
--
ALTER TABLE `hdfc`
  MODIFY `Sno` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hdfcbank`
--
ALTER TABLE `hdfcbank`
  MODIFY `Sno` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hdfclife`
--
ALTER TABLE `hdfclife`
  MODIFY `Sno` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hindalco`
--
ALTER TABLE `hindalco`
  MODIFY `Sno` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icicibank`
--
ALTER TABLE `icicibank`
  MODIFY `Sno` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icicipruli`
--
ALTER TABLE `icicipruli`
  MODIFY `Sno` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `indigo`
--
ALTER TABLE `indigo`
  MODIFY `Sno` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `infy`
--
ALTER TABLE `infy`
  MODIFY `Sno` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jswsteel`
--
ALTER TABLE `jswsteel`
  MODIFY `Sno` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jublfood`
--
ALTER TABLE `jublfood`
  MODIFY `Sno` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kotakbank`
--
ALTER TABLE `kotakbank`
  MODIFY `Sno` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lti`
--
ALTER TABLE `lti`
  MODIFY `Sno` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marico`
--
ALTER TABLE `marico`
  MODIFY `Sno` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `muthootfin`
--
ALTER TABLE `muthootfin`
  MODIFY `Sno` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `naukri`
--
ALTER TABLE `naukri`
  MODIFY `Sno` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pghh`
--
ALTER TABLE `pghh`
  MODIFY `Sno` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pidilitind`
--
ALTER TABLE `pidilitind`
  MODIFY `Sno` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `powergrid`
--
ALTER TABLE `powergrid`
  MODIFY `Sno` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reliance`
--
ALTER TABLE `reliance`
  MODIFY `Sno` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sbilife`
--
ALTER TABLE `sbilife`
  MODIFY `Sno` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sbin`
--
ALTER TABLE `sbin`
  MODIFY `Sno` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shreecem`
--
ALTER TABLE `shreecem`
  MODIFY `Sno` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `siemens`
--
ALTER TABLE `siemens`
  MODIFY `Sno` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tataconsum`
--
ALTER TABLE `tataconsum`
  MODIFY `Sno` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tatasteel`
--
ALTER TABLE `tatasteel`
  MODIFY `Sno` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tcs`
--
ALTER TABLE `tcs`
  MODIFY `Sno` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `techm`
--
ALTER TABLE `techm`
  MODIFY `Sno` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `titan`
--
ALTER TABLE `titan`
  MODIFY `Sno` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ubl`
--
ALTER TABLE `ubl`
  MODIFY `Sno` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ultracemco`
--
ALTER TABLE `ultracemco`
  MODIFY `Sno` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `upl`
--
ALTER TABLE `upl`
  MODIFY `Sno` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wipro`
--
ALTER TABLE `wipro`
  MODIFY `Sno` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
