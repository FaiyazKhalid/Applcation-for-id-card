-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 25, 2021 at 06:04 PM
-- Server version: 5.7.23-23
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gnitig9i_sforms`
--
CREATE DATABASE IF NOT EXISTS `gnitig9i_sforms` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `gnitig9i_sforms`;

-- --------------------------------------------------------

--
-- Table structure for table `Administrator`
--

CREATE TABLE `Administrator` (
  `id` int(11) NOT NULL,
  `Firstname` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Password` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Administrator`
--

INSERT INTO `Administrator` (`id`, `Firstname`, `Phone`, `Password`, `Email`) VALUES
(1, 'Azad', '9599441023', 'azad', 'azad@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_id_card`
--

CREATE TABLE `faculty_id_card` (
  `id` int(11) NOT NULL,
  `institute` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `father` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `whatsapp` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `faculty_id_card`
--

INSERT INTO `faculty_id_card` (`id`, `institute`, `name`, `father`, `designation`, `email`, `phone`, `whatsapp`, `address`, `photo`) VALUES
(1, 'GREATER NOIDA INSTITUTE OF TECHNOLOGY (IPC CAMPUS)', 'Azad', 'Azad', '', 'em@gmia.com', 'cmd.png', '46565656', 'SDASDASDAS', ''),
(2, 'GREATER NOIDA INSTITUTE OF TECHNOLOGY (IPC CAMPUS)', 'dgsgsdf', 'sdfdsfsd', '', 'sdfsdf@sdgsdg', '35345345', '345345345', 'sdfsdsd', '64001-advocatespedia-foundation-png.png'),
(3, 'GREATER NOIDA INSTITUTE OF TECHNOLOGY (IPC CAMPUS)', 'sfdfdfdsf', 'sads', '', 'asdasd@gmff', '4232323', '232323', '23232323', '80675-advocatespedia-foundation-png.png'),
(4, 'GREATER NOIDA INSTITUTE OF MANAGEMENT', 'Mohd Azad Khalid', 'Jsshh', '', 'azadnetwork444@gmail.com', '09069578582', '999999999999', 'Shheixbrhhshhwb2beh', '66448-20210831_083022.jpg'),
(5, 'GREATER NOIDA INSTITUTE OF MANAGEMENT', 'Mohd Azad Khalid', 'Jsshh', '', 'azadnetwork444@gmail.com', '09069578582', '999999999999', 'Shheixbrhhshhwb2beh', '74929-20210831_083022.jpg'),
(6, 'GREATER NOIDA INSTITUTE OF TECHNOLOGY (IPC CAMPUS)', 'Azad', 'Hsjshsbb', 'Jshavvvsksj', 'azadnetwork444@gmail.com', '09069578582', '888888888888', 'Havshzhuenbz delhi', '23414-20210831_082953.jpg'),
(7, 'GREATER NOIDA INSTITUTE OF LAW', 'Aline', 'Hsjsbsb', 'Hahhahagag', 'azadnetwork444@gmail.com', '9998879', '94946488484', 'Ggaywggsgsbshhehshdh', '26698-1613891598961.jpg'),
(8, 'GREATER NOIDA COLLEGE', 'Ggggggggg', 'Ffffffffff', 'Tttttttt', 'azadnetwork444@gmail.com', '6565656565656', '656565656565', 'Text for id', '77299-20210831_083022.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `Files`
--

CREATE TABLE `Files` (
  `id` int(11) NOT NULL,
  `Title` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `Type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Size` decimal(10,0) DEFAULT NULL,
  `content` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Files`
--

INSERT INTO `Files` (`id`, `Title`, `Name`, `Type`, `Size`, `content`) VALUES
(1, 'Staff', 'staff.csv', 'application/vnd.ms-excel', 76, '');

-- --------------------------------------------------------

--
-- Table structure for table `Inorg`
--

CREATE TABLE `Inorg` (
  `id` int(11) NOT NULL,
  `name` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `Phone` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `year` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `pname` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `size` decimal(10,0) NOT NULL,
  `content` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Profilepictures`
--

CREATE TABLE `Profilepictures` (
  `id` int(11) NOT NULL,
  `ids` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Category` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Size` decimal(10,0) NOT NULL,
  `content` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_id_card`
--

CREATE TABLE `student_id_card` (
  `id` int(11) NOT NULL,
  `session` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `course` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `father` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `whatsapp` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student_id_card`
--

INSERT INTO `student_id_card` (`id`, `session`, `course`, `sid`, `name`, `father`, `email`, `photo`, `phone`, `whatsapp`, `address`) VALUES
(3, 'F', 'B.TECH COMPUTER SCIENCE', '45454', 'sdfdfdf', 'xfgdfgfd', 'dfgdfgf@gmail.com', '74596-advocatespedia-foundation-png.png', '455444', '54545', '4'),
(4, 'F', 'DIPLOMA ELECTRICAL', '5454545', 'sfsfsfdsdsd', 'sdsdsdsds', 'sdsdsdsd@GMMS', '50516-cmd.png', '343434343', '3434343', 'A- 22/3, South Extension'),
(5, 'F', 'DIPLOMA ELECTRICAL', '5454545', 'sfsfsfdsdsd', 'sdsdsdsds', 'sdsdsdsd@GMMS', '50516-cmd.png', '3434343435', '3434343', 'A- 22/3, South Extension'),
(6, 'F', 'B.TECH COMPUTER SCIENCE', '45454', 'sdfdfdf', 'xfgdfgfd', 'dfgdfgf@gmail.com', '74596-advocatespedia-foundation-png.png', '455444545', '54545', '4'),
(7, 'F', 'B.TECH COMPUTER SCIENCE', '45454', 'sdfdfdf', 'xfgdfgfd', 'dfgdfgf@gmail.com', '74596-advocatespedia-foundation-png.png', '455444878788787', '54545', '4'),
(8, 'F', 'B.TECH COMPUTER SCIENCE', '45454', 'sdfdfdf', 'xfgdfgfd', 'dfgdfgf@gmail.com', '74596-advocatespedia-foundation-png.png', '465456', '54545', '4'),
(9, 'F', 'B.TECH COMPUTER SCIENCE', '45454', 'sdfdfdf', 'xfgdfgfd', 'dfgdfgf@gmail.com', '74596-advocatespedia-foundation-png.png', '45544564654', '54545', '4'),
(10, '2021', 'LLB', '54564564', 'EXPALME', 'EXAMPLE', 'EXAMPLE@GMAIL.COM', 'cmd.png', '5465465', '6545454', 'EXAMPLE');

-- --------------------------------------------------------

--
-- Table structure for table `user_detail`
--

CREATE TABLE `user_detail` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dp` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_detail`
--

INSERT INTO `user_detail` (`id`, `name`, `email`, `dp`) VALUES
(1, 'Faiyaz', 'faiyaz@gmail.com', 'cmd.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Administrator`
--
ALTER TABLE `Administrator`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty_id_card`
--
ALTER TABLE `faculty_id_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Files`
--
ALTER TABLE `Files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Inorg`
--
ALTER TABLE `Inorg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Profilepictures`
--
ALTER TABLE `Profilepictures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_id_card`
--
ALTER TABLE `student_id_card`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contact` (`phone`);

--
-- Indexes for table `user_detail`
--
ALTER TABLE `user_detail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Administrator`
--
ALTER TABLE `Administrator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `faculty_id_card`
--
ALTER TABLE `faculty_id_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `Files`
--
ALTER TABLE `Files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Inorg`
--
ALTER TABLE `Inorg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Profilepictures`
--
ALTER TABLE `Profilepictures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_id_card`
--
ALTER TABLE `student_id_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_detail`
--
ALTER TABLE `user_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
