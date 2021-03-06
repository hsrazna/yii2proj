-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 03 2016 г., 21:06
-- Версия сервера: 5.5.50
-- Версия PHP: 5.4.45

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `kbsu`
--

-- --------------------------------------------------------

--
-- Структура таблицы `activity`
--

CREATE TABLE IF NOT EXISTS `activity` (
  `id` int(11) NOT NULL,
  `uname` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `activity`
--

INSERT INTO `activity` (`id`, `uname`) VALUES
(0, 'Общественное'),
(1, 'Научно-исследовательское'),
(2, 'Творческое'),
(3, 'Спортивное');

-- --------------------------------------------------------

--
-- Структура таблицы `department`
--

CREATE TABLE IF NOT EXISTS `department` (
  `id` int(11) NOT NULL,
  `id_unit` int(11) NOT NULL,
  `uname` varchar(256) NOT NULL,
  `shortname` varchar(256) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `department`
--

INSERT INTO `department` (`id`, `id_unit`, `uname`, `shortname`) VALUES
(0, 0, 'Истории России', 'ИР'),
(1, 0, 'Всеобщей истории', 'ВИ'),
(2, 0, 'Русского языка и общего языкознания', 'РЯОЯ'),
(3, 0, 'Русской и зарубежной литератур', 'РЗЛ'),
(4, 1, 'Кафедра строительного производства', 'КСП'),
(5, 1, 'Кафедра строительных конструкций', 'КСК'),
(6, 1, 'Кафедра "Технология автоматизированного производства"', 'КТАП'),
(7, 1, 'Кафедра машин и аппаратов пищевых производств', 'КМАПП'),
(8, 1, 'Кафедра мехатроники и робототехники', 'КМР'),
(9, 1, 'Кафедра теоретической и прикладной механики', 'КТПМ'),
(10, 2, 'Кафедра бухгалтерского учета, анализа и аудита', 'КБУАА'),
(11, 2, 'Кафeдра экономики и финансов', 'ИР'),
(12, 2, 'Кафедра уголовного процесса и криминалистики', 'КУПК'),
(13, 2, 'Кафедра теории и истории государства и права', 'КТИГП'),
(14, 2, 'Кафедра трудового и предпринимательского права', 'КТПП'),
(15, 2, 'Кафедра гражданского права и процесса', 'ИР'),
(16, 2, 'Кафедра конституционного и административного права', 'ККАП'),
(17, 2, 'Кафедра уголовного права и криминологии', 'КУПК'),
(18, 2, 'Кафедра менеджмента и маркетинга', 'КММ'),
(19, 3, 'Информационная безопасность', 'ИБ'),
(20, 3, 'Информатика и вычислительная техника', 'ИВТ'),
(21, 3, 'Прикладная информатика', 'ПИ'),
(22, 3, 'Управление в технических системах', 'УТС'),
(23, 3, 'Прикладная информатика в  аналитической экономике', 'ПИАЭ'),
(24, 4, 'Кафедра естественно-математического образования', 'КЕМО'),
(25, 4, 'Кафедра теории и методики филологического образования образования', 'КТМФОО'),
(26, 4, 'Кафедра начального общего образования', 'КНОО'),
(27, 4, 'Кафедра дошкольного образования', 'КДО'),
(28, 4, 'Кафедра управления образованием', 'КУО'),
(29, 5, 'Кафедра педагогики и психологии', 'КПП'),
(30, 5, 'Теории и технологии педагогического образования', 'ТТПО'),
(31, 5, 'Педагогический колледж', 'ПК'),
(32, 6, 'Парикмахерское искусство', 'ПИ'),
(33, 6, 'Прикладная эстетика', 'ПЭ'),
(34, 6, 'Конструирование, моделирование и технология швейных изделий', 'КМТШИ'),
(35, 6, 'Садово-парковое и ландшафтное строительство', 'СПЛС'),
(36, 6, 'Дизайн (по отраслям)', 'ДпО'),
(37, 7, 'КАФЕДРА МАТЕМАТИЧЕСКОГО АНАЛИЗА И ТЕОРИИ ФУНКЦИЙ', 'КМАТФ'),
(38, 7, 'КАФЕДРА ИНФОРМАТИКИ И МАТЕМАТИЧЕСКОГО ОБЕСПЕЧЕНИЯ\nАВТОМАТИЗИРОВАННЫХ СИСТЕМ', 'КИМОАС'),
(39, 7, 'КАФЕДРА ДИФФЕРЕНЦИАЛЬНЫХ УРАВНЕНИЙ', 'КДУ'),
(40, 7, 'КАФЕДРА ГЕОМЕТРИИ И ВЫСШЕЙ АЛГЕБРЫ', 'КГВА'),
(41, 7, 'КАФЕДРА ВЫЧИСЛИТЕЛЬНОЙ МАТЕМАТИКИ', 'КВМ'),
(42, 7, 'КАФЕДРА ТЕОРЕТИЧЕСКОЙ ФИЗИКИ', 'КТФ'),
(43, 7, 'КАФЕДРА ФИЗИКИ КОНДЕНСИРОВАННОГО СОСТОЯНИЯ', 'КФКС'),
(44, 7, 'КАФЕДРА ФИЗИКИ НАНОСИСТЕМ', 'КФН'),
(45, 7, 'КАФЕДРА ГЕОФИЗИКИ И ЭКОЛОГИИ', 'КГЭ'),
(46, 7, 'КАФЕДРА ОБЩЕЙ ФИЗИКИ', 'КОФ'),
(47, 7, 'КАФЕДРА РЕНТГЕНОДИФРАКЦИОННОЙ КРИСТАЛЛООПТИКИ', 'КРК');

-- --------------------------------------------------------

--
-- Структура таблицы `event`
--

CREATE TABLE IF NOT EXISTS `event` (
  `id` int(11) NOT NULL,
  `uname` text NOT NULL,
  `id_eventlevel` int(11) NOT NULL,
  `location` text NOT NULL,
  `extorg` text NOT NULL,
  `startdate` date NOT NULL,
  `finishdate` date NOT NULL,
  `id_activity` int(11) NOT NULL,
  `id_eventtype` int(11) NOT NULL,
  `id_eventcomp` int(11) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `event`
--

INSERT INTO `event` (`id`, `uname`, `id_eventlevel`, `location`, `extorg`, `startdate`, `finishdate`, `id_activity`, `id_eventtype`, `id_eventcomp`, `comment`) VALUES
(0, 'Пресс-конференция "Умы России"', 1, 'Нальчик', '', '2016-08-01', '2016-08-03', 1, 1, 0, 'хорошее мероприятие'),
(1, 'Пресс-конференция "Умы Таджикистана"', 2, 'Москва', '', '2016-08-03', '2016-08-04', 1, 2, 0, 'очень хорошая конференция'),
(2, 'Пресс-конференция "Умы Киргизии"', 3, 'Терек', 'Глава Терского района', '2016-08-03', '2016-08-11', 2, 3, 1, 'Проводится в Терском районе'),
(3, 'Пресс-конференция "Умы Венгрии"', 4, 'Венгрия', 'Венгерское правительство', '2016-08-01', '2016-08-02', 3, 4, 1, 'Венгерский конкурс проводимый в рамках организации Объединенных Наций'),
(4, 'Пресс-конференция "Умы Уфы"', 5, 'Нальчик', '', '2016-08-09', '2016-08-10', 2, 5, 0, ''),
(5, 'Пресс-конференция "Умы Карелии"', 1, 'Нальчик', '', '2016-08-01', '2016-08-03', 1, 1, 0, 'хорошее мероприятие'),
(6, 'Пресс-конференция "Умы Баксана"', 2, 'Москва', '', '2016-08-03', '2016-08-04', 1, 2, 0, 'очень хорошая конференция'),
(7, 'Пресс-конференция "Умы Псытхала"', 3, 'Терек', 'Глава Терского района', '2016-08-03', '2016-08-11', 2, 3, 1, 'Проводится в Терском районе'),
(8, 'Пресс-конференция "Умы Нарткалы"', 4, 'Венгрия', 'Венгерское правительство', '2016-08-01', '2016-08-02', 3, 4, 1, 'Венгерский конкурс проводимый в рамках организации Объединенных Наций'),
(9, 'Пресс-конференция "Умы Майского"', 5, 'Нальчик', '', '2016-08-09', '2016-08-10', 2, 5, 0, ''),
(22, 'цйу', 0, '', '', '2016-10-04', '2016-10-05', 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `eventcomp`
--

CREATE TABLE IF NOT EXISTS `eventcomp` (
  `id` int(11) NOT NULL,
  `uname` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `eventcomp`
--

INSERT INTO `eventcomp` (`id`, `uname`) VALUES
(0, 'Сложное'),
(1, 'Не сложное');

-- --------------------------------------------------------

--
-- Структура таблицы `eventlevel`
--

CREATE TABLE IF NOT EXISTS `eventlevel` (
  `id` int(11) NOT NULL,
  `uname` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `eventlevel`
--

INSERT INTO `eventlevel` (`id`, `uname`) VALUES
(0, 'Факультетский'),
(1, 'Университетский'),
(2, 'Городской'),
(3, 'Республиканский'),
(4, 'Окружной'),
(5, 'Всероссийский'),
(6, 'Международный');

-- --------------------------------------------------------

--
-- Структура таблицы `eventtype`
--

CREATE TABLE IF NOT EXISTS `eventtype` (
  `id` int(11) NOT NULL,
  `uname` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `eventtype`
--

INSERT INTO `eventtype` (`id`, `uname`) VALUES
(0, 'Организационное'),
(1, 'Воспитательное/Патриотическое'),
(2, 'Благотворительное'),
(3, 'Конкурс/Соревнование'),
(4, 'Концертная программа'),
(5, 'Приуроченная акция (не благотворительная)'),
(6, 'Выпуск периодического продукта'),
(7, 'Форум/Конференция'),
(8, 'Прием/Почетная встреча');

-- --------------------------------------------------------

--
-- Структура таблицы `event_activity`
--

CREATE TABLE IF NOT EXISTS `event_activity` (
  `id` int(11) NOT NULL,
  `id_event` int(11) NOT NULL,
  `id_activity` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `event_activity`
--

INSERT INTO `event_activity` (`id`, `id_event`, `id_activity`) VALUES
(0, 0, 0),
(1, 0, 1),
(2, 1, 2),
(3, 2, 3),
(4, 3, 2),
(5, 4, 4),
(6, 5, 2),
(7, 5, 3),
(8, 6, 2),
(9, 6, 4),
(10, 6, 1),
(11, 7, 2),
(12, 8, 0),
(13, 9, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `event_eventtype`
--

CREATE TABLE IF NOT EXISTS `event_eventtype` (
  `id` int(11) NOT NULL,
  `id_event` int(11) NOT NULL,
  `id_eventtype` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `event_eventtype`
--

INSERT INTO `event_eventtype` (`id`, `id_event`, `id_eventtype`) VALUES
(0, 0, 0),
(1, 0, 1),
(2, 0, 2),
(3, 1, 3),
(4, 1, 5),
(5, 1, 4),
(6, 1, 2),
(7, 2, 6),
(8, 2, 7),
(9, 3, 1),
(10, 4, 2),
(11, 4, 4),
(12, 4, 6),
(13, 5, 5),
(14, 6, 0),
(15, 7, 1),
(16, 7, 2),
(17, 8, 3),
(18, 8, 5),
(19, 8, 4),
(20, 9, 2),
(21, 9, 6);

-- --------------------------------------------------------

--
-- Структура таблицы `event_user_status_role`
--

CREATE TABLE IF NOT EXISTS `event_user_status_role` (
  `id` int(11) NOT NULL,
  `id_event` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_status` int(11) NOT NULL,
  `id_role` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `event_user_status_role`
--

INSERT INTO `event_user_status_role` (`id`, `id_event`, `id_user`, `id_status`, `id_role`) VALUES
(0, 0, 4, 0, 1),
(1, 0, 5, 0, 1),
(2, 0, 4, 0, 1),
(3, 0, 3, 1, 1),
(4, 0, 2, 2, 2),
(5, 1, 7, 0, 1),
(6, 1, 8, 0, 1),
(7, 1, 9, 0, 1),
(8, 1, 6, 1, 3),
(9, 1, 5, 2, 0),
(10, 2, 12, 0, 1),
(11, 2, 13, 1, 1),
(12, 2, 11, 2, 3),
(13, 3, 8, 0, 1),
(14, 3, 4, 1, 1),
(15, 3, 2, 2, 3),
(16, 4, 2, 0, 1),
(17, 4, 10, 0, 1),
(18, 4, 9, 1, 2),
(19, 4, 11, 2, 3),
(20, 5, 12, 0, 1),
(21, 5, 13, 0, 1),
(22, 5, 14, 0, 1),
(23, 5, 4, 1, 3),
(24, 5, 5, 2, 1),
(25, 6, 23, 1, 3),
(26, 6, 24, 2, 3),
(27, 7, 25, 0, 1),
(28, 7, 21, 0, 1),
(29, 7, 22, 0, 1),
(30, 7, 12, 1, 1),
(31, 7, 13, 2, 1),
(32, 8, 14, 0, 1),
(33, 8, 15, 0, 1),
(34, 8, 16, 0, 1),
(35, 8, 10, 0, 1),
(36, 8, 11, 0, 3),
(37, 8, 12, 0, 2),
(38, 8, 13, 0, 1),
(39, 8, 25, 0, 1),
(40, 8, 24, 0, 1),
(41, 8, 26, 0, 1),
(42, 8, 27, 0, 1),
(43, 8, 28, 0, 3),
(44, 8, 29, 1, 2),
(45, 8, 3, 2, 1),
(46, 9, 14, 0, 1),
(47, 9, 15, 0, 1),
(48, 9, 16, 0, 1),
(49, 9, 17, 1, 1),
(50, 9, 18, 2, 1),
(51, 22, 13, 2, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL,
  `uname` varchar(256) NOT NULL,
  `url` varchar(256) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `groups`
--

INSERT INTO `groups` (`id`, `uname`, `url`) VALUES
(0, 'Послы русского языка', ''),
(1, 'Победители премии "Студент года"', ''),
(2, 'Активисты ФМ', ''),
(3, 'Студенческий совет', '');

-- --------------------------------------------------------

--
-- Структура таблицы `group_user`
--

CREATE TABLE IF NOT EXISTS `group_user` (
  `id` int(11) NOT NULL,
  `id_group` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `group_user`
--

INSERT INTO `group_user` (`id`, `id_group`, `id_user`) VALUES
(1, 0, 5),
(2, 0, 10),
(3, 0, 15),
(4, 0, 20),
(5, 0, 25),
(6, 0, 2),
(7, 0, 6),
(8, 0, 11),
(9, 0, 16),
(10, 0, 21),
(11, 1, 26),
(12, 1, 2),
(13, 1, 7),
(14, 1, 12),
(15, 1, 17),
(16, 1, 22),
(17, 1, 27),
(18, 2, 3),
(19, 2, 8),
(20, 2, 13),
(21, 2, 18),
(22, 2, 23),
(23, 2, 28),
(24, 2, 4),
(25, 2, 9),
(26, 2, 14),
(27, 2, 19),
(28, 2, 24),
(29, 2, 29),
(30, 2, 5),
(31, 2, 6),
(37, 3, 1),
(39, 3, 19),
(52, 3, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `memo`
--

CREATE TABLE IF NOT EXISTS `memo` (
  `id` int(11) NOT NULL,
  `uname` varchar(256) NOT NULL,
  `header` text NOT NULL,
  `title` varchar(256) NOT NULL,
  `content` text NOT NULL,
  `date` date NOT NULL,
  `paraph` varchar(256) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `memo`
--

INSERT INTO `memo` (`id`, `uname`, `header`, `title`, `content`, `date`, `paraph`) VALUES
(0, 'первая с/з', 'Ректору КБГУ проф. И.И.Иванову от заместителя директора Отдела развития инновационных дисциплин П.П.Петрова', 'служебная записка', 'Прошу Вас освободить от учебных занятий следующих студентов, принимающих участие в мероприянии с 1.09.2016 по 2.09.2016 с выставлением высшего балла по БРС:', '2000-08-03', 'П.П.Петров'),
(1, 'докладная', 'Ректору КБГУ проф. И.И.Иванову от заместителя директора Отдела развития инновационных дисциплин С.С.Сидорова', 'докладная', 'Прошу Вас освободить от учебных занятий следующих студентов, принимающих участие в мероприянии с 2.09.2016 по 3.09.2016 с выставлением высшего балла по БРС:', '2000-08-04', 'С.С.Сидоров'),
(2, 'заявл', 'Ректору КБГУ проф. И.И.Иванову от заместителя директора Отдела развития инновационных дисциплин К.К.Конопатина', 'заявление', 'Прошу Вас освободить от учебных занятий следующих студентов, принимающих участие в мероприянии с 3.09.2016 по 4.09.2016 с выставлением высшего балла по БРС:', '2000-08-05', 'К.К.Конопатин'),
(3, 'письмо', 'Ректору КБГУ проф. И.И.Иванову от заместителя директора Отдела развития инновационных дисциплин В.В.Василюка', 'письмо', 'Прошу Вас освободить от учебных занятий следующих студентов, принимающих участие в мероприянии с 4.09.2016 по 5.09.2016 с выставлением высшего балла по БРС:', '2000-08-06', 'В.В.Василюк');

-- --------------------------------------------------------

--
-- Структура таблицы `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `id` int(11) NOT NULL,
  `uname` varchar(256) NOT NULL,
  `mark` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `role`
--

INSERT INTO `role` (`id`, `uname`, `mark`) VALUES
(0, 'Не участник', 0),
(1, 'Участник', 1),
(2, 'Помощник организатора', 2),
(3, 'Организатор', 4),
(4, 'Главный организатор', 6);

-- --------------------------------------------------------

--
-- Структура таблицы `status`
--

CREATE TABLE IF NOT EXISTS `status` (
  `id` int(11) NOT NULL,
  `uname` varchar(256) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `status`
--

INSERT INTO `status` (`id`, `uname`) VALUES
(0, 'Участник'),
(1, 'Регистратор'),
(2, 'Координатор'),
(3, 'Суперкоординатор');

-- --------------------------------------------------------

--
-- Структура таблицы `unit`
--

CREATE TABLE IF NOT EXISTS `unit` (
  `id` int(11) NOT NULL,
  `uname` varchar(256) NOT NULL,
  `shortname` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `unit`
--

INSERT INTO `unit` (`id`, `uname`, `shortname`) VALUES
(0, 'Институт истории, филологии и СМИ', 'ИИФС'),
(1, 'Политехнический институт', 'ПИ'),
(2, 'Институт права, экономики и финансов', 'ИПЭФ'),
(3, 'Институт информатики, электроники и компьютерных технологий', 'ИИЭКТ'),
(4, 'Институт повышения квалификации', 'ИПК'),
(5, 'Педагогический институт', 'ПИ'),
(6, 'Институт дизайна', 'ИД'),
(7, 'Институт физики и математики', 'ИФМ');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `uname` varchar(15) NOT NULL,
  `middlename` varchar(15) NOT NULL,
  `lastname` varchar(15) NOT NULL,
  `id_department` int(11) NOT NULL,
  `phonenum` varchar(11) NOT NULL,
  `birthday` date NOT NULL,
  `id_status` int(11) NOT NULL,
  `login` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `activist` tinyint(1) NOT NULL,
  `course` int(11) NOT NULL,
  `rate` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `uname`, `middlename`, `lastname`, `id_department`, `phonenum`, `birthday`, `id_status`, `login`, `password`, `activist`, `course`, `rate`) VALUES
(0, 'Елизавета', 'Азина', 'Андреевна', 0, '8002000600', '2000-08-03', 0, 'admin', 'admin', 0, 1, 0),
(1, 'Анна', 'Белик', 'Дмитриевна', 6, '8002000601', '2000-08-04', 0, 'admin1', 'admin1', 1, 1, 0),
(2, 'Алексей', 'Волков', 'Олегович', 5, '8002000602', '2000-08-05', 0, 'admin2', 'admin2', 1, 2, 7),
(3, 'Татьяна', 'Дубровская', 'Валерьевна', 4, '8002000603', '2000-08-06', 0, 'admin3', 'admin3', 1, 2, 2),
(4, 'Анастасия', 'Иовчева', 'Дмитриевна', 3, '8002000604', '2000-08-07', 0, 'admin4', 'admin4', 1, 3, 7),
(5, 'Елена', 'Кравченко', 'Игоревна', 2, '8002000605', '2000-08-08', 0, 'admin5', 'admin5', 1, 4, 2),
(6, 'Александра', 'Лисова', 'Дмитриевна', 1, '8002000606', '2000-08-09', 0, 'admin6', 'admin6', 1, 5, 4),
(7, 'Дарья', 'Михайлова', 'Владимировна', 9, '8002000607', '2000-08-10', 0, 'admin7', 'admin7', 1, 3, 1),
(8, 'Вероника', 'Пискарева', 'Максимовна', 8, '8002000608', '2000-08-11', 0, 'admin8', 'admin8', 1, 2, 2),
(9, 'Наталья', 'Рудик', 'Игоревна', 7, '8002000609', '2000-08-12', 0, 'admin9', 'admin9', 1, 3, 3),
(10, 'Михаил', 'Узор', 'Алексеевич', 10, '8002000610', '2000-08-13', 0, 'admin10', 'admin10', 1, 4, 2),
(11, 'Дарья', 'Фомичева', 'Владимировна', 11, '8002000620', '2000-08-14', 0, 'admin11', 'admin11', 1, 5, 12),
(12, 'Леонид', 'Шмелев', 'Алексеевич', 13, '8002000630', '2000-08-15', 0, 'admin12', 'admin12', 1, 6, 5),
(13, 'Лилия', 'Безбердая', 'Александровна', 15, '8002000640', '2000-08-16', 0, 'admin13', 'admin13', 1, 5, 4),
(14, 'Артем', 'Волобаев', 'Александрович', 0, '8002000650', '2000-08-17', 0, 'admin14', 'admin14', 1, 3, 3),
(15, 'Ирина', 'Капустина', 'Сергеевна', 0, '8002000660', '2000-08-18', 0, 'admin15', 'admin15', 1, 2, 2),
(16, 'Мария', 'Козачук', 'Никитична', 0, '8002000670', '2000-08-19', 0, 'admin16', 'admin16', 1, 2, 2),
(17, 'Полина', 'Мальцева', 'Игоревна', 0, '8002000680', '2000-08-20', 0, 'admin17', 'admin17', 1, 1, 1),
(18, 'Алена', 'Папкина', 'Эдуардовна', 0, '8002000690', '2000-08-21', 0, 'admin18', 'admin18', 1, 1, 1),
(19, 'Мария', 'Билык', 'Александровна', 0, '8002001600', '2000-08-22', 0, 'admin19', 'admin19', 1, 2, 0),
(20, 'Анастасия', 'Васиуллина', 'Ильинична', 0, '8002002600', '2000-08-23', 0, 'admin20', 'admin20', 1, 3, 0),
(21, 'Наталья', 'Кислякова', 'Юрьевна', 0, '8002003600', '2000-08-24', 0, 'admin21', 'admin21', 1, 4, 1),
(22, 'Алексей', 'Лобанов', 'Александрович', 4, '8002004600', '2000-08-25', 0, 'admin22', 'admin22', 1, 5, 1),
(23, 'Александр', 'Рыжов', 'Владимирович', 4, '8002005600', '2000-08-26', 0, 'admin23', 'admin23', 1, 4, 4),
(24, 'Ксения', 'Сорокина', 'Игоревна', 4, '8002006600', '2000-08-27', 0, 'admin24', 'admin24', 1, 4, 5),
(25, 'Ксения', 'Фоменкова', 'Витальевна', 5, '8002007600', '2000-08-28', 0, 'admin25', 'admin25', 1, 2, 2),
(26, 'Джессика', 'Васильчук', 'Юрьевна', 8, '8002008600', '2000-08-29', 0, 'admin26', 'admin26', 1, 3, 1),
(27, 'Валентина', 'Гаврилова', 'Игоревна', 2, '8002009600', '2000-08-30', 0, 'admin27', 'admin27', 1, 4, 1),
(28, 'Анна', 'Киселева', 'Юрьевна', 3, '8002010600', '2000-08-31', 0, 'admin28', 'admin28', 1, 1, 4),
(29, 'Илья', 'Корляков', 'Дмитриевич', 1, '8002020600', '2000-09-01', 0, 'admin29', 'admin29', 1, 1, 2);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `event_activity`
--
ALTER TABLE `event_activity`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `event_eventtype`
--
ALTER TABLE `event_eventtype`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `event_user_status_role`
--
ALTER TABLE `event_user_status_role`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `group_user`
--
ALTER TABLE `group_user`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `memo`
--
ALTER TABLE `memo`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT для таблицы `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT для таблицы `event_activity`
--
ALTER TABLE `event_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `event_eventtype`
--
ALTER TABLE `event_eventtype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT для таблицы `event_user_status_role`
--
ALTER TABLE `event_user_status_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT для таблицы `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `group_user`
--
ALTER TABLE `group_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT для таблицы `memo`
--
ALTER TABLE `memo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
