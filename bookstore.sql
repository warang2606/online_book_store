-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2022 at 10:12 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `aid` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `anumber` bigint(20) NOT NULL,
  `expiry_month` varchar(12) NOT NULL,
  `expiry_year` int(4) NOT NULL,
  `cvv` int(3) NOT NULL,
  `balance` float NOT NULL,
  `uname` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`aid`, `name`, `anumber`, `expiry_month`, `expiry_year`, `cvv`, `balance`, `uname`) VALUES
(1, 'seller_account', 2564, 'december', 2025, 222, 17530, 'book_seller'),
(2, 'Divya', 12345, 'july', 2032, 256, 20020, 'divya_warang'),
(3, 'gita', 2345, 'octomber', 2036, 567, 48650, 'gita_mhatre'),
(4, 'shweta', 1999, 'september', 2035, 120, 28800, 'shweta_patil');

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`username`, `password`) VALUES
('admin@123', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `bid` int(11) NOT NULL,
  `bname` varchar(50) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `imageurl` varchar(50) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`bid`, `bname`, `price`, `description`, `author`, `imageurl`, `cid`) VALUES
(34, 'Tally Practical Work Book - 1', 100, 'You will learn to use Tally with complete project work. This practical work book is based on sales/purchase accounting in a Computer Shop.   This practical work book Including: Financial Accounting, Inventory Management, and Sales/Purchase Order Processing in Tally.ERP 9 with GST', 'Bimlendu Shekhar', 'tally.jpg', 7),
(35, 'Peppa Pig: Once Upon a Time', 399, 'Peppa Pig: Once Upon a Time', 'John Sparkes', 'once upon a time.jpg', 3),
(36, 'Java Programming for Beginners', 250, 'This book is for all information technology and computer science students and professionals across the world.Java programming is not easy to learn but this book of java provides basic java concepts with easy examples.', 'Richard Powers', 'java book.jpg', 7),
(37, 'DATABASE MANAGEMENT SYSTEM', 206, 'The book, in the beginning, builds a strong foundation of relational database management system and then deals with query language, data manipulation, transaction processing, data warehouse, data mining, and application programming', 'MALAY K. PAKHIRA', 'db2.jpg', 7),
(38, 'Healthy Instant Pot Cookbook:', 300, 'The Healthy Instant Pot Cookbook consists of soups and meat recipes to get you started cooking healthy meals immediately.', 'Erika Robinson', 'cookbook.jpg', 1),
(40, 'Affiliate Marketing', 600, 'This book promises to give you a complete overview of affiliate marketing, right from the very beginning all the way through to owning a successful online business.     This book covers the different topics associated with affiliate marketing, starting with its definition, trends, opportunities', 'Robert Brunson', 'AM.jpg', 2),
(41, 'Smarter Business', 800, 'To make better informed business decisions, better serve clients, and increase operational efficiencies, you must be aware of changes to key data as they occur. In addition, you must enable the immediate delivery of this information to the people and processes that need to act upon it', 'Deepak Rangarao', 'SB.jpg', 2),
(44, 'Cooking for Hormone Balance', 789, 'From the founder of the popular Hormones Balance online community comes this life-saving program and cookbook filled with more than 125 tempting, nutrient-dense recipes to restore hormonal balance and achieve optimal health', 'Ritu Dalmia', 'cookbook3.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cid` int(11) NOT NULL,
  `cname` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cid`, `cname`) VALUES
(1, 'Cooking Book'),
(2, 'Business Books'),
(3, 'Kids Books'),
(4, 'Home and garden books'),
(5, 'Hobbies & Crafts'),
(6, 'Horrer story Books'),
(7, 'All Educational Books'),
(9, 'sports books'),
(11, 'comics');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `number` int(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `number`, `message`) VALUES
('dipti patil', 'dipti@gmail.com', 2147483647, 'abc'),
('divya', 'divyawarang@gmail.com', 2147483647, 'def'),
('kirti', 'kirtidumbre2@gmail.com', 2147483647, 'we loved your book......');

-- --------------------------------------------------------

--
-- Table structure for table `order_manager`
--

CREATE TABLE `order_manager` (
  `order_id` int(100) NOT NULL,
  `full_name` text NOT NULL,
  `phone_no` bigint(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `pay_mode` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_manager`
--

INSERT INTO `order_manager` (`order_id`, `full_name`, `phone_no`, `address`, `pay_mode`) VALUES
(1, 'dd', 66, 'ddd', 'cod'),
(2, 'eee', 888, 'ggg', 'cod'),
(3, 'divya', 898989898, 'pen', 'cod'),
(4, 'divya', 898989898, 'pen', 'cod'),
(5, 'divya', 88888, 'pen', 'cod'),
(6, 'divya', 88888, 'pen', 'cod'),
(7, 'rasika', 877777777, 'kalyan', 'cod'),
(8, 'sayli ', 8989888888, 'mumbai', 'cod'),
(9, 'dd', 8989898999, 'pen', 'cod'),
(10, 'divya', 77877777, 'pen', 'cod'),
(11, 'divya', 898989898, 'mumbai', 'cod'),
(12, 'kirti', 889999999, 'kalyan', 'cod'),
(13, 'divya', 8989898989, 'pen', 'cod'),
(14, 'divya', 7878888, 'pen', 'cod');

-- --------------------------------------------------------

--
-- Table structure for table `seller_account`
--

CREATE TABLE `seller_account` (
  `aid` int(60) NOT NULL,
  `name` varchar(255) NOT NULL,
  `anumber` int(255) NOT NULL,
  `emonth` varchar(255) NOT NULL,
  `eyear` int(255) NOT NULL,
  `cnumber` int(255) NOT NULL,
  `amt` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE `userinfo` (
  `uid` int(11) NOT NULL,
  `firstname` varchar(25) NOT NULL,
  `lastname` varchar(25) NOT NULL,
  `address` varchar(500) NOT NULL,
  `mobile` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`uid`, `firstname`, `lastname`, `address`, `mobile`, `email`, `username`, `password`) VALUES
(1, 'Divya', 'warang', 'pen', 2147483647, 'divya@gmail.com', 'divya_warang', 'divya123'),
(2, 'shweta', 'patil', 'pune', 2147483647, 'shweta@gmail.com', 'shweta_patil', 'shweta123'),
(3, 'rasika', 'dumbre', 'kalyan', 2147483647, 'rasika@gmail.com', 'rasika_dumbre', 'rasika123'),
(4, 'shital', 'more', 'pune', 2147483647, 'shital@gmail.com', 'shital_more', 'shital@123'),
(5, 'nihar', 'sumbhe', 'badlapur', 787689089, 'nihar@gmail.com', 'nihar_sumbhe', 'nihar1234'),
(7, 'neha', 'wankhade', 'shahad', 88888888, 'neha@gmail.com', 'neha_wankhade', 'neha123'),
(8, 'sakshi', 'patil', 'pen', 2147483647, 'sakshi@gmail.com', 'sakshi_patil', 'sakshi@123'),
(9, 'apurv', 'puralkar', 'kalyan', 898978907, 'apurv@gmail.com', 'apurv_puralkar', 'apurv123'),
(10, 'kirti', 'dumbre', 'A2Himalaya lokdhara ', 2147483647, 'kirtidumbre2@gmail.com', 'kdumbre16', '1630'),
(11, 'riya', 'patil', 'karjat', 2147483647, 'riya.patil@gmail.com', 'riya.1234', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `order_id` int(100) NOT NULL,
  `bname` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `Quantity` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`order_id`, `bname`, `price`, `Quantity`) VALUES
(6, 'Smarter', 800, 1),
(7, 'Smarter', 800, 1),
(7, 'Peppa', 399, 1),
(8, 'Affiliate', 600, 2),
(9, 'Smarter', 800, 1),
(10, 'Affiliate', 600, 1),
(11, 'Healthy', 300, 1),
(12, 'Affiliate', 600, 2),
(13, 'Cooking', 789, 1),
(14, 'Cooking', 789, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `order_manager`
--
ALTER TABLE `order_manager`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `order_manager`
--
ALTER TABLE `order_manager`
  MODIFY `order_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `userinfo`
--
ALTER TABLE `userinfo`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
