-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 04 jul 2022 om 13:13
-- Serverversie: 10.4.21-MariaDB
-- PHP-versie: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toverlantaarn`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `gebruikers`
--

CREATE TABLE `gebruikers` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `gebruikers`
--

INSERT INTO `gebruikers` (`id`, `username`, `password`) VALUES
(1, 'admin', 'wachtwoord');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `platen`
--

CREATE TABLE `platen` (
  `reeks` text NOT NULL,
  `onderwerp` text NOT NULL,
  `titel` text NOT NULL,
  `platen_nummer` text DEFAULT NULL,
  `in_doos` text NOT NULL,
  `conditie` text DEFAULT NULL,
  `maat` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `platen`
--

INSERT INTO `platen` (`reeks`, `onderwerp`, `titel`, `platen_nummer`, `in_doos`, `conditie`, `maat`, `id`) VALUES
('Primus Junior Lectures', 'Geschiedenis', 'The Conquest Of The Air Chapter I', '1 t/m 8', 'Ja orgineel', 'Compleet zeer goed', '8,3X8,3', 1),
('Primus Junior Lectures', 'Geschiedenis', 'Our Colonies: South Africa Chapter IV', '33 t/m 39', 'Ja orgineel', 'Compleet zeer goed', '8,3X8,3', 2),
('Primus Junior Lectures', 'Fabels', 'Aeop\'s Fables Chapter II', '9 t/m 16', 'Ja orgineel', 'Compleet zeer goed', '8,3X8,3', 3),
('Primus Junior Lectures', 'Sprookjes', 'Cinderella', '1 t/m 8', 'Ja orgineel', 'Compleet zeer goed', '8,3X8,3', 4),
('Primus Junior Lectures', 'Sprookjes', 'The Pied Piper of Hamelin', '1 t/m 8', 'Ja orgineel', 'Compleet zeer goed', '8,3X8,3', 5),
('Primus Junior Lectures', 'Sprookjes', 'Dick Whittington', '1 t/m 8', 'Ja orgineel', 'Compleet zeer goed', '8,3X8,3', 6),
('Primus Junior Lectures', 'Sprookjes', 'Aladdin', '1 t/m 8', 'Ja orgineel', 'Compleet zeer goed', '8,3X8,3', 7),
('Primus Junior Lectures', 'Sprookjes', 'The Three Bears', '1 t/m 8', 'Ja orgineel', 'nr.1-4-5 met barst', '8,3x8,3', 8),
('Primus Junior Lectures', 'Geschiedenis', 'Our Colonies: New Zealand Chapter II', '9 t/m 16', 'Ja orgineel', 'Compleet goed', '8,3X8,3', 9),
('Primus Junior Lectures', 'Fabels', 'Mr. & Mrs. Brown & The Mouse', '1 t/m 8', 'Ja orgineel', 'Compleet zeer goed', '8,3X8,3', 10),
('Lichtbeelden A\'dam', 'geen onderwerp opgegeven', 'De Droom Van Kees', '13', 'Nee', 'nr. 2 en 3 ontbreken', '8,3X8,3', 11),
('Primus Junior Lectures', 'Bijbel', 'Dore Bible', '1 t/m 8', 'Ja orgineel', 'Compleet zeer goed', '8,3X8,3', 12),
('Primus Junior Lectures', 'Geschiedenis', 'Vieuw Of London Chapter1', '1 t/m 8', 'Ja orgineel', 'Compleet zeer goed + tekststrook', '8,3X8,3', 13),
('Primus Coloured', 'Natuur', 'Giants and Dwarfs', '65 t/m 72', 'Ja orgineel', 'Compleet goed', '8,3X8,3', 14),
('Primus Junior Lectures', 'Natuur', 'Birds and their Nests', '1 t/m 8', 'Ja orgineel', 'Compleet goed + tekststrook', '8,3X8,3', 15),
('Primus Coloured', 'Natuur', 'London Zoological Gardens Chapter X', '73 t/m 80', 'Ja orgineel', 'Compleet zeer goed', '8,3x8,3', 16),
('Primus Coloured', 'Sprookjes', 'Sinbad The Sailor', '1 t/m 8', 'Ja orgineel', 'Compleet zeer goed + tekststrook', '8,3X8,3', 17),
('geen reeks opgegeven', 'Geschiedenis', 'De Wilddooder', '1 t/m12', 'Ja niet org.', 'Compleet zeer goed', '8,3X8,3', 18),
('geen reeks opgegeven', 'Sprookjes', 'Der Gestiefelde Kater', '1 t/m 8', 'Ja niet org.', 'Compleet zeer mooi hand gekleurd', '8,3X8,3', 19),
('Primus Junior Lectures', 'Geschiedenis', 'The British Navy chapter I', '1 t/m 8', 'Ja orgineel', 'Compeet zeer goed doosje minder', '8,3X8,3', 20),
('Primus Junior Lectures', 'Natuur', 'Sea Animals Chapter III', '17 t/m 24', 'Ja niet org.', 'Nr. 23 ontbreekt 24 zwaar gebarsten', '8,3X8,3', 21),
('Primus Junior Lectures', 'Sprookjes', 'The Pied Piper of Hamelin', '1 t/m 8', 'Ja niet org.', 'Compleet zeer goed', '8,3X8,3', 22),
('Junior Lecture', 'Natuur', 'Birds in Three Chapters I', '1 t/m 8', 'Ja orgineel', 'Nr.3 en 4 missen', '8,3X8,3', 23),
('Junior Lecture', 'Natuur', 'British Butterflies and Moths Chapter II', '9 t/m 16', 'Ja orgineel', 'Nr. 12 mist', '8,3X8,3', 24),
('Primus Junior Lectures', 'Sprookjes', 'Red Riding Hood', '1 t/m 8', 'Ja niet org.', 'Compleet zeer goed', '8,3X8,3', 25),
('Primus Junior Lectures', 'Geschiedenis', 'Life Of King Edward VII Chapter III', '17 t/m 24', 'Ja orgineel', 'Compleet zeer goed', '8,3X8,3', 26),
('Primus Junior Lectures', 'Sprookjes', 'Puss In Boots', '1 t/m 8', 'Ja orgineel', 'Compleet zeer goed', '8,3X8,3', 27),
('Primus Junior Lectures', 'Sprookjes', 'Alice In Wonderland Chapter II', '9 t/m 16', 'Ja orgineel', 'Compleet zeer goed', '8,3X8,3', 28),
('Primus Junior Lectures', 'Sprookjes', 'Pilgrim\'s Progress Chapter III', '17 t/m 24', 'Ja orgineel', 'Compleet zeer goed', '8,3X8,3', 29),
('geen reeks opgegeven', 'Geschiedenis', 'The Boer War  Of 1900 Chapter III', '17 t/m 24', 'Ja orgineel', 'Compleet zeer goed ', '8,3X8,3', 30),
('Magic Lantern Slides', 'Verzameld', 'o.a The Story Of Peter Pan  Series VII', 'geen plaatnummers opgegeven', 'Ja orgineel', 'Compleet zeer goed', '14x3,4', 31),
('Magic Lantern Slides', 'Verzameld', '0.a Comical Cats And Dogs', 'geen plaatnummers opgegeven', 'Ja orgineel', 'Compleet zeer goed', '14x3,4', 32),
('Primus Junior Lectures', 'Sprookjes', 'Brave Deeds', '1 t/m 8', 'Ja orgineel', 'Compleet zeer goed', '8,3X8,3', 33),
('Primus Junior Lectures', 'Sprookjes', 'The Three Bears', '1 t/m 8', 'Ja orgineel', 'Compleet zeer goed', '8,3X8,3', 34),
('Primus Junior Lectures', 'Sprookjes', 'The Three Bears', '1 t/m 8', 'Ja orgineel', 'Compleet goed', '8,3X8,3', 35),
('Primus Junior Lectures', 'Geschiedenis', 'Our Colonies Canada Chapter I', '1 t/m 8', 'Ja orgineel', 'Compleet zeer goed ', '8,3X8,3', 36),
('Primus Coloured', 'Natuur', 'London Zoological Gardens Chapter VIII', '57 t/m 64', 'Ja orgineel', 'Compleet goed ', '8,3X8,3', 37),
('Primus Lantern Slides', 'Geschiedenis', 'The World war Chapter X', '73 t/m 80', 'Ja orgineel', 'Compleet zeer goed', '8,3X8,3', 38),
('Primus Junior Lectures', 'Natuur', 'Birds And Their Nests', '1 t/m 8', 'Ja orgineel', 'Compleet zeer goed', '8,3X8,3', 39),
('Primus Junior Lectures', 'Vrijetijd', 'Boy Scouts Chapter II', '9 t/m 16', 'Ja orgineel', 'Compeet zeer goed ', '8,3X8,3', 40),
('Primus Junior Lectures', 'Fabels', 'The Elephant\'s Revenge', '1 t/m 8', 'Ja orgineel', 'Nr.1 heeft barst, doosje niet zo mooi ', '8,3X8,3', 41),
('Primus Junior Lectures', 'Sprookjes', 'Pilgrim\'s Progress Chapter I', '1 t/m 8', 'Ja orgineel', 'Compleet zeer goed', '8,3X8,3', 42),
('Primus Junior Lectures', 'Sprookjes', 'Pilgrim\'s Progress Chapter II ', '9 t/m 16', 'Ja orgineel', 'Compleet zeer goed', '8,3X8,3', 43),
('Primus Junior Lectures', 'Fabels', 'The Sweep and Whitewasher', '1 t/m 8', 'Ja niet org.', 'Nr. 1 en 3 hebben barstje', '8,3X8,3', 44),
('Primus Junior Lectures', 'Sprookjes', 'Robinson Crusoe', '1 t/m 8', 'Ja orgineel', 'Compleet zeer goed', '8,3X8,3', 45),
('Primus Junior Lectures', 'Sprookjes', 'The Babes In The Wood', '1 t/m 8', 'Ja orgineel', 'Compleet zeer goed', '8,3X8,3', 46),
('geen reeks opgegeven', 'Liedje', 'Sing A Song of Sixpence ', '1 t/m 8', 'Ja niet org.', 'Nr. 2 gebarsten', '8,3X8,3', 47),
('Primus Junior Lectures', 'Liedje', 'Ten Little Nigger Boys', '1 t/m 8', 'Ja orgineel', 'Compleet goed', '8,3X8,3', 48),
('geen reeks opgegeven', 'Sprookjes', 'Bruderchen Und Schwefterchen', '1 t/m 6', 'Ja niet org.', 'Compleet zeer goed', '8,3X8,3', 49),
('Primus Junior Lectures', 'Geschiedenis', 'Uncle Tom\'s Cabin Chapter III', '17 t/m 24', 'Ja orgineel', 'Compleet goed', '8,3X8,3', 50),
('Primus Junior Lectures', 'Geschiedenis', 'Uncle Tom\'s Cabin Chapter I', '1 t/m 8', 'Ja orgineel', 'Compleet zeer goed', '8,3X8,3', 51),
('Primus Junior Lectures', 'Geschiedenis', 'Uncle Tom\'s Cabin Chapter II ', '9 t/m 16', 'Ja orgineel', 'Compleet zeer goed', '8,3X8,3', 52),
('Primus Junior Lectures', 'Vrijetijd', 'Boy Scouts Chapter III', '17 t/m 24', 'Ja niet org.', 'Compleet goed', '8,3X8,3', 53),
('Primus Junior Lectures', 'Geschiedenis', 'Famous British Locomotives', '1 t/m 8', 'Ja orgineel', 'Compleet zeer goed', '8,3X8,3', 54),
('Primus Junior Lectures', 'Natuur', 'Birds Of The Tropics Chapter II', '9 t/m 16', 'Ja niet org.', 'Compleet goed', '8,3X8,3', 55),
('Primus Junior Lectures', 'Sprookjes', 'The Three Bears', '1 t/m 8', 'Ja orgineel', 'Compleet zeer goed', '8,3X8,3', 56),
('geen reeks opgegeven', 'Commische', 'The Judge And His Asses', '1 t/m 6', 'Ja niet org.', 'Compleet Nr. 4-5 en 6 zwaar gebarsten ', '8,3X8,3', 57),
('geen reeks opgegeven', 'Sprookjes', 'Aschhenbrodel', '1 t/m 8', 'Ja niet org.', 'Compleet erg mooi hand in gekleurd', '8,3X8,3', 58),
('Primus Junior Lectures', 'Sprookjes', 'Jack And The Beanstalk', '1 t/m 8', 'Ja orgineel', 'Compleet zeer goed', '8,3X8,3', 59),
('Primus Junior Lectures', 'Sprookjes', 'The House That Jack Built', '1 t/m 8', 'Ja niet org.', 'Compleet zeer goed', '8,3X8,3', 60),
('Primus Junior Lectures', 'Geschiedenis', 'The British Army Chapter II', '9 t/m 16', 'Ja niet org.', 'Compleet goed', '8,3X8,3', 61),
('Primus Junior Lectures', 'Geschiedenis', 'The Russo-Japanese War Chapter I', '1 t/m 8', 'Ja niet org.', 'Goed Nr. 8 mist', '8,3X8,3', 62),
('geen reeks opgegeven', 'Beelden', 'geen titel opgegeven', 'geen platennummers opgegeven', 'geen info opgegeven', 'geen conditie opgegeven', '8,3X8,3', 63),
('geen reeks opgegeven', 'Beelden', 'geen titel opgegeven', 'geen platennummers opgegeven', 'geen info opgegeven', 'geen conditie opgegeven', '8,3X8,3', 64),
('geen reeks opgegeven', 'Beelden', 'geen titel opgegeven', 'geen platennummers opgegeven', 'geen info opgegeven', 'geen conditie opgegeven', '8,3X8,3', 65),
('geen reeks opgegeven', 'Beelden', 'geen titel opgegeven', 'geen platennummers opgegeven', 'geen info opgegeven', 'geen conditie opgegeven', '8,3X8,3', 66),
('geen reeks opgegeven', 'Beelden', 'geen titel opgegeven', 'geen platennummers opgegeven', 'geen info opgegeven', 'geen conditie opgegeven', '8,3X8,3', 67),
('Primus Junior Lectures', 'Natuur', 'Animals Chapter I', '1 t/m 8', 'Ja orgineel', 'Nr. 7 mist, doosje slecht', '8,3X8,3', 68),
('Primus Junior Lectures', 'Natuur', 'Animals Chapter III', '17 t/m 24', 'Ja niet org.', 'Nr.17-20', '8,3X8,3', 69),
('Primus Junior Lectures', 'Natuur', 'Animals Chapter diverse', 'geen platennummers opgegeven', 'Ja niet org. ', 'Nr.36-37-40 t/m 44-46-48 ', '8,3X8,3', 70),
('geen reeks opgegeven', 'Geschiedenis', 'Geportreteerde Beroemde Engelsen', '', '', 'Getekend geportreteerd', '8,3X8,3', 71),
('geen reeks opgegeven', 'Geschiedenis', 'Het Leven van Jezus Christus', '1 t/m 12', 'Ja niet org.', 'Van vele glas plaatjes los van elkaar', '8,3X8,3', 72),
('geen reeks opgegeven', 'Life models', 'Twee Kinderen opzoek naar de hemel', '1 t/m 16', 'Ja niet org.', 'V.Staveren 1-6-15 beschadigd 12 mist ', '8,3X8,3', 73),
('geen reeks opgegeven', 'Natuur', 'Tiger Hunting In Bengal', '1 t/m 12', 'Ja niet org.', 'Compleet zeer goed', '8,3X8,3', 74),
('geen reeks opgegeven', 'Sprookjes', 'The Live and Adventures of Robinson Cr', '1 t/m 12', 'Nee', 'Compeet', '8,3X8,3', 75),
('geen reeks opgegeven', 'Geschiedenis', 'Engels gebouwen', '1 t/m 16', 'Nee', 'Hand in gekleurd', '8,3X8,3', 76),
('geen reeks opgegeven', 'Life models', 'Navel By His Bible', '1 t/m  11', 'Nee', '', '8,3X8,3', 77),
('geen reeks opgegeven', 'Sprookjes', 'St.George And The Dragon', '1 t/m 12', 'Ja orgineel', 'Compleet zeer goed', '8,3X8,3', 78),
('geen reeks opgegeven', 'Sprookjes', 'Dornroschen', '1 t/m 6', 'Ja niet org.', 'Compleet zeer goed', '8,3X8,3', 79),
('geen reeks opgegeven', 'Sprookjes', 'De Kleine Moek', '1 t/m 12', 'Ja niet org.', 'Compleet zeer goed', '8,3X8,3', 80),
('geen reeks opgegeven', 'Sprookjes', 'Hans en Grietje', '1 t/m 6', 'Ja niet org', 'Compleet', '8,3X8,3', 81),
('Ica-Lanternbilder', 'Verhaal', 'Der letzte Mohikaner', '1 t/m 12', 'Ja niet org.', 'Compleet', '8,3X8,3', 82),
('geen reeks opgegeven', 'Sprookjes', 'Aschenputtel', '1 t/m 12', 'Ja org,wikkel', 'Compleet', '4,5X4,5', 83),
('geen reeks opgegeven', 'Sprookjes', 'Paul Und Virginia', '1 t/m 12', 'Ja orgineel', 'Compleet erg mooi ', '8,3X8,3', 84),
('geen reeks opgegeven', 'Sprookjes', 'Reintje de Vos 2e deel', '1 t/m 12', 'Ja orgineel', 'Compleet erg mooi', '8,3X8,3', 85),
('Primus Junior Lectures', 'Geschiedenis', 'Artic Exppedition', '1 t/m 12 ', 'Ja niet org.', 'Compleet erg mooi', '8,3X8,3', 86),
('Primus Junior Lectures', 'Sprookjes', 'Reus en Dwergen ???', '1 t/m 12', 'Ja niet org.', 'Compleet goed', '8,3X8,3', 87),
('Primus Junior Lectures', 'Verhaal', 'The Back Smid', '1 t/m 12', 'Ja niet org.', 'Compleed erg mooi', '8,3X8,3', 88),
('Walt Disney M.M LTD', 'Verhaal', 'Three Little Pigs', '1 t/m 24', 'Ja orgineel', 'Compleed zeer goed', '8,3X8,3', 89),
('geen reeks opgegeven', 'Life models', 'De Droom Van Een Drinker', '1 t/m 19', 'Ja niet org.', 'V.Staveren compleed ?', '8,3X8,3', 90),
('geen reeks opgegeven', 'Sprookjes', 'Hans en Grietje', '1 t/m 6', 'Ja niet org.', 'Nederlands hand geschreven tekst', '8,3X8,3', 91),
('geen reeks opgegeven', 'Sprookjes', 'Sneeuwwitje En De Zeven Dwergen', '1 t/m 6 ', 'Ja niet org.', 'Nederlands hand geschreven tekst', '8,3X8,3', 92),
('Ica-Lanternbilder ', 'Verhaal', 'Der Letzte Mohikaner', '1 t/m 12', 'Ja orgineel', 'Compleet zeer goed', '8,3X8,3', 93),
('Lithographic Lantern S.', 'Verhaal', 'Dickens Christmas carol', '1 t/m 12', 'Ja orgineel', 'Compleet zeer goed', '8,3X8,3', 94),
('geen reeks opgegeven', 'Verhaal', 'The Tiger in to the Tub', '1 t/m 12', 'Ja niet org.', 'Compleet uitvoerige verhaal reeks', '8,3X8,3', 95),
('Primus Junior Lectures', 'Geschiedenis', 'Boer war of 1900 Chapter V', '33 t/m 40', 'Ja niet org.', 'Compleet doos wat minder', '8,3X8,3', 96),
('geen reeks opgegeven', 'Sprookjes', 'Red Riding Hood', '1 t/m 12', 'Ja niet org.', 'Compleet uitvoerige verhaal reeks', '8,3X8,3', 97),
('NurseryTales Scipture', 'Sprookjes', 'Puss in Boots', '1 t/m 12', 'Ja orgineel', 'Nederlands hand geschreven tekst', '8,3X8,3', 98),
('NurseryTales Scipture', 'Sprookjes', 'Aladdin', '1 t/m 12', 'Ja orgineel', 'Compleet zeer goed', '8,3X8,3', 99),
('geen reeks opgegeven', 'Bijbel', 'Biblel Neues Testament', '1 t/m 12', 'Ja niet org.', 'geen conditie opgegeven', '8,3X8,3', 100),
('geen reeks opgegeven', 'Verhaal', 'Hans in Gluck', '1 t/m 8', 'Ja niet org.', 'Hand in gekleurd erg mooie serie', '8,3X8,3', 101),
('geen reeks opgegeven', 'Verhaal', 'Vrouw krijgt bezoek van man', '1 t/m 8', 'Ja niet org.', 'Soort strip verhaal Engels', '8,3X8,3', 102),
('Primus Junior Lectures', 'Natuur', 'London Zoological Gardens Chapter div', '33 t/m 43', 'Nee', 'Plaatje 33 t/m 43', '8,3X8,3', 103),
('Primus Junior Lectures', 'Natuur', 'London Zoological Gardens Chapter div', '15 t/m 31', 'Nee', 'Plaatjes 15 t/m 31 sommige slecht', '8,3X8,3', 104),
('Primus Junior Lectures', 'Verhaal', 'Robinson Crusoe ', '1 t/m 12', 'Nee', 'Uitgevoerige serie', '8,3X8,3', 105),
('Primus Junior Lectures', 'Natuur', 'London Zoological Gardens Chapter div', '1 t/m 14', 'Nee', 'Nr.4 ontbreekt', '8,3X8,3', 106),
('geen reeks opgegeven', 'Verhaal', 'Hand getekend verhaal', '1 t/m 11', 'Nee', 'Erg mooi zwart/wit tekeningen ', '8,3X8,3', 107),
('geen reeks opgegeven', 'Sprookjes', 'The Dwarf Long Nose', '1 t/m 12', 'Nee', 'Bindings laten los', '8,3X8,3', 108),
('geen reeks opgegeven', 'Verhaal', '?', '1 t/m 12', 'Nee', 'Gezeldschap met koets uit rijden mis', '8,3x8,3', 109),
('geen reeks opgegeven', 'Sprookjes', '?', '1 t/m 12', 'Nee', 'Oosters sprookje prinses en prins ?', '8,3X8,3', 110),
('geen reeks opgegeven', 'Geschiedenis', 'Romeinse Bouwstijl ?', 'Diverse', 'Nee', 'geen conditie opgegeven', '8,3X8,3', 111),
('geen reeks opgegeven', 'Bijbel', 'Hand in gekleured plaatjes', '6 stuks', 'Ja niet org.', 'Erg mooi kleuren tekeningen ', '8,3X8,3', 112),
('geen reeks opgegeven', 'Sprookjes', 'Roodkapje apparte serie', '1 t/m 12', 'Ja niet org.', 'Nr 1-5-10-11 mist 9 beschadigde hoek', '8,3X8,3', 113),
('geen reeks opgegeven', 'Verhaal', 'The Trail of Sir Jasper', '1 t/m 25', 'Nee', 'Engels hand geschreven verhaal tekst', '8,3X8,3', 114),
('Primus Junior Lectures', 'Geschiedenis', 'Our Colonies South Africa Chapter V', '33 t/m 40', 'Ja orgineel', 'Compleet', '8,3X8,3', 115),
('Primus Junior Lectures', 'Verhaal', 'Robin Hood', '1 t/m 8', 'Ja orgineel', 'Compleet', '8,3X8,3', 116),
('Primus Junior Lectures', 'Geschiedenis', 'Our Colonies India Chapter IV', '25 t/m 32', 'Ja orgineel', 'Compleet Nr 30 gescheurt', '8,3x8,3', 117),
('Primus Junior Lectures', 'Geschiedenis', 'The Conquest of The Air Chapter II', '9 t/m 16', 'Ja orgineel', 'Compleet', '8,3X8,3', 118),
('Primus Junior Lectures', 'Geschiedenis', 'Famous British Locomotives', '1 t/m 8', 'Ja orgineel', 'Compleet', '8,3X8,3', 119),
('Primus Junior Lectures', 'Geschiedenis', 'The British Navy Chapter I', '1 t/m 8', 'Ja orgineel', 'Compleet', '8,3X8,3', 120),
('Primus Junior Lectures', 'Geschiedenis', 'The British Navy Chapter II', '9 t/m 16', 'Ja orgineel', 'Compleet', '8,3X8,3', 121),
('Primus Junior Lectures', 'Geschiedenis', 'Life In Africa', '1 t/m 12', 'Ja niet org.', 'Compleet bindings laten los', '8,3X8,3', 122),
('Junior Lecture', 'Verhaal', 'Hey Diddle Diddle', '1 t/m 8', 'Ja orgineel', 'Compleet', '8,3X8,3', 123),
('NurseryTales Scipture', 'Verhaal', 'History oa a Chicken', '1 t/m 12', 'Ja niet org.', 'Compleet', '8,3X8,3', 124),
('City-Serie nr 32', 'Verhaal', 'Piet de Smeerpoets', '1 t/m 24', 'Ja niet org.', 'Compleet Zwart/Wit getekend enkel Gl', '8,3X8,3', 125),
('City-Serie WEDEA.', 'Sprookjes', 'Tijl Uilenspiegel', '1 t/m 12', 'Ja orgineel', 'Compleet hand getekend in kleur', '8,3X8,3', 126),
('City-Serie WEDEA.', 'Sprookjes', 'De Schoone Slaapster', '1 t/m 12', 'Ja orgineel', 'Compleet hand getekend in kleur', '8,3X8,3', 127),
('City-Serie WEDEA.', 'Sprookjes', 'Roodkapje ', '1 t/m 12', 'Ja orgineel', 'Compleet hand getekend in kleur', '8,3X8,3', 128),
('City-Serie WEDEA.', 'Sprookjes', 'Ali Baba en de Veertig Roovers', '1 t/m 12', 'Ja orgineel', 'Compleet hand getekend in kleur EG', '8,3X8,3', 129),
('City-Serie WEDEA.', 'Sprookjes', 'Vrouwtje Uilebuut en Mannetje Tinterlanteen', '1 t/m 12', 'Ja orgineel', 'Compleet hand getekend in kleur EG', '8,3X8,3', 130),
('City-Serie WEDEA.', 'Sprookjes', 'De Ijsmannetjes', '1 t/m 12', 'Ja orgineel', 'Compleet hand getekend in kleur EG', '8,3X8,3', 131),
('City-Serie WEDEA.', 'Sprookjes', 'Sneeuwwitje ', '1 t/m 12', 'Ja orgineel', 'Compleet hand getekend in z/w EG', '8,3X8,3', 132),
('City-Serie WEDEA.', 'Sprookjes', 'De schoone Slaapster', '1 t/m 12', 'Ja orgineel', 'Compleet hand getekend in z/w EG', '8,3X8,3', 133),
('geen reeks opgegeven', 'Geschiedenis', 'Insulinde I', '1 t/m 8', 'Ja orgineel', 'Compleet z/w foto serie', '8,3X8,3', 134),
('geen reeks opgegeven', 'Geschiedenis', 'Insulinde II', '9 t/m 16', 'Ja orgineel', 'Compleet z/w foto serie', '8,3X8,3', 135),
('geen reeks opgegeven', 'Geschiedenis', 'Mooi Nederland No.1', '1t/m 8', 'Ja orgineel', 'No. 4 ontbreekt', '8,3X8,3', 136),
('geen reeks opgegeven', 'Geschiedenis', 'Mooi Nederland No.2', '1 t/m 8', 'Ja orgineel', 'Compleet z/w foto serie', '8,3X8,3', 137),
('geen reeks opgegeven', 'Geschiedenis', 'Mooi Nederland No.3', '1 t/m 8', 'Ja orgineel', 'Compleet z/w foto serie', '8,3X8,3', 138),
('geen reeks opgegeven', 'Geschiedenis', 'Mooi Nederland No.4', '1 t/m 8', 'Ja orgineel', 'Compleet z/w foto serie', '8,3X8,3', 139),
('geen reeks opgegeven', 'Geschiedenis', 'Mooi Nederland No.5', '1 t/m 8', 'Ja orgineel', 'Compleet z/w foto serie', '8,3X8,3', 140),
('geen reeks opgegeven', 'Geschiedenis', 'Mooi Nederland No.6', '1 t/m 8', 'Ja orgineel', 'Compleet z/w foto serie', '8,3X8,3', 141),
('geen reeks opgegeven', 'Geschiedenis', 'Mooi Nederland No.7', '1 t/m 8', 'Ja orgineel', 'Compleet z/w foto serie', '8,3X8,3', 142),
('geen reeks opgegeven', 'Geschiedenis', 'Mooi Nederland XVIII Volendam VIII', '1 t/m 8', 'Ja orgineel', 'In doosje Mooi Nederland XI  ', '8,3X8,3', 143),
('geen reeks opgegeven', 'Geschiedenis', 'Mooi Nederland XII Volendam II', '1 t/m 8', 'Ja orgineel ', 'Compleet z/w foto serie', '8,3X8,3', 144),
('geen reeks opgegeven', 'Geschiedenis', 'Mooi Nederland XIII Kasteelen I', '1 t/m 8', 'Ja orgineel', 'Compleet z/w foto serie', '8,3X8,3', 145),
('Primus Junior Lectures', 'Sprookjes', 'Robinson Crusoe', '1 t/m 8', 'Ja niet org.', 'Compleet', '8,3X8,3', 146),
('Primus Junior Lectures', 'Sprookjes', 'Jackdaw of Rheims', '1 tm 12', 'Ja niet org.', 'Compleet no.8 gescheurd', '8,3X8,3', 147),
('', 'Geschiedenis', 'Amsterdam', '1 t/m 12', 'Ja niet org.', 'Foto\'s van Amsterdam divers EG', '8,3X8,3', 148),
('Primus Junior Lectures', 'Fabels', 'The Elephant\'s Revenge', '1 t/m 8', 'Ja 1/2 org.', 'No 1 mist', '8,3X8,3', 149),
('geen reeks opgegeven', 'Verhaal', 'P & O Pencillings', '1 t/m 12', 'Ja niet org.', 'Compleet gaat over scheepsreis', '8,3X8,3', 150),
('Primus Junior Lectures', 'Sprookjes', 'Aladdin', '1 t/m 8', 'Ja orgineel', 'Compleet', '8,3X8,3', 151),
('Primus Junior Lectures', 'Verhaal', 'Uncle Tom\'s Cabin Chapter I', '1 t/m 8', 'Ja orgineel', 'Compleet', '8,3X8,3', 152),
('Primus Junior Lectures', 'Verhaal', 'Uncle Tom\'s Cabin Chapter III', '16 t/m 24', 'Ja orgineel', 'No.19 en 24 ontbreken', '8,3X8,3', 153),
('Primus Junior Lectures', 'Verhaal', 'Uncle Tom\'s Cabin Chapter II', '9 t/m 16', 'Ja orgineel', 'No 14 gebarste', '8,3X8,3', 154),
('Primus Junior Lectures', 'Sprookjes', 'There was an Old Woman who lived in a Shoe', '1 t/m 8', 'ja orgineel', 'Compleet', '8,3X8,3', 155),
('Primus Junior Lectures', 'Natuur', 'Wild Animals and how they are hunted', '1 t/m 8', 'Ja orgineel', 'Compleet ', '8,3X8,3', 156),
('Primus Junior Lectures', 'Natuur', 'Birds And Their Nests', '1 t/m 8', 'Ja orgineel', 'Compleet ', '8,3X8,3', 157),
('Primus Junior Lectures', 'Verhaal', 'The Three Bears', '1 t/m 8', 'Ja orgineel', 'No.6 gebarsten', '8,3X8,3', 158),
('Primus Junior Lectures', 'Sprookjes', 'Red Riding Hood', '1 t/m 8', 'Ja orgineel', 'No.7 mist', '8,3X8,3', 159),
('Primus Junior Lectures', 'Fabels', 'The Elephant\'s Revenge', '1 t/m 8', 'Ja orgineel', 'Compleet', '8,3X8,3', 160),
('Primus Junior Lectures', 'Verhaal', 'Hey Diddle Diddle', '1 t/m8', 'Ja orgineel', 'Compleet', '8,3X8,3', 161),
('Primus Junior Lectures', 'Sprookjes', 'Cinderella', '1 t/m 8', 'Ja orgineel', 'Compleet', '8,3X8,3', 162),
('Primus Junior Lectures', 'Fabels', 'The Tiger in to the Tub', '1 t/m 8', 'Ja orgineel', 'Compleet', '8,3X8,3', 163),
('Primus Junior Lectures', 'Verhaal', 'John Gilpin', '1 t/m 8', 'Ja orgineel', 'No.1 klein scheurtje', '8,3X8,3', 164),
('Primus Junior Lectures', 'Sprookjes', 'Puss in Boots', '1 t/m 8', 'Ja orgineel', 'Compleet', '8,3X8,3', 165),
('Primus Junior Lectures', 'Sprookjes', 'Jack And The Beanstalk', '1 t/m 8', 'Ja orgineel', 'No.7 gescheurt', '8,3X8,3', 166),
('Primus Junior Lectures', 'Verhaal', 'Robinson Crusoe', '1 t/m 8', 'Ja orgineel', 'Compleet', '8,3X8,3', 167),
('Primus Junior Lectures', 'Fabels', 'Never Ride A Strange Horse', '1 t/m 8', 'Ja orgineel', 'Compleet (zit in licht bak)', '8,3X8,3', 168),
('Primus Junior Lectures', 'Verhaal', 'Our Firemen', '1 t/m 8', 'Ja orgineel  ', 'Compleet (zit in licht bak)', '8,3X8,3', 169),
('Primus Junior Lectures', 'Fabels', 'Where there\'s a Will There\'s a Way', '1 t/m 8', 'Ja orgineel ', 'Compleet (zit in licht bak)', '8,3X8,3', 170),
('geen reeks opgegeven', 'Verhaal', 'The Land Of The Pigtail', '1 t/m 12', 'Ja orgineel', 'Compleet (zit in licht bak)', '8,3X8,3', 171),
('Primus Junior Lectures', 'Fabels', 'Ten Little Nigger Boys', '1 t/m 8', 'Ja orgineel', 'Compleet (zit in licht bak)', '8,3X8,3', 172),
('Mickey Mouse', 'Strip verhaal', 'Mickey Mouse The Cactus Kid', '1 t/m 8', 'Ja orgineel ', 'Compleet (zit in licht bak)', '8,3X8,3', 173),
('Luttig\'s Lanternbilder', 'Verhaal', 'Ribinson Crusoe', '1 t/m 8', 'Ja Duits', 'Compleet in orgineel Duits doosje', '8,3X8,3', 174),
('Junior Lectures series', 'Rijm', 'Nursery Rhymes', '1 t/m 8', 'Ja orgineel', 'Compleet in appart doosje', '8,3X8,3', 175),
('geen reeks opgegeven', 'Sprookjes', 'De Gelaarsde Kat', '1 t/m 8', 'Ja niet org.', 'Compleet', '8,3X8,3', 176),
('Primus Junior Lectures', 'Commische', 'The Hony Stealers', '1 t/m 8', 'Ja orgineel', 'Compleet', '8,3X8,3', 177),
('Primus Junior Lectures', 'Verhaal', 'Uncle Tom\'s Cabin Chapter I', '1 t/m 8', 'Ja orgineel', 'Nr. 1 ontbreekt', '8,3X8,3', 178),
('Primus Junior Lectures', 'Verhaal', 'Uncle Tom\'s Cabin Chapter II', '9 t/m 16', 'Ja orgineel', 'Nr,10-13-15 ontbreken', '8,3X8,3', 179),
('Primus Junior Lectures', 'Sprookjes', 'The Babes In The Wood', '1 t/m 8', 'Ja orgineel', 'Nr. heeft scheurtje', '8,3X8,3', 180),
('Primus Junior Lectures', 'Sprookjes', 'The Thief of Bagdad', '1 t/m 8', 'nee', 'Compleet', '8,3X8,3', 181),
('Primus Junior Lectures', 'Sprookjes', 'Dick Whittington', '1 t/m 8', 'Ja orgineel', 'Compleet', '8,3X8,3', 182),
('Primus Junior Lectures', 'Sprookjes', 'Cinderella', '1 t/m 8', 'Ja orgineel', 'Compleet', '8,3X8,3', 183),
('Primus Junior Lectures', 'Verhaal', 'The Three Bears', '1 t/m 8', 'Ja orgineel', 'Compleet', '8,3X8,3', 184),
('Primus Junior Lectures', 'Sprookjes', 'Peter Pan Chapter III', '17 t/m 24', 'Ja orgineel', 'Compleet', '8,3X8,3', 185),
('Primus Junior Lectures', 'Fabels', 'The Elephant\'s Revenge', '1 t/m 8', 'Ja orgineel', 'Compleet', '8,3X8,3', 186),
('Primus Junior Lectures', 'Verhaal', 'Ten Little Nigger Boys', '1 t/m 8', 'Ja niet org.', 'Nr. 1 heeft scheurtje', '8,3X8,3', 187);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `gebruikers`
--
ALTER TABLE `gebruikers`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `platen`
--
ALTER TABLE `platen`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `gebruikers`
--
ALTER TABLE `gebruikers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `platen`
--
ALTER TABLE `platen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
