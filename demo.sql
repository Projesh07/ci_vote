-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- হোষ্ট: localhost
-- তৈরী করতে ব্যবহৃত সময়: জুন 11, 2018 at 05:52 PM
-- সার্ভার সংস্করন: 5.7.22-0ubuntu0.16.04.1
-- পিএইছপির সংস্করন: 5.6.32-1+ubuntu16.04.1+deb.sury.org+2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- ডাটাবেইজ: `demo`
--

-- --------------------------------------------------------

--
-- টেবলের জন্য টেবলের গঠন `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- টেবলের জন্য তথ্য স্তুপ করছি `ci_sessions`
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
('adf18f8dfd02b0c2f1e91f52aa29720475f0c81c', '::1', 1528635204, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383633353230323b),
('3681615d3e513baa4878a42a690c9521af8ae50e', '::1', 1528693436, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383639333433363b),
('8e24e5f0ed02aef55ad5aed66d996bcd1d79aa2f', '::1', 1528693863, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383639333836333b),
('9e3f8cb3063f46938bc44816915dfff9806b2992', '::1', 1528695271, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383639353237313b),
('fe5824796eb15d3fe46e30db1bae5f33c665b817', '::1', 1528696005, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383639363030353b),
('3008b8608cfd2f7fb2b68b71d9896eb6b4854398', '::1', 1528696105, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383639363030353b766f7465725f69647c693a343b),
('2a52c62a87e6a88b966e09e2f486b728ac6194d1', '127.0.0.1', 1528729607, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383732393438363b),
('389f29ea488640508de41c0784e0683908873f66', '127.0.0.1', 1528730355, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383733303335353b),
('3cfc6372624f734d6a3b429bd83041adedc55382', '127.0.0.1', 1528731493, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383733313239313b),
('e8799fd1d5097826a17d5c11bc01e020c8e26b52', '127.0.0.1', 1528731998, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383733313731363b),
('ac3748d31f9d29535ca0f51837e5223c6884ca4a', '127.0.0.1', 1528732063, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383733323036333b),
('d76f7d9dfc8abf7c6ba385d749bf021e6e27177d', '127.0.0.1', 1528733145, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383733333134353b),
('cd83f702f4c50838ea0bb014204af960f0d6f802', '127.0.0.1', 1528733724, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383733333434383b),
('666db44e7d20030bbb3d526eeed3e0187a5fc654', '127.0.0.1', 1528733891, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383733333839313b),
('6f12d75c61259658006473dec6e5cc159e4208bf', '127.0.0.1', 1528735294, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383733353139323b),
('4b4c4d8d9c1e50dfba9b63dd0f6842a2ba5ac43e', '127.0.0.1', 1528735769, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383733353735323b),
('d17000bebd60fc694fcea067e91ddd5b645aa602', '127.0.0.1', 1528736212, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383733363231323b),
('d12f5c0f090a185be2b3343cd0ec095372917b6b', '127.0.0.1', 1528737187, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383733363934373b),
('80ca8c80ff9acf65f7dd4d1fbed3cb24da831f11', '127.0.0.1', 1528737255, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383733373235353b),
('f170f0005242d71911e1fb97e90ec40e114f201f', '127.0.0.1', 1528737630, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383733373432393b),
('54bb8b5d34060c5718302fcc586f0a29acc0a008', '127.0.0.1', 1528738058, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383733373938323b),
('82907c0e552ec8defa1fafc11262777abefac605', '127.0.0.1', 1528738889, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383733383732383b),
('a55037e18f8af50fb3b9c0dd1affc07c59fabe16', '127.0.0.1', 1528739373, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383733393238343b);

-- --------------------------------------------------------

--
-- টেবলের জন্য টেবলের গঠন `ci_voting`
--

CREATE TABLE `ci_voting` (
  `dv_id` int(11) NOT NULL,
  `dv_title` varchar(255) NOT NULL,
  `dv_state` tinyint(1) DEFAULT '0',
  `dv_created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- টেবলের জন্য তথ্য স্তুপ করছি `ci_voting`
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
-- টেবলের জন্য টেবলের গঠন `ci_voting_backup`
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
-- টেবলের জন্য তথ্য স্তুপ করছি `ci_voting_backup`
--

INSERT INTO `ci_voting_backup` (`dv_id`, `dv_title`, `A`, `B`, `C`, `D`, `E`, `F`, `G`, `H`, `I`, `j`, `dv_state`, `dv_created`) VALUES
(89, 'election vote', '1', '2', '3', '4', '', '', '', '', '', '', 1, 1528106802);

-- --------------------------------------------------------

--
-- টেবলের জন্য টেবলের গঠন `ci_voting_counter`
--

CREATE TABLE `ci_voting_counter` (
  `v_id` int(11) NOT NULL,
  `v_voting_id` int(11) NOT NULL,
  `v_column` varchar(255) NOT NULL,
  `v_data` varchar(255) NOT NULL,
  `v_value` int(1) NOT NULL DEFAULT '1',
  `v_vistor_ip` varchar(255) NOT NULL,
  `v_created` int(11) NOT NULL,
  `v_image` varchar(255) DEFAULT NULL,
  `votin_id` int(11) DEFAULT NULL,
  `v_male` int(11) NOT NULL DEFAULT '0',
  `v_female` int(11) NOT NULL DEFAULT '0',
  `v_others` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- টেবলের জন্য তথ্য স্তুপ করছি `ci_voting_counter`
--

INSERT INTO `ci_voting_counter` (`v_id`, `v_voting_id`, `v_column`, `v_data`, `v_value`, `v_vistor_ip`, `v_created`, `v_image`, `votin_id`, `v_male`, `v_female`, `v_others`) VALUES
(13, 103, 'Candidate 8', 'Candidate 8', 2, '::1', 0, NULL, 0, 0, 0, 0),
(12, 103, 'Candidate 19', 'Candidate 19', 2, '::1', 0, NULL, 0, 0, 0, 0),
(15, 103, 'Candidate 6', 'Candidate 6', 2, '::1', 0, NULL, 0, 0, 0, 0),
(14, 103, 'Candidate 7', 'Candidate 7', 3, '::1', 0, NULL, 0, 0, 0, 0),
(16, 103, 'Candidate 5', 'Candidate 5', 11, '::1', 0, NULL, 0, 0, 0, 0),
(17, 103, 'Candidate 4', 'Candidate 4', 8, '::1', 0, NULL, 0, 0, 0, 0),
(18, 103, 'Candidate 2', 'Candidate 2', 11, '::1', 0, NULL, 0, 0, 0, 0),
(19, 103, 'Candidate 3', 'Candidate 3', 6, '::1', 0, NULL, 0, 0, 0, 0),
(20, 103, 'Candidate 9', 'Candidate 9', 4, '::1', 0, NULL, 0, 0, 0, 0),
(21, 103, 'Candidate 1', 'Candidate 1', 3, '::1', 0, NULL, 0, 0, 0, 0),
(22, 103, 'Candidate 10', 'Candidate 10', 36, '::1', 0, NULL, 0, 0, 0, 0),
(23, 103, 'Candidate 11', 'Candidate 11', 3, '::1', 0, NULL, 0, 0, 0, 0),
(24, 103, 'Candidate 14', 'Candidate 14', 3, '::1', 0, NULL, 0, 0, 0, 0),
(25, 103, 'Candidate 13', 'Candidate 13', 3, '::1', 0, NULL, 0, 0, 0, 0),
(26, 103, 'Candidate 12', 'Candidate 12', 3, '::1', 0, NULL, 0, 0, 0, 0),
(27, 103, 'Candidate 15', 'Candidate 15', 145, '::1', 0, NULL, 0, 0, 0, 0),
(28, 103, 'Candidate 16', 'Candidate 16', 146, '::1', 0, NULL, 0, 0, 0, 0),
(29, 103, 'Candidate 17', 'Candidate 17', 2, '::1', 0, NULL, 0, 0, 0, 0),
(30, 103, 'Candidate 20', 'Candidate 20', 2, '::1', 0, NULL, 0, 0, 0, 0),
(31, 103, 'Candidate 18', 'Candidate 18', 1, '::1', 0, NULL, 0, 0, 0, 0),
(39, 105, '13', '13', 12, '::1', 0, 'can_img_bg-login-window.png', 0, 0, 0, 0),
(40, 105, '12', '12', 4, '::1', 0, 'can_img_cart-header.png', 0, 0, 0, 0),
(41, 108, '1', '1', 6, '::1', 0, 'can_img_cart-header.png', 0, 0, 0, 0),
(42, 108, '2', '2', 6, '::1', 0, 'can_img_download.png', 0, 0, 0, 0),
(43, 109, '1', '1', 6, '::1', 0, 'can_img_cart-header.png', 0, 0, 0, 0),
(44, 109, '2', '2', 6, '::1', 0, 'can_img_download.png', 0, 0, 0, 0),
(45, 110, '1', '1', 6, '::1', 0, 'can_img_cart-header.png', 0, 0, 0, 0),
(46, 110, '2', '2', 6, '::1', 0, 'can_img_download.png', 0, 0, 0, 0),
(47, 111, '12345', '12345', 16, '::1', 0, 'can_img_C21012-sandal-front-thumb.jpg', 0, 0, 0, 0),
(48, 111, '2222', '2222', 19, '::1', 0, 'can_img_bg-login-window.png', 4, 0, 0, 0);

-- --------------------------------------------------------

--
-- টেবলের জন্য টেবলের গঠন `voter_info`
--

CREATE TABLE `voter_info` (
  `candidate_id` int(11) NOT NULL,
  `candidate_name` varchar(255) NOT NULL,
  `can_image` varchar(255) NOT NULL,
  `ci_votting_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- টেবলের জন্য তথ্য স্তুপ করছি `voter_info`
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
-- টেবলের জন্য টেবলের গঠন `vote_state_count`
--

CREATE TABLE `vote_state_count` (
  `v_id` int(11) NOT NULL,
  `kayes` int(11) NOT NULL DEFAULT '0',
  `bamako` int(11) NOT NULL DEFAULT '0',
  `koulikoro` int(11) NOT NULL DEFAULT '0',
  `segou` int(11) NOT NULL DEFAULT '0',
  `sikasso` int(11) NOT NULL DEFAULT '0',
  `mopti` int(11) NOT NULL DEFAULT '0',
  `gao` int(11) NOT NULL DEFAULT '0',
  `tombouctou` int(11) NOT NULL DEFAULT '0',
  `kidal` int(11) NOT NULL DEFAULT '0',
  `v_female` int(11) NOT NULL DEFAULT '0',
  `v_male` int(11) NOT NULL DEFAULT '0',
  `v_others` int(11) NOT NULL DEFAULT '0',
  `v_voting_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- টেবলের জন্য তথ্য স্তুপ করছি `vote_state_count`
--

INSERT INTO `vote_state_count` (`v_id`, `kayes`, `bamako`, `koulikoro`, `segou`, `sikasso`, `mopti`, `gao`, `tombouctou`, `kidal`, `v_female`, `v_male`, `v_others`, `v_voting_id`) VALUES
(1, 4, 5, 2, 6, 7, 40, 7, 20, 10, 20, 10, 1, 111);

-- --------------------------------------------------------

--
-- টেবলের জন্য টেবলের গঠন `votin`
--

CREATE TABLE `votin` (
  `Id` int(10) NOT NULL,
  `age` int(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- টেবলের জন্য তথ্য স্তুপ করছি `votin`
--

INSERT INTO `votin` (`Id`, `age`, `sex`, `region`) VALUES
(1, 18, 'female', ' Kayes '),
(2, 18, 'female', ' Kayes '),
(3, 18, 'female', ' Kayes '),
(4, 18, 'female', ' Kayes ');

--
-- স্তুপকৃত টেবলের ইনডেক্স
--

--
-- টেবিলের ইনডেক্সসমুহ `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- টেবিলের ইনডেক্সসমুহ `ci_voting`
--
ALTER TABLE `ci_voting`
  ADD PRIMARY KEY (`dv_id`);

--
-- টেবিলের ইনডেক্সসমুহ `ci_voting_backup`
--
ALTER TABLE `ci_voting_backup`
  ADD PRIMARY KEY (`dv_id`);

--
-- টেবিলের ইনডেক্সসমুহ `ci_voting_counter`
--
ALTER TABLE `ci_voting_counter`
  ADD PRIMARY KEY (`v_id`);

--
-- টেবিলের ইনডেক্সসমুহ `voter_info`
--
ALTER TABLE `voter_info`
  ADD PRIMARY KEY (`candidate_id`);

--
-- টেবিলের ইনডেক্সসমুহ `votin`
--
ALTER TABLE `votin`
  ADD PRIMARY KEY (`Id`);

--
-- স্তুপকৃত টেবলের জন্য স্বয়ক্রীয় বর্দ্ধিত মান (AUTO_INCREMENT)
--

--
-- টেবলের জন্য স্বয়ক্রীয় বর্দ্ধিত মান (AUTO_INCREMENT) `ci_voting`
--
ALTER TABLE `ci_voting`
  MODIFY `dv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;
--
-- টেবলের জন্য স্বয়ক্রীয় বর্দ্ধিত মান (AUTO_INCREMENT) `ci_voting_backup`
--
ALTER TABLE `ci_voting_backup`
  MODIFY `dv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
--
-- টেবলের জন্য স্বয়ক্রীয় বর্দ্ধিত মান (AUTO_INCREMENT) `ci_voting_counter`
--
ALTER TABLE `ci_voting_counter`
  MODIFY `v_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- টেবলের জন্য স্বয়ক্রীয় বর্দ্ধিত মান (AUTO_INCREMENT) `voter_info`
--
ALTER TABLE `voter_info`
  MODIFY `candidate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
--
-- টেবলের জন্য স্বয়ক্রীয় বর্দ্ধিত মান (AUTO_INCREMENT) `votin`
--
ALTER TABLE `votin`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
