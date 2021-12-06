-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Czas generowania: 05 Wrz 2016, 23:40
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
-- Zrzut danych tabeli `producenci`
--

INSERT INTO `producenci` (`id`, `nazwa`, `data_wpisu`, `autor_wpisu`) VALUES
(1, 'Toyota', '2015-01-01', 'ktc'),
(2, 'Fiat', '2015-01-02', 'ktc'),
(3, 'Mitsubishi', '2015-01-03', 'ktc'),
(4, 'Renault', '2015-01-04', 'ktc'),
(5, 'Citroen', '2015-01-05', 'ktc'),
(6, 'Mazda', '2015-01-05', 'ktc'),
(7, 'Volvo', '2015-01-04', 'ktc');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `producenci`
--
-- ALTER TABLE `producenci`
--  ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
