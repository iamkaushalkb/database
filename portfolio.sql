-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2020 at 09:13 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(12) NOT NULL,
  `cname` varchar(255) NOT NULL,
  `cemail` varchar(255) NOT NULL,
  `csubject` varchar(255) NOT NULL,
  `cmsg` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `cname`, `cemail`, `csubject`, `cmsg`, `date`) VALUES
(1, 'Kaushal', 'iamkaushalkb@gmail.com', 'Demo', 'Demo', '2020-05-22 15:13:04'),
(2, 'Tony', 'tony@business.com', 'Regarding Business', 'Hi.', '2020-05-22 15:13:04'),
(5, '', '', '', '', '2020-05-30 22:41:33');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(12) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `feedback` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `img`, `feedback`, `date`) VALUES
(1, 'John Doe', 'john@business.com', 'pic2.jpg', 'Awesome Creation', '2020-05-24 17:26:19'),
(2, 'Harry', 'harry@business.com', '<FileStorage: \'jatin.jpg\' (\'image/jpeg\')>', 'Nice Work', '2020-05-24 18:35:14'),
(3, 'Tony', 'tony@business.com', '<FileStorage: \'IMG_20161119_111731.jpg\' (\'image/jpeg\')>', 'Creative', '2020-05-24 18:37:34'),
(4, 'Steve', 'steve@business.com', '<FileStorage: \'IMG_20161119_115005-1.jpg\' (\'image/jpeg\')>', 'Nice Man', '2020-05-24 18:38:09'),
(5, 'Zaynish', 'zaynishkhanal@gmail.com', '<FileStorage: \'Screenshot (14).png\' (\'image/png\')>', 'Nice Creativity!', '2020-05-27 18:00:29'),
(6, 'YAshasvi', 'ssv@gmail.com', '<FileStorage: \'portfolio.png\' (\'image/png\')>', 'Nice', '2020-07-02 17:07:42');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(12) NOT NULL,
  `title` varchar(255) NOT NULL,
  `tagline` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `title`, `tagline`, `slug`, `content`, `date`) VALUES
(1, 'Python (programming language)', 'From Wikipedia, the free encyclopedia', 'pythonwikipedia', 'Python is an interpreted, high-level, general-purpose programming language. Created by Guido van Rossum and first released in 1991, Python\'s design philosophy emphasizes code readability with its notable use of significant whitespace. Its language constru', '2020-05-22 16:18:49'),
(2, 'Number of infected People is increasing Day by Day', 'COVID-19 Nepal', 'nepalcovid19', 'The COVID-19 pandemic, also known as the coronavirus pandemic, is an ongoing pandemic of coronavirus disease 2019 (COVID‑19), caused by severe acute respiratory syndrome coronavirus 2 (SARS‑CoV‑2).[1] The outbreak was first identified in Wuhan, China, in ', '2020-05-24 20:43:29'),
(3, 'Rising Star of Juventus', 'Cristiano Ronaldo', 'cr7', 'Cristiano Ronaldo dos Santos Aveiro GOIH ComM (European Portuguese: [kɾiʃˈtjɐnu ʁɔˈnaɫdu]; born 5 February 1985) is a Portuguese professional footballer who plays as a forward for Serie A club Juventus and captains the Portugal national team. Often consid', '2020-05-24 20:46:13'),
(4, 'Birth Place Of Legends', 'Nepal', 'nepal', 'Nepal (Nepali: नेपाल [neˈpal]), officially the Federal Democratic Republic of Nepal,[14] is a country in South Asia. It is located mainly in the Himalayas, but also includes parts of the Indo-Gangetic Plain. It is the 49th largest country by population an', '2020-05-24 20:48:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
