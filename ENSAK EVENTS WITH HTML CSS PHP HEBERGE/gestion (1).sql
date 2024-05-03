-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 13 jan. 2024 à 17:59
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
-- Base de données : `gestion`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `LOGIN` varchar(40) NOT NULL,
  `MDP` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`LOGIN`, `MDP`) VALUES
('Mohamed', '1977');

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `titre` text NOT NULL,
  `type_event` int(11) NOT NULL,
  `description` text NOT NULL,
  `photo` text NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `titre`, `type_event`, `description`, `photo`, `date`) VALUES
(22, 'Afaaq', 1, 'le club Afaaq organise une conférence en invitant Mr Yassine Elomari dans un sujet<br />\r\nqui depend de &quot;dkké&quot;d&quot;éedopo', 'Afaaq.png', '2023-12-11'),
(25, 'Mohamed1', 3, 'zdzefo&quot;&#039;f&#039;&quot;<br />\r\nefpeéeof<br />\r\nzef&quot;efi', 'Mohamed1.png', '2023-12-14'),
(26, 'Mohamed1', 3, 'zdzefo&quot;&#039;f&#039;&quot;<br />\r\nefpeéeof<br />\r\nzef&quot;efi', 'Mohamed1.png', '2023-12-14'),
(27, 'Yassine Zelamat', 3, 'zdé&quot;roé&quot;r&quot;<br />\r\n&quot;r&#039;rl;m&#039;&#039;rfo<br />\r\n&#039;rk&quot;&#039;if', 'inconnu.jpg', '2023-12-11'),
(28, 'Yassine Zelamat', 2, 'E32R23R32R<br />\r\nAAAAAAAAA', 'Yassine Zelamat.png', '2023-12-12'),
(29, 'éé&quot;e', 1, 'mmmmmmmmmmm<br />\r\naaaaaaa', 'éé&quot;e.png', '2023-12-15'),
(30, 'Mohamed1', 3, 'zdzefo&quot;&#039;f&#039;&quot;<br />\r\nefpeéeof<br />\r\nzef&quot;efi', 'Mohamed1.png', '2023-12-14'),
(31, 'Afaaq', 1, 'On veut organiser une conferences avec l&#039;invite Mr Yassine el omari', 'Afaaq.png', '2023-12-17'),
(32, 'zak', 2, 'zak', 'ph1.png', '2023-12-14'),
(34, 'wahib', 1, 'wah', 'ph2.png', '2023-12-27'),
(35, 'hakim', 1, 'hak', 'ph3.png', '2023-12-29'),
(36, 'mohamed', 1, 'moh', 'ph4.png', '2023-12-10');

-- --------------------------------------------------------

--
-- Structure de la table `article_proposé`
--

CREATE TABLE `article_proposé` (
  `id` int(10) NOT NULL,
  `titre` text DEFAULT NULL,
  `type_event` int(10) NOT NULL,
  `description` text DEFAULT NULL,
  `date` date NOT NULL,
  `photo` text NOT NULL,
  `organisateur` varchar(100) NOT NULL,
  `etat` varchar(255) DEFAULT 'en attente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `article_proposé`
--

INSERT INTO `article_proposé` (`id`, `titre`, `type_event`, `description`, `date`, `photo`, `organisateur`, `etat`) VALUES
(29, 'Afaaq', 1, 'On veut organiser une conferences avec l&#039;invite Mr Yassine el omari', '2023-12-17', 'Afaaq.png', 'mohamed.staili@uit.ac.ma', 'accepté'),
(30, 'Afaaq', 1, 'On veut organiser une conferences avec l&#039;invite Mr Yassine el omari', '2023-12-17', 'Afaaq.png', 'mohamed.staili@uit.ac.ma', 'supprime'),
(31, 'il etait une fois', 2, 'un film historique<br />\r\nsur la guerre mondiala', '2023-12-15', 'il etait une fois.png', 'mohamed.staili@uit.ac.ma', 'supprime');

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

CREATE TABLE `commentaire` (
  `LOGIN` varchar(255) DEFAULT NULL,
  `commentaire` varchar(700) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE `etudiant` (
  `num_app` int(10) NOT NULL,
  `nom` varchar(45) DEFAULT NULL,
  `prenom` varchar(45) DEFAULT NULL,
  `photo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `etudiant`
--

INSERT INTO `etudiant` (`num_app`, `nom`, `prenom`, `photo`) VALUES
(1, 'STAILI', 'MOHAMED', '1.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `sous_admin`
--

CREATE TABLE `sous_admin` (
  `LOGIN` varchar(100) NOT NULL,
  `MDP` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `sous_admin`
--

INSERT INTO `sous_admin` (`LOGIN`, `MDP`) VALUES
('mohamed.staili@uit.ac.ma', '1234'),
('mohamedstaili962@gmail.com', '6576f0ecbce68'),
('zakariae.khayi@uit.ac.ma', '65a008625bd28');

-- --------------------------------------------------------

--
-- Structure de la table `type_event`
--

CREATE TABLE `type_event` (
  `id` int(10) NOT NULL,
  `type` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `type_event`
--

INSERT INTO `type_event` (`id`, `type`) VALUES
(1, 'conference'),
(2, 'Soirée'),
(3, 'selection');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `LOGIN` varchar(120) NOT NULL,
  `PASSWORD` varchar(20) DEFAULT NULL,
  `NOM` varchar(40) DEFAULT NULL,
  `PRENOM` varchar(40) DEFAULT NULL,
  `VILLE` int(11) DEFAULT NULL,
  `DATE_NAISSANCE` date DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`LOGIN`, `PASSWORD`, `NOM`, `PRENOM`, `VILLE`, `DATE_NAISSANCE`, `image`) VALUES
('', '', 'v', 'v', 1, '0000-00-00', '0'),
('5254mohamed@gmail.com', '6576009c05149', 'STAILI', 'MOHAMED', 1, '2003-04-21', '0'),
('b@gmail.com', 'b', 'b', 'b', 1, '0000-00-00', 'inconnu.jpg'),
('fdksjk@gmail.com', 'f', 'jkjfd', '', 1, '0000-00-00', 'inconnu.jpg'),
('fdsak@gmail.com', 'fd', 'fjksdjk', '', 1, '0000-00-00', 'inconnu.jpg'),
('hgih@gmail.com', '', '', '', 1, '0000-00-00', 'inconnu.jpg'),
('jsfd@gmail.com', 'j', 'fdjskj', 'fsdj', 1, '0000-00-00', 'inconnu.jpg'),
('mohamed.staili@uit.ac.ma', 'MOHAMED1977', 'STAILI', 'MOHAMED', 3, '0000-00-00', '0'),
('mohamedstaili962@gmail.com', '6574971fc924c', 'STAILI', 'MOHAMED', 2, '2000-06-12', '0'),
('najib@gmail.com', '', '', '', 1, '0000-00-00', 'inconnu.jpg'),
('s@gmail.com', 's', 'chouya', 'sayf', 1, '2024-01-24', 's@gmail.com.png'),
('t@gmail.com', 't', 'zakariaee', 'khayi', 1, '2023-12-01', 't@gmail.com.png'),
('z@gmail.com', 'z', 'zakariae', 'khayi', 1, '2023-12-13', '0'),
('zakariae.khayi@uit.ac.ma', '', 'khayi', 'zakariae', 3, '2003-04-21', '0');

-- --------------------------------------------------------

--
-- Structure de la table `ville`
--

CREATE TABLE `ville` (
  `id_ville` int(11) NOT NULL,
  `lib_ville` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `ville`
--

INSERT INTO `ville` (`id_ville`, `lib_ville`) VALUES
(1, 'Rabat'),
(2, 'Salé'),
(3, 'Marrakech'),
(4, 'Agadir'),
(5, 'Tanger'),
(6, 'Sidi Kacem'),
(7, 'Casablanca');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`LOGIN`);

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_event` (`type_event`);

--
-- Index pour la table `article_proposé`
--
ALTER TABLE `article_proposé`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_event` (`type_event`),
  ADD KEY `fk_article_propose_organisateur` (`organisateur`);

--
-- Index pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`num_app`);

--
-- Index pour la table `sous_admin`
--
ALTER TABLE `sous_admin`
  ADD PRIMARY KEY (`LOGIN`);

--
-- Index pour la table `type_event`
--
ALTER TABLE `type_event`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`LOGIN`),
  ADD KEY `VILLE` (`VILLE`);

--
-- Index pour la table `ville`
--
ALTER TABLE `ville`
  ADD PRIMARY KEY (`id_ville`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT pour la table `article_proposé`
--
ALTER TABLE `article_proposé`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT pour la table `type_event`
--
ALTER TABLE `type_event`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_ibfk_1` FOREIGN KEY (`type_event`) REFERENCES `type_event` (`id`);

--
-- Contraintes pour la table `article_proposé`
--
ALTER TABLE `article_proposé`
  ADD CONSTRAINT `article_proposé_ibfk_1` FOREIGN KEY (`type_event`) REFERENCES `type_event` (`id`),
  ADD CONSTRAINT `article_proposé_ibfk_2` FOREIGN KEY (`organisateur`) REFERENCES `sous_admin` (`LOGIN`),
  ADD CONSTRAINT `fk_article_propose_organisateur` FOREIGN KEY (`organisateur`) REFERENCES `sous_admin` (`LOGIN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`VILLE`) REFERENCES `ville` (`id_ville`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
