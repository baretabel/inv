-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Jeu 18 Juillet 2019 à 16:40
-- Version du serveur :  5.7.26-0ubuntu0.18.04.1
-- Version de PHP :  7.2.19-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `rsmar`
--

-- --------------------------------------------------------

--
-- Structure de la table `membres`
--

CREATE TABLE `membres` (
  `ID` int(11) NOT NULL,
  `Nom` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `Marsouin` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `Section` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `Password` blob NOT NULL,
  `Grade` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Marsouin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `membres`
--

INSERT INTO `membres` (`ID`, `Nom`, `Marsouin`, `Section`, `Password`, `Grade`) VALUES
(1, 'Gagal', 'BARET', 'Panthère 2', 0x6a61636b486f72726f7231, 'non'),
(2, 'JenNis', 'ABDOU', 'Panthère 2', 0x617a65727479, 'non');

-- --------------------------------------------------------

--
-- Structure de la table `vetement`
--

CREATE TABLE `vetement` (
  `ID` int(11) NOT NULL,
  `Marsouin` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `Section` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `Vetement` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `Taille` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `Commentaire` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `vetement`
--

INSERT INTO `vetement` (`ID`, `Marsouin`, `Section`, `Vetement`, `Taille`, `Commentaire`) VALUES
(6, 'ABDOU', 'Panthère 1', 'Chemise', '42A', ''),
(7, 'ABDOU', 'Panthère 1', 'Pantalon', 'xl', 'trop petit'),
(8, 'ABDOU', 'Panthère 2', 'Débardeur', 'M', 'Sérré'),
(9, 'ABDOU', 'Panthère 2', 'Rangers', '45', 'Trou'),
(10, 'ABDOU', 'Panthère 2', 'Rangers', '45', 'uhj');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `membres`
--
ALTER TABLE `membres`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Marsouin` (`Marsouin`);

--
-- Index pour la table `vetement`
--
ALTER TABLE `vetement`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Marsouin` (`Marsouin`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `membres`
--
ALTER TABLE `membres`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `vetement`
--
ALTER TABLE `vetement`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `vetement`
--
ALTER TABLE `vetement`
  ADD CONSTRAINT `vetement_ibfk_1` FOREIGN KEY (`Marsouin`) REFERENCES `membres` (`Marsouin`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
