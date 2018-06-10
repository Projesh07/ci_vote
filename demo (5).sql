-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2018 at 02:53 PM
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
('536ea2e105fb8bfe7d79f18fc0010b56fff6754c', '::1', 1528611806, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383631313830363b),
('f73dba3530a3a3fcc3bede1b06e8f6bdff3f3026', '::1', 1528612122, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383631323132323b),
('ae9502911ee5830f1f28a4e4df65a0cba5e97ba6', '::1', 1528611339, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383631313333393b),
('b88c7d44cf684883feee3e536fd4ef05c1d6227c', '::1', 1528611012, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383631313031323b),
('bd706db45bec5f204781a6c97ef3b596eb3ca48b', '::1', 1528610538, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383631303533383b),
('527057d7cedbc231c9b48d341a8e02f3c1ece3de', '::1', 1528610216, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383631303231363b),
('491d3b5ad0f27cd22390dfd7d9675e2d0985313f', '::1', 1528609909, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383630393930393b),
('9300dbf2ff038034dd5d723157455f7e911c19ab', '::1', 1528609401, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383630393430313b),
('4c49eb2b2f7ad48e082198177686960dd6140c88', '::1', 1528609043, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383630393034333b),
('899ca6768c4b8ca12bc7aadc94b7b1b39bbd0a41', '::1', 1528608490, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383630373934363b),
('cb3efe42f4d81217ad0ec883bcd655c068d59163', '::1', 1528607946, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383630373934363b),
('895158b73b0ed867c15fbc618bf4e562fadd3871', '::1', 1528608221, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383630383232313b),
('75e02190b302f2547bafbb9d4d0470c80bbeca26', '::1', 1528443155, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383434333135353b),
('da7535e481f90b56e9964e64e3161270ba173507', '::1', 1528607089, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383630373038393b),
('fcf67273de8cd02dab1db5eaaa114cbce7af5755', '::1', 1528606752, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383630363735323b),
('04b8021cf44f1ff5aacf7ccfcd3e6949e07c47e8', '::1', 1528606118, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383630363131383b),
('0ea60eb30550260eaed9dbc7373890469b7eb6d7', '::1', 1528604771, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383630343737313b),
('d371f7a17dd7b45b38db06dad24d0eefa3e25bdc', '::1', 1528445107, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383434343832343b),
('175dc79b37b59448751b04161b9a967fed70b197', '::1', 1528442377, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383434323337373b),
('ab74b47a1b64117ed854f0c1f6706fbca22a35fb', '::1', 1528607429, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383630373432393b),
('8d9c66bab99d60e7fd5700935ac5f362b49b726c', '::1', 1528444824, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383434343832343b),
('7f8d87f30ce24f28fc9d441f05534449d13be082', '::1', 1528444401, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383434343430313b),
('d151d027274ed715ce00c15c2aca5b5afb753326', '::1', 1528443526, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383434333532363b),
('c89ac68d1ea479f487dec0a8e9f4faddebb71119', '::1', 1528443834, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383434333833343b),
('652e9e4a521fa71b6fcef02f4d03ff197f3df90b', '::1', 1528442027, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383434323032373b737563636573735f6d73677c733a32343a22566f74652053756363657366756c6c792043726561746564223b5f5f63695f766172737c613a313a7b733a31313a22737563636573735f6d7367223b733a333a226f6c64223b7d),
('146eda376760e377242d55ef75cf3eaf43627aeb', '::1', 1528612463, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383631323436333b),
('d6b771989cfa883c2978035413f93b1d39032f9c', '::1', 1528612767, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383631323736373b),
('515f78ea1fceb29fea2c7229245877c5cd6e118d', '::1', 1528613078, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383631333037383b),
('1762de9b1458bae2a5f7df0989fd5f1b37a7ad21', '::1', 1528613434, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383631333433343b),
('e98013839e929543f2e8d3227248b53b112f2cb3', '::1', 1528613831, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383631333833313b),
('7df37d38c94a1dcc2372ac69f36a395da7ced940', '::1', 1528614152, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383631343135323b),
('1c4617094c68042d0814dcdae312734979340626', '::1', 1528614543, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383631343534333b),
('0148977d5281417968e73378c27be939233b3371', '::1', 1528614916, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383631343931363b),
('8a5c6e45bf5abf426a5852cb3afdaa8b83133946', '::1', 1528616067, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383631363036373b),
('7e75f9e77b2a75023811d9c6f7eeba1f95e0e89c', '::1', 1528616469, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383631363436393b),
('de6716d8a7c84bf369b0382e018618c00642ac10', '::1', 1528617812, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383631373831323b737563636573735f6d73677c733a32343a22566f74652053756363657366756c6c792043726561746564223b5f5f63695f766172737c613a313a7b733a31313a22737563636573735f6d7367223b733a333a226f6c64223b7d),
('acc189b5b607b3cc40b762e3b1ed9e26728881f5', '::1', 1528618120, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383631383132303b),
('24042c14844882c39c3a095a292e2137caa0d5ae', '::1', 1528618675, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383631383637353b),
('288da993147e6aa78b713252a1d5f6c8b567fe52', '::1', 1528619213, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383631393231333b),
('b861e59cc024991b8791988b2d1a5b375ad65276', '::1', 1528622169, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383632323136393b),
('68ed4e1b2986369648838e125e269bf707cdfbef', '::1', 1528622510, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383632323531303b),
('6a04b91b4ddbf74b104632ed1a92f9e0b655aa4f', '::1', 1528622832, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383632323833323b),
('9abfe75bdacf79951ae9777506d60e0b7c848c8f', '::1', 1528623163, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383632333136333b),
('a894dd9a2fad6b98bb0c66519860e05022f706cb', '::1', 1528623563, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383632333536333b),
('ca8b7b7a927f8123c9ac25b2dae51a1c954ed6a0', '::1', 1528623873, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383632333837333b),
('c639791c3f5457a05b7c4ddf8efd69ba53478d2b', '::1', 1528624191, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383632343139313b),
('5a7eebef0472a40b9d16150b7f8f43427f62681b', '::1', 1528624946, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383632343934363b),
('2f53808164b52ce1b0180515408a1cbb93b28347', '::1', 1528625406, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383632353430363b),
('8d5783c10c871aaeee46d4b28d5e07dc45c15618', '::1', 1528634031, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383633343033313b),
('68acb327e8482f546625f6c1c6bd894900bb2189', '::1', 1528634524, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383633343532343b),
('5c844c29e630a63fb429b96a2d6ea2bc4a279caf', '::1', 1528634849, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383633343834393b),
('df3cc78aa67df69fca8f14a14dfff42ade96c350', '::1', 1528635202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383633353230323b),
('adf18f8dfd02b0c2f1e91f52aa29720475f0c81c', '::1', 1528635204, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383633353230323b);

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
(106, 'Mali election', 0, 1528616067),
(103, 'Mali election', 0, 1528442132),
(105, 'Mali election', 0, 1528612767),
(107, 'Mali election', 0, 1528616469),
(108, 'New test', 0, 1528618695),
(109, 'my test', 0, 1528619245),
(110, 'test final', 0, 1528623417),
(111, 'Mali election 4', 1, 1528624971);

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
  `v_created` int(11) NOT NULL,
  `v_image` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_voting_counter`
--

INSERT INTO `ci_voting_counter` (`v_id`, `v_voting_id`, `v_column`, `v_data`, `v_value`, `v_vistor_ip`, `v_created`, `v_image`) VALUES
(13, 103, 'Candidate 8', 'Candidate 8', 2, '::1', 0, NULL),
(12, 103, 'Candidate 19', 'Candidate 19', 2, '::1', 0, NULL),
(15, 103, 'Candidate 6', 'Candidate 6', 2, '::1', 0, NULL),
(14, 103, 'Candidate 7', 'Candidate 7', 3, '::1', 0, NULL),
(16, 103, 'Candidate 5', 'Candidate 5', 11, '::1', 0, NULL),
(17, 103, 'Candidate 4', 'Candidate 4', 8, '::1', 0, NULL),
(18, 103, 'Candidate 2', 'Candidate 2', 11, '::1', 0, NULL),
(19, 103, 'Candidate 3', 'Candidate 3', 6, '::1', 0, NULL),
(20, 103, 'Candidate 9', 'Candidate 9', 4, '::1', 0, NULL),
(21, 103, 'Candidate 1', 'Candidate 1', 3, '::1', 0, NULL),
(22, 103, 'Candidate 10', 'Candidate 10', 36, '::1', 0, NULL),
(23, 103, 'Candidate 11', 'Candidate 11', 3, '::1', 0, NULL),
(24, 103, 'Candidate 14', 'Candidate 14', 3, '::1', 0, NULL),
(25, 103, 'Candidate 13', 'Candidate 13', 3, '::1', 0, NULL),
(26, 103, 'Candidate 12', 'Candidate 12', 3, '::1', 0, NULL),
(27, 103, 'Candidate 15', 'Candidate 15', 145, '::1', 0, NULL),
(28, 103, 'Candidate 16', 'Candidate 16', 146, '::1', 0, NULL),
(29, 103, 'Candidate 17', 'Candidate 17', 2, '::1', 0, NULL),
(30, 103, 'Candidate 20', 'Candidate 20', 2, '::1', 0, NULL),
(31, 103, 'Candidate 18', 'Candidate 18', 1, '::1', 0, NULL),
(39, 105, '13', '13', 12, '::1', 0, 'can_img_bg-login-window.png'),
(40, 105, '12', '12', 4, '::1', 0, 'can_img_cart-header.png'),
(41, 108, '1', '1', 6, '::1', 0, 'can_img_cart-header.png'),
(42, 108, '2', '2', 6, '::1', 0, 'can_img_download.png'),
(43, 109, '1', '1', 6, '::1', 0, 'can_img_cart-header.png'),
(44, 109, '2', '2', 6, '::1', 0, 'can_img_download.png'),
(45, 110, '1', '1', 6, '::1', 0, 'can_img_cart-header.png'),
(46, 110, '2', '2', 6, '::1', 0, 'can_img_download.png'),
(47, 111, '12345', '12345', 16, '::1', 0, 'can_img_C21012-sandal-front-thumb.jpg'),
(48, 111, '2222', '2222', 18, '::1', 0, 'can_img_bg-login-window.png');

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
(40, 'Candidate 8', '', 103),
(39, 'Candidate 7', '', 103),
(38, 'Candidate 6', '', 103),
(37, 'Candidate 5', '', 103),
(36, 'Candidate 4', '', 103),
(35, 'Candidate 3', '', 103),
(34, 'Candidate 2', '', 103),
(33, 'Candidate 1', '', 103),
(41, 'Candidate 9', '', 103),
(42, 'Candidate 10', '', 103),
(43, 'Candidate 11', '', 103),
(44, 'Candidate 12', '', 103),
(45, 'Candidate 13', '', 103),
(46, 'Candidate 14', '', 103),
(47, 'Candidate 15', '', 103),
(48, 'Candidate 16', '', 103),
(49, 'Candidate 17', '', 103),
(50, 'Candidate 18', '', 103),
(51, 'Candidate 19', '', 103),
(52, 'Candidate 20', '', 103),
(53, 'new', '/uploads/bg-login-window.png', 104),
(54, '1', '/uploads/bg-login-window.png', 104),
(55, '2', '/uploads/bg-login-window.png', 104),
(56, '3', '/uploads/bg-login-window.png', 104),
(57, '/uploads/bg-login-window.png', '/uploads/bg-login-window.png', 104),
(58, '12', 'can_img_cart-header.png', 105),
(59, '13', 'can_img_bg-login-window.png', 105),
(60, '12', 'can_img_cart-header.png', 106),
(61, '13', 'can_img_bg-login-window.png', 106),
(62, '12', 'can_img_cart-header.png', 107),
(63, '13', 'can_img_bg-login-window.png', 107),
(64, '1', 'can_img_bg-login-window.png', 108),
(65, '2', 'can_img_download-active.png', 108),
(66, '1', 'can_img_adamant.png', 109),
(67, '2', 'can_img_download.png', 109),
(68, '1', 'can_img_cart-header.png', 110),
(69, '2', 'can_img_download.png', 110),
(70, '12345', 'can_img_C21012-sandal-front-thumb.jpg', 111),
(71, '2222', 'can_img_bg-login-window.png', 111);

-- --------------------------------------------------------

--
-- Table structure for table `votin`
--

CREATE TABLE `votin` (
  `Id` int(10) NOT NULL,
  `age` int(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `votin`
--

INSERT INTO `votin` (`Id`, `age`, `sex`, `region`) VALUES
(1, 18, 'female', ' Kayes ');

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
-- Indexes for table `votin`
--
ALTER TABLE `votin`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ci_voting`
--
ALTER TABLE `ci_voting`
  MODIFY `dv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;
--
-- AUTO_INCREMENT for table `ci_voting_backup`
--
ALTER TABLE `ci_voting_backup`
  MODIFY `dv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
--
-- AUTO_INCREMENT for table `ci_voting_counter`
--
ALTER TABLE `ci_voting_counter`
  MODIFY `v_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `voter_info`
--
ALTER TABLE `voter_info`
  MODIFY `candidate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT for table `votin`
--
ALTER TABLE `votin`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
