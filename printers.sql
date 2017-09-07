-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u2
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Сен 07 2017 г., 14:02
-- Версия сервера: 5.5.53-0+deb8u1
-- Версия PHP: 5.6.30-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `printers`
--

-- --------------------------------------------------------

--
-- Структура таблицы `all_printers`
--

CREATE TABLE IF NOT EXISTS `all_printers` (
`id` int(11) NOT NULL,
  `vender` varchar(100) DEFAULT NULL,
  `model` varchar(80) DEFAULT NULL,
  `type` varchar(6) DEFAULT NULL,
  `depiction` varchar(40) DEFAULT NULL,
  `house` varchar(80) DEFAULT NULL,
  `outhouse` varchar(120) DEFAULT NULL,
  `floor` varchar(2) NOT NULL,
  `room` varchar(80) DEFAULT NULL,
  `hostname` varchar(80) DEFAULT NULL,
  `mac` varchar(20) DEFAULT NULL,
  `ipaddr` varchar(15) DEFAULT NULL,
  `test_ping` enum('ok','error') DEFAULT NULL,
  `port` varchar(5) DEFAULT NULL,
  `serial_nomber` varchar(30) DEFAULT NULL,
  `sum_print_all` int(100) DEFAULT NULL,
  `sum_printter` int(100) DEFAULT NULL,
  `sum_copy` int(100) DEFAULT NULL,
  `link` varchar(80) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Дамп данных таблицы `all_printers`
--

INSERT INTO `all_printers` (`id`, `vender`, `model`, `type`, `depiction`, `house`, `outhouse`, `floor`, `room`, `hostname`, `mac`, `ipaddr`, `test_ping`, `port`, `serial_nomber`, `sum_print_all`, `sum_printter`, `sum_copy`, `link`) VALUES
(1, NULL, 'FS-1030MFP', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.38.151', 'ok', NULL, 'NQN2304145', 63671, 61670, 2001, NULL),
(2, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.33.150', 'ok', NULL, '', NULL, NULL, NULL, NULL),
(3, NULL, 'FS-1130MFP', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.33.4', 'ok', NULL, 'NQV3322137', 51583, 20831, 30752, NULL),
(4, NULL, 'ECOSYS P2135dn', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.37.25', 'ok', NULL, 'LVL4816595', NULL, NULL, NULL, NULL),
(5, NULL, 'ECOSYS P6021cdn', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.37.23', 'ok', NULL, 'LW45428477', 8424, 717, 0, NULL),
(6, NULL, 'ECOSYS M2530dn', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.37.15', 'ok', NULL, '', NULL, NULL, NULL, NULL),
(7, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.32.27', 'ok', NULL, '', NULL, NULL, NULL, NULL),
(8, NULL, 'ECOSYS M2530dn', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.37.18', 'ok', NULL, '', 53190, 51223, 1967, NULL),
(9, NULL, 'FS-1130MFP', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.38.13', 'ok', NULL, 'NQV3728971', 208015, 198091, 9924, NULL),
(10, NULL, 'FS-1130MFP', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.38.49', 'ok', NULL, 'NQV3829019', 266352, 256690, 9662, NULL),
(11, NULL, 'FS-1030MFP', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.40.150', 'ok', NULL, 'NQP3829336', 57809, 45638, 12171, NULL),
(12, NULL, 'FS-1030MFP', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.41.149', 'ok', NULL, 'NQP1Z04845', 350016, 325191, 24825, NULL),
(14, NULL, 'FS-1130MFP', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.41.132', 'ok', NULL, 'NQV3322174', 245497, 232977, 12520, NULL),
(15, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.42.148', 'error', NULL, '', NULL, NULL, NULL, NULL),
(16, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.42.160', 'error', NULL, '', NULL, NULL, NULL, NULL),
(17, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.42.145', 'error', NULL, '', NULL, NULL, NULL, NULL),
(18, NULL, 'ECOSYS M2530dn', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.40.141', 'ok', NULL, '', 70184, 68335, 1849, NULL),
(19, NULL, 'FS-1130MFP', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.34.132', 'ok', NULL, 'NQV2Y15153', 41652, 40415, 1237, NULL),
(20, NULL, 'FS-1130MFP', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.34.146', 'ok', NULL, 'NQV3323512', 151433, 145580, 5853, NULL),
(21, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.34.46', 'ok', NULL, '', NULL, NULL, NULL, NULL),
(22, NULL, 'FS-2100DN', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.35.30', 'ok', NULL, 'NUH3124326\r', 181680, 181680, 0, NULL),
(23, NULL, 'FS-1130MFP', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.35.135', 'ok', NULL, 'NQV2Y14941', 88474, 82518, 5956, NULL),
(24, NULL, 'FS-1130MFP', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.35.34', 'ok', NULL, 'NQV2Y15444', 175288, 168914, 6374, NULL),
(25, NULL, 'FS-1130MFP', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.35.134', 'error', NULL, '', 0, 0, 0, NULL),
(26, NULL, 'FS-9530DN', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.36.157', 'ok', NULL, 'PAS4111781', 0, 0, 0, NULL),
(27, NULL, 'ECOSYS M2530dn', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.36.147', 'ok', NULL, '', 363429, 307275, 56154, NULL),
(28, NULL, 'ECOSYS M2530dn', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.36.44', 'ok', NULL, 'LVS3Z03464', 131091, 120463, 10628, NULL),
(29, NULL, 'FS-1130MFP', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.36.168', 'ok', NULL, 'NQV3829018', 96669, 59696, 36973, NULL),
(30, NULL, 'FS-1030MFP', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.36.167', 'ok', NULL, 'NQP3829334', 246147, 181773, 64374, NULL),
(31, NULL, 'ECOSYS M2530dn', NULL, NULL, 'ЦО', NULL, '', '305', NULL, '', '10.16.36.7', 'ok', NULL, 'LVS4105576', 30625, 29208, 1417, NULL),
(32, NULL, 'ECOSYS M2530dn', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.36.152', 'ok', NULL, 'LVS4306169', 73835, 67576, 6259, NULL),
(33, NULL, 'FS-1130MFP', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.40.20', 'ok', NULL, 'NQV2812197', 32340, 31072, 1268, NULL),
(34, NULL, 'ECOSYS M2530dn', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.32.159', 'ok', NULL, '', 26166, 25129, 1037, NULL),
(35, NULL, 'FS-1130MFP', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.37.161', 'ok', NULL, '', NULL, NULL, NULL, NULL),
(36, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.33.11', 'error', NULL, '', NULL, NULL, NULL, NULL),
(38, NULL, 'FS-1130MFP', NULL, NULL, 'ЦО', NULL, '', '108', NULL, '', '10.16.41.16', 'ok', NULL, 'NQV2912938', 36272, 26806, 9466, NULL),
(39, NULL, 'ECOSYS M2030dn', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.39.29', 'ok', NULL, '', 24562, 17852, 6710, NULL),
(40, NULL, 'ECOSYS M2530dn', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.36.175', 'ok', NULL, 'LVS3Z03474', 2200, 2151, 49, NULL),
(41, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.32.25', 'error', NULL, '', NULL, NULL, NULL, NULL),
(42, NULL, 'FS-1130MFP', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.32.51', 'ok', NULL, 'NQV2Y16983', 33823, 32000, 1823, NULL),
(43, NULL, 'FS-1320D', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.32.33', 'ok', NULL, 'L4X3215185', 27172, 0, 0, NULL),
(44, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.42.147', 'error', NULL, '', NULL, NULL, NULL, NULL),
(45, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.42.161', 'error', NULL, '', NULL, NULL, NULL, NULL),
(46, NULL, 'FS-1130MFP', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.34.154', 'ok', NULL, 'NQV2Y14944', 22840, 15443, 7397, NULL),
(47, NULL, 'FS-3920DN', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.36.173', 'ok', NULL, 'XEY1896449', 0, 0, 0, NULL),
(48, NULL, 'FS-2100DN', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.36.28', 'ok', NULL, 'NUH2Z19308\r', 359944, 359944, 0, NULL),
(50, NULL, 'ECOSYS M2530dn', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.130.19', 'ok', NULL, 'LVS5119931', 48507, 39829, 8678, NULL),
(51, NULL, 'FS-1130MFP', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.128.20', 'ok', NULL, 'NQV3323472', 232120, 161870, 70250, NULL),
(52, NULL, 'ECOSYS M2030dn', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.0.7.40', 'ok', NULL, 'LVQ5959274', 88227, 84117, 4110, NULL),
(53, NULL, 'FS-1030MFP', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.17.32.30', 'ok', NULL, 'NQP3728062', 148804, 29268, 119536, NULL),
(97, NULL, 'FS-1130MFP', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.50.37', 'ok', NULL, 'NQV2Y14762', 30671, 28993, 1678, NULL),
(98, NULL, 'HP Designjet 510 42in Printer (CH337A)', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.50.25', 'error', NULL, '', NULL, NULL, NULL, NULL),
(99, NULL, 'C9655', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.50.18', 'ok', NULL, 'AL42044190', NULL, NULL, NULL, NULL),
(100, NULL, 'ECOSYS M2530dn', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.50.16', 'ok', NULL, 'LVS3Z02297', 123435, 113970, 9465, NULL),
(103, NULL, 'FS-1130MFP', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.37.161', 'ok', NULL, '', NULL, NULL, NULL, NULL),
(104, NULL, 'HP LaserJet P3005', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.37.145', 'ok', NULL, 'CNX2N07015', 189073, NULL, NULL, NULL),
(105, NULL, 'ECOSYS M2530dn', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.37.157', 'error', NULL, '', 0, 0, 0, NULL),
(106, NULL, 'ECOSYS P6021cdn', NULL, NULL, 'Тухачевского', 'среднее', '3', NULL, NULL, '', '10.16.50.49', 'ok', NULL, '', 3100, 206, 0, NULL),
(107, NULL, 'FS-1130MFP', NULL, NULL, 'Тухачевского', 'среднее', '3', NULL, NULL, '', '10.16.50.38', 'ok', NULL, 'NQV3325532', 35412, 32033, 3379, NULL),
(108, NULL, 'ECOSYS M2530dn', NULL, NULL, 'Тухачевского', 'среднее', '3', NULL, NULL, '', '10.16.50.22', 'ok', NULL, 'LVS3Z02353', 91903, 77549, 14354, NULL),
(109, NULL, 'C610', NULL, NULL, 'Тухачевского', 'среднее', '3', NULL, NULL, '', '10.16.42.166', 'error', NULL, '', NULL, NULL, NULL, NULL),
(110, NULL, 'C610', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.38.154', 'ok', NULL, 'AK22021346', NULL, NULL, NULL, NULL),
(111, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.38.44', 'error', NULL, '', 0, 0, 0, NULL),
(112, NULL, 'FS-1130MFP', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.33.41', 'ok', NULL, '', 0, 0, 0, NULL),
(114, NULL, 'C610', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.39.21', 'ok', NULL, 'AK22021349', 0, 0, 0, NULL),
(115, NULL, 'hp LaserJet 2420', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.39.22', 'ok', NULL, 'CNHW6799R5', 270341, 0, 0, NULL),
(116, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.39.7', 'error', NULL, '', 0, 0, 0, NULL),
(117, NULL, 'C9655', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.32.45', 'ok', NULL, 'AL45052471', 0, 0, 0, NULL),
(118, NULL, 'hp LaserJet 2420', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.38.38', 'ok', NULL, 'CNFJF18887', 763058, 0, 0, NULL),
(119, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.38.47', 'ok', NULL, '', 0, 0, 0, NULL),
(120, NULL, 'FS-1130MFP', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.41.150', 'ok', NULL, 'NQV3829017', 62959, 59997, 2962, NULL),
(122, NULL, 'C9655', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.40.149', 'ok', NULL, 'AL31022797', 0, 0, 0, NULL),
(123, NULL, 'MC562', NULL, NULL, 'ДЗиЛ', NULL, '', 'Сухарев', NULL, '', '10.16.34.134', 'error', NULL, '', 0, 0, 0, NULL),
(124, NULL, 'FS-1320D', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.34.145', 'ok', NULL, 'L4X3214358', 49625, 0, 0, NULL),
(125, NULL, 'hp LaserJet 2410', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.36.164', 'ok', NULL, '', 0, 0, 0, NULL),
(126, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, '', '10.16.31.22', 'ok', NULL, '', NULL, NULL, NULL, NULL),
(127, NULL, 'ECOSYS M2030dn', NULL, NULL, 'ЦО', NULL, '3', '305', NULL, '', '10.16.42.151', 'ok', NULL, '', 21703, 20326, 1377, NULL),
(128, NULL, 'FS-6525MFP', NULL, 'Бумажный архив/склад', 'Приграничная', NULL, '', NULL, NULL, '', '10.0.74.25', 'ok', NULL, '', 0, 0, 0, NULL),
(129, NULL, 'MC562', NULL, 'Агафонова', 'ЦО', NULL, '3', 'Приёмная', NULL, '', '10.16.40.135', 'ok', NULL, 'AK33003587', 29058, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `links`
--

CREATE TABLE IF NOT EXISTS `links` (
`id` int(11) NOT NULL,
  `link` varchar(250) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Дамп данных таблицы `links`
--

INSERT INTO `links` (`id`, `link`, `name`) VALUES
(1, '\\\\vnxfs01\\DISTRIBS\\CO\\Driver\\Printer\\KYOCERA\\Kyocera FS-1030-1135MFP\\PrnDrv\\KXDriver\\64bit\\XP and newer', 'FS-1030-1135MFP'),
(2, '\\\\vnxfs01\\DISTRIBS\\CO\\Driver\\Printer\\KYOCERA\\1120-1320dn\\PrnDrv\\KXDriver\\64bit\\XP and newer', '1120-1320dn'),
(3, '\\\\vnxfs01\\DISTRIBS\\CO\\Driver\\Printer\\KYOCERA\\fs2100-4300\\PrnDrv\\KXDriver\\64bit\\XP and newer', 'fs2100-4300'),
(4, '\\\\vnxfs01\\DISTRIBS\\CO\\Driver\\Printer\\KYOCERA\\3040\\KXDRIVER\\64bit\\XP and newer', '3040'),
(5, '\\\\vnxfs01\\DISTRIBS\\CO\\Driver\\Printer\\KYOCERA\\Kyocera FS-9530DN\\Win2K_XP', 'FS-9530DN'),
(6, '\\\\vnxfs01\\DISTRIBS\\CO\\Driver\\Printer\\KYOCERA\\Kyocera FS-3920DN\\2000 and newer', 'FS-3920DN'),
(7, '\\\\vnxfs01\\DISTRIBS\\CO\\Driver\\Printer\\KYOCERA\\M2530DN\\Kx611413_UPD_ECOSYS\\64bit\\XP and newer', 'M2530DN'),
(8, '\\\\vnxfs01\\DISTRIBS\\CO\\Driver\\Printer\\KYOCERA\\P2135DN\\PCL 5 UniDriver\\XP and newer', 'P2135DN'),
(9, '\\\\vnxfs01\\DISTRIBS\\CO\\Driver\\Printer\\KYOCERA\\2020d_3920dn_4020dn\\PrnDrv\\KXDriver\\64bit\\XP and newer', '2020d_3920dn_4020dn'),
(10, '\\\\vnxfs01\\DISTRIBS\\CO\\Driver\\Printer\\KYOCERA\\ECOSYS P6021 cdn\\PrnDrv\\KXDriver\\64bit\\XP and newer', 'ECOSYS P6021 cdn'),
(11, '\\\\vnxfs01\\DISTRIBS\\CO\\Driver\\Printer\\KYOCERA\\Kyocera1Kx531025_MS-signed\\Kx531025_MS-signed\\en\\64bit\\XP and newer', 'TASKalfa 221'),
(12, '\\\\vnxfs01\\DISTRIBS\\CO\\Driver\\Printer\\Oki\\c610-711\\RUS\\PCL', 'c610-711'),
(13, '\\\\vnxfs01\\DISTRIBS\\CO\\Driver\\Printer\\Oki\\OKI C9655\\Drivers\\RUS\\PCL\\amd64', 'C9655'),
(14, '\\\\vnxfs01\\DISTRIBS\\CO\\Driver\\Printer\\Oki\\OKI MC562W\\Drivers\\PS', 'MC562W'),
(15, '\\\\vnxfs01\\DISTRIBS\\CO\\Driver\\Printer\\HP\\hp3010', 'hp3010'),
(16, '\\\\vnxfs01\\DISTRIBS\\CO\\Driver\\Printer\\HP\\Hp2410-2420', 'Hp2410-2420'),
(17, '\\\\vnxfs01\\DISTRIBS\\CO\\Driver\\Printer\\HP\\hp2050', 'hp2050'),
(18, '\\\\vnxfs01\\DISTRIBS\\CO\\Driver\\Printer\\HP\\hp3005', 'hp3005');

-- --------------------------------------------------------

--
-- Структура таблицы `liquid_names`
--

CREATE TABLE IF NOT EXISTS `liquid_names` (
`id` int(11) NOT NULL,
  `vender` varchar(80) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `lync` varchar(250) CHARACTER SET utf8 COLLATE utf8_danish_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `liquid_names`
--

INSERT INTO `liquid_names` (`id`, `vender`, `name`, `lync`) VALUES
(1, 'oki', 'C610', '\\\\vnxfs01\\DISTRIBS\\CO\\Driver\\Printer\\Oki\\c610-711\\RUS\\PCL'),
(2, 'oki', 'C9655', '\\\\vnxfs01\\DISTRIBS\\CO\\Driver\\Printer\\Oki\\OKI C9655\\Drivers\\RUS\\PCL\\amd64'),
(3, 'oki', 'MC562', '\\\\vnxfs01\\DISTRIBS\\CO\\Driver\\Printer\\Oki\\OKI MC562W\\Drivers\\PS'),
(5, 'kyocera', 'FS-9530DN', '\\\\vnxfs01\\DISTRIBS\\CO\\Driver\\Printer\\KYOCERA\\Kyocera FS-9530DN\\Win2K_XP'),
(6, 'kyocera', 'FS-1030MFP', '\\\\vnxfs01\\DISTRIBS\\CO\\Driver\\Printer\\KYOCERA\\Kyocera FS-1030-1135MFP\\PrnDrv\\KXDriver\\64bit\\XP and newer'),
(7, 'kyocera', 'FS-1130MFP', '\\\\vnxfs01\\DISTRIBS\\CO\\Driver\\Printer\\KYOCERA\\1120-1320dn\\PrnDrv\\KXDriver\\64bit\\XP and newer'),
(8, 'kyocera', 'FS-3920DN', '\\\\vnxfs01\\DISTRIBS\\CO\\Driver\\Printer\\KYOCERA\\Kyocera FS-3920DN\\2000 and newer'),
(9, 'kyocera', 'FS-1320D', '\\\\vnxfs01\\DISTRIBS\\CO\\Driver\\Printer\\KYOCERA\\1120-1320dn\\PrnDrv\\KXDriver\\64bit\\XP and newer'),
(10, 'kyocera', 'ECOSYS P2135dn', '\\\\vnxfs01\\DISTRIBS\\CO\\Driver\\Printer\\KYOCERA\\P2135DN\\PCL 5 UniDriver\\XP and newer'),
(11, 'kyocera', 'ECOSYS P6021cdn', '\\\\vnxfs01\\DISTRIBS\\CO\\Driver\\Printer\\KYOCERA\\ECOSYS P6021 cdn\\PrnDrv\\KXDriver\\64bit\\XP and newer'),
(12, 'kyocera', 'FS-2100DN', '\\\\vnxfs01\\DISTRIBS\\CO\\Driver\\Printer\\KYOCERA\\fs2100-4300\\PrnDrv\\KXDriver\\64bit\\XP and newer'),
(13, 'kyocera', 'ECOSYS M2530dn', '\\\\vnxfs01\\DISTRIBS\\CO\\Driver\\Printer\\KYOCERA\\M2530DN\\Kx611413_UPD_ECOSYS\\64bit\\XP and newer'),
(14, 'kyocera', 'ECOSYS M2030dn', '\\\\vnxfs01\\DISTRIBS\\CO\\Driver\\Printer\\KYOCERA\\2020d_3920dn_4020dn\\PrnDrv\\KXDriver\\64bit\\XP and newer'),
(15, 'HP', 'HP Designjet 510 42in Printer (CH337A)', NULL),
(16, 'HP', 'HP LaserJet P3005', '\\\\vnxfs01\\DISTRIBS\\CO\\Driver\\Printer\\HP\\hp3005'),
(17, 'HP', 'hp LaserJet 2420', '\\\\vnxfs01\\DISTRIBS\\CO\\Driver\\Printer\\HP\\Hp2410-2420'),
(18, 'HP', 'hp LaserJet 2410', '\\\\vnxfs01\\DISTRIBS\\CO\\Driver\\Printer\\HP\\Hp2410-2420'),
(19, 'kyocera', 'FS-6525MFP', '');

-- --------------------------------------------------------

--
-- Структура таблицы `vender`
--

CREATE TABLE IF NOT EXISTS `vender` (
`id` int(11) NOT NULL,
  `vender_name` varchar(80) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Дамп данных таблицы `vender`
--

INSERT INTO `vender` (`id`, `vender_name`) VALUES
(66, 'epson'),
(65, 'HP'),
(64, 'kyocera'),
(1, 'oki');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `all_printers`
--
ALTER TABLE `all_printers`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`hostname`), ADD KEY `name_2` (`hostname`);

--
-- Индексы таблицы `links`
--
ALTER TABLE `links`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`link`), ADD UNIQUE KEY `vender_name` (`link`), ADD KEY `name_2` (`link`), ADD KEY `vender_name_2` (`link`), ADD KEY `id` (`id`,`link`), ADD KEY `id_2` (`id`,`link`), ADD KEY `link` (`link`);

--
-- Индексы таблицы `liquid_names`
--
ALTER TABLE `liquid_names`
 ADD PRIMARY KEY (`id`), ADD KEY `vender` (`vender`), ADD KEY `vender_2` (`vender`), ADD KEY `lync` (`lync`), ADD KEY `lync_2` (`lync`);

--
-- Индексы таблицы `vender`
--
ALTER TABLE `vender`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`vender_name`), ADD UNIQUE KEY `vender_name` (`vender_name`), ADD KEY `name_2` (`vender_name`), ADD KEY `vender_name_2` (`vender_name`), ADD KEY `id` (`id`,`vender_name`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `all_printers`
--
ALTER TABLE `all_printers`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=130;
--
-- AUTO_INCREMENT для таблицы `links`
--
ALTER TABLE `links`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT для таблицы `liquid_names`
--
ALTER TABLE `liquid_names`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT для таблицы `vender`
--
ALTER TABLE `vender`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=67;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
