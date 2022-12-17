-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2021 at 05:53 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `busyless`
--

-- --------------------------------------------------------

--
-- Table structure for table `business`
--

CREATE TABLE `business` (
  `Business_name` varchar(200) NOT NULL,
  `B_type` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `business`
--

INSERT INTO `business` (`Business_name`, `B_type`) VALUES
('Teba Steels', 'Hardware');

-- --------------------------------------------------------

--
-- Table structure for table `businessemail`
--

CREATE TABLE `businessemail` (
  `Business_name` varchar(200) NOT NULL,
  `B_emailAdd` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `businessemail`
--

INSERT INTO `businessemail` (`Business_name`, `B_emailAdd`) VALUES
('Teba Steels', 'teba1@gmail.com'),
('Teba Steels', 'teba2@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `businesslocation`
--

CREATE TABLE `businesslocation` (
  `Business_name` varchar(200) NOT NULL,
  `B_location` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `businesslocation`
--

INSERT INTO `businesslocation` (`Business_name`, `B_location`) VALUES
('Teba Steels', 'Agar Road'),
('Teba Steels', 'Harifatak bridge');

-- --------------------------------------------------------

--
-- Table structure for table `businessphone`
--

CREATE TABLE `businessphone` (
  `Business_name` varchar(200) NOT NULL,
  `B_PhoneNos` bigint(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `businessphone`
--

INSERT INTO `businessphone` (`Business_name`, `B_PhoneNos`) VALUES
('Teba Steels', 8888888888),
('Teba Steels', 9999999999);

-- --------------------------------------------------------

--
-- Table structure for table `credit`
--

CREATE TABLE `credit` (
  `Amount_payed` int(200) NOT NULL,
  `C_id` int(200) NOT NULL,
  `Business_name` varchar(200) NOT NULL,
  `Goods_id` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `credit`
--

INSERT INTO `credit` (`Amount_payed`, `C_id`, `Business_name`, `Goods_id`) VALUES
(100, 2001, 'Teba Steels', 11);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `C_id` int(80) NOT NULL DEFAULT 2001,
  `F_name` varchar(200) NOT NULL,
  `M_name` varchar(200) DEFAULT NULL,
  `L_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`C_id`, `F_name`, `M_name`, `L_name`) VALUES
(2001, 'Somesh', NULL, 'Anjana');

-- --------------------------------------------------------

--
-- Table structure for table `customeremail`
--

CREATE TABLE `customeremail` (
  `C_id` int(200) NOT NULL,
  `C_emailAdd` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customeremail`
--

INSERT INTO `customeremail` (`C_id`, `C_emailAdd`) VALUES
(2001, 'somesh1@gmail.com'),
(2001, 'somesh2@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `customerlocation`
--

CREATE TABLE `customerlocation` (
  `C_id` int(200) NOT NULL,
  `C_location` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customerlocation`
--

INSERT INTO `customerlocation` (`C_id`, `C_location`) VALUES
(2001, 'javasia gao'),
(2001, 'lekoda gao');

-- --------------------------------------------------------

--
-- Table structure for table `customerphone`
--

CREATE TABLE `customerphone` (
  `C_id` int(200) NOT NULL,
  `C_PhoneNos` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customerphone`
--

INSERT INTO `customerphone` (`C_id`, `C_PhoneNos`) VALUES
(2001, 658694259),
(2001, 982628352);

-- --------------------------------------------------------

--
-- Table structure for table `goods`
--

CREATE TABLE `goods` (
  `Goods_id` int(80) NOT NULL DEFAULT 11,
  `Goods_type` varchar(200) NOT NULL,
  `Goods_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `goods`
--

INSERT INTO `goods` (`Goods_id`, `Goods_type`, `Goods_name`) VALUES
(11, 'Mettalic', 'Screw');

-- --------------------------------------------------------

--
-- Table structure for table `owns`
--

CREATE TABLE `owns` (
  `Goods_id` int(80) NOT NULL,
  `Business_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `owns`
--

INSERT INTO `owns` (`Goods_id`, `Business_name`) VALUES
(11, 'Teba Steels');

-- --------------------------------------------------------

--
-- Table structure for table `purchased`
--

CREATE TABLE `purchased` (
  `Goods_id` int(80) NOT NULL,
  `P_qty` int(200) DEFAULT NULL,
  `P_date` date DEFAULT NULL,
  `P_time` time(5) DEFAULT NULL,
  `P_cost` int(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchased`
--

INSERT INTO `purchased` (`Goods_id`, `P_qty`, `P_date`, `P_time`, `P_cost`) VALUES
(11, 20, '2000-02-11', '11:30:20.00000', 300);

-- --------------------------------------------------------

--
-- Table structure for table `purchasedfrom`
--

CREATE TABLE `purchasedfrom` (
  `Goods_id` int(200) NOT NULL,
  `Vendor_id` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchasedfrom`
--

INSERT INTO `purchasedfrom` (`Goods_id`, `Vendor_id`) VALUES
(11, 101);

-- --------------------------------------------------------

--
-- Table structure for table `runs`
--

CREATE TABLE `runs` (
  `User_id` int(50) NOT NULL,
  `Business_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `runs`
--

INSERT INTO `runs` (`User_id`, `Business_name`) VALUES
(1, 'Teba Steels');

-- --------------------------------------------------------

--
-- Table structure for table `sold`
--

CREATE TABLE `sold` (
  `Goods_id` int(200) NOT NULL,
  `S_qty` int(200) NOT NULL,
  `S_date` date NOT NULL,
  `S_time` time(6) NOT NULL,
  `S_cost` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sold`
--

INSERT INTO `sold` (`Goods_id`, `S_qty`, `S_date`, `S_time`, `S_cost`) VALUES
(11, 20, '2000-03-12', '01:00:00.000000', 10);

-- --------------------------------------------------------

--
-- Table structure for table `soldto`
--

CREATE TABLE `soldto` (
  `Goods_id` int(200) NOT NULL,
  `C_id` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `soldto`
--

INSERT INTO `soldto` (`Goods_id`, `C_id`) VALUES
(11, 2001);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `User_id` int(80) NOT NULL,
  `Username` varchar(200) DEFAULT NULL,
  `Password` varchar(200) NOT NULL,
  `RecKey` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`User_id`, `Username`, `Password`, `RecKey`) VALUES
(1, 'username', 'password', 'key');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `Vendor_id` int(200) NOT NULL DEFAULT 101,
  `F_name` varchar(50) NOT NULL,
  `M_name` varchar(50) DEFAULT NULL,
  `L_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`Vendor_id`, `F_name`, `M_name`, `L_name`) VALUES
(101, 'Heera', NULL, 'Jain');

-- --------------------------------------------------------

--
-- Table structure for table `vendoremail`
--

CREATE TABLE `vendoremail` (
  `Vendor_id` int(80) NOT NULL,
  `V_emailAdd` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vendoremail`
--

INSERT INTO `vendoremail` (`Vendor_id`, `V_emailAdd`) VALUES
(101, 'heera1@gmail.com'),
(101, 'heera2@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `vendorlocation`
--

CREATE TABLE `vendorlocation` (
  `Vendor_id` int(200) NOT NULL,
  `V_location` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vendorlocation`
--

INSERT INTO `vendorlocation` (`Vendor_id`, `V_location`) VALUES
(101, 'Khajrana'),
(101, 'Neelganga');

-- --------------------------------------------------------

--
-- Table structure for table `vendorphone`
--

CREATE TABLE `vendorphone` (
  `Vendor_id` int(200) NOT NULL,
  `V_PhoneNos` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vendorphone`
--

INSERT INTO `vendorphone` (`Vendor_id`, `V_PhoneNos`) VALUES
(101, 734252423),
(101, 734353433);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `business`
--
ALTER TABLE `business`
  ADD PRIMARY KEY (`Business_name`);

--
-- Indexes for table `businessemail`
--
ALTER TABLE `businessemail`
  ADD PRIMARY KEY (`Business_name`,`B_emailAdd`);

--
-- Indexes for table `businesslocation`
--
ALTER TABLE `businesslocation`
  ADD PRIMARY KEY (`Business_name`,`B_location`);

--
-- Indexes for table `businessphone`
--
ALTER TABLE `businessphone`
  ADD PRIMARY KEY (`Business_name`,`B_PhoneNos`);

--
-- Indexes for table `credit`
--
ALTER TABLE `credit`
  ADD KEY `CrFk` (`Business_name`),
  ADD KEY `CrgFk` (`Goods_id`),
  ADD KEY `CrcusFK` (`C_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`C_id`);

--
-- Indexes for table `customeremail`
--
ALTER TABLE `customeremail`
  ADD PRIMARY KEY (`C_id`,`C_emailAdd`);

--
-- Indexes for table `customerlocation`
--
ALTER TABLE `customerlocation`
  ADD PRIMARY KEY (`C_id`,`C_location`);

--
-- Indexes for table `customerphone`
--
ALTER TABLE `customerphone`
  ADD PRIMARY KEY (`C_id`,`C_PhoneNos`);

--
-- Indexes for table `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`Goods_id`);

--
-- Indexes for table `owns`
--
ALTER TABLE `owns`
  ADD PRIMARY KEY (`Business_name`,`Goods_id`),
  ADD KEY `Ogfk` (`Goods_id`);

--
-- Indexes for table `purchased`
--
ALTER TABLE `purchased`
  ADD PRIMARY KEY (`Goods_id`);

--
-- Indexes for table `purchasedfrom`
--
ALTER TABLE `purchasedfrom`
  ADD PRIMARY KEY (`Goods_id`,`Vendor_id`),
  ADD KEY `PFvfk` (`Vendor_id`);

--
-- Indexes for table `runs`
--
ALTER TABLE `runs`
  ADD PRIMARY KEY (`User_id`,`Business_name`),
  ADD KEY `runs_fk2` (`Business_name`);

--
-- Indexes for table `sold`
--
ALTER TABLE `sold`
  ADD KEY `sfk` (`Goods_id`);

--
-- Indexes for table `soldto`
--
ALTER TABLE `soldto`
  ADD PRIMARY KEY (`Goods_id`,`C_id`),
  ADD KEY `Stcfk` (`C_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`User_id`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`Vendor_id`);

--
-- Indexes for table `vendoremail`
--
ALTER TABLE `vendoremail`
  ADD PRIMARY KEY (`Vendor_id`,`V_emailAdd`);

--
-- Indexes for table `vendorlocation`
--
ALTER TABLE `vendorlocation`
  ADD PRIMARY KEY (`Vendor_id`,`V_location`);

--
-- Indexes for table `vendorphone`
--
ALTER TABLE `vendorphone`
  ADD PRIMARY KEY (`Vendor_id`,`V_PhoneNos`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `businessemail`
--
ALTER TABLE `businessemail`
  ADD CONSTRAINT `Befk` FOREIGN KEY (`Business_name`) REFERENCES `business` (`Business_name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `businesslocation`
--
ALTER TABLE `businesslocation`
  ADD CONSTRAINT `Bfk` FOREIGN KEY (`Business_name`) REFERENCES `business` (`Business_name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `businessphone`
--
ALTER TABLE `businessphone`
  ADD CONSTRAINT `Bpfk` FOREIGN KEY (`Business_name`) REFERENCES `business` (`Business_name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `credit`
--
ALTER TABLE `credit`
  ADD CONSTRAINT `CrFk` FOREIGN KEY (`Business_name`) REFERENCES `business` (`Business_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `CrcusFK` FOREIGN KEY (`C_id`) REFERENCES `customer` (`C_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `CrgFk` FOREIGN KEY (`Goods_id`) REFERENCES `goods` (`Goods_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customeremail`
--
ALTER TABLE `customeremail`
  ADD CONSTRAINT `Cfk` FOREIGN KEY (`C_id`) REFERENCES `customer` (`C_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customerlocation`
--
ALTER TABLE `customerlocation`
  ADD CONSTRAINT `Clfk` FOREIGN KEY (`C_id`) REFERENCES `customer` (`C_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customerphone`
--
ALTER TABLE `customerphone`
  ADD CONSTRAINT `Cpfk` FOREIGN KEY (`C_id`) REFERENCES `customer` (`C_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `owns`
--
ALTER TABLE `owns`
  ADD CONSTRAINT `Obfk` FOREIGN KEY (`Business_name`) REFERENCES `business` (`Business_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Ogfk` FOREIGN KEY (`Goods_id`) REFERENCES `goods` (`Goods_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `purchased`
--
ALTER TABLE `purchased`
  ADD CONSTRAINT `pfk` FOREIGN KEY (`Goods_id`) REFERENCES `goods` (`Goods_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `purchasedfrom`
--
ALTER TABLE `purchasedfrom`
  ADD CONSTRAINT `PFgfk` FOREIGN KEY (`Goods_id`) REFERENCES `goods` (`Goods_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `PFvfk` FOREIGN KEY (`Vendor_id`) REFERENCES `vendor` (`Vendor_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `runs`
--
ALTER TABLE `runs`
  ADD CONSTRAINT `runs_fk` FOREIGN KEY (`User_id`) REFERENCES `user` (`User_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `runs_fk2` FOREIGN KEY (`Business_name`) REFERENCES `business` (`Business_name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sold`
--
ALTER TABLE `sold`
  ADD CONSTRAINT `sfk` FOREIGN KEY (`Goods_id`) REFERENCES `goods` (`Goods_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `soldto`
--
ALTER TABLE `soldto`
  ADD CONSTRAINT `Stcfk` FOREIGN KEY (`C_id`) REFERENCES `customer` (`C_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Stfk` FOREIGN KEY (`Goods_id`) REFERENCES `goods` (`Goods_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vendoremail`
--
ALTER TABLE `vendoremail`
  ADD CONSTRAINT `Vfk` FOREIGN KEY (`Vendor_id`) REFERENCES `vendor` (`Vendor_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vendorlocation`
--
ALTER TABLE `vendorlocation`
  ADD CONSTRAINT `Vlfk` FOREIGN KEY (`Vendor_id`) REFERENCES `vendor` (`Vendor_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vendorphone`
--
ALTER TABLE `vendorphone`
  ADD CONSTRAINT `Vpfk` FOREIGN KEY (`Vendor_id`) REFERENCES `vendor` (`Vendor_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
