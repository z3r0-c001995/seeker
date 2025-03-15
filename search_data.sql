-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 15, 2025 at 11:45 PM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `seeker`
--

-- --------------------------------------------------------

--
-- Table structure for table `search_data`
--

DROP TABLE IF EXISTS `search_data`;
CREATE TABLE IF NOT EXISTS `search_data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `number` varchar(50) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `searched_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `search_data`
--

INSERT INTO `search_data` (`id`, `name`, `number`, `image_url`, `searched_at`) VALUES
(1, 'John Doe', '1234567890', 'https://randomuser.me/api/portraits/men/1.jpg', '2025-03-15 23:32:52'),
(2, 'Jane Smith', '9876543210', 'https://randomuser.me/api/portraits/women/1.jpg', '2025-03-15 23:32:52'),
(3, 'Alice Johnson', '1122334455', 'https://randomuser.me/api/portraits/women/2.jpg', '2025-03-15 23:32:52'),
(4, 'Bob Brown', '9988776655', 'https://randomuser.me/api/portraits/men/2.jpg', '2025-03-15 23:32:52'),
(5, 'Charlie White', '5566778899', 'https://randomuser.me/api/portraits/men/3.jpg', '2025-03-15 23:32:52'),
(6, 'Emily Davis', '6677889900', 'https://randomuser.me/api/portraits/women/3.jpg', '2025-03-15 23:32:52'),
(7, 'Michael Scott', '1112223333', 'https://randomuser.me/api/portraits/men/4.jpg', '2025-03-15 23:32:52'),
(8, 'Sarah Lee', '4445556666', 'https://randomuser.me/api/portraits/women/4.jpg', '2025-03-15 23:32:52'),
(9, 'David Kim', '7778889999', 'https://randomuser.me/api/portraits/men/5.jpg', '2025-03-15 23:32:52'),
(10, 'Olivia Taylor', '3334445555', 'https://randomuser.me/api/portraits/women/5.jpg', '2025-03-15 23:32:52');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
