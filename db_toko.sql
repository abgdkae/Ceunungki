-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2016 at 01:58 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;


--
-- Database: `db_toko`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `level` varchar(12) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`username`, `password`, `level`) VALUES
('admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `hubungi`
--

CREATE TABLE `hubungi` (
  `id_hubungi` int(5) NOT NULL,
  `id_kustomer` int(5) NOT NULL,
  `subjek` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pesan` text COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `status` enum('Baru','Lunas','Batal') COLLATE latin1_general_ci NOT NULL DEFAULT 'Baru',
  `harga` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `hubungi`
--

INSERT INTO `hubungi` (`id_hubungi`, `id_kustomer`, `subjek`, `pesan`, `tanggal`, `status`, `harga`) VALUES
(75, 44, 'Printer', 'Saya Memesan 20 Unit Printer Epson L200', '2014-08-29', 'Lunas', '20000000'),
(76, 44, 'Printer', 'Saya Memesan 2 Unit Printer Epson L200', '2014-09-01', 'Baru', '2000000');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(12, 'Printer'),
(6, 'Laptop Seken'),
(7, 'Laptop Baru'),
(9, 'Flashdisk'),
(10, 'Mouse'),
(13, 'Komputer (PC)'),
(16, 'Scanner');

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE `kota` (
  `id_kota` int(3) NOT NULL,
  `nama_kota` varchar(100) NOT NULL,
  `ongkos_kirim` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`id_kota`, `nama_kota`, `ongkos_kirim`) VALUES
(1, 'Jakarta', 15000),
(2, 'Bandung', 12000),
(3, 'Semarang', 15000),
(4, 'Medan', 20000),
(5, 'Aceh', 25000),
(6, 'Banjarmasin', 17500),
(7, 'Balikpapan', 30000),
(8, 'Samarinda', 30000),
(9, 'Lainnya', 55000),
(10, 'Palembang', 23000),
(11, 'Surabaya', 15000),
(14, 'Kepulauan Riau', 15000),
(15, 'Riau', 12000);

-- --------------------------------------------------------

--
-- Table structure for table `kustomer`
--

CREATE TABLE `kustomer` (
  `id_kustomer` int(5) NOT NULL,
  `password` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `alamat` text COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `telpon` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `id_kota` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `kustomer`
--

INSERT INTO `kustomer` (`id_kustomer`, `password`, `nama_lengkap`, `alamat`, `email`, `telpon`, `id_kota`) VALUES
(44, 'ada7d8888f9a53a4288bf5e8720d9090', 'Ardi Randa', 'Jl. Banglas Gg. Sempaya, Kelurahan Selatpanjang Timur, Kecamatan Tebing Tinggi, Kabupaten Kepulauan Meranti, Riau, Kode Post 28753', 'Ardi@yahoo.com', '013399780032', 15);

-- --------------------------------------------------------

--
-- Table structure for table `modul`
--

CREATE TABLE `modul` (
  `id_modul` int(5) NOT NULL,
  `static_content` text COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `modul`
--

INSERT INTO `modul` (`id_modul`, `static_content`, `gambar`) VALUES
(1, '<p>\r\n<font face="comic sans ms,sand" size="3" color="#000000">T<font size="4">oko Win Com , Menjual Bermacam-Macam Komputer. Mulai dari, Laptop, Pc, Flashdisk, dan lain-lain.</font></font>\r\n</p>\r\n<p>\r\n<font face="comic sans ms,sand" size="4" color="#000000">\r\n</font>\r\n</p>\r\n<p>\r\n<font face="comic sans ms,sand" size="4" color="#000000">\r\nKami Juga menerima Pemesanan Barang Secara Online.</font>\r\n</p>\r\n<p>\r\n<font size="4">&nbsp;</font>\r\n</p>\r\n<p>\r\n<font face="comic sans ms,sand" size="4" color="#FF0000">Alamat Toko :</font>\r\n</p>\r\n<p>\r\n<font face="comic sans ms,sand" size="4" color="#FF0000">Jl. Ahmad Yani, No.12</font>\r\n</p>\r\n<p>\r\n<font face="comic sans ms,sand" size="4" color="#FF0000">Selatpanjang, Kab.Kepulauan Meranti-Riau1</font>\r\n</p>\r\n<p>\r\n<font size="4">&nbsp;</font>\r\n</p>\r\n<p>\r\n<font face="comic sans ms,sand" size="4" color="#00FF00">Nomor Rekening:</font>\r\n</p>\r\n<p>\r\n<font color="#000000"><strong>BRI :1909.8099.00.11</strong></font>\r\n</p>\r\n<p>\r\n<font color="#000000">\r\nA/n &nbsp; : Kevin \r\n</font>\r\n</p>\r\n<p>\r\n<font color="#000000"><strong>Mandiri : 503.0292.22</strong></font>\r\n</p>\r\n<p>\r\n<font color="#000000">\r\nA/n : Kevin\r\n</font>\r\n</p>\r\n<p>\r\n<font color="#000000"><strong>BNI :&nbsp; 09.8099.00.</strong></font>\r\n</p>\r\n<p>\r\n<font color="#000000">\r\nA/n : Kevin\r\n</font>\r\n</p>\r\n<p>\r\n&nbsp;\r\n</p>\r\n', 'logo.jpg'),
(2, '<p><font face="comic sans ms,sand" size="3" color="#000000">Klik Register, Isi Data Diri Anda Dengan Lengkap. </font></p><p><font face="comic sans ms,sand" size="3" color="#000000">Kemudian Klik Daftar. </font></p><p><font face="comic sans ms,sand" size="3"><font color="#000000">Jika Muncul Menu</font> <font color="#000000">&quot;</font><font face="times new roman,times"><strong><font color="#FF0000">Anda berhasil Melakukan Registrasi Silahkan anda login</font></strong> </font><font face="times new roman,times" color="#3366FF">disini</font><font color="#000000">&quot;</font>, <font color="#000000">Maka Anda Berhasil Melakukan Registrasi.&nbsp; </font></font></p><p><font face="comic sans ms,sand" size="3" color="#000000">Lalu Klik Login, Isi E-mail dan Password Sesuai Dengan Yang Anda Daftarkan Di Menu Register!!!</font></p><p><font size="3" color="#00FF00">&nbsp;</font><font face="comic sans ms,sand" size="3" color="#000000">SETELAH LOGIN BARU ANDA BISA BERBELANJA DI TOKO KAMI!!!</font></p><p>&nbsp;</p><span style="font-size: 12px; color: #e1473d" class="Apple-style-span"><br />Anda dapat melakukan Konfirmasi &nbsp;Setelah Melakukan Pembayaran Melalui SMS Ke NO :&nbsp;<strong style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; border-width: 0px; padding: 0px; margin: 0px">081275371724</strong>&nbsp;<br /></span><p><span style="font-size: 12px; color: #e1473d" class="Apple-style-span">Dengan Format :&nbsp;<strong style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; border-width: 0px; padding: 0px; margin: 0px">#No Orders #Nominal Transfer # Bank Tujuan # Bank Pengirim</strong>&nbsp;Contoh :&nbsp;<strong style="border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; vertical-align: baseline; border-width: 0px; padding: 0px; margin: 0px"># 188 #4.264.000 #Mandiri #Riau</strong></span>&nbsp;</p><p>&nbsp;</p><p><font color="#CCFFFF"><br /></font></p><p><font color="#CCFFFF">&nbsp;</font></p><p>&nbsp;</p><h5><font face="comic sans ms,sand" size="3" color="#000000">&nbsp;</font></h5><p><font face="comic sans ms,sand" size="3" color="#999999">&nbsp;</font></p>', ''),
(3, '<p>\r\nPembayaran dilakukan Melalui Rekening Toko Kami di bawah ini :\r\n</p>\r\n<p>\r\n<strong>BRI :1909.8099.00.11</strong>\r\n</p>\r\n<p>\r\nA/n &nbsp; : Kevin \r\n</p>\r\n<p>\r\n<strong>Mandiri : 503.0292.22</strong>\r\n</p>\r\n<p>\r\nA/n : Kevin\r\n</p>\r\n<p>\r\n<strong>BNI :&nbsp; 09.8099.00.</strong>\r\n</p>\r\n<p>\r\nA/n : Kevin\r\n</p>\r\n<p>\r\n&nbsp;\r\n</p>\r\n<p>\r\n&nbsp;\r\n</p>\r\n<p>\r\n&nbsp;\r\n</p>\r\n<p>\r\n&nbsp;\r\n</p>\r\n<p>\r\n&nbsp;\r\n</p>\r\n<p>\r\n&nbsp;\r\n</p>\r\n', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id_orders` int(5) NOT NULL,
  `status_order` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT 'Baru',
  `tgl_order` date NOT NULL,
  `jam_order` time NOT NULL,
  `id_kustomer` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id_orders`, `status_order`, `tgl_order`, `jam_order`, `id_kustomer`) VALUES
(191, 'Lunas', '2014-09-01', '22:32:18', 44);

-- --------------------------------------------------------

--
-- Table structure for table `orders_detail`
--

CREATE TABLE `orders_detail` (
  `id_orders` int(5) NOT NULL,
  `id_produk` int(5) NOT NULL,
  `jumlah` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `orders_detail`
--

INSERT INTO `orders_detail` (`id_orders`, `id_produk`, `jumlah`) VALUES
(191, 30, 100),
(190, 31, 20),
(188, 32, 1),
(174, 38, 1),
(173, 27, 20),
(172, 32, 50),
(171, 29, 50),
(171, 27, 20),
(171, 31, 20),
(170, 29, 20),
(169, 27, 495),
(168, 31, 20),
(166, 27, 20),
(165, 31, 20),
(164, 32, 10),
(163, 31, 1),
(157, 31, 1),
(156, 31, 10),
(155, 32, 1),
(154, 38, 8),
(153, 32, 1),
(152, 36, 20),
(151, 37, 10),
(150, 37, 2),
(149, 37, 2),
(148, 37, 275),
(147, 38, 20),
(145, 31, 50),
(144, 36, 20),
(143, 29, 45),
(143, 28, 20),
(143, 37, 100),
(143, 38, 20),
(142, 36, 30),
(141, 38, 20),
(138, 38, 5),
(135, 38, 3),
(135, 36, 4),
(129, 36, 1),
(127, 38, 1),
(126, 36, 20),
(125, 36, 2),
(124, 36, 1),
(118, 36, 20),
(117, 36, 50),
(117, 32, 70),
(116, 36, 23),
(116, 29, 5),
(115, 30, 20),
(114, 31, 84),
(114, 32, 1),
(191, 32, 20);

-- --------------------------------------------------------

--
-- Table structure for table `orders_temp`
--

CREATE TABLE `orders_temp` (
  `id_orders_temp` int(5) NOT NULL,
  `id_produk` int(5) NOT NULL,
  `id_session` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `jumlah` int(5) NOT NULL,
  `tgl_order_temp` date NOT NULL,
  `jam_order_temp` time NOT NULL,
  `stok_temp` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(5) NOT NULL,
  `id_kategori` int(5) NOT NULL,
  `nama_produk` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `deskripsi` text COLLATE latin1_general_ci NOT NULL,
  `harga` int(20) NOT NULL,
  `stok` int(5) NOT NULL,
  `berat` decimal(5,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `tgl_masuk` date NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dibeli` int(5) NOT NULL DEFAULT '1',
  `diskon` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `id_kategori`, `nama_produk`, `deskripsi`, `harga`, `stok`, `berat`, `tgl_masuk`, `gambar`, `dibeli`, `diskon`) VALUES
(27, 7, 'Asus A450CA-WX103D - 14" - Merah', '<p>\r\n<strong>Spesifikasi : \r\n</strong>\r\n</p>\r\n<p>\r\nSKU 	\r\nAS100ELACFEAANID-131894\r\nModel 	A450CA-WX103D\r\nUkuran (L x W x H cm) 	34.8 x 24.1 x 2.48 cm\r\nBerat (kg) 	2.4\r\nWarna 	Merah\r\nUkuran Layar (in) 	14.0\r\nHard Disk 	500\r\nRAM 	2\r\nFitur 	Bluetooth|Wi-Fi|DVD\r\nGaransi produk 	1 Tahun Garansi Spare-Part & Servis\r\nKoneksi Nirkabel 	Bluetooth|WiFi\r\n</p>\r\n<p>\r\n<strong>Ulasan : \r\n</strong>\r\n</p>\r\n<p>\r\nDidesain dengan konsep untuk membuat laptop lebih personal, Asus \r\nA450CA-WX103D - 14" - Biru hadir dengan layar sebesar 14". Ukurannya \r\nyang kompak membuat notebook ini menjadi lebih ringan dengan bobot 2.4 \r\nkg. Tampil dengan desain yang modern serta dinamis, laptop ini sangat \r\ncocok untuk menemani kegiatan Anda bersama pekerjaan sehari-hari. \r\n</p>\r\n<div class="prd-package-content rfloat box">\r\n<h3 class="txtLight">Apa yang ada di dalam kotak:</h3>\r\n<ul class="ui-listBulleted">\r\n	<li><span>Asus A450CA-WX103D - 14" - Merah</span></li>\r\n	<li><span>Charger</span></li>\r\n	<li><span>Driver</span></li>\r\n	<li><span>Manual Book</span></li>\r\n	<li><span>Kartu Garansi</span></li>\r\n	<li><span>Tas Laptop</span></li>\r\n</ul>\r\n</div>\r\n<p>\r\n \r\n</p>\r\n', 4199000, 2465, '2.00', '2014-04-14', '56asus.jpg', 763, 20),
(28, 7, 'HP Pavillion 1000 - 1432TU - Hitam', '<p>\r\nHP Pavillion 1000 -1432TU merupakan laptop performa tinggi dengan harga \r\nyang terjangkau. Dirancang khusus memenuhi tuntutan komputasi Anda. \r\nDibekali dengan prosesor Intel Celeron Dual Core berkecepatan 1.8 GHz, 2\r\nGB RAM serta 320 GB HDD, Anda dapat dengan mudah melakukan multitasking\r\ndimana saja. Dengan desainnya yang ramping dan ringan, notebook dengan \r\nukuran 14" ini dirancang bagi Anda yang membutuhkan kemudahan \r\nportabilitas tanpa mengorbankan pengalaman komputasi yang optimal.\r\n</p>\r\n<p>\r\n<strong>Spesifikasi</strong> : SKU 	\r\nHP467ELACITLANID-137484\r\nModel 	Pavillion 1000 - 1432TU\r\nUkuran (L x W x H cm) 	15 x 50 x 37\r\nBerat (kg) 	2.2 kg\r\nWarna 	Hitam\r\nGaransi produk 	1 Tahun Garansi Resmi HP\r\n</p>\r\n', 3799000, 3910, '2.00', '2014-04-14', '67hp-0945-507711-2-zoom.jpg', 101, 0),
(29, 7, 'ASUS X200CA-KX184D DOS Putih - 11.6" - 500 GB', '<p>\r\nASUS X200CA-KX184D hadir dengan desain yang kompak dan dikemas dengan \r\nlayar berukuran 11.6&quot;. Dengan bobot dibawah 3 kg, Asus menyertakan \r\nberbagai teknologi yang hanya terdapat pada produknya seperti \r\nSonicMaster, Instan On, juga Ice Cool.<br />\r\n<br />\r\n<strong>Kinerja Optimal</strong><br />\r\nLaptop ini didukung dengan prosesor Dual Core 1007 berkecepatan 1.5 \r\nGHz, memori 2 GB RAM akan memberikan kemudahan bagi Anda dalam \r\nmengerjakan pekerjaan yang multitasking. Untuk grafisnya dibekali dengan\r\nIntel HD Graphics 4000. Dengan kapasitas memori penyimpanan 500 GB, \r\nAnda memiliki ruang penyimpanan yang cukup besar untuk menyimpan \r\nberbagai data berharga Anda.\r\n</p>\r\n<p>\r\n<strong>&nbsp;Spesifikasi :</strong>\r\n</p>\r\nSKU 	\r\nAS100ELABQVKANID-91057\r\nUkuran (L x W x H cm) 	1x1x1\r\nBerat (kg) 	-\r\nWarna 	Putih\r\nUkuran Layar (in) 	11.6\r\nKecepatan CPU 	1.50\r\nSistem Operasi 	Free DOS \r\nFitur Tampilan 	HD\r\nFitur 	Dual Core\r\nGaransi produk 	2 Tahun Garansi Global\r\nInput 	USB|LAN\r\nKoneksi Nirkabel 	WiFi\r\nKamera 	Ya\r\nBuilt in Memory 	2GB\r\nKapasitas Penyimpanan 	500GB\r\nTipe Processor 	Dual Core 1007\r\n', 3379000, 2219, '2.00', '2014-04-14', '64asus-9605-88418-1-.jpg', 211, 0),
(30, 12, 'Epson L210 - All In One', 'Sistem tinta Epson L210 akan memberikan Anda performa yang lebih baik dengan biaya yang sangat rendah.<br />\r\n<div id="prd-detail-page">\r\n<div>\r\n<div id="prodinfo" class="l-main prd-detail-wrapper">\r\n<div class="prd-description">\r\n<p style="text-align: justify">\r\n \r\n</p>\r\n<p style="text-align: justify">\r\n<strong>Desain Minimalis</strong><br />\r\nPrinter Epson L210 memiliki desain yang kompak untuk kemudahan dalam \r\npenempatannya, membutuhkan sedikit ruang jika dibanding dengan printer \r\nlain, sehingga Anda bisa dengan mudah menempatkannya dimana saja.<br />\r\n \r\n</p>\r\n<p>\r\n<img style="width: 420px; height: 257px; display: inline" class="productlazyimage" src="https://lh6.googleusercontent.com/-RFz10r4mtbg/UhbV0ZKVZEI/AAAAAAAAETY/syfejVnThHw/w420-h257-no/Epson+L210+%25281%2529.png" alt="" />\r\n</p>\r\n<p style="text-align: justify">\r\n<br />\r\n<strong>Hemat Tinta</strong><br />\r\nDengan menggunakan tinta asli dari Epson, Anda bisa melakukan \r\npenghematan hingga 4.000 halaman (tinta hitam) dengan biaya yang sangat \r\nmurah. Selain itu juga printer ini memiliki sistem pengisian tinta yang \r\nsangat mudah dilakukan.\r\n</p>\r\n</div>\r\n</div>\r\n<div class="l-main prd-detail-wrapper">\r\n<div id="productDetails" class="prd-descriptionWrapper" style="display: block">\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p>\r\n \r\n</p>\r\n', 2100000, 990, '4.00', '2014-04-14', '76Epson L210 (32).jpg', 318, 10),
(31, 12, 'Canon Pixma iP2770', '<p>\r\n<strong>Spesifikasi Canon Pixma iP2770 - Inkjet - Hitam</strong>\r\n</p>\r\n<p>\r\nSKU 	\r\nCA189EL61JZEALID-6738\r\nModel 	Printer Inkjet\r\nUkuran (L x W x H cm) 	44.5 x 25 x 13 cm\r\nBerat (kg) 	1\r\nWarna 	Hitam\r\nTipe 	Canon Pixma iP2770\r\nGaransi produk 	1 Tahun Garansi (Spare-part dan Servis)\r\nInput 	USB\r\nKonsumsi Daya 	11 W\r\nMetode Cetak 	Inkjet\r\nResolusi Cetak Maksimum (warna) 	4800 x 1200 dpi\r\nResolusi Cetak Maksimum (monokrom) 	4800 x 1200 dpi\r\nKecepatan Cetak (warna) 	4.8 ipm\r\nKecepatan Cetak (monokrom) 	7 ipm\r\nTipe Media 	A4, Letter, Legal, A5, B5, Envelope\r\nKapasitas Tray 	100 Lembar\r\n</p>\r\n<p style="text-align: justify">\r\nCanon Pixma iP2770 dapat mampu mencetak dengan kecepatan hingga 4,8 ipm,\r\nuntuk tinta warna dan 7.0 ipm untuk tinta hitam. Produk tersebut juga \r\ndilengkapi fitur Auto Photo Fix II pada printer yang dapat diakses \r\nmelalui software EX-Cetak EasyPhoto, untuk dapat mengkoreksi gambar \r\nsehingga Anda dapat mendapatkan kualitas gambar terbaik dan dengan \r\nmaksimal resolusi sebesar 4800x1200 dpi.<br />\r\n \r\n</p>\r\n<p>\r\n<img style="display: inline" class="productlazyimage" src="https://lh5.googleusercontent.com/-qQbdQh34AqU/Uh7NNppvf9I/AAAAAAAAEhU/oa1Kp892TIY/w958-h574-no/Canon%252BPIXMA%252BiP36801.jpg" alt="" width="313" height="145" />\r\n</p>\r\n<p style="text-align: justify">\r\n<br />\r\n<strong>Teknologi FINE™ print head</strong><br />\r\nSesuatu yang unik dalam dunia percetakan, teknologi FINE™ print head \r\nmilik Canon memungkinkan photolab untuk menghasilkan kualitas dengan \r\ndetail yang jelas tanpa mengorbankan kecepatan. Tetesan ejeksi yang \r\nstabil, kualitas luar biasa dan daya tahan yang lama telah dicapai untuk\r\nmenghasilkan gambar dengan kualitas tertinggi.\r\n</p>\r\n<p style="text-align: justify">\r\n \r\n</p>\r\n<p style="text-align: justify">\r\n<strong>Mencetak A4 Tanpa Batas</strong><br />\r\nMencetak foto yang indah dan gambar hingga ukuran A4 dengan fungsi \r\npencetakan tanpa batas - memudahkan Anda membuat album foto profesional,\r\nmenu gambar, presentasi bisnis dan banyak lagi.\r\n</p>\r\n<p style="text-align: justify">\r\n<br />\r\n<strong>USB 2.0</strong><br />\r\nDengan koneksi built-in USB 2.0 berkecepatan tinggi, Anda dapat dengan \r\nmudah dan transfer dengan kecepatan penuh antara perangkat dan printer \r\nPIXMA tanpa jeda waktu atau keterlambatan. Anda cukup memasukkan kabel \r\nuntuk printer dan secara langsung akan melakukan setting.\r\n</p>\r\n<p>\r\n \r\n</p>\r\n', 627000, 1653, '1.00', '2014-04-14', '17canon-4163-8376-2-zoom.jpg', 331, 10),
(32, 13, 'Lenovo M70e (Tower) DOS + LCD - 18.5"', '<p>\r\nLenovo menghadirkan PC Lenovo M70e (Tower) untuk memenuhi kebutuhan \r\npersonal komputer yang akan membantu Anda dalam kegiatan komputasi \r\nsehari-hari baik di rumah maupun di kantor. Dilengkapi dengan layar 18.5\r\nkeyboard dan mouse, personal komputer ini dapat menjadi pilihan bagi \r\nyang mencari PC dengan kinerja optimal dan handal.<br />\r\n<br />\r\n<strong>Kinerja Optimal</strong><br />\r\nAnda dapat dengan mudah melakukan banyak tugas tanpa masalah karena PC \r\nLenovo M70e (Tower) menawarkan Processor Dual Core E5800 3.2Ghz 2MB L2 \r\nCache 800Mhz, Memory 2GB DDR3, Chipset G41, Hard Disk 500GB, DVDRW, \r\nIntegrated Video GMA 4500, Gigabit Ethernet, Keyboard Scroll Lock, \r\nMouse,&nbsp; LCD 18.5&quot;, dan dilengkapi pula dengan DOS<br />\r\n<br />\r\n<strong>Konektivitas</strong><br />\r\nTerdapat berbagai pilihan konektivitas dalam laptop ini antara lain port\r\nUSB 2.0 dan Bluetooth. Anda juga dapat menemukan 6-in-1 Card Reader \r\nuntuk membaca berbagai macam kartu memori milik Anda. Untuk keperluan \r\njaringan, laptop ini dilengkapi dengan Ethernet LAN dan Wireless LAN \r\nyang memungkinkan Anda untuk berbagi data dengan kecepatan tinggi dan \r\nterhubung ke internet.\r\n</p>\r\n<p>\r\n&nbsp;\r\n</p>\r\n<p>\r\n<strong>Spesifikasi Lengkap :</strong>\r\n</p>\r\n<p>\r\n&nbsp;\r\n</p>\r\n<p>\r\nSKU 	\r\nLE629ELABPDSANID-87405\r\nUkuran (L x W x H cm) 	107.1 x.40.6 x 98.5 cm\r\nBerat (kg) 	12\r\nWarna 	Hitam\r\nTipe 	Lenovo M70e\r\nUkuran Layar (in) 	18.5\r\nHard Disk 	500\r\nRAM 	2\r\nKapasitas Penyimpanan 	500\r\nMemori Grafis 	2\r\nKecepatan CPU 	3.20\r\nSistem Operasi 	Free DOS \r\nGaransi produk 	3 Tahun Garansi (Spare-part dan Servis)\r\nInput 	USB|Card Reader|LAN\r\nOutput 	3.5mm jack|USB\r\nKoneksi Nirkabel 	Bluetooth|WiFi\r\nTipe Memori 	DDR3\r\nBuilt in Memory 	2 GB RAM\r\nTipe Layar 	LCD\r\nKapasitas Penyimpanan 	500 GB\r\nKecepatan Processor 	3.2 GHz\r\nTipe Processor 	Processor Dual Core E5800\r\n</p>\r\n', 5150000, 1678, '12.00', '2014-04-14', '15lenovo-9079-25597-1-zoom.jpg', 269, 20),
(38, 16, 'Canon CanoScan LiDE110 - Hitam', '<p>\r\nScanner entry-level ini memiliki fitur tombol EZ untuk pengoperasian Auto Scan yang lebih mudah, melakukan Copy serta funsi Email dan PDF\r\n</p>\r\n<p>\r\n&nbsp;\r\n</p>\r\n<p>\r\n<font color="#FF0000">KUALITAS SCANNING </font>\r\n</p>\r\n<p>\r\nScanner entry-level ini akan menjaga semua foto dan dokumen anda secara impresif pada resolusi 2400x4800 dpi. Dengan kedalaman warna 48-bit, foto yang anda miliki akan terekam dengan tingkat detail yang tinggi. Sensor gambarnya akan memproduksi foto anda menjadi lebih jelas dan jernih. Kecepatan scannya cukup cepat, scan dengan kertas A4 bisa dilakukan dalam 16 detik pada kedalaman warna hingga 300 dpi. \r\n</p>\r\n', 750000, 2924, '2.00', '2014-04-22', '752.jpg', 141, 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`username`);
ALTER TABLE `admins` ADD FULLTEXT KEY `username` (`username`);

--
-- Indexes for table `hubungi`
--
ALTER TABLE `hubungi`
  ADD PRIMARY KEY (`id_hubungi`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`id_kota`);

--
-- Indexes for table `kustomer`
--
ALTER TABLE `kustomer`
  ADD PRIMARY KEY (`id_kustomer`);

--
-- Indexes for table `modul`
--
ALTER TABLE `modul`
  ADD PRIMARY KEY (`id_modul`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_orders`);

--
-- Indexes for table `orders_temp`
--
ALTER TABLE `orders_temp`
  ADD PRIMARY KEY (`id_orders_temp`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hubungi`
--
ALTER TABLE `hubungi`
  MODIFY `id_hubungi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `kota`
--
ALTER TABLE `kota`
  MODIFY `id_kota` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `kustomer`
--
ALTER TABLE `kustomer`
  MODIFY `id_kustomer` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `modul`
--
ALTER TABLE `modul`
  MODIFY `id_modul` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id_orders` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;
--
-- AUTO_INCREMENT for table `orders_temp`
--
ALTER TABLE `orders_temp`
  MODIFY `id_orders_temp` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=415;
--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
