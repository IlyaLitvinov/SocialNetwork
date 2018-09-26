-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Авг 14 2018 г., 17:57
-- Версия сервера: 10.1.29-MariaDB
-- Версия PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `comixdb`
--

-- --------------------------------------------------------

--
-- Структура таблицы `friends`
--

CREATE TABLE `friends` (
  `user` varchar(16) DEFAULT NULL,
  `friend` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `friends`
--

INSERT INTO `friends` (`user`, `friend`) VALUES
('Ilya', 'Bot'),
('gbj', 'Bot'),
('gbj', 'Ilya'),
('Ð¤Ð°Ñ€Ñ‚Ð°', 'Ilya'),
('Ilya', 'every108'),
('Ilya', 'Chikatoma'),
('Lisa', 'Ilya'),
('Ilya', 'Lisa');

-- --------------------------------------------------------

--
-- Структура таблицы `members`
--

CREATE TABLE `members` (
  `user` varchar(16) DEFAULT NULL,
  `pass` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `members`
--

INSERT INTO `members` (`user`, `pass`) VALUES
('Ilya', 'Vecnfyu69'),
('gbj', 'hhm'),
('Bot', '666666'),
('Ð—ÐµÐ»Ð°', '1'),
('Ð—ÐµÐ»Ð°2', '1'),
('Ð—ÐµÐ»Ð°3', '1'),
('Ð¤Ð°Ñ€Ñ‚Ð°', 'Ð’Ð°Ð½Ð¾'),
('Ð˜Ð²Ð°Ð½', 'Ð’Ð°Ð½Ð¾'),
('Ð˜Ð½Ð¾ÐºÐµÐ½Ñ‚Ð¸', '4815'),
('every108', '4815'),
('Ð§Ð¸ÐºÐ°Ñ‚Ð¾Ð¼Ð°', 'Ð¡ÐµÐºÑ€ÐµÑ‚ Ñ„Ð'),
('Chikatoma', 'Hey '),
('eva LP', 'qwedsazxc'),
('Lisa', 'Mangust120'),
('werdar', 'werdarian');

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `auth` varchar(16) DEFAULT NULL,
  `recip` varchar(16) DEFAULT NULL,
  `pm` char(1) DEFAULT NULL,
  `time` int(10) UNSIGNED DEFAULT NULL,
  `message` varchar(4096) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `messages`
--

INSERT INTO `messages` (`id`, `auth`, `recip`, `pm`, `time`, `message`) VALUES
(1, 'Ilya', 'Ð˜Ð½Ð¾ÐºÐµÐ½Ñ‚Ð¸', '0', 1524341853, 'Ñ…Ð°Ð¹'),
(2, 'every108', 'Ilya', '0', 1524341976, 'ÐŸÑ€Ð¸Ð²ÐµÑ‚, Ð¾ Ð²ÐµÐ»Ð¸ÐºÐ¸Ð¹ ÐžÑÐ½Ð¾Ð²Ð°Ñ‚ÐµÐ»ÑŒ!'),
(3, 'Ilya', 'every108', '0', 1524342045, 'Ñ…Ð°Ñ…Ð°Ñ…Ð°)))'),
(4, 'Ilya', 'every108', '0', 1524342052, 'Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÐµÐµÐµÑ‚))'),
(5, 'eva LP', 'eva LP', '0', 1524342857, '=)\r\n'),
(6, 'Ilya', 'eva LP', '1', 1524342975, 'ÐŸÑ€Ð¸Ð²ÐµÑ‚) ÑÑ‚Ð¾ Ñ‚Ñ‹?'),
(8, 'Ilya', 'Chikatoma', '1', 1524343035, 'ÐŸÑ€Ð¸Ð²ÐµÑ‚)))\r\n'),
(12, 'Ilya', 'Lisa', '1', 1524421266, 'ÐŸÑ€Ð¸Ð²ÐµÑ‚))Ð”Ð¾Ð±Ð°Ð² Ð¼ÐµÐ½Ñ Ð² Ð´Ñ€ÑƒÐ·ÑŒÑ\r\n'),
(13, 'Lisa', 'Lisa', '0', 1524421345, 'Ð£Ð¶Ðµ'),
(14, 'Lisa', 'Lisa', '1', 1524421377, 'Ð£ÑƒÑƒ) Ð½Ð° ÑƒÑˆÐºÐ¾)');

-- --------------------------------------------------------

--
-- Структура таблицы `profiles`
--

CREATE TABLE `profiles` (
  `user` varchar(16) DEFAULT NULL,
  `text` varchar(4096) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `profiles`
--

INSERT INTO `profiles` (`user`, `text`) VALUES
('Ilya', 'Ð­Ñ‚Ð¾ Ñ!) Ð¾ÑÐ½Ð¾Ð²Ð°Ñ‚ÐµÐ»ÑŒ ÑÑ‚Ð¾Ð¹ Ñ‡ÐµÑ€Ñ‚Ð¾Ð²Ð¾Ð¹ ÑÐµÑ‚Ð¸.'),
('Bot', 'I\'am botÑÑ€Ð°!');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `friends`
--
ALTER TABLE `friends`
  ADD KEY `user` (`user`(6)),
  ADD KEY `friend` (`friend`(6));

--
-- Индексы таблицы `members`
--
ALTER TABLE `members`
  ADD KEY `user` (`user`(6));

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth` (`auth`(6)),
  ADD KEY `recip` (`recip`(6));

--
-- Индексы таблицы `profiles`
--
ALTER TABLE `profiles`
  ADD KEY `user` (`user`(6));

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
