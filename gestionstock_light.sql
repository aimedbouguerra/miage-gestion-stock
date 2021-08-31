-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mar 22 Juin 2021 à 11:48
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `gestionstock`
--



--
-- Structure de la table `categorie`
--

CREATE TABLE IF NOT EXISTS `categorie` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `categorie`
--

INSERT INTO `categorie` (`id`, `nom`, `description`) VALUES
(1, 'Viandes - poissons', 'Ce groupe contient : Agneau, Bœuf, Porc, Cheval, Œuf, Oie, Poulet, Dinde, Thon au naturel, Sardine, Saumon, Hareng.'),
(2, 'Produits laitiers', 'Ce groupe contient : Lait entier, Lait écrémé, Lait en poudre écrémé, Lait concentré entier non sucré, Lait concentré sucré, Fromage blanc.'),
(3, 'Matières grasses', 'Ce groupe contient : Beurre, Crème, Saindoux, Véétaline, Margarine tourne-sol, Margarines maïs, Huile.'),
(4, 'Légumes et fruits', 'Ce groupe contient : légumes, fruits, Fruits secs.');



--
-- Structure de la table `produits`
--

CREATE TABLE IF NOT EXISTS `produits` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `id_categorie` int(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `quantite` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=46 ;

--
-- Contenu de la table `produits`
--

INSERT INTO `produits` (`id`, `id_categorie`, `nom`, `quantite`) VALUES
(18, 2, 'Lait concentré sucré', 30),
(19, 2, 'Fromage blanc', 34),
(20, 3, 'Beurre', 12),
(21, 3, 'Crème', 11),
(22, 3, 'Saindoux', 12),
(23, 3, 'Végétaline', 21),
(25, 3, 'Margarines maïs', 22),
(27, 4, 'tomate', 10),
(28, 4, 'chou-fleur', 20),
(29, 4, 'artichaut', 9),
(30, 4, 'brocoli', 18),
(31, 4, 'chou', 5),
(32, 4, 'épinard', 12),
(33, 4, 'salade', 12),
(34, 4, 'endive', 10),
(35, 4, 'concombre', 15),
(36, 4, 'aubergine', 10),
(37, 4, 'courgette', 5),
(38, 4, 'oignon', 11),
(39, 4, 'pomme de terre', 16),
(40, 4, 'pêche', 10),
(41, 4, 'cerise', 5),
(42, 4, 'orange', 22),
(43, 4, 'citron', 15),
(44, 4, 'amande', 3),
(45, 4, 'noisette', 6);


