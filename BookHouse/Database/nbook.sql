-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2020 at 05:14 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nbook`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `uid` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `address` varchar(150) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`uid`, `first_name`, `last_name`, `address`, `contact`, `email`, `username`, `password`, `status`) VALUES
(1, 'iMago', 'Kreatus', 'Quezon', '2147483647', 'iMagoK@art.com', 'iMagoK', 'admin', 'USER'),
(2, 'Forbid', 'ThyName', 'Dumaguete City, Negros Oriental', '2147483647', 'forbidthyname@sample.com', 'forbid00', 'sample', 'USER'),
(3, 'Tirang', 'Taba', 'Brgy. Tabachoy swerte makatago tiyan st.', '2147483647', 'jessa.dizon66@yahoo.com', 'tirang_tiyan09', 'tabachoy', 'USER'),
(4, 'iMago', 'Kreatus', 'Lanao Del Sur', '2147483647', 'imkreatus@gmail.com', 'imkreatus', 'user101', 'USER'),
(5, 'Lukas Maxwell', 'MaxDownie', 'Tondo, Metro Manila', '094355412', 'MaxDownie@gmail.com', 'MaxDown', 'Lukas', 'USER'),
(6, 'Mahika', 'Lastry', 'Dumaguete Central City', '09123456789', 'MahikaLoan@nbook.ph', 'Lastry00', '0000', 'ADMIN'),
(7, 'Admin', 'Markus', 'NBOOK System', '09354446305', 'admin@nbook.com', 'Admin', 'admin', 'ADMIN'),
(8, 'Harry', 'Money', 'Mindanao State of Area', '09113445678', 'Money@harry.org', 'Harmon', '123456', 'USER');

-- --------------------------------------------------------

--
-- Table structure for table `book_category`
--

CREATE TABLE `book_category` (
  `RefNo` int(11) NOT NULL,
  `Category` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_category`
--

INSERT INTO `book_category` (`RefNo`, `Category`) VALUES
(1, 'Action'),
(2, 'Drama'),
(3, 'Romance'),
(4, 'Fantasy'),
(5, 'Entertainment'),
(6, 'Fashion'),
(7, 'History'),
(8, 'Science & Fiction'),
(9, 'Music & Arts'),
(10, 'Information & Technology'),
(11, 'Educational'),
(12, 'Sports'),
(13, 'Political Science');

-- --------------------------------------------------------

--
-- Table structure for table `book_orders`
--

CREATE TABLE `book_orders` (
  `bo_RefNo` int(20) NOT NULL,
  `bo_CartNo` int(20) NOT NULL,
  `bo_BIDN` int(20) NOT NULL,
  `bo_Qty` int(20) NOT NULL,
  `bo_Price` int(20) NOT NULL,
  `bo_Date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_orders`
--

INSERT INTO `book_orders` (`bo_RefNo`, `bo_CartNo`, `bo_BIDN`, `bo_Qty`, `bo_Price`, `bo_Date`) VALUES
(1, 8, 8, 1, 299, '2020-09-15 18:46:36'),
(2, 9, 7, 1, 200, '2020-09-15 18:46:36'),
(3, 10, 1, 2, 500, '2020-09-15 18:46:36'),
(4, 16, 10, 3, 207, '2020-09-15 18:46:36'),
(5, 17, 8, 2, 598, '2020-09-15 18:46:36'),
(6, 19, 8, 5, 1495, '2020-09-15 18:46:36'),
(7, 18, 10, 1, 69, '2020-09-15 18:46:36'),
(8, 20, 10, 2, 138, '2020-09-15 18:46:36'),
(9, 11, 3, 1, 300, '2020-09-15 18:46:36'),
(10, 12, 6, 6, 594, '2020-09-15 18:46:36'),
(11, 21, 5, 3, 750, '2020-09-15 18:46:36'),
(12, 22, 4, 1, 250, '2020-09-15 18:46:36'),
(13, 23, 4, 1, 250, '2020-09-15 18:46:36'),
(14, 24, 5, 5, 1250, '2020-09-15 20:01:56'),
(15, 14, 7, 5, 1000, '2020-09-15 21:43:38'),
(16, 15, 9, 10, 1200, '2020-09-15 21:43:56'),
(17, 35, 7, 7, 1400, '2020-09-15 22:11:24'),
(18, 36, 13, 5, 1250, '2020-09-16 00:38:11'),
(19, 37, 12, 5, 1495, '2020-09-16 15:05:06'),
(20, 39, 12, 2, 598, '2020-09-16 18:35:08'),
(21, 38, 13, 15, 3750, '2020-09-17 17:38:41'),
(22, 40, 12, 9, 2691, '2020-09-17 17:39:52'),
(23, 41, 12, 9, 2691, '2020-09-17 17:46:41'),
(24, 42, 8, 11, 3289, '2020-09-17 17:56:30'),
(25, 2, 2, 8, 1592, '2020-09-17 17:57:39'),
(26, 43, 15, 10, 2500, '2020-09-17 18:13:21'),
(27, 45, 13, 5, 1250, '2020-09-17 19:21:54'),
(28, 48, 1, 14, 3500, '2020-09-17 19:24:06'),
(29, 49, 16, 20, 2400, '2020-09-19 01:55:32'),
(30, 51, 11, 3, 597, '2020-09-19 01:56:02'),
(31, 52, 16, 5, 600, '2020-09-19 01:58:23'),
(32, 53, 16, 20, 2400, '2020-09-19 01:59:21'),
(33, 56, 9, 5, 750, '2020-09-19 23:31:02'),
(34, 20201, 17, 19, 2831, '2020-09-21 01:27:52'),
(35, 20202, 17, 21, 3129, '2020-09-21 01:38:18'),
(36, 20205, 5, 15, 3750, '2020-09-21 01:42:02'),
(37, 202003, 7, 8, 1600, '2020-09-21 01:49:07'),
(38, 202004, 12, 30, 8970, '2020-09-21 01:52:11'),
(39, 202005, 13, 25, 6250, '2020-09-21 01:52:57'),
(40, 202006, 17, 21, 3129, '2020-09-21 01:54:06'),
(41, 202007, 17, 39, 5811, '2020-09-21 01:55:36'),
(42, 47, 7, 150, 45000, '2020-09-21 15:46:08'),
(43, 202011, 13, 50, 12500, '2020-09-22 16:42:54'),
(44, 202020, 21, 15, 4500, '2020-09-22 17:28:33'),
(45, 1, 8, 1, 299, '2020-09-22 17:28:39');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `fd_RefNo` int(11) NOT NULL,
  `fd_name` varchar(150) NOT NULL,
  `fd_email` varchar(150) NOT NULL,
  `fd_message` text NOT NULL,
  `fd_type` varchar(50) NOT NULL,
  `fd_status` varchar(50) NOT NULL,
  `fd_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fd_readDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`fd_RefNo`, `fd_name`, `fd_email`, `fd_message`, `fd_type`, `fd_status`, `fd_date`, `fd_readDate`) VALUES
(1, 'Markos Ludwig', 'tetsuya.kuruko05@yahoo.com', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tristique senectus et netus et. Ut ornare lectus sit amet est. Odio ut sem nulla pharetra diam sit. Quam id leo in vitae turpis massa sed elementum. Fringilla est ullamcorper eget nulla facilisi etiam. Lorem donec massa sapien faucibus et molestie. Curabitur vitae nunc sed velit. Tempus imperdiet nulla malesuada pellentesque elit eget gravida cum. Eget duis at tellus at urna.', 'MESSAGE', 'UNREAD', '0000-00-00 00:00:00', '0000-00-00'),
(2, 'iMago Kreatus', 'imkreatus@gmail.com', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tristique senectus et netus et. Ut ornare lectus sit amet est. Odio ut sem nulla pharetra diam sit. Quam id leo in vitae turpis massa sed elementum. Fringilla est ullamcorper eget nulla facilisi etiam. Lorem donec massa sapien faucibus et molestie. Curabitur vitae nunc sed velit. Tempus imperdiet nulla malesuada pellentesque elit eget gravida cum. Eget duis at tellus at urna.', 'FEEDBACK', 'READ', '2020-09-17 22:00:11', '0000-00-00'),
(3, 'Marowak', 'Marowak@company.com', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tristique senectus et netus et. Ut ornare lectus sit amet est. Odio ut sem nulla pharetra diam sit. Quam id leo in vitae turpis massa sed elementum. Fringilla est ullamcorper eget nulla facilisi etiam', 'MESSAGE', 'UNREAD', '2020-09-18 13:16:32', '0000-00-00'),
(4, 'Pikachu', 'pika@pokemon.com', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tristique senectus et netus et. Ut ornare lectus sit amet est. Odio ut sem nulla pharetra diam sit. Quam id leo in vitae turpis massa sed elementum. Fringilla est ullamcorper eget nulla facilisi etiam', 'FEEDBACK', 'READ', '2020-09-18 15:31:52', '0000-00-00'),
(5, 'RayMe', 'RayMe@public.ph', 'Ok lang Testing lang to.', 'MESSAGE', 'UNREAD', '2020-09-18 15:33:52', '0000-00-00'),
(6, 'Mahika Lastry', 'kuruko.tetsuya05@yahoo.com', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tristique senectus et netus et. Ut ornare lectus sit amet est. Odio ut sem nulla pharetra diam sit. Quam id leo in vitae turpis massa sed elementum. Fringilla est ullamcorper eget nulla facilisi etiam', 'FEEDBACK', 'READ', '2020-09-18 15:40:45', '0000-00-00'),
(7, 'ForbidThyName', 'Forbid@gmaoil.ca', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tristique senectus et netus et. Ut ornare lectus sit amet est. Odio ut sem nulla pharetra diam sit. Quam id leo in vitae turpis massa sed elementum. Fringilla est ullamcorper eget nulla facilisi etiam.', 'FEEDBACK', 'READ', '2020-09-18 15:41:52', '0000-00-00'),
(8, 'Alteia', 'Alteia@machorn.yo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tristique senectus et netus et. Ut ornare lectus sit amet est. Odio ut sem nulla pharetra diam sit. Quam id leo in vitae turpis massa sed elementum. Fringilla est ullamcorper eget nulla facilisi etiam. Lorem donec massa sapien faucibus et molestie. Curabitur vitae nunc sed velit. Tempus imperdiet nulla malesuada pellentesque elit eget gravida cum. Eget duis at tellus at urna.', 'FEEDBACK', 'READ', '2020-09-18 16:47:39', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `feedmsg`
--

CREATE TABLE `feedmsg` (
  `fm_RefNo` int(11) NOT NULL,
  `fd_RefNo` int(15) NOT NULL,
  `fm_Name` varchar(150) NOT NULL,
  `fm_Email` varchar(150) NOT NULL,
  `fm_Message` text NOT NULL,
  `fm_Type` varchar(50) NOT NULL,
  `fm_Date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedmsg`
--

INSERT INTO `feedmsg` (`fm_RefNo`, `fd_RefNo`, `fm_Name`, `fm_Email`, `fm_Message`, `fm_Type`, `fm_Date`) VALUES
(1, 2, 'iMago Kreatus', 'imkreatus@gmail.com', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tristique senectus et netus et. Ut ornare lectus sit amet est. Odio ut sem nulla pharetra diam sit. Quam id leo in vitae turpis massa sed elementum. Fringilla est ullamcorper eget nulla facilisi etiam. Lorem donec massa sapien faucibus et molestie. Curabitur vitae nunc sed velit. Tempus imperdiet nulla malesuada pellentesque elit eget gravida cum. Eget duis at tellus at urna.', 'FEEDBACK', '2020-09-18 17:27:36'),
(2, 8, 'Alteia', 'Alteia@machorn.yo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tristique senectus et netus et. Ut ornare lectus sit amet est. Odio ut sem nulla pharetra diam sit. Quam id leo in vitae turpis massa sed elementum. Fringilla est ullamcorper eget nulla facilisi etiam. Lorem donec massa sapien faucibus et molestie. Curabitur vitae nunc sed velit. Tempus imperdiet nulla malesuada pellentesque elit eget gravida cum. Eget duis at tellus at urna.', 'FEEDBACK', '2020-09-18 17:27:48'),
(3, 4, 'Pikachu', 'pika@pokemon.com', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tristique senectus et netus et. Ut ornare lectus sit amet est. Odio ut sem nulla pharetra diam sit. Quam id leo in vitae turpis massa sed elementum. Fringilla est ullamcorper eget nulla facilisi etiam', 'FEEDBACK', '2020-09-18 17:27:53'),
(4, 7, 'ForbidThyName', 'Forbid@gmaoil.ca', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tristique senectus et netus et. Ut ornare lectus sit amet est. Odio ut sem nulla pharetra diam sit. Quam id leo in vitae turpis massa sed elementum. Fringilla est ullamcorper eget nulla facilisi etiam.', 'FEEDBACK', '2020-09-18 21:49:36');

-- --------------------------------------------------------

--
-- Table structure for table `user_books`
--

CREATE TABLE `user_books` (
  `ub_BIDN` int(11) NOT NULL,
  `ub_Title` varchar(250) NOT NULL,
  `ub_Author` varchar(250) NOT NULL,
  `ub_Category` varchar(150) NOT NULL,
  `ub_Synopsis` text NOT NULL,
  `ub_Qty` int(20) NOT NULL,
  `ub_Price` int(20) NOT NULL,
  `ub_Status` varchar(50) NOT NULL,
  `ub_BCover` mediumblob NOT NULL,
  `ub_Seller` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_books`
--

INSERT INTO `user_books` (`ub_BIDN`, `ub_Title`, `ub_Author`, `ub_Category`, `ub_Synopsis`, `ub_Qty`, `ub_Price`, `ub_Status`, `ub_BCover`, `ub_Seller`) VALUES
(1, 'Forbidden City', 'Lao Che', '4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tristique senectus et netus et. Ut ornare lectus sit amet est. Odio ut sem nulla pharetra diam sit. Quam id leo in vitae turpis massa sed elementum. Fringilla est ullamcorper eget nulla facilisi etiam. Lorem donec massa sapien faucibus et molestie. Curabitur vitae nunc sed velit. Tempus imperdiet nulla malesuada pellentesque elit eget gravida cum. Eget duis at tellus at urna.', 25, 250, 'ON SALE', 0x2e2e2f696d672f626f6f6b732f32386663396234623333373565326136366239366133393737323034333239392e6a7067, 'forbid00'),
(2, 'Look at Me and You Will Be Mine', 'Shasha', '3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tristique senectus et netus et. Ut ornare lectus sit amet est. Odio ut sem nulla pharetra diam sit. Quam id leo in vitae turpis massa sed elementum. Fringilla est ullamcorper eget nulla facilisi etiam. Lorem donec massa sapien faucibus et molestie. Curabitur vitae nunc sed velit. Tempus imperdiet nulla malesuada pellentesque elit eget gravida cum. Eget duis at tellus at urna.', 100, 199, 'ON SALE', 0x2e2e2f696d672f626f6f6b732f455a6f537a70365851414d464769472e6a7067, 'forbid00'),
(3, 'Academy of a Foreign Beauty', 'Suzuki Hanamiya', '2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tristique senectus et netus et. Ut ornare lectus sit amet est. Odio ut sem nulla pharetra diam sit. Quam id leo in vitae turpis massa sed elementum. Fringilla est ullamcorper eget nulla facilisi etiam. Lorem donec massa sapien faucibus et molestie. Curabitur vitae nunc sed velit. Tempus imperdiet nulla malesuada pellentesque elit eget gravida cum. Eget duis at tellus at urna.', 18, 300, 'ON SALE', 0x2e2e2f696d672f626f6f6b732f45534776745876553441416c332d6b2e6a7067, 'iMagoK'),
(4, 'Ancient Modernity', 'Lao Che', '1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tristique senectus et netus et. Ut ornare lectus sit amet est. Odio ut sem nulla pharetra diam sit. Quam id leo in vitae turpis massa sed elementum. Fringilla est ullamcorper eget nulla facilisi etiam. Lorem donec massa sapien faucibus et molestie. Curabitur vitae nunc sed velit. Tempus imperdiet nulla malesuada pellentesque elit eget gravida cum. Eget duis at tellus at urna.', 250, 250, 'ON SALE', 0x2e2e2f696d672f626f6f6b732f37383439393731305f313138333035353732313838393233375f373331343630363530323237373238333834305f6e2e6a7067, 'iMagoK'),
(5, 'The Mesmerizing Beauty of You', 'Chewy TzuYu', '3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tristique senectus et netus et. Ut ornare lectus sit amet est. Odio ut sem nulla pharetra diam sit. Quam id leo in vitae turpis massa sed elementum. Fringilla est ullamcorper eget nulla facilisi etiam. Lorem donec massa sapien faucibus et molestie. Curabitur vitae nunc sed velit. Tempus imperdiet nulla malesuada pellentesque elit eget gravida cum. Eget duis at tellus at urna.', 200, 250, 'ON SALE', 0x2e2e2f696d672f626f6f6b732f3131383339383230305f3732363537383832383037333435315f363231303339393232323530333835343938355f6f2e6a7067, 'iMagoK'),
(6, 'Love Me and I Will Love You', 'Romansha Solidad', '3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tristique senectus et netus et. Ut ornare lectus sit amet est. Odio ut sem nulla pharetra diam sit. Quam id leo in vitae turpis massa sed elementum. Fringilla est ullamcorper eget nulla facilisi etiam. Lorem donec massa sapien faucibus et molestie. Curabitur vitae nunc sed velit. Tempus imperdiet nulla malesuada pellentesque elit eget gravida cum. Eget duis at tellus at urna.', 10, 99, 'ON SALE', 0x2e2e2f696d672f626f6f6b732f4a4b522e6a7067, 'iMagoK'),
(7, 'Sana Minatozaki', 'Shasha', '2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tristique senectus et netus et. Ut ornare lectus sit amet est. Odio ut sem nulla pharetra diam sit. Quam id leo in vitae turpis massa sed elementum. Fringilla est ullamcorper eget nulla facilisi etiam. Lorem donec massa sapien faucibus et molestie. Curabitur vitae nunc sed velit. Tempus imperdiet nulla malesuada pellentesque elit eget gravida cum. Eget duis at tellus at urna.', 350, 300, 'ON SALE', 0x2e2e2f696d672f626f6f6b732f3131393030323438345f313432363939393339343137363934335f373230323236363738363336393438363131375f6e2e6a7067, 'iMagoK'),
(8, 'EARTHIA: Journey of the Stone Seekers', 'IT Master Studio', '4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tristique senectus et netus et. Ut ornare lectus sit amet est. Odio ut sem nulla pharetra diam sit. Quam id leo in vitae turpis massa sed elementum. Fringilla est ullamcorper eget nulla facilisi etiam. Lorem donec massa sapien faucibus et molestie. Curabitur vitae nunc sed velit. Tempus imperdiet nulla malesuada pellentesque elit eget gravida cum. Eget duis at tellus at urna.', 89, 299, 'ON SALE', 0x2e2e2f696d672f626f6f6b732f46425f494d475f31353835353338373034323632373137312e6a7067, 'imkreatus'),
(9, 'My Rental Girlfriend', 'Bakazuya', '3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tristique senectus et netus et. Ut ornare lectus sit amet est. Odio ut sem nulla pharetra diam sit. Quam id leo in vitae turpis massa sed elementum. Fringilla est ullamcorper eget nulla facilisi etiam. Lorem donec massa sapien faucibus et molestie. Curabitur vitae nunc sed velit. Tempus imperdiet nulla malesuada pellentesque elit eget gravida cum. Eget duis at tellus at urna.', 285, 150, 'ON SALE', 0x2e2e2f696d672f626f6f6b732f37313035363037305f70305f6d6173746572313230302e6a7067, 'imkreatus'),
(10, 'Ancient Tree of Life', 'Negrosion', '1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tristique senectus et netus et. Ut ornare lectus sit amet est. Odio ut sem nulla pharetra diam sit. Quam id leo in vitae turpis massa sed elementum. Fringilla est ullamcorper eget nulla facilisi etiam. Lorem donec massa sapien faucibus et molestie. Curabitur vitae nunc sed velit. Tempus imperdiet nulla malesuada pellentesque elit eget gravida cum. Eget duis at tellus at urna.', 17, 69, 'ON SALE', 0x2e2e2f696d672f626f6f6b732f3030352e6a7067, 'McDownie'),
(11, 'TGOOK FanSigns', 'Rheang', '1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tristique senectus et netus et. Ut ornare lectus sit amet est. Odio ut sem nulla pharetra diam sit. Quam id leo in vitae turpis massa sed elementum. Fringilla est ullamcorper eget nulla facilisi etiam. Lorem donec massa sapien faucibus et molestie. Curabitur vitae nunc sed velit. Tempus imperdiet nulla malesuada pellentesque elit eget gravida cum. Eget duis at tellus at urna.', 7, 199, 'ON SALE', 0x2e2e2f696d672f626f6f6b732f31343835383735365f3931373331333936383430313631315f313036393235313934375f6f2e6a7067, 'MaxDown'),
(12, 'Sana Potter', 'Minatozaki Sanamichi', '1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tristique senectus et netus et. Ut ornare lectus sit amet est. Odio ut sem nulla pharetra diam sit. Quam id leo in vitae turpis massa sed elementum. Fringilla est ullamcorper eget nulla facilisi etiam. Lorem donec massa sapien faucibus et molestie. Curabitur vitae nunc sed velit. Tempus imperdiet nulla malesuada pellentesque elit eget gravida cum. Eget duis at tellus at urna.', 90, 299, 'ON SALE', 0x2e2e2f696d672f626f6f6b732f3131393132303132385f3333313131363538343939393838355f323832343137343534303833343739383931335f6f2e6a7067, 'MaxDown'),
(13, 'Love Me Like You Do', 'Chewyimnida', '3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tristique senectus et netus et. Ut ornare lectus sit amet est. Odio ut sem nulla pharetra diam sit. Quam id leo in vitae turpis massa sed elementum. Fringilla est ullamcorper eget nulla facilisi etiam. Lorem donec massa sapien faucibus et molestie. Curabitur vitae nunc sed velit. Tempus imperdiet nulla malesuada pellentesque elit eget gravida cum. Eget duis at tellus at urna.', 235, 250, 'ON SALE', 0x2e2e2f696d672f626f6f6b732f3131383934333333365f3332383936323537353231353238365f373238343233373233393531373138383639335f6e2e6a7067, 'MaxDown'),
(14, 'Dowenne Signs', 'Dweng', '1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tristique senectus et netus et. Ut ornare lectus sit amet est. Odio ut sem nulla pharetra diam sit. Quam id leo in vitae turpis massa sed elementum. Fringilla est ullamcorper eget nulla facilisi etiam. Lorem donec massa sapien faucibus et molestie. Curabitur vitae nunc sed velit. Tempus imperdiet nulla malesuada pellentesque elit eget gravida cum. Eget duis at tellus at urna.', 9, 250, 'ON SALE', 0x2e2e2f696d672f626f6f6b732f4477656e6720457045732e6a7067, 'MaxDown'),
(15, 'Solo Leveling', 'Manhuarea', '1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tristique senectus et netus et. Ut ornare lectus sit amet est. Odio ut sem nulla pharetra diam sit. Quam id leo in vitae turpis massa sed elementum. Fringilla est ullamcorper eget nulla facilisi etiam. Lorem donec massa sapien faucibus et molestie. Curabitur vitae nunc sed velit. Tempus imperdiet nulla malesuada pellentesque elit eget gravida cum. Eget duis at tellus at urna.', 290, 250, 'ON SALE', 0x2e2e2f696d672f626f6f6b732f313539363034313830303330332e6a7067, 'tirang_tiyan09'),
(16, 'Shy Bear', 'Seraphine Erathia', '5', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tristique senectus et netus et. Ut ornare lectus sit amet est. Odio ut sem nulla pharetra diam sit. Quam id leo in vitae turpis massa sed elementum. Fringilla est ullamcorper eget nulla facilisi etiam. Lorem donec massa sapien faucibus et molestie. Curabitur vitae nunc sed velit. Tempus imperdiet nulla malesuada pellentesque elit eget gravida cum. Eget duis at tellus at urna.', 15, 120, 'ON SALE', 0x2e2e2f696d672f626f6f6b732f37303332323531345f3638333630363438383739393336345f383934373835313230373636363330323937365f6e2e6a7067, 'iMagoK'),
(17, 'Scared Hamster', 'Minatozaki Sanamichi', '9', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tristique senectus et netus et. Ut ornare lectus sit amet est. Odio ut sem nulla pharetra diam sit. Quam id leo in vitae turpis massa sed elementum. Fringilla est ullamcorper eget nulla facilisi etiam. Lorem donec massa sapien faucibus et molestie. Curabitur vitae nunc sed velit. Tempus imperdiet nulla malesuada pellentesque elit eget gravida cum. Eget duis at tellus at urna.', 231, 149, 'ON SALE', 0x2e2e2f696d672f626f6f6b732f3131383737333931315f3332343633343433353634383130305f343536383533303337373339383433313834315f6e2e6a7067, 'forbid00'),
(18, 'gfasdsadasdas', 'dasdasda', '6', 'sadasgasdasdasgbdsdasdasdasdasdas', 1123, 123, 'REMOVED', 0x2e2e2f696d672f626f6f6b732f39303430323733305f3232303234313839393333393737375f333333313835333235313034303530393935325f6e2e6a7067, 'Harmon'),
(19, 'hadasgasgas', 'gasgasgasg', '12', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tristique senectus et netus et. Ut ornare lectus sit amet est. Odio ut sem nulla pharetra diam sit. Quam id leo in vitae turpis massa sed elementum. Fringilla est ullamcorper eget nulla facilisi etiam. Lorem donec massa sapien faucibus et molestie. Curabitur vitae nunc sed velit. Tempus imperdiet nulla malesuada pellentesque elit eget gravida cum. Eget duis at tellus at urna.', 300, 433, 'REMOVED', 0x2e2e2f696d672f626f6f6b732f416e64656e6720457045732e6a7067, 'Harmon'),
(20, 'hasdasdasdasd', 'Keith G. Banting, Richard P. Chaykowski, Steven F. Lehrer', '1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tristique senectus et netus et. Ut ornare lectus sit amet est. Odio ut sem nulla pharetra diam sit. Quam id leo in vitae turpis massa sed elementum. Fringilla est ullamcorper eget nulla facilisi etiam. Lorem donec massa sapien faucibus et molestie. Curabitur vitae nunc sed velit. Tempus imperdiet nulla malesuada pellentesque elit eget gravida cum. Eget duis at tellus at urna.', 123, 100, 'REMOVED', 0x2e2e2f696d672f626f6f6b732f31333933393238385f313133323538303736363831343939335f323035363036323232363337333730353038305f6e2e6a7067, 'Harmon'),
(21, 'Thinking Outside the Box: Innovation in Policy Ideas', 'Keith G. Banting, Richard P. Chaykowski, Steven F. Lehrer', '7', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tristique senectus et netus et. Ut ornare lectus sit amet est. Odio ut sem nulla pharetra diam sit. Quam id leo in vitae turpis massa sed elementum. Fringilla est ullamcorper eget nulla facilisi etiam. Lorem donec massa sapien faucibus et molestie. Curabitur vitae nunc sed velit. Tempus imperdiet nulla malesuada pellentesque elit eget gravida cum. Eget duis at tellus at urna.', 75, 300, 'ON SALE', 0x2e2e2f696d672f626f6f6b732f37303733323234395f3638333630363333323133323731335f3733363430323534363937323638383338345f6e2e6a7067, 'Harmon'),
(22, 'Hide on Bush', 'SKT Faker', '12', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tristique senectus et netus et. Ut ornare lectus sit amet est. Odio ut sem nulla pharetra diam sit. Quam id leo in vitae turpis massa sed elementum. Fringilla est ullamcorper eget nulla facilisi etiam. Lorem donec massa sapien faucibus et molestie. Curabitur vitae nunc sed velit. Tempus imperdiet nulla malesuada pellentesque elit eget gravida cum. Eget duis at tellus at urna.', 300, 350, 'ON SALE', 0x2e2e2f696d672f626f6f6b732f37303133303538385f3638333630353730383739393434325f343631343737363731393834333236323436345f6e2e6a7067, 'MaxDown');

-- --------------------------------------------------------

--
-- Table structure for table `user_cart`
--

CREATE TABLE `user_cart` (
  `uc_CartNo` int(11) NOT NULL,
  `uc_BIDN` int(15) NOT NULL,
  `uc_Seller` varchar(100) NOT NULL,
  `uc_Buyer` varchar(100) NOT NULL,
  `uc_Status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_cart`
--

INSERT INTO `user_cart` (`uc_CartNo`, `uc_BIDN`, `uc_Seller`, `uc_Buyer`, `uc_Status`) VALUES
(1, 8, 'imkreatus', 'iMagoK', 'PURCHASED'),
(2, 2, 'forbid00', 'iMagoK', 'PURCHASED'),
(3, 5, 'iMagoK', 'imkreatus', 'REMOVED'),
(4, 4, 'iMagoK', 'imkreatus', 'PENDING'),
(5, 7, 'iMagoK', 'imkreatus', 'REMOVED'),
(8, 8, 'imkreatus', 'forbid00', 'PURCHASED'),
(9, 7, 'iMagoK', 'forbid00', 'PURCHASED'),
(10, 1, 'forbid00', 'forbid00', 'PURCHASED'),
(11, 3, 'iMagoK', 'forbid00', 'PURCHASED'),
(12, 6, 'iMagoK', 'forbid00', 'PURCHASED'),
(13, 9, 'imkreatus', 'imagok', 'PENDING'),
(14, 7, 'iMagoK', 'MaxDown', 'PURCHASED'),
(15, 9, 'imkreatus', 'MaxDown', 'PURCHASED'),
(16, 10, 'McDownie', 'forbid00', 'PURCHASED'),
(17, 8, 'imkreatus', 'forbid00', 'PURCHASED'),
(18, 10, 'McDownie', 'forbid00', 'PURCHASED'),
(19, 8, 'imkreatus', 'forbid00', 'PURCHASED'),
(20, 10, 'McDownie', 'forbid00', 'PURCHASED'),
(21, 5, 'iMagoK', 'forbid00', 'PURCHASED'),
(22, 4, 'iMagoK', 'MaxDown', 'PURCHASED'),
(23, 4, 'iMagoK', 'MaxDown', 'PURCHASED'),
(24, 5, 'iMagoK', 'MaxDown', 'PURCHASED'),
(35, 7, 'iMagoK', 'MaxDown', 'PURCHASED'),
(36, 13, 'MaxDown', 'Lastry00', 'PURCHASED'),
(37, 12, 'MaxDown', 'Lastry00', 'PURCHASED'),
(38, 13, 'MaxDown', 'Lastry00', 'PURCHASED'),
(39, 12, 'MaxDown', 'Lastry00', 'PURCHASED'),
(40, 12, 'MaxDown', 'Lastry00', 'PURCHASED'),
(41, 12, 'MaxDown', 'tirang_tiyan09', 'PURCHASED'),
(42, 8, 'imkreatus', 'tirang_tiyan09', 'PURCHASED'),
(43, 15, 'tirang_tiyan09', 'forbid00', 'PURCHASED'),
(44, 12, 'MaxDown', 'forbid00', 'PENDING'),
(45, 13, 'MaxDown', 'forbid00', 'PURCHASED'),
(46, 8, 'imkreatus', 'forbid00', 'REMOVED'),
(47, 7, 'iMagoK', 'forbid00', 'PURCHASED'),
(48, 1, 'forbid00', 'imkreatus', 'PURCHASED'),
(49, 16, 'iMagoK', 'Admin', 'PURCHASED'),
(50, 7, 'iMagoK', 'admin', 'PENDING'),
(51, 11, 'MaxDown', 'admin', 'PURCHASED'),
(52, 16, 'iMagoK', 'forbid00', 'PURCHASED'),
(53, 16, 'iMagoK', 'imkreatus', 'PURCHASED'),
(54, 1, 'forbid00', 'imkreatus', 'REMOVED'),
(55, 15, 'tirang_tiyan09', 'imkreatus', 'PENDING'),
(56, 9, 'imkreatus', 'forbid00', 'PURCHASED'),
(20200, 15, 'tirang_tiyan09', 'forbid00', 'REMOVED'),
(20201, 17, 'forbid00', 'iMagoK', 'PURCHASED'),
(20202, 17, 'forbid00', 'MaxDown', 'PURCHASED'),
(20203, 4, 'iMagoK', 'MaxDown', 'PENDING'),
(20204, 3, 'iMagoK', 'MaxDown', 'REMOVED'),
(20205, 5, 'iMagoK', 'MaxDown', 'PURCHASED'),
(20206, 2, 'forbid00', 'MaxDown', 'REMOVED'),
(20207, 15, 'tirang_tiyan09', 'MaxDown', 'REMOVED'),
(202000, 1, 'forbid00', 'MaxDown', 'REMOVED'),
(202001, 16, 'iMagoK', 'MaxDown', 'REMOVED'),
(202002, 2, 'forbid00', 'MaxDown', 'PENDING'),
(202003, 7, 'iMagoK', 'MaxDown', 'PURCHASED'),
(202004, 12, 'MaxDown', 'Admin', 'PURCHASED'),
(202005, 13, 'MaxDown', 'Admin', 'PURCHASED'),
(202006, 17, 'forbid00', 'Admin', 'PURCHASED'),
(202007, 17, 'forbid00', 'Admin', 'PURCHASED'),
(202008, 9, 'imkreatus', 'forbid00', 'PENDING'),
(202009, 17, 'forbid00', 'Harmon', 'REMOVED'),
(202010, 12, 'MaxDown', 'Harmon', 'PENDING'),
(202011, 13, 'MaxDown', 'Harmon', 'PURCHASED'),
(202012, 16, 'iMagoK', 'Harmon', 'PENDING'),
(202013, 8, 'imkreatus', 'Harmon', 'PENDING'),
(202014, 14, 'MaxDown', 'Harmon', 'PENDING'),
(202015, 17, 'forbid00', 'Harmon', 'PENDING'),
(202016, 1, 'forbid00', 'Harmon', 'PENDING'),
(202017, 3, 'iMagoK', 'Harmon', 'PENDING'),
(202018, 6, 'iMagoK', 'Harmon', 'PENDING'),
(202019, 9, 'imkreatus', 'Harmon', 'PENDING'),
(202020, 21, 'Harmon', 'imagok', 'PURCHASED'),
(202021, 12, 'MaxDown', 'iMagoK', 'PENDING');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `book_category`
--
ALTER TABLE `book_category`
  ADD PRIMARY KEY (`RefNo`);

--
-- Indexes for table `book_orders`
--
ALTER TABLE `book_orders`
  ADD PRIMARY KEY (`bo_RefNo`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`fd_RefNo`);

--
-- Indexes for table `feedmsg`
--
ALTER TABLE `feedmsg`
  ADD PRIMARY KEY (`fm_RefNo`);

--
-- Indexes for table `user_books`
--
ALTER TABLE `user_books`
  ADD PRIMARY KEY (`ub_BIDN`);

--
-- Indexes for table `user_cart`
--
ALTER TABLE `user_cart`
  ADD PRIMARY KEY (`uc_CartNo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `book_category`
--
ALTER TABLE `book_category`
  MODIFY `RefNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `book_orders`
--
ALTER TABLE `book_orders`
  MODIFY `bo_RefNo` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `fd_RefNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `feedmsg`
--
ALTER TABLE `feedmsg`
  MODIFY `fm_RefNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_books`
--
ALTER TABLE `user_books`
  MODIFY `ub_BIDN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `user_cart`
--
ALTER TABLE `user_cart`
  MODIFY `uc_CartNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202022;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
