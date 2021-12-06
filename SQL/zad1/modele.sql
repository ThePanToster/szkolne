-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Czas generowania: 11 Wrz 2016, 15:55
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
-- Zrzut danych tabeli `modele`
--

INSERT INTO `modele` (`id`, `producent`, `nazwa`, `rocznik_pocz`, `rocznik_konc`, `data_wpisu`, `autor_wpisu`) VALUES
(1, 1, 'Corolla', 1966, NULL, '2015-01-01', 'ktc'),
(2, 2, 'Uno', 1983, 1995, '2015-01-02', 'ktc'),
(3, 3, 'Colt', 1978, 2012, '2015-01-03', 'ktc'),
(4, 4, 'Laguna', 1994, 2015, '2015-01-04', 'ktc'),
(5, 5, 'Saxo', 1996, 2003, '2015-01-05', 'ktc'),
(6, 6, '6', 2002, NULL, '2015-01-05', 'ktc'),
(7, 7, 'V40', 1995, NULL, '2015-01-04', 'ktc');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `modele`
--
-- ALTER TABLE `modele`
--  ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
