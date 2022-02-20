-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Фев 20 2022 г., 11:19
-- Версия сервера: 10.4.19-MariaDB
-- Версия PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `shogo_test`
--

-- --------------------------------------------------------

--
-- Структура таблицы `currency`
--

CREATE TABLE `currency` (
  `ID` int(10) NOT NULL,
  `NAME` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `currency`
--

INSERT INTO `currency` (`ID`, `NAME`) VALUES
(1, 'руб.'),
(2, 'dollars'),
(3, 'euros');

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `position` int(11) DEFAULT 0,
  `url` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `articul` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `price_old` decimal(10,2) NOT NULL,
  `notice` text DEFAULT NULL,
  `content` text DEFAULT NULL,
  `visible` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `position`, `url`, `name`, `articul`, `price`, `currency_id`, `price_old`, `notice`, `content`, `visible`) VALUES
(1, 359, 'https://www.dns-shop.ru/product/744f48f58f593332/185-monitor-hp-v19-cernyj/', '18.5\" Монитор HP V19 черный', '9TN42AA', '8499.00', 1, '10599.00', '1366x768@60 Гц, TN, 5 мс, 600 : 1, 200 Кд/м², 90°/65°, VGA (D-Sub)', 'Монитор HP V19 [9TN42AA] обладает базовым набором функций для продуктивной и комфортной работы на каждый день. Он оборудован качественной панелью TN с диагональю 18.5 дюйма, подсветкой LED и разрешающей способностью 1366x768 пикселей, на которой отображается четкая картинка. Матовое покрытие помогает предотвратить появление бликов, а для максимально комфортного и безопасного просмотра реализованы технологии защиты зрения. Для организации подключения к источнику изображения предусмотрен видеоразъем VGA (D-sub). HP V19 [9TN42AA] выполнен в классическом стиле и оборудован подставкой, предусматривающей регулировку угла наклона вперед/назад для простой настройки положения экрана.', 11),
(2, 498, 'https://www.dns-shop.ru/product/36fd296a15f13120/185-monitor-aoc-e970swn-cernyj/', '18.5\" Монитор AOC E970SWN черный', 'E970SWN', '9349.00', 1, '9499.00', '1366x768@60 Гц, TN, 5 мс, 700 : 1, 200 Кд/м², 90°/65°, VGA (D-Sub)', 'Монитор AOC e970Swn/01 с диагональю 18.5\" отличается компактностью и функциональностью. Устройство станет отличной составляющей Вашего рабочего компьютера. Модель весьма экономична в потреблении энергии: во время работы монитор поглощает не более 18 Вт, а в режиме ожидания – 0.5 Вт. Устройство соответствует стандарту энергосбережения Energy Star 6.0.\r\nОптимальные показатели яркости и контрастности обеспечивают точную передачу цвета, что важно при просмотре фотографий и фильмов. Монитор AOC e970Swn/01 укомплектован специальным настенным креплением с размерами 100x100 мм, с помощью которого легко фиксируется на вертикальной поверхности. Устройство снабжено входом VGA (D-Sub), который служит для передачи аналогового видеосигнала. Время отклика пикселя – не более 5 мс. Модель поддерживает более 16 млн цветов. Светодиодная LED-подсветка мягко и равномерно освещает экран. Частота обновления кадров составляет 76 Гц.', 11),
(3, 987, 'https://www.dns-shop.ru/product/887645de7fce8a5a/215-monitor-acer-k222hqlb-cernyj/', '21.5\" Монитор Acer K222HQLb черный', 'K222HQLb', '9499.00', 1, '11999.00', '1920x1080@60 Гц, TN, 5 мс, 1000 : 1, 200 Кд/м², 90°/65°, VGA (D-Sub)', '21.5\" Монитор Acer K222HQLb помещен в классический и лаконичный корпус, поэтому подойдет для использования в офисе или вместе с домашним ПК. Особенность модели в равномерной яркости (200 Кд/м²) и высокой контрастности (1000:1) изображения благодаря применению LED-подсветки. Экран значительно меньше мерцает, и нагрузка на глаза снижается даже при долгой непрерывной работе. Используется технология защиты зрения. Кроме того, светодиоды потребляют минимум электроэнергии, что делает устройство экономичным и экологичным.\r\nШирокоформатный экран с разрешением 1920x1080 просматривается под углами 90°/65° и способен передавать видео в Full HD-качестве. Матрица TN+film воспроизводит живую картинку видеороликов и игр с глубоким черным цветом. Отклик пикселей длиной в 5 мс обеспечивает быструю реакцию и точность.\r\nAcer K222HQLb имеет возможность крепления на стену для экономии места на рабочем столе. Монитор подключается к компьютеру посредством разъема VGA (D-sub).', 11),
(4, 10569, 'https://www.dns-shop.ru/product/2312d450095830b1/195-monitor-acer-v206hqlab-cernyj/', '19.5\" Монитор Acer V206HQLAb черный', 'V206HQLAb', '9599.00', 1, '12499.00', '1600x900@60 Гц, TN, 5 мс, 1000 : 1, 200 Кд/м², 90°/65°, VGA (D-Sub)', 'У монитора Acer V206HQLab множество достоинств. Его TN-матрица с матовым покрытием и светодиодной подсветкой порадует глаз пользователя без каких-либо бликов. Благодаря этому можно длительное время работать, не утомляя глаз.\r\nРазрешение экрана составляет 1600х900 пикселей. Время отклика – 5 мс, что говорит о плавности передачи изображения даже в динамичных эпизодах. Среди технологий следует отметить фирменную Acer «E-color», позволяющую в ручном режиме осуществить корректировку цветопередачи.\r\nУдобная подставка позволяет регулировать наклон в диапазоне от -5 до +25 °. Данная модель позиционируется как монитор для профессиональной работы, но отлично подойдет и для компьютерных игр.', 11),
(5, 598, 'https://www.dns-shop.ru/product/07130400cc801b80/195-monitor-hp-v20-cernyj/', '19.5\" Монитор HP V20 черный', 'V20', '9849.00', 1, '9999.00', '1600x900@60 Гц, TN, 5 мс, 600 : 1, 200 Кд/м², 90°/65°, HDMI, VGA (D-Sub)', 'Монитор HP V20 обладает классическим дизайном и востребованным функционалом на каждый день. В основе экрана содержится 19.5-дюймовая панель TN с разрешающей способностью 1600x900 пикселей и соотношением сторон 16:9. Матовое покрытие предотвращает появление бликов. А технологии защиты зрения повышают безопасность и комфорт просмотра. Для подключения к источникам изображения в мониторе HP V20 предлагаются интерфейсы HDMI и VGA (D-sub). Подставка характеризуется прямоугольной формой и возможностью настройки положения за счет регулировки угла наклона.', 11),
(6, 497, 'https://www.dns-shop.ru/product/d8ba4fa20c023332/215-monitor-philips-220v8l-cernyj/', '21.5\" Монитор Philips 220V8L черный', '220V8L', '9999.00', 1, '15899.00', '1920x1080@60 Гц, VA, 4 мс, 4000 : 1, 200 Кд/м², 178°/178°, VGA (D-Sub)', 'Монитор Philips 220V8L с диагональю 21.5\" установлен на подставку, что обеспечивает его устойчивость. Дисплей VA с поддержкой подсветки LED формирует живую и яркую картинку. Такой дисплей эффективен для работы в офисных программах, а также для просмотра веб-страниц, фото, а также для загрузки игровых приложений и работы с графическими приложениями. Благодаря технологии, которая способствует оптимизации обработки пикселей угол обзора расширяется до 178°/178°, поэтому экран демонстрирует детальное и четкое изображение.\r\nPhilips 220V8L обладает разрешением 1920x1080, что при поддержке показателей контрастности и яркости 4000:1 и 200 Кд/м² соответственно позволяет достичь получения детализированной картинки с реалистичной передачей цвета, максимально комфортной контрастностью и яркостью. Изображение оживет на глазах, что поэтому вы сможете насладиться им, для чего бы вы ни использовали монитор. Особенность модели в поддержки особой технологии, которая снижает мерцание, благодаря чему нагрузка на глаза становится меньше.', 11),
(7, 469, 'https://www.dns-shop.ru/product/0a7036488f5a3332/215-monitor-hp-v22-cernyj/', '21.5\" Монитор HP V22 черный', 'V22', '10849.00', 1, '10999.00', '1920x1080@60 Гц, TN, 5 мс, 1000 : 1, 250 Кд/м², 170°/160°, HDMI, VGA (D-Sub)', 'Монитор HP V22 [9SV80AA] представлен в классическом черном корпусе с прямым экраном на 21.5 дюймов и устойчивой подставкой с возможностью регулирования наклона. На корпусе имеется 2 видеоинтерфейса: HDMI и VGA. Комфортной эксплуатации способствует наличие матового (антибликового) покрытия и технологии защиты зрения.\r\nОборудование HP V22 [9SV80AA] обладает максимальным разрешением 1920x1080 dpi, оптимальными показателями яркости/контрастности, углом обзора 170° по горизонтали и 160° по вертикали. Допускается настенный монтаж с использованием кронштейна VESA 100x100. Прибор дополнен встроенным блоком питания и слотом для замка Kensington. Поставка осуществляется вместе с HDMI- и кабелем питания.', 11),
(8, 215, 'https://www.dns-shop.ru/product/f3103c111b163330/215-monitor-philips-223v5lhsb2-0001-cernyj/', '21.5\" Монитор Philips 223V5LHSB2 (00/01) черный', '223V5LHSB2 (00/01)', '10899.00', 1, '12999.00', '1920x1080@60 Гц, TN, 5 мс, 600 : 1, 200 Кд/м², 90°/65°, HDMI, VGA (D-Sub)', 'Монитор Philips 223V5LHSB2/00 привлекает внимание классическим дизайном, устойчивой подставкой и универсальной черной расцветкой. Увеличенный TN-экран обладает диагональю 21.5” при разрешении 1920х1080 и дополняется защитным матовым покрытием. Устройство весит 2.61 кг, а его габариты с учетом подставки составляют 50.3х37.6х21.3 см.\r\nМонитор дополнен технологией SmartContrast и функцией калибровки цвета. В комплектацию включен кабель питания. Устройство оснащено встроенным блоком питания, действующим при мощности 15.3 Вт. При эксплуатации в спящем режиме потребление снижается до 0.5 Вт. Используется конструкция VESA 100x100.\r\nМодель Philips 223V5LHSB2/00 дополнена возможностью регулирования наклона. Предусматривается наличие аудиовыхода для наушников и двух видеоинтерфейсов. Габариты видимой области экрана составляют 47.6х26.8 см. Уровень яркости достигает 200 кд/м², а параметры контрастности равны 600:1. Углы обзора по вертикали и горизонтали составляют 65 и 90 градусов соответственно.', 11),
(9, 123, 'https://www.dns-shop.ru/product/25e0dcf0caaf3120/215-monitor-philips-223v5lsb0100-cernyj/', '21.5\" Монитор Philips 223V5LSB/01(00) черный', '223V5LSB/01(00)', '11199.00', 1, '11599.00', '1920x1080@60 Гц, TN, 5 мс, 1000 : 1, 250 Кд/м², 170°/160°, VGA (D-Sub), DVI-D', 'Монитор Philips 223V5LSB/01(00) с диагональю 21.5\" и высоким разрешением 1920х1080 благодаря своим характеристикам отлично подойдет для работы и развлечений. Высокая динамическая контрастность (10M:1) и короткое время отклика пикселей (5 мс) обеспечивают комфортное времяпровождение в игровом процессе, а статическая контрастность 1000:1 и матовое покрытие экрана дают возможность без вреда для зрения проводить много времени за компьютером при работе с большими объемами документов. Встроенная технология SmartControl Lite позволяет произвести тонкую настройку различных параметров изображения при помощи мыши.\r\nМонитор Philips 223V5LSB/01(00) оборудован встроенным блоком питания, что избавляет пользователя от лишнего оборудования на рабочем месте. Низкое энергопотребление является неоспоримым преимуществом данного монитора (15.3 Вт при работе и 0.5 Вт в режиме ожидания). Стандартный кронштейн VESA 100х100 мм поможет закрепить монитор на стене в удобном для пользователя месте.', 11),
(10, 96, 'https://www.dns-shop.ru/product/cea54bb90c98c823/215-monitor-dell-se2222h-cernyj/', '21.5\" Монитор Dell SE2222H черный', 'SE2222H', '11299.00', 1, '11549.00', '1920x1080@60 Гц, VA, 8 мс, 3000 : 1, 250 Кд/м², 178°/178°, HDMI, VGA (D-Sub)', '21.5\" монитор Dell SE2222H подойдет для домашнего или офисного ПК. Матрица изготовлена по технологии VA, а ее разрешение – 1920x1080 пикселей. Изображение четкое, насыщенное, а углы обзора – 178 градусов по вертикали и горизонтали. Трехсторонний безрамочный дизайн станет преимуществом. Благодаря ему изображение на дисплее воспринимается совершенно иначе.\r\nМонитор Dell SE2222H получил интегрированный блок питания. Потребляемая им мощность – 22 Вт. Установка монитора происходит на комплектной подставке. Она дает возможность отрегулировать уровень наклона дисплея.\r\nПокрытие экрана матовое, оно исключает появление бликов от источников света в помещении. Видеоразъемы – HDMI, VGA (D-sub). Через них происходит подключение монитора к источнику сигнала. На дисплее с диагональю 21.5 дюйма удобно работать с несколькими программами сразу. Отметим компактные размеры монитора, для него не надо выделять много места на столе.', 11);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `products`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `products` (
`position` int(11)
,`url` varchar(255)
,`name` varchar(255)
,`articul` varchar(255)
,`price` decimal(10,2)
,`currency_id` int(10) unsigned
,`price_old` decimal(10,2)
,`notice` text
,`content` text
,`ID` int(10)
,`CURRENCY_NAME` varchar(255)
,`product_id` int(10) unsigned
,`section_id` int(10) unsigned
,`type_id` int(10) unsigned
,`PRODUCT_SECTION_ID` int(10) unsigned
,`section_name` varchar(255)
,`PRODUCT_TYPE_ID` int(10) unsigned
,`type_name` varchar(255)
);

-- --------------------------------------------------------

--
-- Структура таблицы `product_assignment`
--

CREATE TABLE `product_assignment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `section_id` int(10) UNSIGNED NOT NULL,
  `type_id` int(10) UNSIGNED NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product_assignment`
--

INSERT INTO `product_assignment` (`id`, `product_id`, `section_id`, `type_id`, `visible`) VALUES
(1, 1, 2, 1, 11),
(2, 2, 2, 1, 11),
(3, 3, 2, 1, 11),
(4, 4, 2, 1, 11),
(5, 5, 2, 1, 11),
(6, 6, 2, 1, 11),
(7, 7, 2, 1, 11),
(8, 8, 2, 1, 11),
(9, 9, 2, 1, 11),
(10, 10, 2, 1, 11);

-- --------------------------------------------------------

--
-- Структура таблицы `product_param_name`
--

CREATE TABLE `product_param_name` (
  `id` int(10) UNSIGNED NOT NULL,
  `position` int(11) DEFAULT 0,
  `visible` tinyint(1) NOT NULL,
  `name` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product_param_name`
--

INSERT INTO `product_param_name` (`id`, `position`, `visible`, `name`) VALUES
(1, 1, 11, 'Diagonal'),
(2, 2, 11, 'Frequency'),
(3, 3, 11, 'Weight');

-- --------------------------------------------------------

--
-- Структура таблицы `product_param_variant`
--

CREATE TABLE `product_param_variant` (
  `id` int(10) UNSIGNED NOT NULL,
  `param_id` int(10) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `position` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product_param_variant`
--

INSERT INTO `product_param_variant` (`id`, `param_id`, `name`, `position`) VALUES
(1, 1, '18.5', 359),
(2, 1, '19.5', 10569),
(3, 1, '21.5', 497);

-- --------------------------------------------------------

--
-- Структура таблицы `product_section`
--

CREATE TABLE `product_section` (
  `id` int(10) UNSIGNED NOT NULL,
  `position` int(11) DEFAULT 0,
  `url` varchar(255) NOT NULL,
  `section_name` varchar(255) NOT NULL,
  `notice` text DEFAULT NULL,
  `visible` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product_section`
--

INSERT INTO `product_section` (`id`, `position`, `url`, `section_name`, `notice`, `visible`) VALUES
(1, 1, 'section.php?sectionId=1', 'Appliances', NULL, 11),
(2, 2, 'section.php?sectionId=2', 'Computers and accessories', NULL, 11);

-- --------------------------------------------------------

--
-- Структура таблицы `product_type`
--

CREATE TABLE `product_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `position` int(11) DEFAULT 0,
  `url` varchar(255) NOT NULL,
  `type_name` varchar(255) NOT NULL,
  `notice` text DEFAULT NULL,
  `visible` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product_type`
--

INSERT INTO `product_type` (`id`, `position`, `url`, `type_name`, `notice`, `visible`) VALUES
(1, 1, 'categories.php?categoryId=1', 'Monitors', NULL, 11),
(2, 2, 'categories.php?categoryId=2', 'Laptops', NULL, 11);

-- --------------------------------------------------------

--
-- Структура для представления `products`
--
DROP TABLE IF EXISTS `products`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `products`  AS SELECT `product`.`position` AS `position`, `product`.`url` AS `url`, `product`.`name` AS `name`, `product`.`articul` AS `articul`, `product`.`price` AS `price`, `product`.`currency_id` AS `currency_id`, `product`.`price_old` AS `price_old`, `product`.`notice` AS `notice`, `product`.`content` AS `content`, `currency`.`ID` AS `ID`, `currency`.`NAME` AS `CURRENCY_NAME`, `product_assignment`.`product_id` AS `product_id`, `product_assignment`.`section_id` AS `section_id`, `product_assignment`.`type_id` AS `type_id`, `product_section`.`id` AS `PRODUCT_SECTION_ID`, `product_section`.`section_name` AS `section_name`, `product_type`.`id` AS `PRODUCT_TYPE_ID`, `product_type`.`type_name` AS `type_name` FROM ((((`product` join `currency`) join `product_assignment`) join `product_section`) join `product_type`) WHERE `product`.`currency_id` = `currency`.`ID` AND `product`.`id` = `product_assignment`.`product_id` AND `product_assignment`.`section_id` = `product_section`.`id` AND `product_assignment`.`type_id` = `product_type`.`id` ;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `url` (`url`),
  ADD KEY `currency_id` (`currency_id`);

--
-- Индексы таблицы `product_assignment`
--
ALTER TABLE `product_assignment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `section_id` (`section_id`),
  ADD KEY `type_id` (`type_id`),
  ADD KEY `visible` (`visible`);

--
-- Индексы таблицы `product_param_name`
--
ALTER TABLE `product_param_name`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product_param_variant`
--
ALTER TABLE `product_param_variant`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `value` (`param_id`,`name`(64)),
  ADD KEY `param_id` (`param_id`);

--
-- Индексы таблицы `product_section`
--
ALTER TABLE `product_section`
  ADD PRIMARY KEY (`id`),
  ADD KEY `url` (`url`);

--
-- Индексы таблицы `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `url` (`url`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `currency`
--
ALTER TABLE `currency`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `product_assignment`
--
ALTER TABLE `product_assignment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `product_param_name`
--
ALTER TABLE `product_param_name`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `product_param_variant`
--
ALTER TABLE `product_param_variant`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `product_section`
--
ALTER TABLE `product_section`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `product_type`
--
ALTER TABLE `product_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `product_assignment`
--
ALTER TABLE `product_assignment`
  ADD CONSTRAINT `product_assignment_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `product_assignment_ibfk_2` FOREIGN KEY (`section_id`) REFERENCES `product_section` (`id`),
  ADD CONSTRAINT `product_assignment_ibfk_3` FOREIGN KEY (`type_id`) REFERENCES `product_type` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
