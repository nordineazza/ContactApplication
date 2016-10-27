-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 27 Octobre 2016 à 21:56
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `contact`
--

-- --------------------------------------------------------

--
-- Structure de la table `add`
--

CREATE TABLE IF NOT EXISTS `add` (
  `idAddress` int(32) NOT NULL,
  `idContact` int(32) NOT NULL,
  KEY `idAddress` (`idAddress`),
  KEY `idContact` (`idContact`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `address`
--

CREATE TABLE IF NOT EXISTS `address` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `street` varchar(32) NOT NULL,
  `city` varchar(32) NOT NULL,
  `zip` varchar(32) NOT NULL,
  `country` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `books`
--

CREATE TABLE IF NOT EXISTS `books` (
  `idGroup` int(32) NOT NULL,
  `idContact` int(32) NOT NULL,
  KEY `idGroup` (`idGroup`),
  KEY `idContact` (`idContact`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `firstName` varchar(32) NOT NULL,
  `lastName` varchar(32) NOT NULL,
  `email` varchar(32) NOT NULL,
  `id` int(32) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `contactgroup`
--

CREATE TABLE IF NOT EXISTS `contactgroup` (
  `groupId` int(32) NOT NULL,
  `groupName` varchar(32) NOT NULL,
  PRIMARY KEY (`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `entreprise`
--

CREATE TABLE IF NOT EXISTS `entreprise` (
  `NumSiret` int(32) NOT NULL,
  PRIMARY KEY (`NumSiret`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `phonenumber`
--

CREATE TABLE IF NOT EXISTS `phonenumber` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `phoneKind` varchar(32) NOT NULL,
  `phoneNumber` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `phones`
--

CREATE TABLE IF NOT EXISTS `phones` (
  `idContact` int(32) NOT NULL,
  `idPhoneNumber` int(32) NOT NULL,
  KEY `id` (`idContact`),
  KEY `id_2` (`idContact`),
  KEY `idContact` (`idContact`),
  KEY `idPhoneNumber` (`idPhoneNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `add`
--
ALTER TABLE `add`
  ADD CONSTRAINT `add_ibfk_2` FOREIGN KEY (`idContact`) REFERENCES `contact` (`id`),
  ADD CONSTRAINT `add_ibfk_1` FOREIGN KEY (`idAddress`) REFERENCES `address` (`id`);

--
-- Contraintes pour la table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_2` FOREIGN KEY (`idContact`) REFERENCES `contact` (`id`),
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`idGroup`) REFERENCES `contactgroup` (`groupId`);

--
-- Contraintes pour la table `phones`
--
ALTER TABLE `phones`
  ADD CONSTRAINT `phones_ibfk_2` FOREIGN KEY (`idPhoneNumber`) REFERENCES `phonenumber` (`id`),
  ADD CONSTRAINT `phones_ibfk_1` FOREIGN KEY (`idContact`) REFERENCES `contact` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
