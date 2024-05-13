-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2024 at 03:50 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `parkdbms`
--
CREATE DATABASE IF NOT EXISTS `parkdbms` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `parkdbms`;

-- --------------------------------------------------------

--
-- Table structure for table `parkingspots`
--

CREATE TABLE `parkingspots` (
  `SpotID` int(11) NOT NULL,
  `ZoneID` int(11) DEFAULT NULL,
  `SpotNumber` int(11) DEFAULT NULL,
  `IsOccupied` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parkingspots`
--

INSERT INTO `parkingspots` (`SpotID`, `ZoneID`, `SpotNumber`, `IsOccupied`) VALUES
(100, 1, 1, 0),
(101, 1, 2, 0),
(102, 1, 3, 0),
(103, 1, 4, 0),
(104, 1, 5, 0),
(105, 1, 6, 0),
(106, 1, 7, 0),
(107, 1, 8, 0),
(108, 1, 9, 0),
(109, 1, 10, 0),
(110, 1, 11, 0),
(111, 1, 12, 0),
(112, 1, 13, 0),
(113, 1, 14, 0),
(114, 1, 15, 0),
(115, 1, 16, 1),
(116, 1, 17, 1),
(117, 1, 18, 0),
(118, 1, 19, 1),
(119, 1, 20, 0),
(131, 2, 1, 0),
(132, 2, 2, 0),
(133, 2, 3, 0),
(134, 2, 4, 0),
(135, 2, 5, 0),
(136, 2, 6, 0),
(137, 2, 7, 0),
(138, 2, 8, 0),
(139, 2, 9, 0),
(140, 2, 10, 0),
(141, 2, 11, 1),
(142, 2, 12, 0),
(143, 2, 13, 0),
(144, 2, 14, 1),
(145, 2, 15, 0),
(162, 3, 1, 1),
(163, 3, 2, 1),
(164, 3, 3, 1),
(165, 3, 4, 1),
(166, 3, 5, 1),
(167, 3, 6, 1),
(168, 3, 7, 1),
(169, 3, 8, 1),
(170, 3, 9, 1),
(171, 3, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `parkingzones`
--

CREATE TABLE `parkingzones` (
  `ParkingID` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Capacity` int(11) DEFAULT NULL,
  `AvailableSpace` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parkingzones`
--

INSERT INTO `parkingzones` (`ParkingID`, `Name`, `Capacity`, `AvailableSpace`) VALUES
(1, 'Zone A', 20, 17),
(2, 'Zone B', 15, 13),
(3, 'Zone C', 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pricechart`
--

CREATE TABLE `pricechart` (
  `PriceID` int(11) NOT NULL,
  `VehicleType` varchar(255) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pricechart`
--

INSERT INTO `pricechart` (`PriceID`, `VehicleType`, `Price`) VALUES
(1, 'Car', 10.00),
(2, 'Motorbike', 5.00),
(3, 'Truck', 15.00);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `Name`, `Email`, `Phone`) VALUES
(51, 'Nayeem Islam', 'n4yeem.islam@gmail.com', '838383478738'),
(52, 'Nayeem Islam', 'n4yeem.islam@gmail.com', '838383478738'),
(53, 'Nayeem Islam', 'n4yeem.islam@gmail.com', '838383478738'),
(54, 'Nayeem Islam', 'n4yeem.islam@gmail.com', '838383478738'),
(55, 'Nayeem Islam', 'n4yeem.islam@gmail.com', '23456789'),
(56, 'Nayeem Islam', 'n4yeem.islam@gmail.com', '23456789'),
(57, 'Nayeem Islam', 'n4yeem.islam@gmail.com', '9897666555776565'),
(58, 'Nayeem Islam', 'n4yeem.islam@gmail.com', '23456789'),
(60, 'Nayeem Islam', 'n4yeem.islam@gmail.com', ''),
(61, 'j', '', ''),
(62, 'nayeehe', '', ''),
(64, 'Nayeem Islam', 'n4yeem.islam@gmail.com', '9897666555776565'),
(65, 'Nayeem Islam', 'n4yeem.islam@gmail.com', ''),
(66, 'Nayeem Islam', 'n4yeem.islam@gmail.com', '23456789'),
(68, 'Nayeem Islam', 'n4yeem.islam@gmail.com', '665656865454544');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `VehicleID` int(11) NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `Brand` varchar(255) DEFAULT NULL,
  `Type` varchar(255) DEFAULT NULL,
  `RegistrationNumber` varchar(20) DEFAULT NULL,
  `ParkingSpotID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`VehicleID`, `UserID`, `Brand`, `Type`, `RegistrationNumber`, `ParkingSpotID`) VALUES
(51, 51, 'PHP', 'Car', '34576877', 141),
(52, 52, 'PHP', 'Car', '3457687873378', 169),
(53, 53, 'PHP', 'Car', '345768', 116),
(54, 54, 'PHP', 'Car', '34576855', 168),
(55, 55, 'PHP', 'Truck', '57675809898', 167),
(56, 56, 'PHP', 'Truck', '5767580676898', 164),
(57, 57, '', 'Car', '123456789065', 171),
(58, 58, '', 'Car', '323434344', 170),
(60, 60, '', 'Car', '576756', 163),
(61, 61, '', 'Car', '101011010', 165),
(62, 62, '', 'Car', '1010101', 166),
(64, 64, 'PHP', 'Motorbike', '576758', 118),
(65, 65, '', 'Car', '76509098', 115),
(66, 66, 'PHP', 'Motorbike', '76756', 144),
(68, 68, 'PHP', 'Car', '6565655', 162);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `parkingspots`
--
ALTER TABLE `parkingspots`
  ADD PRIMARY KEY (`SpotID`),
  ADD KEY `ZoneID` (`ZoneID`);

--
-- Indexes for table `parkingzones`
--
ALTER TABLE `parkingzones`
  ADD PRIMARY KEY (`ParkingID`);

--
-- Indexes for table `pricechart`
--
ALTER TABLE `pricechart`
  ADD PRIMARY KEY (`PriceID`),
  ADD UNIQUE KEY `VehicleType` (`VehicleType`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`VehicleID`),
  ADD UNIQUE KEY `unique_registration_number` (`RegistrationNumber`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `ParkingSpotID` (`ParkingSpotID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `parkingspots`
--
ALTER TABLE `parkingspots`
  MODIFY `SpotID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT for table `parkingzones`
--
ALTER TABLE `parkingzones`
  MODIFY `ParkingID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pricechart`
--
ALTER TABLE `pricechart`
  MODIFY `PriceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `VehicleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `parkingspots`
--
ALTER TABLE `parkingspots`
  ADD CONSTRAINT `parkingspots_ibfk_1` FOREIGN KEY (`ZoneID`) REFERENCES `parkingzones` (`ParkingID`);

--
-- Constraints for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD CONSTRAINT `vehicles_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`) ON DELETE CASCADE,
  ADD CONSTRAINT `vehicles_ibfk_2` FOREIGN KEY (`ParkingSpotID`) REFERENCES `parkingspots` (`SpotID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
