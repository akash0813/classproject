-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2021 at 05:55 AM
-- Server version: 8.0.21
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinecourse`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-01-24 16:21:18', '21-05-2018 03:31:37 PM');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int NOT NULL,
  `courseCode` varchar(255) DEFAULT NULL,
  `courseName` varchar(255) DEFAULT NULL,
  `courseUnit` varchar(255) DEFAULT NULL,
  `noofSeats` int DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `courseCode`, `courseName`, `courseUnit`, `noofSeats`, `creationDate`, `updationDate`) VALUES
(1, 'PHP01', 'prof. zhimin gao', '1-5', 10, '2017-02-11 17:39:10', '21-05-2018 03:33:37 PM'),
(2, 'WP01', 'proff. lei wu', '1-6', 1, '2017-02-11 17:52:25', '12-02-2017 12:23:35 AM'),
(4, 'MYSQL23', 'proff. hua yan', '1-8', 20, '2017-02-11 18:47:25', '25-08-2018 11:20:22 AM');

-- --------------------------------------------------------

--
-- Table structure for table `courseenrolls`
--

CREATE TABLE `courseenrolls` (
  `id` int NOT NULL,
  `studentRegno` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `session` int DEFAULT NULL,
  `department` int DEFAULT NULL,
  `level` int DEFAULT NULL,
  `semester` int DEFAULT NULL,
  `course` int DEFAULT NULL,
  `enrollDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courseenrolls`
--

INSERT INTO `courseenrolls` (`id`, `studentRegno`, `pincode`, `session`, `department`, `level`, `semester`, `course`, `enrollDate`) VALUES
(4, '10806121', '715948', 4, 7, 6, 5, 2, '2021-04-01 10:19:41'),
(5, '12345', '131863', 4, 7, 6, 6, 1, '2021-04-01 10:19:41');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int NOT NULL,
  `department` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `department`, `creationDate`) VALUES
(1, 'Account', '2021-04-01 10:19:41'),
(2, 'HR', '2021-04-01 10:19:41'),
(3, 'Admin', '2021-04-01 10:19:41'),
(5, 'Test', '2021-04-01 10:19:41'),
(7, 'IT', '2021-04-01 10:19:41');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id` int NOT NULL,
  `level` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id`, `level`, `creationDate`) VALUES
(5, 'GA 321, 4.30pm', '2021-04-01 10:19:41'),
(6, 'AU 221, 1.30pm', '2017-02-09 19:04:12'),
(7, 'DB 121, 3.30pm', '2017-02-09 19:04:17');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `id` int NOT NULL,
  `semester` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`id`, `semester`, `creationDate`, `updationDate`) VALUES
(4, 'Second sem', '2017-02-09 18:47:59', ''),
(5, 'Third Sem', '2017-02-09 18:48:04', ''),
(6, 'Fourth Sem', '2018-05-21 10:02:56', '');

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` int NOT NULL,
  `session` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`id`, `session`, `creationDate`) VALUES
(1, '2015', '2017-02-09 18:16:51'),
(2, '2016', '2017-02-09 18:27:41'),
(3, '2017', '2018-05-21 10:01:54'),
(4, '2018', '2018-05-21 10:01:58');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `StudentRegno` varchar(255) NOT NULL,
  `studentPhoto` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `studentName` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `session` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `semester` varchar(255) DEFAULT NULL,
  `cgpa` decimal(10,2) DEFAULT NULL,
  `creationdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`StudentRegno`, `studentPhoto`, `password`, `studentName`, `pincode`, `session`, `department`, `semester`, `cgpa`, `creationdate`, `updationDate`) VALUES
('10806121', 'logo.jpg', 'f925916e2754e5e03f75dd58a5733251', 'Akash', '715948', '', '', '', '7.25', '2017-02-11 19:38:32', '21-05-2018 03:20:40 PM'),
('12345', NULL, 'f925916e2754e5e03f75dd58a5733251', 'John', '131863', '', '', '', '0.00', '2018-08-25 05:50:51', ''),
('125966', '', 'f925916e2754e5e03f75dd58a5733251', 'Test user', '385864', '', '', '', '0.00', '2017-02-11 19:48:03', '');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int NOT NULL,
  `studentRegno` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `studentRegno`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-11 20:05:58', '', 1),
(2, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-11 20:07:18', '', 1),
(3, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-11 20:08:46', '', 1),
(4, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-11 20:26:15', '', 1),
(5, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-11 20:27:11', '', 1),
(6, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-11 20:28:19', '', 1),
(7, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-11 20:29:30', '', 1),
(8, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-11 20:30:39', '12-02-2017 02:00:40 AM', 1),
(9, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-11 20:32:12', '12-02-2017 02:21:40 AM', 1),
(10, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-11 20:51:50', '12-02-2017 05:14:45 AM', 1),
(11, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-12 05:41:24', '12-02-2017 11:49:58 AM', 1),
(12, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-12 06:20:05', '', 1),
(13, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-12 06:20:23', '12-02-2017 12:09:59 PM', 1),
(14, '10806121', 0x3a3a3100000000000000000000000000, '2018-05-21 09:49:06', '21-05-2018 03:30:53 PM', 1),
(15, '10806121', 0x3a3a3100000000000000000000000000, '2018-05-21 10:19:15', '', 1),
(16, '12345', 0x3a3a3100000000000000000000000000, '2018-08-25 05:51:42', '25-08-2018 11:23:02 AM', 1),
(17, '10806121', 0x3a3a3100000000000000000000000000, '2021-05-04 02:35:53', '04-05-2021 08:27:06 AM', 1),
(18, '10806121', 0x3a3a3100000000000000000000000000, '2021-05-04 03:00:50', '04-05-2021 08:56:22 AM', 1),
(19, '10806121', 0x3a3a3100000000000000000000000000, '2021-05-04 03:37:13', '04-05-2021 09:07:55 AM', 1),
(20, '10806121', 0x3a3a3100000000000000000000000000, '2021-05-04 03:44:22', '04-05-2021 09:23:01 AM', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courseenrolls`
--
ALTER TABLE `courseenrolls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`StudentRegno`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `courseenrolls`
--
ALTER TABLE `courseenrolls`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
