-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 12, 2015 at 02:08 AM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `spacecard`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `CommentId` int(11) NOT NULL AUTO_INCREMENT,
  `PostCardId` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `Comment` varchar(160) NOT NULL,
  `Status` varchar(20) NOT NULL DEFAULT 'default.png',
  `CommentDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`CommentId`),
  KEY `PostCardId` (`PostCardId`,`UserId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `comment`
--


-- --------------------------------------------------------

--
-- Table structure for table `friend`
--

CREATE TABLE IF NOT EXISTS `friend` (
  `FriendId` int(11) NOT NULL AUTO_INCREMENT,
  `InvitorId` int(11) NOT NULL,
  `InviteeId` int(11) NOT NULL,
  `Status` varchar(20) NOT NULL DEFAULT 'Ok',
  `DateConnected` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`FriendId`),
  KEY `InvitorId` (`InvitorId`,`InviteeId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `friend`
--


-- --------------------------------------------------------

--
-- Table structure for table `postcard`
--

CREATE TABLE IF NOT EXISTS `postcard` (
  `PostCardId` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) NOT NULL,
  `TargetUserId` int(11) NOT NULL,
  `ImageLink1` varchar(255) NOT NULL DEFAULT 'default.png',
  `ImageLink2` varchar(255) NOT NULL DEFAULT 'default.png',
  `ImageLink3` varchar(255) NOT NULL DEFAULT 'default.png',
  `Message` varchar(160) NOT NULL,
  `Status` varchar(20) NOT NULL DEFAULT 'Ok',
  `DatePosted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`PostCardId`),
  KEY `UserId` (`UserId`,`TargetUserId`),
  KEY `UserId_2` (`UserId`),
  KEY `TargetUserId` (`TargetUserId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `postcard`
--

INSERT INTO `postcard` (`PostCardId`, `UserId`, `TargetUserId`, `ImageLink1`, `ImageLink2`, `ImageLink3`, `Message`, `Status`, `DatePosted`) VALUES
(1, 1, 2, '1-the-earth.jpg', '14-butterfly-nebula.jpg', '3-saturn-eclipse 15 september 2006.jpg', 'Go and sleep', 'Ok', '2015-04-11 22:00:57'),
(2, 2, 3, '8-sombrero-galaxy-1990.jpg', '9-helix-nebula.jpg', 'galatic gathering_2014.jpg', 'I am flying away', 'Ok', '2015-04-11 22:00:57'),
(3, 3, 4, 'galaxy cluster.jpg', 'Jupiter and saturn.jpg', 'nebula 2006.jpg', 'Nebula rocks', 'Ok', '2015-04-11 22:06:00'),
(4, 4, 5, 'night lights of europe.jpg', 'nova.jpg', 'nsolar electric propulsion for future space expeditions.jpg', 'Super Nova', 'Ok', '2015-04-11 22:06:00'),
(5, 3, 1, 'outer-space_00394571.jpg', 'outer-space_00399584.jpg', 'outer.jpg', 'Outer Space', 'Ok', '2015-04-11 22:08:22'),
(6, 4, 1, 'sea ice off_5 april  2015.jpg', 'soyuz tma16m spacecraft launching march 27 2015.jpeg', 'sun_10 feb 2015.jpg', 'Sea Sea Sea Sea', 'Ok', '2015-04-11 22:08:22');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `UserId` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(50) NOT NULL,
  `Email` text NOT NULL,
  `Password` varchar(20) NOT NULL,
  `FullName` text NOT NULL,
  `ProfilePicPath` varchar(255) NOT NULL DEFAULT 'default.png',
  `Status` varchar(20) NOT NULL DEFAULT 'Ok',
  `DateRegistered` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`UserId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserId`, `Username`, `Email`, `Password`, `FullName`, `ProfilePicPath`, `Status`, `DateRegistered`) VALUES
(1, 'oyekunlei', 'oyekunlei@yahoo.com', '123456789', 'Elizabeth Oyekunle', 'default.png', 'Ok', '2015-04-11 13:58:43'),
(2, ' mariembenoun', 'emymbenoun@yahoo.com', '123456789', 'Marie Mbenoun', 'default.png', 'Ok', '2015-04-11 18:13:31'),
(3, 'diamondobama', 'diamondmubarack@yahoo.com', '123456789', 'Diamond Murack', 'default.png', 'Ok', '2015-04-11 18:13:31'),
(4, 'pertuniamolope', 'pertuniamolope@yahoo.com', '123456789', 'Pertunia Molope', 'default.png', 'Ok', '2015-04-11 18:15:39'),
(5, 'babytshigeng', 'babytshigeng@yahoo.com', '123456789', 'Baby Tshigeng', 'default.png', 'Ok', '2015-04-11 18:15:39'),
(6, 'abiolaadeola', 'abiolaadeola@yahoo.com', '123456789', 'Abiola', 'default.png', 'Ok', '2015-04-11 23:49:55'),
(7, 'tinky', 'twkky@yahoo.com', '123456789', 'Tinky Winky', 'default.png', 'Ok', '2015-04-11 23:57:39');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
