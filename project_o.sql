-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 29 2024 г., 09:05
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `project_o`
--

-- --------------------------------------------------------

--
-- Структура таблицы `achievements`
--

CREATE TABLE `achievements` (
  `id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `description` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `global_chat`
--

CREATE TABLE `global_chat` (
  `id` int(64) NOT NULL,
  `user_id` int(11) NOT NULL,
  `chat_message` text NOT NULL,
  `date_created` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Дамп данных таблицы `global_chat`
--

INSERT INTO `global_chat` (`id`, `user_id`, `chat_message`, `date_created`) VALUES
(334, 35, 'MSG 1', '2024-05-28 09:54:46'),
(335, 35, 'By user adas daa', '2024-05-28 09:54:51'),
(336, 35, 'msg 3', '2024-05-28 10:11:45'),
(337, 35, 'msg 4', '2024-05-28 10:11:47'),
(338, 35, 'msg 5', '2024-05-28 10:11:49'),
(339, 35, 'msg 5', '2024-05-28 10:11:59'),
(340, 35, 'msg 7', '2024-05-28 10:12:03'),
(341, 35, 'ffffffffffffffff fffffffffffffff ffff ffffffffffffffff ffffffffffffffff fffffffffffffff ffff ffffffffffffffff ', '2024-05-28 10:15:55'),
(342, 35, 'MSF AD AKDSL ADF ASLDKF JSADLKF JSADLF JSDAF ASDF AS', '2024-05-28 10:23:18'),
(343, 35, 'POIKFDPSOAFI APOSDFI APSOIF PASDOFI', '2024-05-28 10:23:20'),
(344, 35, 'FPOIFPOFIPOAFIHNJKN GBFK JBA BA GAG A', '2024-05-28 10:23:23'),
(345, 35, 'O IAHGOAIFHG AOI HAOI GAOIH ', '2024-05-28 10:23:30'),
(346, 35, 'OIHOIAHGUAGHAGAGOI HJAOI HGAOH GOAIG HAIDOF', '2024-05-28 10:23:33'),
(347, 35, 'IO GOI JGOIAG HAO GHAOIDG H I HGJOIS ', '2024-05-28 10:23:37'),
(348, 35, 'G IOSJ OIJ GOSIJ OSIJG SDIJF', '2024-05-28 10:23:40'),
(349, 1, 'admin msg 1', '2024-05-28 10:40:41'),
(350, 1, 'admin msg 2', '2024-05-28 10:40:45'),
(351, 1, 'd', '2024-05-28 18:36:19'),
(352, 1, 'fsd fasdf ', '2024-05-28 18:36:20'),
(353, 1, 'asdf ads', '2024-05-28 18:36:21');

-- --------------------------------------------------------

--
-- Структура таблицы `hobbies`
--

CREATE TABLE `hobbies` (
  `id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `description` text NOT NULL,
  `hobby_pic` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `hobbies`
--

INSERT INTO `hobbies` (`id`, `profile_id`, `title`, `description`, `hobby_pic`) VALUES
(1, 15, 'eft', '5k hrs zadr meta cherv sbeu sbeu', 'gamepad.png'),
(3, 15, 'SFAS', 'FADF', 'chess.png'),
(4, 15, 'chess', '~100 hrs', 'chess.png');

-- --------------------------------------------------------

--
-- Структура таблицы `profile`
--

CREATE TABLE `profile` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pic` varchar(255) CHARACTER SET utf8 DEFAULT 'placeholder.png',
  `is_created` int(1) DEFAULT 1,
  `c_status` varchar(120) DEFAULT '''Не указано''',
  `real_name` varchar(128) DEFAULT '''Не указано''',
  `user_info` varchar(500) DEFAULT 'Не указано'
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Дамп данных таблицы `profile`
--

INSERT INTO `profile` (`id`, `user_id`, `pic`, `is_created`, `c_status`, `real_name`, `user_info`) VALUES
(13, 26, '6654fd2716398.jpeg', 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur dignissim mi a gravida vehicula.', 'ZLODEI MOBILIZATOR IVANOVICH', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur dignissim mi a gravida vehicula. Mauris euismod lectus vitae pharetra auctor. Proin venenatis faucibus malesuada. Aenean dignissim non magna sit amet pretium. Nulla arcu turpis, imperdiet eget neque ut, sodales efficitur orci. Pellentesque lacinia luctus felis, a finibus tellus ullamcorper vel. Nam accumsan justo nec imperdiet iaculis. Nunc tincidunt urna blandit eleifend aliquet. Cras sapien enim, ullamcorper. ullamcorper rperd.'),
(15, 1, '6650a95cab339.png', 1, 'ADMIN STATUS MAX 120 TEST || ADMIN STATUS MAX 120 TEST || ADMIN STATUS MAX 120 TEST || ADMIN STATUS MAX 120 TEST || ADMI', 'ADMIN REAL NAME', 'ADMIN STATUS MAX 500 TEST || ADMIN STATUS MAX 500 TEST || ADMIN STATUS MAX 500 TEST || ADMIN STATUS MAX 500 TEST || ADMIN STATUS MAX 500 TEST || ADMIN STATUS MAX 500 TEST || ADMIN STATUS MAX 500 TEST || ADMIN STATUS MAX 500 TEST || ADMIN STATUS MAX 500 TEST || ADMIN STATUS MAX 500 TEST || ADMIN STATUS MAX 500 TEST || ADMIN STATUS MAX 500 TEST || ADMIN STATUS MAX 500 TEST || ADMIN STATUS MAX 500 TEST || ADMIN STATUS MAX 500 TEST || ADMIN STATUS MAX 500 TEST || ADMIN STATUS MAX 500 TEST || ADMIN S'),
(17, 32, '6654f2660b1a9.png', 1, 'what a blast', 'Long D. Johnson', 'Не указано'),
(18, 31, '6654f3077e609.jpeg', 1, 'отвечаю каждые вторник первой недели месяца', 'Gosha Flop', 'Не указано'),
(19, 33, '665503377d147.jpeg', 1, 'Не указано', 'Amanda D. Cooper', 'Не указано'),
(20, 34, 'placeholder.png', 1, 'stealing stuff since 1988', 'Не указано', 'Не указано'),
(21, 35, '66557065cc5aa.jpeg', 1, 'статус/настроение/краткая информация', 'Настоящее имя пользователя', 'краткая информация о пользоветеле');

-- --------------------------------------------------------

--
-- Структура таблицы `reports`
--

CREATE TABLE `reports` (
  `id` int(32) NOT NULL,
  `reporter_id` int(11) NOT NULL,
  `reported_id` int(11) NOT NULL,
  `msg_id` int(64) NOT NULL,
  `reason` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Структура таблицы `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `t_title` varchar(256) NOT NULL,
  `t_text` text NOT NULL,
  `t_specs` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tickets`
--

INSERT INTO `tickets` (`id`, `user_id`, `t_title`, `t_text`, `t_specs`) VALUES
(1, 1, 'Zagolovok tick1', 'podrobnosti afda ad ads ads asd das d asddadsfasdf asfdds podrobnosti afda ad ads ads asd das d asddadsfasdf asfdds podrobnosti afda ad ads ads asd das d asddadsfasdf asfdds podrobnosti afda ad ads ads asd das d asddadsfasdf asfdds podrobnosti afda ad ads ads asd das d asddadsfasdf asfdds ', 'deyatelnost 1'),
(7, 1, 'Ищу команду', 'вфа фвыа ыв ыфва фв вы афыва фыва ыва ыфва фыва а фа вфа фвыа ыв ыфва фв вы афыва фыва ыва ыфва фыва а фа вфа фвыа ыв ыфва фв вы афыва фыва ыва ыфва фыва а фа вфа фвыа ыв ыфва фв вы афыва фыва ыва ыфва фыва а фа ', 'для игры в (игра лмао)'),
(9, 1, 'FDSfa as', 'fsad asd sad fadsf adsf as', 'adf asf '),
(10, 1, 'fasdf sdfsd fas', 'f asdf asdf asdf ', 'f asd fasdf as'),
(11, 31, 'FSDF SD F', 'fasdf asdf sdf as fa fasdf asdf sdf as fafasdf asdf sdf as fafasdf asdf sdf as fafasdf asdf sdf as fa', 'adfasdf asd fas');

-- --------------------------------------------------------

--
-- Структура таблицы `ticket_chat`
--

CREATE TABLE `ticket_chat` (
  `id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ticket_msg` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ticket_chat`
--

INSERT INTO `ticket_chat` (`id`, `ticket_id`, `user_id`, `ticket_msg`) VALUES
(1, 7, 1, 'fdasfasd  adsf asd asd asd'),
(2, 7, 1, 'sdf sdsd sd d'),
(3, 7, 31, 'das af df asd');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(16) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(16) NOT NULL,
  `is_approved` int(1) DEFAULT NULL,
  `role` varchar(64) NOT NULL DEFAULT 'observer'
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `is_approved`, `role`) VALUES
(1, 'admin', 'adm@adm', 'admin', 1, 'overlord'),
(26, 'vice_grip', 'd@dd', '1234', 1, 'observer'),
(31, 'low_tier_support', 'lt@supp', '1234', 1, 'arbiter'),
(32, 'sloppenheimer', 'sloppy@toppy', '1234', 1, 'overseer'),
(33, 'gooseworx', 'goose@dog.go', '1234', 1, 'observer'),
(34, 'romanian_thief', 'rob@steal.pr', '1234', 1, 'observer'),
(35, 'new_user', 'dd@er', '1234', 1, 'observer');

-- --------------------------------------------------------

--
-- Структура таблицы `user_chat`
--

CREATE TABLE `user_chat` (
  `id` int(11) NOT NULL,
  `chat_owner` int(11) NOT NULL,
  `chat_partner` int(11) NOT NULL,
  `last_action` int(11) NOT NULL,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user_chat`
--

INSERT INTO `user_chat` (`id`, `chat_owner`, `chat_partner`, `last_action`, `created_at`) VALUES
(19, 34, 32, 1716848626, 1716848570),
(20, 32, 34, 1716848626, 1716848570),
(21, 35, 1, 1716881335, 1716881335),
(22, 1, 35, 1716881335, 1716881335),
(23, 1, 31, 1716961305, 1716886772),
(24, 31, 1, 1716961305, 1716886772);

-- --------------------------------------------------------

--
-- Структура таблицы `user_chat_msg`
--

CREATE TABLE `user_chat_msg` (
  `id` int(11) NOT NULL,
  `chat_id` int(11) NOT NULL,
  `msg_owner` int(11) NOT NULL,
  `sender` int(11) NOT NULL,
  `recip` int(11) NOT NULL,
  `date_sent` int(11) NOT NULL,
  `msg_status` tinyint(4) NOT NULL,
  `msg_text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user_chat_msg`
--

INSERT INTO `user_chat_msg` (`id`, `chat_id`, `msg_owner`, `sender`, `recip`, `date_sent`, `msg_status`, `msg_text`) VALUES
(61, 19, 34, 34, 32, 1716848570, 1, 'fcuk you'),
(62, 20, 32, 34, 32, 1716848570, 0, 'fcuk you'),
(63, 20, 32, 32, 34, 1716848626, 1, 'no fuck you'),
(64, 19, 34, 32, 34, 1716848626, 0, 'no fuck you'),
(65, 21, 35, 35, 1, 1716881335, 1, 'new_user MSG 1'),
(66, 22, 1, 35, 1, 1716881335, 0, 'new_user MSG 1'),
(67, 23, 1, 1, 31, 1716886772, 1, 'AAAAAAAAAAA'),
(68, 24, 31, 1, 31, 1716886772, 0, 'AAAAAAAAAAA'),
(69, 23, 1, 1, 31, 1716887275, 1, 'FFFFFFFFFFF'),
(70, 24, 31, 1, 31, 1716887275, 0, 'FFFFFFFFFFF'),
(71, 23, 1, 1, 31, 1716959625, 1, 'афвафвы афы ф'),
(72, 24, 31, 1, 31, 1716959625, 0, 'афвафвы афы ф'),
(73, 23, 1, 1, 31, 1716960553, 1, 'adfsd asdf sad asdf asd adfsd asdf sad asdf asd adfsd asdf sad asdf asd adfsd asdf sad asdf asd adfsd asdf sad asdf asd adfsd asdf sad asdf asd '),
(74, 24, 31, 1, 31, 1716960553, 0, 'adfsd asdf sad asdf asd adfsd asdf sad asdf asd adfsd asdf sad asdf asd adfsd asdf sad asdf asd adfsd asdf sad asdf asd adfsd asdf sad asdf asd '),
(75, 24, 31, 31, 1, 1716961305, 1, 'ay af asdf as'),
(76, 23, 1, 31, 1, 1716961305, 0, 'ay af asdf as');

-- --------------------------------------------------------

--
-- Структура таблицы `user_contact`
--

CREATE TABLE `user_contact` (
  `id` int(11) NOT NULL,
  `prof_id` int(11) NOT NULL,
  `platform` varchar(64) NOT NULL,
  `data` varchar(128) NOT NULL,
  `plat_pic` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user_contact`
--

INSERT INTO `user_contact` (`id`, `prof_id`, `platform`, `data`, `plat_pic`) VALUES
(9, 15, 'VKontakte', '@chizhyk', 'vk.png'),
(15, 15, 'E-mail', 'deeks.out@support.net', 'email.png'),
(16, 15, 'Discord', 'Farher#3214', 'discord.png'),
(18, 17, 'Telegram', '@nagasaki_blast', 'tg.png'),
(19, 18, 'Discord', 'supper#4112', 'discord.png'),
(20, 18, 'Telegram', '@polish', 'tg.png'),
(21, 13, 'E-mail', 'chika@teal.uo', 'email.png'),
(22, 13, 'VKontakte', '@mongrel', 'vk.png'),
(23, 19, 'Discord', 'gooseW#9511', 'discord.png'),
(24, 20, 'E-mail', 'sell.markt@blml.de', 'email.png'),
(25, 21, 'VKontakte', '@user_id423112', 'vk.png'),
(26, 21, 'E-mail', 'chestnov.da@gmail.com', 'email.png');

-- --------------------------------------------------------

--
-- Структура таблицы `user_hobbies`
--

CREATE TABLE `user_hobbies` (
  `id` int(11) NOT NULL,
  `prof_id` int(11) NOT NULL,
  `hobby_name` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `achievements`
--
ALTER TABLE `achievements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profile_id` (`profile_id`);

--
-- Индексы таблицы `global_chat`
--
ALTER TABLE `global_chat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `hobbies`
--
ALTER TABLE `hobbies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profile_id` (`profile_id`);

--
-- Индексы таблицы `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`reporter_id`),
  ADD KEY `reported_id` (`reported_id`),
  ADD KEY `reporter_id` (`reporter_id`),
  ADD KEY `msg_id` (`msg_id`);

--
-- Индексы таблицы `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `ticket_chat`
--
ALTER TABLE `ticket_chat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_id` (`ticket_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user_chat`
--
ALTER TABLE `user_chat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_partner` (`chat_partner`),
  ADD KEY `chat_owner` (`chat_owner`);

--
-- Индексы таблицы `user_chat_msg`
--
ALTER TABLE `user_chat_msg`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_id` (`chat_id`),
  ADD KEY `chat_id_2` (`chat_id`,`msg_owner`,`sender`,`recip`),
  ADD KEY `msg_owner` (`msg_owner`),
  ADD KEY `sender` (`sender`),
  ADD KEY `recip` (`recip`);

--
-- Индексы таблицы `user_contact`
--
ALTER TABLE `user_contact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prof_id` (`prof_id`);

--
-- Индексы таблицы `user_hobbies`
--
ALTER TABLE `user_hobbies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prof_id` (`prof_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `achievements`
--
ALTER TABLE `achievements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `global_chat`
--
ALTER TABLE `global_chat`
  MODIFY `id` int(64) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=354;

--
-- AUTO_INCREMENT для таблицы `hobbies`
--
ALTER TABLE `hobbies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `ticket_chat`
--
ALTER TABLE `ticket_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT для таблицы `user_chat`
--
ALTER TABLE `user_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `user_chat_msg`
--
ALTER TABLE `user_chat_msg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT для таблицы `user_contact`
--
ALTER TABLE `user_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT для таблицы `user_hobbies`
--
ALTER TABLE `user_hobbies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `achievements`
--
ALTER TABLE `achievements`
  ADD CONSTRAINT `achievements_ibfk_1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `global_chat`
--
ALTER TABLE `global_chat`
  ADD CONSTRAINT `global_chat_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `hobbies`
--
ALTER TABLE `hobbies`
  ADD CONSTRAINT `hobbies_ibfk_1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `profile_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `reports_ibfk_1` FOREIGN KEY (`reporter_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reports_ibfk_2` FOREIGN KEY (`reported_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reports_ibfk_3` FOREIGN KEY (`msg_id`) REFERENCES `global_chat` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `ticket_chat`
--
ALTER TABLE `ticket_chat`
  ADD CONSTRAINT `ticket_chat_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ticket_chat_ibfk_2` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `user_chat`
--
ALTER TABLE `user_chat`
  ADD CONSTRAINT `user_chat_ibfk_1` FOREIGN KEY (`chat_owner`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_chat_ibfk_2` FOREIGN KEY (`chat_partner`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `user_chat_msg`
--
ALTER TABLE `user_chat_msg`
  ADD CONSTRAINT `user_chat_msg_ibfk_1` FOREIGN KEY (`chat_id`) REFERENCES `user_chat` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_chat_msg_ibfk_2` FOREIGN KEY (`msg_owner`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_chat_msg_ibfk_3` FOREIGN KEY (`sender`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_chat_msg_ibfk_4` FOREIGN KEY (`recip`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `user_contact`
--
ALTER TABLE `user_contact`
  ADD CONSTRAINT `user_contact_ibfk_1` FOREIGN KEY (`prof_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `user_hobbies`
--
ALTER TABLE `user_hobbies`
  ADD CONSTRAINT `user_hobbies_ibfk_1` FOREIGN KEY (`prof_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
