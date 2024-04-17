-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2024 at 12:54 PM
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
-- Database: `lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `bname` varchar(100) NOT NULL,
  `aname` varchar(100) NOT NULL,
  `price` varchar(30) NOT NULL,
  `isbn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bname`, `aname`, `price`, `isbn`) VALUES
('C', 'Balguruswamy', '250', 1);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `userid` varchar(10) NOT NULL,
  `feedback` varchar(2000) NOT NULL,
  `date` varchar(50) NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`userid`, `feedback`, `date`, `time`) VALUES
('1234', 'hahaha', '2020-07-12', '13:19:17'),
('1001', 'Awesome application..it helps me a lot...Thank you team', '2020-07-17', '20:45:56'),
('1234', 'Awesome application..it helps me a lot...Thank you team', '2020-07-19', '21:32:59'),
('1234', 'Awesome application..it helps me a lot...Thank you team.................Amazing.This is my feedback..thanku', '2020-07-19', '21:44:52'),
('1234', 'ok its good', '2020-07-20', '10:03:44'),
('1234', 'thank you guys', '2020-07-20', '10:04:16');

-- --------------------------------------------------------

--
-- Table structure for table `issuebook`
--

CREATE TABLE `issuebook` (
  `id` int(11) NOT NULL,
  `isbn` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `issuebook`
--

INSERT INTO `issuebook` (`id`, `isbn`, `userid`) VALUES
(1, 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phno` varchar(20) NOT NULL,
  `area` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `name`, `email`, `phno`, `area`, `password`) VALUES
(7, 'Ram', 'rampraveenreddy4@gmail.com', '9550382156', 'NAD', '0007'),
(1234, 'Praveen', '17131a05f1@gvpce.ac.in', '9550382156', 'East Godavari', '1234'),
(1924, 'nuli sashank', '17131a05e8@gvpce.ac.in', '9550382156', 'East Godavari', '1924'),
(1999, 'Konda Reddy', '17131a05f0@gvpce.ac.in', '9550382156', 'NAD', '1999'),
(2000, 'Hema Keerthana', '17131a05d5@gvpce.ac.in', '7013323386', 'Vizag', '2000'),
(5678, 'Nani', 'padalarampraveenreddy.si20@iacademia.in', '8888888', 'ggggg', '5678'),
(9090, 'Sharath', '17131a05f3@gvpce.ac.in', '7013323386', 'NAD', '9090'),
(9999, 'Nehal Ahmad', 'rampraveenreddy04@gmail.com', '9550382156', 'Vizag', '9999');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD UNIQUE KEY `ind` (`isbn`);

--
-- Indexes for table `issuebook`
--
ALTER TABLE `issuebook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `issuebook`
--
ALTER TABLE `issuebook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17132;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
