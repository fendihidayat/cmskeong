-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2020 at 07:47 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cmskeong`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(5) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `nama_user` varchar(100) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `isi_berita` text NOT NULL,
  `headline` varchar(10) NOT NULL,
  `publish` varchar(10) NOT NULL DEFAULT 'Y',
  `gambar` varchar(100) NOT NULL,
  `deskripsi_gambar` varchar(100) NOT NULL,
  `hari` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `dibaca` int(5) NOT NULL,
  `tag_label` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `nama_kategori`, `username`, `nama_user`, `judul`, `isi_berita`, `headline`, `publish`, `gambar`, `deskripsi_gambar`, `hari`, `tanggal`, `jam`, `dibaca`, `tag_label`, `link`) VALUES
(6, 'Politik', 'fendi', 'Fendi Hidayat', 'BP Batam Dukung TNI AU', '                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                <p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(50, 50, 51); font-family: Helvetica, Arial;\"><b>Batam (netrakepri.com)</b> – Kepala BP Batam, Lukita Dinarsyah Tuwo, menyambut kunjungan Kepala Staf Angkatan Udara (KSAU) Marsekal TNI Yuyu Sutisna SE, MM dan jajaran ke BP Batam pada, Selasa (25/9) siang.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(50, 50, 51); font-family: Helvetica, Arial;\">Selain bersilaturahmi, kunjungan itu juga membahas hal – hal strategis terutamanya sistem keamanan udara di kawasan strategis perbatasan. Rencananya TNI angkatan udara akan mengoptimalkan dukungan kegiatan operasional pengamanan kedaulatan NKRI untuk menjamin keamanan berinvestasi di Batam dan sekitarnya.<br></p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(50, 50, 51); font-family: Helvetica, Arial;\">“Kedatangan beliau (KSAU) selain untuk bersilaturahmi juga membahas hal-hal strategis. BP Batam mendukung apa yang disampaikan dan akan melaporkan ke dewan kawasan untuk dibahas lebih lanjut,” kata Lukita.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(50, 50, 51); font-family: Helvetica, Arial;\">Lebih lanjut Lukita menjelaskan, potensi Batam khususnya pembangunan ekonomi di kawasan Bandara dan pelabuhan akan lebih baik bila dibarengi dengan sistem keamanan wilayah perbatasan. “Sisi ekonomi kita pacu, namun sisi lain keamanan NKRI juga harus kita dukung,” ujarnya.<br></p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(50, 50, 51); font-family: Helvetica, Arial;\">Sementara itu, Kepala Staf Angkatan Udara (KSAU), Marsekal TNI Yuyu Sutisna mengatakan, dengan status Batam sebagai kawasan ekonomi dan kawasan strategis perbatasan menjadikan pihaknya terus mendukung keamanan dan kenyamanan dalam berinvestasi.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(50, 50, 51); font-family: Helvetica, Arial;\">“Supaya kegiata komersil tidak terganggu, kita berencana akan membuat shelter dan apron disini. Rencana ini akan berjalan bila sudah diberikan izin oleh atasan dan pihak yang berwenang,” jelasnya.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(50, 50, 51); font-family: Helvetica, Arial;\">Ia menambahkan, salah satu tujuan untuk mengoptimalkan kegiatan operasional di Batam adalah untuk menunjang realignment FIRs (Flight Information Region) sesuai amanat UU NO 1 tahun 2009.<br></p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(50, 50, 51); font-family: Helvetica, Arial;\">“Dengan membuat sistem keamanan disini salah satunya untuk menunjang realignment FIR yang sekarang sedang berproses yang diketuai oleh Menko Maritim yang harus dilaksanakan pada 2019 sesuai perintah Pak Presiden. Tidak hanya itu, namun juga untuk mendukung segala sektor keamanan. Kita tahu Batam sangat strategis,” ucapnya. (r)</p>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ', 'Y', 'Y', 'bp-batam-dukung-tni-au-bangun-sistem-keamanan-di-batam.jpg', '                                                                                                    ', 'Monday', '2020-05-04', '19:46:29', 0, '                                                                                                    ', 'bp-batam-dukung-tni-au'),
(7, 'Berita', 'fendi', 'Fendi Hidayat', 'Pertumbuhan Ekonomi di Batam Menggembirakan', '                                                                                                                                                                                                                                <p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(50, 50, 51); font-family: Helvetica, Arial;\"><b>Batam (netrakepri.com) –</b> Kepala Badan Pengusahaan (BP) Batam, Lukita Dinarsyah Tuwo, mengatakan, data pertumbuhan ekonomi Batam triwulan pertama 2018 yang dirilis Badan Pusat Statistik (BPS) Provinsi Kepri mencapai 4,47 persen, menggembirakan.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(50, 50, 51); font-family: Helvetica, Arial;\">“Data BPS ini menggembirakan,” kata Lukita, seperti dilansir antarakepri.com, Rabu (9/5/2018).</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(50, 50, 51); font-family: Helvetica, Arial;\">Dikatakannya, pada 2017, pertumbuhan ekonomi Provinsi Kepri hanya tumbuh 2,01 persen. Khusus Batam, kata Lukita, investasi mulai meningkat dibandingkan 2017. Dia berharap peningkatan investasi, terus berlanjut pada triwulan berikutnya.<br></p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(50, 50, 51); font-family: Helvetica, Arial;\">“Tahun ini kita (BP Batam) menargetkan pertumbuhan ekonomi minimal di angka 4,5 persen,” ujar Lukita.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(50, 50, 51); font-family: Helvetica, Arial;\">Menurut Lukita, belanja pemerintah daerah, BP Batam, pemerintah pusat di Batam biasanya akan bergerak pada kwartal berikutnya dan hal itu dinilainya sangat positif.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(50, 50, 51); font-family: Helvetica, Arial;\">Lukita mengharapkan semua pihak dapat bersama-sama meningkatkan pertumbuhan ekonomi di Batam.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(50, 50, 51); font-family: Helvetica, Arial;\">“BP Batam punya target BBM27 yaitu Batam Bersatu Maju dalam dua tahun ekonomi tumbuh tujuh persen,” ujar menerangkan.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(50, 50, 51); font-family: Helvetica, Arial;\">Namun, lanjutnya, ada beberapa upaya yang harus dilakukan untuk mencapai target tersebut, salah satunya net ekspor.</p><div style=\"color: rgb(50, 50, 51); font-family: Helvetica, Arial; clear: both; margin-top: 0em; margin-bottom: 1em;\"><a href=\"https://netrakepri.com/baca/mikro-plastik-dikhawatirkan-bisa-jadi-racun\" target=\"_blank\" rel=\"nofollow\" class=\"u544bbf0c1728ebe0534465f15013d854\" style=\"color: rgb(0, 0, 0); transition: opacity 0.25s ease 0s; font-family: Montserrat, Helvetica, Arial; padding-right: 0px; padding-left: 0px; margin: 0px; width: 559.781px; display: block; font-weight: 700; opacity: 1; padding-top: 1em !important; padding-bottom: 1em !important; border: 0px !important;\"><div style=\"padding-left: 1em; padding-right: 1em;\"><span class=\"ctaText\" style=\"color: inherit;\">Baca juga :</span>  <span class=\"postTitle\" style=\"color: inherit; text-decoration-line: underline !important;\">Mikro Plastik Dikhawatirkan Bisa Jadi Racun</span></div></a></div><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(50, 50, 51); font-family: Helvetica, Arial;\">“Paling utama kita harus mendorong industri berorientasi ekspor dan kita optimistis dengan hal ini,” papar Lukita.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(50, 50, 51); font-family: Helvetica, Arial;\">Lukita menambahkan industri minyak dan gas (migas) serta galangan kapal sempat menurun drastis pada 2016-2017. Guna membangkitkan industri tersebut, terangnya, perlu kerja keras.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(50, 50, 51); font-family: Helvetica, Arial;\">BP Batam, kata Lukita, terus memberikan dukungan ke pemerintah pusat, terutama kewajiban agar menggunakan produksi dalam negeri.</p><div style=\"color: rgb(50, 50, 51); font-family: Helvetica, Arial; clear: both; margin-top: 0em; margin-bottom: 1em;\"><a href=\"https://netrakepri.com/baca/rayakan-valentine-dinner-dengan-orang-terkasih-di-aston-batam-hotel-residence\" target=\"_blank\" rel=\"nofollow\" class=\"uc5577f0c656e6ab085c01c582259af0d\" style=\"color: rgb(0, 0, 0); transition: opacity 0.25s ease 0s; font-family: Montserrat, Helvetica, Arial; padding-right: 0px; padding-left: 0px; margin: 0px; width: 559.781px; display: block; font-weight: 700; opacity: 1; padding-top: 1em !important; padding-bottom: 1em !important; border: 0px !important;\"><div style=\"padding-left: 1em; padding-right: 1em;\"><span class=\"ctaText\" style=\"color: inherit;\">Baca juga :</span>  <span class=\"postTitle\" style=\"color: inherit; text-decoration-line: underline !important;\">Rayakan Valentine Dinner dengan Orang Terkasih di Aston Batam Hotel & Residence</span></div></a></div><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(50, 50, 51); font-family: Helvetica, Arial;\">“Khususnya di migas dan mineral, saat mereka mau menggunakan peralatan, bisa diproduksi khususnya di Batam,” kata Lukita.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(50, 50, 51); font-family: Helvetica, Arial;\">Selain itu, kata Lukita, BP Batam menawarkan insentif atau cara pembayaran yang lebih murah bagi industri-industri tertentu yang sewa lahannya akan berakhir.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(50, 50, 51); font-family: Helvetica, Arial;\">Bahkan, lanjut Lukita, sudah ada beberapa industri yang akan memperpanjang sewa lahannya meski masa penggunaannya masih lima hingga enam tahun lagi.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(50, 50, 51); font-family: Helvetica, Arial;\">“Kami siap memberikan diskon atau cara pembayaran yang lebih mudah,” kata Lukita.(ant)</p>                                                                                                                                                                                                                                ', 'Y', 'Y', 'pertumbuhan-ekonomi-batam-menggembirakan.jpg', '                                                                                                    ', 'Monday', '2020-05-04', '18:53:52', 0, '                                                                                                    ', 'pertumbuhan-ekonomi-di-batam-menggembirakan');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL,
  `inisial_kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `inisial_kategori`) VALUES
(1, 'Berita', 'berita'),
(5, 'Politik', 'politik'),
(6, 'Pariwisata', 'pariwisata'),
(8, 'Pengumuman', 'pengumuman'),
(9, 'Download', 'download');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `level` varchar(50) NOT NULL DEFAULT 'user',
  `blokir` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `nama_lengkap`, `email`, `level`, `blokir`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', 'admin@cmskeong.com', 'admin', 'N'),
('faris', '202cb962ac59075b964b07152d234b70', 'Faris Ramadhan', 'faris@gmail.com', 'user', 'N'),
('fendi', '202cb962ac59075b964b07152d234b70', 'Fendi Hidayat', 'fendihidayat.st@gmail.com', 'user', 'Y'),
('rusdani', '202cb962ac59075b964b07152d234b70', 'Rusdani', 'tes@gm.co', 'user', 'N');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`),
  ADD UNIQUE KEY `judul` (`judul`),
  ADD UNIQUE KEY `link` (`link`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`),
  ADD UNIQUE KEY `nama_kategori` (`nama_kategori`),
  ADD UNIQUE KEY `inisial_kategori` (`inisial_kategori`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
