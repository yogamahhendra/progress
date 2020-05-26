-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2020 at 09:32 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loketku`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `bookingID` varchar(25) NOT NULL,
  `kapalID` varchar(25) DEFAULT NULL,
  `userID` int(11) NOT NULL,
  `tgl_pemesanan` date DEFAULT NULL,
  `waktu` enum('08:00','10:30','12:30','14:00','16:30') DEFAULT NULL,
  `rute` enum('gili terawangan','nusa penida') DEFAULT NULL,
  `nama_dermaga` varchar(30) NOT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `hargaTot` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`bookingID`, `kapalID`, `userID`, `tgl_pemesanan`, `waktu`, `rute`, `nama_dermaga`, `jumlah`, `hargaTot`) VALUES
('1212', 'A1010', 1001, '2020-04-24', '12:30', 'gili terawangan', 'Sunbay', 3, 90000),
('1213', 'B1900', 1002, '2020-05-26', '14:00', 'nusa penida', 'Gilibay', 2, 50000),
('1215', 'B1996', 1003, '2020-04-30', '08:00', 'nusa penida', 'Sunbay', 1, 20000);

-- --------------------------------------------------------

--
-- Table structure for table `crew`
--

CREATE TABLE `crew` (
  `crewID` varchar(25) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `gender` enum('laki-laki','perempuan') DEFAULT NULL,
  `noTelp` varchar(30) DEFAULT NULL,
  `telpKeluarga` varchar(30) DEFAULT NULL,
  `kapalID` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crew`
--

INSERT INTO `crew` (`crewID`, `nama`, `gender`, `noTelp`, `telpKeluarga`, `kapalID`) VALUES
('1111', 'bambang', 'laki-laki', '089249983839', '089219928356', 'A1010'),
('2222', 'yudit', 'laki-laki', '089244727365', '089288374651', 'A1010'),
('3333', 'aryo', 'laki-laki', '089237422839', '089210029387', 'A1010'),
('4444', 'wahyu	', 'laki-laki', '089242993849', '089211625543', 'B1900'),
('5555', 'susanto', 'laki-laki', '089219287369', '089248882736', 'B1900'),
('6666', 'muliya', 'laki-laki', '089244291024', '089243987655', 'B1900'),
('7777', 'adit', 'laki-laki', '089244102935', '089240987899', 'B1996'),
('8888', 'bimo', 'laki-laki', '089244773566', '089200227369', 'B1996'),
('9999', 'andro', 'laki-laki', '089244778824', '089249873620', 'B1996');

-- --------------------------------------------------------

--
-- Table structure for table `kapal`
--

CREATE TABLE `kapal` (
  `kapalID` varchar(25) NOT NULL,
  `jenis` enum('fast boat','Roro','jukung/motor boat') DEFAULT NULL,
  `descrip` varchar(500) DEFAULT NULL,
  `waktu` enum('08:00','10:30','12:30','14:00','16:30') DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `kapasitas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kapal`
--

INSERT INTO `kapal` (`kapalID`, `jenis`, `descrip`, `waktu`, `harga`, `kapasitas`) VALUES
('A0972', 'fast boat', NULL, '12:30', 30000, 17),
('A1010', 'fast boat', ' ', '12:30', 30000, 15),
('A1011', 'fast boat', ' ', '08:00', 30000, 12),
('A1012', 'fast boat', ' ', '10:30', 30000, 12),
('A2453', 'fast boat', NULL, '08:00', 30000, 15),
('A8342', 'fast boat', NULL, '12:30', 25000, 12),
('A9000', 'fast boat', NULL, '16:30', 20000, 12),
('A9003', 'fast boat', NULL, '08:00', 25000, 10),
('AF434', 'fast boat', NULL, '14:00', 25000, 12),
('B1093', 'jukung/motor boat', NULL, '08:00', 25000, 17),
('B1900', 'Roro', ' ', '14:00', 35000, 182),
('B1901', 'fast boat', ' ', '16:30', 25000, 10),
('B1996', 'jukung/motor boat', ' ', '08:00', 20000, 15),
('B1997', 'jukung/motor boat', ' ', '10:30', 20000, 12),
('B4375', 'jukung/motor boat', NULL, '12:30', 25000, 15),
('B4521', 'jukung/motor boat', NULL, '12:30', 20000, 10),
('B488', 'jukung/motor boat', NULL, '16:30', 25000, 15),
('B8242', 'fast boat', NULL, '10:30', 30000, 15),
('BK943', 'jukung/motor boat', NULL, '14:00', 25000, 15),
('BU485', 'jukung/motor boat', NULL, '14:00', 20000, 12),
('GH8493', 'jukung/motor boat', NULL, '10:30', 25000, 15),
('RR934', 'Roro', NULL, '10:30', 35000, 182);

-- --------------------------------------------------------

--
-- Table structure for table `tiket`
--

CREATE TABLE `tiket` (
  `tiketID` varchar(25) NOT NULL,
  `bookingID` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tiket`
--

INSERT INTO `tiket` (`tiketID`, `bookingID`) VALUES
('1991', '1212'),
('1992', '1212'),
('1993', '1212'),
('1994', '1213'),
('1995', '1213'),
('1996', '1215');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `noTelp` varchar(30) DEFAULT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan','','') DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `tingkatan_user` enum('admin','user','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `nama`, `email`, `alamat`, `noTelp`, `jenis_kelamin`, `password`, `tingkatan_user`) VALUES
(1001, 'umbara yanti', 'siumbaraya@gmail.com', 'jalan kaswari,dauh peken,tabanan', '82133445566', 'Perempuan', 'umbb2190', 'user'),
(1002, 'bagus saning', 'bsgsd@gmail.com', 'jalan anyelir,sawan,klungkung', '89232351310', 'Laki-laki', 'bdgas210j', 'user'),
(1003, 'cantika kurnia', 'cnakr22@gmail.com', 'jalan mawar,sesetan,denpasar', '89244726122', 'Perempuan', 'cntky328', 'user'),
(1043, 'Ni Made Ani Wahyuni', 'aniwah123@gmail.com', 'Kerambitan, Tabanan', '0892432467', 'Laki-laki', '123', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`bookingID`),
  ADD KEY `kapalID` (`kapalID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `crew`
--
ALTER TABLE `crew`
  ADD PRIMARY KEY (`crewID`),
  ADD KEY `kapalID` (`kapalID`);

--
-- Indexes for table `kapal`
--
ALTER TABLE `kapal`
  ADD PRIMARY KEY (`kapalID`);

--
-- Indexes for table `tiket`
--
ALTER TABLE `tiket`
  ADD PRIMARY KEY (`tiketID`),
  ADD KEY `bookingID` (`bookingID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1044;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`kapalID`) REFERENCES `kapal` (`kapalID`),
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`);

--
-- Constraints for table `crew`
--
ALTER TABLE `crew`
  ADD CONSTRAINT `crew_ibfk_1` FOREIGN KEY (`kapalID`) REFERENCES `kapal` (`kapalID`);

--
-- Constraints for table `tiket`
--
ALTER TABLE `tiket`
  ADD CONSTRAINT `tiket_ibfk_1` FOREIGN KEY (`bookingID`) REFERENCES `booking` (`bookingID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
