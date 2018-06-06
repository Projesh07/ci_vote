-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2018 at 10:43 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('2cc5ce4595cd4e1c01cc299d4caa958c3bdddc97', '::1', 1528273399, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383237333339393b),
('ffeac0d3e278d91575494f42bec70e1c2d0e4274', '::1', 1528274625, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383237343336363b),
('7d1db25f5250699e2b6d71bf7303c0fb938dabeb', '::1', 1528274366, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383237343336363b),
('eda89b67cd466b35c65becab1132f7dce5c23483', '::1', 1528273741, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383237333734313b),
('85a2f7c532250bd0b2405dec5af4e33db8fe5583', '::1', 1528274064, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383237343036343b),
('23146f42ccfdb57e51684657817300d57c92ae7f', '::1', 1528273073, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383237333037333b);

-- --------------------------------------------------------

--
-- Table structure for table `ci_voting`
--

CREATE TABLE `ci_voting` (
  `dv_id` int(11) NOT NULL,
  `dv_title` varchar(255) NOT NULL,
  `dv_state` tinyint(1) DEFAULT '0',
  `dv_created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_voting`
--

INSERT INTO `ci_voting` (`dv_id`, `dv_title`, `dv_state`, `dv_created`) VALUES
(99, 'New vote', 1, 1528267617);

-- --------------------------------------------------------

--
-- Table structure for table `ci_voting_backup`
--

CREATE TABLE `ci_voting_backup` (
  `dv_id` int(11) NOT NULL,
  `dv_title` varchar(255) NOT NULL,
  `A` varchar(255) NOT NULL,
  `B` varchar(255) NOT NULL,
  `C` varchar(255) NOT NULL,
  `D` varchar(255) NOT NULL,
  `E` varchar(255) NOT NULL,
  `F` varchar(255) NOT NULL,
  `G` varchar(255) NOT NULL,
  `H` varchar(255) NOT NULL,
  `I` varchar(255) NOT NULL,
  `j` varchar(255) NOT NULL,
  `dv_state` tinyint(1) DEFAULT '0',
  `dv_created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_voting_backup`
--

INSERT INTO `ci_voting_backup` (`dv_id`, `dv_title`, `A`, `B`, `C`, `D`, `E`, `F`, `G`, `H`, `I`, `j`, `dv_state`, `dv_created`) VALUES
(89, 'election vote', '1', '2', '3', '4', '', '', '', '', '', '', 1, 1528106802);

-- --------------------------------------------------------

--
-- Table structure for table `ci_voting_counter`
--

CREATE TABLE `ci_voting_counter` (
  `v_id` int(11) NOT NULL,
  `v_voting_id` int(11) NOT NULL,
  `v_column` varchar(255) NOT NULL,
  `v_data` varchar(255) NOT NULL,
  `v_value` int(1) NOT NULL DEFAULT '1',
  `v_vistor_ip` varchar(255) NOT NULL,
  `v_created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_voting_counter`
--

INSERT INTO `ci_voting_counter` (`v_id`, `v_voting_id`, `v_column`, `v_data`, `v_value`, `v_vistor_ip`, `v_created`) VALUES
(7, 99, 'new 2', 'new 2', 6, '::1', 0),
(6, 99, 'new 3', 'new 3', 20, '::1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `voter_info`
--

CREATE TABLE `voter_info` (
  `candidate_id` int(11) NOT NULL,
  `candidate_name` varchar(255) NOT NULL,
  `can_image` varchar(255) NOT NULL,
  `ci_votting_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voter_info`
--

INSERT INTO `voter_info` (`candidate_id`, `candidate_name`, `can_image`, `ci_votting_id`) VALUES
(19, 'new 2', '', 99),
(18, 'new 3', '', 99);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `ci_voting`
--
ALTER TABLE `ci_voting`
  ADD PRIMARY KEY (`dv_id`);

--
-- Indexes for table `ci_voting_backup`
--
ALTER TABLE `ci_voting_backup`
  ADD PRIMARY KEY (`dv_id`);

--
-- Indexes for table `ci_voting_counter`
--
ALTER TABLE `ci_voting_counter`
  ADD PRIMARY KEY (`v_id`);

--
-- Indexes for table `voter_info`
--
ALTER TABLE `voter_info`
  ADD PRIMARY KEY (`candidate_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ci_voting`
--
ALTER TABLE `ci_voting`
  MODIFY `dv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT for table `ci_voting_backup`
--
ALTER TABLE `ci_voting_backup`
  MODIFY `dv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
--
-- AUTO_INCREMENT for table `ci_voting_counter`
--
ALTER TABLE `ci_voting_counter`
  MODIFY `v_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `voter_info`
--
ALTER TABLE `voter_info`
  MODIFY `candidate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
