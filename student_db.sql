-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2025 at 09:39 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `phone`, `created_at`) VALUES
(1, 'DENNIS WAWERU', 'dennow2030@gmail.com', '0734567892', '2025-06-30 11:29:03'),
(3, 'john kamau', 'kamau@gmail.com', '0712345678', '2025-06-30 13:10:03'),
(4, 'Josephine Karimi', 'joseine@gmail.com', '0723456891', '2025-06-30 13:13:11'),
(5, 'Agnes Wangechi', 'agne@gmail.com', '0746543221', '2025-06-30 13:15:02'),
(6, 'Peter Kimani', 'pkm@gmail.com', '0723967846', '2025-06-30 14:09:04'),
(7, 'Ali Abdi', 'ali@gmail.com', '0796545967', '2025-06-30 16:00:47'),
(13, 'john kamau', 'johndoe@gmail.com', '0746543221', '2025-07-02 12:28:15'),
(14, 'Josephine Karimi', 'johndoe@gmail.com', '0746543221', '2025-07-02 12:41:30'),
(15, 'DENNIS WAWERU', 'dennow2030@gmail.com', '0723967846', '2025-07-02 12:52:18'),
(16, 'john kamau', 'dennow2030@gmail.com', '0746543221', '2025-07-02 13:57:24'),
(17, 'john kamau', 'johndoe@gmail.com', '0723456891', '2025-07-04 08:59:48'),
(18, 'Josephine Karimi', 'johndoe@gmail.com', '0796545967', '2025-07-08 07:31:13'),
(19, 'john kamau', 'johndoe@gmail.com', '0723967846', '2025-07-09 06:31:22'),
(20, 'john kamau', 'johndoe@gmail.com', '0723967846', '2025-07-09 06:34:39'),
(21, 'DENNIS WAWERU', 'dennow2030@gmail.com', '0746543221', '2025-07-09 07:20:46'),
(22, 'DENNIS WAWERU', 'dennow2030@gmail.com', '0734567892', '2025-07-09 07:44:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
