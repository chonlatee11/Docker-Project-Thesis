-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Feb 27, 2023 at 09:18 AM
-- Server version: 10.11.2-MariaDB-1:10.11.2+maria~ubu2204
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mymariaDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `Admin`
--

CREATE TABLE `Admin` (
  `adminID` int(11) NOT NULL,
  `Email` text NOT NULL,
  `passWord` text NOT NULL,
  `fName` text DEFAULT NULL,
  `lName` text DEFAULT NULL,
  `modifydate` text DEFAULT NULL,
  `EmailVerify` enum('notVerify','Verify') NOT NULL DEFAULT 'notVerify'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Disease`
--

CREATE TABLE `Disease` (
  `DiseaseID` int(11) NOT NULL,
  `DiseaseName` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `InfoDisease` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ProtectInfo` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ImageName` text NOT NULL,
  `DiseaseNameEng` text NOT NULL,
  `Modifydate` text DEFAULT NULL,
  `colorShow` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `DiseaseReport`
--

CREATE TABLE `DiseaseReport` (
  `ReportID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `UserFname` text NOT NULL,
  `UserLname` text NOT NULL,
  `Latitude` text NOT NULL,
  `Longitude` text NOT NULL,
  `PhoneNumber` text NOT NULL,
  `Detail` text DEFAULT NULL,
  `DiseaseID` int(11) NOT NULL,
  `DiseaseName` text NOT NULL,
  `DiseaseImage` text NOT NULL,
  `ResaultPredict` text NOT NULL,
  `DateReport` text NOT NULL,
  `AddressUser` text NOT NULL,
  `DiseaseNameEng` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `HistoryDiseaseModify`
--

CREATE TABLE `HistoryDiseaseModify` (
  `ReportID` int(11) NOT NULL,
  `DiseaseID` int(11) DEFAULT NULL,
  `DiseaseName` text NOT NULL,
  `AdminID` int(11) NOT NULL,
  `AdminEmail` text NOT NULL,
  `ModifyDate` text NOT NULL,
  `InfoUpdate` text NOT NULL,
  `ProtectUpdate` text NOT NULL,
  `NameUpdate` text NOT NULL,
  `ImageNameUpdate` text NOT NULL,
  `NameEngUpdate` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Researcher`
--

CREATE TABLE `Researcher` (
  `researcherID` int(11) NOT NULL,
  `Email` text NOT NULL,
  `passWord` text NOT NULL,
  `fName` text NOT NULL,
  `lName` text NOT NULL,
  `phoneNumber` varchar(10) NOT NULL,
  `Modifydate` text DEFAULT NULL,
  `EmailVerify` enum('notVerify','Verify') NOT NULL DEFAULT 'notVerify'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `UserID` int(11) NOT NULL,
  `UserName` varchar(12) NOT NULL,
  `Password` text NOT NULL,
  `fName` text NOT NULL,
  `lName` text NOT NULL,
  `PhoneNumber` text NOT NULL,
  `Address` text NOT NULL,
  `latitude` text NOT NULL,
  `longitude` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Admin`
--
ALTER TABLE `Admin`
  ADD PRIMARY KEY (`adminID`);

--
-- Indexes for table `Disease`
--
ALTER TABLE `Disease`
  ADD PRIMARY KEY (`DiseaseID`);

--
-- Indexes for table `DiseaseReport`
--
ALTER TABLE `DiseaseReport`
  ADD PRIMARY KEY (`ReportID`),
  ADD KEY `DiseaseReport` (`DiseaseID`),
  ADD KEY `UserReport` (`UserID`);

--
-- Indexes for table `HistoryDiseaseModify`
--
ALTER TABLE `HistoryDiseaseModify`
  ADD PRIMARY KEY (`ReportID`),
  ADD KEY `AdminReport` (`AdminID`),
  ADD KEY `HistoryDisease` (`DiseaseID`);

--
-- Indexes for table `Researcher`
--
ALTER TABLE `Researcher`
  ADD PRIMARY KEY (`researcherID`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Admin`
--
ALTER TABLE `Admin`
  MODIFY `adminID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Disease`
--
ALTER TABLE `Disease`
  MODIFY `DiseaseID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `DiseaseReport`
--
ALTER TABLE `DiseaseReport`
  MODIFY `ReportID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `HistoryDiseaseModify`
--
ALTER TABLE `HistoryDiseaseModify`
  MODIFY `ReportID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Researcher`
--
ALTER TABLE `Researcher`
  MODIFY `researcherID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `DiseaseReport`
--
ALTER TABLE `DiseaseReport`
  ADD CONSTRAINT `DiseaseReport` FOREIGN KEY (`DiseaseID`) REFERENCES `Disease` (`DiseaseID`),
  ADD CONSTRAINT `UserReport` FOREIGN KEY (`UserID`) REFERENCES `User` (`UserID`);

--
-- Constraints for table `HistoryDiseaseModify`
--
ALTER TABLE `HistoryDiseaseModify`
  ADD CONSTRAINT `AdminReport` FOREIGN KEY (`AdminID`) REFERENCES `Admin` (`adminID`),
  ADD CONSTRAINT `HistoryDisease` FOREIGN KEY (`DiseaseID`) REFERENCES `Disease` (`DiseaseID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
