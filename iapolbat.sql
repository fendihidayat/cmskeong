-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 22, 2020 at 08:19 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iapolbat`
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
  `deskripsi_gambar` varchar(1000) NOT NULL,
  `hari` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `dibaca` int(5) NOT NULL,
  `tag_label` varchar(1000) NOT NULL,
  `link` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `nama_kategori`, `username`, `nama_user`, `judul`, `isi_berita`, `headline`, `publish`, `gambar`, `deskripsi_gambar`, `hari`, `tanggal`, `jam`, `dibaca`, `tag_label`, `link`) VALUES
(13, 'Ekonomi', 'fendi', 'Fendi Hidayat', 'Diam-diam Erick Thohir Rombak Lagi Direksi PLN', '<p><b>Jakarta </b>- Menteri BUMN Erick Thohir kembali merombak direksi PT PLN (Persero). Selain merombak direksi, Erick juga melakukan perubahan pada organisasi perusahaan listrik pelat merah itu.\r\n\r\nDemikian disampaikan Staf Khusus Menteri BUMN Arya Sinulingga kepada media, Kamis (14/5/2020).\r\n</p><p>\r\n\"Benar ada penyegaran lagi di PLN. Setelah kita menetapkan Dirut dan Wadirut kemarin. Kita lihat, evaluasi yang terjadi, juga masukan Pak Dirut maka dilakukan ada perubahan di organsiasi, supaya lebih fokus penyegaran orang-orangnya juga,\" katanya.\r\n</p><p><span style=\"font-family: &quot;Source Sans Pro&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 1rem;\">Dalam perombakan ini, Erick memberhentikan dengan hormat Sripeni Inten Cahyani, Djoko Rahardjo Abumanan, Muhamad Ali, dan Ahmad Rofiq dari direksi.\r\n</span></p><p><span style=\"font-family: &quot;Source Sans Pro&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 1rem;\">\r\nKemudian, mengalihkan Syofvi Felienty Roekman yang semula Direktur Perencanaan Korporat menjadi Direktur Human Capital dan Management, Wiluyo Kusdwiharto semula Direktur Bisnis Regional Sumatera menjadi Direktur Bisnis Regional Sumatera Kalimantan, dan Syamsul Huda semula Direktur Regional Sulawesi dan Kalimantan menjadi Direktur Bisnis Regional Sulawesi, Maluku, Papua dan Nusa Tenggara.\r\n\r\n</span></p><p><span style=\"font-family: &quot;Source Sans Pro&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 1rem;\">Kemudian, mengangkat Muhammad Iqbal Nur menjadi Direktur Perencanaan Korporat, Bob Sahril sebagai Direktur Niaga dan Manajemen Pelanggan, Rudy Hendra Prastowo sebagai Direktur Energy Primer, dan Ikhsan Asaad sebagai Direktur Mega Project.</span><br></p>', 'Y', 'Y', 'diam-diam-erick-thohir-rombak-lagi-direksi-pln.jpg', '                                    Menteri BUMN Erick Thohir (Foto : Kompas)                                ', 'Thursday', '2020-05-14', '17:55:33', 0, '                                                                                                                                                                                    <p>Menteri BUMN, Erick Thohir, PLN<br></p>                                                                                                                                                                ', 'diam-diam-erick-thohir-rombak-lagi-direksi-pln'),
(14, 'Berita', 'fendi', 'Fendi Hidayat', 'Penjelasan Yuri soal Lonjakan Kasus Corona di 2 Hari Ini', '                                    <p><span style=\"font-size: 1rem;\"><b>Jakarta</b> - Dalam dua hari terakhir, terdapat lonjakan kasus positif virus Corona (COVID-19) sejak Indonesia mengumumkan kasus pertama pada 2 Maret lalu. Juru Bicara Pemerintah untuk Penanganan COVID-19, Achmad Yurianto (Yuri), memberikan penjelasan.</span><br></p><p>Pada konferensi pers, Rabu (13/5), Yuri mengungkap ada tambahan 689 kasus Corona baru. Penambahan kasus baru paling tinggi sebelumnya tercatat pada 9 Mei dengan 533 kasus baru. Total kasus positif pada 13 Mei kemarin sebanyak 15.438, dengan angka kesembuhan total menjadi 3.287 orang. Kemudian untuk angka kematian berjumlah 1.028 orang.</p><p>Yuri menyebut pemerintah terus menongkatkan pemeriksaan tes Corona. Dari yang awalnya hanya di 19 provinsi, kini pemeriksaan sudah bisa dilakukan di 30 provinsi dengan dua metode, yakni tes real time polymerase chain reaction (PCR) dan tes cepat molekuler (TCM).</p><p><span style=\"font-size: 1rem;\">\"Dalam rangka percepatan pemeriksaan maka pada kemarin kami sudah kirimkan cartridge yang bisa dilakukan menggunakan PCM yang saat ini tersebar di tanah air sejak 2015 kemarin kita mengirimkan 6.300 cartridge ke 64 rumah sakit di 64 kabupaten kota di 30 Provinsi,\" kata Yuri dalam pernyataan pers, Rabu (15/5).</span><br></p><p><span style=\"font-size: 1rem;\">\"Sehingga sekarang Kabupaten Yapen mampu memeriksa COVID secara mandiri dengan mesin PCM, hal sama juga kita tingkatkan memanfaatkan mesin PCR yang selama ini digunakan melakukan penilaian pengukuran HIV/AIDS,\" imbuhnya.</span><br></p><p><span style=\"font-size: 1rem;\">Selain itu, Yuri menyebut di DKI Jakarta setiap harinya bisa melakukan tes Corona melebihi 2.000 tes. Sementara di Jawa Timur sekitar 700 tes per hari.</span><br></p><p><span style=\"font-size: 1rem;\">\"Mesin ini sudah tersebar di berbagai daerah dan ini bagian dari program kami sudah lihat datanya di DKI untuk PCR HIV sudah mampu melaksanakan 2.592 tes di dua rumah sakit. DIY kita tambah 480 tes, di Jatim 768 tes, NTT di kota Kupang 480 tes, Papua 1440 tes, artinya bahwa semakin banyak yang kita bisa lakukan untuk melakukan tes,\" tutur Yuri.</span><br></p><p><span style=\"font-size: 1rem;\">Kemudian pada Kamis (14/5), kembali terjadi lonjakan kasus positif. Ada penambahan 568 kasus baru sehingga kasus positif Corona menembus angka 16.006. Kemudian ada tambahan pasien sembuh sehingga total menjadi 3.518 orang. Pasien Corona yang meninggal bertambah 10 orang. Totalnya kini 1.038 orang meninggal dunia di Tanah Air akibat virus ini.</span><br></p><p><span style=\"font-size: 1rem;\">Soal lonjakan yang terjadi dalam dua hari ini, Yuri mengungkap terjadi lantaran kini pemeriksaan sudah lebih cepat dilakukan. Alasannya karena pemeriksaan spesimen semakin terjangkau untuk daerah-daerah.</span><br></p><p><span style=\"font-size: 1rem;\">\"Kalau kita perhatikan betul sebaran kenaikan angka ini atau yang kemarin, kita akan melihat bahwa daerah-daerah yang memang memiliki gap pemeriksaan cukup jauh, cukup panjang, akan naik meningkat dengan cepat,\" kata Yuri dalam konferensi pers yang disiarkan YouTube BNPB, Kamis (1/5/2020).</span><br></p>                                ', 'Y', 'Y', 'penjelasan-yuri-soal-lonjakan-kasus-corona-di-2-hari-ini.jpeg', '                                    <p>Achmad Yurianto. (dok. BNPB)<br></p>                                ', 'Friday', '2020-05-15', '06:03:57', 0, 'Achmad Yurianto, BNPB, Corona , COVID-19, PCR, PCM', 'penjelasan-yuri-soal-lonjakan-kasus-corona-di-2-hari-ini'),
(15, 'Berita', 'fendi', 'Fendi Hidayat', 'Jejak Ratu Elizabeth I dan Perkembangan Islam di Inggris', '<p><span style=\"font-size: 1rem;\">Jakarta - Kehadiran Islam di Inggris dapat ditelusuri sejak era Ratu Elizabeth I pada abad ke-16. Sejak menyandang mahkota ratu pada 1558, dia menjalin kerja sama diplomatik, baik secara militer maupun komersial dengan Sultan Murad III dari Ottoman, Turki, serta negara-negara Islam, lainnya seperti Iran dan Maroko.</span><br></p><p>Kisah tersebut tertuang dalam buku The Sultan and The Queen: The Untold Story of Elizabeth and Islam karya Jerry Brotton, profesor dalam studi tentang Renaisans di Queen Mary University of London. Kala itu Inggris sedang berselisih dengan Spanyol, dan perlu menjalin aliansi dengan Kesultanan Ottoman yang telah menguasai Afrika Utara, Eropa Timur, sampai Samudra Hindia.</p><p>\"Otomatis dari kerja sama itu terjadi pertukaran diplomasi yang pada akhirnya terjadi penyebaran Islam di Inggris,\" kata Sekretaris PCNU di Inggris Munawir Aziz kepada tim Blak-blakan detik.com, Selasa (12/5/2020).</p><p>Menurut Munawir yang sejak 2018 melakukan riset untuk studi doktoral sains politik di salah satu universitas di London itu, perkembangan Islam di Inggris termasuk yang terbaik dibandingkan dengan di negara-negara Eropa lainnya. Saat ini, Islam di Inggris tak cuma menjadi agama kaum imigran dari India, Pakistan, Bangladesh, atau Yaman.</p><p>\"Orang Inggris pribumi pun sudah banyak yang memeluk Islam karena terpikat oleh cara dakwah sebagian muslim di masjid-masjid yang menonjolkan charity untuk kemanusiaan lintas agama,\" katanya.</p><p>Selain itu, sudah ada beberapa tokoh muslim yang masuk ke parlemen dan birokrasi. Munawir mencontohkan Sadiq Aman Khan yang menjadi Walikota London dan Moazzam Malik, Dubes Inggris untuk Indonesia.</p><p>Sejauh ini suara komunitas muslim juga cukup diperhatikan pemerintah Inggris. Ketika ada wacana untuk mengkremasi semua korban meninggal akibat Covid-19, dengan alasan kesehatan dan keamanan, misalnya. Komunitas Muslim dan Yahudi memprotesnya melalui parlemen sehingga jenazah untuk dua komunitas ini boleh dikebumikan.</p><p>Toh begitu, menurut Munawir Aziz, ada dua tantangan besar Islam di Inggris dan negara Eropa lainnya dalam beberapa waktu terakhir. Pertama, arus imigran yang sangat besar dari negara-negara konflik di Timur Tengah dan Afrika. Mereka juga mewarnai arus baru berislam yang berbeda.</p><p>Di pihak lain, ada kebangkitan politik populisme atau menggunakan sentimen agama dalam politik seperti sempat diperlihatkan Boris Johonson saat berkampanye memperebutkan kursi perdana menteri pada 2018.</p><p>\"Selain itu ada juga gejala takfirisme seperti di Indonesia. Cuma karena hak privat di Inggris lebih dihormati dengan ketat, dia tak berkembang menjadi tindakan radikal. Pemerintah tidak tinggal diam karena tak mau kaum takfiri menjadi bom waktu,\" papar Munawir.</p><p>Selengkapnya, saksikan Blak-blakan Munawir Aziz, \"Jejak Ratu Elizabeth dan Islam di Inggris\" di detik.com, Jumat (15/5/2020).</p>', 'N', 'Y', 'jejak-ratu-elizabeth-i-dan-perkembangan-islam-di-inggris.jpeg', '<p>Munawir Aziz (Foto: Rakean R Natawigena / 20detik)<br></p>', 'Friday', '2020-05-15', '06:20:52', 0, '<p>Ratu Elizabeth<br></p>', 'jejak-ratu-elizabeth-i-dan-perkembangan-islam-di-inggris'),
(16, 'Politik', 'fendi', 'Fendi Hidayat', 'Trump Tak Ingin Bicara dengan Presiden China, Ancam Putuskan Hubungan', '<p><b>Washington DC</b> - Presiden Amerika Serikat (AS) Donald Trump menyatakan dirinya sedang tidak ingin bicara dengan Presiden China, Xi Jinping. Trump memperingatkan bahwa dirinya bisa saja memutus hubungan AS dengan China terkait cara penanganan pandemi virus Corona (COVID-19).</p><p>Seperti dilansir AFP, Jumat (15/5/2020), retorika terbaru Trump untuk China yang semakin keras ini, disampaikan di tengah pertikaian kedua negara terkait pandemi virus Corona. Ketegangan AS dan China meningkat saat kedua negara saling adu argumen soal asal virus Corona, yang pertama kali terdeteksi di Wuhan, China pada akhir tahun 2019. Trump bahkan menyebutnya sebagai \'wabah dari China\'.</p><p>\"Saya memiliki hubungan sangat baik (dengan Xi), tapi saya -- saat ini saya tidak ingin bicara dengannya,\" ucap Trump merujuk pada Presiden Xi dalam wawancara dengan media AS, Fox Business.</p><p>\"Saya sangat kecewa pada China. Saya beritahu Anda hal itu sekarang,\" tegasnya.</p><p>Saat ditanya bagaimana AS akan bertindak, Trump tidak memberikan jawaban spesifik, namun menyampaikan komentar bernada ancaman. \"Ada banyak hal yang bisa kita lakukan. Kita bisa melakukan sesuatu. Kita bisa memutuskan seluruh hubungan,\" tegasnya.</p><p>\"Jika Anda melakukannya, apa yang akan terjadi?\" imbuh Trump. \"Anda akan menyelamatkan US$ 500 miliar jika Anda memutus seluruh hubungan,\" sebutnya.</p><p>Beberapa minggu terakhir, Trump menuduh China menutupi skala sebenarnya dari wabah virus Corona, yang akhirnya menyebar luas ke berbagai negara dan kini menewaskan lebih dari 300 ribu orang secara global. China membatas keras tuduhan itu dan bersikeras menyatakan pihaknya telah memberikan semua data yang ada sesegera mungkin kepada Organisasi Kesehatan Dunia (WHO).</p>', 'Y', 'Y', 'trump-tak-ingin-bicara-dengan-presiden-china,-ancam-putuskan-hubungan.jpeg', '<p>Donald Trump dan Xi Jinping (dok. Reuters)<br></p>', 'Friday', '2020-05-15', '06:24:00', 0, '<p>Donald Trump,&nbsp; Xi Jinping,&nbsp;China, AS<br></p>', 'trump-tak-ingin-bicara-dengan-presiden-china,-ancam-putuskan-hubungan'),
(17, 'Berita', 'fendi', 'Fendi Hidayat', 'Gugus Tugas Bicara Kemungkinan Gelombang Kedua Pandemi Corona di Indonesia', '<p>Jakarta - Ketua Tim Pakar Gugus Tugas Percepatan Penanganan COVID-19 (GTPPC-19), Wiku Adisasmito, mengungkapkan saat ini pemerintah sedang mempersiapkan skenario terburuk apabila gelombang kedua virus Corona terjadi di Indonesia. Meski demikian, pemerintah tidak berharap hal ini terjadi.</p><p>\"Pertama, gelombang kedua nasional pandemi Corona tidak boleh sampai terjadi. Tapi kami butuh mempersiapkannya,\" kata Wiku dalam Konferensi Pers di YouTube Sekretariat Presiden, Kamis (14/5/2020).</p><p>Wiku menuturkan gelombang kedua pandemi Corona hanya akan terjadi pada daerah yang masyarakatnya abai dengan rekomendasi kesehatan sesuai anjuran pemerintah. Untuk itu, dia mengimbau masyarakat agar selalu disiplin untuk menjaga jarak.</p><p>\"Gelombang kedua mungkin hanya akan terjadi pada daerah yang masyarakatnya tidak menjalankan rekomendasi kesehatan. Disiplin dalam menerapkan perilaku sehat itu hal yang direkomendasikan untuk mencegah gelombang kedua,\" jelasnya.</p><p>Untuk itu, Wiku mengungkapkan pentingnya melakukan pengamatan di lingkup daerah, mengingat penambahan kasus di daerah akan mempengaruhi situasi nasional.</p><p>\"Mungkin, saat ini sangat penting untuk melakukan observasi di masing-masing wilayah bukan hanya lingkup nasional. Apa pun yang terjadi pada lingkup lokal akan berdampak pada situasi nasional,\" ungkapnya.</p><p>Sedangkan di lingkup nasional, GTPPC-19 akan selalu berupaya memperkuat sistem kesehatan umum sehingga peran masyarakat dibutuhkan dalam menangani pandemi Corona di Indonesia.</p><p>\"Dalam lingkup nasional, kita Gugus Tugas selalu memperkuat sistem kesehatan umum dalam lingkup nasional. Kami mencoba yang terbaik, dan kita tidak bisa lakukan bersama. Kami butuh masyarakat Indonesia bersama dalam menangani pandemi Corona,\" ujarnya.</p>', 'Y', 'Y', 'gugus-tugas-bicara-kemungkinan-gelombang-kedua-pandemi-corona-di-indonesia.jpeg', '<p>Ilustrasi Pandemi Corona (Edi Wahyono/detikcom)<br></p>', 'Friday', '2020-05-15', '06:28:25', 0, '<p>Corona,&nbsp;COVID-19,&nbsp;<br></p>', 'gugus-tugas-bicara-kemungkinan-gelombang-kedua-pandemi-corona-di-indonesia'),
(18, 'Berita', 'fendi', 'Fendi Hidayat', 'Relaksasi Social Distancing Bisa Picu Corona Gelombang Kedua', '<p>Jakarta - Presiden Joko Widodo (Jokowi) telah berbicara mengenai virus Corona gelombang kedua. Pertama, saat dia berbicara soal ketidakpastian akhir pandemi. Kedua, saat Jokowi berbicara soal kepulangan tenaga kerja Indonesia (TKI) dari luar negeri. Bahaya virus Corona gelombang kedua bisa dipicu oleh faktor relaksasi pembatasan sosial.</p><p>Sebagaimana dilansir CNN, diakses detikcom, Senin (4/5/2020), topik soal potensi wabah COVID-19 gelombang kedua juga menjadi pembicaraan di Amerika Serikat (AS).</p><p>Dokter ahli penyakit menular yang disegani di AS, Anthony Fauci, memprediksi wabah ini bisa kembali setelah AS mengalami penurunan kasus.</p><p>Pemicu pertama wabah Corona gelombang kedua adalah bila negara mengakhiri pembatasan sosial terlalu cepat. Bila itu terjadi, negara yang bersangkutan bakal mengalami lonjakan angka kematian. Agar itu tidak terjadi, pengetesan terhadap virus Corona, pelacakan kasus, dan isolasi bagi mereka yang tertular Corona adalah faktor penting supaya gelombang kedua tidak terjadi di AS.</p><p>Sama dengan Anthony Fauci, kepala kantor medis Dignity Health Southern California bernama Nicholas Testa berpendapat pelonggaran social distancing bisa memicu gelombang kedua.</p><p>\"Pertama, yakni relaksasi dari social distancing yang kita terapkan.... Segera setelah itu terjadi, pasti kita akan melihat gelombang kedua-pertanyaannya adalah seberapa signifikan itu akan terjadi?\" kata Nicholas Testa, dilansir ABC7</p>', 'N', 'Y', 'relaksasi-social-distancing-bisa-picu-corona-gelombang-kedua.jpeg', '<p>Foto ilustrasi tenaga medis yang menangani kasus Corona. (Rifkianto Nugroho/detikcom)<br></p>', 'Friday', '2020-05-15', '06:31:25', 0, '<p>Corona<br></p>', 'relaksasi-social-distancing-bisa-picu-corona-gelombang-kedua'),
(19, 'Politik', 'fendi', 'Fendi Hidayat', 'Jurus Trump Menangkan Pemilu Lewat China', '<p>Jakarta - Presiden Amerika Serikat (AS) Donald Trump akhir-akhir ini menuai kontroversi akibat perilakunya menyalahkan China atas wabah Covid-19 di dunia. Ia melemparkan berbagai tuduhan keras kepada Cina yang dianggap sebagai biang kerok atas meledaknya pandemik virus tersebut.</p><p>Di sisi lain, manuver-manuver politik Trump atas China bukan sesuatu yang kebetulan terjadi. Semuanya hadir di saat elektabilitas Trump semakin tergerus menjelang Pemilu AS yang akan diselenggarakan pada 3 November mendatang.</p><p>Kita dapat melihat serangan-serangan verbal dari Trump kepada China sebagai bagian dari upayanya untuk mengerek popularitasnya kembali. Dengan masa kampanye yang tersisa kurang dari tujuh bulan, Trump harus memanfaatkan semua kesempatan tersedia baginya, baik pada isu dalam negeri maupun luar negeri.</p><p>Beberapa data dari lembaga survei politik terkemuka di AS menunjukkan tren negatif dalam elektabilitas Trump. YouGov mencatat bahwa elektabilitas Donald Trump per 5 Mei 2020 berada di angka 42%, sedangkan Joe Biden --penantang dari partai Demokrat-- berada di angka 46%. Sebagai catatan, responden dari survei ini terdiri dari 1.019 pemilih yang tercatat (registered voters). Artinya, mereka sudah mendaftar untuk mengikuti pemilu pada 3 November mendatang. Sistem pemilu di AS mewajibkan para calon pemilih untuk mendaftar terlebih dahulu untuk mendapatkan hak memilih.</p><p>Sementara itu, Ipsos mencatat elektabilitas Trump bertengger di angka 38% sementara Biden sukses meraup 39% per 5 Mei 2020. Berbeda dengan YouGov, responden Ipsos merupakan orang-orang dewasa (adults) yang belum pasti memilih, tetapi memiliki hak untuk itu.</p><p>Jika data ini dilengkapi dengan tingkat penerimaan publik (approval) atas presiden, tren yang sama akan terulang. Menurut hasil survei Global Strategy Group/Navigator Research dalam kurun waktu 1- 6 Mei 2020, tingkat penerimaan Trump hanya menyentuh angka 44%. Di sisi lain, survei ini menunjukkan terdapat 56% responden yang menolak pemerintahan Trump. Patut diperhatikan bahwa responden dari survei ini adalah para registered voters.</p><p>Rendahnya elektabilitas Trump sangat terkait dengan kinerjanya saat menangani penyebaran Covid-19. Trump dianggap gagal untuk menekan laju penyebaran Covid-19 di AS hingga menyebabkan negara ini menjadi negara dengan penderita terbesar. AS pun sempat mengalami kelangkaan masker, APD, dan ventilator yang cukup akut. Belum lagi serangkaian konfliknya dengan para gubernur negara bagian yang tidak sepemahaman dengan kengototan Trump untuk membuka karantina di tengah-tengah ledakan angka kasus positif. Puncaknya, Trump mencoreng mukanya sendiri saat menyuruh para penderita Covid-19 supaya disuntik dengan desinfektan.</p><p>Belum cukup dengan deretan drama tersebut, Trump juga dihadapkan pada ancaman yang lebih nyata yaitu resesi ekonomi. Saat ini, AS telah mencatatkan rekor utang terbesar sepanjang sejarah yaitu mencapai 24 triliun dolar. Dari sisi GDP, situasi ini tampak lebih buruk lagi. GDP Amerika Serikat mengalami kontraksi hingga ke angka minus 4,8% --terburuk sejak Krisis Ekonomi Global 2008.</p><p>Masyarakat AS sendiri mulai bersikap pesimistis atas perkembangan ekonomi negaranya. Menilik dari survei besutan Pew Research, 17% warga khawatir bahwa negaranya akan mengalami depresi ekonomi. Sementara itu, sebanyak 48% percaya bahwa AS akan jatuh ke dalam resesi dan 34% lainnya menganggap AS \'hanya\' akan mengalami perlambatan ekonomi (economic slowdown).</p><p>Lantas, dengan berbagai himpitan persoalan di dalam negeri tersebut, dapatkah Trump lolos dari lubang jarum kekalahan dalam Pemilu AS November mendatang?</p><p><br></p><p><b>Membalikkan Prediksi</b></p><p>Trump memiliki cukup pengalaman dalam membalikkan prediksi banyak orang. Hal ini ditunjukkannya ketika sukses menyalip Hillary Clinton pada Pemilu 2016. Padahal, banyak pihak serta lembaga survei yang lebih menjagokan mantan Menteri Luar Negeri pada era Obama tersebut. Banyak pihak yang menganggap Hillary lebih memiliki kualitas seorang pemimpin dibandingkan Trump yang kontroversial.</p><p>Lalu, apakah kunci keberhasilan Trump saat itu? Salah satunya terletak pada kelihaiannya dalam menggunakan isu-isu internasional sebagai sarana menarik simpati publik. Singkatnya, Trump sangat lihai menyalahkan negara-negara lain atas masalah yang dialami oleh AS. Negara-negara seperti Meksiko, Korea Utara, Rusia, bahkan Uni Eropa sekalipun pernah dituding menjadi biang kerok masalah-masalah dalam negeri AS.</p><p>Salah satu negara target \'favorit\' bagi Trump di masa kampanyenya adalah China. Pada 2016, ia pernah mencuit di Twitter bahwa China selama ini telah \"memperkosa\" ekonomi AS lewat produk-produk dan kebijakan dagangnya. Setelah terpilih menjadi presiden, kegemaran menyalahkan China pun berlanjut. Daftar kesalahan China yang ditimpakan oleh Trump berkisar dari tuduhan terhadap Huawei sebagai mitra Iran dalam mencuri informasi AS, berkobarnya Perang Dagang, hingga sebutan \"virus Wuhan\" untuk Covid-19.</p><p>Apa yang dilakukan oleh Trump terhadap China merupakan bagian dari strategi rally around the flag. Dalam strategi ini, popularitas seorang pemimpin di dalam negeri akan meroket jika ia sanggup menciptakan musuh bersama bagi negara. Selanjutnya, masyarakat akan bersatu untuk mendukung sang pemimpin dalam mengalahkan musuh tersebut.</p><p>Strategi ini bergantung kepada kemampuan seorang pemimpin dalam membangkitkan sentimen nasionalisme serta patriotisme di kalangan rakyatnya. Dalam praktiknya, pemimpin akan melakukan dramatisasi atas sebuah isu di dunia internasional yang dianggap mengancam negaranya. Kemudian, ia akan memperlihatkan dirinya sebagai pemimpin yang tepat untuk melawan ancaman tersebut.</p><p>Dramatisasi situasi dan bangunan narasi ketakutan merupakan keahlian Trump sebagai seorang pemimpin yang populis. Saat ini, ia tengah gencar menempatkan China sebagai musuh bersama bagi masyarakat AS. Hal ini tampak dari pernyataan-pernyataan Trump di media. Dikutip dari CNN, Trump menegaskan bahwa Covid-19 merupakan serangan terbesar kepada AS setelah Peristiwa 911 dan Pearl Harbor. Covid-19, menurut Trump, adalah sebuah peperangan di mana musuhnya tidak kasat mata. Tidak lupa, Trump juga menyalahkan China karena tidak mampu mencegah \'musuh tak kasat mata\' tersebut menyerang AS.</p><p>China sendiri merupakan sasaran yang paling empuk untuk memancing kemarahan warga AS. Survei yang dilakukan oleh Pew Research pada Maret 2020 mencatat bahwa terdapat 66% warga AS yang memiliki kesan negatif terhadap China. Sementara itu, mereka yang bersikap sebaliknya hanya menyentuh angka 26%. Sebagian besar perspektif negatif ini muncul akibat penyebaran Covid-19 yang dianggap merupakan kesalahan China.</p><p>Selain sengaja mengipasi kebencian publik terhadap China, Trump juga rajin menuduh bahwa China tidak akan mau dirinya terpilih kembali. China disebut-sebut akan ikut campur terhadap Pemilu AS demi mencegah Trump naik menjadi presiden.</p><p>Joe Biden tidak luput dari serangan Trump. Ia bahkan menuduh rivalnya ini sebagai antek-antek China dengan menyebutnya sebagai \"Beijing Biden\". Dalam email kepada para pendukungnya, Trump menegaskan, \"Saya selalu TEGAS TERHADAP CHINA, sedangkan \'Sleepy\' Joe Biden SANGAT LEMAH TERHADAP CHINA\". Biden, menurut Trump, adalah pengkhianat yang siap menusuk rakyat AS dari belakang.</p><p>Dengan strategi rally around the flag ini, Trump bagaikan membunuh dua burung dengan satu lemparan batu. Pertama, ia bisa menaikkan dukungan publik lewat sikap kerasnya terhadap China. Kedua, ia sekaligus menggerus popularitas Joe Biden yang semakin menguat.</p><p>Kita masih akan melihat serangkaian kata-kata pedas yang diumbar oleh Trump kepada Cina setidaknya hingga Pemilu AS usai. Namun, apakah ini berarti bahwa Trump memang membenci China sebesar itu? Tentu saja tidak. Trump hanya butuh China. Kelak, China akan menjadi kartu truf Trump dalam memenangkan persaingannya dengan Joe Biden.</p>', 'N', 'Y', 'jurus-trump-menangkan-pemilu-lewat-china.jpg', '<p>Presidan AS Donald Trump di China (Foto: Damir Sagolj/Reuters)<br></p>', 'Friday', '2020-05-15', '06:36:52', 0, '<p>donald trump,&nbsp;<span style=\"font-size: 1rem;\">pemilu as 2020,&nbsp;</span><span style=\"font-size: 1rem;\">as-china,&nbsp;</span><span style=\"font-size: 1rem;\">virus wuhan</span></p>', 'jurus-trump-menangkan-pemilu-lewat-china'),
(20, 'Berita', 'fendi', 'Fendi Hidayat', 'Ajudan Pribadi Trump Terinfeksi Corona, Gedung Putih Wajibkan Pakai Masker', '<p>Jakarta - Seluruh karyawan Gedung Putih diselimuti kekhawatiran setelah dua staf dinyatakan positif terinfeksi virus Corona COVID-19.</p><p>Kedua staf merupakan personel Angkatan Laut AS yang merupakan ajudan pribadi Presiden Donald Trump serta sekretaris urusan media Wakil Presiden Mike Pence, Katie Miller.</p><p>Kedua kasus itu menyebabkan ancaman pandemi semakin dekat dengan sang presiden. Pada akhir pekan lalu, Gedung Putih berupaya melacak orang-orang yang kemungkinan menjalin kontak dengan Miller dalam beberapa waktu terakhir. Namun, hingga awal pekan ini belum ada hasil yang menunjukkan siapa yang positif tertular COVID-19.</p><p>Hal itu memicu kekhawatiran di antara para staf Gedung Putih mengenai bagaimana virus itu menginfeksi dua rekan mereka dan siapa yang sekiranya harus menjalani karantina mandiri demi mencegah penularan meluas.</p><p>Namun, sejumlah staf yang sempat menjalin kontak dengan Miller secara sukarela melakukan karantina mandiri. Pada Senin (11/5/2020), memo Gedung Putih memerintahkan seluruh staf menggunakan masker terutama ketika memasuki wilayah kantor presiden di West Wing.</p><p>Dilansir dari laman CNN International, sumber menuturkan memo itu juga meminta para staf mengikuti pedoman menjaga jarak sosial selama berada di kawasan Gedung Putih.</p><p>Sebelum insiden staf terinfeksi Corona, karyawan Gedung Putih tidak biasa menggunakan masker di tengah pandemi COVID-19. Padahal, Pusat Pengendalian dan Pencegahan Penyakit (CDC) AS telah merekomendasikan hal tersebut sebagai pencegahan penularan virus.</p><p>Trump bahkan kerap menolak menggunakan masker terutama ketika melakukan kunjungan kerja ke tempat umum. Trump pernah berkata dirinya tidak bisa membayangkan jika harus menggunakan masker di depan umum.</p><p>Namun, Trump disebut merasa frustasi setelah sejumlah staf Gedung Putih, termasuk ajudan pribadinya sendiri, terinfeksi virus Corona.</p><p>Trump merasa khawatir rencananya membuka kembali perekonomian AS rusak setelah muncul berita bahwa sejumlah staf Gedung Putih terinfeksi Corona. Ia disebut menganggap kasus Corona di Gedung Putih bisa merusak pesannya selama ini yang menilai bahwa penularan corona di AS telah menurun.</p><p>Trump dikabarkan memberi tahu orang-orang di sekelilingnya bahwa ia tidak ingin berada di dekat siapa pun yang belum melakukan pemeriksaan Corona. Presiden berusia 73 tahun itu juga disebut merasa tidak nyaman menjalin kontak dengan beberapa orang di Gedung Putih.</p><p>AS memang masih menjadi negara dengan kasus Corona dan angka kematian tertinggi di dunia. Berdasarkan data statistik Worldometer per Rabu (13/5/2020), AS tercatat masih menemukan lonjakan kasus corona baru dan angka kematian.</p><p>Sejauh ini, AS tercatat memiliki 1.408.636 kasus corona dengan 83.425 kematian. Meski lonjakan penularan masih ditemukan, puluhan negara bagian AS tetap melanjutkan rencana pelonggaran kebijakan pembatasan pergerakan secara bertahap dan mulai membuka kembali aktivitas perekonomian.</p>', 'N', 'Y', 'ajudan-pribadi-trump-terinfeksi-corona,-gedung-putih-wajibkan-pakai-masker.jpeg', '<p>Ajudan pribadi Donald Trump terinfeksi Corona. (Foto: AP Photo)<br></p>', 'Friday', '2020-05-15', '06:44:26', 0, '<p>donald trump, terinfeksi virus corona, gedung putih, amerika serikat, virus corona<br></p>', 'ajudan-pribadi-trump-terinfeksi-corona,-gedung-putih-wajibkan-pakai-masker'),
(21, 'Tekno', 'fendi', 'Fendi Hidayat', 'Ups, Bos Xiaomi Lei Jun Kedapatan Pakai iPhone', '<p>Jakarta - Baru-baru ini, Lei Jun, chairman dan co-founder Xiaomi kedapatan mengunggah sebuah foto ke akun media sosial Weibo menggunakan iPhone.</p><p>Sontak, warganet bereaksi keras karena petinggi perusahaan asal Tiongkok itu tidak menggunakan ponsel buatannya sendiri dan memilih pakai produk Apple.</p><p>Alhasil, perdebatan tentang bagaimana iPhone menjadi perangkat terbaik di pasaran pun mulai bermunculan di kolom komentar akun bos Xiaomi tersebut.</p><p>Guna meredakan komentar, Lei Jun konten itu. Sayang, tangkapan layar konten itu telanjur menyebar luas di internet.</p><p>\"Eksekutif perusahaan smartphone harus mencoba ponsel buatan pesaing mereka,\" ujar Pan Jiutang, selaku rekanan Xiaomi sebagaimana dikutip dari Gizmochina, Jumat (15/5/2020).</p><p>Ia menambahkan, \"Hal ini dilakukan untuk dapat menyusun strategi dan merencanakan produk mereka di masa mendatang.\"</p><p>Lebih lanjut, Jiutang juga menyebut, setiap pemilik perusahaan smartphone yang mengklaim mereka tidak pernah menggunakan ponsel Apple atau Samsung itu bersikap munafik.</p><p>Dia juga mengatakan, inovasi terkadang ditiru dan kemudian ditingkatkan saat produk mereka sendiri diluncurkan di pasaran.</p><p>Sebelumnya, pendiri Huawei mengatakan dia sangat mengagumi ekosistem Apple. CEO Realme pun pernah menuliskan twit memakai iPhone tahun lalu. Li Nan, mantan eksekutif Meizu juga kedapatan beralih memakai iPhone setelah meninggalkan perusahaan.</p><p><span style=\"font-size: 1rem;\">Informasi, Lei Jun pernah menyatakan pada masa lalu bahwa pejabat dan staf Xiaomi tidak dilarang menggunakan merek pesaing mereka.</span><br></p><p>Tetapi ada yang berpendapat, hal tersebut tidak sopan dan menyenangkan bagi penggemar setianya melihat pendiri Xiaomi memakai iPhone.</p>', 'N', 'Y', 'ups,-bos-xiaomi-lei-jun-kedapatan-pakai-iphone.jpg', '<p>Founder dan CEO Xiaomi, Lei Jun presentasi Xiaomi Mi MIX 2 di University of Technology Gymnasium Beijing, Tiongkok, Senin (11/9/2017) waktu setempat. (Doc: Istimewa)<br></p>', 'Friday', '2020-05-15', '06:49:27', 0, '<p>Lei Jun, Xiaomi, iPhone, Weibo,Lei Jun iPhone<br></p>', 'ups,-bos-xiaomi-lei-jun-kedapatan-pakai-iphone'),
(22, 'Berita', 'fendi', 'Fendi Hidayat', 'Ulama Aceh Berikan Pilihan ke Warga untuk Salat Id, Bisa di Masjid dan Rumah', '<p>Majelis Permusyawaratan Ulama (MPU) Aceh tidak melarang pelaksanaan salat Idul Fitri di masjid atau pun di rumah. Hal tersebut tertuang dalam Taushiyah MPU Aceh Nomor 5 Tahun 2020 tentang Tata Cara Pelaksanaan Ibadah Ramadhan dan Kegiatan Keagamaan Lainnya.&nbsp;</p><p>Wakil Ketua MPU Aceh, Teungku H Faisal Ali atau Lem Faisal, mengatakan MPU masih berpegang pada Taushiyah MPU 5/2020 mengingat kondisi di Aceh belum ada perubahan terkait kasus pandemi virus corona.&nbsp;</p><p>“Kita masih dalam kondisi yang terkendali dan statusnya sampai hari ini masih sama. Makanya Taushiyah MPU Nomor 5 itu menjadi pegangan kita,” kata Lem Faisal kepada kumparan, Jumat (15/4).&nbsp;&nbsp;</p><p>Bunyi poin kelima dalam Taushiyah MPU 5/2020 yakni: Diminta kepada setiap komponen masyarakat yang berdomisili di kawasan yang kondisi penularan wabah penyakit COVID-19 masih terkendali , maka pelaksanaan ibadah salat fardu, tarawih, witir dan salat hari raya (salat Id ) dapat dilaksanakan di Masjid dan Meunasah dengan membatasi waktu pelaksanaannya.&nbsp;&nbsp;</p><p>Salat Id, Meulaboh, Aceh Barat, Aceh</p><p>Ribuan umat islam melaksanakan ibadah salat hari raya Idul Fitri 1440 Hijriah di Masjid Agung Baitul Makmur, Meulaboh, Aceh Barat, Aceh, Rabu (5/6). Foto: ANTARA FOTO/Syifa Yulinnas</p><p>Berpedoman pada Taushiyah itu, Lem Faisal menyebutkan, terkait pelaksanaan Salat Id diserahkan kepada masyarakat. Salat Id bisa dilaksanakan di masjid maupun rumah masing-masing karena hukumnya sunah.&nbsp;&nbsp;</p><p>“Sunah dilaksanakan, dan sunah juga apabila dilaksanakan berjemaah. Tetapi kalau tidak dilaksanakan berjemaah karena ada keozoran silakan di rumah masing-masing tidak masalah. Tetapi kalau tidak ada, dan ingin mencapai kelebihan secara berjemaah dipersilahkan,” ungkapnya.&nbsp;&nbsp;</p><p>Akan tetapi, bagi masyarakat yang ingin melaksanakan Salat Id di masjid atau lapangan terbuka, MPU meminta masyarakat untuk tidak mengabaikan protokol kesehatan. Misalnya menggunakan masker atau membawa sajadah sendiri.&nbsp;&nbsp;</p><p>“Tidak ada penanganan khusus, karena itu ibadah sunah. Tidak harus di masjid, tapi boleh dilaksanakan di rumah,” tegasnya.&nbsp;&nbsp;</p><p>Menurut Lem Faisal, dalam hal ini keputusan MUI, Menteri Agama, dan MPU Aceh sejalan tidak ada pertentangan.&nbsp;&nbsp;</p><p>Sama-sama mengimbau untuk tidak melaksanakan Salat Id di masjid bagi daerah yang penyebaran COVID-19 sangat masif, dan wilayah itu sudah memberlakukan PSBB.&nbsp;&nbsp;</p><p>“Tetapi bagi daerah yang tidak ada, kategorinya masih aman, tidak ada masalah. Kementerian agama juga sepakat untuk itu,” pungkasnya.</p>', 'Y', 'Y', 'ulama-aceh-berikan-pilihan-ke-warga-untuk-salat-id,-bisa-di-masjid-dan-rumah.jpg', '<p>Umat muslim memadati Masjid Raya Baiturrahman untuk melaksanakan ibadah shalat Id atau sembahyang hari Raya Idul Fitri di Banda Aceh, Aceh, Rabu (5/6). Foto: ANTARA FOTO / Irwansyah Putra<br></p>', 'Friday', '2020-05-15', '06:53:59', 0, '<p>Virus Corona di Indonesia, Salat Id, Ramadhan, Lebaran 2020, Kabar Daerah, Aceh<br></p>', 'ulama-aceh-berikan-pilihan-ke-warga-untuk-salat-id,-bisa-di-masjid-dan-rumah'),
(23, 'Berita', 'fendi', 'Fendi Hidayat', 'Sultan HB X Buka Peluang Ajukan PSBB Yogyakarta ke Menkes Terawan', '<p>Daerah Istimewa Yogyakarta (DIY) hingga saat ini masih belum memberlakukan Pembatasan Sosial Berskala Besar (PSBB). Padahal, kasus positif corona di Yogyakarta terus meningkat setiap harinya.&nbsp;&nbsp;</p><p>Hingga Kamis (14/5), sebanyak 185 orang dinyatakan positif virus corona, dengan rincian sudah 68 pasien sembuh dan 7 meninggal.&nbsp;</p><p>Peningkatan jumlah kasus di Yogyakarta ini juga diiringi dengan munculnya sejumlah klaster, seperti Klaster Jemaah Tablig Sleman, Klaster Jemaah Gunungkidul, Klaster GPIB Kota Yogyakarta, dan terakhir Klaster Indogrosir.&nbsp;</p><p>Fakta di lapangan, peningkatan kasus ini justru tidak dibarengi dengan kesadaran masyarakat. Banyak masyarakat yang abai dengan protokol pencegahan corona, seperti tetap berkerumun dan tidak mengenakan masker.&nbsp;</p><p>\"Masih campaign (mengkampanyekan kesadaran masyarakat) ya, kami berharap masyarakat mau mendisiplinkan diri,\" ujar Gubernur DIY Sri Sultan Hamengku Buwono (HB) X di Gedhong Wilis, Kepatihan Pemda DIY, Jumat (15/5).&nbsp;</p><p>Sultan HB X mulai mengisyaratkan diterapkannya PSBB di DIY, namun dengan sejumlah catatan. Contohnya, kajian dari hasil tracing klaster-klaster yang ada di DIY dan faktor ketertiban masyarakat.&nbsp;</p><p>\"Kalau memang kita anggap dengan klaster-klaster itu positifnya dominan, reaktif itu kan tidak mesti positif, bisa negatif. Kalau nanti hasilnya negatifnya dominan (bagaimana), dan kita punya pertimbangan (jika dominan positif). Ya mungkin kita lakukan PSBB,\" kata Sultan.&nbsp;</p><p>Puluhan masyarakat Kampung Baciro, Gondokusuman, Kota Yogyakarta menyambut kedatangan petugas medis yang tangani corona.&nbsp; Foto: Arfiansyah Panji Purnandaru/kumparan</p><p>\"Biar lebih menertibkan mereka (masyarakat) yang tidak disiplin ini,\" imbuhnya.&nbsp;</p><p>Sultan mengatakan, sebelum ada penerapan PSBB, pihaknya berharap kesadaran masyarakat bisa lebih baik lagi. Masyarakat diminta bukan hanya jadi obyek, tapi subjek dalam menghadapi corona ini.&nbsp;</p><p>\"Sebetulnya kita PSBB atau tidak kalau mereka patuh disiplin mengendalikan diri tinggal di rumah ya sebetulnya selesai kok masalahnya, tidak kerumunan dan sebagainya. Tapi kesulitan kita sama-sama menahan diri untuk tidak keluar rumah kalau tidak penting, itu kok sepertinya rekoso (susah), karena dirinya sendiri tak mampu mendisiplinkan diri,\" ungkap Sultan.</p><p>Sultan pun meminta masyarakat mencontoh kedisplinan saat bencana gempa 2006 dan Merapi meletus 2010. Saat itu, masyaralat mau disiplin dan bergotong royong menghadapi bencana.&nbsp;</p><p>\"Untuk mendisiplinkan diri sehingga partisipasi seperti tahun 2006 dan 2010, biar pun kami juga terima kasih di mana warga masyarakat itu saling membantu. Itu memang karakter kita, tapi jangan hanya saling membantu, tapi juga punya kesadaran untuk mendisiplinkan diri untuk tidak keluar kalau dianggap tak penting,\" pungkasnya.</p>', 'Y', 'Y', 'sultan-hb-x-buka-peluang-ajukan-psbb-yogyakarta-ke-menkes-terawan.jpg', '<p>Gubernur DIY Sri Sultan Hamengku Buwono (HB) X di Kompleks Kepatihan Pemda DIY. Foto:&nbsp; Arfiansyah Panji Purnandaru/kumparan<br></p>', 'Friday', '2020-05-15', '07:34:40', 0, '<p>Kabar Daerah, Virus Corona, Virus Corona di Indonesia, PSBB, Yogyakarta, Sultan HB X<br></p>', 'sultan-hb-x-buka-peluang-ajukan-psbb-yogyakarta-ke-menkes-terawan'),
(24, 'Pariwisata', 'fendi', 'Fendi Hidayat', 'Gara-Gara Pandemi Corona, Sewa Pulau Pribadi Jadi Laris Manis', '<p>Pandemi virus corona hampir menghentikan aktivitas pariwisata di seluruh negara di dunia. Hal itu lantaran pembatasan perjalanan dan berlakunya status lockdown di berbagai negara.&nbsp;</p><p>Namun, permintaan pembelian dan menyewa pulau pribadi justru terus meningkat. Untuk memenuhi hasrat liburan, beberapa orang kaya memilih menyewa pulau pribadi sambil melakukan isolasi mandiri.&nbsp;&nbsp;</p><p>Dilansir CNN, para pakar industri perjalanan mengatakan bahwa sejak Maret, calon pembeli dan penyewa di seluruh dunia menunjukkan minat yang meningkat untuk melarikan diri ke sebuah pulau khusus, untuk isolasi mandiri sekaligus liburan.&nbsp;</p><p>Chris Krolow, CEO perusahaan real-estate Ontario Private Islands, mengatakan saat ini ia menerima 150 permintaan sehari untuk sewa dan pembelian pulau pribadi. Angka tersebut lebih tinggi dari tahun sebelumnya, yang hanya menerima 100 permintaan sewa.&nbsp;&nbsp;</p><p>Menurut data yang ia miliki, klien potensial ini mayoritas berasal dari Amerika Serikat dan Kanada. Sedangkan, pulau yang banyak diminati adalah pulau di Karibia dan Amerika Tengah.</p><p>\"Mereka menginginkan tempat-tempat dengan aksesibilitas mudah, dan itu mengesampingkan Asia dan Pasifik Selatan,\" kata Krolow.&nbsp;</p><p>Pulau Gladden, di Barrier Reef Belize, menjadi pulau pribadi yang paling banyak disewa, karena memiliki tempat perlindungan pribadi. Krolow mengatakan bahwa pulau-pulau pribadi yang ia miliki telah disewa sampai akhir tahun ini, hingga perkiraan waktu pandemi berakhir.&nbsp;&nbsp;</p><p>Gladden, pulau seluas 1 hektare yang dikelilingi samudera biru kehijauan ini mampu menampung empat orang pengunjung dan empat orang staff. Dengan harga sewa 7.390 dolar Amerika atau setara Rp 110 juta untuk empat orang per malam, pengunjung akan mendapat fasilitas mewah yang dilengkapi perahu, perawatan spa, dan olahraga air.&nbsp;&nbsp;</p><p>Sedangkan untuk pembelian pulau pribadi, Kepulauan Bahama di Karibia menjadi lokasi yang banyak paling banyak diminati. Untuk pulau kecil, Krolow mengatakan perusahaan nya menjual mulai harga 50 ribu dolar Amerika atau Rp 746 juta hingga 150 juta dolar Amerika untuk pulau pribadi yang memiliki fasilitas lengkap dan mewah.&nbsp;&nbsp;</p><p>Sementara itu, Krolow menyebut bahwa British Virgin Islands, Inggris, menjadi pulau yang banyak diincar wisatawan yang ingin menyewa pulau dengan kapasitas besar. Dengan harga 102 ribu dolar Amerika atau Rp 1,5 miliar per malam, penyewa dapat menginap di vila bergaya Bali, dengan paviliun kolam renang, bar, dan hot tub yang dapat menampung 30 orang.</p>', 'N', 'Y', 'gara-gara-pandemi-corona,-sewa-pulau-pribadi-jadi-laris-manis.jpg', '<p>Pulau Pribadi di Karibia&nbsp; Foto: Shutter Stock<br></p>', 'Friday', '2020-05-15', '08:01:04', 0, '<p>Travel, Wisatawan, Virus Corona, Karibia, Inggris<br></p>', 'gara-gara-pandemi-corona,-sewa-pulau-pribadi-jadi-laris-manis'),
(25, 'Olahraga', 'fendi', 'Fendi Hidayat', 'Mourinho Tak Pernah Minta Kembalinya Premier League Ditunda', '<p>Jose Mourinho membantah rumor yang menyebutkan dirinya ingin menunda dimulainya kembali Premier League karena khawatir dengan kondisi kebugaran para pemain.&nbsp;</p><p>Rumor tersebut merebak setelah pertemuan antara Premier League dan para pelatih klub, Rabu (13/5/2020). Kabarnya, Mourinho ingin klub-klub diberi waktu latihan satu bulan sebelum kompetisi digelar lagi.&nbsp;</p><p>Namun, Mourinho kemudian menyebut kabar tersebut tidak benar. Justru, pelatih asal Portugal itu bilang bahwa dia ingin sepak bola segera kembali.&nbsp;</p><p>\"Sepertinya posisiku dalam pertemuan tersebut sudah disalahartikan. Aku tidak pernah meminta penundaan apa pun,\" kata Mourinho dalam pernyataan resmi yang dirilis Tottenham.&nbsp;</p><p>\"Aku ingin kembali melatih, dan aku sudah tak sabar menunggu dimulainya kembali Premier League ketika situasi sudah memungkinkan, terutama karena saat ini ada liga-liga lain yang sudah mempersiapkan diri.\"&nbsp;</p><p>\"Aku sangat bangga dengan cara pemain-pemainku menjaga kebugarannya. Mereka menunjukkan profesionalisme, hasrat, dan dedikasi yang hebat.\"&nbsp;</p><p>\"Kami semua sudah bekerja sangat keras dengan program latihan jarak jauh dan saat ini lapangan latihan sudah boleh digunakan. Semua pemain sangat berkomitmen terhadap kerja individual mereka dan sekarang kami menunggu agar latihan berkelompok diperbolehkan lagi. Aku mendukungnya,\" tambah Mourinho.&nbsp;</p><p>Pemerintah Inggris sudah memperbolehkan semua atlet untuk menjalani latihan terorganisir tahap pertama dengan aturan yang sangat ketat.&nbsp;</p><p>Pada tahap pertama, satu sesi latihan hanya boleh dihadiri satu pemain, satu pelatih, dan satu staf medis yang sudah menjalani tes COVID-19. Selain itu, lapangan dan perlengkapan latihan juga harus selalu disterilisasi setelah satu sesi selesai.&nbsp;</p><p>Ini merupakan bagian dari rencana mengembalikan segala kompetisi olahraga mulai 1 Juni 2020. Setelah tahap pertama rampung, tahap kedua—di mana latihan berkelompok bisa mulai dilakukan—bakal digelar. Namun, belum diketahui kapan latihan tahap kedua ini akan diperkenankan.</p>', 'Y', 'Y', 'mourinho-tak-pernah-minta-kembalinya-premier-league-ditunda.jpg', '<p>Jose Mourinho memimpin latihan Tottenham Hotspur. Foto: Reuters/Andrew Couldridge<br></p>', 'Friday', '2020-05-15', '08:04:10', 0, '<p>Liga Inggris, Premier League, Home of Premier League, Tottenham Hotspur, Jose Mourinho, Sepak Bola, Sports<br></p>', 'mourinho-tak-pernah-minta-kembalinya-premier-league-ditunda'),
(26, 'Tekno', 'fendi', 'Fendi Hidayat', 'Jeff Bezos Bakal Jadi Triliuner Pertama dalam Sejarah Manusia', '<p>Pendiri dan CEO Amazon, Jeff Bezos, berpeluang jadi triliuner pertama sepanjang sejarah umat manusia. Jika kekayaannya terus tumbuh pada tingkat saat ini, orang terkaya di dunia itu bisa menjadi triliuner pada tahun 2026, menurut analisis situs ulasan perangkat lunak Comparisun.&nbsp;</p><p>Kekayaan Bezos sendiri memiliki rata-rata peningkatan sebesar 34 persen selama lima tahun terakhir. Pundi-pundi uang Bezos pun tidak terpengaruh pandemi virus corona, karena karantina dan physical distancing membuat orang cenderung belanja online, terutama di perusahaannya, Amazon.&nbsp;</p><p>Dalam analisis yang dibuat Comparisun, setidaknya ada 11 dari 25 orang terkaya di dunia yang memiliki peluang untuk menjadi triliuner dalam hidup mereka. Bezos menempati posisi pertama di dalam daftar peluang tersebut dan diperkirakan menjadi manusia triliuner pertama di usianya yang ke-62 tahun.&nbsp;</p><p>Di posisi kedua setelah Bezos bercokol pendiri Alibaba Jack Ma (diperkirakan jadi triliuner pada 2030), CEO Louis Vuitton Moet Hennessy (LVMH) Bernard Arnault (diperkirakan 2033), dan pendiri sekaligus CEO Facebook Mark Zuckerberg (diperkirakan 2036). Jika prediksi Comparisun benar, Zuckerberg bakal menjadi triliuner termuda di dunia pada umur 51 tahun.&nbsp;</p><p>Comparisun sendiri menggunakan daftar orang terkaya dari Forbes Billionaire List untuk menentukan kekayaan pribadi Bezos. Namun, data tersebut mereka ambil pada September 2019, yang berarti analisisnya tidak memperhitungkan keuntungan yang didapat Bezos selama pandemi virus corona.&nbsp;</p><p>Sebagai catatan, Amazon membukukan pendapatan 75 miliar dolar pada kuartal pertama tahun 2020.&nbsp;</p><p>Adapun kekayaan Bezos saat ini mencapai 138 miliar dolar AS. Menurut laporan Bloomberg, kekayaan Bezos diprediksi meningkat sebesar 28,3 miliar dolar AS pada tahun 2020.&nbsp;</p><p>Meski demikian, capaian Bezos tidak lepas dari sejumlah kritik. Kekayaannya yang selangit itu sering disebut ironi pada masa pandemi virus corona saat ini. Menurut Business Insider, misalnya, dalam dua bulan terakhir ada 36 juta warga Amerika yang mendaftarkan bantuan sosial khusus pengangguran karena mengalami PHK selama corona.&nbsp;</p><p>Perusahaan Bezos, Amazon, juga tengah menghadapi sorotan akhir-akhir ini. Sebabnya, perlakuan mereka terhadap pekerja selama pandemi disebut-sebut telah mengakibatkan 600 karyawan terinfeksi virus corona. Amazon sendiri menolak untuk membagikan jumlah resmi kematian karyawan mereka karena COVID-19.</p>', 'N', 'Y', 'jeff-bezos-bakal-jadi-triliuner-pertama-dalam-sejarah-manusia.jpg', '<p>Jeff Bezos Foto: Reuters/Mike Segar<br></p>', 'Friday', '2020-05-15', '08:07:32', 0, '<p>Jeff Bezos, Amazon, Orang Terkaya, Mark Zuckerberg<br></p>', 'jeff-bezos-bakal-jadi-triliuner-pertama-dalam-sejarah-manusia'),
(27, 'Tekno', 'fendi', 'Fendi Hidayat', 'Dibongkar, \"Harga Asli\" iPhone SE 2020 Ternyata Hanya Rp 3 Jutaan', '<p>Jakarta - iPhone SE menjadi salah satu seri iPhone yang cukup dinantikan bertahun-tahun. Seri ini menjadi alternatif bagi mereka yang ingin memiliki iPhone tentunya harga yang lebih \"murah\" dibanding lini iPhone baru lainnya.&nbsp;</p><p>Saat diluncurkan, harga iPhone SE terbaru ini dipatok mulai dari 399 dollar AS (Rp 6 juta). iPhone SE 2020 sendiri memiliki wujud serupa dengan iPhone 8.&nbsp;</p><p>Namun, ditunjang teknologi iPhone 11, yakni chipset Bionic A13. Hal itu membuat iPhone SE 2020 menarik di mata konsumen. Apple pun bisa lebih hemat dan memerlebar margin keuntungannya dari iPhone SE generasi kedua ini.&nbsp;</p><p>Lantas dengan komponen dan bodi yang serupa dengan iPhone 8, berapa \"harga asli\" yang dikeluarkan Apple untuk merakit satu perangkat iPhone SE 2020 ini?&nbsp; Pertanyaan inilah yang membuat sebuah lab teknologi di Jepang bernama Fomalhaut membeberkan ongkos perakitan iPhone SE 2020.&nbsp;</p><p>Setelah dibongkar komponen demi komponen, diketahui bahwa ongkos perakitan iPhone SE 2020 hanya 217 dollar AS&nbsp; atau sekitar Rp 3,2 juta. Tak mengejutkan, karena sebagian besar komponen iPhone SE 2020 merupakan material lama iPhone 8.&nbsp;</p><p>Dibanding iPhone 8 yang dirilis beberapa tahun lalu dan tanpa menghitung chipset Bionic A13, ongkos perakitan iPhone SE 2020 pun lebih rendah 18 persen. Lihat Foto Estimasi efektivitas ongkos perakitan iPhone SE 2020 terhadap iPhone 8.(Fomalhaut Techno Solutions ) Beberapa komponen iPhone SE 2020 dan iPhone 8 juga saling kompatibel, seperti layar, kamera, slot kartu SIM, mesin Taptic, dan speaker, sebagaimana dirangkum KompasTekno dari Phone Arena, Jumat (15/5/2020).</p><p>Hal ini membuat pengguna lebih mudah melakukan perbaikan karena spare part yang cukup tersedia dan biayanya pun tidak akan semahal lini iPhone baru. Kendati demikian, ada beberapa komponen yang tidak kompatibel. Seperti konektor baterai yang berbeda. iPhone SE 2020 menggunakan komponen baterai yang sama seperti lini iPhone 11.&nbsp;</p><p>Apple juga semakin untung karena tidak perlu repot mengeluarkan dana untuk riset dan pengembangan perangkat. Selain itu, dengan iPhone SE 2020, Apple bisa memperlebar target pasarnya ke kelas menengah. Hal itu cukup menolong Apple untuk tetap mendapat pemasukan dan pangsa pasarnya dari bisnis iPhone di saat ekonomi global tengah lesu karena pandemi</p>', 'N', 'Y', 'dibongkar-harga-asli-iphone-se-2020-ternyata-hanya-rp-3-jutaan.jpg', '<p>iPhone SE 2020<br></p>', 'Friday', '2020-05-15', '18:33:56', 0, '<p>iPhone 8, Apple, iPhone SE 2020<br></p>', 'dibongkar-harga-asli-iphone-se-2020-ternyata-hanya-rp-3-jutaan');
INSERT INTO `berita` (`id_berita`, `nama_kategori`, `username`, `nama_user`, `judul`, `isi_berita`, `headline`, `publish`, `gambar`, `deskripsi_gambar`, `hari`, `tanggal`, `jam`, `dibaca`, `tag_label`, `link`) VALUES
(28, 'Tekno', 'fendi', 'Fendi Hidayat', 'Ini Dia Peraih Posisi Puncak Brand Smartphone Q1 2020 di Indonesia', '                                                                                                                                                                                    <p>Jakarta - Industri smartphone Indonesia dalam kuartal pertama tahun 2020 banyak memberikan kejutan, hal ini dapat dilihat dari menurunnya market share beberapa merek ternama hingga melonjaknya permintaan smartphone lain.</p><p>Seperti dikutip melalui firma riset pasar IDC, secara global beberapa merek smartphone mengalami year-on-year growth negatif. Hanya ada dua merek smartphone yang mencapai year-on-year growth positif yang salah satunya adalah brand smartphone ternama Vivo.</p><p><span style=\"font-size: 1rem;\">Melalui data yang dibagikan IDC, Vivo mengalami year-on-year growth kuartal pertama 2020 sebesar 7,0% untuk pasar global. Sementara di pasar Indonesia sendiri, Vivo meraih pencapaian sebagai brand smartphone nomor satu di Indonesia dengan market share sebesar 27,4%.</span><br></p><p><span style=\"font-size: 1rem;\">\"Untuk kuartal pertama di tahun 2020, IDC telah mengeluarkan data terbarunya, dan Vivo berada di urutan satu untuk industri smartphone di Indonesia,\" ungkap Market Analyst IDC Indonesia Risky Febrian, dalam keterangan tertulis, Kamis (14/5/2020).</span><br></p><p><span style=\"font-size: 1rem;\">Terkait hal tersebut, Senior Brand Director Vivo Indonesia Edy Kusuma mengungkapkan bahwa dengan kepercayaan yang diberikan oleh konsumen, Vivo dapat memperkuat posisinya sebagai salah satu brand smartphone terbesar secara global maupun di pasar smartphone Indonesia.</span><br></p><p><span style=\"font-size: 1rem;\">Vivo juga ingin mengucapkan terima kasih kepada para konsumen setianya terutama di Indonesia, atas dukungannya dalam pencapaian tersebut.</span><br></p><p><span style=\"font-size: 1rem;\">\"Vivo Indonesia merasa sangat berterima kasih kepada dukungan konsumen setia Vivo. Apa yang telah kami capai ini merupakan sebuah indikator dari dukungan konsumen kami terhadap kami, serta produk dan layanan yang kami tawarkan,\" pungkas Edy.</span><br></p><p><span style=\"font-size: 1rem;\">Kemudian, untuk strategi yang diterapkan pada Q1 2020, Vivo memiliki beberapa langkah yang relevan dengan kondisi saat ini, agar tetap dapat memberikan pelayanan terbaik kepada konsumen setianya. Seperti menyajikan lebih banyak varian smartphone dengan teknologi dan fitur terbaru, memperkuat kanal distribusi marketing dan ketersediaan produk di pasar, serta mengadaptasi metode promosi sesuai dengan keadaan saat ini seperti program \'Layanan Antar ke Rumah\'.</span><br></p><p><br></p>                                                                                                                                                                ', 'Y', 'Y', 'ini-dia-peraih-posisi-puncak-brand-smartphone-q1-2020-di-indonesia.png', 'Ini Dia Peraih Posisi Puncak Brand Smartphone Q1 2020 di Indonesia', 'Saturday', '2020-05-16', '12:35:12', 0, 'Vivo Indonesia,  smartphone', 'ini-dia-peraih-posisi-puncak-brand-smartphone-q1-2020-di-indonesia'),
(29, 'Ekonomi', 'admin', 'Administrator', 'Bulog Punya 1,4 Juta Ton Beras, Aman Sampai Lebaran?', '<p>Jakarta - Perum Bulog menyebut per 15 Mei 2020 ada sebanyak 1.428.028 ton stok beras di gudang Bulog di seluruh Indonesia. Dengan begini, stok beras dipastikan aman hingga Lebaran.</p><p>\"Stok kami ada 1,4 juta ton sudah tersebar ke seluruh wilayah. Di mana mekanisme Bulog kami memiliki minimum stok sehingga kami ada 1/3 dalam gudang, 1/3 dalam perjalanan baik di laut maupun di darat, kemudian 1/3 dalam perjalanan yang ada di gudang pengirim. Sehingga kami yakinkan dan pastikan sebaran stok pemerintah dalam kondisi aman,\" kata Direktur Operasional dan Pelayanan Publik Bulog, Tri Wahyudi Saleh dikutip dari YouTube BNPB, Minggu (17/5/2020).</p><p><span style=\"font-size: 1rem;\">Untuk memastikan ketersediaan beras terus aman, pihaknya sedang menyerap gabah dan beras dari hasil petani yang diperkirakan akan panen bulan Mei dan Juni ini. Ditargetkan Juni mendatang Bulog bakal menyerap 20.000 ton beras per hari.</span><br></p><p><span style=\"font-size: 1rem;\">\"Kami tetap mempertahankan untuk penyerapan gabah dan beras dimana saat ini Bulog masih melakukan penyerapan kurang lebih hampir 15.000 ton per hari itu kami pertahankan dan mudah-mudahan puncaknya nanti di Juni kita bisa menyerap sekitar 20.000 ton per hari,\" ucapnya.</span><br></p><p><span style=\"font-size: 1rem;\">Setelah itu, bulan Agustus dan September diperkirakan panen akan kembali terjadi. Sehingga Tri Wahyudi yakin bisa mempertahankan stok sampai akhir tahun.</span><br></p><p><span style=\"font-size: 1rem;\">\"InsyaAllah kami akan memasuki panen berikutnya nanti dibulan Agustus, September, sehingga kami yakinkan sampai akhir Desember kami akan tetap mempertahankan stok yang ada,\" imbuhnya.</span><br></p>', 'N', 'Y', 'bulog-punya-1-4-juta-ton-beras-aman-sampai-lebaran.jpeg', 'Foto: Agung Pambudhy', 'Sunday', '2020-05-17', '18:03:37', 0, 'Bulog ,  BNPB, lebaran', 'bulog-punya-1-4-juta-ton-beras-aman-sampai-lebaran'),
(30, 'Iklan', 'admin', 'Administrator', 'Ikatan Alumni Politeknik Negeri Batam', '<p>Ikatan Alumni Politeknik Negeri Batam<br></p>', 'N', 'Y', 'ikatan-alumni-politeknik-negeri-batam.jpg', 'Ikatan Alumni Politeknik Negeri Batam', 'Wednesday', '2020-06-10', '19:08:01', 0, 'Ikatan Alumni Politeknik Negeri Batam', 'ikatan-alumni-politeknik-negeri-batam'),
(31, 'Iklan', 'admin', 'Administrator', 'We Are IA Polbat', '<p>We Are IA Polbat<br></p>', 'N', 'Y', 'we-are-ia-polbat.png', 'We Are IA Polbat', 'Wednesday', '2020-06-10', '19:07:02', 0, 'We Are IA Polbat', 'we-are-ia-polbat'),
(32, 'Iklan', 'admin', 'Administrator', 'Cake Pisang Villa Sample', '<p>Cake Pisang Villa Sample<br></p>', 'N', 'Y', 'cake-pisang-villa-sample.jpg', 'Cake Pisang Villa Sample', 'Wednesday', '2020-06-10', '19:06:34', 0, 'Cake Pisang Villa Sample', 'cake-pisang-villa-sample'),
(33, 'Iklan', 'admin', 'Administrator', 'Diskon Karaoke di Inul Vista', '<p>Diskon Karaoke di Inul Vista<br></p>', 'N', 'Y', 'diskon-karaoke-di-inul-vista.jpg', 'Diskon Karaoke di Inul Vista', 'Wednesday', '2020-06-10', '19:07:38', 0, 'Diskon Karaoke di Inul Vista', 'diskon-karaoke-di-inul-vista'),
(34, 'Iklan', 'admin', 'Administrator', 'Cek Kesehatan Terjangkau di Prodia', '<p>Cek Kesehatan Terjangkau di Prodia<br></p>', 'N', 'Y', 'cek-kesehatan-terjangkau-di-prodia.jpg', 'Cek Kesehatan Terjangkau di Prodia', 'Wednesday', '2020-06-10', '19:06:06', 0, 'Cek Kesehatan Terjangkau di Prodia', 'cek-kesehatan-terjangkau-di-prodia'),
(35, 'Loker', 'admin', 'Administrator', 'Accounting Consultant', '<div itemprop=\"description\" style=\"color: rgb(102, 102, 102); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0.1px;\"><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px;\">PT. Inforsys Indonesia bergerak di bidang software house membutuhkan beberapa konsultan untuk melakukan training ke customer yang menggunakan program akuntasi dari PT. Inforsys Indonesia</p></div><h5 style=\"font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(102, 102, 102); margin-top: 12px; margin-bottom: 12px; font-size: 16px; letter-spacing: 0.1px;\">Tanggung Jawab Pekerjaan :</h5><div itemprop=\"responsibilities\" style=\"color: rgb(102, 102, 102); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0.1px;\"><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px;\">Melakukan training ke customer dan implementasi</p></div><h5 style=\"font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(102, 102, 102); margin-top: 12px; margin-bottom: 12px; font-size: 16px; letter-spacing: 0.1px;\">Syarat Pengalaman :</h5><div itemprop=\"experienceRequirements\" style=\"color: rgb(102, 102, 102); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0.1px;\">Pengalaman minimal 1 tahun di bidang akuntasi</div><h5 style=\"font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(102, 102, 102); margin-top: 12px; margin-bottom: 12px; font-size: 16px; letter-spacing: 0.1px;\">Keahlian :</h5><div itemprop=\"skills\" style=\"color: rgb(102, 102, 102); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0.1px;\"><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px;\">Menguasai flow akuntansi</p></div><h5 style=\"font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(102, 102, 102); margin-top: 12px; margin-bottom: 12px; font-size: 16px; letter-spacing: 0.1px;\">Kualifikasi :</h5><div itemprop=\"qualifications\" style=\"color: rgb(102, 102, 102); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0.1px;\"><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px;\">Pria dan wanita umur 20- 35 th. bisa bekerjasama dalam team</p></div><h5 style=\"font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(102, 102, 102); margin-top: 12px; margin-bottom: 12px; font-size: 16px; letter-spacing: 0.1px;\">Tunjangan :</h5><div itemprop=\"jobBenefits\" style=\"color: rgb(102, 102, 102); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0.1px;\"><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px;\">uang Makan dan transport</p></div><h5 style=\"font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(102, 102, 102); margin-top: 12px; margin-bottom: 12px; font-size: 16px; letter-spacing: 0.1px;\">Waktu Bekerja :</h5><div itemprop=\"workHours\" style=\"color: rgb(102, 102, 102); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0.1px;\">Jam 8 – 17 senin -jumat</div>', 'N', 'Y', 'accounting-consultant.png', 'PT. Inforsys Indonesia, Batam', 'Saturday', '2020-06-20', '15:47:33', 0, 'PT. Inforsys Indonesia, Batam', 'accounting-consultant'),
(36, 'Loker', 'admin', 'Administrator', 'Marketing Support', '<div itemprop=\"description\" style=\"color: rgb(102, 102, 102); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0.1px;\"><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px;\">Supporting marketing dalam hal administrasi, stock, delivery dan piutang</p></div><h5 style=\"font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(102, 102, 102); margin-top: 12px; margin-bottom: 12px; font-size: 16px; letter-spacing: 0.1px;\">Tanggung Jawab Pekerjaan :</h5><div itemprop=\"responsibilities\" style=\"color: rgb(102, 102, 102); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0.1px;\"><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px;\">Supporting marketing dalam hal administrasi, stock, delivery dan piutang</p></div><h5 style=\"font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(102, 102, 102); margin-top: 12px; margin-bottom: 12px; font-size: 16px; letter-spacing: 0.1px;\">Syarat Pengalaman :</h5><div itemprop=\"experienceRequirements\" style=\"color: rgb(102, 102, 102); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0.1px;\">pengalaman minimal satu tahun di bidang akuntansi dan accounting</div><h5 style=\"font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(102, 102, 102); margin-top: 12px; margin-bottom: 12px; font-size: 16px; letter-spacing: 0.1px;\">Keahlian :</h5><div itemprop=\"skills\" style=\"color: rgb(102, 102, 102); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0.1px;\"><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px;\">Menguasai Microsoft Office, Administrasi dan Accounting</p></div><h5 style=\"font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(102, 102, 102); margin-top: 12px; margin-bottom: 12px; font-size: 16px; letter-spacing: 0.1px;\">Kualifikasi :</h5><div itemprop=\"qualifications\" style=\"color: rgb(102, 102, 102); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0.1px;\"><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px;\">Pria / Wanita<br>Usia 24-30 Tahun<br>Lulusan minimal D3<br>Memiliki pengalaman sebagai marketing support, administrasi dan accounting minimal 1 tahun<br>Memiliki kendaraan bermotor dan SIM C</p></div><h5 style=\"font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(102, 102, 102); margin-top: 12px; margin-bottom: 12px; font-size: 16px; letter-spacing: 0.1px;\">Tunjangan :</h5><div itemprop=\"jobBenefits\" style=\"color: rgb(102, 102, 102); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0.1px;\"><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px;\">Uang Transport, Asuransi BPJS</p></div><h5 style=\"font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(102, 102, 102); margin-top: 12px; margin-bottom: 12px; font-size: 16px; letter-spacing: 0.1px;\">Waktu Bekerja :</h5><div itemprop=\"workHours\" style=\"color: rgb(102, 102, 102); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0.1px;\">senin-jumat 08.30-17.00, sabtu 08.30-11.30</div>', 'N', 'Y', 'marketing-support.jpeg', 'PT. Cahaya Globalindo Prima. Batam', 'Saturday', '2020-06-20', '15:51:40', 0, 'Marketing Support PT. Cahaya Globalindo Prima. Batam', 'marketing-support'),
(37, 'Loker', 'admin', 'Administrator', 'Sales dan Marketing', '<div itemprop=\"description\" style=\"color: rgb(102, 102, 102); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0.1px;\"><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px;\">PT. Indie Desain Berjaya, perusahaan yang bergerak di bidang desain dan produksi custom apparel and merchandise membutuhkan tenaga di bidang penjualan dan pemasaran.</p></div><h5 style=\"font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(102, 102, 102); margin-top: 12px; margin-bottom: 12px; font-size: 16px; letter-spacing: 0.1px;\">Tanggung Jawab Pekerjaan :</h5><div itemprop=\"responsibilities\" style=\"color: rgb(102, 102, 102); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0.1px;\"><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px;\">Membuat janji temu dengan calon customer, mengatur data dan permintaan customer. Memasarkan produk-produk perusahaan.</p></div><h5 style=\"font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(102, 102, 102); margin-top: 12px; margin-bottom: 12px; font-size: 16px; letter-spacing: 0.1px;\">Syarat Pengalaman :</h5><div itemprop=\"experienceRequirements\" style=\"color: rgb(102, 102, 102); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0.1px;\">Pengalaman di bidang Sales dan Marketing</div><h5 style=\"font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(102, 102, 102); margin-top: 12px; margin-bottom: 12px; font-size: 16px; letter-spacing: 0.1px;\">Keahlian :</h5><div itemprop=\"skills\" style=\"color: rgb(102, 102, 102); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0.1px;\"><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px;\">Diutamakan yang memiliki keterampilan bahasa inggris aktif</p></div><h5 style=\"font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(102, 102, 102); margin-top: 12px; margin-bottom: 12px; font-size: 16px; letter-spacing: 0.1px;\">Kualifikasi :</h5><div itemprop=\"qualifications\" style=\"color: rgb(102, 102, 102); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0.1px;\"><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px;\">Wanita, usia 21 s/d 29 tahun</p></div><h5 style=\"font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(102, 102, 102); margin-top: 12px; margin-bottom: 12px; font-size: 16px; letter-spacing: 0.1px;\">Insentif :</h5><div itemprop=\"incentiveCompensation\" style=\"color: rgb(102, 102, 102); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0.1px;\"><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px;\">insentif penjualan</p></div>', 'N', 'Y', 'sales-dan-marketing.png', 'PT. Indie Desain Berjaya', 'Saturday', '2020-06-20', '15:53:31', 0, 'Sales dan Marketing PT. Indie Desain Berjaya', 'sales-dan-marketing'),
(38, 'Loker', 'admin', 'Administrator', 'Staff Tour', '<div itemprop=\"description\" style=\"color: rgb(102, 102, 102); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0.1px;\"><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px;\">Performa Tour and Travel Membutuhkan segera Staff Tour di Kota Batam</p><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px;\">1. Laki laki tidak lebih dari 35 thn<br>2. Bisa berbahasa mandarin atau Thiochiu atau Hokkian<br>3. Mau membantu pelayanan ibadah sekolah minggu anak 1 minggu 1x<br>4. Dapat menguasai office dan photoshop<br>5. Bersedia Menjadi Tour Leader ke Singapore dan negara lain<br>6. Bersedia ikut training ticket sistem international<br>7. Bersedia belajar cara membuat Tour Planner dan proses pengurusan dokumen visa</p></div><h5 style=\"font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(102, 102, 102); margin-top: 12px; margin-bottom: 12px; font-size: 16px; letter-spacing: 0.1px;\">Tanggung Jawab Pekerjaan :</h5><div itemprop=\"responsibilities\" style=\"color: rgb(102, 102, 102); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0.1px;\"><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px;\">Mau membantu pelayanan ibadah sekolah minggu anak 1 minggu 1x<br>Bersedia Menjadi Tour Leader ke Singapore dan negara lain<br>Bersedia ikut training ticket sistem international<br>Bersedia belajar cara membuat Tour Planner dan proses pengurusan dokumen visa</p></div><h5 style=\"font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(102, 102, 102); margin-top: 12px; margin-bottom: 12px; font-size: 16px; letter-spacing: 0.1px;\">Syarat Pengalaman :</h5><div itemprop=\"experienceRequirements\" style=\"color: rgb(102, 102, 102); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0.1px;\">Tidak diutamakan</div><h5 style=\"font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(102, 102, 102); margin-top: 12px; margin-bottom: 12px; font-size: 16px; letter-spacing: 0.1px;\">Keahlian :</h5><div itemprop=\"skills\" style=\"color: rgb(102, 102, 102); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0.1px;\"><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px;\">Menguasai office dan photoshop serta media sosial. Bisa berbahasa mandarin atau Thiochiu atau Hokkian.</p></div><h5 style=\"font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(102, 102, 102); margin-top: 12px; margin-bottom: 12px; font-size: 16px; letter-spacing: 0.1px;\">Kualifikasi :</h5><div itemprop=\"qualifications\" style=\"color: rgb(102, 102, 102); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0.1px;\"><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px;\">Pria, Kristen, usia maximal 35 tahun</p></div><h5 style=\"font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(102, 102, 102); margin-top: 12px; margin-bottom: 12px; font-size: 16px; letter-spacing: 0.1px;\">Tunjangan :</h5><div itemprop=\"jobBenefits\" style=\"color: rgb(102, 102, 102); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0.1px;\"><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px;\">BPJS</p></div><h5 style=\"font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(102, 102, 102); margin-top: 12px; margin-bottom: 12px; font-size: 16px; letter-spacing: 0.1px;\">Insentif :</h5><div itemprop=\"incentiveCompensation\" style=\"color: rgb(102, 102, 102); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0.1px;\"><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px;\">Bonus Komisi</p></div><h5 style=\"font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(102, 102, 102); margin-top: 12px; margin-bottom: 12px; font-size: 16px; letter-spacing: 0.1px;\">Waktu Bekerja :</h5><div itemprop=\"workHours\" style=\"color: rgb(102, 102, 102); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0.1px;\">Senin-Jumat jam 0900-1800, Sabtu jam 0900-1600</div>', 'N', 'Y', 'staff-tour.jpg', 'Performa Tour and Travel', 'Saturday', '2020-06-20', '15:55:08', 0, 'Performa Tour and Travel', 'staff-tour'),
(39, 'Loker', 'admin', 'Administrator', 'Staf Akunting Pajak ', '<div itemprop=\"description\" style=\"color: rgb(102, 102, 102); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0.1px;\"><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px;\">Perusahaan PT. Dinamitra bergerak dibidang konsultan membutuhkan beberapa staf akuntansi Pajak</p></div><h5 style=\"font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(102, 102, 102); margin-top: 12px; margin-bottom: 12px; font-size: 16px; letter-spacing: 0.1px;\">Tanggung Jawab Pekerjaan :</h5><div itemprop=\"responsibilities\" style=\"color: rgb(102, 102, 102); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0.1px;\"><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px;\">Mengerjakan Pembukuan dan pelaporan Pajak</p></div><h5 style=\"font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(102, 102, 102); margin-top: 12px; margin-bottom: 12px; font-size: 16px; letter-spacing: 0.1px;\">Syarat Pengalaman :</h5><div itemprop=\"experienceRequirements\" style=\"color: rgb(102, 102, 102); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0.1px;\">Mengerti Siklus akuntansi dan mengerti Pajak</div><h5 style=\"font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(102, 102, 102); margin-top: 12px; margin-bottom: 12px; font-size: 16px; letter-spacing: 0.1px;\">Keahlian :</h5><div itemprop=\"skills\" style=\"color: rgb(102, 102, 102); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0.1px;\"><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px;\">Mampu bekerja menggunakan komputer, mengerti jurnal ddan laporan keuangan</p></div><h5 style=\"font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(102, 102, 102); margin-top: 12px; margin-bottom: 12px; font-size: 16px; letter-spacing: 0.1px;\">Kualifikasi :</h5><div itemprop=\"qualifications\" style=\"color: rgb(102, 102, 102); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0.1px;\"><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px;\">Wanita usia 20 – 30 Tahun</p></div><h5 style=\"font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(102, 102, 102); margin-top: 12px; margin-bottom: 12px; font-size: 16px; letter-spacing: 0.1px;\">Waktu Bekerja :</h5><div itemprop=\"workHours\" style=\"color: rgb(102, 102, 102); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0.1px;\">jam 08.00-17.00</div>', 'N', 'Y', 'staf-akunting-pajak.jpg', 'PT. DINAMITRA MEGA SOLUSI', 'Saturday', '2020-06-20', '15:56:20', 0, 'PT. DINAMITRA MEGA SOLUSI', 'staf-akunting-pajak'),
(40, 'Loker', 'admin', 'Administrator', 'Supervisor Accounting', '<div itemprop=\"description\" style=\"color: rgb(102, 102, 102); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0.1px;\"><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px;\">PT Wijaya Promosindo Oetomo didirikan di Jakarta pada tahun 1995. Bergerak dibidang Garmet, Kantor yang berlokasi di Jalan TSS No 97 , Jakarta Barat dan Pabrik Berlokasi di Jalan Raya Mauk KM 7 Kawasan Industri Mekar Jaya (Akong) Jalan Karet 5, Blok Bumi No 38, Sepatan, Tangerang Banten. saat ini sedang membutuhkan Supervisor Accounting yang Kompeten Dibidangnya.</p></div><h5 style=\"font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(102, 102, 102); margin-top: 12px; margin-bottom: 12px; font-size: 16px; letter-spacing: 0.1px;\">Tanggung Jawab Pekerjaan :</h5><div itemprop=\"responsibilities\" style=\"color: rgb(102, 102, 102); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0.1px;\"><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px;\">– Memeriksa dan Mereview Laporan AP dan AR Mingguan<br>– Menyiapkan Laporan Keuangan Bulanan Tepat Waktu<br>– Memeriksa dan Menyiapkan Laporan Harian Termasuk Kas Operasional<br>– Menyiapkan Laporan Rekonsiliasi Bank Harian</p></div><h5 style=\"font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(102, 102, 102); margin-top: 12px; margin-bottom: 12px; font-size: 16px; letter-spacing: 0.1px;\">Syarat Pengalaman :</h5><div itemprop=\"experienceRequirements\" style=\"color: rgb(102, 102, 102); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0.1px;\">Pengalaman Min 5 Tahun Dibidangnya</div><h5 style=\"font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(102, 102, 102); margin-top: 12px; margin-bottom: 12px; font-size: 16px; letter-spacing: 0.1px;\">Keahlian :</h5><div itemprop=\"skills\" style=\"color: rgb(102, 102, 102); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0.1px;\"><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px;\">– Menguasai Ms. Office</p></div><h5 style=\"font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(102, 102, 102); margin-top: 12px; margin-bottom: 12px; font-size: 16px; letter-spacing: 0.1px;\">Kualifikasi :</h5><div itemprop=\"qualifications\" style=\"color: rgb(102, 102, 102); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0.1px;\"><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px;\">– Usia Max 40th<br>– Rapih, Teliti, Jujur, Disiplin<br>– Dapat Bekerja Dibawah Tekanan</p></div><h5 style=\"font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: bold; line-height: 1.1; color: rgb(102, 102, 102); margin-top: 12px; margin-bottom: 12px; font-size: 16px; letter-spacing: 0.1px;\">Waktu Bekerja :</h5><div itemprop=\"workHours\" style=\"color: rgb(102, 102, 102); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0.1px;\">Jam 08.00 s/d 17.00 Senin-Jumat, Sabtu Jam 08.00 s/d 14.00</div>', 'N', 'Y', 'supervisor-accounting.jpg', 'PT WIJAYA PROMOSINDO OETOMO', 'Saturday', '2020-06-20', '15:57:43', 0, 'Supervisor Accounting PT WIJAYA PROMOSINDO OETOMO', 'supervisor-accounting');

-- --------------------------------------------------------

--
-- Table structure for table `bidang_perusahaan`
--

CREATE TABLE `bidang_perusahaan` (
  `id_bidang` int(11) NOT NULL,
  `nama_bidang` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bidang_perusahaan`
--

INSERT INTO `bidang_perusahaan` (`id_bidang`, `nama_bidang`) VALUES
(1, 'Akunting / Audit / Layanan Pajak'),
(2, 'Apparel &amp; Fashion'),
(3, 'Consumer Goods'),
(4, 'Consumer Service'),
(5, 'Grosir / Ritel'),
(6, 'Hiburan'),
(7, 'Hospitality / Katering'),
(8, 'Hukum'),
(9, 'Industri Mesin / Peralatan Otomatisasi'),
(10, 'Kendaraan Bermotor'),
(11, 'Kesehatan / Farmasi'),
(12, 'Konstruksi dan Bangunan'),
(13, 'Konsultasi / Layanan Manajemen'),
(14, 'Layanan Keuangan'),
(15, 'Layanan Sosial / Organsiasi Nirlaba'),
(16, 'Logistik'),
(17, 'Makanan / Minuman'),
(18, 'Manajemen Sumber Daya Manusia (HRD) / Konsultasi'),
(19, 'Manufakturing Umum'),
(20, 'Market Research'),
(21, 'Online Publishing'),
(22, 'Pakaian / Tekstil'),
(23, 'Pendidikan'),
(24, 'Penerbitan / Percetakan'),
(25, 'Pengembangan Properti'),
(26, 'Perawatan Kesehatan dan Kecantikan'),
(27, 'Perdagangan Umum dan Distribusi'),
(28, 'Periklanan'),
(29, 'Pertambangan'),
(30, 'Survey / Riset'),
(31, 'Teknologi Informatika'),
(32, 'Transportasi'),
(33, 'Turisme / Agen Perjalanan'),
(34, 'Venture Capital'),
(35, 'Lainnya');

-- --------------------------------------------------------

--
-- Table structure for table `identitas_website`
--

CREATE TABLE `identitas_website` (
  `id_website` int(11) NOT NULL,
  `nama_website` varchar(100) NOT NULL,
  `title_website` varchar(100) NOT NULL,
  `meta_deskripsi` varchar(200) NOT NULL,
  `meta_keyword` varchar(200) NOT NULL,
  `favicon` varchar(100) NOT NULL,
  `footer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `identitas_website`
--

INSERT INTO `identitas_website` (`id_website`, `nama_website`, `title_website`, `meta_deskripsi`, `meta_keyword`, `favicon`, `footer`) VALUES
(1, 'IA-Polbat', 'IA-Polbat | Ikatan Alumni Politeknik Negeri Batam', 'IA-Polbat - Berita Indonesia dan Dunia Terkini Hari Ini, Kabar Harian Terbaru Terpercaya Terlengkap Seputar Politik, Ekonomi, Travel, Teknologi, Otomotif, Bola', 'Ikatan Alumni Politeknik Negeri Batam', 'favicon.png', '@2020');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL,
  `inisial_kategori` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `inisial_kategori`) VALUES
(1, 'Berita', 'berita'),
(5, 'Politik', 'politik'),
(6, 'Pariwisata', 'pariwisata'),
(8, 'Ekonomi', 'ekonomi'),
(9, 'Olahraga', 'olahraga'),
(10, 'Tekno', 'tekno'),
(11, 'Loker', 'loker');

-- --------------------------------------------------------

--
-- Table structure for table `loker`
--

CREATE TABLE `loker` (
  `id_loker` int(11) NOT NULL,
  `judul_loker` varchar(100) NOT NULL,
  `nama_perusahaan` varchar(100) NOT NULL,
  `posisi_jabatan` varchar(100) NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  `est_gaji` varchar(20) NOT NULL,
  `level_pekerjaan` varchar(20) NOT NULL,
  `bidang_industri` varchar(50) NOT NULL,
  `min_pendidikan` varchar(20) NOT NULL,
  `tipe_pekerjaan` varchar(10) NOT NULL,
  `tanggal_posting` date NOT NULL,
  `persyaratan` varchar(200) NOT NULL,
  `keahlian` varchar(100) NOT NULL,
  `kualifikasi` varchar(100) NOT NULL,
  `waktu_bekerja` varchar(100) NOT NULL,
  `hari_kerja` varchar(100) NOT NULL,
  `brosur_loker` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `username` varchar(200) NOT NULL,
  `nama_lengkap` varchar(200) NOT NULL,
  `jenjang_jurusan` varchar(5) NOT NULL,
  `jurusan_kuliah` varchar(100) NOT NULL,
  `alamat_tinggal` text NOT NULL,
  `kota_tinggal` varchar(100) NOT NULL,
  `provinsi_tinggal` varchar(100) NOT NULL,
  `tahun_masuk_kuliah` varchar(10) NOT NULL,
  `tahun_lulus_kuliah` varchar(10) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `no_wa` varchar(20) NOT NULL,
  `nama_perusahaan` varchar(200) NOT NULL,
  `alamat_perusahaan` varchar(200) NOT NULL,
  `jabatan_kerja` varchar(100) NOT NULL,
  `status_perusahaan` varchar(100) NOT NULL,
  `bidang_pekerjaan` varchar(100) NOT NULL,
  `foto_profile` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`username`, `nama_lengkap`, `jenjang_jurusan`, `jurusan_kuliah`, `alamat_tinggal`, `kota_tinggal`, `provinsi_tinggal`, `tahun_masuk_kuliah`, `tahun_lulus_kuliah`, `no_hp`, `no_wa`, `nama_perusahaan`, `alamat_perusahaan`, `jabatan_kerja`, `status_perusahaan`, `bidang_pekerjaan`, `foto_profile`) VALUES
('fendi', 'Fendi Hidayat', 'D3', 'Teknik Informatika', 'Alamat Rumah', 'KOTA LANGSA', '11', '2005', '2008', '00', '11', 'PT. Ku', 'Alamat Perusahaan', 'CEO', 'Milik Sendiri', 'Apparel & Fashion', 'demo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jurusan`
--

CREATE TABLE `tb_jurusan` (
  `kode_jurusan` int(10) NOT NULL,
  `nama_jurusan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_jurusan`
--

INSERT INTO `tb_jurusan` (`kode_jurusan`, `nama_jurusan`) VALUES
(1, 'Akuntansi'),
(2, 'Akuntansi Manajerial'),
(3, 'Administrasi Bisnis Terapan'),
(4, 'Logistik Perdagangan Internasional'),
(5, 'Teknik Informatika'),
(6, 'Teknik Geomatika'),
(7, 'Animasi'),
(8, 'Teknik Multimedia dan Jaringan'),
(9, 'Rekayasa Keamanan Siber'),
(10, 'Teknik Elektronika Manufaktur'),
(11, 'Teknik Elektronika'),
(12, 'Teknik Instrumentasi'),
(13, 'Teknik Mekatronika'),
(14, 'Teknik Robotika'),
(15, 'Teknik Teknologi Rekayasa Pembangkit Energi'),
(16, 'Teknik Mesin'),
(17, 'Perawatan Pesawat Udara'),
(18, 'Teknik Perencanaan dan Konstruksi Kapal');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kabkota`
--

CREATE TABLE `tb_kabkota` (
  `id_kabkota` varchar(10) NOT NULL,
  `id_prov` varchar(10) NOT NULL,
  `nama_kabkota` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_kabkota`
--

INSERT INTO `tb_kabkota` (`id_kabkota`, `id_prov`, `nama_kabkota`) VALUES
('1101', '11', 'KABUPATEN SIMEULUE'),
('1102', '11', 'KABUPATEN ACEH SINGKIL'),
('1103', '11', 'KABUPATEN ACEH SELATAN'),
('1104', '11', 'KABUPATEN ACEH TENGGARA'),
('1105', '11', 'KABUPATEN ACEH TIMUR'),
('1106', '11', 'KABUPATEN ACEH TENGAH'),
('1107', '11', 'KABUPATEN ACEH BARAT'),
('1108', '11', 'KABUPATEN ACEH BESAR'),
('1109', '11', 'KABUPATEN PIDIE'),
('1110', '11', 'KABUPATEN BIREUEN'),
('1111', '11', 'KABUPATEN ACEH UTARA'),
('1112', '11', 'KABUPATEN ACEH BARAT DAYA'),
('1113', '11', 'KABUPATEN GAYO LUES'),
('1114', '11', 'KABUPATEN ACEH TAMIANG'),
('1115', '11', 'KABUPATEN NAGAN RAYA'),
('1116', '11', 'KABUPATEN ACEH JAYA'),
('1117', '11', 'KABUPATEN BENER MERIAH'),
('1118', '11', 'KABUPATEN PIDIE JAYA'),
('1171', '11', 'KOTA BANDA ACEH'),
('1172', '11', 'KOTA SABANG'),
('1173', '11', 'KOTA LANGSA'),
('1174', '11', 'KOTA LHOKSEUMAWE'),
('1175', '11', 'KOTA SUBULUSSALAM'),
('1201', '12', 'KABUPATEN NIAS'),
('1202', '12', 'KABUPATEN MANDAILING NATAL'),
('1203', '12', 'KABUPATEN TAPANULI SELATAN'),
('1204', '12', 'KABUPATEN TAPANULI TENGAH'),
('1205', '12', 'KABUPATEN TAPANULI UTARA'),
('1206', '12', 'KABUPATEN TOBA SAMOSIR'),
('1207', '12', 'KABUPATEN LABUHAN BATU'),
('1208', '12', 'KABUPATEN ASAHAN'),
('1209', '12', 'KABUPATEN SIMALUNGUN'),
('1210', '12', 'KABUPATEN DAIRI'),
('1211', '12', 'KABUPATEN KARO'),
('1212', '12', 'KABUPATEN DELI SERDANG'),
('1213', '12', 'KABUPATEN LANGKAT'),
('1214', '12', 'KABUPATEN NIAS SELATAN'),
('1215', '12', 'KABUPATEN HUMBANG HASUNDUTAN'),
('1216', '12', 'KABUPATEN PAKPAK BHARAT'),
('1217', '12', 'KABUPATEN SAMOSIR'),
('1218', '12', 'KABUPATEN SERDANG BEDAGAI'),
('1219', '12', 'KABUPATEN BATU BARA'),
('1220', '12', 'KABUPATEN PADANG LAWAS UTARA'),
('1221', '12', 'KABUPATEN PADANG LAWAS'),
('1222', '12', 'KABUPATEN LABUHAN BATU SELATAN'),
('1223', '12', 'KABUPATEN LABUHAN BATU UTARA'),
('1224', '12', 'KABUPATEN NIAS UTARA'),
('1225', '12', 'KABUPATEN NIAS BARAT'),
('1271', '12', 'KOTA SIBOLGA'),
('1272', '12', 'KOTA TANJUNG BALAI'),
('1273', '12', 'KOTA PEMATANG SIANTAR'),
('1274', '12', 'KOTA TEBING TINGGI'),
('1275', '12', 'KOTA MEDAN'),
('1276', '12', 'KOTA BINJAI'),
('1277', '12', 'KOTA PADANGSIDIMPUAN'),
('1278', '12', 'KOTA GUNUNGSITOLI'),
('1301', '13', 'KABUPATEN KEPULAUAN MENTAWAI'),
('1302', '13', 'KABUPATEN PESISIR SELATAN'),
('1303', '13', 'KABUPATEN SOLOK'),
('1304', '13', 'KABUPATEN SIJUNJUNG'),
('1305', '13', 'KABUPATEN TANAH DATAR'),
('1306', '13', 'KABUPATEN PADANG PARIAMAN'),
('1307', '13', 'KABUPATEN AGAM'),
('1308', '13', 'KABUPATEN LIMA PULUH KOTA'),
('1309', '13', 'KABUPATEN PASAMAN'),
('1310', '13', 'KABUPATEN SOLOK SELATAN'),
('1311', '13', 'KABUPATEN DHARMASRAYA'),
('1312', '13', 'KABUPATEN PASAMAN BARAT'),
('1371', '13', 'KOTA PADANG'),
('1372', '13', 'KOTA SOLOK'),
('1373', '13', 'KOTA SAWAH LUNTO'),
('1374', '13', 'KOTA PADANG PANJANG'),
('1375', '13', 'KOTA BUKITTINGGI'),
('1376', '13', 'KOTA PAYAKUMBUH'),
('1377', '13', 'KOTA PARIAMAN'),
('1401', '14', 'KABUPATEN KUANTAN SINGINGI'),
('1402', '14', 'KABUPATEN INDRAGIRI HULU'),
('1403', '14', 'KABUPATEN INDRAGIRI HILIR'),
('1404', '14', 'KABUPATEN PELALAWAN'),
('1405', '14', 'KABUPATEN S I A K'),
('1406', '14', 'KABUPATEN KAMPAR'),
('1407', '14', 'KABUPATEN ROKAN HULU'),
('1408', '14', 'KABUPATEN BENGKALIS'),
('1409', '14', 'KABUPATEN ROKAN HILIR'),
('1410', '14', 'KABUPATEN KEPULAUAN MERANTI'),
('1471', '14', 'KOTA PEKANBARU'),
('1473', '14', 'KOTA D U M A I'),
('1501', '15', 'KABUPATEN KERINCI'),
('1502', '15', 'KABUPATEN MERANGIN'),
('1503', '15', 'KABUPATEN SAROLANGUN'),
('1504', '15', 'KABUPATEN BATANG HARI'),
('1505', '15', 'KABUPATEN MUARO JAMBI'),
('1506', '15', 'KABUPATEN TANJUNG JABUNG TIMUR'),
('1507', '15', 'KABUPATEN TANJUNG JABUNG BARAT'),
('1508', '15', 'KABUPATEN TEBO'),
('1509', '15', 'KABUPATEN BUNGO'),
('1571', '15', 'KOTA JAMBI'),
('1572', '15', 'KOTA SUNGAI PENUH'),
('1601', '16', 'KABUPATEN OGAN KOMERING ULU'),
('1602', '16', 'KABUPATEN OGAN KOMERING ILIR'),
('1603', '16', 'KABUPATEN MUARA ENIM'),
('1604', '16', 'KABUPATEN LAHAT'),
('1605', '16', 'KABUPATEN MUSI RAWAS'),
('1606', '16', 'KABUPATEN MUSI BANYUASIN'),
('1607', '16', 'KABUPATEN BANYU ASIN'),
('1608', '16', 'KABUPATEN OGAN KOMERING ULU SELATAN'),
('1609', '16', 'KABUPATEN OGAN KOMERING ULU TIMUR'),
('1610', '16', 'KABUPATEN OGAN ILIR'),
('1611', '16', 'KABUPATEN EMPAT LAWANG'),
('1612', '16', 'KABUPATEN PENUKAL ABAB LEMATANG ILIR'),
('1613', '16', 'KABUPATEN MUSI RAWAS UTARA'),
('1671', '16', 'KOTA PALEMBANG'),
('1672', '16', 'KOTA PRABUMULIH'),
('1673', '16', 'KOTA PAGAR ALAM'),
('1674', '16', 'KOTA LUBUKLINGGAU'),
('1701', '17', 'KABUPATEN BENGKULU SELATAN'),
('1702', '17', 'KABUPATEN REJANG LEBONG'),
('1703', '17', 'KABUPATEN BENGKULU UTARA'),
('1704', '17', 'KABUPATEN KAUR'),
('1705', '17', 'KABUPATEN SELUMA'),
('1706', '17', 'KABUPATEN MUKOMUKO'),
('1707', '17', 'KABUPATEN LEBONG'),
('1708', '17', 'KABUPATEN KEPAHIANG'),
('1709', '17', 'KABUPATEN BENGKULU TENGAH'),
('1771', '17', 'KOTA BENGKULU'),
('1801', '18', 'KABUPATEN LAMPUNG BARAT'),
('1802', '18', 'KABUPATEN TANGGAMUS'),
('1803', '18', 'KABUPATEN LAMPUNG SELATAN'),
('1804', '18', 'KABUPATEN LAMPUNG TIMUR'),
('1805', '18', 'KABUPATEN LAMPUNG TENGAH'),
('1806', '18', 'KABUPATEN LAMPUNG UTARA'),
('1807', '18', 'KABUPATEN WAY KANAN'),
('1808', '18', 'KABUPATEN TULANGBAWANG'),
('1809', '18', 'KABUPATEN PESAWARAN'),
('1810', '18', 'KABUPATEN PRINGSEWU'),
('1811', '18', 'KABUPATEN MESUJI'),
('1812', '18', 'KABUPATEN TULANG BAWANG BARAT'),
('1813', '18', 'KABUPATEN PESISIR BARAT'),
('1871', '18', 'KOTA BANDAR LAMPUNG'),
('1872', '18', 'KOTA METRO'),
('1901', '19', 'KABUPATEN BANGKA'),
('1902', '19', 'KABUPATEN BELITUNG'),
('1903', '19', 'KABUPATEN BANGKA BARAT'),
('1904', '19', 'KABUPATEN BANGKA TENGAH'),
('1905', '19', 'KABUPATEN BANGKA SELATAN'),
('1906', '19', 'KABUPATEN BELITUNG TIMUR'),
('1971', '19', 'KOTA PANGKAL PINANG'),
('2101', '21', 'KABUPATEN KARIMUN'),
('2102', '21', 'KABUPATEN BINTAN'),
('2103', '21', 'KABUPATEN NATUNA'),
('2104', '21', 'KABUPATEN LINGGA'),
('2105', '21', 'KABUPATEN KEPULAUAN ANAMBAS'),
('2171', '21', 'KOTA B A T A M'),
('2172', '21', 'KOTA TANJUNG PINANG'),
('3101', '31', 'KABUPATEN KEPULAUAN SERIBU'),
('3171', '31', 'KOTA JAKARTA SELATAN'),
('3172', '31', 'KOTA JAKARTA TIMUR'),
('3173', '31', 'KOTA JAKARTA PUSAT'),
('3174', '31', 'KOTA JAKARTA BARAT'),
('3175', '31', 'KOTA JAKARTA UTARA'),
('3201', '32', 'KABUPATEN BOGOR'),
('3202', '32', 'KABUPATEN SUKABUMI'),
('3203', '32', 'KABUPATEN CIANJUR'),
('3204', '32', 'KABUPATEN BANDUNG'),
('3205', '32', 'KABUPATEN GARUT'),
('3206', '32', 'KABUPATEN TASIKMALAYA'),
('3207', '32', 'KABUPATEN CIAMIS'),
('3208', '32', 'KABUPATEN KUNINGAN'),
('3209', '32', 'KABUPATEN CIREBON'),
('3210', '32', 'KABUPATEN MAJALENGKA'),
('3211', '32', 'KABUPATEN SUMEDANG'),
('3212', '32', 'KABUPATEN INDRAMAYU'),
('3213', '32', 'KABUPATEN SUBANG'),
('3214', '32', 'KABUPATEN PURWAKARTA'),
('3215', '32', 'KABUPATEN KARAWANG'),
('3216', '32', 'KABUPATEN BEKASI'),
('3217', '32', 'KABUPATEN BANDUNG BARAT'),
('3218', '32', 'KABUPATEN PANGANDARAN'),
('3271', '32', 'KOTA BOGOR'),
('3272', '32', 'KOTA SUKABUMI'),
('3273', '32', 'KOTA BANDUNG'),
('3274', '32', 'KOTA CIREBON'),
('3275', '32', 'KOTA BEKASI'),
('3276', '32', 'KOTA DEPOK'),
('3277', '32', 'KOTA CIMAHI'),
('3278', '32', 'KOTA TASIKMALAYA'),
('3279', '32', 'KOTA BANJAR'),
('3301', '33', 'KABUPATEN CILACAP'),
('3302', '33', 'KABUPATEN BANYUMAS'),
('3303', '33', 'KABUPATEN PURBALINGGA'),
('3304', '33', 'KABUPATEN BANJARNEGARA'),
('3305', '33', 'KABUPATEN KEBUMEN'),
('3306', '33', 'KABUPATEN PURWOREJO'),
('3307', '33', 'KABUPATEN WONOSOBO'),
('3308', '33', 'KABUPATEN MAGELANG'),
('3309', '33', 'KABUPATEN BOYOLALI'),
('3310', '33', 'KABUPATEN KLATEN'),
('3311', '33', 'KABUPATEN SUKOHARJO'),
('3312', '33', 'KABUPATEN WONOGIRI'),
('3313', '33', 'KABUPATEN KARANGANYAR'),
('3314', '33', 'KABUPATEN SRAGEN'),
('3315', '33', 'KABUPATEN GROBOGAN'),
('3316', '33', 'KABUPATEN BLORA'),
('3317', '33', 'KABUPATEN REMBANG'),
('3318', '33', 'KABUPATEN PATI'),
('3319', '33', 'KABUPATEN KUDUS'),
('3320', '33', 'KABUPATEN JEPARA'),
('3321', '33', 'KABUPATEN DEMAK'),
('3322', '33', 'KABUPATEN SEMARANG'),
('3323', '33', 'KABUPATEN TEMANGGUNG'),
('3324', '33', 'KABUPATEN KENDAL'),
('3325', '33', 'KABUPATEN BATANG'),
('3326', '33', 'KABUPATEN PEKALONGAN'),
('3327', '33', 'KABUPATEN PEMALANG'),
('3328', '33', 'KABUPATEN TEGAL'),
('3329', '33', 'KABUPATEN BREBES'),
('3371', '33', 'KOTA MAGELANG'),
('3372', '33', 'KOTA SURAKARTA'),
('3373', '33', 'KOTA SALATIGA'),
('3374', '33', 'KOTA SEMARANG'),
('3375', '33', 'KOTA PEKALONGAN'),
('3376', '33', 'KOTA TEGAL'),
('3401', '34', 'KABUPATEN KULON PROGO'),
('3402', '34', 'KABUPATEN BANTUL'),
('3403', '34', 'KABUPATEN GUNUNG KIDUL'),
('3404', '34', 'KABUPATEN SLEMAN'),
('3471', '34', 'KOTA YOGYAKARTA'),
('3501', '35', 'KABUPATEN PACITAN'),
('3502', '35', 'KABUPATEN PONOROGO'),
('3503', '35', 'KABUPATEN TRENGGALEK'),
('3504', '35', 'KABUPATEN TULUNGAGUNG'),
('3505', '35', 'KABUPATEN BLITAR'),
('3506', '35', 'KABUPATEN KEDIRI'),
('3507', '35', 'KABUPATEN MALANG'),
('3508', '35', 'KABUPATEN LUMAJANG'),
('3509', '35', 'KABUPATEN JEMBER'),
('3510', '35', 'KABUPATEN BANYUWANGI'),
('3511', '35', 'KABUPATEN BONDOWOSO'),
('3512', '35', 'KABUPATEN SITUBONDO'),
('3513', '35', 'KABUPATEN PROBOLINGGO'),
('3514', '35', 'KABUPATEN PASURUAN'),
('3515', '35', 'KABUPATEN SIDOARJO'),
('3516', '35', 'KABUPATEN MOJOKERTO'),
('3517', '35', 'KABUPATEN JOMBANG'),
('3518', '35', 'KABUPATEN NGANJUK'),
('3519', '35', 'KABUPATEN MADIUN'),
('3520', '35', 'KABUPATEN MAGETAN'),
('3521', '35', 'KABUPATEN NGAWI'),
('3522', '35', 'KABUPATEN BOJONEGORO'),
('3523', '35', 'KABUPATEN TUBAN'),
('3524', '35', 'KABUPATEN LAMONGAN'),
('3525', '35', 'KABUPATEN GRESIK'),
('3526', '35', 'KABUPATEN BANGKALAN'),
('3527', '35', 'KABUPATEN SAMPANG'),
('3528', '35', 'KABUPATEN PAMEKASAN'),
('3529', '35', 'KABUPATEN SUMENEP'),
('3571', '35', 'KOTA KEDIRI'),
('3572', '35', 'KOTA BLITAR'),
('3573', '35', 'KOTA MALANG'),
('3574', '35', 'KOTA PROBOLINGGO'),
('3575', '35', 'KOTA PASURUAN'),
('3576', '35', 'KOTA MOJOKERTO'),
('3577', '35', 'KOTA MADIUN'),
('3578', '35', 'KOTA SURABAYA'),
('3579', '35', 'KOTA BATU'),
('3601', '36', 'KABUPATEN PANDEGLANG'),
('3602', '36', 'KABUPATEN LEBAK'),
('3603', '36', 'KABUPATEN TANGERANG'),
('3604', '36', 'KABUPATEN SERANG'),
('3671', '36', 'KOTA TANGERANG'),
('3672', '36', 'KOTA CILEGON'),
('3673', '36', 'KOTA SERANG'),
('3674', '36', 'KOTA TANGERANG SELATAN'),
('5101', '51', 'KABUPATEN JEMBRANA'),
('5102', '51', 'KABUPATEN TABANAN'),
('5103', '51', 'KABUPATEN BADUNG'),
('5104', '51', 'KABUPATEN GIANYAR'),
('5105', '51', 'KABUPATEN KLUNGKUNG'),
('5106', '51', 'KABUPATEN BANGLI'),
('5107', '51', 'KABUPATEN KARANG ASEM'),
('5108', '51', 'KABUPATEN BULELENG'),
('5171', '51', 'KOTA DENPASAR'),
('5201', '52', 'KABUPATEN LOMBOK BARAT'),
('5202', '52', 'KABUPATEN LOMBOK TENGAH'),
('5203', '52', 'KABUPATEN LOMBOK TIMUR'),
('5204', '52', 'KABUPATEN SUMBAWA'),
('5205', '52', 'KABUPATEN DOMPU'),
('5206', '52', 'KABUPATEN BIMA'),
('5207', '52', 'KABUPATEN SUMBAWA BARAT'),
('5208', '52', 'KABUPATEN LOMBOK UTARA'),
('5271', '52', 'KOTA MATARAM'),
('5272', '52', 'KOTA BIMA'),
('5301', '53', 'KABUPATEN SUMBA BARAT'),
('5302', '53', 'KABUPATEN SUMBA TIMUR'),
('5303', '53', 'KABUPATEN KUPANG'),
('5304', '53', 'KABUPATEN TIMOR TENGAH SELATAN'),
('5305', '53', 'KABUPATEN TIMOR TENGAH UTARA'),
('5306', '53', 'KABUPATEN BELU'),
('5307', '53', 'KABUPATEN ALOR'),
('5308', '53', 'KABUPATEN LEMBATA'),
('5309', '53', 'KABUPATEN FLORES TIMUR'),
('5310', '53', 'KABUPATEN SIKKA'),
('5311', '53', 'KABUPATEN ENDE'),
('5312', '53', 'KABUPATEN NGADA'),
('5313', '53', 'KABUPATEN MANGGARAI'),
('5314', '53', 'KABUPATEN ROTE NDAO'),
('5315', '53', 'KABUPATEN MANGGARAI BARAT'),
('5316', '53', 'KABUPATEN SUMBA TENGAH'),
('5317', '53', 'KABUPATEN SUMBA BARAT DAYA'),
('5318', '53', 'KABUPATEN NAGEKEO'),
('5319', '53', 'KABUPATEN MANGGARAI TIMUR'),
('5320', '53', 'KABUPATEN SABU RAIJUA'),
('5321', '53', 'KABUPATEN MALAKA'),
('5371', '53', 'KOTA KUPANG'),
('6101', '61', 'KABUPATEN SAMBAS'),
('6102', '61', 'KABUPATEN BENGKAYANG'),
('6103', '61', 'KABUPATEN LANDAK'),
('6104', '61', 'KABUPATEN MEMPAWAH'),
('6105', '61', 'KABUPATEN SANGGAU'),
('6106', '61', 'KABUPATEN KETAPANG'),
('6107', '61', 'KABUPATEN SINTANG'),
('6108', '61', 'KABUPATEN KAPUAS HULU'),
('6109', '61', 'KABUPATEN SEKADAU'),
('6110', '61', 'KABUPATEN MELAWI'),
('6111', '61', 'KABUPATEN KAYONG UTARA'),
('6112', '61', 'KABUPATEN KUBU RAYA'),
('6171', '61', 'KOTA PONTIANAK'),
('6172', '61', 'KOTA SINGKAWANG'),
('6201', '62', 'KABUPATEN KOTAWARINGIN BARAT'),
('6202', '62', 'KABUPATEN KOTAWARINGIN TIMUR'),
('6203', '62', 'KABUPATEN KAPUAS'),
('6204', '62', 'KABUPATEN BARITO SELATAN'),
('6205', '62', 'KABUPATEN BARITO UTARA'),
('6206', '62', 'KABUPATEN SUKAMARA'),
('6207', '62', 'KABUPATEN LAMANDAU'),
('6208', '62', 'KABUPATEN SERUYAN'),
('6209', '62', 'KABUPATEN KATINGAN'),
('6210', '62', 'KABUPATEN PULANG PISAU'),
('6211', '62', 'KABUPATEN GUNUNG MAS'),
('6212', '62', 'KABUPATEN BARITO TIMUR'),
('6213', '62', 'KABUPATEN MURUNG RAYA'),
('6271', '62', 'KOTA PALANGKA RAYA'),
('6301', '63', 'KABUPATEN TANAH LAUT'),
('6302', '63', 'KABUPATEN KOTA BARU'),
('6303', '63', 'KABUPATEN BANJAR'),
('6304', '63', 'KABUPATEN BARITO KUALA'),
('6305', '63', 'KABUPATEN TAPIN'),
('6306', '63', 'KABUPATEN HULU SUNGAI SELATAN'),
('6307', '63', 'KABUPATEN HULU SUNGAI TENGAH'),
('6308', '63', 'KABUPATEN HULU SUNGAI UTARA'),
('6309', '63', 'KABUPATEN TABALONG'),
('6310', '63', 'KABUPATEN TANAH BUMBU'),
('6311', '63', 'KABUPATEN BALANGAN'),
('6371', '63', 'KOTA BANJARMASIN'),
('6372', '63', 'KOTA BANJAR BARU'),
('6401', '64', 'KABUPATEN PASER'),
('6402', '64', 'KABUPATEN KUTAI BARAT'),
('6403', '64', 'KABUPATEN KUTAI KARTANEGARA'),
('6404', '64', 'KABUPATEN KUTAI TIMUR'),
('6405', '64', 'KABUPATEN BERAU'),
('6409', '64', 'KABUPATEN PENAJAM PASER UTARA'),
('6411', '64', 'KABUPATEN MAHAKAM HULU'),
('6471', '64', 'KOTA BALIKPAPAN'),
('6472', '64', 'KOTA SAMARINDA'),
('6474', '64', 'KOTA BONTANG'),
('6501', '65', 'KABUPATEN MALINAU'),
('6502', '65', 'KABUPATEN BULUNGAN'),
('6503', '65', 'KABUPATEN TANA TIDUNG'),
('6504', '65', 'KABUPATEN NUNUKAN'),
('6571', '65', 'KOTA TARAKAN'),
('7101', '71', 'KABUPATEN BOLAANG MONGONDOW'),
('7102', '71', 'KABUPATEN MINAHASA'),
('7103', '71', 'KABUPATEN KEPULAUAN SANGIHE'),
('7104', '71', 'KABUPATEN KEPULAUAN TALAUD'),
('7105', '71', 'KABUPATEN MINAHASA SELATAN'),
('7106', '71', 'KABUPATEN MINAHASA UTARA'),
('7107', '71', 'KABUPATEN BOLAANG MONGONDOW UTARA'),
('7108', '71', 'KABUPATEN SIAU TAGULANDANG BIARO'),
('7109', '71', 'KABUPATEN MINAHASA TENGGARA'),
('7110', '71', 'KABUPATEN BOLAANG MONGONDOW SELATAN'),
('7111', '71', 'KABUPATEN BOLAANG MONGONDOW TIMUR'),
('7171', '71', 'KOTA MANADO'),
('7172', '71', 'KOTA BITUNG'),
('7173', '71', 'KOTA TOMOHON'),
('7174', '71', 'KOTA KOTAMOBAGU'),
('7201', '72', 'KABUPATEN BANGGAI KEPULAUAN'),
('7202', '72', 'KABUPATEN BANGGAI'),
('7203', '72', 'KABUPATEN MOROWALI'),
('7204', '72', 'KABUPATEN POSO'),
('7205', '72', 'KABUPATEN DONGGALA'),
('7206', '72', 'KABUPATEN TOLI-TOLI'),
('7207', '72', 'KABUPATEN BUOL'),
('7208', '72', 'KABUPATEN PARIGI MOUTONG'),
('7209', '72', 'KABUPATEN TOJO UNA-UNA'),
('7210', '72', 'KABUPATEN SIGI'),
('7211', '72', 'KABUPATEN BANGGAI LAUT'),
('7212', '72', 'KABUPATEN MOROWALI UTARA'),
('7271', '72', 'KOTA PALU'),
('7301', '73', 'KABUPATEN KEPULAUAN SELAYAR'),
('7302', '73', 'KABUPATEN BULUKUMBA'),
('7303', '73', 'KABUPATEN BANTAENG'),
('7304', '73', 'KABUPATEN JENEPONTO'),
('7305', '73', 'KABUPATEN TAKALAR'),
('7306', '73', 'KABUPATEN GOWA'),
('7307', '73', 'KABUPATEN SINJAI'),
('7308', '73', 'KABUPATEN MAROS'),
('7309', '73', 'KABUPATEN PANGKAJENE DAN KEPULAUAN'),
('7310', '73', 'KABUPATEN BARRU'),
('7311', '73', 'KABUPATEN BONE'),
('7312', '73', 'KABUPATEN SOPPENG'),
('7313', '73', 'KABUPATEN WAJO'),
('7314', '73', 'KABUPATEN SIDENRENG RAPPANG'),
('7315', '73', 'KABUPATEN PINRANG'),
('7316', '73', 'KABUPATEN ENREKANG'),
('7317', '73', 'KABUPATEN LUWU'),
('7318', '73', 'KABUPATEN TANA TORAJA'),
('7322', '73', 'KABUPATEN LUWU UTARA'),
('7325', '73', 'KABUPATEN LUWU TIMUR'),
('7326', '73', 'KABUPATEN TORAJA UTARA'),
('7371', '73', 'KOTA MAKASSAR'),
('7372', '73', 'KOTA PAREPARE'),
('7373', '73', 'KOTA PALOPO'),
('7401', '74', 'KABUPATEN BUTON'),
('7402', '74', 'KABUPATEN MUNA'),
('7403', '74', 'KABUPATEN KONAWE'),
('7404', '74', 'KABUPATEN KOLAKA'),
('7405', '74', 'KABUPATEN KONAWE SELATAN'),
('7406', '74', 'KABUPATEN BOMBANA'),
('7407', '74', 'KABUPATEN WAKATOBI'),
('7408', '74', 'KABUPATEN KOLAKA UTARA'),
('7409', '74', 'KABUPATEN BUTON UTARA'),
('7410', '74', 'KABUPATEN KONAWE UTARA'),
('7411', '74', 'KABUPATEN KOLAKA TIMUR'),
('7412', '74', 'KABUPATEN KONAWE KEPULAUAN'),
('7413', '74', 'KABUPATEN MUNA BARAT'),
('7414', '74', 'KABUPATEN BUTON TENGAH'),
('7415', '74', 'KABUPATEN BUTON SELATAN'),
('7471', '74', 'KOTA KENDARI'),
('7472', '74', 'KOTA BAUBAU'),
('7501', '75', 'KABUPATEN BOALEMO'),
('7502', '75', 'KABUPATEN GORONTALO'),
('7503', '75', 'KABUPATEN POHUWATO'),
('7504', '75', 'KABUPATEN BONE BOLANGO'),
('7505', '75', 'KABUPATEN GORONTALO UTARA'),
('7571', '75', 'KOTA GORONTALO'),
('7601', '76', 'KABUPATEN MAJENE'),
('7602', '76', 'KABUPATEN POLEWALI MANDAR'),
('7603', '76', 'KABUPATEN MAMASA'),
('7604', '76', 'KABUPATEN MAMUJU'),
('7605', '76', 'KABUPATEN MAMUJU UTARA'),
('7606', '76', 'KABUPATEN MAMUJU TENGAH'),
('8101', '81', 'KABUPATEN MALUKU TENGGARA BARAT'),
('8102', '81', 'KABUPATEN MALUKU TENGGARA'),
('8103', '81', 'KABUPATEN MALUKU TENGAH'),
('8104', '81', 'KABUPATEN BURU'),
('8105', '81', 'KABUPATEN KEPULAUAN ARU'),
('8106', '81', 'KABUPATEN SERAM BAGIAN BARAT'),
('8107', '81', 'KABUPATEN SERAM BAGIAN TIMUR'),
('8108', '81', 'KABUPATEN MALUKU BARAT DAYA'),
('8109', '81', 'KABUPATEN BURU SELATAN'),
('8171', '81', 'KOTA AMBON'),
('8172', '81', 'KOTA TUAL'),
('8201', '82', 'KABUPATEN HALMAHERA BARAT'),
('8202', '82', 'KABUPATEN HALMAHERA TENGAH'),
('8203', '82', 'KABUPATEN KEPULAUAN SULA'),
('8204', '82', 'KABUPATEN HALMAHERA SELATAN'),
('8205', '82', 'KABUPATEN HALMAHERA UTARA'),
('8206', '82', 'KABUPATEN HALMAHERA TIMUR'),
('8207', '82', 'KABUPATEN PULAU MOROTAI'),
('8208', '82', 'KABUPATEN PULAU TALIABU'),
('8271', '82', 'KOTA TERNATE'),
('8272', '82', 'KOTA TIDORE KEPULAUAN'),
('9101', '91', 'KABUPATEN FAKFAK'),
('9102', '91', 'KABUPATEN KAIMANA'),
('9103', '91', 'KABUPATEN TELUK WONDAMA'),
('9104', '91', 'KABUPATEN TELUK BINTUNI'),
('9105', '91', 'KABUPATEN MANOKWARI'),
('9106', '91', 'KABUPATEN SORONG SELATAN'),
('9107', '91', 'KABUPATEN SORONG'),
('9108', '91', 'KABUPATEN RAJA AMPAT'),
('9109', '91', 'KABUPATEN TAMBRAUW'),
('9110', '91', 'KABUPATEN MAYBRAT'),
('9111', '91', 'KABUPATEN MANOKWARI SELATAN'),
('9112', '91', 'KABUPATEN PEGUNUNGAN ARFAK'),
('9171', '91', 'KOTA SORONG'),
('9401', '94', 'KABUPATEN MERAUKE'),
('9402', '94', 'KABUPATEN JAYAWIJAYA'),
('9403', '94', 'KABUPATEN JAYAPURA'),
('9404', '94', 'KABUPATEN NABIRE'),
('9408', '94', 'KABUPATEN KEPULAUAN YAPEN'),
('9409', '94', 'KABUPATEN BIAK NUMFOR'),
('9410', '94', 'KABUPATEN PANIAI'),
('9411', '94', 'KABUPATEN PUNCAK JAYA'),
('9412', '94', 'KABUPATEN MIMIKA'),
('9413', '94', 'KABUPATEN BOVEN DIGOEL'),
('9414', '94', 'KABUPATEN MAPPI'),
('9415', '94', 'KABUPATEN ASMAT'),
('9416', '94', 'KABUPATEN YAHUKIMO'),
('9417', '94', 'KABUPATEN PEGUNUNGAN BINTANG'),
('9418', '94', 'KABUPATEN TOLIKARA'),
('9419', '94', 'KABUPATEN SARMI'),
('9420', '94', 'KABUPATEN KEEROM'),
('9426', '94', 'KABUPATEN WAROPEN'),
('9427', '94', 'KABUPATEN SUPIORI'),
('9428', '94', 'KABUPATEN MAMBERAMO RAYA'),
('9429', '94', 'KABUPATEN NDUGA'),
('9430', '94', 'KABUPATEN LANNY JAYA'),
('9431', '94', 'KABUPATEN MAMBERAMO TENGAH'),
('9432', '94', 'KABUPATEN YALIMO'),
('9433', '94', 'KABUPATEN PUNCAK'),
('9434', '94', 'KABUPATEN DOGIYAI'),
('9435', '94', 'KABUPATEN INTAN JAYA'),
('9436', '94', 'KABUPATEN DEIYAI'),
('9471', '94', 'KOTA JAYAPURA');

-- --------------------------------------------------------

--
-- Table structure for table `tb_provinsi`
--

CREATE TABLE `tb_provinsi` (
  `id_prov` varchar(10) NOT NULL,
  `nama_provinsi` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_provinsi`
--

INSERT INTO `tb_provinsi` (`id_prov`, `nama_provinsi`) VALUES
('11', 'ACEH'),
('12', 'SUMATERA UTARA'),
('13', 'SUMATERA BARAT'),
('14', 'RIAU'),
('15', 'JAMBI'),
('16', 'SUMATERA SELATAN'),
('17', 'BENGKULU'),
('18', 'LAMPUNG'),
('19', 'KEPULAUAN BANGKA BELITUNG'),
('21', 'KEPULAUAN RIAU'),
('31', 'DKI JAKARTA'),
('32', 'JAWA BARAT'),
('33', 'JAWA TENGAH'),
('34', 'DI YOGYAKARTA'),
('35', 'JAWA TIMUR'),
('36', 'BANTEN'),
('51', 'BALI'),
('52', 'NUSA TENGGARA BARAT'),
('53', 'NUSA TENGGARA TIMUR'),
('61', 'KALIMANTAN BARAT'),
('62', 'KALIMANTAN TENGAH'),
('63', 'KALIMANTAN SELATAN'),
('64', 'KALIMANTAN TIMUR'),
('65', 'KALIMANTAN UTARA'),
('71', 'SULAWESI UTARA'),
('72', 'SULAWESI TENGAH'),
('73', 'SULAWESI SELATAN'),
('74', 'SULAWESI TENGGARA'),
('75', 'GORONTALO'),
('76', 'SULAWESI BARAT'),
('81', 'MALUKU'),
('82', 'MALUKU UTARA'),
('91', 'PAPUA BARAT'),
('94', 'PAPUA');

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
('alumni', '9855f5cdff0306ae33a49f89e087ccbc', 'Nama Lengkap Alumni', 'alumni@gmail.com', 'user', 'N'),
('demo', 'fe01ce2a7fbac8fafaed7c982a04e229', 'Nama Lengkap', 'demo@gm.co', 'user', 'N'),
('fendi', '202cb962ac59075b964b07152d234b70', 'Fendi Hidayat', 'fendihidayat.st@gmail.com', 'user', 'Y');

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
-- Indexes for table `bidang_perusahaan`
--
ALTER TABLE `bidang_perusahaan`
  ADD PRIMARY KEY (`id_bidang`);

--
-- Indexes for table `identitas_website`
--
ALTER TABLE `identitas_website`
  ADD PRIMARY KEY (`id_website`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`),
  ADD UNIQUE KEY `nama_kategori` (`nama_kategori`),
  ADD UNIQUE KEY `inisial_kategori` (`inisial_kategori`);

--
-- Indexes for table `loker`
--
ALTER TABLE `loker`
  ADD PRIMARY KEY (`id_loker`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `tb_jurusan`
--
ALTER TABLE `tb_jurusan`
  ADD PRIMARY KEY (`kode_jurusan`);

--
-- Indexes for table `tb_kabkota`
--
ALTER TABLE `tb_kabkota`
  ADD PRIMARY KEY (`id_kabkota`);

--
-- Indexes for table `tb_provinsi`
--
ALTER TABLE `tb_provinsi`
  ADD PRIMARY KEY (`id_prov`);

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
  MODIFY `id_berita` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `bidang_perusahaan`
--
ALTER TABLE `bidang_perusahaan`
  MODIFY `id_bidang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `identitas_website`
--
ALTER TABLE `identitas_website`
  MODIFY `id_website` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `loker`
--
ALTER TABLE `loker`
  MODIFY `id_loker` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_jurusan`
--
ALTER TABLE `tb_jurusan`
  MODIFY `kode_jurusan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
