-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Lun 09 Avril 2018 à 11:00
-- Version du serveur :  5.6.20
-- Version de PHP :  5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `quanlybanhang`
--

-- --------------------------------------------------------

--
-- Structure de la table `chitiethoadon`
--

CREATE TABLE IF NOT EXISTS `chitiethoadon` (
`id_chi_tiet_hoadon` bigint(10) NOT NULL,
  `sodh` bigint(20) NOT NULL,
  `masp` bigint(20) NOT NULL,
  `soluong` int(11) NOT NULL,
  `dongia` float NOT NULL,
  `thanhtien` decimal(9,2) NOT NULL,
  `madv` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=111 ;

--
-- Contenu de la table `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`id_chi_tiet_hoadon`, `sodh`, `masp`, `soluong`, `dongia`, `thanhtien`, `madv`) VALUES
(103, 92, 3, 2, 3.936, '7.87', '1,2,3'),
(104, 92, 6, 3, 2000, '6000.00', '1,2,3'),
(105, 92, 7, 4, 1400, '5600.00', '1,2,3'),
(106, 93, 1, 2, 21.347, '42.69', ''),
(107, 93, 3, 3, 3.936, '11.81', ''),
(108, 93, 8, 4, 20.99, '83.96', ''),
(109, 94, 200, 1, 21.347, '21.35', ''),
(110, 95, 7, 1, 1400, '1400.00', '1,2,3,4,10');

-- --------------------------------------------------------

--
-- Structure de la table `dichvu`
--

CREATE TABLE IF NOT EXISTS `dichvu` (
`madv` bigint(20) NOT NULL,
  `tendv` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `gia` double NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Contenu de la table `dichvu`
--

INSERT INTO `dichvu` (`madv`, `tendv`, `gia`) VALUES
(1, 'Chuyển phát nhanh', 500),
(2, 'Gói quà', 200),
(3, 'Giao tận nơi', 100),
(4, 'Tư vấn online', 50),
(5, 'Theo dõi lộ trình', 400),
(6, 'Quay trúng thưởng', 600),
(8, 'Tăng chén', 700),
(10, 'Tặng ly', 600),
(11, 'Tặng tủ lạnh', 800);

-- --------------------------------------------------------

--
-- Structure de la table `hoadon`
--

CREATE TABLE IF NOT EXISTS `hoadon` (
`sodh` bigint(20) NOT NULL,
  `emailkh` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ngaygiao` date NOT NULL,
  `tenkh` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `dienthoai` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `hinhthucthanhtoan` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `thanhtien` decimal(9,2) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=96 ;

--
-- Contenu de la table `hoadon`
--

INSERT INTO `hoadon` (`sodh`, `emailkh`, `ngaygiao`, `tenkh`, `diachi`, `dienthoai`, `hinhthucthanhtoan`, `thanhtien`) VALUES
(92, 'huy@gmail.com', '2018-04-08', 'huỳnh anh huy', 'An giang', '01679191882', 'ATM', '12407.87'),
(93, 'huy@gmail.com', '2018-04-08', 'huỳnh anh huy', 'Phú nhuận', '01679191882', 'Live', '138.46'),
(94, 'huy@gmail.com', '2018-04-08', 'huỳnh anh huy', 'fdfd', '01679191882', 'ATM', '21.35'),
(95, 'huy@gmail.com', '2018-04-09', 'huỳnh anh huy', 'An giang', '01679191882', 'ATM', '2850.00');

-- --------------------------------------------------------

--
-- Structure de la table `loginadmin`
--

CREATE TABLE IF NOT EXISTS `loginadmin` (
  `tendangnhap` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `matkhau` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `loginadmin`
--

INSERT INTO `loginadmin` (`tendangnhap`, `matkhau`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `loginuser`
--

CREATE TABLE IF NOT EXISTS `loginuser` (
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `matkhau` int(200) NOT NULL,
  `HoTen` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `DienThoai` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `loginuser`
--

INSERT INTO `loginuser` (`email`, `matkhau`, `HoTen`, `DienThoai`) VALUES
('1@gmail.com', 123, '1', '01679191882'),
('a@gmail.com', 321, 'huỳnh anh huy', '01679191882'),
('aaa@gmail.com', 123, 'Huỳnh Anh Huy', '01679191882'),
('bbc@gmail.com', 123, 'huỳnh anh huy', '01679191882'),
('c@gmail.com', 123, 'huy', '01679191882'),
('huy@gmail.com', 123, 'huỳnh anh huy', '01679191882'),
('huyha.hutech1996@gmail.com', 123, 'huỳnh anh huy', '01679191882'),
('sdfd@gmail.com', 123, 'ewe', '2434'),
('sdsa@gmail.com', 321, 'sdsda', '123');

-- --------------------------------------------------------

--
-- Structure de la table `nhasanxuat`
--

CREATE TABLE IF NOT EXISTS `nhasanxuat` (
`ID` bigint(10) NOT NULL,
  `Ten` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Contenu de la table `nhasanxuat`
--

INSERT INTO `nhasanxuat` (`ID`, `Ten`) VALUES
(1, 'Gradiente'),
(2, 'Walton'),
(3, 'Xiaomi'),
(8, 'Samsung'),
(9, 'Apple');

-- --------------------------------------------------------

--
-- Structure de la table `sanpham`
--

CREATE TABLE IF NOT EXISTS `sanpham` (
`ID` bigint(10) NOT NULL,
  `Ten` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Gia` double NOT NULL,
  `HinhAnh` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Manhasx` bigint(10) NOT NULL,
  `Mota` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `KhuyenMai` tinyint(1) NOT NULL,
  `giakhuyenmai` double NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=201 ;

--
-- Contenu de la table `sanpham`
--

INSERT INTO `sanpham` (`ID`, `Ten`, `Gia`, `HinhAnh`, `Manhasx`, `Mota`, `date`, `KhuyenMai`, `giakhuyenmai`) VALUES
(2, 'Samsung Galaxy J7 ', 3.69, 'samsung-galaxy-j7-1-400x533.png', 8, '<p>SKU SA937ELAA1ABP9VNAMZ-1959787 Thương hiệu sản phẩm tương th&iacute;ch Samsung Camera Back 11 to 15MP Camera trước 5-6 MP M&agrave;u V&agrave;ng Cổng kết nối Micro USB, 3.5mm CPU Speed 1-2Ghz Độ ph&acirc;n giải m&agrave;n h&igrave;nh (pixels) 1280 x 720 K&iacute;ch thước m&agrave;n h&igrave;nh 5.5 Screen Size (inches) 5.5 Loại m&agrave;n h&igrave;nh Super AMOLED Expandable Memory Yes Độ ph&acirc;n giải camera (MP) 13.0 Hỗ trợ thẻ nhớ MicroSD 128GB Mẫu m&atilde; SSHALOSHOP005Go Network Connec', '2018-03-22', 0, 0),
(3, 'Xiaomi Redmi 4A', 1.968, 'medium-Xiaomi-Redmi-4A-xach-tay-gia-re-MobileCity-002-1.jpg', 3, '<p>SKU XI431ELAA65T4CVNAMZ-11353703 Battery Capacity 3000 - 3999 mAh Camera Back 11 to 15MP Camera trước 5-6 MP Screen Size (inches) 5.0 Mẫu m&atilde; redmi 4a Network Connections 2G - GPRS|3G - HSPA|4G - LTE|2G - EDGE Hệ điều h&agrave;nh Android Operating System Version Marshmallow Processor Type Quad-core Sản xuất tại China RAM memory 2GB Screen Type IPS LCD Bộ nhớ trong 16GB Loại pin/&aacute;c quy Built-in Rechargeable Battery Video Resolution 720p Thời gian bảo h&agrave;nh 12 Months Loại h&a', '2018-03-04', 1, 3.936),
(6, 'Iphone 6', 22.49, 'iphone.jpg', 9, '<p>Độ ph&acirc;n giải m&agrave;n h&igrave;nh : 2960 x 1440 pixels Độ ph&acirc;n giải : 8 MP Độ ph&acirc;n giải : 2 camera 12 MP Tốc độ CPU : 4 nh&acirc;n 2.3 GHz v&agrave; 4 nh&acirc;n 1.7 GHz Số nh&acirc;n : 8 Nh&acirc;n Chipset : L&otilde;i T&aacute;m (l&otilde;i Tứ 2.3GHz + l&otilde;i Tứ 1.7GHz), 64 bit, vi xử l&yacute; 10nm RAM : 6 GB Chip đồ họa (GPU) : Mali&trade; G71</p>\r\n', '2018-03-05', 1, 2000),
(7, 'Samsung Galaxy S8 ', 15.99, 'samsung-galaxy-s8-plus-xanh-hang-phan-phoi-chinh-thuc-1499311585-5746125-6e02c82540d7f6e821c6c61e3d73ea8d-webp-zoom.jpg', 8, '<p><strong>Độ ph&acirc;n giải m&agrave;n h&igrave;nh</strong> : 2560 x 1440 pixels Độ ph&acirc;n giải : 8.0 MP</p>\r\n\r\n<p><strong>Độ ph&acirc;n giải</strong> : 12.0 MP Tốc độ CPU : 4 nh&acirc;n 2.3GHz + 4 nh&acirc;n 1.7GHz</p>\r\n\r\n<p><strong>Số nh&acirc;n</strong> : 8 Nh&acirc;n Chipset : Exynos 8895 RAM : 4 GB Chip đồ họa (GPU) : Mali&trade; G71 ROM : 64 GB</p>\r\n\r\n<p><strong>K&iacute;ch thước</strong> : 148.9 x 68.1 x 8.0mm</p>\r\n', '2018-03-05', 1, 1400),
(8, 'iPhone 8 ', 20.99, 'apple-iphone-8-64gb-gold-1515670284-53184812-cae43a81c19412193762f05db80068f4-webp-zoom.jpg', 8, '<p>Th&ocirc;ng số cơ bản Độ ph&acirc;n giải m&agrave;n h&igrave;nh : 1334 x 750 pixels Độ ph&acirc;n giải : 7.0 MP Độ ph&acirc;n giải : 12.0 MP Chipset : Apple A11 Bionic RAM : 2 GB Chip đồ họa (GPU) : Apple GPU three-core graphics ROM : 64 GB K&iacute;ch thước : 138.4 x 67.3 x 7.3 mm M&agrave;n h&igrave;nh C&ocirc;ng nghệ m&agrave;n h&igrave;nh : Retina HD Mặt k&iacute;nh m&agrave;n h&igrave;nh : K&iacute;nh oleophobic (ion cường lực) Chuẩn m&agrave;n h&igrave;nh : Chuẩn HD Độ ph&acirc;n giải m', '2018-03-22', 0, 0),
(13, 'Samsung Galaxy J6', 600, 'samsung-galaxy-j1-2016-8gb-2sim-trang-hang-phan-phoi-chinh-thuc-1513767879-4431612-36b5c5c02ecf4275bab974e9477474c8-webp-zoom.jpg', 8, '<p><img alt="" src="https://hoanghamobile.com/Uploads/Originals/2017/06/13/201706131550179059_j7pro4.png;width=720;height=500;watermark=logo;crop=auto;quality=80;format=jpg" style="height:450px; width:720px" /></p>\r\n', '2018-03-22', 0, 0),
(14, 'Samsung', 700, 'samsung-galaxy-j7-1-400x533.png', 8, '<p><strong>test</strong></p>\r\n', '2018-02-08', 1, 600),
(200, 'APPLE IPHONE 8', 21.347, 'apple-iphone-8-plus-256gb-space-grey-1515670372-73184812-3a1d2dcb4228f29470740a71eb6fae37-webp-zoom.jpg', 9, '<p>Chức năng ch&iacute;nh &amp; th&ocirc;ng tin chi tiết Apple iPhone 8 Plus 64GB ( Space Gray ) - H&agrave;ng Ph&acirc;n Phối Ch&iacute;nh Thức Th&ocirc;ng tin cơ bản Trạng th&aacute;i ph&aacute;t h&agrave;nh Đang ph&aacute;t h&agrave;nh K&iacute;ch thước &amp; khối lượng Chiều d&agrave;i (mm) 158.4 Chiều rộng (mm) 78.1 Chiều cao (mm) 7.5 C&acirc;n nặng (g) 202 g M&agrave;n h&igrave;nh &amp; hiển thị Kiểu m&agrave;n h&igrave;nh LED-backlit IPS LCD K&iacute;ch thước m&agrave;n h&igrave;nh 5.5 in', '2018-03-22', 0, 0);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
 ADD PRIMARY KEY (`id_chi_tiet_hoadon`), ADD KEY `chitiethoadon` (`sodh`);

--
-- Index pour la table `dichvu`
--
ALTER TABLE `dichvu`
 ADD PRIMARY KEY (`madv`);

--
-- Index pour la table `hoadon`
--
ALTER TABLE `hoadon`
 ADD PRIMARY KEY (`sodh`);

--
-- Index pour la table `loginadmin`
--
ALTER TABLE `loginadmin`
 ADD PRIMARY KEY (`tendangnhap`);

--
-- Index pour la table `loginuser`
--
ALTER TABLE `loginuser`
 ADD PRIMARY KEY (`email`);

--
-- Index pour la table `nhasanxuat`
--
ALTER TABLE `nhasanxuat`
 ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `sanpham`
--
ALTER TABLE `sanpham`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `Ten` (`Ten`), ADD KEY `sanpham` (`Manhasx`), ADD KEY `giakhuyenmai` (`giakhuyenmai`), ADD KEY `giakhuyenmai_2` (`giakhuyenmai`), ADD KEY `giakhuyenmai_3` (`giakhuyenmai`), ADD KEY `giakhuyenmai_4` (`giakhuyenmai`), ADD KEY `giakhuyenmai_5` (`giakhuyenmai`), ADD FULLTEXT KEY `Ten_2` (`Ten`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
MODIFY `id_chi_tiet_hoadon` bigint(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=111;
--
-- AUTO_INCREMENT pour la table `dichvu`
--
ALTER TABLE `dichvu`
MODIFY `madv` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `hoadon`
--
ALTER TABLE `hoadon`
MODIFY `sodh` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=96;
--
-- AUTO_INCREMENT pour la table `nhasanxuat`
--
ALTER TABLE `nhasanxuat`
MODIFY `ID` bigint(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `sanpham`
--
ALTER TABLE `sanpham`
MODIFY `ID` bigint(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=201;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
ADD CONSTRAINT `chitiethoadon` FOREIGN KEY (`sodh`) REFERENCES `hoadon` (`sodh`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sanpham`
--
ALTER TABLE `sanpham`
ADD CONSTRAINT `sanpham` FOREIGN KEY (`Manhasx`) REFERENCES `nhasanxuat` (`ID`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
