-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 29 Lis 2021, 09:25
-- Wersja serwera: 10.4.13-MariaDB
-- Wersja PHP: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `projekty`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pracownicy`
--

CREATE TABLE `pracownicy` (
  `NrIdent` varchar(4) NOT NULL,
  `Imie` varchar(15) DEFAULT NULL,
  `Nazwisko` varchar(25) DEFAULT NULL,
  `Kod` varchar(6) DEFAULT '38-400',
  `Miejscowosc` varchar(20) DEFAULT 'Krosno',
  `Adres` varchar(40) DEFAULT NULL,
  `Wojewodztwo` varchar(40) DEFAULT 'podkarpackie'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `pracownicy`
--

INSERT INTO `pracownicy` (`NrIdent`, `Imie`, `Nazwisko`, `Kod`, `Miejscowosc`, `Adres`, `Wojewodztwo`) VALUES
('A123', 'Ewa', 'Kowalska', '35-892', 'Rzeszow', 'Lesna 6/12', 'podkarpackie'),
('A124', 'Jan', 'Abacki', '33-612', 'Tarnow', 'Nowa 3/9', 'malopolskie'),
('A125', 'Piotr', 'Nowak', '23-241', 'Lublin', 'Zimowa 2/10', 'lubelskie'),
('A213', 'Adam', 'Jaworski', '35-279', 'Rzeszow', 'Rynek 2/12', 'podkarpackie'),
('A234', 'Maria', 'Janowska', '22-134', 'Zamosc', 'Warszawska 67/87', 'lubelskie'),
('A273', 'Edward', 'Janik', '35-000', 'Lancut', 'Sasanki 3', 'podkarpackie'),
('A274', 'Damian', 'Flis', '35-000', 'Strzyzow', 'Pilsudskiego 2/7', 'podkarpackie'),
('A283', 'Pawel', 'Fraczek', '33-077', 'Gorlice', 'Mickiewicza 4', 'malopolskie'),
('A284', 'Anna', 'Jacek', '35-000', 'Rzeszow', 'Lesna 5', 'podkarpackie'),
('A312', 'Wanda', 'Abacka', '35-734', 'Rzeszow', 'Bednarska 2/78', 'podkarpackie'),
('A313', 'Jakub', 'Cabacki', '56-142', 'Wroclaw', 'Hetmanska 3/12', 'dolnoslaskie'),
('A333', 'Stefan', 'Dabacki', '24-325', 'Lublin', 'Kochanowskiego 56/4', 'lubelskie'),
('A431', 'Antoni', 'Wilk', '85-000', 'Kielce', 'Wspolna 67/32', 'Swi?tokrzyskie'),
('A594', 'Barbara', 'Glinska', '34-000', 'Bochnia', 'Krucza 67/43', 'malopolskie'),
('A621', 'Krystyna', 'Zdulska', '36-010', 'Kolbuszowa', 'Wolnosci 7', 'podkarpackie'),
('A624', 'Grazyna', 'Wielicka', '05-056', 'Warszawa', 'Sobieskiego 4/1', 'mazowieckie'),
('A625', 'Henryk', 'Mazur', '35-000', 'Poznan', 'Krakowska 8/17', 'wielkopolskie'),
('A633', 'Monika', 'Tarska', '35-880', 'Rzeszow', 'Berlinga 2/6', 'podkarpackie'),
('A645', 'Ewa', 'Kalska', '35-000', 'Rzeszow', 'Slowackiego 12', 'podkarpackie'),
('A772', 'Joanna', 'Dabek', '35-000', 'Rzeszow', 'Warszawska 4/27', 'podkarpackie');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pracownicychar`
--

CREATE TABLE `pracownicychar` (
  `NrIdent` varchar(4) NOT NULL,
  `Wyksztalcenie` varchar(15) DEFAULT NULL,
  `StazPracy` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `pracownicychar`
--

INSERT INTO `pracownicychar` (`NrIdent`, `Wyksztalcenie`, `StazPracy`) VALUES
('A123', 'wyzsze', 5),
('A124', 'wyzsze', 4),
('A125', 'lic/inz.', 3),
('A213', 'wyzsze', 6),
('A234', 'wyzsze', 7),
('A273', 'lic/inz.', 5),
('A274', 'wyzsze', 8),
('A283', 'lic/inz.', 10),
('A284', 'lic/inz.', 2),
('A312', 'wyzsze', 13),
('A313', 'srednie', 2),
('A333', 'bd', 15),
('A431', 'wyzsze', 7),
('A594', 'srednie', 6),
('A621', 'wyzsze', 4),
('A624', 'lic/inz.', 6),
('A625', 'wyzsze', 9),
('A633', 'wyzsze', 5),
('A645', 'srednie', 8),
('A772', 'srednie', 18);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `przydzial`
--

CREATE TABLE `przydzial` (
  `Numer` int(11) NOT NULL,
  `Symbol` varchar(10) DEFAULT NULL,
  `NrIdent` varchar(4) DEFAULT NULL,
  `LiczbaGodzin` int(11) DEFAULT NULL,
  `Stawka` decimal(5,2) DEFAULT NULL,
  `KolPrzydzDoProj` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `przydzial`
--

INSERT INTO `przydzial` (`Numer`, `Symbol`, `NrIdent`, `LiczbaGodzin`, `Stawka`, `KolPrzydzDoProj`) VALUES
(1, 'P1', 'A123', 120, '20.00', '1'),
(2, 'P1', 'A124', 90, '15.00', '0'),
(3, 'P1', 'A772', 10, '5.00', '0'),
(4, 'P1', 'A633', 60, '18.00', '0'),
(5, 'P1', 'A633', 10, '9.00', '1'),
(6, 'P2', 'A123', 80, '16.50', '0'),
(7, 'P2', 'A312', 70, '27.50', '0'),
(8, 'P2', 'A431', 80, '33.00', '0'),
(9, 'P2', 'A633', 40, '24.20', '1'),
(10, 'P2', 'A772', 10, '8.80', '0'),
(11, 'S1', 'A772', 10, '10.00', '0'),
(12, 'S1', 'A624', 150, '17.00', '0'),
(13, 'S1', 'A625', 60, '30.00', '0'),
(14, 'S2', 'A284', 40, '25.00', '0'),
(15, 'S2', 'A283', 60, '32.00', '0'),
(16, 'S2', 'A772', 5, '12.00', '1'),
(17, 'S2', 'A431', 8, '20.00', '0'),
(18, 'S3', 'A273', 300, '25.00', '0'),
(19, 'S3', 'A274', 200, '27.00', '0'),
(20, 'S3', 'A772', 20, '10.00', '0'),
(21, 'S3', 'A213', 100, '20.00', '0'),
(22, 'U1', 'A125', 100, '17.00', '0'),
(23, 'U1', 'A621', 30, '17.00', '0'),
(24, 'U1', 'A772', 10, '10.00', '0'),
(25, 'Z2', 'A124', 10, '20.00', '0'),
(26, 'Z2', 'A431', 6, '25.00', '0'),
(27, 'Z2', 'A594', 30, '15.00', '0'),
(28, 'Z4', 'A594', 20, '12.00', '0'),
(29, 'Z4', 'A621', 10, '14.00', '0');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zadaniaprojekty`
--

CREATE TABLE `zadaniaprojekty` (
  `Symbol` varchar(10) NOT NULL,
  `Nazwa` varchar(100) DEFAULT NULL,
  `Dziedzina` varchar(30) DEFAULT NULL,
  `DataRozp` date DEFAULT NULL,
  `DataZakon` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `zadaniaprojekty`
--

INSERT INTO `zadaniaprojekty` (`Symbol`, `Nazwa`, `Dziedzina`, `DataRozp`, `DataZakon`) VALUES
('P1', 'Opracowanie planow na 2011 rok', 'zarzadzanie', '2010-01-01', '2010-11-30'),
('P2', 'Opracowanie strategii na lata 2012-2013', 'zarzadzanie', '2010-01-01', '2011-11-16'),
('S1', 'Przeprowadzenie szkolen z zakresu obslugi komputerow', 'szkolenie', '2010-02-15', '2010-10-15'),
('S2', 'Przeszkolenie pracownikow dzialu finansowego', 'szkolenie', '2010-02-20', '2010-06-29'),
('S3', 'Organizacja kursu jezyka angielskiego', 'szkolenie', '2010-01-01', '2010-12-31'),
('U1', 'Konserwacja i modernizacja systemu informacyjnego', 'informatyka', '2010-01-01', '2011-04-01'),
('Z1', 'Opracowanie planu dostaw sprzetu komputerowego', 'informatyka', '2010-02-24', '2010-12-31'),
('Z2', 'Dostawy materialow do produkcji w 2010 roku', 'zaopatrzenie', '2010-01-01', '2010-12-31'),
('Z3', 'Dostawy materialow do produkcji w 2011 roku', 'zaopatrzenie', '2011-01-01', '2011-12-31'),
('Z4', 'Przygotowanie przetargu na dostawe materialow biurowych', 'zaopatrzenie', '2010-01-01', '2010-12-31');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `pracownicy`
--
ALTER TABLE `pracownicy`
  ADD PRIMARY KEY (`NrIdent`);

--
-- Indeksy dla tabeli `pracownicychar`
--
ALTER TABLE `pracownicychar`
  ADD PRIMARY KEY (`NrIdent`);

--
-- Indeksy dla tabeli `przydzial`
--
ALTER TABLE `przydzial`
  ADD PRIMARY KEY (`Numer`),
  ADD KEY `Symbol` (`Symbol`),
  ADD KEY `NrIdent` (`NrIdent`);

--
-- Indeksy dla tabeli `zadaniaprojekty`
--
ALTER TABLE `zadaniaprojekty`
  ADD PRIMARY KEY (`Symbol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
