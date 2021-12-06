-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Czas generowania: 05 Wrz 2016, 22:32
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
-- Zrzut danych tabeli `rejestry`
--

INSERT INTO `rejestry` (`id`, `operacja`, `klient`, `samochod`, `kwota`, `data_wpisu`, `autor_wpisu`) VALUES
(1, 2, 3, 1, '45000', '2015-03-01', 'ktc'),
(2, 1, 2, 2, '13000', '2015-01-14', 'ktc'),
(3, 2, 1, 3, '15000', '2015-02-10', 'ibn');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `rejestry`
--
-- ALTER TABLE `rejestry`
--  ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
