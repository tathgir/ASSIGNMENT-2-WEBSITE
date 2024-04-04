-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2024 at 01:58 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `coffees`
--

CREATE TABLE `coffees` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coffees`
--

INSERT INTO `coffees` (`id`, `name`, `description`, `price`) VALUES
(1, 'Dark Roast', 'Bold and rich coffee with a smooth finish', '2.99'),
(3, 'Original Blend', 'Classic Tim Hortons coffee with a balanced taste', '2.79'),
(4, 'Decaf', 'Smooth and satisfying decaffeinated coffee', '2.49'),
(6, 'Caramel Macchiato', 'Espresso mixed with steamed milk and caramel syrup', '3.99'),
(7, 'Mocha Latte', 'Rich espresso combined with steamed milk and chocolate syrup', '55.20'),
(8, 'Vanilla Latte', 'Espresso mixed with steamed milk and vanilla syrup', '3.79'),
(9, 'Cappuccino', 'Classic espresso drink with equal parts espresso, steamed milk, and foam', '3.29'),
(10, 'Americano', 'Espresso shots topped with hot water for a strong coffee flavor', '2.49'),
(11, 'Espresso', 'Strong and intense coffee made by forcing hot water through finely-ground coffee beans', '1.99'),
(12, 'Maple Iced Coffee', 'Refreshing iced coffee with a hint of maple flavor', '3.49'),
(13, 'Pumpkin Spice Latte', 'Seasonal favorite with espresso, steamed milk, and pumpkin spice syrup', '4.49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coffees`
--
ALTER TABLE `coffees`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `coffees`
--
ALTER TABLE `coffees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
