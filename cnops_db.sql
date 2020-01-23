-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  jeu. 23 jan. 2020 à 22:17
-- Version du serveur :  10.1.31-MariaDB
-- Version de PHP :  7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `cnops_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `fos_user`
--

CREATE TABLE `fos_user` (
  `id` int(11) NOT NULL,
  `username` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `nom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prenom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adresse` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `fos_user`
--

INSERT INTO `fos_user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `confirmation_token`, `password_requested_at`, `roles`, `nom`, `prenom`, `adresse`, `phone`, `image`, `role`) VALUES
(1, 'operateur1', 'operateur1', 'operateur1@operateur1.com', 'operateur1@operateur1.com', 1, 'LhfSR39gDQ', '$2y$13$aiKcLe5u87ELkbnqSrYfjOMvZRXeEC3tY8ZtdH2XRII8B83hLI7P.', '2020-01-23 22:13:36', NULL, NULL, 'a:1:{i:0;s:14:\"ROLE_OPERATEUR\";}', 'ARBOUH', 'YOUNESS', '36, rue imam al boukhari maarif', '0696318051', NULL, 3),
(2, 'controleur1', 'controleur1', 'controleur1@controleur1.com', 'controleur1@controleur1.com', 1, 'LhfSR39gDQ', '$2y$13$aiKcLe5u87ELkbnqSrYfjOMvZRXeEC3tY8ZtdH2XRII8B83hLI7P.', '2020-01-23 22:01:11', NULL, NULL, 'a:1:{i:0;s:15:\"ROLE_CONTROLEUR\";}', 'ARBOUH', 'YOUNESS', '36, rue imam al boukhari maarif', '0696318051', NULL, 3),
(3, 'operateur2', 'operateur2', 'operateur2@operateur2.com', 'operateur2@operateur2.com', 1, 'LhfSR39gDQ', '$2y$13$aiKcLe5u87ELkbnqSrYfjOMvZRXeEC3tY8ZtdH2XRII8B83hLI7P.', '2020-01-23 22:13:36', NULL, NULL, 'a:1:{i:0;s:14:\"ROLE_OPERATEUR\";}', 'NOM', 'Prenom', '36, rue imam al boukhari maarif', '0696318051', NULL, 3),
(4, 'controleur2', 'controleur2', 'controleur2@controleur1.com', 'controleur2@controleur1.com', 1, 'LhfSR39gDQ', '$2y$13$aiKcLe5u87ELkbnqSrYfjOMvZRXeEC3tY8ZtdH2XRII8B83hLI7P.', '2020-01-23 22:01:11', NULL, NULL, 'a:1:{i:0;s:15:\"ROLE_CONTROLEUR\";}', 'NOM', 'Prenom', '36, rue imam al boukhari maarif', '0696318051', NULL, 3);

-- --------------------------------------------------------

--
-- Structure de la table `inventaire`
--

CREATE TABLE `inventaire` (
  `id` int(11) NOT NULL,
  `operateur_id` int(11) DEFAULT NULL,
  `numero` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `etat` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `nbr_piece` smallint(6) NOT NULL,
  `nbr_page` smallint(6) NOT NULL,
  `statut` smallint(6) NOT NULL,
  `commetaire` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `inventaire`
--

INSERT INTO `inventaire` (`id`, `operateur_id`, `numero`, `etat`, `nbr_piece`, `nbr_page`, `statut`, `commetaire`, `created`) VALUES
(1, 3, 'num1', 'In l', 0, 0, 0, NULL, '2020-01-22 22:57:12'),
(2, 1, 'num2', 'In l', 5, 4, 1, NULL, '2020-01-22 23:09:22');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `fos_user`
--
ALTER TABLE `fos_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_957A647992FC23A8` (`username_canonical`),
  ADD UNIQUE KEY `UNIQ_957A6479A0D96FBF` (`email_canonical`),
  ADD UNIQUE KEY `UNIQ_957A6479C05FB297` (`confirmation_token`);

--
-- Index pour la table `inventaire`
--
ALTER TABLE `inventaire`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_338920E03F192FC` (`operateur_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `fos_user`
--
ALTER TABLE `fos_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `inventaire`
--
ALTER TABLE `inventaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `inventaire`
--
ALTER TABLE `inventaire`
  ADD CONSTRAINT `FK_338920E03F192FC` FOREIGN KEY (`operateur_id`) REFERENCES `fos_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
