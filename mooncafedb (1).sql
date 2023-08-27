-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 11 May 2023, 17:45:01
-- Sunucu sürümü: 10.4.27-MariaDB
-- PHP Sürümü: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `mooncafedb`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cm_category`
--

CREATE TABLE `cm_category` (
  `Id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `imagePath` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `cm_category`
--

INSERT INTO `cm_category` (`Id`, `name`, `imagePath`) VALUES
(1, 'Soğuk İçecek', '../images/soğukİçecek.jpg'),
(3, 'Burgerler', '../images/hamburger.jpg'),
(4, 'Pizzalar', '../images/pizza.jpg'),
(7, 'Sıcak İçecekler', '../images/file.png'),
(8, 'Tatlılar', '../images/tatlılar.jpg'),
(9, 'Tostlar', '../images/tost.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cm_menu`
--

CREATE TABLE `cm_menu` (
  `Id` int(11) NOT NULL,
  `categoryId` int(11) NOT NULL,
  `name` text NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `imagePath` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `cm_menu`
--

INSERT INTO `cm_menu` (`Id`, `categoryId`, `name`, `price`, `imagePath`) VALUES
(2, 1, 'Kola (330ml)', '20', '../images/coca-cola-orijinal-tat_product_image_v3.png'),
(3, 4, 'Karışık Pizza(orta boy)', '120', '../images/karisik-pizza-yapimi-tarifi.webp'),
(4, 3, 'Burger vejetaryan', '90', '../images/המבורגר_טבעוני.jpg'),
(8, 7, 'Türk Kahvesi', '15', '../images/What-is-Turkish-Coffee-Thumbnail_455x455.webp'),
(9, 7, 'Çay', '10', '../images/986641-1091800574.jpeg'),
(11, 9, 'Sucuklu Tost', '50', '../images/27472962.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cm_order`
--

CREATE TABLE `cm_order` (
  `Id` int(11) NOT NULL,
  `tableNo` int(11) NOT NULL,
  `name` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `cm_order`
--

INSERT INTO `cm_order` (`Id`, `tableNo`, `name`) VALUES
(4, 35, '2 iskender, sarı kula, sütlaç(fırın)'),
(6, 15, 'asdsaasfdsafasf'),
(7, 33, 'deneme 123 '),
(8, 4, 'Abime bi buçuk kıymalı ');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cm_song`
--

CREATE TABLE `cm_song` (
  `Id` int(11) NOT NULL,
  `songName` varchar(200) NOT NULL,
  `tableNo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `cm_song`
--

INSERT INTO `cm_song` (`Id`, `songName`, `tableNo`) VALUES
(1, 'Arap Şükrü - Bu şehir beni boğuyor', 11),
(2, 'Atım arap - ibo', 23),
(5, 'Haklıyız kazanacağız', 5),
(6, 'Haydi türküye', 32);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cm_user`
--

CREATE TABLE `cm_user` (
  `Id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `cm_user`
--

INSERT INTO `cm_user` (`Id`, `username`, `password`) VALUES
(1, 'admin', '1234');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `cm_category`
--
ALTER TABLE `cm_category`
  ADD PRIMARY KEY (`Id`);

--
-- Tablo için indeksler `cm_menu`
--
ALTER TABLE `cm_menu`
  ADD PRIMARY KEY (`Id`);

--
-- Tablo için indeksler `cm_order`
--
ALTER TABLE `cm_order`
  ADD PRIMARY KEY (`Id`);

--
-- Tablo için indeksler `cm_song`
--
ALTER TABLE `cm_song`
  ADD PRIMARY KEY (`Id`);

--
-- Tablo için indeksler `cm_user`
--
ALTER TABLE `cm_user`
  ADD PRIMARY KEY (`Id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `cm_category`
--
ALTER TABLE `cm_category`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `cm_menu`
--
ALTER TABLE `cm_menu`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `cm_order`
--
ALTER TABLE `cm_order`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `cm_song`
--
ALTER TABLE `cm_song`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `cm_user`
--
ALTER TABLE `cm_user`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
