-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 01 Gru 2021, 11:05
-- Wersja serwera: 10.4.20-MariaDB
-- Wersja PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `sprawdzian`
--
CREATE DATABASE IF NOT EXISTS `sprawdzian` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sprawdzian`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kursy`
--

CREATE TABLE `kursy` (
  `id_kurs` int(11) NOT NULL,
  `kurs` decimal(6,4) NOT NULL,
  `data` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `kursy`
--

INSERT INTO `kursy` (`id_kurs`, `kurs`, `data`) VALUES
(1, '0.9999', '2021-12-29 00:00:00'),
(2, '0.9999', '2021-12-01 10:32:47'),
(3, '0.9999', '2021-12-01 10:33:41'),
(4, '0.9999', '2021-12-01 10:33:53'),
(5, '0.9999', '2021-12-01 10:34:50'),
(6, '0.9999', '2021-12-01 10:35:25'),
(7, '0.9999', '2021-12-01 10:36:02'),
(8, '0.9999', '2021-12-01 10:36:22'),
(9, '0.9999', '2021-12-01 10:37:13'),
(10, '0.9999', '2021-12-01 10:37:34'),
(11, '6.8097', '2021-12-01 10:39:36'),
(12, '2.0900', '2021-12-01 10:40:21'),
(13, '2.0900', '2021-12-01 10:42:37'),
(14, '2.0900', '2021-12-01 10:42:56'),
(15, '4.0000', '2021-12-01 10:43:12'),
(16, '9.9998', '2021-11-03 00:00:00');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `kursy`
--
ALTER TABLE `kursy`
  ADD PRIMARY KEY (`id_kurs`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `kursy`
--
ALTER TABLE `kursy`
  MODIFY `id_kurs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
