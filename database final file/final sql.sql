-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2024 at 01:12 AM
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
-- Database: `demo2`
--

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
(115, 1, 16, 0),
(116, 1, 17, 0),
(117, 1, 18, 0),
(118, 1, 19, 0),
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
(141, 2, 11, 0),
(142, 2, 12, 0),
(143, 2, 13, 0),
(144, 2, 14, 0),
(145, 2, 15, 0),
(146, 2, 16, 0),
(147, 2, 17, 0),
(148, 2, 18, 0),
(149, 2, 19, 0),
(150, 2, 20, 0),
(162, 3, 1, 0),
(163, 3, 2, 0),
(164, 3, 3, 0),
(165, 3, 4, 0),
(166, 3, 5, 0),
(167, 3, 6, 0),
(168, 3, 7, 0),
(169, 3, 8, 0),
(170, 3, 9, 0),
(171, 3, 10, 0),
(172, 3, 11, 0),
(173, 3, 12, 0),
(174, 3, 13, 0),
(175, 3, 14, 0),
(176, 3, 15, 0),
(177, 3, 16, 0),
(178, 3, 17, 0),
(179, 3, 18, 0),
(180, 3, 19, 0),
(181, 3, 20, 0);

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
(1, 'Zone A', 50, 50),
(2, 'Zone B', 30, 30),
(3, 'Zone C', 20, 20);

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
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `VehicleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

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
