-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 11 2023 г., 17:38
-- Версия сервера: 8.0.30
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `areaweb`
--

-- --------------------------------------------------------

--
-- Структура таблицы `disciplines`
--

CREATE TABLE `disciplines` (
  `discipline_id` int NOT NULL,
  `discipline_name` varchar(255) NOT NULL,
  `teacher_id` int DEFAULT NULL,
  `group_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `disciplines`
--

INSERT INTO `disciplines` (`discipline_id`, `discipline_name`, `teacher_id`, `group_id`) VALUES
(3, 'ООП', 1, 2),
(4, 'Программирование', 1, 2),
(5, 'Физ.культура', NULL, 3),
(6, 'Бизнес Решение', 1, 1),
(7, 'Физрурур', 1, 1),
(9, 'рп', 2, 1),
(11, 'ООП', 3, 1),
(12, 'Русский', 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `discipline_records`
--

CREATE TABLE `discipline_records` (
  `id` int NOT NULL,
  `student_id` int DEFAULT NULL,
  `discipline_id` int DEFAULT NULL,
  `presence` text,
  `task_theme` varchar(255) DEFAULT NULL,
  `rating` text,
  `additional_points` text,
  `record_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `discipline_records`
--

INSERT INTO `discipline_records` (`id`, `student_id`, `discipline_id`, `presence`, `task_theme`, `rating`, `additional_points`, `record_date`) VALUES
(47, 1, 2, 'present', 'ew', '75', '78', '2023-12-11'),
(49, 29, 2, 'present', 'ds', '87', '78', '2023-12-11'),
(50, 30, 2, 'present', 'ds', '87', '87', '2023-12-11'),
(51, 1, 1, 'absent', 'fdf', '75', '98', '2023-12-11'),
(52, 28, 1, 'respectful', 'fdf', '98', '65', '2023-12-11'),
(53, 29, 1, 'absent', 'fdf', '98', '65', '2023-12-11'),
(54, 30, 1, 'respectful', 'fdf', '98', '6', '2023-12-11'),
(55, 32, 1, 'absent', 'fdf', '98', '65', '2023-12-11'),
(56, 33, 1, 'absent', 'fdf', '98', '65', '2023-12-11'),
(57, 34, 1, 'present', 'fdf', '98', '65', '2023-12-11'),
(58, 35, 1, 'absent', 'fdf', '98', '65', '2023-12-11'),
(59, 36, 1, 'respectful', 'fdf', '98', '65', '2023-12-11'),
(60, 37, 1, 'respectful', 'fdf', '98', '65', '2023-12-11'),
(61, 38, 3, 'absent', 'авав', '75', '75', '2023-12-11');

-- --------------------------------------------------------

--
-- Структура таблицы `groups`
--

CREATE TABLE `groups` (
  `group_id` int NOT NULL,
  `group_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `groups`
--

INSERT INTO `groups` (`group_id`, `group_name`) VALUES
(1, 'П 21-57К'),
(2, 'П21-56к'),
(3, 'П21-58ГБ');

-- --------------------------------------------------------

--
-- Структура таблицы `students`
--

CREATE TABLE `students` (
  `student_id` int NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `group_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `students`
--

INSERT INTO `students` (`student_id`, `student_name`, `group_id`) VALUES
(1, 'Серый', 1),
(28, 'Альмамбет', 1),
(29, 'Глеб О', 1),
(30, 'Руслан', 1),
(32, 'Алькаир', 1),
(33, 'НУрталгат', 1),
(34, 'Айнуль', 1),
(35, 'Анер', 1),
(36, 'авав', 1),
(37, 'пап', 1),
(38, 'Даня', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `avatar`, `password`, `role`) VALUES
(1, 'Рушан', 'rushanpromax@gmail.com', 'uploads/avatar_1701775762.png', '$2y$10$rSihXOaWxDXxYjhbo64H9udv6Ogt0GF8FIY3t7ceWioxGnH3lAlRO', 'admin'),
(2, 'Кибер Гром', 'cybergrom@gmail.com', 'uploads/avatar_1701781427.png', '$2y$10$mL1yEh4xAavPf7YO4uSXseZWlXrav9E3PC/VB9vSzWWijVC8MFGzq', 'user'),
(3, 'Руслан', 'ruslanpro@gmail.com', 'uploads/avatar_1702092111.png', '$2y$10$IaIRoESVmQbnIeGN7KawAOxW6caSbQdHSGDxofqTAMhPYG1QR3xLa', 'admin');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `disciplines`
--
ALTER TABLE `disciplines`
  ADD PRIMARY KEY (`discipline_id`),
  ADD KEY `teacher_id` (`teacher_id`,`group_id`),
  ADD KEY `group_id` (`group_id`);

--
-- Индексы таблицы `discipline_records`
--
ALTER TABLE `discipline_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `discipline_id` (`discipline_id`);

--
-- Индексы таблицы `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`group_id`);

--
-- Индексы таблицы `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `group_id` (`group_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `disciplines`
--
ALTER TABLE `disciplines`
  MODIFY `discipline_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `discipline_records`
--
ALTER TABLE `discipline_records`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT для таблицы `groups`
--
ALTER TABLE `groups`
  MODIFY `group_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `students`
--
ALTER TABLE `students`
  MODIFY `student_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `disciplines`
--
ALTER TABLE `disciplines`
  ADD CONSTRAINT `disciplines_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `disciplines_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `groups` (`group_id`);

--
-- Ограничения внешнего ключа таблицы `discipline_records`
--
ALTER TABLE `discipline_records`
  ADD CONSTRAINT `discipline_records_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`);

--
-- Ограничения внешнего ключа таблицы `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_3` FOREIGN KEY (`group_id`) REFERENCES `groups` (`group_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
