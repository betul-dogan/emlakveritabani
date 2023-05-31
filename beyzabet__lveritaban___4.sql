-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 29 May 2023, 17:40:43
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
-- Veritabanı: `beyzabetülveritabanı`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cinsiyet`
--

CREATE TABLE `cinsiyet` (
  `cinsiyetID` int(11) NOT NULL,
  `cinsiyetAdi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `cinsiyet`
--

INSERT INTO `cinsiyet` (`cinsiyetID`, `cinsiyetAdi`) VALUES
(1, 'Kadın'),
(2, 'Erkek');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `emlakci`
--

CREATE TABLE `emlakci` (
  `emlakci_id` int(11) NOT NULL,
  `emlakci_adsoyad` varchar(50) NOT NULL,
  `cep_no` varchar(50) NOT NULL,
  `ilce_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `emlakci`
--

INSERT INTO `emlakci` (`emlakci_id`, `emlakci_adsoyad`, `cep_no`, `ilce_id`) VALUES
(1, 'Alev Hacıoğlu', '\'05557123456\'', 1),
(2, 'Naim H. Alemdaroğlu ', '\'2147483649\'', 1),
(3, 'Taner Akçam ', '\'2147483612\'', 2),
(4, 'Ali Babacan  ', '\'2147483650\'', 2),
(5, 'Vedat Çakmak   ', '\'2147483630\'', 3),
(6, 'Yasemin Dalkılıç  ', '2147483647', 3),
(7, 'Can Dündar   ', '2147483647', 4),
(8, 'Haydar Ergülen  ', '2147483647', 4),
(9, 'Albert Kohen Erkip   ', '2147483647', 5),
(10, ' Erol Gelenbe  ', '2147483647', 5),
(11, ' Mustafa Halilsoy   ', '2147483647', 6),
(12, ' Tunç Hamarat   ', '2147483647', 6),
(13, ' Derya Köroğlu    ', '2147483647', 7),
(14, ' Rüşdü Saraçoğlu    ', '2147483647', 7),
(15, ' Süreyya Serdengeçti     ', '2147483647', 8),
(16, ' Engin Akçakoca     ', '2147483647', 8),
(17, ' Mehmet Ali Talat     ', '2147483647', 9),
(18, 'Kürşad Tüzmen    ', '2147483647', 9),
(19, 'Turgay Uzer     ', '2147483647', 10),
(20, ' Mehmet Ali Nuroğlu   ', '2147483647', 10),
(21, ' Emin Çölaşan  ', '2147483647', 11),
(22, 'Ece Sükan  ', '2147483647', 11),
(23, 'Murat Yetkin   ', '2147483647', 12),
(24, 'Elif Şafak ', '2147483647', 12),
(25, 'Enis Batur  ', '2147483647', 13),
(26, 'Karahan Çantay ', '2147483647', 13),
(27, 'Suavi ', '2147483647', 14),
(28, ' Lale Müldür ', '2147483647', 14),
(29, ' Ersin Özince ', '2147483647', 15),
(30, ' Adnan Bostancıoğlu ', '2147483647', 15),
(31, '  Ahmet Kanneci  ', '2147483647', 16),
(32, ' Salih Memecan ', '2147483647', 16),
(33, ' Durul Gence ', '2147483647', 17),
(34, ' Levent Ülgen  ', '2147483647', 17),
(35, '  Ali Dinçer   ', '2147483647', 18),
(36, ' Yalçın Küçük  ', '2147483647', 18),
(37, ' Mehmet Hilmi Güler  ', '2147483647', 19),
(38, ' Buket Uzuner  ', '2147483647', 19),
(39, 'Murat Çelikkan   ', '2147483647', 20),
(40, '  Yıldırım Türker  ', '2147483647', 20),
(41, '  Ege Cansen  ', '2147483647', 21),
(42, '  Mehmet Eroğlu  ', '2147483647', 21),
(43, '  Murat Didin  ', '2147483647', 22),
(44, '  Feride Çiçekoğlu  ', '2147483647', 22),
(45, '  Tolga Çandar  ', '2147483647', 23),
(46, ' Mehmet Emrehan Halıcı  ', '2147483647', 23),
(47, ' Ahmet Altan  ', '2147483647', 24),
(48, ' Şebnem Ferah  ', '2147483647', 24),
(49, '  Haluk Levent   ', '2147483647', 25),
(50, ' Gökhan Cengizkan ', '2147483647', 25);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `gorusme`
--

CREATE TABLE `gorusme` (
  `gorusmeID` int(11) NOT NULL,
  `musteri_id` int(11) NOT NULL,
  `emlakci_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `gorusme`
--

INSERT INTO `gorusme` (`gorusmeID`, `musteri_id`, `emlakci_id`) VALUES
(1, 1, 25),
(2, 2, 24),
(3, 10, 32),
(4, 5, 12),
(5, 6, 40),
(6, 7, 28),
(7, 8, 26),
(8, 9, 1),
(9, 3, 5),
(10, 4, 19);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ilce`
--

CREATE TABLE `ilce` (
  `ilce_id` int(11) NOT NULL,
  `ilce_adi` varchar(25) NOT NULL,
  `ilce_nufus` int(15) NOT NULL,
  `yaka_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ilce`
--

INSERT INTO `ilce` (`ilce_id`, `ilce_adi`, `ilce_nufus`, `yaka_id`) VALUES
(1, 'Arnavutköy', 326, 1),
(2, 'Avcılar', 452, 1),
(3, 'Bağcılar', 740, 1),
(4, 'Bahçelievler', 594, 1),
(5, 'Bakırköy', 227, 1),
(6, 'Başakşehir', 515, 1),
(7, 'Bayrampaşa', 275, 1),
(8, 'Beşiktaş', 175, 1),
(9, 'Beylikdüzü', 413, 1),
(10, 'Beyoğlu', 226, 1),
(11, 'Büyükçekmece', 277, 1),
(12, 'Çatalca', 77, 1),
(13, 'Esenler', 445, 1),
(14, 'Esenyurt', 984, 1),
(15, 'Eyüp', 423, 1),
(16, 'Fatih', 368, 1),
(17, 'Gaziosmanpaşa', 496, 1),
(18, 'Güngören', 283, 1),
(19, 'Kağıthane', 456, 1),
(20, 'Küçükçekmece', 809, 1),
(21, 'Sarıyer', 350, 1),
(22, 'Silivri', 217, 1),
(23, 'Sultangazi', 543, 1),
(24, 'Şişli', 277, 1),
(25, 'Zeytinburnu', 293, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mahalle`
--

CREATE TABLE `mahalle` (
  `mahalleID` int(11) NOT NULL,
  `mahalleAdi` varchar(50) NOT NULL,
  `ilce_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `mahalle`
--

INSERT INTO `mahalle` (`mahalleID`, `mahalleAdi`, `ilce_id`) VALUES
(1, 'ADNAN MENDERES MAHALLESİ', 1),
(2, 'ANADOLU MAHALLESİ ', 1),
(3, 'ARNAVUTKÖY MERKEZ MAHALLESİ', 1),
(4, 'ATATÜRK MAHALLESİ', 1),
(5, 'BAKLALI MAHALLESİ', 1),
(6, 'BALABAN MAHALLESİ', 1),
(7, 'BOĞAZKÖY İSTİKLAL MAHALLESİ', 1),
(8, 'BOLLUCA MAHALLESİ', 1),
(9, 'BOYALIK MAHALLESİ', 1),
(10, 'ÇİLİNGİR MAHALLESİ', 1),
(11, 'AMBARLI MAHALLESİ', 2),
(12, 'CİHANGİR MAHALLESİ', 2),
(13, 'FİRUZKÖY MAHALLESİ', 2),
(14, 'GÜMÜŞPALA MAHALLESİ', 2),
(15, 'MERKEZ MAHALLESİ', 2),
(16, 'MUSTAFAKEMALPAŞA MAHALLESİ', 2),
(17, 'ÜNİVERSİTE MAHALLESİ', 2),
(18, 'YEŞİLKENT MAHALLESİ', 2),
(19, '100. YIL MAHALLESİ', 3),
(20, '15 TEMMUZ MAHALLESİ', 3),
(21, 'BAĞLAR MAHALLESİ', 3),
(22, 'BARBAROS MAHALLESİ', 3),
(23, 'ÇINAR MAHALLESİ', 3),
(24, 'DEMİRKAPI MAHALLESİ', 3),
(25, 'FATİH MAHALLESİ', 3),
(26, 'ÇAKMAK MAHALLESİ', 3),
(27, 'GÖZTEPE MAHALLESİ', 3),
(28, 'BAHÇELİEVLER MAHALLESİ', 4),
(29, 'CUMHURİYET MAHALLESİ', 4),
(30, 'ÇOBANÇEŞME MAHALLESİ', 4),
(31, 'FEVZİ ÇAKMAK MAHALLESİ', 4),
(32, 'HÜRRİYET MAHALLESİ', 4),
(33, 'KOCASİNAN MERKEZ MAHALLESİ', 4),
(34, 'SİYAVUŞPAŞA MAHALLESİ', 4),
(35, 'SOĞANLI MAHALLESİ', 4),
(36, 'ŞİRİNEVLER MAHALLESİ', 4),
(37, 'YENİBOSNA MERKEZ MAHALLESİ', 4),
(38, 'ATAKÖY 1. KISIM MAHALLESİ', 5),
(39, 'ATAKÖY 2-5-6. KISIM MAHALLESİ', 5),
(40, 'ATAKÖY 3-4-11. KISIM MAHALLESİ', 5),
(41, 'ATAKÖY 7-8-9-10. KISIM MAHALLESİ', 5),
(42, 'BASINKÖY MAHALLESİ', 5),
(43, 'CEVİZLİK MAHALLESİ', 5),
(44, 'KARTALTEPE MAHALLESİ', 5),
(45, 'OSMANİYE MAHALLESİ', 5),
(46, 'SAKIZAĞACI MAHALLESİ', 5),
(47, 'ŞENLİKKÖY MAHALLESİ', 5),
(48, 'ALTINŞEHİR MAHALLESİ', 6),
(49, 'BAHÇEŞEHİR 1. KISIM MAHALLESİ', 6),
(50, 'BAHÇEŞEHİR 2. KISIM MAHALLESİ', 6),
(51, 'BAŞAK MAHALLESİ', 6),
(52, 'BAŞAKŞEHİR MAHALLESİ', 6),
(53, 'GÜVERCİNTEPE MAHALLESİ', 6),
(54, 'İKİTELLİ OSB MAHALLESİ', 6),
(55, 'KAYABAŞI MAHALLESİ', 6),
(56, 'ŞAHİNTEPE MAHALLESİ', 6),
(57, 'ŞAMLAR MAHALLESİ', 6),
(58, 'ALTINTEPSİ MAHALLESİ', 7),
(59, 'CEVATPAŞA MAHALLESİ', 7),
(60, 'İSMET PAŞA MAHALLESİ', 7),
(61, 'KARTALTEPE MAHALLESİ', 7),
(62, 'KOCATEPE MAHALLESİ', 7),
(63, 'MURATPAŞA MAHALLESİ', 7),
(64, 'ORTA MAHALLESİ', 7),
(65, 'TERAZİDERE MAHALLESİ', 7),
(66, 'VATAN MAHALLESİ', 7),
(67, 'YENİDOĞAN MAHALLESİ', 7),
(68, 'ABBASAĞA MAHALLESİ', 8),
(69, 'AKAT MAHALLESİ', 8),
(70, 'ARNAVUTKÖY MAHALLESİ', 8),
(71, 'BALMUMCU MAHALLESİ', 8),
(72, 'BEBEK MAHALLESİ', 8),
(73, 'CİHANNÜMA MAHALLESİ', 8),
(74, 'DİKİLİTAŞ MAHALLESİ', 8),
(75, 'ETİLER MAHALLESİ', 8),
(76, 'GAYRETTEPE MAHALLESİ', 8),
(77, 'KONAKLAR MAHALLESİ', 8),
(78, 'ADNAN KAHVECİ MAHALLESİ', 9),
(79, 'BARIŞ MAHALLESİ', 9),
(80, 'BÜYÜKŞEHİR MAHALLESİ', 9),
(81, 'CUMHURİYET MAHALLESİ', 9),
(82, 'DEREAĞZI MAHALLESİ', 9),
(83, 'GÜRPINAR MAHALLESİ', 9),
(84, 'KAVAKLI MAHALLESİ', 9),
(85, 'MARMARA MAHALLESİ', 9),
(86, 'SAHİL MAHALLESİ', 9),
(87, 'YAKUPLU MAHALLESİ', 9),
(88, 'ARAPCAMİİ	 MAHALLESİ', 10),
(89, 'ASMALI MESCİT	 MAHALLESİ', 10),
(90, 'BEDRETTİN	 MAHALLESİ', 10),
(91, 'BEREKETZADE MAHALLESİ', 10),
(92, 'BOSTAN	 MAHALLESİ', 10),
(93, 'BÜLBÜL MAHALLESİ', 10),
(94, 'CAMİİ KEBİR MAHALLESİ', 10),
(95, 'CİHANGİR MAHALLESİ	', 10),
(96, ' MESCİTMAHALLESİ', 10),
(97, 'ÇUKUR MAHALLESİ', 10),
(98, '19 MAYIS MAHALLESİ', 11),
(99, 'AHMEDİYE MAHALLESİ', 11),
(100, 'ALKENT 2000 MAHALLESİ', 11),
(101, 'ATATÜRK MAHALLESİ', 11),
(102, 'BAHÇELİEVLER MAHALLESİ', 11),
(103, 'CELALİYE MAHALLESİ', 11),
(104, 'CELALİYE MAHALLESİ', 11),
(105, 'ÇAKMAKLI MAHALLESİ', 11),
(106, 'DİZDARİYE MAHALLESİ', 11),
(107, 'EKİNOBA MAHALLESİ', 11),
(108, 'AKALAN MAHALLESİ', 12),
(109, 'ATATÜRK MAHALLESİ', 12),
(110, 'AYDINLAR MAHALLESİ', 12),
(111, 'BAHŞAYİŞ MAHALLESİ', 12),
(112, 'BAŞAK MAHALLESİ', 12),
(113, 'BELGRAT MAHALLESİ', 12),
(114, 'CELEPKÖY MAHALLESİ', 12),
(115, 'ÇAKIL MAHALLESİ', 12),
(116, 'ÇANAKÇA MAHALLESİ', 12),
(117, 'ÇİFTLİKKÖY MAHALLESİ', 12),
(118, '15 TEMMUZ MAHALLESİ', 13),
(119, 'BİRLİK MAHALLESİ', 13),
(120, 'ÇİFTE HAVUZLAR MAHALLESİ', 13),
(121, 'DAVUTPAŞA MAHALLESİ', 13),
(122, 'FATİH MAHALLESİ', 13),
(123, 'FEVZİ ÇAKMAK MAHALLESİ', 13),
(124, 'HAVAALANI MAHALLESİ', 13),
(125, 'KAZIM KARABEKİR MAHALLESİ', 13),
(126, 'KEMER MAHALLESİ', 13),
(127, 'MENDERES MAHALLESİ', 13),
(128, 'AKÇABURGAZ MAHALLESİ', 14),
(129, 'AKEVLER MAHALLESİ', 14),
(130, 'AKŞEMSEDDİN MAHALLESİ', 14),
(131, 'ARDIÇLI MAHALLESİ', 14),
(132, 'AŞIK VEYSEL MAHALLESİ', 14),
(133, 'ATATÜRK MAHALLESİ', 14),
(134, 'BAĞLARÇEŞME MAHALLESİ', 14),
(135, 'BALIKYOLU MAHALLESİ', 14),
(136, 'BARBAROS HAYRETTİN PAŞA MAHALLESİ', 14),
(137, 'BATTALGAZİ MAHALLESİ', 14),
(138, '5.LEVENT MAHALLESİ', 15),
(139, 'AĞAÇLI MAHALLESİ', 15),
(140, 'AKPINAR MAHALLESİ', 15),
(141, 'AKŞEMSETTİN MAHALLESİ', 15),
(142, 'ALİBEYKÖY MAHALLESİ', 15),
(143, 'ÇIRÇIR MAHALLESİ', 15),
(144, 'ÇİFTALAN MAHALLESİ', 15),
(145, 'DEFTERDAR MAHALLESİ', 15),
(146, 'DÜĞMECİLER MAHALLESİ', 15),
(147, 'EMNİYETTEPE MAHALLESİ', 15),
(148, 'AKSARAY MAHALLESİ', 16),
(149, 'AKŞEMSETTİN MAHALLESİ', 16),
(150, 'ALEMDAR MAHALLESİ', 16),
(151, 'ALİ KUŞÇU MAHALLESİ', 16),
(152, 'ATİKALİ MAHALLESİ', 16),
(153, 'AYVANSARAY MAHALLESİ', 16),
(154, 'BALABANAĞA MAHALLESİ', 16),
(155, 'BALAT MAHALLESİ', 16),
(156, 'BEYAZIT MAHALLESİ', 16),
(157, 'BİNBİRDİREK MAHALLESİ', 16),
(158, 'BAĞLARBAŞI MAHALLESİ', 17),
(159, 'BARBAROS HAYRETTİN PAŞA MAHALLESİ', 17),
(160, 'FEVZİ ÇAKMAK MAHALLESİ', 17),
(161, 'HÜRRİYET MAHALLESİ', 17),
(162, 'KARADENİZ MAHALLESİ', 17),
(163, 'KARAYOLLARI MAHALLESİ', 17),
(164, 'KARLITEPE MAHALLESİ', 17),
(165, 'KAZIM KARABEKİR MAHALLESİ', 17),
(166, 'MERKEZ MAHALLESİ', 17),
(167, 'MEVLANA MAHALLESİ', 17),
(168, 'ABDURRAHMAN NAFİZ GÜRMAN MAHALLESİ', 18),
(169, 'AKINCILAR MAHALLESİ', 18),
(170, 'GENÇOSMAN MAHALLESİ', 18),
(171, 'GÜNEŞTEPE MAHALLESİ', 18),
(172, 'GÜVEN MAHALLESİ', 18),
(173, 'HAZNEDAR MAHALLESİ', 18),
(174, 'MAREŞAL ÇAKMAK MAHALLESİ', 18),
(175, 'MEHMET NESİH ÖZMEN MAHALLESİ', 18),
(176, 'MERKEZ MAHALLESİ', 18),
(177, 'SANAYİ MAHALLESİ', 18),
(178, 'ÇAĞLAYAN MAHALLESİ', 19),
(179, 'ÇELİKTEPE MAHALLESİ', 19),
(180, 'EMNİYET EVLERİ MAHALLESİ', 19),
(181, 'GÜLTEPE MAHALLESİ', 19),
(182, 'GÜRSEL MAHALLESİ', 19),
(183, 'HAMİDİYE MAHALLESİ', 19),
(184, 'HARMANTEPE MAHALLESİ', 19),
(185, 'HÜRRİYET MAHALLESİ', 19),
(186, 'MEHMET AKİF ERSOY MAHALLESİ', 19),
(187, 'MERKEZ MAHALLESİ', 19),
(188, 'ATAKENT MAHALLESİ', 20),
(189, 'ATATÜRK MAHALLESİ', 20),
(190, 'BEŞYOL MAHALLESİ', 20),
(191, 'CENNET MAHALLESİ', 20),
(192, 'CUMHURİYET MAHALLESİ', 20),
(193, 'FATİH MAHALLESİ', 20),
(194, 'FEVZİ ÇAKMAK MAHALLESİ', 20),
(195, 'GÜLTEPE MAHALLESİ', 20),
(196, 'HALKALI MERKEZ MAHALLESİ', 20),
(197, 'İNÖNÜ MAHALLESİ', 20),
(198, 'AYAZAĞA MAHALLESİ', 21),
(199, 'BAHÇEKÖY KEMER MAHALLESİ', 21),
(200, 'BAHÇEKÖY MERKEZ MAHALLESİ', 21),
(201, 'BAHÇEKÖY YENİ MAHALLESİ', 21),
(202, 'BALTALİMANI MAHALLESİ', 21),
(203, 'BÜYÜKDERE MAHALLESİ', 21),
(204, 'CUMHURİYET MAHALLESİ', 21),
(205, 'ÇAMLITEPE MAHALLESİ', 21),
(206, 'ÇAYIRBAŞI MAHALLESİ', 21),
(207, 'DARÜŞŞAFAKA MAHALLESİ', 21),
(208, 'AKÖREN MAHALLESİ', 22),
(209, 'ALİBEY MAHALLESİ', 22),
(210, 'ALİPAŞA MAHALLESİ', 22),
(211, 'BEKİRLİ MAHALLESİ', 22),
(212, 'BEYCİLER MAHALLESİ', 22),
(213, 'BÜYÜK ÇAVUŞLU MAHALLESİ', 22),
(214, 'BÜYÜK KILIÇLI MAHALLESİ', 22),
(215, 'BÜYÜK SİNEKLİ MAHALLESİ', 22),
(216, 'CUMHURİYET MAHALLESİ', 22),
(217, 'ÇANTA BALABAN MAHALLESİ', 22),
(218, '50. YIL MAHALLESİ', 23),
(219, '75. YIL MAHALLESİ', 23),
(220, 'CEBECİ MAHALLESİ', 23),
(221, 'CUMHURİYET MAHALLESİ', 23),
(222, 'ESENTEPE MAHALLESİ', 23),
(223, 'ESKİ HABİPLER MAHALLESİ', 23),
(224, 'GAZİ MAHALLESİ', 23),
(225, 'HABİBLER MAHALLESİ', 23),
(226, 'İSMETPAŞA MAHALLESİ', 23),
(227, 'MALKOÇOĞLU MAHALLESİ', 23),
(228, '19 MAYIS MAHALLESİ', 24),
(229, 'BOZKURT MAHALLESİ', 24),
(230, 'CUMHURİYET MAHALLESİ', 24),
(231, 'DUATEPE MAHALLESİ', 24),
(232, 'ERGENEKON MAHALLESİ', 24),
(233, 'ESENTEPE MAHALLESİ', 24),
(234, 'ESKİŞEHİR MAHALLESİ', 24),
(235, 'FERİKÖY MAHALLESİ', 24),
(236, 'FULYA MAHALLESİ', 24),
(237, 'BEŞTELSİZ MAHALLESİ', 25),
(238, 'ÇIRPICI MAHALLESİ', 25),
(239, 'GÖKALP MAHALLESİ', 25),
(240, 'KAZLIÇEŞME MAHALLESİ', 25),
(241, 'MALTEPE MAHALLESİ', 25),
(242, 'MERKEZEFENDİ MAHALLESİ', 25),
(243, 'NURİPAŞA MAHALLESİ', 25),
(244, 'SEYİTNİZAM MAHALLESİ', 25),
(245, 'SÜMER MAHALLESİ', 25),
(246, 'TELSİZ MAHALLESİ', 25);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `medenihal`
--

CREATE TABLE `medenihal` (
  `medenihalID` int(11) NOT NULL,
  `medeniDurum` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `medenihal`
--

INSERT INTO `medenihal` (`medenihalID`, `medeniDurum`) VALUES
(1, 'Evli'),
(2, 'Bekar'),
(3, 'Dul');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `meslek`
--

CREATE TABLE `meslek` (
  `meslekID` int(11) NOT NULL,
  `meslekAdi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `meslek`
--

INSERT INTO `meslek` (`meslekID`, `meslekAdi`) VALUES
(1, 'Acentacı'),
(2, 'Acente'),
(3, 'Acil Durum Yönetmeni'),
(4, 'Acil Tıp Teknisyeni'),
(5, 'Adli Bilimci'),
(6, 'Adli Kimyager'),
(7, 'Adli Tabip'),
(8, 'Agronomist'),
(9, 'Ahşap Tekne Yapımcısı'),
(10, 'Aile Hekimi'),
(11, 'AirBnb Ev Sahibi'),
(12, 'Akortçu'),
(13, 'Aktar'),
(14, 'Aktivist'),
(15, 'Aktris'),
(16, 'Aktör'),
(17, 'Aktüer'),
(18, 'Aktüerya'),
(19, 'Akustikçi'),
(20, 'Akışkanlar Fizikçisi'),
(21, 'Alacak Tahsildarı'),
(22, 'Alan Fizikçisi'),
(23, 'Alan Teknisyeni'),
(24, 'Alan Uygulamaları Uzmanı'),
(25, 'Albay'),
(26, 'Ambalajcı'),
(27, 'Ambarcı'),
(28, 'Ambulans Çalışanı'),
(29, 'Ambulans şoförü'),
(30, 'Amerikan Siyaset Bilimcisi'),
(31, 'Amiral'),
(32, 'Anahtarcı'),
(33, 'Analist'),
(34, 'Analitik Laboratuvar Teknisyeni'),
(35, 'Analitik Servisler Kimyageri'),
(36, 'Anatomist'),
(37, 'Anestezi Teknikeri'),
(38, 'Anestezi Uzmanı'),
(39, 'Animatör'),
(40, 'Anlatım Bilimci'),
(41, 'Antik Felsefe Uzmanı'),
(42, 'Antik Tarih Uzmanı'),
(43, 'Antika Satıcısı'),
(44, 'Antropolog'),
(45, 'Apartman Görevlisi'),
(46, 'Apartman Yöneticisi'),
(47, 'Araba Satıcısı'),
(48, 'Araba Tamircisi'),
(49, 'Araba Yıkayıcısı'),
(50, 'Arabacı'),
(51, 'Arabulucu'),
(52, 'Araştırma Asistanı'),
(53, 'Araştırma Direktörü'),
(54, 'Araştırma Ekip Lideri'),
(55, 'Araştırma Kimyageri'),
(56, 'Araştırma Teknisyeni'),
(57, 'Araştırma ve Geliştirme (AR-GE) Çalışanı'),
(58, 'Araştırma ve Geliştirme Direktörü'),
(59, 'Araştırma ve Geliştirme Kimyageri'),
(60, 'Araştırma ve Geliştirme Müdürü'),
(61, 'Araştırma ve Geliştirme Teknisyeni'),
(62, 'Araştırma ve İnovasyon Müdürü'),
(63, 'Araştırmacı'),
(64, 'Araştırıcı'),
(65, 'Arka Site Geliştiricisi'),
(66, 'Arkeolog'),
(67, 'Armatör'),
(68, 'Arpist'),
(69, 'Artist'),
(70, 'Arıcı'),
(71, 'Arşivci'),
(72, 'Asansör Yükleyici'),
(73, 'Asansörcü'),
(74, 'Asistan'),
(75, 'Asker'),
(76, 'Assay Geliştirme Uzmanı'),
(77, 'Asteğmen'),
(78, 'Astrobiyolog'),
(79, 'Astrofizikçi'),
(80, 'Astronom'),
(81, 'Astronot'),
(82, 'Astsubay'),
(83, 'Astsubay Başçavuş'),
(84, 'Astsubay Kıdemli Başçavuş'),
(85, 'Astsubay Kıdemli Çavuş'),
(86, 'Astsubay Kıdemli Üstçavuş'),
(87, 'Astsubay Çavuş'),
(88, 'Astsubay Üstçavuş'),
(89, 'At Besicisi'),
(90, 'Atlet'),
(91, 'Atmosfer Bilimleri Uzmanı'),
(92, 'Atomik Fizikçi'),
(93, 'Av Bekçisi'),
(94, 'Avcı'),
(95, 'Avizeci'),
(96, 'Avukat'),
(97, 'Ayakkabı Boyacısı'),
(98, 'Ayakkabı Tamircisi'),
(99, 'Ayakkabıcı'),
(100, 'Ayrıcalıklı Profesör'),
(101, 'Ayı Oynatıcısı'),
(102, 'Ağ yöneticisi'),
(103, 'Aşçı'),
(104, 'Aşçıbaşı'),
(105, 'Bacacı'),
(106, 'Badanacı'),
(107, 'Baharatçı'),
(108, 'Bahçe Bitkileri Uzmanı'),
(109, 'Bahçıvan'),
(110, 'Bakan'),
(111, 'Bakkal'),
(112, 'Bakteriyolog'),
(113, 'Bakıcı'),
(114, 'Bakım Asistanı'),
(115, 'Bakırcı'),
(116, 'Balon Pilotu'),
(117, 'Balık Çiftliği Çalışanı'),
(118, 'Balıkçı'),
(119, 'Bankacı'),
(120, 'Bankacılık Uzmanı'),
(121, 'Banker'),
(122, 'Barmen'),
(123, 'Barmeyd'),
(124, 'Basketbolcu'),
(125, 'Basın Çalışanı'),
(126, 'Baş Dinleme Müdürü (CLO)'),
(127, 'Baş Editör'),
(128, 'Baş Teknoloji Müdürü (CTO)'),
(129, 'Baş Yönetim Müdürü (COO)'),
(130, 'Başbakan'),
(131, 'Başdümenci'),
(132, 'Başhemşire'),
(133, 'Başkan'),
(134, 'Başkomiser'),
(135, 'Başpiskopos'),
(136, 'Başrahip'),
(137, 'Başçavuş'),
(138, 'Bebek Bakıcısı'),
(139, 'Bekçi'),
(140, 'Belediye Başkanı'),
(141, 'Belediye Meclisi Üyesi'),
(142, 'Benzinci'),
(143, 'Berber'),
(144, 'Besi Hayvancılığı İşçisi'),
(145, 'Besicilik'),
(146, 'Beslenme Bilimci'),
(147, 'Besteci'),
(148, 'Bestekar'),
(149, 'Bilet Satıcısı'),
(150, 'Biletçi'),
(151, 'Bilgi İşlemci'),
(152, 'Bilgisayar Ağ Yöneticisi'),
(153, 'Bilgisayar Bilimleri Teorisyeni'),
(154, 'Bilgisayar Mühendisi'),
(155, 'Bilgisayar Programcısı'),
(156, 'Bilgisayar Tamircisi'),
(157, 'Bilim Ataşesi'),
(158, 'Bilim Danışmanı'),
(159, 'Bilim Programcısı'),
(160, 'Bilim Sanatçısı'),
(161, 'Bilim Teknisyeni'),
(162, 'Bilim Yazarı'),
(163, 'Bilim İnsanı'),
(164, 'Bilimsel Proje Müdürü'),
(165, 'Bilirkişi'),
(166, 'Bilişsel (Kognitif) Psikolog'),
(167, 'Bilişsel (Kognitif) Sinirbilimci'),
(168, 'Binbaşı'),
(169, 'Binicilik'),
(170, 'Bioistatistikçi'),
(171, 'Biracı'),
(172, 'Bisikletçi'),
(173, 'Bisküvici'),
(174, 'Bitki Genetikçisi'),
(175, 'Bitki Patologu'),
(176, 'Bitki Yetiştiriciliği'),
(177, 'Biyoanalitik Bilimci'),
(178, 'Biyoenformatik Araştırmacısı'),
(179, 'Biyofizikçi'),
(180, 'Biyografi Yazarı'),
(181, 'Biyokimyager'),
(182, 'Biyolog'),
(183, 'Biyoloji Profesörü'),
(184, 'Biyolojik Antropolog'),
(185, 'Biyolojik Psikolog'),
(186, 'Biyomedikal Mühendisi'),
(187, 'Biyomekanikçi'),
(188, 'Biyometeorolog'),
(189, 'Biyomoleküler Mühendis'),
(190, 'Biyoteknolojist'),
(191, 'Biyoölçüm Uzmanı'),
(192, 'Blogger'),
(193, 'Bobinajcı'),
(194, 'Bomba İmhacı'),
(195, 'Borsa Bankeri'),
(196, 'Borsacı'),
(197, 'Borucu'),
(198, 'Botanikçi'),
(199, 'Boyacı'),
(200, 'Bozacı'),
(201, 'Bulaşıkçı'),
(202, 'Buldozer Operatörü'),
(203, 'Bulut (Cloud) Mimarı'),
(204, 'Bulut Sistem (Cloud) Uzmanı'),
(205, 'Böcekbilimci (Entomolog)'),
(206, 'Börekçi'),
(207, 'Bütçe Uzmanı'),
(208, 'Büyük Veri Analisti'),
(209, 'Büyükelçi'),
(210, 'Büyüme ve Gelişme Ekonomisti'),
(211, 'Cam Dekorasyon Uzmanı'),
(212, 'Cam Kesici'),
(213, 'Cam Sanatçısı'),
(214, 'Cam İşçisi'),
(215, 'Camcı'),
(216, 'Cebirsel Geometri Uzmanı'),
(217, 'Celep'),
(218, 'Cellat'),
(219, 'Cenaze İşleri Çalışanı'),
(220, 'Centilmen Bilimci (Hobi Bilimcisi)'),
(221, 'Cerrah'),
(222, 'Ceza Avukatı'),
(223, 'Cillopçu (Misketçi)'),
(224, 'Cost Control'),
(225, 'Cumhurbaşkanı'),
(226, 'Dadı'),
(227, 'Daktilograf'),
(228, 'Dalgıç'),
(229, 'Damıtıcı'),
(230, 'Dans Sanatçısı'),
(231, 'Dansöz'),
(232, 'Danışman'),
(233, 'Davranış Bilimci'),
(234, 'Davranışsal Ekonomist'),
(235, 'Davulcu'),
(236, 'Debbağ'),
(237, 'Dedektif'),
(238, 'Dekoratör'),
(239, 'Demirci'),
(240, 'Demiryolu Elektrisyeni'),
(241, 'Demiryolu Çalışanı'),
(242, 'Demiryolu İşçisi'),
(243, 'Demografik Satıcı'),
(244, 'Dendrolog'),
(245, 'Denetim Müdürü'),
(246, 'Denetleyici'),
(247, 'Denetmen'),
(248, 'Denetçi'),
(249, 'Deneysel Evrimsel Biyolog'),
(250, 'Deneysel Fizikçi'),
(251, 'Deniz Mühendisi'),
(252, 'Denizci'),
(253, 'Deontolog'),
(254, 'Depocu'),
(255, 'Derici'),
(256, 'Derin Öğrenme Uzmanı'),
(257, 'Dermatolog'),
(258, 'Desinatör'),
(259, 'Devlet Memuru'),
(260, 'Değirmen İşçisi'),
(261, 'Değirmenci'),
(262, 'Dijital Pazarlama Uzmanı'),
(263, 'Dil Bilimci'),
(264, 'Dil Uzmanı'),
(265, 'Dilci'),
(266, 'Dilenci'),
(267, 'Diplomat'),
(268, 'Disk Jockey (DJ)'),
(269, 'Diyabet Bilimci'),
(270, 'Diyalekt Bilimci'),
(271, 'Diyetisyen'),
(272, 'Dizgici'),
(273, 'Diş Cerrahı'),
(274, 'Diş Hekimi'),
(275, 'Diş Teknisyeni'),
(276, 'Dok İşçisi'),
(277, 'Doktor'),
(278, 'Doku Mühendisi'),
(279, 'Dokumacı'),
(280, 'Donanım Tasarımcısı'),
(281, 'Dondurmacı'),
(282, 'Doçent'),
(283, 'Doğa Bilimci'),
(284, 'Doğa Fotoğrafçısı'),
(285, 'Doğa Koruyucusu'),
(286, 'Doğa Rehberi'),
(287, 'Doğalgazcı'),
(288, 'Doğramacı'),
(289, 'Doğum Uzmanı'),
(290, 'Drone Operatörü'),
(291, 'Dublajcı'),
(292, 'Duvarcı'),
(293, 'Dökümcü'),
(294, 'Dönerci'),
(295, 'Dövizci'),
(296, 'Döşemeci'),
(297, 'Dükkan İşleticisi'),
(298, 'Dümenci'),
(299, 'Dürümcü'),
(300, 'Düzenleme İşleri Müdürü'),
(301, 'Düğmeci'),
(302, 'Dış Mimar'),
(303, 'E-sporcu'),
(304, 'Ebe (Kadın Doğum)'),
(305, 'Eczacı'),
(306, 'Eczacı Kalfası'),
(307, 'Editör'),
(308, 'Ehliyet Kursu Görevlisi'),
(309, 'Ekolog'),
(310, 'Ekonometrist'),
(311, 'Ekonomi Teorisyeni'),
(312, 'Ekonomist'),
(313, 'El İşçisi'),
(314, 'Elektrik Ekipmanı Denetçisi'),
(315, 'Elektrik Mühendisi'),
(316, 'Elektrik-Elektronik Mühendisi'),
(317, 'Elektrikçi'),
(318, 'Elektrisyen'),
(319, 'Elektrolog'),
(320, 'Elektronik Mühendisi'),
(321, 'Elektronik ve Haberleşme Mühendisi'),
(322, 'Eleştirmen'),
(323, 'Embriyolog'),
(324, 'Emlakçı'),
(325, 'Emniyet Amiri'),
(326, 'Emniyet Genel Müdürü'),
(327, 'Endokrinolog'),
(328, 'Endüstri Mühendisi'),
(329, 'Endüstri Sistemleri Mühendisi'),
(330, 'Endüstriyel Ekonomist'),
(331, 'Endüstriyel Tasarımcı'),
(332, 'Enstrüman İmalatçısı'),
(333, 'Enzim Bilimci'),
(334, 'Epidemiyolog'),
(335, 'Epistemolog'),
(336, 'Ergonomist'),
(337, 'Eskici'),
(338, 'Estetisyen'),
(339, 'Etimolog'),
(340, 'Etnolog'),
(341, 'Etnomüzikolog'),
(342, 'Etolog (Hayvan Davranışı Bilimcisi)'),
(343, 'Ev Sahibi'),
(344, 'Ev hanımı'),
(345, 'Evcil Hayvan Uzmanı'),
(346, 'Evcil Hayvan Yetiştiricisi'),
(347, 'Evrimsel Algoritma Araştırmacısı'),
(348, 'Evrimsel Biyolog'),
(349, 'Evrimsel Ekolog'),
(350, 'Evrimsel Ekonomist'),
(351, 'Evrimsel Fizyolog'),
(352, 'Evrimsel Gelişimsel Biyolog'),
(353, 'Evrimsel Mühendis'),
(354, 'Evrimsel Robotikçi'),
(355, 'Evrimsel Sinirbilimci'),
(356, 'Eğitim Danışmanı'),
(357, 'Eğitim Metotları Uzmanı'),
(358, 'Eğitim Teknolojisti'),
(359, 'Eğitimci'),
(360, 'Eğitmen'),
(361, 'Fabrika İşçisi'),
(362, 'Fahişe'),
(363, 'Farmakolog'),
(364, 'Fatura Memuru'),
(365, 'Fenomenolog'),
(366, 'Fermantasyon İşçisi'),
(367, 'Figüran'),
(368, 'Fikolog'),
(369, 'Film Yapımcısı'),
(370, 'Film Yönetmeni'),
(371, 'Filogenetikçi'),
(372, 'Filolog'),
(373, 'Filozof'),
(374, 'Finansal Analist'),
(375, 'Finansör'),
(376, 'Fitopatolog'),
(377, 'Fitososyolog'),
(378, 'Fiziksel Antropolog'),
(379, 'Fizikçi'),
(380, 'Fizyolog'),
(381, 'Fizyonomist'),
(382, 'Fizyopatolog'),
(383, 'Fizyoterapist'),
(384, 'Fon Toplayıcı'),
(385, 'Fon Yazarı'),
(386, 'Fon Yöneticisi'),
(387, 'Fonolog'),
(388, 'Forklift Operatörü'),
(389, 'Fotojeolog'),
(390, 'Fotoğrafçı'),
(391, 'Freelancer'),
(392, 'Futbolcu'),
(393, 'Fırıncı'),
(394, 'Fıçıcı'),
(395, 'Galerici'),
(396, 'Gardiyan'),
(397, 'Garson'),
(398, 'Gazete Dağıtıcısı'),
(399, 'Gazete Satıcısı'),
(400, 'Gazeteci'),
(401, 'Gazeteci Yazar'),
(402, 'Gelecek Bilimci (Fütürolog)'),
(403, 'Gelir Uzman Yardımcısı'),
(404, 'Gelir Uzmanı'),
(405, 'Gelişimsel Biyolog'),
(406, 'Gelişimsel Psikolog'),
(407, 'Geliştirme Teknolojisti'),
(408, 'Gemici'),
(409, 'Gen Düzenleme Yöneticisi'),
(410, 'Genel Yayın Yönetmeni'),
(411, 'Genelkurmay Başkanı'),
(412, 'General'),
(413, 'Genetik Danışmanı'),
(414, 'Genetik Mühendisi'),
(415, 'Genetiği Değiştirilmiş Organizma (GDO) Uzmanı'),
(416, 'Gerontolog'),
(417, 'Geyşa'),
(418, 'Gezegen Bilimci'),
(419, 'Gezgin'),
(420, 'Gezici Vaiz'),
(421, 'Gitarist'),
(422, 'Gondolcu'),
(423, 'Grafiker'),
(424, 'Gramer Uzmanı'),
(425, 'Greyder Operatörü'),
(426, 'Gökbilimci'),
(427, 'Görelilik Fizikçisi'),
(428, 'Görsel/Ses Uzmanı'),
(429, 'Göz Doktoru'),
(430, 'Gözetmen'),
(431, 'Gözlükçü'),
(432, 'Güfteci'),
(433, 'Gümrük Görevlisi'),
(434, 'Gümrük Memuru'),
(435, 'Gümrük Müşavir Yardımcısı'),
(436, 'Gümrük Müşaviri'),
(437, 'Gümrük Uzmanı'),
(438, 'Gündelikçi'),
(439, 'Güvenlik Görevlisi'),
(440, 'Güvenlik Müdürü'),
(441, 'Güvenlik Mühendisi'),
(442, 'Güvenlik Veri Analisti'),
(443, 'Güvenlikçi'),
(444, 'Güzel Sanatçı'),
(445, 'Güzellik Uzmanı'),
(446, 'Gıda Biyoteknolojisti'),
(447, 'Gıda Kimyageri'),
(448, 'Gıda Mikrobiyologu'),
(449, 'Gıda Mühendisi'),
(450, 'Haberci'),
(451, 'Haddeci'),
(452, 'Haham'),
(453, 'Hakem'),
(454, 'Halk Ekonomisti'),
(455, 'Halk Sağlığı Uzmanı'),
(456, 'Halkbilimci'),
(457, 'Halıcı'),
(458, 'Hamal'),
(459, 'Hamamcı'),
(460, 'Hamurkâr'),
(461, 'Hareket Memuru'),
(462, 'Harita Mühendisi'),
(463, 'Haritacı'),
(464, 'Hastabakıcı'),
(465, 'Hastane Araştırma Asistanı'),
(466, 'Hastane Mali Analisti'),
(467, 'Hattat'),
(468, 'Hava Trafik Kontrolörü'),
(469, 'Hava Trafikçisi'),
(470, 'Hava Trafiği Güvenlik Teknisyeni'),
(471, 'Havacı'),
(472, 'Havacılık ve Uzay Mühendisi'),
(473, 'Hayvan Bakıcısı'),
(474, 'Hayvan Beslenmesi Uzmanı'),
(475, 'Hayvan Teknisyeni'),
(476, 'Hayvan Terbiyecisi'),
(477, 'Hayvanat Bahçesi Çalışanı'),
(478, 'Hekim Asistanı'),
(479, 'Hematolog'),
(480, 'Hemşire'),
(481, 'Herpetolog'),
(482, 'Hesap Denetçisi'),
(483, 'Hesap Uzmanı'),
(484, 'Hesaplama Bilimcisi'),
(485, 'Hesaplamalı Dilbilimci'),
(486, 'Hesaplamalı Evrimsel Biyolog'),
(487, 'Hesaplamalı Filogenetikçi'),
(488, 'Hesaplamalı Kimya Yöneticisi'),
(489, 'Hesaplamalı Sinirbilimci'),
(490, 'Heykeltıraş'),
(491, 'Hidrobiyolog'),
(492, 'Hidrolikçi'),
(493, 'Hidrolog'),
(494, 'Histofizyolog'),
(495, 'Histopatolog'),
(496, 'Hizmetli'),
(497, 'Hizmetçi'),
(498, 'Hokkabaz'),
(499, 'Host'),
(500, 'Hostes'),
(501, 'Hukukçu'),
(502, 'Hurdacı'),
(503, 'Hücre Biyologu'),
(504, 'Hücre Hattı Geliştirme Yöneticisi'),
(505, 'Hücre Mühendisi'),
(506, 'Hırdavatçı'),
(507, 'IT'),
(508, 'IT Destek Elemanı'),
(509, 'Intranet Uzmanı'),
(510, 'Irgat'),
(511, 'Irk ve Etnisite Sosyologu'),
(512, 'Işıkçı'),
(513, 'Jeofizik Mühendisi'),
(514, 'Jeohidrolog'),
(515, 'Jeokronolog'),
(516, 'Jeolog'),
(517, 'Jeoloji Mühendisi'),
(518, 'Jeomorfolog'),
(519, 'Jimnastikçi'),
(520, 'Jinekolog'),
(521, 'Jokey'),
(522, 'Jüri'),
(523, 'Kabin Görevlisi'),
(524, 'Kabuk Soyucusu'),
(525, 'Kadın Berberi'),
(526, 'Kadın Doğum Uzmanı'),
(527, 'Kadın Hastalıkları Uzmanı'),
(528, 'Kadın Terzisi'),
(529, 'Kahveci'),
(530, 'Kalaycı'),
(531, 'Kalem Müdürü'),
(532, 'Kalite Asistanı'),
(533, 'Kalite Garanti Müdürü'),
(534, 'Kalite Garanti Teknolojisti'),
(535, 'Kalite Kontrol Analisti'),
(536, 'Kalite Kontrol Müdürü'),
(537, 'Kaloriferci'),
(538, 'Kalp ve Damar Uzmanı'),
(539, 'Kalıpçı'),
(540, 'Kamarot'),
(541, 'Kamera Mekaniği'),
(542, 'Kameraman'),
(543, 'Kamusal Bilim İnsanı'),
(544, 'Kamyoncu'),
(545, 'Kaplamacı'),
(546, 'Kaportacı'),
(547, 'Kaptan'),
(548, 'Kapı Satıcısı'),
(549, 'Kapıcı'),
(550, 'Kardinal'),
(551, 'Kardiyolog'),
(552, 'Karikatürist'),
(553, 'Kariyer Diplomatı'),
(554, 'Kariyer Yönlendirme Danışmanı'),
(555, 'Karoserci'),
(556, 'Karpuzcu'),
(557, 'Kartograf'),
(558, 'Karşılaştırmalı Anatomist'),
(559, 'Karşılaştırmalı Dilbilimci'),
(560, 'Karşılaştırmalı Politika Uzmanı'),
(561, 'Kasap'),
(562, 'Kasiyer'),
(563, 'Kat Görevlisi'),
(564, 'Katı Atık Teknisyeni'),
(565, 'Katı Hal Fizikçisi'),
(566, 'Kaymakam'),
(567, 'Kaynak Ekonomisti'),
(568, 'Kaynakçı'),
(569, 'Kayıkçı'),
(570, 'Kayıtçı'),
(571, 'Kazıcı'),
(572, 'Kebapçı'),
(573, 'Kemancı'),
(574, 'Kesimci'),
(575, 'Kimya Mühendisi'),
(576, 'Kimya Teknisyeni'),
(577, 'Kimyager'),
(578, 'Kitap Koçu'),
(579, 'Kitapçı'),
(580, 'Kitlesel İletişim Uzmanı'),
(581, 'Klarnetçi'),
(582, 'Klasik Arkeolog'),
(583, 'Klasik Edebiyatçı'),
(584, 'Klimatolog (İklim Bilimci)'),
(585, 'Klinik Araştırma Koordinatörü'),
(586, 'Klinik Ecza Asistanı'),
(587, 'Klinik Farmakoloji Profesörü'),
(588, 'Klinik Veri Araştırmacısı'),
(589, 'Koleksiyoncu'),
(590, 'Komedyen'),
(591, 'Komiser'),
(592, 'Komiser Yardımcısı'),
(593, 'Komisyoncu'),
(594, 'Konserveci'),
(595, 'Konsolos'),
(596, 'Konsomatris'),
(597, 'Kontrolör'),
(598, 'Konuşma Uzmanı'),
(599, 'Konuşma Yazarı'),
(600, 'Konveyör Operatörü'),
(601, 'Kopya Editörü'),
(602, 'Kopyalayıcı'),
(603, 'Koramiral'),
(604, 'Koreograf'),
(605, 'Korgeneral'),
(606, 'Koro Ustası'),
(607, 'Korozyon Kontrolörü'),
(608, 'Korsan'),
(609, 'Koruma Görevlisi'),
(610, 'Koruma Teknisyeni'),
(611, 'Kozmetoloji Uzmanı'),
(612, 'Kozmolog'),
(613, 'Krayobiyolog'),
(614, 'Kreatif Danışman'),
(615, 'Kredi Analisti'),
(616, 'Kriminolog'),
(617, 'Kriptopara Madencisi'),
(618, 'Kriptozoolog'),
(619, 'Kronobiyolog'),
(620, 'Kronolog'),
(621, 'Krupiyer'),
(622, 'Kuaför'),
(623, 'Kulak Burun Boğazcı'),
(624, 'Kullanıcı Deneyimi (UX) Tasarımcısı'),
(625, 'Kumarbaz'),
(626, 'Kumaşçı'),
(627, 'Kumcu'),
(628, 'Kurban Bilimci'),
(629, 'Kuru Temizlemeci'),
(630, 'Kuruyemişçi'),
(631, 'Kurye'),
(632, 'Kuyumcu'),
(633, 'Kuşçu'),
(634, 'Kâhya'),
(635, 'Kâtip'),
(636, 'Kâğıtçı'),
(637, 'Köfteci'),
(638, 'Kök Hücre Araştırıcısı'),
(639, 'Köken Bilimci'),
(640, 'Kömürcü'),
(641, 'Köpek Eğiticisi'),
(642, 'Köşe Yazarı'),
(643, 'Kültürel Antropolog'),
(644, 'Kürkçü'),
(645, 'Kütleçekim Fizikçisi'),
(646, 'Kütüphaneci'),
(647, 'Kırtasiyeci'),
(648, 'Kıyaslamalı Edebiyat Uzmanı'),
(649, 'Laborant'),
(650, 'Laboratuar işçisi'),
(651, 'Laboratuvar Asistanı'),
(652, 'Laboratuvar Okutmanı'),
(653, 'Laboratuvar Teknisyeni'),
(654, 'Laboratuvar Yöneticisi'),
(655, 'Lahmacuncu'),
(656, 'Lehimci'),
(657, 'Leksikolog'),
(658, 'Lepidopterolog'),
(659, 'Levazımcı'),
(660, 'Likenolog'),
(661, 'Limnolog'),
(662, 'Litograf'),
(663, 'Liturjiolog'),
(664, 'Lobici'),
(665, 'Lojistik Uzmanı'),
(666, 'Lokantacı'),
(667, 'Lokman'),
(668, 'Lokomotifçi'),
(669, 'Lostracı'),
(670, 'Lostromo'),
(671, 'Lyft Şoförü'),
(672, 'Maden Hava Kontrol Teknisyeni'),
(673, 'Madenci'),
(674, 'Makastar'),
(675, 'Makasçı'),
(676, 'Maketçi'),
(677, 'Makina Denetçisi'),
(678, 'Makina Mühendisi'),
(679, 'Makina Zabiti'),
(680, 'Makina Öğrenmesi Araştırmacısı'),
(681, 'Makinist'),
(682, 'Makroekonomi Uzmanı'),
(683, 'Makyajcı'),
(684, 'Mali Hizmetler Uzmanı'),
(685, 'Mali İşler Müdürü (CFO)'),
(686, 'Manastır Baş Rahibesi'),
(687, 'Manav'),
(688, 'Manifaturacı'),
(689, 'Manikürcü'),
(690, 'Manken'),
(691, 'Mantık Bilimci'),
(692, 'Mantık Matematikçisi'),
(693, 'Marangoz'),
(694, 'Mareşal'),
(695, 'Marka Tasarımcısı'),
(696, 'Marka Uzmanı'),
(697, 'Marka Yöneticisi'),
(698, 'Masör'),
(699, 'Masöz'),
(700, 'Matador'),
(701, 'Matbaacı'),
(702, 'Matematiksel Analiz Uzmanı'),
(703, 'Matematiksel Sosyolog'),
(704, 'Matematikçi'),
(705, 'Matkapçı'),
(706, 'Medeni Hukuk Avukatı'),
(707, 'Mekatronik Mühendisi'),
(708, 'Memur'),
(709, 'Menajer'),
(710, 'Mermerci'),
(711, 'Metal İşleyici'),
(712, 'Metal İşçisi'),
(713, 'Metalurji Mühendisi'),
(714, 'Meteorolog'),
(715, 'Meteoroloji Uzmanı'),
(716, 'Metin Yazarı'),
(717, 'Metodolog'),
(718, 'Metrolog'),
(719, 'Mevsimlik İşçi'),
(720, 'Meydancı'),
(721, 'Meyhaneci'),
(722, 'Meyve İşçisi'),
(723, 'Mezar Kazıcı'),
(724, 'Mezarcı'),
(725, 'Midyeci'),
(726, 'Mikolog'),
(727, 'Mikrobiyal Sistem Mühendisi'),
(728, 'Mikrobiyolog'),
(729, 'Mikroekonomi Uzmanı'),
(730, 'Mikromorfolog'),
(731, 'Milletvekili'),
(732, 'Mimar'),
(733, 'Misyoner'),
(734, 'Mitolog'),
(735, 'Mobil Uygulama (App) Geliştiricisi'),
(736, 'Mobil Uygulama (App) Tasarımcısı'),
(737, 'Mobilyacı'),
(738, 'Moda Tasarımcısı'),
(739, 'Modacı'),
(740, 'Model'),
(741, 'Modelci'),
(742, 'Modelist'),
(743, 'Moderatör'),
(744, 'Moleküler Bilimci'),
(745, 'Moleküler Biyolog'),
(746, 'Moleküler Fizikçi'),
(747, 'Moleküler ve Hücresel Sinirbilimci'),
(748, 'Montajcı'),
(749, 'Montör'),
(750, 'Morfolog'),
(751, 'Motor Tamircisi'),
(752, 'Motorcu'),
(753, 'Muallim'),
(754, 'Mucit'),
(755, 'Muhabbet Tellalı'),
(756, 'Muhabir'),
(757, 'Muhafız'),
(758, 'Muhasebeci'),
(759, 'Muhtar'),
(760, 'Multimedya Tasarımcısı'),
(761, 'Mumyalayıcı'),
(762, 'Muzcu'),
(763, 'Mübaşir'),
(764, 'Müdür'),
(765, 'Müdür Yardımcısı'),
(766, 'Müezzin'),
(767, 'Müfettiş'),
(768, 'Mühendis'),
(769, 'Mühendislik Teknisyeni'),
(770, 'Mürebbiye'),
(771, 'Müsteşar'),
(772, 'Müteahhit'),
(773, 'Mütercim'),
(774, 'Müze Bilimci'),
(775, 'Müze Müdürü'),
(776, 'Müzik Bilimci'),
(777, 'Müzik Direktörü'),
(778, 'Müzik Enstrümanı Teknsiyeni'),
(779, 'Müzik Yönetmeni'),
(780, 'Müzikolog'),
(781, 'Müzisyen'),
(782, 'Müşavir'),
(783, 'Nakliyeci'),
(784, 'Nakışçı'),
(785, 'Nalbant'),
(786, 'Nalbur'),
(787, 'Nalıncı'),
(788, 'Nanobilimci'),
(789, 'Nanoteknoloji Uzmanı'),
(790, 'Nefrolog'),
(791, 'Nekrolog'),
(792, 'Nematolog'),
(793, 'Neonatolog'),
(794, 'Nicel Genetikçi'),
(795, 'Noter'),
(796, 'Nörofizyolog'),
(797, 'Nöropatolog'),
(798, 'Nöropsikolog'),
(799, 'Nöroradyolog'),
(800, 'Nükleer Fizikçi'),
(801, 'Nükleer Santral Çalışanı'),
(802, 'Obuacı'),
(803, 'Ocakçı'),
(804, 'Odacı'),
(805, 'Oduncu'),
(806, 'Okul Bilim Teknisyeni'),
(807, 'Okul Müdürü'),
(808, 'Okutman'),
(809, 'Okçu'),
(810, 'Olasılık İstatistikçisi'),
(811, 'Onbaşı'),
(812, 'Onkolog'),
(813, 'Onkoloji Araştırmacısı'),
(814, 'Onomatolog'),
(815, 'Ontolog'),
(816, 'Opera Sanatçısı'),
(817, 'Operasyon Araştırma Analizi Yöneticisi'),
(818, 'Operasyon Birim Müdürü'),
(819, 'Operasyon Memuru'),
(820, 'Operasyonel Araştırma Mühendisi'),
(821, 'Operatör'),
(822, 'Optalmolog'),
(823, 'Optik Fizikçi'),
(824, 'Ordinaryus Profesör'),
(825, 'Organik Laboratuvar İşçisi'),
(826, 'Organizasyon Lideri'),
(827, 'Orgcu'),
(828, 'Orgeneral'),
(829, 'Orman Mühendisi'),
(830, 'Orman İşçisi'),
(831, 'Ornitolog (Kuş Bilimci)'),
(832, 'Ortopedist'),
(833, 'Osteolog'),
(834, 'Otel Çalışanı'),
(835, 'Otel İşçisi'),
(836, 'Otelci'),
(837, 'Oto Elektrikçisi'),
(838, 'Oto Lastik Tamircisi'),
(839, 'Oto Tamircisi'),
(840, 'Oto Yedek Parçacı'),
(841, 'Otogar veya Lokanta Ayakçısı'),
(842, 'Otolarinjolog'),
(843, 'Otomobil Elektrik Uzmanı'),
(844, 'Otomobil Teknisyeni'),
(845, 'Overlokçu'),
(846, 'Oymacı'),
(847, 'Oyun Hostesi'),
(848, 'Oyun Yazarı'),
(849, 'Oyuncakçı'),
(850, 'Oyuncu'),
(851, 'Oşinograf'),
(852, 'Paketleyici'),
(853, 'Paleobiyolog'),
(854, 'Paleoekolog'),
(855, 'Paleontolog'),
(856, 'Paleopatalog'),
(857, 'Paleozoolog'),
(858, 'Palinolog'),
(859, 'Palyaço'),
(860, 'Pandomimci'),
(861, 'Pansiyoncu'),
(862, 'Pansumancı'),
(863, 'Papa'),
(864, 'Papaz'),
(865, 'Paralı asker'),
(866, 'Paramedik'),
(867, 'Parazitolog'),
(868, 'Park bekçisi'),
(869, 'Pastörizör'),
(870, 'Patofizyolog'),
(871, 'Patolog'),
(872, 'Pazar Araştırmacısı'),
(873, 'Pazarcı'),
(874, 'Pazarlama Müdürü'),
(875, 'Pazarlama Uzmanı'),
(876, 'Pediyatrist'),
(877, 'Pedolog'),
(878, 'Pencereci'),
(879, 'Personel Müdürü'),
(880, 'Perukçu'),
(881, 'Petrol Bilimci'),
(882, 'Petrol Mühendisi'),
(883, 'Peynirci'),
(884, 'Peyzaj Mimarı'),
(885, 'Peyzaj Teknikeri'),
(886, 'Peçeteci'),
(887, 'Pideci'),
(888, 'Pilavcı'),
(889, 'Pilot'),
(890, 'Piskopos'),
(891, 'Piyade'),
(892, 'Piyango Satıcısı'),
(893, 'Piyanist'),
(894, 'Piyasa Danışmanı'),
(895, 'Piyasa Erişim Analisti'),
(896, 'Pizzacı'),
(897, 'Plazma Fizikçisi'),
(898, 'Podcast Üreticisi'),
(899, 'Polis'),
(900, 'Polis Memuru'),
(901, 'Polis İmdat (155) Operatörü'),
(902, 'Polis Şefi'),
(903, 'Polisajcı'),
(904, 'Politik Modeller ve Metotlar Uzmanı'),
(905, 'Politika Bilimcisi'),
(906, 'Politika Teorisyeni'),
(907, 'Politikacı'),
(908, 'Pompacı'),
(909, 'Popülasyon Genetikçisi'),
(910, 'Postacı'),
(911, 'Postane Müdürü'),
(912, 'Postane Çalışanı'),
(913, 'Primatolog'),
(914, 'Profesyonel Programlar Asistanı'),
(915, 'Profesör'),
(916, 'Programlama Dilleri Uzmanı'),
(917, 'Proje Yöneticisi'),
(918, 'Proktolog'),
(919, 'Protokol Görevlisi'),
(920, 'Protozoolog'),
(921, 'Psikiyatr'),
(922, 'Psikobiyolog'),
(923, 'Psikodilbilimci'),
(924, 'Psikolog'),
(925, 'Psikolojik Danışmanlık ve Rehberlik (PDR)'),
(926, 'Psikopatolog'),
(927, 'Pteridolog'),
(928, 'Radyo ve Televizyon Teknisyeni'),
(929, 'Radyobiyolog'),
(930, 'Radyograf'),
(931, 'Radyolog'),
(932, 'Radyoloji Teknisyeni/Teknikeri'),
(933, 'Radyoterapist'),
(934, 'Redaktör'),
(935, 'Rehabilitasyon Mühendisi'),
(936, 'Rehber'),
(937, 'Rejisör'),
(938, 'Reklamcı'),
(939, 'Rektör'),
(940, 'Rektör Yardımcısı'),
(941, 'Remayözcü'),
(942, 'Resepsiyon Memuru'),
(943, 'Resepsiyonist'),
(944, 'Ressam'),
(945, 'Retorik Araştırmalar Uzmanı'),
(946, 'Robotik Uzmanı'),
(947, 'Robotikçi'),
(948, 'Romatolog'),
(949, 'Rot Balansçı'),
(950, 'Röntgenci'),
(951, 'Rötüş Uzmanı'),
(952, 'SEO Uzmanı'),
(953, 'STEM Kariyer Danışmanı'),
(954, 'Saat Tamircisi'),
(955, 'Saatçi'),
(956, 'Safsata Uzmanı'),
(957, 'Sahil Koruma'),
(958, 'Saksofoncu'),
(959, 'Salepçi'),
(960, 'Sanal Asistan'),
(961, 'Sanat Eleştirmeni'),
(962, 'Sanat Restoratörü'),
(963, 'Sanat Tarihçisi'),
(964, 'Sanat Yönetmeni'),
(965, 'Sanayici'),
(966, 'Sansürcü'),
(967, 'Santral Memuru'),
(968, 'Saraç'),
(969, 'Sarraf'),
(970, 'Satın Alma Müdürü'),
(971, 'Satış Elemanı'),
(972, 'Satış Müdürü'),
(973, 'Savaşçı'),
(974, 'Savcı'),
(975, 'Sayı Teorisyeni'),
(976, 'Saz Şairi'),
(977, 'Sağlık Araştırmaları Asistanı'),
(978, 'Sağlık Bilimci'),
(979, 'Sağlık Teknisyeni'),
(980, 'Sağlık Teknolojiileri Asistanı'),
(981, 'Sedimentolog'),
(982, 'Sekreter'),
(983, 'Seksolog'),
(984, 'Selüloz Operatörü'),
(985, 'Semantikçi'),
(986, 'Semptom Bilimci'),
(987, 'Senarist'),
(988, 'Sepetçi'),
(989, 'Seramik Model Yapıcısı'),
(990, 'Serbest Muhasebeci Mali Müşavir'),
(991, 'Serbest Yazar'),
(992, 'Ses Bilimci'),
(993, 'Ses Efekti Teknisyeni'),
(994, 'Ses Sanatçısı'),
(995, 'Ses Teknisyeni'),
(996, 'Seslendirme Sanatçısı'),
(997, 'Sevk Operatörü'),
(998, 'Seyis'),
(999, 'Siber Güvenlik Uzmanı'),
(1000, 'Sicil Memuru'),
(1001, 'Sigorta Temsilcisi'),
(1002, 'Sigortacı'),
(1003, 'Sihirbaz'),
(1004, 'Silahçı'),
(1005, 'Silahşör'),
(1006, 'Silindir Operatörü'),
(1007, 'Simitçi'),
(1008, 'Simyacı'),
(1009, 'Sinirbilimci (Nörobiyolog)'),
(1010, 'Sirk Sanatçısı'),
(1011, 'Sismoloji Uzmanı'),
(1012, 'Sistem Analisti'),
(1013, 'Sistem Geliştirici'),
(1014, 'Sistem Mühendisi'),
(1015, 'Sistem Sinirbilimcisi'),
(1016, 'Sistem Tasarımcısı'),
(1017, 'Sistem yöneticisi'),
(1018, 'Sitolog'),
(1019, 'Sitoteknoloji Uzmanı'),
(1020, 'Sokak Satıcısı'),
(1021, 'Sokak Çalgıcısı'),
(1022, 'Son Ütücü'),
(1023, 'Sorgu Hâkimi'),
(1024, 'Sosyal Antropolog'),
(1025, 'Sosyal Hizmet Uzmanı'),
(1026, 'Sosyal Katman Uzmanı'),
(1027, 'Sosyal Medya Danışmanı'),
(1028, 'Sosyal Medya Uzmanı'),
(1029, 'Sosyal Medya Yöneticisi'),
(1030, 'Sosyal Psikolog'),
(1031, 'Sosyobiyolog'),
(1032, 'Sosyodilbilimci'),
(1033, 'Sosyolog'),
(1034, 'Sosyoloji Teorisyeni'),
(1035, 'Soğuk Demirci'),
(1036, 'Spiker'),
(1037, 'Spor Müdürü'),
(1038, 'Standart Mühendisi'),
(1039, 'Stenograf'),
(1040, 'Stilist'),
(1041, 'Striptizci'),
(1042, 'Su Kaynakları Mühendisi'),
(1043, 'Su Kültürü Uzmanı'),
(1044, 'Su Tesisatçısı'),
(1045, 'Su Ürünleri Uzmanı'),
(1046, 'Subay'),
(1047, 'Sucu'),
(1048, 'Suflör'),
(1049, 'Sulh Hâkimi'),
(1050, 'Sunucu'),
(1051, 'Susuz Araç Yıkama'),
(1052, 'Sünnetçi'),
(1053, 'Süpermarket Çalışanı'),
(1054, 'Sürdürülebilirlik Mühendisi'),
(1055, 'Sürdürülebilirlik Yöneticisi'),
(1056, 'Süreç Mühendisi'),
(1057, 'Sürveyan'),
(1058, 'Sürücüsüz Araç Mühendisi'),
(1059, 'Sütanne'),
(1060, 'Sütçü'),
(1061, 'Sınırlı Baş Makinist'),
(1062, 'Sıtma Bilimci'),
(1063, 'Tabakçı'),
(1064, 'Tabelacı'),
(1065, 'Tahsildar'),
(1066, 'Tahıl Bilimcisi'),
(1067, 'Tahıl Uzmanı'),
(1068, 'Tahıl İşleme Operatörü'),
(1069, 'Taksi Şoförü'),
(1070, 'Taksici'),
(1071, 'Taksonomist'),
(1072, 'Tamirci'),
(1073, 'Tarih Bilimci'),
(1074, 'Tarihsel Dilbilimci'),
(1075, 'Tarihsel Sosyolog'),
(1076, 'Tarihçi'),
(1077, 'Tarım Mühendisi'),
(1078, 'Tarım işçisi'),
(1079, 'Tasarımcı'),
(1080, 'Tatlıcı'),
(1081, 'Tavukçu'),
(1082, 'Tayfa'),
(1083, 'Taşlayıcı'),
(1084, 'Taşçı'),
(1085, 'Taşımacılık Sistemleri Mühendisi'),
(1086, 'Tefeci'),
(1087, 'Teknik Editör'),
(1088, 'Teknik Yazar'),
(1089, 'Tekniker'),
(1090, 'Teknisyen'),
(1091, 'Teknisyen Asistanı'),
(1092, 'Teknoloji Uzmanı'),
(1093, 'Tekstil İşçisi'),
(1094, 'Telefon operatörü'),
(1095, 'Telekomünikasyon Mühendisi'),
(1096, 'Telekomünikasyon Çalışanı'),
(1097, 'Telekız'),
(1098, 'Teletıp Hekimi'),
(1099, 'Televizyon Tamircisi'),
(1100, 'Temel Parçacık Fizikçisi'),
(1101, 'Temizlikçi'),
(1102, 'Temsilci'),
(1103, 'Teorik Biyolog'),
(1104, 'Teorik Fizikçi'),
(1105, 'Terapist'),
(1106, 'Tercüman'),
(1107, 'Terepati Müdürü'),
(1108, 'Terzi'),
(1109, 'Tesisatçı'),
(1110, 'Test Mühendisi'),
(1111, 'Test Pilotu'),
(1112, 'Tesviyeci'),
(1113, 'Tezgahtar'),
(1114, 'Teğmen'),
(1115, 'Teşrifatçı'),
(1116, 'Ticaret Hukuku Avukatı'),
(1117, 'Tiyatro Yönetmeni'),
(1118, 'Toksikolog'),
(1119, 'Tombalacı'),
(1120, 'Toplam Kalite Müdürü'),
(1121, 'Toplum Politikaları Uzmanı'),
(1122, 'Toplum Sağlığı Uzmanı'),
(1123, 'Toplumsal Beslenme Uzmanı'),
(1124, 'Topolog'),
(1125, 'Toprak Bilimci'),
(1126, 'Topçu'),
(1127, 'Tornacı'),
(1128, 'Toz Kontrol Teknisyeni'),
(1129, 'Tramvay Operatörü'),
(1130, 'Tribolog'),
(1131, 'Tuhafiyeci'),
(1132, 'Turizm Acentesi'),
(1133, 'Turizmci'),
(1134, 'Turşucu'),
(1135, 'Tuzcu'),
(1136, 'Tuğgeneral'),
(1137, 'Tuğlacı'),
(1138, 'Twitch Yayıncısı'),
(1139, 'Tümamiral'),
(1140, 'Tümgeneral'),
(1141, 'Tıbbi Araştırma Teknisyeni'),
(1142, 'Tıbbi Fizik Araştırmacısı'),
(1143, 'Tıbbi Hizmetler Asistanı'),
(1144, 'Tıbbi İletişim Müdürü'),
(1145, 'Tıp Bilimci'),
(1146, 'Tıp Yazarı'),
(1147, 'Uber Şoförü'),
(1148, 'Ulaşım Sorumlusu'),
(1149, 'Uluslararası Beslenme Uzmanı'),
(1150, 'Uluslararası Ekonomist'),
(1151, 'Uluslararası İlişkiler Uzmanı'),
(1152, 'Ustabaşı'),
(1153, 'Uydu Antenci'),
(1154, 'Uydu Veri Analisti'),
(1155, 'Uygulamalı Dilbilimci'),
(1156, 'Uygulamalı Fizikçi'),
(1157, 'Uygulamalı Matematikçi'),
(1158, 'Uyum Teknisyeni'),
(1159, 'Uzay Bilimcisi'),
(1160, 'Uzay Biyologu'),
(1161, 'Uzay Fotoğrafçısı (Astrofotoğrafçı)'),
(1162, 'Uzay Mühendisi'),
(1163, 'Uzman Jandarma'),
(1164, 'Uzman Onbaşı'),
(1165, 'Uzman Çavuş'),
(1166, 'Uzun Yol Kaptanı'),
(1167, 'Uzun Yol Şoförü'),
(1168, 'Uçak Mekaniği'),
(1169, 'Uçak Pilotu'),
(1170, 'Uçuş Mühendisi'),
(1171, 'Uçuş Teknisyeni'),
(1172, 'Uşak'),
(1173, 'Vahşiyaşam Araştırmacısı'),
(1174, 'Vaiz'),
(1175, 'Vali'),
(1176, 'Vatman'),
(1177, 'Vergi Müfettişi'),
(1178, 'Vergi Tahakkuk Memuru'),
(1179, 'Vergi denetmeni'),
(1180, 'Veri Bilimci'),
(1181, 'Veri Hazırlama ve Kontrol İşletmeni'),
(1182, 'Veri Madencisi'),
(1183, 'Veritabanı Yöneticisi'),
(1184, 'Vestiyerci'),
(1185, 'Veteriner Hekim'),
(1186, 'Veteriner Sağlık Teknikeri'),
(1187, 'Veteriner Sağlık Teknisyeni'),
(1188, 'Veznedar'),
(1189, 'Video Editörü'),
(1190, 'Video Jockey (VJ)'),
(1191, 'Videograf'),
(1192, 'Vinç Operatörü'),
(1193, 'Virolog'),
(1194, 'Vitrinci'),
(1195, 'Viyolonselci'),
(1196, 'Vulkanolog'),
(1197, 'Yapay Zeka Mühendisi'),
(1198, 'Yapay Zeka Uzmanı'),
(1199, 'Yapı Mühendisi'),
(1200, 'Yapısal Biyolog'),
(1201, 'Yarbay'),
(1202, 'Yardımcı Doçent'),
(1203, 'Yardımcı Hakem'),
(1204, 'Yardımcı Hizmetli'),
(1205, 'Yardımcı Pilot'),
(1206, 'Yargıç'),
(1207, 'Yatırım Uzmanı'),
(1208, 'Yayın Yönetmeni'),
(1209, 'Yayıncı'),
(1210, 'Yazar'),
(1211, 'Yazı İşleri Müdürü'),
(1212, 'Yazılım Geliştirici'),
(1213, 'Yazılım Geliştiricisi'),
(1214, 'Yazılım Mühendisi'),
(1215, 'Yaşam Koçu'),
(1216, 'Yelkenci'),
(1217, 'Yeminli Mali Müşavir'),
(1218, 'Yeminli Tercüman'),
(1219, 'Yer Gösterici'),
(1220, 'Yer Teknisyeni'),
(1221, 'Yeraltı Suları Teknisyeni'),
(1222, 'Yerölçmeci'),
(1223, 'Yol bekçisi'),
(1224, 'Yol İşaret Asistanı'),
(1225, 'Yorgancı'),
(1226, 'Yorumcu'),
(1227, 'YouTube İçerik Üreticisi (YouTuber)'),
(1228, 'Yoğun Hal Fizikçisi'),
(1229, 'Yoğurtçu'),
(1230, 'Yönetici'),
(1231, 'Yönetim Kurulu Başkanı (CEO)'),
(1232, 'Yönetmen'),
(1233, 'Yüzbaşı'),
(1234, 'Yüzücü'),
(1235, 'Yıkıcı'),
(1236, 'Zabıta'),
(1237, 'Zoolog'),
(1238, 'Çamaşırcı'),
(1239, 'Çantacı'),
(1240, 'Çarkçı'),
(1241, 'Çatıcı'),
(1242, 'Çavuş'),
(1243, 'Çaycı'),
(1244, 'Çevik Kuvvet'),
(1245, 'Çevirmen'),
(1246, 'Çevre Acil Durum Planlayıcısı'),
(1247, 'Çevre Mühendisi'),
(1248, 'Çevre Projeleri Analisti'),
(1249, 'Çevre Sağlığı Uzmanı'),
(1250, 'Çevre Uzmanı'),
(1251, 'Çevre Veri Analisti'),
(1252, 'Çevrebilimci'),
(1253, 'Çeyizci'),
(1254, 'Çeşitlilik Dilbilimcisi'),
(1255, 'Çiftlik İşletici'),
(1256, 'Çiftçi'),
(1257, 'Çikolatacı'),
(1258, 'Çilingir'),
(1259, 'Çinici'),
(1260, 'Çitçi'),
(1261, 'Çiçekçi'),
(1262, 'Çoban'),
(1263, 'Çocuk Doktoru'),
(1264, 'Çocuk Hemşiresi'),
(1265, 'Çorapçı'),
(1266, 'Çömlekçi'),
(1267, 'Çöp işçisi'),
(1268, 'Çöpçü'),
(1269, 'Çıkrıkçı'),
(1270, 'Çıkıkçı'),
(1271, 'Çırak'),
(1272, 'Ön Büro Elemanı'),
(1273, 'Ön Muhasebe Sorumlusu'),
(1274, 'Ön Muhasebe Yardımcı Elemanı'),
(1275, 'Ön Muhasebeci'),
(1276, 'Ön Site Geliştiricisi'),
(1277, 'Örmeci'),
(1278, 'Özel Kalem Müdürü'),
(1279, 'Özel Sektör Çalışanı'),
(1280, 'Özel Şoför'),
(1281, 'Öğrenci'),
(1282, 'Öğretim Elemanı'),
(1283, 'Öğretim Görevlisi'),
(1284, 'Öğretim Üyesi'),
(1285, 'Öğretmen'),
(1286, 'Üretici'),
(1287, 'Ürolog'),
(1288, 'Ürün Deneticisi'),
(1289, 'Ürün Mühendisi'),
(1290, 'Ürün Test Müdürü'),
(1291, 'Ürün Test Uzmanı'),
(1292, 'Üst Düzey Yönetici'),
(1293, 'Üsteğmen'),
(1294, 'Ütücü'),
(1295, 'Üzümcü'),
(1296, 'İcra Avukatı'),
(1297, 'İcra Memuru'),
(1298, 'İdeolog'),
(1299, 'İhracatçı'),
(1300, 'İhtiyolog (Balık Bilimci)'),
(1301, 'İklim Veri Analisti'),
(1302, 'İktisatçı'),
(1303, 'İlahiyatçı'),
(1304, 'İlaç Denetim İşleri Yöneticisi'),
(1305, 'İlaç Denetmeni'),
(1306, 'İlaç Kimyageri'),
(1307, 'İletişim Araştırmacısı'),
(1308, 'İletişim Mühendisi'),
(1309, 'İllüzyonist'),
(1310, 'İmam'),
(1311, 'İmmünolog'),
(1312, 'İmmünopatolog'),
(1313, 'İnsan Faktörleri Mühendisi'),
(1314, 'İnsan Kaynakları Uzmanı'),
(1315, 'İnşaat Mühendisi'),
(1316, 'İnşaatçı'),
(1317, 'İplikçi'),
(1318, 'İpçi'),
(1319, 'İstatistik Teorisyeni'),
(1320, 'İstatistikçi'),
(1321, 'İstihkâmcı'),
(1322, 'İtfaiye'),
(1323, 'İtfaiyeci'),
(1324, 'İthalatçı'),
(1325, 'İç Mimar'),
(1326, 'İçerik Moderatörü'),
(1327, 'İçerik Pazarlayıcı'),
(1328, 'İçerik Üreticisi'),
(1329, 'İğneci'),
(1330, 'İş Analisti'),
(1331, 'İş Ekonomisti'),
(1332, 'İş Sistem Analisti'),
(1333, 'İş ve Uğraşı Terapisti'),
(1334, 'İşaretçi'),
(1335, 'İşlem Danışmanı'),
(1336, 'İşletme Mühendisi'),
(1337, 'İşletmeci'),
(1338, 'İşportacı'),
(1339, 'İşçi'),
(1340, 'Şahinci'),
(1341, 'Şair'),
(1342, 'Şapel Papazı'),
(1343, 'Şapkacı'),
(1344, 'Şarap Üreticisi'),
(1345, 'Şarapçı'),
(1346, 'Şarküter'),
(1347, 'Şarküteri, Gıda Pazarları ve Bakkal Satış Elemanı'),
(1348, 'Şarkı Sözü Yazarı'),
(1349, 'Şarkıcı'),
(1350, 'Şarlatan'),
(1351, 'Şehir Plancısı'),
(1352, 'Şehir ve Bölge Planlama'),
(1353, 'Şekerci'),
(1354, 'Şemsiyeci'),
(1355, 'Şifre Çözücü'),
(1356, 'Şifre Çözümleyici'),
(1357, 'Şimşirci'),
(1358, 'Şirket Avukatı'),
(1359, 'Şoför');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mulk`
--

CREATE TABLE `mulk` (
  `mulk_id` int(11) NOT NULL,
  `mulk_adres` varchar(60) NOT NULL,
  `mulk_turu` varchar(20) NOT NULL,
  `sahip_id` int(11) NOT NULL,
  `ilce_id` int(11) NOT NULL,
  `musteri_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `mulk`
--

INSERT INTO `mulk` (`mulk_id`, `mulk_adres`, `mulk_turu`, `sahip_id`, `ilce_id`, `musteri_id`) VALUES
(1, 'Adnan Menderes Mahallesi', 'Arsa', 4, 1, 9),
(2, 'Akalan Mahallesi', 'Ev', 3, 12, 10),
(3, 'Alipaşa Mahallesi', 'Dükkan', 5, 22, 1),
(4, 'Sümer Mahallesi', 'Arsa', 6, 25, 8),
(5, 'Beyazıt Mahallesi', 'Ev', 1, 16, 7),
(6, 'Levent Mahallesi', 'Dükkan', 2, 8, 6),
(7, 'Merkez Mahallesi', 'Arsa', 7, 2, 5),
(8, 'Yeşilyurt Mahallesi', 'Tarla', 4, 5, 9),
(9, 'Fulya Mahallesi', 'Ev', 8, 24, 3),
(10, 'Güven Mahallesi', 'Arsa', 9, 18, 10);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mulk_sahibi`
--

CREATE TABLE `mulk_sahibi` (
  `sahip_id` int(11) NOT NULL,
  `sahip_ad` varchar(50) NOT NULL,
  `sahip_tel_no` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `mulk_sahibi`
--

INSERT INTO `mulk_sahibi` (`sahip_id`, `sahip_ad`, `sahip_tel_no`) VALUES
(1, 'Cenk Yılmaz', '05557563710'),
(2, 'Mert Akbaş', '05557563711'),
(3, 'Ceren Alım', '05557563712'),
(4, 'Murat Kocatepe', '05557537102'),
(5, 'Selin Yalın', '05557563745'),
(6, 'Barış Çukurbaşı', '05557563755'),
(7, 'Damla Çekim', '05557563765'),
(8, 'Danla Bilic', '05557563775'),
(9, 'Acun Ilıcalı', '05557563780'),
(10, 'Şeyma Subaşı', '05557563790');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `musteri`
--

CREATE TABLE `musteri` (
  `musteri_id` int(11) NOT NULL,
  `musteri_cepno` varchar(50) NOT NULL,
  `musteri_adsoyad` varchar(50) NOT NULL,
  `musteri_adres` varchar(50) NOT NULL,
  `musteri_dogumtarihi` varchar(50) NOT NULL,
  `cinsiyetID` int(11) NOT NULL,
  `medenihalID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `musteri`
--

INSERT INTO `musteri` (`musteri_id`, `musteri_cepno`, `musteri_adsoyad`, `musteri_adres`, `musteri_dogumtarihi`, `cinsiyetID`, `medenihalID`) VALUES
(1, '5509098792', 'Beyza Doğan', 'Dilşikar Mahallesi', '26.09.2000', 1, 2),
(2, '5557563710', 'İrem Çiçek', 'Kocatepe Mahallesi', '12.05.1990', 1, 3),
(3, '5557563710', 'Ömer Çiçek', 'Bayındırlık Mahallesi', '26.09.2001', 2, 1),
(4, '5557563710', 'Ceylin Çiçek', 'Aynıali Mahallesi', '26.09.1999', 1, 2),
(5, '5557563710', 'Betül Doğan', 'Alaybey Mahallesi', '26.09.1995', 1, 3),
(6, '5557563710', 'Nurullah Doğan', 'Fevzi Mahallesi', '26.09.1997', 2, 1),
(7, '5557563710', 'İsmail Taşkın', 'Zabıta Mahallesi', '26.09.1970', 2, 1),
(8, '5557563710', 'Songül Karlı', 'Çatalca Mahallesi', '26.09.1980', 1, 3),
(9, '5557563710', 'Şeyma Yara', 'Kader Mahallesi', '26.09.1990', 1, 2),
(10, '5557563710', 'Güneş Aslan', 'Ege Mahallesi', '26.09.1984', 1, 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sahip_meslek`
--

CREATE TABLE `sahip_meslek` (
  `sahip_meslekID` int(11) NOT NULL,
  `sahip_id` int(11) NOT NULL,
  `meslekID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `sahip_meslek`
--

INSERT INTO `sahip_meslek` (`sahip_meslekID`, `sahip_id`, `meslekID`) VALUES
(1, 1, 90),
(2, 2, 26),
(3, 3, 15),
(4, 4, 100),
(5, 5, 25),
(6, 6, 8),
(7, 7, 90),
(8, 8, 560),
(9, 9, 123),
(10, 10, 67);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `satis`
--

CREATE TABLE `satis` (
  `satisID` int(11) NOT NULL,
  `mulk_id` int(11) NOT NULL,
  `emlakci_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `satis`
--

INSERT INTO `satis` (`satisID`, `mulk_id`, `emlakci_id`) VALUES
(1, 1, 20),
(2, 2, 22),
(3, 3, 24),
(4, 4, 26),
(5, 5, 28),
(6, 6, 30),
(7, 7, 10),
(8, 8, 15),
(9, 9, 19),
(10, 10, 40);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `talip`
--

CREATE TABLE `talip` (
  `talipID` int(11) NOT NULL,
  `musteri_id` int(11) NOT NULL,
  `mulk_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `talip`
--

INSERT INTO `talip` (`talipID`, `musteri_id`, `mulk_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yaka`
--

CREATE TABLE `yaka` (
  `yaka_id` int(11) NOT NULL,
  `yaka_adi` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `yaka`
--

INSERT INTO `yaka` (`yaka_id`, `yaka_adi`) VALUES
(1, 'Avrupa Yakası');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `cinsiyet`
--
ALTER TABLE `cinsiyet`
  ADD PRIMARY KEY (`cinsiyetID`);

--
-- Tablo için indeksler `emlakci`
--
ALTER TABLE `emlakci`
  ADD PRIMARY KEY (`emlakci_id`),
  ADD KEY `ilce_id` (`ilce_id`);

--
-- Tablo için indeksler `gorusme`
--
ALTER TABLE `gorusme`
  ADD PRIMARY KEY (`gorusmeID`),
  ADD KEY `emlakci_id` (`emlakci_id`),
  ADD KEY `musteri_id` (`musteri_id`);

--
-- Tablo için indeksler `ilce`
--
ALTER TABLE `ilce`
  ADD PRIMARY KEY (`ilce_id`),
  ADD KEY `yaka_id` (`yaka_id`);

--
-- Tablo için indeksler `mahalle`
--
ALTER TABLE `mahalle`
  ADD PRIMARY KEY (`mahalleID`),
  ADD KEY `ilce_id` (`ilce_id`);

--
-- Tablo için indeksler `medenihal`
--
ALTER TABLE `medenihal`
  ADD PRIMARY KEY (`medenihalID`);

--
-- Tablo için indeksler `meslek`
--
ALTER TABLE `meslek`
  ADD PRIMARY KEY (`meslekID`);

--
-- Tablo için indeksler `mulk`
--
ALTER TABLE `mulk`
  ADD PRIMARY KEY (`mulk_id`),
  ADD KEY `musteri_id` (`musteri_id`),
  ADD KEY `sahip_id` (`sahip_id`),
  ADD KEY `ilce_id` (`ilce_id`);

--
-- Tablo için indeksler `mulk_sahibi`
--
ALTER TABLE `mulk_sahibi`
  ADD PRIMARY KEY (`sahip_id`);

--
-- Tablo için indeksler `musteri`
--
ALTER TABLE `musteri`
  ADD PRIMARY KEY (`musteri_id`),
  ADD KEY `cinsiyetID` (`cinsiyetID`),
  ADD KEY `medenihalID` (`medenihalID`);

--
-- Tablo için indeksler `sahip_meslek`
--
ALTER TABLE `sahip_meslek`
  ADD PRIMARY KEY (`sahip_meslekID`),
  ADD KEY `meslekID` (`meslekID`),
  ADD KEY `sahip_id` (`sahip_id`);

--
-- Tablo için indeksler `satis`
--
ALTER TABLE `satis`
  ADD PRIMARY KEY (`satisID`),
  ADD KEY `emlakci_id` (`emlakci_id`),
  ADD KEY `mulk_id` (`mulk_id`);

--
-- Tablo için indeksler `talip`
--
ALTER TABLE `talip`
  ADD PRIMARY KEY (`talipID`),
  ADD KEY `mulk_id` (`mulk_id`),
  ADD KEY `musteri_id` (`musteri_id`);

--
-- Tablo için indeksler `yaka`
--
ALTER TABLE `yaka`
  ADD PRIMARY KEY (`yaka_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `cinsiyet`
--
ALTER TABLE `cinsiyet`
  MODIFY `cinsiyetID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `emlakci`
--
ALTER TABLE `emlakci`
  MODIFY `emlakci_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Tablo için AUTO_INCREMENT değeri `gorusme`
--
ALTER TABLE `gorusme`
  MODIFY `gorusmeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `ilce`
--
ALTER TABLE `ilce`
  MODIFY `ilce_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Tablo için AUTO_INCREMENT değeri `mahalle`
--
ALTER TABLE `mahalle`
  MODIFY `mahalleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- Tablo için AUTO_INCREMENT değeri `medenihal`
--
ALTER TABLE `medenihal`
  MODIFY `medenihalID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `meslek`
--
ALTER TABLE `meslek`
  MODIFY `meslekID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1360;

--
-- Tablo için AUTO_INCREMENT değeri `mulk`
--
ALTER TABLE `mulk`
  MODIFY `mulk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `mulk_sahibi`
--
ALTER TABLE `mulk_sahibi`
  MODIFY `sahip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `musteri`
--
ALTER TABLE `musteri`
  MODIFY `musteri_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `sahip_meslek`
--
ALTER TABLE `sahip_meslek`
  MODIFY `sahip_meslekID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `satis`
--
ALTER TABLE `satis`
  MODIFY `satisID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `talip`
--
ALTER TABLE `talip`
  MODIFY `talipID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `yaka`
--
ALTER TABLE `yaka`
  MODIFY `yaka_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `emlakci`
--
ALTER TABLE `emlakci`
  ADD CONSTRAINT `emlakci_ibfk_1` FOREIGN KEY (`ilce_id`) REFERENCES `ilce` (`ilce_id`);

--
-- Tablo kısıtlamaları `gorusme`
--
ALTER TABLE `gorusme`
  ADD CONSTRAINT `gorusme_ibfk_1` FOREIGN KEY (`emlakci_id`) REFERENCES `emlakci` (`emlakci_id`),
  ADD CONSTRAINT `gorusme_ibfk_2` FOREIGN KEY (`musteri_id`) REFERENCES `musteri` (`musteri_id`);

--
-- Tablo kısıtlamaları `ilce`
--
ALTER TABLE `ilce`
  ADD CONSTRAINT `ilce_ibfk_1` FOREIGN KEY (`yaka_id`) REFERENCES `yaka` (`yaka_id`);

--
-- Tablo kısıtlamaları `mahalle`
--
ALTER TABLE `mahalle`
  ADD CONSTRAINT `mahalle_ibfk_1` FOREIGN KEY (`ilce_id`) REFERENCES `ilce` (`ilce_id`);

--
-- Tablo kısıtlamaları `mulk`
--
ALTER TABLE `mulk`
  ADD CONSTRAINT `mulk_ibfk_1` FOREIGN KEY (`musteri_id`) REFERENCES `musteri` (`musteri_id`),
  ADD CONSTRAINT `mulk_ibfk_2` FOREIGN KEY (`sahip_id`) REFERENCES `mulk_sahibi` (`sahip_id`),
  ADD CONSTRAINT `mulk_ibfk_3` FOREIGN KEY (`ilce_id`) REFERENCES `ilce` (`ilce_id`);

--
-- Tablo kısıtlamaları `musteri`
--
ALTER TABLE `musteri`
  ADD CONSTRAINT `musteri_ibfk_1` FOREIGN KEY (`cinsiyetID`) REFERENCES `cinsiyet` (`cinsiyetID`),
  ADD CONSTRAINT `musteri_ibfk_2` FOREIGN KEY (`medenihalID`) REFERENCES `medenihal` (`medenihalID`);

--
-- Tablo kısıtlamaları `sahip_meslek`
--
ALTER TABLE `sahip_meslek`
  ADD CONSTRAINT `sahip_meslek_ibfk_1` FOREIGN KEY (`meslekID`) REFERENCES `meslek` (`meslekID`),
  ADD CONSTRAINT `sahip_meslek_ibfk_2` FOREIGN KEY (`sahip_id`) REFERENCES `mulk_sahibi` (`sahip_id`);

--
-- Tablo kısıtlamaları `satis`
--
ALTER TABLE `satis`
  ADD CONSTRAINT `satis_ibfk_1` FOREIGN KEY (`emlakci_id`) REFERENCES `emlakci` (`emlakci_id`),
  ADD CONSTRAINT `satis_ibfk_2` FOREIGN KEY (`mulk_id`) REFERENCES `mulk` (`mulk_id`);

--
-- Tablo kısıtlamaları `talip`
--
ALTER TABLE `talip`
  ADD CONSTRAINT `talip_ibfk_1` FOREIGN KEY (`mulk_id`) REFERENCES `mulk` (`mulk_id`),
  ADD CONSTRAINT `talip_ibfk_2` FOREIGN KEY (`musteri_id`) REFERENCES `musteri` (`musteri_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
