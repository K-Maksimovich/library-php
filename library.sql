-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 16 2019 г., 09:08
-- Версия сервера: 10.3.13-MariaDB
-- Версия PHP: 7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `library`
--

-- --------------------------------------------------------

--
-- Структура таблицы `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `authors`
--

INSERT INTO `authors` (`id`, `name`) VALUES
(1, 'М.Булгаков'),
(2, 'М.Шолохов'),
(3, 'А.Де-Сент-Экзюпери'),
(4, 'Ч.Паланик'),
(5, 'С.Кинг'),
(6, 'Х.Мураками'),
(7, 'Д.Роулинг'),
(8, 'А.Азимов'),
(9, 'Д.Оруэлл'),
(10, 'Р.Брэдбери');

-- --------------------------------------------------------

--
-- Структура таблицы `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `available` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `books`
--

INSERT INTO `books` (`id`, `author_id`, `name`, `available`) VALUES
(1, 10, 'Вино из одуванчиков', 1),
(2, 8, 'Я, робот', 1),
(3, 3, 'Маленький принц', 1),
(4, 1, 'Мастер и Маргарита', 1),
(5, 2, 'Тихий Дон', 1),
(6, 9, '1984', 1),
(7, 7, 'Гарри Поттер и Дары Смерти', 1),
(8, 5, 'Зеленая миля', 1),
(9, 6, 'Норвежский лес', 1),
(10, 4, 'Бойцовский клуб', 1),
(11, 8, 'Конец вечности', 1),
(12, 9, 'Скотный двор', 1),
(13, 7, 'Гарри Поттер и Орден Феникса', 1),
(14, 4, 'Колыбельная', 1),
(15, 2, 'Судьба человека', 1),
(16, 10, '451 градус по Фаренгейту', 1),
(17, 1, 'Записки врача', 1),
(18, 8, 'Академия. Основание', 1),
(19, 8, 'Профессия', 1),
(20, 1, 'Собачье сердце', 1),
(21, 7, 'Гарри Поттер и философский камень', 1),
(22, 7, 'Гарри Поттер и Тайная комната', 1),
(23, 7, 'Гарри Поттер и Кубок огня', 1),
(26, 7, 'Гарри Поттер и Принц-Полукровка', 1),
(27, 7, 'Гарри Поттер и узник Азкабана', 1),
(28, 5, 'Рита Хейуорт и спасение из Шоушенка', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `born` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `clients`
--

INSERT INTO `clients` (`id`, `name`, `born`) VALUES
(1, 'Vitalina Kovalevskaya', '2000-06-20'),
(2, 'Alexey Krasilnikov', '1999-02-07'),
(3, 'Irina Shamsutdinova', '2000-05-04'),
(4, 'Alibek Zhangazinov', '1998-12-14');

-- --------------------------------------------------------

--
-- Структура таблицы `clients_books`
--

CREATE TABLE `clients_books` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `date_from` date NOT NULL,
  `date_to` date NOT NULL,
  `closed` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `clients_books`
--

INSERT INTO `clients_books` (`id`, `client_id`, `book_id`, `date_from`, `date_to`, `closed`) VALUES
(1, 2, 11, '2019-12-08', '2019-12-22', NULL),
(2, 3, 21, '2019-12-01', '2019-12-15', NULL),
(3, 4, 19, '2019-12-08', '2019-12-22', NULL),
(4, 1, 17, '2019-12-10', '2019-12-24', NULL),
(5, 3, 14, '2019-12-06', '2019-12-20', NULL),
(6, 1, 10, '2019-12-10', '2019-12-24', NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_id` (`author_id`);

--
-- Индексы таблицы `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `clients_books`
--
ALTER TABLE `clients_books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `client_id` (`client_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблицы `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `clients_books`
--
ALTER TABLE `clients_books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
