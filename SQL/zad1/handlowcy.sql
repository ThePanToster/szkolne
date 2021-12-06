-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Czas generowania: 05 Wrz 2016, 22:17
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
-- Zrzut danych tabeli `handlowcy`
--

INSERT INTO `handlowcy` (`login`, `imie`, `nazwisko`, `email`, `data_wpisu`, `autor_wpisu`) VALUES
('ibn', 'Ilona', 'Nowosad', 'ibn@komis.eu', '2010-09-01', 'ibn'),
('ktc', 'Krzysztof', 'Czarkowski', 'ktc@komis.eu', '2010-09-02', 'ktc'),
('agam', 'Agata', 'Miastek', 'agam@komis.eu', '2014-02-07', 'agam');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
