-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2017 at 08:31 PM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.0.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dashboard`
--

-- --------------------------------------------------------

--
-- Table structure for table `keterangan_tabel`
--

CREATE TABLE `keterangan_tabel` (
  `id_keterangan` int(11) NOT NULL,
  `id_tablelist` int(11) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keterangan_tabel`
--

INSERT INTO `keterangan_tabel` (`id_keterangan`, `id_tablelist`, `keterangan`) VALUES
(1, 1, 'Tabel Angka Kesakitan DBD per 100.000 Penduduk ini menyimpan data angka kesakitan DBD (Demam Berdarah Dengue) per 100.000 penduduk, dimana angka kematian akibat DBD dikategorikan tinggi jika CFR (Case Fatality Rate) atau angka yang dinyatakan ke dalam persentase yang berisikan data orang mengalami kematian akibat suatu penyakit tertentu lebih dari 1%.'),
(2, 2, 'Tabel Cakupan Pemberian ASI Eksklusif pada Bayi 0 - 6 Bulan ini menyimpan data pemberian Air Susu Ibu (ASI) eksklusif, dimana berdasarkan Peraturan Pemerintah Nomor 33 Tahun 2012 adalah ASI yang diberikan kepada bayi sejak dilahirkan selama enam bulan, tanpa menambahkan atau mengganti dengan makanan atau minuman lain (kecuali obat, vitamin, dan mineral).'),
(3, 3, 'Tabel Angka Cacat Tingkat II Kusta per 100.000 Penduduk ini menyimpan angka cacat tingkat II kusta per 1.000.000 penduduk, dimana pengendalian kasus kusta bertujuan untuk meningkatkan deteksi kasus sejak dini. Indikator yang digunakan untuk menunjukkan keberhasilan dalam mendeteksi kasus baru kusta yaitu angka cacat Tingkat II.'),
(4, 4, 'Tabel Persentase Cakupan Imunisasi Dasar Lengkap Pada Bayi ini menyimpan data cakupan imunisasi lengkap pada bayi yang terdiri dari 1 dosis BCG (Bacillus Calmette Guerin), 3 dosis DPT-HB dan atau DPT-HB-Hib (vaksin kombinasi Diphteria-Pertussis-Tetanus, Hepatitis B, dan Haemophilus Influenza type B), 4 dosis polio, dan 1 dosis campak.'),
(5, 5, 'Tabel Cakupan Desa/Kelurahan UCI (Universal Child Immunization) ini menyimpan data cakupan desa UCI atau Universal Child Immunization yang artinya desa yang melaksanakan UCI sudah mencapai target imunisasi dasar secara lengkap pada bayi (0 – 11 bulan), ibu hamil, wanita usia subur, dan anak sekolah tingkat dasar.'),
(6, 6, 'Tabel Persentase Cakupan Imunisasi Campak Pada Bayi ini menyimpan data cakupan imunisasi campak pada bayi dan dengan adanya imunisasi tersebut diharapkan dapat menurunkan angka kematian yang diakibatkan penyakit campak. '),
(7, 7, 'Tabel Incidence Rate Campak per 100.000 Penduduk ini menyimpan angka incidence rate campak per 100.000 penduduk di Indonesia. Incidence Rate itu sendiri merupakan frekuensi penyakit atau kasus baru yang berjangkit dalam masyarakat di suatu wilayah atau negara pada waktu tertentu (umumnya 1 tahun), dibandingkan dengan jumlah penduduk yang mungkin terkena penyakit baru tersebut.'),
(8, 8, 'Tabel Angka Notifikasi Kasus TB Paru BTA+ per 100.000 Penduduk ini menyimpan angka notifikasi kasus TB (Tuberkulosis) paru per 100.000 penduduk, dimana angka notifikasi kasus adalah angka yang menunjukkan jumlah pasien baru yang ditemukan dan tercatat di antara 100.000 penduduk di suatu wilayah tertentu. Angka ini apabila dikumpulkan serial akan menggambarkan kecenderungan penemuan kasus dari tahun ke tahun di wilayah tersebut. Angka ini berguna untuk menunjukkan kecenderungan (tren) meningkat atau menurunnya penemuan pasien pada wilayah tersebut.'),
(9, 9, 'Tabel Cakupan Penanganan Komplikasi Kebidanan ini menyimpan data persentase cakupan penanganan komplikasi kebidanan, dimana data ini mengukur kemampuan negara dalam menyelenggarakan pelayanan kesehatan secara profesional kepada ibu (hamil, bersalin, nifas) dengan komplikasi. '),
(10, 10, 'Tabel Cakupan Penanganan Komplikasi Neonatal ini menyimpan data persentase cakupan komplikasi neonatal yaitu penyakit atau kelainan yang dapat menyebabkan kecacatan dan atau kematian seperti hipotermia, trauma lahir, maupun sindrom gangguan pernafasan.'),
(11, 11, 'Tabel Cakupan Kunjungan Neonatal Lengkap ini menyimpan data kunjungan neonatal lengkap pada bayi. Neonatal itu sendiri adalah kondisi dimana seorang bayi baru lahir (umur 6jam – 48 jam) memperoleh pelayanan kunjungan neonatal minimal tiga kali sesuai standar di satu wilayah kerja dalam kurun waktu satu tahun. '),
(12, 12, 'Tabel Cakupan Kunjungan Neonatal Pertama ini menyimpan data kunjungan neonatal pertama pada bayi, dimana data kunjungan neonatal pertama ini merupakan indikator yang menggambarkan upaya kesehatan yang dilakukan untuk mengurangi risiko kematian bayi pada periode neonatal yaitu 6 – 48 jam setelah lahir yang meliputi kunjungan menggunakan pendekatan Manajemen Terpadu Balita Muda (MTBM) termasuk konseling perawatan bayi baru lahir, ASI eksklusif, pemberian vitamin K1 injeksi, dan Hepatitis B0 injeksi bila belum diberikan.'),
(13, 13, 'Tabel Cakupan Pelayanan Kesehatan Ibu Hamil K4 ini menyimpan data jumlah ibu hamil yang telah memperoleh pelayanan Antenatal Care (pemeriksaan kehamilan yang diberikan oleh bidan atau dokter kepada ibu selama masa kehamilan) sesuai dengan standar paling sedikit empat kali sesuai jadwal yang dianjurkan di tiap trimester dibandingkan jumlah sasaran ibu hamil di satu wilayah kerja pada kurun waktu satu tahun. Indikator tersebut memperlihatkan akses pelayanan kesehatan terhadap ibu hamil dan tingkat kepatuhan ibu hamil dalam memeriksakan kehamilannya ke tenaga kesehatan.'),
(14, 14, 'Tabel Cakupan Pertolongan Persalinan oleh Tenaga Kesehatan ini menyimpan data cakupan pertolongan persalinan oleh tenaga kesehatan berdasarkan analisis kematian ibu yang dilakukan Direktorat Bina Kesehatan Ibu pada tahun 2010, yang membuktikan bahwa kematian ibu terkait erat dengan penolong persalinan dan tempat atau fasilitas persalinan. '),
(15, 15, 'Tabel Cakupan Peserta KB Baru ini menyimpan persentase cakupan Peserta KB (Keluarga Berencana) Baru, dimana Peserta KB Baru itu sendiri adalah pasangan usia subur yang baru pertama kali menggunakan alat/cara kontrasepsi dan atau pasangan usia subur yang kembali menggunakan metode kontrasepsi setelah melahirkan/keguguran.'),
(16, 16, 'Tabel Proporsi BTA+ diantara Seluruh Kasus TB Paru ini menyimpan data angka proporsi BTA+ (Bakteri Tahan Asam Positif) diantara seluruh kasus TB paru. Angka persentase ini merupakan indikator yang menggambarkan prioritas penemuan pasien tuberkulosis yang menular di antara seluruh pasien tuberkulosis yang diobati.'),
(17, 17, 'Tabel Rasio Bidan Terhadap 100.000 Penduduk di Indonesia ini menyimpan data rasio bidan terhadap 100.000 penduduk di Indonesia, dalam rentang waktu tiga tahun.'),
(18, 18, 'Tabel Rasio Dokter Umum Terhadap 100.000 Penduduk di Indonesia ini menyimpan data rasio dokter umum terhadap 100.000 penduduk di Indonesia, dalam rentang waktu tiga tahun.'),
(19, 19, 'Tabel Rasio Perawat Terhadap 100.000 Penduduk di Indonesia ini menyimpan data rasio perawat terhadap 100.000 penduduk di Indonesia, dalam rentang waktu tiga tahun.'),
(20, 20, 'Tabel Rasio Puskesmas per 30.000 Penduduk se-Indonesia ini menyimpan data rasio puskesmas per 30.000 penduduk di Indonesia, dalam rentang waktu tiga tahun. Perlu diingat bahwa tabel ini belum sepenuhnya menggambarkan kondisi yang sebenarnya mengenai aksesibilitas masyarakat terhadap pelayanan fasilitas kesehatan dasar, karena data yang terdapat pada tabel ini belum mencakupi data jumlah penduduk di suatu provinsi dan data mengenai kondisi geografisnya.'),
(21, 21, 'Tabel Rasio Tempat Tidur Rumah Sakit per 10.000 Penduduk ini menyimpan data rasio tempat tidur yang ada di Rumah Sakit per 1000 penduduk di Indonesia, dalam rentang waktu tiga tahun. Tabel ini sekaligus menjelaskan tentang terpenuhi atau tidaknya kebutuhan masyarakat terhadap pelayanan kesehatan rujukan dan perorangan di suatu wilayah per 1000 penduduk di Indonesia.'),
(22, 22, 'Tabel Persentase Spesimen Adekuat AFP ini menyimpan data angka persentase spesimen adekuat AFP yaitu Acute Flaccid Paralysis atau Penyakit Lumpuh Layu Akut.'),
(23, 23, 'Tabel Persentase Kabupaten/Kota dengan Minimal 4 Puskesmas Mampu Tatalaksana PKPR ini menyimpan data persentase kota dengan minimal terdapat empat puskesmas yang mampu tatalaksana PKPR (Pelayanan Kesehatan Perilaku Remaja) di Puskesmas, yang bertujuan khusus untuk meningkatkan pengetahuan dan keterampilan remaja tentang kesehatan reproduksi dan perilaku hidup sehat serta memberikan pelayanan kesehatan yang berkualitas kepada remaja.  ');

-- --------------------------------------------------------

--
-- Table structure for table `md_angka_dbd`
--

CREATE TABLE `md_angka_dbd` (
  `id_dbd` int(11) NOT NULL,
  `nama_provinsi` varchar(255) NOT NULL,
  `angka_dbd13` double NOT NULL,
  `angka_dbd14` double NOT NULL,
  `angka_dbd15` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `md_angka_dbd`
--

INSERT INTO `md_angka_dbd` (`id_dbd`, `nama_provinsi`, `angka_dbd13`, `angka_dbd14`, `angka_dbd15`) VALUES
(1, 'Nangroe Aceh Darussalam', 28.97, 46.66, 30.17),
(2, 'Sumatera Utara', 25, 39.75, 37.84),
(3, 'Sumatera Barat', 46.63, 45.66, 73.24),
(4, 'Riau', 22.76, 36.83, 51.4),
(5, 'Kepulauan Riau', 47.03, 92.62, 90.98),
(6, 'Jambi', 19.64, 38.33, 39.8),
(7, 'Bengkulu', 22.73, 25.38, 53.49),
(8, 'Sumatera Selatan', 18.91, 18.76, 42.17),
(9, 'Bangka Belitung', 58.51, 23.25, 45.38),
(10, 'Lampung', 64.87, 16.52, 38.74),
(11, 'DKI Jakarta', 104.04, 83.34, 48.67),
(12, 'Jawa Barat', 50.55, 39.13, 45.47),
(13, 'Banten', 37.2, 25.37, 25.15),
(14, 'Jawa Tengah', 41.21, 33.79, 48.55),
(15, 'DI Yogyakarta', 95.99, 54.39, 92.96),
(16, 'Jawa Timur', 39.14, 24.07, 51.84),
(17, 'Bali', 168.48, 204.22, 257.75),
(18, 'Nusa Tenggara Barat', 41.96, 17.52, 25.89),
(19, 'Nusa Tenggara Timur', 9.34, 3.29, 9.88),
(20, 'Kalimantan Barat', 18.24, 111.05, 23.28),
(21, 'Kalimantan Tengah', 43.24, 37.15, 60.2),
(22, 'Kalimantan Selatan', 31.46, 21.16, 91.93),
(23, 'Kalimantan Timur', 92.73, 135.46, 188.46),
(24, 'Kalimantan Utara', 0, 128.51, 112),
(25, 'Sulawesi Utara', 50.8, 53.34, 30.26),
(26, 'Sulawesi Barat', 43.63, 24.52, 37.9),
(27, 'Sulawesi Tengah', 66.82, 45.86, 54.61),
(28, 'Sulawesi Tenggara', 51.09, 34.66, 60.01),
(29, 'Sulawesi Selatan', 50.81, 34.59, 46.64),
(30, 'Gorontalo', 23.51, 19.66, 20.38),
(31, 'Maluku', 2.2, 0.7, 4.63),
(32, 'Maluku Utara', 21.87, 12.96, 10.24),
(33, 'Papua', 8.47, 12.36, 20.54),
(34, 'Papua Barat', 8.51, 8.78, 7.57);

-- --------------------------------------------------------

--
-- Table structure for table `md_asi_eksklusif`
--

CREATE TABLE `md_asi_eksklusif` (
  `id_asi` int(11) NOT NULL,
  `nama_provinsi` varchar(255) NOT NULL,
  `asi_eksklusif13` double NOT NULL,
  `asi_eksklusif14` double NOT NULL,
  `asi_eksklusif15` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `md_asi_eksklusif`
--

INSERT INTO `md_asi_eksklusif` (`id_asi`, `nama_provinsi`, `asi_eksklusif13`, `asi_eksklusif14`, `asi_eksklusif15`) VALUES
(1, 'Nangroe Aceh Darussalam', 48.76, 55.4, 58.3),
(2, 'Sumatera Utara', 41.26, 37.6, 33),
(3, 'Sumatera Barat', 68.91, 73.6, 75),
(4, 'Riau', 55.9, 55.7, 68.1),
(5, 'Kepulauan Riau', 51.32, 50.3, 56.8),
(6, 'Jambi', 63.92, 64.3, 69.6),
(7, 'Bengkulu', 50.76, 78.5, 76.1),
(8, 'Sumatera Selatan', 74.49, 64.5, 59.5),
(9, 'Bangka Belitung', 59.41, 54.9, 57.8),
(10, 'Lampung', 52.58, 63.7, 54.9),
(11, 'DKI Jakarta', 62.73, 67.1, 67.1),
(12, 'Jawa Barat', 33.65, 21.8, 35.3),
(13, 'Banten', 58.37, 65, 65.8),
(14, 'Jawa Tengah', 67.95, 60, 56.1),
(15, 'DI Yogyakarta', 70.83, 70.8, 71.6),
(16, 'Jawa Timur', 47.88, 74, 74.1),
(17, 'Bali', 69.29, 72.2, 73.7),
(18, 'Nusa Tenggara Barat', 79.74, 84.7, 86.9),
(19, 'Nusa Tenggara Timur', 74.37, 77.4, 77),
(20, 'Kalimantan Barat', 47.32, 49.5, 68.4),
(21, 'Kalimantan Tengah', 43.38, 40.7, 38.2),
(22, 'Kalimantan Selatan', 58.73, 67.2, 61.4),
(23, 'Kalimantan Timur', 58.88, 67.8, 49.6),
(24, 'Kalimantan Utara', 0, 63.3, 56.2),
(25, 'Sulawesi Utara', 34.67, 38.5, 26.3),
(26, 'Sulawesi Barat', 54.08, 65, 62.5),
(27, 'Sulawesi Tengah', 66.52, 56.4, 55.4),
(28, 'Sulawesi Tenggara', 65.99, 65.5, 54.1),
(29, 'Sulawesi Selatan', 56.02, 69.3, 71.5),
(30, 'Gorontalo', 62.29, 58.8, 46.8),
(31, 'Maluku', 25.21, 45.3, 39.7),
(32, 'Maluku Utara', 62.75, 62.2, 64.3),
(33, 'Papua', 46.13, 52.2, 49.17),
(34, 'Papua Barat', 53.5, 27.3, 59.5);

-- --------------------------------------------------------

--
-- Table structure for table `md_cacat_kusta`
--

CREATE TABLE `md_cacat_kusta` (
  `id_kusta` int(11) NOT NULL,
  `nama_provinsi` varchar(255) NOT NULL,
  `cacat_kusta13` double NOT NULL,
  `cacat_kusta14` double NOT NULL,
  `cacat_kusta15` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `md_cacat_kusta`
--

INSERT INTO `md_cacat_kusta` (`id_kusta`, `nama_provinsi`, `cacat_kusta13`, `cacat_kusta14`, `cacat_kusta15`) VALUES
(1, 'Nangroe Aceh Darussalam', 18.62, 14.37, 9.4),
(2, 'Sumatera Utara', 1.72, 1.48, 3.16),
(3, 'Sumatera Barat', 3.38, 3.53, 2.12),
(4, 'Riau', 0.16, 1.26, 1.42),
(5, 'Kepulauan Riau', 1.03, 0, 0),
(6, 'Jambi', 2.7, 3.22, 0.88),
(7, 'Bengkulu', 6.11, 2.19, 2.13),
(8, 'Sumatera Selatan', 8.27, 3.63, 5.59),
(9, 'Bangka Belitung', 2.99, 1.45, 0.73),
(10, 'Lampung', 1.02, 1.38, 0.25),
(11, 'DKI Jakarta', 2.7, 0.99, 1.47),
(12, 'Jawa Barat', 5.78, 4.86, 5.5),
(13, 'Banten', 5.55, 7.35, 9.03),
(14, 'Jawa Tengah', 6.03, 7.32, 6.19),
(15, 'DI Yogyakarta', 0, 0, 4.35),
(16, 'Jawa Timur', 13.61, 13.7, 12.66),
(17, 'Bali', 0.48, 0, 0.48),
(18, 'Nusa Tenggara Barat', 4.94, 2.98, 2.48),
(19, 'Nusa Tenggara Timur', 1.81, 6.31, 4.3),
(20, 'Kalimantan Barat', 0, 1.54, 1.67),
(21, 'Kalimantan Tengah', 0.43, 1.27, 0),
(22, 'Kalimantan Selatan', 5.47, 6.64, 6.52),
(23, 'Kalimantan Timur', 1.76, 1.21, 5.25),
(24, 'Kalimantan Utara', 0, 0, 12.46),
(25, 'Sulawesi Utara', 14.86, 5.04, 21.14),
(26, 'Sulawesi Barat', 3.19, 7.01, 0),
(27, 'Sulawesi Tengah', 8.25, 7.75, 5.21),
(28, 'Sulawesi Tenggara', 6.33, 1.24, 3.2),
(29, 'Sulawesi Selatan', 13.24, 13.46, 15.38),
(30, 'Gorontalo', 14.41, 8.81, 18.53),
(31, 'Maluku', 7.82, 9.37, 13.64),
(32, 'Maluku Utara', 10.76, 27.16, 18.07),
(33, 'Papua', 26.88, 7.46, 13.02),
(34, 'Papua Barat', 17.72, 6.84, 19.51);

-- --------------------------------------------------------

--
-- Table structure for table `md_dasar_lengkap`
--

CREATE TABLE `md_dasar_lengkap` (
  `id_dasarlengkap` int(11) NOT NULL,
  `nama_provinsi` varchar(255) NOT NULL,
  `dasar_lengkap13` double NOT NULL,
  `dasar_lengkap14` double NOT NULL,
  `dasar_lengkap15` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `md_dasar_lengkap`
--

INSERT INTO `md_dasar_lengkap` (`id_dasarlengkap`, `nama_provinsi`, `dasar_lengkap13`, `dasar_lengkap14`, `dasar_lengkap15`) VALUES
(1, 'Nangroe Aceh Darussalam', 82.96, 77.6, 67.05),
(2, 'Sumatera Utara', 81.54, 79.9, 79.92),
(3, 'Sumatera Barat', 84.51, 79.1, 74.11),
(4, 'Riau', 83.91, 82.2, 74.46),
(5, 'Kepulauan Riau', 88.45, 101.8, 87.66),
(6, 'Jambi', 92.37, 86.8, 99.85),
(7, 'Bengkulu', 90.19, 84.5, 84.25),
(8, 'Sumatera Selatan', 88.46, 87.3, 98.09),
(9, 'Bangka Belitung', 94.09, 92.8, 97.97),
(10, 'Lampung', 96.78, 99.6, 99.22),
(11, 'DKI Jakarta', 90.97, 98.7, 97.87),
(12, 'Jawa Barat', 90.46, 86, 82.48),
(13, 'Banten', 87.16, 89.9, 79.68),
(14, 'Jawa Tengah', 100.73, 93.3, 99.15),
(15, 'DI Yogyakarta', 97.19, 78.2, 97.2),
(16, 'Jawa Timur', 98.62, 97.7, 98.43),
(17, 'Bali', 97.02, 96.4, 99.11),
(18, 'Nusa Tenggara Barat', 99.47, 92.4, 99.32),
(19, 'Nusa Tenggara Timur', 69.9, 64.8, 70.09),
(20, 'Kalimantan Barat', 82.23, 84.1, 81.54),
(21, 'Kalimantan Tengah', 91.44, 57, 64.86),
(22, 'Kalimantan Selatan', 80.37, 65.3, 80.56),
(23, 'Kalimantan Timur', 78.78, 82.1, 87.75),
(24, 'Kalimantan Utara', 0, 0, 72.27),
(25, 'Sulawesi Utara', 87.97, 81.4, 81.32),
(26, 'Sulawesi Barat', 84.76, 81.9, 79.68),
(27, 'Sulawesi Tengah', 79.17, 80.7, 75.28),
(28, 'Sulawesi Tenggara', 69.9, 77.3, 71.64),
(29, 'Sulawesi Selatan', 88.29, 91.2, 85.86),
(30, 'Gorontalo', 98.27, 80.8, 86.55),
(31, 'Maluku', 90.94, 72.7, 74.22),
(32, 'Maluku Utara', 76.71, 76.1, 73.01),
(33, 'Papua', 55.84, 48, 47.27),
(34, 'Papua Barat', 83.99, 45, 57.11);

-- --------------------------------------------------------

--
-- Table structure for table `md_desa_uci`
--

CREATE TABLE `md_desa_uci` (
  `id_uci` int(11) NOT NULL,
  `nama_provinsi` varchar(255) NOT NULL,
  `desa_uci13` double NOT NULL,
  `desa_uci14` double NOT NULL,
  `desa_uci15` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `md_desa_uci`
--

INSERT INTO `md_desa_uci` (`id_uci`, `nama_provinsi`, `desa_uci13`, `desa_uci14`, `desa_uci15`) VALUES
(1, 'Nangroe Aceh Darussalam', 71.23, 69.81, 67.56),
(2, 'Sumatera Utara', 75.78, 78.01, 75.39),
(3, 'Sumatera Barat', 71.15, 77.39, 74.87),
(4, 'Riau', 80.18, 74.08, 57.67),
(5, 'Kepulauan Riau', 70.82, 93.77, 80.72),
(6, 'Jambi', 100, 103.18, 94.84),
(7, 'Bengkulu', 88.46, 89.32, 89.25),
(8, 'Sumatera Selatan', 91.57, 96.34, 91.35),
(9, 'Bangka Belitung', 96.72, 100.82, 96.9),
(10, 'Lampung', 99.27, 104.75, 95.54),
(11, 'DKI Jakarta', 100, 100, 100),
(12, 'Jawa Barat', 96.31, 94.43, 89.58),
(13, 'Banten', 82.02, 77.85, 79.63),
(14, 'Jawa Tengah', 99.14, 99.7, 100),
(15, 'DI Yogyakarta', 100, 100, 100),
(16, 'Jawa Timur', 84.85, 85.84, 76.47),
(17, 'Bali', 96.23, 98.46, 98.74),
(18, 'Nusa Tenggara Barat', 95.27, 91.1, 90.05),
(19, 'Nusa Tenggara Timur', 77.7, 76.49, 77.1),
(20, 'Kalimantan Barat', 69.65, 77.83, 72.54),
(21, 'Kalimantan Tengah', 74.39, 66.93, 67.81),
(22, 'Kalimantan Selatan', 81.4, 83.45, 84.6),
(23, 'Kalimantan Timur', 74.88, 71.66, 81.35),
(24, 'Kalimantan Utara', 0, 0, 0),
(25, 'Sulawesi Utara', 83.62, 79.3, 79.57),
(26, 'Sulawesi Barat', 81.9, 71.29, 77.81),
(27, 'Sulawesi Tengah', 88.1, 90.85, 80.25),
(28, 'Sulawesi Tenggara', 56.5, 89.37, 82.68),
(29, 'Sulawesi Selatan', 91.21, 96.34, 91.35),
(30, 'Gorontalo', 80.77, 85.2, 87.02),
(31, 'Maluku', 73.45, 78.36, 68.97),
(32, 'Maluku Utara', 76.28, 80.67, 82.43),
(33, 'Papua', 13.05, 13.66, 13.36),
(34, 'Papua Barat', 41.21, 34.55, 54.66);

-- --------------------------------------------------------

--
-- Table structure for table `md_imunisasi_campak`
--

CREATE TABLE `md_imunisasi_campak` (
  `id_campak` int(11) NOT NULL,
  `nama_provinsi` varchar(255) NOT NULL,
  `imunisasi_campak13` double NOT NULL,
  `imunisasi_campak14` double NOT NULL,
  `imunisasi_campak15` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `md_imunisasi_campak`
--

INSERT INTO `md_imunisasi_campak` (`id_campak`, `nama_provinsi`, `imunisasi_campak13`, `imunisasi_campak14`, `imunisasi_campak15`) VALUES
(1, 'Nangroe Aceh Darussalam', 62.4, 82.8, 69.6),
(2, 'Sumatera Utara', 70.1, 92.5, 90.07),
(3, 'Sumatera Barat', 71.4, 82.6, 77.81),
(4, 'Riau', 77.3, 87.1, 80.87),
(5, 'Kepulauan Riau', 91.9, 102.8, 88.89),
(6, 'Jambi', 79.7, 97.6, 102.49),
(7, 'Bengkulu', 90.2, 91.1, 87.26),
(8, 'Sumatera Selatan', 82.6, 95, 101.36),
(9, 'Bangka Belitung', 86.4, 92.4, 99.24),
(10, 'Lampung', 87.9, 102.4, 100.2),
(11, 'DKI Jakarta', 85.3, 99.2, 98.88),
(12, 'Jawa Barat', 80.8, 105.7, 98.15),
(13, 'Banten', 66.7, 93.9, 88.97),
(14, 'Jawa Tengah', 92.6, 98, 100.52),
(15, 'DI Yogyakarta', 98.1, 78.5, 97.39),
(16, 'Jawa Timur', 89, 99.9, 96.98),
(17, 'Bali', 93.5, 97.6, 99.41),
(18, 'Nusa Tenggara Barat', 90.6, 101, 102.09),
(19, 'Nusa Tenggara Timur', 84.1, 69.2, 75.21),
(20, 'Kalimantan Barat', 77.3, 88.3, 82.61),
(21, 'Kalimantan Tengah', 77.4, 90, 77.15),
(22, 'Kalimantan Selatan', 74.1, 69.5, 82.23),
(23, 'Kalimantan Timur', 84.1, 83.5, 91.69),
(24, 'Kalimantan Utara', 0, 0, 75),
(25, 'Sulawesi Utara', 94.4, 84.5, 85.42),
(26, 'Sulawesi Barat', 72.5, 83.7, 77.83),
(27, 'Sulawesi Tengah', 76.7, 85.2, 78.38),
(28, 'Sulawesi Tenggara', 83.8, 78.1, 82.11),
(29, 'Sulawesi Selatan', 82.6, 93.4, 88.87),
(30, 'Gorontalo', 94.9, 89, 91.24),
(31, 'Maluku', 70.5, 84.7, 82.61),
(32, 'Maluku Utara', 80.3, 78.7, 73.82),
(33, 'Papua', 56.8, 61, 62.4),
(34, 'Papua Barat', 76.9, 70.2, 73.69);

-- --------------------------------------------------------

--
-- Table structure for table `md_incidencerate_campak`
--

CREATE TABLE `md_incidencerate_campak` (
  `id_incidencerate` int(11) NOT NULL,
  `nama_provinsi` varchar(255) NOT NULL,
  `incidencerate_campak13` double NOT NULL,
  `incidencerate_campak14` double NOT NULL,
  `incidencerate_campak15` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `md_incidencerate_campak`
--

INSERT INTO `md_incidencerate_campak` (`id_incidencerate`, `nama_provinsi`, `incidencerate_campak13`, `incidencerate_campak14`, `incidencerate_campak15`) VALUES
(1, 'Nangroe Aceh Darussalam', 19.44, 36.96, 0.28),
(2, 'Sumatera Utara', 0.55, 1.11, 0.57),
(3, 'Sumatera Barat', 10.78, 8.18, 8.18),
(4, 'Riau', 3.01, 4.67, 0.28),
(5, 'Kepulauan Riau', 23.79, 19.93, 8.01),
(6, 'Jambi', 10.45, 16.97, 14.43),
(7, 'Bengkulu', 7.45, 7.27, 7.57),
(8, 'Sumatera Selatan', 3.81, 7.37, 5.15),
(9, 'Bangka Belitung', 2.54, 3.4, 4.59),
(10, 'Lampung', 5.89, 2.96, 0.46),
(11, 'DKI Jakarta', 13.62, 13.43, 11.88),
(12, 'Jawa Barat', 1.48, 0.21, 1.39),
(13, 'Banten', 16.58, 9.71, 5.07),
(14, 'Jawa Tengah', 1.84, 0.61, 1.22),
(15, 'DI Yogyakarta', 18.01, 34, 1.01),
(16, 'Jawa Timur', 2.96, 2.78, 2.76),
(17, 'Bali', 1.62, 9.04, 3.4),
(18, 'Nusa Tenggara Barat', 0.11, 0.34, 0.06),
(19, 'Nusa Tenggara Timur', 0.02, 1.14, 0.58),
(20, 'Kalimantan Barat', 5.62, 20.52, 5.3),
(21, 'Kalimantan Tengah', 2.62, 2.24, 12.46),
(22, 'Kalimantan Selatan', 1.64, 3.09, 2.37),
(23, 'Kalimantan Timur', 8.57, 6.88, 7.73),
(24, 'Kalimantan Utara', 0, 0, 0),
(25, 'Sulawesi Utara', 1.61, 4.7, 2.57),
(26, 'Sulawesi Barat', 1.12, 5.68, 3.4),
(27, 'Sulawesi Tengah', 6.78, 5.92, 15.64),
(28, 'Sulawesi Tenggara', 1.69, 1.65, 4.04),
(29, 'Sulawesi Selatan', 5.42, 9.87, 9.81),
(30, 'Gorontalo', 1.17, 1.32, 3.79),
(31, 'Maluku', 1.68, 1.87, 1.36),
(32, 'Maluku Utara', 12.92, 11.3, 10.84),
(33, 'Papua', 1.33, 0, 13.27),
(34, 'Papua Barat', 0.71, 0, 0.36);

-- --------------------------------------------------------

--
-- Table structure for table `md_kasus_tb`
--

CREATE TABLE `md_kasus_tb` (
  `id_tbcase` int(11) NOT NULL,
  `nama_provinsi` varchar(255) NOT NULL,
  `kasus_tb13` double NOT NULL,
  `kasus_tb14` double NOT NULL,
  `kasus_tb15` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `md_kasus_tb`
--

INSERT INTO `md_kasus_tb` (`id_tbcase`, `nama_provinsi`, `kasus_tb13`, `kasus_tb14`, `kasus_tb15`) VALUES
(1, 'Nangroe Aceh Darussalam', 73.9, 86, 119),
(2, 'Sumatera Utara', 120.5, 111, 165),
(3, 'Sumatera Barat', 92.8, 92, 134),
(4, 'Riau', 60.9, 56, 91),
(5, 'Kepulauan Riau', 80, 66, 149),
(6, 'Jambi', 103.5, 79, 114),
(7, 'Bengkulu', 94.6, 78, 100),
(8, 'Sumatera Selatan', 76.7, 67, 116),
(9, 'Bangka Belitung', 81.8, 66, 111),
(10, 'Lampung', 81.3, 64, 105),
(11, 'DKI Jakarta', 91, 83, 222),
(12, 'Jawa Barat', 76.4, 68, 140),
(13, 'Banten', 75.9, 40, 116),
(14, 'Jawa Tengah', 60.6, 49, 111),
(15, 'DI Yogyakarta', 35.2, 34, 73),
(16, 'Jawa Timur', 62.4, 58, 113),
(17, 'Bali', 40.1, 38, 70),
(18, 'Nusa Tenggara Barat', 88.1, 93, 125),
(19, 'Nusa Tenggara Timur', 86.8, 66, 111),
(20, 'Kalimantan Barat', 99.2, 94, 105),
(21, 'Kalimantan Tengah', 65.9, 66, 100),
(22, 'Kalimantan Selatan', 92.8, 82, 128),
(23, 'Kalimantan Timur', 75.3, 47, 118),
(24, 'Kalimantan Utara', 0, 62, 109),
(25, 'Sulawesi Utara', 224.2, 219, 238),
(26, 'Sulawesi Barat', 114.5, 93, 117),
(27, 'Sulawesi Tengah', 102.3, 86, 136),
(28, 'Sulawesi Tenggara', 183.9, 163, 142),
(29, 'Sulawesi Selatan', 107.5, 99, 153),
(30, 'Gorontalo', 177.3, 133, 124),
(31, 'Maluku', 158.5, 124, 213),
(32, 'Maluku Utara', 101.1, 79, 150),
(33, 'Papua', 113.6, 48, 216),
(34, 'Papua Barat', 92.2, 66, 235);

-- --------------------------------------------------------

--
-- Table structure for table `md_kesehatan_keluarga`
--

CREATE TABLE `md_kesehatan_keluarga` (
  `id_kesehatan_keluarga` int(11) NOT NULL,
  `nama_provinsi` varchar(255) NOT NULL,
  `id_ibuhamil` int(11) NOT NULL,
  `id_persalinan` int(11) NOT NULL,
  `id_kebidanan` int(11) NOT NULL,
  `id_kb` int(11) NOT NULL,
  `id_neonatalk` int(11) NOT NULL,
  `id_neonatal1` int(11) NOT NULL,
  `id_neonatalfull` int(11) NOT NULL,
  `id_campak` int(11) NOT NULL,
  `id_dasarlengkap` int(11) NOT NULL,
  `id_uci` int(11) NOT NULL,
  `id_asi` int(11) NOT NULL,
  `id_tatalaksana` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `md_komplikasi_kebidanan`
--

CREATE TABLE `md_komplikasi_kebidanan` (
  `id_komplikasi` int(11) NOT NULL,
  `nama_provinsi` varchar(255) NOT NULL,
  `komplikasi_kebidanan_13` double NOT NULL,
  `komplikasi_kebidanan_14` double NOT NULL,
  `komplikasi_kebidanan_15` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `md_komplikasi_kebidanan`
--

INSERT INTO `md_komplikasi_kebidanan` (`id_komplikasi`, `nama_provinsi`, `komplikasi_kebidanan_13`, `komplikasi_kebidanan_14`, `komplikasi_kebidanan_15`) VALUES
(1, 'Nangroe Aceh Darussalam', 49.3, 49.34, 55.05),
(2, 'Sumatera Utara', 30.3, 38.57, 30.86),
(3, 'Sumatera Barat', 62.8, 56.11, 47.52),
(4, 'Riau', 46.4, 28.76, 47.03),
(5, 'Kepulauan Riau', 67.6, 58.74, 94.02),
(6, 'Jambi', 76.7, 84.54, 77.63),
(7, 'Bengkulu', 74.4, 69.72, 68.54),
(8, 'Sumatera Selatan', 66.8, 61.74, 51.63),
(9, 'Bangka Belitung', 77.1, 85.35, 88.94),
(10, 'Lampung', 66.7, 62.81, 77.32),
(11, 'DKI Jakarta', 87.3, 82.76, 87.78),
(12, 'Jawa Barat', 76.8, 81.62, 94.47),
(13, 'Banten', 84, 81.91, 76.97),
(14, 'Jawa Tengah', 102.2, 101.05, 118.55),
(15, 'DI Yogyakarta', 87.3, 89.69, 91.89),
(16, 'Jawa Timur', 85.7, 91.48, 97.83),
(17, 'Bali', 75.5, 77.18, 93.82),
(18, 'Nusa Tenggara Barat', 98, 91, 54.96),
(19, 'Nusa Tenggara Timur', 46.5, 52.12, 51.63),
(20, 'Kalimantan Barat', 61, 62.81, 70.13),
(21, 'Kalimantan Tengah', 44.5, 50.12, 36.3),
(22, 'Kalimantan Selatan', 82.3, 86.37, 105.29),
(23, 'Kalimantan Timur', 74.6, 84.08, 92.95),
(24, 'Kalimantan Utara', 0, 59.26, 67.97),
(25, 'Sulawesi Utara', 81.2, 82.12, 86.47),
(26, 'Sulawesi Barat', 58, 54.01, 60.81),
(27, 'Sulawesi Tengah', 57.3, 51.58, 63.37),
(28, 'Sulawesi Tenggara', 54.2, 49.82, 54.5),
(29, 'Sulawesi Selatan', 65, 73.98, 73.65),
(30, 'Gorontalo', 82.1, 73.04, 94.06),
(31, 'Maluku', 35.3, 31.39, 33.34),
(32, 'Maluku Utara', 48.2, 50.69, 55.95),
(33, 'Papua', 19.2, 29.54, 12.75),
(34, 'Papua Barat', 19.2, 9.61, 18.33);

-- --------------------------------------------------------

--
-- Table structure for table `md_komplikasi_neonatal`
--

CREATE TABLE `md_komplikasi_neonatal` (
  `id_neonatalk` int(11) NOT NULL,
  `nama_provinsi` varchar(255) NOT NULL,
  `komplikasi_neonatal13` double NOT NULL,
  `komplikasi_neonatal14` double NOT NULL,
  `komplikasi_neonatal15` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `md_komplikasi_neonatal`
--

INSERT INTO `md_komplikasi_neonatal` (`id_neonatalk`, `nama_provinsi`, `komplikasi_neonatal13`, `komplikasi_neonatal14`, `komplikasi_neonatal15`) VALUES
(1, 'Nangroe Aceh Darussalam', 42.67, 53.31, 50.51),
(2, 'Sumatera Utara', 18.69, 28.21, 14.68),
(3, 'Sumatera Barat', 23.44, 28.84, 29.27),
(4, 'Riau', 27.55, 26.63, 37.42),
(5, 'Kepulauan Riau', 40.21, 56.76, 35.94),
(6, 'Jambi', 59.25, 79.4, 60.82),
(7, 'Bengkulu', 61.33, 63.26, 61.99),
(8, 'Sumatera Selatan', 53.29, 58.17, 33.18),
(9, 'Bangka Belitung', 70.59, 92.21, 90.01),
(10, 'Lampung', 41.72, 51.42, 36.16),
(11, 'DKI Jakarta', 65.43, 71.09, 70.15),
(12, 'Jawa Barat', 45.9, 57.53, 51.53),
(13, 'Banten', 66.19, 66.34, 55.5),
(14, 'Jawa Tengah', 75.36, 84.56, 89.23),
(15, 'DI Yogyakarta', 90.6, 76.75, 70.15),
(16, 'Jawa Timur', 70.09, 83.96, 82.91),
(17, 'Bali', 71.27, 68.47, 50.59),
(18, 'Nusa Tenggara Barat', 60.81, 85.21, 81.66),
(19, 'Nusa Tenggara Timur', 15.34, 31.88, 10.61),
(20, 'Kalimantan Barat', 44.6, 50.36, 42.39),
(21, 'Kalimantan Tengah', 33.26, 32.1, 24.24),
(22, 'Kalimantan Selatan', 55.24, 51.7, 52.35),
(23, 'Kalimantan Timur', 44.33, 55.13, 54.5),
(24, 'Kalimantan Utara', 0, 0, 64.42),
(25, 'Sulawesi Utara', 57.02, 65.78, 44.67),
(26, 'Sulawesi Barat', 44.47, 37.7, 18.76),
(27, 'Sulawesi Tengah', 33.7, 41.01, 17.91),
(28, 'Sulawesi Tenggara', 28.52, 23.17, 25.57),
(29, 'Sulawesi Selatan', 50.53, 52.96, 2.63),
(30, 'Gorontalo', 37.99, 38.6, 29.92),
(31, 'Maluku', 28.19, 35.71, 8.86),
(32, 'Maluku Utara', 36.76, 38.67, 31.51),
(33, 'Papua', 15.38, 19.12, 5.19),
(34, 'Papua Barat', 21.13, 3.34, 10.86);

-- --------------------------------------------------------

--
-- Table structure for table `md_neonatal_lengkap`
--

CREATE TABLE `md_neonatal_lengkap` (
  `id_neonatalfull` int(11) NOT NULL,
  `nama_provinsi` varchar(255) NOT NULL,
  `neonatal_lengkap13` double NOT NULL,
  `neonatal_lengkap14` double NOT NULL,
  `neonatal_lengkap15` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `md_neonatal_lengkap`
--

INSERT INTO `md_neonatal_lengkap` (`id_neonatalfull`, `nama_provinsi`, `neonatal_lengkap13`, `neonatal_lengkap14`, `neonatal_lengkap15`) VALUES
(1, 'Nangroe Aceh Darussalam', 88.18, 94.04, 80.53),
(2, 'Sumatera Utara', 68.22, 79.36, 51.33),
(3, 'Sumatera Barat', 87.28, 83.83, 70.95),
(4, 'Riau', 87.55, 85.47, 75.68),
(5, 'Kepulauan Riau', 86.12, 98.54, 79.87),
(6, 'Jambi', 86.65, 98.86, 83.12),
(7, 'Bengkulu', 87.49, 87.51, 89.01),
(8, 'Sumatera Selatan', 92.23, 99.95, 46.16),
(9, 'Bangka Belitung', 94.47, 93.72, 97.6),
(10, 'Lampung', 89.07, 98.74, 91.5),
(11, 'DKI Jakarta', 94.3, 99.02, 97.11),
(12, 'Jawa Barat', 89.59, 105.13, 86.73),
(13, 'Banten', 87.62, 92.5, 82.95),
(14, 'Jawa Tengah', 95.41, 98.29, 98.36),
(15, 'DI Yogyakarta', 94.33, 80.43, 77.14),
(16, 'Jawa Timur', 89.08, 101.29, 97.81),
(17, 'Bali', 88.66, 97.4, 74.45),
(18, 'Nusa Tenggara Barat', 91.39, 100.6, 93.94),
(19, 'Nusa Tenggara Timur', 71.59, 70.85, 39.17),
(20, 'Kalimantan Barat', 86.32, 91.21, 72.53),
(21, 'Kalimantan Tengah', 91.11, 89.7, 78.63),
(22, 'Kalimantan Selatan', 85.79, 83.95, 80.6),
(23, 'Kalimantan Timur', 81.55, 82.53, 82.14),
(24, 'Kalimantan Utara', 0, 0, 72.63),
(25, 'Sulawesi Utara', 88.91, 86.05, 70.81),
(26, 'Sulawesi Barat', 89.97, 78.98, 69.7),
(27, 'Sulawesi Tengah', 84.35, 77.78, 41.18),
(28, 'Sulawesi Tenggara', 86.75, 81.14, 74.28),
(29, 'Sulawesi Selatan', 85.67, 87.63, 10.14),
(30, 'Gorontalo', 86.12, 80.27, 63.99),
(31, 'Maluku', 80.35, 77.32, 42.6),
(32, 'Maluku Utara', 82.38, 79.19, 47.2),
(33, 'Papua', 25.41, 23.88, 9.63),
(34, 'Papua Barat', 51.79, 6.79, 18.55);

-- --------------------------------------------------------

--
-- Table structure for table `md_neonatal_pertama`
--

CREATE TABLE `md_neonatal_pertama` (
  `id_neonatal1` int(11) NOT NULL,
  `nama_provinsi` varchar(255) NOT NULL,
  `neonatal_pertama13` double NOT NULL,
  `neonatal_pertama14` double NOT NULL,
  `neonatal_pertama15` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `md_neonatal_pertama`
--

INSERT INTO `md_neonatal_pertama` (`id_neonatal1`, `nama_provinsi`, `neonatal_pertama13`, `neonatal_pertama14`, `neonatal_pertama15`) VALUES
(1, 'Nangroe Aceh Darussalam', 91.93, 96.63, 83.74),
(2, 'Sumatera Utara', 86.72, 85.66, 76.36),
(3, 'Sumatera Barat', 91.32, 88.53, 76.29),
(4, 'Riau', 90.79, 88.82, 79.32),
(5, 'Kepulauan Riau', 94.41, 105.15, 84.4),
(6, 'Jambi', 88.61, 101.05, 95.77),
(7, 'Bengkulu', 90.89, 91.53, 93.02),
(8, 'Sumatera Selatan', 94.13, 103.27, 69.27),
(9, 'Bangka Belitung', 98.36, 96.38, 98.93),
(10, 'Lampung', 92.4, 101.8, 94.42),
(11, 'DKI Jakarta', 98.99, 103.23, 98.71),
(12, 'Jawa Barat', 93.18, 108.27, 93.31),
(13, 'Banten', 98.14, 99.26, 90.09),
(14, 'Jawa Tengah', 97.25, 100.04, 100.06),
(15, 'DI Yogyakarta', 99.69, 84.5, 80.71),
(16, 'Jawa Timur', 97.49, 103.44, 100.41),
(17, 'Bali', 91.58, 98.46, 100.32),
(18, 'Nusa Tenggara Barat', 93.73, 102.94, 95.82),
(19, 'Nusa Tenggara Timur', 75.51, 73.62, 41.92),
(20, 'Kalimantan Barat', 89.68, 95.28, 75.03),
(21, 'Kalimantan Tengah', 92.29, 92.17, 81),
(22, 'Kalimantan Selatan', 89.55, 87.99, 83.05),
(23, 'Kalimantan Timur', 88.34, 88.73, 90.44),
(24, 'Kalimantan Utara', 0, 0, 78.92),
(25, 'Sulawesi Utara', 91.67, 89.57, 75.45),
(26, 'Sulawesi Barat', 91.65, 82.5, 73.56),
(27, 'Sulawesi Tengah', 86.72, 84.76, 51.9),
(28, 'Sulawesi Tenggara', 89.15, 83.5, 77.22),
(29, 'Sulawesi Selatan', 91.74, 91.37, 10.51),
(30, 'Gorontalo', 93.2, 88.65, 71.46),
(31, 'Maluku', 82.66, 80.02, 44.69),
(32, 'Maluku Utara', 84.68, 81.6, 51.02),
(33, 'Papua', 39.05, 37.33, 14.95),
(34, 'Papua Barat', 56.91, 51.52, 20.4);

-- --------------------------------------------------------

--
-- Table structure for table `md_pelayanan_ibuhamil`
--

CREATE TABLE `md_pelayanan_ibuhamil` (
  `id_ibuhamil` int(11) NOT NULL,
  `nama_provinsi` varchar(255) NOT NULL,
  `pelayanan_ibuhamil_13` double NOT NULL,
  `pelayanan_ibuhamil_14` double NOT NULL,
  `pelayanan_ibuhamil_15` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `md_pelayanan_ibuhamil`
--

INSERT INTO `md_pelayanan_ibuhamil` (`id_ibuhamil`, `nama_provinsi`, `pelayanan_ibuhamil_13`, `pelayanan_ibuhamil_14`, `pelayanan_ibuhamil_15`) VALUES
(1, 'Nangroe Aceh Darussalam', 81.75, 83.83, 75.67),
(2, 'Sumatera Utara', 84.46, 86.32, 75.5),
(3, 'Sumatera Barat', 82.92, 82.7, 79.19),
(4, 'Riau', 90.35, 80.37, 85.67),
(5, 'Kepulauan Riau', 91.23, 88.61, 92.35),
(6, 'Jambi', 93.61, 93.39, 93.92),
(7, 'Bengkulu', 92.9, 91.02, 89.45),
(8, 'Sumatera Selatan', 93.21, 87.59, 93.45),
(9, 'Bangka Belitung', 90.32, 90.04, 92.35),
(10, 'Lampung', 89.03, 89.62, 89.62),
(11, 'DKI Jakarta', 95.76, 96.01, 95.22),
(12, 'Jawa Barat', 87.99, 89.13, 97.97),
(13, 'Banten', 86.21, 84.53, 85.67),
(14, 'Jawa Tengah', 92.13, 93.11, 93.05),
(15, 'DI Yogyakarta', 92.02, 92.81, 92.35),
(16, 'Jawa Timur', 87.36, 88.66, 91.24),
(17, 'Bali', 93.06, 94.15, 93.32),
(18, 'Nusa Tenggara Barat', 90.19, 76.24, 92.07),
(19, 'Nusa Tenggara Timur', 61.78, 61.78, 61.63),
(20, 'Kalimantan Barat', 88.93, 85.99, 84.68),
(21, 'Kalimantan Tengah', 89.72, 87.25, 85.75),
(22, 'Kalimantan Selatan', 78.02, 82.65, 81.02),
(23, 'Kalimantan Timur', 84.99, 89.42, 87.05),
(24, 'Kalimantan Utara', 0, 0, 81.14),
(25, 'Sulawesi Utara', 86.49, 102.91, 86.11),
(26, 'Sulawesi Barat', 77.7, 78.21, 76.04),
(27, 'Sulawesi Tengah', 79.62, 76.68, 71.07),
(28, 'Sulawesi Tenggara', 76, 81.41, 80.89),
(29, 'Sulawesi Selatan', 91.64, 91.22, 93.45),
(30, 'Gorontalo', 87.74, 89.32, 88.08),
(31, 'Maluku', 78.52, 47.87, 43.88),
(32, 'Maluku Utara', 76.28, 70.19, 72.03),
(33, 'Papua', 31.9, 49.67, 24.45),
(34, 'Papua Barat', 50.09, 39.74, 30.4);

-- --------------------------------------------------------

--
-- Table structure for table `md_penanganan_kebidanan`
--

CREATE TABLE `md_penanganan_kebidanan` (
  `id_kebidanan` int(11) NOT NULL,
  `nama_provinsi` varchar(255) NOT NULL,
  `penanganan_kebidanan13` double NOT NULL,
  `penanganan_kebidanan14` double NOT NULL,
  `penanganan_kebidanan15` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `md_penanganan_kebidanan`
--

INSERT INTO `md_penanganan_kebidanan` (`id_kebidanan`, `nama_provinsi`, `penanganan_kebidanan13`, `penanganan_kebidanan14`, `penanganan_kebidanan15`) VALUES
(1, 'Nangroe Aceh Darussalam', 49.3, 49.34, 55.05),
(2, 'Sumatera Utara', 30.3, 38.57, 30.86),
(3, 'Sumatera Barat', 62.8, 56.11, 47.52),
(4, 'Riau', 46.4, 28.76, 47.03),
(5, 'Kepulauan Riau', 67.6, 58.74, 94.02),
(6, 'Jambi', 76.7, 84.54, 77.63),
(7, 'Bengkulu', 74.4, 69.72, 68.54),
(8, 'Sumatera Selatan', 66.8, 61.74, 51.63),
(9, 'Bangka Belitung', 77.1, 85.35, 88.94),
(10, 'Lampung', 66.7, 62.81, 77.32),
(11, 'DKI Jakarta', 87.3, 82.76, 87.78),
(12, 'Jawa Barat', 76.8, 81.62, 94.47),
(13, 'Banten', 84, 81.91, 76.97),
(14, 'Jawa Tengah', 102.2, 101.05, 118.55),
(15, 'DI Yogyakarta', 87.3, 89.69, 91.89),
(16, 'Jawa Timur', 85.7, 91.48, 97.83),
(17, 'Bali', 75.5, 77.18, 93.82),
(18, 'Nusa Tenggara Barat', 98, 91, 54.96),
(19, 'Nusa Tenggara Timur', 46.5, 52.12, 51.63),
(20, 'Kalimantan Barat', 61, 62.81, 70.13),
(21, 'Kalimantan Tengah', 44.5, 50.12, 36.3),
(22, 'Kalimantan Selatan', 82.3, 86.37, 105.29),
(23, 'Kalimantan Timur', 74.6, 84.08, 92.95),
(24, 'Kalimantan Utara', 0, 59.26, 67.97),
(25, 'Sulawesi Utara', 81.2, 82.12, 86.47),
(26, 'Sulawesi Barat', 58, 54.01, 60.81),
(27, 'Sulawesi Tengah', 57.3, 51.58, 63.37),
(28, 'Sulawesi Tenggara', 54.2, 49.82, 54.5),
(29, 'Sulawesi Selatan', 65, 73.98, 73.65),
(30, 'Gorontalo', 82.1, 73.04, 94.06),
(31, 'Maluku', 35.3, 31.39, 33.34),
(32, 'Maluku Utara', 48.2, 50.69, 55.95),
(33, 'Papua', 19.2, 29.54, 12.75),
(34, 'Papua Barat', 19.2, 9.61, 18.33);

-- --------------------------------------------------------

--
-- Table structure for table `md_pengendalian_penyakit`
--

CREATE TABLE `md_pengendalian_penyakit` (
  `id_pengendalian_penyakit` int(11) NOT NULL,
  `id_provinsi` int(11) NOT NULL,
  `id_tb` int(11) NOT NULL,
  `id_tbcase` int(11) NOT NULL,
  `id_kusta` int(11) NOT NULL,
  `id_incidencerate` int(11) NOT NULL,
  `id_spesimen` int(11) NOT NULL,
  `id_dbd` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `md_pertolongan_persalinan`
--

CREATE TABLE `md_pertolongan_persalinan` (
  `id_persalinan` int(11) NOT NULL,
  `nama_provinsi` varchar(255) NOT NULL,
  `pertolongan_persalinan_13` double NOT NULL,
  `pertolongan_persalinan_14` double NOT NULL,
  `pertolongan_persalinan_15` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `md_pertolongan_persalinan`
--

INSERT INTO `md_pertolongan_persalinan` (`id_persalinan`, `nama_provinsi`, `pertolongan_persalinan_13`, `pertolongan_persalinan_14`, `pertolongan_persalinan_15`) VALUES
(1, 'Nangroe Aceh Darussalam', 86.6, 84.65, 72.98),
(2, 'Sumatera Utara', 81.71, 87.24, 63.85),
(3, 'Sumatera Barat', 86.24, 86.57, 78.55),
(4, 'Riau', 94.4, 77.73, 57.12),
(5, 'Kepulauan Riau', 97.88, 89.35, 95.35),
(6, 'Jambi', 94.07, 91.92, 56.27),
(7, 'Bengkulu', 97.63, 91.06, 58.21),
(8, 'Sumatera Selatan', 89.09, 88.36, 72.68),
(9, 'Bangka Belitung', 99.27, 91.14, 84.07),
(10, 'Lampung', 88.6, 86.17, 82.89),
(11, 'DKI Jakarta', 96.58, 97.19, 87.27),
(12, 'Jawa Barat', 87.53, 87.54, 89.94),
(13, 'Banten', 94.35, 92.39, 75.87),
(14, 'Jawa Tengah', 99.89, 99.17, 94.96),
(15, 'DI Yogyakarta', 92.02, 99.96, 99.81),
(16, 'Jawa Timur', 97.53, 92.45, 94.76),
(17, 'Bali', 99.14, 97.66, 73.67),
(18, 'Nusa Tenggara Barat', 92.96, 77.94, 88.54),
(19, 'Nusa Tenggara Timur', 74.08, 74.74, 65.95),
(20, 'Kalimantan Barat', 86.46, 84.23, 56.04),
(21, 'Kalimantan Tengah', 94.34, 90.12, 40.2),
(22, 'Kalimantan Selatan', 83.96, 89.37, 65.57),
(23, 'Kalimantan Timur', 78.75, 91.95, 76.65),
(24, 'Kalimantan Utara', 0, 96.16, 73.48),
(25, 'Sulawesi Utara', 99.59, 83.04, 79.88),
(26, 'Sulawesi Barat', 91.49, 87.76, 76.53),
(27, 'Sulawesi Tengah', 90.25, 76.89, 56.16),
(28, 'Sulawesi Tenggara', 93.28, 85.81, 52.3),
(29, 'Sulawesi Selatan', 99.78, 92.79, 86.91),
(30, 'Gorontalo', 90.76, 90.15, 90.62),
(31, 'Maluku', 75.96, 46.9, 30.08),
(32, 'Maluku Utara', 90.58, 67.33, 53.05),
(33, 'Papua', 33.31, 63.15, 26.34),
(34, 'Papua Barat', 73.2, 44.73, 31.87);

-- --------------------------------------------------------

--
-- Table structure for table `md_peserta_kb`
--

CREATE TABLE `md_peserta_kb` (
  `id_kb` int(11) NOT NULL,
  `nama_provinsi` varchar(255) NOT NULL,
  `peserta_kb13` double NOT NULL,
  `peserta_kb14` double NOT NULL,
  `peserta_kb15` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `md_peserta_kb`
--

INSERT INTO `md_peserta_kb` (`id_kb`, `nama_provinsi`, `peserta_kb13`, `peserta_kb14`, `peserta_kb15`) VALUES
(1, 'Nangroe Aceh Darussalam', 23.78, 18.58, 14.21),
(2, 'Sumatera Utara', 20.38, 19.06, 13.13),
(3, 'Sumatera Barat', 21.16, 18.43, 15.21),
(4, 'Riau', 23.27, 18.13, 15.56),
(5, 'Kepulauan Riau', 22.11, 16.66, 13.81),
(6, 'Jambi', 20.19, 18.66, 14.62),
(7, 'Bengkulu', 28.79, 27.34, 20.44),
(8, 'Sumatera Selatan', 24.9, 22.44, 13.7),
(9, 'Bangka Belitung', 15.32, 14.88, 15.4),
(10, 'Lampung', 22.78, 20.09, 13.14),
(11, 'DKI Jakarta', 36.35, 32.02, 31.14),
(12, 'Jawa Barat', 17.08, 14.79, 13.42),
(13, 'Banten', 18.91, 16.54, 11.21),
(14, 'Jawa Tengah', 15.37, 13.85, 12.47),
(15, 'DI Yogyakarta', 12.04, 9.99, 11.02),
(16, 'Jawa Timur', 15.11, 13.27, 10.8),
(17, 'Bali', 11.21, 9.9, 9.45),
(18, 'Nusa Tenggara Barat', 18.3, 16.9, 13.31),
(19, 'Nusa Tenggara Timur', 15.31, 14.77, 11.82),
(20, 'Kalimantan Barat', 18.06, 16.7, 13.59),
(21, 'Kalimantan Tengah', 21.17, 15.05, 12.98),
(22, 'Kalimantan Selatan', 20.44, 18.69, 15.02),
(23, 'Kalimantan Timur', 15.81, 20.96, 12.54),
(24, 'Kalimantan Utara', 0, 0, 0),
(25, 'Sulawesi Utara', 23.6, 19.86, 12.4),
(26, 'Sulawesi Barat', 19.84, 18.53, 14.92),
(27, 'Sulawesi Tengah', 19.58, 15.97, 14.38),
(28, 'Sulawesi Tenggara', 19.56, 17.04, 16.16),
(29, 'Sulawesi Selatan', 24.62, 20.53, 15.34),
(30, 'Gorontalo', 22.63, 16.68, 14.59),
(31, 'Maluku', 24.27, 25.14, 25.07),
(32, 'Maluku Utara', 20.98, 22.4, 57.85),
(33, 'Papua', 8.85, 29.74, 14.26),
(34, 'Papua Barat', 11.59, 25.18, 14.57);

-- --------------------------------------------------------

--
-- Table structure for table `md_proporsi_tb`
--

CREATE TABLE `md_proporsi_tb` (
  `id_tb` int(11) NOT NULL,
  `nama_provinsi` varchar(255) NOT NULL,
  `proporsi_tb13` double NOT NULL,
  `proporsi_tb14` double NOT NULL,
  `proporsi_tb15` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `md_proporsi_tb`
--

INSERT INTO `md_proporsi_tb` (`id_tb`, `nama_provinsi`, `proporsi_tb13`, `proporsi_tb14`, `proporsi_tb15`) VALUES
(1, 'Nangroe Aceh Darussalam', 77, 78, 67.8),
(2, 'Sumatera Utara', 77, 79, 73.7),
(3, 'Sumatera Barat', 70, 69, 65.3),
(4, 'Riau', 67, 75, 71),
(5, 'Kepulauan Riau', 44, 50, 37),
(6, 'Jambi', 90, 88, 84.5),
(7, 'Bengkulu', 75, 78, 69.8),
(8, 'Sumatera Selatan', 67, 67, 64.1),
(9, 'Bangka Belitung', 63, 61, 60.8),
(10, 'Lampung', 77, 76, 69.4),
(11, 'DKI Jakarta', 36, 50, 40.1),
(12, 'Jawa Barat', 54, 51, 48),
(13, 'Banten', 58, 65, 57.4),
(14, 'Jawa Tengah', 51, 59, 52.9),
(15, 'DI Yogyakarta', 48, 49, 46.5),
(16, 'Jawa Timur', 56, 54, 53.3),
(17, 'Bali', 49, 55, 51.1),
(18, 'Nusa Tenggara Barat', 65, 69, 68.4),
(19, 'Nusa Tenggara Timur', 72, 72, 60.2),
(20, 'Kalimantan Barat', 83, 79, 70.8),
(21, 'Kalimantan Tengah', 57, 65, 56.5),
(22, 'Kalimantan Selatan', 67, 68, 61.4),
(23, 'Kalimantan Timur', 58, 53, 53.4),
(24, 'Kalimantan Utara', 0, 58, 61.5),
(25, 'Sulawesi Utara', 92, 90, 87.9),
(26, 'Sulawesi Barat', 88, 84, 84.3),
(27, 'Sulawesi Tengah', 75, 72, 66.3),
(28, 'Sulawesi Tenggara', 95, 92, 86.8),
(29, 'Sulawesi Selatan', 73, 72, 64.9),
(30, 'Gorontalo', 89, 93, 87.8),
(31, 'Maluku', 57, 57, 56.8),
(32, 'Maluku Utara', 68, 66, 60.2),
(33, 'Papua', 38, 41, 37.3),
(34, 'Papua Barat', 35, 38, 38.8);

-- --------------------------------------------------------

--
-- Table structure for table `md_provinsi`
--

CREATE TABLE `md_provinsi` (
  `id_provinsi` int(11) NOT NULL,
  `nama_provinsi` varchar(255) NOT NULL,
  `pulau_provinsi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `md_provinsi`
--

INSERT INTO `md_provinsi` (`id_provinsi`, `nama_provinsi`, `pulau_provinsi`) VALUES
(1, 'Nangroe Aceh Darussalam', 'Sumatera'),
(2, 'Sumatera Utara', 'Sumatera'),
(3, 'Sumatera Barat', 'Sumatera'),
(4, 'Riau', 'Sumatera'),
(5, 'Kepulauan Riau', 'Sumatera'),
(6, 'Jambi', 'Sumatera'),
(7, 'Bengkulu', 'Sumatera'),
(8, 'Sumatera Selatan', 'Sumatera'),
(9, 'Bangka Belitung', 'Sumatera'),
(10, 'Lampung', 'Sumatera'),
(11, 'DKI Jakarta', 'Jawa'),
(12, 'Jawa Barat', 'Jawa'),
(13, 'Banten', 'Jawa'),
(14, 'Jawa Tengah', 'Jawa'),
(15, 'DI Yogyakarta', 'Jawa'),
(16, 'Jawa Timur', 'Jawa'),
(17, 'Bali', 'Bali Nusa Tenggara'),
(18, 'Nusa Tenggara Barat', 'Bali Nusa Tenggara'),
(19, 'Nusa Tenggara Timur', 'Bali Nusa Tenggara'),
(20, 'Kalimantan Barat', 'Kalimantan'),
(21, 'Kalimantan Tengah', 'Kalimantan'),
(22, 'Kalimantan Selatan', 'Kalimantan'),
(23, 'Kalimantan Timur', 'Kalimantan'),
(24, 'Kalimantan Utara', 'Kalimantan'),
(25, 'Sulawesi Utara', 'Sulawesi'),
(26, 'Sulawesi Barat', 'Sulawesi'),
(27, 'Sulawesi Tengah', 'Sulawesi'),
(28, 'Sulawesi Tenggara', 'Sulawesi'),
(29, 'Sulawesi Selatan', 'Sulawesi'),
(30, 'Gorontalo', 'Sulawesi'),
(31, 'Maluku', 'Maluku'),
(32, 'Maluku Utara', 'Maluku'),
(33, 'Papua', 'Papua'),
(34, 'Papua Barat', 'Papua');

-- --------------------------------------------------------

--
-- Table structure for table `md_rasio_bidan`
--

CREATE TABLE `md_rasio_bidan` (
  `id_bidan` int(11) NOT NULL,
  `nama_provinsi` varchar(255) NOT NULL,
  `rasio_bidan_13` double NOT NULL,
  `rasio_bidan_14` double NOT NULL,
  `rasio_bidan_15` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `md_rasio_bidan`
--

INSERT INTO `md_rasio_bidan` (`id_bidan`, `nama_provinsi`, `rasio_bidan_13`, `rasio_bidan_14`, `rasio_bidan_15`) VALUES
(1, 'Nangroe Aceh Darussalam', 204.3, 196.95, 124.29),
(2, 'Sumatera Utara', 101.4, 87.46, 62.84),
(3, 'Sumatera Barat', 92, 86.12, 82.81),
(4, 'Riau', 72.9, 63.79, 68.2),
(5, 'Kepulauan Riau', 60.4, 50.79, 49.92),
(6, 'Jambi', 97.9, 86.48, 72.54),
(7, 'Bengkulu', 141.7, 133.24, 132.54),
(8, 'Sumatera Selatan', 61.1, 52.79, 87.19),
(9, 'Bangka Belitung', 67.1, 58.3, 67.38),
(10, 'Lampung', 47.7, 44.91, 30.52),
(11, 'DKI Jakarta', 28.8, 20.4, 21.21),
(12, 'Jawa Barat', 29.2, 26.13, 20.78),
(13, 'Banten', 30.5, 27.19, 41.4),
(14, 'Jawa Tengah', 51.5, 47.71, 37.23),
(15, 'DI Yogyakarta', 47.7, 32.36, 26.55),
(16, 'Jawa Timur', 40.6, 36.08, 37.32),
(17, 'Bali', 54.4, 51.52, 43.9),
(18, 'Nusa Tenggara Barat', 47.5, 42.96, 35.3),
(19, 'Nusa Tenggara Timur', 63.1, 54.09, 37.11),
(20, 'Kalimantan Barat', 51.2, 48.72, 41.21),
(21, 'Kalimantan Tengah', 79.5, 72.49, 57.07),
(22, 'Kalimantan Selatan', 72.2, 67.58, 46.94),
(23, 'Kalimantan Timur', 59.4, 47.41, 64.93),
(24, 'Kalimantan Utara', 0, 76.02, 73.37),
(25, 'Sulawesi Utara', 62.4, 52.83, 32.71),
(26, 'Sulawesi Barat', 71.5, 71.54, 95),
(27, 'Sulawesi Tengah', 89.5, 88.65, 49.33),
(28, 'Sulawesi Tenggara', 74.6, 69.44, 43.85),
(29, 'Sulawesi Selatan', 63.4, 60.24, 53.81),
(30, 'Gorontalo', 61.2, 56.94, 63.98),
(31, 'Maluku', 79.6, 70.07, 48.15),
(32, 'Maluku Utara', 97.4, 86.02, 110.04),
(33, 'Papua', 58, 45.95, 35.94),
(34, 'Papua Barat', 105.7, 83.65, 52.32);

-- --------------------------------------------------------

--
-- Table structure for table `md_rasio_dokterumum`
--

CREATE TABLE `md_rasio_dokterumum` (
  `id_dokterumum` int(11) NOT NULL,
  `nama_provinsi` varchar(255) NOT NULL,
  `rasio_dokterumum_13` double NOT NULL,
  `rasio_dokterumum_14` double NOT NULL,
  `rasio_dokterumum_15` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `md_rasio_dokterumum`
--

INSERT INTO `md_rasio_dokterumum` (`id_dokterumum`, `nama_provinsi`, `rasio_dokterumum_13`, `rasio_dokterumum_14`, `rasio_dokterumum_15`) VALUES
(1, 'Nangroe Aceh Darussalam', 46.9, 30.69, 30.99),
(2, 'Sumatera Utara', 50.9, 22.49, 23.85),
(3, 'Sumatera Barat', 48, 21.24, 19.53),
(4, 'Riau', 36.9, 18.62, 16.96),
(5, 'Kepulauan Riau', 32.5, 24.02, 26.76),
(6, 'Jambi', 25.6, 21.19, 18.78),
(7, 'Bengkulu', 26.6, 23.3, 20.11),
(8, 'Sumatera Selatan', 28.2, 13.91, 14.89),
(9, 'Bangka Belitung', 23.5, 23.6, 24.4),
(10, 'Lampung', 19, 12.57, 13.23),
(11, 'DKI Jakarta', 155.5, 24.83, 25.99),
(12, 'Jawa Barat', 33.1, 10.4, 10.95),
(13, 'Banten', 39.1, 12.84, 11.69),
(14, 'Jawa Tengah', 28.2, 13.99, 13.86),
(15, 'DI Yogyakarta', 79, 27.77, 27.79),
(16, 'Jawa Timur', 31.7, 11.95, 11.47),
(17, 'Bali', 70.9, 24.83, 27.79),
(18, 'Nusa Tenggara Barat', 15.5, 13.1, 11.44),
(19, 'Nusa Tenggara Timur', 10.5, 13.94, 13.2),
(20, 'Kalimantan Barat', 17.1, 14.41, 14.11),
(21, 'Kalimantan Tengah', 21.5, 19.97, 20.64),
(22, 'Kalimantan Selatan', 26.1, 21.1, 17.7),
(23, 'Kalimantan Timur', 38.2, 23.6, 25.04),
(24, 'Kalimantan Utara', 0, 33.4, 31.62),
(25, 'Sulawesi Utara', 83.3, 37.73, 39.18),
(26, 'Sulawesi Barat', 8.8, 17.13, 12.63),
(27, 'Sulawesi Tengah', 14.7, 17.93, 18.08),
(28, 'Sulawesi Tenggara', 14.8, 16.67, 15.36),
(29, 'Sulawesi Selatan', 42.5, 17.82, 16.91),
(30, 'Gorontalo', 22.8, 22.57, 21.97),
(31, 'Maluku', 13.6, 22.54, 18.86),
(32, 'Maluku Utara', 13.3, 23.48, 20.73),
(33, 'Papua', 19.1, 20.39, 23.97),
(34, 'Papua Barat', 22.7, 20.29, 24.9);

-- --------------------------------------------------------

--
-- Table structure for table `md_rasio_perawat`
--

CREATE TABLE `md_rasio_perawat` (
  `id_perawat` int(11) NOT NULL,
  `nama_provinsi` varchar(255) NOT NULL,
  `rasio_perawat_13` double NOT NULL,
  `rasio_perawat_14` double NOT NULL,
  `rasio_perawat_15` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `md_rasio_perawat`
--

INSERT INTO `md_rasio_perawat` (`id_perawat`, `nama_provinsi`, `rasio_perawat_13`, `rasio_perawat_14`, `rasio_perawat_15`) VALUES
(1, 'Nangroe Aceh Darussalam', 233.1, 200.71, 168.35),
(2, 'Sumatera Utara', 65.7, 92.14, 71.81),
(3, 'Sumatera Barat', 149.2, 118.3, 112.62),
(4, 'Riau', 113.7, 86.47, 87.67),
(5, 'Kepulauan Riau', 202.9, 153.94, 121.69),
(6, 'Jambi', 159.6, 118.04, 108.58),
(7, 'Bengkulu', 181, 162.72, 143.63),
(8, 'Sumatera Selatan', 112.8, 76.62, 112.61),
(9, 'Bangka Belitung', 191.5, 147.17, 174.6),
(10, 'Lampung', 86.3, 68.85, 50.76),
(11, 'DKI Jakarta', 194.1, 117.57, 115.24),
(12, 'Jawa Barat', 68.2, 54.4, 47.7),
(13, 'Banten', 68.4, 57.67, 67.52),
(14, 'Jawa Tengah', 97.3, 83.65, 86.32),
(15, 'DI Yogyakarta', 189.5, 135.49, 122.74),
(16, 'Jawa Timur', 85.8, 65.73, 69.62),
(17, 'Bali', 157.4, 105.95, 100.61),
(18, 'Nusa Tenggara Barat', 108.4, 103.5, 80.28),
(19, 'Nusa Tenggara Timur', 129.2, 107.2, 95.62),
(20, 'Kalimantan Barat', 210, 165.56, 89.28),
(21, 'Kalimantan Tengah', 197.8, 167.31, 155.71),
(22, 'Kalimantan Selatan', 162.5, 135.21, 100.06),
(23, 'Kalimantan Timur', 181, 123.75, 187.12),
(24, 'Kalimantan Utara', 0, 214.4, 211.08),
(25, 'Sulawesi Utara', 239.7, 169.92, 142.28),
(26, 'Sulawesi Barat', 129.9, 144.32, 137.97),
(27, 'Sulawesi Tengah', 244.1, 221.92, 140.2),
(28, 'Sulawesi Tenggara', 160.3, 144.79, 108.98),
(29, 'Sulawesi Selatan', 149.7, 134.9, 131.15),
(30, 'Gorontalo', 143.9, 97.05, 95.83),
(31, 'Maluku', 305.2, 264.14, 156.84),
(32, 'Maluku Utara', 280.1, 217.77, 155.55),
(33, 'Papua', 165.6, 114.9, 123.74),
(34, 'Papua Barat', 320.1, 231.47, 166.26);

-- --------------------------------------------------------

--
-- Table structure for table `md_rasio_puskesmas`
--

CREATE TABLE `md_rasio_puskesmas` (
  `id_puskesmas` int(11) NOT NULL,
  `nama_provinsi` varchar(255) NOT NULL,
  `rasio_puskesmas_13` double NOT NULL,
  `rasio_puskesmas_14` double NOT NULL,
  `rasio_puskesmas_15` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `md_rasio_puskesmas`
--

INSERT INTO `md_rasio_puskesmas` (`id_puskesmas`, `nama_provinsi`, `rasio_puskesmas_13`, `rasio_puskesmas_14`, `rasio_puskesmas_15`) VALUES
(1, 'Nangroe Aceh Darussalam', 2.14, 2.14, 2.03),
(2, 'Sumatera Utara', 1.28, 1.26, 1.23),
(3, 'Sumatera Barat', 1.56, 1.55, 1.52),
(4, 'Riau', 1.01, 1, 1),
(5, 'Kepulauan Riau', 1.08, 1.08, 1.09),
(6, 'Jambi', 1.59, 1.55, 1.55),
(7, 'Bengkulu', 2.95, 2.95, 2.88),
(8, 'Sumatera Selatan', 1.22, 1.2, 1.2),
(9, 'Bangka Belitung', 1.34, 1.33, 1.35),
(10, 'Lampung', 1.07, 1.09, 1.08),
(11, 'DKI Jakarta', 1.02, 1.01, 1),
(12, 'Jawa Barat', 0.69, 0.68, 0.67),
(13, 'Banten', 0.6, 0.59, 0.58),
(14, 'Jawa Tengah', 0.8, 0.8, 0.78),
(15, 'DI Yogyakarta', 1.02, 1.01, 0.99),
(16, 'Jawa Timur', 0.75, 0.75, 0.74),
(17, 'Bali', 0.87, 0.85, 0.87),
(18, 'Nusa Tenggara Barat', 1.02, 1.01, 0.98),
(19, 'Nusa Tenggara Timur', 2.18, 2.19, 2.17),
(20, 'Kalimantan Barat', 1.58, 1.57, 1.3),
(21, 'Kalimantan Tengah', 2.5, 2.47, 3.27),
(22, 'Kalimantan Selatan', 1.78, 1.75, 1.73),
(23, 'Kalimantan Timur', 1.68, 1.49, 1.52),
(24, 'Kalimantan Utara', 0, 2.37, 2.29),
(25, 'Sulawesi Utara', 2.33, 2.35, 2.33),
(26, 'Sulawesi Barat', 2.2, 2.2, 2.2),
(27, 'Sulawesi Tengah', 1.97, 1.94, 1.97),
(28, 'Sulawesi Tenggara', 3.34, 3.34, 3.23),
(29, 'Sulawesi Selatan', 1.59, 1.59, 1.58),
(30, 'Gorontalo', 2.46, 2.46, 2.46),
(31, 'Maluku', 3.43, 3.46, 3.54),
(32, 'Maluku Utara', 3.36, 3.34, 3.28),
(33, 'Papua', 3.54, 3.39, 3.75),
(34, 'Papua Barat', 5.07, 5.09, 5.2);

-- --------------------------------------------------------

--
-- Table structure for table `md_rasio_tempattidur`
--

CREATE TABLE `md_rasio_tempattidur` (
  `id_rasio_tempattidur` int(11) NOT NULL,
  `nama_provinsi` varchar(255) NOT NULL,
  `rasio_tempattidur_13` double NOT NULL,
  `rasio_tempattidur_14` double NOT NULL,
  `rasio_tempattidur_15` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `md_rasio_tempattidur`
--

INSERT INTO `md_rasio_tempattidur` (`id_rasio_tempattidur`, `nama_provinsi`, `rasio_tempattidur_13`, `rasio_tempattidur_14`, `rasio_tempattidur_15`) VALUES
(1, 'Nangroe Aceh Darussalam', 1.5, 1.5, 1.66),
(2, 'Sumatera Utara', 1.47, 1.48, 1.51),
(3, 'Sumatera Barat', 1.24, 1.18, 1.34),
(4, 'Riau', 0.97, 0.93, 1.06),
(5, 'Kepulauan Riau', 1.26, 1.14, 1.43),
(6, 'Jambi', 0.93, 0.93, 1.14),
(7, 'Bengkulu', 0.99, 1.03, 1.2),
(8, 'Sumatera Selatan', 0.93, 0.95, 1.06),
(9, 'Bangka Belitung', 1.05, 1.05, 1.24),
(10, 'Lampung', 0.72, 0.71, 0.86),
(11, 'DKI Jakarta', 2.19, 2.11, 2.43),
(12, 'Jawa Barat', 0.74, 0.72, 0.84),
(13, 'Banten', 0.72, 0.79, 0.92),
(14, 'Jawa Tengah', 1.31, 1.08, 1.17),
(15, 'DI Yogyakarta', 2.92, 2.82, 2.94),
(16, 'Jawa Timur', 0.96, 0.95, 1.06),
(17, 'Bali', 1.44, 1.39, 1.65),
(18, 'Nusa Tenggara Barat', 0.65, 0.64, 0.73),
(19, 'Nusa Tenggara Timur', 0.83, 0.81, 0.88),
(20, 'Kalimantan Barat', 1.1, 1.14, 1.02),
(21, 'Kalimantan Tengah', 0.77, 0.76, 1.16),
(22, 'Kalimantan Selatan', 1.14, 1.1, 1.21),
(23, 'Kalimantan Timur', 1.61, 1.44, 1.88),
(24, 'Kalimantan Utara', 0, 1.33, 1.46),
(25, 'Sulawesi Utara', 1.44, 2.1, 2.28),
(26, 'Sulawesi Barat', 0.67, 0.73, 0.78),
(27, 'Sulawesi Tengah', 1.16, 1.21, 1.4),
(28, 'Sulawesi Tenggara', 0.97, 0.79, 1),
(29, 'Sulawesi Selatan', 1.43, 1.38, 1.06),
(30, 'Gorontalo', 1.21, 1.14, 1.39),
(31, 'Maluku', 1.42, 1.26, 1.43),
(32, 'Maluku Utara', 1.26, 1.18, 1.29),
(33, 'Papua', 1.13, 0.99, 1.36),
(34, 'Papua Barat', 1.81, 1.58, 1.77);

-- --------------------------------------------------------

--
-- Table structure for table `md_spesimen_adekuatafp`
--

CREATE TABLE `md_spesimen_adekuatafp` (
  `id_spesimen` int(11) NOT NULL,
  `nama_provinsi` varchar(255) NOT NULL,
  `spesimen_adekuat13` double NOT NULL,
  `spesimen_adekuat14` double NOT NULL,
  `spesimen_adekuat15` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `md_spesimen_adekuatafp`
--

INSERT INTO `md_spesimen_adekuatafp` (`id_spesimen`, `nama_provinsi`, `spesimen_adekuat13`, `spesimen_adekuat14`, `spesimen_adekuat15`) VALUES
(1, 'Nangroe Aceh Darussalam', 88.8, 85.7, 79.1),
(2, 'Sumatera Utara', 83.3, 95, 75),
(3, 'Sumatera Barat', 95.1, 94.5, 91.6),
(4, 'Riau', 83.3, 67.4, 89.6),
(5, 'Kepulauan Riau', 90.9, 66.6, 100),
(6, 'Jambi', 76.6, 81.4, 80.9),
(7, 'Bengkulu', 75, 94.1, 92.3),
(8, 'Sumatera Selatan', 89.4, 94.2, 80.3),
(9, 'Bangka Belitung', 44.4, 62.5, 50),
(10, 'Lampung', 91.3, 88.8, 93.4),
(11, 'DKI Jakarta', 76, 56.2, 71.1),
(12, 'Jawa Barat', 92.1, 90.4, 89.9),
(13, 'Banten', 97.1, 93.3, 94.4),
(14, 'Jawa Tengah', 97.8, 98.4, 96.8),
(15, 'DI Yogyakarta', 97, 92.3, 90.9),
(16, 'Jawa Timur', 86.8, 84.3, 95),
(17, 'Bali', 87.1, 68.2, 81.2),
(18, 'Nusa Tenggara Barat', 97.5, 94.8, 62.8),
(19, 'Nusa Tenggara Timur', 73.9, 90.7, 85.1),
(20, 'Kalimantan Barat', 86.8, 80, 93.5),
(21, 'Kalimantan Tengah', 83.3, 80, 71.4),
(22, 'Kalimantan Selatan', 88, 63.3, 79.1),
(23, 'Kalimantan Timur', 80, 80, 50),
(24, 'Kalimantan Utara', 0, 66.6, 0),
(25, 'Sulawesi Utara', 92, 84.6, 100),
(26, 'Sulawesi Barat', 60, 83.3, 100),
(27, 'Sulawesi Tengah', 88.2, 75, 89.4),
(28, 'Sulawesi Tenggara', 82.6, 72.7, 73.3),
(29, 'Sulawesi Selatan', 75.4, 86.7, 100),
(30, 'Gorontalo', 90, 88.8, 73.6),
(31, 'Maluku', 87.5, 69.2, 33.3),
(32, 'Maluku Utara', 86.6, 75, 100),
(33, 'Papua', 69.5, 60, 73.3),
(34, 'Papua Barat', 100, 50, 0);

-- --------------------------------------------------------

--
-- Table structure for table `md_tatalaksana_pkpr`
--

CREATE TABLE `md_tatalaksana_pkpr` (
  `id_tatalaksana` int(11) NOT NULL,
  `nama_provinsi` varchar(255) NOT NULL,
  `tatalaksana_pkpr13` double NOT NULL,
  `tatalaksana_pkpr14` double NOT NULL,
  `tatalaksana_pkpr15` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `md_tatalaksana_pkpr`
--

INSERT INTO `md_tatalaksana_pkpr` (`id_tatalaksana`, `nama_provinsi`, `tatalaksana_pkpr13`, `tatalaksana_pkpr14`, `tatalaksana_pkpr15`) VALUES
(1, 'Nangroe Aceh Darussalam', 100, 65.22, 45.4),
(2, 'Sumatera Utara', 100, 81.82, 30),
(3, 'Sumatera Barat', 100, 94.74, 42.42),
(4, 'Riau', 75, 91.67, 36.02),
(5, 'Kepulauan Riau', 71.43, 71.43, 63.01),
(6, 'Jambi', 90.91, 90.91, 32.95),
(7, 'Bengkulu', 80, 80, 48.33),
(8, 'Sumatera Selatan', 100, 80, 41.12),
(9, 'Bangka Belitung', 85.71, 100, 85.25),
(10, 'Lampung', 64.29, 100, 38.28),
(11, 'DKI Jakarta', 83.33, 83.33, 12.94),
(12, 'Jawa Barat', 88.46, 100, 49.9),
(13, 'Banten', 100, 87.5, 64.07),
(14, 'Jawa Tengah', 88.57, 94.29, 32.57),
(15, 'DI Yogyakarta', 100, 100, 62.81),
(16, 'Jawa Timur', 92.11, 97.37, 29.48),
(17, 'Bali', 100, 100, 70),
(18, 'Nusa Tenggara Barat', 100, 100, 52.53),
(19, 'Nusa Tenggara Timur', 90.48, 85.71, 39.46),
(20, 'Kalimantan Barat', 92.86, 92.86, 52.52),
(21, 'Kalimantan Tengah', 7.14, 71.43, 11.79),
(22, 'Kalimantan Selatan', 100, 69.23, 16.67),
(23, 'Kalimantan Timur', 71.43, 57.14, 20.69),
(24, 'Kalimantan Utara', 0, 0, 37.5),
(25, 'Sulawesi Utara', 80, 80, 27.81),
(26, 'Sulawesi Barat', 100, 60, 15.96),
(27, 'Sulawesi Tengah', 81.82, 81.82, 4.35),
(28, 'Sulawesi Tenggara', 100, 100, 18.22),
(29, 'Sulawesi Selatan', 62.5, 95.83, 23.54),
(30, 'Gorontalo', 83.33, 83.33, 25.81),
(31, 'Maluku', 63.64, 54.55, 23.35),
(32, 'Maluku Utara', 44.44, 44.44, 7.09),
(33, 'Papua', 17.24, 17.24, 17.24),
(34, 'Papua Barat', 81.82, 81.82, 16.11);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(11, '2014_10_12_000000_create_users_table', 1),
(12, '2014_10_12_200000_add_username_to_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `remember_token`, `created_at`, `updated_at`, `username`) VALUES
(1, 'Vicky Vadya Royibha', '$2y$10$EQoUN4S8cng4Pq0tXPOCa.czn1oMFTH/cSpIrF45qbj9SOdUK.hU2', 'Ldc3QU6jiBr3ymYHrfNLhT9LdYIeQ3vywadToLtWKNJyVcG1YVghUOm2advP', '2017-05-16 07:46:37', '2017-05-16 07:46:37', 'vickyroyibha'),
(2, 'Taylor Swift', '$2y$10$QS9J1l59Br4draAuFfKcc.ZQ/Yph0ikQ4TPcLPPdbJ7uKEdmGHn7S', 'zp2Nc6huOe4mnEjjJRucgYICU0brHCiv5J8zGdJPHPuEU01EatmwvKhgrH64', '2017-09-01 01:40:41', '2017-09-01 01:40:41', 'taylorswift');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `keterangan_tabel`
--
ALTER TABLE `keterangan_tabel`
  ADD PRIMARY KEY (`id_keterangan`);

--
-- Indexes for table `md_angka_dbd`
--
ALTER TABLE `md_angka_dbd`
  ADD PRIMARY KEY (`id_dbd`);

--
-- Indexes for table `md_asi_eksklusif`
--
ALTER TABLE `md_asi_eksklusif`
  ADD PRIMARY KEY (`id_asi`);

--
-- Indexes for table `md_cacat_kusta`
--
ALTER TABLE `md_cacat_kusta`
  ADD PRIMARY KEY (`id_kusta`);

--
-- Indexes for table `md_dasar_lengkap`
--
ALTER TABLE `md_dasar_lengkap`
  ADD PRIMARY KEY (`id_dasarlengkap`);

--
-- Indexes for table `md_desa_uci`
--
ALTER TABLE `md_desa_uci`
  ADD PRIMARY KEY (`id_uci`);

--
-- Indexes for table `md_imunisasi_campak`
--
ALTER TABLE `md_imunisasi_campak`
  ADD PRIMARY KEY (`id_campak`);

--
-- Indexes for table `md_incidencerate_campak`
--
ALTER TABLE `md_incidencerate_campak`
  ADD PRIMARY KEY (`id_incidencerate`);

--
-- Indexes for table `md_kasus_tb`
--
ALTER TABLE `md_kasus_tb`
  ADD PRIMARY KEY (`id_tbcase`);

--
-- Indexes for table `md_kesehatan_keluarga`
--
ALTER TABLE `md_kesehatan_keluarga`
  ADD PRIMARY KEY (`id_kesehatan_keluarga`),
  ADD KEY `id_ibuhamil` (`id_ibuhamil`),
  ADD KEY `id_persalinan` (`id_persalinan`),
  ADD KEY `id_neonatalk` (`id_neonatalk`),
  ADD KEY `id_neonatal1` (`id_neonatal1`),
  ADD KEY `id_neonatalfull` (`id_neonatalfull`),
  ADD KEY `id_kebidanan` (`id_kebidanan`),
  ADD KEY `id_kb` (`id_kb`),
  ADD KEY `id_campak` (`id_campak`),
  ADD KEY `id_dasarlengkap` (`id_dasarlengkap`),
  ADD KEY `id_uci` (`id_uci`),
  ADD KEY `id_asi` (`id_asi`),
  ADD KEY `id_tatalaksana` (`id_tatalaksana`);

--
-- Indexes for table `md_komplikasi_kebidanan`
--
ALTER TABLE `md_komplikasi_kebidanan`
  ADD PRIMARY KEY (`id_komplikasi`);

--
-- Indexes for table `md_komplikasi_neonatal`
--
ALTER TABLE `md_komplikasi_neonatal`
  ADD PRIMARY KEY (`id_neonatalk`);

--
-- Indexes for table `md_neonatal_lengkap`
--
ALTER TABLE `md_neonatal_lengkap`
  ADD PRIMARY KEY (`id_neonatalfull`);

--
-- Indexes for table `md_neonatal_pertama`
--
ALTER TABLE `md_neonatal_pertama`
  ADD PRIMARY KEY (`id_neonatal1`);

--
-- Indexes for table `md_pelayanan_ibuhamil`
--
ALTER TABLE `md_pelayanan_ibuhamil`
  ADD PRIMARY KEY (`id_ibuhamil`);

--
-- Indexes for table `md_penanganan_kebidanan`
--
ALTER TABLE `md_penanganan_kebidanan`
  ADD PRIMARY KEY (`id_kebidanan`);

--
-- Indexes for table `md_pengendalian_penyakit`
--
ALTER TABLE `md_pengendalian_penyakit`
  ADD PRIMARY KEY (`id_pengendalian_penyakit`),
  ADD KEY `id_provinsi` (`id_provinsi`),
  ADD KEY `id_tb` (`id_tb`),
  ADD KEY `id_tbcase` (`id_tbcase`),
  ADD KEY `id_kusta` (`id_kusta`),
  ADD KEY `id_incidencerate` (`id_incidencerate`),
  ADD KEY `id_spesimen` (`id_spesimen`),
  ADD KEY `id_dbd` (`id_dbd`);

--
-- Indexes for table `md_pertolongan_persalinan`
--
ALTER TABLE `md_pertolongan_persalinan`
  ADD PRIMARY KEY (`id_persalinan`);

--
-- Indexes for table `md_peserta_kb`
--
ALTER TABLE `md_peserta_kb`
  ADD PRIMARY KEY (`id_kb`);

--
-- Indexes for table `md_proporsi_tb`
--
ALTER TABLE `md_proporsi_tb`
  ADD PRIMARY KEY (`id_tb`);

--
-- Indexes for table `md_provinsi`
--
ALTER TABLE `md_provinsi`
  ADD PRIMARY KEY (`id_provinsi`),
  ADD UNIQUE KEY `nama_provinsi` (`nama_provinsi`);

--
-- Indexes for table `md_rasio_bidan`
--
ALTER TABLE `md_rasio_bidan`
  ADD PRIMARY KEY (`id_bidan`);

--
-- Indexes for table `md_rasio_dokterumum`
--
ALTER TABLE `md_rasio_dokterumum`
  ADD PRIMARY KEY (`id_dokterumum`);

--
-- Indexes for table `md_rasio_perawat`
--
ALTER TABLE `md_rasio_perawat`
  ADD PRIMARY KEY (`id_perawat`);

--
-- Indexes for table `md_rasio_puskesmas`
--
ALTER TABLE `md_rasio_puskesmas`
  ADD PRIMARY KEY (`id_puskesmas`);

--
-- Indexes for table `md_rasio_tempattidur`
--
ALTER TABLE `md_rasio_tempattidur`
  ADD PRIMARY KEY (`id_rasio_tempattidur`);

--
-- Indexes for table `md_spesimen_adekuatafp`
--
ALTER TABLE `md_spesimen_adekuatafp`
  ADD PRIMARY KEY (`id_spesimen`);

--
-- Indexes for table `md_tatalaksana_pkpr`
--
ALTER TABLE `md_tatalaksana_pkpr`
  ADD PRIMARY KEY (`id_tatalaksana`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `keterangan_tabel`
--
ALTER TABLE `keterangan_tabel`
  MODIFY `id_keterangan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `md_angka_dbd`
--
ALTER TABLE `md_angka_dbd`
  MODIFY `id_dbd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `md_asi_eksklusif`
--
ALTER TABLE `md_asi_eksklusif`
  MODIFY `id_asi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `md_cacat_kusta`
--
ALTER TABLE `md_cacat_kusta`
  MODIFY `id_kusta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `md_dasar_lengkap`
--
ALTER TABLE `md_dasar_lengkap`
  MODIFY `id_dasarlengkap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `md_desa_uci`
--
ALTER TABLE `md_desa_uci`
  MODIFY `id_uci` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `md_imunisasi_campak`
--
ALTER TABLE `md_imunisasi_campak`
  MODIFY `id_campak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `md_incidencerate_campak`
--
ALTER TABLE `md_incidencerate_campak`
  MODIFY `id_incidencerate` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `md_kasus_tb`
--
ALTER TABLE `md_kasus_tb`
  MODIFY `id_tbcase` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `md_kesehatan_keluarga`
--
ALTER TABLE `md_kesehatan_keluarga`
  MODIFY `id_kesehatan_keluarga` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `md_komplikasi_kebidanan`
--
ALTER TABLE `md_komplikasi_kebidanan`
  MODIFY `id_komplikasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `md_komplikasi_neonatal`
--
ALTER TABLE `md_komplikasi_neonatal`
  MODIFY `id_neonatalk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `md_neonatal_lengkap`
--
ALTER TABLE `md_neonatal_lengkap`
  MODIFY `id_neonatalfull` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `md_neonatal_pertama`
--
ALTER TABLE `md_neonatal_pertama`
  MODIFY `id_neonatal1` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `md_pelayanan_ibuhamil`
--
ALTER TABLE `md_pelayanan_ibuhamil`
  MODIFY `id_ibuhamil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `md_penanganan_kebidanan`
--
ALTER TABLE `md_penanganan_kebidanan`
  MODIFY `id_kebidanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `md_pengendalian_penyakit`
--
ALTER TABLE `md_pengendalian_penyakit`
  MODIFY `id_pengendalian_penyakit` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `md_pertolongan_persalinan`
--
ALTER TABLE `md_pertolongan_persalinan`
  MODIFY `id_persalinan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `md_peserta_kb`
--
ALTER TABLE `md_peserta_kb`
  MODIFY `id_kb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `md_proporsi_tb`
--
ALTER TABLE `md_proporsi_tb`
  MODIFY `id_tb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `md_provinsi`
--
ALTER TABLE `md_provinsi`
  MODIFY `id_provinsi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `md_rasio_bidan`
--
ALTER TABLE `md_rasio_bidan`
  MODIFY `id_bidan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `md_rasio_dokterumum`
--
ALTER TABLE `md_rasio_dokterumum`
  MODIFY `id_dokterumum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `md_rasio_perawat`
--
ALTER TABLE `md_rasio_perawat`
  MODIFY `id_perawat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `md_rasio_puskesmas`
--
ALTER TABLE `md_rasio_puskesmas`
  MODIFY `id_puskesmas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `md_rasio_tempattidur`
--
ALTER TABLE `md_rasio_tempattidur`
  MODIFY `id_rasio_tempattidur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `md_spesimen_adekuatafp`
--
ALTER TABLE `md_spesimen_adekuatafp`
  MODIFY `id_spesimen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `md_tatalaksana_pkpr`
--
ALTER TABLE `md_tatalaksana_pkpr`
  MODIFY `id_tatalaksana` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `md_kesehatan_keluarga`
--
ALTER TABLE `md_kesehatan_keluarga`
  ADD CONSTRAINT `md_kesehatan_keluarga_ibfk_1` FOREIGN KEY (`id_ibuhamil`) REFERENCES `md_pelayanan_ibuhamil` (`id_ibuhamil`),
  ADD CONSTRAINT `md_kesehatan_keluarga_ibfk_10` FOREIGN KEY (`id_uci`) REFERENCES `md_desa_uci` (`id_uci`),
  ADD CONSTRAINT `md_kesehatan_keluarga_ibfk_11` FOREIGN KEY (`id_asi`) REFERENCES `md_asi_eksklusif` (`id_asi`),
  ADD CONSTRAINT `md_kesehatan_keluarga_ibfk_12` FOREIGN KEY (`id_tatalaksana`) REFERENCES `md_tatalaksana_pkpr` (`id_tatalaksana`),
  ADD CONSTRAINT `md_kesehatan_keluarga_ibfk_2` FOREIGN KEY (`id_persalinan`) REFERENCES `md_pertolongan_persalinan` (`id_persalinan`),
  ADD CONSTRAINT `md_kesehatan_keluarga_ibfk_3` FOREIGN KEY (`id_neonatalk`) REFERENCES `md_komplikasi_neonatal` (`id_neonatalk`),
  ADD CONSTRAINT `md_kesehatan_keluarga_ibfk_4` FOREIGN KEY (`id_neonatal1`) REFERENCES `md_neonatal_pertama` (`id_neonatal1`),
  ADD CONSTRAINT `md_kesehatan_keluarga_ibfk_5` FOREIGN KEY (`id_neonatalfull`) REFERENCES `md_neonatal_lengkap` (`id_neonatalfull`),
  ADD CONSTRAINT `md_kesehatan_keluarga_ibfk_6` FOREIGN KEY (`id_kebidanan`) REFERENCES `md_penanganan_kebidanan` (`id_kebidanan`),
  ADD CONSTRAINT `md_kesehatan_keluarga_ibfk_7` FOREIGN KEY (`id_kb`) REFERENCES `md_peserta_kb` (`id_kb`),
  ADD CONSTRAINT `md_kesehatan_keluarga_ibfk_8` FOREIGN KEY (`id_campak`) REFERENCES `md_imunisasi_campak` (`id_campak`),
  ADD CONSTRAINT `md_kesehatan_keluarga_ibfk_9` FOREIGN KEY (`id_dasarlengkap`) REFERENCES `md_dasar_lengkap` (`id_dasarlengkap`);

--
-- Constraints for table `md_pengendalian_penyakit`
--
ALTER TABLE `md_pengendalian_penyakit`
  ADD CONSTRAINT `md_pengendalian_penyakit_ibfk_1` FOREIGN KEY (`id_provinsi`) REFERENCES `md_provinsi` (`id_provinsi`),
  ADD CONSTRAINT `md_pengendalian_penyakit_ibfk_2` FOREIGN KEY (`id_tb`) REFERENCES `md_proporsi_tb` (`id_tb`),
  ADD CONSTRAINT `md_pengendalian_penyakit_ibfk_3` FOREIGN KEY (`id_tbcase`) REFERENCES `md_kasus_tb` (`id_tbcase`),
  ADD CONSTRAINT `md_pengendalian_penyakit_ibfk_4` FOREIGN KEY (`id_kusta`) REFERENCES `md_cacat_kusta` (`id_kusta`),
  ADD CONSTRAINT `md_pengendalian_penyakit_ibfk_5` FOREIGN KEY (`id_incidencerate`) REFERENCES `md_incidencerate_campak` (`id_incidencerate`),
  ADD CONSTRAINT `md_pengendalian_penyakit_ibfk_6` FOREIGN KEY (`id_spesimen`) REFERENCES `md_spesimen_adekuatafp` (`id_spesimen`),
  ADD CONSTRAINT `md_pengendalian_penyakit_ibfk_7` FOREIGN KEY (`id_dbd`) REFERENCES `md_angka_dbd` (`id_dbd`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
