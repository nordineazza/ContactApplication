-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Ven 09 Décembre 2016 à 14:03
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `jee`
--

-- --------------------------------------------------------

--
-- Structure de la table `address`
--

CREATE TABLE IF NOT EXISTS `address` (
  `id` int(32) NOT NULL,
  `idContact` int(32) NOT NULL,
  `street` varchar(32) NOT NULL,
  `city` varchar(32) NOT NULL,
  `zip` varchar(32) NOT NULL,
  `country` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idContact` (`idContact`),
  KEY `id` (`id`),
  KEY `id_2` (`id`),
  KEY `id_3` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `address`
--

INSERT INTO `address` (`id`, `idContact`, `street`, `city`, `zip`, `country`) VALUES
(23, 23, '35 rue de la republique', 'liege', '75016', 'Belgique');

-- --------------------------------------------------------

--
-- Structure de la table `books`
--

CREATE TABLE IF NOT EXISTS `books` (
  `idGroup` int(32) NOT NULL,
  `idContact` int(32) NOT NULL,
  KEY `idGroup` (`idGroup`),
  KEY `idContact` (`idContact`),
  KEY `idGroup_2` (`idGroup`),
  KEY `idContact_2` (`idContact`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `books`
--

INSERT INTO `books` (`idGroup`, `idContact`) VALUES
(23, 23);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Contenu de la table `contact`
--

INSERT INTO `contact` (`firstName`, `lastName`, `email`, `id`) VALUES
('foule', 'doucoure', 'doucoure-f@hotmail.fr', 22),
('muhammad', 'ali', 'ali.muhammad@hotmail.fr', 23);

-- --------------------------------------------------------

--
-- Structure de la table `contactgroup`
--

CREATE TABLE IF NOT EXISTS `contactgroup` (
  `groupId` int(32) NOT NULL,
  `groupName` varchar(32) NOT NULL,
  PRIMARY KEY (`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `contactgroup`
--

INSERT INTO `contactgroup` (`groupId`, `groupName`) VALUES
(23, 'aucun');

-- --------------------------------------------------------

--
-- Structure de la table `phonenumber`
--

CREATE TABLE IF NOT EXISTS `phonenumber` (
  `id` int(32) NOT NULL,
  `phoneKind` varchar(32) NOT NULL,
  `phoneNumber` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `phonenumber`
--

INSERT INTO `phonenumber` (`id`, `phoneKind`, `phoneNumber`) VALUES
(23, 'fixe', '0143793762');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_ibfk_1` FOREIGN KEY (`idContact`) REFERENCES `contact` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `address_ibfk_2` FOREIGN KEY (`id`) REFERENCES `contact` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`idGroup`) REFERENCES `contactgroup` (`groupId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `books_ibfk_2` FOREIGN KEY (`idContact`) REFERENCES `contact` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `contactgroup`
--
ALTER TABLE `contactgroup`
  ADD CONSTRAINT `contactgroup_ibfk_1` FOREIGN KEY (`groupId`) REFERENCES `contact` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `phonenumber`
--
ALTER TABLE `phonenumber`
  ADD CONSTRAINT `phonenumber_ibfk_1` FOREIGN KEY (`id`) REFERENCES `contact` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
