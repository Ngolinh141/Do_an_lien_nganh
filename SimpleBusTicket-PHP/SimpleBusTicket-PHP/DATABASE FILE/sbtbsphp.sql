-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2024 at 07:33 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sbtbsphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `alogin`
--

CREATE TABLE `alogin` (
  `id` int(11) NOT NULL,
  `email` tinytext NOT NULL,
  `password` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `alogin`
--

INSERT INTO `alogin` (`id`, `email`, `password`) VALUES
(1, 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(100) NOT NULL,
  `booking_id` varchar(255) NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `route_id` varchar(255) NOT NULL,
  `customer_route` varchar(200) NOT NULL,
  `booked_amount` int(100) NOT NULL,
  `booked_seat` varchar(100) NOT NULL,
  `booking_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `booking_id`, `customer_id`, `route_id`, `customer_route`, `booked_amount`, `booked_seat`, `booking_created`) VALUES
(60, 'TBZJ360', 'CUST-2114034', 'RT-1908653', 'CITY1 &rarr; CITY2', 100, '3', '2021-10-16 22:15:13'),
(61, 'QK0MT61', 'CUST-2017936', 'RT-9941455', 'EDROISCHESTER &rarr; BRUGOW', 110, '15', '2021-10-17 22:36:10'),
(62, 'A8L5662', 'CUST-5585037', 'RT-3835554', 'ZEKA &rarr; ZREGOW', 70, '2', '2021-10-18 00:08:51'),
(63, 'QDNGC63', 'CUST-8996235', 'RT-3835554', 'ZEKA &rarr; ZREGOW', 70, '15', '2021-10-18 09:31:30'),
(64, 'X34RW64', 'CUST-9474738', 'RT-3835554', 'ZEKA &rarr; ZREGOW', 70, '6', '2021-10-18 09:32:21'),
(65, 'JKZVT65', 'CUST-4031139', 'RT-3835554', 'ZEKA &rarr; ZREGOW', 70, '18', '2021-10-18 09:33:36'),
(66, 'HIIAN66', 'CUST-9997540', 'RT-5887160', 'FLORIA &rarr; ARKBY', 118, '16', '2021-10-18 09:40:16'),
(67, 'QLOE167', 'CUST-9997540', 'RT-3835554', 'ZEKA &rarr; ZREGOW', 70, '12', '2021-10-18 09:41:01');

-- --------------------------------------------------------

--
-- Table structure for table `buses`
--

CREATE TABLE `buses` (
  `id` int(100) NOT NULL,
  `bus_no` varchar(255) NOT NULL,
  `bus_assigned` tinyint(1) NOT NULL DEFAULT 0,
  `bus_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buses`
--

INSERT INTO `buses` (`id`, `bus_no`, `bus_assigned`, `bus_created`) VALUES
(44, 'MVL1000', 0, '2021-10-16 22:05:16'),
(45, 'ABC0010', 1, '2021-10-17 22:32:46'),
(46, 'XYZ7890', 0, '2021-10-17 22:33:15'),
(47, 'BCC9999', 0, '2021-10-17 22:33:22'),
(48, 'RDH4255', 1, '2021-10-17 22:33:36'),
(49, 'TTH8888', 1, '2021-10-18 00:05:32'),
(50, 'MMM9969', 1, '2021-10-18 00:06:02'),
(51, 'LLL7699', 1, '2021-10-18 00:06:42'),
(52, 'SSX6633', 0, '2021-10-18 00:06:52'),
(53, 'NBS4455', 0, '2021-10-18 09:27:49'),
(54, 'CAS3300', 1, '2021-10-18 09:36:54');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(100) NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `customer_name` varchar(30) NOT NULL,
  `customer_phone` varchar(10) NOT NULL,
  `customer_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `customer_id`, `customer_name`, `customer_phone`, `customer_created`) VALUES
(34, 'CUST-2114034', 'Dfirst Dlast', '7002001200', '2021-10-16 22:09:12'),
(35, 'CUST-8996235', 'Willian Hobbs', '4012222222', '2021-10-17 22:30:23'),
(36, 'CUST-2017936', 'George Watts', '7011111111', '2021-10-17 22:30:53'),
(37, 'CUST-5585037', 'Bobb Horn', '1111111110', '2021-10-17 22:31:20'),
(38, 'CUST-9474738', 'Alan Moore', '7900000000', '2021-10-18 09:32:02'),
(39, 'CUST-4031139', 'Jamie Rhoades', '1003000010', '2021-10-18 09:33:08'),
(40, 'CUST-9997540', 'Demo Customer', '7777777700', '2021-10-18 09:39:10');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `birthday` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `nid` int(20) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `dept` varchar(100) NOT NULL,
  `degree` varchar(100) NOT NULL,
  `pic` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `firstName`, `lastName`, `email`, `password`, `birthday`, `gender`, `contact`, `nid`, `address`, `dept`, `degree`, `pic`) VALUES
(2, 'John', 'Smith', 'john@gmail.com', '1234', '2020-09-01', 'Male', '0999999999', 1, 'New York', 'IT', 'Waterboy', 'images/default.jpg'),
(6, 'test', 'test', 'test@gmail.com', '1234', '2020-09-06', 'Male', '09998383737', 4, 'test', 'test', 'test', 'images/d.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `employee_leave`
--

CREATE TABLE `employee_leave` (
  `id` int(11) DEFAULT NULL,
  `token` int(11) NOT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `reason` char(100) DEFAULT NULL,
  `status` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `employee_leave`
--

INSERT INTO `employee_leave` (`id`, `token`, `start`, `end`, `reason`, `status`) VALUES
(2, 1, '2020-09-03', '2020-09-05', 'COVID-19', 'Approved'),
(2, 3, '2020-09-10', '2020-09-12', 'May Lagnat', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `pid` int(11) NOT NULL,
  `eid` int(11) DEFAULT NULL,
  `pname` varchar(100) DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `subdate` date DEFAULT '0000-00-00',
  `mark` int(11) NOT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`pid`, `eid`, `pname`, `duedate`, `subdate`, `mark`, `status`) VALUES
(1, 2, 'Junkyard', '2020-09-26', '2020-09-04', 1, 'Submitted');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `eid` int(11) NOT NULL,
  `points` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`eid`, `points`) VALUES
(2, 0),
(6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `routes`
--

CREATE TABLE `routes` (
  `id` int(100) NOT NULL,
  `route_id` varchar(255) NOT NULL,
  `bus_no` varchar(155) NOT NULL,
  `route_cities` varchar(255) NOT NULL,
  `route_dep_date` date NOT NULL,
  `route_dep_time` time NOT NULL,
  `route_step_cost` int(100) NOT NULL,
  `route_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `routes`
--

INSERT INTO `routes` (`id`, `route_id`, `bus_no`, `route_cities`, `route_dep_date`, `route_dep_time`, `route_step_cost`, `route_created`) VALUES
(53, 'RT-1908653', 'MVL1000', 'CITY1,CITY2', '2021-10-17', '22:05:00', 100, '2021-10-16 22:05:42'),
(54, 'RT-3835554', 'MMM9969', 'ZEKA,ZREGOW', '2021-10-19', '23:13:00', 70, '2021-10-16 22:12:32'),
(55, 'RT-9941455', 'RDH4255', 'EDROISCHESTER,BRUGOW', '2021-10-18', '10:00:00', 110, '2021-10-17 22:34:47'),
(56, 'RT-9069556', 'XYZ7890', 'ANTALAND,ZREGOW', '2021-10-19', '11:40:00', 85, '2021-10-17 23:39:57'),
(57, 'RT-775557', 'ABC0010', 'ENCEFORD,VLIRGINIA', '2021-10-19', '13:30:00', 131, '2021-10-17 23:42:12'),
(58, 'RT-753558', 'TTH8888', 'ARKBY,VEIM', '2021-10-20', '12:04:00', 55, '2021-10-18 00:04:42'),
(59, 'RT-6028759', 'LLL7699', 'BELRITH,ARKBY', '2021-10-20', '13:50:00', 166, '2021-10-18 00:07:50'),
(60, 'RT-5887160', 'CAS3300', 'FLORIA,ARKBY', '2021-10-19', '10:30:00', 118, '2021-10-18 09:38:30');

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `id` int(11) NOT NULL,
  `base` int(11) NOT NULL,
  `bonus` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`id`, `base`, `bonus`, `total`) VALUES
(2, 500, 0, 500),
(6, 1000, 0, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `seats`
--

CREATE TABLE `seats` (
  `bus_no` varchar(155) NOT NULL,
  `seat_booked` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seats`
--

INSERT INTO `seats` (`bus_no`, `seat_booked`) VALUES
('ABC0010', NULL),
('BCC9999', NULL),
('CAS3300', '16'),
('LLL7699', NULL),
('MMM9969', '2,15,6,18,12'),
('MVL1000', '3'),
('NBS4455', NULL),
('RDH4255', '15'),
('SSX6633', NULL),
('TTH8888', NULL),
('XYZ7890', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_fullname` varchar(100) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_fullname`, `user_name`, `user_password`, `user_created`) VALUES
(1, 'Liam Moore', 'admin', '$2y$10$7rLSvRVyTQORapkDOqmkhetjF6H9lJHngr4hJMSM2lHObJbW5EQh6', '2021-06-02 13:55:21'),
(2, 'Test Admin', 'testadmin', '$2y$10$A2eGOu1K1TSBqMwjrEJZg.lgy.FmCUPl/l5ugcYOXv4qKWkFEwcqS', '2021-10-17 21:10:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alogin`
--
ALTER TABLE `alogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buses`
--
ALTER TABLE `buses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `employee_leave`
--
ALTER TABLE `employee_leave`
  ADD PRIMARY KEY (`token`),
  ADD KEY `employee_leave_ibfk_1` (`id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `project_ibfk_1` (`eid`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `routes`
--
ALTER TABLE `routes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seats`
--
ALTER TABLE `seats`
  ADD PRIMARY KEY (`bus_no`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alogin`
--
ALTER TABLE `alogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `buses`
--
ALTER TABLE `buses`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `employee_leave`
--
ALTER TABLE `employee_leave`
  MODIFY `token` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `routes`
--
ALTER TABLE `routes`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee_leave`
--
ALTER TABLE `employee_leave`
  ADD CONSTRAINT `employee_leave_ibfk_1` FOREIGN KEY (`id`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rank`
--
ALTER TABLE `rank`
  ADD CONSTRAINT `rank_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `salary`
--
ALTER TABLE `salary`
  ADD CONSTRAINT `salary_ibfk_1` FOREIGN KEY (`id`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
