-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2023 at 06:48 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `speed_delivery_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `area_id` int(11) NOT NULL,
  `area_name` varchar(255) NOT NULL,
  `is_deleted` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`area_id`, `area_name`, `is_deleted`) VALUES
(7, 'Kolkata', 0),
(22, 'Pune', 0),
(23, 'Banglore', 0),
(24, 'Mumbai', 0),
(25, 'Chennai', 0),
(26, 'Chandigarh', 0);

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branch_id` int(11) NOT NULL,
  `branch_name` varchar(255) NOT NULL,
  `is_deleted` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branch_id`, `branch_name`, `is_deleted`) VALUES
(6, 'Kolkata', 0),
(7, 'Chennai', 0),
(8, 'Pune', 0),
(9, 'Lucknow', 0),
(10, 'Banglore', 0),
(11, 'Chandigarh', 0);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `date_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `name`, `email`, `subject`, `message`, `date_updated`) VALUES
(16, 'Pathum Wijesekara', 'pathumwijesekara@gmail.com', 'Testing Purpose', 'Hi There!', '2022-11-28 10:54:08');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

-- Remove the ALTER TABLE statement
-- ALTER TABLE `customer` ADD PRIMARY KEY (`customer_id`);

-- Keep the PRIMARY KEY definition within the CREATE TABLE statement
CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `nic` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_deleted` int(11) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `name`, `email`, `phone`, `nic`, `address`, `gender`, `password`, `is_deleted`) VALUES
(1, 'Test User 1', 'testuser1@speeddelivery.com', '0700000000', '971212125V', 'No 232, Bridge Road, Kolkata, India', 1, 'testuser1', 0),
(2, 'Test User 2', 'testuser2@speeddelivery.com', '0701111111', '971212123V', 'No 384, Boring Road, Kolkata, India', 1, 'testuser2', 0);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `nic` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `gender` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_deleted` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `name`, `email`, `phone`, `nic`, `address`, `gender`, `password`, `is_deleted`, `branch_id`) VALUES
(1, 'Admin', 'admin', '', '', '', 0, '12345', 0, 0),
(12, 'EMP1', 'emp1@speeddelivery.com', '0770000000', '975001820V', 'No 200, Matara Road, Kolkata, India', 1, 'emp1', 0, 6),
(13, 'EMP2', 'emp2@speeddelivery.com', '0771111111', '977854562V', 'No 304, Matara Road, Kolkata, India', 1, 'emp2', 0, 9);

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `gallery_id` int(11) NOT NULL AUTO_INCREMENT,
  `gallery_image` varchar(255) NOT NULL,
  PRIMARY KEY (`gallery_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`gallery_id`, `gallery_image`) VALUES
(28, 'Gallery_01.jpg'),
(29, 'Gallery_02.jpg'),
(30, 'Gallery_03.jpg'),
(32, 'Gallery_05.jpg'),
(33, 'Gallery_06.jpg'),
(34, 'Gallery_04.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `price_table`
--

CREATE TABLE `price_table` (
  `price_id` int(11) NOT NULL AUTO_INCREMENT,
  `start_area` varchar(255) NOT NULL,
  `end_area` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `is_deleted` int(11) NOT NULL,
  `date_updated` datetime NOT NULL,
  PRIMARY KEY (`price_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `price_table`
--

INSERT INTO `price_table` (`price_id`, `start_area`, `end_area`, `price`, `is_deleted`, `date_updated`) VALUES
(8, '7', '22', 160, 0, '2022-12-04 12:16:56'),
(9, '7', '23', 150, 0, '2022-12-04 12:17:15'),
(10, '7', '24', 170, 0, '2022-12-04 12:18:42'),
(11, '7', '25', 100, 0, '2022-12-04 12:19:06'),
(12, '7', '26', 120, 0, '2022-12-04 12:20:42'),
(13, '22', '7', 160, 0, '2022-12-04 12:21:56'),
(14, '22', '23', 120, 0, '2022-12-04 12:22:15'),
(15, '22', '24', 50, 0, '2022-12-04 12:23:42'),
(16, '22', '25', 200, 0, '2022-12-04 12:24:06'),
(17, '22', '26', 170, 0, '2022-12-04 12:25:42'),
(18, '23', '7', 150, 0, '2022-12-04 12:26:56'),
(19, '23', '22', 120, 0, '2022-12-04 12:27:15'),
(20, '23', '24', 50, 0, '2022-12-04 12:28:42'),
(21, '23', '25', 200, 0, '2022-12-04 12:29:06'),
(22, '23', '26', 170, 0, '2022-12-04 12:30:42'),
(23, '24', '7', 170, 0, '2022-12-04 12:31:56'),
(24, '24', '22', 120, 0, '2022-12-04 12:32:15'),
(25, '24', '23', 50, 0, '2022-12-04 12:33:42'),
(26, '24', '25', 200, 0, '2022-12-04 12:34:06'),
(27, '24', '26', 170, 0, '2022-12-04 12:35:42'),
(28, '25', '7', 100, 0, '2022-12-04 12:36:56'),
(29, '25', '22', 120, 0, '2022-12-04 12:37:15'),
(30, '25', '23', 50, 0, '2022-12-04 12:38:42'),
(31, '25', '24', 200, 0, '2022-12-04 12:39:06'),
(32, '25', '26', 170, 0, '2022-12-04 12:40:42'),
(33, '26', '7', 120, 0, '2022-12-04 12:41:56'),
(34, '26', '22', 120, 0, '2022-12-04 12:42:15'),
(35, '26', '23', 50, 0, '2022-12-04 12:43:42'),
(36, '26', '24', 200, 0, '2022-12-04 12:44:06'),
(37, '26', '25', 170, 0, '2022-12-04 12:45:42');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `request_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `sender_phone` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `send_location` int(11) NOT NULL,
  `end_location` int(11) NOT NULL,
  `total_fee` int(11) NOT NULL,
  `res_phone` int(11) NOT NULL,
  `red_address` varchar(255) NOT NULL,
  `is_deleted` int(11) NOT NULL,
  `date_updated` datetime NOT NULL,
  `tracking_status` int(11) NOT NULL,
  `res_name` varchar(255) NOT NULL,
  PRIMARY KEY (`request_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`request_id`, `customer_id`, `sender_phone`, `weight`, `send_location`, `end_location`, `total_fee`, `res_phone`, `red_address`, `is_deleted`, `date_updated`, `tracking_status`, `res_name`) VALUES
(18, 12, 770000000, 1, 22, 7, 50, 771111111, 'Receiver 1, \r\nNo 235,\r\nGalle Road,\r\nMatara', 0, '2023-01-15 11:14:09', 1, 'Receiver 1');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `header_image` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `header_title` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `header_desc` varchar(1000) CHARACTER SET utf8mb4 NOT NULL,
  `about_title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `about_desc` varchar(1000) CHARACTER SET utf8mb4 NOT NULL,
  `company_phone` varchar(255) CHARACTER SET utf8 NOT NULL,
  `company_email` varchar(255) NOT NULL,
  `company_address` varchar(255) NOT NULL,
  `sub_image` varchar(255) NOT NULL,
  `about_image` varchar(255) NOT NULL,
  `link_facebook` varchar(255) NOT NULL,
  `link_twiiter` varchar(255) NOT NULL,
  `link_instragram` varchar(255) NOT NULL,
  `background_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`header_image`, `header_title`, `header_desc`, `about_title`, `about_desc`, `company_phone`, `company_email`, `company_address`, `sub_image`, `about_image`, `link_facebook`, `link_twiiter`, `link_instragram`, `background_image`) VALUES
('Header.jpg', 'Welcome to Speed Delivery', 'Your Premier Domestic Courier Service Provider', 'About Us', 'Speed Delivery is an Indian premier domestic courier service provider. With the strength of an experienced and talented team, Speed Delivery functions with the utmost confidence in the broadest coverage, security, and timely delivery of your important documents and packages. Speed Delivery also has a strong background in logistics management. As a result of the trust we have built with our corporate clients, Speed Delivery is now the official courier for a number of entities in India. Speed Delivery upholds high service standards and quality levels to ensure that your packages and documents are handled by professionals.', '+91-9504564860', 'ravish0709raj@gmail.com', 'No 224, Bridge Road, Kolkata, West Bengal, India', 'Sub_Header.jpg', 'About.jpg', 'https://www.facebook.com/', 'https://www.twitter.com/', 'https://www.instagram.com/', 'Background.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`area_id`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branch_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`gallery_id`);

--
-- Indexes for table `price_table`
--
ALTER TABLE `price_table`
  ADD PRIMARY KEY (`price_id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`request_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `area_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `branch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `gallery_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `price_table`
--
ALTER TABLE `price_table`
  MODIFY `price_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
