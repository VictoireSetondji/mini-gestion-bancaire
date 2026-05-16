-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 03 mai 2026 à 02:18
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mini_banque`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id_client` int(11) NOT NULL,
  `nom` varchar(200) NOT NULL,
  `prenom` varchar(200) NOT NULL,
  `ville` varchar(100) DEFAULT NULL,
  `telephone` int(11) DEFAULT NULL,
  `date_naissance` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id_client`, `nom`, `prenom`, `ville`, `telephone`, `date_naissance`) VALUES
(1, 'KPADOE', 'Odilon', 'PORTO-NOVO', 62241997, '2005-01-04'),
(2, 'AKOSSOU', 'Bernardine', 'COTONOU', 41443331, '2005-05-20'),
(3, 'TCHEKLI', 'Hormine', 'CALAVI', 67797944, '2004-09-27'),
(4, 'HOUNGA', 'Ruth', 'LOBOGO', 97010101, '2001-08-10'),
(5, 'SOSSOU', 'Pierre', 'PORTO-NOVO', 97010000, '2004-12-24'),
(6, 'ALLAPINI', 'Imelda', 'COTONOU', 57070699, '2007-04-06'),
(7, 'AKOSSOU', 'Divine', 'LOKOSSA', 41010131, '2005-04-18'),
(8, 'DAGBA', 'Belvine', 'LOKOSSA', 41010100, '2005-05-20');

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

CREATE TABLE `compte` (
  `id_compte` int(11) NOT NULL,
  `type_compte` varchar(50) NOT NULL,
  `statut` varchar(50) DEFAULT NULL,
  `date_ouverture` date DEFAULT NULL,
  `id_client` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `compte`
--

INSERT INTO `compte` (`id_compte`, `type_compte`, `statut`, `date_ouverture`, `id_client`) VALUES
(1, 'Epargne', 'Actif', '2024-12-10', 1),
(2, 'Epargne', 'Actif', '2024-10-10', 2),
(3, 'Courant', 'Ferme', '2020-02-10', 5),
(4, 'Epargne', 'Actif', '2018-02-10', 7),
(5, 'Epagne', 'Actif', '2021-05-10', 3),
(6, 'Courant', 'Actif', '2025-01-05', 6),
(7, 'Epargne', 'ferme', '2022-11-05', 4),
(8, 'Courant', 'Actif', '2026-03-05', 8),
(9, 'Courant', 'Actif', '2026-01-15', 2);

-- --------------------------------------------------------

--
-- Structure de la table `transaction`
--

CREATE TABLE `transaction` (
  `id_transact` int(11) NOT NULL,
  `date_transaction` date DEFAULT NULL,
  `montant` varchar(100) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `libelle` varchar(200) DEFAULT NULL,
  `id_compte` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `transaction`
--

INSERT INTO `transaction` (`id_transact`, `date_transaction`, `montant`, `type`, `libelle`, `id_compte`) VALUES
(1, '2025-12-20', '100000', 'Retrait', 'fete', 1),
(2, '2026-01-20', '80000', 'Depot', 'epagne pour projet', 2),
(3, '2021-01-20', '200000', 'Depot', '', 3),
(4, '2021-06-20', '50000', 'Depot', '', 3),
(5, '2021-08-20', '150000', 'Depot', '', 3),
(6, '2021-12-20', '100000', 'Retrait', 'fete', 3),
(7, '2022-08-20', '100000', 'Depot', '', 3),
(8, '2023-08-20', '200000', 'Depot', '', 3),
(9, '2019-06-15', '50000', 'Depot', '', 4),
(10, '2020-06-15', '100000', 'Depot', '', 4),
(11, '2022-06-15', '300000', 'Depot', '', 4),
(12, '2024-06-15', '300000', 'Depot', '', 4),
(13, '2025-06-15', '400000', 'Depot', '', 4),
(14, '2022-01-25', '400000', 'Depot', '', 5),
(15, '2022-12-25', '150000', 'Retrait', '', 5),
(16, '2023-03-25', '300000', 'Depot', '', 5),
(17, '2024-03-25', '300000', 'Depot', '', 5),
(18, '2024-10-25', '200000', 'Retrait', '', 5),
(19, '2025-03-25', '350000', 'Depot', '', 5),
(20, '2025-01-05', '100000', 'Depot', '', 6),
(21, '2025-06-05', '100000', 'Depot', '', 6),
(22, '2025-12-05', '150000', 'Retrait', '', 6),
(23, '2026-02-05', '300000', 'Depot', '', 6),
(24, '2026-03-05', '900000', 'Depot', '', 8);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `vue_solde_client`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `vue_solde_client` (
`id_client` int(11)
,`nom` varchar(200)
,`prenom` varchar(200)
,`solde_total` double
);

-- --------------------------------------------------------

--
-- Structure de la vue `vue_solde_client`
--
DROP TABLE IF EXISTS `vue_solde_client`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vue_solde_client`  AS SELECT `client`.`id_client` AS `id_client`, `client`.`nom` AS `nom`, `client`.`prenom` AS `prenom`, sum(`transaction`.`montant`) AS `solde_total` FROM (`client` join `transaction` on(`client`.`id_client` = `transaction`.`id_compte`)) GROUP BY `client`.`id_client` ;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`);

--
-- Index pour la table `compte`
--
ALTER TABLE `compte`
  ADD PRIMARY KEY (`id_compte`),
  ADD KEY `id_client` (`id_client`);

--
-- Index pour la table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id_transact`),
  ADD KEY `id_compte` (`id_compte`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `compte`
--
ALTER TABLE `compte`
  MODIFY `id_compte` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id_transact` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `compte`
--
ALTER TABLE `compte`
  ADD CONSTRAINT `compte_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`);

--
-- Contraintes pour la table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`id_compte`) REFERENCES `compte` (`id_compte`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
