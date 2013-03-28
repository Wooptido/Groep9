-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Machine: 127.0.0.1
-- Genereertijd: 23 mrt 2013 om 23:14
-- Serverversie: 5.5.27
-- PHP-versie: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databank: `groep9_festivals`
--
CREATE DATABASE `groep9_festivals` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `groep9_festivals`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `bands`
--

CREATE TABLE IF NOT EXISTS `bands` (
  `band_id` int(11) NOT NULL AUTO_INCREMENT,
  `band_naam` varchar(50) NOT NULL,
  `band_genre` varchar(50) NOT NULL,
  `band_url` varchar(50) NOT NULL,
  PRIMARY KEY (`band_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Gegevens worden uitgevoerd voor tabel `bands`
--

INSERT INTO `bands` (`band_id`, `band_naam`, `band_genre`, `band_url`) VALUES
(1, 'Bryan Adams', 'Rock', 'www.bryanadams.com'),
(2, 'Coldplay', 'Rock', 'www.coldplay.com'),
(3, 'U2', 'Rock', 'www.u2.com'),
(4, 'Oasis', 'Rock', 'www.oasisinet.com'),
(5, 'Avril Lavigne', 'Pop', 'www.avrillavigne.com'),
(6, 'Eagles', 'Rock', 'www.eaglesband.com'),
(7, 'Samson en Gert', 'Heavy metal', 'www.studio100.be');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `bandsperfestival`
--

CREATE TABLE IF NOT EXISTS `bandsperfestival` (
  `fest_id` int(11) NOT NULL,
  `band_id` int(11) NOT NULL,
  `pod_id` int(11) NOT NULL,
  `datum` date NOT NULL,
  `uur` time NOT NULL,
  KEY `fest_id` (`fest_id`,`band_id`,`pod_id`),
  KEY `band_id` (`band_id`),
  KEY `pod_id` (`pod_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `campings`
--

CREATE TABLE IF NOT EXISTS `campings` (
  `camp_id` int(11) NOT NULL AUTO_INCREMENT,
  `camp_adres` varchar(50) NOT NULL,
  `camp_cap` int(11) NOT NULL,
  `camp_naam` varchar(50) NOT NULL,
  PRIMARY KEY (`camp_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Gegevens worden uitgevoerd voor tabel `campings`
--

INSERT INTO `campings` (`camp_id`, `camp_adres`, `camp_cap`, `camp_naam`) VALUES
(1, 'Werchter', 200, 'Camping 1'),
(2, 'Werchter 2', 500, 'Camping 2'),
(3, 'Atlanta', 1000, 'Atlanta 1'),
(4, 'Boom', 2000, 'Boom 1');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `campingsperfestival`
--

CREATE TABLE IF NOT EXISTS `campingsperfestival` (
  `fest_id` int(11) NOT NULL,
  `camp_id` int(11) NOT NULL,
  KEY `fest_id` (`fest_id`),
  KEY `camp_id` (`camp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden uitgevoerd voor tabel `campingsperfestival`
--

INSERT INTO `campingsperfestival` (`fest_id`, `camp_id`) VALUES
(2, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `faciliteiten`
--

CREATE TABLE IF NOT EXISTS `faciliteiten` (
  `fac_id` int(11) NOT NULL AUTO_INCREMENT,
  `fac_omschr` text NOT NULL,
  `fac_eenhprijs` int(11) NOT NULL,
  PRIMARY KEY (`fac_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Gegevens worden uitgevoerd voor tabel `faciliteiten`
--

INSERT INTO `faciliteiten` (`fac_id`, `fac_omschr`, `fac_eenhprijs`) VALUES
(1, 'Drank', 2),
(2, 'Voedsel', 3);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `facpercamp`
--

CREATE TABLE IF NOT EXISTS `facpercamp` (
  `camp_id` int(11) NOT NULL,
  `fac_id` int(11) NOT NULL,
  `aantal` int(11) NOT NULL,
  KEY `camp_id` (`camp_id`),
  KEY `fac_id` (`fac_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden uitgevoerd voor tabel `facpercamp`
--

INSERT INTO `facpercamp` (`camp_id`, `fac_id`, `aantal`) VALUES
(1, 2, 3),
(4, 1, 5);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `festivals`
--

CREATE TABLE IF NOT EXISTS `festivals` (
  `fest_id` int(11) NOT NULL AUTO_INCREMENT,
  `fest_naam` varchar(50) NOT NULL,
  `fest_beginDate` date NOT NULL,
  `fest_eindDate` date NOT NULL,
  `fest_locatie` varchar(50) NOT NULL,
  PRIMARY KEY (`fest_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Gegevens worden uitgevoerd voor tabel `festivals`
--

INSERT INTO `festivals` (`fest_id`, `fest_naam`, `fest_beginDate`, `fest_eindDate`, `fest_locatie`) VALUES
(1, 'Pukkelpop', '2013-08-15', '2013-08-17', 'Kiewit'),
(2, 'Rock Werchter', '2013-07-04', '2013-07-07', 'Werchter'),
(3, 'Tomorrowland', '2013-07-26', '2013-07-28', 'Boom'),
(4, 'Tomorrowworld', '2013-09-27', '2013-09-29', 'Atlanta');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `gebruikers`
--

CREATE TABLE IF NOT EXISTS `gebruikers` (
  `gebr_id` int(11) NOT NULL AUTO_INCREMENT,
  `gebr_naam` varchar(50) NOT NULL,
  `gebr_login_naam` varchar(50) NOT NULL,
  `gebr_wachtwoord` varchar(50) NOT NULL,
  `gebr_adres` varchar(50) NOT NULL,
  `gebr_gebDat` date NOT NULL,
  PRIMARY KEY (`gebr_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Gegevens worden uitgevoerd voor tabel `gebruikers`
--

INSERT INTO `gebruikers` (`gebr_id`, `gebr_naam`, `gebr_login_naam`, `gebr_wachtwoord`, `gebr_adres`, `gebr_gebDat`) VALUES
(1, 'Marco Tordoor', 'Thundil', 'azerty123', 'Leopoldsburg', '1992-10-16'),
(2, 'Maarten Hoste', 'Wooptido', 'wooptidoo', 'Heusden-Zolder', '1992-08-16'),
(3, 'Stijn Kuppens', 'Doobe', 'tomatensoep123', 'Leopoldsburg', '1992-01-20'),
(4, 'Tim Leenaers', 'Timsalabim', 'genkisnikswaard', 'Boekt', '1993-02-19'),
(5, 'Wouter Bollaert', 'Dimasre', 'dimasre123', 'Leopoldsburg', '1993-12-24');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `podia`
--

CREATE TABLE IF NOT EXISTS `podia` (
  `pod_id` int(11) NOT NULL AUTO_INCREMENT,
  `pod_locatie` varchar(50) NOT NULL,
  `pod_omschr` text NOT NULL,
  PRIMARY KEY (`pod_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Gegevens worden uitgevoerd voor tabel `podia`
--

INSERT INTO `podia` (`pod_id`, `pod_locatie`, `pod_omschr`) VALUES
(1, 'Noord', 'Noordelijk podium'),
(2, 'Zuid', 'Zuidelijk podium');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `tickets`
--

CREATE TABLE IF NOT EXISTS `tickets` (
  `fest_id` int(11) NOT NULL,
  `gebr_id` int(11) NOT NULL,
  `typ_id` int(11) NOT NULL,
  `ticket_datum` date NOT NULL,
  KEY `fest_id` (`fest_id`),
  KEY `gebr_id` (`gebr_id`),
  KEY `typ_id` (`typ_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden uitgevoerd voor tabel `tickets`
--

INSERT INTO `tickets` (`fest_id`, `gebr_id`, `typ_id`, `ticket_datum`) VALUES
(1, 1, 2, '2013-03-31'),
(2, 4, 1, '2013-08-16');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `tickettypes`
--

CREATE TABLE IF NOT EXISTS `tickettypes` (
  `typ_id` int(11) NOT NULL AUTO_INCREMENT,
  `typ_omschr` varchar(20) NOT NULL,
  `typ_prijs` int(11) NOT NULL,
  PRIMARY KEY (`typ_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Gegevens worden uitgevoerd voor tabel `tickettypes`
--

INSERT INTO `tickettypes` (`typ_id`, `typ_omschr`, `typ_prijs`) VALUES
(1, 'combi', 100),
(2, 'dag', 50);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `tickettypesperfestival`
--

CREATE TABLE IF NOT EXISTS `tickettypesperfestival` (
  `fest_id` int(11) NOT NULL,
  `typ_id` int(11) NOT NULL,
  `aantal` int(11) NOT NULL,
  KEY `fest_id` (`fest_id`),
  KEY `typ_id` (`typ_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden uitgevoerd voor tabel `tickettypesperfestival`
--

INSERT INTO `tickettypesperfestival` (`fest_id`, `typ_id`, `aantal`) VALUES
(2, 1, 5000),
(3, 1, 10000);

--
-- Beperkingen voor gedumpte tabellen
--

--
-- Beperkingen voor tabel `bandsperfestival`
--
ALTER TABLE `bandsperfestival`
  ADD CONSTRAINT `bandsperfestival_ibfk_4` FOREIGN KEY (`fest_id`) REFERENCES `festivals` (`fest_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bandsperfestival_ibfk_5` FOREIGN KEY (`band_id`) REFERENCES `bands` (`band_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bandsperfestival_ibfk_6` FOREIGN KEY (`pod_id`) REFERENCES `podia` (`pod_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `campingsperfestival`
--
ALTER TABLE `campingsperfestival`
  ADD CONSTRAINT `campingsperfestival_ibfk_2` FOREIGN KEY (`camp_id`) REFERENCES `campings` (`camp_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `campingsperfestival_ibfk_1` FOREIGN KEY (`fest_id`) REFERENCES `festivals` (`fest_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `facpercamp`
--
ALTER TABLE `facpercamp`
  ADD CONSTRAINT `facpercamp_ibfk_2` FOREIGN KEY (`fac_id`) REFERENCES `faciliteiten` (`fac_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `facpercamp_ibfk_1` FOREIGN KEY (`camp_id`) REFERENCES `campings` (`camp_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_ibfk_3` FOREIGN KEY (`typ_id`) REFERENCES `tickettypes` (`typ_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tickets_ibfk_1` FOREIGN KEY (`fest_id`) REFERENCES `festivals` (`fest_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tickets_ibfk_2` FOREIGN KEY (`gebr_id`) REFERENCES `gebruikers` (`gebr_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `tickettypesperfestival`
--
ALTER TABLE `tickettypesperfestival`
  ADD CONSTRAINT `tickettypesperfestival_ibfk_2` FOREIGN KEY (`typ_id`) REFERENCES `tickettypes` (`typ_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tickettypesperfestival_ibfk_1` FOREIGN KEY (`fest_id`) REFERENCES `festivals` (`fest_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
