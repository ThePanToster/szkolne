-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Czas generowania: 05 Wrz 2016, 22:40
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


--
-- Zrzut danych tabeli `samochody`
--

INSERT INTO `samochody` (`id`, `model`, `rocznik`, `wartosc`, `tablica`, `przebieg`, `silnik`, `data_wpisu`, `autor_wpisu`) VALUES
(1, 3, 2011, '48000', 'CTR123G', 90000, 'D', '2015-01-01', 'ktc'),
(2, 1, 2003, NULL, 'ctr987D', 290000, 'BG', '2015-01-14', 'ktc'),
(3, 1, 2007, '18000', 'Ctr6H7C', 240000, 'B', '2015-02-10', 'ibn'),
(4, NULL, 2006, '5000', 'CT09876', 310000, 'B', '2015-02-10', 'ibn'),
(5, 2, 2006, '22000', 'ct68790', 289000, 'D', '2015-03-05', 'ktc'),
(6, 1, 2010, '41000', 'By21340', 98000, 'B', '2015-02-10', 'ktc'),
(7, 2, 2000, '33000', 'by76098', 137000, 'BG', '2015-01-29', 'ktc');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `samochody`
--
-- ALTER TABLE `samochody`
--  ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
