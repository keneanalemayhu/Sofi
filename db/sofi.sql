-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2024 at 06:10 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `control`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `prod_qty` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `popular` tinyint(4) NOT NULL DEFAULT 0,
  `image` varchar(191) NOT NULL,
  `meta_title` varchar(191) NOT NULL,
  `meta_description` mediumtext NOT NULL,
  `meta_keywords` mediumtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `status`, `popular`, `image`, `meta_title`, `meta_description`, `meta_keywords`, `created_at`) VALUES
(12, 'Drinks', 'Drinks', 'Drinks', 0, 1, '1719166071.png', 'Drinks', 'Drinks', 'Drinks', '2024-06-09 23:21:20'),
(14, 'Foods', 'Foods', 'Foods', 0, 1, '1719166080.png', 'Foods', 'Foods', 'Foods', '2024-06-11 14:41:20');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `small_description` mediumtext NOT NULL,
  `description` mediumtext NOT NULL,
  `original_price` int(11) NOT NULL,
  `selling_price` int(11) NOT NULL,
  `image` varchar(191) NOT NULL,
  `qty` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `trending` tinyint(4) NOT NULL,
  `meta_title` varchar(191) NOT NULL,
  `meta_keywords` mediumtext NOT NULL,
  `meta_description` mediumtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `slug`, `small_description`, `description`, `original_price`, `selling_price`, `image`, `qty`, `status`, `trending`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`) VALUES
(4, 12, 'Normal Beso', 'Normal Beso', 'Beso, a roasted barley flour enjoyed as a nutritious drink or a dough-like side dish, is a versatile staple in Ethiopian cuisine.', 'Beso, a roasted barley flour, is a cornerstone of Ethiopian cuisine. Crafted from a readily available grain, it embodies the resourcefulness and rich flavors of the country\'s food culture.\r\n\r\nBeso shines in its versatility. Traditionally enjoyed as a drink, it\'s made by whisking the flour with water, honey, or sugar. This energy-rich concoction is a favorite among runners. Beso can also be transformed into a delightful side dish. Using warm water and sometimes fat, the flour is kneaded into a soft dough, often enjoyed in Ethiopia\'s Tigray region.\r\n\r\nBeso\'s significance goes beyond its taste. Its simple preparation makes it accessible, offering essential nutrients and a comforting presence on Ethiopian tables.\r\n\r\nIn essence, beso exemplifies Ethiopian culinary ingenuity. Transforming a humble grain into a nourishing beverage and a versatile side dish, it offers a delicious glimpse into the heart of Ethiopian food culture.', 40, 35, '1719172520.png', 1, 0, 1, 'Normal Beso', 'Ethiopian local drink', 'Ethiopian local drink', '2024-06-23 18:00:52'),
(8, 0, 'Beso with Milk', 'Beso with Milk', 'Beso, a roasted barley flour enjoyed as a nutritious drink or a dough-like side dish, is a versatile staple in Ethiopian cuisine.', 'Beso, a roasted barley flour, is a cornerstone of Ethiopian cuisine. Crafted from a readily available grain, it embodies the resourcefulness and rich flavors of the country\'s food culture.\r\n\r\nBeso shines in its versatility. Traditionally enjoyed as a drink, it\'s made by whisking the flour with water, honey, or sugar. This energy-rich concoction is a favorite among runners. Beso can also be transformed into a delightful side dish. Using warm water and sometimes fat, the flour is kneaded into a soft dough, often enjoyed in Ethiopia\'s Tigray region.\r\n\r\nBeso\'s significance goes beyond its taste. Its simple preparation makes it accessible, offering essential nutrients and a comforting presence on Ethiopian tables.\r\n\r\nIn essence, beso exemplifies Ethiopian culinary ingenuity. Transforming a humble grain into a nourishing beverage and a versatile side dish, it offers a delicious glimpse into the heart of Ethiopian food culture.', 45, 50, '1719522034.png', 1, 0, 1, 'Beso with Milk', 'Beso, a roasted barley flour, is a cornerstone of Ethiopian cuisine. Crafted from a readily available grain, it embodies the resourcefulness and rich flavors of the country\'s food culture..', 'Beso, a roasted barley flour, is a cornerstone of Ethiopian cuisine. Crafted from a readily available grain, it embodies the resourcefulness and rich flavors of the country\'s food culture.\r\n\r\nBeso shines in its versatility. Traditionally enjoyed as a drink, it\'s made by whisking the flour with water, honey, or sugar. This energy-rich concoction is a favorite among runners. Beso can also be transformed into a delightful side dish. Using warm water and sometimes fat, the flour is kneaded into a soft dough, often enjoyed in Ethiopia\'s Tigray region.\r\n\r\nBeso\'s significance goes beyond its taste. Its simple preparation makes it accessible, offering essential nutrients and a comforting presence on Ethiopian tables.\r\n\r\nIn essence, beso exemplifies Ethiopian culinary ingenuity. Transforming a humble grain into a nourishing beverage and a versatile side dish, it offers a delicious glimpse into the heart of Ethiopian food culture.', '2024-06-27 20:58:30'),
(9, 14, 'Shiro', 'Shiro', 'Shiro', 'Shiro', 80, 80, '1719522081.png', -1, 0, 1, 'Shiro', 'Shiro', 'Shiro', '2024-06-27 21:01:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `phone` int(15) NOT NULL,
  `password` varchar(191) NOT NULL,
  `role_as` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `email`, `phone`, `password`, `role_as`, `created_at`) VALUES
(5, 'kenean.alemayhu', 'Kenean Alemayhu', 'keneanalemayhu1@gmail.com', 935609339, 'Kani66AlEx', 1, '2024-06-14 13:23:41'),
(6, 'alemayehu.tilahun', 'Alemayehu Tilahun', 'alex.tila@gmail.com', 911120700, 'Alex123Tila', 0, '2024-06-14 13:24:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
