-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 04, 2023 lúc 03:16 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ajax`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(2, 'Web Development'),
(3, 'Graphic Design'),
(4, 'Digital Marketing'),
(5, 'Web Design sdfdsfsdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `name`, `description`) VALUES
(1, 'Yae Miko', 'I am the Guuji of the Grand Narukami Shrine. The purpose of my visit is to monitor your every move for such is the order of the shrine... Oh come on do not be so nervous. It is only officialese, for goodness sake. I could not just go gallivanting around for no reason at all could If Now come on do something amusing for me.'),
(10, 'Raiden Shogun', 'No salutations needed. My exalted status shall not be disclosed as we travel among the common folk. I acknowledge that you are a person of superior ability. Henceforth you will be my guard. Worry not. Should any danger arise I shall dispose of it.'),
(11, 'Neuvillette', 'I see the value in my own work, but I also see the meaning in all the endeavors of the people of Fontaine. I believe I will continue to take pride in fulfilling my duties.'),
(12, 'Kaedehara Kazuha', 'This scenery is wonderful... Surely enough to convince anyone to become a wanderer.'),
(13, 'Nahida', 'What they say is true: You have to see the world for yourself to appreciate how beautiful it is.'),
(16, 'Kamisato Ayaka', 'Master of Inazuma Kamisato Art Tachi Jutsu — Kamisato Ayaka, present! Delighted to make your acquaintance.'),
(17, 'Aloy', 'Aloy here. I do not know this world but my arrows are sharp and my bow is ready. If your party needs help I will do what I can.'),
(18, 'Klee', 'Spark Knight Klee of the Knights of Favonius reporting for duty! ...There is some more but uh I forgot. I am not so good at remembering...');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `gender` text DEFAULT NULL,
  `price` text DEFAULT NULL,
  `doc` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `gender`, `price`, `doc`) VALUES
(2, 'Rahul Goyal', 'rahul@gmail.com', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  `cname` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `course`
--

INSERT INTO `course` (`id`, `catid`, `cname`) VALUES
(1, 1, 'HTML & CSS'),
(2, 1, 'Bootstrap'),
(3, 1, 'JavaScript'),
(4, 1, 'jQuery'),
(5, 2, 'PHP & MYSQL'),
(6, 2, 'CodeIgniter'),
(7, 2, 'Laravel'),
(8, 2, 'CakePHP'),
(9, 3, 'Photoshop'),
(10, 3, 'Illustrator'),
(11, 3, 'Corel Draw'),
(12, 4, 'SEO'),
(13, 4, 'SMO'),
(14, 4, 'Google Adwords');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `catid` int(11) DEFAULT NULL,
  `brandid` int(11) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `price` bigint(20) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `catid`, `brandid`, `name`, `image`, `price`, `description`) VALUES
(1, 1, 1, 'Men Solid Polo Neck', '1.webp', 495, NULL),
(2, 1, 1, 'Men Solid Round Neck Maroon', '2.webp', 299, NULL),
(3, 1, 2, 'Men Solid Polo Neck Green T-Shirt', '3.webp', 319, NULL),
(4, 1, 2, 'Men Checkered Round Neck Blue T-Shirt', '4.webp', 359, NULL),
(5, 1, 3, 'Men Solid Round Neck Grey Tshirt', '5.webp', 2428, NULL),
(6, 1, 2, 'Pack of 2 Men Striped Round Tshirt', '6.webp', 416, NULL),
(7, 1, 3, 'Men Printed Round Neck Blue T-Shirt', '7.webp', 299, NULL),
(8, 1, 2, 'Pack of 2 Men Printed Round Neck Navy Blue, Grey T-Shirt', '8.webp', 336, NULL),
(9, 1, 2, 'Men Color Block Round Neck Tshirt', '9.webp', 349, NULL),
(10, 1, 2, 'TS1 Men Striped Round Neck Tshirt', '10.webp', 206, NULL),
(11, 1, 3, 'Men Color Block Polo Neck Grey Tshirt', '11.webp', 249, NULL),
(12, 1, 3, 'Men Striped Round Neck Blue T-Shirt', '12.webp', 291, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
