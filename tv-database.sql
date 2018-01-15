-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 15 2018 г., 13:55
-- Версия сервера: 5.6.38
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `tv-database`
--

-- --------------------------------------------------------

--
-- Структура таблицы `brands`
--

CREATE TABLE `brands` (
  `id-brands` int(11) NOT NULL,
  `brand-brands` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `brands`
--

INSERT INTO `brands` (`id-brands`, `brand-brands`) VALUES
(1, 'Kivi'),
(2, 'LG'),
(3, 'Samsung');

-- --------------------------------------------------------

--
-- Структура таблицы `diagonals`
--

CREATE TABLE `diagonals` (
  `id-diagonals` int(11) NOT NULL,
  `diag-diagonals` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `diagonals`
--

INSERT INTO `diagonals` (`id-diagonals`, `diag-diagonals`) VALUES
(1, '32'),
(2, '40'),
(3, '55'),
(4, '82');

-- --------------------------------------------------------

--
-- Структура таблицы `matrix`
--

CREATE TABLE `matrix` (
  `id-matrix` int(11) NOT NULL,
  `mat-matrixl` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `matrix`
--

INSERT INTO `matrix` (`id-matrix`, `mat-matrixl`) VALUES
(1, 'LCD'),
(2, 'OLED'),
(3, 'QLED');

-- --------------------------------------------------------

--
-- Структура таблицы `modelsKivi`
--

CREATE TABLE `modelsKivi` (
  `id-modelsKivi` int(11) NOT NULL,
  `model-modelsKivi` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modelsKivi`
--

INSERT INTO `modelsKivi` (`id-modelsKivi`, `model-modelsKivi`) VALUES
(1, '32FK30G'),
(2, '40FK30G'),
(3, '55UK30G');

-- --------------------------------------------------------

--
-- Структура таблицы `modelsLG`
--

CREATE TABLE `modelsLG` (
  `id-modelsLG` int(11) NOT NULL,
  `model-modelsLG` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modelsLG`
--

INSERT INTO `modelsLG` (`id-modelsLG`, `model-modelsLG`) VALUES
(1, '43UJ630V'),
(2, '55UJ630V');

-- --------------------------------------------------------

--
-- Структура таблицы `modelsSG`
--

CREATE TABLE `modelsSG` (
  `id-modelsSG` int(11) NOT NULL,
  `model-modelsSG` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modelsSG`
--

INSERT INTO `modelsSG` (`id-modelsSG`, `model-modelsSG`) VALUES
(1, 'UE40MU6103'),
(2, 'UE55MU6400'),
(3, 'UE82MU7000');

-- --------------------------------------------------------

--
-- Структура таблицы `resolutions`
--

CREATE TABLE `resolutions` (
  `id-resolutions` int(11) NOT NULL,
  `reso-resolutions` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `resolutions`
--

INSERT INTO `resolutions` (`id-resolutions`, `reso-resolutions`) VALUES
(1, 'FullHD'),
(2, 'UltraHD');

-- --------------------------------------------------------

--
-- Структура таблицы `threed`
--

CREATE TABLE `threed` (
  `id-3d` int(11) NOT NULL,
  `3d-3d` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `threed`
--

INSERT INTO `threed` (`id-3d`, `3d-3d`) VALUES
(1, 'no'),
(2, 'yes');

-- --------------------------------------------------------

--
-- Структура таблицы `tv`
--

CREATE TABLE `tv` (
  `id-tv` int(11) NOT NULL,
  `id-brends` int(11) NOT NULL,
  `id-models` int(11) NOT NULL,
  `id-matrix` int(11) NOT NULL,
  `id-diagonals` int(11) NOT NULL,
  `id-resolutions` int(11) NOT NULL,
  `id-threed` int(11) NOT NULL,
  `prices` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tv`
--

INSERT INTO `tv` (`id-tv`, `id-brends`, `id-models`, `id-matrix`, `id-diagonals`, `id-resolutions`, `id-threed`, `prices`) VALUES
(1, 1, 1, 1, 1, 1, 1, 8700),
(2, 1, 2, 1, 2, 1, 1, 10500),
(3, 1, 3, 2, 3, 2, 1, 19000),
(7, 2, 2, 2, 2, 2, 1, 19000),
(8, 2, 3, 2, 3, 2, 1, 30000),
(9, 3, 2, 3, 2, 2, 2, 18500),
(10, 3, 2, 3, 3, 2, 2, 39400),
(11, 3, 3, 3, 4, 2, 2, 200000);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id-brands`);

--
-- Индексы таблицы `diagonals`
--
ALTER TABLE `diagonals`
  ADD PRIMARY KEY (`id-diagonals`);

--
-- Индексы таблицы `matrix`
--
ALTER TABLE `matrix`
  ADD PRIMARY KEY (`id-matrix`);

--
-- Индексы таблицы `modelsKivi`
--
ALTER TABLE `modelsKivi`
  ADD PRIMARY KEY (`id-modelsKivi`);

--
-- Индексы таблицы `modelsLG`
--
ALTER TABLE `modelsLG`
  ADD PRIMARY KEY (`id-modelsLG`);

--
-- Индексы таблицы `modelsSG`
--
ALTER TABLE `modelsSG`
  ADD PRIMARY KEY (`id-modelsSG`);

--
-- Индексы таблицы `resolutions`
--
ALTER TABLE `resolutions`
  ADD PRIMARY KEY (`id-resolutions`);

--
-- Индексы таблицы `threed`
--
ALTER TABLE `threed`
  ADD PRIMARY KEY (`id-3d`);

--
-- Индексы таблицы `tv`
--
ALTER TABLE `tv`
  ADD PRIMARY KEY (`id-tv`),
  ADD KEY `fk_brends_idx` (`id-brends`),
  ADD KEY `fk_models_idx` (`id-models`),
  ADD KEY `fk_matrix_idx` (`id-matrix`),
  ADD KEY `fk_diagonals_idx` (`id-diagonals`),
  ADD KEY `fk_resolutions_idx` (`id-resolutions`),
  ADD KEY `fk_threed_idx` (`id-threed`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `brands`
--
ALTER TABLE `brands`
  MODIFY `id-brands` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `diagonals`
--
ALTER TABLE `diagonals`
  MODIFY `id-diagonals` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `matrix`
--
ALTER TABLE `matrix`
  MODIFY `id-matrix` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `modelsKivi`
--
ALTER TABLE `modelsKivi`
  MODIFY `id-modelsKivi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `modelsLG`
--
ALTER TABLE `modelsLG`
  MODIFY `id-modelsLG` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `modelsSG`
--
ALTER TABLE `modelsSG`
  MODIFY `id-modelsSG` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `resolutions`
--
ALTER TABLE `resolutions`
  MODIFY `id-resolutions` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `threed`
--
ALTER TABLE `threed`
  MODIFY `id-3d` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `tv`
--
ALTER TABLE `tv`
  MODIFY `id-tv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `tv`
--
ALTER TABLE `tv`
  ADD CONSTRAINT `fk_brends` FOREIGN KEY (`id-brends`) REFERENCES `brands` (`id-brands`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_diagonals` FOREIGN KEY (`id-diagonals`) REFERENCES `diagonals` (`id-diagonals`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_matrix` FOREIGN KEY (`id-matrix`) REFERENCES `matrix` (`id-matrix`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_modelsKivi` FOREIGN KEY (`id-models`) REFERENCES `modelsKivi` (`id-modelsKivi`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_resolutions` FOREIGN KEY (`id-resolutions`) REFERENCES `resolutions` (`id-resolutions`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_threed` FOREIGN KEY (`id-threed`) REFERENCES `threed` (`id-3d`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
