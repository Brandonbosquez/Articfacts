-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.9.2-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para articfacts
CREATE DATABASE IF NOT EXISTS `articfacts` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `articfacts`;

-- Volcando estructura para tabla articfacts.airports
CREATE TABLE IF NOT EXISTS `airports` (
  `id` int(20) NOT NULL,
  `town` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `artifact` int(11) DEFAULT NULL,
  `latitude_deg` double DEFAULT NULL,
  `longitude_deg` double DEFAULT NULL,
  `iso_country` varchar(10) DEFAULT NULL,
  `municipality` varchar(40) DEFAULT NULL,
  `type` varchar(40) DEFAULT NULL,
  `ident` varchar(40) NOT NULL,
  `gps_code` varchar(40) DEFAULT NULL,
  `iata_code` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ident`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla articfacts.airports: ~31 rows (aproximadamente)
/*!40000 ALTER TABLE `airports` DISABLE KEYS */;
INSERT INTO `airports` (`id`, `town`, `name`, `artifact`, `latitude_deg`, `longitude_deg`, `iso_country`, `municipality`, `type`, `ident`, `gps_code`, `iata_code`) VALUES
	(2303, 'Enontekiö', 'Enontekio Airport', 303, 68.362602233887, 23.424299240112, 'FI', 'Enontekio', 'medium_airport', 'EFET', 'EFET', 'ENF');
INSERT INTO `airports` (`id`, `town`, `name`, `artifact`, `latitude_deg`, `longitude_deg`, `iso_country`, `municipality`, `type`, `ident`, `gps_code`, `iata_code`) VALUES
	(2305, 'Halli', 'Halli Airport', 202, 61.856039, 24.786686, 'FI', 'JÃ¤msÃ¤', 'medium_airport', 'EFHA', 'EFHA', 'KEV');
INSERT INTO `airports` (`id`, `town`, `name`, `artifact`, `latitude_deg`, `longitude_deg`, `iso_country`, `municipality`, `type`, `ident`, `gps_code`, `iata_code`) VALUES
	(2307, 'Helsinki', 'Helsinki Vantaa Airport', 107, 60.3172, 24.963301, 'FI', 'Helsinki', 'large_airport', 'EFHK', 'EFHK', 'HEL');
INSERT INTO `airports` (`id`, `town`, `name`, `artifact`, `latitude_deg`, `longitude_deg`, `iso_country`, `municipality`, `type`, `ident`, `gps_code`, `iata_code`) VALUES
	(2313, 'Kitee', 'Kitee Airport', 106, 62.1661, 30.073601, 'FI', 'Kitee', 'medium_airport', 'EFIT', 'EFIT', 'KTQ');
INSERT INTO `airports` (`id`, `town`, `name`, `artifact`, `latitude_deg`, `longitude_deg`, `iso_country`, `municipality`, `type`, `ident`, `gps_code`, `iata_code`) VALUES
	(2314, 'Ivalo', 'Ivalo Airport', 111, 68.607299804688, 27.405300140381, 'FI', 'Ivalo', 'medium_airport', 'EFIV', 'EFIV', 'IVL');
INSERT INTO `airports` (`id`, `town`, `name`, `artifact`, `latitude_deg`, `longitude_deg`, `iso_country`, `municipality`, `type`, `ident`, `gps_code`, `iata_code`) VALUES
	(2315, 'Joensuu', 'Joensuu Airport', 102, 62.662899, 29.6075, 'FI', 'Joensuu / Liperi', 'medium_airport', 'EFJO', 'EFJO', 'JOE');
INSERT INTO `airports` (`id`, `town`, `name`, `artifact`, `latitude_deg`, `longitude_deg`, `iso_country`, `municipality`, `type`, `ident`, `gps_code`, `iata_code`) VALUES
	(2316, 'Jyväskylä', 'JyvÃ¤skylÃ¤ Airport', 308, 62.399502, 25.678301, 'FI', 'JyvÃ¤skylÃ¤n Maalaiskunta', 'medium_airport', 'EFJY', 'EFJY', 'JYV');
INSERT INTO `airports` (`id`, `town`, `name`, `artifact`, `latitude_deg`, `longitude_deg`, `iso_country`, `municipality`, `type`, `ident`, `gps_code`, `iata_code`) VALUES
	(2317, 'Kauhava', 'Kauhava Airfield', 305, 63.127102, 23.051399, 'FI', 'Kauhava', 'medium_airport', 'EFKA', 'EFKA', 'KAU');
INSERT INTO `airports` (`id`, `town`, `name`, `artifact`, `latitude_deg`, `longitude_deg`, `iso_country`, `municipality`, `type`, `ident`, `gps_code`, `iata_code`) VALUES
	(2318, 'Kemi', 'Kemi-Tornio Airport', 113, 65.778701782227, 24.582099914551, 'FI', 'Kemi / Tornio', 'medium_airport', 'EFKE', 'EFKE', 'KEM');
INSERT INTO `airports` (`id`, `town`, `name`, `artifact`, `latitude_deg`, `longitude_deg`, `iso_country`, `municipality`, `type`, `ident`, `gps_code`, `iata_code`) VALUES
	(2319, 'Kajaani', 'Kajaani Airport', 101, 64.2855, 27.6924, 'FI', 'Kajaani', 'medium_airport', 'EFKI', 'EFKI', 'KAJ');
INSERT INTO `airports` (`id`, `town`, `name`, `artifact`, `latitude_deg`, `longitude_deg`, `iso_country`, `municipality`, `type`, `ident`, `gps_code`, `iata_code`) VALUES
	(2320, 'Kauhajoki', 'Kauhajoki Airfield', 306, 62.462502, 22.393101, 'FI', '', 'medium_airport', 'EFKJ', 'EFKJ', 'KHJ');
INSERT INTO `airports` (`id`, `town`, `name`, `artifact`, `latitude_deg`, `longitude_deg`, `iso_country`, `municipality`, `type`, `ident`, `gps_code`, `iata_code`) VALUES
	(2321, 'Kokkola', 'Kokkola-Pietarsaari Airport', 108, 63.721199, 23.143101, 'FI', 'Kokkola / Kruunupyy', 'medium_airport', 'EFKK', 'EFKK', 'KOK');
INSERT INTO `airports` (`id`, `town`, `name`, `artifact`, `latitude_deg`, `longitude_deg`, `iso_country`, `municipality`, `type`, `ident`, `gps_code`, `iata_code`) VALUES
	(2324, 'Kuusamo', 'Kuusamo Airport', 104, 65.987602, 29.239401, 'FI', 'Kuusamo', 'medium_airport', 'EFKS', 'EFKS', 'KAO');
INSERT INTO `airports` (`id`, `town`, `name`, `artifact`, `latitude_deg`, `longitude_deg`, `iso_country`, `municipality`, `type`, `ident`, `gps_code`, `iata_code`) VALUES
	(2325, 'Kittilä', 'KittilÃ¤ Airport', 203, 67.700996398926, 24.846799850464, 'FI', 'KittilÃ¤', 'medium_airport', 'EFKT', 'EFKT', 'KTT');
INSERT INTO `airports` (`id`, `town`, `name`, `artifact`, `latitude_deg`, `longitude_deg`, `iso_country`, `municipality`, `type`, `ident`, `gps_code`, `iata_code`) VALUES
	(2326, 'Kuopio', 'Kuopio Airport', 110, 63.007099, 27.7978, 'FI', 'Kuopio / SiilinjÃ¤rvi', 'medium_airport', 'EFKU', 'EFKU', 'KUO');
INSERT INTO `airports` (`id`, `town`, `name`, `artifact`, `latitude_deg`, `longitude_deg`, `iso_country`, `municipality`, `type`, `ident`, `gps_code`, `iata_code`) VALUES
	(2329, 'Lappeenranta', 'Lappeenranta Airport', 210, 61.044601, 28.144743, 'FI', 'Lappeenranta', 'medium_airport', 'EFLP', 'EFLP', 'LPP');
INSERT INTO `airports` (`id`, `town`, `name`, `artifact`, `latitude_deg`, `longitude_deg`, `iso_country`, `municipality`, `type`, `ident`, `gps_code`, `iata_code`) VALUES
	(2330, 'Mariehamn', 'Mariehamn Airport', 302, 60.1222, 19.898199, 'FI', 'Mariehamn', 'medium_airport', 'EFMA', 'EFMA', 'MHQ');
INSERT INTO `airports` (`id`, `town`, `name`, `artifact`, `latitude_deg`, `longitude_deg`, `iso_country`, `municipality`, `type`, `ident`, `gps_code`, `iata_code`) VALUES
	(2332, 'Mikkeli', 'Mikkeli Airport', 205, 61.6866, 27.201799, 'FI', 'Mikkeli', 'medium_airport', 'EFMI', 'EFMI', 'MIK');
INSERT INTO `airports` (`id`, `town`, `name`, `artifact`, `latitude_deg`, `longitude_deg`, `iso_country`, `municipality`, `type`, `ident`, `gps_code`, `iata_code`) VALUES
	(2334, 'Oulu', 'Oulu Airport', 301, 64.930099, 25.354601, 'FI', 'Oulu / Oulunsalo', 'medium_airport', 'EFOU', 'EFOU', 'OUL');
INSERT INTO `airports` (`id`, `town`, `name`, `artifact`, `latitude_deg`, `longitude_deg`, `iso_country`, `municipality`, `type`, `ident`, `gps_code`, `iata_code`) VALUES
	(2336, 'Pori', 'Pori Airport', 209, 61.4617, 21.799999, 'FI', 'Pori', 'medium_airport', 'EFPO', 'EFPO', 'POR');
INSERT INTO `airports` (`id`, `town`, `name`, `artifact`, `latitude_deg`, `longitude_deg`, `iso_country`, `municipality`, `type`, `ident`, `gps_code`, `iata_code`) VALUES
	(334942, 'Kotka', 'Helsinki East-Redstone Airport', 112, 60.479167, 26.593889, 'FI', 'Helsinki (PyhtÃ¤Ã¤)', 'medium_airport', 'EFPR', 'EFPR', '');
INSERT INTO `airports` (`id`, `town`, `name`, `artifact`, `latitude_deg`, `longitude_deg`, `iso_country`, `municipality`, `type`, `ident`, `gps_code`, `iata_code`) VALUES
	(2341, 'Rovaniemi', 'Rovaniemi Airport', 105, 66.564796447754, 25.830400466919, 'FI', 'Rovaniemi', 'medium_airport', 'EFRO', 'EFRO', 'RVN');
INSERT INTO `airports` (`id`, `town`, `name`, `artifact`, `latitude_deg`, `longitude_deg`, `iso_country`, `municipality`, `type`, `ident`, `gps_code`, `iata_code`) VALUES
	(2343, 'Savonlinna', 'Savonlinna Airport', 201, 61.9431, 28.945101, 'FI', 'Savonlinna', 'medium_airport', 'EFSA', 'EFSA', 'SVL');
INSERT INTO `airports` (`id`, `town`, `name`, `artifact`, `latitude_deg`, `longitude_deg`, `iso_country`, `municipality`, `type`, `ident`, `gps_code`, `iata_code`) VALUES
	(2345, 'Seinäjoki', 'SeinÃ¤joki Airport', 204, 62.692101, 22.8323, 'FI', 'SeinÃ¤joki / Ilmajoki', 'medium_airport', 'EFSI', 'EFSI', 'SJY');
INSERT INTO `airports` (`id`, `town`, `name`, `artifact`, `latitude_deg`, `longitude_deg`, `iso_country`, `municipality`, `type`, `ident`, `gps_code`, `iata_code`) VALUES
	(2346, 'Sodankylä', 'Sodankyla Airport', 206, 67.3949966431, 26.6191005707, 'FI', 'Sodankyla', 'medium_airport', 'EFSO', 'EFSO', 'SOT');
INSERT INTO `airports` (`id`, `town`, `name`, `artifact`, `latitude_deg`, `longitude_deg`, `iso_country`, `municipality`, `type`, `ident`, `gps_code`, `iata_code`) VALUES
	(2347, 'Tampere', 'Tampere-Pirkkala Airport', 307, 61.414101, 23.604401, 'FI', 'Tampere / Pirkkala', 'medium_airport', 'EFTP', 'EFTP', 'TMP');
INSERT INTO `airports` (`id`, `town`, `name`, `artifact`, `latitude_deg`, `longitude_deg`, `iso_country`, `municipality`, `type`, `ident`, `gps_code`, `iata_code`) VALUES
	(2349, 'Turku', 'Turku Airport', 109, 60.514099, 22.2628, 'FI', 'Turku', 'medium_airport', 'EFTU', 'EFTU', 'TKU');
INSERT INTO `airports` (`id`, `town`, `name`, `artifact`, `latitude_deg`, `longitude_deg`, `iso_country`, `municipality`, `type`, `ident`, `gps_code`, `iata_code`) VALUES
	(2350, 'Kouvola', 'Utti Air Base', 208, 60.8964, 26.9384, 'FI', 'Utti / Valkeala', 'medium_airport', 'EFUT', 'EFUT', 'UTI');
INSERT INTO `airports` (`id`, `town`, `name`, `artifact`, `latitude_deg`, `longitude_deg`, `iso_country`, `municipality`, `type`, `ident`, `gps_code`, `iata_code`) VALUES
	(2351, 'Vaasa', 'Vaasa Airport', 304, 63.050701, 21.762199, 'FI', 'Vaasa', 'medium_airport', 'EFVA', 'EFVA', 'VAA');
INSERT INTO `airports` (`id`, `town`, `name`, `artifact`, `latitude_deg`, `longitude_deg`, `iso_country`, `municipality`, `type`, `ident`, `gps_code`, `iata_code`) VALUES
	(2352, 'Varkaus', 'Varkaus Airport', 207, 62.171101, 27.868601, 'FI', 'Varkaus / Joroinen', 'medium_airport', 'EFVR', 'EFVR', 'VRK');
INSERT INTO `airports` (`id`, `town`, `name`, `artifact`, `latitude_deg`, `longitude_deg`, `iso_country`, `municipality`, `type`, `ident`, `gps_code`, `iata_code`) VALUES
	(2353, 'Ylivieska', 'Ylivieska Airfield', 103, 64.054722, 24.725278, 'FI', '', 'medium_airport', 'EFYL', 'EFYL', 'YLI');
/*!40000 ALTER TABLE `airports` ENABLE KEYS */;

-- Volcando estructura para tabla articfacts.artifacts
CREATE TABLE IF NOT EXISTS `artifacts` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT 'algún nombre',
  `rarity` varchar(50) DEFAULT 'Common',
  `description` varchar(50) DEFAULT 'descripción de prueba'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla articfacts.artifacts: ~31 rows (aproximadamente)
/*!40000 ALTER TABLE `artifacts` DISABLE KEYS */;
INSERT INTO `artifacts` (`id`, `name`, `rarity`, `description`) VALUES
	(101, 'Fish Bones', 'Common', 'A lil fishy that got fossilized :(');
INSERT INTO `artifacts` (`id`, `name`, `rarity`, `description`) VALUES
	(102, 'Fazer Blue', 'Common', 'Famous candy manufacturer product');
INSERT INTO `artifacts` (`id`, `name`, `rarity`, `description`) VALUES
	(103, 'Reindeer Antlers', 'Common', 'Reindeers shed their antlers every year');
INSERT INTO `artifacts` (`id`, `name`, `rarity`, `description`) VALUES
	(104, 'Santa Hat', 'Common', 'Instead of Korvatunturi it says... made in China?!');
INSERT INTO `artifacts` (`id`, `name`, `rarity`, `description`) VALUES
	(105, 'Muummi Mug', 'Common', 'Collectable Muummit coffee mug');
INSERT INTO `artifacts` (`id`, `name`, `rarity`, `description`) VALUES
	(106, 'Tote Bag', 'Common', 'Finnish design fabric tote bag');
INSERT INTO `artifacts` (`id`, `name`, `rarity`, `description`) VALUES
	(107, 'Safety Reflector', 'Common', 'Keeps you safe and visible in the dark');
INSERT INTO `artifacts` (`id`, `name`, `rarity`, `description`) VALUES
	(108, 'Seal Plushy', 'Common', 'Ringed Saimaa seal stuffed animal');
INSERT INTO `artifacts` (`id`, `name`, `rarity`, `description`) VALUES
	(109, 'Sauna Bucket', 'Common', 'Wooden bucket used when going to the sauna');
INSERT INTO `artifacts` (`id`, `name`, `rarity`, `description`) VALUES
	(110, 'Berry Picker', 'Common', 'Handy tool to forage fresh berries');
INSERT INTO `artifacts` (`id`, `name`, `rarity`, `description`) VALUES
	(111, 'Glöggi bottle', 'Common', 'Spiced wine, traditional during winter');
INSERT INTO `artifacts` (`id`, `name`, `rarity`, `description`) VALUES
	(112, 'Hockey stick', 'Common', 'Used to play the most popular sport in Finland');
INSERT INTO `artifacts` (`id`, `name`, `rarity`, `description`) VALUES
	(113, 'Salmiakki', 'Common', 'Salty liquorice');
INSERT INTO `artifacts` (`id`, `name`, `rarity`, `description`) VALUES
	(201, 'Kantele', 'Rare', 'Traditional Finnish string musical instrument');
INSERT INTO `artifacts` (`id`, `name`, `rarity`, `description`) VALUES
	(202, 'Nurmi\'s Medal', 'Rare', 'Olympic gold medal won by Paavo Nurmi');
INSERT INTO `artifacts` (`id`, `name`, `rarity`, `description`) VALUES
	(203, 'Viking Runes', 'Rare', 'Encryptions left by Swedish vikings');
INSERT INTO `artifacts` (`id`, `name`, `rarity`, `description`) VALUES
	(204, 'Nokia 3310', 'Rare', 'Mobile phone from 2000\'s by Finnish manufacturer');
INSERT INTO `artifacts` (`id`, `name`, `rarity`, `description`) VALUES
	(205, 'Eppu Normaali CD', 'Rare', 'CD from the best selling band in Finland');
INSERT INTO `artifacts` (`id`, `name`, `rarity`, `description`) VALUES
	(206, 'Green Book', 'Rare', 'Some book that is green');
INSERT INTO `artifacts` (`id`, `name`, `rarity`, `description`) VALUES
	(207, 'Suomenlinna Cannon', 'Rare', 'Cannon from sea fortress off Helsinki\'s coast');
INSERT INTO `artifacts` (`id`, `name`, `rarity`, `description`) VALUES
	(208, 'Student Cap', 'Rare', 'Cap granted to student once they finish higschool');
INSERT INTO `artifacts` (`id`, `name`, `rarity`, `description`) VALUES
	(209, 'Elf statue', 'Rare', 'Tonttu, Finnish folk creature figurine');
INSERT INTO `artifacts` (`id`, `name`, `rarity`, `description`) VALUES
	(210, 'Paulig Coffee', 'Rare', 'Bag of one of the most popular coffee brands');
INSERT INTO `artifacts` (`id`, `name`, `rarity`, `description`) VALUES
	(301, 'Haavoittunut enkeli', 'Special', 'The Wounded Angel, 1903,  painting by Hugo Simberg');
INSERT INTO `artifacts` (`id`, `name`, `rarity`, `description`) VALUES
	(302, 'Sibelius\' Violin', 'Special', 'Owned by Finnish composer Jean Sibelius in 1881');
INSERT INTO `artifacts` (`id`, `name`, `rarity`, `description`) VALUES
	(303, 'First Edition Kalevala', 'Special', ' Work of epic poetry compiled by Elias Lönnrot');
INSERT INTO `artifacts` (`id`, `name`, `rarity`, `description`) VALUES
	(304, 'Muummi Sketch', 'Special', 'Original sketch by Tove Jansson of famous cartoon');
INSERT INTO `artifacts` (`id`, `name`, `rarity`, `description`) VALUES
	(305, 'Työmiehen vaimo', 'Special', 'Working Man\'s Wife 1885 book by Minna Canth');
INSERT INTO `artifacts` (`id`, `name`, `rarity`, `description`) VALUES
	(306, 'ABC-kirja', 'Special', 'First standard Finnish book Mikael Agricola');
INSERT INTO `artifacts` (`id`, `name`, `rarity`, `description`) VALUES
	(307, 'Aalto\'s blueprint', 'Special', 'Architectural blueprints by Alvar Aalto');
INSERT INTO `artifacts` (`id`, `name`, `rarity`, `description`) VALUES
	(308, 'Mannerheim\'s hat', 'Special', 'Hat worn by military leader Carl Mannerheim, 1918');
/*!40000 ALTER TABLE `artifacts` ENABLE KEYS */;

-- Volcando estructura para tabla articfacts.goal
CREATE TABLE IF NOT EXISTS `goal` (
  `id` int(20) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `icon` varchar(20) DEFAULT NULL,
  `target` varchar(40) DEFAULT NULL,
  `target_text` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla articfacts.goal: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `goal` DISABLE KEYS */;
/*!40000 ALTER TABLE `goal` ENABLE KEYS */;

-- Volcando estructura para tabla articfacts.scoreboard
CREATE TABLE IF NOT EXISTS `scoreboard` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(40) DEFAULT NULL,
  `pilot` varchar(40) DEFAULT NULL,
  `score` int(10) DEFAULT NULL,
  `goal` varchar(20) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'LOSER',
  `location` varchar(50) DEFAULT 'Helsinki',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla articfacts.scoreboard: ~199 rows (aproximadamente)
/*!40000 ALTER TABLE `scoreboard` DISABLE KEYS */;
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(1, 'nombrecito', 'bran', NULL, NULL, 'LOSER', NULL);
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(2, 'nombrecito', 'bran', NULL, NULL, 'LOSER', NULL);
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(3, 'nombrecito', 'bran', NULL, NULL, 'LOSER', NULL);
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(4, 'ana', 'bran', NULL, NULL, 'LOSER', NULL);
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(5, 'Juan', 'bran', NULL, NULL, 'LOSER', NULL);
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(6, 'juan', 'bran', NULL, NULL, 'LOSER', NULL);
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(7, 'Markoo', 'bran', NULL, NULL, 'LOSER', NULL);
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(8, 'markk', 'bran', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(9, 'ultimahoy', 'bran', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(10, 'Juan', 'bran', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(11, 'Aitana', 'bran', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(12, 'kkkbrasil', 'bran', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(13, 'ananino', 'bran', NULL, NULL, 'LOSER', 'Rovaniemi');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(16, 'jejejuan', 'bran', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(17, 'jesse', 'bran', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(18, 'Independencia', 'bran', NULL, NULL, 'LOSER', 'Mariehamn');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(19, 'Brann', 'bran', NULL, NULL, 'LOSER', 'Oulu');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(20, 'Joan', 'bran', NULL, NULL, 'LOSER', 'Seinäjoki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(21, 'Ananas', 'bran', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(22, 'Juanin', 'bran', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(23, 'Mariano', 'Brann', NULL, NULL, 'LOSER', 'Kuusamo');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(24, 'Anis', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(25, 'Kevinn', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(26, 'preuno', 'Brann', NULL, NULL, 'LOSER', 'Kuusamo');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(27, 'Juan', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(28, 'je', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(29, 'ana', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(30, 'Juan', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(31, 'Anto', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(32, 'Okei', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(33, 'Ana', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(34, 'ana', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(35, 'Juan', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(36, 'Juan', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(37, 'ana', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(38, 'ana', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(39, 'ana', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(40, 'ana', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(41, 'ana', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(42, 'ana', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(43, 'ana', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(44, 'ana', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(45, 'Type username', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(46, 'Mark', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(47, 'Markkkk', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(48, 'annnn', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(49, 'Anne', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(50, 'Ricardo', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(51, 'Mercurio', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(52, 'koka', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(53, 'Yamile', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(54, 'akaja', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(55, 'Aurelio', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(56, 'Nnn', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(57, 'Ann', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(58, 'Mann', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(59, 'Bruno', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(60, 'ann', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(61, 'juan', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(62, 'juan', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(63, 'annnn', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(64, 'jaaawq', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(65, 'aq', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(66, 'Nnn', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(67, 'Hector', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(68, 'Olmedo', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(69, 'Alberto', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(70, 'Jean', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(71, 'juju', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(72, 'Markkki', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(73, 'Juji', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(74, 'Boanoite', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(75, 'Antoine', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(76, 'Kinn', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(77, 'Richar', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(78, 'kino', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(79, 'Bombocla', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(80, 'yeilo', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(81, 'XUXA', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(82, 'ahaha', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(83, 'jajaja', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(84, 'jajaja', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(85, 'mikkeli', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(86, 'anann', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(87, 'joni', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(88, 'Venis', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(89, 'Indira', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(90, 'Mantione', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(91, 'severo', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(92, 'urho', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(93, 'Mangolin', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(94, 'WANDA', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(95, 'Nelson', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(96, 'manolito', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(97, 'manolo3', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(98, 'elsebas', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(99, 'lolito', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(100, 'eljuanca', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(101, 'yeli', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(102, 'elcan', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(103, 'marinnn', 'Brann', NULL, NULL, 'LOSER', 'Rovaniemi');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(104, 'maricarmen', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(105, 'Yanio', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(106, 'wawayy', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(107, 'Jolene', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(108, 'Joleene', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(109, 'Marie', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(110, 'juakk', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(111, 'weoo', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(112, 'nananina', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(113, 'weloa', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(114, 'angelo', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(115, 'Noelia', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(116, 'Markez', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(117, 'Manda', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(118, 'Manndo', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(119, 'Seguro', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(120, 'Especial', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(121, 'Noni', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(122, 'Manno', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(123, 'Mandi', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(124, 'Milagro', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(125, 'Juancho', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(126, 'uan', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(127, 'Juan', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(128, 'jacq', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(129, 'Jaokca', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(130, 'Jer', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(131, 'Joel', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(132, 'Juan', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(133, 'Juan', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(134, 'Juan', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(135, 'Juan', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(136, 'Juan', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(137, 'asisi', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(138, 'gerardo', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(139, 'Esso', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(140, 'Manee', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(141, 'esqui', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(142, 'esto', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(143, 'mall', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(144, 'Jello', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(145, 'Juan', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(146, 'Marko', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(147, 'gerber', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(148, 'Juan', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(149, 'Juan', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(150, 'Juan', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(151, 'Juan', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(152, 'Juancho', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(153, 'juan', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(154, 'Yanina', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(155, 'juan', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(156, 'juan', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(157, 'juan', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(158, 'juan', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(159, 'sisi', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(160, 'Brandon', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(161, 'juan', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(162, 'juan', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(163, 'Nena', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(164, 'Juan', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(165, 'yuleydis', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(166, 'Maricarmen', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(167, 'Juan', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(168, 'Manuel', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(169, 'Yani', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(170, 'Type username', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(171, 'Brann', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(172, 'bichota', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(173, 'Juan', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(174, 'Euclides', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(175, 'Nann', 'Brann', NULL, NULL, 'BUENASNOCHES', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(176, 'madrilenno', 'Brann', 1900, NULL, 'WINNER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(177, 'aquelarre', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(178, 'juan', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(179, 'milipili', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(180, 'juan', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(181, 'Melendez', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(182, 'Salvatore', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(183, 'Salvatore', 'Brann', 1500, NULL, 'WINNER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(184, 'Juan', 'Brann', 1200, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(185, 'juan', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(186, 'juan', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(187, 'juan', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(188, 'nyame', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(189, 'YUCA', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(190, 'juan', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(191, 'marlon', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(192, 'juan', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(193, 'juan', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(194, 'nol', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(195, 'bello', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(196, 'juan', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(197, 'juan', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(198, 'Aurelio', 'Brann', 2000, NULL, 'WINNER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(199, 'Chau', 'Brann', 2000, NULL, 'WINNER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(200, 'Jarkko', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
INSERT INTO `scoreboard` (`id`, `username`, `pilot`, `score`, `goal`, `status`, `location`) VALUES
	(201, 'Jarkko', 'Brann', NULL, NULL, 'LOSER', 'Helsinki');
/*!40000 ALTER TABLE `scoreboard` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
