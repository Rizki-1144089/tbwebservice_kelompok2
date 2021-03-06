-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2016 at 12:42 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_persib`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_admin`
--

CREATE TABLE IF NOT EXISTS `t_admin` (
  `admin_id` int(5) NOT NULL AUTO_INCREMENT,
  `admin_nama` varchar(40) NOT NULL,
  `admin_alamat` varchar(50) NOT NULL,
  `admin_telp` varchar(12) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t_berita`
--

CREATE TABLE IF NOT EXISTS `t_berita` (
  `berita_id` int(5) NOT NULL AUTO_INCREMENT,
  `jadwal_id` int(5) NOT NULL,
  `berita_deskripsi` varchar(100) NOT NULL,
  PRIMARY KEY (`berita_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t_jadwal`
--

CREATE TABLE IF NOT EXISTS `t_jadwal` (
  `jadwal_id` int(11) NOT NULL AUTO_INCREMENT,
  `tgl_tanding` date NOT NULL,
  `waktu` time NOT NULL,
  `lawan_tanding` varchar(40) NOT NULL,
  `lokasi_tanding` varchar(40) NOT NULL,
  PRIMARY KEY (`jadwal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t_member`
--

CREATE TABLE IF NOT EXISTS `t_member` (
  `member_id` int(5) NOT NULL AUTO_INCREMENT,
  `member_nama` varchar(40) NOT NULL,
  `member_alamat` varchar(50) NOT NULL,
  `member_telp` varchar(12) NOT NULL,
  `member_tgl_masuk` date NOT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
