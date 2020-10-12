-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2020 at 03:52 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `user_id`, `title`, `body`) VALUES
(1, 0, 'Thousands of much needed meals distributed, Bali\r\n', '\r\nIn many areas on the island, normal life has resumed for people, with restaurants, public places, and temples opening up. In places where we previously fed stray dogs, the feeding has been taken over by locals. Therefore, our teams were now able to target areas that were previously isolated and are now accessible - what we found were large numbers of dogs in need.\r\n\r\nMany of these animals seem to have been forgotten about, left behind hungry, skinny and sick with severe skin diseases. Within two weeks, we were able to distribute 4,994 meals - and as you can see, they were badly needed.'),
(2, 0, 'Giving strays the help they need in Lutsk, Ukraine.', 'The SAC team in Ukraine is in Lutsk, sterilising around 150 dogs and continuing our cooperation with this municipality committed to approaching stray dog management in a non-lethal, humane way. \r\n\r\nLast week, we were also able to rescue Molly – a beautiful young stray female who was diagnosed by our vet team with a pyometra. A pyometra is a serious and usually life threatening infection of the uterus, affecting up to 1 in 4 unspayed female dogs (and occasionally cats). Without treatment, she would have died a long and agonising death on the streets. Our vet removed the uterus, treated her with intravenous antibiotics for a week and now she is ready to move to a community clinic and get adopted by a loving family.\r\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
