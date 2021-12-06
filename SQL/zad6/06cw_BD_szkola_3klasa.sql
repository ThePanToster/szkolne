-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 09 Cze 2019, 22:53
-- Wersja serwera: 10.1.30-MariaDB
-- Wersja PHP: 7.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `szkola_3klasa`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klasy`
--

CREATE TABLE `klasy` (
  `id_klasy` int(11) NOT NULL,
  `nazwa_klasy` char(10) COLLATE utf8_polish_ci NOT NULL,
  `specjalizacja` varchar(30) COLLATE utf8_polish_ci DEFAULT NULL,
  `id_nauczyciela` int(11) DEFAULT NULL,
  `rok_szkolny` char(9) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `klasy`
--

INSERT INTO `klasy` (`id_klasy`, `nazwa_klasy`, `specjalizacja`, `id_nauczyciela`, `rok_szkolny`) VALUES
(1, '1al', 'językowa', 1, ''),
(2, '1bl', 'geograficzna', 2, ''),
(3, '2al', 'językowa', 3, ''),
(4, '2bl', 'geograficzna', 4, ''),
(5, '3al', 'językowa', 5, ''),
(6, '3bl', 'geograficzna', 6, ''),
(7, '1abwt', 'technik elektryk', 7, ''),
(8, '1ct', 'technik informatyk', 8, ''),
(9, '2abwt', 'technik elektryk', 9, ''),
(10, '2ct', 'technik informatyk', 10, ''),
(11, '3abwt', 'technik elektryk', 11, ''),
(12, '3ct', 'technik informatyk', 12, ''),
(13, '4abwt', 'technik elektryk', 13, ''),
(14, '4ct', 'technik informatyk', 14, ''),
(15, '1dt', 'technik automatyk', NULL, NULL),
(16, '1gt', 'technik programista', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `nauczyciele`
--

CREATE TABLE `nauczyciele` (
  `id_nauczyciela` int(11) NOT NULL,
  `nazwisko` varchar(50) COLLATE utf8_polish_ci DEFAULT NULL,
  `imie` varchar(50) COLLATE utf8_polish_ci DEFAULT NULL,
  `data_urodzenia` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `nauczyciele`
--

INSERT INTO `nauczyciele` (`id_nauczyciela`, `nazwisko`, `imie`, `data_urodzenia`) VALUES
(1, 'mrozek', 'Iwona', '1960-01-01'),
(2, 'zawadzka', 'katarzyna', '1961-02-02'),
(3, 'zajdel', 'jolanta', '1963-03-03'),
(4, 'piotrowska', 'magdalena', '1964-04-04'),
(5, 'nowak', 'łucja', '1965-05-05'),
(6, 'rajchel', 'alicja', '1966-06-06'),
(7, 'przybyła', 'luiza', '1967-07-07'),
(8, 'machnik', 'katarzyna', '1974-08-08'),
(9, 'sałata', 'mariusz', '1975-09-09'),
(10, 'dziadosz', 'joanna', '1976-10-10'),
(11, 'wójcik', 'natalia', '1977-11-11'),
(12, 'kowalski', 'marek', '1978-12-12'),
(13, 'jabłońska', 'małgorzata', '1979-01-01'),
(14, 'pawłowska', 'ilona', '1980-01-01');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oceny`
--

CREATE TABLE `oceny` (
  `id_oceny` int(11) NOT NULL,
  `id_ucznia` int(11) NOT NULL,
  `id_nauczyciela` int(11) NOT NULL,
  `id_rodzaj_oceny` int(11) NOT NULL,
  `id_przedmiotu` int(11) NOT NULL,
  `ocena` char(2) COLLATE utf8_polish_ci NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `oceny`
--

INSERT INTO `oceny` (`id_oceny`, `id_ucznia`, `id_nauczyciela`, `id_rodzaj_oceny`, `id_przedmiotu`, `ocena`, `data`) VALUES
(1, 33, 6, 4, 9, '1', '2017-09-15'),
(2, 49, 12, 2, 7, '2', '2017-09-16'),
(3, 15, 1, 2, 8, '3', '2017-09-17'),
(4, 40, 4, 3, 3, '4', '2017-09-18'),
(5, 69, 2, 2, 9, '5', '2017-09-19'),
(6, 25, 11, 4, 3, '6', '2017-09-20'),
(7, 15, 11, 3, 2, '1', '2017-09-21'),
(8, 22, 10, 2, 4, '2', '2017-09-22'),
(9, 22, 12, 1, 9, '3', '2017-09-23'),
(10, 71, 11, 2, 3, '4', '2017-09-24'),
(11, 58, 11, 3, 8, '5', '2017-09-25'),
(12, 65, 1, 2, 7, '6', '2017-09-26'),
(13, 67, 14, 1, 5, '1', '2017-09-27'),
(14, 59, 12, 3, 5, '2', '2017-09-28'),
(15, 28, 10, 2, 9, '3', '2017-09-29'),
(16, 49, 4, 3, 6, '4', '2017-09-30'),
(17, 67, 10, 4, 2, '5', '2017-10-01'),
(18, 43, 7, 4, 2, '6', '2017-10-02'),
(19, 50, 2, 4, 3, '1', '2017-10-03'),
(20, 60, 12, 4, 8, '2', '2017-10-04'),
(21, 49, 10, 2, 7, '3', '2017-10-05'),
(22, 38, 10, 3, 10, '4', '2017-10-06'),
(23, 27, 6, 2, 2, '5', '2017-10-07'),
(24, 32, 6, 2, 10, '6', '2017-10-08'),
(25, 51, 10, 3, 7, '1', '2017-10-09'),
(26, 60, 13, 4, 9, '2', '2017-10-10'),
(27, 18, 7, 3, 7, '3', '2017-10-11'),
(28, 37, 8, 2, 3, '4', '2017-10-12'),
(29, 64, 3, 4, 4, '5', '2017-10-13'),
(30, 59, 3, 3, 9, '6', '2017-10-14'),
(31, 10, 7, 2, 8, '1', '2017-10-15'),
(32, 16, 9, 1, 3, '2', '2017-10-16'),
(33, 14, 11, 2, 2, '3', '2017-10-17'),
(34, 64, 3, 1, 7, '4', '2017-10-18'),
(35, 29, 11, 3, 9, '5', '2017-10-19'),
(36, 30, 3, 4, 10, '6', '2017-10-20'),
(37, 62, 4, 1, 6, '1', '2017-10-21'),
(38, 26, 2, 3, 8, '2', '2017-10-22'),
(39, 20, 11, 3, 8, '3', '2017-10-23'),
(40, 11, 14, 2, 5, '4', '2017-10-24'),
(41, 10, 8, 2, 3, '5', '2017-10-25'),
(42, 54, 4, 3, 5, '6', '2017-10-26'),
(43, 31, 4, 3, 5, '1', '2017-10-27'),
(44, 36, 9, 3, 9, '2', '2017-10-28'),
(45, 45, 12, 4, 5, '3', '2017-10-29'),
(46, 25, 9, 2, 10, '4', '2017-10-30'),
(47, 35, 4, 2, 4, '5', '2017-10-31'),
(48, 18, 9, 2, 1, '6', '2017-11-01'),
(49, 16, 4, 2, 4, '1', '2017-11-02'),
(50, 27, 12, 2, 3, '2', '2017-11-03'),
(51, 58, 9, 3, 3, '3', '2017-11-04'),
(52, 53, 5, 2, 4, '4', '2017-11-05'),
(53, 15, 4, 4, 7, '5', '2017-11-06'),
(54, 40, 7, 2, 6, '6', '2017-11-07'),
(55, 22, 13, 1, 8, '1', '2017-11-08'),
(56, 21, 9, 1, 5, '2', '2017-11-09'),
(57, 22, 12, 1, 5, '3', '2017-11-10'),
(58, 16, 8, 1, 9, '4', '2017-11-11'),
(59, 56, 14, 3, 6, '5', '2017-11-12'),
(60, 55, 2, 1, 7, '6', '2017-11-13'),
(61, 47, 1, 4, 2, '1', '2017-11-14'),
(62, 46, 7, 3, 5, '2', '2017-11-15'),
(63, 67, 1, 1, 9, '3', '2017-11-16'),
(64, 42, 12, 1, 4, '4', '2017-11-17'),
(65, 9, 13, 1, 7, '5', '2017-11-18'),
(66, 22, 14, 2, 5, '6', '2017-11-19'),
(67, 48, 12, 1, 8, '1', '2017-11-20'),
(68, 7, 12, 3, 3, '2', '2017-11-21'),
(69, 38, 7, 2, 1, '3', '2017-11-22'),
(70, 59, 4, 2, 7, '4', '2017-11-23'),
(71, 60, 13, 2, 5, '5', '2017-11-24'),
(72, 38, 6, 4, 5, '6', '2017-11-25'),
(73, 23, 4, 4, 6, '1', '2017-11-26'),
(74, 39, 6, 1, 10, '2', '2017-11-27'),
(75, 66, 7, 3, 5, '3', '2017-11-28'),
(76, 6, 14, 3, 8, '4', '2017-11-29'),
(77, 43, 9, 3, 8, '5', '2017-11-30'),
(78, 15, 14, 1, 3, '6', '2017-12-01'),
(79, 36, 5, 2, 4, '1', '2017-12-02'),
(80, 42, 8, 3, 8, '2', '2017-12-03'),
(81, 15, 9, 4, 10, '3', '2017-12-04'),
(82, 42, 7, 4, 2, '4', '2017-12-05'),
(83, 1, 5, 3, 3, '5', '2017-12-06'),
(84, 56, 14, 4, 9, '6', '2017-12-07'),
(85, 24, 7, 1, 6, '1', '2017-12-08'),
(86, 31, 9, 1, 8, '2', '2017-12-09'),
(87, 43, 3, 1, 4, '3', '2017-12-10'),
(88, 52, 5, 2, 3, '4', '2017-12-11'),
(89, 64, 11, 2, 6, '5', '2017-12-12'),
(90, 70, 9, 3, 9, '6', '2017-12-13'),
(91, 8, 11, 3, 8, '1', '2017-12-14'),
(92, 27, 14, 2, 3, '2', '2017-12-15'),
(93, 71, 9, 1, 7, '3', '2017-12-16'),
(94, 27, 8, 1, 3, '4', '2017-12-17'),
(95, 70, 7, 2, 8, '5', '2017-12-18'),
(96, 62, 12, 2, 2, '6', '2017-12-19'),
(97, 38, 2, 4, 9, '1', '2017-12-20'),
(98, 60, 12, 3, 6, '2', '2017-12-21'),
(99, 8, 8, 3, 6, '3', '2017-12-22'),
(100, 45, 14, 4, 7, '4', '2017-12-23');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `przedmioty`
--

CREATE TABLE `przedmioty` (
  `id_przedmiotu` int(11) NOT NULL,
  `nazwa` varchar(100) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `przedmioty`
--

INSERT INTO `przedmioty` (`id_przedmiotu`, `nazwa`) VALUES
(1, 'język polski'),
(2, 'matematyka'),
(3, 'fizyka'),
(4, 'chemia'),
(5, 'informatyka'),
(6, 'bazy danych'),
(7, 'systemy operacyjne'),
(8, 'sieciowe systemy operacyjne'),
(9, 'aplikacje internetowe'),
(10, 'sieci komputerowe');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rodzaje_ocen`
--

CREATE TABLE `rodzaje_ocen` (
  `id_rodzaj_oceny` int(11) NOT NULL,
  `nazwa` varchar(50) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `rodzaje_ocen`
--

INSERT INTO `rodzaje_ocen` (`id_rodzaj_oceny`, `nazwa`) VALUES
(1, 'semestralna'),
(2, 'sprawdzian'),
(3, 'kartkówka'),
(4, 'odpowiedź ustna');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uczniowie`
--

CREATE TABLE `uczniowie` (
  `id_ucznia` int(11) NOT NULL,
  `nazwisko` varchar(50) COLLATE utf8_polish_ci DEFAULT NULL,
  `imie` varchar(50) COLLATE utf8_polish_ci DEFAULT NULL,
  `miejscowosc` varchar(50) COLLATE utf8_polish_ci DEFAULT NULL,
  `ulica` varchar(50) COLLATE utf8_polish_ci DEFAULT NULL,
  `nr_domu` varchar(50) COLLATE utf8_polish_ci DEFAULT NULL,
  `data_urodzenia` date DEFAULT NULL,
  `plec` char(1) COLLATE utf8_polish_ci NOT NULL,
  `dat_rozp_nauki` date DEFAULT NULL,
  `miejsce_urodzenia` varchar(50) COLLATE utf8_polish_ci DEFAULT NULL,
  `id_klasy` int(11) DEFAULT NULL,
  `koniec_nauki` tinyint(4) DEFAULT NULL,
  `notatki_o_uczniu` text COLLATE utf8_polish_ci,
  `zdjecie` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `uczniowie`
--

INSERT INTO `uczniowie` (`id_ucznia`, `nazwisko`, `imie`, `miejscowosc`, `ulica`, `nr_domu`, `data_urodzenia`, `plec`, `dat_rozp_nauki`, `miejsce_urodzenia`, `id_klasy`, `koniec_nauki`, `notatki_o_uczniu`, `zdjecie`) VALUES
(1, 'Kowalski', 'Adrian', 'krosno', 'Dąbrowskiego', '12', '1999-12-12', 'M', '2017-10-06', 'Rzeszów', 1, 0, '', ''),
(2, 'Moskal', 'Konrad', 'rzeszów', 'Paderewskiego', '69', '2000-10-23', 'M', '2017-10-06', 'Strzyżów', 1, 0, '', ''),
(3, 'Kiebała', 'Paweł', 'brzozów', 'Rejtana', '34', '1999-12-31', 'M', '2017-10-06', 'Krosno', 1, 0, '', ''),
(4, 'Wilk', 'Konrad', 'brzozów', 'Wyspiańskiego', '34', '2003-12-06', 'M', '2017-10-06', 'Rzeszów', 1, 0, '', ''),
(5, 'Kiełtyka', 'Patryk', 'rzeszów', 'Podkarpacka', '65', '2001-11-30', 'M', '2017-10-06', 'Strzyżów', 1, 0, '', ''),
(6, 'Warchoł', 'Ola', 'sanok', 'Gortretta', '56', '2003-12-06', 'K', '2017-10-06', 'Rzeszów', 2, 0, '', ''),
(7, 'Zimny', 'magda', 'sanok', 'Rejtana', '76', '1999-12-12', 'K', '2017-10-06', 'Rzeszów', 2, 0, '', ''),
(8, 'Wójtowicz', 'Basia', 'krosno', 'Paderewskiego', '65', '2000-10-23', 'K', '2017-10-06', 'Strzyżów', 2, 0, '', ''),
(9, 'Kucab', 'Karolina', 'lesko', 'Wyspiańskiego', '45', '1999-12-31', 'K', '2017-10-06', 'Krosno', 2, 0, '', ''),
(10, 'Poprawa', 'Adam', 'lesko', 'Rejtana', '34', '2001-11-30', 'M', '2017-10-06', 'Strzyżów', 2, 0, '', ''),
(11, 'Jaworski', 'igor', 'lesko', 'Dąbrowskiego', '87', '1999-12-12', 'M', '2017-10-06', 'Rzeszów', 3, 0, '', ''),
(12, 'Kut', 'łukasz', 'rzeszów', 'Wyspiańskiego', '567', '2000-10-23', 'M', '2017-10-06', 'Strzyżów', 3, 0, '', ''),
(13, 'Bem', 'Mateusz', 'sanok', 'Paderewskiego', '567', '1999-12-31', 'M', '2017-10-06', 'Rzeszów', 3, 0, '', ''),
(14, 'Ćwiklik', 'dominik', 'sanok', 'Rejtana', '897', '2003-12-06', 'M', '2017-10-06', 'Strzyżów', 3, 0, '', ''),
(15, 'Kwiatkowski', 'mariola', 'sanok', 'Wyspiańskiego', '567', '1999-12-12', 'K', '2017-10-06', 'Krosno', 3, 0, '', ''),
(16, 'Majcher', 'magda', 'krosno', 'Dąbrowskiego', '45', '1999-10-23', 'K', '2017-10-06', 'Strzyżów', 4, 0, '', ''),
(17, 'Czech', 'mateusz', 'brzozów', 'Rejtana', '67', '2000-12-31', 'M', '2017-10-06', 'Rzeszów', 4, 0, '', ''),
(18, 'Lepak', 'patryk', 'krosno', 'Wyspiańskiego', '54', '2003-12-06', 'M', '2017-10-06', 'Strzyżów', 4, 0, '', ''),
(19, 'Pelczar', 'konrad', 'brzozów', 'Paderewskiego', '43', '2003-12-06', 'M', '2017-10-06', 'Rzeszów', 4, 0, '', ''),
(20, 'Żak', 'ola', 'rzeszów', 'Rejtana', '76', '1999-12-12', 'K', '2017-10-06', 'Krosno', 4, 0, '', ''),
(21, 'Ogorzałek', 'magda', 'mielec', 'Dąbrowskiego', '87', '1999-10-23', 'K', '2017-10-06', 'Strzyżów', 5, 0, '', ''),
(22, 'Leś', 'Paweł', 'mielec', 'Rejtana', '65', '2000-12-31', 'M', '2017-10-06', 'Rzeszów', 5, 0, '', ''),
(23, 'bazylak', 'dominik', 'mielec', 'Wyspiańskiego', '34', '2001-11-30', 'M', '2017-10-06', 'Strzyżów', 5, 0, '', ''),
(24, 'Borkowska', 'magda', 'mielec', 'Dąbrowskiego', '76', '1999-12-31', 'K', '2017-10-06', 'Rzeszów', 5, 0, '', ''),
(25, 'Irzyk', 'ola', 'mielec', 'Paderewskiego', '54', '2003-12-06', 'K', '2017-10-06', 'Strzyżów', 5, 0, '', ''),
(26, 'hadam', 'emilka', 'krosno', 'Rejtana', '43', '1999-12-12', 'K', '2017-10-06', 'Rzeszów', 6, 0, '', ''),
(27, 'rybka', 'ada', 'jasło', 'Dąbrowskiego', '87', '2000-10-23', 'K', '2017-10-06', 'Krosno', 6, 0, '', ''),
(28, 'małek', 'łukasz', 'brzozów', 'Paderewskiego', '54', '2001-11-30', 'M', '2017-10-06', 'Strzyżów', 6, 0, '', ''),
(29, 'kruczek', 'konrad', 'rzeszów', 'Rejtana', '67', '1999-12-31', 'M', '2017-10-06', 'Rzeszów', 6, 0, '', ''),
(30, 'Gugała', 'patryk', 'mielec', 'Wyspiańskiego', '45', '2003-12-06', 'M', '2017-10-06', 'Krosno', 6, 0, '', ''),
(31, 'Turoń', 'mateusz', 'lesko', 'Dąbrowskiego', '76', '1999-12-12', 'M', '2017-10-06', 'Strzyżów', 7, 0, '', ''),
(32, 'midura', 'łukasz', 'lesko', 'Paderewskiego', '54', '1999-10-23', 'M', '2017-10-06', 'Krosno', 7, 0, '', ''),
(33, 'kawa', 'patryk', 'krosno', 'Wyspiańskiego', '76', '1999-12-31', 'M', '2017-10-06', 'Rzeszów', 7, 0, '', ''),
(34, 'basamania', 'dominik', 'lesko', 'Rejtana', '98', '1999-12-12', 'M', '2017-10-06', 'Rzeszów', 7, 0, '', ''),
(35, 'chmiel', 'łukasz', 'lesko', 'Wyspiańskiego', '64', '1999-10-23', 'M', '2017-10-06', 'Strzyżów', 7, 0, '', ''),
(36, 'stączek', 'patryk', 'jasło', 'Dąbrowskiego', '34', '2001-11-30', 'M', '2017-10-06', 'Krosno', 8, 0, '', ''),
(37, 'kolbusz', 'ola', 'rzeszów', 'Paderewskiego', '65', '1999-12-12', 'K', '2017-10-06', 'Rzeszów', 8, 0, '', ''),
(38, 'mazur', 'dominik', 'lesko', 'Rejtana', '67', '2001-11-30', 'M', '2017-10-06', 'Strzyżów', 8, 0, '', ''),
(39, 'gulek', 'dominika', 'lesko', 'Wyspiańskiego', '345', '1999-12-31', 'K', '2017-10-06', 'Rzeszów', 8, 0, '', ''),
(40, 'rusin', 'ela', 'rzeszów', 'Rejtana', '43', '2001-11-30', 'K', '2017-10-06', 'Krosno', 8, 0, '', ''),
(41, 'cisek', 'mariola', 'jasło', 'Wyspiańskiego', '76', '1999-12-12', 'K', '2017-10-06', 'Rzeszów', 9, 0, '', ''),
(42, 'pierzchała', 'patrycja', 'mielec', 'Dąbrowskiego', '54', '2003-12-06', 'K', '2017-10-06', 'Rzeszów', 9, 0, '', ''),
(43, 'węgrzyn', 'paulina', 'mielec', 'Paderewskiego', '34', '1999-10-23', 'K', '2017-10-06', 'Strzyżów', 9, 0, '', ''),
(44, 'rybka', 'dominika', 'mielec', 'Dąbrowskiego', '76', '2003-12-06', 'K', '2017-10-06', 'Krosno', 9, 0, '', ''),
(45, 'dziadek', 'asia', 'krosno', 'Rejtana', '54', '1999-12-31', 'K', '2017-10-06', 'Rzeszów', 9, 0, '', ''),
(46, 'barsznica', 'ania', 'lesko', 'Wyspiańskiego', '76', '2001-11-30', 'K', '2017-10-06', 'Strzyżów', 10, 0, '', ''),
(47, 'kozimor', 'paweł', 'sanok', 'Paderewskiego', '4', '1999-12-12', 'M', '2017-10-06', 'Rzeszów', 10, 0, '', ''),
(48, 'gorczyca', 'robert', 'sanok', 'Dąbrowskiego', '65', '2003-12-06', 'M', '2017-10-06', 'Krosno', 10, 0, '', ''),
(49, 'więch', 'piotr', 'rzeszów', 'Paderewskiego', '87', '2001-11-30', 'M', '2017-10-06', 'Strzyżów', 10, 0, '', ''),
(50, 'strzępek', 'michał', 'brzozów', 'Rejtana', '98', '1999-12-12', 'M', '2017-10-06', 'Rzeszów', 10, 0, '', ''),
(51, 'wójcik', 'maciek', 'jasło', 'Dąbrowskiego', '76', '1999-12-31', 'M', '2017-10-06', 'Rzeszów', 11, 0, '', ''),
(52, 'szetela', 'robert', 'brzozów', 'Rejtana', '54', '1999-10-23', 'M', '2017-10-06', 'Rzeszów', 11, 0, '', ''),
(53, 'podsiadło', 'konrad', 'brzozów', 'Paderewskiego', '43', '1999-12-12', 'M', '2017-10-06', 'Krosno', 11, 0, '', ''),
(54, 'kut', 'łukasz', 'jasło', 'Wyspiańskiego', '23', '1999-12-31', 'M', '2017-10-06', 'Strzyżów', 11, 0, '', ''),
(55, 'rysz', 'paweł', 'sanok', 'Paderewskiego', '54', '1999-10-23', 'M', '2017-10-06', 'Rzeszów', 11, 0, '', ''),
(56, 'gierus', 'magda', 'sanok', 'Dąbrowskiego', '2', '1999-12-12', 'K', '2017-10-06', 'Krosno', 12, 0, '', ''),
(57, 'sucharski', 'emilka', 'sanok', 'Wyspiańskiego', '43', '1999-12-31', 'K', '2017-10-06', 'Rzeszów', 12, 0, '', ''),
(58, 'matłosz', 'magda', 'lesko', 'Paderewskiego', '54', '1999-12-12', 'K', '2017-10-06', 'Rzeszów', 12, 0, '', ''),
(59, 'łojek', 'paweł', 'rzeszów', 'Wyspiańskiego', '65', '2003-12-06', 'M', '2017-10-06', 'Strzyżów', 12, 0, '', ''),
(60, 'machoń', 'patryk', 'rzeszów', 'Dąbrowskiego', '43', '2003-12-06', 'M', '2017-10-06', 'Krosno', 12, 0, '', ''),
(61, 'wilusz', 'mariola', 'rzeszów', 'Paderewskiego', '4', '1999-12-12', 'K', '2017-10-06', 'Rzeszów', 13, 0, '', ''),
(62, 'orgasiński', 'piotr', 'rzeszów', 'Wyspiańskiego', '543', '1999-12-31', 'M', '2017-10-06', 'Strzyżów', 13, 0, '', ''),
(63, 'matłosz', 'konrad', 'jasło', 'Dąbrowskiego', '43', '2001-11-30', 'M', '2017-10-06', 'Rzeszów', 13, 0, '', ''),
(64, 'oparowski', 'ola', 'rzeszów', 'Paderewskiego', '32', '1999-12-12', 'K', '2017-10-06', 'Krosno', 13, 0, '', ''),
(65, 'batóg', 'magda', 'rzeszów', 'Wyspiańskiego', '564', '1999-12-31', 'K', '2017-10-06', 'Strzyżów', 13, 0, '', ''),
(66, 'bożek', 'paweł', 'rzeszów', 'Podkarpacka', '32', '1999-10-23', 'M', '2017-10-06', 'Krosno', 13, 0, '', ''),
(67, 'urban', 'piotr', 'rzeszów', 'Paderewskiego', '54', '2003-12-06', 'M', '2017-10-06', 'Rzeszów', 14, 0, '', ''),
(68, 'bałabas', 'dominik', 'lesko', 'Wyspiańskiego', '32', '1999-12-31', 'M', '2017-10-06', 'Rzeszów', 14, 0, '', ''),
(69, 'dziura', 'dominika', 'jasło', 'Dąbrowskiego', '54', '1999-12-12', 'K', '2017-10-06', 'Rzeszów', 14, 0, '', ''),
(70, 'zięba', 'robert', 'sanok', 'Paderewskiego', '43', '1999-10-23', 'M', '2017-10-06', 'Rzeszów', 14, 0, '', ''),
(71, 'król', 'jan', 'brzozów', 'Jasna', '11', '1999-10-10', 'M', '2017-10-06', 'Strzyżów', 14, 0, '', ''),
(72, 'lula', 'anna', 'jasło', 'Długa', '1', '1999-11-11', 'K', '2017-10-06', 'Jasło', 14, 0, '', ''),
(73, 'Abacki', 'Jan', 'Jedlicze', 'Polna', '1', '2003-06-20', 'M', NULL, NULL, NULL, NULL, NULL, NULL),
(74, 'Głowacki', 'Adam', 'Strzyżów', 'Kwiatowa', '6', '2003-10-02', 'M', NULL, NULL, NULL, NULL, NULL, NULL),
(75, 'Abakowska', 'Zofia', 'Wiśniowa', 'Jagodowa', '3', '2003-02-03', 'K', NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `klasy`
--
ALTER TABLE `klasy`
  ADD PRIMARY KEY (`id_klasy`);

--
-- Indexes for table `nauczyciele`
--
ALTER TABLE `nauczyciele`
  ADD PRIMARY KEY (`id_nauczyciela`);

--
-- Indexes for table `oceny`
--
ALTER TABLE `oceny`
  ADD PRIMARY KEY (`id_oceny`);

--
-- Indexes for table `przedmioty`
--
ALTER TABLE `przedmioty`
  ADD PRIMARY KEY (`id_przedmiotu`);

--
-- Indexes for table `rodzaje_ocen`
--
ALTER TABLE `rodzaje_ocen`
  ADD PRIMARY KEY (`id_rodzaj_oceny`);

--
-- Indexes for table `uczniowie`
--
ALTER TABLE `uczniowie`
  ADD PRIMARY KEY (`id_ucznia`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `klasy`
--
ALTER TABLE `klasy`
  MODIFY `id_klasy` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT dla tabeli `nauczyciele`
--
ALTER TABLE `nauczyciele`
  MODIFY `id_nauczyciela` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT dla tabeli `oceny`
--
ALTER TABLE `oceny`
  MODIFY `id_oceny` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT dla tabeli `przedmioty`
--
ALTER TABLE `przedmioty`
  MODIFY `id_przedmiotu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `rodzaje_ocen`
--
ALTER TABLE `rodzaje_ocen`
  MODIFY `id_rodzaj_oceny` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `uczniowie`
--
ALTER TABLE `uczniowie`
  MODIFY `id_ucznia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
