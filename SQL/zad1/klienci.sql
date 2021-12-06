-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Czas generowania: 11 Wrz 2016, 17:14
-- Wersja serwera: 10.1.16-MariaDB
-- Wersja PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `komis`
--

-- --------------------------------------------------------


--
-- Zrzut danych tabeli `klienci`
--

INSERT INTO `klienci` (`id`, `nazwa`, `adres`, `data_wpisu`, `autor_wpisu`) VALUES
(1, 'Dziadosz Adam', 'Kolejowa 1 38-400 Krosno', '2015-01-01', 'ktc'),
(2, 'Daszyński Jan', 'Krakowska 1 38-400 Krosno', '2015-01-02', 'ibn'),
(3, 'Nowak Andrzej', 'Wetlińska 10 35-082 Rzeszów', '2015-01-03', 'ktc'),
(4, 'Kowalski Jan', 'Klonowa 5 35-205 Rzeszów', '2015-01-04', 'ibn');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `klienci`
--
-- ALTER TABLE `klienci`
--  ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
