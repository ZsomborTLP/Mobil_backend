-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Jan 10. 11:13
-- Kiszolgáló verziója: 10.4.28-MariaDB
-- PHP verzió: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `zarodolgozat_adatb`
--
CREATE DATABASE IF NOT EXISTS `zarodolgozat_adatb` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `zarodolgozat_adatb`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `alkatreszek`
--

CREATE TABLE `alkatreszek` (
  `alkatresz_id` int(11) NOT NULL,
  `alkatresz_info` varchar(255) NOT NULL,
  `alkatresz_megjelenes` date NOT NULL,
  `alkatresz_garancia` int(11) NOT NULL,
  `alkatresz_ar` int(11) NOT NULL,
  `alkatresz_kep` varchar(100) NOT NULL,
  `alkatresz_eszkozid` int(11) NOT NULL,
  `alkatresz_komponensid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `alkatreszek`
--

INSERT INTO `alkatreszek` (`alkatresz_id`, `alkatresz_info`, `alkatresz_megjelenes`, `alkatresz_garancia`, `alkatresz_ar`, `alkatresz_kep`, `alkatresz_eszkozid`, `alkatresz_komponensid`) VALUES
(1, 'ASRock B450M PRO4 AMD B450 SocketAM4 mATX\n', '2018-01-01', 3, 45900, 'kep01.jpg', 1, 2),
(2, 'Corsair 32GB DDR4 3200MHz Kit(2x16GB) Vengeance RGB Pro Black', '2023-03-29', 3, 36299, 'kep02.jpg', 1, 3),
(3, 'Kingston 32GB DDR4 2666MHz (2x16GB) Fury Beast', '2021-11-02', 1, 28699, 'kep03.jpg', 1, 3),
(4, 'Asus ROG Strix 850W - Fekete [Moduláris, 80+ Gold]', '2023-03-28', 1, 54999, 'kep4.jpg', 1, 6),
(5, 'Aerocool Cylon RGB 700W 80+', '2021-09-13', 1, 20699, 'kep5.jpg', 1, 6),
(6, 'Inter-Tech IT-6505 Retro Micro Tower Fekete', '2021-09-13', 1, 15899, 'kep6.jpg', 1, 5),
(7, 'Zalman Z3 Neo RGB (Ablakos) - Fekete', '2022-03-28', 2, 18999, 'kep7.jpg', 1, 5),
(8, 'Kingston A400 480GB [2.5\"/SATA3]', '2021-09-13', 1, 13399, 'kep8.jpg', 1, 7),
(9, 'AMD Ryzen 7 5700X AM4', '2022-04-28', 3, 73799, 'kep9.jpg', 1, 4),
(10, 'Intel Core i5 12400F BOX', '2021-12-31', 3, 58799, 'kep10.jpg', 1, 4),
(12, 'Xbox Vezeték nélküli Kontroller (Stormcloud Vapor Special Edition)', '2023-08-08', 1, 24890, 'kep11.jpg', 4, 8),
(13, 'Nacon Xbox Series Pro Compact Kontroller - (Pastel Blue)', '2022-11-01', 1, 9990, 'kep12.jpg', 4, 8),
(14, 'Nintendo Switch Pro Kontroller', '2019-05-16', 2, 29999, 'kep13.jpg', 2, 8),
(15, 'Nintendo Switch Joy-Con (Pair) (Red-Blue)', '2019-08-21', 2, 29999, 'kep14.jpg', 2, 8),
(16, 'Nintendo Switch Mario Kart Racing Wheel Pro Mini (HORI)', '2019-04-17', 2, 22999, 'kep15.jpg', 2, 8),
(17, 'PlayStation 5 (PS5) DualSense™ kontroller (Cobalt Blue)', '2022-10-18', 1, 27890, 'kep16.jpg', 3, 8),
(18, 'PULSE Explore™ vezeték nélküli fülhallgató', '2022-07-22', 3, 89999, 'kep17.jpg', 3, 8),
(19, 'Logitech G29 Driving Force Racing Kormány', '2019-04-17', 2, 97999, 'kep18.jpg', 3, 8),
(20, 'Playstation 4 (PS4) Dualshock 4 kontroller (Black) ', '2016-09-15', 1, 23999, 'kep19.jpg', 3, 8),
(21, 'Playstation 4 (PS4) Nacon Revolution Pro Unlimited Kontroller', '2020-11-10', 2, 44990, 'kep20.jpg', 3, 8),
(30, 'Radeon RX-580, 8GB, GDDR5, 256 bit\n', '2017-04-18', 2, 76000, 'kep23.jpg', 1, 1),
(31, 'ASUS Dual GeForce RTX 4060 OC, 8 GB GDDR6, 128-bit', '2023-06-29', 2, 160000, 'kep24.jpg', 1, 1),
(32, 'AMD Ryzen 7 7800X3D 4.4GHz 8-Cores Box Processzor', '2013-02-14', 1, 160000, 'kep25.jpg', 1, 4),
(33, 'Intel Core i5-13600K 3.5GHz 14-Core Box Processzor\r\n', '2023-06-20', 3, 122000, 'kep26.jpg', 1, 4),
(34, 'Intel Core i9-14900K 3.2GHz Box Processzor', '2023-10-17', 2, 248999, 'kep27.jpg', 1, 4),
(35, 'Intel Core i7-13700K 2.5GHz 16-Core Box Processzor', '2022-08-03', 3, 160000, 'kep28.jpg', 1, 4),
(36, 'AMD Ryzen 5 4500 6-Core 3.6GHz AM4 Box Processzor', '2022-04-04', 2, 25999, 'kep29.jpg', 1, 4),
(37, 'SAPPHIRE PULSE AMD Radeon RX 6700 XT 12GB GDDR6 192bit', '2023-03-17', 4, 148999, 'kep30.jpg', 1, 1),
(38, 'SAPPHIRE Radeon RX 7800 XT NITRO 16G GDDR6 ', '2023-08-25', 3, 239999, 'kep31.jpg', 1, 1),
(39, 'ASUS GeForce RTX 4090 OC 24GB GDDR6X', '2023-01-09', 3, 999990, 'kep32.jpg', 1, 1),
(40, 'GIGABYTE GeForce RTX 4070 WINDFORCE 12G GDDR6X OC', '2023-04-13', 4, 247000, 'kep33.jpg', 1, 1),
(41, 'ASRock Intel Arc A770 Phantom Gaming D 8GB OC', '2022-01-28', 2, 99990, 'kep35.jpg', 1, 1),
(42, 'ASUS TUF GAMING Z690-PLUS', '2023-01-04', 2, 143700, 'kep36.jpg', 1, 2),
(43, 'MSI MAG B650 Tomahawk WIFI Alaplap', '2022-09-04', 3, 80990, 'kep37.jpg', 1, 2),
(44, 'ASRock H310CM-DVS', '2018-09-12', 2, 17290, 'kep38.jpg', 1, 2),
(45, 'ASUS TUF GAMING B760M-PLUS', '2023-05-30', 3, 64990, 'kep39.jpg', 1, 2),
(46, 'GIGABYTE Z790 AORUS ELITE AX', '2022-10-31', 3, 105790, 'kep40.jpg', 1, 2),
(47, 'ASUS ROG MAXIMUS Z690 HERO EVA EDITION', '2023-04-29', 4, 230000, 'kep41.png', 1, 2),
(48, 'G.SKILL Aegis 16GB (2x8GB) DDR4 3000MHz F4-3000C16D-16GISB', '2022-08-12', 1, 13690, 'kep42.jpg', 1, 3),
(49, 'Kingston FURY Beast RGB 32GB (2x16GB) DDR4 3200MHz KF432C16BBAK2/32', '2023-01-12', 2, 28290, 'kep43.jpg', 1, 3),
(50, 'G.SKILL Trident Z5 Neo RGB 32GB (2x16GB) DDR5 6000MHz F5-6000J3038F16GX2-TZ5NR', '2023-07-19', 3, 56390, 'kep44.jpg', 1, 3),
(51, 'Kingston FURY Renegade 32GB (2x16GB) DDR5 6000MHz KF560C32RSK2-32', '2023-11-09', 2, 50600, 'kep45.jpg', 1, 3),
(52, 'G.SKILL Ripjaws V K2 32GB (2x16GB) DDR4 3600MHz F4-3600C18D-32GVK', '2022-07-24', 1, 28400, 'kep46.jpg', 1, 3),
(53, 'NZXT H7 Flow CM-H71FG', '2022-08-06', 3, 44490, 'kep47.jpg', 1, 5),
(54, 'be quiet! Pure Base 500DX (BGW37/BGW38)', '2022-03-17', 2, 41940, 'kep48.png', 1, 5),
(55, 'Aerocool CS-107 V1 (CS-107-A-BK-V1)', '2021-11-29', 2, 8990, 'kep49.jpg', 1, 5),
(56, 'Zalman S2 TG', '2020-12-21', 1, 14390, 'kep50.png', 1, 5),
(57, 'Fractal Design NORTH charc TG (FD-C-NOR1C-02)', '2023-09-26', 2, 63900, 'kep51.png', 1, 5),
(58, 'Lian Li LANCOOL 216 ARGB', '2023-08-23', 3, 45400, 'kep52.jpg', 1, 5),
(59, 'ASUS ROG Strix Helios EVA Edition', '2023-08-12', 4, 257620, 'kep53.jpg', 1, 5),
(60, 'Seasonic G12 GC-750W Gold (1Y751GCRT3A10X)', '2019-09-17', 2, 34625, 'kep54.jpg', 1, 6),
(61, 'GIGABYTE GP-UD750GM\r\n', '2022-08-25', 1, 33650, 'kep55.jpg', 1, 6),
(62, 'Approx APP500LITEBV2 500W', '2022-06-04', 2, 5800, 'kep56.jpg', 1, 6),
(63, 'be quiet! Pure Power 12 M 750W 80+ Gold (BN343)', '2023-06-27', 2, 46790, 'kep57.jpg', 1, 6),
(64, 'CHIEFTEC CSN-650C 650W Gold', '2022-10-28', 3, 25770, 'kep58.jpg', 1, 6),
(65, 'Kingston NV2 1TB M.2 PCIe NVMe (SNV2S/1000G)', '2023-07-14', 2, 20990, 'kep59.jpg', 1, 7),
(66, 'Kingston KC3000 1TB M 2 NVMe PCIe (SKC3000S/1024G)', '2021-08-02', 1, 33990, 'kep60.jpg', 1, 7),
(67, 'Kingston FURY Renegade 1TB M.2 PCIe NVMe (SFYRS/1000G)', '2023-07-28', 1, 34690, 'kep61.jpg', 1, 7),
(68, 'Samsung 2.5 870 EVO 1TB SATA3 (MZ-77E1T0B)', '2023-09-21', 3, 32990, 'kep62.jpg', 1, 7),
(69, 'Seagate Lange 15.36TB SAS 12Gb/s, 15mm, 0.7DWPD, SED, HF, RoHS - XS15360TE70014', '2023-12-01', 5, 2386099, 'kep63.jpg', 1, 7),
(70, 'Thrustmaster T-3PM Pedals', '2019-09-27', 2, 49990, 'kep64.jpg\n', 4, 8),
(71, 'Thrustmaster Racing Clamp\r\n', '2020-06-09', 2, 41790, 'kep65.jpg', 3, 8),
(72, 'Logitech Driving Force Shifter', '2021-11-29', 3, 17890, 'kep66.jpg', 4, 8);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `eszkozok`
--

CREATE TABLE `eszkozok` (
  `eszkozok_id` int(11) NOT NULL,
  `eszkozok_nev` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `eszkozok`
--

INSERT INTO `eszkozok` (`eszkozok_id`, `eszkozok_nev`) VALUES
(1, 'Pc\r\n'),
(2, 'Nintendo'),
(3, 'PlayStation'),
(4, 'Xbox');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `hasznalttermekek`
--

CREATE TABLE `hasznalttermekek` (
  `hasznalt_id` int(11) NOT NULL,
  `hasznalt_info` varchar(255) NOT NULL,
  `hasznalt_feltettev` date NOT NULL,
  `hasznalt_eladoEmail` varchar(255) NOT NULL,
  `hasznalt_allapot` varchar(255) NOT NULL,
  `hasznalt_ar` int(11) NOT NULL,
  `hasznalt_kep` varchar(255) NOT NULL,
  `hasznalt_eszkozid` int(11) NOT NULL,
  `hasznalt_komponensid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `hasznalttermekek`
--

INSERT INTO `hasznalttermekek` (`hasznalt_id`, `hasznalt_info`, `hasznalt_feltettev`, `hasznalt_eladoEmail`, `hasznalt_allapot`, `hasznalt_ar`, `hasznalt_kep`, `hasznalt_eszkozid`, `hasznalt_komponensid`) VALUES
(8, 'Fejhallgató', '2023-12-11', 'Papo@gmail.com', 'Uj', 17690, 'photo_1702297303724_photo.jpg', 2, 2),
(15, 'Gamer pc', '2023-12-11', 'faur0zsombor@gmail.com', 'Új', 540000, 'photo_1704439198175_photo.jpg', 2, 8),
(16, 'Gamer pc', '2023-12-11', 'faur0zsombor@gmail.com', 'Új', 540000, 'photo_1704439258206_photo.jpg', 2, 8),
(17, 'Gamer pc', '2023-12-11', 'faur0zsombor@gmail.com', 'Új', 540000, 'photo_1704439266114_photo.jpg', 2, 8);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `jatekok`
--

CREATE TABLE `jatekok` (
  `jatekok_id` int(11) NOT NULL,
  `jatekok_nev` varchar(255) NOT NULL,
  `jatekok_db` int(11) NOT NULL,
  `jatekok_megjelenes` date NOT NULL,
  `jatekok_ar` int(11) NOT NULL,
  `jatekok_kep` varchar(100) NOT NULL,
  `jatekok_eszkozid` int(11) NOT NULL,
  `jatekok_trailer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `jatekok`
--

INSERT INTO `jatekok` (`jatekok_id`, `jatekok_nev`, `jatekok_db`, `jatekok_megjelenes`, `jatekok_ar`, `jatekok_kep`, `jatekok_eszkozid`, `jatekok_trailer`) VALUES
(1, 'Forza Horizon 5 ', 8, '2021-11-01', 12990, 'kep111.jpg', 4, 'https://www.youtube.com/embed/FYH9n37B7Yw?si=ZwfrgWezqUIm-SOn'),
(2, 'Forza Horizon 5 ', 5, '2021-11-01', 13990, 'kep112.jpg', 1, 'https://www.youtube.com/embed/FYH9n37B7Yw?si=ZIySiElO4rWAhYNS'),
(3, 'The Sims 4 - For Rent (EP15)\r\n', 3, '2023-12-07', 15399, 'kep113.jpg', 1, 'https://www.youtube.com/embed/sdhU5tRCqYc?si=JMfv3DEoMv6qoEm2'),
(4, 'Plants Vs Zombies: Battle For Neighborville\r\n', 54, '2019-10-18', 3990, 'kep114.jpg', 1, 'https://www.youtube.com/embed/RwYjx4VPzx0?si=O8P7hZ9KSD3T96ha'),
(5, 'LEGO The Hobbit\r\n', 23, '2014-04-11', 1499, 'kep115.jpg', 4, 'https://www.youtube.com/embed/83OMunaBvqU?si=ckQUokZMFjeMNr09'),
(6, 'Dead Space\r\n', 2, '2023-01-27', 8990, 'kep116.jpg', 1, 'https://www.youtube.com/embed/ctQl9wa3ydE?si=2dYuJQMjikedscpQ'),
(7, 'The Witcher 3: Wild Hunt Game of The Year Edition (GOTY)', 14, '2016-08-30', 6990, 'kep117.jpg', 4, 'https://www.youtube.com/embed/Vr27jM9Lk6M?si=sslMNa8MpQ8_AU_v'),
(8, 'Jujutsu Kaisen Cursed Clash\r\n', 0, '2024-02-02', 24999, 'kep118.jpg', 4, 'https://www.youtube.com/embed/7jk31aQbHwA?si=UG1T6Vo7VWU2LPyc'),
(9, 'Red Dead Redemption 2\r\n', 12, '2018-10-26', 9990, 'kep119.jpg', 4, 'https://www.youtube.com/embed/gmA6MrX81z4?si=QpUEL-fM0A76ey1G'),
(10, 'Call of Duty: Modern Warfare (2019)\r\n', 29, '2019-10-25', 11990, 'kep120.jpg', 4, 'https://www.youtube.com/embed/bH1lHCirCGI?si=dURWgqDfqo4q57Xh'),
(11, 'Nintendo Super Smash Bros. Ultimate (Super Smash Bros. Ultimate)', 5, '2018-06-19', 19999, 'kep121.jpg', 2, 'https://www.youtube.com/embed/cjdfqXIM-Ko?si=ikIup2DCiFplOkR9'),
(12, 'Animal Crossing: New Horizons', 7, '2020-04-23', 18999, 'kep122.jpg', 2, 'https://www.youtube.com/embed/_3YNL0OWio0?si=ZTJcfnTMn1rKeHy1'),
(13, 'The Legend of Zelda: Tears of the Kingdom', 24, '2023-03-15', 23999, 'kep123.jpg', 2, 'https://www.youtube.com/embed/2SNF4M_v7wc?si=W0tGMnaMGEzvaDDT'),
(14, 'Luigi\'s Mansion 3', 9, '2019-09-12', 14999, 'kep124.jpg', 2, 'https://www.youtube.com/embed/RSGgCfbYrg0?si=vYt3TmxHNxGfhJOc'),
(15, 'Pokémon Legends: Arceus', 12, '2022-12-14', 22999, 'kep125.jpg', 2, 'https://www.youtube.com/embed/wOEHUANP-vo?si=wY56-2CmlwrvgBk8'),
(16, 'Demon\'s Souls', 6, '2020-09-15', 20000, 'kep126.jpg', 3, 'https://www.youtube.com/embed/2TMs2E6cms4?si=6elTPWVGwrRcijDl'),
(17, 'Ghost of Tsushima', 6, '2020-07-07', 18999, 'kep127.jpg', 3, 'https://www.youtube.com/embed/rTNfgIAi3pY?si=gSAxOm6b1kUXeX2Q'),
(18, 'God of War Ragnarök', 6, '2023-05-24', 23999, 'kep128.jpg', 3, 'https://www.youtube.com/embed/hfJ4Km46A-0?si=ha0i3u8L73dPInfu'),
(19, 'The Last of Us Part II', 6, '2020-03-18', 22999, 'kep129.jpg', 3, 'https://www.youtube.com/embed/Ye3st9z6jQY?si=Wn5ErKBvfi90bB-2'),
(20, 'Horizon Forbidden West', 6, '2022-08-17', 19999, 'kep130.jpg', 3, 'https://www.youtube.com/embed/Lq594XmpPBg?si=9oeQpDUbaoDt_JYE'),
(21, 'Dragon’s Dogma II', 5, '2024-01-01', 30000, 'kep131.jpg', 3, 'https://www.youtube.com/embed/cT0rIgaiPWA?si=9_S2w3p7YkeTrCi8'),
(22, 'Rise of the Ronin', 4, '2024-01-02', 25000, 'kep132.jpg', 3, 'https://www.youtube.com/embed/zS8EvlTGCiE?si=8P_1vkUhMBB2_jCl'),
(23, 'Avatar: Frontiers of Pandora', 17, '2023-11-15', 27999, 'kep133.jpg', 3, 'https://www.youtube.com/embed/RDzw1EKnaIA?si=yX6l92PAR4W9Invr'),
(24, 'A Plague Tale: Innocence', 8, '2023-10-18', 11999, 'kep134.jpg', 3, 'https://www.youtube.com/embed/H4FOb16Nenk?si=QFloIpvMX-I9Qudh'),
(25, 'Star Wars: Jedi Survivor', 7, '2023-03-22', 26999, 'kep135.jpg', 3, 'https://www.youtube.com/embed/VRaobDJjiec?si=_w7HJoQvFoGDvWh7'),
(26, 'Tekken 8: Ultimate Edition\r\nPC', 5, '2024-01-07', 42999, 'kep136.jpg', 1, 'https://www.youtube.com/embed/9jJiNa4HoD0?si=RU0fvt6k9C-ZJvw2'),
(27, 'Cyberpunk 2077 Ultimate Edition', 2077, '2018-11-19', 14000, 'kep137.jpg', 1, 'https://www.youtube.com/embed/Ugb80d5lxEM?si=ns1WPgtmEXrsQ4yM'),
(28, 'Need for Speed Unbound\r\nPC', 4, '2023-05-10', 19999, 'kep138.jpg', 1, 'https://www.youtube.com/embed/H2Y8XCe7F9E?si=NAdhDAyGIihE4wFe'),
(29, 'It Takes Two', 6, '2023-05-17', 14999, 'kep139.jpg', 1, 'https://www.youtube.com/embed/GAWHzGNcTEw?si=406qQ9_rMin-GIgf'),
(30, 'EA Sports FC 24\r\nPC', 4, '2023-07-13', 24999, 'kep140.jpg', 1, 'https://www.youtube.com/embed/XhP3Xh4LMA8?si=Mp_vPKcWvsMtxCnr'),
(31, 'Omori', 7, '2022-09-21', 14000, 'kep141.jpg', 2, 'https://www.youtube.com/embed/erzgjfU271g?si=oc6nJL3NJG1Eq0Na'),
(32, 'Demon Slayer - Kimetsu no Yaiba - Sweep the Board!', 6, '2022-03-24', 25999, 'kep142.jpg', 2, 'https://www.youtube.com/embed/Q5Y8-Qccxo4?si=fKC4aRyYrAEQ4AK8'),
(33, 'Super Mario Bros. Wonder', 11, '2020-06-10', 22680, 'kep143.jpg', 2, 'https://www.youtube.com/embed/XvQNlGKNC6o?si=3sjOCCWCagD1RM7x'),
(34, 'Metroid Prime 4', 1, '2024-05-22', 44500, 'kep144.jpg', 2, 'https://www.youtube.com/embed/nFbDmTjS_MI?si=CuMGSsw2xFg5nPtu'),
(35, 'Eiyuden Chronicles: Hundred Heroes', 5, '2023-07-20', 22590, 'kep145.jpg', 2, 'https://www.youtube.com/embed/wCd2voodS08?si=WzJieNbJ2EKBnWPI'),
(36, 'Skull and Bones Premium Edition', 22, '2024-06-10', 44000, 'kep146.jpg', 4, 'https://www.youtube.com/embed/aJy3FXGb6ok?si=mu03oDHI4Ycruy2c'),
(37, 'CYGNI: All Guns Blazing', 15, '2023-12-05', 22350, 'kep147.jpg', 4, 'https://www.youtube.com/embed/cE2g5wIpB-Y?si=yZv19OXGntVSt2-T'),
(38, 'Metal Gear Solid: Master Collection Vol. 1', 9, '2023-11-08', 18999, 'kep148.jpg', 4, 'https://www.youtube.com/embed/Ej-I-Qv8UkE?si=SwcC5WonulWLhh_v'),
(39, 'Hogwarts Legacy', 12, '2023-05-13', 24666, 'kep148.jpg', 4, 'https://www.youtube.com/embed/BtyBjOW8sGY?si=Z_ZJpJZvNd2EyTkX'),
(40, 'Starfield', 22, '2023-05-25', 33000, 'kep148.jpg', 4, 'https://www.youtube.com/embed/kfYEiTdsyas?si=ba4EDCZuN82zRJVN'),
(41, 'Watch Dogs Legion', 11, '2022-07-15', 4999, 'kep150.jpg', 4, 'https://www.youtube.com/embed/srXrGKGAU20?si=pROQA15Ng6t_Wrcd');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `komponens`
--

CREATE TABLE `komponens` (
  `komponens_id` int(11) NOT NULL,
  `komponens_nev` varchar(255) NOT NULL,
  `komponens_eszkozokid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `komponens`
--

INSERT INTO `komponens` (`komponens_id`, `komponens_nev`, `komponens_eszkozokid`) VALUES
(1, 'Videókártya', 1),
(2, 'Alaplap', 1),
(3, 'Memória', 1),
(4, 'Processzor', 1),
(5, 'Számítógépház', 1),
(6, 'Tápegység', 1),
(7, 'SSD', 1),
(8, 'Egyéb', 4);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `rendeles`
--

CREATE TABLE `rendeles` (
  `rendeles_id` int(11) NOT NULL,
  `rendeles_nev` varchar(255) NOT NULL,
  `rendeles_email` varchar(100) NOT NULL,
  `rendeles_telefonszam` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `rendeles`
--

INSERT INTO `rendeles` (`rendeles_id`, `rendeles_nev`, `rendeles_email`, `rendeles_telefonszam`) VALUES
(23, 'Fekete Zoltán Imre', 'Fekazol@gmail.com', '06209856478'),
(24, 'Masztur Bàlint', 'aranyicsbalint69@gmail.com', '06201234567'),
(25, 'Csoro janos', 'Hasznaltnyiregyhaza@gmail.com', '0655555555'),
(26, 'Kerekes Ákos ', 'Káká@gmail.com', '06203555890'),
(27, 'Kerekes Ákos ', 'Káká@gmail.com', '06203555890'),
(28, 'Nemes András ', 'NemAndras@gmail.con', '06303556309'),
(29, 'Kövér Anna', 'KAnna@freemail.hu', '06208569345'),
(30, 'Mikulas', 'Mikulas@gmail.com', 'Isjnsksow'),
(31, 'Hduu', 'Hddu@gmail.com', '0568337'),
(32, 'Aazz', 'Ztf', '88599'),
(33, 'Aazz', 'Ztf', '88599'),
(34, 'Aazz', 'Ztf', '88599'),
(35, 'Zz', 'Hgg', 'Ggh'),
(36, 'Hzg', 'Gg', 'Ggg'),
(37, 'Hhh', 'Gggg', 'Ghh849'),
(38, 'Hhh', 'Hgg', '78899'),
(39, 'Hdzug', 'Ggg', 'Hhg'),
(40, 'Hhgg', 'Gfc', 'Ftu'),
(41, 'Jó gg', 'Gggg', 'Juh'),
(42, 'Bhzg', 'Fffg', 'Uu'),
(43, '7tufjh', 'Hhgz', 'Zuioo'),
(44, 'Huu', 'Hhgg', '96968'),
(45, '777', 'Uzzh', 'Jjii'),
(46, '7uufivi', 'Uggg', 'Hjii99'),
(47, 'Huu', 'Gff', 'Uu'),
(48, 'Ze6d', 'Hxgx', 'Hfuf7'),
(49, 'Hfhhh', 'Hggft', 'Uuui'),
(50, 'Hu', 'Zz', 'Rff'),
(51, 'Jwkskk', 'J2ii2o2', 'Jwkow'),
(52, 'Ifuh', 'Ggg', 'Hii'),
(53, 'Hg', 'Gfffjo', '9987');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `alkatreszek`
--
ALTER TABLE `alkatreszek`
  ADD PRIMARY KEY (`alkatresz_id`),
  ADD KEY `alkatresz_eszkozid` (`alkatresz_eszkozid`),
  ADD KEY `alkatresz_komponensid` (`alkatresz_komponensid`);

--
-- A tábla indexei `eszkozok`
--
ALTER TABLE `eszkozok`
  ADD PRIMARY KEY (`eszkozok_id`);

--
-- A tábla indexei `hasznalttermekek`
--
ALTER TABLE `hasznalttermekek`
  ADD PRIMARY KEY (`hasznalt_id`),
  ADD KEY `hasznalt_eszkozid` (`hasznalt_eszkozid`,`hasznalt_komponensid`),
  ADD KEY `hasznalt_komponensid` (`hasznalt_komponensid`);

--
-- A tábla indexei `jatekok`
--
ALTER TABLE `jatekok`
  ADD PRIMARY KEY (`jatekok_id`),
  ADD KEY `jatekok_eszkozid` (`jatekok_eszkozid`);

--
-- A tábla indexei `komponens`
--
ALTER TABLE `komponens`
  ADD PRIMARY KEY (`komponens_id`),
  ADD KEY `komponens_eszkozokid` (`komponens_eszkozokid`);

--
-- A tábla indexei `rendeles`
--
ALTER TABLE `rendeles`
  ADD PRIMARY KEY (`rendeles_id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `alkatreszek`
--
ALTER TABLE `alkatreszek`
  MODIFY `alkatresz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT a táblához `eszkozok`
--
ALTER TABLE `eszkozok`
  MODIFY `eszkozok_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT a táblához `hasznalttermekek`
--
ALTER TABLE `hasznalttermekek`
  MODIFY `hasznalt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT a táblához `jatekok`
--
ALTER TABLE `jatekok`
  MODIFY `jatekok_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT a táblához `komponens`
--
ALTER TABLE `komponens`
  MODIFY `komponens_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT a táblához `rendeles`
--
ALTER TABLE `rendeles`
  MODIFY `rendeles_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `alkatreszek`
--
ALTER TABLE `alkatreszek`
  ADD CONSTRAINT `alkatreszek_ibfk_1` FOREIGN KEY (`alkatresz_eszkozid`) REFERENCES `eszkozok` (`eszkozok_id`),
  ADD CONSTRAINT `alkatreszek_ibfk_2` FOREIGN KEY (`alkatresz_komponensid`) REFERENCES `komponens` (`komponens_id`);

--
-- Megkötések a táblához `hasznalttermekek`
--
ALTER TABLE `hasznalttermekek`
  ADD CONSTRAINT `hasznalttermekek_ibfk_1` FOREIGN KEY (`hasznalt_eszkozid`) REFERENCES `eszkozok` (`eszkozok_id`),
  ADD CONSTRAINT `hasznalttermekek_ibfk_2` FOREIGN KEY (`hasznalt_komponensid`) REFERENCES `komponens` (`komponens_id`);

--
-- Megkötések a táblához `jatekok`
--
ALTER TABLE `jatekok`
  ADD CONSTRAINT `jatekok_ibfk_1` FOREIGN KEY (`jatekok_eszkozid`) REFERENCES `eszkozok` (`eszkozok_id`);

--
-- Megkötések a táblához `komponens`
--
ALTER TABLE `komponens`
  ADD CONSTRAINT `komponens_ibfk_1` FOREIGN KEY (`komponens_eszkozokid`) REFERENCES `eszkozok` (`eszkozok_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
