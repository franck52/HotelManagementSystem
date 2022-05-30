-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 18 avr. 2022 à 23:11
-- Version du serveur :  10.4.18-MariaDB
-- Version de PHP : 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `hotel`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `idClient` int(11) NOT NULL,
  `nomClient` varchar(200) DEFAULT NULL,
  `numTel` varchar(20) DEFAULT NULL,
  `nationalite` varchar(200) DEFAULT NULL,
  `genre` varchar(50) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `idPreuve` varchar(200) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `checkIn` varchar(50) DEFAULT NULL,
  `numchambre` varchar(10) DEFAULT NULL,
  `lit` varchar(100) DEFAULT NULL,
  `roomtype` varchar(200) DEFAULT NULL,
  `prixParJour` int(10) DEFAULT NULL,
  `nbrJourPasser` int(200) DEFAULT NULL,
  `totalAmount` varchar(200) DEFAULT NULL,
  `checkOut` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`idClient`, `nomClient`, `numTel`, `nationalite`, `genre`, `email`, `idPreuve`, `address`, `checkIn`, `numchambre`, `lit`, `roomtype`, `prixParJour`, `nbrJourPasser`, `totalAmount`, `checkOut`) VALUES
(1, 'Seldom', '00335867', 'Amerique', 'Homme', 'seldm@gmail.com', 'am10245885', 'Nantes', '2022-04-14', '108', 'Simple', 'AC', 80, 3, '240.0', '2022-04-17'),
(2, 'ANA LAHTER', '5208963', 'CANADA', 'Femme', 'ana@gmail.com', 'CA42356', 'TORUTO', '2022-04-16', '102', 'Simple', 'Non-AC', 250, 1, '250.0', '2022-04-16'),
(3, 'Lou esther', '0285856', 'Cote ivoire', 'Femme', 'louesth@hotmail.fr', 'CI0258639', 'DIVO', '2022-04-16', '104', 'Double', 'AC', 370, 1, '370.0', '2022-04-16'),
(4, 'alice', '45788555', 'canada', 'Femme', 'alice@gmail.com', '45789', 'abidjan', '2022-04-16', '100', 'Simple', 'AC', 200, 1, '200.0', '2022-04-17'),
(5, 'Francis Methery ', '00336789456', 'FRANCE', 'Homme', 'meteyry@gmail.com', 'FR013458', 'LYON', '2022-04-17', '100', 'Simple', 'AC', 200, 1, '200.0', '2022-04-17'),
(6, 'MOA TIA', '42568978', 'SENEGAL', 'Homme', 'moa@gmail.com', 'SE258963', 'ABIDJAN', '2022-04-17', '104', 'Double', 'AC', 370, 1, '370.0', '2022-04-17'),
(7, 'SEKA Serge', '4567894', 'ivoirienne', 'Homme', 'seka@gmail.com', 'CI789456123', 'COCODY', '2022-04-17', '102', 'Simple', 'Non-AC', 250, 1, '250.0', '2022-04-17'),
(8, 'MAHAN DAO', '050463987521', 'IVOIRIENNE', 'Homme', 'dao@gmail.com', 'CI0645312789', 'Palmeraie', '2022-04-17', '100', 'Simple', 'AC', 200, 1, '200.0', '2022-04-17'),
(9, 'BEN BAHI', '06312457965', 'IVOIRIENNE', 'Homme', 'benbahi@gmail.com', 'CI06321456789', 'DIVO', '2022-04-17', '104', 'Double', 'AC', 370, 1, '370.0', '2022-04-17'),
(10, 'Alice KANGA', '0645789645', 'COTE IVOIRE', 'Femme', 'alicek@gmail.com', 'CI0678459632', 'DIVO', '2022-04-17', '100', 'Simple', 'AC', 200, 1, '200.0', '2022-04-17'),
(11, 'Alice ', '12054678', 'ivoirienne', 'Femme', 'alicea@gmail.com', 'u456792', 'france', '2022-04-17', '103', 'Simple', 'AC', 350, 1, '350.0', '2022-04-17'),
(12, 'BAMBA SARAH', '06321456987', 'IVOIRIENNE', 'Femme', 'sarahbamba@gmail.com', 'CI0258963', 'ABOBO', '2022-04-17', '100', 'Simple', 'AC', 200, 1, '200.0', '2022-04-17'),
(13, 'KAKA BAH', '010258963', 'IVOIRIENNE', 'Homme', 'kakabah@gmail.com', 'CI789456123', 'ABIDJAN', '2022-03-17', '103', 'Simple', 'AC', 350, 31, '10850.0', '2022-04-17'),
(14, 'youlbi', '0708096345', 'MALI', 'Homme', 'youlbi@hotmail.fr', 'MA306597845', 'BAMAKO', '2022-04-14', '101', 'Simple', 'Non-AC', 210, 3, '630.0', '2022-04-17'),
(15, 'Carter Mahone', '03369854521', 'CANAD', 'Homme', 'austine@mail.com', 'CA325689', 'RIO', '2021-04-17', '107', 'Double', 'Non-AC', 800, 365, '292000.0', '2022-04-17'),
(16, 'MOUAN LEE', '0036987542', 'COTE IVOIRE', 'Homme', 'moi@gmail.com', 'CI56789456', 'RIO', '2022-04-17', '106', 'Double', 'Non-AC', 480, 1, '480.0', '2022-04-17'),
(17, 'Bernad', '002252457897', 'cote ivire', 'Homme', 'soa@gmail.com', 'AD745289', 'COCODY', '2022-04-18', '100', 'Simple', 'AC', 200, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `room`
--

CREATE TABLE `room` (
  `roomNo` varchar(20) NOT NULL,
  `roomType` varchar(200) DEFAULT NULL,
  `bed` varchar(200) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `room`
--

INSERT INTO `room` (`roomNo`, `roomType`, `bed`, `price`, `status`) VALUES
('100', 'AC', 'Simple', 200, 'Booked'),
('101', 'Non-AC', 'Simple', 210, 'Not Booked'),
('102', 'Non-AC', 'Simple', 250, 'Not Booked'),
('103', 'AC', 'Simple', 350, 'Not Booked'),
('104', 'AC', 'Double', 370, 'Not Booked'),
('105', 'AC', 'Double', 680, 'Booked'),
('106', 'Non-AC', 'Double', 480, 'Not Booked'),
('107', 'Non-AC', 'Double', 800, 'Not Booked'),
('108', 'AC', 'Simple', 80, 'Not Booked');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `nom` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `passeword` varchar(50) DEFAULT NULL,
  `securitequestion` varchar(500) DEFAULT NULL,
  `reponse` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `statut` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`nom`, `email`, `passeword`, `securitequestion`, `reponse`, `address`, `statut`) VALUES
('Meteyry Francis', 'meteyry@gmail.com', '123456', 'What was your first car?', 'audi', 'LYON', 'true');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`idClient`);

--
-- Index pour la table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`roomNo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
