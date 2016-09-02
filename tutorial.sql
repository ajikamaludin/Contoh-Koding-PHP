-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 02, 2016 at 09:12 PM
-- Server version: 5.5.49-MariaDB-1ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tutorial`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE IF NOT EXISTS `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(200) NOT NULL,
  `isi` varchar(20000) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tag` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `judul`, `isi`, `waktu`, `tag`) VALUES
(3, 'Blog Judul', 'Isinya seharusnya banyak tapi gak tau mau isi apa ya sudah apa adanya sajalah', '2016-09-01 03:26:33', 'Berita'),
(4, 'Magetan', 'Magetan adalah suatu nama kota kabupaten yang terletak di jawa timur.', '2016-08-31 03:24:48', 'daerah'),
(5, 'Judul nya Apa', 'mm apa mm apa saja', '2016-08-31 06:30:18', 'Artikel'),
(9, 'test', 'apap dksjhfksd', '2016-09-02 02:30:21', 'mjbdfjs'),
(10, 'Penyuluhan Dikalangan Artis', 'Tertangkapnya penyanyi Reza Artamevia bersama Gatot Brajamusti menambah panjang daftar artis yang terjerat narkoba sepanjang tahun 2016 sedikitnya 6 artis di tangkap sedang mengonsumsi narkoba di antaranya penyanyi dangdut Imam S Arifin yang di tangkap polisi di apartemennya di kawasan gunung sahari Jakarta pusat Minggu malam polisi menemukan bungkus paket sabu seberat 0,36 gram yang baru di konsumsi ini merupakan ke 3 kalinya Imam S Arifin tertangkap akibat narkoba 3 Juni 2016 artis restu Sinaga di tangkap satuan narkoba polres Metro Jakarta selatan di kediamannya di kawasan cipete Jakarta selatan polisi mengamankan beberapa jenis narkoba antara lain ganja dan 26 butir happy five satu bulan sebelumnya Mei 2016 Jupiter fortisimo di tangkap aparat polsek taman sari Jakarta barat ia kedapatan membawa sabu 0,54 gram banyaknya artis yang terjerat narkoba badan narkotika nasional (BNN) berjanji akan giatkan penggeledahan di lokasi-lokasi potensial peredaran narkoba ', '2016-08-31 14:14:46', 'Artis'),
(11, 'Presiden Jokowi Dukung Penuh Tim Pencari Fakta Penyataan Freddy Budiman', 'Mabes Polri akhirnya menunda sementara laporan terhadap Haris Azhar atas dugaan pencemaran nama baik Polri akan fokus mendalami dugaan aparat penegak hukum yang menerima suap dari terpidana mati Freddy budiman telusuri pernyataan Freddy Polri bersama sejumlah pakar membentuk tim pencari fakta gabungan presiden Joko Widodo merespons baik adanya tim ini\r\n\r\n"Semakin ada banyak pakar yang punya kemampuan untuk mengungkap itu silahkan masuk dalam tim yang sudah di bentuk tapi ingat peristiwa ini sudah lamakan dari 2012 kenapa tidak di ungkap dulu-dulu" ujar Joko Widodo presiden RI\r\n', '2016-08-31 14:15:38', 'Freddy Budiman'),
(12, 'Program Mendikbud Full-day school (sekolah sehari penuh) Menuai Beragam Pro Dan Kontra', 'Usulan kebijakan program full day school atau sekolah sehari penuh langsung menuai banyak respons masyarakat umumnya khawatir kebijakan ini akan menghambat sosialisasi dan karakter anak namun selasa siang menteri pendidikan dan kebudayaan Muhadjir Effendy tegaskan rencana program belajar tambahan untuk jenjang SD dan SMP ini sifatnya kokurikuler\r\n\r\n"jadi nanti tidak ada mata pelajaran jadi itu kegiatan yang menggembirakan kegiatan kokurikuler yang nanti bisa merangkum tujuan tadi 18 karakter itu maksud kita jadi mohon sekali lagi untuk tidak menggunakan kata-kata full day karena itu memang sangat menyesatkan jadi sebetulnya adalah kegiatan tambahan kegiatan full kurikuler di sekolah" ujar Muhadjir Effendy Mendikbud', '2016-08-31 14:16:24', 'Pro Dan Kontra'),
(13, 'Penikaman Brigadir Adil Tambunan Oleh Apri Andi Pratama Dipicu Karena Kecemburuan', 'Masa yang berkumpul di depan mapolres meranti ini kecewa dan melempari polisi yang berada di dalam Kantor Polisi mereka menuntut polisi bertanggung jawab atas kematian Apri Andi Pratama yang di tuduh menikam anggota polres meranti brigadir adil tambunan hingga tewas kericuhan di picu cemburu Apri Andi Pratama terhadap seorang polisi brigadir adil tambunan yang menggandeng perempuan yang juga di sukai Apri Andi Pratama tidak terima perempuan incarannya di gandeng pria lain Apri Andi Pratama menikam Brigadir Adil Tambunan\r\n\r\nApri Andi Pratama di tangkap polisi polres Riau tidak berselang lama tersiar kabar Apri Andi Pratama tewas setelah sebelumnya di kabarkan di tembak di kedua kakinya ratusan warga yang tidak terima langsung mengepung mapolres kepulauan meranti kericuhan tidak terhindarkan ketika masa tidak puas dengan penjelasan kapolres meranti hingga akhirnya seorang warga tewas karena di duga terkena tembakan\r\nMasa yang berkumpul di depan mapolres meranti ini kecewa dan melempari polisi yang berada di dalam Kantor Polisi mereka menuntut polisi bertanggung jawab atas kematian Apri Andi Pratama yang di tuduh menikam anggota polres meranti brigadir adil tambunan hingga tewas kericuhan di picu cemburu Apri Andi Pratama terhadap seorang polisi brigadir adil tambunan yang menggandeng perempuan yang juga di sukai Apri Andi Pratama tidak terima perempuan incarannya di gandeng pria lain Apri Andi Pratama menikam Brigadir Adil Tambunan\r\n\r\nApri Andi Pratama di tangkap polisi polres Riau tidak berselang lama tersiar kabar Apri Andi Pratama tewas setelah sebelumnya di kabarkan di tembak di kedua kakinya ratusan warga yang tidak terima langsung mengepung mapolres kepulauan meranti kericuhan tidak terhindarkan ketika masa tidak puas dengan penjelasan kapolres meranti hingga akhirnya seorang warga tewas karena di duga terkena tembakan\r\nMasa yang berkumpul di depan mapolres meranti ini kecewa dan melempari polisi yang berada di dalam Kantor Polisi mereka menuntut polisi bertanggung jawab atas kematian Apri Andi Pratama yang di tuduh menikam anggota polres meranti brigadir adil tambunan hingga tewas kericuhan di picu cemburu Apri Andi Pratama terhadap seorang polisi brigadir adil tambunan yang menggandeng perempuan yang juga di sukai Apri Andi Pratama tidak terima perempuan incarannya di gandeng pria lain Apri Andi Pratama menikam Brigadir Adil Tambunan\r\n\r\nApri Andi Pratama di tangkap polisi polres Riau tidak berselang lama tersiar kabar Apri Andi Pratama tewas setelah sebelumnya di kabarkan di tembak di kedua kakinya ratusan warga yang tidak terima langsung mengepung mapolres kepulauan meranti kericuhan tidak terhindarkan ketika masa tidak puas dengan penjelasan kapolres meranti hingga akhirnya seorang warga tewas karena di duga terkena tembakan\r\n', '2016-08-31 14:17:32', 'ecemburu'),
(14, 'jsnk', 'lkhdf', '2016-09-01 01:52:26', 'knkl'),
(15, 'Cara mudah membuat login dengan enkripsi md5 di PHP ', 'Cara membuat login dengan enkripsi md5 di PHP sangat mudah. Caranya dengan menggunakan Sesion, sesion bukan sekedar menjadi portal apakah user yang bersangkutan berwenang atau tidak, tetapi lebih sebagai pelacakan dari berbagai kegiatan yang dilakukan user yang bersangkutan. Berikut ini cara mudah membuat login dengan enkripsi md5 di PHP.\r\n\r\nLangkah pertama buat database terlebih dahulu. Dalam contoh ini menggunakan database dengan nama "dbsession" dan tabel dengan nama "user". Buatlah struktur tabel seperti dibawah ini:\r\n\r\nid_user : integer(2) auto increment\r\nnama_user : varchar(50)\r\npassword : varchar(50)\r\nlevel : enum(''admin'',''user'')', '2016-09-01 03:28:55', 'tutorial'),
(16, ' Buatlah folder kerja di localhost lalu buat file connect.php dengan script berikut ini:', '<?php \r\n$server = "localhost"; \r\n$username = "root"; \r\n$password = ""; \r\n$database = "dbsession"; //nama database \r\n\r\nmysql_connect($server,$username,$password); \r\nmysql_select_db($database); \r\n?>\r\n\r\nLangkah kedua buat file index.php dengan script seperti berikut ini:\r\n\r\n<html> \r\n  <head> </head> \r\n   <body> \r\n    <h2>Login</h2> \r\n    <form method="POST" action="cek_login.php"> \r\n    <table border="1" cellspacing="0"> \r\n    <tr><td> User Name </td> \r\n        <td> : <input type="text" name="nama_user" /></td> \r\n    </tr> \r\n    <tr><td> Password </td> \r\n <td> : <input type="password" name="password" /></td> \r\n    </tr> \r\n    <tr> \r\n <td colspan="2"><input type="submit" value="Login"/></td> \r\n    </tr> \r\n    </table> \r\n    </form> \r\n   </body> \r\n</html>\r\n\r\nLangkah ketiga buatlah file cek_login.php dengan script sebagai berikut ini:\r\n\r\n<?php \r\nsession_start(); // memulai session \r\n\r\ninclude "connect.php"; \r\n$pass=md5($_POST[''password'']); ', '2016-09-01 03:29:26', 'script'),
(17, 'Managemnt', '{ \r\n// mendaftarkan variable session ke server \r\nsession_register("nama_user"); \r\nsession_register("password"); \r\nsession_register("level"); \r\n\r\n//meng-isi-kan variable yang telah dibentuk \r\n$_SESSION[nama_user]=$data[nama_user]; \r\n$_SESSION[password]=$data[password]; \r\n$_SESSION[level]=$data[level]; \r\nheader(''location:halaman_utama.php''); \r\n} \r\nelse \r\n{ \r\necho "<p>Login gagal! username tidak terdaftar atau password salah</p><p><a href=\\"index.php\\">Ulangi Lagi</a></p>"; \r\n}  \r\n?>\r\n\r\nLangkah keempat buatlah halaman utama dengan nama home.php dengan script berikut ini:\r\n\r\n<html> \r\n <head> </head> \r\n   <body> \r\n    <h1> HOME </h1>    \r\n   </body> \r\n</html>\r\n\r\nAtau anda bisi mengunduh contoh manajemen sesion lengkap Disini Untuk username dan password login adalah "sastro". Tanpa tanda petik.\r\n\r\nBaca juga Web Hosting Gratis untuk tugas kuliah dan latihan untuk pemula. ', '2016-09-01 03:30:22', 'bblc'),
(18, 'suheri syahputra', 'cek_login.php\r\nmenggalami error line 19 mas..\r\nmhon pncerahannya mas?', '2016-09-01 03:31:03', 'ahannya'),
(19, 'happy coding', 'sebelumnya saya ucapkan terima kasih untuk teman-teman yang sudah berkunjubg ke blog sederhana ini. mengenai pesan error pada cek_login.php coba cek pada file connect.php\r\nseting sebagai berikut:\r\n$server = "localhost";\r\n$username = "root";\r\n$password = "";\r\n$database = "dbsession";\r\n//jika login dengan sastro gagal, coba login dengan id: klowor dan pasword:klowor123 , happy coding', '2016-09-01 03:31:33', 'coding'),
(20, 'password salah', 'mohon pencerahnnya ^^\r\n\r\nDeprecated: mysql_connect(): The mysql extension is deprecated and will be removed in the future: use mysqli or PDO instead in /home/u818650295/public_html/connect.php on line 7\r\n\r\nWarning: mysql_connect(): Access denied for user ''u818650295_user''@''10.2.1.36'' (using password: YES) in /home/u818650295/public_html/connect.php on line 7\r\n\r\nDeprecated: mysql_select_db(): The mysql extension is deprecated and will be removed in the future: use mysqli or PDO instead in /home/u818650295/public_html/connect.php on line 8\r\n\r\nWarning: mysql_fetch_array() expects parameter 1 to be resource, boolean given in /home/u818650295/public_html/cek_login.php on line 9\r\n\r\nWarning: mysql_num_rows() expects parameter 1 to be resource, boolean given in /home/u818650295/public_html/cek_login.php on line 13\r\n\r\nLogin gagal! username tidak terdaftar atau password salah', '2016-09-01 03:32:04', 'Artikel'),
(21, 'Juudl', 'klnln', '2016-09-01 03:36:29', 'lmdlm');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) NOT NULL,
  `password` varchar(20000) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `status`) VALUES
(5, 'artika', 'd0fb963ff976f9c37fc81fe03c21ea7b', 0),
(6, 'tika', 'd0fb963ff976f9c37fc81fe03c21ea7b', 0),
(7, 'syifa', 'd0fb963ff976f9c37fc81fe03c21ea7b', 0),
(8, 'oo', 'd0fb963ff976f9c37fc81fe03c21ea7b', 0),
(9, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1),
(10, '.', '5058f1af8388633f609cadb75a75dc9d', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
