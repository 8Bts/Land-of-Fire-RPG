-- phpMyAdmin SQL Dump
-- version 3.5.3
-- http://www.phpmyadmin.net
--
-- Хост: 46.174.49.4
-- Время создания: Сен 03 2017 г., 08:44
-- Версия сервера: 5.5.55-0+deb8u1-log
-- Версия PHP: 5.4.40-pl0-gentoo

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `randy010_data`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Ban`
--

CREATE TABLE IF NOT EXISTS `Ban` (
  `Name` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `BanDate` datetime NOT NULL,
  `Duration` int(6) NOT NULL,
  `FinishTime` datetime NOT NULL,
  `AdminName` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `Reason` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `Ip` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  KEY `Name` (`Name`(24)),
  KEY `FinishTime` (`FinishTime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `Banip`
--

CREATE TABLE IF NOT EXISTS `Banip` (
  `Ip` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `BanDate` datetime NOT NULL,
  `Duration` int(6) NOT NULL,
  `FinishTime` datetime NOT NULL,
  `Reason` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  KEY `Ip` (`Ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `Bizzes`
--

CREATE TABLE IF NOT EXISTS `Bizzes` (
  `id` int(6) NOT NULL,
  `Owned` int(6) NOT NULL,
  `Owner` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Discription` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Extortion` int(5) NOT NULL DEFAULT '0',
  `EntranceX` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `EntranceY` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `EntranceZ` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `Interior` int(6) NOT NULL,
  `ExitX` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `ExitY` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `ExitZ` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `Level` int(6) NOT NULL,
  `Price` int(6) NOT NULL,
  `EntranceCost` int(6) NOT NULL,
  `Products` int(6) NOT NULL,
  `MaxProducts` int(6) NOT NULL,
  `Lock` int(12) NOT NULL,
  `Money` int(6) NOT NULL,
  `PriceProd` int(24) NOT NULL,
  `World` int(12) NOT NULL,
  `Icon` int(8) NOT NULL,
  `DonatePrice` int(16) NOT NULL,
  `Procent` int(4) NOT NULL DEFAULT '10',
  `LastVisit` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `Bizzes`
--

INSERT INTO `Bizzes` (`id`, `Owned`, `Owner`, `Discription`, `Extortion`, `EntranceX`, `EntranceY`, `EntranceZ`, `Interior`, `ExitX`, `ExitY`, `ExitZ`, `Level`, `Price`, `EntranceCost`, `Products`, `MaxProducts`, `Lock`, `Money`, `PriceProd`, `World`, `Icon`, `DonatePrice`, `Procent`, `LastVisit`) VALUES
(24, 0, 'The State', '', 0, '-1941.817871', '2379.551269', '49.695301', 3, '1212.124389', '-25.882200', '1000.953125', 10, 5000000, 1337, 459, 500, 0, 7488, 6, 25, 0, 0, 0, '2015-01-31 12:21:26'),
(23, 0, 'The State', '', 0, '-2523.965332', '1216.255004', '37.483600', 3, '1212.124389', '-25.882200', '1000.953125', 10, 5000000, 1000, 490, 500, 0, 0, 100, 24, 0, 0, 0, '2015-08-16 06:13:52'),
(22, 0, 'The State', 'Sat', 0, '1836.183227', '-1682.484619', '13.358592', 17, '493.144287', '-24.260700', '1000.679687', 10, 5000, 5000, 282, 500, 0, 0, 9, 23, 0, 0, 0, '2015-10-12 11:52:15'),
(21, 0, 'The State', '', 0, '24.312654', '-2646.596191', '40.464099', 17, '493.144287', '-24.260700', '1000.679687', 5, 1, 5000, 308, 500, 0, 0, 6, 22, 0, 0, 0, '2015-07-09 14:20:54'),
(20, 0, 'The State', 'Sat', 0, '2007.441284', '1227.280029', '10.812973', 17, '493.144287', '-24.260700', '1000.679687', 10, 1, 1, 129, 500, 0, 1, 75, 21, 0, 0, 5, '2015-10-11 21:56:05'),
(19, 0, 'The State', '', 0, '2196.202148', '1677.111694', '12.367197', 1, '2234.034667', '1713.419555', '1012.131286', 10, 10000000, 5000, 350, 500, 0, 4667, 7, 20, 0, 0, 0, '2015-08-18 22:48:12'),
(18, 0, 'The State', 'Sat', 0, '2019.522827', '1007.694213', '10.820300', 10, '2018.802246', '1017.977722', '996.875000', 10, 10000, 1, 488, 500, 0, 0, 50, 19, 0, 0, 0, '2015-09-27 18:54:35'),
(17, 0, 'The State', 'Sat', 0, '-2093.147949', '-2464.383300', '30.625000', 1, '286.256896', '-30.385900', '1001.515625', 1, 1, 5000, 490, 500, 0, 0, 7, 18, 0, 0, 0, '2015-10-03 09:35:14'),
(16, 0, 'The State', 'Sat', 0, '2400.397705', '-1981.691406', '13.546875', 4, '285.727111', '-85.913497', '1001.522888', 10, 10000000, 5000, 451, 500, 0, 0, 10, 17, 0, 0, 0, '2015-10-10 10:42:51'),
(15, 0, 'The State', 'Sat', 0, '2158.618896', '943.420715', '10.820300', 7, '315.762207', '-143.304092', '999.601623', 1, 1, 101, 433, 500, 0, 0, 100, 16, 0, 0, 50, '2015-10-03 10:01:57'),
(14, 0, 'The State', 'Sat', 0, '-316.159210', '830.021972', '14.242197', 1, '286.256896', '-30.385900', '1001.515625', 10, 1000, 5000, 419, 500, 0, 0, 6, 15, 0, 0, 0, '2015-10-11 22:24:05'),
(13, 0, 'The State', 'Sat', 0, '2363.286376', '2377.655029', '10.820302', 0, '2305.688964', '-16.088100', '26.749599', 10, 8000000, 5000, 345, 500, 0, 0, 100, 14, 0, 0, 0, '2015-10-08 21:31:13'),
(12, 0, 'The State', 'Sat', 0, '-1581.240600', '903.586364', '7.695312', 0, '2305.688964', '-16.088100', '26.749599', 10, 50, 3000, 310, 500, 0, 0, 50, 13, 0, 0, 0, '2015-10-07 18:24:25'),
(11, 0, 'The State', '', 0, '-2111.067382', '-444.297210', '38.734401', 14, '-1464.664550', '1556.514770', '1052.531250', 5, 100000, 999, 468, 500, 0, 3732, 6, 1, 33, 0, 0, '2015-05-21 20:48:25'),
(10, 0, 'The State', '', 0, '2695.678955', '-1704.764892', '11.843791', 7, '-1405.065551', '-260.535797', '1043.656250', 5, 100000, 350, 380, 500, 0, 327, 100, 1, 33, 0, 0, '2015-08-13 23:10:43'),
(9, 1, 'Macmilan_Price', 'Al Cevati Icine', 12, '-2016.434326', '-28.989200', '35.227798', 3, '-100.442901', '-24.244600', '1000.718811', 5, 100000, 5000, 394, 500, 0, 0, 7, 2, 36, 0, 11, '2017-08-14 11:56:59'),
(8, 0, 'The State', 'Sat', 0, '1087.915771', '-923.601867', '43.390625', 3, '-100.501960', '-23.999259', '1000.718750', 3, 0, 3333, 405, 500, 0, 3130, 6, 1, 36, 0, 0, '2015-10-03 13:54:45'),
(7, 0, 'The State', 'Sat', 0, '-2625.821777', '209.105194', '4.617300', 7, '315.762207', '-143.304092', '999.601623', 5, 150000, 5000, 364, 500, 0, 4667, 7, 1, 6, 0, 0, '2015-10-09 17:22:01'),
(6, 0, 'The State', '', 0, '-2243.039550', '-88.128799', '35.320301', 11, '501.968414', '-68.050102', '998.757812', 5, 50000, 1337, 487, 500, 0, 0, 100, 1, 49, 0, 0, '2015-08-10 17:01:44'),
(5, 0, 'The State', 'Sat', 0, '-2624.177978', '1412.516357', '7.093800', 3, '-2637.018066', '1402.688842', '906.460876', 5, 75000, 30, 459, 500, 0, 0, 15, 1, 48, 0, 0, '2015-10-12 21:44:40'),
(4, 0, 'The State', '', 0, '1462.395751', '-1012.391174', '26.843799', 0, '2305.688964', '-16.088100', '26.749599', 999, 1, 4999, 66, 500, 0, 1081244, 20, 1, 52, 0, 0, '2014-11-20 09:37:16'),
(3, 0, 'The State', 'SatЊlЊr', 0, '1568.625122', '-1690.535766', '5.890600', 10, '246.376007', '109.246002', '1003.218811', 5, 1, 100, 57, 500, 0, 0, 6, 0, 6, 0, 0, '2017-07-28 09:46:27'),
(2, 0, 'The State', 'Sat', 0, '1498.360107', '-1583.031860', '13.546895', 1, '-794.936218', '490.632385', '1376.195312', 5, 1, 5000, 337, 500, 0, 9334, 100, 0, 50, 0, 0, '2015-10-10 15:34:10'),
(1, 1, 'Randy', 'AMMO LS', 0, '1367.234619', '-1279.980102', '13.546875', 4, '285.727111', '-85.913497', '1001.522888', 5, 150000, 5000, 444, 500, 0, 9334, 6, 0, 6, 0, 0, '2017-09-01 20:42:05'),
(0, 0, 'The State', 'Sat', 0, '1791.212036', '-1164.631713', '23.828100', 1, '286.256896', '-30.385900', '1001.515625', 5, 150000, 5000, 471, 500, 0, 4947, 25, 0, 6, 0, 0, '2015-10-10 10:45:08'),
(25, 0, 'The State', '', 0, '-19.213100', '1175.229248', '19.563400', 11, '501.968414', '-68.050102', '998.757812', 10, 5000000, 1000, 467, 500, 0, 934, 10, 26, 0, 0, 0, '2015-05-03 12:36:06'),
(26, 0, 'The State', 'Sat', 0, '2309.570800', '-1643.683715', '14.827047', 11, '501.968414', '-68.050102', '998.757812', 10, 5000, 1488, 266, 500, 0, 0, 100, 27, 0, 0, 0, '2015-10-11 22:24:47'),
(27, 0, 'The State', '', 0, '-2104.683349', '-2342.156738', '30.617206', 11, '501.825408', '-68.243247', '998.757812', 5, 1, 228, 468, 500, 0, 0, 6, 28, 0, 0, 0, '2015-06-30 20:37:27'),
(28, 0, 'The State', '', 0, '2507.438964', '1242.756958', '10.820300', 11, '501.968414', '-68.050102', '998.757812', 10, 5000000, 5000, 438, 500, 0, 4667, 6, 29, 0, 0, 1, '2015-07-08 22:20:46');

-- --------------------------------------------------------

--
-- Структура таблицы `Cars`
--

CREATE TABLE IF NOT EXISTS `Cars` (
  `id` int(8) NOT NULL,
  `Park` int(2) NOT NULL DEFAULT '1',
  `carX` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `carY` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `carZ` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `carA` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `Model` int(6) NOT NULL,
  `Owner` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `Owned` int(6) NOT NULL,
  `Number` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `Price` int(16) NOT NULL,
  `Level` int(12) NOT NULL,
  `Spoiler` int(6) NOT NULL,
  `Hood` int(6) NOT NULL,
  `Sideskirt` int(6) NOT NULL,
  `Nitro` int(6) NOT NULL,
  `Lamps` int(6) NOT NULL,
  `Exhaust` int(6) NOT NULL,
  `Wheels` int(6) NOT NULL,
  `Roof` int(6) NOT NULL,
  `Stereo` int(6) NOT NULL,
  `Hydraulics` int(6) NOT NULL,
  `Bullbar` int(6) NOT NULL,
  `RearBullbars` int(6) NOT NULL,
  `FrontSign` int(6) NOT NULL,
  `FrontBullbars` int(6) NOT NULL,
  `FrontBumper` int(6) NOT NULL,
  `RearBumper` int(6) NOT NULL,
  `Vents` int(6) NOT NULL,
  `Color1` int(6) NOT NULL,
  `Color2` int(6) NOT NULL,
  `PaintJob` int(6) NOT NULL,
  `Dump` int(6) NOT NULL,
  `Key` int(6) NOT NULL,
  `LastVisit` datetime NOT NULL,
  `DonatePrice` int(16) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `Cars`
--

INSERT INTO `Cars` (`id`, `Park`, `carX`, `carY`, `carZ`, `carA`, `Model`, `Owner`, `Owned`, `Number`, `Price`, `Level`, `Spoiler`, `Hood`, `Sideskirt`, `Nitro`, `Lamps`, `Exhaust`, `Wheels`, `Roof`, `Stereo`, `Hydraulics`, `Bullbar`, `RearBullbars`, `FrontSign`, `FrontBullbars`, `FrontBumper`, `RearBumper`, `Vents`, `Color1`, `Color2`, `PaintJob`, `Dump`, `Key`, `LastVisit`, `DonatePrice`) VALUES
(2, 1, '1532.023803', '-1675.705566', '13.189271', '0.932816', 602, '', 0, '10-ZZ-001', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, -1, 0, 0, '0000-00-00 00:00:00', 0),
(1, 1, '1109.432495', '-942.407653', '42.441745', '83.688179', 560, '', 0, '10-OO-002', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, -1, 0, 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `DonateLog`
--

CREATE TABLE IF NOT EXISTS `DonateLog` (
  `id` int(11) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Code` int(11) NOT NULL,
  `Value` int(6) NOT NULL,
  `Date` datetime NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `DonateLog`
--

INSERT INTO `DonateLog` (`id`, `Name`, `Code`, `Value`, `Date`) VALUES
(0, 'Macmilan_Price', 607585853, 100, '2017-08-05 21:18:51'),
(0, 'Macmilan_Price', 557997229, 100, '2017-08-05 21:27:36'),
(1, 'Randy', 91990284, 100, '2017-08-16 13:19:11'),
(1, 'Randy', 792083719, 100, '2017-08-16 13:23:36'),
(5, 'Macmilan_Price', 174314310, 100, '2017-08-21 11:09:20');

-- --------------------------------------------------------

--
-- Структура таблицы `Faction_Ranks`
--

CREATE TABLE IF NOT EXISTS `Faction_Ranks` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `Rank1` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Ранг отсутствует',
  `Rank2` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Ранг отсутствует',
  `Rank3` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Ранг отсутствует',
  `Rank4` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Ранг отсутствует',
  `Rank5` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Ранг отсутствует',
  `Rank6` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Ранг отсутствует',
  `Rank7` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Ранг отсутствует',
  `Rank8` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Ранг отсутствует',
  `Rank9` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Ранг отсутствует',
  `Rank10` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Ранг отсутствует',
  `Rank11` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Ранг отсутствует',
  `Rank12` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Ранг отсутствует',
  `Rank13` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Ранг отсутствует',
  `Rank14` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Ранг отсутствует',
  `Rank15` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Ранг отсутствует',
  `Rank16` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Ранг отсутствует',
  `Rank17` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Ранг отсутствует',
  `Rank18` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Ранг отсутствует',
  `Rank19` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Ранг отсутствует',
  `Rank20` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Ранг отсутствует',
  UNIQUE KEY `id_2` (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=20 ;

--
-- Дамп данных таблицы `Faction_Ranks`
--

INSERT INTO `Faction_Ranks` (`id`, `Rank1`, `Rank2`, `Rank3`, `Rank4`, `Rank5`, `Rank6`, `Rank7`, `Rank8`, `Rank9`, `Rank10`, `Rank11`, `Rank12`, `Rank13`, `Rank14`, `Rank15`, `Rank16`, `Rank17`, `Rank18`, `Rank19`, `Rank20`) VALUES
(1, 'Kiçik Serjant', 'Serjant', 'Baş Serjant', 'Kiçik Leytenant', 'Leytenant', 'Baş Leytenant', 'S.W.A.T polisi', 'Baş S.W.A.T Polisi', 'S.W.A.T Sədri', 'Kapitan', 'Mayor', 'Polkovnik-leytenant', 'Polkovnik', 'İnspektor', 'Baş İnspektor', 'Komissar', 'General', 'İkinci Müavin', 'Birinci Müavin', 'Rəis'),
(2, 'Stajor', 'Kiçik Casus', 'Casus', 'Baş Casus', 'Federal Casus', 'Xüsusi Casus', 'Gizli Casus', 'DEA Əməkdaşı', 'Baş DEA Əməkdaşı', 'DEA Sədri', 'CID Əməkdaşı', 'Baş CID Əməkdaşı', 'CID Sədri', 'Məşqçi', 'Inspektor Müavini', 'İnspektor', 'Baş İnspektor', 'Şərəfli Casus', 'Sədr Müavini', 'Sədr'),
(3, 'Gizir', 'Приказной', 'Младший Урядник', 'Урядник', 'Старший Урядник', 'Младший Вахмистр', 'Вахмистр', 'Старший Вахмистр', 'Подхорунжий', 'Хорунжий', 'Старший Хорунжий', 'Подъесаул', 'Есаул', 'Войсковой Старшина', 'Казачий Полковник', 'Атаман', 'Генерал Лейтенант', 'Генерал Полковник', 'Ali Bas Komandan', 'Ali Bas Komandan'),
(4, 'Стажер', 'Дежурный Больницы', 'Аллерголог', 'Герантолог', 'Интерн', 'Андролог', 'Педиатр', 'Травматолог', 'Терапевт', 'Психолог', 'Начинающий пожарный', 'Пожарный LS', 'Пожарный LV', 'Пожарный SF', 'Заведующий П.Ч', 'Легенда Минздрава', 'Дир. Пожарной Части', 'Глав.врач больницы ', 'Заведующий МЧС ', 'Минздрав LS'),
(5, 'Novizio', 'Assosiato', 'Soldato', 'Anziano', 'Mediko', 'Soto Capo', 'Capo', '8.Младший Босс.', '9.Коньсельери.', 'Отец', '11. Казначей', '12. Гл. Казначей ', '13. Елитный боець.', '14. Гл. Елиты.', '15. Босс.', '16.', 'Elite', 'Capo Elite', 'Padre', 'Leggendario'),
(6, '1. Gakusey', '2. Vakasu', '3. Tomodati', '4. Oto', '5. Sono', '6. Ani', '7. Keyken', '8. Syateigasira', '9. Vakagasira', '10. Kambu', '11. Syatei', 'Директор ФБР', '13. Saiko Komon', '14. Furui Otoko', 'Elite Of Syndicate', 'Leader Elite', '17. Oyabun Kobun', '18. Oyadzi', 'Legend Of Syndicate', 'Kumite'),
(7, 'Практикант', 'Консультант', 'Охранник', 'Начальник Мл.Состава', 'Сатана', 'Нету ранга', 'Адвокат', 'Змеина подколотная', 'Президент РФ', 'Пердак', 'Нету ранга', 'Нету ранга', 'Нету ранга', 'Нету ранга', 'Нету ранга', 'Мер', 'Начальник Юстиции', 'Советник Мэра', 'Зам.Мэра', 'Мэр'),
(8, '1. Начинающий хитман', 'Проверенный Агент', 'Сотрудник Агенства', 'Наемный Убийца', 'Бесшумный убийца', 'Кровавый Убийца', 'Профессионал', 'Криминальный Убийца', 'Бессмертный Убийца', 'Тестер Агентства', 'Легенда Агентства', 'None', 'None', 'None', 'Батя Отец', 'None', 'None', 'Ебашер CrimeStreets', 'Зам. Директора', 'Директор Агенства'),
(9, 'Парковщик', 'Фотограф', 'Репортер', 'Корреспондент', 'Главный редактор', 'Директор', 'Генеральный директор', 'Главный', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'Честный репортер', 'zam. bossa', 'None', 'Boss', 'Директор CNN'),
(10, 'Support', 'Hang Around', 'St.Hang Around', 'Prospect', 'Proven', 'Member', 'Rogue', 'Brigand', 'Mercenary', 'Road Captain', 'Sergeant at Arms', 'Treasurer', 'Consultor', 'Autority', 'Vice President', 'Старушка Скарамуша', 'Old Legend', 'SAMCRO Legend', 'Second President', 'President'),
(11, 'BIG RUSSIAN BOSS', 'Консультант', 'Инструктор', 'Cтарший Инструктор', 'Менеджер', 'Путин', 'Администратор АШ', 'Ранг отсутствует', 'Ранг отсутствует', 'Лицеренок', 'Ранг отсутствует', 'Ранг отсутствует', 'Ранг отсутствует', 'NoNe', 'EBASHER', 'Путин', 'Зам. Директора АШ', 'Директор Автошколы', 'Сама', 'Папа'),
(12, 'Лидер мафии', '2. Испытуемый', '3. Бывалый', '4. Фраер', '5. Козырный Фраер', '6. Вышибала', '7. Браток', '8. Бандит', 'Оружейный Барон', 'Наркобарон', '11. Барыга', 'Сестренка мафии', '13. Смотрящий', '14. Бригадир', '15. Решала', 'Блатной', 'Авторитет', 'Вор', 'Элитный Боец', 'Отец Мафии'),
(13, '1. Rookie', '2. Known', '3. Homie', '4. Crank', '5. Young Gangster', '6. Molester', '7. Ghetto Soldier', '8. Gangster', '9. Madman', '10. Ballaz Killa', '11. Blood Nigga', '12. Mad Gangsta', '13. Playa', '14. Purple Native', '15. Black Soul', '16. Old Gangster', '17. Big Bro', 'Legendary', '19. Authority', '20. Pac'),
(14, 'New blood', 'Lil', 'Homie ', 'малой', 'негр в душЕ', 'пацан поднялся', 'барыга', 'тренер', 'бог маркетинга', 'чирик', 'нигритос', 'Гангста', 'Big Willy', 'задрот', 'агрессор', 'пупсик хD', '17.Pac', 'Big brother', 'свой человек', 'Legenda of Grove St.'),
(15, 'El Padre', 'II.Novato', 'III.Local', 'IV. Bandito', 'V.Amigo', 'VI. Conocido', 'Vll.Hermano', 'VllI.Soldado', 'IX. Cierto', 'X.Latino', 'XI.Assesino', 'XII.Desperanto', 'XIll.Hononario', 'XIV.Elegante', 'XV.Cutthroat', 'XVl.Autoridad', 'Guardian', 'Suplente', 'Leyenda', 'Отец'),
(16, '1 Gringo', '2 Papo', '3 Novato', '4 Local', '5 Bandido', '6 Estimado', '7 Combate', '8 Guarero', '9 Latino', '10 Amigo', '11 Hermano', '12 Capitulo', '13 Tirador', '14 Formado', '15 Soldado', '16 Loco', '17 Desperado', '18 Criminal', 'Leyenda', 'Padre'),
(17, 'Отец', '2. ', '3. ', '4. ', '5. ', '6. ', '7. ', '8. ', '9. ', '10.', '11.', '12.', '13.', '14.', '15.', '16.', '17.', 'Proximo', 'Отец', 'Отец'),
(18, '1.Шнырь', '2.Комбайнер', '3.Калдырь', '4.Ханыга', '5.Нюхач', '6.Бухарь', '7.Трудяга', '8.Рабочий', '9.Тракторист', '10.Барыга', '11.Фасовщик', '12.Веселый Фермер', '13.Агроном', '14.Невъебенный', '15.Cельский хитмэн', '16.Уважаемый', '17.Раста', '18.Правая Ноздря', 'Легенда', 'Нркбрн'),
(0, 's', 's', 's', 's', 's', 'Ранг отсутствует', 'Ранг отсутствует', 'Ранг отсутствует', 'Ранг отсутствует', 'Ранг отсутствует', 'Ранг отсутствует', 'Ранг отсутствует', 'Ранг отсутствует', 'Ранг отсутствует', 'Ранг отсутствует', 'Ранг отсутствует', 'Ранг отсутствует', 'Ранг отсутствует', 'Ранг отсутствует', 'Ранг отсутствует');

-- --------------------------------------------------------

--
-- Структура таблицы `Gang_BallasCars`
--

CREATE TABLE IF NOT EXISTS `Gang_BallasCars` (
  `id` int(11) NOT NULL,
  `CarSpawnX` varchar(24) CHARACTER SET utf8 NOT NULL,
  `CarSpawnY` varchar(24) CHARACTER SET utf8 NOT NULL,
  `CarSpawnZ` varchar(24) CHARACTER SET utf8 NOT NULL,
  `CarSpawnA` varchar(24) CHARACTER SET utf8 NOT NULL,
  `Model` int(6) NOT NULL,
  `CarColor1` int(6) NOT NULL,
  `CarColor2` int(6) NOT NULL,
  `RespDelay` int(12) NOT NULL,
  `CarRank` int(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `Gang_BallasCars`
--

INSERT INTO `Gang_BallasCars` (`id`, `CarSpawnX`, `CarSpawnY`, `CarSpawnZ`, `CarSpawnA`, `Model`, `CarColor1`, `CarColor2`, `RespDelay`, `CarRank`) VALUES
(0, '2785.756103', '-1970.768920', '13.154019', '68.623977', 510, 0, 0, 500, 1),
(1, '2785.736572', '-1969.246582', '13.128162', '69.785018', 521, 0, 0, 500, 1),
(2, '2785.641357', '-1967.577514', '13.117759', '65.485816', 521, 0, 0, 500, 5),
(3, '2785.896240', '-1965.897583', '13.117874', '69.847991', 521, 0, 0, 500, 7),
(4, '2773.663818', '-1975.248413', '13.242362', '179.749572', 566, 22, 0, 500, 1),
(5, '2773.608642', '-1966.982666', '13.187894', '180.138381', 566, 22, 0, 500, 1),
(6, '2773.700439', '-1958.267822', '13.273493', '180.118560', 517, 22, 0, 500, 1),
(7, '2765.265869', '-1975.114990', '13.535887', '180.460220', 418, 22, 0, 500, 1),
(8, '2773.739990', '-1941.499755', '13.152260', '359.940979', 536, 22, 0, 500, 1),
(9, '2773.679687', '-1932.156372', '13.270221', '0.733546', 567, 22, 0, 500, 1),
(10, '2765.326171', '-1932.190795', '13.242054', '2.048075', 412, 22, 0, 500, 1),
(11, '2765.423828', '-1941.512817', '13.268281', '359.329559', 412, 22, 0, 500, 1),
(12, '2750.026611', '-1944.429931', '13.310209', '90.024230', 535, 22, 0, 500, 7),
(13, '2765.392333', '-1958.541625', '13.142603', '178.506744', 466, 22, 0, 500, 7),
(14, '2765.356445', '-1967.200317', '13.154491', '179.066986', 466, 22, 0, 500, 7);

-- --------------------------------------------------------

--
-- Структура таблицы `Gang_BikersCars`
--

CREATE TABLE IF NOT EXISTS `Gang_BikersCars` (
  `id` int(11) NOT NULL,
  `CarSpawnX` varchar(24) NOT NULL,
  `CarSpawnY` varchar(24) NOT NULL,
  `CarSpawnZ` varchar(24) NOT NULL,
  `CarSpawnA` varchar(24) NOT NULL,
  `Model` int(6) NOT NULL,
  `CarColor1` int(6) NOT NULL,
  `CarColor2` int(6) NOT NULL,
  `RespDelay` int(12) NOT NULL,
  `CarRank` int(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Gang_BikersCars`
--

INSERT INTO `Gang_BikersCars` (`id`, `CarSpawnX`, `CarSpawnY`, `CarSpawnZ`, `CarSpawnA`, `Model`, `CarColor1`, `CarColor2`, `RespDelay`, `CarRank`) VALUES
(0, '-84.296470', '1211.185058', '19.279203', '208.278045', 463, 0, 3, 60, 1),
(1, '-82.496353', '1211.401245', '19.282894', '204.716323', 463, 0, 3, 60, 1),
(2, '-86.378913', '1211.260131', '19.282321', '210.432662', 463, 0, 3, 60, 1),
(3, '-88.479835', '1211.084350', '19.282281', '211.973617', 463, 0, 3, 60, 1),
(4, '-90.353637', '1210.855224', '19.282375', '214.800628', 463, 0, 3, 60, 1),
(5, '-92.130683', '1210.764282', '19.282403', '214.959777', 463, 0, 3, 60, 5),
(6, '-94.006233', '1210.725097', '19.281909', '212.297882', 463, 0, 3, 60, 5),
(7, '-95.984924', '1210.690063', '19.282026', '215.649688', 463, 0, 3, 60, 5),
(8, '-103.195632', '1219.204589', '19.257087', '248.791259', 586, 0, 3, 60, 5),
(9, '-103.188400', '1217.244873', '19.254932', '251.444335', 586, 0, 3, 60, 5),
(10, '-103.055084', '1215.286987', '19.241092', '258.461181', 586, 0, 3, 60, 5),
(11, '-103.059265', '1213.320556', '19.255352', '254.303253', 586, 0, 3, 60, 5),
(12, '-73.473327', '1233.418334', '19.789051', '178.792205', 554, 3, 0, 60, 5),
(13, '-94.207572', '1221.793701', '19.900178', '179.999145', 482, 0, 3, 60, 5),
(14, '-72.776748', '1213.269897', '19.820091', '180.116973', 413, 0, 0, 60, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `Gang_Commons`
--

CREATE TABLE IF NOT EXISTS `Gang_Commons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Drugs` int(11) NOT NULL,
  `Materials` int(11) NOT NULL,
  `Money` int(11) NOT NULL,
  `Password` int(6) NOT NULL DEFAULT '1234',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Дамп данных таблицы `Gang_Commons`
--

INSERT INTO `Gang_Commons` (`id`, `Drugs`, `Materials`, `Money`, `Password`) VALUES
(0, 26682, 38713, 30999, 2684),
(1, 15368, 40000, 20014836, 1941),
(2, 33543, 40000, 0, 2202),
(3, 38817, 40000, 15516353, 3112),
(4, 2833, 40000, 20000000, 1208),
(5, 7352, 165134, 20000000, 4128),
(6, 0, 0, 200, 1133),
(7, 6949, 40000, 20000000, 1860),
(8, 0, 0, 1488, 7532),
(9, 22172, 40000, 0, 2303);

-- --------------------------------------------------------

--
-- Структура таблицы `Gang_CoronosCars`
--

CREATE TABLE IF NOT EXISTS `Gang_CoronosCars` (
  `id` int(11) NOT NULL,
  `CarSpawnX` varchar(24) CHARACTER SET cp1251 NOT NULL,
  `CarSpawnY` varchar(24) CHARACTER SET cp1251 NOT NULL,
  `CarSpawnZ` varchar(24) CHARACTER SET cp1251 NOT NULL,
  `CarSpawnA` varchar(24) CHARACTER SET cp1251 NOT NULL,
  `Model` int(6) NOT NULL,
  `CarColor1` int(6) NOT NULL,
  `CarColor2` int(6) NOT NULL,
  `RespDelay` int(12) NOT NULL,
  `CarRank` int(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Gang_CoronosCars`
--

INSERT INTO `Gang_CoronosCars` (`id`, `CarSpawnX`, `CarSpawnY`, `CarSpawnZ`, `CarSpawnA`, `Model`, `CarColor1`, `CarColor2`, `RespDelay`, `CarRank`) VALUES
(0, '1802.739379', '-1926.263305', '13.169888', '90.043601', 566, 103, 0, 60, 1),
(1, '1802.551025', '-1918.510620', '13.196429', '89.343368', 475, 103, 0, 60, 12),
(2, '1782.294311', '-1888.060668', '13.154910', '177.753845', 535, 106, 0, 60, 1),
(3, '1776.175781', '-1907.410400', '12.954095', '268.549987', 521, 106, 0, 300, 1),
(4, '1775.843994', '-1912.225830', '13.055360', '274.793212', 468, 106, 0, 300, 3),
(5, '1803.005126', '-1910.330444', '13.260636', '88.439483', 567, 106, 0, 300, 7),
(6, '1803.023925', '-1906.010986', '13.270782', '90.806213', 567, 106, 0, 300, 1),
(7, '1773.037719', '-1902.044433', '13.157652', '234.261230', 510, 0, 0, 300, 1),
(8, '1796.815673', '-1932.484619', '13.111539', '359.980224', 534, 103, 0, 300, 18),
(9, '1786.995605', '-1888.266235', '13.157176', '177.760620', 474, 103, 0, 300, 19),
(10, '1802.747070', '-1922.371459', '13.167816', '88.905326', 566, 106, 0, 300, 7),
(11, '1792.660522', '-1932.395141', '13.110702', '358.861480', 534, 106, 0, 300, 1),
(12, '1775.951171', '-1909.841918', '12.956501', '273.332824', 521, 103, 0, 300, 1),
(13, '1802.561035', '-1914.359252', '13.199972', '90.312248', 475, 103, 0, 300, 17),
(14, '1777.403686', '-1924.839843', '13.506011', '270.264221', 482, 106, 0, 300, 12);

-- --------------------------------------------------------

--
-- Структура таблицы `Gang_GroveCars`
--

CREATE TABLE IF NOT EXISTS `Gang_GroveCars` (
  `id` int(11) NOT NULL,
  `CarSpawnX` varchar(24) NOT NULL,
  `CarSpawnY` varchar(24) NOT NULL,
  `CarSpawnZ` varchar(24) NOT NULL,
  `CarSpawnA` varchar(24) NOT NULL,
  `Model` int(6) NOT NULL,
  `CarColor1` int(6) NOT NULL,
  `CarColor2` int(6) NOT NULL,
  `RespDelay` int(12) NOT NULL,
  `CarRank` int(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Gang_GroveCars`
--

INSERT INTO `Gang_GroveCars` (`id`, `CarSpawnX`, `CarSpawnY`, `CarSpawnZ`, `CarSpawnA`, `Model`, `CarColor1`, `CarColor2`, `RespDelay`, `CarRank`) VALUES
(0, '2531.744873', '-1668.658325', '14.739052', '88.878494', 521, 44, 0, 60, 5),
(1, '2531.752197', '-1667.060058', '14.733493', '86.181709', 521, 44, 44, 60, 5),
(2, '2490.956054', '-1684.141601', '13.079958', '267.707824', 554, 44, 44, 60, 1),
(3, '2495.396728', '-1647.699096', '13.108481', '172.035888', 535, 44, 44, 100, 1),
(4, '2500.257812', '-1648.675537', '13.137825', '165.310562', 475, 44, 44, 100, 15),
(5, '2517.294189', '-1672.226318', '13.613478', '61.166458', 566, 44, 44, 100, 15),
(6, '2484.821777', '-1683.247802', '12.904891', '75.698944', 475, 44, 44, 100, 1),
(7, '2473.594970', '-1696.390625', '13.087186', '353.050872', 482, 44, 44, 100, 1),
(8, '2470.490478', '-1670.192260', '12.880969', '14.451259', 567, 44, 44, 100, 1),
(9, '2472.691162', '-1676.686401', '12.907091', '24.812124', 580, 44, 44, 100, 1),
(10, '2483.776855', '-1655.744628', '12.891035', '270.085479', 581, 44, 44, 100, 1),
(11, '2489.328857', '-1650.807006', '13.077581', '176.271087', 509, 44, 44, 100, 1),
(12, '2490.873291', '-1650.703125', '13.079659', '178.581344', 510, 44, 44, 100, 1),
(13, '2503.896484', '-1680.463256', '12.954613', '311.983947', 492, 44, 44, 100, 7),
(14, '2507.916259', '-1676.468505', '13.144072', '326.565399', 475, 44, 44, 300, 20);

-- --------------------------------------------------------

--
-- Структура таблицы `Gang_KolhozCars`
--

CREATE TABLE IF NOT EXISTS `Gang_KolhozCars` (
  `id` int(11) NOT NULL,
  `CarSpawnX` varchar(24) NOT NULL,
  `CarSpawnY` varchar(24) NOT NULL,
  `CarSpawnZ` varchar(24) NOT NULL,
  `CarSpawnA` varchar(24) NOT NULL,
  `Model` int(6) NOT NULL,
  `CarColor1` int(6) NOT NULL,
  `CarColor2` int(6) NOT NULL,
  `RespDelay` int(12) NOT NULL,
  `CarRank` int(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Gang_KolhozCars`
--

INSERT INTO `Gang_KolhozCars` (`id`, `CarSpawnX`, `CarSpawnY`, `CarSpawnZ`, `CarSpawnA`, `Model`, `CarColor1`, `CarColor2`, `RespDelay`, `CarRank`) VALUES
(0, '-1109.523559', '-1253.235839', '128.788223', '357.838958', 521, 13, 0, 450, 1),
(1, '-1120.348510', '-1248.985839', '128.887832', '268.506042', 468, 122, 0, 450, 1),
(2, '-1118.554443', '-1245.951660', '129.086975', '271.263305', 567, 122, 0, 450, 3),
(3, '-1118.288085', '-1241.492187', '129.041198', '267.748962', 412, 13, 0, 450, 3),
(4, '-1118.550292', '-1237.029296', '128.999450', '271.462463', 566, 13, 13, 450, 3),
(5, '-1092.117187', '-1249.779541', '129.147003', '89.108795', 579, 13, 0, 450, 5),
(6, '-1092.078247', '-1245.489990', '129.151382', '89.481216', 579, 13, 0, 450, 5),
(7, '-1092.067016', '-1241.380004', '129.148910', '90.363983', 579, 13, 0, 450, 5),
(8, '-1092.078491', '-1237.099609', '129.152114', '89.947547', 579, 13, 0, 450, 5),
(9, '-1111.319580', '-1253.213012', '128.788894', '355.088623', 521, 13, 0, 450, 7),
(10, '-1205.641967', '-1065.136840', '129.407775', '358.713531', 532, 24, 0, 150, 1),
(11, '-1205.469482', '-1022.062194', '129.521072', '357.285217', 532, 24, 0, 150, 1),
(12, '-1120.320190', '-1251.394897', '128.887786', '274.304443', 468, 13, 0, 600, 7),
(13, '-1107.764160', '-1253.187011', '128.788757', '0.423851', 521, 122, 0, 450, 7),
(14, '-1113.262573', '-1253.307983', '128.787628', '352.574890', 521, 13, 0, 60, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `Gang_LCNCars`
--

CREATE TABLE IF NOT EXISTS `Gang_LCNCars` (
  `id` int(11) NOT NULL,
  `CarSpawnX` varchar(24) NOT NULL,
  `CarSpawnY` varchar(24) NOT NULL,
  `CarSpawnZ` varchar(24) NOT NULL,
  `CarSpawnA` varchar(24) NOT NULL,
  `Model` int(6) NOT NULL,
  `CarColor1` int(6) NOT NULL,
  `CarColor2` int(6) NOT NULL,
  `RespDelay` int(12) NOT NULL,
  `CarRank` int(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Gang_LCNCars`
--

INSERT INTO `Gang_LCNCars` (`id`, `CarSpawnX`, `CarSpawnY`, `CarSpawnZ`, `CarSpawnA`, `Model`, `CarColor1`, `CarColor2`, `RespDelay`, `CarRank`) VALUES
(0, '1465.490966', '2839.165283', '10.621102', '180.086242', 409, 0, 0, 60, 18),
(1, '1494.257690', '2837.958740', '10.626800', '181.152587', 602, 0, 0, 600, 18),
(2, '1489.353637', '2837.927490', '10.625753', '179.852615', 602, 0, 0, 60, 18),
(3, '1484.650634', '2838.093505', '10.652012', '179.661666', 402, 0, 0, 60, 16),
(4, '1479.844238', '2838.057128', '10.658428', '179.268310', 402, 0, 0, 60, 16),
(5, '1474.992675', '2838.121337', '10.591408', '179.476226', 415, 0, 0, 500, 10),
(6, '1470.255126', '2838.136474', '10.591406', '179.617935', 415, 0, 0, 60, 10),
(7, '1465.390502', '2849.062988', '10.547394', '180.700546', 411, 0, 0, 60, 6),
(8, '1494.126586', '2849.109863', '10.477338', '180.039581', 559, 0, 0, 60, 19),
(9, '1489.201171', '2849.118164', '10.477544', '180.604919', 562, 0, 0, 60, 3),
(10, '1484.733520', '2849.414794', '10.459300', '179.140045', 541, 0, 0, 60, 3),
(11, '1479.955566', '2849.367919', '10.472290', '179.339111', 541, 0, 0, 60, 1),
(12, '1474.972045', '2849.166748', '10.527620', '180.329254', 560, 0, 0, 60, 1),
(13, '1470.184936', '2849.325439', '10.493494', '180.220306', 541, 0, 0, 60, 1),
(14, '1515.233764', '2819.336181', '11.019509', '89.912963', 487, 0, 0, 60, 18);

-- --------------------------------------------------------

--
-- Структура таблицы `Gang_News`
--

CREATE TABLE IF NOT EXISTS `Gang_News` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `PosX` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `PosY` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `PosZ` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=19 ;

--
-- Дамп данных таблицы `Gang_News`
--

INSERT INTO `Gang_News` (`id`, `PosX`, `PosY`, `PosZ`) VALUES
(1, '1530.900390', '-1691.925781', '6.225196'),
(2, '2292.676757', '2445.730957', '3.273437'),
(3, '2741.688964', '-2435.297119', '13.643185'),
(4, '1178.355102', '-1330.733154', '14.098115'),
(5, '1459.400878', '2779.006347', '10.820312'),
(6, '2591.604980', '1899.645751', '11.031209'),
(7, '355.463348', '161.283035', '1008.378234'),
(8, '1087.707397', '-344.869812', '73.980506'),
(9, '1825.805908', '-1291.571835', '114.772300'),
(10, '-86.554794', '1229.492187', '19.742187'),
(11, '-2025.289306', '-120.876884', '35.456638'),
(12, '1053.408935', '1004.541748', '11.000000'),
(13, '169.119842', '-1332.260498', '75.116950'),
(14, '2523.304199', '-1683.251098', '15.496999'),
(15, '2767.154541', '-1617.974121', '10.921875'),
(16, '1759.319824', '-1914.750122', '14.962083'),
(17, '227.163421', '1031.022949', '1084.016357'),
(18, '1425.206176', '-1486.436645', '20.435195');

-- --------------------------------------------------------

--
-- Структура таблицы `Gang_RifaCars`
--

CREATE TABLE IF NOT EXISTS `Gang_RifaCars` (
  `id` int(11) NOT NULL,
  `CarSpawnX` varchar(24) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `CarSpawnY` varchar(24) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `CarSpawnZ` varchar(24) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `CarSpawnA` varchar(24) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Model` int(6) NOT NULL,
  `CarColor1` int(6) NOT NULL,
  `CarColor2` int(6) NOT NULL,
  `RespDelay` int(12) NOT NULL,
  `CarRank` int(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Gang_RifaCars`
--

INSERT INTO `Gang_RifaCars` (`id`, `CarSpawnX`, `CarSpawnY`, `CarSpawnZ`, `CarSpawnA`, `Model`, `CarColor1`, `CarColor2`, `RespDelay`, `CarRank`) VALUES
(0, '-2666.571533', '-55.003761', '4.073105', '358.999664', 567, 100, 100, 150, 1),
(1, '-2659.981933', '-54.977645', '4.165934', '359.014068', 536, 100, 100, 150, 1),
(2, '-2686.613769', '-55.658081', '4.052761', '359.854644', 567, 100, 100, 150, 1),
(3, '-2666.503173', '-35.121124', '4.117094', '180.155761', 576, 100, 100, 150, 1),
(4, '-2672.924804', '-34.992477', '4.116846', '179.478836', 576, 100, 100, 150, 1),
(5, '-2693.190917', '-54.826332', '4.116045', '0.848353', 475, 100, 100, 150, 1),
(6, '-2653.394775', '-54.770244', '4.063845', '359.852600', 475, 100, 100, 150, 1),
(7, '-2718.121337', '-31.578302', '3.915574', '267.901031', 521, 100, 100, 150, 1),
(8, '-2646.736572', '-54.787490', '4.063846', '359.851318', 521, 100, 100, 150, 1),
(9, '-2679.531250', '-22.636169', '4.052435', '181.462799', 579, 100, 100, 150, 6),
(10, '-2680.055664', '-54.972446', '4.117434', '0.367976', 566, 100, 100, 150, 1),
(11, '-2673.373291', '-54.658817', '4.116354', '2.408375', 566, 100, 100, 150, 1),
(12, '-2686.380126', '-22.810937', '4.055336', '181.463256', 579, 100, 100, 150, 1),
(13, '-2718.429443', '-57.658271', '4.457962', '270.076477', 499, 100, 100, 150, 6),
(14, '-2640.069335', '-54.804828', '4.064012', '359.852600', 482, 100, 100, 150, 6);

-- --------------------------------------------------------

--
-- Структура таблицы `Gang_RMCars`
--

CREATE TABLE IF NOT EXISTS `Gang_RMCars` (
  `id` int(11) NOT NULL,
  `CarSpawnX` varchar(24) NOT NULL,
  `CarSpawnY` varchar(24) NOT NULL,
  `CarSpawnZ` varchar(24) NOT NULL,
  `CarSpawnA` varchar(24) NOT NULL,
  `Model` int(6) NOT NULL,
  `CarColor1` int(6) NOT NULL,
  `CarColor2` int(6) NOT NULL,
  `RespDelay` int(12) NOT NULL,
  `CarRank` int(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Gang_RMCars`
--

INSERT INTO `Gang_RMCars` (`id`, `CarSpawnX`, `CarSpawnY`, `CarSpawnZ`, `CarSpawnA`, `Model`, `CarColor1`, `CarColor2`, `RespDelay`, `CarRank`) VALUES
(0, '980.094604', '1070.110961', '10.874202', '358.583129', 579, 0, 0, 60, 1),
(1, '983.325073', '1069.999389', '10.870066', '358.549499', 579, 0, 0, 60, 1),
(2, '987.147277', '1069.889038', '10.547392', '1.199425', 411, 0, 0, 60, 3),
(3, '991.283081', '1069.992919', '10.547399', '0.882265', 411, 0, 0, 60, 3),
(4, '1007.773986', '1078.110839', '10.392371', '353.913604', 522, 0, 0, 300, 1),
(5, '1006.153137', '1078.213378', '10.387990', '356.157989', 522, 0, 0, 300, 1),
(6, '979.344726', '1083.087036', '10.521324', '271.489135', 560, 0, 0, 300, 1),
(7, '979.315307', '1086.920654', '10.525607', '269.214935', 560, 0, 0, 60, 1),
(8, '1007.220581', '1072.683349', '10.391588', '352.197540', 522, 0, 0, 300, 2),
(9, '1005.825073', '1072.765502', '10.387866', '353.230529', 522, 0, 0, 300, 1),
(10, '998.504577', '1070.532714', '10.785495', '0.059347', 445, 0, 0, 60, 1),
(11, '994.751342', '1070.486450', '10.785919', '0.137057', 445, 0, 0, 300, 1),
(12, '979.128967', '1090.712524', '10.525111', '270.230194', 560, 0, 0, 300, 15),
(13, '1007.680419', '1085.803222', '10.620308', '353.345581', 409, 0, 0, 300, 13),
(14, '1088.969482', '1072.932617', '11.012529', '39.585971', 487, 0, 0, 300, 15);

-- --------------------------------------------------------

--
-- Структура таблицы `Gang_Spawns`
--

CREATE TABLE IF NOT EXISTS `Gang_Spawns` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `SpawnX` varchar(24) CHARACTER SET cp1251 NOT NULL,
  `SpawnY` varchar(24) CHARACTER SET cp1251 NOT NULL,
  `SpawnZ` varchar(24) CHARACTER SET cp1251 NOT NULL,
  `SpawnA` varchar(24) CHARACTER SET cp1251 NOT NULL,
  `Interior` int(4) NOT NULL,
  `VirtWorld` int(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `Gang_Spawns`
--

INSERT INTO `Gang_Spawns` (`id`, `SpawnX`, `SpawnY`, `SpawnZ`, `SpawnA`, `Interior`, `VirtWorld`) VALUES
(0, '2537.470458', '-1288.563842', '1054.640625', '359.692260', 2, 0),
(1, '1259.868774', '-790.988342', '1084.007812', '83.626281', 5, 1),
(2, '939.628295', '4.281674', '1000.929687', '260.690063', 3, 0),
(3, '965.493286', '-43.635135', '1001.117187', '180.983581', 3, 0),
(4, '1513.258789', '-1701.265136', '14.046875', '149.190704', 0, 0),
(5, '1551.462768', '-1695.056274', '13.551163', '115.991195', 0, 0),
(6, '2777.654785', '-1623.778320', '10.921875', '318.970458', 0, 0),
(7, '1753.369262', '-1914.602172', '13.175388', '249.980316', 0, 0),
(9, '-223.664489', '1396.826782', '28.367187', '346.673980', 18, 1),
(8, '-2721.373779', '-38.946247', '4.335937', '265.076660', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `Gang_VagosCars`
--

CREATE TABLE IF NOT EXISTS `Gang_VagosCars` (
  `id` int(11) NOT NULL,
  `CarSpawnX` varchar(24) NOT NULL,
  `CarSpawnY` varchar(24) NOT NULL,
  `CarSpawnZ` varchar(24) NOT NULL,
  `CarSpawnA` varchar(24) NOT NULL,
  `Model` int(6) NOT NULL,
  `CarColor1` int(6) NOT NULL,
  `CarColor2` int(6) NOT NULL,
  `RespDelay` int(12) NOT NULL,
  `CarRank` int(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Gang_VagosCars`
--

INSERT INTO `Gang_VagosCars` (`id`, `CarSpawnX`, `CarSpawnY`, `CarSpawnZ`, `CarSpawnA`, `Model`, `CarColor1`, `CarColor2`, `RespDelay`, `CarRank`) VALUES
(0, '2795.806640', '-1589.469604', '10.498943', '269.228454', 509, 126, 126, 100, 20),
(1, '2795.868164', '-1584.918945', '10.503919', '269.230773', 439, 6, 0, 60, 1),
(2, '2796.426025', '-1580.463989', '10.495481', '269.226562', 439, 6, 0, 60, 1),
(3, '2796.490234', '-1575.672973', '10.495959', '269.230987', 439, 6, 6, 60, 1),
(4, '2796.546142', '-1571.522827', '10.495534', '269.226043', 439, 6, 6, 60, 1),
(5, '2796.661621', '-1562.868041', '10.496154', '269.225677', 439, 6, 0, 60, 15),
(6, '2796.600585', '-1567.416259', '10.495673', '269.231201', 439, 6, 0, 60, 3),
(7, '2796.519531', '-1558.416015', '10.499202', '269.225952', 439, 6, 0, 60, 1),
(8, '2796.575439', '-1554.264038', '10.499294', '269.230651', 439, 6, 0, 60, 1),
(9, '2796.635986', '-1549.748168', '10.499702', '269.231628', 439, 6, 0, 60, 7),
(10, '2802.871826', '-1539.416870', '10.498650', '181.085617', 439, 6, 4, 120, 10),
(11, '2807.249267', '-1539.334594', '10.498855', '181.086700', 439, 6, 6, 120, 10),
(12, '2811.343750', '-1539.256469', '10.498142', '181.081573', 439, 6, 6, 120, 1),
(13, '2815.508789', '-1539.179687', '10.601303', '181.084197', 439, 6, 6, 120, 5),
(14, '2822.521240', '-1548.763183', '10.493964', '89.825942', 500, 6, 6, 120, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `Gang_YakuzaCars`
--

CREATE TABLE IF NOT EXISTS `Gang_YakuzaCars` (
  `id` int(11) NOT NULL,
  `CarSpawnX` varchar(24) NOT NULL,
  `CarSpawnY` varchar(24) NOT NULL,
  `CarSpawnZ` varchar(24) NOT NULL,
  `CarSpawnA` varchar(24) NOT NULL,
  `Model` int(6) NOT NULL,
  `CarColor1` int(6) NOT NULL,
  `CarColor2` int(6) NOT NULL,
  `RespDelay` int(12) NOT NULL,
  `CarRank` int(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Gang_YakuzaCars`
--

INSERT INTO `Gang_YakuzaCars` (`id`, `CarSpawnX`, `CarSpawnY`, `CarSpawnZ`, `CarSpawnA`, `Model`, `CarColor1`, `CarColor2`, `RespDelay`, `CarRank`) VALUES
(0, '2604.104492', '1886.060791', '10.384737', '89.970413', 522, 6, 0, 120, 1),
(1, '2604.084472', '1883.980102', '10.388013', '89.531349', 522, 6, 0, 120, 1),
(2, '2608.161376', '1886.121337', '10.388305', '88.352035', 522, 0, 6, 120, 1),
(3, '2608.237792', '1884.108276', '10.394113', '88.999504', 522, 0, 6, 120, 1),
(4, '2612.062744', '1897.397216', '10.525564', '179.916076', 560, 0, 6, 120, 1),
(5, '2615.085937', '1897.484497', '10.525400', '179.885498', 560, 0, 0, 120, 1),
(6, '2618.224609', '1897.517089', '10.524824', '179.913757', 560, 0, 0, 120, 1),
(7, '2621.414306', '1897.536376', '10.591170', '180.753829', 579, 0, 0, 120, 4),
(8, '2624.649902', '1897.557495', '10.593004', '180.060974', 579, 0, 6, 120, 4),
(9, '2631.551757', '1890.459228', '10.442886', '89.743843', 445, 0, 0, 120, 7),
(10, '2631.624023', '1887.329956', '10.445276', '90.192901', 445, 0, 6, 120, 7),
(11, '2579.829345', '1897.372558', '10.548542', '180.950592', 411, 0, 0, 120, 8),
(12, '2576.642089', '1897.344116', '10.552201', '179.781051', 411, 0, 0, 120, 8),
(13, '2597.207275', '1884.788452', '10.615871', '90.269096', 409, 0, 6, 120, 8),
(14, '2621.434326', '1844.051269', '10.408535', '51.964836', 487, 0, 6, 120, 7);

-- --------------------------------------------------------

--
-- Структура таблицы `Houses`
--

CREATE TABLE IF NOT EXISTS `Houses` (
  `id` int(6) NOT NULL,
  `Owned` int(6) NOT NULL,
  `Owner` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Discription` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Price` int(24) NOT NULL,
  `Level` int(12) NOT NULL,
  `EntranceX` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `EntranceY` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `EntranceZ` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `Interior` int(6) NOT NULL,
  `ExitX` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `ExitY` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `ExitZ` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `Health` int(6) NOT NULL,
  `Armour` int(6) NOT NULL,
  `Tv` int(6) NOT NULL,
  `Signal` int(3) NOT NULL DEFAULT '0',
  `Narks` int(6) NOT NULL DEFAULT '0',
  `Mats` int(6) NOT NULL DEFAULT '0',
  `Bar` int(6) NOT NULL,
  `Lock` int(6) NOT NULL,
  `RentPrice` int(12) NOT NULL,
  `Rentabil` int(6) NOT NULL,
  `Money` int(24) NOT NULL,
  `World` int(12) NOT NULL,
  `LastVisit` datetime NOT NULL,
  `DonatePrice` int(16) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `Houses`
--

INSERT INTO `Houses` (`id`, `Owned`, `Owner`, `Discription`, `Price`, `Level`, `EntranceX`, `EntranceY`, `EntranceZ`, `Interior`, `ExitX`, `ExitY`, `ExitZ`, `Health`, `Armour`, `Tv`, `Signal`, `Narks`, `Mats`, `Bar`, `Lock`, `RentPrice`, `Rentabil`, `Money`, `World`, `LastVisit`, `DonatePrice`) VALUES
(0, 0, 'The State', 'id 0', 45000, 3, '2352.778320', '-1485.323974', '24.000000', 1, '2217.620117', '-1076.040039', '1050.479980', 0, 0, 1, 0, 0, 0, 1, 0, 300, 0, 0, 1, '2017-08-22 13:23:15', 0),
(1, 0, 'The State', 'id 1', 100000000, 3, '2394.955322', '-3808.623291', '931.845336', 10, '249.111602', '108.835975', '1003.218750', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 2, '2017-08-22 13:23:15', 0),
(2, 0, 'The State', 'id 2', 630000, 3, '841.355407', '-1472.013916', '14.006772', 8, '2807.479980', '-1173.979980', '1025.569946', 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 3, '2017-08-22 13:23:15', 0),
(3, 0, 'The State', ' id 3', 40400, 3, '2393.730712', '-3806.853515', '931.845336', 7, '225.860000', '1022.369995', '1084.020019', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 4, '2017-08-22 13:23:15', 0),
(4, 0, 'The State', ' id 4', 56000, 3, '2415.286621', '-3738.153320', '931.845336', 5, '1298.731201', '-796.746520', '1084.007812', 0, 0, 1, 0, 0, 0, 1, 0, 300, 0, 0, 5, '2017-08-22 13:23:15', 0),
(5, 0, 'The State', ' id 5', 53000, 3, '2367.248291', '-3806.621093', '931.845336', 8, '2365.100097', '-1134.810058', '1050.880004', 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 6, '2017-08-22 13:23:15', 0),
(6, 0, 'The State', ' id 6', 110000, 3, '2449.218994', '689.758605', '11.460927', 1, '2217.620117', '-1076.040039', '1050.479980', 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 7, '2017-08-22 13:23:15', 0),
(7, 0, 'The State', ' id 7', 250000, 3, '2508.337158', '-1998.367797', '13.902541', 6, '-68.830001', '1352.089965', '1080.209960', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 8, '2017-08-22 13:23:15', 0),
(8, 0, 'The State', ' id 8', 1, 3, '2391.996093', '-3806.884033', '931.851562', 9, '2317.939941', '-1026.040039', '1050.219970', 0, 0, 1, 0, 0, 0, 1, 0, 50, 1, 0, 9, '2017-08-22 13:23:15', 0),
(9, 0, 'The State', ' id 9', 58000, 3, '2389.286376', '-3806.436767', '931.845336', 10, '2265.078369', '-1210.567138', '1049.023437', 0, 0, 0, 0, 0, 0, 1, 0, 300, 1, 0, 10, '2017-08-22 13:23:15', 0),
(10, 0, 'The State', ' id 10', 53000, 3, '2395.734375', '-3806.308593', '931.845336', 10, '2265.078369', '-1210.567138', '1049.023437', 0, 0, 1, 0, 0, 0, 0, 0, 200, 1, 0, 11, '2017-08-22 13:23:15', 0),
(11, 0, 'The State', ' id 11', 45000, 3, '2394.079833', '-3804.565429', '931.845336', 5, '226.960006', '1114.439941', '1081.000000', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 12, '2017-08-22 13:23:15', 0),
(12, 0, 'The State', ' id 12', 44000, 3, '2380.338378', '-3785.149658', '931.851562', 5, '1260.644042', '-785.355773', '1091.906250', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 13, '2017-08-22 13:23:15', 0),
(13, 0, 'The State', ' id 13', 55600, 3, '2391.731933', '-3805.041748', '931.845336', 15, '295.322357', '1474.063476', '1080.257812', 0, 0, 1, 0, 0, 0, 1, 0, 213, 0, 0, 14, '2017-08-22 13:23:15', 0),
(14, 0, 'The State', ' id 14', 1, 3, '2392.729980', '-3803.217041', '931.845336', 15, '295.322357', '1474.063476', '1080.257812', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 15, '2017-08-22 13:23:15', 0),
(15, 0, 'The State', ' id 15', 2000000, 3, '731.229370', '-1013.040771', '52.737854', 7, '225.860000', '1022.369995', '1084.020019', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 16, '2017-08-22 13:23:15', 0),
(16, 0, 'The State', ' id 16', 270000, 3, '2022.902343', '-1120.264526', '26.421045', 6, '2308.679931', '-1212.239990', '1049.020019', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 17, '2017-08-22 13:23:15', 0),
(17, 0, 'The State', ' id 17', 40400, 3, '2368.428710', '-3811.943115', '931.845336', 10, '2269.080078', '-1210.729980', '1047.560058', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 18, '2017-08-22 13:23:15', 0),
(18, 0, 'The State', ' id 18', 47500, 3, '2390.035400', '-3803.574951', '931.845336', 7, '225.860000', '1022.369995', '1084.020019', 0, 0, 1, 0, 0, 0, 1, 0, 111, 1, 0, 19, '2017-08-22 13:23:15', 0),
(19, 0, 'The State', ' id 19', 195000, 3, '2111.129394', '-1244.400146', '25.851562', 10, '2260.129882', '-1136.150024', '1050.630004', 0, 0, 1, 0, 0, 0, 1, 0, 150, 1, 0, 20, '2017-08-22 13:23:15', 0),
(20, 0, 'The State', ' id 20', 195000, 3, '2133.048095', '-1232.581542', '24.421875', 10, '2261.606933', '-1135.880737', '1050.632812', 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 21, '2017-08-22 13:23:15', 0),
(21, 0, 'The State', ' id 21', 165000, 3, '2153.810058', '-1242.902587', '25.367187', 5, '2233.669921', '-1114.420043', '1050.880004', 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 22, '2017-08-22 13:23:15', 0),
(22, 0, 'The State', ' id 22', 740000, 3, '827.775268', '-857.996582', '70.330810', 8, '2365.100097', '-1134.810058', '1050.880004', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 23, '2017-08-22 13:23:15', 0),
(23, 0, 'The State', ' id 23', 165000, 3, '2132.351806', '-1281.308471', '25.876510', 5, '2233.669921', '-1114.420043', '1050.880004', 0, 0, 1, 0, 0, 0, 1, 0, 150, 0, 0, 24, '2017-08-22 13:23:15', 0),
(24, 0, 'The State', ' id 24', 270000, 3, '2111.329589', '-1280.008544', '25.687500', 6, '2308.679931', '-1212.239990', '1049.020019', 0, 0, 1, 0, 0, 0, 1, 0, 228, 1, 0, 25, '2017-08-22 13:23:15', 0),
(25, 0, 'The State', ' id 25', 900000, 3, '1016.846435', '-763.362121', '112.563018', 12, '2316.052246', '-1143.746337', '1054.304687', 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 26, '2017-08-22 13:23:15', 0),
(26, 0, 'The State', ' id 26', 165000, 3, '2100.706787', '-1321.074340', '25.953125', 5, '2233.669921', '-1114.420043', '1050.880004', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 27, '2017-08-22 13:23:15', 0),
(27, 0, 'The State', ' id 27', 630000, 3, '2126.451660', '-1319.918823', '26.623792', 8, '2807.479980', '-1173.979980', '1025.569946', 0, 0, 1, 0, 0, 0, 1, 0, 100, 1, 0, 28, '2017-08-22 13:23:15', 0),
(28, 0, 'The State', ' id 28', 600000, 3, '2529.536376', '-1493.717163', '24.026540', 4, '-261.269989', '1456.569946', '1084.369995', 0, 0, 1, 0, 0, 0, 1, 0, 100, 1, 0, 29, '2017-08-22 13:23:15', 0),
(29, 0, 'The State', ' id 29', 315000, 3, '2191.946289', '-1277.105224', '25.068620', 1, '223.089996', '1287.739990', '1082.140014', 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 30, '2017-08-22 13:23:15', 0),
(30, 0, 'The State', ' id 30', 165000, 3, '2207.850341', '-1281.673950', '24.536994', 5, '2233.669921', '-1114.420043', '1050.880004', 0, 0, 1, 0, 0, 0, 0, 0, 300, 1, 0, 31, '2017-08-22 13:23:15', 0),
(31, 0, 'The State', ' id 31', 270000, 3, '2230.158203', '-1281.196655', '25.367187', 6, '2308.679931', '-1212.239990', '1049.020019', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 32, '2017-08-22 13:23:15', 0),
(32, 0, 'The State', ' id 32', 41000, 3, '2371.452392', '-3792.557861', '925.423461', 8, '-42.799999', '1405.900024', '1084.430053', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 33, '2017-08-22 13:23:15', 0),
(33, 0, 'The State', ' id 33', 900000, 3, '910.351501', '-817.571716', '103.126029', 9, '83.260002', '1322.930053', '1083.859985', 0, 0, 1, 0, 0, 0, 0, 0, 300, 1, 0, 34, '2017-08-22 13:23:15', 0),
(34, 0, 'The State', ' id 34', 20000, 3, '2397.741699', '-3764.783691', '931.763305', 12, '2324.382568', '-1148.403808', '1050.710083', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 35, '2017-08-22 13:23:15', 0),
(35, 0, 'The State', ' id 35', 47800, 3, '2368.570068', '-3809.921875', '931.845336', 5, '140.240005', '1366.800048', '1083.859985', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 36, '2017-08-22 13:23:15', 0),
(36, 0, 'The State', ' id 36', 165000, 3, '2382.819580', '-1366.350463', '24.491352', 5, '2233.669921', '-1114.420043', '1050.880004', 0, 0, 1, 0, 0, 0, 0, 0, 200, 1, 0, 37, '2017-08-22 13:23:15', 0),
(37, 0, 'The State', ' id 37', 50500, 3, '2415.048583', '-3739.480224', '931.845336', 10, '2265.078369', '-1210.567138', '1049.023437', 0, 0, 1, 0, 0, 0, 1, 0, 150, 1, 0, 38, '2017-08-22 13:23:15', 0),
(38, 0, 'The State', ' id 38', 43400, 3, '2390.288085', '-3805.480712', '931.845336', 5, '1298.731201', '-796.746520', '1084.007812', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 39, '2017-08-22 13:23:15', 0),
(39, 0, 'The State', ' id 39', 40600, 3, '2388.514648', '-3805.248046', '931.845336', 5, '1260.644042', '-785.355773', '1091.906250', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 40, '2017-08-22 13:23:15', 0),
(40, 0, 'The State', ' id 40', 55000, 3, '2388.216796', '-3803.025390', '931.845336', 15, '295.322357', '1474.063476', '1080.257812', 0, 0, 1, 0, 0, 0, 1, 0, 101, 1, 0, 41, '2017-08-22 13:23:15', 0),
(41, 0, 'The State', ' id 41', 41200, 3, '2389.503173', '-3809.476318', '931.845336', 1, '2217.620117', '-1076.040039', '1050.479980', 0, 0, 1, 0, 0, 0, 1, 0, 100, 1, 0, 42, '2017-08-22 13:23:15', 0),
(42, 0, 'The State', ' id 42', 600000, 3, '-2421.723876', '2406.698242', '13.025238', 12, '2324.469970', '-1148.810058', '1050.709960', 0, 0, 1, 1, 0, 0, 1, 0, 100, 1, 0, 43, '2017-08-22 13:23:15', 0),
(43, 0, 'The State', ' id 43', 50600, 3, '2391.723388', '-3769.799560', '931.845336', 10, '2265.078369', '-1210.567138', '1049.023437', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 44, '2017-08-22 13:23:15', 0),
(44, 0, 'The State', ' id 44', 50000, 3, '2387.265869', '-3806.343994', '931.845336', 7, '225.788375', '1022.550964', '1084.014526', 0, 0, 1, 0, 0, 0, 1, 0, 228, 1, 0, 45, '2017-08-22 13:23:15', 0),
(45, 0, 'The State', ' id 45', 40000, 3, '2398.786865', '-3763.444824', '931.851562', 1, '223.274978', '1288.369384', '1082.132812', 0, 0, 1, 0, 0, 0, 1, 0, 50, 1, 0, 46, '2017-08-22 13:23:15', 0),
(46, 0, 'The State', ' id 46', 50000, 3, '2386.939697', '-3805.113769', '931.845336', 7, '225.860000', '1022.369995', '1084.020019', 0, 0, 1, 0, 0, 0, 1, 0, 250, 1, 0, 47, '2017-08-22 13:23:15', 0),
(47, 0, 'The State', ' id 47', 315000, 3, '2146.795410', '-1470.408325', '26.042566', 1, '223.089996', '1287.739990', '1082.140014', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 48, '2017-08-22 13:23:15', 0),
(48, 0, 'The State', ' id 48', 50000, 3, '2400.044433', '-3762.176513', '931.851562', 5, '1298.731201', '-796.746520', '1084.007812', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 49, '2017-08-22 13:23:15', 0),
(49, 0, 'The State', ' id 49', 165000, 3, '2017.350952', '-1703.536499', '14.236968', 5, '2233.669921', '-1114.420043', '1050.880004', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 50, '2017-08-22 13:23:15', 0),
(50, 0, 'The State', ' id 50', 1, 3, '2401.083984', '-3760.799804', '931.851562', 1, '244.229995', '304.940002', '999.150024', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 51, '2017-08-22 13:23:15', 0),
(51, 0, 'The State', ' id 51', 50000, 3, '2367.677001', '-3808.747558', '931.845336', 5, '1298.731201', '-796.746520', '1084.007812', 0, 0, 1, 0, 0, 0, 1, 0, 228, 1, 0, 52, '2017-08-22 13:23:15', 0),
(52, 0, 'The State', ' id 52', 40400, 3, '2369.440185', '-3808.432617', '931.845336', 1, '223.274978', '1288.369384', '1082.132812', 0, 0, 1, 0, 0, 0, 0, 0, 228, 1, 0, 53, '2017-08-22 13:23:15', 0),
(53, 0, 'The State', ' id 53', 50000, 3, '2369.757568', '-3811.948974', '931.845336', 5, '1260.644042', '-785.355773', '1091.906250', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 54, '2017-08-22 13:23:15', 0),
(54, 0, 'The State', ' id 54', 270000, 3, '2402.586181', '-1715.475830', '14.132802', 6, '2308.679931', '-1212.239990', '1049.020019', 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 55, '2017-08-22 13:23:15', 0),
(55, 0, 'The State', ' id 55', 300000, 3, '776.691101', '-503.483825', '18.012926', 5, '22.510000', '1404.359985', '1084.430053', 0, 0, 1, 0, 0, 0, 1, 0, 5, 1, 0, 56, '2017-08-22 13:23:15', 0),
(56, 0, 'The State', ' id 56', 165000, 3, '2244.208984', '-1638.443359', '15.907402', 2, '266.950012', '304.850006', '999.150024', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 57, '2017-08-22 13:23:15', 0),
(57, 0, 'The State', ' id 57', 55000, 3, '2418.384521', '-3733.444580', '931.845336', 7, '225.860000', '1022.369995', '1084.020019', 0, 0, 1, 0, 0, 0, 1, 0, 111, 1, 0, 58, '2017-08-22 13:23:15', 0),
(58, 0, 'The State', ' id 58', 150000, 3, '2147.691650', '-1366.120727', '25.972253', 1, '244.229995', '304.940002', '999.150024', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 59, '2017-08-22 13:23:15', 0),
(59, 0, 'The State', ' id 59', 60000, 3, '2374.374755', '-3809.539062', '925.428100', 5, '140.240005', '1366.800048', '1083.859985', 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 60, '2017-08-22 13:23:15', 0),
(60, 0, 'The State', ' id 60', 165000, 3, '2326.869873', '-1717.469238', '13.546875', 5, '2233.669921', '-1114.420043', '1050.880004', 0, 0, 1, 0, 0, 0, 0, 0, 300, 1, 0, 61, '2017-08-22 13:23:15', 0),
(61, 0, 'The State', ' id 61', 1200000, 3, '891.213317', '-783.146301', '101.313873', 5, '226.960006', '1114.439941', '1081.000000', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 62, '2017-08-22 13:23:15', 0),
(62, 0, 'The State', ' id 62', 825000, 3, '852.301391', '-1422.379516', '13.861388', 3, '234.949996', '1187.910034', '1080.260009', 0, 0, 1, 0, 0, 0, 0, 0, 300, 1, 0, 63, '2017-08-28 15:42:10', 0),
(63, 0, 'The State', ' id 63', 825000, 3, '898.790527', '-1473.716064', '14.075093', 3, '234.949996', '1187.910034', '1080.260009', 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 64, '2017-08-22 13:23:15', 0),
(64, 0, 'The State', ' id 64', 40000, 3, '2368.291503', '-3807.384277', '931.845336', 9, '83.260002', '1322.930053', '1083.859985', 0, 0, 1, 0, 0, 0, 1, 0, 250, 0, 0, 65, '2017-08-22 13:23:15', 0),
(65, 0, 'The State', ' id 65', 1, 3, '2369.186523', '-3806.740234', '931.845336', 15, '385.274383', '1472.069458', '1080.187500', 0, 0, 1, 0, 0, 0, 0, 0, 150, 1, 0, 66, '2017-08-22 13:23:15', 0),
(66, 0, 'The State', ' id 66', 740000, 3, '1421.912841', '-885.635925', '50.664608', 8, '2365.100097', '-1134.810058', '1050.880004', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 67, '2017-08-22 13:23:15', 0),
(67, 0, 'The State', ' id 67', 110000, 3, '1782.218750', '-2126.508300', '14.067889', 1, '2217.620117', '-1076.040039', '1050.479980', 0, 0, 1, 0, 0, 0, 1, 0, 228, 1, 0, 68, '2017-08-22 13:23:15', 0),
(68, 0, 'The State', ' id 68', 1040000, 3, '1539.440673', '-851.271850', '64.336059', 5, '140.240005', '1366.800048', '1083.859985', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 69, '2017-08-22 13:23:15', 0),
(69, 0, 'The State', ' id 69', 60000, 3, '2387.739257', '-3798.258300', '931.845336', 9, '2319.589843', '-1023.651184', '1050.210937', 0, 0, 1, 0, 0, 0, 1, 0, 50, 1, 0, 70, '2017-08-22 13:23:15', 0),
(70, 0, 'The State', ' id 70', 600000, 3, '1527.613281', '-772.981628', '80.578125', 5, '22.510000', '1404.359985', '1084.430053', 0, 0, 1, 0, 0, 0, 1, 0, 200, 1, 0, 71, '2017-08-22 13:23:15', 0),
(71, 0, 'The State', ' id 71', 90000, 3, '2386.638183', '-3796.501220', '931.845336', 5, '1260.644042', '-785.355773', '1091.906250', 0, 0, 1, 0, 0, 0, 1, 0, 300, 0, 0, 72, '2017-08-22 13:23:15', 0),
(72, 0, 'The State', ' id 72', 1000000, 3, '1442.553222', '-630.104431', '95.718566', 2, '447.239990', '1397.750000', '1084.300048', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 73, '2017-08-22 13:23:15', 0),
(73, 0, 'The State', ' id 73', 1000000, 3, '1331.883911', '-631.986450', '109.134902', 2, '447.239990', '1397.750000', '1084.300048', 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 74, '2017-08-22 13:23:15', 0),
(74, 0, 'The State', ' id 74', 1040000, 3, '1094.913085', '-646.840270', '113.648437', 5, '140.240005', '1366.800048', '1083.859985', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 75, '2017-08-22 13:23:15', 0),
(75, 0, 'The State', ' id 75', 1000000, 3, '898.706542', '-677.779052', '116.890441', 2, '447.239990', '1397.750000', '1084.300048', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 76, '2017-08-22 13:23:15', 0),
(76, 0, 'The State', ' id 76', 440000, 3, '946.044128', '-709.941772', '122.619873', 9, '260.660003', '1237.819946', '1084.260009', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 77, '2017-08-22 13:23:15', 0),
(77, 0, 'The State', ' id 77', 740000, 3, '867.999877', '-716.446411', '105.679687', 8, '2365.100097', '-1134.810058', '1050.880004', 0, 0, 1, 0, 0, 0, 0, 0, 150, 1, 0, 78, '2017-08-22 13:23:15', 0),
(78, 0, 'The State', ' id 78', 440000, 3, '848.477050', '-745.094299', '94.969268', 9, '260.660003', '1237.819946', '1084.260009', 0, 0, 1, 0, 0, 0, 1, 0, 50, 1, 0, 79, '2017-08-22 13:23:15', 0),
(79, 0, 'The State', ' id 79', 1200000, 3, '300.158813', '-1154.366210', '81.390876', 12, '2324.469970', '-1148.810058', '1050.709960', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 80, '2017-08-22 13:23:15', 0),
(80, 0, 'The State', ' id 80', 1200000, 3, '252.108398', '-1221.015625', '75.735473', 12, '2324.469970', '-1148.810058', '1050.709960', 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 81, '2017-08-22 13:23:15', 0),
(81, 0, 'The State', ' id 81', 2500000, 3, '1045.107788', '-641.994567', '120.117187', 6, '234.221496', '1065.862304', '1084.209106', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 82, '2017-08-22 13:23:15', 0),
(82, 0, 'The State', ' id 82', 1, 3, '2403.125244', '-3759.533691', '931.851562', 6, '774.350524', '-50.474319', '1000.585937', 0, 0, 1, 0, 0, 0, 1, 0, 228, 1, 0, 83, '2017-08-22 13:23:15', 0),
(83, 0, 'The State', ' id 83', 600000, 3, '785.747131', '-827.702270', '70.289581', 5, '22.510000', '1404.359985', '1084.430053', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 84, '2017-08-22 13:23:15', 0),
(84, 0, 'The State', 'Daddy', 1200000, 3, '189.638397', '-1308.077026', '70.249473', 12, '2324.469970', '-1148.810058', '1050.709960', 0, 0, 1, 0, 0, 0, 0, 0, 300, 1, 0, 85, '2017-08-22 13:23:15', 0),
(85, 0, 'The State', ' id 85', 165000, 3, '227.788269', '-1405.336669', '51.609375', 5, '2233.669921', '-1114.420043', '1050.880004', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 86, '2017-08-22 13:23:15', 0),
(86, 0, 'The State', ' id 86', 60800, 3, '2384.992919', '-3794.832763', '931.845336', 5, '1298.909790', '-795.192443', '1084.007812', 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 87, '2017-08-22 13:23:15', 0),
(87, 0, 'The State', ' id 87', 1200000, 3, '298.116210', '-1337.718994', '53.441497', 12, '2324.469970', '-1148.810058', '1050.709960', 0, 0, 1, 0, 0, 0, 0, 0, 228, 1, 0, 88, '2017-08-22 13:23:15', 0),
(88, 0, 'The State', ' id 88', 1000000, 3, '398.023254', '-1270.887084', '50.019790', 2, '447.239990', '1397.750000', '1084.300048', 0, 0, 1, 0, 0, 0, 1, 0, 100, 1, 0, 89, '2017-08-22 13:23:15', 0),
(89, 0, 'The State', ' id 89', 400000, 3, '431.681823', '-1252.957641', '51.580940', 2, '2468.376953', '-1698.104980', '1013.507812', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 90, '2017-08-22 13:23:15', 0),
(90, 0, 'The State', ' id 90', 270000, 3, '1872.332885', '-1911.791503', '15.256793', 6, '2308.679931', '-1212.239990', '1049.020019', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 91, '2017-08-22 13:23:15', 0),
(91, 0, 'The State', ' id 91', 65000, 3, '2386.781982', '-3797.789794', '931.845336', 9, '2317.547607', '-1026.425415', '1050.217773', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 92, '2017-08-22 13:23:15', 0),
(92, 0, 'The State', ' id 92', 440000, 3, '647.012939', '-1057.614746', '52.579917', 9, '260.660003', '1237.819946', '1084.260009', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 93, '2017-08-22 13:23:15', 0),
(93, 0, 'The State', ' id 93', 840000, 3, '2156.031005', '-1651.893676', '15.078433', 8, '2807.479980', '-1173.979980', '1025.569946', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 94, '2017-08-22 13:23:15', 0),
(94, 0, 'The State', ' id 94', 60000, 3, '2371.065917', '-3811.773193', '931.845336', 5, '230.918411', '1114.015625', '1080.992187', 0, 0, 1, 0, 0, 0, 1, 0, 228, 1, 0, 95, '2017-08-22 13:23:15', 0),
(95, 0, 'The State', ' id 95', 1, 3, '2383.272705', '-3781.678222', '931.851562', 5, '1298.731201', '-796.746520', '1084.007812', 0, 0, 1, 0, 0, 0, 1, 0, 50, 1, 0, 96, '2017-08-22 13:23:15', 0),
(96, 0, 'The State', ' id 96', 60000, 3, '2368.570068', '-3809.921875', '931.845336', 6, '234.081558', '1066.031372', '1084.208862', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 97, '2017-08-22 13:23:15', 0),
(97, 0, 'The State', ' id 97', 50600, 3, '2382.305419', '-3783.662109', '931.851562', 10, '2265.078369', '-1210.567138', '1049.023437', 0, 0, 1, 0, 0, 0, 0, 0, 100, 0, 0, 98, '2017-08-22 13:23:15', 0),
(98, 0, 'The State', ' id 98', 2000000, 3, '2365.910400', '-3811.939453', '931.845336', 5, '226.960006', '1114.439941', '1081.000000', 0, 0, 1, 0, 0, 0, 1, 0, 300, 0, 0, 99, '2017-08-22 13:23:15', 0),
(99, 0, 'The State', ' id 99', 1000000, 3, '989.663330', '-828.022338', '95.468574', 2, '447.239990', '1397.750000', '1084.300048', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 100, '2017-08-22 13:23:15', 0),
(100, 0, 'The State', ' id 100', 900000, 3, '1034.492309', '-812.195007', '101.851562', 15, '385.274383', '1472.069458', '1080.187500', 0, 0, 1, 0, 0, 0, 1, 0, 100, 1, 0, 101, '2017-08-22 13:23:15', 0),
(101, 0, 'The State', ' id 101', 350000, 3, '2381.619140', '-3791.932128', '931.845336', 9, '2317.975097', '-1025.450073', '1050.210937', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 102, '2017-08-22 13:23:15', 0),
(102, 0, 'The State', ' id 102', 50000, 3, '2386.237792', '-3799.262451', '931.845336', 5, '1298.731201', '-796.746520', '1084.007812', 0, 0, 1, 0, 0, 0, 1, 0, 228, 1, 0, 103, '2017-08-22 13:23:15', 0),
(103, 0, 'The State', ' id 103', 1, 3, '2372.387207', '-3810.161865', '931.845336', 8, '2365.100097', '-1134.810058', '1050.880004', 0, 0, 0, 0, 0, 0, 1, 0, 300, 1, 0, 104, '2017-08-22 13:23:15', 0),
(104, 0, 'The State', ' id 104', 42000, 3, '1118.000366', '-1022.681823', '34.992187', 2, '223.581390', '1239.645629', '1082.140625', 0, 0, 1, 0, 0, 0, 1, 0, 100, 1, 0, 105, '2017-08-22 13:23:15', 0),
(105, 0, 'The State', ' id 105', 1, 3, '2256.742431', '-44.646453', '26.883434', 18, '1727.179687', '-1640.563964', '20.224273', 0, 0, 1, 0, 0, 0, 1, 0, 100, 1, 0, 106, '2017-08-22 13:23:15', 0),
(106, 0, 'The State', ' id 106', 5000000, 3, '2384.454589', '-3798.432617', '931.845336', 5, '1298.731201', '-796.746520', '1084.007812', 0, 0, 1, 0, 0, 0, 1, 0, 300, 0, 0, 107, '2017-08-22 13:23:15', 0),
(107, 0, 'The State', ' id 107', 40000, 3, '2185.014160', '-1363.707763', '26.159753', 7, '225.860000', '1022.369995', '1084.020019', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 108, '2017-08-22 13:23:15', 0),
(108, 0, 'The State', ' id 108', 40000, 3, '1326.796508', '-1067.574829', '31.554687', 1, '223.274978', '1288.369384', '1082.132812', 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 109, '2017-08-22 13:23:15', 0),
(109, 0, 'The State', ' id 109', 40000, 3, '2383.792236', '-3797.105957', '931.845336', 5, '1298.731201', '-796.746520', '1084.007812', 0, 0, 1, 0, 0, 0, 1, 0, 299, 1, 0, 110, '2017-08-22 13:23:15', 0),
(110, 0, 'The State', ' id 110', 30000, 3, '2382.551269', '-3795.290771', '931.845336', 10, '2269.080078', '-1210.729980', '1047.560058', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 111, '2017-08-22 13:23:15', 0),
(111, 0, 'The State', ' id 111', 43000, 3, '2384.761230', '-3779.814208', '931.845336', 5, '1298.731201', '-796.746520', '1084.007812', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 112, '2017-08-22 13:23:15', 0),
(112, 0, 'The State', ' id 112', 30600, 3, '2385.147949', '-3777.859375', '931.845336', 10, '2261.606933', '-1135.880737', '1050.632812', 0, 0, 1, 0, 0, 0, 1, 0, 300, 0, 0, 113, '2017-08-22 13:23:15', 0),
(113, 0, 'The State', ' id 113', 40000, 3, '2437.872802', '-2019.412353', '13.546875', 5, '140.240005', '1366.800048', '1083.859985', 0, 0, 1, 0, 0, 0, 1, 0, 228, 0, 0, 114, '2017-08-22 13:23:15', 0),
(114, 0, 'The State', ' id 114', 40400, 3, '2386.464111', '-3776.158447', '931.845336', 5, '1298.731201', '-796.746520', '1084.007812', 0, 0, 1, 0, 0, 0, 1, 0, 114, 0, 0, 115, '2017-08-22 13:23:15', 0),
(115, 0, 'The State', ' id 115', 36000, 3, '2387.435546', '-3774.828369', '931.845336', 2, '2468.376953', '-1698.104980', '1013.507812', 0, 0, 1, 0, 0, 0, 0, 0, 300, 0, 0, 116, '2017-08-22 13:23:15', 0),
(116, 0, 'The State', ' id 116', 1, 3, '2637.065673', '-1991.711425', '14.324020', 7, '225.860000', '1022.369995', '1084.020019', 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 117, '2017-08-22 13:23:15', 0),
(117, 0, 'The State', ' id 117', 40000, 3, '2149.857421', '-1433.799072', '26.070312', 5, '140.240005', '1366.800048', '1083.859985', 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 118, '2017-08-22 13:23:15', 0),
(118, 0, 'The State', ' id 118', 30800, 3, '2377.129394', '-3809.782714', '931.845336', 5, '1262.779785', '-785.318298', '1091.906250', 0, 0, 1, 0, 0, 0, 1, 0, 250, 0, 0, 119, '2017-08-22 13:23:15', 0),
(119, 0, 'The State', ' id 119', 25000000, 3, '2155.691894', '-1698.507324', '15.085927', 1, '1.581935', '22.908039', '1199.593750', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 120, '2017-08-22 13:23:15', 0),
(120, 0, 'The State', ' id 120', 70000, 3, '-2513.996093', '-171.032791', '25.204097', 6, '2196.537841', '-1204.165161', '1049.023437', 0, 0, 1, 0, 0, 0, 0, 0, 150, 1, 0, 121, '2017-08-22 13:23:15', 0),
(121, 0, 'The State', ' id 121', 90000, 3, '2389.170166', '-3772.809814', '931.845336', 6, '2332.909912', '-1075.920043', '1049.020019', 0, 0, 1, 0, 0, 0, 0, 0, 150, 1, 0, 122, '2017-08-22 13:23:15', 0),
(122, 0, 'The State', ' id 122', 60000, 3, '2393.277832', '-3768.511962', '931.763305', 6, '2308.679931', '-1212.239990', '1049.020019', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 123, '2017-08-22 13:23:15', 0),
(123, 0, 'The State', ' id 123', 54000, 3, '2390.784667', '-3771.623535', '931.845336', 5, '1260.644042', '-785.355773', '1091.906250', 0, 0, 1, 0, 0, 0, 1, 0, 111, 1, 0, 124, '2017-08-22 13:23:15', 0),
(124, 0, 'The State', ' id 124', 500000, 3, '2412.499267', '-3743.930419', '931.845336', 2, '266.950012', '304.850006', '999.150024', 0, 0, 0, 0, 0, 0, 1, 0, 300, 1, 0, 125, '2017-08-22 13:23:15', 0),
(125, 0, 'The State', ' id 125', 5000000, 3, '2410.707519', '-3747.525390', '931.845336', 8, '2365.335693', '-1134.808715', '1050.875000', 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 126, '2017-08-22 13:23:15', 0),
(126, 0, 'The State', ' id 126', 7000000, 3, '2380.013183', '-3794.761474', '931.845336', 9, '83.260002', '1322.930053', '1083.859985', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 127, '2017-08-22 13:23:15', 0),
(127, 0, 'The State', ' id 127', 60000, 3, '2370.689697', '-3810.284912', '931.845336', 7, '225.860000', '1022.369995', '1084.020019', 0, 0, 1, 0, 0, 0, 1, 0, 228, 1, 0, 128, '2017-08-22 13:23:15', 0),
(128, 0, 'The State', ' id 128', 450000, 3, '-2620.252929', '-134.780883', '5.000000', 9, '83.260002', '1322.930053', '1083.859985', 0, 0, 1, 0, 0, 0, 0, 0, 300, 1, 0, 129, '2017-08-22 13:23:15', 0),
(129, 0, 'The State', ' id 129', 900000, 3, '1291.026733', '-896.883300', '46.625137', 12, '2324.469970', '-1148.810058', '1050.709960', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 130, '2017-08-22 13:23:15', 0),
(130, 0, 'The State', ' id 130', 400000, 3, '-2620.605224', '-173.316864', '5.000000', 4, '-261.269989', '1456.569946', '1084.369995', 0, 0, 1, 0, 0, 0, 0, 0, 300, 1, 0, 131, '2017-08-22 13:23:15', 0),
(131, 0, 'The State', ' id 131', 80000, 3, '2381.853759', '-3795.943115', '931.845336', 5, '140.240005', '1366.800048', '1083.859985', 0, 0, 0, 0, 0, 0, 1, 0, 300, 1, 0, 132, '2017-08-22 13:23:15', 0),
(132, 0, 'The State', ' id 132', 70000, 3, '2383.624023', '-3795.684570', '931.845336', 7, '225.860000', '1022.369995', '1084.020019', 0, 0, 0, 0, 0, 0, 1, 0, 300, 1, 0, 133, '2017-08-22 13:23:15', 0),
(133, 0, 'The State', ' id 133', 60000, 3, '2385.287109', '-3797.030761', '931.845336', 9, '2317.939941', '-1026.040039', '1050.219970', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 134, '2017-08-22 13:23:15', 0),
(134, 0, 'The State', ' id 134', 10000000, 3, '2388.489990', '-3799.223876', '931.845336', 5, '1298.731201', '-796.746520', '1084.007812', 0, 0, 1, 0, 0, 0, 1, 0, 100, 1, 0, 135, '2017-08-22 13:23:15', 0),
(135, 0, 'The State', ' id 135', 780000, 3, '167.630157', '-1758.910644', '6.796875', 5, '140.240005', '1366.800048', '1083.859985', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 136, '2017-08-22 13:23:15', 0),
(136, 0, 'The State', ' id 136', 350000, 3, '-2722.993408', '-178.269897', '7.203125', 2, '225.639999', '1239.910034', '1082.140014', 0, 0, 1, 0, 0, 0, 0, 0, 200, 1, 0, 137, '2017-08-22 13:23:15', 0),
(137, 0, 'The State', ' id 137', 5000000, 3, '2391.473632', '-3803.817382', '931.845336', 12, '2324.469970', '-1148.810058', '1050.709960', 0, 0, 1, 0, 0, 0, 1, 0, 250, 1, 0, 138, '2017-08-22 13:23:15', 0),
(138, 0, 'The State', ' id 138', 85000, 3, '2393.294677', '-3805.549072', '931.845336', 2, '2237.560058', '-1080.449951', '1049.020019', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 139, '2017-08-22 13:23:15', 0),
(139, 0, 'The State', ' id 139', 5000000, 3, '2391.203857', '-3809.535888', '931.845336', 8, '2365.100097', '-1134.810058', '1050.880004', 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 140, '2017-08-22 13:23:15', 0),
(140, 0, 'The State', ' id 140', 550000, 3, '-2725.117919', '-36.781219', '7.167908', 3, '234.949996', '1187.910034', '1080.260009', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 141, '2017-08-22 13:23:15', 0),
(141, 0, 'The State', ' id 141', 1, 3, '2393.620605', '-3809.514404', '931.851562', 5, '2233.669921', '-1114.420043', '1050.880004', 0, 0, 1, 0, 0, 0, 1, 0, 22, 1, 0, 142, '2017-08-22 13:23:15', 0),
(142, 0, 'The State', ' id 142', 77000, 3, '2386.971435', '-3802.331542', '931.851562', 5, '1298.731201', '-796.746520', '1084.007812', 0, 0, 0, 0, 0, 0, 1, 0, 300, 0, 0, 143, '2017-08-22 13:23:15', 0),
(143, 0, 'The State', ' id 143', 5000000, 3, '2385.527099', '-3800.556396', '931.845336', 8, '2365.100097', '-1134.810058', '1050.880004', 0, 0, 1, 0, 0, 0, 1, 0, 250, 1, 0, 144, '2017-08-22 13:23:15', 0),
(144, 0, 'The State', ' id 144', 320000, 3, '-2792.080078', '-42.680492', '10.054677', 4, '222.000000', '1141.040039', '1082.609985', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 145, '2017-08-22 13:23:15', 0),
(145, 0, 'The State', ' id 145', 87000, 3, '2384.373535', '-3799.321044', '931.845336', 7, '225.860000', '1022.369995', '1084.020019', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 146, '2017-08-22 13:23:15', 0),
(146, 0, 'The State', ' id 146', 600000, 3, '-2792.285156', '-145.814682', '7.859375', 5, '226.960006', '1114.439941', '1081.000000', 0, 0, 1, 0, 0, 0, 1, 0, 300, 0, 0, 147, '2017-08-22 13:23:15', 0),
(147, 0, 'The State', ' id 147', 375000, 3, '2188.987548', '-1419.304565', '26.156250', 6, '-68.830001', '1352.089965', '1080.209960', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 148, '2017-08-22 13:23:15', 0),
(148, 0, 'The State', ' id 148', 98000, 3, '2384.670410', '-3806.011718', '931.845336', 12, '2324.469970', '-1148.810058', '1050.709960', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 149, '2017-08-22 13:23:15', 0),
(149, 0, 'The State', ' id 149', 60000, 3, '2382.557373', '-3793.345458', '931.845336', 7, '225.860000', '1022.369995', '1084.020019', 0, 0, 1, 0, 0, 0, 1, 0, 111, 0, 0, 150, '2017-08-22 13:23:15', 0),
(150, 0, 'The State', ' id 150', 165000, 3, '2067.049316', '-1731.581420', '14.206624', 1, '2217.620117', '-1076.040039', '1050.479980', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 151, '2017-08-22 13:23:15', 0),
(151, 0, 'The State', ' id 151', 110000, 3, '2394.220703', '-3810.910888', '931.851562', 5, '1298.731201', '-796.746520', '1084.007812', 0, 0, 0, 0, 0, 0, 1, 0, 190, 1, 0, 152, '2017-08-22 13:23:15', 0),
(152, 0, 'The State', ' id 152', 80000, 3, '2370.773437', '-3808.980468', '931.845336', 5, '2233.669921', '-1114.420043', '1050.880004', 0, 0, 1, 0, 0, 0, 0, 0, 300, 1, 0, 153, '2017-08-22 13:23:15', 0),
(153, 0, 'The State', ' id 153', 675000, 3, '2249.660888', '-1060.422729', '55.968750', 9, '83.260002', '1322.930053', '1083.859985', 0, 0, 1, 0, 0, 0, 0, 0, 300, 1, 0, 154, '2017-08-22 13:23:15', 0),
(154, 0, 'The State', ' id 154', 400000, 3, '-2654.135986', '201.092132', '5.000000', 4, '-261.269989', '1456.569946', '1084.369995', 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 155, '2017-08-22 13:23:15', 0),
(155, 0, 'The State', ' id 155', 525000, 3, '2014.628051', '-1732.727783', '14.234375', 2, '225.639999', '1239.910034', '1082.140014', 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 156, '2017-08-22 13:23:15', 0),
(156, 0, 'The State', ' id 156', 1400000, 3, '612.217224', '-1085.984985', '58.826656', 9, '2317.939941', '-1026.040039', '1050.219970', 0, 0, 1, 0, 0, 0, 1, 0, 100, 1, 0, 157, '2017-08-22 13:23:15', 0),
(157, 0, 'The State', ' id 157', 60000, 3, '2382.871826', '-3798.460937', '931.845336', 5, '1298.731201', '-796.746520', '1084.007812', 0, 0, 1, 0, 0, 0, 1, 0, 300, 0, 0, 158, '2017-08-22 13:23:15', 0),
(158, 0, 'The State', ' id 158', 5000000, 3, '2381.278076', '-3797.106689', '931.845336', 8, '2366.156982', '-1134.447875', '1050.875000', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 159, '2017-08-22 13:23:15', 0),
(159, 0, 'The State', ' id 159', 1400000, 3, '877.383666', '-1515.645019', '14.003582', 9, '2317.939941', '-1026.040039', '1050.219970', 0, 0, 1, 0, 0, 0, 1, 0, 150, 1, 0, 160, '2017-08-22 13:23:15', 0),
(160, 0, 'The State', ' id 160', 75000, 3, '2394.640380', '-3767.546142', '931.763305', 5, '1260.644042', '-785.355773', '1091.906250', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 161, '2017-08-22 13:23:15', 0),
(161, 0, 'The State', ' id 161', 60000, 3, '2415.597900', '-3737.121826', '931.845336', 12, '2324.469970', '-1148.810058', '1050.709960', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 162, '2017-08-22 13:23:15', 0),
(162, 0, 'The State', ' id 162', 60400, 3, '2372.891357', '-3811.527343', '931.845336', 3, '234.949996', '1187.910034', '1080.260009', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 163, '2017-08-22 13:23:15', 0),
(163, 0, 'The State', ' id 163', 50000, 3, '2395.822998', '-3766.308837', '931.763305', 5, '226.960006', '1114.439941', '1081.000000', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 164, '2017-08-22 13:23:15', 0),
(164, 0, 'The State', ' id 164', 65000, 3, '2407.621337', '-3751.292968', '931.851562', 5, '1260.644042', '-785.355773', '1091.906250', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 165, '2017-08-22 13:23:15', 0),
(165, 0, 'The State', ' id 165', 50000, 3, '2406.075927', '-3753.318115', '931.851562', 9, '2317.939941', '-1026.040039', '1050.219970', 0, 0, 1, 0, 0, 0, 1, 0, 111, 0, 0, 166, '2017-08-22 13:23:15', 0),
(166, 0, 'The State', ' id 166', 675000, 3, '2288.107910', '-1104.643554', '38.588150', 9, '83.260002', '1322.930053', '1083.859985', 0, 0, 1, 0, 0, 0, 1, 0, 300, 0, 0, 167, '2017-08-22 13:23:15', 0),
(167, 0, 'The State', ' id 167', 6000000, 3, '2404.794433', '-3754.554199', '931.851562', 9, '83.260002', '1322.930053', '1083.859985', 0, 0, 1, 0, 0, 0, 1, 0, 100, 1, 0, 168, '2017-08-22 13:23:15', 0),
(168, 0, 'The State', ' id 168', 600000, 3, '-2904.448974', '1155.010009', '13.664052', 12, '2324.469970', '-1148.810058', '1050.709960', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 169, '2017-08-22 13:23:15', 0),
(169, 0, 'The State', ' id 169', 50000, 3, '2384.856445', '-3804.147216', '931.845336', 9, '83.260002', '1322.930053', '1083.859985', 0, 0, 1, 0, 0, 0, 1, 0, 250, 1, 0, 170, '2017-08-22 13:23:15', 0),
(170, 0, 'The State', ' id 170', 420000, 3, '-2434.963867', '1311.138061', '15.712862', 8, '2807.479980', '-1173.979980', '1025.569946', 0, 0, 1, 0, 0, 0, 0, 0, 300, 1, 0, 171, '2017-08-22 13:23:15', 0),
(171, 0, 'The State', ' id 171', 600000, 3, '-2381.920410', '1226.461425', '33.104179', 12, '2324.469970', '-1148.810058', '1050.709960', 0, 0, 1, 0, 0, 0, 0, 0, 300, 1, 0, 172, '2017-08-22 13:23:15', 0),
(172, 0, 'The State', ' id 172', 1, 3, '2403.820312', '-3756.441650', '931.851562', 2, '447.239990', '1397.750000', '1084.300048', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 173, '2017-08-22 13:23:15', 0),
(173, 0, 'The State', ' id 173', 1, 3, '2409.085205', '-3749.284423', '931.851562', 9, '2317.931640', '-1025.541870', '1050.210937', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 174, '2017-08-22 13:23:15', 0),
(174, 0, 'The State', ' id 174', 70000, 3, '2379.233886', '-3780.472900', '931.845336', 5, '1260.644042', '-785.355773', '1091.906250', 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 175, '2017-08-22 13:23:15', 0),
(175, 0, 'The State', ' id 175', 100000, 3, '2377.338378', '-3781.915039', '931.845336', 6, '2196.537841', '-1204.165161', '1049.023437', 0, 0, 1, 0, 0, 0, 0, 0, 100, 1, 0, 176, '2017-08-22 13:23:15', 0),
(176, 0, 'The State', ' id 176', 90000, 3, '2389.894042', '-3801.967285', '931.845336', 12, '2324.469970', '-1148.810058', '1050.709960', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 177, '2017-08-22 13:23:15', 0),
(177, 0, 'The State', ' id 177', 1, 3, '2419.479980', '-3729.853027', '931.845336', 10, '2018.171997', '1017.750427', '996.875000', 0, 0, 1, 0, 0, 0, 1, 0, 228, 1, 0, 178, '2017-08-22 13:23:15', 0),
(178, 0, 'The State', ' id 178', 165000, 3, '2250.105712', '-1280.045288', '25.476562', 5, '2233.669921', '-1114.420043', '1050.880004', 0, 0, 1, 0, 0, 0, 1, 0, 228, 1, 0, 179, '2017-08-22 13:23:15', 0),
(179, 0, 'The State', ' id 179', 1, 3, '2388.003417', '-3801.765136', '931.851562', 7, '225.860000', '1022.369995', '1084.020019', 0, 0, 1, 0, 0, 0, 1, 0, 300, 0, 0, 180, '2017-08-22 13:23:15', 0),
(180, 0, 'The State', ' id 180', 140000, 3, '2384.514404', '-3786.316894', '932.180053', 5, '226.960006', '1114.439941', '1081.000000', 0, 0, 1, 0, 0, 0, 1, 0, 100, 1, 0, 181, '2017-08-22 13:23:15', 0),
(181, 0, 'The State', ' id 181', 3000000, 3, '980.078674', '-676.551086', '121.976257', 5, '1298.731201', '-796.746520', '1084.007812', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 182, '2017-08-22 13:23:15', 0),
(182, 0, 'The State', ' id 182', 200000, 3, '2386.762939', '-3803.605468', '931.845336', 12, '2324.469970', '-1148.810058', '1050.709960', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 183, '2017-08-22 13:23:15', 0),
(183, 0, 'The State', ' id 183', 400000, 3, '-2590.528808', '-186.127914', '4.328380', 4, '-261.269989', '1456.569946', '1084.369995', 0, 0, 1, 0, 0, 0, 1, 0, 228, 1, 0, 184, '2017-08-22 13:23:15', 0),
(184, 0, 'The State', ' id 184', 600000, 3, '2368.291748', '-1675.344482', '14.168166', 5, '22.510000', '1404.359985', '1084.430053', 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 185, '2017-08-22 13:23:15', 0),
(185, 0, 'The State', ' id 185', 80000, 3, '2365.573242', '-3788.041259', '931.845336', 12, '2324.469970', '-1148.810058', '1050.709960', 0, 0, 1, 0, 0, 0, 1, 0, 222, 1, 0, 186, '2017-08-22 13:23:15', 0),
(186, 0, 'The State', ' id 186', 420000, 3, '2308.717773', '-1714.680664', '14.649595', 1, '223.089996', '1287.739990', '1082.140014', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 187, '2017-08-22 13:23:15', 0),
(187, 0, 'Vitalik_Lombardi', ' id 187', 450000, 3, '-2424.115234', '1138.439086', '55.726562', 9, '83.260002', '1322.930053', '1083.859985', 1, 1, 1, 1, 0, 0, 0, 0, 300, 1, 0, 188, '2017-08-22 13:23:15', 0),
(188, 0, 'The State', ' id 188', 5000000, 3, '2369.540527', '-3810.378173', '931.845336', 7, '225.860000', '1022.369995', '1084.020019', 0, 0, 1, 0, 0, 0, 1, 0, 228, 1, 0, 189, '2017-08-22 13:23:15', 0),
(189, 0, 'The State', ' id 189', 600000, 3, '2370.030761', '-3782.527587', '931.845336', 12, '2324.469970', '-1148.810058', '1050.709960', 0, 0, 1, 0, 0, 0, 0, 0, 300, 1, 0, 190, '2017-08-22 13:23:15', 0),
(190, 0, 'The State', ' id 190', 440000, 3, '2414.113769', '-1646.787109', '14.011916', 9, '260.660003', '1237.819946', '1084.260009', 0, 0, 1, 0, 0, 0, 1, 0, 300, 0, 0, 191, '2017-08-22 13:23:15', 0),
(191, 0, 'The State', ' id 191', 6000000, 3, '2367.384277', '-3782.126708', '932.489074', 7, '225.860000', '1022.369995', '1084.020019', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 192, '2017-08-22 13:23:15', 0),
(192, 0, 'The State', ' id 192', 79000, 3, '2361.763183', '-3784.613037', '931.845336', 3, '234.949996', '1187.910034', '1080.260009', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 193, '2017-08-22 13:23:15', 0),
(193, 0, 'The State', ' id 193', 420000, 3, '-2356.857666', '579.241943', '24.898860', 8, '2807.479980', '-1173.979980', '1025.569946', 0, 0, 1, 0, 0, 0, 0, 0, 50, 1, 0, 194, '2017-08-22 13:23:15', 0),
(194, 0, 'The State', ' id 194', 97500, 3, '2353.583007', '-3818.000732', '931.845336', 8, '2365.100097', '-1134.810058', '1050.880004', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 195, '2017-08-22 13:23:15', 0),
(195, 0, 'The State', ' id 195', 79000, 3, '2378.173339', '-3814.135742', '931.845336', 7, '225.860000', '1022.369995', '1084.020019', 0, 0, 1, 0, 0, 0, 1, 0, 250, 0, 0, 196, '2017-08-22 13:23:15', 0),
(196, 0, 'The State', ' id 196', 420000, 3, '2650.596679', '-2021.804077', '14.176628', 1, '223.089996', '1287.739990', '1082.140014', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 197, '2017-08-22 13:23:15', 0),
(197, 0, 'The State', ' id 197', 77000, 3, '2372.950927', '-3778.164550', '931.490844', 5, '1260.644042', '-785.355773', '1091.906250', 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 198, '2017-08-22 13:23:15', 0),
(198, 0, 'The State', ' id 198', 280000, 3, '2236.434570', '168.304443', '28.153549', 10, '2269.080078', '-1210.729980', '1047.560058', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 199, '2017-08-22 13:23:15', 0),
(199, 0, 'The State', ' id 199', 123400, 3, '2419.214111', '-3731.735351', '931.845336', 7, '225.860000', '1022.369995', '1084.020019', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 200, '2017-08-22 13:23:15', 0),
(200, 0, 'The State', ' id 200', 111000, 3, '2419.711914', '-3727.643066', '931.845336', 8, '2807.479980', '-1173.979980', '1025.569946', 0, 0, 1, 0, 0, 0, 1, 0, 150, 1, 0, 201, '2017-08-22 13:23:15', 0),
(201, 0, 'The State', ' id 201', 120000, 3, '2420.722167', '-3722.202636', '931.845336', 5, '140.240005', '1366.800048', '1083.859985', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 202, '2017-08-22 13:23:15', 0),
(202, 0, 'The State', ' id 202', 315000, 3, '2232.553466', '-1469.334960', '24.581628', 1, '223.089996', '1287.739990', '1082.140014', 0, 0, 1, 0, 0, 0, 1, 0, 150, 1, 0, 203, '2017-08-22 13:23:15', 0),
(203, 0, 'The State', ' id 203', 111100, 3, '2420.492675', '-3720.046630', '931.845336', 9, '83.260002', '1322.930053', '1083.859985', 0, 0, 1, 0, 0, 0, 1, 0, 10, 1, 0, 204, '2017-08-22 13:23:15', 0),
(204, 0, 'The State', ' id 204', 1, 3, '2421.105468', '-3718.646972', '931.845336', 5, '226.960006', '1114.439941', '1081.000000', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 205, '2017-08-22 13:23:15', 0),
(205, 0, 'The State', ' id 205', 3000000, 3, '2423.075683', '-3717.466308', '931.845336', 3, '234.949996', '1187.910034', '1080.260009', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 206, '2017-08-22 13:23:15', 0),
(206, 0, 'The State', ' id 206', 76000, 3, '2424.875732', '-3716.387451', '931.845336', 7, '225.860000', '1022.369995', '1084.020019', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 207, '2017-08-22 13:23:15', 0),
(207, 0, 'The State', ' id 207', 1, 3, '2346.454345', '-3799.388427', '931.845336', 5, '1298.731201', '-796.746520', '1084.007812', 0, 0, 1, 0, 0, 0, 1, 0, 150, 0, 0, 208, '2017-08-22 13:23:15', 0),
(208, 0, 'The State', ' id 208', 210000, 3, '-2523.519287', '2239.531982', '5.383605', 1, '223.089996', '1287.739990', '1082.140014', 0, 0, 0, 0, 0, 0, 1, 0, 300, 1, 0, 209, '2017-08-22 13:23:15', 0),
(209, 0, 'The State', ' id 209', 1, 3, '2427.124023', '-3715.039794', '931.845336', 12, '2324.469970', '-1148.810058', '1050.709960', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 210, '2017-08-22 13:23:15', 0),
(210, 0, 'The State', ' id 210', 560000, 3, '693.824401', '-1705.867309', '3.819482', 10, '2269.080078', '-1210.729980', '1047.560058', 0, 0, 1, 0, 0, 0, 1, 0, 228, 0, 0, 211, '2017-08-22 13:23:15', 0),
(211, 0, 'The State', ' id 211', 49000, 3, '2431.252441', '-3712.564697', '931.845336', 10, '2269.080078', '-1210.729980', '1047.560058', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 212, '2017-08-22 13:23:15', 0),
(212, 0, 'The State', ' id 212', 315000, 3, '2313.663818', '-1355.215942', '24.028217', 1, '223.089996', '1287.739990', '1082.140014', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 213, '2017-08-22 13:23:15', 0),
(213, 0, 'The State', ' id 213', 1200000, 3, '558.598693', '-1075.581787', '72.921989', 5, '226.960006', '1114.439941', '1081.000000', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 214, '2017-08-22 13:23:15', 0),
(214, 0, 'The State', ' id 214', 120000, 3, '2434.120117', '-3710.845458', '931.845336', 12, '2324.469970', '-1148.810058', '1050.709960', 0, 0, 0, 0, 0, 0, 1, 0, 10, 0, 0, 215, '2017-08-22 13:23:15', 0),
(215, 0, 'The State', ' id 215', 1, 3, '2436.975097', '-3709.699218', '931.845336', 5, '1298.731201', '-796.746520', '1084.007812', 0, 0, 1, 0, 0, 0, 1, 0, 150, 1, 0, 216, '2017-08-22 13:23:15', 0),
(216, 0, 'The State', ' id 216', 200000, 3, '977.386779', '-771.700256', '112.202629', 12, '2315.912597', '-1143.382202', '1054.304687', 0, 0, 0, 0, 0, 0, 1, 0, 300, 1, 0, 217, '2017-08-22 13:23:15', 0),
(217, 0, 'The State', ' id 217', 120000, 3, '2439.165039', '-3708.820800', '931.845336', 7, '225.860000', '1022.369995', '1084.020019', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 218, '2017-08-22 13:23:15', 0),
(218, 0, 'The State', 'id 218', 50, 3, '2440.951660', '-3708.104492', '931.845336', 1, '2218.403076', '-1076.239013', '1050.484375', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '2017-08-22 13:23:15', 0),
(219, 0, 'The State', '   id 220', 1000000, 3, '553.039733', '-1200.156250', '44.831535', 2, '447.239990', '1397.750000', '1084.300048', 0, 0, 1, 0, 0, 0, 1, 0, 300, 0, 0, 220, '2017-08-22 13:23:15', 0),
(220, 0, 'The State', '   id 221', 740000, 3, '580.520324', '-1149.765869', '53.180084', 8, '2365.100097', '-1134.810058', '1050.880004', 0, 0, 1, 0, 0, 0, 0, 0, 100, 1, 0, 221, '2017-08-22 13:23:15', 0),
(221, 0, 'The State', '   id 222', 315000, 3, '2191.113281', '-1455.849609', '26.000000', 1, '223.089996', '1287.739990', '1082.140014', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 222, '2017-08-22 13:23:15', 0),
(222, 0, 'The State', '   id 223', 16000, 3, '2443.100830', '-3707.242187', '931.845336', 2, '2468.376953', '-1698.104980', '1013.507812', 0, 0, 1, 0, 0, 0, 1, 0, 222, 1, 0, 223, '2017-08-22 13:23:15', 0),
(223, 0, 'The State', '   id 224', 740000, 3, '351.562164', '-1196.952148', '76.515625', 8, '2365.100097', '-1134.810058', '1050.880004', 0, 0, 1, 0, 0, 0, 1, 0, 100, 1, 0, 224, '2017-08-22 13:23:15', 0),
(224, 0, 'The State', '   id 225', 185000, 3, '2446.541015', '-3705.862548', '931.845336', 12, '2324.469970', '-1148.810058', '1050.709960', 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 225, '2017-08-22 13:23:15', 0),
(225, 0, 'The State', '   id 226', 87000, 3, '2452.931152', '-3703.305175', '931.845336', 5, '1298.731201', '-796.746520', '1084.007812', 0, 0, 1, 0, 0, 0, 1, 0, 300, 0, 0, 226, '2017-08-22 13:23:15', 0),
(226, 0, 'The State', '   id 227', 1200000, 3, '220.035690', '-1250.619628', '78.330368', 12, '2324.469970', '-1148.810058', '1050.709960', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 227, '2017-08-22 13:23:15', 0),
(227, 0, 'The State', '   id 228', 125000, 3, '2451.376464', '-3704.206054', '931.845336', 4, '-261.269989', '1456.569946', '1084.369995', 0, 0, 1, 0, 0, 0, 1, 0, 227, 1, 0, 228, '2017-08-22 13:23:15', 0),
(228, 0, 'The State', '   id 229', 1000000, 3, '645.811279', '-1117.028442', '44.207038', 2, '447.239990', '1397.750000', '1084.300048', 0, 0, 1, 0, 0, 0, 1, 0, 228, 1, 0, 229, '2017-08-22 13:23:15', 0),
(229, 0, 'The State', '   id 230', 80000, 3, '2454.853271', '-3702.542968', '931.845336', 10, '2260.129882', '-1136.150024', '1050.630004', 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 230, '2017-08-22 13:23:15', 0),
(230, 0, 'The State', '   id 231', 85000, 3, '2456.257812', '-3701.781982', '931.845336', 9, '83.260002', '1322.930053', '1083.859985', 0, 0, 1, 0, 0, 0, 1, 0, 50, 1, 0, 231, '2017-08-22 13:23:15', 0),
(231, 0, 'The State', '   id 232', 1, 3, '2458.036865', '-3698.114013', '931.845336', 5, '1298.731201', '-796.746520', '1084.007812', 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 232, '2017-08-22 13:23:15', 0),
(232, 0, 'The State', '   id 233', 1, 3, '2461.555664', '-3700.652832', '931.845336', 5, '1298.731201', '-796.746520', '1084.007812', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 233, '2017-08-22 13:23:15', 0),
(233, 0, 'The State', '   id 234', 1, 3, '2464.501220', '-3694.579345', '931.845336', 9, '2318.054931', '-1024.658813', '1050.210937', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 234, '2017-08-22 13:23:15', 0),
(234, 0, 'The State', '   id 235', 1050000, 3, '1980.412475', '-1718.937866', '17.030321', 9, '2317.939941', '-1026.040039', '1050.219970', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 235, '2017-08-22 13:23:15', 0),
(235, 0, 'The State', '   id 236', 1, 3, '2466.673828', '-3690.097900', '931.845336', 9, '2317.931640', '-1025.541870', '1050.210937', 0, 0, 1, 0, 0, 0, 1, 0, 300, 0, 0, 236, '2017-08-22 13:23:15', 0),
(236, 0, 'The State', '   id 237', 125000, 3, '2469.854980', '-3683.538574', '932.077453', 7, '225.860000', '1022.369995', '1084.020019', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 237, '2017-08-22 13:23:15', 0),
(237, 0, 'The State', '   id 238', 1, 3, '2471.102050', '-3680.966552', '932.077453', 6, '755.820556', '-17.184364', '1000.585937', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 238, '2017-08-22 13:23:15', 0),
(238, 0, 'The State', '   id 239', 1, 3, '2472.501220', '-3678.081542', '932.077453', 6, '234.112716', '1067.226684', '1084.207153', 0, 0, 1, 0, 0, 0, 1, 0, 228, 1, 0, 239, '2017-08-22 13:23:15', 0),
(239, 0, 'The State', '   id 240', 1, 3, '2474.185058', '-3674.609375', '932.077453', 4, '-261.269989', '1456.569946', '1084.369995', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 240, '2017-08-22 13:23:15', 0),
(240, 0, 'The State', '   id 241', 150000, 3, '2475.392578', '-3672.119384', '932.077453', 5, '140.240005', '1366.800048', '1083.859985', 0, 0, 0, 0, 0, 0, 1, 0, 9, 1, 0, 241, '2017-08-22 13:23:15', 0),
(241, 0, 'The State', '   id 242', 5, 3, '2476.632080', '-3669.562988', '932.077453', 5, '227.270217', '1114.438232', '1080.997924', 0, 0, 1, 0, 0, 0, 1, 0, 228, 1, 0, 242, '2017-08-22 13:23:15', 0),
(242, 0, 'The State', '   id 243', 5000000, 3, '2477.691406', '-3667.377685', '932.077453', 8, '2365.100097', '-1134.810058', '1050.880004', 0, 0, 1, 0, 0, 0, 1, 0, 300, 0, 0, 243, '2017-08-22 13:23:15', 0),
(243, 0, 'The State', '   id 244', 100000, 3, '2479.114257', '-3664.443115', '932.077453', 5, '1298.731201', '-796.746520', '1084.007812', 0, 0, 1, 0, 0, 0, 1, 0, 300, 0, 0, 244, '2017-08-22 13:23:15', 0),
(244, 0, 'The State', '   id 245', 110000, 3, '2392.228759', '-3811.000488', '931.851562', 5, '140.240005', '1366.800048', '1083.859985', 0, 0, 1, 0, 0, 0, 1, 0, 200, 1, 0, 245, '2017-08-22 13:23:15', 0),
(245, 0, 'The State', '   id 246', 450000, 3, '-2583.742187', '2307.890625', '7.002882', 9, '83.260002', '1322.930053', '1083.859985', 0, 0, 0, 0, 0, 0, 1, 0, 100, 1, 0, 246, '2017-08-22 13:23:15', 0),
(246, 0, 'The State', '   id 247', 110000, 3, '2480.321533', '-3661.954101', '932.077453', 5, '1298.731201', '-796.746520', '1084.007812', 0, 0, 1, 0, 0, 0, 1, 0, 228, 1, 0, 247, '2017-08-22 13:23:15', 0),
(247, 0, 'The State', '   id 248', 100000, 3, '2419.866699', '-3726.020507', '931.845336', 8, '2807.479980', '-1173.979980', '1025.569946', 0, 0, 1, 0, 0, 0, 1, 0, 50, 1, 0, 248, '2017-08-22 13:23:15', 0),
(248, 0, 'The State', '   id 249', 675000, 3, '2259.319824', '-1019.228698', '59.296531', 9, '83.260002', '1322.930053', '1083.859985', 0, 0, 1, 0, 0, 0, 1, 0, 282, 0, 0, 249, '2017-08-22 13:23:15', 0);
INSERT INTO `Houses` (`id`, `Owned`, `Owner`, `Discription`, `Price`, `Level`, `EntranceX`, `EntranceY`, `EntranceZ`, `Interior`, `ExitX`, `ExitY`, `ExitZ`, `Health`, `Armour`, `Tv`, `Signal`, `Narks`, `Mats`, `Bar`, `Lock`, `RentPrice`, `Rentabil`, `Money`, `World`, `LastVisit`, `DonatePrice`) VALUES
(249, 0, 'The State', '   id 250', 87000, 3, '2482.353759', '-3657.762939', '932.077453', 7, '225.860000', '1022.369995', '1084.020019', 0, 0, 1, 0, 0, 0, 1, 0, 150, 1, 0, 250, '2017-08-22 13:23:15', 0),
(250, 0, 'The State', '   id 251', 125000, 3, '2483.614746', '-3655.161865', '932.077453', 9, '83.260002', '1322.930053', '1083.859985', 0, 0, 1, 0, 0, 0, 1, 0, 228, 1, 0, 251, '2017-08-22 13:23:15', 0),
(251, 0, 'The State', '   id 252', 87000, 3, '2375.348876', '-3808.620849', '931.845336', 5, '1298.731201', '-796.746520', '1084.007812', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 252, '2017-08-22 13:23:15', 0),
(252, 0, 'The State', '   id 253', 80000, 3, '2485.119140', '-3652.059082', '932.077453', 5, '2233.669921', '-1114.420043', '1050.880004', 0, 0, 1, 0, 0, 0, 0, 0, 300, 1, 0, 253, '2017-08-22 13:23:15', 0),
(253, 0, 'The State', '   id 254', 87000, 3, '2486.971435', '-3648.239990', '932.077453', 5, '1260.644042', '-785.355773', '1091.906250', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 254, '2017-08-22 13:23:15', 0),
(254, 0, 'The State', '   id 255', 5000000, 3, '2488.405761', '-3645.282470', '932.077453', 5, '1298.731201', '-796.746520', '1084.007812', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 255, '2017-08-22 13:23:15', 0),
(255, 0, 'The State', '   id 256', 420000, 3, '-2894.697509', '1017.111877', '36.828125', 8, '2807.479980', '-1173.979980', '1025.569946', 0, 0, 1, 0, 0, 0, 1, 0, 228, 1, 0, 256, '2017-08-22 13:23:15', 0),
(256, 0, 'The State', '   id 257', 8000000, 3, '2489.614257', '-3642.790283', '932.077453', 7, '225.860000', '1022.369995', '1084.020019', 0, 0, 1, 0, 0, 0, 1, 0, 300, 0, 0, 257, '2017-08-22 13:23:15', 0),
(257, 0, 'The State', '   id 258', 260000, 3, '2513.713623', '-1650.380004', '14.355666', 10, '2260.129882', '-1136.150024', '1050.630004', 0, 0, 1, 0, 0, 0, 1, 0, 228, 1, 0, 258, '2017-08-22 13:23:15', 0),
(258, 0, 'The State', '   id 259', 135000, 3, '2490.970214', '-3639.994140', '932.077453', 9, '83.260002', '1322.930053', '1083.859985', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 259, '2017-08-22 13:23:15', 0),
(259, 0, 'The State', '   id 260', 86000, 3, '2491.791992', '-3638.300292', '932.077453', 1, '223.089996', '1287.739990', '1082.140014', 0, 0, 1, 0, 0, 0, 0, 0, 200, 1, 0, 260, '2017-08-22 13:23:15', 0),
(260, 0, 'The State', '   id 261', 150000, 3, '2493.020996', '-3635.766357', '932.077453', 5, '140.240005', '1366.800048', '1083.859985', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 261, '2017-08-22 13:23:15', 0),
(261, 0, 'The State', '   id 262', 80000, 3, '2383.169189', '-3800.818603', '931.845336', 10, '2260.129882', '-1136.150024', '1050.630004', 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 262, '2017-08-22 13:23:15', 0),
(262, 0, 'The State', '   id 263', 85000, 3, '2494.281005', '-3633.169189', '932.077453', 12, '2324.469970', '-1148.810058', '1050.709960', 0, 0, 1, 0, 0, 0, 1, 0, 229, 1, 0, 263, '2017-08-22 13:23:15', 0),
(263, 0, 'The State', '   id 264', 86000, 3, '2495.103515', '-3631.473876', '932.077453', 7, '225.860000', '1022.369995', '1084.020019', 0, 0, 0, 0, 0, 0, 1, 0, 300, 0, 0, 264, '2017-08-22 13:23:15', 0),
(264, 0, 'The State', '   id 265', 80000, 3, '2496.115234', '-3629.387451', '932.077453', 5, '2233.669921', '-1114.420043', '1050.880004', 0, 0, 1, 0, 0, 0, 0, 0, 300, 1, 0, 265, '2017-08-22 13:23:15', 0),
(265, 0, 'The State', '   id 266', 90000, 3, '2497.527099', '-3626.476074', '932.077453', 5, '140.240005', '1366.800048', '1083.859985', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 266, '2017-08-22 13:23:15', 0),
(266, 0, 'The State', '   id 267', 1, 3, '2498.257080', '-3624.969970', '932.077453', 4, '300.480224', '306.025024', '1003.539062', 0, 0, 1, 0, 0, 0, 1, 0, 228, 1, 0, 267, '2017-08-22 13:23:15', 0),
(267, 0, 'The State', '   id 268', 100000000, 3, '2499.497070', '-3622.412353', '932.077453', 10, '246.214385', '108.150001', '1003.218750', 0, 0, 1, 0, 0, 0, 1, 0, 111, 0, 0, 268, '2017-08-22 13:23:15', 0),
(268, 0, 'The State', '   id 269', 100000, 3, '2500.805908', '-3619.713623', '932.077453', 8, '2807.479980', '-1173.979980', '1025.569946', 0, 0, 1, 0, 0, 0, 0, 0, 100, 0, 0, 269, '2017-08-22 13:23:15', 0),
(269, 0, 'The State', '   id 270', 110000, 3, '2502.114990', '-3617.014648', '932.077453', 6, '2308.679931', '-1212.239990', '1049.020019', 0, 0, 1, 0, 0, 0, 0, 0, 55, 1, 0, 270, '2017-08-22 13:23:15', 0),
(270, 0, 'The State', '   id 271', 110000, 3, '2503.503173', '-3614.152099', '932.180175', 6, '2332.909912', '-1075.920043', '1049.020019', 0, 0, 1, 0, 0, 0, 0, 0, 25, 0, 0, 271, '2017-08-22 13:23:15', 0),
(271, 0, 'The State', '   id 272', 420000, 3, '2451.911376', '-1642.304809', '13.735733', 1, '223.089996', '1287.739990', '1082.140014', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 272, '2017-08-22 13:23:15', 0),
(272, 0, 'The State', '   id 273', 1, 3, '2505.413330', '-3610.132080', '932.180175', 5, '1260.644042', '-785.355773', '1091.906250', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 273, '2017-08-22 13:23:15', 0),
(273, 0, 'The State', '   id 274', 100000, 3, '2505.804443', '-3609.407226', '932.180175', 8, '2807.479980', '-1173.979980', '1025.569946', 0, 0, 1, 0, 0, 0, 1, 0, 300, 0, 0, 274, '2017-08-22 13:23:15', 0),
(274, 0, 'The State', '   id 275', 1, 3, '2507.702636', '-3605.493408', '932.180175', 1, '1.621705', '23.587753', '1199.593750', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 275, '2017-08-22 13:23:15', 0),
(275, 0, 'The State', '   id 276', 87000, 3, '2508.743164', '-3603.347167', '932.180175', 5, '1260.644042', '-785.355773', '1091.906250', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 276, '2017-08-22 13:23:15', 0),
(276, 0, 'The State', '   id 277', 90000, 3, '2510.130859', '-3600.485107', '932.180175', 7, '225.860000', '1022.369995', '1084.020019', 0, 0, 1, 0, 0, 0, 1, 0, 228, 0, 0, 277, '2017-08-22 13:23:15', 0),
(277, 0, 'The State', '   id 278', 80000, 3, '2511.252685', '-3598.171386', '932.180175', 6, '234.157150', '1065.958374', '1084.208984', 0, 0, 0, 0, 0, 0, 1, 0, 228, 1, 0, 278, '2017-08-22 13:23:15', 0),
(278, 0, 'The State', '   id 279', 86000, 3, '2512.110839', '-3596.401611', '932.180175', 12, '2324.469970', '-1148.810058', '1050.709960', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 279, '2017-08-22 13:23:15', 0),
(279, 0, 'The State', '   id 280', 85000, 3, '2381.758056', '-3799.699707', '931.845336', 10, '2260.129882', '-1136.150024', '1050.630004', 0, 0, 0, 0, 0, 0, 0, 0, 50, 1, 0, 280, '2017-08-22 13:23:15', 0),
(280, 0, 'The State', '   id 281', 80000, 3, '2420.583496', '-3724.479980', '931.845336', 7, '225.860000', '1022.369995', '1084.020019', 0, 0, 1, 0, 0, 0, 1, 0, 100, 1, 0, 281, '2017-08-22 13:23:15', 0),
(281, 0, 'The State', '   id 282', 1, 3, '2512.907470', '-3594.759277', '932.180175', 12, '2324.469970', '-1148.810058', '1050.709960', 0, 0, 1, 0, 0, 0, 1, 0, 228, 0, 0, 282, '2017-08-22 13:23:15', 0),
(282, 0, 'The State', '   id 283', 5000000, 3, '2513.134277', '-3594.291748', '932.180175', 8, '2365.005126', '-1133.183593', '1050.875000', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 283, '2017-08-22 13:23:15', 0),
(283, 0, 'The State', '   id 284', 86000, 3, '2513.562255', '-3590.877929', '932.180175', 5, '2233.669921', '-1114.420043', '1050.880004', 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 284, '2017-08-22 13:23:15', 0),
(284, 0, 'The State', '   id 285', 80000, 3, '2513.147705', '-3592.498779', '932.180175', 12, '1133.491088', '-14.990530', '1000.679687', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 285, '2017-08-22 13:23:15', 0),
(285, 0, 'The State', '   id 286', 90000, 3, '2510.710205', '-3591.154052', '932.180175', 3, '234.949996', '1187.910034', '1080.260009', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 286, '2017-08-22 13:23:15', 0),
(286, 0, 'The State', '   id 287', 110000, 3, '-45.052410', '1081.251953', '20.939863', 5, '2233.669921', '-1114.420043', '1050.880004', 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 287, '2017-08-22 13:23:15', 0),
(287, 0, 'The State', '   id 288', 210000, 3, '1.354122', '1076.170043', '20.939865', 6, '2332.909912', '-1075.920043', '1049.020019', 0, 0, 1, 0, 0, 0, 0, 0, 200, 1, 0, 288, '2017-08-22 13:23:15', 0),
(288, 0, 'The State', '   id 289', 210000, 3, '12.916831', '1113.078857', '20.939867', 6, '2332.909912', '-1075.920043', '1049.020019', 0, 0, 1, 0, 0, 0, 0, 0, 150, 0, 0, 289, '2017-08-22 13:23:15', 0),
(289, 0, 'The State', '   id 290', 110000, 3, '2508.851318', '-3593.324462', '932.180175', 9, '2317.939941', '-1026.040039', '1050.219970', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 290, '2017-08-22 13:23:15', 0),
(290, 0, 'The State', '   id 291', 110000, 3, '-35.994274', '1115.440551', '20.939863', 5, '2233.669921', '-1114.420043', '1050.880004', 0, 0, 1, 0, 0, 0, 0, 0, 300, 1, 0, 291, '2017-08-22 13:23:15', 0),
(291, 0, 'The State', '   id 292', 1, 3, '2505.323486', '-3597.441650', '932.180175', 5, '1298.731201', '-796.746520', '1084.007812', 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 292, '2017-08-22 13:23:15', 0),
(292, 0, 'The State', '   id 293', 1, 3, '2504.180664', '-3598.775146', '932.180175', 5, '1298.667114', '-794.834594', '1084.007812', 0, 0, 1, 0, 0, 0, 1, 0, 99, 1, 0, 293, '2017-08-22 13:23:15', 0),
(293, 0, 'The State', '   id 294', 1, 3, '2502.672363', '-3600.534912', '932.180175', 8, '2365.100097', '-1134.810058', '1050.880004', 0, 0, 1, 0, 0, 0, 0, 0, 300, 1, 0, 294, '2017-08-22 13:23:15', 0),
(294, 0, 'The State', '   id 295', 480000, 3, '2695.180419', '-2020.551147', '14.022274', 5, '22.510000', '1404.359985', '1084.430053', 0, 0, 1, 0, 0, 0, 1, 0, 150, 1, 0, 295, '2017-08-22 13:23:15', 0),
(295, 0, 'The State', '   id 296', 10000, 3, '2501.393310', '-3602.027587', '932.180175', 4, '-261.269989', '1456.569946', '1084.369995', 0, 0, 0, 0, 0, 0, 1, 0, 300, 1, 0, 296, '2017-08-22 13:23:15', 0),
(296, 0, 'The State', '   id 297', 150000, 3, '2499.872314', '-3603.802490', '932.180175', 5, '140.240005', '1366.800048', '1083.859985', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 297, '2017-08-22 13:23:15', 0),
(297, 0, 'The State', '   id 298', 5000000, 3, '2498.813476', '-3605.037841', '932.180175', 8, '-42.799999', '1405.900024', '1084.430053', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 298, '2017-08-22 13:23:15', 0),
(298, 0, 'The State', '   id 299', 125000, 3, '2383.573730', '-3802.080322', '931.851562', 5, '1260.644042', '-785.355773', '1091.906250', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 299, '2017-08-22 13:23:15', 0),
(299, 0, 'The State', '   id 300', 125000, 3, '2497.050292', '-3607.094970', '932.180175', 9, '83.260002', '1322.930053', '1083.859985', 0, 0, 1, 0, 0, 0, 1, 0, 200, 1, 0, 300, '2017-08-22 13:23:15', 0),
(300, 0, 'The State', '   id 301', 110000, 3, '2495.436523', '-3608.977783', '932.180175', 3, '234.949996', '1187.910034', '1080.260009', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 301, '2017-08-22 13:23:15', 0),
(301, 0, 'The State', '   id 302', 110000, 3, '2493.910156', '-3610.759277', '932.180175', 6, '2308.679931', '-1212.239990', '1049.020019', 0, 0, 1, 0, 0, 0, 0, 0, 199, 1, 0, 302, '2017-08-22 13:23:15', 0),
(302, 0, 'The State', '   id 303', 100000, 3, '2492.415283', '-3612.503417', '932.180175', 8, '2807.479980', '-1173.979980', '1025.569946', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 303, '2017-08-22 13:23:15', 0),
(303, 0, 'The State', '   id 304', 87000, 3, '2346.772216', '-3802.030029', '931.845336', 6, '2196.537841', '-1204.165161', '1049.023437', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 304, '2017-08-22 13:23:15', 0),
(304, 0, 'The State', '   id 305', 87000, 3, '2490.816406', '-3614.368896', '932.180175', 5, '1298.731201', '-796.746520', '1084.007812', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 305, '2017-08-22 13:23:15', 0),
(305, 0, 'The State', '   id 306', 420000, 3, '2524.707519', '-1658.627441', '15.824020', 1, '223.089996', '1287.739990', '1082.140014', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 306, '2017-08-22 13:23:15', 0),
(306, 0, 'The State', '   id 307', 110000, 3, '-258.248016', '1168.841186', '20.939863', 5, '2233.669921', '-1114.420043', '1050.880004', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 307, '2017-08-22 13:23:15', 0),
(307, 0, 'The State', '   id 308', 1, 3, '2488.751464', '-3616.778076', '932.180175', 5, '1298.731201', '-796.746520', '1084.007812', 0, 0, 1, 0, 0, 0, 1, 0, 228, 0, 0, 308, '2017-08-22 13:23:15', 0),
(308, 0, 'The State', '   id 309', 85000, 3, '2486.298095', '-3619.640869', '932.180175', 6, '234.216583', '1065.210449', '1084.210083', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 309, '2017-08-22 13:23:15', 0),
(309, 0, 'The State', '   id 310', 80000, 3, '2484.956054', '-3621.302246', '932.180175', 7, '225.860000', '1022.369995', '1084.015014', 0, 0, 1, 0, 0, 0, 1, 0, 228, 1, 0, 310, '2017-08-22 13:23:15', 0),
(310, 0, 'The State', '   id 311', 50000, 3, '2483.206542', '-3623.098632', '932.180175', 9, '2317.939941', '-1026.040039', '1050.219970', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 311, '2017-08-22 13:23:15', 0),
(311, 0, 'The State', '   id 312', 85000, 3, '2480.570068', '-3623.493164', '932.180175', 5, '1260.644042', '-785.355773', '1091.906250', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 312, '2017-08-22 13:23:15', 0),
(312, 0, 'The State', '   id 313', 5000000, 3, '2477.599609', '-3625.569824', '932.180175', 8, '2365.100097', '-1134.810058', '1050.880004', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 313, '2017-08-22 13:23:15', 0),
(313, 0, 'The State', '   id 314', 80000, 3, '2474.472900', '-3625.334472', '932.180175', 5, '2233.669921', '-1114.420043', '1050.880004', 0, 0, 1, 0, 0, 0, 1, 0, 100, 1, 0, 314, '2017-08-22 13:23:15', 0),
(314, 0, 'The State', '   id 315', 260000, 3, '870.421142', '-24.930582', '63.984134', 10, '2260.129882', '-1136.150024', '1050.630004', 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 315, '2017-08-22 13:23:15', 0),
(315, 0, 'The State', '   id 316', 110000, 3, '-258.907775', '1151.069458', '20.939865', 1, '2217.620117', '-1076.040039', '1050.479980', 0, 0, 1, 0, 0, 0, 0, 0, 100, 1, 0, 316, '2017-08-22 13:23:15', 0),
(316, 0, 'The State', '   id 317', 110000, 3, '-258.822784', '1083.823120', '20.939867', 1, '2217.620117', '-1076.040039', '1050.479980', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 317, '2017-08-22 13:23:15', 0),
(317, 0, 'The State', '   id 318', 100000, 3, '2470.619140', '-3625.320068', '932.180175', 8, '2807.479980', '-1173.979980', '1025.569946', 0, 0, 1, 0, 0, 0, 1, 0, 200, 0, 0, 318, '2017-08-22 13:23:15', 0),
(318, 0, 'The State', '   id 319', 110000, 3, '-278.978027', '1003.509399', '20.939867', 1, '2217.620117', '-1076.040039', '1050.479980', 0, 0, 1, 0, 0, 0, 0, 0, 300, 1, 0, 319, '2017-08-22 13:23:15', 0),
(319, 0, 'The State', '', 800000, 3, '1886.305908', '-1113.763305', '26.275810', 15, '294.989990', '1472.800048', '1080.260009', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 320, '2017-08-22 13:23:15', 0),
(320, 0, 'The State', '', 210000, 3, '2466.401367', '-3623.984863', '932.180175', 10, '2269.080078', '-1210.729980', '1047.560058', 0, 0, 1, 0, 0, 0, 1, 0, 10, 1, 0, 321, '2017-08-22 13:23:15', 0),
(321, 0, 'The State', '', 137000, 3, '2464.147216', '-3623.617431', '932.180175', 12, '2324.469970', '-1148.810058', '1050.709960', 0, 0, 1, 0, 0, 0, 1, 0, 47, 1, 0, 322, '2017-08-22 13:23:15', 0),
(322, 0, 'The State', '', 450000, 3, '1906.079956', '-1112.948364', '26.664062', 5, '22.510000', '1404.359985', '1084.430053', 0, 0, 1, 0, 0, 0, 1, 0, 200, 0, 0, 323, '2017-08-22 13:23:15', 0),
(323, 0, 'The State', '', 420000, 3, '-2619.608398', '114.851051', '4.648375', 8, '2807.479980', '-1173.979980', '1025.569946', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 324, '2017-08-22 13:23:15', 0),
(324, 0, 'The State', '', 149000, 3, '2461.989013', '-3623.132080', '932.344055', 5, '1298.731201', '-796.746520', '1084.007812', 0, 0, 0, 0, 0, 0, 1, 0, 300, 1, 0, 325, '2017-08-22 13:23:15', 0),
(325, 0, 'The State', '', 555000, 3, '1939.064575', '-1114.502197', '27.452295', 8, '2365.100097', '-1134.810058', '1050.880004', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 326, '2017-08-22 13:23:15', 0),
(326, 0, 'The State', '', 120000, 3, '2459.628173', '-3622.749755', '932.344055', 5, '1298.731201', '-796.746520', '1084.007812', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 327, '2017-08-22 13:23:15', 0),
(327, 0, 'The State', '', 450000, 3, '1955.157104', '-1114.968261', '27.830497', 5, '22.510000', '1404.359985', '1084.430053', 0, 0, 1, 0, 0, 0, 1, 0, 2, 1, 0, 328, '2017-08-22 13:23:15', 0),
(328, 0, 'The State', '', 223000, 3, '2457.282226', '-3623.092041', '932.344055', 12, '2324.469970', '-1148.810058', '1050.709960', 0, 0, 1, 0, 0, 0, 1, 0, 228, 1, 0, 329, '2017-08-22 13:23:15', 0),
(329, 0, 'The State', '', 223000, 3, '2457.282226', '-3623.092041', '932.344055', 5, '1298.731201', '-796.746520', '1084.007812', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 330, '2017-08-22 13:23:15', 0),
(330, 0, 'The State', '', 1110000, 3, '1536.090087', '-884.777587', '57.657482', 15, '294.989990', '1472.800048', '1080.260009', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 331, '2017-08-22 13:23:15', 0),
(331, 0, 'The State', '', 165000, 3, '1245.388916', '-902.759033', '46.593887', 1, '2217.583496', '-1075.742797', '1050.484375', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 332, '2017-08-22 13:23:15', 0),
(332, 0, 'The State', '', 149000, 3, '2454.663574', '-3623.470458', '932.344055', 9, '2317.939941', '-1026.040039', '1050.219970', 0, 0, 1, 0, 0, 0, 1, 0, 20, 1, 0, 333, '2017-08-22 13:23:15', 0),
(333, 0, 'The State', '', 85000, 3, '2451.313476', '-3624.532226', '932.344055', 7, '225.860000', '1022.369995', '1084.020019', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 334, '2017-08-22 13:23:15', 0),
(334, 0, 'The State', '', 420000, 3, '-2689.537353', '75.421722', '7.203125', 8, '2806.912353', '-1161.379638', '1029.164550', 0, 0, 1, 0, 0, 0, 0, 0, 150, 1, 0, 335, '2017-08-22 13:23:15', 0),
(335, 0, 'The State', '', 223000, 3, '2449.044677', '-3624.357666', '932.344055', 12, '2324.469970', '-1148.810058', '1050.709960', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 336, '2017-08-22 13:23:15', 0),
(336, 0, 'The State', '', 1400000, 3, '315.877044', '-1770.005371', '4.638511', 9, '2317.939941', '-1026.040039', '1050.219970', 0, 0, 0, 0, 0, 0, 1, 0, 300, 1, 0, 337, '2017-08-22 13:23:15', 0),
(337, 0, 'The State', '', 126000, 3, '2446.365966', '-3624.151123', '932.344055', 5, '1298.731201', '-796.746520', '1084.007812', 0, 0, 1, 0, 0, 0, 1, 0, 150, 1, 0, 338, '2017-08-22 13:23:15', 0),
(338, 0, 'The State', '', 149000, 3, '2443.035156', '-3623.895263', '932.344055', 12, '2324.469970', '-1148.810058', '1050.709960', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 339, '2017-08-22 13:23:15', 0),
(339, 0, 'The State', '', 85000, 3, '2438.831787', '-3623.572265', '932.344055', 7, '225.860000', '1022.369995', '1084.020019', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 340, '2017-08-22 13:23:15', 0),
(340, 0, 'The State', '', 210000, 3, '2435.089843', '-3622.958496', '931.252441', 5, '140.240005', '1366.800048', '1083.859985', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 341, '2017-08-22 13:23:15', 0),
(341, 0, 'The State', '', 420000, 3, '-2791.896484', '212.549713', '10.054677', 8, '2809.560058', '-1161.911376', '1029.171875', 0, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 342, '2017-08-22 13:23:15', 0),
(342, 0, 'The State', '', 120000, 3, '2430.430664', '-3622.600585', '931.252441', 5, '22.510000', '1404.359985', '1084.430053', 0, 0, 1, 0, 0, 0, 1, 0, 250, 1, 0, 343, '2017-08-22 13:23:15', 0),
(343, 0, 'The State', '', 315000, 3, '1959.120971', '-1069.131835', '24.796701', 6, '2332.909912', '-1075.920043', '1049.020019', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 344, '2017-08-22 13:23:15', 0),
(344, 0, 'The State', '', 750000, 3, '1954.462646', '-1075.116821', '24.796701', 15, '294.989990', '1472.800048', '1080.260009', 0, 0, 0, 0, 0, 0, 1, 0, 300, 1, 0, 345, '2017-08-22 13:23:15', 0),
(345, 0, 'The State', '', 113000, 3, '2427.574707', '-3622.062988', '931.252441', 2, '266.950012', '304.850006', '999.150024', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 346, '2017-08-22 13:23:15', 0),
(346, 0, 'The State', '', 120000, 3, '2423.796142', '-3621.351318', '931.252441', 5, '22.510000', '1404.359985', '1084.430053', 0, 0, 1, 0, 0, 0, 1, 0, 100, 1, 0, 347, '2017-08-22 13:23:15', 0),
(347, 0, 'The State', '', 165000, 3, '1246.218627', '-909.055114', '46.601562', 5, '2233.669921', '-1114.420043', '1050.880004', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 348, '2017-08-22 13:23:15', 0),
(348, 0, 'The State', '', 120000, 3, '2421.904296', '-3620.995605', '931.252441', 5, '140.240005', '1366.800048', '1083.859985', 0, 0, 0, 0, 0, 0, 1, 0, 100, 1, 0, 349, '2017-08-22 13:23:15', 0),
(349, 0, 'The State', '', 315000, 3, '1934.565673', '-1070.939331', '24.415996', 6, '2332.909912', '-1075.920043', '1049.020019', 0, 0, 1, 0, 0, 0, 0, 0, 300, 1, 0, 350, '2017-08-22 13:23:15', 0),
(350, 0, 'The State', '', 315000, 3, '2151.751708', '-1446.379028', '25.774595', 1, '223.089996', '1287.739990', '1082.140014', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 351, '2017-08-22 13:23:15', 0),
(351, 0, 'The State', '', 155000, 3, '2369.507568', '-3790.477783', '925.423461', 7, '225.860000', '1022.369995', '1084.020019', 0, 0, 1, 0, 0, 0, 1, 0, 150, 1, 0, 352, '2017-08-22 13:23:15', 0),
(352, 0, 'The State', '', 780000, 3, '2381.528076', '-3797.935791', '931.845336', 5, '140.240005', '1366.800048', '1083.859985', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 353, '2017-08-22 13:23:15', 0),
(353, 0, 'The State', '', 300000, 3, '2379.723632', '-3792.183349', '931.845336', 2, '2468.376953', '-1698.104980', '1013.507812', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 354, '2017-08-22 13:23:15', 0),
(354, 0, 'The State', '', 85000, 3, '2368.727294', '-3791.267578', '925.423461', 6, '2195.350097', '-1204.160034', '1049.020019', 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 355, '2017-08-22 13:23:15', 0),
(355, 0, 'The State', '', 400000, 3, '-2618.174072', '831.013793', '49.984375', 4, '-261.269989', '1456.569946', '1084.369995', 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 356, '2017-08-22 13:23:15', 0),
(356, 0, 'The State', '', 3000000, 3, '2367.619384', '-3792.367187', '925.423461', 5, '140.240005', '1366.800048', '1083.859985', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 357, '2017-08-22 13:23:15', 0),
(357, 0, 'The State', '', 155000, 3, '2366.447021', '-3793.542724', '925.423461', 10, '2269.080078', '-1210.729980', '1047.560058', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 358, '2017-08-22 13:23:15', 0),
(358, 0, 'The State', '', 137000, 3, '2367.740234', '-3794.209716', '925.423461', 9, '2317.939941', '-1026.040039', '1050.219970', 0, 0, 1, 0, 0, 0, 1, 0, 2, 1, 0, 359, '2017-08-22 13:23:15', 0),
(359, 0, 'The State', '', 825000, 3, '794.370727', '-1810.819580', '13.029726', 3, '234.949996', '1187.910034', '1080.260009', 0, 0, 1, 0, 0, 0, 1, 0, 222, 1, 0, 360, '2017-08-22 13:23:15', 0),
(360, 0, 'The State', '', 6000000, 3, '2368.882324', '-3792.943115', '925.423461', 5, '226.960006', '1114.439941', '1081.000000', 0, 0, 1, 0, 0, 0, 1, 0, 250, 1, 0, 361, '2017-08-22 13:23:15', 0),
(361, 0, 'The State', '', 150000, 3, '2024.070678', '-1052.955810', '25.596122', 1, '244.229995', '304.940002', '999.150024', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 362, '2017-08-22 13:23:15', 0),
(362, 0, 'The State', '', 137000, 3, '2370.120361', '-3792.024902', '925.423461', 15, '294.989990', '1472.800048', '1080.260009', 0, 0, 1, 0, 0, 0, 0, 0, 200, 1, 0, 363, '2017-08-22 13:23:15', 0),
(363, 0, 'The State', '', 700000, 3, '1468.608520', '-905.930664', '54.835937', 6, '2196.537841', '-1204.165161', '1049.023437', 0, 0, 1, 0, 0, 0, 0, 0, 228, 1, 0, 364, '2017-08-22 13:23:15', 0),
(364, 0, 'The State', '', 149000, 3, '2369.110595', '-3795.163085', '925.423461', 9, '2317.939941', '-1026.040039', '1050.219970', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 365, '2017-08-22 13:23:15', 0),
(365, 0, 'The State', '', 400000, 3, '-2301.453369', '-143.003540', '35.320312', 4, '-261.269989', '1456.569946', '1084.369995', 0, 0, 1, 0, 0, 0, 0, 0, 100, 1, 0, 366, '2017-08-22 13:23:15', 0),
(366, 0, 'The State', '', 450000, 3, '657.224365', '-1652.721313', '15.406250', 5, '22.510000', '1404.359985', '1084.430053', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 367, '2017-08-22 13:23:15', 0),
(367, 0, 'The State', '', 85000, 3, '655.687683', '-1636.621337', '15.861742', 6, '-68.830001', '1352.089965', '1080.209960', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 368, '2017-08-22 13:23:15', 0),
(368, 0, 'The State', '', 1050000, 3, '652.549194', '-1619.990478', '15.000000', 9, '2317.939941', '-1026.040039', '1050.219970', 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 369, '2017-08-22 13:23:15', 0),
(369, 0, 'The State', '', 555000, 3, '692.988403', '-1602.654174', '15.046875', 8, '2365.100097', '-1134.810058', '1050.880004', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 370, '2017-08-22 13:23:15', 0),
(370, 0, 'The State', '', 223000, 3, '2369.935546', '-3793.663330', '925.423461', 5, '1298.731201', '-796.746520', '1084.007812', 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 371, '2017-08-22 13:23:15', 0),
(371, 0, 'The State', '', 630000, 3, '2627.645019', '-1085.249877', '69.715583', 8, '2807.479980', '-1173.979980', '1025.569946', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 372, '2017-08-22 13:23:15', 0),
(372, 0, 'The State', '', 155000, 3, '2370.999511', '-3794.192382', '925.423461', 7, '225.860000', '1022.369995', '1084.020019', 0, 0, 1, 0, 0, 0, 1, 0, 228, 1, 0, 373, '2017-08-22 13:23:15', 0),
(373, 0, 'The State', '', 600000, 3, '2082.943359', '-1040.066406', '31.817741', 15, '294.989990', '1472.800048', '1080.260009', 0, 0, 1, 0, 0, 0, 0, 0, 300, 1, 0, 374, '2017-08-22 13:23:15', 0),
(374, 0, 'The State', '', 137000, 3, '2370.190429', '-3795.036376', '925.423461', 3, '234.949996', '1187.910034', '1080.260009', 0, 0, 1, 0, 0, 0, 1, 0, 200, 1, 0, 375, '2017-08-22 13:23:15', 0),
(375, 0, 'The State', '', 149000, 3, '2368.666015', '-3796.776611', '925.423461', 6, '2308.679931', '-1212.239990', '1049.020019', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 376, '2017-08-22 13:23:15', 0),
(376, 0, 'The State', '', 210000, 3, '2372.692626', '-3793.721679', '925.423461', 5, '1298.731201', '-796.746520', '1084.007812', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 377, '2017-08-22 13:23:15', 0),
(377, 0, 'The State', '', 1040000, 3, '738.980102', '-1418.197631', '13.523434', 5, '140.240005', '1366.800048', '1083.859985', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 378, '2017-08-22 13:23:15', 0),
(378, 0, 'The State', '', 300000, 3, '2371.520019', '-3794.519775', '925.423461', 5, '22.510000', '1404.359985', '1084.430053', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 379, '2017-08-22 13:23:15', 0),
(379, 0, 'The State', '', 210000, 3, '2370.520019', '-3795.906738', '925.423461', 3, '234.949996', '1187.910034', '1080.260009', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 380, '2017-08-22 13:23:15', 0),
(380, 0, 'The State', '', 5000000, 3, '2369.752685', '-3796.476074', '925.423461', 12, '2324.469970', '-1148.810058', '1050.709960', 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 381, '2017-08-22 13:23:15', 0),
(381, 0, 'The State', '', 223000, 3, '2369.921875', '-3797.799072', '925.423461', 6, '2195.350097', '-1204.160034', '1049.023437', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 382, '2017-08-22 13:23:15', 0),
(382, 0, 'The State', '', 5000000, 3, '2383.885986', '-3793.683105', '931.845336', 5, '1260.644042', '-785.355773', '1091.906250', 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 383, '2017-08-22 13:23:15', 0),
(383, 0, 'The State', '', 85000, 3, '2369.921875', '-3797.799072', '925.423461', 5, '1298.731201', '-796.746520', '1084.007812', 0, 0, 1, 0, 0, 0, 1, 0, 228, 1, 0, 384, '2017-08-22 13:23:15', 0),
(384, 0, 'The State', '', 137000, 3, '2371.117675', '-3796.867187', '925.423461', 6, '2195.350097', '-1204.160034', '1049.020019', 0, 0, 1, 0, 0, 0, 0, 0, 2, 1, 0, 385, '2017-08-22 13:23:15', 0),
(385, 0, 'The State', '', 5000000, 3, '2371.679199', '-3795.870361', '925.423461', 8, '2807.479980', '-1173.979980', '1025.569946', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 386, '2017-08-22 13:23:15', 0),
(386, 0, 'The State', '', 1200000, 3, '253.228271', '-1269.986083', '74.430709', 12, '2324.469970', '-1148.810058', '1050.709960', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 387, '2017-08-22 13:23:15', 0),
(387, 0, 'The State', '', 5000000, 3, '2372.692626', '-3795.195312', '925.423461', 6, '234.148101', '1063.721679', '1084.212280', 0, 0, 1, 0, 0, 0, 1, 0, 300, 0, 0, 388, '2017-08-22 13:23:15', 0),
(388, 0, 'The State', '', 4000000, 3, '2373.452148', '-3794.418701', '925.423461', 5, '226.960006', '1114.439941', '1081.000000', 0, 0, 1, 0, 0, 0, 1, 0, 100, 1, 0, 389, '2017-08-22 13:23:15', 0),
(389, 0, 'The State', '', 5000000, 3, '2372.034912', '-3796.599609', '925.423461', 10, '2269.080078', '-1210.729980', '1047.560058', 0, 0, 1, 0, 0, 0, 1, 0, 50, 1, 0, 390, '2017-08-22 13:23:15', 0),
(390, 0, 'The State', '', 270000, 3, '2498.423095', '-1642.259887', '14.113080', 6, '2308.679931', '-1212.239990', '1049.020019', 0, 0, 1, 0, 0, 0, 1, 0, 228, 1, 0, 391, '2017-08-22 13:23:15', 0),
(391, 0, 'The State', '', 113000, 3, '2370.805419', '-3789.233154', '925.423461', 5, '1298.731201', '-796.746520', '1084.007812', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 392, '2017-08-22 13:23:15', 0),
(392, 0, 'The State', '', 3000000, 3, '725.620544', '-1440.149902', '13.531820', 5, '1298.731201', '-796.746520', '1084.007812', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 393, '2017-08-22 13:23:15', 0),
(393, 0, 'The State', '', 85000, 3, '2372.013916', '-3788.060058', '925.423461', 5, '22.510000', '1404.359985', '1084.430053', 0, 0, 1, 0, 0, 0, 0, 0, 300, 1, 0, 394, '2017-08-22 13:23:15', 0),
(394, 0, 'The State', '', 80000000, 3, '2376.194091', '-3784.164550', '925.423461', 3, '-2636.883544', '1402.403686', '906.460937', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 395, '2017-08-22 13:23:15', 0),
(395, 0, 'The State', '', 113000, 3, '2377.433105', '-3783.010253', '925.423461', 5, '1298.731201', '-796.746520', '1084.007812', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 396, '2017-08-22 13:23:15', 0),
(396, 0, 'The State', '', 5000000, 3, '2381.140136', '-3779.555664', '925.423461', 8, '2365.100097', '-1134.810058', '1050.880004', 0, 0, 1, 0, 0, 0, 1, 0, 111, 1, 0, 397, '2017-08-22 13:23:15', 0),
(397, 0, 'The State', '', 113000, 3, '2382.862060', '-3777.951171', '925.423461', 5, '2233.669921', '-1114.420043', '1050.880004', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 398, '2017-08-22 13:23:15', 0),
(398, 0, 'The State', '', 675000, 3, '-2027.742431', '-41.780918', '38.804687', 9, '83.260002', '1322.930053', '1083.859985', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 399, '2017-08-22 13:23:15', 0),
(399, 0, 'The State', '', 176000, 3, '2385.817871', '-3775.196777', '925.423461', 6, '2195.350097', '-1204.160034', '1049.020019', 0, 0, 1, 0, 0, 0, 1, 0, 200, 1, 0, 400, '2017-08-22 13:23:15', 0),
(400, 0, 'The State', '', 126000, 3, '2387.490966', '-3773.637695', '925.423461', 1, '223.089996', '1287.739990', '1082.140014', 0, 0, 1, 0, 0, 0, 1, 0, 300, 0, 0, 401, '2017-08-22 13:23:15', 0),
(401, 0, 'The State', '', 113000, 3, '2388.909179', '-3772.316406', '925.423461', 3, '234.949996', '1187.910034', '1080.260009', 0, 0, 1, 0, 0, 0, 1, 0, 150, 1, 0, 402, '2017-08-22 13:23:15', 0),
(402, 0, 'The State', '', 5, 3, '2390.235107', '-3771.080566', '925.423461', 7, '225.860000', '1022.369995', '1084.020019', 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 403, '2017-08-22 13:23:15', 0),
(403, 0, 'The State', '', 113000, 3, '2391.959472', '-3769.473632', '925.423461', 3, '234.949996', '1187.910034', '1080.260009', 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 404, '2017-08-22 13:23:15', 0),
(404, 0, 'The State', '', 113000, 3, '2393.050537', '-3768.456542', '925.423461', 12, '2324.469970', '-1148.810058', '1050.709960', 0, 0, 1, 0, 0, 0, 1, 0, 111, 1, 0, 405, '2017-08-22 13:23:15', 0),
(405, 0, 'The State', '', 315000, 3, '2514.355712', '-1691.570800', '14.046030', 1, '223.089996', '1287.739990', '1082.140014', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 406, '2017-08-22 13:23:15', 0),
(406, 0, 'The State', '', 126000, 3, '2394.890625', '-3766.741943', '925.423461', 6, '2195.350097', '-1204.160034', '1049.020019', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 407, '2017-08-22 13:23:15', 0),
(407, 0, 'The State', '', 270000, 3, '2385.385986', '-1712.869628', '14.197319', 6, '2308.679931', '-1212.239990', '1049.020019', 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 408, '2017-08-22 13:23:15', 0),
(408, 0, 'The State', '', 137000, 3, '2396.129638', '-3765.587646', '925.423461', 5, '1298.731201', '-796.746520', '1084.007812', 0, 0, 1, 0, 0, 0, 1, 0, 228, 1, 0, 409, '2017-08-22 13:23:15', 0),
(409, 0, 'The State', '', 126000, 3, '2306.959716', '-1679.197998', '14.331624', 5, '22.510000', '1404.359985', '1084.430053', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 410, '2017-08-22 13:23:15', 0),
(410, 0, 'The State', '', 149000, 3, '2377.493652', '-3811.951171', '925.423461', 12, '2324.469970', '-1148.810058', '1050.709960', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 411, '2017-08-22 13:23:15', 0),
(411, 0, 'The State', '', 1400000, 3, '470.818572', '-1163.785156', '67.216270', 9, '2317.939941', '-1026.040039', '1050.219970', 0, 0, 0, 0, 0, 0, 1, 0, 228, 1, 0, 412, '2017-08-22 13:23:15', 0),
(412, 0, 'The State', '', 550000, 3, '-2479.981933', '2449.936767', '17.323022', 3, '234.949996', '1187.910034', '1080.260009', 0, 0, 1, 0, 0, 0, 1, 0, 100, 1, 0, 413, '2017-08-22 13:23:15', 0),
(413, 0, 'The State', '', 165000, 3, '2393.157958', '-1646.033813', '13.905097', 1, '2217.620117', '-1076.040039', '1050.479980', 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 414, '2017-08-22 13:23:15', 0),
(414, 0, 'The State', '', 155000, 3, '2397.853759', '-3763.981201', '925.423461', 12, '2324.469970', '-1148.810058', '1050.709960', 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 415, '2017-08-22 13:23:15', 0),
(415, 0, 'The State', '', 130000, 3, '-396.266845', '-425.087829', '16.259374', 10, '2260.129882', '-1136.150024', '1050.630004', 0, 0, 1, 0, 0, 0, 0, 0, 199, 1, 0, 416, '2017-08-22 13:23:15', 0),
(416, 0, 'The State', '', 165000, 3, '2327.235595', '-1681.829711', '14.929677', 5, '2233.669921', '-1114.420043', '1050.880004', 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 417, '2017-08-22 13:23:15', 0),
(417, 0, 'The State', '', 630000, 3, '2171.892333', '-1615.276733', '14.289340', 8, '2807.479980', '-1173.979980', '1025.569946', 0, 0, 1, 0, 0, 0, 0, 0, 300, 0, 0, 418, '2017-08-22 13:23:15', 0),
(418, 0, 'The State', '', 126000, 3, '2398.954589', '-3762.955322', '925.423461', 9, '83.260002', '1322.930053', '1083.859985', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 419, '2017-08-22 13:23:15', 0),
(419, 0, 'The State', '', 600000, 3, '2178.074707', '-1599.899414', '14.351552', 4, '-261.269989', '1456.569946', '1084.369995', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 420, '2017-08-22 13:23:15', 0),
(420, 0, 'The State', '', 600000, 3, '2165.214355', '-1591.407470', '14.345930', 4, '-261.269989', '1456.569946', '1084.369995', 0, 0, 1, 0, 0, 0, 0, 0, 300, 1, 0, 421, '2017-08-22 13:23:15', 0),
(421, 0, 'The State', '', 5000000, 3, '2401.249267', '-3760.817626', '925.423461', 8, '2365.100097', '-1134.810058', '1050.880004', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 422, '2017-08-22 13:23:15', 0),
(422, 0, 'The State', '', 825000, 3, '2150.151611', '-1584.707763', '14.343750', 3, '234.949996', '1187.910034', '1080.260009', 0, 0, 1, 0, 0, 0, 1, 0, 228, 0, 0, 423, '2017-08-22 13:23:15', 0),
(423, 0, 'The State', '', 126000, 3, '2402.729980', '-3759.235107', '925.423461', 2, '266.950012', '304.850006', '999.150024', 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 424, '2017-08-22 13:23:15', 0),
(424, 0, 'The State', '', 210000, 3, '2403.814941', '-3757.977294', '925.423461', 3, '234.949996', '1187.910034', '1080.260009', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 425, '2017-08-22 13:23:15', 0),
(425, 0, 'The State', '', 600000, 3, '2128.656494', '-1663.420043', '15.085927', 4, '-261.269989', '1456.569946', '1084.369995', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 426, '2017-08-22 13:23:15', 0),
(426, 0, 'The State', '', 270000, 3, '2068.072998', '-1629.078369', '13.876152', 6, '2308.679931', '-1212.239990', '1049.020019', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 427, '2017-08-22 13:23:15', 0),
(427, 0, 'The State', '', 1050000, 3, '2756.328857', '-1182.809814', '69.403457', 9, '2317.939941', '-1026.040039', '1050.219970', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 428, '2017-08-22 13:23:15', 0),
(428, 0, 'The State', '', 223000, 3, '2405.008789', '-3756.593261', '925.976440', 5, '140.240005', '1366.800048', '1083.859985', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 429, '2017-08-22 13:23:15', 0),
(429, 0, 'The State', '', 1400000, 3, '416.816192', '-1154.148071', '76.687614', 9, '2317.939941', '-1026.040039', '1050.219970', 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 430, '2017-08-22 13:23:15', 0),
(430, 0, 'The State', '', 195000, 3, '2284.298828', '-1046.165283', '49.887119', 10, '2260.129882', '-1136.150024', '1050.630004', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 431, '2017-08-22 13:23:15', 0),
(431, 0, 'The State', '', 137000, 3, '2410.483886', '-3750.246093', '925.976440', 7, '225.860000', '1022.369995', '1084.020019', 0, 0, 0, 0, 0, 0, 1, 0, 300, 1, 0, 432, '2017-08-22 13:23:15', 0),
(432, 0, 'The State', '', 165000, 3, '2015.830322', '-1641.576904', '13.782402', 1, '2217.620117', '-1076.040039', '1050.479980', 0, 0, 1, 0, 0, 0, 1, 0, 100, 1, 0, 433, '2017-08-22 13:23:15', 0),
(433, 0, 'The State', '', 149000, 3, '2413.274169', '-3748.636474', '925.391052', 5, '1260.644042', '-785.355773', '1091.906250', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 434, '2017-08-22 13:23:15', 0),
(434, 0, 'The State', '', 85000, 3, '2413.982421', '-3746.882080', '925.391052', 7, '225.833435', '1023.315429', '1084.012207', 0, 0, 1, 0, 0, 0, 1, 0, 100, 1, 0, 435, '2017-08-22 13:23:15', 0),
(435, 0, 'The State', '', 195000, 3, '2017.683227', '-1630.113525', '13.712096', 10, '2260.129882', '-1136.150024', '1050.630004', 0, 0, 1, 0, 0, 0, 0, 0, 100, 1, 0, 436, '2017-08-22 13:23:15', 0),
(436, 0, 'The State', '', 195000, 3, '2334.578857', '-1046.003906', '52.552936', 10, '2260.129882', '-1136.150024', '1050.630004', 0, 0, 1, 0, 0, 0, 0, 0, 5, 0, 0, 437, '2017-08-22 13:23:15', 0),
(437, 0, 'The State', '', 3, 3, '2414.879638', '-3744.662353', '925.391052', 5, '1260.644042', '-785.355773', '1091.906250', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 438, '2017-08-22 13:23:15', 0),
(438, 0, 'The State', '', 220000, 3, '1535.033935', '-800.223693', '72.849456', 5, '2233.669921', '-1114.420043', '1050.880004', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 439, '2017-08-22 13:23:15', 0),
(439, 0, 'The State', '', 450000, 3, '-2358.511718', '679.580566', '35.164062', 9, '83.260002', '1322.930053', '1083.859985', 0, 0, 1, 0, 0, 0, 0, 0, 299, 0, 0, 440, '2017-08-22 13:23:15', 0),
(440, 0, 'The State', '', 113000, 3, '2416.044677', '-3741.778320', '925.391052', 7, '225.860000', '1022.369995', '1084.020019', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 441, '2017-08-22 13:23:15', 0),
(441, 0, 'The State', '', 550000, 3, '-2303.328857', '657.298889', '45.312263', 3, '234.949996', '1187.910034', '1080.260009', 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 442, '2017-08-22 13:23:15', 0),
(442, 0, 'The State', '', 85000, 3, '2366.651123', '-3811.860595', '931.845336', 5, '1298.731201', '-796.746520', '1084.007812', 0, 0, 0, 0, 0, 0, 1, 0, 300, 1, 0, 443, '2017-08-22 13:23:15', 0),
(443, 0, 'The State', '', 137000, 3, '2416.972900', '-3739.481445', '925.391052', 7, '225.860000', '1022.369995', '1084.020019', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 444, '2017-08-22 13:23:15', 0),
(444, 0, 'The State', '', 210000, 3, '2418.544433', '-3735.591064', '925.391052', 5, '1260.644042', '-785.355773', '1091.906250', 0, 0, 1, 0, 0, 0, 1, 0, 200, 1, 0, 445, '2017-08-22 13:23:15', 0),
(445, 0, 'The State', '', 223000, 3, '2419.342285', '-3733.616210', '925.391052', 6, '2196.537841', '-1204.165161', '1049.023437', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 446, '2017-08-22 13:23:15', 0),
(446, 0, 'The State', '', 370000, 3, '818.179138', '-509.670257', '18.012922', 8, '2365.100097', '-1134.810058', '1050.880004', 0, 0, 0, 0, 0, 0, 1, 0, 60, 1, 0, 447, '2017-08-22 13:23:15', 0),
(447, 0, 'The State', '', 900000, 3, '2782.166259', '-1306.415527', '38.872497', 5, '226.960006', '1114.439941', '1081.000000', 0, 0, 0, 0, 0, 0, 1, 0, 300, 1, 0, 448, '2017-08-22 13:23:15', 0),
(448, 0, 'The State', '', 370000, 3, '2420.604248', '-3730.493896', '925.391052', 7, '225.860000', '1022.369995', '1084.020019', 0, 0, 1, 0, 0, 0, 1, 0, 60, 1, 0, 449, '2017-08-22 13:23:15', 0),
(449, 0, 'The State', '', 223000, 3, '795.190246', '-506.960479', '18.012922', 2, '2237.560058', '-1080.449951', '1049.020019', 0, 0, 1, 0, 0, 0, 0, 0, 150, 0, 0, 450, '2017-08-22 13:23:15', 0),
(450, 0, 'The State', '', 0, 3, '2421.889892', '-3732.682128', '925.391052', 12, '1133.267822', '-15.828639', '1000.679687', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 451, '2017-08-22 13:23:15', 0),
(451, 0, 'The State', '', 1, 3, '2422.678955', '-3735.534667', '925.391052', 5, '1298.731201', '-796.746520', '1084.007812', 0, 0, 1, 0, 0, 0, 1, 0, 300, 0, 0, 452, '2017-08-22 13:23:15', 0),
(452, 0, 'The State', '', 120000, 3, '2423.662841', '-3739.028320', '925.391052', 18, '1727.135986', '-1639.853393', '20.223926', 0, 0, 1, 0, 0, 0, 1, 0, 222, 1, 0, 453, '2017-08-22 13:23:15', 0),
(453, 0, 'The State', '', 149000, 3, '2389.831054', '-3811.124755', '931.845336', 5, '140.240005', '1366.800048', '1083.859985', 0, 0, 1, 0, 0, 0, 1, 0, 299, 1, 0, 454, '2017-08-22 13:23:15', 0),
(454, 0, 'The State', '', 137000, 3, '2424.683349', '-3742.654296', '925.391052', 3, '234.949996', '1187.910034', '1080.260009', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 455, '2017-08-22 13:23:15', 0),
(455, 0, 'The State', '', 5000000, 3, '2425.850341', '-3746.799560', '925.391052', 8, '2364.856201', '-1134.918457', '1050.875000', 0, 0, 1, 0, 0, 0, 1, 0, 300, 0, 0, 456, '2017-08-22 13:23:15', 0),
(456, 0, 'The State', '', 675000, 3, '2781.944824', '-1358.478149', '26.368297', 9, '83.260002', '1322.930053', '1083.859985', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 457, '2017-08-22 13:23:15', 0),
(457, 0, 'The State', '', 113000, 3, '2427.125000', '-3751.326904', '925.391052', 1, '244.229995', '304.940002', '999.150024', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 458, '2017-08-22 13:23:15', 0),
(458, 0, 'The State', '', 223000, 3, '2427.978271', '-3754.356689', '925.391052', 5, '226.960006', '1114.439941', '1081.000000', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 459, '2017-08-22 13:23:15', 0),
(459, 0, 'The State', '', 195000, 3, '2579.258300', '-1034.594482', '69.581146', 10, '2260.129882', '-1136.150024', '1050.630004', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 460, '2017-08-22 13:23:15', 0),
(460, 0, 'The State', '', 270000, 3, '2561.403808', '-1034.349487', '69.669212', 6, '2308.679931', '-1212.239990', '1049.020019', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 461, '2017-08-22 13:23:15', 0),
(461, 0, 'The State', '', 600000, 3, '2807.910644', '-1190.199218', '25.347616', 4, '-261.269989', '1456.569946', '1084.369995', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 462, '2017-08-22 13:23:15', 0),
(462, 0, 'The State', '', 5, 3, '2430.237548', '-3762.385009', '925.391052', 9, '83.260002', '1322.930053', '1083.859985', 0, 0, 1, 0, 0, 0, 1, 0, 100, 1, 0, 463, '2017-08-22 13:23:15', 0),
(463, 0, 'The State', '', 370000, 3, '743.238037', '-509.318420', '18.012922', 8, '2365.100097', '-1134.810058', '1050.880004', 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 464, '2017-08-22 13:23:15', 0),
(464, 0, 'The State', '', 1, 3, '2431.560791', '-3767.083496', '925.391052', 3, '-2636.628906', '1402.467163', '906.460937', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 465, '2017-08-22 13:23:15', 0),
(465, 0, 'The State', '', 126000, 3, '2432.354003', '-3769.900634', '925.391052', 3, '234.949996', '1187.910034', '1080.260009', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 466, '2017-08-22 13:23:15', 0),
(466, 0, 'The State', '', 7000000, 3, '2430.896728', '-3770.114990', '925.391052', 5, '1260.644042', '-785.355773', '1091.906250', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 467, '2017-08-22 13:23:15', 0),
(467, 0, 'The State', '', 165000, 3, '2470.672119', '-1105.321289', '44.487880', 5, '2233.669921', '-1114.420043', '1050.880004', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 468, '2017-08-22 13:23:15', 0),
(468, 0, 'The State', '', 5000000, 3, '2426.725097', '-3769.071777', '925.391052', 8, '2365.100097', '-1134.810058', '1050.880004', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 469, '2017-08-22 13:23:15', 0),
(469, 0, 'The State', '', 165000, 3, '2438.732177', '-1104.173706', '42.751155', 1, '2217.620117', '-1076.040039', '1050.479980', 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 470, '2017-08-22 13:23:15', 0),
(470, 0, 'The State', '', 120000, 3, '2425.292968', '-3768.681396', '925.391052', 9, '260.660003', '1237.819946', '1084.260009', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 471, '2017-08-22 13:23:15', 0),
(471, 0, 'The State', '', 113000, 3, '2422.909179', '-3768.032226', '925.391052', 8, '2807.479980', '-1173.979980', '1025.569946', 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 472, '2017-08-22 13:23:15', 0),
(472, 0, 'The State', '', 137000, 3, '2420.251464', '-3767.308349', '925.391052', 5, '226.960006', '1114.439941', '1081.000000', 0, 0, 1, 0, 0, 0, 1, 0, 100, 1, 0, 473, '2017-08-22 13:23:15', 0),
(473, 0, 'The State', '', 137000, 3, '2418.491699', '-3766.802246', '925.009277', 12, '2324.469970', '-1148.810058', '1050.709960', 0, 0, 1, 0, 0, 0, 1, 0, 228, 1, 0, 474, '2017-08-22 13:23:15', 0),
(474, 0, 'The State', '', 149000, 3, '2415.878417', '-3765.932373', '925.009277', 10, '2269.080078', '-1210.729980', '1047.560058', 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 475, '2017-08-22 13:23:15', 0),
(475, 0, 'The State', '', 85000, 3, '2412.952880', '-3764.958496', '925.009277', 10, '2269.080078', '-1210.729980', '1047.560058', 0, 0, 1, 0, 0, 0, 0, 0, 300, 1, 0, 476, '2017-08-22 13:23:15', 0),
(476, 0, 'The State', '', 176000, 3, '2384.642333', '-3802.452636', '931.851562', 5, '226.960006', '1114.439941', '1081.000000', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 477, '2017-08-22 13:23:15', 0),
(477, 0, 'The State', '', 315000, 3, '2488.110595', '-1135.257568', '39.585937', 1, '223.089996', '1287.739990', '1082.140014', 0, 0, 1, 0, 0, 0, 0, 0, 100, 1, 0, 478, '2017-08-22 13:23:15', 0),
(478, 0, 'The State', '', 120000, 3, '2409.094970', '-3763.674804', '925.009277', 5, '140.240005', '1366.800048', '1083.859985', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 479, '2017-08-22 13:23:15', 0),
(479, 0, 'The State', '', 210000, 3, '2405.070312', '-3762.335205', '925.009277', 5, '1260.644042', '-785.355773', '1091.906250', 0, 0, 1, 0, 0, 0, 1, 0, 100, 0, 0, 480, '2017-08-22 13:23:15', 0),
(480, 0, 'The State', '', 149000, 3, '2403.080078', '-3761.687255', '925.009277', 5, '226.960006', '1114.439941', '1081.000000', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 481, '2017-08-22 13:23:15', 0),
(481, 0, 'The State', '', 210000, 3, '2403.146240', '-3764.063476', '925.009277', 9, '2317.939941', '-1026.040039', '1050.219970', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 482, '2017-08-22 13:23:15', 0),
(482, 0, 'The State', '', 195000, 3, '2473.159912', '-1238.135986', '32.569477', 10, '2260.129882', '-1136.150024', '1050.630004', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 483, '2017-08-22 13:23:15', 0),
(483, 0, 'The State', '', 450000, 3, '-2116.792724', '927.480102', '86.079063', 9, '83.260002', '1322.930053', '1083.859985', 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 484, '2017-08-22 13:23:15', 0),
(484, 0, 'The State', '', 126000, 3, '2402.197509', '-3766.496093', '925.009277', 5, '1298.731201', '-796.746520', '1084.007812', 0, 0, 1, 0, 0, 0, 1, 0, 100, 0, 0, 485, '2017-08-22 13:23:15', 0),
(485, 0, 'The State', '', 700000, 3, '-2099.585205', '897.699890', '76.710937', 9, '2317.939941', '-1026.040039', '1050.219970', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 486, '2017-08-22 13:23:15', 0),
(486, 0, 'The State', '', 270000, 3, '2470.342529', '-1295.411376', '30.233221', 6, '2332.909912', '-1075.920043', '1049.020019', 0, 0, 1, 0, 0, 0, 1, 0, 200, 1, 0, 487, '2017-08-22 13:23:15', 0),
(487, 0, 'The State', '', 1, 3, '2401.127685', '-3769.240966', '925.009277', 5, '226.960006', '1114.439941', '1081.000000', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 488, '2017-08-22 13:23:15', 0),
(488, 0, 'The State', '', 176000, 3, '2399.930419', '-3772.311523', '925.009277', 6, '2195.350097', '-1204.160034', '1049.020019', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 489, '2017-08-22 13:23:15', 0),
(489, 0, 'The State', '', 155000, 3, '1667.566650', '-2106.950195', '14.072273', 4, '260.950012', '1285.089965', '1080.260009', 0, 0, 1, 0, 0, 0, 0, 0, 300, 1, 0, 490, '2017-08-22 13:23:15', 0),
(490, 0, 'The State', '', 450000, 3, '1673.751098', '-2122.526123', '14.146014', 5, '22.510000', '1404.359985', '1084.430053', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 491, '2017-08-22 13:23:15', 0),
(491, 0, 'The State', '', 270000, 3, '1684.964965', '-2098.956054', '13.834321', 6, '2308.679931', '-1212.239990', '1049.020019', 0, 0, 1, 0, 0, 0, 1, 0, 228, 1, 0, 492, '2017-08-22 13:23:15', 0),
(492, 0, 'The State', '', 155000, 3, '2401.924804', '-3761.844238', '931.845336', 5, '1298.731201', '-796.746520', '1084.007812', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 493, '2017-08-22 13:23:15', 0),
(493, 0, 'The State', '', 126000, 3, '2525.907470', '-1641.211303', '14.107368', 3, '234.949996', '1187.910034', '1080.260009', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 494, '2017-08-22 13:23:15', 0),
(494, 0, 'The State', '', 155000, 3, '2399.193603', '-3774.200195', '925.009277', 8, '2807.479980', '-1173.979980', '1025.569946', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 495, '2017-08-22 13:23:15', 0),
(495, 0, 'The State', '', 1, 3, '2398.302978', '-3776.484863', '925.009277', 12, '2324.469970', '-1148.810058', '1050.709960', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 496, '2017-08-22 13:23:15', 0),
(496, 0, 'The State', '', 270000, 3, '1761.243408', '-2125.227783', '14.056648', 6, '2308.679931', '-1212.239990', '1049.020019', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 497, '2017-08-22 13:23:15', 0),
(497, 0, 'The State', '', 450000, 3, '1781.170654', '-2101.270263', '14.056648', 5, '22.510000', '1404.359985', '1084.430053', 0, 0, 1, 0, 0, 0, 1, 0, 50, 0, 0, 498, '2017-08-22 13:23:15', 0),
(498, 0, 'The State', '', 225000, 3, '1801.708740', '-2098.966064', '14.021014', 10, '2260.129882', '-1136.150024', '1050.630004', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 499, '2017-08-22 13:23:15', 0),
(499, 0, 'The State', '', 450000, 3, '1803.862792', '-2124.884277', '13.942373', 5, '22.510000', '1404.359985', '1084.430053', 0, 0, 1, 0, 0, 0, 0, 0, 300, 1, 0, 500, '2017-08-22 13:23:15', 0),
(500, 0, 'The State', '', 120000, 3, '2397.927246', '-3778.620605', '925.009277', 10, '-1132.234741', '1058.019653', '1346.413940', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 501, '2017-08-22 13:23:15', 0),
(501, 0, 'The State', '', 210000, 3, '2396.154052', '-3780.389648', '925.009277', 7, '225.860000', '1022.369995', '1084.020019', 0, 0, 1, 0, 0, 0, 1, 0, 290, 1, 0, 502, '2017-08-22 13:23:15', 0);
INSERT INTO `Houses` (`id`, `Owned`, `Owner`, `Discription`, `Price`, `Level`, `EntranceX`, `EntranceY`, `EntranceZ`, `Interior`, `ExitX`, `ExitY`, `ExitZ`, `Health`, `Armour`, `Tv`, `Signal`, `Narks`, `Mats`, `Bar`, `Lock`, `RentPrice`, `Rentabil`, `Money`, `World`, `LastVisit`, `DonatePrice`) VALUES
(502, 0, 'The State', '', 137000, 3, '2394.847167', '-3781.607421', '925.009277', 3, '234.949996', '1187.910034', '1080.260009', 0, 0, 1, 0, 0, 0, 0, 0, 300, 0, 0, 503, '2017-08-22 13:23:15', 0),
(503, 0, 'The State', '', 555000, 3, '697.283752', '-1627.024047', '3.749170', 8, '2365.100097', '-1134.810058', '1050.880004', 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 504, '2017-08-22 13:23:15', 0),
(504, 0, 'The State', '', 1200000, 3, '1112.643188', '-741.999755', '100.132926', 5, '226.960006', '1114.439941', '1081.000000', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 505, '2017-08-22 13:23:15', 0),
(505, 0, 'The State', '', 450000, 3, '1851.638916', '-2070.438232', '15.481237', 5, '22.510000', '1404.359985', '1084.430053', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 506, '2017-08-22 13:23:15', 0),
(506, 0, 'The State', '', 210000, 3, '2393.105712', '-3783.230224', '925.009277', 15, '294.989990', '1472.800048', '1080.260009', 0, 0, 1, 0, 0, 0, 0, 0, 300, 1, 0, 507, '2017-08-22 13:23:15', 0),
(507, 0, 'The State', '', 165000, 3, '295.320495', '-1764.342529', '4.680745', 1, '2217.620117', '-1076.040039', '1050.479980', 0, 0, 1, 0, 0, 0, 1, 0, 33, 1, 0, 508, '2017-08-22 13:23:15', 0),
(508, 0, 'The State', '', 126000, 3, '2390.071044', '-3786.058105', '925.009277', 5, '22.510000', '1404.359985', '1084.430053', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 509, '2017-08-22 13:23:15', 0),
(509, 0, 'The State', '', 137000, 3, '2387.786865', '-3788.186523', '925.009277', 9, '2317.698974', '-1026.762939', '1050.217773', 0, 0, 1, 0, 0, 0, 1, 0, 228, 1, 0, 510, '2017-08-22 13:23:15', 0),
(510, 0, 'The State', '', 630000, 3, '2626.000732', '-1098.813720', '69.350379', 8, '2807.479980', '-1173.979980', '1025.569946', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 511, '2017-08-22 13:23:15', 0),
(511, 0, 'The State', '', 176000, 3, '2385.706298', '-3790.115722', '925.009277', 5, '140.240005', '1366.800048', '1083.859985', 0, 0, 1, 0, 0, 0, 1, 0, 200, 1, 0, 512, '2017-08-22 13:23:15', 0),
(512, 0, 'The State', '', 137000, 3, '2388.316406', '-3789.632568', '925.009277', 9, '2317.939941', '-1026.040039', '1050.219970', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 513, '2017-08-22 13:23:15', 0),
(513, 0, 'The State', '', 223000, 3, '2390.894531', '-3790.595703', '925.009277', 8, '2807.479980', '-1173.979980', '1025.569946', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 514, '2017-08-22 13:23:15', 0),
(514, 0, 'The State', '', 176000, 3, '2394.708007', '-3792.019775', '925.009277', 5, '1260.644042', '-785.355773', '1091.906250', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 515, '2017-08-22 13:23:15', 0),
(515, 0, '', '', 10, 3, '2399.109130', '-3793.663574', '925.009277', 7, '225.860000', '1022.369995', '1084.020019', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 516, '2017-08-22 13:23:15', 0),
(516, 0, 'The State', '', 155000, 3, '2406.105712', '-3796.276611', '925.009277', 12, '2324.469970', '-1148.810058', '1050.709960', 0, 0, 1, 0, 0, 0, 1, 0, 300, 0, 0, 517, '2017-08-22 13:23:15', 0),
(517, 0, 'The State', '', 113000, 3, '2409.890380', '-3797.690673', '925.009277', 5, '22.510000', '1404.359985', '1084.430053', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 518, '2017-08-22 13:23:15', 0),
(518, 0, 'The State', '', 155000, 3, '2412.822021', '-3798.785400', '925.009277', 5, '226.960006', '1114.439941', '1081.000000', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 519, '2017-08-22 13:23:15', 0),
(519, 0, 'The State', '', 113000, 3, '2416.607177', '-3800.198974', '925.009277', 5, '140.240005', '1366.800048', '1083.859985', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 520, '2017-08-22 13:23:15', 0),
(520, 0, 'The State', '', 6000000, 3, '2420.392333', '-3801.612548', '925.009277', 8, '2807.479980', '-1173.979980', '1025.569946', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 521, '2017-08-22 13:23:15', 0),
(521, 0, 'The State', '', 113000, 3, '2422.023925', '-3802.221923', '925.009277', 5, '226.960006', '1114.439941', '1081.000000', 0, 0, 1, 0, 0, 0, 1, 0, 2, 0, 0, 522, '2017-08-22 13:23:15', 0),
(522, 0, 'The State', '', 1000000, 3, '497.251251', '-1094.873779', '82.359191', 2, '447.239990', '1397.750000', '1084.300048', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 523, '2017-08-22 13:23:15', 0),
(523, 0, 'The State', '', 223000, 3, '2421.901611', '-3799.862548', '925.009277', 7, '225.860000', '1022.369995', '1084.020019', 0, 0, 0, 0, 0, 0, 1, 0, 111, 1, 0, 524, '2017-08-22 13:23:15', 0),
(524, 0, 'The State', '', 176000, 3, '2420.221191', '-3797.509277', '925.009277', 3, '234.949996', '1187.910034', '1080.260009', 0, 0, 1, 0, 0, 0, 0, 0, 300, 1, 0, 525, '2017-08-22 13:23:15', 0),
(525, 0, 'The State', '', 630000, 3, '2151.322753', '-1789.241210', '13.509674', 8, '2807.479980', '-1173.979980', '1025.569946', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 526, '2017-08-22 13:23:15', 0),
(526, 0, 'The State', '', 600000, 3, '-2597.311035', '2364.729003', '9.882987', 5, '226.960006', '1114.439941', '1081.000000', 0, 0, 1, 0, 0, 0, 1, 0, 228, 1, 0, 527, '2017-08-22 13:23:15', 0),
(527, 0, 'The State', '', 223000, 3, '2392.547851', '-3808.586669', '931.851562', 7, '225.860000', '1022.369995', '1084.020019', 0, 0, 0, 0, 0, 0, 1, 0, 300, 1, 0, 528, '2017-08-22 13:23:15', 0),
(528, 0, 'The State', '', 100000, 3, '2312.857666', '-1322.752685', '24.040685', 1, '244.229995', '304.940002', '999.150024', 0, 0, 0, 0, 0, 0, 1, 0, 66, 0, 0, 529, '2017-08-22 13:23:15', 0),
(529, 0, 'The State', '', 126000, 3, '2391.877441', '-3784.636230', '925.069763', 6, '2195.350097', '-1204.160034', '1049.020019', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 530, '2017-08-22 13:23:15', 0),
(530, 0, 'The State', '', 210000, 3, '2509.597412', '11.762697', '28.441644', 1, '223.089996', '1287.739990', '1082.140014', 0, 0, 1, 0, 0, 0, 1, 0, 100, 1, 0, 531, '2017-08-22 13:23:15', 0),
(531, 0, 'The State', '', 550000, 3, '-2627.582031', '2310.051269', '8.314435', 3, '234.949996', '1187.910034', '1080.260009', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 532, '2017-08-22 13:23:15', 0),
(532, 0, 'The State', '', 155000, 3, '2390.802001', '-3808.042236', '931.845336', 5, '226.960006', '1114.439941', '1081.000000', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 533, '2017-08-22 13:23:15', 0),
(533, 0, 'The State', '', 137000, 3, '2393.419921', '-3785.297607', '925.069763', 5, '140.240005', '1366.800048', '1083.859985', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 534, '2017-08-22 13:23:15', 0),
(534, 0, 'The State', '', 100000, 3, '-68.475067', '-1545.920898', '3.004307', 1, '244.229995', '304.940002', '999.150024', 0, 0, 1, 0, 0, 0, 0, 0, 300, 1, 0, 535, '2017-08-22 13:23:15', 0),
(535, 0, 'The State', '', 1400000, 3, '1675.499511', '-1462.314819', '13.671875', 9, '2317.939941', '-1026.040039', '1050.219970', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 536, '2017-08-22 13:23:15', 0),
(536, 0, 'The State', '', 10000, 3, '2384.948730', '-3782.816894', '931.845336', 7, '225.791915', '1022.313598', '1084.015136', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 537, '2017-08-22 13:23:15', 0),
(537, 0, 'The State', '', 176000, 3, '2387.972412', '-3790.078369', '931.845336', 5, '1260.644042', '-785.355773', '1091.906250', 0, 0, 1, 0, 0, 0, 1, 0, 300, 0, 0, 538, '2017-08-22 13:23:15', 0),
(538, 0, 'The State', '', 113000, 3, '2388.679443', '-3808.309082', '931.845336', 5, '1298.731201', '-796.746520', '1084.007812', 0, 0, 1, 0, 0, 0, 1, 0, 250, 0, 0, 539, '2017-08-22 13:23:15', 0),
(539, 0, 'The State', '', 315000, 3, '1891.921875', '-1914.402465', '15.256793', 1, '223.089996', '1287.739990', '1082.140014', 0, 0, 1, 0, 0, 0, 1, 0, 10, 1, 0, 540, '2017-08-22 13:23:15', 0),
(540, 0, 'The State', '', 5000000, 3, '2383.457763', '-3776.902343', '931.845336', 8, '2365.100097', '-1134.810058', '1050.880004', 0, 0, 1, 0, 0, 0, 1, 0, 150, 1, 0, 541, '2017-08-22 13:23:15', 0),
(541, 0, 'The State', '', 600000, 3, '2363.944335', '-3780.407226', '931.845336', 12, '2324.469970', '-1148.810058', '1050.709960', 0, 0, 1, 0, 0, 0, 1, 0, 300, 0, 0, 542, '2017-08-22 13:23:15', 0),
(542, 0, 'The State', '', 10000, 3, '2381.145507', '-3775.633544', '931.845336', 9, '2317.669677', '-1026.675903', '1050.217773', 0, 0, 1, 0, 0, 0, 1, 0, 300, 0, 0, 543, '2017-08-22 13:23:15', 0),
(543, 0, 'The State', '', 1200000, 3, '893.506103', '-1636.056396', '14.929677', 12, '2324.469970', '-1148.810058', '1050.709960', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 544, '2017-08-22 13:23:15', 0),
(544, 0, 'The State', '', 10000000, 3, '2386.638916', '-3806.314697', '931.845336', 15, '-285.251098', '1471.197021', '1084.375000', 0, 0, 1, 0, 0, 0, 1, 0, 300, 0, 0, 545, '2017-08-22 13:23:15', 0),
(545, 0, 'The State', '', 825000, 3, '1980.991943', '-1682.822021', '17.053712', 3, '234.949996', '1187.910034', '1080.260009', 0, 0, 1, 0, 0, 0, 0, 0, 300, 1, 0, 546, '2017-08-22 13:23:15', 0),
(546, 0, 'The State', '', 210000, 3, '2385.522705', '-3803.646484', '931.845336', 4, '260.950012', '1285.089965', '1080.260009', 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 547, '2017-08-22 13:23:15', 0),
(547, 0, 'The State', '', 525000, 3, '2140.574951', '-1708.306884', '15.085927', 6, '2196.537841', '-1204.165161', '1049.023437', 0, 0, 1, 0, 0, 0, 0, 0, 300, 0, 0, 548, '2017-08-22 13:23:15', 0),
(548, 0, 'The State', '', 113000, 3, '2385.598876', '-3787.431152', '932.180053', 1, '223.089996', '1287.739990', '1082.140014', 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 549, '2017-08-22 13:23:15', 0),
(549, 0, 'The State', '', 1200000, 3, '849.594604', '-1519.931152', '14.348196', 12, '2324.469970', '-1148.810058', '1050.709960', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 550, '2017-08-22 13:23:15', 0),
(550, 0, 'The State', '', 155000, 3, '2389.732666', '-3782.573242', '931.845336', 4, '-261.269989', '1456.569946', '1084.369995', 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 551, '2017-08-22 13:23:15', 0),
(551, 0, 'The State', '', 137000, 3, '2388.657958', '-3807.237792', '931.845336', 8, '2807.479980', '-1173.979980', '1025.569946', 0, 0, 1, 0, 0, 0, 1, 0, 50, 1, 0, 552, '2017-08-22 13:23:15', 0),
(552, 0, 'The State', '', 825000, 3, '206.915695', '-1768.882202', '4.369225', 3, '234.949996', '1187.910034', '1080.260009', 0, 0, 1, 0, 0, 0, 1, 0, 228, 1, 0, 553, '2017-08-22 13:23:15', 0),
(553, 0, 'The State', '', 223000, 3, '2387.337890', '-3787.828613', '931.845336', 3, '234.949996', '1187.910034', '1080.260009', 0, 0, 1, 0, 0, 0, 0, 0, 100, 1, 0, 554, '2017-08-22 13:23:15', 0),
(554, 0, 'The State', '', 10000, 3, '2385.961425', '-3781.219970', '931.945373', 5, '1298.731201', '-796.746520', '1084.007812', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 555, '2017-08-22 13:23:15', 0),
(555, 0, 'The State', '', 220000, 3, '-2238.643310', '-2424.187011', '32.707267', 9, '260.660003', '1237.819946', '1084.260009', 0, 0, 1, 0, 0, 0, 0, 0, 228, 1, 0, 556, '2017-08-22 13:23:15', 0),
(556, 0, 'The State', '', 10000, 3, '2384.518554', '-3788.291015', '932.125366', 9, '2317.598632', '-1026.430541', '1050.217773', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 557, '2017-08-22 13:23:15', 0),
(557, 0, 'The State', '', 1400000, 3, '652.666259', '-1693.711669', '14.544362', 9, '2317.939941', '-1026.040039', '1050.219970', 0, 0, 1, 0, 0, 0, 1, 0, 150, 1, 0, 558, '2017-08-22 13:23:15', 0),
(558, 0, 'The State', '', 210000, 3, '-369.821777', '1169.495605', '20.271875', 1, '223.089996', '1287.739990', '1082.140014', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 559, '2017-08-22 13:23:15', 0),
(559, 0, 'The State', '', 5000000, 3, '2383.754394', '-3773.790771', '931.845336', 5, '1298.731201', '-796.746520', '1084.007812', 0, 0, 0, 0, 0, 0, 1, 0, 300, 1, 0, 560, '2017-08-22 13:23:15', 0),
(560, 0, 'The State', '', 10000, 3, '2381.572998', '-3780.319824', '931.845336', 5, '1298.731201', '-796.746520', '1084.007812', 0, 0, 1, 0, 0, 0, 0, 0, 300, 1, 0, 561, '2017-08-22 13:23:15', 0),
(561, 0, 'The State', '', 6000000, 3, '2366.511474', '-3810.615234', '931.845336', 8, '2365.100097', '-1134.810058', '1050.880004', 0, 0, 0, 0, 0, 0, 1, 0, 250, 1, 0, 562, '2017-08-22 13:23:15', 0),
(562, 0, 'The State', '', 176000, 3, '2382.530273', '-3775.821289', '931.845336', 12, '2324.469970', '-1148.810058', '1050.709960', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 563, '2017-08-22 13:23:15', 0),
(563, 0, 'The State', '', 110000, 3, '-2161.231445', '-2535.046875', '31.816270', 1, '2217.620117', '-1076.040039', '1050.479980', 0, 0, 1, 0, 0, 0, 0, 0, 300, 1, 0, 564, '2017-08-22 13:23:15', 0),
(564, 0, 'The State', '', 110000, 3, '-2180.894531', '-2520.081787', '31.816270', 1, '2217.620117', '-1076.040039', '1050.479980', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 565, '2017-08-22 13:23:15', 0),
(565, 0, 'The State', '', 137000, 3, '2379.170654', '-3777.748779', '931.845336', 12, '2324.469970', '-1148.810058', '1050.709960', 0, 0, 0, 0, 0, 0, 1, 0, 228, 1, 0, 566, '2017-08-22 13:23:15', 0),
(566, 0, 'The State', '', 5000, 3, '2386.824951', '-3784.664550', '931.845336', 1, '2217.620117', '-1076.040039', '1050.479980', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 567, '2017-08-22 13:23:15', 0),
(567, 0, 'The State', '', 126000, 3, '2381.075927', '-3786.587158', '932.180053', 7, '225.860000', '1022.369995', '1084.020019', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 568, '2017-08-22 13:23:15', 0),
(568, 0, 'The State', '', 110000, 3, '-2132.573974', '-2510.887207', '31.816272', 1, '2217.620117', '-1076.040039', '1050.479980', 0, 0, 1, 0, 0, 0, 1, 0, 100, 1, 0, 569, '2017-08-22 13:23:15', 0),
(569, 0, 'The State', '', 149000, 3, '2389.404541', '-3780.700439', '931.845336', 5, '226.960006', '1114.439941', '1081.000000', 0, 0, 1, 0, 0, 0, 1, 0, 228, 1, 0, 570, '2017-08-22 13:23:15', 0),
(570, 0, 'The State', '', 85000, 3, '2386.735839', '-3779.531494', '931.845336', 7, '225.860000', '1022.369995', '1084.020019', 0, 0, 1, 0, 0, 0, 1, 0, 300, 0, 0, 571, '2017-08-22 13:23:15', 0),
(571, 0, 'The State', '', 126000, 3, '2386.569335', '-3782.844482', '931.845336', 5, '2233.669921', '-1114.420043', '1050.880004', 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 572, '2017-08-22 13:23:15', 0),
(572, 0, 'The State', '', 113000, 3, '2382.826416', '-3787.340576', '932.180053', 1, '2217.620117', '-1076.040039', '1050.479980', 0, 0, 1, 0, 0, 0, 1, 0, 70, 1, 0, 573, '2017-08-22 13:23:15', 0),
(573, 0, 'The State', '', 126000, 3, '2413.865478', '-3740.190185', '931.845336', 5, '1298.731201', '-796.746520', '1084.007812', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 574, '2017-08-22 13:23:15', 0),
(574, 0, 'The State', '', 350000, 3, '-2209.334716', '-2288.412841', '30.625000', 2, '225.639999', '1239.910034', '1082.140014', 0, 0, 0, 0, 0, 0, 1, 0, 300, 1, 0, 575, '2017-08-22 13:23:15', 0),
(575, 0, 'The State', '', 113000, 3, '2389.117187', '-3804.462890', '931.845336', 12, '2324.469970', '-1148.810058', '1050.709960', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 576, '2017-08-22 13:23:15', 0),
(576, 0, 'The State', '', 85000, 3, '2383.324707', '-3784.964355', '932.180053', 2, '2237.560058', '-1080.449951', '1049.020019', 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 577, '2017-08-22 13:23:15', 0),
(577, 0, 'The State', '', 137000, 3, '2379.728271', '-3774.824218', '931.845336', 4, '-261.269989', '1456.569946', '1084.369995', 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 578, '2017-08-22 13:23:15', 0),
(578, 0, 'The State', '', 176000, 3, '2374.264404', '-3811.951416', '925.423461', 3, '234.949996', '1187.910034', '1080.260009', 0, 0, 1, 0, 0, 0, 1, 0, 100, 1, 0, 579, '2017-08-22 13:23:15', 0),
(579, 0, 'The State', '', 100000, 3, '2373.231201', '-3811.951171', '925.423461', 9, '2317.939941', '-1026.040039', '1050.219970', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 580, '2017-08-22 13:23:15', 0),
(580, 0, 'The State', '', 223000, 3, '2370.628662', '-3811.950683', '925.423461', 6, '2196.537841', '-1204.165161', '1049.023437', 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 581, '2017-08-22 13:23:15', 0),
(581, 0, 'The State', '', 5000000, 3, '2371.674316', '-3811.950927', '925.423461', 8, '2365.263916', '-1134.472167', '1050.875000', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 582, '2017-08-22 13:23:15', 0),
(582, 0, 'The State', '', 480000, 3, '2652.929931', '-1989.438598', '13.998847', 4, '222.000000', '1141.040039', '1082.609985', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 583, '2017-08-22 13:23:15', 0),
(583, 0, 'The State', '', 149000, 3, '2374.018310', '-3810.270019', '925.423461', 7, '225.860000', '1022.369995', '1084.020019', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 584, '2017-08-22 13:23:15', 0),
(584, 0, 'The State', '', 210000, 3, '2372.804199', '-3810.306884', '925.428100', 5, '1260.644042', '-785.355773', '1091.906250', 0, 0, 0, 0, 0, 0, 1, 0, 300, 1, 0, 585, '2017-08-22 13:23:15', 0),
(585, 0, 'The State', '', 210000, 3, '2371.543457', '-3810.720947', '925.428100', 5, '1260.644042', '-785.355773', '1091.906250', 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 586, '2017-08-22 13:23:15', 0),
(586, 0, 'The State', '', 120000, 3, '2370.417480', '-3810.253662', '925.428100', 5, '1298.731201', '-796.746520', '1084.007812', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 587, '2017-08-22 13:23:15', 0),
(587, 0, 'The State', '', 420000, 3, '2672.806152', '-1989.498901', '14.324020', 10, '2269.080078', '-1210.729980', '1047.560058', 0, 0, 1, 0, 0, 0, 1, 0, 300, 0, 0, 588, '2017-08-22 13:23:15', 0),
(588, 0, 'The State', '', 113000, 3, '2370.371826', '-3809.278076', '925.428100', 10, '2269.080078', '-1210.729980', '1047.560058', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 589, '2017-08-22 13:23:15', 0),
(589, 0, 'The State', '', 900000, 3, '2486.389404', '-1645.297729', '14.077178', 12, '2324.469970', '-1148.810058', '1050.709960', 0, 0, 1, 0, 0, 0, 1, 0, 228, 1, 0, 590, '2017-08-22 13:23:15', 0),
(590, 0, 'The State', '', 210000, 3, '2371.526855', '-3809.335937', '925.428100', 8, '2807.479980', '-1173.979980', '1025.569946', 0, 0, 1, 0, 0, 0, 1, 0, 100, 1, 0, 591, '2017-08-22 13:23:15', 0),
(591, 0, 'The State', '', 149000, 3, '2372.737792', '-3809.443603', '925.428100', 7, '225.590545', '1021.850463', '1084.016601', 0, 0, 1, 0, 0, 0, 1, 0, 228, 1, 0, 592, '2017-08-22 13:23:15', 0),
(592, 0, 'The State', '', 85000, 3, '2373.622558', '-3809.663085', '925.428100', 12, '2324.469970', '-1148.810058', '1050.709960', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 593, '2017-08-22 13:23:15', 0),
(593, 0, 'The State', '', 0, 3, '2375.109130', '-3809.698730', '925.423461', 5, '140.240005', '1366.800048', '1083.859985', 0, 0, 1, 0, 0, 0, 1, 0, 250, 1, 0, 594, '2017-08-22 13:23:15', 0),
(594, 0, 'The State', '', 85000, 3, '2357.028076', '-3805.112060', '932.055358', 9, '2317.939941', '-1026.040039', '1050.219970', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 595, '2017-08-22 13:23:15', 0),
(595, 0, 'The State', '', 137000, 3, '2369.370605', '-3810.898925', '925.428100', 10, '2269.080078', '-1210.729980', '1047.560058', 0, 0, 0, 0, 0, 0, 1, 0, 300, 1, 0, 596, '2017-08-22 13:23:15', 0),
(596, 0, 'The State', '', 10000, 3, '2368.727050', '-3809.619873', '925.428100', 5, '1260.644042', '-785.355773', '1091.906250', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 597, '2017-08-22 13:23:15', 0),
(597, 0, 'The State', '', 149000, 3, '2368.401367', '-3808.252197', '925.428100', 6, '2308.679931', '-1212.239990', '1049.020019', 0, 0, 0, 0, 0, 0, 1, 0, 300, 1, 0, 598, '2017-08-22 13:23:15', 0),
(598, 0, 'The State', '', 176000, 3, '2369.919921', '-3808.294677', '925.428100', 12, '2324.525878', '-1147.785522', '1050.710083', 0, 0, 1, 0, 0, 0, 1, 0, 150, 1, 0, 599, '2017-08-22 13:23:15', 0),
(599, 0, 'The State', '', 155000, 3, '2371.262451', '-3808.506103', '925.428100', 5, '226.960006', '1114.439941', '1081.000000', 0, 0, 1, 0, 0, 0, 1, 0, 150, 1, 0, 600, '2017-08-22 13:23:15', 0),
(600, 0, 'The State', '', 165000, 3, '2465.064697', '-1995.751831', '14.019330', 5, '2233.669921', '-1114.420043', '1050.880004', 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 601, '2017-08-22 13:23:15', 0),
(601, 0, 'The State', '', 1, 3, '2372.591308', '-3808.587890', '925.428100', 1, '1.549100', '23.318300', '1199.593750', 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 602, '2017-08-22 13:23:15', 0),
(602, 0, 'The State', '', 113000, 3, '2373.630615', '-3808.455810', '925.428100', 5, '140.240005', '1366.800048', '1083.859985', 0, 0, 1, 0, 0, 0, 1, 0, 300, 0, 0, 603, '2017-08-22 13:23:15', 0),
(603, 0, 'The State', '', 825000, 3, '2148.735107', '-1484.872436', '26.624073', 3, '234.949996', '1187.910034', '1080.260009', 0, 0, 1, 0, 0, 0, 1, 0, 300, 0, 0, 604, '2017-08-22 13:23:15', 0),
(604, 0, 'The State', '', 500000, 3, '695.109558', '-1690.352539', '4.346117', 6, '-68.830001', '1352.089965', '1080.209960', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 605, '2017-08-22 13:23:15', 0),
(605, 0, 'The State', '', 420000, 3, '2092.243408', '-1166.505981', '26.585937', 10, '2269.080078', '-1210.729980', '1047.560058', 0, 0, 1, 0, 0, 0, 1, 0, 300, 0, 0, 606, '2017-08-22 13:23:15', 0),
(606, 0, 'The State', '', 223000, 3, '2367.273681', '-3806.948242', '925.423461', 5, '226.960006', '1114.439941', '1081.000000', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 607, '2017-08-22 13:23:15', 0),
(607, 0, 'The State', '', 85000, 3, '2384.982177', '-3804.905517', '931.845336', 5, '140.240005', '1366.800048', '1083.859985', 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 608, '2017-08-22 13:23:15', 0),
(608, 0, 'The State', '', 176000, 3, '2368.826171', '-3806.388671', '925.428100', 7, '225.860000', '1022.369995', '1084.020019', 0, 0, 0, 0, 0, 0, 1, 0, 300, 1, 0, 609, '2017-08-22 13:23:15', 0),
(609, 0, 'The State', '', 5, 3, '2369.739013', '-3806.402832', '925.428100', 6, '755.900695', '-16.780328', '1000.585937', 0, 0, 0, 0, 0, 0, 1, 0, 300, 1, 0, 610, '2017-08-22 13:23:15', 0),
(610, 0, 'The State', '', 270000, 3, '2384.703369', '-1675.383789', '14.915221', 6, '2308.679931', '-1212.239990', '1049.020019', 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 611, '2017-08-22 13:23:15', 0),
(611, 0, 'The State', '', 113000, 3, '2371.093994', '-3806.591308', '925.428100', 12, '2324.469970', '-1148.810058', '1050.709960', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 612, '2017-08-22 13:23:15', 0),
(612, 0, 'The State', '', 1, 3, '2372.528564', '-3806.813720', '925.428100', 11, '502.064117', '-67.651947', '998.757812', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 613, '2017-08-22 13:23:15', 0),
(613, 0, 'The State', '', 210000, 3, '2373.485839', '-3806.963134', '925.428100', 7, '225.860000', '1022.369995', '1084.020019', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 614, '2017-08-22 13:23:15', 0),
(614, 0, 'The State', '', 113000, 3, '2366.322998', '-3806.335937', '925.423461', 5, '140.240005', '1366.800048', '1083.859985', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 615, '2017-08-22 13:23:15', 0),
(615, 0, 'The State', '', 15000000, 3, '2365.315673', '-3805.378417', '925.423461', 3, '234.949996', '1187.910034', '1080.260009', 0, 0, 1, 0, 0, 0, 1, 0, 99, 1, 0, 616, '2017-08-22 13:23:15', 0),
(616, 0, 'The State', '', 126000, 3, '2364.307861', '-3804.362304', '925.423461', 9, '83.260002', '1322.930053', '1083.859985', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 617, '2017-08-22 13:23:15', 0),
(617, 0, 'The State', '', 220000, 3, '1853.991943', '-1914.371826', '15.256793', 1, '2217.620117', '-1076.040039', '1050.479980', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 618, '2017-08-22 13:23:15', 0),
(618, 0, 'The State', '', 113000, 3, '2363.150878', '-3803.205810', '925.423461', 5, '140.240005', '1366.800048', '1083.859985', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 619, '2017-08-22 13:23:15', 0),
(619, 0, 'The State', '', 450000, 3, '2696.138671', '-1990.678100', '14.222846', 5, '22.510000', '1404.359985', '1084.430053', 0, 0, 1, 0, 0, 0, 1, 0, 228, 1, 0, 620, '2017-08-22 13:23:15', 0),
(620, 0, 'The State', '', 137000, 3, '2362.315917', '-3802.299316', '925.423461', 1, '2217.620117', '-1076.040039', '1050.479980', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 621, '2017-08-22 13:23:15', 0),
(621, 0, 'The State', '', 176000, 3, '2361.737060', '-3801.706787', '925.423461', 12, '2324.469970', '-1148.810058', '1050.709960', 0, 0, 1, 0, 0, 0, 1, 0, 228, 1, 0, 622, '2017-08-22 13:23:15', 0),
(622, 0, 'The State', '', 137000, 3, '2360.789062', '-3800.809082', '925.423461', 1, '2217.620117', '-1076.040039', '1050.479980', 0, 0, 1, 0, 0, 0, 1, 0, 200, 1, 0, 623, '2017-08-22 13:23:15', 0),
(623, 0, 'The State', '', 113000, 3, '2360.086669', '-3799.911376', '925.423461', 9, '2317.939941', '-1026.040039', '1050.219970', 0, 0, 1, 0, 0, 0, 1, 0, 100, 1, 0, 624, '2017-08-22 13:23:15', 0),
(624, 0, 'The State', '', 330000, 3, '2469.459960', '-1646.404296', '13.780097', 9, '260.660003', '1237.819946', '1084.260009', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 625, '2017-08-22 13:23:15', 0),
(625, 0, 'The State', '', 900000, 3, '2157.098144', '-1709.220825', '15.085927', 12, '2324.469970', '-1148.810058', '1050.709960', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 626, '2017-08-22 13:23:15', 0),
(626, 0, 'The State', '', 85000, 3, '2361.061523', '-3798.930419', '925.423461', 7, '225.860000', '1022.369995', '1084.020019', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 627, '2017-08-22 13:23:15', 0),
(627, 0, 'The State', '', 149000, 3, '2361.643066', '-3800.014648', '925.423461', 12, '2324.469970', '-1148.810058', '1050.709960', 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 628, '2017-08-22 13:23:15', 0),
(628, 0, 'The State', '', 120000, 3, '2362.101318', '-3800.931884', '925.423461', 4, '-261.269989', '1456.569946', '1084.369995', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 629, '2017-08-22 13:23:15', 0),
(629, 0, 'The State', '', 900000, 3, '2178.360107', '-1660.181030', '14.978193', 5, '226.960006', '1114.439941', '1081.000000', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 630, '2017-08-22 13:23:15', 0),
(630, 0, 'The State', '', 176000, 3, '2362.832031', '-3801.796630', '925.423461', 5, '226.960006', '1114.439941', '1081.000000', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 631, '2017-08-22 13:23:15', 0),
(631, 0, 'The State', '', 900000, 3, '2350.177734', '-3803.526611', '931.845336', 12, '2324.469970', '-1148.810058', '1050.709960', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 632, '2017-08-22 13:23:15', 0),
(632, 0, 'The State', '', 176000, 3, '2363.737304', '-3802.716064', '925.423461', 5, '1298.731201', '-796.746520', '1084.007812', 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 633, '2017-08-22 13:23:15', 0),
(633, 0, 'The State', '', 126000, 3, '2364.306396', '-3803.763427', '925.423461', 5, '226.960006', '1114.439941', '1081.000000', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 634, '2017-08-22 13:23:15', 0),
(634, 0, 'The State', '', 137000, 3, '2365.269775', '-3804.504882', '925.423461', 3, '234.949996', '1187.910034', '1080.260009', 0, 0, 1, 0, 0, 0, 1, 0, 100, 1, 0, 635, '2017-08-22 13:23:15', 0),
(635, 0, 'The State', '', 300000, 3, '2366.223144', '-3805.558837', '925.423461', 5, '22.510000', '1404.359985', '1084.430053', 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 636, '2017-08-22 13:23:15', 0),
(636, 0, 'The State', '', 120000, 3, '2367.589355', '-3805.607666', '925.423461', 1, '-777.829467', '504.997619', '1376.592773', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 637, '2017-08-22 13:23:15', 0),
(637, 0, 'The State', '', 370000, 3, '736.688781', '-556.783813', '18.012926', 8, '2365.100097', '-1134.810058', '1050.880004', 0, 0, 1, 0, 0, 0, 1, 0, 200, 1, 0, 638, '2017-08-22 13:23:15', 0),
(638, 0, 'The State', '', 555000, 3, '1873.734863', '-2070.755371', '15.497076', 8, '2365.100097', '-1134.810058', '1050.880004', 0, 0, 0, 0, 0, 0, 1, 0, 150, 1, 0, 639, '2017-08-22 13:23:15', 0),
(639, 0, 'The State', '', 1, 3, '2361.555908', '-3804.514648', '932.125366', 1, '965.372192', '2107.695556', '1011.030273', 0, 0, 1, 0, 0, 0, 1, 0, 228, 0, 0, 640, '2017-08-22 13:23:15', 0),
(640, 0, 'The State', '', 480000, 3, '2523.271728', '-1679.369873', '15.496994', 4, '222.000000', '1141.040039', '1082.609985', 0, 0, 0, 0, 0, 0, 1, 0, 228, 1, 0, 641, '2017-08-22 13:23:15', 0),
(641, 0, 'The State', '', 1200000, 3, '835.926818', '-894.833312', '68.768898', 12, '2324.469970', '-1148.810058', '1050.709960', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 642, '2017-08-22 13:23:15', 0),
(642, 0, 'The State', '', 210000, 3, '2362.338134', '-3803.667480', '931.845336', 5, '1298.731201', '-796.746520', '1084.007812', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 643, '2017-08-22 13:23:15', 0),
(643, 0, 'The State', '', 1000, 3, '2363.117431', '-3802.851318', '931.845336', 7, '225.951324', '1024.005981', '1084.007812', 0, 0, 1, 0, 0, 0, 1, 0, 100, 1, 0, 644, '2017-08-22 13:23:15', 0),
(644, 0, 'The State', '', 1000000, 3, '1093.909912', '-806.772949', '107.419113', 2, '447.239990', '1397.750000', '1084.300048', 0, 0, 1, 0, 0, 0, 1, 0, 3, 0, 0, 645, '2017-08-22 13:23:15', 0),
(645, 0, 'The State', '', 120000, 3, '2360.546875', '-3808.323486', '931.845336', 5, '1298.731201', '-796.746520', '1084.007812', 0, 0, 1, 0, 0, 0, 1, 0, 150, 1, 0, 646, '2017-08-22 13:23:15', 0),
(646, 0, 'The State', '', 315000, 3, '2230.654541', '-1407.623901', '24.000000', 6, '2332.909912', '-1075.920043', '1049.020019', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 647, '2017-08-22 13:23:15', 0),
(647, 0, 'The State', '', 480000, 3, '2459.500000', '-1691.662719', '13.545125', 4, '222.000000', '1141.040039', '1082.609985', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 648, '2017-08-22 13:23:15', 0),
(648, 0, 'The State', '', 137000, 3, '2361.446289', '-3807.199951', '931.845336', 9, '2317.939941', '-1026.040039', '1050.219970', 0, 0, 1, 0, 0, 0, 1, 0, 100, 1, 0, 649, '2017-08-22 13:23:15', 0),
(649, 0, 'The State', '', 5000000, 3, '2361.953857', '-3806.069091', '931.845336', 8, '2365.549072', '-1133.991455', '1050.875000', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 650, '2017-08-22 13:23:15', 0),
(650, 0, 'The State', '', 25000000, 3, '2362.533447', '-3805.277099', '931.851562', 1, '1.549100', '23.318300', '1199.593750', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 651, '2017-08-22 13:23:15', 0),
(651, 0, 'The State', '', 149000, 3, '2363.155517', '-3804.346679', '931.851562', 5, '226.960006', '1114.439941', '1081.000000', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 652, '2017-08-22 13:23:15', 0),
(652, 0, 'The State', '', 1200000, 3, '1497.011352', '-688.058776', '95.563308', 12, '2324.469970', '-1148.810058', '1050.709960', 0, 0, 0, 0, 0, 0, 1, 0, 100, 1, 0, 653, '2017-08-22 13:23:15', 0),
(653, 0, 'The State', '', 180000, 3, '2228.969970', '654.356018', '11.460927', 6, '2308.679931', '-1212.239990', '1049.020019', 0, 0, 0, 0, 0, 0, 0, 0, 200, 1, 0, 654, '2017-08-22 13:23:15', 0),
(654, 0, 'The State', '', 345000, 3, '2673.271484', '-2020.291503', '14.168166', 4, '260.950012', '1285.089965', '1080.260009', 0, 0, 1, 0, 0, 0, 1, 0, 100, 1, 0, 655, '2017-08-22 13:23:15', 0),
(655, 0, 'The State', '', 280000, 3, '2178.180419', '655.989318', '11.460927', 6, '-68.830001', '1352.089965', '1080.209960', 0, 0, 1, 0, 0, 0, 0, 0, 300, 1, 0, 656, '2017-08-22 13:23:15', 0),
(656, 0, 'The State', '', 223000, 3, '2363.739013', '-3803.427490', '931.851562', 7, '225.860000', '1022.369995', '1084.020019', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 657, '2017-08-22 13:23:15', 0),
(657, 0, 'The State', '', 1, 3, '2361.002685', '-3807.606689', '931.845336', 5, '1298.731201', '-796.746520', '1084.007812', 0, 0, 1, 0, 0, 0, 1, 0, 150, 1, 0, 658, '2017-08-22 13:23:15', 0),
(658, 0, 'The State', '', 126000, 3, '2361.286132', '-3809.189697', '931.845336', 5, '1298.731201', '-796.746520', '1084.007812', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 659, '2017-08-22 13:23:15', 0),
(659, 0, 'The State', '', 176000, 3, '2361.931640', '-3808.396484', '931.845336', 6, '2195.350097', '-1204.160034', '1049.020019', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 660, '2017-08-22 13:23:15', 0),
(660, 1, 'Randy', '', 375000, 3, '2362.892578', '-1643.263061', '14.351552', 6, '-68.830001', '1352.089965', '1080.209960', 0, 0, 1, 0, 0, 0, 1, 0, 300, 0, 0, 661, '2017-08-22 13:23:15', 0),
(661, 0, 'The State', '', 155000, 3, '2362.349853', '-3807.701171', '931.845336', 5, '140.240005', '1366.800048', '1083.859985', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 662, '2017-08-22 13:23:15', 0),
(662, 0, 'The State', '', 210000, 3, '2362.949951', '-3806.834228', '931.845336', 7, '225.860000', '1022.369995', '1084.020019', 0, 0, 1, 0, 0, 0, 1, 0, 100, 1, 0, 663, '2017-08-22 13:23:15', 0),
(663, 0, 'The State', '', 155000, 3, '2363.856201', '-3806.046386', '931.845336', 5, '140.240005', '1366.800048', '1083.859985', 0, 0, 1, 0, 0, 0, 1, 0, 300, 0, 0, 664, '2017-08-22 13:23:15', 0),
(664, 0, 'The State', '', 3000000, 3, '1298.550048', '-797.986206', '84.140625', 5, '1298.731201', '-796.746520', '1084.007812', 0, 0, 0, 0, 0, 0, 1, 0, 222, 0, 0, 665, '2017-08-22 13:23:15', 0),
(665, 0, 'The State', '', 100000, 3, '-348.048522', '-1045.655029', '59.812500', 1, '244.229995', '304.940002', '999.150024', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 666, '2017-08-22 13:23:15', 0),
(666, 0, 'The State', '', 113000, 3, '2364.854736', '-3805.146484', '931.845336', 5, '1298.731201', '-796.746520', '1084.007812', 0, 0, 1, 0, 0, 0, 1, 0, 228, 0, 0, 667, '2017-08-22 13:23:15', 0),
(667, 0, 'The State', '', 126000, 3, '2362.094726', '-3809.879150', '931.845336', 9, '2317.939941', '-1026.040039', '1050.219970', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 668, '2017-08-22 13:23:15', 0),
(668, 0, 'The State', '', 85000, 3, '2363.031250', '-3809.061767', '931.845336', 5, '1260.644042', '-785.355773', '1091.906250', 0, 0, 1, 0, 0, 0, 1, 0, 300, 0, 0, 669, '2017-08-22 13:23:15', 0),
(669, 0, 'The State', '', 1, 3, '2363.635009', '-3808.383056', '931.845336', 1, '2234.036865', '1712.643920', '1011.891174', 0, 0, 0, 0, 0, 0, 1, 0, 300, 1, 0, 670, '2017-08-22 13:23:15', 0),
(670, 0, 'The State', '', 300000, 3, '1844.659057', '690.615783', '11.453125', 2, '2237.560058', '-1080.449951', '1049.020019', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 671, '2017-08-22 13:23:15', 0),
(671, 0, 'The State', '', 165000, 3, '2313.494628', '-1340.247558', '24.017250', 1, '2217.620117', '-1076.040039', '1050.479980', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 672, '2017-08-22 13:23:15', 0),
(672, 0, 'The State', '', 223000, 3, '2364.369873', '-3807.557617', '931.845336', 7, '225.860000', '1022.369995', '1084.020019', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 673, '2017-08-22 13:23:15', 0),
(673, 0, 'The State', '', 223000, 3, '2364.691406', '-3806.740234', '931.845336', 6, '2195.350097', '-1204.160034', '1049.020019', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 674, '2017-08-22 13:23:15', 0),
(674, 0, 'The State', '', 155000, 3, '2366.009765', '-3806.291015', '931.845336', 12, '2324.469970', '-1148.810058', '1050.709960', 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 675, '2017-08-22 13:23:15', 0),
(675, 0, 'The State', '', 149000, 3, '2363.375244', '-3810.680175', '931.845336', 5, '1298.731201', '-796.746520', '1084.007812', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 676, '2017-08-22 13:23:15', 0),
(676, 0, 'The State', '', 300000, 3, '2522.661865', '-2018.936645', '14.074416', 2, '2468.376953', '-1698.104980', '1013.507812', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 677, '2017-08-22 13:23:15', 0),
(677, 0, 'The State', '', 120000, 3, '2364.503906', '-3809.694335', '931.845336', 5, '226.960006', '1114.439941', '1081.000000', 0, 0, 1, 0, 0, 0, 1, 0, 100, 1, 0, 678, '2017-08-22 13:23:15', 0),
(679, 1, 'Macmilan_Price', 'id 679', 0, 3, '-2545.153808', '190.754806', '13.039052', 2, '447.239990', '1397.750000', '1084.300048', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 680, '2017-08-22 13:23:15', 0),
(678, 0, 'The State', '', 900000, 3, '808.244323', '-759.322448', '76.531364', 12, '2324.469970', '-1148.810058', '1050.709960', 0, 0, 1, 0, 0, 0, 1, 0, 300, 0, 0, 679, '2017-08-22 13:23:15', 0),
(680, 0, 'The State', '', 320000, 3, '1462.254028', '1950.435180', '11.468292', 4, '222.000000', '1141.040039', '1082.609985', 0, 0, 1, 0, 0, 0, 1, 0, 300, 0, 0, 681, '2017-08-22 13:23:15', 0),
(681, 0, 'The State', '', 525000, 3, '2129.560546', '-1361.690917', '26.136316', 6, '2196.537841', '-1204.165161', '1049.023437', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 682, '2017-08-22 13:23:15', 0),
(682, 0, 'The State', '', 165000, 3, '2635.592773', '-2012.890136', '14.144330', 2, '266.950012', '304.850006', '999.150024', 0, 0, 1, 0, 0, 0, 1, 0, 10, 0, 0, 683, '2017-08-22 13:23:15', 0),
(683, 0, 'The State', '', 20000000, 3, '2365.306884', '-3808.425292', '931.845336', 6, '756.880126', '-18.369234', '1000.585937', 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 684, '2017-08-22 13:23:15', 0),
(684, 0, 'The State', '', 223000, 3, '2365.809814', '-3807.360351', '931.845336', 5, '1260.644042', '-785.355773', '1091.906250', 0, 0, 0, 0, 0, 0, 1, 0, 300, 0, 0, 685, '2017-08-22 13:23:15', 0),
(685, 0, 'The State', '', 315000, 3, '2190.443847', '-1470.429809', '25.914062', 1, '223.089996', '1287.739990', '1082.140014', 0, 0, 1, 0, 0, 0, 1, 0, 228, 1, 0, 686, '2017-08-22 13:23:15', 0),
(686, 0, 'The State', '', 230000, 3, '1548.203613', '2125.758544', '11.460927', 4, '260.950012', '1285.089965', '1080.260009', 0, 0, 1, 0, 0, 0, 0, 0, 300, 1, 0, 687, '2017-08-22 13:23:15', 0),
(687, 0, 'The State', '', 210000, 3, '2364.571289', '-3811.558837', '931.845336', 10, '2269.080078', '-1210.729980', '1047.560058', 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 688, '2017-08-22 13:23:15', 0),
(688, 0, 'The State', '', 210000, 3, '2365.235351', '-3810.522216', '931.845336', 5, '1298.731201', '-796.746520', '1084.007812', 0, 0, 0, 0, 0, 0, 1, 0, 300, 1, 0, 689, '2017-08-22 13:23:15', 0),
(689, 0, 'The State', '', 375000, 3, '2409.014892', '-1674.838623', '14.375000', 6, '-68.830001', '1352.089965', '1080.209960', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 690, '2017-08-22 13:23:15', 0),
(690, 0, 'The State', '', 149000, 3, '2365.552734', '-3809.102294', '931.845336', 5, '1298.731201', '-796.746520', '1084.007812', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 691, '2017-08-22 13:23:15', 0),
(691, 0, 'The State', '', 10000000, 3, '2366.307128', '-3808.137207', '931.845336', 6, '234.282592', '1065.229003', '1084.210083', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 692, '2017-08-22 13:23:15', 0),
(692, 0, 'The State', '', 155000, 3, '2367.248291', '-3806.621093', '931.845336', 5, '226.960006', '1114.439941', '1081.000000', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 693, '2017-08-22 13:23:15', 0),
(693, 0, 'The State', '', 375000, 3, '2190.314697', '-1487.605468', '26.105066', 6, '-68.830001', '1352.089965', '1080.209960', 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 694, '2017-08-22 13:23:15', 0),
(694, 1, 'Randy', '', 1200000, 3, '824.549560', '-1424.204101', '14.498867', 12, '2324.469970', '-1148.810058', '1050.709960', 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 695, '2017-09-01 20:39:24', 0),
(695, 0, 'The State', '', 165000, 3, '2282.418212', '-1641.214111', '15.889780', 1, '2217.620117', '-1076.040039', '1050.479980', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 696, '2017-08-22 13:23:15', 0),
(696, 0, 'The State', '', 126000, 3, '2365.131103', '-3804.320556', '931.845336', 7, '225.860000', '1022.369995', '1084.020019', 0, 0, 1, 0, 0, 0, 1, 0, 100, 1, 0, 697, '2017-08-22 13:23:15', 0),
(697, 0, 'The State', '', 320000, 3, '1638.959960', '2076.001708', '11.312500', 4, '222.000000', '1141.040039', '1082.609985', 0, 0, 0, 0, 0, 0, 1, 0, 100, 1, 0, 698, '2017-08-22 13:23:15', 0),
(698, 0, 'The State', '', 85000, 3, '2366.633544', '-3805.224853', '931.845336', 5, '1298.731201', '-796.746520', '1084.007812', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 699, '2017-08-22 13:23:15', 0),
(699, 0, 'The State', '', 10000000, 3, '2367.633056', '-3805.492187', '931.845336', 12, '2324.469970', '-1148.810058', '1050.709960', 0, 0, 1, 0, 0, 0, 1, 0, 300, 1, 0, 700, '2017-08-22 13:23:15', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `Log_MakeAdmin`
--

CREATE TABLE IF NOT EXISTS `Log_MakeAdmin` (
  `Log` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `DateTime` datetime NOT NULL,
  KEY `Log` (`Log`,`DateTime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `Log_MakeAdmin`
--

INSERT INTO `Log_MakeAdmin` (`Log`, `DateTime`) VALUES
(' [EGS], Carlo_Corleone adlэ oyunзunu [1338] seviyyeli admin etdi', '2017-07-10 14:37:31'),
(' [EGS], Teo_Corleone adlэ oyunзunu [0] seviyyeli admin etdi', '2017-07-10 14:36:52'),
(' Blood_Hunter сделал  [BOT]Bobbi администратором 0 уровня', '2013-07-24 20:03:31'),
(' Blood_Hunter сделал  [BOT]Bobbi администратором 1338 уровня', '2013-07-24 20:02:59'),
(' Blood_Hunter сделал  Agent_Bn администратором 3 уровня', '2013-07-03 23:44:24'),
(' Blood_Hunter сделал  alinka_smalls администратором 3 уровня', '2013-07-08 10:41:35'),
(' Blood_Hunter сделал  alinka_smalls администратором 3 уровня', '2013-07-09 22:13:20'),
(' Blood_Hunter сделал  alinka_smalls администратором 5 уровня', '2013-07-09 17:31:51'),
(' Blood_Hunter сделал  Blood_Hunter администратором 1338 уровня', '2013-07-04 18:15:00'),
(' Blood_Hunter сделал  Blood_Hunter администратором 1338 уровня', '2013-07-06 18:19:12'),
(' Blood_Hunter сделал  Blood_Hunter администратором 1338 уровня', '2013-07-09 11:40:08'),
(' Blood_Hunter сделал  Blood_Hunter администратором 1338 уровня', '2013-07-16 20:32:23'),
(' Blood_Hunter сделал  Blood_Hunter администратором 1339 уровня', '2013-07-04 18:05:12'),
(' Blood_Hunter сделал  Blood_Hunter администратором 1339 уровня', '2013-07-06 18:18:33'),
(' Blood_Hunter сделал  Blood_Hunter администратором 1339 уровня', '2013-07-09 11:38:10'),
(' Blood_Hunter сделал  Blood_Hunter администратором 1339 уровня', '2013-07-16 20:31:59'),
(' Blood_Hunter сделал  Blood_Hunter администратором 1339 уровня', '2013-08-03 16:00:22'),
(' Blood_Hunter сделал  Diana_Melison администратором 5 уровня', '2013-07-06 18:40:48'),
(' Blood_Hunter сделал  El_Rami администратором 3 уровня', '2013-07-03 21:32:37'),
(' Blood_Hunter сделал  Fatal_Martinius администратором 2 уровня', '2013-07-04 18:04:38'),
(' Blood_Hunter сделал  Felix администратором 0 уровня', '2013-07-11 17:49:55'),
(' Blood_Hunter сделал  Felix администратором 1 уровня', '2013-07-11 17:50:35'),
(' Blood_Hunter сделал  Felix администратором 2 уровня', '2013-07-14 11:41:24'),
(' Blood_Hunter сделал  Felix администратором 2 уровня', '2013-07-22 12:32:29'),
(' Blood_Hunter сделал  Felix администратором 2 уровня', '2013-08-17 16:39:20'),
(' Blood_Hunter сделал  Felix администратором 5 уровня', '2013-07-21 19:51:41'),
(' Blood_Hunter сделал  Felix администратором 5 уровня', '2013-08-16 17:03:49'),
(' Blood_Hunter сделал  Joves администратором 0 уровня', '2013-07-09 14:00:54'),
(' Blood_Hunter сделал  Joves администратором 0 уровня', '2013-07-21 22:57:04'),
(' Blood_Hunter сделал  Joves администратором 1 уровня', '2013-07-03 20:58:08'),
(' Blood_Hunter сделал  Joves администратором 1 уровня', '2013-07-09 13:57:36'),
(' Blood_Hunter сделал  Joves администратором 1 уровня', '2013-07-09 14:06:23'),
(' Blood_Hunter сделал  Joves администратором 1 уровня', '2013-07-21 22:47:41'),
(' Blood_Hunter сделал  Joves администратором 2 уровня', '2013-07-09 14:09:21'),
(' Blood_Hunter сделал  Joves администратором 3 уровня', '2013-07-09 14:09:51'),
(' Blood_Hunter сделал  Joves администратором 4 уровня', '2013-07-09 14:10:06'),
(' Blood_Hunter сделал  Joves администратором 5 уровня', '2013-07-03 20:58:31'),
(' Blood_Hunter сделал  Joves администратором 5 уровня', '2013-07-09 14:10:18'),
(' Blood_Hunter сделал  Joves администратором 5 уровня', '2013-07-22 10:11:56'),
(' Blood_Hunter сделал  molino[smalls] администратором 10 уровня', '2013-07-31 18:03:15'),
(' Blood_Hunter сделал  molino[smalls] администратором 228 уровня', '2013-07-31 18:03:39'),
(' Blood_Hunter сделал  molino[smalls] администратором 3 уровня', '2013-07-31 18:05:36'),
(' Blood_Hunter сделал  molino[smalls] администратором 3 уровня', '2013-08-18 21:06:58'),
(' Blood_Hunter сделал  molino[smalls] администратором 5 уровня', '2013-08-18 19:45:45'),
(' Blood_Hunter сделал  molino[smalls] администратором 666 уровня', '2013-07-31 18:04:48'),
(' Blood_Hunter сделал  n1no администратором 0 уровня', '2013-07-11 23:31:18'),
(' Blood_Hunter сделал  n1no администратором 1 уровня', '2013-07-11 23:30:45'),
(' Blood_Hunter сделал  Nikon администратором 0 уровня', '2013-07-25 11:09:31'),
(' Blood_Hunter сделал  Nikon администратором 2 уровня', '2013-07-04 01:02:15'),
(' Blood_Hunter сделал  Nikon администратором 2 уровня', '2013-07-21 22:28:37'),
(' Blood_Hunter сделал  Nikon администратором 2 уровня', '2013-07-25 11:15:32'),
(' Blood_Hunter сделал  Nikon администратором 2 уровня', '2013-08-18 21:44:00'),
(' Blood_Hunter сделал  Nikon администратором 5 уровня', '2013-07-21 19:51:38'),
(' Blood_Hunter сделал  Nikon администратором 5 уровня', '2013-08-18 19:45:48'),
(' Blood_Hunter сделал  Piter администратором 5 уровня', '2013-07-03 20:52:33'),
(' Blood_Hunter сделал  Piter администратором 5 уровня', '2013-08-02 22:03:25'),
(' Blood_Hunter сделал  Piter администратором 5 уровня', '2013-08-06 23:24:29'),
(' Blood_Hunter сделал  Piter администратором 5 уровня', '2013-08-16 22:42:54'),
(' Blood_Hunter сделал  Piter администратором 5 уровня', '2013-08-17 16:39:17'),
(' Blood_Hunter сделал  Piter администратором 6 уровня', '2013-07-03 20:50:49'),
(' Blood_Hunter сделал  Piter администратором 6 уровня', '2013-08-02 12:45:28'),
(' Blood_Hunter сделал  Piter администратором 6 уровня', '2013-08-06 16:38:27'),
(' Blood_Hunter сделал  Piter администратором 6 уровня', '2013-08-16 17:03:45'),
(' Blood_Hunter сделал  Piter администратором 6 уровня', '2013-08-16 22:56:04'),
(' Blood_Hunter сделал  Rami администратором 0 уровня', '2013-08-02 12:42:08'),
(' Blood_Hunter сделал  Rami администратором 3 уровня', '2013-08-05 23:49:57'),
(' Blood_Hunter сделал  Taj_Badalandabad администратором 1 уровня', '2013-07-21 22:47:35'),
(' Blood_Hunter сделал  Taj_Badalandabad администратором 1 уровня', '2013-08-03 16:15:48'),
(' Blood_Hunter сделал  Taj_Badalandabad администратором 1338 уровня', '2013-07-12 11:57:46'),
(' Blood_Hunter сделал  Taj_Badalandabad администратором 228 уровня', '2013-08-03 16:21:48'),
(' Blood_Hunter сделал  Taj_Badalandabad администратором 7 уровня', '2013-07-12 12:03:57'),
(' Blood_Hunter сделал  Taj_Badalandabad администратором 7 уровня', '2013-07-21 23:08:19'),
(' Blood_Hunter сделал  Tip администратором 5 уровня', '2013-07-15 09:45:03'),
(' Blood_Hunter сделал  Vitalikdj_Max администратором 0 уровня', '2013-07-16 15:59:27'),
(' Dikey. сделал  Bid администратором 0 уровня', '2014-08-02 21:01:41'),
(' Dikey. сделал  Bradley_Obormot администратором 1 уровня', '2014-08-19 00:19:12'),
(' Dikey. сделал  Fanatik_Fanatsky администратором 4 уровня', '2014-08-18 16:07:45'),
(' Dikey. сделал  Felix администратором 1 уровня', '2014-06-21 14:20:25'),
(' Dikey. сделал  Felix администратором 1337 уровня', '2014-06-18 19:42:03'),
(' Dikey. сделал  Felix администратором 1337 уровня', '2014-06-29 23:59:10'),
(' Dikey. сделал  Felix администратором 7 уровня', '2014-06-18 19:42:04'),
(' Dikey. сделал  Felix администратором 7 уровня', '2014-06-21 14:46:18'),
(' Dikey. сделал  Fresh_Mceazzy администратором 2 уровня', '2014-08-18 23:53:22'),
(' Dikey. сделал  Gavr администратором 1337 уровня', '2014-07-02 22:11:03'),
(' Dikey. сделал  Konstantin_Kotov администратором 4 уровня', '2014-08-22 23:08:50'),
(' Dikey. сделал  Matthew_ администратором 0 уровня', '2014-08-18 19:35:43'),
(' Dikey. сделал  Mr.Fresh_McEazzy администратором 1 уровня', '2014-06-24 02:28:14'),
(' Dikey. сделал  Mr.Fresh_McEazzy администратором 1 уровня', '2014-06-25 20:24:32'),
(' Dikey. сделал  NicO администратором 1 уровня', '2014-08-20 11:52:31'),
(' Dikey. сделал  Ninho_Shooter администратором 3 уровня', '2014-08-08 23:20:33'),
(' Dikey. сделал  Ninho_Shooter администратором 3 уровня', '2014-08-16 15:35:26'),
(' Dikey. сделал  Scaramouche_Makkord администратором 4 уровня', '2014-07-01 22:38:56'),
(' Dikey. сделал  Scaramouche_Makkord администратором 5 уровня', '2014-08-02 21:09:18'),
(' Dikey. сделал  SchweinsteigeR администратором 4 уровня', '2014-08-18 23:56:41'),
(' Dikey. сделал  Stone_Obormot администратором 2 уровня', '2014-07-02 22:02:28'),
(' Dikey. сделал  stone.obormot администратором 3 уровня', '2014-08-18 23:53:18'),
(' Dikey. сделал  Win_Obormot администратором 2 уровня', '2014-08-22 22:40:17'),
(' Dikey. сделал  Win_Obormot администратором 3 уровня', '2014-08-23 00:50:13'),
(' Dikey. сделал  Win_Obormot администратором 4 уровня', '2014-08-22 22:43:57'),
(' Dikey. сделал  Win_Obormot администратором 4 уровня', '2014-08-23 00:51:07'),
(' Dikey[Makkord] сделал  Erwin_Rommel администратором 2 уровня', '2014-03-24 23:49:19'),
(' Dikey[Makkord] сделал  Felix администратором 5 уровня', '2014-03-23 00:04:52'),
(' Dikey[Makkord] сделал  Felix администратором 6 уровня', '2014-03-23 00:05:23'),
(' Dikey[Makkord] сделал  Gavr администратором 1 уровня', '2014-03-22 23:56:52'),
(' Dikey[Makkord] сделал  Gavr администратором 5 уровня', '2014-03-23 00:01:54'),
(' Jeremy ', '2013-12-06 15:20:04'),
(' Jeremy ', '2014-01-07 23:26:10'),
(' Jeremy ', '2014-01-07 23:26:14'),
(' Jeremy ', '2014-01-07 23:34:09'),
(' Jeremy ', '2014-01-07 23:38:24'),
(' Jeremy ', '2014-04-14 16:21:16'),
(' Jeremy ', '2014-04-14 16:35:54'),
(' Jeremy ', '2014-04-14 16:40:08'),
(' Jeremy ', '2014-04-14 18:24:55'),
(' Jeremy ', '2014-04-14 18:25:06'),
(' Jeremy ', '2014-04-14 18:25:25'),
(' Jeremy ', '2014-04-14 22:07:25'),
(' Jeremy ', '2014-04-14 22:07:32'),
(' Jeremy ', '2014-04-14 22:44:01'),
(' Jeremy ', '2014-04-14 22:44:03'),
(' Jeremy ', '2014-04-14 22:44:22'),
(' Jeremy сделал  [eL]Ninho администратором 0 уровня', '2013-09-21 19:38:28'),
(' Jeremy сделал  [eL]Ninho администратором 0 уровня', '2013-10-08 20:29:01'),
(' Jeremy сделал  [eL]Ninho администратором 1 уровня', '2013-09-21 23:13:00'),
(' Jeremy сделал  [eL]Ninho администратором 1 уровня', '2013-09-24 19:56:38'),
(' Jeremy сделал  [eL]Ninho администратором 3 уровня', '2013-09-21 23:13:04'),
(' Jeremy сделал  [eL]Ninho администратором 5 уровня', '2013-09-21 19:38:30'),
(' Jeremy сделал  Alejandro_OboRmot администратором 1 уровня', '2014-04-01 22:55:22'),
(' Jeremy сделал  AlejandRo[OboRmot] администратором 0 уровня', '2014-04-25 18:30:41'),
(' Jeremy сделал  Bid администратором 6 уровня', '2014-02-12 23:31:16'),
(' Jeremy сделал  Bid администратором 6 уровня', '2014-04-24 22:37:34'),
(' Jeremy сделал  Bid_Cappone администратором 5 уровня', '2013-12-12 16:26:56'),
(' Jeremy сделал  CapitanCat администратором 1 уровня', '2014-03-14 19:51:10'),
(' Jeremy сделал  Dre_Nillson администратором 2 уровня', '2014-02-28 22:21:41'),
(' Jeremy сделал  Dre_Nillson администратором 4 уровня', '2014-04-25 23:32:49'),
(' Jeremy сделал  Dre_Nillson администратором 5 уровня', '2014-06-05 19:52:20'),
(' Jeremy сделал  Dre_Shooter администратором 1 уровня', '2014-02-04 22:40:31'),
(' Jeremy сделал  Erwin_Rommel администратором 0 уровня', '2014-02-15 22:31:18'),
(' Jeremy сделал  Erwin_Rommel администратором 12 уровня', '2014-02-15 22:31:13'),
(' Jeremy сделал  Fanatik_Martinezzz администратором 1 уровня', '2013-09-11 22:07:18'),
(' Jeremy сделал  Fanatsky администратором 2 уровня', '2013-11-08 22:51:25'),
(' Jeremy сделал  Fatal_Martinius администратором 5 уровня', '2013-10-27 00:51:39'),
(' Jeremy сделал  FeIixx администратором 3 уровня', '2013-10-08 17:04:20'),
(' Jeremy сделал  FeIixx администратором 5 уровня', '2013-10-08 17:04:44'),
(' Jeremy сделал  Felix администратором 1337 уровня', '2013-12-31 02:50:46'),
(' Jeremy сделал  Felix администратором 3 уровня', '2013-08-27 01:27:54'),
(' Jeremy сделал  Felix администратором 3 уровня', '2013-08-31 00:38:20'),
(' Jeremy сделал  Felix администратором 3 уровня', '2013-09-12 22:18:51'),
(' Jeremy сделал  Felix администратором 3 уровня', '2013-09-12 23:26:36'),
(' Jeremy сделал  Felix администратором 3 уровня', '2013-09-24 19:56:42'),
(' Jeremy сделал  Felix администратором 3 уровня', '2013-09-30 15:17:28'),
(' Jeremy сделал  Felix администратором 3 уровня', '2013-10-14 17:30:16'),
(' Jeremy сделал  Felix администратором 3 уровня', '2013-10-21 16:02:06'),
(' Jeremy сделал  Felix администратором 4 уровня', '2013-10-15 23:16:54'),
(' Jeremy сделал  Felix администратором 4 уровня', '2013-10-21 16:02:08'),
(' Jeremy сделал  Felix администратором 4 уровня', '2013-11-12 22:55:54'),
(' Jeremy сделал  Felix администратором 4 уровня', '2013-11-15 16:28:42'),
(' Jeremy сделал  Felix администратором 5 уровня', '2013-08-28 13:33:40'),
(' Jeremy сделал  Felix администратором 5 уровня', '2013-09-12 17:20:26'),
(' Jeremy сделал  Felix администратором 5 уровня', '2013-09-12 22:19:06'),
(' Jeremy сделал  Felix администратором 5 уровня', '2013-09-21 19:37:29'),
(' Jeremy сделал  Felix администратором 5 уровня', '2013-09-27 22:36:45'),
(' Jeremy сделал  Felix администратором 5 уровня', '2013-10-05 19:32:48'),
(' Jeremy сделал  Felix администратором 5 уровня', '2013-10-12 19:27:49'),
(' Jeremy сделал  Felix администратором 5 уровня', '2013-10-19 19:36:55'),
(' Jeremy сделал  Felix администратором 5 уровня', '2013-10-28 16:46:24'),
(' Jeremy сделал  Felix администратором 5 уровня', '2013-11-13 17:42:11'),
(' Jeremy сделал  Felix администратором 5 уровня', '2013-11-16 14:22:13'),
(' Jeremy сделал  Felix администратором 5 уровня', '2014-01-04 00:50:11'),
(' Jeremy сделал  Felix администратором 6 уровня', '2013-09-28 16:15:06'),
(' Jeremy сделал  Felix администратором 6 уровня', '2014-03-13 23:09:51'),
(' Jeremy сделал  Felix администратором 7 уровня', '2014-05-08 22:27:48'),
(' Jeremy сделал  Flekso. администратором 2 уровня', '2014-03-09 17:23:13'),
(' Jeremy сделал  Gavr администратором 1337 уровня', '2014-05-01 15:44:36'),
(' Jeremy сделал  Gavr администратором 2 уровня', '2013-09-17 22:19:58'),
(' Jeremy сделал  Gavr администратором 2 уровня', '2013-09-27 19:02:23'),
(' Jeremy сделал  Gavr администратором 2 уровня', '2013-09-30 19:44:04'),
(' Jeremy сделал  Gavr администратором 2 уровня', '2013-10-19 19:36:51'),
(' Jeremy сделал  Gavr администратором 2 уровня', '2013-10-21 16:02:02'),
(' Jeremy сделал  Gavr администратором 3 уровня', '2013-11-03 20:11:17'),
(' Jeremy сделал  Gavr администратором 3 уровня', '2013-12-12 16:21:08'),
(' Jeremy сделал  Gavr администратором 3 уровня', '2014-01-07 23:04:09'),
(' Jeremy сделал  Gavr администратором 4 уровня', '2013-09-30 19:29:12'),
(' Jeremy сделал  Gavr администратором 4 уровня', '2014-02-16 22:40:05'),
(' Jeremy сделал  Gavr администратором 5 уровня', '2013-10-18 20:53:24'),
(' Jeremy сделал  Gavr администратором 5 уровня', '2013-10-19 19:37:36'),
(' Jeremy сделал  Gavr администратором 5 уровня', '2013-12-09 23:01:26'),
(' Jeremy сделал  Gavr администратором 5 уровня', '2014-01-04 00:53:52'),
(' Jeremy сделал  Gavr администратором 5 уровня', '2014-02-28 21:54:18'),
(' Jeremy сделал  Gavr администратором 7 уровня', '2014-02-16 22:36:15'),
(' Jeremy сделал  Gavr администратором 7 уровня', '2014-05-05 21:01:26'),
(' Jeremy сделал  Gavr_Infinity администратором 0 уровня', '2013-08-19 20:03:36'),
(' Jeremy сделал  Gavr_Infinity администратором 1 уровня', '2013-08-19 20:03:38'),
(' Jeremy сделал  Gavr_Infinity администратором 1 уровня', '2013-08-30 22:10:54'),
(' Jeremy сделал  Gavr_Infinity администратором 1 уровня', '2013-08-30 22:46:33'),
(' Jeremy сделал  Gavr_Infinity администратором 2 уровня', '2013-08-30 22:45:15'),
(' Jeremy сделал  Gavr_Infinity администратором 5 уровня', '2013-08-28 13:14:58'),
(' Jeremy сделал  hS9W администратором 3 уровня', '2014-04-25 23:32:53'),
(' Jeremy сделал  Jeremy администратором 1339 уровня', '2013-08-21 00:55:02'),
(' Jeremy сделал  Jeremy администратором 1339 уровня', '2013-09-09 22:00:34'),
(' Jeremy сделал  Jeremy администратором 1339 уровня', '2013-12-09 21:16:42'),
(' Jeremy сделал  Jeremy администратором 2 уровня', '2013-09-05 21:54:42'),
(' Jeremy сделал  Koifman администратором 3 уровня', '2013-08-30 22:45:09'),
(' Jeremy сделал  Koifman администратором 4 уровня', '2013-08-30 16:35:22'),
(' Jeremy сделал  Koifman администратором 4 уровня', '2013-09-09 21:18:29'),
(' Jeremy сделал  Margont администратором 3 уровня', '2013-10-08 18:22:42'),
(' Jeremy сделал  Master_Jay администратором 0 уровня', '2013-09-27 21:05:59'),
(' Jeremy сделал  Master_Jay администратором 0 уровня', '2013-09-27 21:06:18'),
(' Jeremy сделал  Mattxx администратором 2 уровня', '2013-11-25 20:06:35'),
(' Jeremy сделал  Mattxx_Shooter администратором 1 уровня', '2013-10-11 21:09:22'),
(' Jeremy сделал  molino администратором 4 уровня', '2013-08-31 00:09:50'),
(' Jeremy сделал  molino администратором 5 уровня', '2013-08-28 13:33:08'),
(' Jeremy сделал  Nikon администратором 3 уровня', '2013-08-28 17:15:33'),
(' Jeremy сделал  Nikon администратором 3 уровня', '2013-09-24 19:56:51'),
(' Jeremy сделал  Nikon администратором 3 уровня', '2013-09-30 16:40:15'),
(' Jeremy сделал  Nikon администратором 4 уровня', '2013-11-04 14:33:08'),
(' Jeremy сделал  Nikon администратором 5 уровня', '2013-09-27 23:27:28'),
(' Jeremy сделал  Nikon администратором 5 уровня', '2013-10-28 16:51:07'),
(' Jeremy сделал  Nikon администратором 5 уровня', '2014-01-07 23:06:54'),
(' Jeremy сделал  Nikon администратором 5 уровня', '2014-05-18 23:35:32'),
(' Jeremy сделал  Nikon_Obopmot администратором 6 уровня', '2014-06-05 19:52:03'),
(' Jeremy сделал  NinO администратором 1 уровня', '2013-09-02 21:26:54'),
(' Jeremy сделал  NinO администратором 2 уровня', '2013-09-02 21:26:22'),
(' Jeremy сделал  Nino_NinoNino администратором 1 уровня', '2013-08-21 13:53:04'),
(' Jeremy сделал  o_o администратором 4 уровня', '2013-08-28 00:21:23'),
(' Jeremy сделал  Piter администратором 0 уровня', '2014-01-02 19:25:37'),
(' Jeremy сделал  Piter администратором 0 уровня', '2014-05-08 22:16:04'),
(' Jeremy сделал  Piter администратором 1 уровня', '2014-01-02 18:51:11'),
(' Jeremy сделал  Piter администратором 1 уровня', '2014-01-02 19:25:51'),
(' Jeremy сделал  Piter администратором 1 уровня', '2014-02-09 23:05:41'),
(' Jeremy сделал  Piter администратором 1 уровня', '2014-02-27 23:27:17'),
(' Jeremy сделал  Piter администратором 1 уровня', '2014-04-15 23:21:44'),
(' Jeremy сделал  Piter администратором 1337 уровня', '2013-09-29 23:46:07'),
(' Jeremy сделал  Piter администратором 2 уровня', '2014-04-25 23:24:54'),
(' Jeremy сделал  Piter администратором 5 уровня', '2013-08-23 01:39:04'),
(' Jeremy сделал  Piter администратором 5 уровня', '2013-10-26 23:22:32'),
(' Jeremy сделал  Piter администратором 6 уровня', '2013-08-22 22:39:40'),
(' Jeremy сделал  Piter администратором 6 уровня', '2013-08-31 00:39:05'),
(' Jeremy сделал  Piter администратором 6 уровня', '2013-09-30 16:53:57'),
(' Jeremy сделал  Piter администратором 6 уровня', '2013-10-26 23:27:00'),
(' Jeremy сделал  Piter администратором 6 уровня', '2014-01-02 21:41:39'),
(' Jeremy сделал  Piter администратором 6 уровня', '2014-02-09 23:06:29'),
(' Jeremy сделал  Piter администратором 6 уровня', '2014-03-10 02:02:21'),
(' Jeremy сделал  Piter администратором 7 уровня', '2014-02-16 22:57:31'),
(' Jeremy сделал  Piter администратором 7 уровня', '2014-02-27 23:46:09'),
(' Jeremy сделал  Piter администратором 7 уровня', '2014-03-10 02:03:18'),
(' Jeremy сделал  Piter администратором 7 уровня', '2014-04-15 23:21:48'),
(' Jeremy сделал  Piter администратором 7 уровня', '2014-04-25 23:41:16'),
(' Jeremy сделал  Rami администратором 0 уровня', '2013-09-17 22:44:14'),
(' Jeremy сделал  Rami администратором 3 уровня', '2013-09-16 23:10:50'),
(' Jeremy сделал  Roy_ShoOter администратором 1 уровня', '2014-04-15 23:43:03'),
(' Jeremy сделал  Saimon_Oo администратором 1 уровня', '2013-09-21 23:13:24'),
(' Jeremy сделал  Saimon_Oo администратором 1338 уровня', '2013-09-21 23:13:39'),
(' Jeremy сделал  Scaramouche_Barfly администратором 1 уровня', '2014-04-26 15:10:44'),
(' Jeremy сделал  Scaramouche_Barfly администратором 2 уровня', '2014-05-08 23:14:00'),
(' Jeremy сделал  Scaramouche_Mauser администратором 3 уровня', '2014-05-23 22:22:09'),
(' Jeremy сделал  SchweinsteigeR администратором 1 уровня', '2013-11-29 22:27:43'),
(' Jeremy сделал  SchweinsteigeR администратором 1 уровня', '2014-01-26 01:58:30'),
(' Jeremy сделал  SchweinsteigeR администратором 2 уровня', '2013-12-29 13:48:05'),
(' Jeremy сделал  SchweinsteigeR администратором 2 уровня', '2014-02-12 22:35:16'),
(' Jeremy сделал  SchweinsteigeR администратором 3 уровня', '2014-04-01 23:10:52'),
(' Jeremy сделал  Still_ObOrmot администратором 1 уровня', '2013-11-29 22:27:41'),
(' Jeremy сделал  Still. администратором 1 уровня', '2014-02-27 23:34:35'),
(' Jeremy сделал  Still. администратором 1 уровня', '2014-03-10 02:03:20'),
(' Jeremy сделал  Still. администратором 2 уровня', '2013-12-29 13:47:58'),
(' Jeremy сделал  Still. администратором 2 уровня', '2014-02-27 23:46:12'),
(' Jeremy сделал  Still. администратором 2 уровня', '2014-03-10 02:57:07'),
(' Jeremy сделал  Still. администратором 3 уровня', '2014-03-10 02:57:24'),
(' Jeremy сделал  Still[Obormot] администратором 0 уровня', '2014-05-20 22:52:41'),
(' Jeremy сделал  Still[Obormot] администратором 4 уровня', '2014-05-05 23:18:37'),
(' Jeremy сделал  Stone_Obormott администратором 1 уровня', '2014-06-09 16:39:30'),
(' Jeremy сделал  Thomas_Jefferson администратором 0 уровня', '2013-12-16 19:41:53'),
(' Jeremy сделал  Thomas_Jefferson администратором 5 уровня', '2013-10-11 20:13:32'),
(' Jeremy сделал  Tony_Kastt администратором 0 уровня', '2013-09-10 02:57:28'),
(' Jeremy сделал  Tony_Kastt администратором 1 уровня', '2013-09-10 02:57:19'),
(' Jeremy сделал  Tony_Kastt администратором 7 уровня', '2013-09-10 02:57:25'),
(' Jeremy сделал  WiN администратором 1 уровня', '2014-04-26 16:05:27'),
(' Jeremy сделал  Win_Obormot администратором 3 уровня', '2014-05-29 18:38:21'),
(' Jeremy сделал  WiN[Obormot] администратором 2 уровня', '2014-05-08 23:13:54'),
(' KOTMEOW сделал  Dre_Nillson администратором 3 уровня', '2014-03-28 02:22:41'),
(' KOTMEOW сделал  Nikon администратором 0 уровня', '2014-03-29 20:25:04'),
(' m1x сделал  alinka_smalls администратором 3 уровня', '2013-06-16 20:08:07'),
(' m1x сделал  Bid_Cappone администратором 0 уровня', '2013-06-19 15:26:41'),
(' m1x сделал  Blood_Hunter администратором 2 уровня', '2013-06-16 20:07:43'),
(' m1x сделал  Blood_Hunter администратором 6 уровня', '2013-06-19 13:02:45'),
(' m1x сделал  Boo_Nigga администратором 2 уровня', '2013-06-09 23:08:21'),
(' m1x сделал  Felix..Moretti администратором 1 уровня', '2013-06-19 13:10:23'),
(' m1x сделал  Heanly_Kneisy администратором 1 уровня', '2013-06-16 20:30:28'),
(' m1x сделал  Jeremy администратором 1 уровня', '2013-08-23 22:11:07'),
(' m1x сделал  Jeremy администратором 1337 уровня', '2013-06-09 22:57:36'),
(' m1x сделал  Jeremy администратором 1339 уровня', '2013-08-23 22:11:21'),
(' m1x сделал  m1x администратором 1339 уровня', '2013-06-09 12:50:41'),
(' m1x сделал  Piter администратором 5 уровня', '2013-06-19 13:03:19'),
(' m1x сделал  Thomas_Jefferson администратором 4 уровня', '2013-06-09 22:56:38'),
(' m1x сделал  Tip администратором 4 уровня', '2013-06-10 11:40:11'),
(' m1x сделал  Vitalikdj_Max администратором 1 уровня', '2013-06-19 13:08:25'),
(' Macmilan_Price, [BOT]Train adlэ oyunзunu [1] seviyyeli admin etdi', '2017-06-20 15:44:37'),
(' Macmilan_Price, [BOT]Train adlэ oyunзunu [3] seviyyeli admin etdi', '2017-06-20 15:44:23'),
(' Macmilan_Price, Macmilan_Price adlэ oyunзunu [1] seviyyeli admin etdi', '2017-06-19 13:37:22'),
(' Macmilan_Price, Macmilan_Price adlэ oyunзunu [1338] seviyyeli admin etdi', '2017-05-14 17:21:43'),
(' Macmilan_Price, Randy adlЊ oyunЂunu [1339] sЏviyyЏli admin etdi', '2017-08-17 15:45:53'),
(' Macmilan_Price, Randy_Cappone adlэ oyunзunu [1339] seviyyeli admin etdi', '2017-05-07 19:20:14'),
(' Macmilan_Price, Teo_Corleone adlэ oyunзunu [1337] seviyyeli admin etdi', '2017-07-10 14:44:34'),
(' Markus ', '2013-12-06 15:23:44'),
(' Markus ', '2013-12-06 15:24:11'),
(' Markus сделал  alinka_smalls администратором 0 уровня', '2013-07-08 00:26:19'),
(' Markus сделал  alinka_smalls администратором 1 уровня', '2013-07-08 00:26:26'),
(' Markus сделал  Blood_Hunter администратором 0 уровня', '2013-08-19 15:47:43'),
(' Markus сделал  Blood_Hunter администратором 1338 уровня', '2013-07-03 17:58:43'),
(' Markus сделал  Dron_Eazzy администратором 0 уровня', '2013-07-10 23:47:58'),
(' Markus сделал  Dron_Eazzy администратором 1 уровня', '2013-07-10 23:39:30'),
(' Markus сделал  Jeremy администратором 1338 уровня', '2013-09-09 15:59:34'),
(' Markus сделал  Jeremy_Makkord администратором 1338 уровня', '2013-08-19 15:58:31'),
(' Markus сделал  Markus администратором 0 уровня', '2013-07-08 00:53:23'),
(' Merkurial сделал  [eL]Ninho администратором 5 уровня', '2013-09-22 12:15:37'),
(' Merkurial сделал  Felix администратором 5 уровня', '2013-09-22 12:15:33'),
(' Merkurial сделал  Gavr администратором 5 уровня', '2013-09-22 12:28:10'),
(' Merkurial сделал  Nikon администратором 5 уровня', '2013-09-22 12:15:41'),
(' Niggeri_Lalki сделал  Flekso_Skillz администратором 1 уровня', '2014-02-28 21:34:57'),
(' Raikonen.N сделал  Bid_Cappone администратором 0 уровня', '2013-05-07 16:20:44'),
(' Raikonen.N сделал  Bid_Cappone администратором 1 уровня', '2013-05-14 18:39:00'),
(' Raikonen.N сделал  Bid_Cappone администратором 4 уровня', '2013-05-07 16:24:38'),
(' Raikonen.N сделал  Bid_Cappone администратором 4 уровня', '2013-05-14 18:52:08'),
(' Raikonen.N сделал  Jay администратором 5 уровня', '2013-05-22 21:27:08'),
(' Raikonen.N сделал  Jeremy администратором 0 уровня', '2013-04-27 22:26:34'),
(' Raikonen.N сделал  Jeremy администратором 5 уровня', '2013-03-27 00:51:47'),
(' Raikonen.N сделал  Jeremy администратором 5 уровня', '2013-04-27 22:30:02'),
(' Raikonen.N сделал  Kenny администратором 0 уровня', '2013-04-29 21:32:51'),
(' Raikonen.N сделал  Kenny администратором 3 уровня', '2013-04-27 22:29:25'),
(' Raikonen.N сделал  Markus администратором 1 уровня', '2013-05-23 17:06:53'),
(' Raikonen.N сделал  Markus администратором 1338 уровня', '2013-05-23 17:07:22'),
(' Raikonen.N сделал  Nikon_Smalls администратором 1 уровня', '2013-05-14 18:16:07'),
(' Raikonen.N сделал  Piter администратором 4 уровня', '2013-05-21 18:40:54'),
(' Raikonen.N сделал  Piter. администратором 3 уровня', '2013-03-25 20:51:10'),
(' Raikonen.N сделал  Raikonen.N администратором 1339 уровня', '2013-03-29 00:22:34'),
(' Raikonen.N сделал  Rami администратором 2 уровня', '2013-05-24 23:37:41'),
(' Raikonen.N сделал  Rami.aka.Miami администратором 0 уровня', '2013-04-20 01:52:58'),
(' Raikonen.N сделал  Rami.aka.Miami администратором 1 уровня', '2013-04-20 01:52:56'),
(' Raikonen.N сделал  Rami.aka.Miami администратором 1 уровня', '2013-04-20 01:53:34'),
(' Raikonen.N сделал  Rami[Moretti] администратором 0 уровня', '2013-04-21 02:20:53'),
(' Raikonen.N сделал  Rami[Moretti] администратором 1 уровня', '2013-04-21 02:58:43'),
(' Raikonen.N сделал  Ramires_Moretti администратором 1 уровня', '2013-03-27 00:46:04'),
(' Raikonen.N сделал  Tip администратором 0 уровня', '2013-04-27 22:44:35'),
(' Raikonen.N сделал  Tip администратором 3 уровня', '2013-04-27 23:03:08'),
(' Raikonen.N сделал  Tolik_Kolxoznik администратором 0 уровня', '2013-05-12 13:40:55'),
(' Raikonen.N сделал  Tolik_Kolxoznik администратором 1 уровня', '2013-05-12 13:40:54'),
(' Raikonen.N сделал  Torwald_Olafsen администратором 0 уровня', '2013-05-06 16:23:00'),
(' Raikonen.N сделал  Torwald_Olafsen администратором 4 уровня', '2013-05-19 22:11:08'),
(' Raikonen.N сделал  Vad_Moretti администратором 0 уровня', '2013-03-27 00:29:14'),
(' Randy_Cappone, Randy_Cappone adlэ oyunзunu [1338] seviyyeli admin etdi', '2017-05-08 17:44:41'),
(' Randy_Cappone, Randy_Cappone adlэ oyunзunu [1339] seviyyeli admin etdi', '2017-05-08 18:25:35'),
(' Randy_Cappone, Randy_Cappone adlэ oyunзunu [5] seviyyeli admin etdi', '2017-05-07 19:16:13'),
(' Randy, Amon adlЊ oyunЂunu [1338] sЏviyyЏli admin etdi', '2017-08-17 13:48:14'),
(' Randy, Corleone adlэ oyunзunu [0] seviyyeli admin etdi', '2017-05-06 23:47:57'),
(' Randy, Corleone adlэ oyunзunu [0] seviyyeli admin etdi', '2017-05-06 23:47:58'),
(' Randy, Davide_Corleone adlЊ oyunЂunu [1339] sЏviyyЏli admin etdi', '2017-08-17 13:55:07'),
(' Randy, Davide_Corleone adlэ oyunзunu [1339] seviyyeli admin etdi', '2017-05-06 15:59:33'),
(' Randy, Killer_Mike adlЊ oyunЂunu [1339] sЏviyyЏli admin etdi', '2017-08-19 13:34:39'),
(' Randy, Macmilan_Price adlЊ oyunЂunu [1339] sЏviyyЏli admin etdi', '2017-08-17 13:47:26'),
(' Randy, Montana_Corleone adlэ oyunзunu [0] seviyyeli admin etdi', '2017-06-17 13:17:45'),
(' Randy, Montana_Corleone adlэ oyunзunu [1338] seviyyeli admin etdi', '2017-06-17 12:54:42'),
(' Randy, Montana_Corleone adlэ oyunзunu [1339] seviyyeli admin etdi', '2017-05-06 23:36:10'),
(' Randy, Randy adlЊ oyunЂunu [0] sЏviyyЏli admin etdi', '2017-08-17 15:44:24'),
(' Randy, Randy adlэ oyunзunu [1338] seviyyeli admin etdi', '2017-02-05 23:06:49'),
(' Randy, Randy adlэ oyunзunu [1338] seviyyeli admin etdi', '2017-05-09 09:42:58'),
(' Randy, Randy adlэ oyunзunu [1339] seviyyeli admin etdi', '2017-02-05 23:08:27'),
(' Randy, Randy adlэ oyunзunu [8] seviyyeli admin etdi', '2017-06-17 13:18:06'),
(' Roudzy_Jones сделал  Aspx_Shooter администратором 1337 уровня', '2014-11-13 02:23:39'),
(' Roudzy_Jones сделал  NicO администратором 0 уровня', '2014-08-28 01:11:04'),
(' Roudzy_Jones сделал  NicO администратором 1 уровня', '2014-08-28 01:10:42'),
(' Roudzy_Jones сделал  Roudzy_Jones администратором 1338 уровня', '2014-11-13 02:37:43'),
(' Roudzy_Jones сделал  Roudzy_Jones администратором 1339 уровня', '2014-08-27 23:45:57'),
(' Saimon_Oo сделал  [eL]Ninho администратором 1 уровня', '2013-09-21 23:17:09'),
(' Saimon_Oo сделал  Felix администратором 3 уровня', '2013-09-21 23:17:13'),
(' SliK сделал  Jeremy_Shooter администратором 1338 уровня', '2014-11-13 13:55:44'),
(' SliK сделал  SliK администратором 0 уровня', '2014-11-13 14:11:59'),
(' SliK сделал  SliK администратором 1338 уровня', '2013-08-29 04:08:29'),
(' SliK сделал  SliK администратором 1339 уровня', '2013-08-29 04:07:04'),
(' Stepan_Arveladze сделал  Aspx_Shooter администратором 10 уровня', '2014-11-12 21:53:56'),
(' Stepan_Arveladze сделал  Aspx_Shooter администратором 10 уровня', '2014-11-12 22:52:35'),
(' Stepan_Arveladze сделал  Bradley_Obormot администратором 10 уровня', '2014-11-12 22:52:00'),
(' Stepan_Arveladze сделал  Felix администратором 10 уровня', '2014-11-12 21:53:53'),
(' Teo_Corleone, Tesla adlэ oyunзunu [1339] seviyyeli admin etdi', '2017-07-27 14:37:00'),
(' Tesla, Tesla adlэ oyunзunu [1338] seviyyeli admin etdi', '2017-07-28 02:48:44'),
(' VitQ сделал  alinka[smalls] администратором 2 уровня', '2013-03-24 02:45:37'),
(' VitQ сделал  Tip администратором 3 уровня', '2013-03-17 01:15:19'),
(' VitQ сделал  Tip администратором 6 уровня', '2013-03-17 01:14:36'),
(' VitQ сделал  VitQ администратором 1338 уровня', '2013-03-22 19:52:29');

-- --------------------------------------------------------

--
-- Структура таблицы `Log_Unban`
--

CREATE TABLE IF NOT EXISTS `Log_Unban` (
  `Log` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `DateTime` datetime NOT NULL,
  KEY `log_datetime` (`Log`,`DateTime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `Other`
--

CREATE TABLE IF NOT EXISTS `Other` (
  `Tax` int(5) NOT NULL,
  `TaxValue` int(12) NOT NULL,
  `MatsAmmount` int(6) NOT NULL,
  `DrugsPritonAmmount` int(6) NOT NULL,
  `DrugsFarmAmmount` int(6) NOT NULL,
  `Password` int(12) NOT NULL,
  `LitersSperm` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `TotalProds` int(7) NOT NULL,
  `Totaloil` int(11) NOT NULL,
  `DumpLoad` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `Other`
--

INSERT INTO `Other` (`Tax`, `TaxValue`, `MatsAmmount`, `DrugsPritonAmmount`, `DrugsFarmAmmount`, `Password`, `LitersSperm`, `TotalProds`, `Totaloil`, `DumpLoad`) VALUES
(0, 0, 500, 0, 0, 0, '5096.114257', 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `SBizzes`
--

CREATE TABLE IF NOT EXISTS `SBizzes` (
  `id` int(6) NOT NULL,
  `Owned` int(6) NOT NULL,
  `Owner` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Discription` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Extortion` int(5) NOT NULL DEFAULT '0',
  `EntranceX` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `EntranceY` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `EntranceZ` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `Level` int(6) NOT NULL,
  `Price` int(6) NOT NULL,
  `EntranceCost` int(6) NOT NULL,
  `Products` int(6) NOT NULL,
  `MaxProducts` int(6) NOT NULL,
  `Lock` int(12) NOT NULL,
  `Money` int(6) NOT NULL,
  `PriceProd` int(24) NOT NULL,
  `DonatePrice` int(16) NOT NULL,
  `Procent` int(4) NOT NULL DEFAULT '10',
  `LastVisit` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `SBizzes`
--

INSERT INTO `SBizzes` (`id`, `Owned`, `Owner`, `Discription`, `Extortion`, `EntranceX`, `EntranceY`, `EntranceZ`, `Level`, `Price`, `EntranceCost`, `Products`, `MaxProducts`, `Lock`, `Money`, `PriceProd`, `DonatePrice`, `Procent`, `LastVisit`) VALUES
(26, 0, 'The State', '', 0, '72.860534', '1215.523559', '19.125000', 5, 50000, 16, 10000, 10000, 0, 0, 12, 0, 0, '2015-07-05 03:53:34'),
(25, 0, 'The State', '', 0, '-1320.147094', '2698.125488', '50.266281', 5, 1, 13, 9650, 10000, 0, 0, 9, 0, 0, '2015-06-19 18:08:44'),
(24, 0, 'The State', '', 0, '638.701171', '1683.646484', '7.187500', 5, 1, 13, 9642, 10000, 0, 0, 10, 0, 0, '2015-07-12 03:25:25'),
(23, 0, 'The State', '', 0, '2188.164306', '2469.788818', '11.242177', 10, 3000000, 13, 9083, 10000, 0, 0, 9, 0, 0, '2015-07-05 02:27:13'),
(22, 0, 'The State', '', 0, '-1675.781494', '431.934722', '7.179687', 5, 3000000, 16, 9980, 10000, 0, 0, 9, 0, 0, '2015-05-12 20:19:39'),
(21, 0, 'The State', '', 0, '-2247.397216', '-2559.368164', '31.921875', 5, 3000000, 16, 9799, 10000, 0, 0, 9, 0, 0, '2015-04-22 10:09:19'),
(20, 0, 'The State', '', 0, '-2419.375488', '969.778625', '45.296875', 5, 50000, 16, 8875, 10000, 0, 1225, 9, 0, 0, '2015-04-25 20:16:35'),
(19, 0, 'The State', '', 0, '-2034.437133', '148.562377', '28.835937', 5, 5, 16, 9307, 10000, 0, 0, 12, 0, 0, '2015-08-09 12:09:28'),
(18, 0, 'The State', '', 0, '-1623.797973', '-2693.560058', '48.742660', 5, 3000000, 16, 9450, 10000, 0, 419, 10, 0, 1, '2015-02-07 20:29:45'),
(17, 0, 'The State', '', 0, '-78.800636', '-1169.736816', '2.146610', 5, 5, 16, 8841, 10000, 0, 0, 12, 0, 0, '2015-09-02 16:28:29'),
(16, 0, 'The State', 'Sat', 0, '1941.673706', '-1780.989501', '13.640625', 5, 3000000, 16, 7450, 10000, 0, 0, 9, 0, 0, '2015-10-08 20:16:02'),
(15, 0, 'The State', 'Sat', 0, '995.769775', '-937.886718', '42.328125', 5, 3000000, 16, 6648, 10000, 0, 0, 9, 0, 0, '2015-09-30 17:19:00'),
(14, 0, 'The State', 'Sat', 0, '1077.185302', '-1562.760009', '13.539066', 5, 33, 5000, 100, 100, 0, 36, 6, 0, 0, '2015-10-07 18:28:27'),
(13, 0, 'The State', '', 0, '-2288.191894', '-79.674499', '35.320301', 5, 1, 5000, 263, 500, 0, 12, 100, 0, 0, '2015-08-15 03:11:18'),
(12, 0, 'The State', '', 0, '-1810.427490', '902.319213', '24.890600', 5, 100000, 3999, 100, 100, 0, 171, 6, 0, 1, '2015-04-05 18:21:09'),
(11, 0, 'The State', 'Sat', 0, '2281.909179', '-2364.279052', '13.546895', 5, 100000, 3333, 35, 100, 0, 0, 6, 0, 0, '2015-10-07 18:27:17'),
(10, 0, 'The State', 'Sat', 0, '1310.126586', '-1367.812255', '13.540800', 5, 10000, 200, 20, 100, 0, 0, 6, 0, 50, '2015-10-10 12:11:33'),
(9, 0, 'The State', 'Sat', 0, '1205.971557', '-1459.673706', '13.385993', 5, 100000, 5000, 100, 100, 0, 16955, 100, 0, 0, '2015-10-12 18:29:38'),
(8, 0, 'The State', 'Sat', 0, '2510.600097', '-1468.199951', '24.023899', 5, 100000, 200, 0, 500, 0, 0, 6, 0, 0, '2015-10-03 01:06:03'),
(7, 0, 'The State', 'Sat', 0, '844.656005', '-1045.555664', '25.430099', 5, 100000, 5000, 100, 100, 0, 1613, 100, 0, 0, '2015-09-25 14:23:19'),
(6, 0, 'The State', 'Sat', 0, '2350.000000', '-1411.800048', '23.992300', 5, 1, 5000, -1657, 100, 0, 0, 6, 0, 0, '2015-10-10 22:00:09'),
(5, 0, 'The State', 'Sat', 0, '1702.400024', '-1471.300048', '13.546895', 5, 100000, 5000, 100, 100, 0, 934, 100, 0, 0, '2015-10-04 09:55:50'),
(4, 0, 'The State', 'Sat', 0, '-2520.990478', '-623.980285', '132.781204', 10, 1, 5000, 100, 100, 0, 0, 6, 0, 0, '2015-10-02 22:46:39'),
(3, 0, 'The State', '', 0, '-1051.114135', '-687.727172', '32.351600', 5, 100000, 1, 2122, 5000, 0, 0, 8, 0, 0, '2015-08-29 12:10:55'),
(2, 0, 'The State', 'Sat', 0, '1327.106323', '-1558.948852', '13.539649', 5, 1, 5000, 100, 100, 0, 0, 6, 0, 0, '2015-10-11 21:58:44'),
(0, 0, 'The State', '', 0, '562.405029', '-1289.995483', '17.248199', 5, 1, 123, 457, 500, 0, 345, 6, 0, 0, '2015-08-19 17:41:18'),
(1, 1, 'Macmilan_Price', 'Sat', 0, '-1967.143798', '294.144989', '35.288398', 5, 50000, 5000, 100, 100, 0, 18668, 100, 0, 0, '2017-09-01 10:22:26'),
(27, 0, 'The State', '', 0, '2117.411132', '897.144042', '11.179677', 555, 3000000, 16, 9886, 10000, 0, 1539, 12, 0, 0, '2014-11-12 22:06:53'),
(28, 0, 'The State', '', 0, '660.090270', '-574.174377', '16.335937', 5, 3000000, 16, 9517, 10000, 0, 0, 8, 0, 0, '2015-06-04 17:42:42'),
(29, 0, 'The State', '', 0, '1382.816284', '465.020660', '20.199670', 5, 3000000, 16, 9256, 10000, 0, 0, 9, 0, 0, '2015-04-17 23:03:52'),
(30, 0, 'The State', '', 0, '-1685.952514', '1324.945068', '7.187500', 5, 5000000, 1337, 423, 500, 0, 0, 9, 0, 0, '2015-03-24 19:41:31'),
(31, 0, 'The State', '', 0, '289.585174', '1422.025878', '10.464653', 8, 7000000, 7, 530351, 1000000, 0, 11044, 100, 0, 0, '2015-02-10 15:39:19');

-- --------------------------------------------------------

--
-- Структура таблицы `Users`
--

CREATE TABLE IF NOT EXISTS `Users` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `Helper` int(6) NOT NULL,
  `FWarns` int(6) NOT NULL,
  `AcPoints` int(11) NOT NULL DEFAULT '0',
  `Name` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Password` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Level` int(12) NOT NULL,
  `AdminLevel` int(12) NOT NULL,
  `Money` int(24) NOT NULL,
  `BankMoney` int(24) NOT NULL,
  `DonateMoney` int(12) NOT NULL,
  `VipLevel` int(12) NOT NULL,
  `UpgradePoints` int(12) NOT NULL,
  `ConnectedTime` int(12) NOT NULL,
  `Registered` int(6) NOT NULL,
  `Sex` int(6) NOT NULL,
  `Age` int(6) NOT NULL,
  `Ban` int(24) NOT NULL,
  `Origin` int(6) NOT NULL,
  `MuteTime` int(12) NOT NULL,
  `fMute` int(15) NOT NULL DEFAULT '0',
  `Respect` int(12) NOT NULL,
  `Crimes` int(12) NOT NULL,
  `Kills` int(12) NOT NULL,
  `Deaths` int(12) NOT NULL,
  `Arrested` int(12) NOT NULL,
  `Phonebook` int(6) NOT NULL,
  `Fishes` int(12) NOT NULL,
  `BiggestFish` int(12) NOT NULL,
  `Job` int(6) NOT NULL,
  `Paycheck` int(12) NOT NULL,
  `HeadValue` int(12) NOT NULL,
  `Jailed` int(6) NOT NULL,
  `JailTime` int(12) NOT NULL,
  `Materials` int(12) NOT NULL,
  `Drugs` int(12) NOT NULL,
  `Leader` int(6) NOT NULL,
  `Member` int(6) NOT NULL,
  `Rank` int(6) NOT NULL,
  `Skin` int(6) NOT NULL,
  `Skin1` int(4) NOT NULL,
  `Skin2` int(4) NOT NULL,
  `Skin3` int(4) NOT NULL,
  `Skin4` int(4) NOT NULL,
  `Skin5` int(4) NOT NULL,
  `Skin6` int(4) NOT NULL,
  `Skin7` int(4) NOT NULL,
  `Skin8` int(4) NOT NULL,
  `Skin9` int(4) NOT NULL,
  `Skin10` int(4) NOT NULL,
  `CurrentSkin` int(4) NOT NULL,
  `OldSkin` int(4) NOT NULL DEFAULT '7',
  `ContractTime` int(12) NOT NULL,
  `DetSkill` int(12) NOT NULL,
  `SexSkill` int(12) NOT NULL,
  `TrainerSkill` int(12) NOT NULL,
  `LawSkill` int(12) NOT NULL,
  `MechSkill` int(12) NOT NULL,
  `JackSkill` int(12) NOT NULL,
  `CarSkill` int(12) NOT NULL,
  `NewsSkill` int(12) NOT NULL,
  `DrugsSkill` int(12) NOT NULL,
  `FishSkill` int(12) NOT NULL,
  `FactorySkill` int(5) NOT NULL DEFAULT '50',
  `OilSkill` int(4) NOT NULL,
  `FightStyle` int(12) NOT NULL,
  `SpawnHealth` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `Interior` int(6) NOT NULL,
  `PhoneNumber` int(12) NOT NULL,
  `House` int(6) NOT NULL,
  `Bizz` int(6) NOT NULL,
  `Pos_x` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `Pos_y` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `Pos_z` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `CarLic` int(6) NOT NULL,
  `FlyLic` int(6) NOT NULL,
  `BoatLic` int(6) NOT NULL,
  `FishLic` int(6) NOT NULL,
  `GunLic` int(6) NOT NULL,
  `CarTime` int(6) NOT NULL,
  `PayDay` int(6) NOT NULL,
  `CDPlayer` int(6) NOT NULL,
  `AlcoholPerk` int(6) NOT NULL,
  `DrugPerk` int(6) NOT NULL,
  `MiserPerk` int(6) NOT NULL,
  `PainPerk` int(6) NOT NULL,
  `TraderPerk` int(6) NOT NULL,
  `Drugs_Ad` int(4) NOT NULL DEFAULT '0',
  `Warnings` int(6) NOT NULL,
  `TimeWarn` int(12) NOT NULL DEFAULT '0',
  `Fuel` int(6) NOT NULL,
  `Married` int(6) NOT NULL,
  `Cigars` int(6) NOT NULL,
  `Lighter` int(6) NOT NULL,
  `Sprunk` int(6) NOT NULL,
  `Beer` int(6) NOT NULL,
  `Wine` int(6) NOT NULL,
  `CarKey` int(6) NOT NULL,
  `MarriedTo` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `Mail` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `FriendID` int(9) NOT NULL DEFAULT '0',
  `AllowHouseChange` int(4) NOT NULL,
  `AllowNameChange` int(4) NOT NULL DEFAULT '0',
  `AllowCarNumberChange` int(5) NOT NULL DEFAULT '0',
  `DelayMailChange` int(15) NOT NULL DEFAULT '0',
  `Total_Quests` int(4) NOT NULL DEFAULT '0',
  `LastVisit` datetime NOT NULL,
  `RegDate` datetime NOT NULL,
  `Gpci` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `Forum` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `Achievement_Peint` int(5) NOT NULL DEFAULT '0',
  `Achievement_Duel` int(5) NOT NULL DEFAULT '0',
  `Achievement_First_Peint` int(5) NOT NULL DEFAULT '0',
  `Achievement_First_Race` int(5) NOT NULL DEFAULT '0',
  `Achievement_Rich_Taxi` int(6) NOT NULL DEFAULT '0',
  `Achievement_Best_Mechanic` int(5) NOT NULL DEFAULT '0',
  `Achievement_Rich_Race` int(6) NOT NULL DEFAULT '0',
  `Achievement_Rich_Peint` int(6) NOT NULL DEFAULT '0',
  `Achievement_Scavenger` int(5) NOT NULL DEFAULT '0',
  `Achievement_Wanker` int(5) NOT NULL DEFAULT '0',
  `Achievement_Taxpayer` int(8) NOT NULL DEFAULT '0',
  `Achievement_Drug_Addict` int(5) NOT NULL DEFAULT '0',
  `Achievement_Criminal` int(5) NOT NULL DEFAULT '0',
  `Achievement_Worker` int(5) NOT NULL DEFAULT '0',
  `Achievement_Loader` int(5) NOT NULL DEFAULT '0',
  `Achievement_Fisher` int(5) NOT NULL DEFAULT '0',
  `Achievement_Shooter` int(6) NOT NULL DEFAULT '0',
  `Achievement_Gangwar` int(5) NOT NULL DEFAULT '0',
  `Achievement_Copjail` int(5) NOT NULL DEFAULT '0',
  `gSalary` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pWork` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Name` (`Name`(24)),
  KEY `Name_Password` (`Name`(12),`Password`(12)),
  KEY `Member` (`Member`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Дамп данных таблицы `Users`
--

INSERT INTO `Users` (`id`, `Helper`, `FWarns`, `AcPoints`, `Name`, `Password`, `Level`, `AdminLevel`, `Money`, `BankMoney`, `DonateMoney`, `VipLevel`, `UpgradePoints`, `ConnectedTime`, `Registered`, `Sex`, `Age`, `Ban`, `Origin`, `MuteTime`, `fMute`, `Respect`, `Crimes`, `Kills`, `Deaths`, `Arrested`, `Phonebook`, `Fishes`, `BiggestFish`, `Job`, `Paycheck`, `HeadValue`, `Jailed`, `JailTime`, `Materials`, `Drugs`, `Leader`, `Member`, `Rank`, `Skin`, `Skin1`, `Skin2`, `Skin3`, `Skin4`, `Skin5`, `Skin6`, `Skin7`, `Skin8`, `Skin9`, `Skin10`, `CurrentSkin`, `OldSkin`, `ContractTime`, `DetSkill`, `SexSkill`, `TrainerSkill`, `LawSkill`, `MechSkill`, `JackSkill`, `CarSkill`, `NewsSkill`, `DrugsSkill`, `FishSkill`, `FactorySkill`, `OilSkill`, `FightStyle`, `SpawnHealth`, `Interior`, `PhoneNumber`, `House`, `Bizz`, `Pos_x`, `Pos_y`, `Pos_z`, `CarLic`, `FlyLic`, `BoatLic`, `FishLic`, `GunLic`, `CarTime`, `PayDay`, `CDPlayer`, `AlcoholPerk`, `DrugPerk`, `MiserPerk`, `PainPerk`, `TraderPerk`, `Drugs_Ad`, `Warnings`, `TimeWarn`, `Fuel`, `Married`, `Cigars`, `Lighter`, `Sprunk`, `Beer`, `Wine`, `CarKey`, `MarriedTo`, `Mail`, `FriendID`, `AllowHouseChange`, `AllowNameChange`, `AllowCarNumberChange`, `DelayMailChange`, `Total_Quests`, `LastVisit`, `RegDate`, `Gpci`, `Forum`, `Achievement_Peint`, `Achievement_Duel`, `Achievement_First_Peint`, `Achievement_First_Race`, `Achievement_Rich_Taxi`, `Achievement_Best_Mechanic`, `Achievement_Rich_Race`, `Achievement_Rich_Peint`, `Achievement_Scavenger`, `Achievement_Wanker`, `Achievement_Taxpayer`, `Achievement_Drug_Addict`, `Achievement_Criminal`, `Achievement_Worker`, `Achievement_Loader`, `Achievement_Fisher`, `Achievement_Shooter`, `Achievement_Gangwar`, `Achievement_Copjail`, `gSalary`, `pWork`) VALUES
(1, 0, 0, 0, 'Randy', 'orton010', 10, 1339, 7401678, 0, 1540, 0, 0, 19, 1, 1, 21, 0, 0, 0, 0, 37, 9, 4, 5, 0, 0, 0, 0, 11, 22020, 0, 0, 0, 0, 0, 12, 0, 20, 46, 6, 299, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 0, 0, '', 0, 666666, 694, 1, '', '', '', 1, 1, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, '', 'etoo.99@mail.ru', 0, 0, 60, 0, 1505282723, 0, '2017-09-01 20:42:05', '2017-08-16 13:16:05', '', 'Randy', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, '0', '0'),
(2, 0, 0, 0, 'Vuqar', '2146', 1, 0, 200, 0, 0, 0, 0, 0, 1, 1, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 120, 0, 0, 0, 0, 0, 0, 0, 0, 79, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 0, 0, '', 0, 0, -1, 255, '', '', '', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'no', 0, 0, 0, 0, 0, 0, '2017-08-16 20:02:35', '2017-08-16 20:00:40', '', 'no', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '0'),
(3, 0, 0, 0, '[EGS]', '22552525egs', 1, 0, 200, 0, 0, 0, 0, 0, 1, 1, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 0, 0, 0, 0, 0, 0, 0, 0, 79, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 0, 0, '', 0, 0, -1, 255, '', '', '', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'no', 0, 0, 0, 0, 0, 0, '2017-08-17 13:41:49', '2017-08-17 13:39:04', '', 'no', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '0'),
(4, 0, 0, 0, 'Amon', 'a3374747', 50, 1338, 9091029, 0, 0, 0, 0, 2, 1, 1, 21, 0, 0, 0, 0, 2, 0, 6, 6, 0, 0, 0, 0, 0, 6600, 0, 0, 0, 0, 0, 5, 0, 20, 98, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 0, 0, '', 0, 0, -1, 255, '', '', '', 1, 1, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'no', 0, 0, 0, 0, 0, 0, '2017-08-17 20:48:58', '2017-08-17 13:44:39', '', 'no', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '0'),
(5, 0, 0, 0, 'Macmilan_Price', 'societa010', 50, 1339, 8912407, 0, 1815, 0, 0, 7, 1, 1, 21, 0, 0, 0, 0, 8, 0, 3, 0, 0, 0, 0, 0, 24, 17640, 0, 0, 0, 0, 0, 1, 0, 20, 288, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 0, 0, '', 0, 111, -1, 101, '', '', '', 1, 1, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 'mcmizze@yahoo.com', 0, 0, 3, 0, 1504941318, 0, '2017-09-01 10:22:26', '2017-08-17 13:46:13', '', 'no', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '0'),
(6, 0, 0, 0, 'Davide_Corleone', '22552525egs', 12, 1339, 9311108, 0, 0, 0, 0, 0, 1, 1, 21, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 7500, 0, 0, 0, 0, 0, 5, 0, 20, 271, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 0, 0, '', 0, 0, -1, 255, '', '', '', 1, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'emin.egs@mail.ru', 0, 0, 0, 0, 1505057488, 0, '2017-08-28 15:42:37', '2017-08-17 13:53:34', '', 'Davide_Corleone', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '0'),
(7, 0, 0, 0, 'Tesla', 'orton010', 1, 0, 200, 0, 0, 0, 0, 0, 1, 1, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 330, 0, 0, 0, 0, 0, 0, 0, 0, 79, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 0, 0, '', 0, 0, -1, 255, '', '', '', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'no', 0, 0, 0, 0, 0, 0, '2017-08-19 12:48:24', '2017-08-19 12:42:56', '', 'no', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '0'),
(8, 0, 0, 0, 'Killer_Mike', 'parol2002', 1, 1339, 199, 0, 0, 0, 0, 0, 1, 1, 21, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1710, 0, 0, 0, 0, 0, 0, 0, 0, 217, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 0, 0, '', 0, 0, -1, 255, '', '', '', 1, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'no', 1, 0, 0, 0, 0, 0, '2017-08-19 16:43:11', '2017-08-19 12:44:34', '', 'no', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '0'),
(9, 0, 0, 0, 'Piter_D', 'societa010', 1, 0, 44, 0, 0, 0, 0, 0, 1, 1, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 79, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 0, 0, '', 0, 0, -1, 255, '', '', '', 1, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'no', 0, 0, 0, 0, 0, 0, '2017-08-23 19:32:01', '2017-08-23 19:07:18', '', 'no', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '0'),
(10, 0, 0, 0, 'Piter_Druke', 'druke', 1, 0, 50, 0, 0, 0, 0, 0, 1, 1, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1170, 0, 0, 0, 0, 0, 0, 0, 0, 79, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 0, 0, '', 0, 0, -1, 255, '', '', '', 1, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'no', 0, 0, 0, 0, 0, 0, '2017-08-23 20:01:56', '2017-08-23 19:33:06', '', 'no', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '0'),
(11, 0, 0, 0, 'Yosif', 'rauf1999z', 3, 0, 200, 0, 0, 0, 0, 0, 1, 1, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2010, 0, 0, 0, 0, 0, 0, 0, 0, 79, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 0, 0, '', 0, 0, -1, 255, '', '', '', 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'no', 0, 0, 0, 0, 1505147196, 0, '2017-08-29 14:41:41', '2017-08-28 19:15:36', '', 'Yosif', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `Vip`
--

CREATE TABLE IF NOT EXISTS `Vip` (
  `id` int(10) NOT NULL,
  `Name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `Date` date NOT NULL,
  `Duration` int(6) NOT NULL,
  `FinishTime` date NOT NULL,
  `lvl` int(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `F_Date` (`FinishTime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `Vip`
--

INSERT INTO `Vip` (`id`, `Name`, `Date`, `Duration`, `FinishTime`, `lvl`) VALUES
(1, '', '2017-05-07', 30, '2020-09-18', 3),
(5, '', '2017-08-29', 30, '2017-09-28', 3),
(689903, '', '2017-07-28', 30, '2017-09-28', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `Zones`
--

CREATE TABLE IF NOT EXISTS `Zones` (
  `id` int(3) NOT NULL,
  `Owner` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `Zones`
--

INSERT INTO `Zones` (`id`, `Owner`) VALUES
(0, 10),
(1, 16),
(2, 16),
(3, 16),
(4, 16),
(5, 16),
(6, 16),
(7, 16),
(8, 16),
(9, 14),
(10, 16),
(11, 16),
(12, 16),
(13, 16),
(14, 16),
(15, 16),
(16, 16),
(17, 16),
(18, 14),
(19, 16),
(20, 17),
(21, 14),
(22, 16),
(23, 16),
(24, 17),
(25, 14),
(26, 14),
(27, 16),
(28, 16),
(29, 14),
(30, 14),
(31, 14),
(32, 17),
(33, 17),
(34, 14),
(35, 14),
(36, 14),
(37, 14),
(38, 14),
(39, 14),
(40, 14),
(41, 14),
(42, 16),
(43, 14),
(44, 14),
(45, 14),
(46, 14),
(47, 14),
(48, 14),
(49, 14),
(50, 14),
(51, 16),
(52, 14),
(53, 14),
(54, 14),
(55, 13),
(56, 13),
(57, 13),
(58, 13),
(59, 13),
(60, 15),
(61, 15),
(62, 15),
(63, 14),
(64, 13),
(65, 13),
(66, 13),
(67, 13),
(68, 15),
(69, 15),
(70, 15),
(71, 15),
(72, 15),
(73, 5),
(74, 5),
(75, 5),
(76, 5),
(77, 6),
(78, 6),
(79, 5),
(80, 6),
(81, 5),
(82, 5),
(83, 6),
(84, 5),
(85, 5),
(86, 5),
(87, 5);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
