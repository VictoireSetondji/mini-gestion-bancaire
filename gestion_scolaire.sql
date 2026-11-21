-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 21 nov. 2026 à 23:20
-- Version du serveur : 10.11.16-MariaDB
-- Version de PHP : 8.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gestion_scolaire`
--

-- --------------------------------------------------------

--
-- Structure de la table `cours`
--

CREATE TABLE `cours` (
  `id_cours` int(11) NOT NULL,
  `intitule` varchar(100) NOT NULL,
  `id_enseignant` int(11) DEFAULT NULL,
  `id_filiere` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `cours`
--

INSERT INTO `cours` (`id_cours`, `intitule`, `id_enseignant`, `id_filiere`) VALUES
(1, 'Bases de données', 1, 1),
(2, 'Programmation web', 2, 1),
(3, 'Algorithmique', 1, 1),
(4, 'Réseaux informatiques', 2, 2),
(5, 'Administration système', 4, 2),
(6, 'Comptabilité générale', 3, 3),
(7, 'Comptabilité analytique', 5, 2);

-- --------------------------------------------------------

--
-- Structure de la table `enseignant`
--

CREATE TABLE `enseignant` (
  `id_enseignant` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `enseignant`
--

INSERT INTO `enseignant` (`id_enseignant`, `nom`, `prenom`) VALUES
(1, 'ZOTCHI', 'Giovani'),
(2, 'KPONOU', 'Fortune'),
(3, 'DONOU', 'Rick'),
(4, 'KOUDJEGAN', 'Eugène'),
(5, 'QUENUM', 'Henry');

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE `etudiant` (
  `id_etudiant` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `date_naissance` date DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `id_filiere` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `etudiant`
--

INSERT INTO `etudiant` (`id_etudiant`, `nom`, `prenom`, `date_naissance`, `email`, `id_filiere`) VALUES
(1, 'Adjovi', 'Marie', '2004-03-12', 'marie.adjovi@mail.com', 1),
(2, 'Hounkpatin', 'Luc', '2003-07-25', 'luc.hounkpatin@mail.com', 1),
(3, 'Dossou', 'Grâce', '2004-01-08', 'grace.dossou@mail.com', 1),
(4, 'Kpossou', 'Daniel', '2003-11-30', 'daniel.kpossou@mail.com', 1),
(5, 'Agbo', 'Sarah', '2004-05-17', 'sarah.agbo@mail.com', 1),
(6, 'Tossou', 'Patrick', '2003-09-02', 'patrick.tossou@mail.com', 1),
(7, 'Zinsou', 'Judith', '2004-02-14', 'judith.zinsou@mail.com', 2),
(8, 'Akpo', 'Samuel', '2003-12-21', 'samuel.akpo@mail.com', 2),
(9, 'Houessou', 'Divine', '2004-06-09', 'divine.houessou@mail.com', 2),
(10, 'Gbaguidi', 'Ethan', '2003-08-19', 'ethan.gbaguidi@mail.com', 2),
(11, 'Sossou', 'Lydie', '2004-04-03', 'lydie.sossou@mail.com', 2),
(12, 'Ahouandjinou', 'Prisca', '2004-10-11', 'prisca.ahouandjinou@mail.com', 3),
(13, 'Biaou', 'Kevin', '2003-06-27', 'kevin.biaou@mail.com', 3),
(14, 'Lokonon', 'Estelle', '2004-09-15', 'estelle.lokonon@mail.com', 3),
(15, 'Mensah', 'Yannick', '2003-03-05', 'yannick.mensah@mail.com', 3);

-- --------------------------------------------------------

--
-- Structure de la table `filiere`
--

CREATE TABLE `filiere` (
  `id_filiere` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `filiere`
--

INSERT INTO `filiere` (`id_filiere`, `nom`) VALUES
(1, 'Systemes Informatique et Logiciels'),
(2, 'Banque Finance et Assurance'),
(3, 'Gestion des Entreprises');

-- --------------------------------------------------------

--
-- Structure de la table `inscription`
--

CREATE TABLE `inscription` (
  `id_etudiant` int(11) NOT NULL,
  `id_cours` int(11) NOT NULL,
  `annee_scolaire` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `inscription`
--

INSERT INTO `inscription` (`id_etudiant`, `id_cours`, `annee_scolaire`) VALUES
(1, 1, '2025-2026'),
(1, 2, '2025-2026'),
(1, 3, '2025-2026'),
(2, 1, '2025-2026'),
(2, 2, '2025-2026'),
(2, 3, '2025-2026'),
(3, 1, '2025-2026'),
(3, 2, '2025-2026'),
(3, 3, '2025-2026'),
(4, 1, '2025-2026'),
(4, 2, '2025-2026'),
(4, 3, '2025-2026'),
(5, 1, '2025-2026'),
(5, 2, '2025-2026'),
(5, 3, '2025-2026'),
(6, 1, '2025-2026'),
(6, 2, '2025-2026'),
(6, 3, '2025-2026'),
(7, 4, '2025-2026'),
(7, 5, '2025-2026'),
(7, 7, '2025-2026'),
(8, 4, '2025-2026'),
(8, 5, '2025-2026'),
(8, 7, '2025-2026'),
(9, 4, '2025-2026'),
(9, 5, '2025-2026'),
(9, 7, '2025-2026'),
(10, 4, '2025-2026'),
(10, 5, '2025-2026'),
(10, 7, '2025-2026'),
(11, 4, '2025-2026'),
(11, 5, '2025-2026'),
(11, 7, '2025-2026'),
(12, 6, '2025-2026'),
(13, 6, '2025-2026'),
(14, 6, '2025-2026'),
(15, 6, '2025-2026');

-- --------------------------------------------------------

--
-- Structure de la table `note`
--

CREATE TABLE `note` (
  `id_note` int(11) NOT NULL,
  `id_etudiant` int(11) DEFAULT NULL,
  `id_cours` int(11) DEFAULT NULL,
  `type_evaluation` varchar(30) DEFAULT NULL,
  `valeur` decimal(4,2) DEFAULT NULL CHECK (`valeur` between 0 and 20)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cours`
--
ALTER TABLE `cours`
  ADD PRIMARY KEY (`id_cours`),
  ADD KEY `id_enseignant` (`id_enseignant`),
  ADD KEY `id_filiere` (`id_filiere`);

--
-- Index pour la table `enseignant`
--
ALTER TABLE `enseignant`
  ADD PRIMARY KEY (`id_enseignant`);

--
-- Index pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`id_etudiant`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `id_filiere` (`id_filiere`);

--
-- Index pour la table `filiere`
--
ALTER TABLE `filiere`
  ADD PRIMARY KEY (`id_filiere`);

--
-- Index pour la table `inscription`
--
ALTER TABLE `inscription`
  ADD PRIMARY KEY (`id_etudiant`,`id_cours`,`annee_scolaire`),
  ADD KEY `id_cours` (`id_cours`);

--
-- Index pour la table `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`id_note`),
  ADD KEY `id_etudiant` (`id_etudiant`),
  ADD KEY `id_cours` (`id_cours`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `cours`
--
ALTER TABLE `cours`
  MODIFY `id_cours` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `enseignant`
--
ALTER TABLE `enseignant`
  MODIFY `id_enseignant` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `etudiant`
--
ALTER TABLE `etudiant`
  MODIFY `id_etudiant` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `filiere`
--
ALTER TABLE `filiere`
  MODIFY `id_filiere` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `note`
--
ALTER TABLE `note`
  MODIFY `id_note` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `cours`
--
ALTER TABLE `cours`
  ADD CONSTRAINT `cours_ibfk_1` FOREIGN KEY (`id_enseignant`) REFERENCES `enseignant` (`id_enseignant`),
  ADD CONSTRAINT `cours_ibfk_2` FOREIGN KEY (`id_filiere`) REFERENCES `filiere` (`id_filiere`);

--
-- Contraintes pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD CONSTRAINT `etudiant_ibfk_1` FOREIGN KEY (`id_filiere`) REFERENCES `filiere` (`id_filiere`);

--
-- Contraintes pour la table `inscription`
--
ALTER TABLE `inscription`
  ADD CONSTRAINT `inscription_ibfk_1` FOREIGN KEY (`id_etudiant`) REFERENCES `etudiant` (`id_etudiant`),
  ADD CONSTRAINT `inscription_ibfk_2` FOREIGN KEY (`id_cours`) REFERENCES `cours` (`id_cours`);

--
-- Contraintes pour la table `note`
--
ALTER TABLE `note`
  ADD CONSTRAINT `note_ibfk_1` FOREIGN KEY (`id_etudiant`) REFERENCES `etudiant` (`id_etudiant`),
  ADD CONSTRAINT `note_ibfk_2` FOREIGN KEY (`id_cours`) REFERENCES `cours` (`id_cours`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
