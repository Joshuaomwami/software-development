-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2024 at 10:18 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movies`
--

-- --------------------------------------------------------

--
-- Table structure for table `cast`
--

CREATE TABLE `cast` (
  `movie_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `role_name` varchar(50) NOT NULL,
  `date_added` date NOT NULL,
  `added_by` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL,
  `star_id` int(11) NOT NULL,
  `date_deleted` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `directors`
--

CREATE TABLE `directors` (
  `director_id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `d.o.b` date NOT NULL,
  `passport_photo` blob NOT NULL,
  `nationality` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `date_deleted` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `genre_id` int(11) NOT NULL,
  `genre_name` varchar(30) NOT NULL,
  `date_added` date NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `deleted_ by` int(11) NOT NULL,
  `date_deleted` date NOT NULL,
  `added_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `language_id` int(11) NOT NULL,
  `language_name` varchar(50) NOT NULL,
  `date_added` date NOT NULL,
  `added_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `date_deleted` date NOT NULL,
  `deleted_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `media_id` int(11) NOT NULL,
  `media_name` varchar(20) NOT NULL,
  `date_added` date NOT NULL,
  `added_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `date_deleted` date NOT NULL,
  `deleted_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `movie genre`
--

CREATE TABLE `movie genre` (
  `movie_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `date_added` date NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `deleted_by` int(11) NOT NULL,
  `date_deleted` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `movie language`
--

CREATE TABLE `movie language` (
  `movie_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `date_deleted` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `movie production company`
--

CREATE TABLE `movie production company` (
  `movie_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `date_added` date NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `date_deleted` date NOT NULL,
  `deleted_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `movie rating`
--

CREATE TABLE `movie rating` (
  `movie_id` int(11) NOT NULL,
  `rating_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `date_deleted` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `movie resolution`
--

CREATE TABLE `movie resolution` (
  `movie_id` int(11) NOT NULL,
  `resolution_id` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `date_deleted` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `movie role`
--

CREATE TABLE `movie role` (
  `role_id` int(11) NOT NULL,
  `role_description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `movie_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `release_date` datetime NOT NULL,
  `added_by` int(11) NOT NULL,
  `synopsis` varchar(1000) NOT NULL,
  `poster` varchar(50) NOT NULL,
  `trailer` int(11) NOT NULL,
  `duration` time NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `deleted_by` int(11) NOT NULL,
  `date_deleted` datetime NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `movie stars`
--

CREATE TABLE `movie stars` (
  `star_id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `d.o.b` date NOT NULL,
  `nationality` int(11) NOT NULL,
  `a-list` varchar(15) NOT NULL,
  `passport_photo` blob NOT NULL,
  `gender` varchar(2) NOT NULL,
  `user_id` int(11) NOT NULL,
  `addedby` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `movie_media`
--

CREATE TABLE `movie_media` (
  `movie_id` int(11) NOT NULL,
  `media_id` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `date_deleted` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nationalities`
--

CREATE TABLE `nationalities` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `objects`
--

CREATE TABLE `objects` (
  `object_id` int(11) NOT NULL,
  `object_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `priviledges`
--

CREATE TABLE `priviledges` (
  `user_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `valid` tinyint(1) NOT NULL,
  `date_added` date NOT NULL,
  `added_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `production companies`
--

CREATE TABLE `production companies` (
  `company_id` int(11) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `date_added` date NOT NULL,
  `added_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `date_deleted` date NOT NULL,
  `deleted_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `rating_id` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `date_deleted` datetime NOT NULL,
  `deleted_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resolution`
--

CREATE TABLE `resolution` (
  `resolution_id` int(11) NOT NULL,
  `resolution_name` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `date_deleted` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `system_admin` int(11) NOT NULL,
  `date_deleted` date NOT NULL,
  `status` varchar(15) NOT NULL,
  `email` varchar(60) NOT NULL,
  `mobile_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cast`
--
ALTER TABLE `cast`
  ADD KEY `movie_id` (`movie_id`),
  ADD KEY `movie_id_2` (`movie_id`),
  ADD KEY `movie_id_3` (`movie_id`),
  ADD KEY `movie_id_4` (`movie_id`),
  ADD KEY `star_id` (`star_id`),
  ADD KEY `cast_ibfk_2` (`added_by`),
  ADD KEY `cast_ibfk_3` (`deleted_by`);

--
-- Indexes for table `directors`
--
ALTER TABLE `directors`
  ADD PRIMARY KEY (`director_id`),
  ADD KEY `nationality` (`nationality`),
  ADD KEY `added_by` (`added_by`),
  ADD KEY `deleted_by` (`deleted_by`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`genre_id`),
  ADD KEY `added_by` (`added_by`),
  ADD KEY `deleted_ by` (`deleted_ by`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`language_id`),
  ADD KEY `added_by` (`added_by`),
  ADD KEY `deleted_by` (`deleted_by`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD KEY `added_by` (`added_by`),
  ADD KEY `deleted_by` (`deleted_by`);

--
-- Indexes for table `movie genre`
--
ALTER TABLE `movie genre`
  ADD KEY `movie genre_ibfk_1` (`movie_id`),
  ADD KEY `movie genre_ibfk_2` (`genre_id`),
  ADD KEY `movie genre_ibfk_3` (`added_by`),
  ADD KEY `movie genre_ibfk_4` (`deleted_by`);

--
-- Indexes for table `movie language`
--
ALTER TABLE `movie language`
  ADD KEY `added_by` (`added_by`),
  ADD KEY `deleted_by` (`deleted_by`),
  ADD KEY `language_id` (`language_id`),
  ADD KEY `movie language_ibfk_1` (`movie_id`);

--
-- Indexes for table `movie production company`
--
ALTER TABLE `movie production company`
  ADD KEY `added_by` (`added_by`),
  ADD KEY `deleted_by` (`deleted_by`),
  ADD KEY `movie production company_ibfk_1` (`movie_id`);

--
-- Indexes for table `movie rating`
--
ALTER TABLE `movie rating`
  ADD PRIMARY KEY (`movie_id`),
  ADD KEY `movie rating_ibfk_2` (`rating_id`);

--
-- Indexes for table `movie resolution`
--
ALTER TABLE `movie resolution`
  ADD KEY `movie_id` (`movie_id`),
  ADD KEY `resolution_id` (`resolution_id`),
  ADD KEY `added_by` (`added_by`),
  ADD KEY `deleted_by` (`deleted_by`);

--
-- Indexes for table `movie role`
--
ALTER TABLE `movie role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movie_id`),
  ADD KEY `added_by` (`added_by`),
  ADD KEY `deleted_by` (`deleted_by`);

--
-- Indexes for table `movie stars`
--
ALTER TABLE `movie stars`
  ADD PRIMARY KEY (`star_id`),
  ADD KEY `addedby` (`addedby`),
  ADD KEY `nationality` (`nationality`);

--
-- Indexes for table `movie_media`
--
ALTER TABLE `movie_media`
  ADD KEY `movie_id` (`movie_id`),
  ADD KEY `added_by` (`added_by`),
  ADD KEY `deleted_by` (`deleted_by`);

--
-- Indexes for table `nationalities`
--
ALTER TABLE `nationalities`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `objects`
--
ALTER TABLE `objects`
  ADD PRIMARY KEY (`object_id`);

--
-- Indexes for table `priviledges`
--
ALTER TABLE `priviledges`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `added_by` (`added_by`);

--
-- Indexes for table `production companies`
--
ALTER TABLE `production companies`
  ADD PRIMARY KEY (`company_id`),
  ADD KEY `added_by` (`added_by`),
  ADD KEY `deleted_by` (`deleted_by`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`rating_id`),
  ADD KEY `added_by` (`added_by`),
  ADD KEY `deleted_by` (`deleted_by`);

--
-- Indexes for table `resolution`
--
ALTER TABLE `resolution`
  ADD PRIMARY KEY (`resolution_id`),
  ADD KEY `added_by` (`added_by`),
  ADD KEY `deleted_by` (`deleted_by`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movie rating`
--
ALTER TABLE `movie rating`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `rating_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cast`
--
ALTER TABLE `cast`
  ADD CONSTRAINT `cast_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`),
  ADD CONSTRAINT `cast_ibfk_2` FOREIGN KEY (`added_by`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `cast_ibfk_3` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `cast_ibfk_4` FOREIGN KEY (`star_id`) REFERENCES `movie stars` (`star_id`);

--
-- Constraints for table `directors`
--
ALTER TABLE `directors`
  ADD CONSTRAINT `directors_ibfk_1` FOREIGN KEY (`nationality`) REFERENCES `nationalities` (`country_id`),
  ADD CONSTRAINT `directors_ibfk_2` FOREIGN KEY (`added_by`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `directors_ibfk_3` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `genres`
--
ALTER TABLE `genres`
  ADD CONSTRAINT `genres_ibfk_1` FOREIGN KEY (`added_by`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `genres_ibfk_2` FOREIGN KEY (`deleted_ by`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `languages`
--
ALTER TABLE `languages`
  ADD CONSTRAINT `languages_ibfk_1` FOREIGN KEY (`added_by`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `languages_ibfk_2` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `media_ibfk_1` FOREIGN KEY (`added_by`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `media_ibfk_2` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `movie genre`
--
ALTER TABLE `movie genre`
  ADD CONSTRAINT `movie genre_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`),
  ADD CONSTRAINT `movie genre_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`genre_id`),
  ADD CONSTRAINT `movie genre_ibfk_3` FOREIGN KEY (`added_by`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `movie genre_ibfk_4` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `movie language`
--
ALTER TABLE `movie language`
  ADD CONSTRAINT `movie language_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`),
  ADD CONSTRAINT `movie language_ibfk_2` FOREIGN KEY (`added_by`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `movie language_ibfk_3` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `movie language_ibfk_4` FOREIGN KEY (`language_id`) REFERENCES `languages` (`language_id`);

--
-- Constraints for table `movie production company`
--
ALTER TABLE `movie production company`
  ADD CONSTRAINT `movie production company_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`),
  ADD CONSTRAINT `movie production company_ibfk_2` FOREIGN KEY (`added_by`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `movie production company_ibfk_3` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `movie rating`
--
ALTER TABLE `movie rating`
  ADD CONSTRAINT `movie rating_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`),
  ADD CONSTRAINT `movie rating_ibfk_2` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`);

--
-- Constraints for table `movie resolution`
--
ALTER TABLE `movie resolution`
  ADD CONSTRAINT `movie resolution_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`),
  ADD CONSTRAINT `movie resolution_ibfk_2` FOREIGN KEY (`resolution_id`) REFERENCES `resolution` (`resolution_id`),
  ADD CONSTRAINT `movie resolution_ibfk_3` FOREIGN KEY (`added_by`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `movie resolution_ibfk_4` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `movies_ibfk_1` FOREIGN KEY (`added_by`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `movies_ibfk_2` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `movie stars`
--
ALTER TABLE `movie stars`
  ADD CONSTRAINT `movie stars_ibfk_1` FOREIGN KEY (`addedby`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `movie stars_ibfk_2` FOREIGN KEY (`nationality`) REFERENCES `nationalities` (`country_id`);

--
-- Constraints for table `movie_media`
--
ALTER TABLE `movie_media`
  ADD CONSTRAINT `movie_media_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`),
  ADD CONSTRAINT `movie_media_ibfk_2` FOREIGN KEY (`added_by`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `movie_media_ibfk_3` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `priviledges`
--
ALTER TABLE `priviledges`
  ADD CONSTRAINT `priviledges_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `priviledges_ibfk_2` FOREIGN KEY (`added_by`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `production companies`
--
ALTER TABLE `production companies`
  ADD CONSTRAINT `production companies_ibfk_1` FOREIGN KEY (`added_by`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `production companies_ibfk_2` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`added_by`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `rating_ibfk_2` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `resolution`
--
ALTER TABLE `resolution`
  ADD CONSTRAINT `resolution_ibfk_1` FOREIGN KEY (`added_by`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `resolution_ibfk_2` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
