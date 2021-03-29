-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2021-03-28 11:12:12
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
  `gender` enum('Male','Female') NOT NULL,
  `LoginName` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Contact` varchar(8) NOT NULL,
  `AC create_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `customer_login`
--

INSERT INTO `customer_login` (`customer_id`, `customer_name`, `gender`, `LoginName`, `Password`, `Contact`, `AC create_time`) VALUES
(1, 'Peter', 'Male', 'CS001', 'CS001', '57685875', '2021-03-26 17:36:05'),
(2, 'Mary', 'Female', 'CS002', 'CS002', '65757575', '2021-03-26 17:37:01');

-- --------------------------------------------------------

--
-- 資料表結構 `customer_order`
--

CREATE TABLE `customer_order` (
  `customer_id` int(11) NOT NULL,
  `item code` varchar(30) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `customer_order`
--

INSERT INTO `customer_order` (`customer_id`, `item code`, `quantity`) VALUES
(1, 'ear1', 2);

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
  ADD PRIMARY KEY (`customer_id`);

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
  MODIFY `customer_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
