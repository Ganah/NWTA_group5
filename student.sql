-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2022 at 06:52 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(20) NOT NULL,
  `course` varchar(50) NOT NULL,
  `level` varchar(50) NOT NULL,
  `section` varchar(50) NOT NULL,
  `session` varchar(50) NOT NULL,
  `firstC` varchar(50) NOT NULL,
  `secondC` varchar(50) NOT NULL,
  `thirdC` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `course`, `level`, `section`, `session`, `firstC`, `secondC`, `thirdC`) VALUES
(5, 'CompSci', '100', 'A', 'Regular', 'Prog', 'Data', 'Math'),
(6, 'Network', '100', 'B', 'Regular', 'Maths', 'Prog', 'English');

-- --------------------------------------------------------

--
-- Table structure for table `hostel`
--

CREATE TABLE `hostel` (
  `id` int(5) NOT NULL,
  `hostel` varchar(10) NOT NULL,
  `location` varchar(10) NOT NULL,
  `students` int(10) NOT NULL,
  `manager` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hostel`
--

INSERT INTO `hostel` (`id`, `hostel`, `location`, `students`, `manager`) VALUES
(5, 'Getfund', 'KTU', 4, 'Efo'),
(6, 'Getfund', 'Campus', 4, 'Efo');

-- --------------------------------------------------------

--
-- Table structure for table `personal`
--

CREATE TABLE `personal` (
  `id` int(10) NOT NULL,
  `personal` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `address` varchar(20) NOT NULL,
  `hometown` varchar(20) NOT NULL,
  `fatherfirstname` varchar(20) NOT NULL,
  `fatherlastname` varchar(20) NOT NULL,
  `fathercontact` varchar(20) NOT NULL,
  `motherfirstname` varchar(20) NOT NULL,
  `motherlastname` varchar(20) NOT NULL,
  `mothercontact` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personal`
--

INSERT INTO `personal` (`id`, `personal`, `email`, `address`, `hometown`, `fatherfirstname`, `fatherlastname`, `fathercontact`, `motherfirstname`, `motherlastname`, `mothercontact`) VALUES
(4, '024', 'b@gmail.com', 'Accra', 'Kof', 'Big', 'Boss', '02456', 'Madam', 'Oga', '0563'),
(5, '02400000', 'my@gmail.com', 'Tema', 'Aburi', 'Kwesi', 'Kingson', '0550000', 'Ama', 'Kingson', '039999'),
(6, '02400000', 'my@gmail.com', 'Tema', 'Aburi', 'Kwesi', 'Kingson', '0550000', 'Ama', 'Kingson', '039999');

-- --------------------------------------------------------

--
-- Table structure for table `skill`
--

CREATE TABLE `skill` (
  `id` int(11) NOT NULL,
  `firstskill` varchar(20) NOT NULL,
  `secondskill` varchar(20) NOT NULL,
  `thirdskill` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skill`
--

INSERT INTO `skill` (`id`, `firstskill`, `secondskill`, `thirdskill`) VALUES
(4, 'Football', 'Sing', 'Read'),
(5, '', '', ''),
(6, 'Football', 'Sing', 'Drum');

-- --------------------------------------------------------

--
-- Table structure for table `user_account`
--

CREATE TABLE `user_account` (
  `account_id` int(5) NOT NULL,
  `firstname` varchar(10) NOT NULL,
  `lastname` varchar(10) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_account`
--

INSERT INTO `user_account` (`account_id`, `firstname`, `lastname`, `username`, `password`) VALUES
(1, 'Ktu', 'Student', 'KTUstudent', '123456789'),
(11, 'Ben', 'Benjee', 'Benjee', '123'),
(12, 'Kofi', 'Kingson', 'kkingson', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hostel`
--
ALTER TABLE `hostel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skill`
--
ALTER TABLE `skill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_account`
--
ALTER TABLE `user_account`
  ADD PRIMARY KEY (`account_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `hostel`
--
ALTER TABLE `hostel`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal`
--
ALTER TABLE `personal`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `skill`
--
ALTER TABLE `skill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_account`
--
ALTER TABLE `user_account`
  MODIFY `account_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
