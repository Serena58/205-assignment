-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2021-03-30 07:05:54
-- 伺服器版本： 10.4.14-MariaDB
-- PHP 版本： 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `assignment`
--
CREATE DATABASE IF NOT EXISTS `assignment` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `assignment`;

-- --------------------------------------------------------

--
-- 資料表結構 `admin_login`
--

CREATE TABLE `admin_login` (
  `admin_id` varchar(15) NOT NULL,
  `admin_name` varchar(30) NOT NULL,
  `gender` enum('Female','Male') NOT NULL,
  `LoginName` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `AC_create time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `admin_login`
--

INSERT INTO `admin_login` (`admin_id`, `admin_name`, `gender`, `LoginName`, `Password`, `AC_create time`) VALUES
('AD001', 'John', 'Male', 'AD001', 'AD001', '2021-03-26 17:32:24'),
('AD002', 'Henry', 'Male', 'AD002', 'AD002', '2021-03-26 17:32:31'),
('AD003', 'Vivi', 'Female', 'AD003', 'AD003', '2021-03-26 17:33:16');

-- --------------------------------------------------------

--
-- 資料表結構 `customer_login`
--

CREATE TABLE `customer_login` (
  `customer_id` int(15) NOT NULL,
  `customer_name` text NOT NULL,
  `gender` enum('Male','Female') DEFAULT NULL,
  `LoginName` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Contact` varchar(8) DEFAULT NULL,
  `AC create_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `customer_login`
--

INSERT INTO `customer_login` (`customer_id`, `customer_name`, `gender`, `LoginName`, `Password`, `Contact`, `AC create_time`) VALUES
(1, 'Peter', 'Male', 'CS001', 'CS001', '57685875', '2021-03-26 17:36:05'),
(2, 'Mary', 'Female', 'CS002', 'CS002', '65757575', '2021-03-26 17:37:01'),
(3, 'mable', 'Female', 'CS003', 'CS003', '12341234', '2021-03-29 16:46:33');

-- --------------------------------------------------------

--
-- 資料表結構 `customer_order`
--

CREATE TABLE `customer_order` (
  `no.` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `item code` varchar(30) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `customer_order`
--

INSERT INTO `customer_order` (`no.`, `customer_id`, `item code`, `quantity`) VALUES
(1, 1, 'ear1', 2);

-- --------------------------------------------------------

--
-- 資料表結構 `inventory`
--

CREATE TABLE `inventory` (
  `id` int(11) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `item_code` varchar(20) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 50
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `inventory`
--

INSERT INTO `inventory` (`id`, `category`, `item_code`, `quantity`) VALUES
(1, 'earrings', 'ear001', 50),
(2, 'dress', 'dress001', 50),
(3, 'earrings', 'ear002', 50),
(4, 'dress', 'dress002', 50);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`admin_id`);

--
-- 資料表索引 `customer_login`
--
ALTER TABLE `customer_login`
  ADD PRIMARY KEY (`customer_id`);

--
-- 資料表索引 `customer_order`
--
ALTER TABLE `customer_order`
  ADD PRIMARY KEY (`no.`);

--
-- 資料表索引 `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `customer_login`
--
ALTER TABLE `customer_login`
  MODIFY `customer_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `customer_order`
--
ALTER TABLE `customer_order`
  MODIFY `no.` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 資料庫： `mycafe`
--
CREATE DATABASE IF NOT EXISTS `mycafe` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mycafe`;

-- --------------------------------------------------------

--
-- 資料表結構 `customer`
--

CREATE TABLE `customer` (
  `customerID` int(8) NOT NULL,
  `Surname` varchar(20) NOT NULL,
  `givenName` varchar(50) NOT NULL,
  `emailAddress` varchar(50) NOT NULL,
  `mobilePhone` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `customer`
--

INSERT INTO `customer` (`customerID`, `Surname`, `givenName`, `emailAddress`, `mobilePhone`) VALUES
(123, 'choi', 'hei man', 'serena@gmail.com', 12345678),
(124, 'chan', 'suk yin', 'zoe69@gmail.com', 54038349),
(125, 'choi', 'chun hin', 'thomas831@gmail.com', 93283290),
(145, 'choi', 'hei hui', 'abc@hotmail.com', 12334243),
(727, 'hui', 'chi hong', 'henry727@gmail.com', 64312334);

-- --------------------------------------------------------

--
-- 資料表結構 `menu`
--

CREATE TABLE `menu` (
  `dish_id` int(6) NOT NULL,
  `dish_name` varchar(20) NOT NULL,
  `description` varchar(150) NOT NULL,
  `unit_price` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerID`);

--
-- 資料表索引 `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`dish_id`);
--
-- 資料庫： `online_shopping`
--
CREATE DATABASE IF NOT EXISTS `online_shopping` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `online_shopping`;

-- --------------------------------------------------------

--
-- 資料表結構 `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(3) NOT NULL,
  `name` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `pw` varchar(20) NOT NULL,
  `gender` enum('F','M') NOT NULL,
  `phone` int(8) NOT NULL,
  `email` varchar(40) NOT NULL,
  `created_dt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `username`, `pw`, `gender`, `phone`, `email`, `created_dt`) VALUES
(1, 'admin', 'admin000', 'admin000', 'F', 35788357, 'admin000@mail.com', '2020-11-03 12:04:54'),
(2, 'admin', 'admin001', 'admin001', 'M', 83944839, 'admin001@gg.g', '2020-11-04 17:04:53'),
(3, 'admin', 'admin002', 'admin002', 'F', 83533333, 'admin002@gg.g', '2020-11-04 17:04:53');

-- --------------------------------------------------------

--
-- 資料表結構 `cases`
--

CREATE TABLE `cases` (
  `case_id` int(5) NOT NULL,
  `customer_id` int(5) NOT NULL,
  `provider_id` int(5) NOT NULL,
  `category` set('decoration','design') NOT NULL,
  `description` varchar(100) NOT NULL,
  `address` varchar(30) NOT NULL,
  `district` enum('Islands','Kwai Tsing','North','Sai Kung','Sha Tin','Tai Po','Tsuen Wan','Tuen Mun','Yuen Long','Kowloon City','Kwun Tong','Sham Shui Po','Wong Tai Sin','Yau Tsim Mong','Central and Western','Eastern','Southern','Wan Chai') NOT NULL,
  `area` int(5) NOT NULL,
  `price` int(10) NOT NULL,
  `status` enum('Verifying','Posted','Processing','Done','Declined','Cancelled') NOT NULL,
  `created_dt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `cases`
--

INSERT INTO `cases` (`case_id`, `customer_id`, `provider_id`, `category`, `description`, `address`, `district`, `area`, `price`, `status`, `created_dt`) VALUES
(1, 1, 0, 'decoration,design', 'ksfhgfskgfg', 'dsgdgdg', 'Yuen Long', 412, 0, 'Posted', '2020-10-21 10:58:07'),
(2, 2, 6, 'decoration', 'yogggg', 'sdsdgdsg', 'Central and Western', 734, 1419656, 'Done', '2020-10-21 14:42:42'),
(3, 3, 3, 'decoration', 'hdhgdgugu', 'dsres', 'Yau Tsim Mong', 2000, 319535, 'Done', '2020-10-30 11:37:32'),
(4, 1, 0, 'decoration', 'lsjghfgfg', 'sdgsdg', 'Eastern', 253, 0, 'Posted', '2020-10-30 12:44:05'),
(5, 16, 0, 'decoration,design', 'i want to blah', 'buildldldlding', 'Yau Tsim Mong', 5939, 0, 'Posted', '2020-11-04 17:23:50'),
(6, 10, 7, 'decoration,design', 'kdgjdgsd', 'janglngrg', 'Yau Tsim Mong', 2466, 99999, 'Processing', '2020-11-06 05:34:49'),
(7, 15, 5, 'decoration,design', 'adlnld', 'lnglkr', 'Tsuen Wan', 242, 2393253, 'Processing', '2020-11-06 05:34:49'),
(8, 2, 0, 'decoration', 'afsaf', 'afsasf', 'Islands', 2351, 0, 'Posted', '2020-11-05 22:16:14'),
(9, 2, 0, 'decoration,design', 'ljdgdklsgsdg', 'sjjdgksnkdgdg', 'Kwai Tsing', 83259, 0, 'Posted', '2020-11-06 05:24:10'),
(10, 4, 0, 'design', 'isahfsf', 'jkbdgs', 'North', 463, 0, 'Posted', '2020-11-06 05:24:54'),
(11, 19, 0, 'design', 'aljfslfjadfa', 'ksbdjhgsodf', 'Sai Kung', 49934, 0, 'Posted', '2020-11-06 05:24:54'),
(12, 24, 0, 'design', 'jnaddggd', 'jdskhkjsdg', 'Sha Tin', 245, 0, 'Posted', '2020-11-06 05:29:19'),
(13, 12, 0, 'decoration', 'eehkjsdfkjsdf', 'gwejrehr', 'Tai Po', 346, 0, 'Posted', '2020-11-06 05:29:19'),
(14, 9, 0, 'decoration,design', 'ehtnnfhg', 'efgekfk', 'Tsuen Wan', 357, 0, 'Posted', '2020-11-06 05:29:19'),
(15, 24, 0, 'design', 'kjdsbvkjdv', 'jdvwwrv', 'Tuen Mun', 64, 0, 'Posted', '2020-11-06 05:29:19'),
(16, 27, 0, 'design', 'ajdjkd', 'jvwrwgr', 'Yuen Long', 765, 0, 'Posted', '2020-11-06 05:29:19'),
(17, 6, 0, 'design', 'afnejewg', 'ljdnaljngjf', 'Kowloon City', 2644, 0, 'Posted', '2020-11-06 05:29:19'),
(18, 1, 0, 'decoration', 'wljngljnglwg', 'lnglwggnwlr', 'Kwun Tong', 2353, 0, 'Posted', '2020-11-06 05:29:19'),
(19, 4, 0, 'decoration,design', 'enfjlwnglg', 'nrgjnjg', 'Sham Shui Po', 2335, 0, 'Posted', '2020-11-06 05:29:19'),
(20, 20, 0, 'decoration', 'wngwwrkjr', 'eljngljrgnr', 'Wong Tai Sin', 23525, 0, 'Posted', '2020-11-06 05:29:19'),
(21, 8, 0, 'design', 'rwjgnrlhnjr', 'elgnlrgnr', 'Yau Tsim Mong', 45435, 0, 'Posted', '2020-11-06 05:29:19'),
(22, 1, 1, 'design', 'rgnlerjhntl', 'lgnlrhnrhrwngelh', 'Central and Western', 7645, 4949, 'Done', '2020-11-06 05:29:19'),
(23, 2, 0, 'decoration', 'wjjgwlr', 'lekglrrhhr', 'Eastern', 34646, 0, 'Posted', '2020-11-06 05:29:19'),
(24, 3, 0, 'decoration,design', 'wnwrnhkwr', 'elgnegeg', 'Southern', 24646, 0, 'Posted', '2020-11-06 05:29:19'),
(25, 5, 0, 'decoration', 'ngwrnrwn', 'ejgkngk', 'Wan Chai', 2264, 0, 'Posted', '2020-11-06 05:29:19'),
(26, 2, 0, 'design', 'dfajkjdf', 'jdsngsj', 'Central and Western', 293, 0, 'Posted', '2020-11-07 19:12:23'),
(27, 24, 0, 'decoration', 'gkshs', 'fdjkgjsk', 'Southern', 2839, 0, 'Verifying', '2020-11-08 00:43:38'),
(28, 2, 0, 'design', 'lsdlgdg', 'ladnlgd', 'Central and Western', 4959, 0, 'Verifying', '2020-11-09 12:08:02'),
(29, 2, 0, 'design', 'ad,jfna,dg', 'admng,dsmg', 'Eastern', 382, 0, 'Verifying', '2020-11-10 11:14:38'),
(30, 2, 0, 'decoration,design', 'skdhgksdg', 'sdlgjlsf', 'Wan Chai', 3577, 0, 'Cancelled', '2020-11-10 12:48:50'),
(31, 2, 0, 'decoration,design', 'skdhgksdg', 'sdlgjlsf', 'Tuen Mun', 3577, 0, 'Posted', '2020-11-10 12:48:59'),
(32, 2, 0, 'decoration,design', 'skdhgksdg', 'sdlgjlsf', 'Southern', 3577, 0, 'Posted', '2020-11-10 12:48:59'),
(33, 2, 0, 'design', 'adljg', 'ldkjs', 'Tai Po', 346, 0, 'Verifying', '2020-11-10 12:54:05'),
(34, 2, 0, 'decoration', 'lksjdgsd', 'lkjdlkgjsfklg', 'Southern', 999, 0, 'Posted', '2020-11-10 15:19:50'),
(35, 2, 0, 'decoration', 'jdsllds', 'alfjlsf', 'North', 9990, 0, 'Declined', '2020-11-10 15:36:44'),
(36, 2, 0, 'decoration,design', 'sjdgsjg', 'ljhsdjg', 'Yau Tsim Mong', 999, 0, 'Posted', '2020-11-10 15:40:13'),
(37, 2, 0, 'decoration,design', 'lsdjgslg', 'lkjgdklsgk', 'Central and Western', 939, 0, 'Posted', '2020-11-10 15:42:17'),
(38, 2, 0, 'decoration,design', 'sljgnl', 'lsflg', 'Tsuen Wan', 9239, 0, 'Verifying', '2020-11-10 15:43:08'),
(39, 2, 0, 'design', 'ooooo', 'oooo', 'Kowloon City', 9, 0, 'Verifying', '2020-11-10 15:48:10'),
(40, 1, 0, 'design', 'apply me', 'apply me', 'Eastern', 999, 0, 'Posted', '2020-11-10 15:50:19'),
(41, 1, 0, 'design', 'bbb', 'bbb', 'Yau Tsim Mong', 999, 0, 'Cancelled', '2020-11-10 15:51:16'),
(42, 1, 0, 'design', 'ppp', 'ppp', 'Wong Tai Sin', 9090, 0, 'Cancelled', '2020-11-10 15:52:13'),
(43, 1, 0, 'decoration', 'opo', 'opop', 'North', 88, 0, 'Cancelled', '2020-11-10 15:52:28'),
(44, 1, 0, 'decoration,design', 'yy', 'yyoo9', 'Wong Tai Sin', 880, 0, 'Cancelled', '2020-11-10 15:52:49'),
(45, 2, 0, 'design', 'sjldglsdg', 'ldsnglsdg', 'Sai Kung', 2934, 0, 'Verifying', '2020-11-10 17:47:32'),
(46, 2, 0, 'decoration,design', 'sldkjgsl', 'kjsdgjs', 'Wan Chai', 919, 0, 'Posted', '2020-11-10 15:45:45'),
(47, 0, 0, 'decoration,design', 'jksdgksdg', 'sdjjsdlgsdg', 'Sha Tin', 999, 0, 'Cancelled', '2020-11-12 22:01:40'),
(48, 28, 0, 'decoration', 'hi', 'hi', 'Kowloon City', 199, 0, 'Posted', '2020-11-13 15:30:51'),
(49, 1, 1, 'design', 'akdljgsldkg', 'kdsgkldslkg', 'Islands', 235, 10000, 'Processing', '2020-11-13 16:22:16'),
(50, 1, 0, 'decoration', 'cancel me', 'cancel me', 'Sha Tin', 55555, 0, 'Posted', '2020-11-13 16:22:23'),
(51, 1, 0, 'decoration,design', '29045', 'lkdsjgl', 'Yuen Long', 9449, 0, 'Verifying', '2020-11-13 16:22:35'),
(52, 1, 0, 'design', 'lsdjglsfjlg', 'ljglksjglks', 'Tsuen Wan', 3333, 0, 'Posted', '2020-11-13 16:22:42'),
(53, 1, 0, 'decoration', 'slfjsgkllg', 'lkfdlkglksdg', 'Kwai Tsing', 45345, 0, 'Declined', '2020-11-13 16:22:50'),
(54, 1, 0, 'design', '123qwe', '123qwe', 'Islands', 456, 0, 'Verifying', '2021-03-18 17:43:49');

-- --------------------------------------------------------

--
-- 資料表結構 `cases_application`
--

CREATE TABLE `cases_application` (
  `casesApplication_id` int(10) NOT NULL,
  `case_id` int(5) NOT NULL,
  `customer_id` int(5) NOT NULL,
  `provider_id` int(5) NOT NULL,
  `description` varchar(100) NOT NULL,
  `estimated_price` int(10) NOT NULL,
  `admin_status` enum('Accepted','Declined','Verifying') NOT NULL,
  `status` enum('Accepted','Waiting','Declined','cCancelled','pCancelled') NOT NULL COMMENT 'Accepted: accept by customer\r\nWaiting: not yet decided by customer\r\nDeclined: declined by customer\r\ncCancelled: cancelled by customer\r\npCancelled: cancelled by provider',
  `apply_dt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `cases_application`
--

INSERT INTO `cases_application` (`casesApplication_id`, `case_id`, `customer_id`, `provider_id`, `description`, `estimated_price`, `admin_status`, `status`, `apply_dt`) VALUES
(1, 3, 3, 3, 'i am good, i think dadababa', 300000, 'Accepted', 'Accepted', '2020-11-05 21:02:22'),
(2, 2, 2, 6, 'me number 1', 1500000, 'Accepted', 'Accepted', '2020-11-05 21:02:22'),
(3, 1, 1, 1, 'cancel me', 5000000, 'Accepted', 'Waiting', '2020-11-07 15:47:24'),
(4, 10, 4, 2, 'kashfasf', 2500000, 'Accepted', 'Accepted', '2020-11-07 15:47:24'),
(5, 6, 10, 7, 'ajkdkadjg', 2000000, 'Accepted', 'Accepted', '2020-11-07 16:25:53'),
(6, 8, 2, 5, 'akjfaf', 100000, 'Accepted', 'Waiting', '2020-11-07 16:40:16'),
(7, 18, 1, 17, 'provider will be deleted', 90000, 'Accepted', 'Waiting', '2020-11-07 16:40:16'),
(8, 4, 1, 4, 'laladada', 1000000, 'Declined', 'cCancelled', '2020-11-07 20:27:02'),
(9, 4, 1, 3, 'im perfect', 999, 'Declined', 'cCancelled', '2020-11-07 21:14:57'),
(10, 4, 1, 2, 'im good', 100000, 'Declined', 'cCancelled', '2020-11-07 21:15:35'),
(11, 16, 27, 27, 'propro', 10000, 'Accepted', 'Waiting', '2020-11-07 21:16:25'),
(12, 4, 1, 1, 'lrgnfjlg', 83573, 'Declined', 'cCancelled', '2020-11-10 11:16:35'),
(13, 5, 16, 5, 'jdfl', 2999, 'Accepted', 'Waiting', '2020-11-10 13:46:06'),
(14, 21, 8, 5, 'gjfdkgbkjr', 38888, 'Verifying', 'Waiting', '2020-11-10 15:57:43'),
(15, 16, 27, 5, 'sjgldjgsdl', 28992, 'Verifying', 'Waiting', '2020-11-10 15:58:42'),
(16, 20, 20, 5, 'dskfj', 28888, 'Verifying', 'Waiting', '2020-11-10 16:03:17'),
(17, 10, 4, 3, 'jfdkfjdk', 27777, 'Accepted', 'Waiting', '2020-11-10 16:06:03'),
(18, 15, 24, 5, 'lskjkldgsg', 22999, 'Verifying', 'pCancelled', '2020-11-10 16:16:39'),
(19, 10, 4, 5, 'iwoeoewi', 2982, 'Accepted', 'Waiting', '2020-11-10 16:18:23'),
(20, 17, 6, 1, 'akjfhkaf', 292934, 'Accepted', 'Waiting', '2020-11-10 16:26:46'),
(21, 24, 3, 1, 'sdjg', 2929, 'Verifying', 'Waiting', '2020-11-10 17:46:56'),
(22, 8, 2, 2, 'ksjdgksdg', 293893, 'Accepted', 'Waiting', '2020-11-10 18:12:03'),
(23, 8, 2, 1, 'adjnlgdsg', 27552, 'Accepted', 'Waiting', '2020-11-10 18:12:13'),
(24, 8, 2, 3, 'kfjshdje', 289525, 'Accepted', 'Waiting', '2020-11-10 18:12:20'),
(25, 8, 2, 4, 'bibi', 909090, 'Verifying', 'Waiting', '2020-11-10 18:14:14'),
(26, 30, 2, 3, 'lsdgjsdghjlsdngjl', 28929, 'Accepted', 'cCancelled', '2020-11-10 18:45:07'),
(27, 30, 2, 2, 'sdjgsjldg', 293, 'Accepted', 'cCancelled', '2020-11-10 18:45:15'),
(28, 32, 2, 1, 'sldjgsjldg39', 29829, '', 'pCancelled', '2020-11-10 18:45:23'),
(29, 31, 2, 2, 'sdjgldsjglsdg', 929292, 'Accepted', 'Waiting', '2020-11-10 18:45:30'),
(30, 31, 2, 1, 'sdjgsdgsgdl', 28929, 'Accepted', 'pCancelled', '2020-11-10 18:45:38'),
(31, 32, 2, 2, 'dljsfjlsdgjlsd2000', 20000, 'Accepted', 'Waiting', '2020-11-10 18:45:47'),
(32, 32, 2, 3, 'sdjgsjdgs200200', 100000, 'Accepted', 'Waiting', '2020-11-10 18:45:57'),
(33, 30, 2, 5, 'dksjgksjgdgs', 202000, 'Accepted', 'cCancelled', '2020-11-10 18:46:04'),
(34, 44, 0, 20, 'dkjsnfdkf', 191919, 'Declined', 'cCancelled', '2020-11-11 21:06:24'),
(35, 1, 1, 23, 'kjsddsgj', 2032, 'Accepted', 'Waiting', '2020-11-12 22:21:54'),
(36, 13, 12, 5, 'testing', 199, 'Declined', 'Waiting', '2020-11-13 15:34:54'),
(37, 12, 24, 1, 'testingagain', 1919, 'Verifying', 'Waiting', '2020-11-13 15:37:51'),
(38, 11, 19, 1, 'testing3gain', 19439, 'Verifying', 'pCancelled', '2020-11-13 15:39:25'),
(39, 19, 4, 1, 'testing4gain', 39311, 'Verifying', 'Waiting', '2020-11-13 15:40:40'),
(40, 22, 1, 1, 'lsdkgjlsdg', 0, 'Accepted', 'Accepted', '2020-11-13 16:36:22'),
(41, 18, 1, 1, 'accept me', 3939, 'Accepted', 'Waiting', '2020-11-13 16:37:49'),
(42, 46, 2, 1, 'gfl', 39, 'Verifying', 'Waiting', '2020-11-13 16:41:21'),
(43, 36, 2, 1, 'pppppppp', 333333333, 'Verifying', 'Waiting', '2020-11-13 16:43:18'),
(44, 14, 9, 1, 'pqqp', 2020, 'Verifying', 'Waiting', '2020-11-13 16:53:15'),
(45, 9, 2, 1, 'dskl', 39, 'Verifying', 'Waiting', '2020-11-13 16:53:43'),
(46, 49, 1, 3, 'ladjfldgk', 700, 'Accepted', 'Declined', '2020-11-13 18:29:36'),
(47, 15, 24, 3, 'dkdk', 3030, 'Verifying', 'Waiting', '2020-11-14 12:19:56'),
(48, 12, 24, 4, 'adklfjdsg', 22000, 'Verifying', 'Waiting', '2020-11-14 16:40:30'),
(49, 18, 1, 4, 'isldjflds', 100000, 'Accepted', 'Waiting', '2020-11-14 16:40:53'),
(50, 20, 20, 4, 'kkdlflskdfl', 100000, 'Verifying', 'Waiting', '2020-11-14 16:41:08'),
(51, 4, 1, 5, 'sngnsdgsdng', 100000, 'Accepted', 'Waiting', '2020-11-14 16:41:26'),
(52, 12, 24, 5, 'lsdjlgjdsljgjdskg', 4000, 'Verifying', 'Waiting', '2020-11-14 16:41:34'),
(53, 18, 1, 5, 'sdjhdsgsdgll', 300000, 'Accepted', 'Waiting', '2020-11-14 16:41:45'),
(54, 1, 1, 3, 'skskkssk', 1010101, 'Accepted', 'Waiting', '2020-11-14 17:33:07'),
(55, 1, 1, 4, 'qpqppqp', 10000, 'Accepted', 'Waiting', '2020-11-14 17:33:45'),
(56, 1, 1, 5, 'qppppp', 1000000, 'Accepted', 'Waiting', '2020-11-14 17:34:09'),
(57, 1, 1, 6, 'yes', 99999, 'Accepted', 'Waiting', '2020-11-14 17:34:30'),
(58, 49, 1, 1, 'pppppppppp', 10000000, 'Accepted', 'Accepted', '2020-11-14 22:17:31'),
(59, 49, 1, 4, 'dpdpdppd', 900000, 'Accepted', 'Declined', '2020-11-14 22:20:18'),
(60, 48, 28, 1, 'customer will be deleted', 200000, 'Accepted', 'Declined', '2020-11-14 22:34:54'),
(61, 52, 3, 1, 'dodododod', 30000, 'Accepted', 'Waiting', '2020-11-14 22:47:53'),
(62, 50, 1, 1, 'this case will be cancelled', 100000, 'Accepted', 'Waiting', '2020-11-14 23:30:14');

-- --------------------------------------------------------

--
-- 資料表結構 `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(5) NOT NULL,
  `name` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `pw` varchar(20) NOT NULL,
  `gender` enum('F','M') NOT NULL,
  `phone` int(8) NOT NULL,
  `email` varchar(40) NOT NULL,
  `address` varchar(50) NOT NULL,
  `created_dt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `customer`
--

INSERT INTO `customer` (`customer_id`, `name`, `username`, `pw`, `gender`, `phone`, `email`, `address`, `created_dt`) VALUES
(1, 'chiu mimii', 'customer', 'customer', 'M', 11111111, 'abc@umail.com', 'abc building 100/F Flat Z', '2020-10-21 00:00:00'),
(2, 'jayden hui', 'aaaaaaaa', 'aaaaaaaa', 'M', 77777777, 'jaydenhui@gmail.com', 'testing', '2020-10-28 00:00:00'),
(3, 'lam mimi', 'lammimi', 'fdksjlfjk', 'F', 33333333, 'lammimi@email.com', 'mimi building', '2020-10-30 00:00:00'),
(4, 'lau mimi', 'laumimi', 'ksjdfkdf', 'F', 22222222, 'laumimi@imail.com', 'laumimi building', '2020-10-30 00:00:00'),
(5, 'liu mimi', 'liumimi', 'kffak333333', 'M', 44444444, 'liumimi@qmail.com', 'liumimi building', '2020-10-30 00:00:00'),
(6, 'pui mimi', 'puimimi', 'afkely123', 'M', 55555555, 'puimimi@omail.com', 'puimimi building', '2020-10-30 00:00:00'),
(7, 'bui mimi', 'buimimi', 'buimimimi', 'F', 87654321, 'buimimi@yo.com', 'buimimi building', '2020-11-02 16:30:23'),
(8, 'oo mimi', 'fakfadjk', 'jdgdhkgdskh', 'M', 25936252, 'jsghhgrk@gshd.jsg', 'hskgdhsdgk', '2020-11-03 17:27:15'),
(9, 'dfdf mimi', 'shdgkgadg', 'kdajghkr', 'M', 29745445, 'dsjggeeg@gshd.jsg', 'kadjghr', '2020-11-03 17:27:20'),
(10, 'fufu mimi', 'aejhfjg', 'aeghkdeeg', 'F', 13874606, 'krgh@ksgjrg.egh', 'ldsjghrgrg', '2020-11-03 17:33:39'),
(11, 'chiu mimi', 'srjghrjgr', 'grgjrkgadf', 'M', 91935359, 'krjghrg@jjhdg.eghe', 'ejhege', '2020-11-03 17:36:28'),
(12, 'dfkdkfndf', 'rgjrhgjrg', 'egjegjee', 'M', 10840933, 'djfe@jeg.cmk', 'dfjef', '2020-11-03 17:54:00'),
(13, 'chiuff', 'ehfeug', 'djvhkjdgn', 'F', 29486043, 'djjghdg@rg.rg', '', '2020-11-04 15:33:19'),
(14, 'chiu oo', 'lrgjhrg', 'wlrghgeeg', 'M', 85932339, 'jgr@gj.f', 'wjeglhwg', '2020-11-04 15:55:35'),
(15, 'chiu bili', 'dajhdg', 'dguhgrgf', 'M', 83153555, 'djvhdv@g.g', 'buildingd', '2020-11-04 15:56:08'),
(16, 'chiu pipi', 'adjkhdg', 'aekjdgrg', 'M', 28974544, 'rjghg@rh.ge', 'ekhg', '2020-11-04 16:08:17'),
(17, 'mimio', 'adljfhdg', 'adljghadlg', 'M', 29744499, 'adjghdg@ef.fe', 'adkjghdg', '2020-11-04 16:09:25'),
(18, 'alm didi', 'efefefef', 'efefefefef', 'M', 92387535, 'djfhdf@rg.gr', '', '2020-11-04 16:14:14'),
(19, 'pui oep', 'adjfkhdf', 'efhefefef', 'M', 28937535, 'dkjfhd@g.gr', 'adljdlgg', '2020-11-04 16:15:09'),
(20, 'chiu mimi', 'mimimimim', 'mimimimimi', 'M', 83275922, 'adkjhd@fe.f', '', '2020-11-04 16:16:45'),
(21, 'chiu kjkj', 'adjfhdg', 'djkghdgdg', 'F', 47545464, 'dlkkjgdg@fg.gf', 'dgdgsg', '2020-11-04 16:22:30'),
(22, 'pinky', 'sdglhdg', 'dsljghdgdg', 'F', 24857923, 'dlgh@f.fe', 'aejkhdg', '2020-11-04 16:23:50'),
(23, 'rringer', 'hihiihihih', 'hihihihihiih', 'F', 24578495, 'djhdg@f.ef', 'hihihihi building', '2020-11-04 16:31:22'),
(24, 'chiu mimi', 'ldhglegge', 'lheldgdgdg', 'F', 92857924, 'djghdlg@ge.g', 'adljgdg', '2020-11-04 16:32:10'),
(25, 'chiu mimi', 'lsdhldg', 'dlshgldgdg', 'M', 98434969, 'dsljhgd@g.ggg', 'ddfdfdfdffd', '2020-11-04 16:45:40'),
(26, 'chiu mimi', 'dljhgldg', 'dlghldgg', 'M', 48545459, 'dakjghdkg@g.g', '', '2020-11-04 16:46:48'),
(27, 'afsfas', 'asfafsasff', 'afsasfasf', 'F', 64646644, 'elg@g.g', 'gg', '2020-11-07 01:00:13'),
(28, 'delete me thank you', 'deleteme', 'deleteme', 'F', 23923999, 'grjggr@gggg.g', '', '2020-11-07 01:13:08'),
(29, 'twenty nine', 'adhhdhd', 'fhfhfhfhfhf', 'F', 54757575, 'fsgfh@g.g', '', '2020-11-07 01:15:24'),
(30, 'thirty', 'adhhdhd', 'fhfhfhfhfhf', 'F', 54757575, 'fsgfh@g.g', '', '2020-11-07 01:15:24'),
(31, 'thirty one', 'jdgjdjdjdk', 'kdhgkhuwifhf', 'F', 35235856, 'ewgkdg@g.g', '', '2020-11-07 01:28:46'),
(32, 'thirty two', 'bjbjbkjbgj', 'kjbbkjbkjbkj', 'F', 76775777, 'gfhyt@g.g', '', '2020-11-07 01:40:38'),
(33, 'thirty three', 'lkdsklgjskldg', 'kljskdlgjksd', 'F', 29292900, 'lsjdhgldsg@g.g', 'llsdgkls', '2020-11-11 16:23:08'),
(34, 'thirty four', 'thirtyfour', 'thirtyfour', 'F', 93939393, 'thirtyfour@g.g', 'ggg', '2020-11-14 18:46:47'),
(35, 'thirty five', 'thirtyfive', 'thirtyfive', 'F', 39393939, 'thirtyfive@gggg.g', 'dddd', '2020-11-14 18:47:59');

-- --------------------------------------------------------

--
-- 資料表結構 `provider`
--

CREATE TABLE `provider` (
  `provider_id` int(5) NOT NULL,
  `name` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `pw` varchar(20) NOT NULL,
  `introduction` varchar(100) NOT NULL,
  `gender` enum('F','M') NOT NULL,
  `phone` int(8) NOT NULL,
  `email` varchar(40) NOT NULL,
  `company_name` varchar(30) NOT NULL,
  `company_position` varchar(20) NOT NULL,
  `company_address` varchar(50) NOT NULL,
  `status` enum('Verified','Verifying','Declined') NOT NULL,
  `created_dt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `provider`
--

INSERT INTO `provider` (`provider_id`, `name`, `username`, `pw`, `introduction`, `gender`, `phone`, `email`, `company_name`, `company_position`, `company_address`, `status`, `created_dt`) VALUES
(1, 'real provider', 'provider', 'provider', 'i am good', 'M', 12312312, 'provider@gmail.com', '', '', '', 'Verified', '2020-11-02 19:04:59'),
(2, 'provider one', 'provider002', 'provider002', 'i am goodd', 'F', 31803582, 'provider001@g.cc', 'provider001 company ltd.', 'CEO', 'provider001 building', 'Verified', '2020-11-04 15:16:38'),
(3, 'provider', 'provider003', 'provider003', 'wonderful', 'M', 9148434, 'provider002@g.c', 'provider002 company', 'CEO', 'provider002 building', 'Verified', '2020-11-04 15:22:47'),
(4, 'provider', 'provider004', 'provider004', '', 'M', 9138533, 'provider003@g.g', '', '', '', 'Verified', '2020-11-04 15:40:32'),
(5, 'provider', 'provider005', 'provider005', '', 'F', 38295935, 'provider004@g.g', '', '', '', 'Verified', '2020-11-04 16:47:20'),
(6, 'provider', 'provider006', 'provider006', '', 'M', 23953333, 'provider005@g.g', '', '', '', 'Verified', '2020-11-04 16:57:14'),
(7, 'provider', 'provider007', 'provider007', '', 'F', 39355859, 'provider006@g.g', 'provider006 company', 'COO', 'provider006 building', 'Verified', '2020-11-04 16:58:29'),
(8, 'bling bling', 'provider008', 'provider008', 'superman', 'F', 23958735, 'provider007@gg.g', 'provider006 com', 'constructer', 'provider006 street', 'Verified', '2020-11-05 22:19:06'),
(9, 'providerrrr', 'provider009', 'provider009', 'pay me', 'M', 82353599, 'provider008@g.g', '', '', '', 'Verified', '2020-11-05 22:26:16'),
(10, 'provideererer', 'provider010', 'provider010', 'superwoman', 'F', 48584548, 'provider009@g.g', '', '', '', 'Verified', '2020-11-05 22:26:16'),
(11, 'notgood', 'notgoodd', 'notgoodd', 'wrhrhdddd', 'M', 46464646, 'kjghkjg@g.g', 'rjhgrg', 'wrgrg', 'wrgrg', 'Verified', '2020-11-05 22:27:43'),
(12, 'kjwgkjrg', 'rgrhhrgrg', 'rhrhrhrh', 'afefegdd', 'M', 23555777, 'egegeg@g.g', '', '', '', 'Verified', '2020-11-05 22:27:43'),
(13, 'verify me pls', 'verifyme', 'verifyme', 'yeah', 'F', 29296767, 'jkdhkjgdg@g.g', 'ekwhfkeg', 'rgrg', 'rwrwrh', 'Verifying', '2020-11-05 22:29:38'),
(14, 'wkjwgkeg', 'eqhkwghrr', 'wkjghkjwgr', 'gg', 'M', 29293877, 'eneg@g.g', '', '', '', 'Verifying', '2020-11-05 22:29:38'),
(15, 'kjegkjegk', 'hgfkgfkgfkgkr', 'ekjhksaabddg', 'kegkegddd', 'F', 48566644, 'kjg@g.g', 'ewgeg', 'egeg', 'gege', 'Verifying', '2020-11-05 22:30:44'),
(16, 'wekhgkw', 'ejghkegegell', 'egjhlglefee', 'ejhrkgrd', 'M', 28285656, 'rjhr@g.g', '', '', '', 'Verifying', '2020-11-05 22:30:44'),
(17, 'delete me la', 'deleteme2', 'deleteme2', 'bye guys', 'F', 90253925, 'sjkdghk@g.g', '', '', '', 'Verifying', '2020-11-07 01:47:48'),
(18, 'i was 18', 'jldgjldnsldg', 'wehgwegge', 'dkjskdgd', 'M', 98529299, 'ljgjlg@g.g', '', '', '', 'Verifying', '2020-11-07 01:48:36'),
(19, 'i was 19', 'ldglrgrff', 'kejhgkeg', 'goodd', 'F', 88448855, 'rkjgrg@gg.g', 'company yo', 'yoyo', 'yo', 'Verifying', '2020-11-08 20:00:35'),
(20, 'i was 20', 'bbbbbbbb', 'bbbbbbbb', 'spiderman', 'F', 84949944, 'kdjb@g,g', 'oooo', 'oooo', 'oooo', 'Verified', '2020-11-08 20:00:35'),
(21, 'i was 21', 'eglkemgklemk', 'dgdmsngsd', 'sdgjdddd', 'M', 29292929, 'wrg@g.g', '', '', '', 'Verifying', '2020-11-09 12:50:40'),
(22, 'i was 22', 'grkjgshk', 'rkgjhskfjg', 'gkajdhgkad', 'F', 32952295, 'sdjgl78@g.g', 'sdhg', 'lgj', 'rlkjlr', 'Verified', '2020-11-09 13:13:15'),
(23, 'i was 23', 'ljsldjlsgkj', 'lkjdksgjlksdjg', 'ksjdgkl', 'M', 22884583, 'skjdg@gg.g', 'sdjgh', 'jhssdjgh', 'jdghkjg', 'Verified', '2020-11-12 00:38:03');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- 資料表索引 `cases`
--
ALTER TABLE `cases`
  ADD PRIMARY KEY (`case_id`);

--
-- 資料表索引 `cases_application`
--
ALTER TABLE `cases_application`
  ADD PRIMARY KEY (`casesApplication_id`);

--
-- 資料表索引 `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- 資料表索引 `provider`
--
ALTER TABLE `provider`
  ADD PRIMARY KEY (`provider_id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `cases`
--
ALTER TABLE `cases`
  MODIFY `case_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `cases_application`
--
ALTER TABLE `cases_application`
  MODIFY `casesApplication_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `provider`
--
ALTER TABLE `provider`
  MODIFY `provider_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- 資料庫： `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- 資料表結構 `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- 傾印資料表的資料 `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'table', 'customer', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"allrows\":\"1\",\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@TABLE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"@TABLE@ 資料表結構\",\"latex_structure_continued_caption\":\"@TABLE@ 資料表結構 (續)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"@TABLE@ 表的內容\",\"latex_data_continued_caption\":\"@TABLE@ 表的內容 (續)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(4, 'root', 'server', 'assignment', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"assignment\",\"mycafe\",\"online_shopping\",\"phpmyadmin\",\"simplebilling\",\"student\",\"test\",\"try\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"@TABLE@ 資料表結構\",\"latex_structure_continued_caption\":\"@TABLE@ 資料表結構 (續)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"@TABLE@ 表的內容\",\"latex_data_continued_caption\":\"@TABLE@ 表的內容 (續)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(5, 'root', 'server', 'assigment', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"assignment\",\"mycafe\",\"online_shopping\",\"phpmyadmin\",\"simplebilling\",\"student\",\"test\",\"try\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"@TABLE@ 資料表結構\",\"latex_structure_continued_caption\":\"@TABLE@ 資料表結構 (續)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"@TABLE@ 表的內容\",\"latex_data_continued_caption\":\"@TABLE@ 表的內容 (續)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- 資料表結構 `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- 傾印資料表的資料 `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"assignment\",\"table\":\"customer_login\"},{\"db\":\"online_shopping\",\"table\":\"customer\"},{\"db\":\"assignment\",\"table\":\"customer_order\"},{\"db\":\"assignment\",\"table\":\"admin_login\"},{\"db\":\"assignment\",\"table\":\"inventory\"},{\"db\":\"online_shopping\",\"table\":\"provider\"},{\"db\":\"online_shopping\",\"table\":\"cases_application\"},{\"db\":\"online_shopping\",\"table\":\"admin\"},{\"db\":\"online_shopping\",\"table\":\"cases\"},{\"db\":\"assignment\",\"table\":\"store\"}]');

-- --------------------------------------------------------

--
-- 資料表結構 `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- 傾印資料表的資料 `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'assignment', 'admin_login', '{\"sorted_col\":\"`admin_id`  ASC\"}', '2021-03-26 09:32:31'),
('root', 'assignment', 'customer_login', '{\"CREATE_TIME\":\"2021-03-28 15:59:38\",\"col_order\":[0,1,2,3,4,5,6],\"col_visib\":[1,1,1,1,1,1,1],\"sorted_col\":\"`customer_login`.`customer_id`  ASC\"}', '2021-03-28 08:00:05'),
('root', 'assignment', 'customer_order', '{\"sorted_col\":\"`customer_id` ASC\"}', '2021-03-28 09:49:37'),
('root', 'assignment', 'inventory', '{\"sorted_col\":\"`inventory`.`id` ASC\"}', '2021-03-26 07:08:31'),
('root', 'mycafe', 'customer', '[]', '2020-10-07 03:54:13'),
('root', 'online_shopping', 'admin', '{\"sorted_col\":\"`admin`.`gender` ASC\"}', '2021-03-26 09:31:05'),
('root', 'student', 'studentt', '{\"CREATE_TIME\":\"2020-09-30 11:40:06\",\"col_visib\":[1,1,1,1,1,1],\"sorted_col\":\"`studentt`.`SNAME`  ASC\"}', '2020-09-30 03:43:20');

-- --------------------------------------------------------

--
-- 資料表結構 `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- 傾印資料表的資料 `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2021-03-30 05:05:39', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"zh_TW\",\"NavigationWidth\":0}');

-- --------------------------------------------------------

--
-- 資料表結構 `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- 資料表索引 `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- 資料表索引 `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- 資料表索引 `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- 資料表索引 `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- 資料表索引 `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- 資料表索引 `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- 資料表索引 `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- 資料表索引 `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- 資料表索引 `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- 資料表索引 `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- 資料表索引 `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- 資料表索引 `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- 資料表索引 `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- 資料表索引 `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- 資料表索引 `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- 資料表索引 `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- 資料表索引 `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 資料庫： `simplebilling`
--
CREATE DATABASE IF NOT EXISTS `simplebilling` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `simplebilling`;

-- --------------------------------------------------------

--
-- 資料表結構 `customers`
--

CREATE TABLE `customers` (
  `name` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `balance` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `customers`
--

INSERT INTO `customers` (`name`, `address`, `balance`) VALUES
('Baba Li', '2000 E. 21st Street', '450.00'),
('Jay Law', '9103 Problem Area', '-25.00'),
('Sue Wong', '9102 Kowloon Circle', '4.50');
--
-- 資料庫： `student`
--
CREATE DATABASE IF NOT EXISTS `student` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `student`;

-- --------------------------------------------------------

--
-- 資料表結構 `studentt`
--

CREATE TABLE `studentt` (
  `SNAME` varchar(30) NOT NULL,
  `SID` int(10) NOT NULL,
  `SAGE` int(30) NOT NULL,
  `SAREA` varchar(20) NOT NULL,
  `SMAJOR` varchar(30) NOT NULL,
  `scourse` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `studentt`
--

INSERT INTO `studentt` (`SNAME`, `SID`, `SAGE`, `SAREA`, `SMAJOR`, `scourse`) VALUES
('Brian', 24577774, 19, 'Cityu', 'Physical Therapy', NULL),
('Kelvin', 24577778, 19, 'Cityu', 'Nursing', '11232'),
('Norman ', 24687771, 20, 'Scope', 'Medicine', '11240'),
('Charlotte', 25546774, 18, 'Cityu', 'Computer', '11025'),
('Bryan', 28467771, 19, 'Cityu', 'Architecture', NULL),
('Ashley', 28467779, 19, 'Cityu', 'BIT', '11010');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `studentt`
--
ALTER TABLE `studentt`
  ADD PRIMARY KEY (`SID`);
--
-- 資料庫： `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- 資料庫： `try`
--
CREATE DATABASE IF NOT EXISTS `try` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `try`;

-- --------------------------------------------------------

--
-- 資料表結構 `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(3) NOT NULL,
  `name` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `pw` varchar(20) NOT NULL,
  `gender` enum('F','M') NOT NULL,
  `phone` int(8) NOT NULL,
  `email` varchar(40) NOT NULL,
  `created_dt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `username`, `pw`, `gender`, `phone`, `email`, `created_dt`) VALUES
(1, 'admin', 'admin000', 'admin000', 'F', 35788357, 'admin000@mail.com', '2020-11-03 12:04:54'),
(2, 'admin', 'admin001', 'admin001', 'M', 83944839, 'admin001@gg.g', '2020-11-04 17:04:53'),
(3, 'admin', 'admin002', 'admin002', 'F', 83533333, 'admin002@gg.g', '2020-11-04 17:04:53');

-- --------------------------------------------------------

--
-- 資料表結構 `cases`
--

CREATE TABLE `cases` (
  `case_id` int(5) NOT NULL,
  `customer_id` int(5) NOT NULL,
  `provider_id` int(5) NOT NULL,
  `category` set('decoration','design') NOT NULL,
  `description` varchar(100) NOT NULL,
  `address` varchar(30) NOT NULL,
  `district` enum('Islands','Kwai Tsing','North','Sai Kung','Sha Tin','Tai Po','Tsuen Wan','Tuen Mun','Yuen Long','Kowloon City','Kwun Tong','Sham Shui Po','Wong Tai Sin','Yau Tsim Mong','Central and Western','Eastern','Southern','Wan Chai') NOT NULL,
  `area` int(5) NOT NULL,
  `price` int(10) NOT NULL,
  `status` enum('Verifying','Posted','Processing','Done','Declined','Cancelled') NOT NULL,
  `created_dt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `cases`
--

INSERT INTO `cases` (`case_id`, `customer_id`, `provider_id`, `category`, `description`, `address`, `district`, `area`, `price`, `status`, `created_dt`) VALUES
(1, 1, 0, 'decoration,design', 'ksfhgfskgfg', 'dsgdgdg', 'Yuen Long', 412, 0, 'Posted', '2020-10-21 10:58:07'),
(2, 2, 6, 'decoration', 'yogggg', 'sdsdgdsg', 'Central and Western', 734, 1419656, 'Done', '2020-10-21 14:42:42'),
(3, 3, 3, 'decoration', 'hdhgdgugu', 'dsres', 'Yau Tsim Mong', 2000, 319535, 'Done', '2020-10-30 11:37:32'),
(4, 1, 0, 'decoration', 'lsjghfgfg', 'sdgsdg', 'Eastern', 253, 0, 'Posted', '2020-10-30 12:44:05'),
(5, 16, 0, 'decoration,design', 'i want to blah', 'buildldldlding', 'Yau Tsim Mong', 5939, 0, 'Posted', '2020-11-04 17:23:50'),
(6, 10, 7, 'decoration,design', 'kdgjdgsd', 'janglngrg', 'Yau Tsim Mong', 2466, 99999, 'Processing', '2020-11-06 05:34:49'),
(7, 15, 5, 'decoration,design', 'adlnld', 'lnglkr', 'Tsuen Wan', 242, 2393253, 'Processing', '2020-11-06 05:34:49'),
(8, 2, 0, 'decoration', 'afsaf', 'afsasf', 'Islands', 2351, 0, 'Posted', '2020-11-05 22:16:14'),
(9, 2, 0, 'decoration,design', 'ljdgdklsgsdg', 'sjjdgksnkdgdg', 'Kwai Tsing', 83259, 0, 'Posted', '2020-11-06 05:24:10'),
(10, 4, 0, 'design', 'isahfsf', 'jkbdgs', 'North', 463, 0, 'Posted', '2020-11-06 05:24:54'),
(11, 19, 0, 'design', 'aljfslfjadfa', 'ksbdjhgsodf', 'Sai Kung', 49934, 0, 'Posted', '2020-11-06 05:24:54'),
(12, 24, 0, 'design', 'jnaddggd', 'jdskhkjsdg', 'Sha Tin', 245, 0, 'Posted', '2020-11-06 05:29:19'),
(13, 12, 0, 'decoration', 'eehkjsdfkjsdf', 'gwejrehr', 'Tai Po', 346, 0, 'Posted', '2020-11-06 05:29:19'),
(14, 9, 0, 'decoration,design', 'ehtnnfhg', 'efgekfk', 'Tsuen Wan', 357, 0, 'Posted', '2020-11-06 05:29:19'),
(15, 24, 0, 'design', 'kjdsbvkjdv', 'jdvwwrv', 'Tuen Mun', 64, 0, 'Posted', '2020-11-06 05:29:19'),
(16, 27, 0, 'design', 'ajdjkd', 'jvwrwgr', 'Yuen Long', 765, 0, 'Posted', '2020-11-06 05:29:19'),
(17, 6, 0, 'design', 'afnejewg', 'ljdnaljngjf', 'Kowloon City', 2644, 0, 'Posted', '2020-11-06 05:29:19'),
(18, 1, 1, 'decoration', 'wljngljnglwg', 'lnglwggnwlr', 'Kwun Tong', 2353, 3939, 'Processing', '2020-11-06 05:29:19'),
(19, 4, 0, 'decoration,design', 'enfjlwnglg', 'nrgjnjg', 'Sham Shui Po', 2335, 0, 'Posted', '2020-11-06 05:29:19'),
(20, 20, 0, 'decoration', 'wngwwrkjr', 'eljngljrgnr', 'Wong Tai Sin', 23525, 0, 'Posted', '2020-11-06 05:29:19'),
(21, 8, 0, 'design', 'rwjgnrlhnjr', 'elgnlrgnr', 'Yau Tsim Mong', 45435, 0, 'Posted', '2020-11-06 05:29:19'),
(22, 1, 1, 'design', 'rgnlerjhntl', 'lgnlrhnrhrwngelh', 'Central and Western', 7645, 4949, 'Done', '2020-11-06 05:29:19'),
(23, 2, 0, 'decoration', 'wjjgwlr', 'lekglrrhhr', 'Eastern', 34646, 0, 'Posted', '2020-11-06 05:29:19'),
(24, 3, 0, 'decoration,design', 'wnwrnhkwr', 'elgnegeg', 'Southern', 24646, 0, 'Posted', '2020-11-06 05:29:19'),
(25, 5, 0, 'decoration', 'ngwrnrwn', 'ejgkngk', 'Wan Chai', 2264, 0, 'Posted', '2020-11-06 05:29:19'),
(26, 2, 0, 'design', 'dfajkjdf', 'jdsngsj', 'Central and Western', 293, 0, 'Posted', '2020-11-07 19:12:23'),
(27, 24, 0, 'decoration', 'gkshs', 'fdjkgjsk', 'Southern', 2839, 0, 'Verifying', '2020-11-08 00:43:38'),
(28, 2, 0, 'design', 'lsdlgdg', 'ladnlgd', 'Central and Western', 4959, 0, 'Verifying', '2020-11-09 12:08:02'),
(29, 2, 0, 'design', 'ad,jfna,dg', 'admng,dsmg', 'Eastern', 382, 0, 'Verifying', '2020-11-10 11:14:38'),
(30, 2, 0, 'decoration,design', 'skdhgksdg', 'sdlgjlsf', 'Wan Chai', 3577, 0, 'Cancelled', '2020-11-10 12:48:50'),
(31, 2, 0, 'decoration,design', 'skdhgksdg', 'sdlgjlsf', 'Tuen Mun', 3577, 0, 'Posted', '2020-11-10 12:48:59'),
(32, 2, 0, 'decoration,design', 'skdhgksdg', 'sdlgjlsf', 'Southern', 3577, 0, 'Posted', '2020-11-10 12:48:59'),
(33, 2, 0, 'design', 'adljg', 'ldkjs', 'Tai Po', 346, 0, 'Verifying', '2020-11-10 12:54:05'),
(34, 2, 0, 'decoration', 'lksjdgsd', 'lkjdlkgjsfklg', 'Southern', 999, 0, 'Posted', '2020-11-10 15:19:50'),
(35, 2, 0, 'decoration', 'jdsllds', 'alfjlsf', 'North', 9990, 0, 'Declined', '2020-11-10 15:36:44'),
(36, 2, 0, 'decoration,design', 'sjdgsjg', 'ljhsdjg', 'Yau Tsim Mong', 999, 0, 'Posted', '2020-11-10 15:40:13'),
(37, 2, 0, 'decoration,design', 'lsdjgslg', 'lkjgdklsgk', 'Central and Western', 939, 0, 'Posted', '2020-11-10 15:42:17'),
(38, 2, 0, 'decoration,design', 'sljgnl', 'lsflg', 'Tsuen Wan', 9239, 0, 'Verifying', '2020-11-10 15:43:08'),
(39, 2, 0, 'design', 'ooooo', 'oooo', 'Kowloon City', 9, 0, 'Posted', '2020-11-10 15:48:10'),
(40, 1, 0, 'design', 'apply me', 'apply me', 'Eastern', 999, 0, 'Posted', '2020-11-10 15:50:19'),
(41, 1, 0, 'design', 'bbb', 'bbb', 'Yau Tsim Mong', 999, 0, 'Cancelled', '2020-11-10 15:51:16'),
(42, 1, 0, 'design', 'ppp', 'ppp', 'Wong Tai Sin', 9090, 0, 'Cancelled', '2020-11-10 15:52:13'),
(43, 1, 0, 'decoration', 'opo', 'opop', 'North', 88, 0, 'Cancelled', '2020-11-10 15:52:28'),
(44, 1, 0, 'decoration,design', 'yy', 'yyoo9', 'Wong Tai Sin', 880, 0, 'Cancelled', '2020-11-10 15:52:49'),
(45, 2, 0, 'design', 'sjldglsdg', 'ldsnglsdg', 'Sai Kung', 2934, 0, 'Declined', '2020-11-10 17:47:32'),
(46, 2, 0, 'decoration,design', 'sldkjgsl', 'kjsdgjs', 'Wan Chai', 919, 0, 'Posted', '2020-11-10 15:45:45'),
(47, 0, 0, 'decoration,design', 'jksdgksdg', 'sdjjsdlgsdg', 'Sha Tin', 999, 0, 'Cancelled', '2020-11-12 22:01:40'),
(48, 0, 0, 'decoration', 'hi', 'hi', 'Kowloon City', 199, 0, 'Cancelled', '2020-11-13 15:30:51'),
(49, 1, 1, 'design', 'akdljgsldkg', 'kdsgkldslkg', 'Islands', 235, 1, 'Done', '2020-11-13 16:22:16'),
(50, 1, 0, 'decoration', 'cancel me', 'cancel me', 'Sha Tin', 55555, 0, 'Cancelled', '2020-11-13 16:22:23'),
(51, 1, 0, 'decoration,design', '29045', 'lkdsjgl', 'Yuen Long', 9449, 0, 'Declined', '2020-11-13 16:22:35'),
(52, 1, 0, 'design', 'lsdjglsfjlg', 'ljglksjglks', 'Tsuen Wan', 3333, 0, 'Posted', '2020-11-13 16:22:42'),
(53, 1, 0, 'decoration', 'slfjsgkllg', 'lkfdlkglksdg', 'Kwai Tsing', 45345, 0, 'Declined', '2020-11-13 16:22:50'),
(54, 1, 0, 'design', 'new case', 'new case', 'Islands', 456, 0, 'Posted', '2020-11-16 18:14:14');

-- --------------------------------------------------------

--
-- 資料表結構 `cases_application`
--

CREATE TABLE `cases_application` (
  `casesApplication_id` int(10) NOT NULL,
  `case_id` int(5) NOT NULL,
  `customer_id` int(5) NOT NULL,
  `provider_id` int(5) NOT NULL,
  `description` varchar(100) NOT NULL,
  `estimated_price` int(10) NOT NULL,
  `admin_status` enum('Accepted','Declined','Verifying') NOT NULL,
  `status` enum('Accepted','Waiting','Declined','cCancelled','pCancelled') NOT NULL COMMENT 'Accepted: accept by customer\r\nWaiting: not yet decided by customer\r\nDeclined: declined by customer\r\ncCancelled: cancelled by customer\r\npCancelled: cancelled by provider',
  `apply_dt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `cases_application`
--

INSERT INTO `cases_application` (`casesApplication_id`, `case_id`, `customer_id`, `provider_id`, `description`, `estimated_price`, `admin_status`, `status`, `apply_dt`) VALUES
(1, 3, 3, 3, 'i am good, i think dadababa', 300000, 'Accepted', 'Accepted', '2020-11-05 21:02:22'),
(2, 2, 2, 6, 'me number 1', 1500000, 'Accepted', 'Accepted', '2020-11-05 21:02:22'),
(3, 1, 1, 1, 'cancel me', 5000000, 'Accepted', 'pCancelled', '2020-11-07 15:47:24'),
(4, 10, 4, 2, 'kashfasf', 2500000, 'Accepted', 'Accepted', '2020-11-07 15:47:24'),
(5, 6, 10, 7, 'ajkdkadjg', 2000000, 'Accepted', 'Accepted', '2020-11-07 16:25:53'),
(6, 8, 2, 5, 'akjfaf', 100000, 'Accepted', 'Waiting', '2020-11-07 16:40:16'),
(7, 18, 1, 0, 'provider will be deleted', 90000, 'Declined', 'pCancelled', '2020-11-07 16:40:16'),
(8, 4, 1, 4, 'laladada', 1000000, 'Declined', 'cCancelled', '2020-11-07 20:27:02'),
(9, 4, 1, 3, 'im perfect', 999, 'Declined', 'cCancelled', '2020-11-07 21:14:57'),
(10, 4, 1, 2, 'im good', 100000, 'Declined', 'cCancelled', '2020-11-07 21:15:35'),
(11, 16, 27, 27, 'propro', 10000, 'Accepted', 'Waiting', '2020-11-07 21:16:25'),
(12, 4, 1, 1, 'lrgnfjlg', 83573, 'Declined', 'cCancelled', '2020-11-10 11:16:35'),
(13, 5, 16, 5, 'jdfl', 2999, 'Accepted', 'Waiting', '2020-11-10 13:46:06'),
(14, 21, 8, 5, 'gjfdkgbkjr', 38888, 'Verifying', 'Waiting', '2020-11-10 15:57:43'),
(15, 16, 27, 5, 'sjgldjgsdl', 28992, 'Verifying', 'Waiting', '2020-11-10 15:58:42'),
(16, 20, 20, 5, 'dskfj', 28888, 'Verifying', 'Waiting', '2020-11-10 16:03:17'),
(17, 10, 4, 3, 'jfdkfjdk', 27777, 'Accepted', 'Waiting', '2020-11-10 16:06:03'),
(18, 15, 24, 5, 'lskjkldgsg', 22999, 'Verifying', 'pCancelled', '2020-11-10 16:16:39'),
(19, 10, 4, 5, 'iwoeoewi', 2982, 'Accepted', 'Waiting', '2020-11-10 16:18:23'),
(20, 17, 6, 1, 'akjfhkaf', 292934, 'Accepted', 'Waiting', '2020-11-10 16:26:46'),
(21, 24, 3, 1, 'sdjg', 2929, 'Verifying', 'Waiting', '2020-11-10 17:46:56'),
(22, 8, 2, 2, 'ksjdgksdg', 293893, 'Accepted', 'Waiting', '2020-11-10 18:12:03'),
(23, 8, 2, 1, 'adjnlgdsg', 27552, 'Accepted', 'Waiting', '2020-11-10 18:12:13'),
(24, 8, 2, 3, 'kfjshdje', 289525, 'Accepted', 'Waiting', '2020-11-10 18:12:20'),
(25, 8, 2, 4, 'bibi', 909090, 'Verifying', 'Waiting', '2020-11-10 18:14:14'),
(26, 30, 2, 3, 'lsdgjsdghjlsdngjl', 28929, 'Accepted', 'cCancelled', '2020-11-10 18:45:07'),
(27, 30, 2, 2, 'sdjgsjldg', 293, 'Accepted', 'cCancelled', '2020-11-10 18:45:15'),
(28, 32, 2, 1, 'sldjgsjldg39', 29829, '', 'pCancelled', '2020-11-10 18:45:23'),
(29, 31, 2, 2, 'sdjgldsjglsdg', 929292, 'Accepted', 'Waiting', '2020-11-10 18:45:30'),
(30, 31, 2, 1, 'sdjgsdgsgdl', 28929, 'Accepted', 'pCancelled', '2020-11-10 18:45:38'),
(31, 32, 2, 2, 'dljsfjlsdgjlsd2000', 20000, 'Accepted', 'Waiting', '2020-11-10 18:45:47'),
(32, 32, 2, 3, 'sdjgsjdgs200200', 100000, 'Accepted', 'Waiting', '2020-11-10 18:45:57'),
(33, 30, 2, 5, 'dksjgksjgdgs', 202000, 'Accepted', 'cCancelled', '2020-11-10 18:46:04'),
(34, 44, 0, 20, 'dkjsnfdkf', 191919, 'Declined', 'cCancelled', '2020-11-11 21:06:24'),
(35, 1, 1, 23, 'kjsddsgj', 2032, 'Accepted', 'Waiting', '2020-11-12 22:21:54'),
(36, 13, 12, 5, 'testing', 199, 'Declined', 'Waiting', '2020-11-13 15:34:54'),
(37, 12, 24, 1, 'testingagain', 1919, 'Verifying', 'Waiting', '2020-11-13 15:37:51'),
(38, 11, 19, 1, 'testing3gain', 19439, 'Verifying', 'pCancelled', '2020-11-13 15:39:25'),
(39, 19, 4, 1, 'testing4gain', 39311, 'Verifying', 'Waiting', '2020-11-13 15:40:40'),
(40, 22, 1, 1, 'lsdkgjlsdg', 0, 'Accepted', 'Accepted', '2020-11-13 16:36:22'),
(41, 18, 1, 1, 'accept me', 3939, 'Accepted', 'Accepted', '2020-11-13 16:37:49'),
(42, 46, 2, 1, 'gfl', 39, 'Verifying', 'Waiting', '2020-11-13 16:41:21'),
(43, 36, 2, 1, 'pppppppp', 333333333, 'Verifying', 'Waiting', '2020-11-13 16:43:18'),
(44, 14, 9, 1, 'pqqp', 2020, 'Verifying', 'Waiting', '2020-11-13 16:53:15'),
(45, 9, 2, 1, 'dskl', 39, 'Verifying', 'Waiting', '2020-11-13 16:53:43'),
(46, 53, 1, 3, 'ladjfldgk', 700, 'Accepted', 'Declined', '2020-11-13 18:29:36'),
(47, 15, 24, 3, 'dkdk', 3030, 'Verifying', 'Waiting', '2020-11-14 12:19:56'),
(48, 12, 24, 4, 'adklfjdsg', 22000, 'Verifying', 'Waiting', '2020-11-14 16:40:30'),
(49, 18, 1, 4, 'isldjflds', 100000, 'Accepted', 'Declined', '2020-11-14 16:40:53'),
(50, 20, 20, 4, 'kkdlflskdfl', 100000, 'Verifying', 'Waiting', '2020-11-14 16:41:08'),
(51, 4, 1, 5, 'sngnsdgsdng', 100000, 'Accepted', 'Waiting', '2020-11-14 16:41:26'),
(52, 12, 24, 5, 'lsdjlgjdsljgjdskg', 4000, 'Verifying', 'Waiting', '2020-11-14 16:41:34'),
(53, 18, 1, 5, 'sdjhdsgsdgll', 300000, 'Accepted', 'Declined', '2020-11-14 16:41:45'),
(54, 1, 1, 3, 'skskkssk', 1010101, 'Accepted', 'Waiting', '2020-11-14 17:33:07'),
(55, 1, 1, 4, 'qpqppqp', 10000, 'Accepted', 'Waiting', '2020-11-14 17:33:45'),
(56, 1, 1, 5, 'qppppp', 1000000, 'Accepted', 'Waiting', '2020-11-14 17:34:09'),
(57, 1, 1, 6, 'yes', 99999, 'Accepted', 'Waiting', '2020-11-14 17:34:30'),
(58, 53, 1, 1, 'pppppppppp', 10000000, 'Accepted', 'Accepted', '2020-11-14 22:17:31'),
(59, 53, 1, 4, 'dpdpdppd', 900000, 'Accepted', 'Declined', '2020-11-14 22:20:18'),
(60, 52, 0, 1, 'customer will be deleted', 200000, 'Declined', 'cCancelled', '2020-11-14 22:34:54'),
(61, 56, 3, 1, 'dodododod', 30000, 'Accepted', 'Waiting', '2020-11-14 22:47:53'),
(62, 50, 1, 1, 'this case will be cancelled', 100000, 'Accepted', 'cCancelled', '2020-11-14 23:30:14'),
(63, 40, 1, 1, 'new case', 12345, 'Accepted', 'Waiting', '2020-11-16 18:24:39');

-- --------------------------------------------------------

--
-- 資料表結構 `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(5) NOT NULL,
  `name` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `pw` varchar(20) NOT NULL,
  `gender` enum('F','M') NOT NULL,
  `phone` int(8) NOT NULL,
  `email` varchar(40) NOT NULL,
  `address` varchar(50) NOT NULL,
  `created_dt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `customer`
--

INSERT INTO `customer` (`customer_id`, `name`, `username`, `pw`, `gender`, `phone`, `email`, `address`, `created_dt`) VALUES
(1, 'chiu mimii', 'customer', 'customer', 'M', 11111111, 'abc@umail.com', 'abc building 100/F Flat Z', '2020-10-21 00:00:00'),
(2, 'jayden hui', 'aaaaaaaa', 'aaaaaaaa', 'M', 77777777, 'jaydenhui@gmail.com', 'testing', '2020-10-28 00:00:00'),
(3, 'lam mimi', 'lammimi', 'fdksjlfjk', 'F', 33333333, 'lammimi@email.com', 'mimi building', '2020-10-30 00:00:00'),
(4, 'lau mimi', 'laumimi', 'ksjdfkdf', 'F', 22222222, 'laumimi@imail.com', 'laumimi building', '2020-10-30 00:00:00'),
(5, 'liu mimi', 'liumimi', 'kffak333333', 'M', 44444444, 'liumimi@qmail.com', 'liumimi building', '2020-10-30 00:00:00'),
(6, 'pui mimi', 'puimimi', 'afkely123', 'M', 55555555, 'puimimi@omail.com', 'puimimi building', '2020-10-30 00:00:00'),
(7, 'bui mimi', 'buimimi', 'buimimimi', 'F', 87654321, 'buimimi@yo.com', 'buimimi building', '2020-11-02 16:30:23'),
(8, 'oo mimi', 'fakfadjk', 'jdgdhkgdskh', 'M', 25936252, 'jsghhgrk@gshd.jsg', 'hskgdhsdgk', '2020-11-03 17:27:15'),
(9, 'dfdf mimi', 'shdgkgadg', 'kdajghkr', 'M', 29745445, 'dsjggeeg@gshd.jsg', 'kadjghr', '2020-11-03 17:27:20'),
(10, 'fufu mimi', 'aejhfjg', 'aeghkdeeg', 'F', 13874606, 'krgh@ksgjrg.egh', 'ldsjghrgrg', '2020-11-03 17:33:39'),
(11, 'chiu mimi', 'srjghrjgr', 'grgjrkgadf', 'M', 91935359, 'krjghrg@jjhdg.eghe', 'ejhege', '2020-11-03 17:36:28'),
(12, 'dfkdkfndf', 'rgjrhgjrg', 'egjegjee', 'M', 10840933, 'djfe@jeg.cmk', 'dfjef', '2020-11-03 17:54:00'),
(13, 'chiuff', 'ehfeug', 'djvhkjdgn', 'F', 29486043, 'djjghdg@rg.rg', '', '2020-11-04 15:33:19'),
(14, 'chiu oo', 'lrgjhrg', 'wlrghgeeg', 'M', 85932339, 'jgr@gj.f', 'wjeglhwg', '2020-11-04 15:55:35'),
(15, 'chiu bili', 'dajhdg', 'dguhgrgf', 'M', 83153555, 'djvhdv@g.g', 'buildingd', '2020-11-04 15:56:08'),
(16, 'chiu pipi', 'adjkhdg', 'aekjdgrg', 'M', 28974544, 'rjghg@rh.ge', 'ekhg', '2020-11-04 16:08:17'),
(17, 'mimio', 'adljfhdg', 'adljghadlg', 'M', 29744499, 'adjghdg@ef.fe', 'adkjghdg', '2020-11-04 16:09:25'),
(18, 'alm didi', 'efefefef', 'efefefefef', 'M', 92387535, 'djfhdf@rg.gr', '', '2020-11-04 16:14:14'),
(19, 'pui oep', 'adjfkhdf', 'efhefefef', 'M', 28937535, 'dkjfhd@g.gr', 'adljdlgg', '2020-11-04 16:15:09'),
(20, 'chiu mimi', 'mimimimim', 'mimimimimi', 'M', 83275922, 'adkjhd@fe.f', '', '2020-11-04 16:16:45'),
(21, 'chiu kjkj', 'adjfhdg', 'djkghdgdg', 'F', 47545464, 'dlkkjgdg@fg.gf', 'dgdgsg', '2020-11-04 16:22:30'),
(22, 'pinky', 'sdglhdg', 'dsljghdgdg', 'F', 24857923, 'dlgh@f.fe', 'aejkhdg', '2020-11-04 16:23:50'),
(23, 'rringer', 'hihiihihih', 'hihihihihiih', 'F', 24578495, 'djhdg@f.ef', 'hihihihi building', '2020-11-04 16:31:22'),
(24, 'chiu mimi', 'ldhglegge', 'lheldgdgdg', 'F', 92857924, 'djghdlg@ge.g', 'adljgdg', '2020-11-04 16:32:10'),
(25, 'chiu mimi', 'lsdhldg', 'dlshgldgdg', 'M', 98434969, 'dsljhgd@g.ggg', 'ddfdfdfdffd', '2020-11-04 16:45:40'),
(26, 'chiu mimi', 'dljhgldg', 'dlghldgg', 'M', 48545459, 'dakjghdkg@g.g', '', '2020-11-04 16:46:48'),
(27, 'afsfas', 'asfafsasff', 'afsasfasf', 'F', 64646644, 'elg@g.g', 'gg', '2020-11-07 01:00:13'),
(28, 'twenty nine', 'adhhdhd', 'fhfhfhfhfhf', 'F', 54757575, 'fsgfh@g.g', '', '2020-11-07 01:15:24'),
(29, 'thirty', 'adhhdhd', 'fhfhfhfhfhf', 'F', 54757575, 'fsgfh@g.g', '', '2020-11-07 01:15:24'),
(30, 'thirty one', 'jdgjdjdjdk', 'kdhgkhuwifhf', 'F', 35235856, 'ewgkdg@g.g', '', '2020-11-07 01:28:46'),
(31, 'thirty two', 'bjbjbkjbgj', 'kjbbkjbkjbkj', 'F', 76775777, 'gfhyt@g.g', '', '2020-11-07 01:40:38'),
(32, 'thirty three', 'lkdsklgjskldg', 'kljskdlgjksd', 'F', 29292900, 'lsjdhgldsg@g.g', 'llsdgkls', '2020-11-11 16:23:08'),
(33, 'thirty four', 'thirtyfour', 'thirtyfour', 'F', 93939393, 'thirtyfour@g.g', 'ggg', '2020-11-14 18:46:47'),
(34, 'thirty five', 'thirtyfive', 'thirtyfive', 'F', 39393939, 'thirtyfive@gggg.g', 'dddd', '2020-11-14 18:47:59'),
(35, 'new customer', 'newcustomer', 'newcustomer', 'F', 34593485, 'new@g.g', '', '2020-11-16 18:10:36');

-- --------------------------------------------------------

--
-- 資料表結構 `provider`
--

CREATE TABLE `provider` (
  `provider_id` int(5) NOT NULL,
  `name` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `pw` varchar(20) NOT NULL,
  `introduction` varchar(100) NOT NULL,
  `gender` enum('F','M') NOT NULL,
  `phone` int(8) NOT NULL,
  `email` varchar(40) NOT NULL,
  `company_name` varchar(30) NOT NULL,
  `company_position` varchar(20) NOT NULL,
  `company_address` varchar(50) NOT NULL,
  `status` enum('Verified','Verifying','Declined') NOT NULL,
  `created_dt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `provider`
--

INSERT INTO `provider` (`provider_id`, `name`, `username`, `pw`, `introduction`, `gender`, `phone`, `email`, `company_name`, `company_position`, `company_address`, `status`, `created_dt`) VALUES
(1, 'real provider', 'provider', 'provider', 'i am good', 'M', 12312312, 'provider@gmail.com', '', '', '', 'Verified', '2020-11-02 19:04:59'),
(2, 'provider one', 'provider002', 'provider002', 'i am goodd', 'F', 31803582, 'provider001@g.cc', 'provider001 company ltd.', 'CEO', 'provider001 building', 'Verified', '2020-11-04 15:16:38'),
(3, 'provider', 'provider003', 'provider003', 'wonderful', 'M', 9148434, 'provider002@g.c', 'provider002 company', 'CEO', 'provider002 building', 'Verified', '2020-11-04 15:22:47'),
(4, 'provider', 'provider004', 'provider004', '', 'M', 9138533, 'provider003@g.g', '', '', '', 'Verified', '2020-11-04 15:40:32'),
(5, 'provider', 'provider005', 'provider005', '', 'F', 38295935, 'provider004@g.g', '', '', '', 'Verified', '2020-11-04 16:47:20'),
(6, 'provider', 'provider006', 'provider006', '', 'M', 23953333, 'provider005@g.g', '', '', '', 'Verified', '2020-11-04 16:57:14'),
(7, 'provider', 'provider007', 'provider007', '', 'F', 39355859, 'provider006@g.g', 'provider006 company', 'COO', 'provider006 building', 'Verified', '2020-11-04 16:58:29'),
(8, 'bling bling', 'provider008', 'provider008', 'superman', 'F', 23958735, 'provider007@gg.g', 'provider006 com', 'constructer', 'provider006 street', 'Verified', '2020-11-05 22:19:06'),
(9, 'providerrrr', 'provider009', 'provider009', 'pay me', 'M', 82353599, 'provider008@g.g', '', '', '', 'Verified', '2020-11-05 22:26:16'),
(10, 'provideererer', 'provider010', 'provider010', 'superwoman', 'F', 48584548, 'provider009@g.g', '', '', '', 'Verified', '2020-11-05 22:26:16'),
(11, 'notgood', 'notgoodd', 'notgoodd', 'wrhrhdddd', 'M', 46464646, 'kjghkjg@g.g', 'rjhgrg', 'wrgrg', 'wrgrg', 'Verified', '2020-11-05 22:27:43'),
(12, 'kjwgkjrg', 'rgrhhrgrg', 'rhrhrhrh', 'afefegdd', 'M', 23555777, 'egegeg@g.g', '', '', '', 'Verified', '2020-11-05 22:27:43'),
(13, 'verify me pls', 'verifyme', 'verifyme', 'yeah', 'F', 29296767, 'jkdhkjgdg@g.g', 'ekwhfkeg', 'rgrg', 'rwrwrh', 'Verifying', '2020-11-05 22:29:38'),
(14, 'wkjwgkeg', 'eqhkwghrr', 'wkjghkjwgr', 'gg', 'M', 29293877, 'eneg@g.g', '', '', '', 'Verifying', '2020-11-05 22:29:38'),
(15, 'kjegkjegk', 'hgfkgfkgfkgkr', 'ekjhksaabddg', 'kegkegddd', 'F', 48566644, 'kjg@g.g', 'ewgeg', 'egeg', 'gege', 'Verifying', '2020-11-05 22:30:44'),
(16, 'wekhgkw', 'ejghkegegell', 'egjhlglefee', 'ejhrkgrd', 'M', 28285656, 'rjhr@g.g', '', '', '', 'Verifying', '2020-11-05 22:30:44'),
(17, 'i was 18', 'jldgjldnsldg', 'wehgwegge', 'dkjskdgd', 'M', 98529299, 'ljgjlg@g.g', '', '', '', 'Verifying', '2020-11-07 01:48:36'),
(18, 'i was 19', 'ldglrgrff', 'kejhgkeg', 'goodd', 'F', 88448855, 'rkjgrg@gg.g', 'company yo', 'yoyo', 'yo', 'Verifying', '2020-11-08 20:00:35'),
(19, 'i was 20', 'bbbbbbbb', 'bbbbbbbb', 'spiderman', 'F', 84949944, 'kdjb@g,g', 'oooo', 'oooo', 'oooo', 'Verified', '2020-11-08 20:00:35'),
(20, 'i was 21', 'eglkemgklemk', 'dgdmsngsd', 'sdgjdddd', 'M', 29292929, 'wrg@g.g', '', '', '', 'Verifying', '2020-11-09 12:50:40'),
(21, 'i was 22', 'grkjgshk', 'rkgjhskfjg', 'gkajdhgkad', 'F', 32952295, 'sdjgl78@g.g', 'sdhg', 'lgj', 'rlkjlr', 'Verified', '2020-11-09 13:13:15'),
(22, 'i was 23', 'ljsldjlsgkj', 'lkjdksgjlksdjg', 'ksjdgkl', 'M', 22884583, 'skjdg@gg.g', 'sdjgh', 'jhssdjgh', 'jdghkjg', 'Verified', '2020-11-12 00:38:03'),
(23, 'new provider', 'newprovider', 'newprovider', '', 'M', 54352212, 'provider@umail.com', 'ABC', 'CEO', 'ABC road', 'Verified', '2020-11-16 18:19:33');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- 資料表索引 `cases`
--
ALTER TABLE `cases`
  ADD PRIMARY KEY (`case_id`);

--
-- 資料表索引 `cases_application`
--
ALTER TABLE `cases_application`
  ADD PRIMARY KEY (`casesApplication_id`);

--
-- 資料表索引 `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- 資料表索引 `provider`
--
ALTER TABLE `provider`
  ADD PRIMARY KEY (`provider_id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `cases`
--
ALTER TABLE `cases`
  MODIFY `case_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `cases_application`
--
ALTER TABLE `cases_application`
  MODIFY `casesApplication_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `provider`
--
ALTER TABLE `provider`
  MODIFY `provider_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
