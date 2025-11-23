-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2022 at 07:11 PM
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
-- Database: `the food`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(1, 'Rafee', '821f3157e1a3456bfe1a000a1adf0862', 'rafee@gmail.com', '', '2022-09-05 11:28:56'),
(2, 'Sajol', 'd6502f070c7e50402b7ee7e690d7dbb9', 'habibunnabi234@gmail.com', '', '2022-09-05 11:33:30');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `username` varchar(60) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `phonenumber` int(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `description1` varchar(100) NOT NULL,
  `c_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int(222) NOT NULL,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(17, 6, 'Burger', 'xyz', '5.00', '6315c5700b5d9.jpg'),
(18, 5, 'Burger', 'so tasty ,spicy,sweet', '3.00', '6315c59d61f2a.png'),
(19, 7, 'Burger', 'so tasty ,spicy,sweet', '4.00', '6315c5be52bce.png'),
(20, 5, 'chiken', 'so tasty ,spicy', '3.00', '6315c60defd37.png'),
(21, 7, 'chiken', 'so tasty ,spicy,sweet', '4.00', '6315c62d59e71.png'),
(22, 7, 'chiken', 'so tasty ,spicy,sweet', '25.00', '6315c6451b963.jpg'),
(23, 7, 'Pizzas', 'so tasty ,spicy,sweet', '10.00', '6315c67f42ac2.png'),
(24, 7, 'Pizzas', 'so tasty ,spicy,sweet', '5.00', '6315c6b58b85e.png'),
(25, 7, 'Burger', 'so tasty ,spicy,sweet', '3.00', '6315c6fa2cba8.png'),
(26, 7, 'Burger', 'so tasty ,spicy,sweet', '3.00', '6315c728c4a83.png'),
(27, 5, 'chiken ugget', 'so tasty ,spicy,sweet', '7.00', '6315c74b6fb14.png'),
(28, 7, 'Burger', 'so tasty ,spicy,sweet', '3.00', '6315c7e702927.png'),
(29, 8, 'drinks', 'so tasty sweet', '1.00', '6315c819afe67.jpg'),
(30, 8, 'drinks', 'so tasty sweet', '3.00', '6315c836f29d7.jpg'),
(31, 8, 'cake', 'so tasty sweet', '4.00', '6315c85022309.jpg'),
(32, 8, 'cake', 'so tasty sweet', '25.00', '6315c87151c71.jpg'),
(33, 8, 'cake', 'so tasty sweet', '25.00', '6315c8858a6f2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(1, 2, 'in process', 'none', '2022-05-01 05:17:49'),
(2, 3, 'in process', 'none', '2022-05-27 11:01:30'),
(3, 2, 'closed', 'thank you for your order!', '2022-05-27 11:11:41'),
(4, 3, 'closed', 'none', '2022-05-27 11:42:35'),
(5, 4, 'in process', 'none', '2022-05-27 11:42:55'),
(6, 1, 'rejected', 'none', '2022-05-27 11:43:26'),
(7, 7, 'in process', 'none', '2022-05-27 13:03:24'),
(8, 8, 'in process', 'none', '2022-05-27 13:03:38'),
(9, 9, 'rejected', 'thank you', '2022-05-27 13:03:53'),
(10, 7, 'closed', 'thank you for your ordering with us', '2022-05-27 13:04:33'),
(11, 8, 'closed', 'thanks ', '2022-05-27 13:05:24'),
(12, 5, 'closed', 'none', '2022-05-27 13:18:03');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int(222) NOT NULL,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(5, 5, 'CP FIVE STAR', 'ghhhhhh@gmail.com', '55555', 'xyz', '10am', '12am', '24hr-x7', 'DHAKA', '6315c1b6e7a83.png', '2022-09-05 09:30:30'),
(6, 5, 'tasty treat', 'sajolhabibunnabi87@gmail.com', '55555', 'xyz', '6am', '12am', 'Mon-Thu', 'dhaka', '6315c49ae4e7f.png', '2022-09-05 09:42:50'),
(7, 5, 'Burger king', 'sajolhabibunnabi87@gmail.com', '5555500', 'http://www.burgerking.com', '11am', '6pm', '24hr-x7', ' Dhaka ', '6315f2d3257bf.png', '2022-09-05 13:00:03'),
(8, 6, 'COOPERS', '190204092@aust.edu', '0999999999999999', 'xyz', '6am', '12am', '24hr-x7', 'dhaka', '6315c506b1c6d.jpg', '2022-09-05 09:44:38');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(222) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(5, 'FAST FOOD', '2022-09-05 09:29:14'),
(6, 'BAKERY', '2022-09-05 09:29:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(222) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(7, ' sajol', 'habib', 'nabi', 'sajolhabibunnabi87@gmail.com', '099999999999999', 'e10adc3949ba59abbe56e057f20f883e', 'dhala', 1, '2022-09-05 09:36:57'),
(8, 'habib', 'habib', 'nabi', '190204092@aust.edu', '0999999999999999', 'e10adc3949ba59abbe56e057f20f883e', 'khulna', 1, '2022-09-05 09:38:54'),
(9, 'Rafee', 'Munawar', 'Rafee', 'mrrafee999@gmail.com', '01934897915', '821f3157e1a3456bfe1a000a1adf0862', '275-Uttar Jurain , Mercy General Hospital ,Dhaka-1204', 1, '2022-09-05 11:28:06'),
(10, 'Sajol', 'Habibunnabi ', 'Sajol', 'habibunnabi234@gmail.com', '01715081956', 'd6502f070c7e50402b7ee7e690d7dbb9', '230-Dhanmondi,Dhaka-1210', 1, '2022-09-05 11:32:09');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(10, 8, 'chiken', 1, '3.00', NULL, '2022-09-05 10:05:53'),
(11, 8, 'Pizzas', 1, '5.00', NULL, '2022-09-05 10:05:53'),
(12, 9, 'chiken', 1, '3.00', NULL, '2022-09-05 12:44:08'),
(13, 9, 'Burger', 1, '3.00', NULL, '2022-09-05 12:46:37'),
(14, 9, 'Burger', 1, '3.00', NULL, '2022-09-05 13:28:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
