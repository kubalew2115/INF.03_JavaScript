-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 04 Mar 2025, 10:20
-- Wersja serwera: 10.4.27-MariaDB
-- Wersja PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `kawiarnia`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kawa`
--

CREATE TABLE `kawa` (
  `Id_kawy` int(1) DEFAULT NULL,
  `rodzaj_kawy` varchar(15) DEFAULT NULL,
  `cena` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Zrzut danych tabeli `kawa`
--

INSERT INTO `kawa` (`Id_kawy`, `rodzaj_kawy`, `cena`) VALUES
(1, 'Lungo americano', '9,00 zł'),
(2, 'Macchiato', '7,00 zł'),
(3, 'Cappuccino', '7,00 zł'),
(4, 'Espresso', '8,00 zł'),
(5, 'Caffe latte', '12,00 zł'),
(6, 'Mocha', '13,00 zł');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klient`
--

CREATE TABLE `klient` (
  `id_klienta` int(2) DEFAULT NULL,
  `nazwisko` varchar(12) DEFAULT NULL,
  `imie` varchar(10) DEFAULT NULL,
  `miejscowosc` varchar(8) DEFAULT NULL,
  `PESEL` bigint(11) DEFAULT NULL,
  `telefon` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Zrzut danych tabeli `klient`
--

INSERT INTO `klient` (`id_klienta`, `nazwisko`, `imie`, `miejscowosc`, `PESEL`, `telefon`) VALUES
(1, 'Nowak', 'Marek', 'Toruń', 79120307431, '566589234'),
(2, 'Kowalski', 'Adam', 'Warszawa', 80122401871, '223451234'),
(3, 'Białoszewski', 'Mirek', 'Warszawa', 78012307983, '223218922'),
(4, 'Górecki', 'Grzegorz', 'Poznań', 82061203983, '452367897'),
(5, 'Zan', 'Marcin', 'Gdańsk', 82020201875, '338373635'),
(6, 'Bagińska', 'Anna', 'Warszawa', 91110402837, '227336252'),
(7, 'Karski', 'Jerzy', 'Lublin', 72021302224, '385678322'),
(8, 'Kowalski', 'Michał', 'Kraków', 82011002343, ''),
(9, 'Lipska', 'Monika', 'Kraków', 90112008765, '873637377'),
(10, 'Arciński', 'Jan', 'Warszawa', 91032007191, '224335345'),
(11, 'Borówka', 'Ewa', 'Warszawa', 92120307127, ''),
(12, 'Lichocki', 'Mateusz', 'Warszawa', 92031203453, '227463536'),
(13, 'Pol', 'Aleksander', 'Lublin', 70073003228, '236517830'),
(14, 'Czbański', 'Wojciech', 'Warszawa', 90012703225, ''),
(15, 'Domańska', 'Anna', 'Kraków', 94070910981, ''),
(16, 'Gila', 'Ewa', 'Poznań', 94122303923, '657848484'),
(17, 'Jakubski', 'Mariusz', 'Poznań', 91091215821, ''),
(18, 'Pawlik', 'Monika', 'Poznań', 81060903345, ''),
(19, 'Wyszkowski', 'Wojciech', 'Warszawa', 89030710384, ''),
(20, 'Zaliwski', 'Miłosz', 'Gdańsk', 88042703835, '589123876'),
(21, 'Żukowski', 'Bartosz', 'Kraków', 87091603564, ''),
(22, 'Filipiak', 'Anna', 'Warszawa', 80120219327, ''),
(23, 'Kowalski', 'Jan', 'Gdańsk', 83110309876, '583412909'),
(24, 'Karnowski', 'Michał', 'Lublin', 87031309768, '6527821'),
(25, 'Korek', 'Mateusz', 'Lublin', 94110904874, '349456443');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

CREATE TABLE `zamowienia` (
  `id_zamowienia` int(2) DEFAULT NULL,
  `id_klienta` int(2) DEFAULT NULL,
  `data_zamowienia` date DEFAULT NULL,
  `godzina_zamowienia` varchar(6) DEFAULT NULL,
  `id_kawy` int(1) DEFAULT NULL,
  `ile_zamowionych_kaw` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Zrzut danych tabeli `zamowienia`
--

INSERT INTO `zamowienia` (`id_zamowienia`, `id_klienta`, `data_zamowienia`, `godzina_zamowienia`, `id_kawy`, `ile_zamowionych_kaw`) VALUES
(1, 1, '2020-08-21', '09:00', 3, 1),
(2, 5, '2020-08-21', '09:15', 5, 3),
(3, 6, '2020-08-21', '11:05', 6, 1),
(4, 7, '2020-08-22', '09:00', 3, 2),
(5, 16, '2020-08-22', '10:15', 3, 3),
(6, 4, '2020-08-22', '11:00', 6, 2),
(7, 5, '2020-08-22', '13:20', 4, 1),
(8, 5, '2020-09-01', '09:05', 1, 1),
(9, 3, '2020-09-01', '09:20', 1, 1),
(10, 10, '2020-09-01', '09:50', 4, 4),
(11, 3, '2020-09-02', '10:20', 5, 2),
(12, 8, '2020-09-03', '09:45', 3, 2),
(13, 9, '2020-09-03', '09:50:', 4, 1),
(14, 13, '2020-09-03', '10:05', 6, 1),
(15, 11, '2020-09-03', '11:20', 6, 1),
(16, 15, '2020-09-03', '12:15', 3, 2),
(17, 14, '2020-09-03', '12:15', 3, 1),
(18, 12, '2020-09-05', '10:00', 3, 1),
(19, 2, '2020-09-05', '10:50', 3, 1),
(20, 5, '2020-10-01', '09:45', 4, 5),
(21, 3, '2020-10-01', '12:00:', 1, 3),
(22, 9, '2020-10-02', '09:00', 3, 2),
(23, 7, '2020-10-02', '09:50', 5, 1),
(24, 7, '2020-10-02', '11:05', 5, 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
