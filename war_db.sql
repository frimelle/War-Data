-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 07, 2014 at 10:34 PM
-- Server version: 5.5.40
-- PHP Version: 5.3.10-1ubuntu3.15

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `war_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `war`
--

CREATE TABLE IF NOT EXISTS `war` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `war_id` int(11) NOT NULL,
  `location` varchar(30) NOT NULL,
  `side_a` varchar(30) NOT NULL,
  `side_a_2` varchar(30) DEFAULT NULL,
  `side_b` varchar(30) NOT NULL,
  `side_b_2` varchar(30) DEFAULT NULL,
  `territory` varchar(30) DEFAULT NULL,
  `year` int(11) NOT NULL,
  `gw_a` int(11) NOT NULL,
  `gw_a_2` int(11) DEFAULT NULL,
  `gw_b` int(11) DEFAULT NULL,
  `gw_b_2` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf32 AUTO_INCREMENT=1958 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
