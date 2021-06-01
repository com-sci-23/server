-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2021 at 09:03 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `swd_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `todolist_tb`
--

CREATE TABLE `todolist_tb` (
  `t_id` int(11) NOT NULL,
  `t_list` text NOT NULL,
  `t_datetime_mod` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `todolist_tb`
--

INSERT INTO `todolist_tb` (`t_id`, `t_list`, `t_datetime_mod`) VALUES
(1, 'มีนัดประชุม', '2021-06-01 04:25:19'),
(2, 'มีนัดทานอาหารตอนเที่ยง', '2021-05-31 16:00:00'),
(3, 'พรุ้งนี้มีนัดตอนเย็น', '2021-05-31 17:45:06'),
(13, 'งานด่วนตอนบ่าย', '2021-06-01 06:21:24'),
(14, 'ประชุมdev', '2021-06-01 06:25:00'),
(15, 'hi', '2021-06-01 06:32:53'),
(16, 'กินข้าวบ่ายนี้', '2021-06-01 06:51:01');

-- --------------------------------------------------------

--
-- Table structure for table `user_tb`
--

CREATE TABLE `user_tb` (
  `u_id` int(11) NOT NULL,
  `u_fname` text NOT NULL,
  `u_lname` text NOT NULL,
  `u_address` text NOT NULL,
  `u_urlpictrue` text NOT NULL,
  `u_email` text NOT NULL,
  `u_phone` text NOT NULL,
  `u_datetime_mod` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_tb`
--

INSERT INTO `user_tb` (`u_id`, `u_fname`, `u_lname`, `u_address`, `u_urlpictrue`, `u_email`, `u_phone`, `u_datetime_mod`) VALUES
(3, 'chaiwat', 'sasithonratsame', 'กรุงเทพมหานคร', '/swd/User/user307562.jpg', 'comsci@gmail.com', '0970450918', '2021-06-01 06:26:09'),
(4, 'ชัยวัฒน์', 'ศศิธรรัศมี', '118 เพชรเกษม 48', '/swd/User/user382558.jpg', 'comsci@sau.ac.th', '0970450918', '2021-06-01 06:27:48'),
(5, 'boy', 'comsci', '120 bkk', '/swd/User/user906798.jpg', 'cs@hotmail.com', '0891114446', '2021-06-01 06:31:04'),
(6, 'boycs', 'comsci', '117 bkk', '/swd/User/user826624.jpg', 'cs@hotmail.com', '0991113346', '2021-06-01 06:36:37'),
(7, 'comcsi', 'cs', '114 bkk', '/swd/User/user459956.jpg', 'cs@gmail.com', '0896668889', '2021-06-01 06:45:11'),
(8, 'cs', 'comsci', '116 bkk', '/swd/User/user184818.jpg', 'cs@cs.com', '0988886662', '2021-06-01 06:47:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `todolist_tb`
--
ALTER TABLE `todolist_tb`
  ADD PRIMARY KEY (`t_id`);

--
-- Indexes for table `user_tb`
--
ALTER TABLE `user_tb`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `todolist_tb`
--
ALTER TABLE `todolist_tb`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user_tb`
--
ALTER TABLE `user_tb`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
