-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2019 at 08:55 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assessment`
--

-- --------------------------------------------------------

--
-- Table structure for table `admindata`
--

CREATE TABLE `admindata` (
  `id` int(10) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_age` varchar(255) NOT NULL,
  `admin_mobile` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admindata`
--

INSERT INTO `admindata` (`id`, `admin_name`, `admin_age`, `admin_mobile`, `admin_email`) VALUES
(1, 'admin', '', '9907777733', 'asaxenacs@gmail.com'),
(2, 'umesh Golkar', '', '9074066854', 'umesh@cloud2reach.com'),
(3, 'umesh Golkar', '', '9074066854', 'umesh@cloud2reach.com'),
(4, 'baron adams', 'age', '9876543212', 'baron.adams@gmail.com'),
(5, 'baron adams', '28', '9876543212', 'baron.adams@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `ad_group`
--

CREATE TABLE `ad_group` (
  `id` int(10) NOT NULL,
  `grp_name` varchar(255) NOT NULL,
  `ad_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ad_group`
--

INSERT INTO `ad_group` (`id`, `grp_name`, `ad_id`) VALUES
(1, 'class 10', 0);

-- --------------------------------------------------------

--
-- Table structure for table `grpmem`
--

CREATE TABLE `grpmem` (
  `id` int(10) NOT NULL,
  `gr_id` varchar(255) NOT NULL,
  `st_id` varchar(10) NOT NULL,
  `ad_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grpmem`
--

INSERT INTO `grpmem` (`id`, `gr_id`, `st_id`, `ad_id`) VALUES
(1, '1', '1', 0),
(2, '1', '2', 0);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` int(10) NOT NULL,
  `pr_name` varchar(255) NOT NULL,
  `pr_type` varchar(255) NOT NULL,
  `pr_size` int(11) NOT NULL,
  `ad_id` int(11) NOT NULL,
  `gr_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `projectcmnt`
--

CREATE TABLE `projectcmnt` (
  `id` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `grp_name` varchar(255) NOT NULL,
  `project_name` varchar(255) NOT NULL,
  `ad_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projectcmnt`
--

INSERT INTO `projectcmnt` (`id`, `comment`, `grp_name`, `project_name`, `ad_id`) VALUES
(1, 'good project', 'ankit', 'saab ', 0),
(2, 'good project', 'ankit', 'saab ', 0),
(3, 'ddfsdfd', 'ajay', 'saab', 0),
(4, 'ttttttt', 'ajay', 'saab', 0);

-- --------------------------------------------------------

--
-- Table structure for table `projectgrp`
--

CREATE TABLE `projectgrp` (
  `id` int(11) NOT NULL,
  `project_name` varchar(255) NOT NULL,
  `grp_name` varchar(255) NOT NULL,
  `ad_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projectgrp`
--

INSERT INTO `projectgrp` (`id`, `project_name`, `grp_name`, `ad_id`) VALUES
(1, 'saab', 'grp_name', 0),
(2, 'saab', 'saab', 0);

-- --------------------------------------------------------

--
-- Table structure for table `studentdata`
--

CREATE TABLE `studentdata` (
  `id` int(10) NOT NULL,
  `st_name` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `st_age` varchar(252) NOT NULL,
  `st_email` varchar(255) NOT NULL,
  `password` varchar(225) NOT NULL,
  `st_mobile` varchar(255) NOT NULL,
  `ad_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentdata`
--

INSERT INTO `studentdata` (`id`, `st_name`, `age`, `st_age`, `st_email`, `password`, `st_mobile`, `ad_id`) VALUES
(1, 'ankit saxena', '', '', 'ankit@cloud2reach.com', '12345', '', 0),
(2, 'test', '', '', 'ankit@cloud2reach.com', '', '', 0),
(3, 'umesh Golkar', '', '', 'ankit@cloud2reach.com', '', '123', 0),
(4, 'ajay', '', '', 'ajay@g.com', '12345', '123456', 0),
(5, 'test3', '28', '', 'ankit@cloud2reach.com', '', '9907777733', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admindata`
--
ALTER TABLE `admindata`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `ad_group`
--
ALTER TABLE `ad_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grpmem`
--
ALTER TABLE `grpmem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projectcmnt`
--
ALTER TABLE `projectcmnt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projectgrp`
--
ALTER TABLE `projectgrp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentdata`
--
ALTER TABLE `studentdata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admindata`
--
ALTER TABLE `admindata`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ad_group`
--
ALTER TABLE `ad_group`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `grpmem`
--
ALTER TABLE `grpmem`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projectcmnt`
--
ALTER TABLE `projectcmnt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `projectgrp`
--
ALTER TABLE `projectgrp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `studentdata`
--
ALTER TABLE `studentdata`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
