-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 18 Maj 2019, 19:22
-- Wersja serwera: 10.1.40-MariaDB
-- Wersja PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `forum`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `categories`
--

INSERT INTO `categories` (`id`, `title`) VALUES
(8, 'Podzespoły komputerowe'),
(9, 'Peryferia i inny sprzęt'),
(10, 'Chłodzenie, podkręcanie'),
(11, 'Oprogramowanie'),
(12, 'Strefa gracza'),
(13, 'Luźne rozmowy');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `groups`
--

INSERT INTO `groups` (`id`, `group_name`, `description`) VALUES
(1, 'Administrator', 'Posiada pełne uprawnienia na forum'),
(2, 'Moderator', 'Może usuwać oraz edytować posty innych użytkowników. Może tworzyć również kategorie i podkategorię.'),
(3, 'Użytkownik', 'Użytkownik posiadający uprawnienia do tworzenia nowych tematów w istniejących kategoriach, oraz ich komentowania.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `date` datetime NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `title`, `description`) VALUES
(16, 8, 'Procesory i płyty główne', 'Bo najważniejsza jest solidna podstawa!'),
(17, 8, '	Pamięci RAM', 'Pamięć DDR3 czy DDR4? Szybsze, a może lepiej pojemniejsze? Zapytasz tu o wszystko związane z RAM.'),
(18, 8, 'Karty graficzne', 'GeForce czy Radeon? Wybierz kartę graficzną dla siebie.'),
(19, 8, 'Komputery, zestawy komputerowe', 'Przymierzasz się do kupna nowego komputera? Masz jakieś wątpliwości? Podziel się nimi, a my postaramy się je rozwiać.'),
(20, 8, 'Dyski, dyskietki, pendrive czy srebrne krążki.', 'Dyski, dyskietki, pendrive czy srebrne krążki. Wszystko tylko tutaj.'),
(21, 9, 'Monitory i projektory', 'Masz problem z wyborem monitora? Dobrze trafiłeś, wspólnie na pewno coś wybierzemy.'),
(22, 9, 'Kino domowe, HDTV', 'Czyli jaki telewizor kupić i co zrobić, żeby podczas filmu mieć pierwszorzędny obraz i dźwięk.'),
(23, 9, 'Aparaty cyfrowe i kamery', 'Dyskusje na temat aparatów cyfrowych, kompaktowych, analogowych oraz kamerach cyfrowych.'),
(24, 9, 'Telefony komórkowe i smartfony', 'Wszystko co gra, dzwoni, pisze smsy i nie tylko.'),
(25, 10, 'Chłodzenie powietrzem', 'Pierwsza pomoc dla komputera, szczególnie w upalne dni.'),
(26, 10, 'Chłodzenie wodne i inne', 'Czy to woda, czy to azot... grunt, że skutecznie odprowadza ciepło.'),
(27, 10, 'Podkręcanie', 'Dział dla osób, które nie boją się ryzyka ani skutków poniesionych przez wykręcanie swoich maszynek do granic możliwości.'),
(28, 11, 'Aplikacje użytkowe i multimedia', 'Wszelakie programy, w tym biurowe, muzyczne oraz narzędzia do obróbki video.'),
(29, 11, 'Internet, sieci komputerowe, bezpieczeństwo', 'O sieciach dużych (globalnych) i małych (domowych).'),
(30, 12, 'Tematy ogólne  ', 'Miejsce na zbiorcze tematy poświęcone danym produkcjom.'),
(31, 12, 'Problemy z grami', 'Twoja gra nie działa? Partyjkę RTSa przerywa niespodziewany błąd? Odpowiedzi szukaj tutaj.'),
(32, 12, 'Konsole stacjonarne', 'Co wybrać, w co zagrać, jak rozwiązać problem sprzętowy/programowy? - Znajdziesz o tym tutaj.'),
(33, 11, 'Grafika 2D, 3D i animacja', 'Rozmowy o grafice dwuwymiarowej, modelach przestrzennych i animacji komputerowej.'),
(34, 13, 'Ogólnie o IT', 'Dyskusja na różne tematy dotyczące świata komputerów, sprzętu i oprogramowania.'),
(35, 13, 'Sport i motoryzacja', 'Dla fanów piłki nożnej, koszykówki, tenisa i wszystkiego, co zasilane jest silnikiem spalinowym.'),
(36, 13, 'Filmy, seriale i muzyka', 'Ulubione miejsce kinomaniaków i audiofilów.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `topics`
--

CREATE TABLE `topics` (
  `id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `content` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `group_id` int(11) NOT NULL,
  `register_date` datetime NOT NULL,
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `group_name` (`group_name`);

--
-- Indeksy dla tabeli `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT dla tabeli `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT dla tabeli `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT dla tabeli `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
