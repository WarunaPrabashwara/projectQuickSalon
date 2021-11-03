-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2021 at 08:29 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quick_salon`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `appointmentcount`
-- (See below for the actual view)
--
CREATE TABLE `appointmentcount` (
`appCount` bigint(21)
,`employeeID` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `appointmentsp`
-- (See below for the actual view)
--
CREATE TABLE `appointmentsp` (
`QId` int(11)
,`date` date
,`startTime` time
,`endTime` time
,`spID` int(11)
,`Name` varchar(81)
);

-- --------------------------------------------------------

--
-- Table structure for table `j4f9qe_accessrights`
--

CREATE TABLE `j4f9qe_accessrights` (
  `taskID` int(11) NOT NULL,
  `name` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Stand-in structure for view `j4f9qe_appointemtserviceview`
-- (See below for the actual view)
--
CREATE TABLE `j4f9qe_appointemtserviceview` (
`qID` int(11)
,`date` date
,`startTime` time
,`endTime` time
,`cancelledFlag` int(11)
,`serviceID` int(11)
,`employeeID` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `j4f9qe_appointments`
--

CREATE TABLE `j4f9qe_appointments` (
  `qID` int(11) NOT NULL,
  `customerID` int(11) NOT NULL,
  `date` date NOT NULL,
  `startTime` time NOT NULL,
  `endTime` time NOT NULL,
  `cancelledFlag` int(11) NOT NULL DEFAULT 0,
  `complete` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `j4f9qe_appointments`
--

INSERT INTO `j4f9qe_appointments` (`qID`, `customerID`, `date`, `startTime`, `endTime`, `cancelledFlag`, `complete`) VALUES
(1, 1, '2021-03-09', '13:00:00', '14:00:00', 0, 0),
(2, 2, '2021-03-31', '13:15:00', '14:00:00', 0, 0),
(4, 3, '2021-03-09', '09:30:00', '11:15:00', 0, 0),
(5, 4, '2021-03-09', '10:30:00', '11:15:00', 0, 0),
(10, 3, '2021-03-09', '11:00:00', '12:00:00', 0, 0),
(16, 4, '2021-03-23', '16:13:06', '17:13:06', 0, 0),
(18, 4, '2020-03-20', '07:13:20', '10:00:00', 0, 0),
(20, 4, '2021-03-09', '10:00:00', '11:00:00', 0, 0),
(21, 4, '2021-03-10', '10:00:00', '11:00:00', 0, 0),
(22, 4, '2021-03-10', '09:00:00', '07:00:00', 0, 0),
(23, 4, '2021-03-10', '12:00:00', '01:00:00', 0, 0),
(24, 4, '2021-03-10', '11:00:00', '12:00:00', 0, 0),
(25, 4, '2021-03-11', '09:00:00', '07:00:00', 0, 0),
(26, 4, '2021-03-10', '01:00:00', '02:00:00', 0, 0),
(27, 4, '2021-03-11', '01:00:00', '02:00:00', 0, 0),
(28, 4, '2021-03-12', '01:00:00', '02:00:00', 0, 0),
(29, 4, '2021-03-18', '02:00:00', '03:00:00', 0, 0),
(30, 4, '2021-03-10', '03:00:00', '05:00:00', 0, 0),
(31, 4, '2021-03-21', '02:00:00', '03:00:00', 0, 0),
(32, 4, '2021-03-09', '04:00:00', '05:00:00', 0, 0),
(33, 4, '2021-03-09', '04:00:00', '05:00:00', 0, 0),
(34, 4, '2021-03-09', '04:00:00', '05:00:00', 0, 0),
(35, 4, '2021-03-09', '04:00:00', '05:00:00', 0, 0),
(36, 4, '2021-03-09', '04:00:00', '05:00:00', 0, 0),
(37, 4, '2021-03-09', '11:00:00', '12:00:00', 0, 0),
(38, 4, '2021-03-09', '02:00:00', '03:00:00', 0, 0),
(39, 4, '2021-03-09', '02:00:00', '03:00:00', 0, 0),
(40, 4, '2021-03-09', '04:00:00', '05:00:00', 0, 0),
(41, 4, '2021-03-09', '04:00:00', '05:00:00', 0, 0),
(42, 4, '2021-03-09', '04:00:00', '05:00:00', 0, 0),
(43, 4, '2021-03-09', '04:00:00', '05:00:00', 0, 0),
(44, 4, '2021-03-09', '05:00:00', '06:00:00', 0, 0),
(45, 4, '2021-03-09', '05:00:00', '06:00:00', 0, 0),
(46, 4, '2021-03-09', '05:00:00', '06:00:00', 0, 0),
(47, 4, '2021-03-09', '05:00:00', '06:00:00', 0, 0),
(52, 4, '2021-04-04', '10:00:00', '11:00:00', 0, 0),
(55, 4, '2021-04-04', '10:00:00', '11:00:00', 0, 0),
(56, 4, '2021-04-10', '12:00:00', '01:00:00', 0, 0);

--
-- Triggers `j4f9qe_appointments`
--
DELIMITER $$
CREATE TRIGGER `j4f9qe_InsertCancelledApp` AFTER UPDATE ON `j4f9qe_appointments` FOR EACH ROW BEGIN 
   IF (NEW.cancelledFlag = 1) THEN
      INSERT
      INTO j4f9qe_cancelledapp(qID, date, time)
      VALUES (NEW.qID, CURDATE(), CURRENT_TIME());
   END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `j4f9qe_appointmentsassigned`
--

CREATE TABLE `j4f9qe_appointmentsassigned` (
  `qID` int(11) NOT NULL,
  `employeeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `j4f9qe_appointmentsassigned`
--

INSERT INTO `j4f9qe_appointmentsassigned` (`qID`, `employeeID`) VALUES
(52, 32),
(55, 37),
(56, 37);

-- --------------------------------------------------------

--
-- Table structure for table `j4f9qe_appointmentservice`
--

CREATE TABLE `j4f9qe_appointmentservice` (
  `qID` int(11) NOT NULL,
  `serviceID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `j4f9qe_appointmentservice`
--

INSERT INTO `j4f9qe_appointmentservice` (`qID`, `serviceID`) VALUES
(1, 2),
(2, 2),
(4, 2),
(5, 3),
(10, 2),
(16, 2),
(20, 2),
(21, 2),
(22, 3),
(23, 2),
(24, 2),
(25, 3),
(26, 2),
(27, 2),
(28, 3),
(29, 2),
(30, 4),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 2),
(36, 2),
(37, 2),
(38, 2),
(39, 2),
(40, 2),
(41, 2),
(42, 2),
(43, 2),
(44, 2),
(45, 2),
(46, 2),
(47, 2),
(52, 2),
(55, 2),
(56, 2);

-- --------------------------------------------------------

--
-- Stand-in structure for view `j4f9qe_appointmentviewforus`
-- (See below for the actual view)
--
CREATE TABLE `j4f9qe_appointmentviewforus` (
`customerID` int(11)
,`qID` int(11)
,`firstName` varchar(11)
,`lastName` varchar(20)
,`telephone` char(10)
,`serviceName` varchar(30)
,`date` date
,`startTime` time
,`endTime` time
,`cancelledFlag` int(11)
,`complete` tinyint(1)
,`employeeID` int(11)
,`empFirstName` varchar(30)
,`empLastName` varchar(50)
,`userID` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `j4f9qe_buyer`
--

CREATE TABLE `j4f9qe_buyer` (
  `buyerID` int(11) NOT NULL,
  `firstName` int(11) NOT NULL,
  `lastName` int(11) NOT NULL,
  `streetNum` int(11) NOT NULL,
  `streetName` int(11) NOT NULL,
  `town` int(11) NOT NULL,
  `postCode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `j4f9qe_buyercontact`
--

CREATE TABLE `j4f9qe_buyercontact` (
  `id` int(11) NOT NULL,
  `buyerID` int(11) NOT NULL,
  `contactNum` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='stores buyers contact details';

-- --------------------------------------------------------

--
-- Table structure for table `j4f9qe_cancelledapp`
--

CREATE TABLE `j4f9qe_cancelledapp` (
  `cancelID` int(11) NOT NULL,
  `qID` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `j4f9qe_complaint`
--

CREATE TABLE `j4f9qe_complaint` (
  `complaintID` int(11) NOT NULL,
  `customerID` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `details` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='stores data about complaints from customers';

-- --------------------------------------------------------

--
-- Table structure for table `j4f9qe_customer`
--

CREATE TABLE `j4f9qe_customer` (
  `customerID` int(11) NOT NULL,
  `firstName` varchar(11) NOT NULL,
  `lastName` varchar(20) NOT NULL,
  `telephone` char(10) NOT NULL,
  `registeredDate` date DEFAULT NULL,
  `accountType` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='stores data about customers';

--
-- Dumping data for table `j4f9qe_customer`
--

INSERT INTO `j4f9qe_customer` (`customerID`, `firstName`, `lastName`, `telephone`, `registeredDate`, `accountType`) VALUES
(1, 'shashira', 'weerarthne', '761213444', '2020-10-08', 0),
(2, 'Dilantha', 'weerarthne', '771213444', '2020-10-15', 0),
(3, 'Nimal', 'Siripala', '711213444', '2020-11-08', 0),
(4, 'Harshi', 'Silva', '721213444', '2020-11-08', 0),
(49, 'Shehan', 'Sandeepa', '0710157140', '2021-03-31', 1),
(50, 'Customer', 'New', '0721591596', '2021-03-31', 1),
(52, 'Shehan', 'Sandeepa', '0779791120', '2021-03-31', 1);

-- --------------------------------------------------------

--
-- Table structure for table `j4f9qe_employee`
--

CREATE TABLE `j4f9qe_employee` (
  `employeeID` int(11) NOT NULL,
  `nicNo` varchar(12) NOT NULL,
  `firstName` varchar(30) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `salary` decimal(11,0) NOT NULL DEFAULT 0,
  `contactNum` varchar(10) NOT NULL,
  `enrollDate` varchar(20) NOT NULL,
  `resignDate` varchar(20) DEFAULT NULL,
  `isUpperStaffFlag` tinyint(1) NOT NULL,
  `onLeaveFlag` tinyint(1) NOT NULL,
  `removedFlag` tinyint(1) NOT NULL,
  `userID` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Stores data about employees';

--
-- Dumping data for table `j4f9qe_employee`
--

INSERT INTO `j4f9qe_employee` (`employeeID`, `nicNo`, `firstName`, `lastName`, `salary`, `contactNum`, `enrollDate`, `resignDate`, `isUpperStaffFlag`, `onLeaveFlag`, `removedFlag`, `userID`, `address`, `gender`) VALUES
(32, '1231231231V', 'Waruna', 'Ananda', '12300', '0771231234', '2021-03-31', NULL, 0, 0, 0, 35, '12, Kandy', ''),
(33, '9981231231V', 'Amal', 'Perera', '14500', '0761231234', '2021-03-31', NULL, 0, 0, 1, 36, '13, Colombo', ''),
(34, '1231231255V', 'Uthpala', 'Wasana', '51440', '0751231234', '2021-03-31', NULL, 0, 0, 1, 38, '14, Kadawatha', ''),
(35, '971231234V', 'Shashira', 'Dilantha', '99000', '0721231234', '2021-03-31', NULL, 1, 0, 0, 39, '52, Panadura', ''),
(36, '991231234V', 'Praditha', 'Alwis', '23000', '0711231234', '2021-03-31', NULL, 0, 0, 1, 40, '123, Maharagama', ''),
(37, '973210000V', 'Amal', 'Silva', '34000', '0785467555', '2021-03-31', NULL, 0, 0, 0, 44, '413/1, Panadura', ''),
(38, '973210548V', 'erer', 'rer', '23434', '0779791123', '2021-03-31', NULL, 1, 0, 0, 51, '413/1', 'FeMale'),
(39, 'fdf', 'dfddfd', 'dfdf', '23434', '0779791123', '2021-03-31', NULL, 1, 0, 0, 52, '413/1', 'Male');

--
-- Triggers `j4f9qe_employee`
--
DELIMITER $$
CREATE TRIGGER `j4f9qe_AddDefaultRating` AFTER INSERT ON `j4f9qe_employee` FOR EACH ROW BEGIN 
   IF (NEW.isUpperStaffFlag = 0) THEN
      INSERT
      INTO j4f9qe_ratings(empID, rating)
      VALUES (NEW.employeeID, 10);
   END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `j4f9qe_RemoveRating` AFTER UPDATE ON `j4f9qe_employee` FOR EACH ROW BEGIN 
   IF (NEW.removedFlag = 1) THEN
      DELETE
      FROM j4f9qe_ratings
      WHERE empID= NEW.employeeID;
   END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `j4f9qe_employeeratings`
-- (See below for the actual view)
--
CREATE TABLE `j4f9qe_employeeratings` (
`employeeID` int(11)
,`firstName` varchar(30)
,`lastName` varchar(50)
,`rating` tinyint(2)
);

-- --------------------------------------------------------

--
-- Table structure for table `j4f9qe_goodsreceived`
--

CREATE TABLE `j4f9qe_goodsreceived` (
  `grnNum` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `receivedBy` int(11) NOT NULL,
  `poNum` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `j4f9qe_leave`
--

CREATE TABLE `j4f9qe_leave` (
  `leaveID` int(11) NOT NULL,
  `leaverID` int(11) NOT NULL,
  `isApproved` enum('y','n') NOT NULL DEFAULT 'n',
  `fromDate` date NOT NULL,
  `fromTime` time NOT NULL,
  `toDate` date NOT NULL,
  `toTime` time NOT NULL,
  `leaveType` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `j4f9qe_package`
--

CREATE TABLE `j4f9qe_package` (
  `packageID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  `defaultPrice` float NOT NULL,
  `defaultCustomerCount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `j4f9qe_packagehasservices`
--

CREATE TABLE `j4f9qe_packagehasservices` (
  `packageID` int(11) NOT NULL,
  `serviceID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='stores data about services in a package';

-- --------------------------------------------------------

--
-- Table structure for table `j4f9qe_packagesmanaged`
--

CREATE TABLE `j4f9qe_packagesmanaged` (
  `id` int(11) NOT NULL,
  `upperStaffID` int(11) NOT NULL,
  `packageID` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='stores data about when packages were managed';

-- --------------------------------------------------------

--
-- Stand-in structure for view `j4f9qe_personalschedule`
-- (See below for the actual view)
--
CREATE TABLE `j4f9qe_personalschedule` (
`qID` int(11)
,`customerID` int(11)
,`date` date
,`startTime` time
,`endTime` time
,`cancelledFlag` int(11)
,`firstName` varchar(11)
,`lastName` varchar(20)
,`telephone` char(10)
,`serviceName` varchar(30)
,`employeeID` int(11)
,`userID` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `j4f9qe_products`
--

CREATE TABLE `j4f9qe_products` (
  `productID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `sellingPrice` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `j4f9qe_productsingrn`
--

CREATE TABLE `j4f9qe_productsingrn` (
  `id` int(11) NOT NULL,
  `grnNum` int(11) NOT NULL,
  `productID` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `j4f9qe_productspurchased`
--

CREATE TABLE `j4f9qe_productspurchased` (
  `id` int(11) NOT NULL,
  `poNum` int(11) NOT NULL,
  `productID` int(11) NOT NULL,
  `price` float NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `j4f9qe_productsreturned`
--

CREATE TABLE `j4f9qe_productsreturned` (
  `id` int(11) NOT NULL,
  `returnsID` int(11) NOT NULL,
  `productID` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='stores data about products returned';

-- --------------------------------------------------------

--
-- Table structure for table `j4f9qe_productssold`
--

CREATE TABLE `j4f9qe_productssold` (
  `id` int(11) NOT NULL,
  `aodNum` int(11) NOT NULL,
  `productID` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `j4f9qe_purchases`
--

CREATE TABLE `j4f9qe_purchases` (
  `poNum` int(11) NOT NULL,
  `vendorID` int(11) NOT NULL,
  `upperStaffID` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `j4f9qe_ratings`
--

CREATE TABLE `j4f9qe_ratings` (
  `empID` int(11) NOT NULL,
  `rating` tinyint(2) NOT NULL DEFAULT 10
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `j4f9qe_ratings`
--

INSERT INTO `j4f9qe_ratings` (`empID`, `rating`) VALUES
(32, 15),
(37, 10);

-- --------------------------------------------------------

--
-- Table structure for table `j4f9qe_registeredcustomers`
--

CREATE TABLE `j4f9qe_registeredcustomers` (
  `userID` int(11) NOT NULL,
  `customerID` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `nic` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `j4f9qe_registeredcustomers`
--

INSERT INTO `j4f9qe_registeredcustomers` (`userID`, `customerID`, `email`, `address`, `nic`) VALUES
(37, 49, 'shehansandeepa82@gmail.com', 'Kurunegala', '971203021v'),
(41, 50, 'customer@xyz.abc', '14, Cild', '991231596V'),
(43, 52, 'shehansandeepa@gmail.com', '413/1', '973210500V');

-- --------------------------------------------------------

--
-- Table structure for table `j4f9qe_rescheduledapp`
--

CREATE TABLE `j4f9qe_rescheduledapp` (
  `rescheduleID` int(11) NOT NULL,
  `qID` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `j4f9qe_returns`
--

CREATE TABLE `j4f9qe_returns` (
  `returnsID` int(11) NOT NULL,
  `aodNum` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `acceptedBy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `j4f9qe_rightschanged`
--

CREATE TABLE `j4f9qe_rightschanged` (
  `id` int(11) NOT NULL,
  `managerID` int(11) NOT NULL,
  `ownerID` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `j4f9qe_sales`
--

CREATE TABLE `j4f9qe_sales` (
  `aodNum` int(11) NOT NULL,
  `buyerID` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `sellerID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `j4f9qe_salonstatus`
--

CREATE TABLE `j4f9qe_salonstatus` (
  `date` date NOT NULL,
  `openTime` time NOT NULL,
  `openerID` int(11) NOT NULL,
  `closeTime` time NOT NULL,
  `closerID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='stores data about the open/close state of the salon';

-- --------------------------------------------------------

--
-- Table structure for table `j4f9qe_service`
--

CREATE TABLE `j4f9qe_service` (
  `serviceID` int(11) NOT NULL,
  `serviceName` varchar(30) NOT NULL,
  `serviceDescription` varchar(100) NOT NULL,
  `timeTaken` varchar(10) NOT NULL,
  `price` int(11) NOT NULL,
  `holdFlag` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='stores data about services offered by the salon';

--
-- Dumping data for table `j4f9qe_service`
--

INSERT INTO `j4f9qe_service` (`serviceID`, `serviceName`, `serviceDescription`, `timeTaken`, `price`, `holdFlag`) VALUES
(2, 'Hair colour', 'Any color for all types', '60', 245, 0),
(3, 'Facials', 'Facials are essential for healthy skin for womens and men', '600', 7500, 1),
(4, 'Perming', 'Creating waves or curls', '120', 2300, 0);

-- --------------------------------------------------------

--
-- Table structure for table `j4f9qe_servicesheld`
--

CREATE TABLE `j4f9qe_servicesheld` (
  `id` int(11) NOT NULL,
  `upperStaffID` int(11) NOT NULL,
  `serviceID` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `j4f9qe_servicesmanaged`
--

CREATE TABLE `j4f9qe_servicesmanaged` (
  `id` int(11) NOT NULL,
  `upperStaffID` int(11) NOT NULL,
  `serviceID` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `j4f9qe_servicesprovided`
--

CREATE TABLE `j4f9qe_servicesprovided` (
  `serviceID` int(11) NOT NULL,
  `serviceProviderID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='stores data about services provided by each service provider';

--
-- Dumping data for table `j4f9qe_servicesprovided`
--

INSERT INTO `j4f9qe_servicesprovided` (`serviceID`, `serviceProviderID`) VALUES
(2, 32),
(2, 37);

-- --------------------------------------------------------

--
-- Stand-in structure for view `j4f9qe_spappointmentsdetails`
-- (See below for the actual view)
--
CREATE TABLE `j4f9qe_spappointmentsdetails` (
`qID` int(11)
,`date` date
,`startTime` time
,`endTime` time
,`cancelledFlag` int(11)
,`employeeID` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `j4f9qe_taskscontrolled`
--

CREATE TABLE `j4f9qe_taskscontrolled` (
  `id` int(11) NOT NULL,
  `rightsChangedID` int(11) NOT NULL,
  `taskID` int(11) NOT NULL,
  `toggledTo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='stores data about tasks that were allocated/unallocated';

-- --------------------------------------------------------

--
-- Table structure for table `j4f9qe_user`
--

CREATE TABLE `j4f9qe_user` (
  `userID` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `userType` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `j4f9qe_user`
--

INSERT INTO `j4f9qe_user` (`userID`, `email`, `userName`, `password`, `userType`) VALUES
(11, 'vinudayaratne@gmail.com', 'vinu', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 1),
(35, 'waruna@quicksalon.com', 'Waruna', 'e0b31aed3e54b99f2ea1d0352b31f0585ca99bb1624690aa7f7bc32c061a19cc', 3),
(37, 'shehansandeepa82@gmail.com', 'Shehan82', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', 4),
(38, 'uthpala@quicksalon.com', 'uthpala', 'e0b31aed3e54b99f2ea1d0352b31f0585ca99bb1624690aa7f7bc32c061a19cc', 3),
(39, 'shashira@quicksalon.com', 'Shashira', '3648462604e57f7c7052377f03750dddd972bf385c5f5f64673e35b6615b0ed5', 2),
(40, 'praditha@@quicksalon.com', 'Praditha', 'e0b31aed3e54b99f2ea1d0352b31f0585ca99bb1624690aa7f7bc32c061a19cc', 3),
(41, 'customer@xyz.abc', 'customer', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', 4),
(43, 'shehansandeepa@gmail.com', 'shehan', '8bb0cf6eb9b17d0f7d22b456f121257dc1254e1f01665370476383ea776df414', 4),
(44, 'shashiraweerarathne@gmail.com', 'Amal12', 'e0b31aed3e54b99f2ea1d0352b31f0585ca99bb1624690aa7f7bc32c061a19cc', 3),
(51, 'profildde.arceus@gmail.com', 'ere', 'e0b31aed3e54b99f2ea1d0352b31f0585ca99bb1624690aa7f7bc32c061a19cc', 2),
(52, 'prddofile.arceus@gmail.com', 'dfd', 'e0b31aed3e54b99f2ea1d0352b31f0585ca99bb1624690aa7f7bc32c061a19cc', 2);

-- --------------------------------------------------------

--
-- Table structure for table `j4f9qe_vendorcontacts`
--

CREATE TABLE `j4f9qe_vendorcontacts` (
  `id` int(11) NOT NULL,
  `vendorID` int(11) NOT NULL,
  `contactNum` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `j4f9qe_vendors`
--

CREATE TABLE `j4f9qe_vendors` (
  `vendorID` int(11) NOT NULL,
  `name` int(11) NOT NULL,
  `registrationNum` int(11) NOT NULL,
  `streetNum` int(11) DEFAULT NULL,
  `streetName` int(11) DEFAULT NULL,
  `town` int(11) DEFAULT NULL,
  `postCode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Stand-in structure for view `servicesp`
-- (See below for the actual view)
--
CREATE TABLE `servicesp` (
`serviceID` int(11)
,`serviceName` varchar(30)
,`timeTaken` varchar(10)
,`serviceProviderID` int(11)
,`Name` varchar(81)
);

-- --------------------------------------------------------

--
-- Structure for view `appointmentcount`
--
DROP TABLE IF EXISTS `appointmentcount`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `appointmentcount`  AS SELECT `app`.`appCount` AS `appCount`, `app`.`employeeID` AS `employeeID` FROM (select count(`j4f9qe_appointemtserviceview`.`qID`) AS `appCount`,`j4f9qe_appointemtserviceview`.`employeeID` AS `employeeID` from `j4f9qe_appointemtserviceview` group by `j4f9qe_appointemtserviceview`.`employeeID`) AS `app` ;

-- --------------------------------------------------------

--
-- Structure for view `appointmentsp`
--
DROP TABLE IF EXISTS `appointmentsp`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `appointmentsp`  AS SELECT `apt`.`qID` AS `QId`, `apt`.`date` AS `date`, `apt`.`startTime` AS `startTime`, `apt`.`endTime` AS `endTime`, `aa`.`employeeID` AS `spID`, concat(`e`.`firstName`,' ',`e`.`lastName`) AS `Name` FROM ((`j4f9qe_appointments` `apt` join `j4f9qe_appointmentsassigned` `aa` on(`apt`.`qID` = `aa`.`qID`)) join `j4f9qe_employee` `e` on(`aa`.`employeeID` = `e`.`employeeID`)) ;

-- --------------------------------------------------------

--
-- Structure for view `j4f9qe_appointemtserviceview`
--
DROP TABLE IF EXISTS `j4f9qe_appointemtserviceview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `j4f9qe_appointemtserviceview`  AS SELECT `aa`.`qID` AS `qID`, `a`.`date` AS `date`, `a`.`startTime` AS `startTime`, `a`.`endTime` AS `endTime`, `a`.`cancelledFlag` AS `cancelledFlag`, `aps`.`serviceID` AS `serviceID`, `aa`.`employeeID` AS `employeeID` FROM ((`j4f9qe_appointments` `a` left join `j4f9qe_appointmentsassigned` `aa` on(`a`.`qID` = `aa`.`qID`)) left join `j4f9qe_appointmentservice` `aps` on(`a`.`qID` = `aps`.`qID`)) ;

-- --------------------------------------------------------

--
-- Structure for view `j4f9qe_appointmentviewforus`
--
DROP TABLE IF EXISTS `j4f9qe_appointmentviewforus`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `j4f9qe_appointmentviewforus`  AS SELECT `a`.`customerID` AS `customerID`, `aa`.`qID` AS `qID`, `c`.`firstName` AS `firstName`, `c`.`lastName` AS `lastName`, `c`.`telephone` AS `telephone`, `s`.`serviceName` AS `serviceName`, `a`.`date` AS `date`, `a`.`startTime` AS `startTime`, `a`.`endTime` AS `endTime`, `a`.`cancelledFlag` AS `cancelledFlag`, `a`.`complete` AS `complete`, `aa`.`employeeID` AS `employeeID`, `e`.`firstName` AS `empFirstName`, `e`.`lastName` AS `empLastName`, `e`.`userID` AS `userID` FROM (((((`j4f9qe_appointmentsassigned` `aa` left join `j4f9qe_appointments` `a` on(`aa`.`qID` = `a`.`qID`)) left join `j4f9qe_customer` `c` on(`a`.`customerID` = `c`.`customerID`)) left join `j4f9qe_employee` `e` on(`aa`.`employeeID` = `e`.`employeeID`)) left join `j4f9qe_appointmentservice` `aps` on(`aa`.`qID` = `aps`.`qID`)) left join `j4f9qe_service` `s` on(`aps`.`serviceID` = `s`.`serviceID`)) ;

-- --------------------------------------------------------

--
-- Structure for view `j4f9qe_employeeratings`
--
DROP TABLE IF EXISTS `j4f9qe_employeeratings`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `j4f9qe_employeeratings`  AS SELECT `j4f9qe_employee`.`employeeID` AS `employeeID`, `j4f9qe_employee`.`firstName` AS `firstName`, `j4f9qe_employee`.`lastName` AS `lastName`, `j4f9qe_ratings`.`rating` AS `rating` FROM (`j4f9qe_employee` left join `j4f9qe_ratings` on(`j4f9qe_employee`.`employeeID` = `j4f9qe_ratings`.`empID`)) WHERE `j4f9qe_employee`.`isUpperStaffFlag` = 0 AND `j4f9qe_employee`.`removedFlag` = 0 AND `j4f9qe_employee`.`onLeaveFlag` = 0 ORDER BY `j4f9qe_ratings`.`rating` DESC ;

-- --------------------------------------------------------

--
-- Structure for view `j4f9qe_personalschedule`
--
DROP TABLE IF EXISTS `j4f9qe_personalschedule`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `j4f9qe_personalschedule`  AS SELECT `aa`.`qID` AS `qID`, `a`.`customerID` AS `customerID`, `a`.`date` AS `date`, `a`.`startTime` AS `startTime`, `a`.`endTime` AS `endTime`, `a`.`cancelledFlag` AS `cancelledFlag`, `c`.`firstName` AS `firstName`, `c`.`lastName` AS `lastName`, `c`.`telephone` AS `telephone`, `s`.`serviceName` AS `serviceName`, `aa`.`employeeID` AS `employeeID`, `e`.`userID` AS `userID` FROM (((((`j4f9qe_appointmentsassigned` `aa` left join `j4f9qe_appointments` `a` on(`aa`.`qID` = `a`.`qID`)) left join `j4f9qe_customer` `c` on(`a`.`customerID` = `c`.`customerID`)) left join `j4f9qe_employee` `e` on(`aa`.`employeeID` = `e`.`employeeID`)) left join `j4f9qe_appointmentservice` `aps` on(`aa`.`qID` = `aps`.`qID`)) left join `j4f9qe_service` `s` on(`aps`.`serviceID` = `s`.`serviceID`)) ;

-- --------------------------------------------------------

--
-- Structure for view `j4f9qe_spappointmentsdetails`
--
DROP TABLE IF EXISTS `j4f9qe_spappointmentsdetails`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `j4f9qe_spappointmentsdetails`  AS SELECT `a`.`qID` AS `qID`, `a`.`date` AS `date`, `a`.`startTime` AS `startTime`, `a`.`endTime` AS `endTime`, `a`.`cancelledFlag` AS `cancelledFlag`, `aa`.`employeeID` AS `employeeID` FROM (`j4f9qe_appointments` `a` join `j4f9qe_appointmentsassigned` `aa` on(`a`.`qID` = `aa`.`qID`)) ;

-- --------------------------------------------------------

--
-- Structure for view `servicesp`
--
DROP TABLE IF EXISTS `servicesp`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `servicesp`  AS SELECT `s`.`serviceID` AS `serviceID`, `s`.`serviceName` AS `serviceName`, `s`.`timeTaken` AS `timeTaken`, `sp`.`serviceProviderID` AS `serviceProviderID`, concat(`e`.`firstName`,' ',`e`.`lastName`) AS `Name` FROM ((`j4f9qe_service` `s` join `j4f9qe_servicesprovided` `sp` on(`s`.`serviceID` = `sp`.`serviceID`)) join `j4f9qe_employee` `e` on(`sp`.`serviceProviderID` = `e`.`employeeID`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `j4f9qe_accessrights`
--
ALTER TABLE `j4f9qe_accessrights`
  ADD PRIMARY KEY (`taskID`);

--
-- Indexes for table `j4f9qe_appointments`
--
ALTER TABLE `j4f9qe_appointments`
  ADD PRIMARY KEY (`qID`),
  ADD KEY `customerID` (`customerID`);

--
-- Indexes for table `j4f9qe_appointmentsassigned`
--
ALTER TABLE `j4f9qe_appointmentsassigned`
  ADD PRIMARY KEY (`qID`,`employeeID`),
  ADD KEY `employeeID` (`employeeID`),
  ADD KEY `qID` (`qID`);

--
-- Indexes for table `j4f9qe_appointmentservice`
--
ALTER TABLE `j4f9qe_appointmentservice`
  ADD PRIMARY KEY (`qID`,`serviceID`),
  ADD KEY `serviceID` (`serviceID`);

--
-- Indexes for table `j4f9qe_buyer`
--
ALTER TABLE `j4f9qe_buyer`
  ADD PRIMARY KEY (`buyerID`);

--
-- Indexes for table `j4f9qe_buyercontact`
--
ALTER TABLE `j4f9qe_buyercontact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `buyerID` (`buyerID`);

--
-- Indexes for table `j4f9qe_cancelledapp`
--
ALTER TABLE `j4f9qe_cancelledapp`
  ADD PRIMARY KEY (`cancelID`),
  ADD KEY `qID` (`qID`);

--
-- Indexes for table `j4f9qe_complaint`
--
ALTER TABLE `j4f9qe_complaint`
  ADD PRIMARY KEY (`complaintID`),
  ADD KEY `customerID` (`customerID`);

--
-- Indexes for table `j4f9qe_customer`
--
ALTER TABLE `j4f9qe_customer`
  ADD PRIMARY KEY (`customerID`);

--
-- Indexes for table `j4f9qe_employee`
--
ALTER TABLE `j4f9qe_employee`
  ADD PRIMARY KEY (`employeeID`);

--
-- Indexes for table `j4f9qe_goodsreceived`
--
ALTER TABLE `j4f9qe_goodsreceived`
  ADD PRIMARY KEY (`grnNum`),
  ADD KEY `receivedBy` (`receivedBy`);

--
-- Indexes for table `j4f9qe_leave`
--
ALTER TABLE `j4f9qe_leave`
  ADD PRIMARY KEY (`leaveID`),
  ADD KEY `empID` (`leaverID`);

--
-- Indexes for table `j4f9qe_package`
--
ALTER TABLE `j4f9qe_package`
  ADD PRIMARY KEY (`packageID`);

--
-- Indexes for table `j4f9qe_packagehasservices`
--
ALTER TABLE `j4f9qe_packagehasservices`
  ADD PRIMARY KEY (`packageID`,`serviceID`),
  ADD KEY `j4f9qe_packagehasservices_ibfk_2` (`serviceID`);

--
-- Indexes for table `j4f9qe_packagesmanaged`
--
ALTER TABLE `j4f9qe_packagesmanaged`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upperStaffID` (`upperStaffID`,`packageID`),
  ADD KEY `j4f9qe_packagemanaged_ibfk_2` (`packageID`);

--
-- Indexes for table `j4f9qe_products`
--
ALTER TABLE `j4f9qe_products`
  ADD PRIMARY KEY (`productID`);

--
-- Indexes for table `j4f9qe_productsingrn`
--
ALTER TABLE `j4f9qe_productsingrn`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productID` (`productID`),
  ADD KEY `grnNum` (`grnNum`);

--
-- Indexes for table `j4f9qe_productspurchased`
--
ALTER TABLE `j4f9qe_productspurchased`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productID` (`productID`),
  ADD KEY `poNum` (`poNum`);

--
-- Indexes for table `j4f9qe_productsreturned`
--
ALTER TABLE `j4f9qe_productsreturned`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aodNum` (`returnsID`,`productID`),
  ADD KEY `j4f9qe_productsreturned_ibfk_2` (`productID`);

--
-- Indexes for table `j4f9qe_productssold`
--
ALTER TABLE `j4f9qe_productssold`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aodNum` (`aodNum`,`productID`),
  ADD KEY `j4f9qe_productssold_ibfk_2` (`productID`);

--
-- Indexes for table `j4f9qe_purchases`
--
ALTER TABLE `j4f9qe_purchases`
  ADD PRIMARY KEY (`poNum`),
  ADD KEY `vendorID` (`vendorID`,`upperStaffID`),
  ADD KEY `j4f9qe_purchases_ibfk_2` (`upperStaffID`);

--
-- Indexes for table `j4f9qe_ratings`
--
ALTER TABLE `j4f9qe_ratings`
  ADD PRIMARY KEY (`empID`);

--
-- Indexes for table `j4f9qe_registeredcustomers`
--
ALTER TABLE `j4f9qe_registeredcustomers`
  ADD PRIMARY KEY (`userID`,`customerID`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `userID` (`userID`),
  ADD KEY `customerID` (`customerID`);

--
-- Indexes for table `j4f9qe_rescheduledapp`
--
ALTER TABLE `j4f9qe_rescheduledapp`
  ADD PRIMARY KEY (`rescheduleID`),
  ADD KEY `qID` (`qID`);

--
-- Indexes for table `j4f9qe_returns`
--
ALTER TABLE `j4f9qe_returns`
  ADD PRIMARY KEY (`returnsID`),
  ADD UNIQUE KEY `aodNum` (`aodNum`,`acceptedBy`),
  ADD UNIQUE KEY `aodNum_2` (`aodNum`,`acceptedBy`),
  ADD KEY `aodNum_3` (`aodNum`,`acceptedBy`),
  ADD KEY `j4f9qe_returns_ibfk_2` (`acceptedBy`);

--
-- Indexes for table `j4f9qe_rightschanged`
--
ALTER TABLE `j4f9qe_rightschanged`
  ADD PRIMARY KEY (`id`),
  ADD KEY `managerID` (`managerID`,`ownerID`),
  ADD KEY `ownerID` (`ownerID`);

--
-- Indexes for table `j4f9qe_sales`
--
ALTER TABLE `j4f9qe_sales`
  ADD PRIMARY KEY (`aodNum`),
  ADD KEY `buyerID` (`buyerID`,`sellerID`),
  ADD KEY `j4f9qe_sales_ibfk_2` (`sellerID`);

--
-- Indexes for table `j4f9qe_salonstatus`
--
ALTER TABLE `j4f9qe_salonstatus`
  ADD PRIMARY KEY (`date`,`openTime`),
  ADD KEY `openerID` (`openerID`,`closerID`),
  ADD KEY `j4f9qe_salonstatus_ibfk_1` (`closerID`);

--
-- Indexes for table `j4f9qe_service`
--
ALTER TABLE `j4f9qe_service`
  ADD PRIMARY KEY (`serviceID`);

--
-- Indexes for table `j4f9qe_servicesheld`
--
ALTER TABLE `j4f9qe_servicesheld`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upperStaffID` (`upperStaffID`,`serviceID`),
  ADD KEY `j4f9qe_servicesheld_ibfk_2` (`serviceID`);

--
-- Indexes for table `j4f9qe_servicesmanaged`
--
ALTER TABLE `j4f9qe_servicesmanaged`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upperStaffID` (`upperStaffID`,`serviceID`),
  ADD KEY `j4f9qe_servicesmanaged_ibfk_2` (`serviceID`);

--
-- Indexes for table `j4f9qe_servicesprovided`
--
ALTER TABLE `j4f9qe_servicesprovided`
  ADD PRIMARY KEY (`serviceID`,`serviceProviderID`),
  ADD KEY `serviceProviderID` (`serviceProviderID`);

--
-- Indexes for table `j4f9qe_taskscontrolled`
--
ALTER TABLE `j4f9qe_taskscontrolled`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rightsChangedID` (`rightsChangedID`),
  ADD KEY `taskID` (`taskID`);

--
-- Indexes for table `j4f9qe_user`
--
ALTER TABLE `j4f9qe_user`
  ADD PRIMARY KEY (`userID`,`userName`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `j4f9qe_vendorcontacts`
--
ALTER TABLE `j4f9qe_vendorcontacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vendorID` (`vendorID`);

--
-- Indexes for table `j4f9qe_vendors`
--
ALTER TABLE `j4f9qe_vendors`
  ADD PRIMARY KEY (`vendorID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `j4f9qe_accessrights`
--
ALTER TABLE `j4f9qe_accessrights`
  MODIFY `taskID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `j4f9qe_appointments`
--
ALTER TABLE `j4f9qe_appointments`
  MODIFY `qID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `j4f9qe_buyer`
--
ALTER TABLE `j4f9qe_buyer`
  MODIFY `buyerID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `j4f9qe_buyercontact`
--
ALTER TABLE `j4f9qe_buyercontact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `j4f9qe_cancelledapp`
--
ALTER TABLE `j4f9qe_cancelledapp`
  MODIFY `cancelID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `j4f9qe_complaint`
--
ALTER TABLE `j4f9qe_complaint`
  MODIFY `complaintID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `j4f9qe_customer`
--
ALTER TABLE `j4f9qe_customer`
  MODIFY `customerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `j4f9qe_employee`
--
ALTER TABLE `j4f9qe_employee`
  MODIFY `employeeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `j4f9qe_goodsreceived`
--
ALTER TABLE `j4f9qe_goodsreceived`
  MODIFY `grnNum` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `j4f9qe_leave`
--
ALTER TABLE `j4f9qe_leave`
  MODIFY `leaveID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `j4f9qe_package`
--
ALTER TABLE `j4f9qe_package`
  MODIFY `packageID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `j4f9qe_packagesmanaged`
--
ALTER TABLE `j4f9qe_packagesmanaged`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `j4f9qe_products`
--
ALTER TABLE `j4f9qe_products`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `j4f9qe_productsingrn`
--
ALTER TABLE `j4f9qe_productsingrn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `j4f9qe_productspurchased`
--
ALTER TABLE `j4f9qe_productspurchased`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `j4f9qe_productsreturned`
--
ALTER TABLE `j4f9qe_productsreturned`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `j4f9qe_productssold`
--
ALTER TABLE `j4f9qe_productssold`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `j4f9qe_purchases`
--
ALTER TABLE `j4f9qe_purchases`
  MODIFY `poNum` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `j4f9qe_rescheduledapp`
--
ALTER TABLE `j4f9qe_rescheduledapp`
  MODIFY `rescheduleID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `j4f9qe_returns`
--
ALTER TABLE `j4f9qe_returns`
  MODIFY `returnsID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `j4f9qe_rightschanged`
--
ALTER TABLE `j4f9qe_rightschanged`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `j4f9qe_sales`
--
ALTER TABLE `j4f9qe_sales`
  MODIFY `aodNum` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `j4f9qe_service`
--
ALTER TABLE `j4f9qe_service`
  MODIFY `serviceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `j4f9qe_servicesheld`
--
ALTER TABLE `j4f9qe_servicesheld`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `j4f9qe_servicesmanaged`
--
ALTER TABLE `j4f9qe_servicesmanaged`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `j4f9qe_taskscontrolled`
--
ALTER TABLE `j4f9qe_taskscontrolled`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `j4f9qe_user`
--
ALTER TABLE `j4f9qe_user`
  MODIFY `userID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `j4f9qe_vendorcontacts`
--
ALTER TABLE `j4f9qe_vendorcontacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `j4f9qe_vendors`
--
ALTER TABLE `j4f9qe_vendors`
  MODIFY `vendorID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `j4f9qe_appointments`
--
ALTER TABLE `j4f9qe_appointments`
  ADD CONSTRAINT `j4f9qe_appointments_ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `j4f9qe_customer` (`customerID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `j4f9qe_appointmentsassigned`
--
ALTER TABLE `j4f9qe_appointmentsassigned`
  ADD CONSTRAINT `j4f9qe_appointmentsassigned_ibfk_1` FOREIGN KEY (`employeeID`) REFERENCES `j4f9qe_employee` (`employeeID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `j4f9qe_appointmentsassigned_ibfk_2` FOREIGN KEY (`qID`) REFERENCES `j4f9qe_appointments` (`qID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `j4f9qe_appointmentservice`
--
ALTER TABLE `j4f9qe_appointmentservice`
  ADD CONSTRAINT `j4f9qe_appointmentservice_ibfk_1` FOREIGN KEY (`qID`) REFERENCES `j4f9qe_appointments` (`qID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `j4f9qe_appointmentservice_ibfk_2` FOREIGN KEY (`serviceID`) REFERENCES `j4f9qe_service` (`serviceID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `j4f9qe_buyercontact`
--
ALTER TABLE `j4f9qe_buyercontact`
  ADD CONSTRAINT `j4f9qe_buyercontact_ibfk_1` FOREIGN KEY (`buyerID`) REFERENCES `j4f9qe_buyer` (`buyerID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `j4f9qe_cancelledapp`
--
ALTER TABLE `j4f9qe_cancelledapp`
  ADD CONSTRAINT `j4f9qe_cancelledapp_ibfk_1` FOREIGN KEY (`qID`) REFERENCES `j4f9qe_appointments` (`qID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `j4f9qe_complaint`
--
ALTER TABLE `j4f9qe_complaint`
  ADD CONSTRAINT `j4f9qe_complaint_ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `j4f9qe_customer` (`customerID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `j4f9qe_goodsreceived`
--
ALTER TABLE `j4f9qe_goodsreceived`
  ADD CONSTRAINT `j4f9qe_goodreceived_ibfk_1` FOREIGN KEY (`receivedBy`) REFERENCES `j4f9qe_employee` (`employeeID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `j4f9qe_leave`
--
ALTER TABLE `j4f9qe_leave`
  ADD CONSTRAINT `j4f9qe_leave_ibfk_2` FOREIGN KEY (`leaverID`) REFERENCES `j4f9qe_employee` (`employeeID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `j4f9qe_packagehasservices`
--
ALTER TABLE `j4f9qe_packagehasservices`
  ADD CONSTRAINT `j4f9qe_packagehasservices_ibfk_1` FOREIGN KEY (`packageID`) REFERENCES `j4f9qe_package` (`packageID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `j4f9qe_packagehasservices_ibfk_2` FOREIGN KEY (`serviceID`) REFERENCES `j4f9qe_service` (`serviceID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `j4f9qe_packagesmanaged`
--
ALTER TABLE `j4f9qe_packagesmanaged`
  ADD CONSTRAINT `j4f9qe_packagemanaged_ibfk_1` FOREIGN KEY (`upperStaffID`) REFERENCES `j4f9qe_employee` (`employeeID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `j4f9qe_packagemanaged_ibfk_2` FOREIGN KEY (`packageID`) REFERENCES `j4f9qe_package` (`packageID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `j4f9qe_productsingrn`
--
ALTER TABLE `j4f9qe_productsingrn`
  ADD CONSTRAINT `j4f9qe_productsingrn_ibfk_1` FOREIGN KEY (`grnNum`) REFERENCES `j4f9qe_goodsreceived` (`grnNum`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `j4f9qe_productsingrn_ibfk_2` FOREIGN KEY (`productID`) REFERENCES `j4f9qe_products` (`productID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `j4f9qe_productspurchased`
--
ALTER TABLE `j4f9qe_productspurchased`
  ADD CONSTRAINT `j4f9qe_productspurchased_ibfk_1` FOREIGN KEY (`poNum`) REFERENCES `j4f9qe_purchases` (`poNum`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `j4f9qe_productspurchased_ibfk_2` FOREIGN KEY (`productID`) REFERENCES `j4f9qe_products` (`productID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `j4f9qe_productsreturned`
--
ALTER TABLE `j4f9qe_productsreturned`
  ADD CONSTRAINT `j4f9qe_productsreturned_ibfk_1` FOREIGN KEY (`returnsID`) REFERENCES `j4f9qe_returns` (`returnsID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `j4f9qe_productsreturned_ibfk_2` FOREIGN KEY (`productID`) REFERENCES `j4f9qe_products` (`productID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `j4f9qe_productssold`
--
ALTER TABLE `j4f9qe_productssold`
  ADD CONSTRAINT `j4f9qe_productssold_ibfk_1` FOREIGN KEY (`aodNum`) REFERENCES `j4f9qe_sales` (`aodNum`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `j4f9qe_productssold_ibfk_2` FOREIGN KEY (`productID`) REFERENCES `j4f9qe_products` (`productID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `j4f9qe_purchases`
--
ALTER TABLE `j4f9qe_purchases`
  ADD CONSTRAINT `j4f9qe_purchases_ibfk_1` FOREIGN KEY (`vendorID`) REFERENCES `j4f9qe_vendors` (`vendorID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `j4f9qe_purchases_ibfk_2` FOREIGN KEY (`upperStaffID`) REFERENCES `j4f9qe_employee` (`employeeID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `j4f9qe_ratings`
--
ALTER TABLE `j4f9qe_ratings`
  ADD CONSTRAINT `fromEmployee` FOREIGN KEY (`empID`) REFERENCES `j4f9qe_employee` (`employeeID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `j4f9qe_registeredcustomers`
--
ALTER TABLE `j4f9qe_registeredcustomers`
  ADD CONSTRAINT `j4f9qe_registeredcustomers_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `j4f9qe_user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `j4f9qe_registeredcustomers_ibfk_2` FOREIGN KEY (`customerID`) REFERENCES `j4f9qe_customer` (`customerID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `j4f9qe_rescheduledapp`
--
ALTER TABLE `j4f9qe_rescheduledapp`
  ADD CONSTRAINT `j4f9qe_rescheduledapp_ibfk_1` FOREIGN KEY (`qID`) REFERENCES `j4f9qe_appointments` (`qID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `j4f9qe_returns`
--
ALTER TABLE `j4f9qe_returns`
  ADD CONSTRAINT `j4f9qe_returns_ibfk_1` FOREIGN KEY (`aodNum`) REFERENCES `j4f9qe_sales` (`aodNum`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `j4f9qe_returns_ibfk_2` FOREIGN KEY (`acceptedBy`) REFERENCES `j4f9qe_employee` (`employeeID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `j4f9qe_rightschanged`
--
ALTER TABLE `j4f9qe_rightschanged`
  ADD CONSTRAINT `j4f9qe_rightschanged_ibfk_1` FOREIGN KEY (`managerID`) REFERENCES `j4f9qe_employee` (`employeeID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `j4f9qe_rightschanged_ibfk_2` FOREIGN KEY (`ownerID`) REFERENCES `j4f9qe_employee` (`employeeID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `j4f9qe_sales`
--
ALTER TABLE `j4f9qe_sales`
  ADD CONSTRAINT `j4f9qe_sales_ibfk_1` FOREIGN KEY (`buyerID`) REFERENCES `j4f9qe_buyer` (`buyerID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `j4f9qe_sales_ibfk_2` FOREIGN KEY (`sellerID`) REFERENCES `j4f9qe_employee` (`employeeID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `j4f9qe_salonstatus`
--
ALTER TABLE `j4f9qe_salonstatus`
  ADD CONSTRAINT `j4f9qe_salonstatus_ibfk_1` FOREIGN KEY (`closerID`) REFERENCES `j4f9qe_employee` (`employeeID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `j4f9qe_salonstatus_ibfk_2` FOREIGN KEY (`openerID`) REFERENCES `j4f9qe_employee` (`employeeID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `j4f9qe_servicesheld`
--
ALTER TABLE `j4f9qe_servicesheld`
  ADD CONSTRAINT `j4f9qe_servicesheld_ibfk_1` FOREIGN KEY (`upperStaffID`) REFERENCES `j4f9qe_employee` (`employeeID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `j4f9qe_servicesheld_ibfk_2` FOREIGN KEY (`serviceID`) REFERENCES `j4f9qe_service` (`serviceID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `j4f9qe_servicesmanaged`
--
ALTER TABLE `j4f9qe_servicesmanaged`
  ADD CONSTRAINT `j4f9qe_servicesmanaged_ibfk_1` FOREIGN KEY (`upperStaffID`) REFERENCES `j4f9qe_employee` (`employeeID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `j4f9qe_servicesmanaged_ibfk_2` FOREIGN KEY (`serviceID`) REFERENCES `j4f9qe_service` (`serviceID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `j4f9qe_servicesprovided`
--
ALTER TABLE `j4f9qe_servicesprovided`
  ADD CONSTRAINT `j4f9qe_servicesprovided_ibfk_1` FOREIGN KEY (`serviceID`) REFERENCES `j4f9qe_service` (`serviceID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `j4f9qe_servicesprovided_ibfk_2` FOREIGN KEY (`serviceProviderID`) REFERENCES `j4f9qe_employee` (`employeeID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `j4f9qe_taskscontrolled`
--
ALTER TABLE `j4f9qe_taskscontrolled`
  ADD CONSTRAINT `j4f9qe_taskscontrolled_ibfk_1` FOREIGN KEY (`taskID`) REFERENCES `j4f9qe_accessrights` (`taskID`),
  ADD CONSTRAINT `j4f9qe_taskscontrolled_ibfk_2` FOREIGN KEY (`rightsChangedID`) REFERENCES `j4f9qe_rightschanged` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `j4f9qe_vendorcontacts`
--
ALTER TABLE `j4f9qe_vendorcontacts`
  ADD CONSTRAINT `j4f9qe_vendorcontacts_ibfk_1` FOREIGN KEY (`vendorID`) REFERENCES `j4f9qe_vendors` (`vendorID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
