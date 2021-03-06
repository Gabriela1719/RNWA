-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2022 at 10:40 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fsre`
--

-- --------------------------------------------------------

--
-- Table structure for table `building`
--

CREATE TABLE `building` (
  `building_UID` int(4) UNSIGNED ZEROFILL NOT NULL,
  `number` varchar(4) NOT NULL,
  `name` varchar(60) NOT NULL,
  `levels` int(2) NOT NULL,
  `notes` varchar(256) DEFAULT NULL,
  `address` varchar(256) DEFAULT NULL,
  `long` decimal(10,6) DEFAULT NULL,
  `lat` decimal(11,6) DEFAULT NULL,
  `lastmodified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `building`
--

INSERT INTO `building` (`building_UID`, `number`, `name`, `levels`, `notes`, `address`, `long`, `lat`, `lastmodified`) VALUES
(0329, '999', 'Test Building', 3, 'This is the \"hub\" test building.', NULL, NULL, NULL, '2017-08-09 20:37:05'),
(0330, '998', 'Alpha', 3, 'This is Test Building Alpha.', NULL, NULL, NULL, '2017-08-09 20:37:37'),
(0331, '997', 'Beta.', 3, 'This is Test Building Beta.', NULL, NULL, NULL, '2017-08-09 20:37:43'),
(0332, '996', 'Gamma.', 3, 'This is Test Building Gamma.', NULL, NULL, NULL, '2017-08-09 20:37:45'),
(0333, '995', 'Delta.', 3, 'This is Test Building Delta.', NULL, NULL, NULL, '2017-08-09 20:37:48'),
(0334, '994', 'Epsilon.', 3, 'This is Test Building Epsilon.', NULL, NULL, NULL, '2017-08-09 20:37:51'),
(0335, '993', 'Zeta.', 3, 'This is Test Building Zeta.', NULL, NULL, NULL, '2017-08-09 20:37:54'),
(0336, '992', 'Eta.', 3, 'This is Test Building Eta.', NULL, NULL, NULL, '2017-08-09 20:37:56'),
(0337, '991', 'Theta.', 3, 'This is Test Building Theta.', NULL, NULL, NULL, '2017-08-10 14:55:45'),
(0338, '990', 'Iota.', 3, 'This is Test Building Iota.', NULL, NULL, NULL, '2017-08-10 14:55:48'),
(0339, '989', 'Kappa.', 3, 'This is Test Building Kappa.', NULL, NULL, NULL, '2017-08-10 14:55:51'),
(0340, '988', 'Lambda.', 3, 'This is Test Building Lambda.', NULL, NULL, NULL, '2017-08-10 14:55:55'),
(0341, '987', 'Mu.', 3, 'This is Test Building Mu.', NULL, NULL, NULL, '2017-08-10 14:55:57'),
(0342, '986', 'Nu.', 3, 'This is Test Building Nu.', NULL, NULL, NULL, '2017-08-10 14:56:00'),
(0343, '985', 'Xi.', 3, 'This is Test Building Xi.', NULL, NULL, NULL, '2017-08-10 14:56:02'),
(0344, '984', 'Omicron.', 3, 'This is Test Building Omicron.', NULL, NULL, NULL, '2017-08-10 14:56:08'),
(0345, '983', 'Pi.', 3, 'This is Test Building Pi.', NULL, NULL, NULL, '2017-08-10 14:56:12'),
(0346, '982', 'Rho.', 3, 'This is Test Building Rho.', NULL, NULL, NULL, '2017-08-10 14:56:14'),
(0347, '981', 'Sigma.', 3, 'This is Test Building Sigma.', NULL, NULL, NULL, '2017-08-10 14:56:18'),
(0348, '980', 'Tau.', 3, 'This is Test Building Tau.', NULL, NULL, NULL, '2017-08-10 14:56:22'),
(0349, '979', 'Upsilon.', 3, 'This is Test Building Upsilon.', NULL, NULL, NULL, '2017-08-10 14:56:25'),
(0350, '978', 'Phi.', 3, 'This is Test Building Phi.', NULL, NULL, NULL, '2017-08-10 14:56:27'),
(0351, '977', 'Chi.', 3, 'This is Test Building Chi.', NULL, NULL, NULL, '2017-08-10 14:56:29'),
(0352, '976', 'Si.', 3, 'This is Test Building Si.', NULL, NULL, NULL, '2017-08-10 14:56:38'),
(0353, '975', 'Omega.', 3, 'This is Test Building Omega.', NULL, NULL, NULL, '2017-08-10 14:56:42');

-- --------------------------------------------------------

--
-- Table structure for table `cabinet`
--

CREATE TABLE `cabinet` (
  `fk_storageUnit_UID` int(4) UNSIGNED ZEROFILL NOT NULL,
  `cabinet_UID` int(4) UNSIGNED ZEROFILL NOT NULL,
  `label` int(3) UNSIGNED ZEROFILL NOT NULL,
  `panelCapacity` int(2) UNSIGNED ZEROFILL NOT NULL,
  `notes` varchar(512) DEFAULT NULL,
  `lastmodified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cabinet`
--

INSERT INTO `cabinet` (`fk_storageUnit_UID`, `cabinet_UID`, `label`, `panelCapacity`, `notes`, `lastmodified`) VALUES
(0593, 0426, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0594, 0427, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0595, 0428, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0548, 0429, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0549, 0430, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0550, 0431, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0554, 0432, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0555, 0433, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0556, 0434, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0557, 0435, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0558, 0436, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0559, 0437, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0560, 0438, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0561, 0439, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0562, 0440, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0563, 0441, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0564, 0442, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0565, 0443, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0566, 0444, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0567, 0445, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0568, 0446, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0596, 0447, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0597, 0448, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0598, 0449, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0572, 0450, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0573, 0451, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0574, 0452, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0590, 0453, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0591, 0454, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0592, 0455, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0575, 0456, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0576, 0457, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0577, 0458, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0578, 0459, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0579, 0460, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0580, 0461, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0581, 0462, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0582, 0463, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0583, 0464, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0584, 0465, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0585, 0466, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0586, 0467, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0551, 0468, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0552, 0469, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0553, 0470, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0587, 0471, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0588, 0472, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0589, 0473, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0569, 0474, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0570, 0475, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0571, 0476, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0545, 0477, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0546, 0478, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0547, 0479, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0542, 0480, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0543, 0481, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0544, 0482, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0539, 0483, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0540, 0484, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0541, 0485, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0536, 0486, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0537, 0487, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0538, 0488, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0533, 0489, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0534, 0490, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0535, 0491, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0530, 0492, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0531, 0493, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0532, 0494, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0527, 0495, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0528, 0496, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26'),
(0529, 0497, 001, 12, 'Test cabinet note.', '2017-08-10 16:12:26');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_UID` int(5) NOT NULL,
  `name` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

CREATE TABLE `equipment` (
  `equipment_UID` int(5) NOT NULL,
  `fk_department_UID` int(5) NOT NULL,
  `fk_location_UID` int(4) UNSIGNED ZEROFILL NOT NULL,
  `fk_make_UID` int(4) NOT NULL,
  `fk_model_UID` int(4) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(256) NOT NULL,
  `lastModified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eq_make`
--

CREATE TABLE `eq_make` (
  `make_UID` int(4) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(256) NOT NULL,
  `lastModified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eq_model`
--

CREATE TABLE `eq_model` (
  `model_UID` int(4) NOT NULL,
  `fk_make_UID` int(4) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(256) NOT NULL,
  `lastModified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jumper`
--

CREATE TABLE `jumper` (
  `jumper_UID` int(5) UNSIGNED ZEROFILL NOT NULL,
  `fk_port_UID_a` int(5) UNSIGNED ZEROFILL NOT NULL,
  `fk_port_UID_b` int(5) UNSIGNED ZEROFILL DEFAULT NULL,
  `fk_equipment_UID` int(5) DEFAULT NULL,
  `notes` varchar(256) DEFAULT NULL,
  `lastmodified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Triggers `jumper`
--
DELIMITER $$
CREATE TRIGGER `associatePortsToJumper` AFTER INSERT ON `jumper` FOR EACH ROW update port set fk_jumper_UID=NEW.jumper_UID, jumperStatus='active' where port_UID=NEW.fk_port_UID_a or port_UID=NEW.fk_port_UID_b
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `resetPortsOnJumper` AFTER DELETE ON `jumper` FOR EACH ROW UPDATE port SET jumperStatus='available' WHERE (port_UID=OLD.fk_port_UID_a OR port_UID=OLD.fk_port_UID_b)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `levelmap`
--

CREATE TABLE `levelmap` (
  `level_UID` int(4) UNSIGNED ZEROFILL NOT NULL,
  `fk_building_UID` int(4) UNSIGNED ZEROFILL NOT NULL,
  `level` int(2) UNSIGNED NOT NULL,
  `map` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `fk_building_UID` int(4) UNSIGNED ZEROFILL NOT NULL,
  `location_UID` int(4) UNSIGNED ZEROFILL NOT NULL,
  `level` int(2) NOT NULL,
  `description` varchar(256) DEFAULT NULL,
  `lastMod` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`fk_building_UID`, `location_UID`, `level`, `description`, `lastMod`) VALUES
(0351, 0477, 0, 'This is Test Location 0351-1.', '2017-08-09 20:59:47'),
(0351, 0478, 1, 'This is Test Location 0351-2.', '2017-08-09 20:59:47'),
(0351, 0479, 2, 'This is Test Location 0351-3.', '2017-08-09 20:59:47'),
(0336, 0480, 0, 'This is Test Location 0336-1.', '2017-08-09 20:59:47'),
(0336, 0481, 1, 'This is Test Location 0336-2.', '2017-08-09 20:59:47'),
(0336, 0482, 2, 'This is Test Location 0336-3.', '2017-08-09 20:59:47'),
(0338, 0483, 0, 'This is Test Location 0338-1.', '2017-08-09 20:59:47'),
(0338, 0484, 1, 'This is Test Location 0338-2.', '2017-08-09 20:59:47'),
(0338, 0485, 2, 'This is Test Location 0338-3.', '2017-08-09 20:59:47'),
(0339, 0486, 0, 'This is Test Location 0339-1.', '2017-08-09 20:59:47'),
(0339, 0487, 1, 'This is Test Location 0339-2.', '2017-08-09 20:59:47'),
(0339, 0488, 2, 'This is Test Location 0339-3.', '2017-08-09 20:59:47'),
(0340, 0489, 0, 'This is Test Location 0340-1.', '2017-08-09 20:59:47'),
(0340, 0490, 1, 'This is Test Location 0340-2.', '2017-08-09 20:59:47'),
(0340, 0491, 2, 'This is Test Location 0340-3.', '2017-08-09 20:59:47'),
(0341, 0492, 0, 'This is Test Location 0341-1.', '2017-08-09 20:59:47'),
(0341, 0493, 1, 'This is Test Location 0341-2.', '2017-08-09 20:59:47'),
(0341, 0494, 2, 'This is Test Location 0341-3.', '2017-08-09 20:59:47'),
(0342, 0495, 0, 'This is Test Location 0342-1.', '2017-08-09 20:59:47'),
(0342, 0496, 1, 'This is Test Location 0342-2.', '2017-08-09 20:59:47'),
(0342, 0497, 2, 'This is Test Location 0342-3.', '2017-08-09 20:59:47'),
(0353, 0498, 0, 'This is Test Location 0353-1.', '2017-08-09 20:59:47'),
(0353, 0499, 1, 'This is Test Location 0353-2.', '2017-08-09 20:59:47'),
(0353, 0500, 2, 'This is Test Location 0353-3.', '2017-08-09 20:59:47'),
(0344, 0501, 0, 'This is Test Location 0344-1.', '2017-08-09 20:59:47'),
(0344, 0502, 1, 'This is Test Location 0344-2.', '2017-08-09 20:59:47'),
(0344, 0503, 2, 'This is Test Location 0344-3.', '2017-08-09 20:59:47'),
(0350, 0504, 0, 'This is Test Location 0350-1.', '2017-08-09 20:59:47'),
(0350, 0505, 1, 'This is Test Location 0350-2.', '2017-08-09 20:59:47'),
(0350, 0506, 2, 'This is Test Location 0350-3.', '2017-08-09 20:59:47'),
(0345, 0507, 0, 'This is Test Location 0345-1.', '2017-08-09 20:59:47'),
(0345, 0508, 1, 'This is Test Location 0345-2.', '2017-08-09 20:59:47'),
(0345, 0509, 2, 'This is Test Location 0345-3.', '2017-08-09 20:59:47'),
(0346, 0510, 0, 'This is Test Location 0346-1.', '2017-08-09 20:59:47'),
(0346, 0511, 1, 'This is Test Location 0346-2.', '2017-08-09 20:59:47'),
(0346, 0512, 2, 'This is Test Location 0346-3.', '2017-08-09 20:59:47'),
(0347, 0513, 0, 'This is Test Location 0347-1.', '2017-08-09 20:59:47'),
(0347, 0514, 1, 'This is Test Location 0347-2.', '2017-08-09 20:59:47'),
(0347, 0515, 2, 'This is Test Location 0347-3.', '2017-08-09 20:59:47'),
(0348, 0516, 0, 'This is Test Location 0348-1.', '2017-08-09 20:59:47'),
(0348, 0517, 1, 'This is Test Location 0348-2.', '2017-08-09 20:59:47'),
(0348, 0518, 2, 'This is Test Location 0348-3.', '2017-08-09 20:59:47'),
(0337, 0519, 0, 'This is Test Location 0337-1.', '2017-08-09 20:59:47'),
(0337, 0520, 1, 'This is Test Location 0337-2.', '2017-08-09 20:59:47'),
(0337, 0521, 2, 'This is Test Location 0337-3.', '2017-08-09 20:59:47'),
(0349, 0522, 0, 'This is Test Location 0349-1.', '2017-08-09 20:59:47'),
(0349, 0523, 1, 'This is Test Location 0349-2.', '2017-08-09 20:59:47'),
(0349, 0524, 2, 'This is Test Location 0349-3.', '2017-08-09 20:59:47'),
(0343, 0525, 0, 'This is Test Location 0343-1.', '2017-08-09 20:59:47'),
(0343, 0526, 1, 'This is Test Location 0343-2.', '2017-08-09 20:59:47'),
(0343, 0527, 2, 'This is Test Location 0343-3.', '2017-08-09 20:59:47'),
(0335, 0528, 0, 'This is Test Location 0335-1.', '2017-08-09 20:59:47'),
(0335, 0529, 1, 'This is Test Location 0335-2.', '2017-08-09 20:59:47'),
(0335, 0530, 2, 'This is Test Location 0335-3.', '2017-08-09 20:59:47'),
(0334, 0531, 0, 'This is Test Location 0334-1.', '2017-08-09 20:59:47'),
(0334, 0532, 1, 'This is Test Location 0334-2.', '2017-08-09 20:59:47'),
(0334, 0533, 2, 'This is Test Location 0334-3.', '2017-08-09 20:59:47'),
(0333, 0534, 0, 'This is Test Location 0333-1.', '2017-08-09 20:59:47'),
(0333, 0535, 1, 'This is Test Location 0333-2.', '2017-08-09 20:59:47'),
(0333, 0536, 2, 'This is Test Location 0333-3.', '2017-08-09 20:59:47'),
(0332, 0537, 0, 'This is Test Location 0332-1.', '2017-08-09 20:59:47'),
(0332, 0538, 1, 'This is Test Location 0332-2.', '2017-08-09 20:59:47'),
(0332, 0539, 2, 'This is Test Location 0332-3.', '2017-08-09 20:59:47'),
(0331, 0540, 0, 'This is Test Location 0331-1.', '2017-08-09 20:59:47'),
(0331, 0541, 1, 'This is Test Location 0331-2.', '2017-08-09 20:59:47'),
(0331, 0542, 2, 'This is Test Location 0331-3.', '2017-08-09 20:59:47'),
(0330, 0543, 0, 'This is Test Location 0330-1.', '2017-08-09 20:59:47'),
(0330, 0544, 1, 'This is Test Location 0330-2.', '2017-08-09 20:59:47'),
(0330, 0545, 2, 'This is Test Location 0330-3.', '2017-08-09 20:59:47'),
(0329, 0546, 0, 'This is Test Location 0329-1.', '2017-08-09 20:59:47'),
(0329, 0547, 1, 'This is Test Location 0329-2.', '2017-08-09 20:59:47'),
(0329, 0548, 2, 'This is Test Location 0329-3.', '2017-08-09 20:59:47');

-- --------------------------------------------------------

--
-- Table structure for table `panel`
--

CREATE TABLE `panel` (
  `fk_cabinet_UID` int(4) UNSIGNED ZEROFILL NOT NULL,
  `panel_UID` int(4) UNSIGNED ZEROFILL NOT NULL,
  `position` int(2) UNSIGNED NOT NULL,
  `portCapacity` int(2) UNSIGNED ZEROFILL NOT NULL,
  `type` varchar(64) NOT NULL,
  `notes` varchar(256) DEFAULT NULL,
  `lastMod` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `panel`
--

INSERT INTO `panel` (`fk_cabinet_UID`, `panel_UID`, `position`, `portCapacity`, `type`, `notes`, `lastMod`) VALUES
(0495, 1234, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0496, 1235, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0497, 1236, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0492, 1237, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0493, 1238, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0494, 1239, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0489, 1240, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0490, 1241, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0491, 1242, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0486, 1243, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0487, 1244, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0488, 1245, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0483, 1246, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0484, 1247, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0485, 1248, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0480, 1249, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0481, 1250, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0482, 1251, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0477, 1252, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0478, 1253, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0479, 1254, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0429, 1255, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0430, 1256, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0431, 1257, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0468, 1258, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0469, 1259, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0470, 1260, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0432, 1261, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0433, 1262, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0434, 1263, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0435, 1264, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0436, 1265, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0437, 1266, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0438, 1267, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0439, 1268, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0440, 1269, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0441, 1270, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0442, 1271, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0443, 1272, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0444, 1273, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0445, 1274, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0446, 1275, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0474, 1276, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0475, 1277, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0476, 1278, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0450, 1279, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0451, 1280, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0452, 1281, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0456, 1282, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0457, 1283, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0458, 1284, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0459, 1285, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0460, 1286, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0461, 1287, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0462, 1288, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0463, 1289, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0464, 1290, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0465, 1291, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0466, 1292, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0467, 1293, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0471, 1294, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0472, 1295, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0473, 1296, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0453, 1297, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0454, 1298, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0455, 1299, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0426, 1300, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0427, 1301, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0428, 1302, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0447, 1303, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0448, 1304, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0449, 1305, 1, 12, 'ST', NULL, '2017-08-10 16:19:07'),
(0495, 1306, 2, 12, 'st', NULL, '2017-08-10 19:36:24'),
(0495, 1307, 3, 12, 'st', NULL, '2017-08-10 19:36:30'),
(0495, 1308, 4, 12, 'st', NULL, '2017-08-10 19:38:13'),
(0495, 1309, 5, 12, 'st', NULL, '2017-08-10 19:38:19'),
(0492, 1310, 2, 12, 'st', NULL, '2017-08-10 19:41:21'),
(0492, 1311, 3, 12, 'st', NULL, '2017-08-10 19:41:26'),
(0492, 1312, 4, 12, 'st', NULL, '2017-08-10 19:41:32'),
(0492, 1313, 12, 12, 'st', NULL, '2017-08-10 19:43:02'),
(0492, 1314, 11, 12, 'st', NULL, '2017-08-10 19:43:14'),
(0489, 1315, 12, 12, 'st', NULL, '2017-08-10 19:44:39'),
(0489, 1316, 11, 12, 'st', NULL, '2017-08-10 19:44:45'),
(0483, 1319, 11, 12, 'st', NULL, '2017-08-10 19:48:21'),
(0483, 1320, 12, 12, 'st', NULL, '2017-08-10 19:48:26'),
(0480, 1321, 11, 12, 'st', NULL, '2017-08-10 19:49:17'),
(0480, 1322, 12, 12, 'st', NULL, '2017-08-10 19:49:23'),
(0486, 1323, 11, 12, 'st', NULL, '2017-08-10 20:13:53'),
(0486, 1324, 12, 12, 'st', NULL, '2017-08-10 20:14:15'),
(0489, 1326, 2, 12, 'st', NULL, '2017-08-11 14:55:21'),
(0477, 1327, 2, 12, 'st', NULL, '2017-08-11 14:57:41'),
(0489, 1328, 3, 12, 'st', NULL, '2017-08-11 15:07:35'),
(0486, 1329, 2, 12, 'st', NULL, '2017-08-11 15:07:52'),
(0429, 1330, 2, 12, 'st', NULL, '2017-08-11 15:08:15'),
(0486, 1331, 3, 12, 'st', NULL, '2017-08-11 15:11:05'),
(0483, 1332, 2, 12, 'st', NULL, '2017-08-11 15:11:30'),
(0483, 1333, 3, 12, 'st', NULL, '2017-08-11 15:11:38'),
(0468, 1334, 2, 12, 'st', NULL, '2017-08-11 15:12:10'),
(0480, 1335, 2, 12, 'st', NULL, '2017-08-11 15:14:12'),
(0480, 1336, 3, 12, 'st', NULL, '2017-08-11 15:14:17'),
(0432, 1337, 2, 12, 'st', NULL, '2017-08-11 15:14:57'),
(0432, 1338, 3, 12, 'st', NULL, '2017-08-11 15:15:16'),
(0435, 1339, 2, 12, 'st', NULL, '2017-08-11 15:17:21');

--
-- Triggers `panel`
--
DELIMITER $$
CREATE TRIGGER `fillPanelToPortCapacity` BEFORE INSERT ON `panel` FOR EACH ROW BEGIN
/*
declare x int;
if(NEW.portCapacity > 0) THEN
	SET x=1;
	WHILE x < NEW.portCapacity do
		INSERT INTO port(fk_panel_UID,number,strandStatus,jumperStatus) VALUES(NEW.panel_UID,x,'available','available');
		SET x=x+1;
	END WHILE;
END IF;
*/
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `resetJumperStatusIfNull` AFTER DELETE ON `panel` FOR EACH ROW UPDATE port SET port.jumperStatus='available' WHERE port.jumperStatus='active' AND port.fk_jumper_UID IS NULL
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `resetStrandStatusIfNull` AFTER DELETE ON `panel` FOR EACH ROW UPDATE port SET port.strandStatus='available' WHERE port.strandStatus='active' AND port.fk_strand_UID IS NULL
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `path`
--

CREATE TABLE `path` (
  `path_UID` int(5) UNSIGNED ZEROFILL NOT NULL,
  `type` varchar(32) NOT NULL,
  `su_a` int(4) UNSIGNED ZEROFILL NOT NULL,
  `su_b` int(4) UNSIGNED ZEROFILL NOT NULL,
  `lastmodified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `path`
--

INSERT INTO `path` (`path_UID`, `type`, `su_a`, `su_b`, `lastmodified`) VALUES
(00001, '', 0000, 0000, '2017-08-10 06:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `plotpoint`
--

CREATE TABLE `plotpoint` (
  `plotPoint_UID` int(5) UNSIGNED ZEROFILL NOT NULL,
  `fk_path_UID` int(5) UNSIGNED ZEROFILL DEFAULT NULL,
  `type` varchar(32) NOT NULL,
  `path_order` int(3) DEFAULT NULL,
  `long` decimal(10,6) NOT NULL,
  `lat` decimal(11,6) NOT NULL,
  `last_modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `port`
--

CREATE TABLE `port` (
  `fk_panel_UID` int(4) UNSIGNED ZEROFILL NOT NULL,
  `port_UID` int(5) UNSIGNED ZEROFILL NOT NULL,
  `number` int(2) UNSIGNED NOT NULL,
  `strandStatus` varchar(20) NOT NULL DEFAULT 'available',
  `jumperStatus` varchar(20) NOT NULL DEFAULT 'available',
  `fk_strand_UID` int(5) UNSIGNED ZEROFILL DEFAULT NULL,
  `fk_jumper_UID` int(5) UNSIGNED ZEROFILL DEFAULT NULL,
  `lastmodified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `port`
--

INSERT INTO `port` (`fk_panel_UID`, `port_UID`, `number`, `strandStatus`, `jumperStatus`, `fk_strand_UID`, `fk_jumper_UID`, `lastmodified`) VALUES
(1300, 11182, 1, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1300, 11183, 2, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1300, 11184, 3, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1300, 11185, 4, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1300, 11186, 5, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1300, 11187, 6, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1300, 11188, 7, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1300, 11189, 8, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1300, 11190, 9, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1300, 11191, 10, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1300, 11192, 11, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1300, 11193, 12, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1301, 11194, 1, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1301, 11195, 2, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1301, 11196, 3, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1301, 11197, 4, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1301, 11198, 5, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1301, 11199, 6, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1301, 11200, 7, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1301, 11201, 8, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1301, 11202, 9, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1301, 11203, 10, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1301, 11204, 11, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1301, 11205, 12, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1302, 11206, 1, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1302, 11207, 2, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1302, 11208, 3, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1302, 11209, 4, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1302, 11210, 5, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1302, 11211, 6, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1302, 11212, 7, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1302, 11213, 8, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1302, 11214, 9, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1302, 11215, 10, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1302, 11216, 11, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1302, 11217, 12, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1255, 11218, 1, 'active', 'available', 03124, NULL, '2017-08-11 15:09:08'),
(1255, 11219, 2, 'active', 'available', 03125, NULL, '2017-08-11 15:09:08'),
(1255, 11220, 3, 'active', 'available', 03126, NULL, '2017-08-11 15:09:08'),
(1255, 11221, 4, 'active', 'available', 03127, NULL, '2017-08-11 15:09:08'),
(1255, 11222, 5, 'active', 'available', 03128, NULL, '2017-08-11 15:09:08'),
(1255, 11223, 6, 'active', 'available', 03129, NULL, '2017-08-11 15:09:08'),
(1255, 11224, 7, 'active', 'available', 03130, NULL, '2017-08-11 15:09:08'),
(1255, 11225, 8, 'active', 'available', 03131, NULL, '2017-08-11 15:09:08'),
(1255, 11226, 9, 'active', 'available', 03132, NULL, '2017-08-11 15:09:08'),
(1255, 11227, 10, 'active', 'available', 03133, NULL, '2017-08-11 15:09:08'),
(1255, 11228, 11, 'active', 'available', 03134, NULL, '2017-08-11 15:09:08'),
(1255, 11229, 12, 'active', 'available', 03135, NULL, '2017-08-11 15:09:08'),
(1256, 11230, 1, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1256, 11231, 2, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1256, 11232, 3, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1256, 11233, 4, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1256, 11234, 5, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1256, 11235, 6, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1256, 11236, 7, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1256, 11237, 8, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1256, 11238, 9, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1256, 11239, 10, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1256, 11240, 11, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1256, 11241, 12, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1257, 11242, 1, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1257, 11243, 2, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1257, 11244, 3, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1257, 11245, 4, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1257, 11246, 5, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1257, 11247, 6, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1257, 11248, 7, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1257, 11249, 8, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1257, 11250, 9, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1257, 11251, 10, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1257, 11252, 11, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1257, 11253, 12, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1261, 11254, 1, 'active', 'available', 03172, NULL, '2017-08-11 15:16:09'),
(1261, 11255, 2, 'active', 'available', 03173, NULL, '2017-08-11 15:16:09'),
(1261, 11256, 3, 'active', 'available', 03174, NULL, '2017-08-11 15:16:09'),
(1261, 11257, 4, 'active', 'available', 03175, NULL, '2017-08-11 15:16:09'),
(1261, 11258, 5, 'active', 'available', 03176, NULL, '2017-08-11 15:16:09'),
(1261, 11259, 6, 'active', 'available', 03177, NULL, '2017-08-11 15:16:09'),
(1261, 11260, 7, 'active', 'available', 03178, NULL, '2017-08-11 15:16:09'),
(1261, 11261, 8, 'active', 'available', 03179, NULL, '2017-08-11 15:16:09'),
(1261, 11262, 9, 'active', 'available', 03180, NULL, '2017-08-11 15:16:09'),
(1261, 11263, 10, 'active', 'available', 03181, NULL, '2017-08-11 15:16:09'),
(1261, 11264, 11, 'active', 'available', 03182, NULL, '2017-08-11 15:16:09'),
(1261, 11265, 12, 'active', 'available', 03183, NULL, '2017-08-11 15:16:09'),
(1262, 11266, 1, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1262, 11267, 2, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1262, 11268, 3, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1262, 11269, 4, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1262, 11270, 5, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1262, 11271, 6, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1262, 11272, 7, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1262, 11273, 8, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1262, 11274, 9, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1262, 11275, 10, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1262, 11276, 11, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1262, 11277, 12, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1263, 11278, 1, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1263, 11279, 2, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1263, 11280, 3, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1263, 11281, 4, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1263, 11282, 5, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1263, 11283, 6, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1263, 11284, 7, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1263, 11285, 8, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1263, 11286, 9, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1263, 11287, 10, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1263, 11288, 11, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1263, 11289, 12, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1264, 11290, 1, 'active', 'available', 03196, NULL, '2017-08-11 15:17:55'),
(1264, 11291, 2, 'active', 'available', 03197, NULL, '2017-08-11 15:17:55'),
(1264, 11292, 3, 'active', 'available', 03198, NULL, '2017-08-11 15:17:55'),
(1264, 11293, 4, 'active', 'available', 03199, NULL, '2017-08-11 15:17:55'),
(1264, 11294, 5, 'active', 'available', 03200, NULL, '2017-08-11 15:17:55'),
(1264, 11295, 6, 'active', 'available', 03201, NULL, '2017-08-11 15:17:55'),
(1264, 11296, 7, 'active', 'available', 03202, NULL, '2017-08-11 15:17:55'),
(1264, 11297, 8, 'active', 'available', 03203, NULL, '2017-08-11 15:17:55'),
(1264, 11298, 9, 'active', 'available', 03204, NULL, '2017-08-11 15:17:55'),
(1264, 11299, 10, 'active', 'available', 03205, NULL, '2017-08-11 15:17:55'),
(1264, 11300, 11, 'active', 'available', 03206, NULL, '2017-08-11 15:17:55'),
(1264, 11301, 12, 'active', 'available', 03207, NULL, '2017-08-11 15:17:56'),
(1265, 11302, 1, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1265, 11303, 2, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1265, 11304, 3, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1265, 11305, 4, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1265, 11306, 5, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1265, 11307, 6, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1265, 11308, 7, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1265, 11309, 8, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1265, 11310, 9, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1265, 11311, 10, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1265, 11312, 11, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1265, 11313, 12, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1266, 11314, 1, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1266, 11315, 2, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1266, 11316, 3, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1266, 11317, 4, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1266, 11318, 5, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1266, 11319, 6, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1266, 11320, 7, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1266, 11321, 8, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1266, 11322, 9, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1266, 11323, 10, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1266, 11324, 11, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1266, 11325, 12, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1267, 11326, 1, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1267, 11327, 2, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1267, 11328, 3, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1267, 11329, 4, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1267, 11330, 5, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1267, 11331, 6, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1267, 11332, 7, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1267, 11333, 8, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1267, 11334, 9, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1267, 11335, 10, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1267, 11336, 11, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1267, 11337, 12, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1268, 11338, 1, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1268, 11339, 2, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1268, 11340, 3, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1268, 11341, 4, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1268, 11342, 5, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1268, 11343, 6, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1268, 11344, 7, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1268, 11345, 8, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1268, 11346, 9, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1268, 11347, 10, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1268, 11348, 11, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1268, 11349, 12, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1269, 11350, 1, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1269, 11351, 2, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1269, 11352, 3, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1269, 11353, 4, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1269, 11354, 5, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1269, 11355, 6, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1269, 11356, 7, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1269, 11357, 8, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1269, 11358, 9, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1269, 11359, 10, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1269, 11360, 11, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1269, 11361, 12, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1270, 11362, 1, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1270, 11363, 2, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1270, 11364, 3, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1270, 11365, 4, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1270, 11366, 5, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1270, 11367, 6, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1270, 11368, 7, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1270, 11369, 8, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1270, 11370, 9, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1270, 11371, 10, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1270, 11372, 11, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1270, 11373, 12, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1271, 11374, 1, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1271, 11375, 2, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1271, 11376, 3, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1271, 11377, 4, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1271, 11378, 5, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1271, 11379, 6, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1271, 11380, 7, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1271, 11381, 8, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1271, 11382, 9, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1271, 11383, 10, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1271, 11384, 11, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1271, 11385, 12, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1272, 11386, 1, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1272, 11387, 2, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1272, 11388, 3, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1272, 11389, 4, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1272, 11390, 5, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1272, 11391, 6, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1272, 11392, 7, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1272, 11393, 8, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1272, 11394, 9, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1272, 11395, 10, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1272, 11396, 11, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1272, 11397, 12, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1273, 11398, 1, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1273, 11399, 2, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1273, 11400, 3, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1273, 11401, 4, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1273, 11402, 5, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1273, 11403, 6, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1273, 11404, 7, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1273, 11405, 8, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1273, 11406, 9, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1273, 11407, 10, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1273, 11408, 11, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1273, 11409, 12, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1274, 11410, 1, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1274, 11411, 2, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1274, 11412, 3, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1274, 11413, 4, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1274, 11414, 5, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1274, 11415, 6, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1274, 11416, 7, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1274, 11417, 8, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1274, 11418, 9, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1274, 11419, 10, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1274, 11420, 11, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1274, 11421, 12, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1275, 11422, 1, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1275, 11423, 2, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1275, 11424, 3, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1275, 11425, 4, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1275, 11426, 5, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1275, 11427, 6, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1275, 11428, 7, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1275, 11429, 8, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1275, 11430, 9, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1275, 11431, 10, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1275, 11432, 11, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1275, 11433, 12, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1303, 11434, 1, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1303, 11435, 2, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1303, 11436, 3, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1303, 11437, 4, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1303, 11438, 5, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1303, 11439, 6, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1303, 11440, 7, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1303, 11441, 8, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1303, 11442, 9, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1303, 11443, 10, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1303, 11444, 11, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1303, 11445, 12, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1304, 11446, 1, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1304, 11447, 2, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1304, 11448, 3, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1304, 11449, 4, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1304, 11450, 5, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1304, 11451, 6, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1304, 11452, 7, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1304, 11453, 8, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1304, 11454, 9, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1304, 11455, 10, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1304, 11456, 11, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1304, 11457, 12, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1305, 11458, 1, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1305, 11459, 2, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1305, 11460, 3, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1305, 11461, 4, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1305, 11462, 5, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1305, 11463, 6, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1305, 11464, 7, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1305, 11465, 8, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1305, 11466, 9, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1305, 11467, 10, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1305, 11468, 11, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1305, 11469, 12, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1279, 11470, 1, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1279, 11471, 2, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1279, 11472, 3, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1279, 11473, 4, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1279, 11474, 5, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1279, 11475, 6, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1279, 11476, 7, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1279, 11477, 8, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1279, 11478, 9, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1279, 11479, 10, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1279, 11480, 11, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1279, 11481, 12, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1280, 11482, 1, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1280, 11483, 2, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1280, 11484, 3, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1280, 11485, 4, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1280, 11486, 5, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1280, 11487, 6, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1280, 11488, 7, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1280, 11489, 8, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1280, 11490, 9, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1280, 11491, 10, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1280, 11492, 11, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1280, 11493, 12, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1281, 11494, 1, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1281, 11495, 2, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1281, 11496, 3, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1281, 11497, 4, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1281, 11498, 5, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1281, 11499, 6, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1281, 11500, 7, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1281, 11501, 8, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1281, 11502, 9, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1281, 11503, 10, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1281, 11504, 11, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1281, 11505, 12, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1297, 11506, 1, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1297, 11507, 2, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1297, 11508, 3, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1297, 11509, 4, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1297, 11510, 5, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1297, 11511, 6, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1297, 11512, 7, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1297, 11513, 8, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1297, 11514, 9, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1297, 11515, 10, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1297, 11516, 11, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1297, 11517, 12, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1298, 11518, 1, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1298, 11519, 2, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1298, 11520, 3, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1298, 11521, 4, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1298, 11522, 5, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1298, 11523, 6, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1298, 11524, 7, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1298, 11525, 8, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1298, 11526, 9, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1298, 11527, 10, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1298, 11528, 11, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1298, 11529, 12, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1299, 11530, 1, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1299, 11531, 2, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1299, 11532, 3, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1299, 11533, 4, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1299, 11534, 5, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1299, 11535, 6, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1299, 11536, 7, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1299, 11537, 8, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1299, 11538, 9, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1299, 11539, 10, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1299, 11540, 11, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1299, 11541, 12, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1282, 11542, 1, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1282, 11543, 2, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1282, 11544, 3, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1282, 11545, 4, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1282, 11546, 5, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1282, 11547, 6, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1282, 11548, 7, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1282, 11549, 8, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1282, 11550, 9, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1282, 11551, 10, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1282, 11552, 11, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1282, 11553, 12, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1283, 11554, 1, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1283, 11555, 2, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1283, 11556, 3, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1283, 11557, 4, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1283, 11558, 5, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1283, 11559, 6, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1283, 11560, 7, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1283, 11561, 8, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1283, 11562, 9, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1283, 11563, 10, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1283, 11564, 11, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1283, 11565, 12, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1284, 11566, 1, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1284, 11567, 2, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1284, 11568, 3, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1284, 11569, 4, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1284, 11570, 5, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1284, 11571, 6, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1284, 11572, 7, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1284, 11573, 8, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1284, 11574, 9, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1284, 11575, 10, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1284, 11576, 11, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1284, 11577, 12, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1285, 11578, 1, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1285, 11579, 2, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1285, 11580, 3, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1285, 11581, 4, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1285, 11582, 5, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1285, 11583, 6, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1285, 11584, 7, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1285, 11585, 8, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1285, 11586, 9, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1285, 11587, 10, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1285, 11588, 11, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1285, 11589, 12, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1286, 11590, 1, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1286, 11591, 2, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1286, 11592, 3, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1286, 11593, 4, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1286, 11594, 5, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1286, 11595, 6, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1286, 11596, 7, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1286, 11597, 8, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1286, 11598, 9, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1286, 11599, 10, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1286, 11600, 11, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1286, 11601, 12, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1287, 11602, 1, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1287, 11603, 2, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1287, 11604, 3, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1287, 11605, 4, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1287, 11606, 5, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1287, 11607, 6, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1287, 11608, 7, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1287, 11609, 8, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1287, 11610, 9, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1287, 11611, 10, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1287, 11612, 11, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1287, 11613, 12, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1288, 11614, 1, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1288, 11615, 2, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1288, 11616, 3, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1288, 11617, 4, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1288, 11618, 5, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1288, 11619, 6, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1288, 11620, 7, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1288, 11621, 8, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1288, 11622, 9, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1288, 11623, 10, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1288, 11624, 11, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1288, 11625, 12, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1289, 11626, 1, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1289, 11627, 2, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1289, 11628, 3, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1289, 11629, 4, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1289, 11630, 5, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1289, 11631, 6, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1289, 11632, 7, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1289, 11633, 8, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1289, 11634, 9, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1289, 11635, 10, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1289, 11636, 11, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1289, 11637, 12, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1290, 11638, 1, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1290, 11639, 2, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1290, 11640, 3, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1290, 11641, 4, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1290, 11642, 5, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1290, 11643, 6, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1290, 11644, 7, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1290, 11645, 8, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1290, 11646, 9, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1290, 11647, 10, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1290, 11648, 11, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1290, 11649, 12, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1291, 11650, 1, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1291, 11651, 2, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1291, 11652, 3, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1291, 11653, 4, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1291, 11654, 5, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1291, 11655, 6, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1291, 11656, 7, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1291, 11657, 8, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1291, 11658, 9, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1291, 11659, 10, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1291, 11660, 11, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1291, 11661, 12, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1292, 11662, 1, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1292, 11663, 2, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1292, 11664, 3, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1292, 11665, 4, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1292, 11666, 5, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1292, 11667, 6, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1292, 11668, 7, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1292, 11669, 8, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1292, 11670, 9, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1292, 11671, 10, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1292, 11672, 11, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1292, 11673, 12, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1293, 11674, 1, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1293, 11675, 2, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1293, 11676, 3, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1293, 11677, 4, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1293, 11678, 5, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1293, 11679, 6, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1293, 11680, 7, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1293, 11681, 8, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1293, 11682, 9, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1293, 11683, 10, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1293, 11684, 11, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1293, 11685, 12, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1258, 11686, 1, 'active', 'available', 03148, NULL, '2017-08-11 15:12:41'),
(1258, 11687, 2, 'active', 'available', 03149, NULL, '2017-08-11 15:12:41'),
(1258, 11688, 3, 'active', 'available', 03150, NULL, '2017-08-11 15:12:41'),
(1258, 11689, 4, 'active', 'available', 03151, NULL, '2017-08-11 15:12:41'),
(1258, 11690, 5, 'active', 'available', 03152, NULL, '2017-08-11 15:12:41'),
(1258, 11691, 6, 'active', 'available', 03153, NULL, '2017-08-11 15:12:41'),
(1258, 11692, 7, 'active', 'available', 03154, NULL, '2017-08-11 15:12:41'),
(1258, 11693, 8, 'active', 'available', 03155, NULL, '2017-08-11 15:12:41'),
(1258, 11694, 9, 'active', 'available', 03156, NULL, '2017-08-11 15:12:41'),
(1258, 11695, 10, 'active', 'available', 03157, NULL, '2017-08-11 15:12:41'),
(1258, 11696, 11, 'active', 'available', 03158, NULL, '2017-08-11 15:12:41'),
(1258, 11697, 12, 'active', 'available', 03159, NULL, '2017-08-11 15:12:41'),
(1259, 11698, 1, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1259, 11699, 2, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1259, 11700, 3, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1259, 11701, 4, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1259, 11702, 5, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1259, 11703, 6, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1259, 11704, 7, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1259, 11705, 8, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1259, 11706, 9, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1259, 11707, 10, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1259, 11708, 11, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1259, 11709, 12, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1260, 11710, 1, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1260, 11711, 2, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1260, 11712, 3, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1260, 11713, 4, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1260, 11714, 5, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1260, 11715, 6, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1260, 11716, 7, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1260, 11717, 8, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1260, 11718, 9, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1260, 11719, 10, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1260, 11720, 11, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1260, 11721, 12, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1294, 11722, 1, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1294, 11723, 2, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1294, 11724, 3, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1294, 11725, 4, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1294, 11726, 5, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1294, 11727, 6, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1294, 11728, 7, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1294, 11729, 8, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1294, 11730, 9, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1294, 11731, 10, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1294, 11732, 11, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1294, 11733, 12, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1295, 11734, 1, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1295, 11735, 2, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1295, 11736, 3, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1295, 11737, 4, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1295, 11738, 5, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1295, 11739, 6, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1295, 11740, 7, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1295, 11741, 8, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1295, 11742, 9, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1295, 11743, 10, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1295, 11744, 11, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1295, 11745, 12, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1296, 11746, 1, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1296, 11747, 2, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1296, 11748, 3, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1296, 11749, 4, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1296, 11750, 5, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1296, 11751, 6, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1296, 11752, 7, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1296, 11753, 8, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1296, 11754, 9, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1296, 11755, 10, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1296, 11756, 11, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1296, 11757, 12, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1276, 11758, 1, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1276, 11759, 2, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1276, 11760, 3, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1276, 11761, 4, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1276, 11762, 5, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1276, 11763, 6, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1276, 11764, 7, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1276, 11765, 8, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1276, 11766, 9, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1276, 11767, 10, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1276, 11768, 11, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1276, 11769, 12, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1277, 11770, 1, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1277, 11771, 2, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1277, 11772, 3, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1277, 11773, 4, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1277, 11774, 5, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1277, 11775, 6, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1277, 11776, 7, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1277, 11777, 8, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1277, 11778, 9, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1277, 11779, 10, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1277, 11780, 11, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1277, 11781, 12, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1278, 11782, 1, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1278, 11783, 2, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1278, 11784, 3, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1278, 11785, 4, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1278, 11786, 5, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1278, 11787, 6, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1278, 11788, 7, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1278, 11789, 8, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1278, 11790, 9, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1278, 11791, 10, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1278, 11792, 11, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1278, 11793, 12, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1252, 11794, 1, 'active', 'available', 03088, NULL, '2017-08-11 14:54:32'),
(1252, 11795, 2, 'active', 'available', 03089, NULL, '2017-08-11 14:54:32'),
(1252, 11796, 3, 'active', 'available', 03090, NULL, '2017-08-11 14:54:32'),
(1252, 11797, 4, 'active', 'available', 03091, NULL, '2017-08-11 14:54:32'),
(1252, 11798, 5, 'active', 'available', 03092, NULL, '2017-08-11 14:54:32'),
(1252, 11799, 6, 'active', 'available', 03093, NULL, '2017-08-11 14:54:32'),
(1252, 11800, 7, 'active', 'available', 03094, NULL, '2017-08-11 14:54:32'),
(1252, 11801, 8, 'active', 'available', 03095, NULL, '2017-08-11 14:54:32'),
(1252, 11802, 9, 'active', 'available', 03096, NULL, '2017-08-11 14:54:32'),
(1252, 11803, 10, 'active', 'available', 03097, NULL, '2017-08-11 14:54:32'),
(1252, 11804, 11, 'active', 'available', 03098, NULL, '2017-08-11 14:54:32'),
(1252, 11805, 12, 'active', 'available', 03099, NULL, '2017-08-11 14:54:33'),
(1253, 11806, 1, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1253, 11807, 2, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1253, 11808, 3, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1253, 11809, 4, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1253, 11810, 5, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1253, 11811, 6, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1253, 11812, 7, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1253, 11813, 8, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1253, 11814, 9, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1253, 11815, 10, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1253, 11816, 11, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1253, 11817, 12, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1254, 11818, 1, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1254, 11819, 2, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1254, 11820, 3, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1254, 11821, 4, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1254, 11822, 5, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1254, 11823, 6, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1254, 11824, 7, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1254, 11825, 8, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1254, 11826, 9, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1254, 11827, 10, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10');
INSERT INTO `port` (`fk_panel_UID`, `port_UID`, `number`, `strandStatus`, `jumperStatus`, `fk_strand_UID`, `fk_jumper_UID`, `lastmodified`) VALUES
(1254, 11828, 11, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1254, 11829, 12, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1249, 11830, 1, 'active', 'available', 02992, NULL, '2017-08-10 19:39:28'),
(1249, 11831, 2, 'active', 'available', 02993, NULL, '2017-08-10 19:39:29'),
(1249, 11832, 3, 'active', 'available', 02994, NULL, '2017-08-10 19:39:29'),
(1249, 11833, 4, 'active', 'available', 02995, NULL, '2017-08-10 19:39:29'),
(1249, 11834, 5, 'active', 'available', 02996, NULL, '2017-08-10 19:39:29'),
(1249, 11835, 6, 'active', 'available', 02997, NULL, '2017-08-10 19:39:29'),
(1249, 11836, 7, 'active', 'available', 02998, NULL, '2017-08-10 19:39:29'),
(1249, 11837, 8, 'active', 'available', 02999, NULL, '2017-08-10 19:39:29'),
(1249, 11838, 9, 'active', 'available', 03000, NULL, '2017-08-10 19:39:29'),
(1249, 11839, 10, 'active', 'available', 03001, NULL, '2017-08-10 19:39:29'),
(1249, 11840, 11, 'active', 'available', 03002, NULL, '2017-08-10 19:39:29'),
(1249, 11841, 12, 'active', 'available', 03003, NULL, '2017-08-10 19:39:29'),
(1250, 11842, 1, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1250, 11843, 2, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1250, 11844, 3, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1250, 11845, 4, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1250, 11846, 5, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1250, 11847, 6, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1250, 11848, 7, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1250, 11849, 8, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1250, 11850, 9, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1250, 11851, 10, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1250, 11852, 11, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1250, 11853, 12, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1251, 11854, 1, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1251, 11855, 2, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1251, 11856, 3, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1251, 11857, 4, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1251, 11858, 5, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1251, 11859, 6, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1251, 11860, 7, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1251, 11861, 8, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1251, 11862, 9, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1251, 11863, 10, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1251, 11864, 11, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1251, 11865, 12, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1246, 11866, 1, 'active', 'available', 02980, NULL, '2017-08-10 19:39:00'),
(1246, 11867, 2, 'active', 'available', 02981, NULL, '2017-08-10 19:39:00'),
(1246, 11868, 3, 'active', 'available', 02982, NULL, '2017-08-10 19:39:00'),
(1246, 11869, 4, 'active', 'available', 02983, NULL, '2017-08-10 19:39:00'),
(1246, 11870, 5, 'active', 'available', 02984, NULL, '2017-08-10 19:39:00'),
(1246, 11871, 6, 'active', 'available', 02985, NULL, '2017-08-10 19:39:00'),
(1246, 11872, 7, 'active', 'available', 02986, NULL, '2017-08-10 19:39:00'),
(1246, 11873, 8, 'active', 'available', 02987, NULL, '2017-08-10 19:39:00'),
(1246, 11874, 9, 'active', 'available', 02988, NULL, '2017-08-10 19:39:00'),
(1246, 11875, 10, 'active', 'available', 02989, NULL, '2017-08-10 19:39:00'),
(1246, 11876, 11, 'active', 'available', 02990, NULL, '2017-08-10 19:39:00'),
(1246, 11877, 12, 'active', 'available', 02991, NULL, '2017-08-10 19:39:00'),
(1247, 11878, 1, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1247, 11879, 2, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1247, 11880, 3, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1247, 11881, 4, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1247, 11882, 5, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1247, 11883, 6, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1247, 11884, 7, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1247, 11885, 8, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1247, 11886, 9, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1247, 11887, 10, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1247, 11888, 11, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1247, 11889, 12, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1248, 11890, 1, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1248, 11891, 2, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1248, 11892, 3, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1248, 11893, 4, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1248, 11894, 5, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1248, 11895, 6, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1248, 11896, 7, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1248, 11897, 8, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1248, 11898, 9, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1248, 11899, 10, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1248, 11900, 11, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1248, 11901, 12, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1243, 11902, 1, 'active', 'available', 02968, NULL, '2017-08-10 19:38:07'),
(1243, 11903, 2, 'active', 'available', 02969, NULL, '2017-08-10 19:38:07'),
(1243, 11904, 3, 'active', 'available', 02970, NULL, '2017-08-10 19:38:07'),
(1243, 11905, 4, 'active', 'available', 02971, NULL, '2017-08-10 19:38:07'),
(1243, 11906, 5, 'active', 'available', 02972, NULL, '2017-08-10 19:38:07'),
(1243, 11907, 6, 'active', 'available', 02973, NULL, '2017-08-10 19:38:07'),
(1243, 11908, 7, 'active', 'available', 02974, NULL, '2017-08-10 19:38:07'),
(1243, 11909, 8, 'active', 'available', 02975, NULL, '2017-08-10 19:38:07'),
(1243, 11910, 9, 'active', 'available', 02976, NULL, '2017-08-10 19:38:07'),
(1243, 11911, 10, 'active', 'available', 02977, NULL, '2017-08-10 19:38:07'),
(1243, 11912, 11, 'active', 'available', 02978, NULL, '2017-08-10 19:38:07'),
(1243, 11913, 12, 'active', 'available', 02979, NULL, '2017-08-10 19:38:07'),
(1244, 11914, 1, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1244, 11915, 2, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1244, 11916, 3, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1244, 11917, 4, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1244, 11918, 5, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1244, 11919, 6, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1244, 11920, 7, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1244, 11921, 8, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1244, 11922, 9, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1244, 11923, 10, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1244, 11924, 11, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1244, 11925, 12, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1245, 11926, 1, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1245, 11927, 2, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1245, 11928, 3, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1245, 11929, 4, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1245, 11930, 5, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1245, 11931, 6, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1245, 11932, 7, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1245, 11933, 8, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1245, 11934, 9, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1245, 11935, 10, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1245, 11936, 11, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1245, 11937, 12, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1240, 11938, 1, 'active', 'available', 02956, NULL, '2017-08-10 19:37:23'),
(1240, 11939, 2, 'active', 'available', 02957, NULL, '2017-08-10 19:37:23'),
(1240, 11940, 3, 'active', 'available', 02958, NULL, '2017-08-10 19:37:23'),
(1240, 11941, 4, 'active', 'available', 02959, NULL, '2017-08-10 19:37:24'),
(1240, 11942, 5, 'active', 'available', 02960, NULL, '2017-08-10 19:37:24'),
(1240, 11943, 6, 'active', 'available', 02961, NULL, '2017-08-10 19:37:24'),
(1240, 11944, 7, 'active', 'available', 02962, NULL, '2017-08-10 19:37:24'),
(1240, 11945, 8, 'active', 'available', 02963, NULL, '2017-08-10 19:37:24'),
(1240, 11946, 9, 'active', 'available', 02964, NULL, '2017-08-10 19:37:24'),
(1240, 11947, 10, 'active', 'available', 02965, NULL, '2017-08-10 19:37:24'),
(1240, 11948, 11, 'active', 'available', 02966, NULL, '2017-08-10 19:37:24'),
(1240, 11949, 12, 'active', 'available', 02967, NULL, '2017-08-10 19:37:24'),
(1241, 11950, 1, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1241, 11951, 2, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1241, 11952, 3, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1241, 11953, 4, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1241, 11954, 5, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1241, 11955, 6, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1241, 11956, 7, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1241, 11957, 8, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1241, 11958, 9, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1241, 11959, 10, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1241, 11960, 11, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1241, 11961, 12, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1242, 11962, 1, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1242, 11963, 2, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1242, 11964, 3, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1242, 11965, 4, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1242, 11966, 5, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1242, 11967, 6, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1242, 11968, 7, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1242, 11969, 8, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1242, 11970, 9, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1242, 11971, 10, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1242, 11972, 11, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1242, 11973, 12, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1237, 11974, 1, 'active', 'available', 02944, NULL, '2017-08-10 18:33:23'),
(1237, 11975, 2, 'active', 'available', 02945, NULL, '2017-08-10 18:33:23'),
(1237, 11976, 3, 'active', 'available', 02946, NULL, '2017-08-10 18:33:23'),
(1237, 11977, 4, 'active', 'available', 02947, NULL, '2017-08-10 18:33:23'),
(1237, 11978, 5, 'active', 'available', 02948, NULL, '2017-08-10 18:33:23'),
(1237, 11979, 6, 'active', 'available', 02949, NULL, '2017-08-10 18:33:23'),
(1237, 11980, 7, 'active', 'available', 02950, NULL, '2017-08-10 18:33:23'),
(1237, 11981, 8, 'active', 'available', 02951, NULL, '2017-08-10 18:33:23'),
(1237, 11982, 9, 'active', 'available', 02952, NULL, '2017-08-10 18:33:23'),
(1237, 11983, 10, 'active', 'available', 02953, NULL, '2017-08-10 18:33:23'),
(1237, 11984, 11, 'active', 'available', 02954, NULL, '2017-08-10 18:33:24'),
(1237, 11985, 12, 'active', 'available', 02955, NULL, '2017-08-10 18:33:24'),
(1238, 11986, 1, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1238, 11987, 2, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1238, 11988, 3, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1238, 11989, 4, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1238, 11990, 5, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1238, 11991, 6, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1238, 11992, 7, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1238, 11993, 8, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1238, 11994, 9, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1238, 11995, 10, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1238, 11996, 11, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1238, 11997, 12, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1239, 11998, 1, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1239, 11999, 2, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1239, 12000, 3, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1239, 12001, 4, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1239, 12002, 5, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1239, 12003, 6, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1239, 12004, 7, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1239, 12005, 8, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1239, 12006, 9, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1239, 12007, 10, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1239, 12008, 11, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1239, 12009, 12, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1234, 12010, 1, 'active', 'available', 02944, NULL, '2017-08-10 18:33:23'),
(1234, 12011, 2, 'active', 'available', 02945, NULL, '2017-08-10 18:33:23'),
(1234, 12012, 3, 'active', 'available', 02946, NULL, '2017-08-10 18:33:23'),
(1234, 12013, 4, 'active', 'available', 02947, NULL, '2017-08-10 18:33:23'),
(1234, 12014, 5, 'active', 'available', 02948, NULL, '2017-08-10 18:33:23'),
(1234, 12015, 6, 'active', 'available', 02949, NULL, '2017-08-10 18:33:23'),
(1234, 12016, 7, 'active', 'available', 02950, NULL, '2017-08-10 18:33:23'),
(1234, 12017, 8, 'active', 'available', 02951, NULL, '2017-08-10 18:33:23'),
(1234, 12018, 9, 'active', 'available', 02952, NULL, '2017-08-10 18:33:23'),
(1234, 12019, 10, 'active', 'available', 02953, NULL, '2017-08-10 18:33:23'),
(1234, 12020, 11, 'active', 'available', 02954, NULL, '2017-08-10 18:33:24'),
(1234, 12021, 12, 'active', 'available', 02955, NULL, '2017-08-10 18:33:24'),
(1235, 12022, 1, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1235, 12023, 2, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1235, 12024, 3, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1235, 12025, 4, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1235, 12026, 5, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1235, 12027, 6, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1235, 12028, 7, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1235, 12029, 8, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1235, 12030, 9, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1235, 12031, 10, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1235, 12032, 11, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1235, 12033, 12, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1236, 12034, 1, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1236, 12035, 2, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1236, 12036, 3, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1236, 12037, 4, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1236, 12038, 5, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1236, 12039, 6, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1236, 12040, 7, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1236, 12041, 8, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1236, 12042, 9, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1236, 12043, 10, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1236, 12044, 11, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1236, 12045, 12, 'available', 'available', NULL, NULL, '2017-08-10 16:35:10'),
(1306, 12910, 1, 'active', 'available', 02956, NULL, '2017-08-10 19:37:23'),
(1306, 12911, 2, 'active', 'available', 02957, NULL, '2017-08-10 19:37:23'),
(1306, 12912, 3, 'active', 'available', 02958, NULL, '2017-08-10 19:37:23'),
(1306, 12913, 4, 'active', 'available', 02959, NULL, '2017-08-10 19:37:24'),
(1306, 12914, 5, 'active', 'available', 02960, NULL, '2017-08-10 19:37:24'),
(1306, 12915, 6, 'active', 'available', 02961, NULL, '2017-08-10 19:37:24'),
(1306, 12916, 7, 'active', 'available', 02962, NULL, '2017-08-10 19:37:24'),
(1306, 12917, 8, 'active', 'available', 02963, NULL, '2017-08-10 19:37:24'),
(1306, 12918, 9, 'active', 'available', 02964, NULL, '2017-08-10 19:37:24'),
(1306, 12919, 10, 'active', 'available', 02965, NULL, '2017-08-10 19:37:24'),
(1306, 12920, 11, 'active', 'available', 02966, NULL, '2017-08-10 19:37:24'),
(1306, 12921, 12, 'active', 'available', 02967, NULL, '2017-08-10 19:37:24'),
(1307, 12922, 1, 'active', 'available', 02968, NULL, '2017-08-10 19:38:07'),
(1307, 12923, 2, 'active', 'available', 02969, NULL, '2017-08-10 19:38:07'),
(1307, 12924, 3, 'active', 'available', 02970, NULL, '2017-08-10 19:38:07'),
(1307, 12925, 4, 'active', 'available', 02971, NULL, '2017-08-10 19:38:07'),
(1307, 12926, 5, 'active', 'available', 02972, NULL, '2017-08-10 19:38:07'),
(1307, 12927, 6, 'active', 'available', 02973, NULL, '2017-08-10 19:38:07'),
(1307, 12928, 7, 'active', 'available', 02974, NULL, '2017-08-10 19:38:07'),
(1307, 12929, 8, 'active', 'available', 02975, NULL, '2017-08-10 19:38:07'),
(1307, 12930, 9, 'active', 'available', 02976, NULL, '2017-08-10 19:38:07'),
(1307, 12931, 10, 'active', 'available', 02977, NULL, '2017-08-10 19:38:07'),
(1307, 12932, 11, 'active', 'available', 02978, NULL, '2017-08-10 19:38:07'),
(1307, 12933, 12, 'active', 'available', 02979, NULL, '2017-08-10 19:38:07'),
(1308, 12934, 1, 'active', 'available', 02980, NULL, '2017-08-10 19:39:00'),
(1308, 12935, 2, 'active', 'available', 02981, NULL, '2017-08-10 19:39:00'),
(1308, 12936, 3, 'active', 'available', 02982, NULL, '2017-08-10 19:39:00'),
(1308, 12937, 4, 'active', 'available', 02983, NULL, '2017-08-10 19:39:00'),
(1308, 12938, 5, 'active', 'available', 02984, NULL, '2017-08-10 19:39:00'),
(1308, 12939, 6, 'active', 'available', 02985, NULL, '2017-08-10 19:39:00'),
(1308, 12940, 7, 'active', 'available', 02986, NULL, '2017-08-10 19:39:00'),
(1308, 12941, 8, 'active', 'available', 02987, NULL, '2017-08-10 19:39:00'),
(1308, 12942, 9, 'active', 'available', 02988, NULL, '2017-08-10 19:39:00'),
(1308, 12943, 10, 'active', 'available', 02989, NULL, '2017-08-10 19:39:00'),
(1308, 12944, 11, 'active', 'available', 02990, NULL, '2017-08-10 19:39:00'),
(1308, 12945, 12, 'active', 'available', 02991, NULL, '2017-08-10 19:39:00'),
(1309, 12946, 1, 'active', 'available', 02992, NULL, '2017-08-10 19:39:28'),
(1309, 12947, 2, 'active', 'available', 02993, NULL, '2017-08-10 19:39:29'),
(1309, 12948, 3, 'active', 'available', 02994, NULL, '2017-08-10 19:39:29'),
(1309, 12949, 4, 'active', 'available', 02995, NULL, '2017-08-10 19:39:29'),
(1309, 12950, 5, 'active', 'available', 02996, NULL, '2017-08-10 19:39:29'),
(1309, 12951, 6, 'active', 'available', 02997, NULL, '2017-08-10 19:39:29'),
(1309, 12952, 7, 'active', 'available', 02998, NULL, '2017-08-10 19:39:29'),
(1309, 12953, 8, 'active', 'available', 02999, NULL, '2017-08-10 19:39:29'),
(1309, 12954, 9, 'active', 'available', 03000, NULL, '2017-08-10 19:39:29'),
(1309, 12955, 10, 'active', 'available', 03001, NULL, '2017-08-10 19:39:29'),
(1309, 12956, 11, 'active', 'available', 03002, NULL, '2017-08-10 19:39:29'),
(1309, 12957, 12, 'active', 'available', 03003, NULL, '2017-08-10 19:39:29'),
(1310, 12958, 1, 'active', 'available', 03088, NULL, '2017-08-11 14:54:32'),
(1310, 12959, 2, 'active', 'available', 03089, NULL, '2017-08-11 14:54:32'),
(1310, 12960, 3, 'active', 'available', 03090, NULL, '2017-08-11 14:54:32'),
(1310, 12961, 4, 'active', 'available', 03091, NULL, '2017-08-11 14:54:32'),
(1310, 12962, 5, 'active', 'available', 03092, NULL, '2017-08-11 14:54:32'),
(1310, 12963, 6, 'active', 'available', 03093, NULL, '2017-08-11 14:54:32'),
(1310, 12964, 7, 'active', 'available', 03094, NULL, '2017-08-11 14:54:32'),
(1310, 12965, 8, 'active', 'available', 03095, NULL, '2017-08-11 14:54:32'),
(1310, 12966, 9, 'active', 'available', 03096, NULL, '2017-08-11 14:54:32'),
(1310, 12967, 10, 'active', 'available', 03097, NULL, '2017-08-11 14:54:32'),
(1310, 12968, 11, 'active', 'available', 03098, NULL, '2017-08-11 14:54:32'),
(1310, 12969, 12, 'active', 'available', 03099, NULL, '2017-08-11 14:54:33'),
(1311, 12970, 1, 'active', 'available', 03196, NULL, '2017-08-11 15:17:55'),
(1311, 12971, 2, 'active', 'available', 03197, NULL, '2017-08-11 15:17:55'),
(1311, 12972, 3, 'active', 'available', 03198, NULL, '2017-08-11 15:17:55'),
(1311, 12973, 4, 'active', 'available', 03199, NULL, '2017-08-11 15:17:55'),
(1311, 12974, 5, 'active', 'available', 03200, NULL, '2017-08-11 15:17:55'),
(1311, 12975, 6, 'active', 'available', 03201, NULL, '2017-08-11 15:17:55'),
(1311, 12976, 7, 'active', 'available', 03202, NULL, '2017-08-11 15:17:55'),
(1311, 12977, 8, 'active', 'available', 03203, NULL, '2017-08-11 15:17:55'),
(1311, 12978, 9, 'active', 'available', 03204, NULL, '2017-08-11 15:17:55'),
(1311, 12979, 10, 'active', 'available', 03205, NULL, '2017-08-11 15:17:55'),
(1311, 12980, 11, 'active', 'available', 03206, NULL, '2017-08-11 15:17:55'),
(1311, 12981, 12, 'active', 'available', 03207, NULL, '2017-08-11 15:17:56'),
(1312, 12982, 1, 'available', 'available', NULL, NULL, '2017-08-10 19:41:32'),
(1312, 12983, 2, 'available', 'available', NULL, NULL, '2017-08-10 19:41:32'),
(1312, 12984, 3, 'available', 'available', NULL, NULL, '2017-08-10 19:41:33'),
(1312, 12985, 4, 'available', 'available', NULL, NULL, '2017-08-10 19:41:33'),
(1312, 12986, 5, 'available', 'available', NULL, NULL, '2017-08-10 19:41:33'),
(1312, 12987, 6, 'available', 'available', NULL, NULL, '2017-08-10 19:41:33'),
(1312, 12988, 7, 'available', 'available', NULL, NULL, '2017-08-10 19:41:33'),
(1312, 12989, 8, 'available', 'available', NULL, NULL, '2017-08-10 19:41:33'),
(1312, 12990, 9, 'available', 'available', NULL, NULL, '2017-08-10 19:41:33'),
(1312, 12991, 10, 'available', 'available', NULL, NULL, '2017-08-10 19:41:33'),
(1312, 12992, 11, 'available', 'available', NULL, NULL, '2017-08-10 19:41:33'),
(1312, 12993, 12, 'available', 'available', NULL, NULL, '2017-08-10 19:41:33'),
(1313, 12994, 1, 'active', 'available', 03040, NULL, '2017-08-10 20:15:33'),
(1313, 12995, 2, 'active', 'available', 03041, NULL, '2017-08-10 20:15:33'),
(1313, 12996, 3, 'active', 'available', 03042, NULL, '2017-08-10 20:15:33'),
(1313, 12997, 4, 'active', 'available', 03043, NULL, '2017-08-10 20:15:33'),
(1313, 12998, 5, 'active', 'available', 03044, NULL, '2017-08-10 20:15:33'),
(1313, 12999, 6, 'active', 'available', 03045, NULL, '2017-08-10 20:15:33'),
(1313, 13000, 7, 'active', 'available', 03046, NULL, '2017-08-10 20:15:33'),
(1313, 13001, 8, 'active', 'available', 03047, NULL, '2017-08-10 20:15:33'),
(1313, 13002, 9, 'active', 'available', 03048, NULL, '2017-08-10 20:15:33'),
(1313, 13003, 10, 'active', 'available', 03049, NULL, '2017-08-10 20:15:33'),
(1313, 13004, 11, 'active', 'available', 03050, NULL, '2017-08-10 20:15:33'),
(1313, 13005, 12, 'active', 'available', 03051, NULL, '2017-08-10 20:15:33'),
(1314, 13006, 1, 'active', 'available', 03004, NULL, '2017-08-10 19:50:20'),
(1314, 13007, 2, 'active', 'available', 03005, NULL, '2017-08-10 19:50:20'),
(1314, 13008, 3, 'active', 'available', 03006, NULL, '2017-08-10 19:50:20'),
(1314, 13009, 4, 'active', 'available', 03007, NULL, '2017-08-10 19:50:20'),
(1314, 13010, 5, 'active', 'available', 03008, NULL, '2017-08-10 19:50:20'),
(1314, 13011, 6, 'active', 'available', 03009, NULL, '2017-08-10 19:50:20'),
(1314, 13012, 7, 'active', 'available', 03010, NULL, '2017-08-10 19:50:20'),
(1314, 13013, 8, 'active', 'available', 03011, NULL, '2017-08-10 19:50:20'),
(1314, 13014, 9, 'active', 'available', 03012, NULL, '2017-08-10 19:50:20'),
(1314, 13015, 10, 'active', 'available', 03013, NULL, '2017-08-10 19:50:20'),
(1314, 13016, 11, 'active', 'available', 03014, NULL, '2017-08-10 19:50:20'),
(1314, 13017, 12, 'active', 'available', 03015, NULL, '2017-08-10 19:50:20'),
(1315, 13018, 1, 'active', 'available', 03052, NULL, '2017-08-10 20:16:27'),
(1315, 13019, 2, 'active', 'available', 03053, NULL, '2017-08-10 20:16:27'),
(1315, 13020, 3, 'active', 'available', 03054, NULL, '2017-08-10 20:16:27'),
(1315, 13021, 4, 'active', 'available', 03055, NULL, '2017-08-10 20:16:27'),
(1315, 13022, 5, 'active', 'available', 03056, NULL, '2017-08-10 20:16:27'),
(1315, 13023, 6, 'active', 'available', 03057, NULL, '2017-08-10 20:16:27'),
(1315, 13024, 7, 'active', 'available', 03058, NULL, '2017-08-10 20:16:27'),
(1315, 13025, 8, 'active', 'available', 03059, NULL, '2017-08-10 20:16:27'),
(1315, 13026, 9, 'active', 'available', 03060, NULL, '2017-08-10 20:16:27'),
(1315, 13027, 10, 'active', 'available', 03061, NULL, '2017-08-10 20:16:27'),
(1315, 13028, 11, 'active', 'available', 03062, NULL, '2017-08-10 20:16:27'),
(1315, 13029, 12, 'active', 'available', 03063, NULL, '2017-08-10 20:16:27'),
(1316, 13030, 1, 'active', 'available', 03040, NULL, '2017-08-10 20:15:33'),
(1316, 13031, 2, 'active', 'available', 03041, NULL, '2017-08-10 20:15:33'),
(1316, 13032, 3, 'active', 'available', 03042, NULL, '2017-08-10 20:15:33'),
(1316, 13033, 4, 'active', 'available', 03043, NULL, '2017-08-10 20:15:33'),
(1316, 13034, 5, 'active', 'available', 03044, NULL, '2017-08-10 20:15:33'),
(1316, 13035, 6, 'active', 'available', 03045, NULL, '2017-08-10 20:15:33'),
(1316, 13036, 7, 'active', 'available', 03046, NULL, '2017-08-10 20:15:33'),
(1316, 13037, 8, 'active', 'available', 03047, NULL, '2017-08-10 20:15:33'),
(1316, 13038, 9, 'active', 'available', 03048, NULL, '2017-08-10 20:15:33'),
(1316, 13039, 10, 'active', 'available', 03049, NULL, '2017-08-10 20:15:33'),
(1316, 13040, 11, 'active', 'available', 03050, NULL, '2017-08-10 20:15:33'),
(1316, 13041, 12, 'active', 'available', 03051, NULL, '2017-08-10 20:15:33'),
(1319, 13066, 1, 'active', 'available', 03064, NULL, '2017-08-10 20:18:33'),
(1319, 13067, 2, 'active', 'available', 03065, NULL, '2017-08-10 20:18:33'),
(1319, 13068, 3, 'active', 'available', 03066, NULL, '2017-08-10 20:18:33'),
(1319, 13069, 4, 'active', 'available', 03067, NULL, '2017-08-10 20:18:33'),
(1319, 13070, 5, 'active', 'available', 03068, NULL, '2017-08-10 20:18:33'),
(1319, 13071, 6, 'active', 'available', 03069, NULL, '2017-08-10 20:18:33'),
(1319, 13072, 7, 'active', 'available', 03070, NULL, '2017-08-10 20:18:33'),
(1319, 13073, 8, 'active', 'available', 03071, NULL, '2017-08-10 20:18:33'),
(1319, 13074, 9, 'active', 'available', 03072, NULL, '2017-08-10 20:18:33'),
(1319, 13075, 10, 'active', 'available', 03073, NULL, '2017-08-10 20:18:33'),
(1319, 13076, 11, 'active', 'available', 03074, NULL, '2017-08-10 20:18:33'),
(1319, 13077, 12, 'active', 'available', 03075, NULL, '2017-08-10 20:18:33'),
(1320, 13078, 1, 'active', 'available', 03076, NULL, '2017-08-10 20:19:08'),
(1320, 13079, 2, 'active', 'available', 03077, NULL, '2017-08-10 20:19:08'),
(1320, 13080, 3, 'active', 'available', 03078, NULL, '2017-08-10 20:19:08'),
(1320, 13081, 4, 'active', 'available', 03079, NULL, '2017-08-10 20:19:08'),
(1320, 13082, 5, 'active', 'available', 03080, NULL, '2017-08-10 20:19:08'),
(1320, 13083, 6, 'active', 'available', 03081, NULL, '2017-08-10 20:19:08'),
(1320, 13084, 7, 'active', 'available', 03082, NULL, '2017-08-10 20:19:08'),
(1320, 13085, 8, 'active', 'available', 03083, NULL, '2017-08-10 20:19:08'),
(1320, 13086, 9, 'active', 'available', 03084, NULL, '2017-08-10 20:19:08'),
(1320, 13087, 10, 'active', 'available', 03085, NULL, '2017-08-10 20:19:08'),
(1320, 13088, 11, 'active', 'available', 03086, NULL, '2017-08-10 20:19:08'),
(1320, 13089, 12, 'active', 'available', 03087, NULL, '2017-08-10 20:19:08'),
(1321, 13090, 1, 'active', 'available', 03076, NULL, '2017-08-10 20:19:08'),
(1321, 13091, 2, 'active', 'available', 03077, NULL, '2017-08-10 20:19:08'),
(1321, 13092, 3, 'active', 'available', 03078, NULL, '2017-08-10 20:19:08'),
(1321, 13093, 4, 'active', 'available', 03079, NULL, '2017-08-10 20:19:08'),
(1321, 13094, 5, 'active', 'available', 03080, NULL, '2017-08-10 20:19:08'),
(1321, 13095, 6, 'active', 'available', 03081, NULL, '2017-08-10 20:19:08'),
(1321, 13096, 7, 'active', 'available', 03082, NULL, '2017-08-10 20:19:08'),
(1321, 13097, 8, 'active', 'available', 03083, NULL, '2017-08-10 20:19:08'),
(1321, 13098, 9, 'active', 'available', 03084, NULL, '2017-08-10 20:19:08'),
(1321, 13099, 10, 'active', 'available', 03085, NULL, '2017-08-10 20:19:08'),
(1321, 13100, 11, 'active', 'available', 03086, NULL, '2017-08-10 20:19:08'),
(1321, 13101, 12, 'active', 'available', 03087, NULL, '2017-08-10 20:19:08'),
(1322, 13102, 1, 'active', 'available', 03004, NULL, '2017-08-10 19:50:20'),
(1322, 13103, 2, 'active', 'available', 03005, NULL, '2017-08-10 19:50:20'),
(1322, 13104, 3, 'active', 'available', 03006, NULL, '2017-08-10 19:50:20'),
(1322, 13105, 4, 'active', 'available', 03007, NULL, '2017-08-10 19:50:20'),
(1322, 13106, 5, 'active', 'available', 03008, NULL, '2017-08-10 19:50:20'),
(1322, 13107, 6, 'active', 'available', 03009, NULL, '2017-08-10 19:50:20'),
(1322, 13108, 7, 'active', 'available', 03010, NULL, '2017-08-10 19:50:20'),
(1322, 13109, 8, 'active', 'available', 03011, NULL, '2017-08-10 19:50:20'),
(1322, 13110, 9, 'active', 'available', 03012, NULL, '2017-08-10 19:50:20'),
(1322, 13111, 10, 'active', 'available', 03013, NULL, '2017-08-10 19:50:20'),
(1322, 13112, 11, 'active', 'available', 03014, NULL, '2017-08-10 19:50:20'),
(1322, 13113, 12, 'active', 'available', 03015, NULL, '2017-08-10 19:50:20'),
(1323, 13114, 1, 'active', 'available', 03052, NULL, '2017-08-10 20:16:27'),
(1323, 13115, 2, 'active', 'available', 03053, NULL, '2017-08-10 20:16:27'),
(1323, 13116, 3, 'active', 'available', 03054, NULL, '2017-08-10 20:16:27'),
(1323, 13117, 4, 'active', 'available', 03055, NULL, '2017-08-10 20:16:27'),
(1323, 13118, 5, 'active', 'available', 03056, NULL, '2017-08-10 20:16:27'),
(1323, 13119, 6, 'active', 'available', 03057, NULL, '2017-08-10 20:16:27'),
(1323, 13120, 7, 'active', 'available', 03058, NULL, '2017-08-10 20:16:27'),
(1323, 13121, 8, 'active', 'available', 03059, NULL, '2017-08-10 20:16:27'),
(1323, 13122, 9, 'active', 'available', 03060, NULL, '2017-08-10 20:16:27'),
(1323, 13123, 10, 'active', 'available', 03061, NULL, '2017-08-10 20:16:27'),
(1323, 13124, 11, 'active', 'available', 03062, NULL, '2017-08-10 20:16:27'),
(1323, 13125, 12, 'active', 'available', 03063, NULL, '2017-08-10 20:16:27'),
(1324, 13126, 1, 'active', 'available', 03064, NULL, '2017-08-10 20:18:33'),
(1324, 13127, 2, 'active', 'available', 03065, NULL, '2017-08-10 20:18:33'),
(1324, 13128, 3, 'active', 'available', 03066, NULL, '2017-08-10 20:18:33'),
(1324, 13129, 4, 'active', 'available', 03067, NULL, '2017-08-10 20:18:33'),
(1324, 13130, 5, 'active', 'available', 03068, NULL, '2017-08-10 20:18:33'),
(1324, 13131, 6, 'active', 'available', 03069, NULL, '2017-08-10 20:18:33'),
(1324, 13132, 7, 'active', 'available', 03070, NULL, '2017-08-10 20:18:33'),
(1324, 13133, 8, 'active', 'available', 03071, NULL, '2017-08-10 20:18:33'),
(1324, 13134, 9, 'active', 'available', 03072, NULL, '2017-08-10 20:18:33'),
(1324, 13135, 10, 'active', 'available', 03073, NULL, '2017-08-10 20:18:33'),
(1324, 13136, 11, 'active', 'available', 03074, NULL, '2017-08-10 20:18:33'),
(1324, 13137, 12, 'active', 'available', 03075, NULL, '2017-08-10 20:18:33'),
(1326, 13150, 1, 'active', 'available', 03112, NULL, '2017-08-11 14:58:06'),
(1326, 13151, 2, 'active', 'available', 03113, NULL, '2017-08-11 14:58:06'),
(1326, 13152, 3, 'active', 'available', 03114, NULL, '2017-08-11 14:58:06'),
(1326, 13153, 4, 'active', 'available', 03115, NULL, '2017-08-11 14:58:06'),
(1326, 13154, 5, 'active', 'available', 03116, NULL, '2017-08-11 14:58:06'),
(1326, 13155, 6, 'active', 'available', 03117, NULL, '2017-08-11 14:58:06'),
(1326, 13156, 7, 'active', 'available', 03118, NULL, '2017-08-11 14:58:06'),
(1326, 13157, 8, 'active', 'available', 03119, NULL, '2017-08-11 14:58:06'),
(1326, 13158, 9, 'active', 'available', 03120, NULL, '2017-08-11 14:58:06'),
(1326, 13159, 10, 'active', 'available', 03121, NULL, '2017-08-11 14:58:06'),
(1326, 13160, 11, 'active', 'available', 03122, NULL, '2017-08-11 14:58:06'),
(1326, 13161, 12, 'active', 'available', 03123, NULL, '2017-08-11 14:58:06'),
(1327, 13162, 1, 'active', 'available', 03112, NULL, '2017-08-11 14:58:06'),
(1327, 13163, 2, 'active', 'available', 03113, NULL, '2017-08-11 14:58:06'),
(1327, 13164, 3, 'active', 'available', 03114, NULL, '2017-08-11 14:58:06'),
(1327, 13165, 4, 'active', 'available', 03115, NULL, '2017-08-11 14:58:06'),
(1327, 13166, 5, 'active', 'available', 03116, NULL, '2017-08-11 14:58:06'),
(1327, 13167, 6, 'active', 'available', 03117, NULL, '2017-08-11 14:58:06'),
(1327, 13168, 7, 'active', 'available', 03118, NULL, '2017-08-11 14:58:06'),
(1327, 13169, 8, 'active', 'available', 03119, NULL, '2017-08-11 14:58:06'),
(1327, 13170, 9, 'active', 'available', 03120, NULL, '2017-08-11 14:58:06'),
(1327, 13171, 10, 'active', 'available', 03121, NULL, '2017-08-11 14:58:06'),
(1327, 13172, 11, 'active', 'available', 03122, NULL, '2017-08-11 14:58:06'),
(1327, 13173, 12, 'active', 'available', 03123, NULL, '2017-08-11 14:58:06'),
(1328, 13174, 1, 'active', 'available', 03124, NULL, '2017-08-11 15:09:08'),
(1328, 13175, 2, 'active', 'available', 03125, NULL, '2017-08-11 15:09:08'),
(1328, 13176, 3, 'active', 'available', 03126, NULL, '2017-08-11 15:09:08'),
(1328, 13177, 4, 'active', 'available', 03127, NULL, '2017-08-11 15:09:08'),
(1328, 13178, 5, 'active', 'available', 03128, NULL, '2017-08-11 15:09:08'),
(1328, 13179, 6, 'active', 'available', 03129, NULL, '2017-08-11 15:09:08'),
(1328, 13180, 7, 'active', 'available', 03130, NULL, '2017-08-11 15:09:08'),
(1328, 13181, 8, 'active', 'available', 03131, NULL, '2017-08-11 15:09:08'),
(1328, 13182, 9, 'active', 'available', 03132, NULL, '2017-08-11 15:09:08'),
(1328, 13183, 10, 'active', 'available', 03133, NULL, '2017-08-11 15:09:08'),
(1328, 13184, 11, 'active', 'available', 03134, NULL, '2017-08-11 15:09:08'),
(1328, 13185, 12, 'active', 'available', 03135, NULL, '2017-08-11 15:09:08'),
(1329, 13186, 1, 'active', 'available', 03136, NULL, '2017-08-11 15:10:13'),
(1329, 13187, 2, 'active', 'available', 03137, NULL, '2017-08-11 15:10:13'),
(1329, 13188, 3, 'active', 'available', 03138, NULL, '2017-08-11 15:10:13'),
(1329, 13189, 4, 'active', 'available', 03139, NULL, '2017-08-11 15:10:13'),
(1329, 13190, 5, 'active', 'available', 03140, NULL, '2017-08-11 15:10:13'),
(1329, 13191, 6, 'active', 'available', 03141, NULL, '2017-08-11 15:10:13'),
(1329, 13192, 7, 'active', 'available', 03142, NULL, '2017-08-11 15:10:13'),
(1329, 13193, 8, 'active', 'available', 03143, NULL, '2017-08-11 15:10:13'),
(1329, 13194, 9, 'active', 'available', 03144, NULL, '2017-08-11 15:10:13'),
(1329, 13195, 10, 'active', 'available', 03145, NULL, '2017-08-11 15:10:13'),
(1329, 13196, 11, 'active', 'available', 03146, NULL, '2017-08-11 15:10:13'),
(1329, 13197, 12, 'active', 'available', 03147, NULL, '2017-08-11 15:10:13'),
(1330, 13198, 1, 'active', 'available', 03136, NULL, '2017-08-11 15:10:13'),
(1330, 13199, 2, 'active', 'available', 03137, NULL, '2017-08-11 15:10:13'),
(1330, 13200, 3, 'active', 'available', 03138, NULL, '2017-08-11 15:10:13'),
(1330, 13201, 4, 'active', 'available', 03139, NULL, '2017-08-11 15:10:13'),
(1330, 13202, 5, 'active', 'available', 03140, NULL, '2017-08-11 15:10:13'),
(1330, 13203, 6, 'active', 'available', 03141, NULL, '2017-08-11 15:10:13'),
(1330, 13204, 7, 'active', 'available', 03142, NULL, '2017-08-11 15:10:13'),
(1330, 13205, 8, 'active', 'available', 03143, NULL, '2017-08-11 15:10:13'),
(1330, 13206, 9, 'active', 'available', 03144, NULL, '2017-08-11 15:10:13'),
(1330, 13207, 10, 'active', 'available', 03145, NULL, '2017-08-11 15:10:13'),
(1330, 13208, 11, 'active', 'available', 03146, NULL, '2017-08-11 15:10:13'),
(1330, 13209, 12, 'active', 'available', 03147, NULL, '2017-08-11 15:10:13'),
(1331, 13210, 1, 'active', 'available', 03148, NULL, '2017-08-11 15:12:41'),
(1331, 13211, 2, 'active', 'available', 03149, NULL, '2017-08-11 15:12:41'),
(1331, 13212, 3, 'active', 'available', 03150, NULL, '2017-08-11 15:12:41'),
(1331, 13213, 4, 'active', 'available', 03151, NULL, '2017-08-11 15:12:41'),
(1331, 13214, 5, 'active', 'available', 03152, NULL, '2017-08-11 15:12:41'),
(1331, 13215, 6, 'active', 'available', 03153, NULL, '2017-08-11 15:12:41'),
(1331, 13216, 7, 'active', 'available', 03154, NULL, '2017-08-11 15:12:41'),
(1331, 13217, 8, 'active', 'available', 03155, NULL, '2017-08-11 15:12:41'),
(1331, 13218, 9, 'active', 'available', 03156, NULL, '2017-08-11 15:12:41'),
(1331, 13219, 10, 'active', 'available', 03157, NULL, '2017-08-11 15:12:41'),
(1331, 13220, 11, 'active', 'available', 03158, NULL, '2017-08-11 15:12:41'),
(1331, 13221, 12, 'active', 'available', 03159, NULL, '2017-08-11 15:12:41'),
(1332, 13222, 1, 'active', 'available', 03160, NULL, '2017-08-11 15:13:10'),
(1332, 13223, 2, 'active', 'available', 03161, NULL, '2017-08-11 15:13:10'),
(1332, 13224, 3, 'active', 'available', 03162, NULL, '2017-08-11 15:13:10'),
(1332, 13225, 4, 'active', 'available', 03163, NULL, '2017-08-11 15:13:10'),
(1332, 13226, 5, 'active', 'available', 03164, NULL, '2017-08-11 15:13:10'),
(1332, 13227, 6, 'active', 'available', 03165, NULL, '2017-08-11 15:13:10'),
(1332, 13228, 7, 'active', 'available', 03166, NULL, '2017-08-11 15:13:10'),
(1332, 13229, 8, 'active', 'available', 03167, NULL, '2017-08-11 15:13:10'),
(1332, 13230, 9, 'active', 'available', 03168, NULL, '2017-08-11 15:13:10'),
(1332, 13231, 10, 'active', 'available', 03169, NULL, '2017-08-11 15:13:10'),
(1332, 13232, 11, 'active', 'available', 03170, NULL, '2017-08-11 15:13:10'),
(1332, 13233, 12, 'active', 'available', 03171, NULL, '2017-08-11 15:13:10'),
(1333, 13234, 1, 'active', 'available', 03172, NULL, '2017-08-11 15:16:09'),
(1333, 13235, 2, 'active', 'available', 03173, NULL, '2017-08-11 15:16:09'),
(1333, 13236, 3, 'active', 'available', 03174, NULL, '2017-08-11 15:16:09'),
(1333, 13237, 4, 'active', 'available', 03175, NULL, '2017-08-11 15:16:09'),
(1333, 13238, 5, 'active', 'available', 03176, NULL, '2017-08-11 15:16:09'),
(1333, 13239, 6, 'active', 'available', 03177, NULL, '2017-08-11 15:16:09'),
(1333, 13240, 7, 'active', 'available', 03178, NULL, '2017-08-11 15:16:09'),
(1333, 13241, 8, 'active', 'available', 03179, NULL, '2017-08-11 15:16:09'),
(1333, 13242, 9, 'active', 'available', 03180, NULL, '2017-08-11 15:16:09'),
(1333, 13243, 10, 'active', 'available', 03181, NULL, '2017-08-11 15:16:09'),
(1333, 13244, 11, 'active', 'available', 03182, NULL, '2017-08-11 15:16:09'),
(1333, 13245, 12, 'active', 'available', 03183, NULL, '2017-08-11 15:16:09'),
(1334, 13246, 1, 'active', 'available', 03160, NULL, '2017-08-11 15:13:10'),
(1334, 13247, 2, 'active', 'available', 03161, NULL, '2017-08-11 15:13:10'),
(1334, 13248, 3, 'active', 'available', 03162, NULL, '2017-08-11 15:13:10'),
(1334, 13249, 4, 'active', 'available', 03163, NULL, '2017-08-11 15:13:10'),
(1334, 13250, 5, 'active', 'available', 03164, NULL, '2017-08-11 15:13:10'),
(1334, 13251, 6, 'active', 'available', 03165, NULL, '2017-08-11 15:13:10'),
(1334, 13252, 7, 'active', 'available', 03166, NULL, '2017-08-11 15:13:10'),
(1334, 13253, 8, 'active', 'available', 03167, NULL, '2017-08-11 15:13:10'),
(1334, 13254, 9, 'active', 'available', 03168, NULL, '2017-08-11 15:13:10'),
(1334, 13255, 10, 'active', 'available', 03169, NULL, '2017-08-11 15:13:10'),
(1334, 13256, 11, 'active', 'available', 03170, NULL, '2017-08-11 15:13:10'),
(1334, 13257, 12, 'active', 'available', 03171, NULL, '2017-08-11 15:13:10'),
(1335, 13258, 1, 'active', 'available', 03184, NULL, '2017-08-11 15:16:43'),
(1335, 13259, 2, 'active', 'available', 03185, NULL, '2017-08-11 15:16:43'),
(1335, 13260, 3, 'active', 'available', 03186, NULL, '2017-08-11 15:16:43'),
(1335, 13261, 4, 'active', 'available', 03187, NULL, '2017-08-11 15:16:43'),
(1335, 13262, 5, 'active', 'available', 03188, NULL, '2017-08-11 15:16:43'),
(1335, 13263, 6, 'active', 'available', 03189, NULL, '2017-08-11 15:16:43'),
(1335, 13264, 7, 'active', 'available', 03190, NULL, '2017-08-11 15:16:43'),
(1335, 13265, 8, 'active', 'available', 03191, NULL, '2017-08-11 15:16:43'),
(1335, 13266, 9, 'active', 'available', 03192, NULL, '2017-08-11 15:16:43'),
(1335, 13267, 10, 'active', 'available', 03193, NULL, '2017-08-11 15:16:43'),
(1335, 13268, 11, 'active', 'available', 03194, NULL, '2017-08-11 15:16:43'),
(1335, 13269, 12, 'active', 'available', 03195, NULL, '2017-08-11 15:16:43'),
(1336, 13270, 1, 'active', 'available', 03208, NULL, '2017-08-11 15:18:37'),
(1336, 13271, 2, 'active', 'available', 03209, NULL, '2017-08-11 15:18:38'),
(1336, 13272, 3, 'active', 'available', 03210, NULL, '2017-08-11 15:18:38'),
(1336, 13273, 4, 'active', 'available', 03211, NULL, '2017-08-11 15:18:38'),
(1336, 13274, 5, 'active', 'available', 03212, NULL, '2017-08-11 15:18:38'),
(1336, 13275, 6, 'active', 'available', 03213, NULL, '2017-08-11 15:18:38'),
(1336, 13276, 7, 'active', 'available', 03214, NULL, '2017-08-11 15:18:38'),
(1336, 13277, 8, 'active', 'available', 03215, NULL, '2017-08-11 15:18:38'),
(1336, 13278, 9, 'active', 'available', 03216, NULL, '2017-08-11 15:18:38'),
(1336, 13279, 10, 'active', 'available', 03217, NULL, '2017-08-11 15:18:38'),
(1336, 13280, 11, 'active', 'available', 03218, NULL, '2017-08-11 15:18:38'),
(1336, 13281, 12, 'active', 'available', 03219, NULL, '2017-08-11 15:18:38'),
(1337, 13282, 1, 'active', 'available', 03184, NULL, '2017-08-11 15:16:43'),
(1337, 13283, 2, 'active', 'available', 03185, NULL, '2017-08-11 15:16:43'),
(1337, 13284, 3, 'active', 'available', 03186, NULL, '2017-08-11 15:16:43'),
(1337, 13285, 4, 'active', 'available', 03187, NULL, '2017-08-11 15:16:43'),
(1337, 13286, 5, 'active', 'available', 03188, NULL, '2017-08-11 15:16:43'),
(1337, 13287, 6, 'active', 'available', 03189, NULL, '2017-08-11 15:16:43'),
(1337, 13288, 7, 'active', 'available', 03190, NULL, '2017-08-11 15:16:43'),
(1337, 13289, 8, 'active', 'available', 03191, NULL, '2017-08-11 15:16:43'),
(1337, 13290, 9, 'active', 'available', 03192, NULL, '2017-08-11 15:16:43'),
(1337, 13291, 10, 'active', 'available', 03193, NULL, '2017-08-11 15:16:43'),
(1337, 13292, 11, 'active', 'available', 03194, NULL, '2017-08-11 15:16:43'),
(1337, 13293, 12, 'active', 'available', 03195, NULL, '2017-08-11 15:16:43'),
(1338, 13294, 1, 'available', 'available', NULL, NULL, '2017-08-11 15:15:16'),
(1338, 13295, 2, 'available', 'available', NULL, NULL, '2017-08-11 15:15:16'),
(1338, 13296, 3, 'available', 'available', NULL, NULL, '2017-08-11 15:15:16'),
(1338, 13297, 4, 'available', 'available', NULL, NULL, '2017-08-11 15:15:16'),
(1338, 13298, 5, 'available', 'available', NULL, NULL, '2017-08-11 15:15:16'),
(1338, 13299, 6, 'available', 'available', NULL, NULL, '2017-08-11 15:15:16'),
(1338, 13300, 7, 'available', 'available', NULL, NULL, '2017-08-11 15:15:16'),
(1338, 13301, 8, 'available', 'available', NULL, NULL, '2017-08-11 15:15:16'),
(1338, 13302, 9, 'available', 'available', NULL, NULL, '2017-08-11 15:15:16'),
(1338, 13303, 10, 'available', 'available', NULL, NULL, '2017-08-11 15:15:16'),
(1338, 13304, 11, 'available', 'available', NULL, NULL, '2017-08-11 15:15:16'),
(1338, 13305, 12, 'available', 'available', NULL, NULL, '2017-08-11 15:15:16'),
(1339, 13306, 1, 'active', 'available', 03208, NULL, '2017-08-11 15:18:37'),
(1339, 13307, 2, 'active', 'available', 03209, NULL, '2017-08-11 15:18:38'),
(1339, 13308, 3, 'active', 'available', 03210, NULL, '2017-08-11 15:18:38'),
(1339, 13309, 4, 'active', 'available', 03211, NULL, '2017-08-11 15:18:38'),
(1339, 13310, 5, 'active', 'available', 03212, NULL, '2017-08-11 15:18:38'),
(1339, 13311, 6, 'active', 'available', 03213, NULL, '2017-08-11 15:18:38'),
(1339, 13312, 7, 'active', 'available', 03214, NULL, '2017-08-11 15:18:38'),
(1339, 13313, 8, 'active', 'available', 03215, NULL, '2017-08-11 15:18:38'),
(1339, 13314, 9, 'active', 'available', 03216, NULL, '2017-08-11 15:18:38'),
(1339, 13315, 10, 'active', 'available', 03217, NULL, '2017-08-11 15:18:38'),
(1339, 13316, 11, 'active', 'available', 03218, NULL, '2017-08-11 15:18:38'),
(1339, 13317, 12, 'active', 'available', 03219, NULL, '2017-08-11 15:18:38');

-- --------------------------------------------------------

--
-- Table structure for table `splice`
--

CREATE TABLE `splice` (
  `splice_UID` int(5) UNSIGNED ZEROFILL NOT NULL,
  `fk_plotPoint_UID` int(5) UNSIGNED ZEROFILL NOT NULL,
  `notes` varchar(256) DEFAULT NULL,
  `last_modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `storageunit`
--

CREATE TABLE `storageunit` (
  `fk_location_UID` int(4) UNSIGNED ZEROFILL NOT NULL,
  `storageUnit_UID` int(4) UNSIGNED ZEROFILL NOT NULL,
  `type` varchar(32) NOT NULL,
  `label` varchar(9) NOT NULL,
  `lastMod` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storageunit`
--

INSERT INTO `storageunit` (`fk_location_UID`, `storageUnit_UID`, `type`, `label`, `lastMod`) VALUES
(0546, 0527, 'rack', '999-00-01', '2017-08-10 15:44:52'),
(0547, 0528, 'rack', '999-00-02', '2017-08-10 15:44:52'),
(0548, 0529, 'rack', '999-00-03', '2017-08-10 15:44:52'),
(0543, 0530, 'rack', '998-00-01', '2017-08-10 15:44:52'),
(0544, 0531, 'rack', '998-00-02', '2017-08-10 15:44:52'),
(0545, 0532, 'rack', '998-00-03', '2017-08-10 15:44:52'),
(0540, 0533, 'rack', '997-00-01', '2017-08-10 15:44:52'),
(0541, 0534, 'rack', '997-00-02', '2017-08-10 15:44:52'),
(0542, 0535, 'rack', '997-00-03', '2017-08-10 15:44:52'),
(0537, 0536, 'rack', '996-00-01', '2017-08-10 15:44:52'),
(0538, 0537, 'rack', '996-00-02', '2017-08-10 15:44:52'),
(0539, 0538, 'rack', '996-00-03', '2017-08-10 15:44:52'),
(0534, 0539, 'rack', '995-00-01', '2017-08-10 15:44:52'),
(0535, 0540, 'rack', '995-00-02', '2017-08-10 15:44:52'),
(0536, 0541, 'rack', '995-00-03', '2017-08-10 15:44:52'),
(0531, 0542, 'rack', '994-00-01', '2017-08-10 15:44:52'),
(0532, 0543, 'rack', '994-00-02', '2017-08-10 15:44:52'),
(0533, 0544, 'rack', '994-00-03', '2017-08-10 15:44:52'),
(0528, 0545, 'rack', '993-00-01', '2017-08-10 15:44:52'),
(0529, 0546, 'rack', '993-00-02', '2017-08-10 15:44:52'),
(0530, 0547, 'rack', '993-00-03', '2017-08-10 15:44:52'),
(0480, 0548, 'rack', '992-00-01', '2017-08-10 15:44:52'),
(0481, 0549, 'rack', '992-00-02', '2017-08-10 15:44:52'),
(0482, 0550, 'rack', '992-00-03', '2017-08-10 15:44:52'),
(0519, 0551, 'rack', '991-00-01', '2017-08-10 15:44:52'),
(0520, 0552, 'rack', '991-00-02', '2017-08-10 15:44:52'),
(0521, 0553, 'rack', '991-00-03', '2017-08-10 15:44:52'),
(0483, 0554, 'rack', '990-00-01', '2017-08-10 15:44:52'),
(0484, 0555, 'rack', '990-00-02', '2017-08-10 15:44:52'),
(0485, 0556, 'rack', '990-00-03', '2017-08-10 15:44:52'),
(0486, 0557, 'rack', '989-00-01', '2017-08-10 15:44:52'),
(0487, 0558, 'rack', '989-00-02', '2017-08-10 15:44:52'),
(0488, 0559, 'rack', '989-00-03', '2017-08-10 15:44:52'),
(0489, 0560, 'rack', '988-00-01', '2017-08-10 15:44:52'),
(0490, 0561, 'rack', '988-00-02', '2017-08-10 15:44:52'),
(0491, 0562, 'rack', '988-00-03', '2017-08-10 15:44:52'),
(0492, 0563, 'rack', '987-00-01', '2017-08-10 15:44:52'),
(0493, 0564, 'rack', '987-00-02', '2017-08-10 15:44:52'),
(0494, 0565, 'rack', '987-00-03', '2017-08-10 15:44:52'),
(0495, 0566, 'rack', '986-00-01', '2017-08-10 15:44:52'),
(0496, 0567, 'rack', '986-00-02', '2017-08-10 15:44:52'),
(0497, 0568, 'rack', '986-00-03', '2017-08-10 15:44:52'),
(0525, 0569, 'rack', '985-00-01', '2017-08-10 15:44:52'),
(0526, 0570, 'rack', '985-00-02', '2017-08-10 15:44:52'),
(0527, 0571, 'rack', '985-00-03', '2017-08-10 15:44:52'),
(0501, 0572, 'rack', '984-00-01', '2017-08-10 15:44:52'),
(0502, 0573, 'rack', '984-00-02', '2017-08-10 15:44:52'),
(0503, 0574, 'rack', '984-00-03', '2017-08-10 15:44:52'),
(0507, 0575, 'rack', '983-00-01', '2017-08-10 15:44:52'),
(0508, 0576, 'rack', '983-00-02', '2017-08-10 15:44:52'),
(0509, 0577, 'rack', '983-00-03', '2017-08-10 15:44:52'),
(0510, 0578, 'rack', '982-00-01', '2017-08-10 15:44:52'),
(0511, 0579, 'rack', '982-00-02', '2017-08-10 15:44:52'),
(0512, 0580, 'rack', '982-00-03', '2017-08-10 15:44:52'),
(0513, 0581, 'rack', '981-00-01', '2017-08-10 15:44:52'),
(0514, 0582, 'rack', '981-00-02', '2017-08-10 15:44:52'),
(0515, 0583, 'rack', '981-00-03', '2017-08-10 15:44:52'),
(0516, 0584, 'rack', '980-00-01', '2017-08-10 15:44:52'),
(0517, 0585, 'rack', '980-00-02', '2017-08-10 15:44:52'),
(0518, 0586, 'rack', '980-00-03', '2017-08-10 15:44:52'),
(0522, 0587, 'rack', '979-00-01', '2017-08-10 15:44:52'),
(0523, 0588, 'rack', '979-00-02', '2017-08-10 15:44:52'),
(0524, 0589, 'rack', '979-00-03', '2017-08-10 15:44:52'),
(0504, 0590, 'rack', '978-00-01', '2017-08-10 15:44:52'),
(0505, 0591, 'rack', '978-00-02', '2017-08-10 15:44:52'),
(0506, 0592, 'rack', '978-00-03', '2017-08-10 15:44:52'),
(0477, 0593, 'rack', '977-00-01', '2017-08-10 15:44:52'),
(0478, 0594, 'rack', '977-00-02', '2017-08-10 15:44:52'),
(0479, 0595, 'rack', '977-00-03', '2017-08-10 15:44:52'),
(0498, 0596, 'rack', '975-00-01', '2017-08-10 15:44:52'),
(0499, 0597, 'rack', '975-00-02', '2017-08-10 15:44:52'),
(0500, 0598, 'rack', '975-00-03', '2017-08-10 15:44:52');

-- --------------------------------------------------------

--
-- Table structure for table `strand`
--

CREATE TABLE `strand` (
  `strand_UID` int(5) UNSIGNED ZEROFILL NOT NULL,
  `fk_path_UID` int(5) UNSIGNED ZEROFILL DEFAULT 00001,
  `length` int(50) NOT NULL,
  `mode` varchar(50) NOT NULL,
  `coreSize` varchar(25) NOT NULL,
  `wavelength` varchar(10) DEFAULT NULL,
  `inTolerance` tinyint(1) DEFAULT NULL COMMENT '1 is acceptable loss. 0 is unacceptable loss.',
  `spliceCount` smallint(3) NOT NULL,
  `connectorPairsCount` smallint(3) NOT NULL,
  `expectedLoss` varchar(50) DEFAULT NULL,
  `lastMeasuredLoss` varchar(50) DEFAULT NULL,
  `notes` varchar(256) DEFAULT NULL,
  `fk_port_UID_a` int(5) UNSIGNED ZEROFILL NOT NULL,
  `fk_port_UID_b` int(5) UNSIGNED ZEROFILL NOT NULL,
  `lastmodified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `strand`
--

INSERT INTO `strand` (`strand_UID`, `fk_path_UID`, `length`, `mode`, `coreSize`, `wavelength`, `inTolerance`, `spliceCount`, `connectorPairsCount`, `expectedLoss`, `lastMeasuredLoss`, `notes`, `fk_port_UID_a`, `fk_port_UID_b`, `lastmodified`) VALUES
(02944, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 12010, 11974, '2017-08-10 18:33:23'),
(02945, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 12011, 11975, '2017-08-10 18:33:23'),
(02946, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 12012, 11976, '2017-08-10 18:33:23'),
(02947, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 12013, 11977, '2017-08-10 18:33:23'),
(02948, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 12014, 11978, '2017-08-10 18:33:23'),
(02949, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 12015, 11979, '2017-08-10 18:33:23'),
(02950, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 12016, 11980, '2017-08-10 18:33:23'),
(02951, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 12017, 11981, '2017-08-10 18:33:23'),
(02952, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 12018, 11982, '2017-08-10 18:33:23'),
(02953, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 12019, 11983, '2017-08-10 18:33:23'),
(02954, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 12020, 11984, '2017-08-10 18:33:24'),
(02955, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 12021, 11985, '2017-08-10 18:33:24'),
(02956, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 12910, 11938, '2017-08-10 19:37:23'),
(02957, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 12911, 11939, '2017-08-10 19:37:23'),
(02958, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 12912, 11940, '2017-08-10 19:37:23'),
(02959, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 12913, 11941, '2017-08-10 19:37:24'),
(02960, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 12914, 11942, '2017-08-10 19:37:24'),
(02961, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 12915, 11943, '2017-08-10 19:37:24'),
(02962, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 12916, 11944, '2017-08-10 19:37:24'),
(02963, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 12917, 11945, '2017-08-10 19:37:24'),
(02964, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 12918, 11946, '2017-08-10 19:37:24'),
(02965, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 12919, 11947, '2017-08-10 19:37:24'),
(02966, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 12920, 11948, '2017-08-10 19:37:24'),
(02967, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 12921, 11949, '2017-08-10 19:37:24'),
(02968, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 12922, 11902, '2017-08-10 19:38:07'),
(02969, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 12923, 11903, '2017-08-10 19:38:07'),
(02970, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 12924, 11904, '2017-08-10 19:38:07'),
(02971, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 12925, 11905, '2017-08-10 19:38:07'),
(02972, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 12926, 11906, '2017-08-10 19:38:07'),
(02973, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 12927, 11907, '2017-08-10 19:38:07'),
(02974, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 12928, 11908, '2017-08-10 19:38:07'),
(02975, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 12929, 11909, '2017-08-10 19:38:07'),
(02976, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 12930, 11910, '2017-08-10 19:38:07'),
(02977, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 12931, 11911, '2017-08-10 19:38:07'),
(02978, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 12932, 11912, '2017-08-10 19:38:07'),
(02979, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 12933, 11913, '2017-08-10 19:38:07'),
(02980, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 12934, 11866, '2017-08-10 19:39:00'),
(02981, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 12935, 11867, '2017-08-10 19:39:00'),
(02982, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 12936, 11868, '2017-08-10 19:39:00'),
(02983, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 12937, 11869, '2017-08-10 19:39:00'),
(02984, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 12938, 11870, '2017-08-10 19:39:00'),
(02985, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 12939, 11871, '2017-08-10 19:39:00'),
(02986, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 12940, 11872, '2017-08-10 19:39:00'),
(02987, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 12941, 11873, '2017-08-10 19:39:00'),
(02988, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 12942, 11874, '2017-08-10 19:39:00'),
(02989, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 12943, 11875, '2017-08-10 19:39:00'),
(02990, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 12944, 11876, '2017-08-10 19:39:00'),
(02991, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 12945, 11877, '2017-08-10 19:39:00'),
(02992, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 12946, 11830, '2017-08-10 19:39:28'),
(02993, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 12947, 11831, '2017-08-10 19:39:29'),
(02994, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 12948, 11832, '2017-08-10 19:39:29'),
(02995, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 12949, 11833, '2017-08-10 19:39:29'),
(02996, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 12950, 11834, '2017-08-10 19:39:29'),
(02997, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 12951, 11835, '2017-08-10 19:39:29'),
(02998, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 12952, 11836, '2017-08-10 19:39:29'),
(02999, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 12953, 11837, '2017-08-10 19:39:29'),
(03000, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 12954, 11838, '2017-08-10 19:39:29'),
(03001, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 12955, 11839, '2017-08-10 19:39:29'),
(03002, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 12956, 11840, '2017-08-10 19:39:29'),
(03003, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 12957, 11841, '2017-08-10 19:39:29'),
(03004, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 13102, 13006, '2017-08-10 19:50:20'),
(03005, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 13103, 13007, '2017-08-10 19:50:20'),
(03006, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 13104, 13008, '2017-08-10 19:50:20'),
(03007, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 13105, 13009, '2017-08-10 19:50:20'),
(03008, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 13106, 13010, '2017-08-10 19:50:20'),
(03009, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 13107, 13011, '2017-08-10 19:50:20'),
(03010, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 13108, 13012, '2017-08-10 19:50:20'),
(03011, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 13109, 13013, '2017-08-10 19:50:20'),
(03012, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 13110, 13014, '2017-08-10 19:50:20'),
(03013, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 13111, 13015, '2017-08-10 19:50:20'),
(03014, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 13112, 13016, '2017-08-10 19:50:20'),
(03015, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 13113, 13017, '2017-08-10 19:50:20'),
(03040, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 13030, 12994, '2017-08-10 20:15:33'),
(03041, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 13031, 12995, '2017-08-10 20:15:33'),
(03042, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 13032, 12996, '2017-08-10 20:15:33'),
(03043, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 13033, 12997, '2017-08-10 20:15:33'),
(03044, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 13034, 12998, '2017-08-10 20:15:33'),
(03045, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 13035, 12999, '2017-08-10 20:15:33'),
(03046, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 13036, 13000, '2017-08-10 20:15:33'),
(03047, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 13037, 13001, '2017-08-10 20:15:33'),
(03048, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 13038, 13002, '2017-08-10 20:15:33'),
(03049, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 13039, 13003, '2017-08-10 20:15:33'),
(03050, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 13040, 13004, '2017-08-10 20:15:33'),
(03051, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 13041, 13005, '2017-08-10 20:15:33'),
(03052, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 13018, 13114, '2017-08-10 20:16:27'),
(03053, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 13019, 13115, '2017-08-10 20:16:27'),
(03054, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 13020, 13116, '2017-08-10 20:16:27'),
(03055, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 13021, 13117, '2017-08-10 20:16:27'),
(03056, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 13022, 13118, '2017-08-10 20:16:27'),
(03057, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 13023, 13119, '2017-08-10 20:16:27'),
(03058, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 13024, 13120, '2017-08-10 20:16:27'),
(03059, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 13025, 13121, '2017-08-10 20:16:27'),
(03060, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 13026, 13122, '2017-08-10 20:16:27'),
(03061, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 13027, 13123, '2017-08-10 20:16:27'),
(03062, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 13028, 13124, '2017-08-10 20:16:27'),
(03063, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 13029, 13125, '2017-08-10 20:16:27'),
(03064, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 13066, 13126, '2017-08-10 20:18:33'),
(03065, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 13067, 13127, '2017-08-10 20:18:33'),
(03066, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 13068, 13128, '2017-08-10 20:18:33'),
(03067, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 13069, 13129, '2017-08-10 20:18:33'),
(03068, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 13070, 13130, '2017-08-10 20:18:33'),
(03069, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 13071, 13131, '2017-08-10 20:18:33'),
(03070, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 13072, 13132, '2017-08-10 20:18:33'),
(03071, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 13073, 13133, '2017-08-10 20:18:33'),
(03072, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 13074, 13134, '2017-08-10 20:18:33'),
(03073, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 13075, 13135, '2017-08-10 20:18:33'),
(03074, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 13076, 13136, '2017-08-10 20:18:33'),
(03075, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 13077, 13137, '2017-08-10 20:18:33'),
(03076, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 13078, 13090, '2017-08-10 20:19:08'),
(03077, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 13079, 13091, '2017-08-10 20:19:08'),
(03078, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 13080, 13092, '2017-08-10 20:19:08'),
(03079, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 13081, 13093, '2017-08-10 20:19:08'),
(03080, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 13082, 13094, '2017-08-10 20:19:08'),
(03081, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 13083, 13095, '2017-08-10 20:19:08'),
(03082, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 13084, 13096, '2017-08-10 20:19:08'),
(03083, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 13085, 13097, '2017-08-10 20:19:08'),
(03084, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 13086, 13098, '2017-08-10 20:19:08'),
(03085, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 13087, 13099, '2017-08-10 20:19:08'),
(03086, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 13088, 13100, '2017-08-10 20:19:08'),
(03087, 00001, 1000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.87192', NULL, NULL, 13089, 13101, '2017-08-10 20:19:08'),
(03088, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 11794, 12958, '2017-08-11 14:54:32'),
(03089, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 11795, 12959, '2017-08-11 14:54:32'),
(03090, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 11796, 12960, '2017-08-11 14:54:32'),
(03091, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 11797, 12961, '2017-08-11 14:54:32'),
(03092, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 11798, 12962, '2017-08-11 14:54:32'),
(03093, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 11799, 12963, '2017-08-11 14:54:32'),
(03094, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 11800, 12964, '2017-08-11 14:54:32'),
(03095, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 11801, 12965, '2017-08-11 14:54:32'),
(03096, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 11802, 12966, '2017-08-11 14:54:32'),
(03097, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 11803, 12967, '2017-08-11 14:54:32'),
(03098, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 11804, 12968, '2017-08-11 14:54:32'),
(03099, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 11805, 12969, '2017-08-11 14:54:33'),
(03112, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 13162, 13150, '2017-08-11 14:58:06'),
(03113, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 13163, 13151, '2017-08-11 14:58:06'),
(03114, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 13164, 13152, '2017-08-11 14:58:06'),
(03115, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 13165, 13153, '2017-08-11 14:58:06'),
(03116, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 13166, 13154, '2017-08-11 14:58:06'),
(03117, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 13167, 13155, '2017-08-11 14:58:06'),
(03118, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 13168, 13156, '2017-08-11 14:58:06'),
(03119, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 13169, 13157, '2017-08-11 14:58:06'),
(03120, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 13170, 13158, '2017-08-11 14:58:06'),
(03121, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 13171, 13159, '2017-08-11 14:58:06'),
(03122, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 13172, 13160, '2017-08-11 14:58:06'),
(03123, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 13173, 13161, '2017-08-11 14:58:06'),
(03124, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 11218, 13174, '2017-08-11 15:09:08'),
(03125, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 11219, 13175, '2017-08-11 15:09:08'),
(03126, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 11220, 13176, '2017-08-11 15:09:08'),
(03127, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 11221, 13177, '2017-08-11 15:09:08'),
(03128, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 11222, 13178, '2017-08-11 15:09:08'),
(03129, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 11223, 13179, '2017-08-11 15:09:08'),
(03130, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 11224, 13180, '2017-08-11 15:09:08'),
(03131, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 11225, 13181, '2017-08-11 15:09:08'),
(03132, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 11226, 13182, '2017-08-11 15:09:08'),
(03133, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 11227, 13183, '2017-08-11 15:09:08'),
(03134, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 11228, 13184, '2017-08-11 15:09:08'),
(03135, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 11229, 13185, '2017-08-11 15:09:08'),
(03136, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 2, '1.74384', NULL, NULL, 13198, 13186, '2017-08-11 15:10:13'),
(03137, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 2, '1.74384', NULL, NULL, 13199, 13187, '2017-08-11 15:10:13'),
(03138, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 2, '1.74384', NULL, NULL, 13200, 13188, '2017-08-11 15:10:13'),
(03139, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 2, '1.74384', NULL, NULL, 13201, 13189, '2017-08-11 15:10:13'),
(03140, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 2, '1.74384', NULL, NULL, 13202, 13190, '2017-08-11 15:10:13'),
(03141, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 2, '1.74384', NULL, NULL, 13203, 13191, '2017-08-11 15:10:13'),
(03142, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 2, '1.74384', NULL, NULL, 13204, 13192, '2017-08-11 15:10:13'),
(03143, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 2, '1.74384', NULL, NULL, 13205, 13193, '2017-08-11 15:10:13'),
(03144, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 2, '1.74384', NULL, NULL, 13206, 13194, '2017-08-11 15:10:13'),
(03145, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 2, '1.74384', NULL, NULL, 13207, 13195, '2017-08-11 15:10:13'),
(03146, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 2, '1.74384', NULL, NULL, 13208, 13196, '2017-08-11 15:10:13'),
(03147, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 2, '1.74384', NULL, NULL, 13209, 13197, '2017-08-11 15:10:13'),
(03148, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 11686, 13210, '2017-08-11 15:12:41'),
(03149, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 11687, 13211, '2017-08-11 15:12:41'),
(03150, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 11688, 13212, '2017-08-11 15:12:41'),
(03151, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 11689, 13213, '2017-08-11 15:12:41'),
(03152, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 11690, 13214, '2017-08-11 15:12:41'),
(03153, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 11691, 13215, '2017-08-11 15:12:41'),
(03154, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 11692, 13216, '2017-08-11 15:12:41'),
(03155, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 11693, 13217, '2017-08-11 15:12:41'),
(03156, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 11694, 13218, '2017-08-11 15:12:41'),
(03157, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 11695, 13219, '2017-08-11 15:12:41'),
(03158, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 11696, 13220, '2017-08-11 15:12:41'),
(03159, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 11697, 13221, '2017-08-11 15:12:41'),
(03160, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 13246, 13222, '2017-08-11 15:13:10'),
(03161, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 13247, 13223, '2017-08-11 15:13:10'),
(03162, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 13248, 13224, '2017-08-11 15:13:10'),
(03163, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 13249, 13225, '2017-08-11 15:13:10'),
(03164, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 13250, 13226, '2017-08-11 15:13:10'),
(03165, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 13251, 13227, '2017-08-11 15:13:10'),
(03166, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 13252, 13228, '2017-08-11 15:13:10'),
(03167, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 13253, 13229, '2017-08-11 15:13:10'),
(03168, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 13254, 13230, '2017-08-11 15:13:10'),
(03169, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 13255, 13231, '2017-08-11 15:13:10'),
(03170, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 13256, 13232, '2017-08-11 15:13:10'),
(03171, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 13257, 13233, '2017-08-11 15:13:10'),
(03172, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 11254, 13234, '2017-08-11 15:16:09'),
(03173, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 11255, 13235, '2017-08-11 15:16:09'),
(03174, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 11256, 13236, '2017-08-11 15:16:09'),
(03175, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 11257, 13237, '2017-08-11 15:16:09'),
(03176, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 11258, 13238, '2017-08-11 15:16:09'),
(03177, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 11259, 13239, '2017-08-11 15:16:09'),
(03178, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 11260, 13240, '2017-08-11 15:16:09'),
(03179, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 11261, 13241, '2017-08-11 15:16:09'),
(03180, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 11262, 13242, '2017-08-11 15:16:09'),
(03181, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 11263, 13243, '2017-08-11 15:16:09'),
(03182, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 11264, 13244, '2017-08-11 15:16:09'),
(03183, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 11265, 13245, '2017-08-11 15:16:09'),
(03184, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 13282, 13258, '2017-08-11 15:16:43'),
(03185, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 13283, 13259, '2017-08-11 15:16:43'),
(03186, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 13284, 13260, '2017-08-11 15:16:43'),
(03187, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 13285, 13261, '2017-08-11 15:16:43'),
(03188, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 13286, 13262, '2017-08-11 15:16:43'),
(03189, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 13287, 13263, '2017-08-11 15:16:43'),
(03190, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 13288, 13264, '2017-08-11 15:16:43'),
(03191, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 13289, 13265, '2017-08-11 15:16:43'),
(03192, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 13290, 13266, '2017-08-11 15:16:43'),
(03193, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 13291, 13267, '2017-08-11 15:16:43'),
(03194, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 13292, 13268, '2017-08-11 15:16:43'),
(03195, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 13293, 13269, '2017-08-11 15:16:43'),
(03196, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 11290, 12970, '2017-08-11 15:17:55'),
(03197, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 11291, 12971, '2017-08-11 15:17:55'),
(03198, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 11292, 12972, '2017-08-11 15:17:55'),
(03199, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 11293, 12973, '2017-08-11 15:17:55'),
(03200, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 11294, 12974, '2017-08-11 15:17:55'),
(03201, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 11295, 12975, '2017-08-11 15:17:55'),
(03202, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 11296, 12976, '2017-08-11 15:17:55'),
(03203, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 11297, 12977, '2017-08-11 15:17:55'),
(03204, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 11298, 12978, '2017-08-11 15:17:55'),
(03205, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 11299, 12979, '2017-08-11 15:17:55'),
(03206, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 11300, 12980, '2017-08-11 15:17:55'),
(03207, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 11301, 12981, '2017-08-11 15:17:56'),
(03208, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 13306, 13270, '2017-08-11 15:18:37'),
(03209, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 13307, 13271, '2017-08-11 15:18:38'),
(03210, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 13308, 13272, '2017-08-11 15:18:38'),
(03211, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 13309, 13273, '2017-08-11 15:18:38'),
(03212, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 13310, 13274, '2017-08-11 15:18:38'),
(03213, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 13311, 13275, '2017-08-11 15:18:38'),
(03214, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 13312, 13276, '2017-08-11 15:18:38'),
(03215, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 13313, 13277, '2017-08-11 15:18:38'),
(03216, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 13314, 13278, '2017-08-11 15:18:38'),
(03217, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 13315, 13279, '2017-08-11 15:18:38'),
(03218, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 13316, 13280, '2017-08-11 15:18:38'),
(03219, 00001, 2000, 'singlemode', '8.3', '1310', NULL, 0, 1, '0.99384', NULL, NULL, 13317, 13281, '2017-08-11 15:18:38');

--
-- Triggers `strand`
--
DELIMITER $$
CREATE TRIGGER `associatePortsToStrand` AFTER INSERT ON `strand` FOR EACH ROW update port set fk_strand_UID=NEW.strand_UID, strandStatus='active' where port_UID=NEW.fk_port_UID_a or port_UID=NEW.fk_port_UID_b
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `resetPortsOnStrand` AFTER DELETE ON `strand` FOR EACH ROW update port set strandStatus='available' where port_UID=OLD.fk_port_UID_a or port_UID=OLD.fk_port_UID_b
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `building`
--
ALTER TABLE `building`
  ADD PRIMARY KEY (`building_UID`),
  ADD UNIQUE KEY `numNameCombo` (`number`,`name`);

--
-- Indexes for table `cabinet`
--
ALTER TABLE `cabinet`
  ADD PRIMARY KEY (`cabinet_UID`),
  ADD UNIQUE KEY `unique_label_storage_combo` (`fk_storageUnit_UID`,`label`),
  ADD KEY `fk_storageUnit_cabinet` (`fk_storageUnit_UID`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_UID`);

--
-- Indexes for table `equipment`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`equipment_UID`),
  ADD UNIQUE KEY `uniqueName` (`name`),
  ADD KEY `fk_department_UID` (`fk_department_UID`),
  ADD KEY `fk_location_UID` (`fk_location_UID`),
  ADD KEY `fk_make_UID` (`fk_make_UID`),
  ADD KEY `fk_model_UID` (`fk_model_UID`);

--
-- Indexes for table `eq_make`
--
ALTER TABLE `eq_make`
  ADD PRIMARY KEY (`make_UID`);

--
-- Indexes for table `eq_model`
--
ALTER TABLE `eq_model`
  ADD PRIMARY KEY (`model_UID`),
  ADD KEY `fk_make_UID` (`fk_make_UID`);

--
-- Indexes for table `jumper`
--
ALTER TABLE `jumper`
  ADD PRIMARY KEY (`jumper_UID`),
  ADD KEY `fk_equipment_UID` (`fk_equipment_UID`),
  ADD KEY `fk_port_UID_a` (`fk_port_UID_a`),
  ADD KEY `fk_port_UID_b` (`fk_port_UID_b`);

--
-- Indexes for table `levelmap`
--
ALTER TABLE `levelmap`
  ADD PRIMARY KEY (`level_UID`),
  ADD UNIQUE KEY `uniqueLevelNumberPerBuilding` (`fk_building_UID`,`level`),
  ADD KEY `buildingfkey` (`fk_building_UID`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`location_UID`),
  ADD UNIQUE KEY `fk_building_UID_2` (`fk_building_UID`,`level`,`description`),
  ADD KEY `fk_building_UID` (`fk_building_UID`);

--
-- Indexes for table `panel`
--
ALTER TABLE `panel`
  ADD PRIMARY KEY (`panel_UID`),
  ADD UNIQUE KEY `uniquePositionInCabinet` (`fk_cabinet_UID`,`position`),
  ADD KEY `fk_cabinet_UID` (`fk_cabinet_UID`);

--
-- Indexes for table `path`
--
ALTER TABLE `path`
  ADD PRIMARY KEY (`path_UID`);

--
-- Indexes for table `plotpoint`
--
ALTER TABLE `plotpoint`
  ADD PRIMARY KEY (`plotPoint_UID`),
  ADD KEY `fk_path_UID` (`fk_path_UID`);

--
-- Indexes for table `port`
--
ALTER TABLE `port`
  ADD PRIMARY KEY (`port_UID`),
  ADD UNIQUE KEY `noPortPanelDupes` (`fk_panel_UID`,`number`),
  ADD KEY `fk_panel_UID` (`fk_panel_UID`),
  ADD KEY `fk_strand_UID` (`fk_strand_UID`),
  ADD KEY `fk_jumper_UID` (`fk_jumper_UID`);

--
-- Indexes for table `splice`
--
ALTER TABLE `splice`
  ADD PRIMARY KEY (`splice_UID`),
  ADD KEY `fk_plotPoint_UID` (`fk_plotPoint_UID`);

--
-- Indexes for table `storageunit`
--
ALTER TABLE `storageunit`
  ADD PRIMARY KEY (`storageUnit_UID`),
  ADD UNIQUE KEY `uniqueLabel` (`label`,`fk_location_UID`),
  ADD KEY `fk_location_UID` (`fk_location_UID`);

--
-- Indexes for table `strand`
--
ALTER TABLE `strand`
  ADD PRIMARY KEY (`strand_UID`),
  ADD KEY `fk_port_UID_a` (`fk_port_UID_a`),
  ADD KEY `fk_port_UID_b` (`fk_port_UID_b`),
  ADD KEY `fk_path_UID` (`fk_path_UID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `building`
--
ALTER TABLE `building`
  MODIFY `building_UID` int(4) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=354;

--
-- AUTO_INCREMENT for table `cabinet`
--
ALTER TABLE `cabinet`
  MODIFY `cabinet_UID` int(4) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=498;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `department_UID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `equipment`
--
ALTER TABLE `equipment`
  MODIFY `equipment_UID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=984;

--
-- AUTO_INCREMENT for table `eq_make`
--
ALTER TABLE `eq_make`
  MODIFY `make_UID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `eq_model`
--
ALTER TABLE `eq_model`
  MODIFY `model_UID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `jumper`
--
ALTER TABLE `jumper`
  MODIFY `jumper_UID` int(5) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1301;

--
-- AUTO_INCREMENT for table `levelmap`
--
ALTER TABLE `levelmap`
  MODIFY `level_UID` int(4) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `location_UID` int(4) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=549;

--
-- AUTO_INCREMENT for table `panel`
--
ALTER TABLE `panel`
  MODIFY `panel_UID` int(4) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1340;

--
-- AUTO_INCREMENT for table `path`
--
ALTER TABLE `path`
  MODIFY `path_UID` int(5) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `plotpoint`
--
ALTER TABLE `plotpoint`
  MODIFY `plotPoint_UID` int(5) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `port`
--
ALTER TABLE `port`
  MODIFY `port_UID` int(5) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13318;

--
-- AUTO_INCREMENT for table `splice`
--
ALTER TABLE `splice`
  MODIFY `splice_UID` int(5) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `storageunit`
--
ALTER TABLE `storageunit`
  MODIFY `storageUnit_UID` int(4) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=599;

--
-- AUTO_INCREMENT for table `strand`
--
ALTER TABLE `strand`
  MODIFY `strand_UID` int(5) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3220;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cabinet`
--
ALTER TABLE `cabinet`
  ADD CONSTRAINT `cabinet_ibfk_1` FOREIGN KEY (`fk_storageUnit_UID`) REFERENCES `storageunit` (`storageUnit_UID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `equipment`
--
ALTER TABLE `equipment`
  ADD CONSTRAINT `equipment_ibfk_1` FOREIGN KEY (`fk_department_UID`) REFERENCES `department` (`department_UID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `equipment_ibfk_2` FOREIGN KEY (`fk_location_UID`) REFERENCES `location` (`location_UID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `equipment_ibfk_3` FOREIGN KEY (`fk_make_UID`) REFERENCES `eq_make` (`make_UID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `equipment_ibfk_4` FOREIGN KEY (`fk_model_UID`) REFERENCES `eq_model` (`model_UID`) ON UPDATE CASCADE;

--
-- Constraints for table `eq_model`
--
ALTER TABLE `eq_model`
  ADD CONSTRAINT `eq_model_ibfk_1` FOREIGN KEY (`fk_make_UID`) REFERENCES `eq_make` (`make_UID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `jumper`
--
ALTER TABLE `jumper`
  ADD CONSTRAINT `jumper_ibfk_1` FOREIGN KEY (`fk_equipment_UID`) REFERENCES `equipment` (`equipment_UID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jumper_ibfk_2` FOREIGN KEY (`fk_port_UID_b`) REFERENCES `port` (`port_UID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jumper_ibfk_3` FOREIGN KEY (`fk_port_UID_a`) REFERENCES `port` (`port_UID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `levelmap`
--
ALTER TABLE `levelmap`
  ADD CONSTRAINT `levelMap_ibfk_1` FOREIGN KEY (`fk_building_UID`) REFERENCES `building` (`building_UID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `location`
--
ALTER TABLE `location`
  ADD CONSTRAINT `location_ibfk_1` FOREIGN KEY (`fk_building_UID`) REFERENCES `building` (`building_UID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `panel`
--
ALTER TABLE `panel`
  ADD CONSTRAINT `panel_ibfk_1` FOREIGN KEY (`fk_cabinet_UID`) REFERENCES `cabinet` (`cabinet_UID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `plotpoint`
--
ALTER TABLE `plotpoint`
  ADD CONSTRAINT `plotPoint_ibfk_1` FOREIGN KEY (`fk_path_UID`) REFERENCES `path` (`path_UID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `port`
--
ALTER TABLE `port`
  ADD CONSTRAINT `port_ibfk_1` FOREIGN KEY (`fk_panel_UID`) REFERENCES `panel` (`panel_UID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `port_ibfk_2` FOREIGN KEY (`fk_strand_UID`) REFERENCES `strand` (`strand_UID`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `port_ibfk_3` FOREIGN KEY (`fk_jumper_UID`) REFERENCES `jumper` (`jumper_UID`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `splice`
--
ALTER TABLE `splice`
  ADD CONSTRAINT `splice_ibfk_1` FOREIGN KEY (`fk_plotPoint_UID`) REFERENCES `plotpoint` (`plotPoint_UID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `storageunit`
--
ALTER TABLE `storageunit`
  ADD CONSTRAINT `storageUnit_ibfk_1` FOREIGN KEY (`fk_location_UID`) REFERENCES `location` (`location_UID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `strand`
--
ALTER TABLE `strand`
  ADD CONSTRAINT `strand_ibfk_1` FOREIGN KEY (`fk_port_UID_a`) REFERENCES `port` (`port_UID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `strand_ibfk_2` FOREIGN KEY (`fk_port_UID_b`) REFERENCES `port` (`port_UID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `strand_ibfk_3` FOREIGN KEY (`fk_path_UID`) REFERENCES `path` (`path_UID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
