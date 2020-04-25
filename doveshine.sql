-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 18, 2020 at 06:41 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doveshine`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedetails`
--

CREATE TABLE `feedetails` (
  `transactionId` int(12) NOT NULL,
  `studentfirstname` varchar(20) NOT NULL,
  `studentlastname` varchar(20) NOT NULL,
  `studentsurname` varchar(20) NOT NULL,
  `mobileno` varchar(12) DEFAULT NULL,
  `Totalfees` decimal(8,2) NOT NULL,
  `Feespaid` int(7) NOT NULL,
  `Balance` varchar(7) NOT NULL,
  `Term` varchar(10) NOT NULL,
  `class` varchar(20) NOT NULL,
  `Feesstatus` varchar(15) NOT NULL,
  `Paymentdate` date NOT NULL,
  `paymenttime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedetails`
--

INSERT INTO `feedetails` (`transactionId`, `studentfirstname`, `studentlastname`, `studentsurname`, `mobileno`, `Totalfees`, `Feespaid`, `Balance`, `Term`, `class`, `Feesstatus`, `Paymentdate`, `paymenttime`) VALUES
(1, 'Ben', 'LAsdcf', 'HJGJK', '075643431', '456.00', 146, '310', '0', '0', '0', '2020-01-02', '09:28:00'),
(2, 'BENJ', 'KARIS', 'LEY', '0795637886', '20000.00', 10000, '10000', '1', '1', '0', '2020-01-03', '10:10:01'),
(8, 'LLLL', 'LLLLL', 'LLLL', '888888', '9000.00', 10000, '-1000.0', '0', '1', '1', '2020-01-05', '01:21:41'),
(9, 'BENJAMIN', 'KARIUKI', 'LEYIAN', '0795637886', '100.00', 200, '-100.0', '1', '1', '0', '2020-01-05', '05:37:49'),
(10, 'BEN', 'KARIUS', 'OTIENO', '', '1234.00', 1234, '0.0', '0', '0', '0', '2020-01-05', '05:53:10'),
(11, ' BEN', 'KARIS ', ' LEYIAN', ' 0798657', '10000.00', 1000, '9000.0', '1', '1', '0', '2020-01-16', '09:18:12'),
(12, 'BENJAMIN', 'KARIUKI', 'LEYIAN', '0795637886', '5000.00', 3000, '2000.0', '0', '1', '1', '2020-01-16', '12:54:10');

-- --------------------------------------------------------

--
-- Table structure for table `studentdetails`
--

CREATE TABLE `studentdetails` (
  `studentId` int(12) NOT NULL,
  `studentFirstName` varchar(20) NOT NULL,
  `studentLastName` varchar(20) NOT NULL,
  `studentSurname` varchar(20) NOT NULL,
  `studentClass` varchar(20) NOT NULL,
  `studentGender` varchar(20) NOT NULL,
  `dateofbirth` date NOT NULL,
  `dateofadmission` date NOT NULL,
  `fatherfirstname` varchar(20) DEFAULT NULL,
  `fatherlastname` varchar(20) DEFAULT NULL,
  `fathersurname` varchar(20) DEFAULT NULL,
  `fathermobileno` varchar(20) DEFAULT NULL,
  `motherfirstname` varchar(20) DEFAULT NULL,
  `motherlastname` varchar(20) DEFAULT NULL,
  `mothersurname` varchar(20) DEFAULT NULL,
  `mothermobileno` varchar(20) DEFAULT NULL,
  `guardianfirstname` varchar(20) DEFAULT NULL,
  `guardianlastname` varchar(20) DEFAULT NULL,
  `guardiansurname` varchar(20) DEFAULT NULL,
  `guardianmobileno` varchar(20) DEFAULT NULL,
  `healthstatus` varchar(20) NOT NULL,
  `healthcondition` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentdetails`
--

INSERT INTO `studentdetails` (`studentId`, `studentFirstName`, `studentLastName`, `studentSurname`, `studentClass`, `studentGender`, `dateofbirth`, `dateofadmission`, `fatherfirstname`, `fatherlastname`, `fathersurname`, `fathermobileno`, `motherfirstname`, `motherlastname`, `mothersurname`, `mothermobileno`, `guardianfirstname`, `guardianlastname`, `guardiansurname`, `guardianmobileno`, `healthstatus`, `healthcondition`) VALUES
(6, 'BENJAMIN', 'KARIUKI', 'LEYIAN', 'PP2', 'MALE', '1999-08-05', '2020-02-04', '', '', '', '', '', '', '', '', '', '', '', '', 'WELL', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(12) NOT NULL,
  `username` varchar(20) NOT NULL,
  `pwd` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `username`, `pwd`) VALUES
(1, 'admin', 'admin123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedetails`
--
ALTER TABLE `feedetails`
  ADD PRIMARY KEY (`transactionId`);

--
-- Indexes for table `studentdetails`
--
ALTER TABLE `studentdetails`
  ADD PRIMARY KEY (`studentId`,`studentFirstName`,`studentLastName`,`studentSurname`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedetails`
--
ALTER TABLE `feedetails`
  MODIFY `transactionId` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `studentdetails`
--
ALTER TABLE `studentdetails`
  MODIFY `studentId` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
