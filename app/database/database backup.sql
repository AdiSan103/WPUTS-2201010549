-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 21 Bulan Mei 2023 pada 16.52
-- Versi server: 5.7.33
-- Versi PHP: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aha`
--
CREATE DATABASE IF NOT EXISTS `aha` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `aha`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_admin`
--

CREATE TABLE `blog_admin` (
  `id_blog_admin` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_admin_log`
--

CREATE TABLE `blog_admin_log` (
  `id_blog_admin_log` int(11) NOT NULL,
  `id_blog_admin` int(11) NOT NULL,
  `id_blog_code_message` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_category`
--

CREATE TABLE `blog_category` (
  `id_blog_category` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `blog_category`
--

INSERT INTO `blog_category` (`id_blog_category`, `title`, `description`, `image`, `slug`, `created_at`, `updated_at`) VALUES
(6, 'Travel', '<p>Explore experience in every corner of the world</p>', '1661148174.png', 'ssadsadsad-asdasdas-1', '2022-08-17', '2022-09-08'),
(7, 'F $ B', '<p>Explore every taste of life</p>', '1661149195.png', '12345678', '2022-08-18', '2022-08-22'),
(8, 'Musics', '<p>Lyrics and History&nbsp;</p>', '1661149268.png', 'adsadasdasdasdasd', '2022-08-18', '2022-08-22'),
(9, 'Education', '<p>Learn English with qualified material&nbsp;</p>', '1661149373.png', 'education', '2022-08-18', '2022-08-22'),
(10, 'Scholarship', '<p>Make your dream come true</p>', '1661149411.png', 'we1241341', '2022-08-18', '2022-08-22'),
(11, 'Career', '<p>Find and your best job opportunity</p>', '1661149488.png', 'asdasdw2t425', '2022-08-22', '2022-08-22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_code_message`
--

CREATE TABLE `blog_code_message` (
  `id_blog_code_message` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_comments`
--

CREATE TABLE `blog_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_users` int(11) DEFAULT NULL,
  `comment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_posts` int(11) DEFAULT NULL,
  `id_events` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `blog_comments`
--

INSERT INTO `blog_comments` (`id`, `id_users`, `comment`, `id_posts`, `id_events`, `created_at`, `updated_at`) VALUES
(17, 19, 'terima kasih infonya kak sangat bermanfaat', 6, NULL, '2022-09-05 16:26:44', '2022-09-05 16:26:44'),
(18, 19, 'oh begitu baru tau, terimakasih min', 7, NULL, '2022-09-06 08:16:17', '2022-09-06 08:16:17'),
(19, 21, 'mantap kak terimakasih ilmunya', 6, NULL, '2022-09-07 04:54:29', '2022-09-07 04:54:29'),
(20, 22, 'good min, thanks', 7, NULL, '2022-09-11 00:50:20', '2022-09-11 00:50:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_contacts`
--

CREATE TABLE `blog_contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_events`
--

CREATE TABLE `blog_events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `speaker` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categories` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `blog_events`
--

INSERT INTO `blog_events` (`id`, `title`, `slug`, `date`, `time`, `speaker`, `description`, `image`, `categories`, `created_at`, `updated_at`) VALUES
(3, 'adisantikajaya webinar', 'adisantikajaya-webinar', '2022-10-08', '20:36', 'Adi Santika Jaya', '<p>Siapa nih dari kalian yang ingin tau dan ingin berkarir di bidang green jobs? Khususnya di bidang energi terbarukan. Tidak punya penggalaman di sektor tersebut? Atau belum memiliki skill yang baik di bidang tersebut? Yuk kita belajar bersama dengan bergabung di Mini class yang bertema Biogas Basic : 1<br>Waktu :<br>Jumat, 14 Oktober 2022 (19.30 – 21.30) WIB<br>Sabtu, 15 Oktober 2022 (10.00 – 12.00) WIB<br>Minggu, 16 Oktober 2022 (10.00 – 12.00) WIB</p><p>Bersama pemateri yang sudah memiliki wawasan di bidang Biogas, yaitu kak Almira Ose yang merupakan CEO di Bionersia. Harga Mini Class hanya 99 Ribu untuk 3 hari, 9 materi.</p><p>Keuntungan :</p><ul><li>Mendapatkan E-Sertifikat Kelulusan</li><li>Portofolio Proyek</li><li>Materi Bacaan</li></ul><p>Yuk, segera daftarkan dirimu :</p>', '1666173066.png', '[\"6\",\"7\"]', '2022-10-08 02:36:32', '2022-10-19 01:55:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_like`
--

CREATE TABLE `blog_like` (
  `id_blog_like` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `id_events` int(11) DEFAULT NULL,
  `id_posts` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `blog_like`
--

INSERT INTO `blog_like` (`id_blog_like`, `id_users`, `id_events`, `id_posts`, `created_at`, `updated_at`) VALUES
(1, 19, NULL, 1, '2022-10-08', '2022-10-08'),
(16, 19, NULL, 7, '2022-09-06', '2022-09-06'),
(17, 21, NULL, 6, '2022-09-07', '2022-09-07'),
(29, 19, NULL, 6, '2022-09-17', '2022-09-17'),
(30, 19, NULL, 12, '2022-09-22', '2022-09-22'),
(31, 22, NULL, 6, '2022-10-08', '2022-10-08'),
(32, 22, NULL, 18, '2022-10-09', '2022-10-09'),
(33, 22, NULL, 8, '2022-10-09', '2022-10-09'),
(34, 22, NULL, 17, '2022-10-09', '2022-10-09'),
(35, 22, NULL, 14, '2022-10-09', '2022-10-09'),
(36, 19, NULL, 20, '2022-10-15', '2022-10-15'),
(37, 67, 3, NULL, '2023-05-16', '2023-05-16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `blog_posts`
--

INSERT INTO `blog_posts` (`id`, `title`, `date`, `time`, `author`, `description`, `image`, `slug`, `categories`, `meta_keyword`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'sdfsdfdsf', '2022-09-11', '14:23', 'dfgdfgdfgdfg', '<p>dfgdfgdf</p>', '1662877406.png', 'sdfsdfdsf', '[\"6\"]', 'sdfdsfsdfds', 'sdfdsfdsf', '2020-09-12 22:23:26', '2022-09-10 22:23:26'),
(4, 'zxcxzcxzcxz', '2022-10-08', '18:38', 'xzcxzcxzczx', '<p>zxcxzcxzcxzc</p>', '1665225517.jpg', 'zxcxzcxzcxzxzcxzc', '[\"6\"]', 'xzccxzcxzczx', 'cxzcxzcxz', '2022-10-08 02:38:37', '2022-10-08 02:38:37'),
(6, 'Mengenal Subjek dalam Bahasa Inggris', '2022-09-06', '07:05', 'Ahaaja', '<p><strong>Mengenal Subjek Dalam Bahasa Inggris</strong></p><p>Hi AhaSiya how are you doing? admin harap kalian baik-baik saja, tetap jaga kesehatan dengan olahraga dan makan serta istirahat yang teratur. Kali ini kita akan membahas tentang subject atau subjek yang ada di dalam Bahasa Inggris. Sebelum lanjut ada yang tau apa itu subject atau subjek?.&nbsp;</p><p>Salah satu komponen atau bagian terpenting dari sebuah kalimat. Kalian pasti bertanya kenapa demikian? Karena subjek adalah seseorang atau benda sebagai pelaku sebuah kegitan atau aktivitas didalam sebuah kalimat. Di dalam Bahasa Inggris, disebut sebuah kalimat jika memiliki <i>subject</i> dan kata kerja (<i>Verb</i>). Untuk pembahasan mengenai kalimat dan kerja dalam Bahasa Inggris akan kita bahas di artikel berikutnya. Jadi subjek berfungsi untuk memberikan makna dan memperjelas suatu kaliamat.</p><p>Subjek di dalam Bahasa Inggris dibagi menjadi dua yaitu Singular atau tunggal, dan Plural atau jamak. untuk memahami lebih jelas pembagiannya kita bisa lihat pada tabel berikut:</p><figure class=\"table\"><table><thead><tr><th rowspan=\"2\"><strong>No</strong></th><th colspan=\"2\"><strong>Singular</strong></th><th colspan=\"2\"><strong>Plural</strong></th></tr><tr><th>Subject</th><th>Terjemahan</th><th>Subject</th><th>Terjemahan</th></tr></thead><tbody><tr><th><strong>1</strong></th><td>He</td><td>Dia (untuk laki-laki)</td><td>You</td><td>Kamu</td></tr><tr><th><strong>2</strong></th><td>She</td><td>Dia (untuk perempuan)</td><td>We</td><td>Kita</td></tr><tr><th><strong>3</strong></th><td>It</td><td>Itu/ ini</td><td>They</td><td>Mereka</td></tr><tr><th><strong>4</strong></th><td>I</td><td>Saya</td><td>&nbsp;</td><td>&nbsp;</td></tr></tbody></table></figure><p>&nbsp;</p><p>Dari table diatas dapat kita simpulkan bahwa ada 7 subjek di dalam Bahasa Inggris, dimana masing-masing subjek dapat dibagi menjadi 2 kategori yaitu Singular (tunggal) dan Plural (Jamak). Gimana? sangat mudah bukan untuk mengerti dan memahami subjek dalam Bahasa Inggris. Jika kamu masih binggung coba kita terapkan dalam sebuah kalimat seperti contoh percakapan berikut;</p><p>&nbsp;</p><p>Mei : Hi Ketut, how are you?</p><p>Ketut : Hi Mei, I am fine thank you and you?</p><p>Mei : I am good too.</p><p>&nbsp;</p><p>Didalam percakapan diatas kita bisa membedakan yang mana subjek tunggal dan juga jamak. Pada kalimat pertama “<i>how are you</i>” subjek <i>you</i> adalah jamak dalam Bahasa Inggris karena menggunakan <i>to be</i> “<i>are</i>” dimana “<i>are</i>” adalah to be yang menandakan bahwa subjek tersebut adalah jamak. Kemudian, di kalimat kedua ada “<i>I am fine…”</i> subjek I disini adalah tunggal karena menggunakan <i>to be “am”</i> yang menandakan bahwa subjek tersebut adalah tunggal.</p><p>&nbsp;</p><p>Sebagai tambahan kalian pasti sering mendengar atau melihat kaliamat diawali dengan nama seseorang, tempat, hewan atau binatang. Nah kalo itu di kategorikan sebagai tunggal atau jamak? Jawabannya adalah tergantung dari kontek kalimatnya. Jika benda tersebut lebih dari satu, sudah tentu itu adalah jamak, namun bagaimana jika subjeknya adalah <i>group</i> atau kelompok, jawabanya simpel jika Cuma satu kelompok itu dikategorikan sebagai tunggal dan sebaliknya jika lebih dari satu makan dikategorikan sebagai jamak.&nbsp;</p><p>Lalu <i>to be</i> itu apa?</p><p>&nbsp;</p><p><i>To be</i> dalam Bahasa Inggris secara harfiah berarti <strong>ada</strong> atau <strong>adalah</strong> yang berfungsi sebagai kata penghubung atara subjek dan objek. Untuk penjelasan menganai objek akan kita bahas pada artikel selanjutnya.</p><p>Gimana AhaSiya masih binggung, untuk memudahkan pemahaman penggunaan <i>to be</i> dan subjek berikut tabel pasangan subjek dan <i>to be</i> nya.&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><figure class=\"table\"><table><tbody><tr><td rowspan=\"2\"><strong>No</strong></td><td colspan=\"2\"><strong>Singular</strong></td><td colspan=\"2\"><strong>Plural</strong></td></tr><tr><td>Subject</td><td>To be</td><td>Subject</td><td>To be</td></tr><tr><td><strong>1</strong></td><td>I</td><td>am</td><td>You</td><td>Are</td></tr><tr><td><strong>2</strong></td><td>She</td><td>Is</td><td>They</td><td>Are</td></tr><tr><td><strong>3</strong></td><td>He</td><td>Is</td><td>We</td><td>Are</td></tr><tr><td><strong>4</strong></td><td>It</td><td>is</td><td>&nbsp;</td><td>&nbsp;</td></tr></tbody></table></figure><p>&nbsp;</p><p>Sampai sini apakah masih belum paham cara penggunaan subjek singural (tunggal) dan plural (jamak ) dalam Bahasa Inggris? Jika masih bingung jangan sungkan untuk bertanya di kolom komentar.</p><p>&nbsp;</p><p>Untuk artikel kali ini kita cukup sampai disini terimakasih telah membacar artikel ini semoga bermanfaat, sampai jumpa di artikel berikutnya <i>have a wonderful day</i>&nbsp;😍</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>', '1662549264.png', 'mengenal-subjek-dalam-bahasa-inggris', '[\"9\"]', 'subjek, bahasa_inggris, belajar', 'Mengenal Subjek dalam Bahasa Inggris\"\"', '2022-09-05 16:22:23', '2022-10-06 22:58:37'),
(7, 'Mengenal Objek dalam Bahasa Inggris', '2022-09-06', '23:09', 'Ahaaja', '<p>Mengenal Objek dalam Bahasa Inggris</p><p>&nbsp;</p><p>Hi AhaSiya Gimana <i>how are doing</i>?&nbsp;</p><p>&nbsp;</p><p>Semoga kalian baik-baik saja, terimakasih telah berkunjung ke Aha Blog. Kali ini kita akan membahas tentang object (objek) di dalam Bahasa Inggris. Ada yang tahu apa itu object dalam Bahasa Inggris? Yuk komen di kolom komentar..</p><p>&nbsp;</p><p>Terus apa sih fungsi dari object dan cara penggunaannya seperti apa?</p><p>&nbsp;</p><p>Objek adalah salah satu komponen dalam Bahasa Inggris namun objek sendiri tidak harus dalam sebuah kalimat Bahasa Inggris. Loh kok gitu min?Untuk penjelasannya akan kita bahas di artikel selanjutnya mengenai kalimat dalam Bahasa Inggris.&nbsp;</p><p>Sama seperti Bahasa Indonesia kita juga mengenal yang namanya objek dalam sebuah kalimat dimana mereka adalah benda atau orang yang dikenakan aktivitas dari sebuah atau seorang subjek. Jadi fungsi objek dalam sebuah kalimat adalah memberi kejelasan tentang aktivitas yang kenakan kepada ojek yang dilakukan atau dilakasanakan oleh subjek.</p><p>&nbsp;</p><p>Gimana Aha Siya, masih bingung kah? tenang saja, ga perlu pusing-pusing berikut adalah tabel tentang objek dalam Bahasa Inggris ;</p><figure class=\"table\"><table><tbody><tr><td rowspan=\"2\"><strong>No</strong></td><td colspan=\"2\"><strong>Singular</strong></td><td colspan=\"2\"><strong>Plural</strong></td></tr><tr><td>Object</td><td>Terjemahan</td><td>Object</td><td>Terjemahan</td></tr><tr><td><strong>1</strong></td><td>Her</td><td>Dia (untuk perempuan)</td><td>Us</td><td>Kita</td></tr><tr><td><strong>2</strong></td><td>Him</td><td>Dia (untuk laki-laki)</td><td>You</td><td>Kamu</td></tr><tr><td><strong>3</strong></td><td>It</td><td>Itu/ ini</td><td>Them</td><td>Mereka</td></tr><tr><td><strong>4</strong></td><td>Me</td><td>Saya</td><td>&nbsp;</td><td>&nbsp;</td></tr></tbody></table></figure><p>&nbsp;</p><p>Dari tabel diatas ternyata subjek dalam Bahasa Inggris bisa dijadikan sebagai objek, namun terjadi perubahan ketika dirubah dari subjek menjadi objek. Aha Siya lihat ga bedanya? Untuk bisa melihat perbedaannya kamu harus mengerti apa itu subject (subjek) dalam Bahasa Inggris. Sebelum nya admin telah mengunggah artikel tentang subjek dalam Bahasa Inggris pada postingan sebelumnya<strong>.&nbsp;</strong></p><p>&nbsp;</p><p>Ternyata objek dalam Bahasa Inggris dibagi menjadi dua yaitu singural object dan plural object dan totalnya juga ada 7 seperti pada subjek.&nbsp;</p><p>Gimana Aha Siya masih binggung? yok kita coba terapkan dalam sebuah percakapan sehari-hari sebagai berikut;</p><p>X : Hi, what is it?</p><p>Y : This is a pig?</p><p>X : Could you lend me for a while?</p><p>Dari percakapan ditas dapat kita lihat cara penggunaan sebuah objek dalam Bahasa Inggris, dimana objek di letakan setelah kata kerja atau <i>verb.&nbsp;</i>Untuk verb kita akan bahas pada pertemuan selanjutnya. Subjek bisa menjadi objek jika diletakan setelah kata kerja atau <i>Verb&nbsp;</i>dan jika sebuah kalimat di jadikan kalimat pasif. Lalu apa itu kalimat pasif? untuk pembahasan kalimat pasif akan admin jelaskan di artikel selanjutnya mengenai kalimat dalam Bahasa Inggris.</p><p>&nbsp;</p><p>Gimana Aha Siya masih binggung? yok komen kalo kamu ada pertanyaan seputar obejek dalam Bahasa Inggris! <i>Have a good day</i>😍</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>', '1662477216.png', 'mengenal-objek-dalam-bahasa-inggris', '[\"9\"]', 'object, objek, bahasa_inggris', 'Objek adalah salah satu bagain terpenting dalam sebuah struktur bahasa.', '2022-09-06 08:13:36', '2022-09-06 08:13:36'),
(8, 'Mengenal Verb (Kata Kerja) dalam Bahasa Inggris', '2022-09-06', '23:28', 'Ahaaja', '<p><strong>Mengenal Kata Kerja atau </strong><i><strong>Verb&nbsp;</strong></i><strong>dalam Bahasa Inggris</strong></p><p>Hi dear how is it going? hope this article finds you well..</p><p>Alright, kali ini kita akan membahas tentang <i>verb</i> atau kata kerja di dalam Bahasa Inggris. <i>Do you know what verb is?.&nbsp;</i>&nbsp;<i>Alright without further do let get started!!</i></p><p>Sama seperti kebanyakan bahasa di dunia Bahasa Inggris juga memiliki kata kerja atau <i>verb.&nbsp;</i>Di dalam Bahasa Indonesia kata kerja sering disebut dengan predikat. Jadi apa itu predikat atau kerja itu sendiri ?</p><p>Kata kerja adalah sebuah kata aktivitas atau tindakan yang di lakukan oleh seorang atau sebuah subjek yang diberikan kepada sebuah benda atau objek. Jadi kata kerja ini sangat penting untuk menguhungkan subjek dan objek dalam sebuah kalimat. Bagi yang belum tau apa itu subjek bisa liat pada postingan seblumnya mengenaik&nbsp;<a href=\"Subjek%20dalam%20Bahasa%20Inggris.docx\"><strong>subjek</strong></a> dan&nbsp;<a href=\"Objek%20dalam%20Bahasa%20Inggris.docx\"><strong>objek</strong></a> dalam Bahasa Inggris.</p><p>Dalam Bahasa Inggris <i>verb</i> atau kerja adalah bagian terpenting dalam sebuah kalimat. Jadi tidak salah jika <i>verb is the king of a sentence&nbsp;</i>atau kata kerja adalah raja dalam sebuah kalimat. Loh kok gitu mih?? Karena kalimat yang utuh atau disebut sebuah kalimat di dalam Bahasa Inggris jika memiliki setidaknya satu kata kerja, jadi keberadaan sebuah kata kerja wajib dan harus di dalam sebuah kalimat.&nbsp;</p><p>Gimana Aha Siya masih binggung? untuk lebih mudah menjelaskan nya coba kita terapkan langsung di dalam sebuah kalimat seperti contoh beriku;</p><ol><li>I go to school</li></ol><p>Saya pergi ke sekolah&nbsp;</p><p>&nbsp;</p><ol><li>She eats an apple</li></ol><p>Dia (perempuan) makan sebuah apel</p><p>&nbsp;</p><ol><li>They are student</li></ol><p>Mereka adalah pelajar</p><p>&nbsp;</p><p>Dari contoh diatas dapat kita lihat bahwa pada kalimat pertama bahwa;</p><p><i>I</i> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = <i>Subject&nbsp;</i>(subjek)</p><p><i>Go&nbsp;</i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = <i>Verb</i> (kata kerja)</p><p><i>To &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </i>= <i>Preposition</i></p><p><i>School&nbsp; </i>= <i>Object&nbsp;</i>(Objek)</p><p>Dari deskripsi diatas maka dapat dijabarkan bahwa jika tidak ada verb atau kata kerja yang menerangkan aktivitas atau tindakan dari seorang subjek <i>I</i> terhadap objek <i>to school</i> maka kalimat tersebut tidak lengkap. Kalimat tersebut akan menjadi aneh kengerannya “<i>I to school</i>”.&nbsp; Oleh karena itu kata kerja sangat penting dan harus ada dalam sebuah kalimat di dalam Bahasa Inggris.</p><p>Untuk contoh nomor 2 dan 3 juga sama jika kita hilangkan verb atau kata kerjanya maka tidak bisa menjadi kalimat yang lengkap bahkan tidak bisa disebut sebuah kalimat. Dari kalimat 2 dan 3 kata kerjanya yaitu <i>eats</i> dan <i>are</i>.&nbsp; Loh kok kata kerja <i>eat</i> atau makan berisi -s diakhir kata kerjanya dan <i>are</i> disebut kata kerja?</p><p>Untuk memahami penggunaan akhiras -<i>s</i> dan -<i>es</i> dalam sebuah kata kerja kita bisa lihat pada tabel di bawah dengan menggunakan kata kerja <i>eat</i>;</p><figure class=\"table\"><table><tbody><tr><td rowspan=\"2\"><strong>No</strong></td><td colspan=\"3\"><strong>Singular</strong></td><td colspan=\"3\"><strong>Plural</strong></td></tr><tr><td>Subject</td><td>Verb</td><td>Terjemahan</td><td>Subject</td><td>Verb</td><td>Terjemahan</td></tr><tr><td><strong>1</strong></td><td>He</td><td>Eats</td><td>Dia (laki-laki) makan</td><td>They</td><td>Eat</td><td>Mereka makan</td></tr><tr><td><strong>2</strong></td><td>She</td><td>Eats</td><td>Dia (perempuan) makan</td><td>We</td><td>Eat</td><td>Kita makan</td></tr><tr><td><strong>3</strong></td><td>It</td><td>Eats</td><td>Itu (benda) makan&nbsp;</td><td>You</td><td>Eat</td><td>Kamu makan&nbsp;</td></tr><tr><td><strong>4</strong></td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>I</td><td>Eat</td><td>Saya makan</td></tr></tbody></table></figure><p>&nbsp;</p><p>Dari tabel di atas kita dapat mengetahui bahwa pengunaan akhiran -<i>s</i> dan -<i>es</i> digunakan pada subjek yang tunggal dan sebaliknya untuk subjek yang jamak atau <i>plural</i> tidak menggunakan -<i>s&nbsp;</i>dan -<i>es</i>.&nbsp;</p><p><i>Are</i> dikategorikan sebagai <i>auxiliary verb&nbsp;</i>atau kata kerja pembantuk yang memiliki fungsi sama dengan kata kerja pada umumnya yaitu menghubungkan antara subjek dan objek pada sebuah kalimat.</p><p>Dalam Bahasa Inggris dibedakan menjadi 2 kategori berdasarkan struktur perubahannya yaitu <i>regular verb</i> (kata kerja teratur) dan <i>irregular verb</i> (Kata kerja tidak teratur). Jika kalian punya kamus Bahasa Inggris coba cari bagian yang beris jenis kata tersebut. Untuk lebih memahami kata kerja tersbut yok lihat tabel dibawah ini;</p><p>&nbsp;</p><figure class=\"table\"><table><tbody><tr><td rowspan=\"2\"><strong>NO</strong></td><td colspan=\"4\"><strong>Regular Verb</strong></td><td colspan=\"4\"><strong>Irregular Verb</strong></td></tr><tr><td>Verb 1</td><td>Verb 2&nbsp;</td><td>Verb 3</td><td>Terjemahan</td><td>Verb 1</td><td>Verb 2&nbsp;</td><td>Verb 3</td><td>Terjemahan</td></tr><tr><td><strong>1</strong></td><td>Study</td><td>Studied</td><td>Studied</td><td>Belajar</td><td>Go</td><td>Went&nbsp;</td><td>Gone</td><td>Pergi</td></tr><tr><td><strong>2</strong></td><td>Look</td><td>Looked</td><td>Looked</td><td>Melihat</td><td>See</td><td>Saw</td><td>Seen</td><td>Melihat</td></tr><tr><td><strong>3</strong></td><td>Watch</td><td>Watched</td><td>Watched</td><td>Menonton</td><td>Eat</td><td>Ate</td><td>Eaten</td><td>Makan</td></tr><tr><td><strong>4</strong></td><td>Close</td><td>Closed</td><td>Closed</td><td>Menutup</td><td>Buy</td><td>Bought</td><td>Bought</td><td>Membeli</td></tr><tr><td><strong>5</strong></td><td>Open</td><td>Opened</td><td>Opened</td><td>Membuka</td><td>Sit</td><td>Sat</td><td>Sat</td><td>Duduk</td></tr></tbody></table></figure><p>&nbsp;</p><p>Dari kata kerja diatas dapat kita bedakan yang makan <i>regular verb</i> dan yang mana i<i>rregular verb.&nbsp;</i>Caranya mudah dengan melihat bentuk kedua dari kata kerja tersebut jika regular maka ditambahkan dengan akhiran -<i>ed</i> dan sebaliknya jika irregular maka tidak ditambahkan akhiran -<i>ed.&nbsp;</i></p><p>Dalam tabel diatas juga kita tau jika ada tiga bentuk kata kerja dalam Bahasa Inggris yaitu bentuk pertama bentuk dasar atau <i>basic verb, </i>kemudian <i>past verb&nbsp;</i>atau bentuk lampau, dan terakhir yaitu <i>past participle verb.</i> Trus gimana cara menggunakan setiap bentuk kata kerja tersebut dalam sebuah kalimat?. Untuk pembahasan ini kita akan bahas di artikel berikutnya tentang <i>grammar</i> dalalam Bahasa Inggris.</p><p>Gimana Aha Siya masih binggung tentang kata kerja dalam Bahasa Inggris? jangan ragu untuk komen, kita sama-sama belajar jadi jangan sungkan untuk <i>share</i> opini kalian, akhir kata terimakasih telah berkunjung Blog Aha <i>keep in touch</i> dengan menyalakan notifikasi agar setiap ada artikel baru kalian tidak ketinggalan.</p><p>&nbsp;</p><p>&nbsp;</p>', '1662478175.png', 'mengenal-verb-kata-kerja-dalam-bahasa-inggris', '[\"9\"]', 'kata_kerja, verb, Bahasa_Inggris', 'Verb (kata kerja) adalah bagian yang penting dalam bahasa Inggris', '2022-09-06 08:29:35', '2022-09-06 08:29:35'),
(9, 'ABCDEFU ~ Gayle Song Lyric & Indonesian Translation', '2022-09-18', '20:39', 'Ahaaja', '<p><strong>ABCDEFU ~ Gayle Lyric and translation to Indonesian Language</strong></p><p><strong>Fuck you and your mom and your sister and your job</strong><br>Persetan denganmu dan ibumu dan saudara perempuanmu dan pekerjaanmu</p><p><br><strong>And your broke-ass car and that shit you call art</strong><br>Dan mobilmu yang rusak dan omong kosong yang kau sebut seni&nbsp;</p><p><br><strong>Fuck you and your friends that I\'ll never see again</strong><br>Persetan denganmu dan teman-temanmu yang tidak akan pernah kulihat lagi</p><p><br><strong>Everybody but your dog, you can all fuck off</strong><br>Semua orang kecuali anjingmu, kalian semua bisa bercinta aku bersumpah aku bermaksud</p><p><strong>I swear I meant to mean the best when it ended</strong><br>untuk bermaksud yang terbaik ketika itu berakhir&nbsp;</p><p><br><strong>Even tried to bite my tongue when you start shit</strong><br>Bahkan mencoba menggigit lidahku ketika kamu mulai buang air besar</p><p><strong>Now you\'re textin\' all my friends asking questions</strong><br>Sekarang kamu mengirim smsin\' semua temanku mengajukan pertanyaan</p><p><br><strong>They never even liked you in the first place</strong><br>Mereka bahkan tidak pernah menyukaimu di tempat pertama&nbsp;</p><p><br><strong>Dated a girl that I hate for the attention</strong><br>Berkencan dengan seorang gadis yang aku benci karena perhatian</p><p><br><strong>She only made it two days, what a connection</strong><br>Dia hanya membuatnya dua hari, koneksi yang luar biasa</p><p><br><strong>It\'s like you\'d do anything for my affection</strong><br>Ini seperti Anda akan melakukan apa saja untuk kasih sayang saya</p><p><strong>You\'re goin\' all about it in the worst ways</strong><br>Anda pergi semua tentang hal itu dengan cara terburuk</p><p><strong>I was into you, but I\'m over it now</strong><br>Aku menyukaimu, tapi aku sudah melupakannya sekarang</p><p><br><strong>And I was tryin\' to be nice</strong><br>Dan ku mencoba untuk bersikap baik&nbsp;</p><p><br><strong>But nothing\'s getting through, so let me spell it out</strong><br>Tapi tidak ada yang berhasil, jadi biarkan saya mengejanya</p><p><strong>A-B-C-D-E, F-U</strong><br>A B C D E F U</p><p><br><strong>And your mom and your sister and your job</strong><br>Dan ibumu dan saudara perempuanmu dan pekerjaanmu</p><p>&nbsp;</p><p><br><strong>And your broke-ass car and that shit you call art</strong><br>Dan mobilmu yang rusak dan omong kosong yang kau sebut seni</p><p><br><strong>Fuck you and your friends that I\'ll never see again</strong><br>Persetan denganmu dan teman-temanmu yang tidak akan pernah kulihat lagi</p><p><br><strong>Everybody but your dog, you can all fuck off</strong><br>Semua orang kecuali anjingmu, kalian semua bisa bercinta</p><p><strong>Nah, nah, nah, nah, nah, nah, nah, nah</strong><br>Nah, nah, nah, nah, nah, nah, nah, nah<br><br><strong>A-B-C-D-E, F-U</strong><br>A-B-C-D-E, F-U</p><p>&nbsp;</p><p><strong>You said you just needed space and so I gave it</strong><br>Kamu bilang kamu hanya membutuhkan ruang dan jadi aku memberikannya</p><p><br><strong>When I had nothin\' to say you couldn\'t take it</strong><br>Ketika saya tidak mengatakan Anda tidak bisa menerimanya</p><p><br><strong>Told everyone I\'m a bitch, so I became it</strong><br>Memberi tahu semua orang bahwa saya menyebalkan, jadi saya menjadi itu</p><p><br><strong>Always had to put yourself above me</strong><br>selalu menempatkanku diatasku<br><br>&nbsp;</p><p><strong>I was into you, but I\'m over it now</strong><br>Aku menyukaimu, tapi aku sudah melupakannya sekarang<br><br><strong>And I was tryin\' to be nice</strong><br>Dan aku berusaha untuk bersikap baik&nbsp;</p><p><br><strong>But nothing\'s getting through, so let me spell it out</strong><br>Tapi tidak ada yang berhasil, jadi biarkan aku mengejanya</p><p><strong>A-B-C-D-E, F-U</strong><br>A-B-C-D-E, F-U</p><p><br><strong>And your mom and your sister and your job</strong><br>Ibumu, saudaramu dan perkerjaanmu<strong>&nbsp;</strong></p><p><br><strong>And your craigslist couch and the way your voice sounds</strong><br><strong>Dan sofa craigslist Anda dan cara suara Anda terdengar</strong></p><p><br><strong>Fuck you and your friends that I\'ll never see again</strong><br>Persetan denganmu dan teman-temanmu yang tidak akan pernah kulihat lagi</p><p><br><strong>Everybody but your dog, you can all fuck off</strong><br>Semua orang kecuali anjingmu, kalian semua bisa bercinta</p><p>&nbsp;</p><p>&nbsp;</p><p><strong>Nah, nah, nah, nah, nah, nah, nah, nah</strong><br>Nah, nah, nah, nah, nah, nah, nah, nah</p><p>&nbsp;</p><p><strong>A-B-C-D-E, F-U</strong><br>A-B-C-D-E, F-U</p><p><br><strong>Nah, nah, nah, nah, nah, nah, nah, nah</strong><br>Nah, nah, nah, nah, nah, nah, nah, nah<br><br><strong>A-B-C-D-E, F-U</strong><br>A-B-C-D-E, F-U</p><p><strong>And your mom and your sister and your job</strong><br>Dan ibumu dan saudara perempuanmu dan pekerjaanmu</p><p>&nbsp;</p><p><br><strong>And your broke-ass car and that shit you call art</strong><br>Dan mobilmu yang rusak dan omong kosong yang kau sebut seni</p><p><br><strong>Fuck you and your friends that I\'ll never see again</strong><br>Persetan denganmu dan teman-temanmu yang tidak akan pernah kulihat lagi</p><p><br><strong>Everybody but your dog, you can all fuck off</strong><br>Semua orang kecuali anjingmu, kalian semua bisa bercinta</p><p><br><br><br>&nbsp;</p>', '1663504978.png', 'abcdefu-gayle-song-lyric-indonesian-translation', '[\"8\"]', 'ABCDEFU, Gayle, Song Lyric, ABCDEFU Gayle Song Lyric', 'ABCDEFU ~ Gayle Lyric and translation to Indonesian Language\r\nFuck you and your mom and your sister and your job\r\nPersetan denganmu dan ibumu dan saudara perempuanmu dan pekerjaanmu\"', '2022-09-18 05:42:58', '2022-09-18 06:21:00'),
(10, 'That’s Why You Go Away ~ Michael Learns to Rock Song Lyric & Indonesian Translation', '2022-09-18', '21:10', 'Ahaaja', '<p><strong>That’s Why You Go Away ~ Michael Learns to Rock Song Lyric &amp; Indonesian Translation&nbsp;</strong></p><p>&nbsp;</p><p><strong>Baby won\'t you tell me why there is sadness in your eyes</strong><br>Sayang maukah kamu memberitahuku mengapa ada kesedihan di matamu</p><p><strong>I don\'t wanna say goodbye to you</strong><br>Ku tak ingin mengucapkan selamat tinggal kepadamu</p><p><strong>Love is one big illusion I should try to forget</strong><br>Cinta adalah salah satu ilusi besar yang harus ku coba lupakan</p><p><strong>But there is something left in my head</strong><br>Tapi ada sesuatu yang tersisa di kepalaku</p><p><strong>You\'re the one who set it up now you\'re the one to make it stop</strong><br>Andalah yang mengaturnya sekarang, Andalah yang membuatnya berhenti</p><p><strong>I\'m the one who\'s feeling lost right now</strong><br>Akulah yang merasa tersesat saat ini</p><p><strong>Now you want me to forget every little thing you said</strong><br>Sekarang kau ingin ku melupakan setiap hal kecil yang kau katakan</p><p><strong>But there is something left in my head</strong><br>Tapi ada sesuatu yang tersisa di kepalaku</p><p><strong>I won\'t forget the way you\'re kissing</strong><br>Ku tak akan lupakan caramu berciuman</p><p><strong>The feeling\'s so strong were lasting for so long</strong><br>Perasaan yang begitu kuat itu bertahan begitu lama</p><p><strong>But I\'m not the man your heart is missing</strong><br>Tapi aku bukan pria yang hilang dari hatimu</p><p><strong>That\'s why you go away I know</strong><br>Itu sebabnya kau pergi, saya tahu</p><p><strong>You were never satisfied no matter how I tried</strong><br>Kau tidak pernah puas tidak peduli bagaimana ku mencoba</p><p><strong>Now you wanna say goodbye to me</strong><br>Sekarang kau ingin mengucapkan selamat tinggal kepada ku</p><p><strong>Love is one big illusion I should try to forget</strong><br>Cinta adalah salah satu ilusi besar yang harus ku coba lupakan</p><p><strong>But there is something left in my head</strong><br>Tapi ada sesuatu yang tersisa di kepalaku</p><p><strong>I won\'t forget the way you\'re kissing</strong><br>Aku tidak akan melupakan caramu berciuman</p><p><strong>The feeling\'s so strong were lasting for so long</strong><br>Perasaan yang begitu kuat itu bertahan begitu lama</p><p><strong>But I\'m not the man your heart is missing</strong><br>Tapi aku bukan pria yang hilang dari hatimu</p><p><strong>That\'s why you go away I know</strong><br>Itu sebabnya kau pergi, saya tahu</p><p><strong>Yes, I know</strong><br><strong>Ya, aku tahu</strong></p><p><strong>Sitting here all alone in the middle of nowhere</strong><br>Duduk di sini sendirian di antah berantah</p><p><strong>Don\'t know which way to go</strong><br>Tidak tahu ke mana harus pergi</p><p><strong>There ain\'t so much to say now between us</strong><br>Tidak banyak yang bisa dikatakan sekarang di antara kita</p><p><strong>There ain\'t so much for you</strong><br>Tidak banyak yang bisa kau lakukan</p><p><strong>There ain\'t so much for me anymore</strong><br>Tidak ada begitu banyak untuk ku lagi</p><p><strong>I won\'t forget the way you\'re kissing</strong><br>Aku tidak akan melupakan caramu berciuman</p><p><strong>The feeling\'s so strong were lasting for so long</strong><br>Perasaan yang begitu kuat itu bertahan begitu lama</p><p><strong>But I\'m not the man your heart is missing</strong><br>Tapi aku bukan pria yang hilang dari hatimu</p><p><strong>That\'s why you go away I know</strong><br>Itu sebabnya kau pergi, saya tahu</p><p><strong>That\'s why you go away I know</strong><br>Itu sebabnya kau pergi, saya tahu</p><p>&nbsp;</p>', '1663506698.png', 'thats-why-you-go-away-michael-learns-to-rock-song-lyric-indonesian-translation', '[\"8\"]', 'That’s Why You Go Away ~ Michael Learns to Rock Song Lyric & Indonesian Translation', 'That’s Why You Go Away ~ Michael Learns to Rock Song Lyric & Indonesian Translation\"', '2022-09-18 06:11:38', '2022-09-18 06:16:07'),
(11, 'Kenapa harus belajar grammar?', '2022-09-19', '12:43', 'Ahaaja', '<p>Dalam Bahasa Inggris sering kali kita mendengar istilah <i>grammar,&nbsp;</i>namun apa sih sebenarnya itu, dan mengapa harus menggunakan grammar dan kapan harus menggunakan grammar, kemudian kepada siapa kita harus menggunakannya, sertama dimana penggunaan grammar ini digunakan?</p><p>Tenang mari kita bahas satu-persatu tentang grammar, mulai dari apa itu grammar? seperti halnya banyak bahasa di dunia pastinya memiliki tata bahasa yang digunakan sebagai pedoman atau acuan sebuah bahasa sehingga dapat di mengerti dan dipahami oleh penutur asli maupun orang yang sedang belajar salah satu bahasa. Dalam hal ini bahasa Inggris juga memiliki tata bahasanya sendiri yang sering kita sebut atau dengar yaitu grammar. Admin telah merangkum beberapa pengertian atau definisi dari grammar menurut para ahli. Yang pertama ada Harmer (2001:12) menyatakan bahwa grammar merupakan deskripsi dari cara-cara dimana kata-kata dapat merubah bentuk dan dapat dikombinasiakan menjadi kalimat di dalam sebuah bahasa. Yang kedua ada Lado (1997:141), dimana beliau mengemukakan bahwa grammar sebagai studi tentang aturan yang diklaim untuk memberi tahu siswa apa yang harus dan tidak boleh dikatakan untuk berbicara bahasa kelas berpendidikan sosial. Kesimpulannya, tata bahasa adalah studi tentang kelas kata-kata, fungsi, dan hubungannya dalam kalimat bahasa.</p><p>Nah dari sini kita bisa melihat bahwa grammar itu memiliki arti dan fungsi yang penting dalam sebuah bahasa. Grammar berperan dalam mengatur kata-kata agar menjadi lebih baik jika digunakan dalam sebuah kalimat. Dengan menggunakan grammar kita dapat membuat ribuah bahkan jutaan kalimat yang baik sehingga mudah dipahami oleh pembaca atau pendengar.&nbsp;</p><p>Alright, sekarang kita sudah mengetahui apa itu grammar, selanjutnya adalah mengapa kita harus menggunakan grammar yang baik. Dalam komunikasi ada dua orang yang sangat berperan penting yaitu pembicara dan pendengar. Selain dari mereka, kontek atau topik yang dibicarakan juga tidak kalah pentingnya, karena pemahaman pendengar dan pembicara kadang atau sering berbeda sehingga sering menimbulkan salah paham. Oleh sebab itu grammar atau tata bahasa hadir untuk menjembatani atau menjadi solusi yang tepat karena dengan menggunakan grammar yang baik dapat memudahkan dalam memahami sebuah kalimat maupun bahasa.&nbsp;</p><p>Jadi seperti yang sudah dijelaskan diatas grammar merupakan pendoman atau acuan dalam menggunakan sebuah bahasa, sehingga baik pendengar atau pembaca dapat memahami apa yang kita ucapkan dan yang kita tulis. Sama hal nya di dalam bahasa Indonesia jika tidak ada tata bahasa apakah mungkin bisa mengerti isi dari artikel yang admin buat ? apakah mungkin kita mengerti apa yang kita ucapkan ketika kita berkomunikasi dengan orang lain? jawabannya mungkin bisa dimengerti, namun tidak semudah jika menggunakan tata bahasa yang baik dan benar.&nbsp;</p><p>Lalu setelah kita mengetahui pentingnya grammar, kapan dan dimana serta kepada siapa kita harus menggunakan grammar itu sendiri? Sebuah komunikasi yang baik adalah ketika pembicara atau penulis dan pembacara atau pendengar mengerti atau memahami kontek atau pesan yang disampaikan. Seperti contoh ketika kita bertemu dengan orang yang lebih tua atau orang baru dikenal, sebaiknya kita menggunakan pilihan kata yang lebih sopan sehingga tidak menyinggung perasaan mereka. Contoh lain adalah misalnya ada bule atau wisatawan asing yang datang berlibur ke pulau Bali dan dia bertanya kepada warga Bali, percakapannya seperti berikut;</p><p>Jhon: &nbsp;where is the nearest hotel from the airport?&nbsp;</p><p>Bli made: oh hotel yes, hotel from Bandara is in Kuta is good to look sunset and very very cheap price mister</p><p>Jhon : Kuta, I have heard it, thank you very much</p><p>Bli Made: You are welcome.</p><p>Dari perckapan diatas dapat kita lihat bawasannya grammar dalam kontek ini dimana seorang wisatawan yang Bernama Jhon yang bertanya kepada warga lokal yang Bernama Made saling mengerti satu sama lain. Jika kita melihat grammar yang digunakan oleh Made tidak terlalu bagus, namun Jhon mengerti apa yang dimaksud oleh made, begitu pula Made juga mengerti pesan yang ingin disampaikan oleh Jhon. Jadi dapat disimpulkan bahwa grammar sangat penting dalam sebuah bahasa, namun juga bisa sedikit tidak berlaku jika digunakan dibeberapa situasi seperti contoh situasi diatas. Tujuan dari grammar adalah untuk memudahkan komunikasi, dan tujuan komunikasi adalah saling memahami pesan yang disampaikan.</p><p>Baik, segitu dulu artikel kali ini, disini admin tidak membahas secara teknis mengenai penggunaan grammar, admin akan buat diartikel selanjutnya tentang cara menggunakan grammar. Akhir kata, terimakasih yang sudah berkunjung dan membaca sampai habis, jika ada narasi yang kurang atau keliru feel free to put your comment, thank you.😍</p><p>&nbsp;</p><p>&nbsp;</p>', '1663566307.png', 'kenapa-harus-belajar-grammar', '[\"9\"]', 'kenapa harus belajar grammar?', 'Grammar menurupakan hal sangat penting dalam sebuah bahasa di dunia', '2022-09-18 22:45:07', '2022-09-18 22:45:07'),
(12, 'Dear God ~ Avenged Sevenfold Song Lyric and Indonesian Translation', '2022-09-20', '12:49', 'Ahaaja', '<p><strong>A lonely road, crossed another cold state line</strong><br>Jalan sepi dibatas kota ini</p><p><br><strong>Miles away from those I love purpose hard to find</strong><br>Jauh dari seseorang yang aku sayangi</p><p><br><strong>While I recall all the words you spoke to me</strong><br>ku teringat kata yang kau ucapkan</p><p><br><strong>Can’t help but wish that I was there</strong><br>Namun tak bisa membuatku&nbsp;</p><p><br><strong>Back where I’d love to be, oh yeah</strong><br>Kembali padamu oh yeah</p><p><strong>Dear God the only thing I ask of you is to hold her when I’m not around</strong><br>Tuhan, hanya satu pintaku padamu jagalah dia saat aku tak disisinya</p><p><br><strong>when I’m much too far away</strong><br>Saat aku sangat jauh darinya</p><p><br><strong>We all need that person who can be true to you</strong><br>Ku butuhkan orang yang tulus padamu<strong>&nbsp;</strong></p><p><br><strong>But I left her when I found her</strong><br>Tapi kutinggalkan dirinya saat aku berjumpa</p><p><br><strong>And now I wish I’d stayed</strong><br>Dan kini kuharap aku tetap disana</p><p><br><strong>Cause I’m lonely and I’m tired I’m missing you again oh no</strong><br>Karena aku sendiri dan aku lelah, ku merindukanmu &nbsp;sayang, oh tidak</p><p><br><strong>Once again</strong><br>Dan lagi</p><p><strong>There’s nothing here for me on this barren road</strong><br>Tak ada apapun lagi untukku di jalana yang gersang ini</p><p><br><strong>There’s no one here while the city sleeps and all the shops are closed</strong><br>Tak ada seorangpun disini ketika kota terlelap dan semua toko sudah tutup</p><p><br><strong>Can’t help but think of the times I’ve had with you</strong><br>Selalu terkenang saat-saat bersamamu</p><p><br><strong>Pictures and some memories will have to help me through, oh yeah</strong><br>Foto dan kenangan membantuku lewati masa sulit, oh yeah</p><p><strong>Dear God the only thing I ask of you is to hold her when I’m not around</strong><br>Tuhan, hanya satu pintaku padamu jagalah dia saat aku tak disisinya</p><p><br><strong>when I’m much too far away</strong><br>Saat aku sangat jauh darinya</p><p><br><strong>We all need that person who can be true to you</strong><br>Ku butuhkan orang yang tulus padamu<strong>&nbsp;</strong></p><p><br><strong>But I left her when I found her</strong><br>Tapi kutinggalkan dirinya saat aku berjumpa</p><p><br><strong>And now I wish I’d stayed</strong><br>Dan kini kuharap aku tetap disana</p><p><br><strong>Cause I’m lonely and I’m tired I’m missing you again oh no</strong><br>Karena aku sendiri dan aku lelah, ku merindukanmu &nbsp;sayang, oh tidak</p><p><br><strong>Once again</strong><br>Dan lagi</p><p><strong>Some search, never finding a way</strong><br>Mencari, tidak ku temukan</p><p><br><strong>Before long, they waste away</strong><br>seolah sia-sia</p><p><br><strong>I found you, something told me to stay</strong><br>karenamu ku tetap bertahan</p><p><br><strong>I gave in, to selfish ways</strong><br>meyerah, takkan pernah</p><p><br><strong>And how I miss someone to hold when hope begins to fade</strong><br>Dan bertapa aku merindukan seseorang untuk kupeluk saat harapan mulai memudar</p><p><strong>A lonely road, crossed another cold state line</strong><br>Jalan sepi dibatas kota ini</p><p><br><strong>Miles away from those I love purpose hard to find</strong><br>Jauh dari seseorang yang aku sayangi</p><p><strong>Dear God the only thing I ask of you is to hold her when I’m not around</strong><br>Tuhan, hanya satu pintaku padamu jagalah dia saat aku tak disisinya</p><p><br><strong>when I’m much too far away</strong><br>Saat aku sangat jauh darinya</p><p><br><strong>We all need that person who can be true to you</strong><br>Ku butuhkan orang yang tulus padamu<strong>&nbsp;</strong></p><p><br><strong>But I left her when I found her</strong><br>Tapi kutinggalkan dirinya saat aku berjumpa</p><p><br><strong>And now I wish I’d stayed</strong><br>Dan kini kuharap aku tetap disana</p><p><br><strong>Cause I’m lonely and I’m tired I’m missing you again oh no</strong><br>Karena aku sendiri dan aku lelah, ku merindukanmu &nbsp;sayang, oh tidak</p><p><br><strong>Once again</strong><br>Dan lagi</p>', '1663652404.png', 'dear-god-avenged-sevenfold-song-lyric-and-indonesian-translation', '[\"8\"]', 'Dear God ~ Avenged Sevenfold Song Lyric and Indonesian Translation', 'Dear God ~ Avenged Sevenfold Song Lyric and Indonesian Translation', '2022-09-19 22:40:04', '2022-09-19 22:40:04'),
(13, 'As It Was ~ Harry Styles Song Lyric and Indonesian Translation', '2022-09-20', '13:42', 'Ahaaja', '<p><strong>[Intro]</strong><br><a href=\"https://genius.com/25484581/Harry-styles-as-it-was/Come-on-harry-we-wanna-say-goodnight-to-you\"><strong>Come on, Harry, we wanna say goodnight to you</strong></a><br>Ayolah, Harry, kami ingin mengucapkan selamat malam padamu<br><br><strong>[Verse 1]</strong><br><strong>Holdin\' me back</strong><br>Tahan aku kembali</p><p><strong>Gravity\'s holdin\' me back</strong><br>Gravitasi menahan ku</p><p><strong>I want you to hold out the palm of your hand</strong><br>Ku ingin kau mengulurkan telapak tangan mu<br><br><strong>Why don\'t we leave it at that?</strong><br>mengapa kita tidak membiarkannya begitu saja?<br><br><strong>NothsSin\' to say</strong><br>Tak ada yang perlu dikatakan</p><p><strong>When everything gets in the way</strong><br>Ketika semua menghalangi</p><p><strong>Seems you cannot be replaced</strong><br>Sepertinya kau tak bisa terganti</p><p><strong>And I\'m the one who will stay, oh-oh-oh</strong><br>Dan akulah yang akan tinggal, oh-oh-oh</p><p><strong>[Chorus]</strong><br><strong>In this world, it\'s just us</strong><br>Di dunia ini hanya kita</p><p><strong>You know it\'s not the same as it was</strong><br>kau tau tidak sama seperti dulu</p><p><strong>In this world, it\'s just us</strong><br>Di dunia ini hanya kita</p><p><strong>You know it\'s not the same as it was</strong><br>kau tau tidak sama seperti dulu</p><p><strong>As it was, as it was</strong><br>Seolah-olah, apa adanya</p><p><strong>You know it\'s not the same</strong><br>Kau tau itu tidak sama<br><br><strong>[Verse 2]</strong><br><strong>Answer the phone</strong><br>Jawab telepon<br><br><strong>\"Harry, you\'re no good alone</strong><br>Hari kau tak baik saja sendirian&nbsp;</p><p><br><strong>Why are you sitting at home on the floor?</strong><br>Mengapa kau duduk di rumah di atas lantai?</p><p><strong>What kind of pills are you on?\"</strong><br>Pil apa yang kamu pakai?</p><p><strong>Ringin\' the bell</strong><br>Bunyikan bel</p><p><strong>And nobody\'s coming to help</strong><br>Dan tidak ada yang datang membantu</p><p><strong>Your daddy lives by himself</strong><br>Ayahmu hidup sendiri</p><p><strong>He just wants to know that you\'re well, oh-oh-oh</strong><br>Dia hanya ingin tau bahwa kau baik-baik saja, oh-0h-oh<br><br><strong>[Chorus]</strong><br><strong>In this world, it\'s just us</strong><br>Di dunia ini hanya kita</p><p><strong>You know it\'s not the same as it was</strong><br>kau tau tidak sama seperti dulu</p><p><strong>In this world, it\'s just us</strong><br>Di dunia ini hanya kita</p><p><strong>You know it\'s not the same as it was</strong><br>kau tau tidak sama seperti dulu</p><p><strong>As it was, as it was</strong><br>Seolah-olah, apa adanya</p><p><strong>You know it\'s not the same</strong><br>Kau tau itu tidak sama<br><br><strong>[Outro]</strong><br><strong>(Hey)</strong><br>(hei)</p><p><strong>As it was</strong><br>seperti itu<br><br><strong>You know it\'s not the same as it was</strong><br>kau tau tidak sama seperti dulu</p><p><strong>As it was, as it was</strong><br>Seolah-olah, apa adanya</p><p>&nbsp;</p>', '1663652676.png', 'as-it-was-harry-styles-song-lyric-and-indonesian-translation', '[\"8\"]', 'As It Was ~ Harry Styles Song Lyric and Indonesian Translation', 'As It Was ~ Harry Styles Song Lyric and Indonesian Translation', '2022-09-19 22:44:36', '2022-09-19 22:44:36'),
(14, 'Lunch Box (Nasi Kotak)', '2022-09-22', '16:37', 'Ahaaja', '<p><strong>Lunch box</strong></p><p>What comes into your mind if you heard about “lunch box”? yes you are right, lunch box commonly used to assign a couple of food packaged by box. This food usually used in the formal ceremony especially in Bali or around Indonesia. It is like a premium package even though the food within the box often not too delicious or quite huge. If you used that package that will give a prestige image view for the people that looking at it. In Indonesia we usually provide couple of food within the box and that why we call it lunch box. Within the box containing rice absolutely, because it is the primary food belong to Indonesian and without eat it, we cannot even feel full after eating a bunch of food instead of rice. Then, it combines with vegetables, sauce chili, meet – it is depended on the meet you order because in Indonesia we have a lot of religions and we are respect each of believe, for example because I am Hinduism, that why I am not allowed to eat beef, however fork is my best favorite food.</p><p>&nbsp;</p><p>Lunch box have a bunch of verities both of the package and the food within the box. One of the best lunch boxes I have ever tried is that <i>Nasi Campur Babi Guling</i> or grill fork mix rice. It is commonly contained fork of course, rice, <i>lawar</i> – it is mix vegetable and meeting with Balinese sauce original, the vegetable can be verities, however, jack fruit, papaya, and coconut is the most common used to make <i>Lawar,&nbsp;</i>that it contains sate – this is one of my favorite parts because it is very delicious and sometime spacy, then there will be a grilled fig skin that very crunchy and this is the best part mix grilled fork rice that everyone like to eat the most, and finally it also contain fruit – in Bali we usually provide our authentic foods there are orange and snake fruit.</p><p>&nbsp;</p><p>You can have a lunch box from one dollar depending on where you are buying it. If the location you bought was in tourism area it would be more expensive, but if you buy in the village or in edge or side of the city it is going to be cheaper, because it produces directly in the merchant house or their store, and also because of the ingredient is coming from the village that why it is cheaper. I bet you once you tried lunch box mix fork grilled rice, you would try it again and again like I did.&nbsp;</p><p>&nbsp;</p><p>Alright then, that is all about lunch box, thank you for visiting our blog and read it all out. Hope you guys always in save and if you this kind of content do not forget to hit like and share this content to your crash, friends, family and your be loving. have a great day😍</p>', '1663835853.png', 'lunch-box-nasi-kotak', '[\"7\"]', 'Lunch Box (Nasi Kotak)', 'This food usually used in the formal ceremony especially in Bali or around Indonesia.\"\"', '2022-09-22 01:37:33', '2022-09-22 01:47:33'),
(15, 'Nasi Jinggo (Balinese Package Rice)', '2022-09-22', '16:51', 'Ahaaja', '<p><strong>Nasi Jinggo (Balinese Package Rice)</strong></p><p>&nbsp;</p><p>Nasi Jinggo is one the common street food that we can face around Bali. Do you know what it is look like? Alright then, I would tell you what it is, and how to have it. First of all, this all content is only by my perspective, so when you have other argument, I am very welcome if you like put the comment! So, without further do, let get start it or check it out. Nasi jingo is a food, definitely. When you do not have time to serve your breakfast or your lunch or your dinner, it can be the best partner to help you out from the problem. Why it can be? You must be curious about it, is not it? So, because of it can be wherever as long as side of the street. The people like to sell it in the side of road especially, you can also get it in the beach, in the garden or somewhere the people like to do their activity. One of the most interesting things about nasi jingo is its spacy sauce chili. If you are western maybe you would bit do not like the spacy taste, but you have to try, I guarantee you will like it. The packaging of it commonly uses a banana leaf of paper oil. I prefer to get it with banana leaf because it is organic and healthier, and also eco-friendly, but still you cannot the throw trash anywhere, put it in the right order to keep our environment clean and healthy.&nbsp;</p><p>&nbsp;</p><p>In the beach you usually enjoy the sunset, with your friends, girl or boy friend or your family. If you would like eat something for all the members and do not have a lot of budgets, Nasi Jinggo can be safe your day. It is not cost a lot of money to have one peace, it is only five thousand rupiah. The beautiful sunset with surrounding by our love is the heaven in the world, for me. In Nasi Jinggo contain a lot of things such as rice of course, meet that usually uses chicken but in Bali also provide fork, beef and fish, it also has mix vegetable, and do not forget the spacy sauce. &nbsp;Nasi jingo is not too or too bigger, it is enough for you that want to keep your body fit, and it is not will make you fat, because of it contain a lot of different type of nutrition, including carb, protein, mineral and others. So, if you have no budget and want to have a good food or authentic food from Indonesia or Bali nasi Jinggo is yours. Because it contains a sauce, it will not be longer to keep, so you have to eat it no more than 5 hours after you bought it.&nbsp;</p><p>&nbsp;</p><p>Alright then, that is all about lunch box, thank you for visiting our blog and read it all out. Hope you guys always in save and if you this kind of content do not forget to hit like and share this content to your crash, friends, family and your be loving. have a great day😍</p>', '1663836702.png', 'nasi-jinggo-balinese-package-rice', '[\"7\"]', 'Nasi Jinggo (Balinese Package Rice), Bali, Food, Balinese food, traditional food from Bali', 'Nasi Jinggo is one the common street food that we can face around Bali.\"', '2022-09-22 01:51:42', '2022-09-22 01:55:03');
INSERT INTO `blog_posts` (`id`, `title`, `date`, `time`, `author`, `description`, `image`, `slug`, `categories`, `meta_keyword`, `meta_description`, `created_at`, `updated_at`) VALUES
(16, 'Formal vs Informal Words dan terjemahan dalam bahasa Indonesia', '2022-10-04', '21:13', 'Ahaaja', '<p>Hi Ahasiya apakabar, kembali lagi sama admin. Hari ini kita akan membahas kata-kata yang bikin kamu terdengar jago berbahasa Inggris. Nah dalam sebuah Bahasa pastinya memiliki bentuk baku sesuai dengan pedoman Bahasa masing-masing. Kata-kata yang baku sendiri sangat dipengaruhi oleh budaya dari Bahasa itu digunakan. Seperti dalam pengguanaan Bahasa Indonesia pada kata aku, gue itu adalah bentuk yang kurang baku, namun bentuk bakunya adalah saya, begitu juga untuk penggunaan kata kamu juga kurang baku, dimana kata bakunya adalah anda.</p><p>&nbsp;</p><p>Berikut admin sudah merangkung beberapa kata baku yang bisa membuat kamu terdengar seperti orang yang jago dalam menggunakan Bahasa Inggris.</p><p>&nbsp;</p><p><strong>Kata Kerja (</strong><i><strong>Verbs</strong></i><strong>) – Informal &amp; Formal</strong></p><p>&nbsp;</p><figure class=\"table\"><table><tbody><tr><td><strong>Informal</strong></td><td><strong>Formal</strong></td><td><strong>Terjemahan</strong></td></tr><tr><td>say sorry</td><td>apologize, apologise</td><td>Maaf</td></tr><tr><td>go up</td><td>increase</td><td>Menambahkan</td></tr><tr><td>go down</td><td>decrease</td><td>Mengurangi</td></tr><tr><td>set up</td><td>establish</td><td>Menciptakan</td></tr><tr><td>look at</td><td>examine</td><td>Memeriksa</td></tr><tr><td>blow up</td><td>explode</td><td>Meledak</td></tr><tr><td>find out</td><td>discover</td><td>Menemukan</td></tr><tr><td>bring about</td><td>cause</td><td>Menyebabkan</td></tr><tr><td>put off</td><td>postpone, delay</td><td>Menunda</td></tr><tr><td>rack up</td><td>accumulate</td><td>Mengumpulkan</td></tr><tr><td>make up</td><td>fabricate</td><td>Mengarang</td></tr><tr><td>stand for</td><td>represent</td><td>Mewakili</td></tr><tr><td>find out</td><td>discover, ascertain</td><td>Menemukan</td></tr><tr><td>leave out</td><td>omit</td><td>Menghilangkan</td></tr><tr><td>point out</td><td>indicate</td><td>Menunjukan&nbsp;</td></tr><tr><td>go against</td><td>oppose</td><td>Melawan</td></tr><tr><td>get in touch with</td><td>contact</td><td>Menghubungi</td></tr><tr><td>It’s about</td><td>It concerns, It’s in regards to</td><td>Menyangkut</td></tr><tr><td>need to</td><td>required</td><td>Membutuhkan</td></tr><tr><td>think about</td><td>consider</td><td>Meanggap</td></tr><tr><td>get</td><td>obtain</td><td>Mendapatkan</td></tr><tr><td>put up</td><td>tolerate</td><td>Mentolerir</td></tr><tr><td>deal with</td><td>handle</td><td>Menangani</td></tr><tr><td>seem</td><td>appear</td><td>Memunculkan</td></tr><tr><td>show</td><td>demonstrate, illustrate, portray</td><td>Menunjukan</td></tr><tr><td>start</td><td>commence</td><td>Memulai</td></tr><tr><td>keep</td><td>retain</td><td>Menjaga</td></tr><tr><td>free</td><td>release</td><td>Melepaskan</td></tr><tr><td>get on someone’s nerves</td><td>bother</td><td>Menggangu</td></tr><tr><td>ring up</td><td>call</td><td>Menghubungi</td></tr><tr><td>show up</td><td>arrive</td><td>Datang</td></tr><tr><td>let</td><td>permit</td><td>Mengizinkan</td></tr><tr><td>fill in</td><td>substitute, inform</td><td>Mengganti</td></tr><tr><td>block</td><td>undermine</td><td>Merusak</td></tr><tr><td>give the go ahead, greenlight</td><td>authorize, authorise</td><td>Megotorisasi</td></tr></tbody></table></figure><p>&nbsp;</p><p>&nbsp;</p><p><i><strong>Transitions</strong></i><strong> – Informal &amp; Formal</strong></p><p>&nbsp;</p><figure class=\"table\"><table><tbody><tr><td><strong>Informal</strong></td><td><strong>Formal</strong></td><td><strong>Terjemahan</strong></td></tr><tr><td>Anyways</td><td>Nevertheless</td><td>Tetapi</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>Plus/Also</td><td>Moreover/ Furthermore</td><td>Selanjutnya</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>But</td><td>However</td><td>Tetapi</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>So</td><td>Therefore/Thus</td><td>Jadi/ oleh karena</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>Also</td><td>In addition, Additionally</td><td>Juga</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>ASAP</td><td>as soon as possible/at your earliest convenience</td><td>Secepatnya</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>Okay, OK</td><td>acceptable</td><td>Baik/ iya</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>In the meantime</td><td>In the interim</td><td>Sementara</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>I think</td><td>In my opinion,</td><td>Menurut saya</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>In the end,</td><td>Finally</td><td>Akhirnya</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>To sum up</td><td>In conclusion,</td><td>Kesimpulannya</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>In a nutshell/Basically</td><td>To summarize,</td><td>Merangkum</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>Anyway,</td><td>Notwithstanding</td><td>Meskipun</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>All right</td><td>Acceptable</td><td>Baiklah</td></tr></tbody></table></figure><p>&nbsp;</p><p>&nbsp;</p><p><i><strong>Emphasis Words</strong></i><strong> (Kata-kata untuk menekankan) – Informal &amp; Formal</strong></p><p>&nbsp;</p><figure class=\"table\"><table><tbody><tr><td><strong>Informal</strong></td><td><strong>Formal</strong></td><td><strong>Terjemahan</strong></td></tr><tr><td>lots of/ a lot of</td><td>much, many</td><td>Banyak</td></tr><tr><td>tons of, heaps of</td><td>large quantities of, a number of</td><td>Sejumlah</td></tr><tr><td>totally</td><td>completely, strongly</td><td>Sepenuhnya</td></tr><tr><td>really, very</td><td>definitely</td><td>Sungguh</td></tr></tbody></table></figure><p>&nbsp;</p><p><br><strong>Slang – Informal &amp; Formal</strong></p><figure class=\"table\"><table><tbody><tr><td><strong>Informal</strong></td><td><strong>Formal</strong></td><td><strong>Terjemahan</strong></td></tr><tr><td>kids</td><td>children</td><td>Anak-anak</td></tr><tr><td>bad</td><td>negative</td><td>Buruk</td></tr><tr><td>good</td><td>positive</td><td>Baik</td></tr><tr><td>really big</td><td>considerable</td><td>Cukup</td></tr><tr><td>right</td><td>correct</td><td>Benar</td></tr><tr><td>wrong</td><td>incorrect</td><td>Salah</td></tr><tr><td>smart</td><td>intelligent</td><td>Pintar</td></tr><tr><td>cheap</td><td>inexpensive</td><td>Murah</td></tr><tr><td>loaded</td><td>rich</td><td>Kaya</td></tr></tbody></table></figure><p>&nbsp;</p><p>Nah itu tadi informasi kata-kata yang bisa kita gunakan agar bisa terdengar seperti seorang <i>native speaker</i>. Semoga materi kali ini bermanfaat, jika kalian suka jangan lupa like, komen dan share postingan ini. <i>Have a great day</i>!!</p>', '1664889336.png', 'formal-vs-informal-words-dan-terjemahan-dalam-bahasa-indonesia', '[\"9\"]', 'Formal vs Informal Words dan terjemahan dalam bahasa Indonesia', 'Formal vs Informal Words dan terjemahan dalam bahasa Indonesia', '2022-10-04 06:15:36', '2022-10-04 06:15:36'),
(17, 'World Teacher Day ~ Hari Guru Sedunia', '2022-10-06', '20:54', 'Ahaaja', '<p>Hi Ahasiya apa kabar semoga selalu sehat, dan bisa terus mengunjungi blog.ahaaja.com.</p><p>Admin percaya setiap hari adalaha hari yang istimewa, namun hari ini begitu spesial karena hari ini Rabu, 5 Oktober 2022 adalah hari perayaan guru sedunia.</p><p>Hari Guru Sedunia diperingati setiap tanggal 5 Oktober sejak tahun 1994. Tujuan diperingatinya hari ini adalah untuk memberikan dukungan kepada para guru di seluruh dunia dan meyakinkan mereka bahwa keberlangsungan generasi pada masa depan ditentukan oleh guru.</p><p>Menurut UNESCO, Hari Guru Sedunia mewakili sebuah kepedulian, pemahaman, dan apresiasi yang ditampilkan demi peran vital guru, yaitu mengajarkan ilmu pengetahuan dan membangun generasi.</p><p>Education International (EI), sebuah federasi yang mewakili pengajaran profesional di seluruh dunia, yakin bahwa Hari Guru Sedunia harus dikenal dan dirayakan di seluruh dunia. EI juga percaya bahwa prinsip-prinsip Rekomendasi 1966 dan 1997 harus dipertimbangkan untuk diimplementasikan ke seluruh dunia.</p><p>Lebih dari seratus negara memperingati Hari Guru Sedunia. Dorongan bagi Education International dan 401 lebih anggotanya telah berkontribusi pada tersebarnya prinsip ini. Setiap tahun, EI melakukan kampanye kesadaran masyarakat untuk menerangkan kontribusi profesi pengajar.</p><p>Pentingnya kualitas pengajar sangat bergantung pada banyak aspek, salah satu nya adalah aspek sosial dan ekonomi. Dimana di Indonesia sendiri profesi guru masih dipandang sebagai profesi yang di perhitungkan apalagi yang sudah PNS. Namun disisi lain masih banyak guru swasta yang belum mendapat hak yang layak sesuai dengan beban pekerjaannya. Oleh karena itu penting memperhatikan kesejahteraan guru, untuk membangun kualitas SDM yang unggul, mandiri dan dapat bersaing baik di regional, nasional maupun internasional.</p><p>\"Murid yang hebat bisa membangun ribuan sekolah, namun guru yang hebat bisa menciptakan ribuan murid yang hebat\"<br>Selamat hari guru sedunia</p>', '1665061118.png', 'world-teacher-day-hari-guru-sedunia', '[\"9\"]', 'World Teacher Day ~ Hari Guru Sedunia', 'World Teacher Day ~ Hari Guru Sedunia yang dirayakan setiap 5 oktober', '2022-10-06 05:58:38', '2022-10-06 05:58:38'),
(18, 'Refresh your mind and feel nature ~ Gelar River', '2022-10-07', '12:30', 'Ahaaja', '<p><strong>Gelar Rivers&nbsp;</strong></p><p>Gelar River is the real main attraction, offering tranquility and natural beauty, visible hills with green valley’s wrapping around the natural atmosphere of the river with its clear water flow making tourists keep coming to this place. This place that is still beautiful looks untouched by human hands, especially indeed to the north of it, it can be seen that the protected forest is still green as a real water buffer. The clarity of the water tempts every visitor to feel its freshness. The existence of the Gelar River, which has clean and clear water, makes the scenery on the Red Bridge look so mesmerizing. This bridge is indeed the main access for the residents of Batuagung Village. This bridge can not only be passed by pedestrians. The wooden base at the bottom of the bridge, makes this bridge quite sturdy and quite spacious in size when used for motorcycle crossings.&nbsp;</p><p>&nbsp;</p><p>The location of The Gelar River is in Gelar Sari Hamlet, Batuagung Village, Jembrana District. To reach this place, visitors can go through two rural routes, namely passing through Batuagung Village and through the direction of the Kresna Jvara Sports Hall (GOR) in Sawe Rangsasa Hamlet. When taken from the highway, this tourist attraction is about 8 km away. The visitors who come often spend time relaxing and enjoying the scenery around. Moreover, the beautiful panorama that can be found on the Gelar River Bridge is not just a natural river. You will also find an area around the river in the form of a shady green area.</p><p>&nbsp;</p><p>The main activity that is often carried out by tourists when visiting the Gelar River Bridge is hunting for instagramable photos. There are many locations that you can choose as a photo spot. Visitors often choose to take pictures by posing on the bridge, while enjoying the panorama around. In addition to taking photos with the background of the Gelar River Red Bridge, you can also pose in the river area. Visitors who are young, often choose to take pictures in the river area while playing in the water.</p><p>&nbsp;</p><p>If you want, you can also take a bath and swim while in the Gelar River. So that vacation activities to The Degree River can feel maximum, make sure to bring a change of clothes. You don\'t have to worry about starvation when visiting this tourist destination in Jembrana. Not far from the Red Bridge of The Gelar River, you will find traditional stalls that provide various types of food. In addition, in the area there is already accommodation available if visitors want to immediately stay and enjoy the atmosphere of the degree in the morning.</p><p>So, what are you looking for? Let’s go to Gelar River to refresh your mind and feel the nature!!!</p><p>Have a great day&nbsp;✌</p>', '1665117217.png', 'refresh-your-mind-and-feel-nature-gelar-river', '[\"6\"]', 'Refresh your mind and feel nature ~ Gelar River', 'Refresh your mind and feel nature ~ Sungai River\"', '2022-10-06 21:33:37', '2022-10-06 22:13:22'),
(19, 'Ahaaja.com ~ Website Resmi dari Ahaaja', '2022-10-12', '19:21', 'Ahaaja', '<p><br>&nbsp;</p><p><strong>Ahaaja.com&nbsp; Website Resmi dari Startup Ahaaja</strong></p><p><br>&nbsp;</p><p>\"Your best partner for studying English \"</p><p><br>&nbsp;</p><p>Penguasaan skill bahasa Inggris sangat dibutuhkan baik untuk mencari beasiswa maupun persyaratan pekerjaan, namun belum ada yang bisa menjawab persoalan bagaimana menciptakan kualitas pembelajaran yang baik, dengan waktu dan tempat yang flexibel serta harga yang bisa dinikmati oleh semua kalangan.</p><p><br>&nbsp;</p><p><strong>Ahaaja.com</strong> hadir untuk menyelesaikan tantangan atau masalah tersebut dengan menghadirkan ekosistem belajar yang terintegrasi yang memudahkan pengguna untuk memahami dan mengaplikasikan materi di dalamnya.</p><p><br>&nbsp;</p><p>Dengan ekosistem belajar dengan berbagai fitur yang akan dikembangkan seperti&nbsp;<strong>Game</strong> yang interaktif yang berisi banyak topic category pembelajaran, fitur&nbsp;<strong>Class</strong> untuk melakukan pembelajar secara langsung oleh tutor baik secara online maupun offline, fitur&nbsp;<strong>Blog</strong> dan<strong> Podcast</strong> untuk meningkatkan skill reading dan listening dan juga event untuk menambah soft skill dari pengguna</p><p><br><br>&nbsp;</p><p>Jadi tunggu apa lagi yuk kunjungi website dibawah untuk menambah wawasan mengenai skill berbahasa Inggris</p><p><br>&nbsp;</p><p>https://www.ahaaja.com</p><p><br>&nbsp;</p><p>Untuk info lebih lanjut, dapat menghubungi:</p><p>☎085792021942 (Admin)</p><p>✉ info@ahaaja.com</p><p><br><br><br><br>&nbsp;</p>', '1665573755.png', 'ahaajacom-website-resmi-dari-ahaaja', '[\"11\"]', 'Ahaaja.com  Website Resmi dari Startup Ahaaja', '\"Your best partner for studying English \"\"', '2022-10-12 04:22:35', '2022-10-12 22:49:52'),
(20, '17 Cara Untuk Mengatakan Selamat Tinggal (Good bye) dalam Bahasa Inggris', '2022-10-13', '13:45', 'Ahaaja', '<p><strong>17 Cara Untuk Mengatakan Selamat Tinggal (Good bye) dalam Bahasa Inggris</strong></p><p>&nbsp;</p><p>Hi Ahasiya, bosen denger dan pake kata&nbsp;<i>good bye</i> atau bye setiap mau pergi atau berpisah ? tenang admin Ahaaja telah merangkum beberapa cara untuk mengatakan atau mengekspresikan salam kata untuk berpisah selain hanya menggunakan kata&nbsp;<i>“Good Bye”. So, without further ado, let’s check it out.&nbsp;</i></p><p><br>&nbsp;</p><p>Jadi ada beberapa cara yang sudah admin rangkum&nbsp; yang bisa kamu pakai ketika ingin mengungkapan kata selamat tinggal atau selamat jalan, sebagai berikut:</p><p><br>&nbsp;</p><p><strong>Berikut adalah contoh ungkapan dengan cara yang biasa atau informal:</strong></p><ol><li><i><strong>Bye</strong></i></li></ol><p>Kata ini adalah kata yang adalah standar kata dari “<i>Goodbye</i>”. Kata ini simple, pendek dan kita dapat mengucapkannya tentunya kepada semua orang. Kata ini cocok digunakan untuk teman, keluarga, dan juga teman bisnis.&nbsp;</p><ol><li><i><strong>Bye bye!</strong></i></li></ol><p>Kata ini biasanya digunakan atau diucapkan kepada orang yang tersayang atau anak-anak. Penggunaan kata ini tidak disarankan digunakan kepada orang yang baru dikenal atau partner bisnis.</p><ol><li><i><strong>See you later</strong></i></li></ol><p>Kata ini bisa digunakan atau diucapkan kepada siapa saja. Kata ini biasanya digunakan sebelum kata “<i>bye</i>”, namun kenapa masih ada kata bye karena kata ini sangat singkat dan tidak mengurangi makna, dimana kata “<i>you</i>” disini kita bisa ucapkan dengan pelapan “ya”.</p><ol><li><i><strong>I’ve got to get be going atau I must be going</strong></i></li></ol><p>Ungkapan ini bagus atau cocok digunakan ketika kamu ingin meninggal suatu kegiatan yang melibatkan orang banyak seperti kerja kelompok, main bareng dan lain sebagainya. Jika kamu menggunakan ungkapan ini, maka kamu juga secara tidak langsung memberi tahu orang yang kamu ajak bicara bahwa kamu akan mengatakan “<i>good bye”</i> atau selamat tinggal. Tergantung dengan situasi, biasanya jika menggunakan kata ini kamu harus memberikan sedikit penjelasan tentang kegiatan apa yang akan kamu lakukan.</p><ol><li><i><strong>Take it easy</strong></i></li></ol><p>Ungkapan ini adalah bentuk informal atau biasa dari kata “<i>Have a nice day</i>”. Umumnya ungkapan ini digunakan untuk menasihati atau menyarankan untuk tidak mengambil pekerjaan terlalu berat atau lama agar beristirahat, namun ungkapan ini juga bisa memiliki arti untuk menenangkan seseorang yang sedang kesal atau emosi</p><ol><li><i><strong>I am off</strong></i></li></ol><p>Ungkapan ini adalah bentuk informal dari kata “<i>goodbye</i>”, jadi ketika kamu mengatakan maka kamu secara tidak langsung kamu memberitahu bahwa kamu akan pergi atau mengatakan kata “<i>goodbye</i>”. Penggunaan ungkapan ini bisa seperti “<i>Anyway, I am off</i>”, dengan menggunakan ungkapan ini membuat orang yang kamu ajak bicara mengerti bahwa kamu memiliki sesuatu yang harus dikerjakan dan harus pergi.</p><p><br>&nbsp;</p><p><strong>Berikut adalah contoh ungkapan dengan cara yang formal atau baku:</strong></p><ol><li><i><strong>Goodbye</strong></i></li></ol><p>Kelihatannya agak aneh, namun ungkapan ini sangat jarang digunakan untuk mengungkapan perpisahan. Kedengarannya sangat formal dan biasanya di katakan kepada orang yang tidak akan bertemu kita lagi. Kata “<i>bye</i>“ sangat digunakan untuk segala jenis situasi baik formal maupun informal</p><ol><li><i><strong>Have a nice day atau have a good…</strong></i></li></ol><p>Ungkapan ini adalah ungkapan yang sangat sopan digunakan kepada orang orang yang baru kamu kenal. Kamu bisa pakai hampir semua kata benda setelah kata “good” tergantung dari situasi. Misalnya jika kamu ingin mengatakan kepada teman yang mau liburan kamu bisa bilang “<i>have a good holiday or vacation</i>”</p><ol><li><i><strong>I look forward to our next meeting&nbsp;</strong></i></li></ol><p>Ungkapan ini sangatlah formal dan cocok digunakan jika kamu ingin melanjutkan melakukan kegiatan dengan orang lain. Ungkapan ini memberitahu orang bahwa walaupun kamu mengatakan “<i>good bye</i>” atau selamat tinggal, namun kamu masih ingin tetap berkomunikasi dengan mereka.</p><ol><li><i><strong>Until….</strong></i></li></ol><p>Ungkapan ini sedikit kurang formal, namun kata ini bisa digunakan untuk menyatakan selamat tinggal jika kamu ingin bertemu lagi dilain waktu yang sudah ditentukan. Misalnya, kamu masih ada acara selama seminggu dan bisa bertemu lagi setelah 2 minggu lagi, kamu bisa bilang seperti ini “<i>we can talk later until next 2 week</i>”</p><p><br>&nbsp;</p><ol><li><i><strong>Take care</strong></i></li></ol><p>Ungkapan ini bisa digunakan pada saat formal maupun informal yang mengungkapkan rasa hangat atau senang kepada seseorang. Kata ini biasanya digunakan kepada orang yang sering kamu temui setiap harinya, karena jika kamu mendengar atau menggunakan kepada orang yang baru pertama kali kenal atau orang yang jarang di lihat, makna akan menjadi kamu tidak akan bertemu dalam waktu yang lama minimal 1 minggu kedepan.</p><ol><li><i><strong>It was nice to see you again atau it was nice seeing you&nbsp;</strong></i></li></ol><p>Ketika kamu bertemu dengan seseorang kamu biasanya bilang “It is nice to meet you”, namun ketika kamu ingin pergi kamu bisa bilang “it was nice to see you again”. Ungkapan ini biasanya digunakan kepada orang yang sudah kamu kenal, namun jika belum kenal bisa gunakan “it was nice meeting you”</p><ol><li><strong>Good night</strong></li></ol><p>Ungkapan formal ini bisa digunakan untuk menyatakan selamat tinggal atau&nbsp;<i>goodbye&nbsp;</i>pada malam hari ketika orang pulang ke rumah pada malam hari. Namun salam&nbsp;<i>good morning, good day</i> dan lain-lain juga adalah ungkapan yang serupa untuk menunjukan kapan waktu kegiatan, tetapi hanya&nbsp;<i>good night</i> yang bisa digunakan untuk menyatakan “<i>goodbye</i>”</p><p><br><br><br><br>&nbsp;</p><p><strong>Dengan menggunakan ungkapan kata&nbsp;</strong><i><strong>slang&nbsp;</strong></i><strong>;</strong></p><p><br>&nbsp;</p><p>Apa itu kata atau bahasa slang? Kata slang adalah tipe bahasa yang sangat tidak formal yang digunakan pada kondisi tertentu. Mari kita lihat beberapa ungkapan dari bahasa atau kata slang dalam mengungkapkan goodbye atau selamat tinggal:</p><ol><li><i><strong>Catch you later</strong></i></li></ol><p>Ungkapan ini adalah bentuk informal dari<i> see you later</i> yang biasanya digunakan oleh anak-anak muda yang sudah akrab atau sudah mengetahui satu sama lain atau bisa dibilang sahabat.</p><ol><li><i><strong>Peace out</strong></i></li></ol><p>Ungkapan ini adalah salah satu ungkapan populer di tahun 1990an dimana kedengaran sudah jadul. Jika kamu tidak mendengar ada teman yang menggunakan, disarankan untuk tidak menggunakan untuk diri sendiri.&nbsp;</p><ol><li><i><strong>I am out of here</strong></i></li></ol><p>Ungkapan ini menunjukan bahwa kamu senang telah melakukan kegiatan bersama dan ingin meninggalkan kegiatan. Ungkapan ini cocok untuk kamu saat berkomunikasi dengan teman yang sudah akrab.&nbsp;</p><ol><li><i><strong>I gotta jet, I gotta take off, I gotta hit the road ora I gotta head out</strong></i></li></ol><p>Ungkapan ini adalah kata slang dari&nbsp;<i>I’ve got to get going,</i> biasanya diuacapkan oleh anak remaja kepada teman atau sahabat.</p><p><br>&nbsp;</p><p>Jadi Ahasiya cara mengungkapkan kata “<i>good bye</i>” atau selamat jalan atau selamat tinggal dalam bahasa Inggris sangat simpel dan memiliki banyak variasi tergantung dengan kontek dan situasi pembicaraan. Untuk mengetahui lebih banyak tentang ungkapan tersebut kita bisa mendengar atau membaca berita atau lirik lagu atau menonton film dengan menggunakan bahasa Inggris</p><p><br>&nbsp;</p><p>Okey, Ahasiya semoga artikel kali ini membantu kamu dalam memahami bahasa Inggris khususnya dalam menggunakan ungkapan atau untuk mengekspresikan kata selamat tinggal atau goodbye</p><p><br><br>&nbsp;</p>', '1665640081.png', '17-cara-untuk-mengatakan-selamat-tinggal-good-bye-dalam-bahasa-inggris', '[\"9\"]', '17 Cara Untuk Mengatakan Selamat Tinggal (Good bye) dalam Bahasa Inggris', 'Hi Ahasiya, bosen denger dan pake kata good bye atau bye setiap mau pergi atau berpisah ? tenang admin Ahaaja telah merangkum beberapa cara untuk mengatakan atau mengekspresikan salam kata untuk berpisah selain hanya menggunakan kata “Good Bye”.\"\"', '2022-10-12 22:48:01', '2022-10-14 22:37:09'),
(21, 'Expressions of Greeting and Receiving Guest ~ Memberi salam dan menerima bule (tamu)', '2022-10-17', '13:49', 'Ahaaja', '<p><i><strong>Expressions of Greeting and Receiving Guest&nbsp;</strong></i><strong>~ Memberi salam dan menerima bule (tamu)&nbsp;</strong></p><p>&nbsp;</p><p>Hi, Ahasiya sudah siap untuk belajar hari ini? Ayok jangan bermalas-malasan mari kita belajar untuk masa depan yang lebih baik!!!</p><p><br><i>Well</i>, hari ini kita akan membahas tentang&nbsp;<i>hospitality&nbsp;</i>(keramahtamahan). Dimana kalian biasanya menemukan hal tersebut? Banyak bilang biasanya di tempat pariwisata. Yes!! Benar, namun sebaiknya hal tersebut bisa dilakukan dimana saja, kapan saja dan dengan siapa saja. Kali ini admin Ahaaja sudah merangkum beberapa&nbsp;<i>expression&nbsp;</i>(ungkapan) dalam bahasa Inggris yang sering kita dengar atau lihat jika kita menginap atau akan menginap ke sebuah hotel. Jadi dengan mengetahui expression tersebut, nanti kamu yang mau kerja di perhotelan bisa lebih mudah memahami dan mengaplikasikannya dengan para tamu (bule) yang datang.</p><p>Jadi, materi kita akan bagi menjadi beberapa bahasan yaitu ada&nbsp;<i>greeting&nbsp;</i>(salam),&nbsp;<i>introduction&nbsp;</i>(perkenalan),&nbsp;<i>asking about well being</i> (menanyakan kabar),&nbsp;<i>farewells&nbsp;</i>(salam perpisahan),&nbsp;<i>chit chatting</i> (mengobrol).</p><p>&nbsp;</p><ol><li><strong>Greeting (salam)</strong></li></ol><p><i>“First impressions last a lifetime”</i>, istilah ini sangat sering kita dengan namun arti kata ini sebenarnya? Jadi secara harfiah artinya kesan pertama bertahan seumur hidup, atau bisa dikatakan kesan pertama sangat membekas. Begitu pula di hotel setidaknya sampai tamu check out, jadi penting untuk membuat kesan pertama yang baik. Ada banyak ungkapan yang bisa digunakan saat pertama kali menyapa orang. Beberapa sangat formal dan sesuai untuk menyambut tamu dan beberapa lebih informal dan hanya boleh digunakan dengan teman atau rekan kerja. Jelas, karyawan industri perhotelan harus menggunakan ekspresi yang lebih formal. Berikut adalah beberapa ungkapan (<i>expression</i>) untuk menyambut tamu (bule):</p><p><br>&nbsp;</p><ol><li><i><strong>Formal Expressions&nbsp;</strong></i></li></ol><ul><li><i>Good morning (sir/ma\'am)&nbsp;</i></li><li><i>Good afternoon (sir/ma\'am).&nbsp;</i></li><li><i>Welcome to (name of hotel/restaurant, etc)&nbsp;</i></li><li><i>Good evening (sir/ma\'am)&nbsp;</i></li><li><i>How are you this morning (afternoon, evening, today)?&nbsp;</i></li></ul><ol><li><i><strong>Less Formal Expressions</strong>&nbsp;</i></li></ol><ul><li><i>Hello Hi What\'s up?&nbsp;</i></li><li><i>How\'s it going?</i></li></ul><p><br>&nbsp;</p><p>Habis salam, lalu apa? tentu saja, setelah salam, dialog harus dilanjutkan, dan apa yang dikatakan kemudian tergantung pada situasi. Saat berinteraksi dengan tamu hotel itu berlanjut interaksi biasanya melibatkan penentuan apa yang diinginkan atau dibutuhkan tamu. Berikut adalah beberapa ungkapan&nbsp;<i>standard&nbsp;</i>yang sering digunakan di perhotelan:</p><ul><li><i>How can I help you today ma’am (sir)?&nbsp;</i></li><li><i>Can I be of assistance?&nbsp;</i></li><li><i>How may I assist you?&nbsp;</i></li><li><i>May I assist you with anything?&nbsp;</i></li><li><i>What can I do for you today?&nbsp;</i></li></ul><p><br><br>&nbsp;</p><ol><li><i><strong>Introduction&nbsp;</strong></i></li></ol><p><br>&nbsp;</p><p>Dalam situasi sosial yang normal, untuk melanjutkan interaksi setelah salam, adalah kebiasaan bagi orang untuk memperkenalkan satu sama lain dengan memberikan nama mereka (tentu saja dengan asumsi mereka bertemu untuk pertama kalinya). Tapi ingat, itu tidak semua karyawan hotel biasanya akan bertukar nama dengan seorang tamu. Misalnya, seorang&nbsp;<i>bellman&nbsp;</i>biasanya tidak memberi tahu tamu namanya, tetapi seorang pelayan di restoran mungkin, sebagai bagian dari salam restoran standar (seperti \"Selamat datang di Rumah Daging Sapi. Nama saya Rebecca dan saya akan pelayan Anda malam ini\"). Perwakilan layanan tamu yang berinteraksi dengan tamu VIP mungkin lebih cenderung untuk membuat pengenalan formal sebagai bagian dari layanan tambahan yang diberikan VIP. Berikut adalah expression (ungkapan) yang kalian bisa gunakan untuk memperkenalkan diri:</p><ul><li><i>Hello I’m …(Ketut Pasek)&nbsp;</i></li><li><i>What’s your name? My name is…(Bob Sindu)&nbsp;</i></li><li><i>It’s a pleasure to meet you. Nice to meet you, too.&nbsp;</i></li><li><i>Allow me to introduce myself.&nbsp;</i></li><li><i>I would like to introduce myself.&nbsp;</i></li><li><i>This is … (Mrs. Putu)&nbsp;</i></li><li><i>I would like to introduce… (my boss, Mr. Jayana).&nbsp;</i></li><li><i>Please allow me to introduce ... (my friend Opang).</i>&nbsp;</li></ul><p><br><br>&nbsp;</p><ol><li><i><strong>Asking about well being</strong></i></li></ol><p><br>&nbsp;</p><p>Setelah perkenalan, wajar saja untuk melanjutkan percakapan dengan cara tertentu. Banyak orang bertanya tentang kesehatan kamu, terutama teman, kenalan, dan rekan kerja. Beberapa ekspresi dapat digunakan untuk ini, dan tanggapan terhadap pertanyaan ini bergantung pada bagaimana perasaan kamu sebenarnya.</p><p><br><br>&nbsp;</p><figure class=\"table\"><table><tbody><tr><td><i><strong>Questions</strong></i></td><td><i><strong>Answers</strong></i></td></tr><tr><td colspan=\"2\"><i><strong>IF GOOD</strong></i></td></tr><tr><td><i>How are you?&nbsp;</i></td><td><i>Great.</i></td></tr><tr><td><i>How’s it going?</i></td><td><i>Couldn\'t be better&nbsp;</i></td></tr><tr><td><i>How has your day been?</i></td><td><i>Fantastic</i></td></tr><tr><td colspan=\"2\"><i><strong>IF SO-SO</strong></i></td></tr><tr><td><i>How have you been?</i></td><td><i>Could be worse</i></td></tr><tr><td><i>How’s the family</i></td><td><i>Fair to middling</i></td></tr><tr><td><i>Did have a good day</i></td><td><i>I can’t complain</i></td></tr><tr><td colspan=\"2\"><i><strong>IF BAD</strong></i></td></tr><tr><td><i>How do you feel?</i></td><td><i>Not too good</i></td></tr><tr><td><i>How was your day?</i></td><td><i>I’ve had better days</i></td></tr><tr><td><i>Have you had a good day?</i></td><td><i>No it was lousy</i></td></tr></tbody></table></figure><p>&nbsp;</p><ol><li><i><strong>Farewells</strong></i></li></ol><p>&nbsp;</p><p>Setelah salam, perkenalan, dan percakapan sopan, orang-orang akan berpisah. Ada banyak ungkapan yang bisa digunakan saat memberikan perpisahan. Beberapa lebih formal daripada yang lain. Jelas ekspresi yang lebih formal lebih tepat ketika berinteraksi dengan tamu. Berikut adalah ungkapan yang sering digunakan ketika perpisahan;</p><p><br>&nbsp;</p><ol><li><i><strong>More Formal expressions</strong>&nbsp;</i></li></ol><ul><li><i>Goodbye Thank you for coming.&nbsp;</i></li><li><i>Have a pleasant day.&nbsp;</i></li><li><i>Goodbye, please come again.&nbsp;</i></li><li><i>Goodbye, I hope to see you again.</i>&nbsp;</li><li>&nbsp;</li></ul><ol><li><i><strong>Less Formal&nbsp;</strong></i></li></ol><ul><li><i>Goodbyes See you later (soon)&nbsp;</i></li><li><i>So long&nbsp;</i></li><li><i>Good bye (bye)&nbsp;</i></li><li><i>Please come again</i></li><li><i>I have to run I have to be going now&nbsp;</i></li><li><i>Catch you later See you again&nbsp;&nbsp;</i><br>&nbsp;</li></ul><ol><li><i><strong>Chit Chatting</strong></i></li></ol><p>Oke, kamu sudah menyapa para tamu, menyelesaikan urusan yang diperlukan (seperti&nbsp;<i>check in&nbsp;</i>tamu, meminta mereka duduk sementara meja mereka sedang disiapkan di restoran, atau memberi mereka pesanan di bar). Sekarang apa? Orang-orang, sebagai makhluk sosial, sering kali merasa tidak nyaman hanya berdiri di sekitar dan tidak berinteraksi dengan cara apa pun. Mari kita hadapi itu; hampir tidak ada orang yang suka diabaikan. Tapi bagaimana Anda melanjutkan interaksi sosial selama ini? momen canggung? Chit chat adalah solusinya.&nbsp;</p><p><i>Chit chatting</i> (mengobrol) adalah bentuk komunikasi yang alami dan sangat umum antara orang asing. Dengan seseorang yang kamu kenal, melanjutkan percakapan itu mudah. Kamu tentu akan membicarakan hal-hal yang sama-sama kalian berdua miliki, seperti pekerjaan, teman lain, olahraga, dll.&nbsp;</p><p>Dengan orang asing, seperti tamu, obrolan ringan menjadi sedikit lebih sulit. Lebih sulit untuk menemukan topik umum yang menarik. Juga beberapa topik tidak boleh ditanyakan karena akan terlalu pribadi. Topik-topik tersebut meliputi:&nbsp;</p><ul><li>Apakah Anda sudah menikah?</li><li>Berapa banyak gaji dihasilkan?&nbsp;</li><li>Apa agama atau afiliasi politik?&nbsp;</li></ul><p>Jenis topik ini terlalu pribadi dan harus dihindari, kecuali tentu saja tamu (orang) asing membawa mereka lebih dulu mengatakannya. Meski begitu, waspadalah. Jadi apa yang bisa Anda bicarakan? Di bawah ini adalah beberapa saran yang aman;</p><ul><li><i>Is this your first trip to (....Bali or Indonesia)?&nbsp;</i></li><li><i>Are you enjoying your stay so far?&nbsp;</i></li><li><i>How do you like the weather (...on the island)?&nbsp;</i></li><li><i>What country are you from?&nbsp;</i></li><li><i>What’s the weather like in your country?&nbsp;</i></li><li><i>What have you done so far since being here?&nbsp;</i></li><li><i>Are you getting a lot of good photographs?&nbsp;</i></li><li><i>Have you been to any interesting places since you arrived?&nbsp;</i></li><li><i>Have you had any local dishes that you particularly like?&nbsp;</i></li><li><i>Have you purchased many souvenirs yet?&nbsp;</i></li><li><i>Have you been to many (...beaches on the island)?&nbsp;</i></li><li><i>Which was your favorite?&nbsp;</i></li><li><i>How was the flight here? (for a guest first arriving, but don\'t ask this if they have been in the hotel for a few days)&nbsp;</i></li></ul><p><br>Nah itu tadi ungkapan atau expression yang bisa kalian gunakan ketika menerima tamu sampai. Semoga artikel kali ini memberikan wawasan yang lebih khususnya untuk kamu yang ingin bekerja di dunia perhotelan, jika kalian suka dengan konten seperti ini admin akan sering bahasa materi seperti ini, terimakasih sudah berkunjung&nbsp;<i>have a good day&nbsp;</i></p><p><br>&nbsp;</p>', '1665985928.png', 'expressions-of-greeting-and-receiving-guest-memberi-salam-dan-menerima-bule-tamu', '[\"9\"]', 'Expressions, of, Greeting, and Receiving, Guest, ~ Memberi salam dan menerima bule (tamu)', 'Well, hari ini kita akan membahas tentang hospitality (keramahtamahan). Dimana kalian biasanya menemukan hal tersebut? Banyak bilang biasanya di tempat pariwisata.\"\"', '2022-10-16 22:52:08', '2023-05-17 09:12:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_posts_visitors`
--

CREATE TABLE `blog_posts_visitors` (
  `id_blog_posts_visitors` int(11) NOT NULL,
  `id_users` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `ip_address` varchar(255) NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `blog_posts_visitors`
--

INSERT INTO `blog_posts_visitors` (`id_blog_posts_visitors`, `id_users`, `username`, `ip_address`, `created_at`, `updated_at`) VALUES
(1, 19, NULL, '127.0.0.1', '2022-09-11', '2022-09-11'),
(2, 21, NULL, '127.0.0.1', '2022-09-11', '2022-09-11'),
(3, NULL, 'uknown 3', '127.0.0.1', '2022-10-08', '2022-10-08'),
(41, NULL, 'uknown 1', '120.188.86.20', '2022-09-05', '2022-09-05'),
(42, NULL, 'uknown 42', '120.188.86.20', '2022-09-05', '2022-09-05'),
(43, NULL, 'uknown 43', '120.188.86.2', '2022-09-05', '2022-09-05'),
(44, NULL, 'uknown 44', '120.188.86.123', '2022-09-06', '2022-09-06'),
(45, NULL, 'uknown 45', '120.188.86.123', '2022-09-06', '2022-09-06'),
(46, NULL, 'uknown 46', '114.4.222.170', '2022-09-06', '2022-09-06'),
(47, NULL, 'uknown 47', '114.4.222.170', '2022-09-06', '2022-09-06'),
(48, NULL, 'uknown 48', '114.4.222.170', '2022-09-06', '2022-09-06'),
(49, NULL, 'uknown 49', '114.4.222.170', '2022-09-07', '2022-09-07'),
(50, NULL, 'uknown 50', '120.188.80.189', '2022-09-08', '2022-09-08'),
(51, NULL, 'uknown 51', '120.188.80.189', '2022-09-08', '2022-09-08'),
(52, 19, NULL, '2001:448a:5063:1a75:256a:55b7:12bb:edf6', '2022-09-09', '2022-09-09'),
(53, NULL, 'uknown 53', '120.188.77.232', '2022-09-10', '2022-09-10'),
(54, NULL, 'uknown 54', '114.4.223.160', '2022-09-10', '2022-09-10'),
(55, NULL, 'uknown 55', '120.188.75.70', '2022-09-11', '2022-09-11'),
(56, 22, NULL, '2001:448a:5063:1a75:99b6:7714:87f7:e7f3', '2022-09-11', '2022-09-11'),
(57, NULL, 'uknown 57', '120.188.74.3', '2022-09-16', '2022-09-16'),
(58, 23, NULL, '114.5.102.151', '2022-09-17', '2022-09-17'),
(59, NULL, 'uknown 59', '114.5.102.151', '2022-09-17', '2022-09-17'),
(60, NULL, 'uknown 60', '114.5.105.253', '2022-09-19', '2022-09-19'),
(61, NULL, 'uknown 61', '114.4.220.126', '2022-09-21', '2022-09-21'),
(62, NULL, 'uknown 62', '103.179.73.248', '2022-09-22', '2022-09-22'),
(63, NULL, 'uknown 63', '2001:448a:5068:22d0:3910:4524:7d1d:56f6', '2022-09-24', '2022-09-24'),
(64, NULL, 'uknown 64', '182.1.74.131', '2022-10-08', '2022-10-08'),
(65, NULL, 'uknown 65', '182.1.114.85', '2022-10-09', '2022-10-09'),
(66, NULL, 'uknown 66', '2001:448a:5062:3a9c:bca4:dad:b8e2:bcf0', '2022-10-10', '2022-10-10'),
(67, NULL, 'uknown 67', '103.10.67.150', '2022-10-15', '2022-10-15'),
(68, NULL, 'uknown 68', '182.1.115.181', '2022-10-15', '2022-10-15'),
(69, NULL, 'uknown 69', '127.0.0.1', '2022-10-22', '2022-10-22'),
(70, NULL, 'uknown 70', '127.0.0.1', '2022-11-01', '2022-11-01'),
(71, 67, NULL, '127.0.0.1', '2023-05-16', '2023-05-16'),
(72, NULL, 'uknown 72', '127.0.0.1', '2023-05-17', '2023-05-17'),
(73, NULL, 'uknown 73', '127.0.0.1', '2023-05-17', '2023-05-17'),
(74, NULL, 'uknown 74', '127.0.0.1', '2023-05-18', '2023-05-18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_posts_visitors_log`
--

CREATE TABLE `blog_posts_visitors_log` (
  `id_blog_posts_visitors_log` int(11) NOT NULL,
  `id_blog_posts_visitors` int(11) NOT NULL,
  `id_posts` varchar(255) NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `blog_posts_visitors_log`
--

INSERT INTO `blog_posts_visitors_log` (`id_blog_posts_visitors_log`, `id_blog_posts_visitors`, `id_posts`, `created_at`, `updated_at`) VALUES
(1, 1, '1', '2022-09-11', '2022-09-11'),
(2, 2, '1', '2022-09-11', '2022-09-11'),
(3, 2, '1', '2022-09-30', '2022-09-30'),
(4, 2, '1', '2022-10-08', '2022-10-08'),
(5, 2, '1', '2022-10-08', '2022-10-08'),
(6, 2, '1', '2022-10-08', '2022-10-08'),
(7, 3, '1', '2022-10-08', '2022-10-08'),
(8, 3, '1', '2022-10-08', '2022-10-08'),
(9, 3, '1', '2022-10-08', '2022-10-08'),
(10, 3, '1', '2022-10-08', '2022-10-08'),
(11, 3, '1', '2022-10-08', '2022-10-08'),
(12, 3, '3', '2022-10-08', '2022-10-08'),
(13, 3, '3', '2022-10-08', '2022-10-08'),
(14, 3, '1', '2022-10-08', '2022-10-08'),
(15, 3, '1', '2022-10-08', '2022-10-08'),
(16, 1, '1', '2022-10-08', '2022-10-08'),
(17, 1, '1', '2022-10-08', '2022-10-08'),
(18, 1, '1', '2022-10-08', '2022-10-08'),
(19, 1, '1', '2022-10-08', '2022-10-08'),
(20, 1, '4', '2022-10-08', '2022-10-08'),
(21, 1, '4', '2022-10-08', '2022-10-08'),
(22, 1, '4', '2022-10-08', '2022-10-08'),
(23, 1, '4', '2022-10-09', '2022-10-09'),
(468, 42, '6', '2022-09-05', '2022-09-05'),
(469, 42, '6', '2022-09-05', '2022-09-05'),
(470, 42, '6', '2022-09-05', '2022-09-05'),
(471, 42, '6', '2022-09-05', '2022-09-05'),
(472, 43, '6', '2022-09-06', '2022-09-06'),
(473, 43, '6', '2022-09-06', '2022-09-06'),
(474, 43, '6', '2022-09-06', '2022-09-06'),
(475, 43, '6', '2022-09-06', '2022-09-06'),
(476, 43, '6', '2022-09-06', '2022-09-06'),
(477, 42, '7', '2022-09-06', '2022-09-06'),
(478, 42, '7', '2022-09-06', '2022-09-06'),
(479, 42, '7', '2022-09-06', '2022-09-06'),
(480, 49, '6', '2022-09-07', '2022-09-07'),
(481, 49, '6', '2022-09-07', '2022-09-07'),
(482, 49, '6', '2022-09-07', '2022-09-07'),
(483, 49, '6', '2022-09-07', '2022-09-07'),
(484, 53, '7', '2022-09-10', '2022-09-10'),
(485, 54, '7', '2022-09-10', '2022-09-10'),
(486, 53, '8', '2022-09-10', '2022-09-10'),
(487, 53, '8', '2022-09-10', '2022-09-10'),
(488, 53, '8', '2022-09-10', '2022-09-10'),
(489, 53, '8', '2022-09-10', '2022-09-10'),
(490, 53, '8', '2022-09-10', '2022-09-10'),
(491, 53, '8', '2022-09-10', '2022-09-10'),
(492, 53, '8', '2022-09-10', '2022-09-10'),
(493, 53, '8', '2022-09-10', '2022-09-10'),
(494, 52, '6', '2022-09-10', '2022-09-10'),
(495, 52, '6', '2022-09-10', '2022-09-10'),
(496, 52, '6', '2022-09-10', '2022-09-10'),
(497, 52, '6', '2022-09-10', '2022-09-10'),
(498, 52, '6', '2022-09-10', '2022-09-10'),
(499, 52, '6', '2022-09-10', '2022-09-10'),
(500, 52, '6', '2022-09-10', '2022-09-10'),
(501, 52, '6', '2022-09-10', '2022-09-10'),
(502, 52, '6', '2022-09-10', '2022-09-10'),
(503, 52, '6', '2022-09-10', '2022-09-10'),
(504, 52, '6', '2022-09-10', '2022-09-10'),
(505, 52, '6', '2022-09-10', '2022-09-10'),
(506, 52, '6', '2022-09-10', '2022-09-10'),
(507, 53, '6', '2022-09-11', '2022-09-11'),
(508, 53, '7', '2022-09-11', '2022-09-11'),
(509, 53, '7', '2022-09-11', '2022-09-11'),
(510, 53, '8', '2022-09-11', '2022-09-11'),
(511, 55, '6', '2022-09-11', '2022-09-11'),
(512, 55, '6', '2022-09-11', '2022-09-11'),
(513, 52, '7', '2022-09-11', '2022-09-11'),
(514, 52, '7', '2022-09-11', '2022-09-11'),
(515, 52, '7', '2022-09-11', '2022-09-11'),
(516, 52, '7', '2022-09-11', '2022-09-11'),
(517, 52, '7', '2022-09-11', '2022-09-11'),
(518, 52, '7', '2022-09-11', '2022-09-11'),
(519, 52, '7', '2022-09-11', '2022-09-11'),
(520, 52, '7', '2022-09-11', '2022-09-11'),
(521, 52, '6', '2022-09-11', '2022-09-11'),
(522, 55, '6', '2022-09-11', '2022-09-11'),
(523, 52, '6', '2022-09-11', '2022-09-11'),
(524, 52, '7', '2022-09-11', '2022-09-11'),
(525, 52, '6', '2022-09-11', '2022-09-11'),
(526, 52, '6', '2022-09-11', '2022-09-11'),
(527, 52, '6', '2022-09-11', '2022-09-11'),
(528, 52, '6', '2022-09-11', '2022-09-11'),
(529, 56, '6', '2022-09-11', '2022-09-11'),
(530, 56, '7', '2022-09-11', '2022-09-11'),
(531, 56, '7', '2022-09-11', '2022-09-11'),
(532, 56, '6', '2022-09-11', '2022-09-11'),
(533, 56, '6', '2022-09-11', '2022-09-11'),
(534, 56, '6', '2022-09-11', '2022-09-11'),
(535, 56, '6', '2022-09-11', '2022-09-11'),
(536, 56, '6', '2022-09-11', '2022-09-11'),
(537, 56, '6', '2022-09-11', '2022-09-11'),
(538, 56, '6', '2022-09-11', '2022-09-11'),
(539, 56, '6', '2022-09-11', '2022-09-11'),
(540, 56, '6', '2022-09-11', '2022-09-11'),
(541, 56, '6', '2022-09-11', '2022-09-11'),
(542, 56, '6', '2022-09-11', '2022-09-11'),
(543, 56, '6', '2022-09-11', '2022-09-11'),
(544, 56, '6', '2022-09-11', '2022-09-11'),
(545, 56, '6', '2022-09-11', '2022-09-11'),
(546, 56, '6', '2022-09-11', '2022-09-11'),
(547, 56, '6', '2022-09-11', '2022-09-11'),
(548, 56, '6', '2022-09-11', '2022-09-11'),
(549, 56, '6', '2022-09-11', '2022-09-11'),
(550, 56, '6', '2022-09-11', '2022-09-11'),
(551, 56, '6', '2022-09-11', '2022-09-11'),
(552, 56, '6', '2022-09-11', '2022-09-11'),
(553, 56, '6', '2022-09-11', '2022-09-11'),
(554, 56, '6', '2022-09-11', '2022-09-11'),
(555, 56, '6', '2022-09-11', '2022-09-11'),
(556, 56, '6', '2022-09-11', '2022-09-11'),
(557, 56, '6', '2022-09-11', '2022-09-11'),
(558, 56, '6', '2022-09-11', '2022-09-11'),
(559, 56, '6', '2022-09-11', '2022-09-11'),
(560, 56, '6', '2022-09-11', '2022-09-11'),
(561, 56, '6', '2022-09-11', '2022-09-11'),
(562, 56, '6', '2022-09-11', '2022-09-11'),
(563, 56, '6', '2022-09-11', '2022-09-11'),
(564, 54, '7', '2022-09-12', '2022-09-12'),
(565, 54, '7', '2022-09-12', '2022-09-12'),
(566, 55, '6', '2022-09-12', '2022-09-12'),
(567, 49, '6', '2022-09-13', '2022-09-13'),
(568, 56, '6', '2022-09-15', '2022-09-15'),
(569, 56, '6', '2022-09-15', '2022-09-15'),
(570, 56, '6', '2022-09-15', '2022-09-15'),
(571, 56, '6', '2022-09-15', '2022-09-15'),
(572, 56, '6', '2022-09-15', '2022-09-15'),
(573, 56, '6', '2022-09-15', '2022-09-15'),
(574, 56, '6', '2022-09-15', '2022-09-15'),
(575, 56, '6', '2022-09-15', '2022-09-15'),
(576, 56, '6', '2022-09-15', '2022-09-15'),
(577, 56, '6', '2022-09-15', '2022-09-15'),
(578, 56, '6', '2022-09-15', '2022-09-15'),
(579, 56, '6', '2022-09-15', '2022-09-15'),
(580, 56, '6', '2022-09-15', '2022-09-15'),
(581, 56, '6', '2022-09-15', '2022-09-15'),
(582, 56, '6', '2022-09-15', '2022-09-15'),
(583, 56, '6', '2022-09-15', '2022-09-15'),
(584, 56, '6', '2022-09-15', '2022-09-15'),
(585, 56, '6', '2022-09-15', '2022-09-15'),
(586, 56, '6', '2022-09-15', '2022-09-15'),
(587, 55, '8', '2022-09-15', '2022-09-15'),
(588, 55, '8', '2022-09-15', '2022-09-15'),
(589, 55, '8', '2022-09-15', '2022-09-15'),
(590, 55, '6', '2022-09-15', '2022-09-15'),
(591, 56, '6', '2022-09-15', '2022-09-15'),
(592, 56, '6', '2022-09-15', '2022-09-15'),
(593, 56, '6', '2022-09-15', '2022-09-15'),
(594, 56, '6', '2022-09-15', '2022-09-15'),
(595, 56, '6', '2022-09-15', '2022-09-15'),
(596, 56, '6', '2022-09-15', '2022-09-15'),
(597, 56, '6', '2022-09-15', '2022-09-15'),
(598, 56, '6', '2022-09-15', '2022-09-15'),
(599, 56, '8', '2022-09-15', '2022-09-15'),
(600, 57, '6', '2022-09-16', '2022-09-16'),
(601, 57, '6', '2022-09-16', '2022-09-16'),
(602, 56, '6', '2022-09-17', '2022-09-17'),
(603, 52, '6', '2022-09-17', '2022-09-17'),
(604, 56, '6', '2022-09-17', '2022-09-17'),
(605, 56, '6', '2022-09-17', '2022-09-17'),
(606, 52, '6', '2022-09-17', '2022-09-17'),
(607, 52, '6', '2022-09-17', '2022-09-17'),
(608, 52, '6', '2022-09-17', '2022-09-17'),
(609, 56, '6', '2022-09-17', '2022-09-17'),
(610, 52, '7', '2022-09-17', '2022-09-17'),
(611, 52, '7', '2022-09-17', '2022-09-17'),
(612, 59, '6', '2022-09-17', '2022-09-17'),
(613, 59, '6', '2022-09-17', '2022-09-17'),
(614, 52, '10', '2022-09-18', '2022-09-18'),
(615, 52, '10', '2022-09-18', '2022-09-18'),
(616, 52, '9', '2022-09-18', '2022-09-18'),
(617, 59, '11', '2022-09-20', '2022-09-20'),
(618, 42, '6', '2022-09-20', '2022-09-20'),
(619, 42, '6', '2022-09-20', '2022-09-20'),
(620, 42, '6', '2022-09-20', '2022-09-20'),
(621, 42, '6', '2022-09-20', '2022-09-20'),
(622, 42, '6', '2022-09-20', '2022-09-20'),
(623, 61, '13', '2022-09-21', '2022-09-21'),
(624, 61, '13', '2022-09-21', '2022-09-21'),
(625, 61, '13', '2022-09-21', '2022-09-21'),
(626, 52, '14', '2022-09-22', '2022-09-22'),
(627, 52, '14', '2022-09-22', '2022-09-22'),
(628, 52, '12', '2022-09-22', '2022-09-22'),
(629, 52, '12', '2022-09-22', '2022-09-22'),
(630, 52, '15', '2022-09-22', '2022-09-22'),
(631, 52, '15', '2022-09-22', '2022-09-22'),
(632, 62, '9', '2022-09-22', '2022-09-22'),
(633, 52, '15', '2022-09-22', '2022-09-22'),
(634, 52, '15', '2022-09-22', '2022-09-22'),
(635, 52, '15', '2022-09-22', '2022-09-22'),
(636, 62, '15', '2022-09-22', '2022-09-22'),
(637, 52, '14', '2022-09-22', '2022-09-22'),
(638, 52, '14', '2022-09-22', '2022-09-22'),
(639, 52, '14', '2022-09-22', '2022-09-22'),
(640, 52, '14', '2022-09-22', '2022-09-22'),
(641, 52, '14', '2022-09-22', '2022-09-22'),
(642, 52, '14', '2022-09-22', '2022-09-22'),
(643, 52, '14', '2022-09-22', '2022-09-22'),
(644, 52, '14', '2022-09-22', '2022-09-22'),
(645, 52, '14', '2022-09-22', '2022-09-22'),
(646, 59, '14', '2022-09-23', '2022-09-23'),
(647, 59, '14', '2022-09-23', '2022-09-23'),
(648, 63, '6', '2022-09-24', '2022-09-24'),
(649, 63, '6', '2022-09-24', '2022-09-24'),
(650, 63, '6', '2022-09-24', '2022-09-24'),
(651, 63, '6', '2022-09-24', '2022-09-24'),
(652, 63, '6', '2022-09-24', '2022-09-24'),
(653, 63, '6', '2022-09-24', '2022-09-24'),
(654, 63, '7', '2022-09-24', '2022-09-24'),
(655, 63, '13', '2022-09-24', '2022-09-24'),
(656, 63, '12', '2022-09-24', '2022-09-24'),
(657, 56, '15', '2022-09-24', '2022-09-24'),
(658, 42, '15', '2022-09-26', '2022-09-26'),
(659, 59, '15', '2022-09-27', '2022-09-27'),
(660, 59, '15', '2022-09-27', '2022-09-27'),
(661, 42, '15', '2022-09-30', '2022-09-30'),
(662, 52, '15', '2022-09-30', '2022-09-30'),
(663, 59, '15', '2022-10-01', '2022-10-01'),
(664, 59, '15', '2022-10-01', '2022-10-01'),
(665, 56, '15', '2022-10-04', '2022-10-04'),
(666, 56, '15', '2022-10-04', '2022-10-04'),
(667, 56, '15', '2022-10-04', '2022-10-04'),
(668, 56, '16', '2022-10-05', '2022-10-05'),
(669, 52, '18', '2022-10-07', '2022-10-07'),
(670, 52, '18', '2022-10-07', '2022-10-07'),
(671, 52, '18', '2022-10-07', '2022-10-07'),
(672, 52, '18', '2022-10-07', '2022-10-07'),
(673, 52, '18', '2022-10-07', '2022-10-07'),
(674, 52, '6', '2022-10-07', '2022-10-07'),
(675, 52, '6', '2022-10-07', '2022-10-07'),
(676, 52, '18', '2022-10-07', '2022-10-07'),
(677, 52, '18', '2022-10-07', '2022-10-07'),
(678, 52, '18', '2022-10-07', '2022-10-07'),
(679, 52, '18', '2022-10-07', '2022-10-07'),
(680, 59, '18', '2022-10-07', '2022-10-07'),
(681, 59, '18', '2022-10-07', '2022-10-07'),
(682, 52, '18', '2022-10-07', '2022-10-07'),
(683, 52, '18', '2022-10-07', '2022-10-07'),
(684, 52, '18', '2022-10-07', '2022-10-07'),
(685, 52, '18', '2022-10-07', '2022-10-07'),
(686, 52, '18', '2022-10-07', '2022-10-07'),
(687, 59, '18', '2022-10-08', '2022-10-08'),
(688, 56, '6', '2022-10-08', '2022-10-08'),
(689, 56, '6', '2022-10-08', '2022-10-08'),
(690, 64, '18', '2022-10-08', '2022-10-08'),
(691, 64, '18', '2022-10-08', '2022-10-08'),
(692, 64, '8', '2022-10-08', '2022-10-08'),
(693, 56, '18', '2022-10-09', '2022-10-09'),
(694, 56, '18', '2022-10-09', '2022-10-09'),
(695, 56, '6', '2022-10-09', '2022-10-09'),
(696, 56, '8', '2022-10-09', '2022-10-09'),
(697, 56, '8', '2022-10-09', '2022-10-09'),
(698, 56, '17', '2022-10-09', '2022-10-09'),
(699, 56, '17', '2022-10-09', '2022-10-09'),
(700, 59, '17', '2022-10-09', '2022-10-09'),
(701, 65, '18', '2022-10-09', '2022-10-09'),
(702, 56, '6', '2022-10-09', '2022-10-09'),
(703, 56, '18', '2022-10-09', '2022-10-09'),
(704, 56, '8', '2022-10-09', '2022-10-09'),
(705, 56, '14', '2022-10-09', '2022-10-09'),
(706, 56, '14', '2022-10-09', '2022-10-09'),
(707, 66, '18', '2022-10-10', '2022-10-10'),
(708, 65, '7', '2022-10-12', '2022-10-12'),
(709, 65, '16', '2022-10-12', '2022-10-12'),
(710, 52, '16', '2022-10-12', '2022-10-12'),
(711, 52, '20', '2022-10-14', '2022-10-14'),
(712, 52, '20', '2022-10-14', '2022-10-14'),
(713, 59, '20', '2022-10-14', '2022-10-14'),
(714, 59, '20', '2022-10-14', '2022-10-14'),
(715, 67, '6', '2022-10-15', '2022-10-15'),
(716, 67, '20', '2022-10-15', '2022-10-15'),
(717, 67, '20', '2022-10-15', '2022-10-15'),
(718, 52, '7', '2022-10-15', '2022-10-15'),
(719, 52, '20', '2022-10-15', '2022-10-15'),
(720, 52, '7', '2022-10-15', '2022-10-15'),
(721, 52, '20', '2022-10-15', '2022-10-15'),
(722, 52, '19', '2022-10-16', '2022-10-16'),
(723, 52, '20', '2022-10-16', '2022-10-16'),
(724, 52, '6', '2022-10-16', '2022-10-16'),
(725, 52, '6', '2022-10-16', '2022-10-16'),
(726, 52, '21', '2022-10-17', '2022-10-17'),
(727, 58, '21', '2022-10-18', '2022-10-18'),
(728, 58, '21', '2022-10-18', '2022-10-18'),
(729, 58, '21', '2022-10-18', '2022-10-18'),
(730, 58, '21', '2022-10-18', '2022-10-18'),
(731, 58, '4', '2022-10-18', '2022-10-18'),
(732, 58, '18', '2022-10-18', '2022-10-18'),
(733, 58, '18', '2022-10-18', '2022-10-18'),
(734, 58, '1', '2022-10-19', '2022-10-19'),
(735, 1, '21', '2022-10-19', '2022-10-19'),
(736, 1, '21', '2022-10-19', '2022-10-19'),
(737, 1, '21', '2022-10-19', '2022-10-19'),
(738, 1, '1', '2022-10-21', '2022-10-21'),
(739, 1, '1', '2022-10-21', '2022-10-21'),
(740, 1, '1', '2022-10-21', '2022-10-21'),
(741, 1, '21', '2022-10-21', '2022-10-21'),
(742, 1, '21', '2022-10-21', '2022-10-21'),
(743, 1, '19', '2022-10-21', '2022-10-21'),
(744, 1, '21', '2022-10-21', '2022-10-21'),
(745, 1, '21', '2022-10-21', '2022-10-21'),
(746, 1, '21', '2022-10-21', '2022-10-21'),
(747, 1, '21', '2022-10-21', '2022-10-21'),
(748, 1, '21', '2022-10-21', '2022-10-21'),
(749, 1, '21', '2022-10-21', '2022-10-21'),
(750, 69, '21', '2022-10-22', '2022-10-22'),
(751, 69, '21', '2022-10-22', '2022-10-22'),
(752, 69, '21', '2022-10-22', '2022-10-22'),
(753, 69, '21', '2022-10-22', '2022-10-22'),
(754, 69, '21', '2022-10-22', '2022-10-22'),
(755, 69, '21', '2022-10-22', '2022-10-22'),
(756, 69, '21', '2022-10-22', '2022-10-22'),
(757, 69, '21', '2022-10-22', '2022-10-22'),
(758, 69, '21', '2022-10-22', '2022-10-22'),
(759, 69, '21', '2022-10-22', '2022-10-22'),
(760, 69, '21', '2022-10-22', '2022-10-22'),
(761, 69, '21', '2022-10-22', '2022-10-22'),
(762, 69, '21', '2022-10-22', '2022-10-22'),
(763, 69, '21', '2022-10-22', '2022-10-22'),
(764, 69, '21', '2022-10-22', '2022-10-22'),
(765, 69, '21', '2022-10-22', '2022-10-22'),
(766, 69, '21', '2022-10-22', '2022-10-22'),
(767, 69, '21', '2022-10-22', '2022-10-22'),
(768, 1, '8', '2022-10-22', '2022-10-22'),
(769, 1, '21', '2022-10-22', '2022-10-22'),
(770, 1, '21', '2022-10-22', '2022-10-22'),
(771, 1, '4', '2022-10-22', '2022-10-22'),
(772, 1, '6', '2022-10-23', '2022-10-23'),
(773, 1, '6', '2022-10-23', '2022-10-23'),
(774, 1, '6', '2022-10-23', '2022-10-23'),
(775, 1, '6', '2022-10-23', '2022-10-23'),
(776, 1, '17', '2022-10-23', '2022-10-23'),
(777, 1, '1', '2022-10-23', '2022-10-23'),
(778, 1, '1', '2022-10-23', '2022-10-23'),
(779, 1, '1', '2022-10-23', '2022-10-23'),
(780, 1, '1', '2022-10-23', '2022-10-23'),
(781, 1, '1', '2022-10-23', '2022-10-23'),
(782, 1, '1', '2022-10-23', '2022-10-23'),
(783, 70, '19', '2022-11-01', '2022-11-01'),
(784, 70, '19', '2022-11-01', '2022-11-01'),
(785, 70, '14', '2022-11-01', '2022-11-01'),
(786, 70, '14', '2022-11-01', '2022-11-01'),
(787, 70, '14', '2022-11-01', '2022-11-01'),
(788, 70, '14', '2022-11-01', '2022-11-01'),
(789, 70, '14', '2022-11-01', '2022-11-01'),
(790, 70, '21', '2022-11-01', '2022-11-01'),
(791, 70, '21', '2022-11-01', '2022-11-01'),
(792, 69, '15', '2022-11-25', '2022-11-25'),
(793, 69, '14', '2022-11-25', '2022-11-25'),
(794, 69, '14', '2022-11-25', '2022-11-25'),
(795, 69, '13', '2022-11-25', '2022-11-25'),
(796, 69, '1', '2022-11-25', '2022-11-25'),
(797, 69, '1', '2022-11-25', '2022-11-25'),
(798, 69, '1', '2022-11-25', '2022-11-25'),
(799, 69, '1', '2022-11-25', '2022-11-25'),
(800, 73, '1', '2023-05-17', '2023-05-17'),
(801, 73, '15', '2023-05-17', '2023-05-17'),
(802, 72, '21', '2023-05-18', '2023-05-18'),
(803, 72, '21', '2023-05-18', '2023-05-18'),
(804, 72, '21', '2023-05-18', '2023-05-18'),
(805, 72, '21', '2023-05-18', '2023-05-18'),
(806, 72, '21', '2023-05-18', '2023-05-18'),
(807, 72, '21', '2023-05-18', '2023-05-18'),
(808, 72, '21', '2023-05-18', '2023-05-18'),
(809, 72, '21', '2023-05-18', '2023-05-18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `class_admin`
--

CREATE TABLE `class_admin` (
  `id_class_admin` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `class_admin`
--

INSERT INTO `class_admin` (`id_class_admin`, `id_users`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 19, NULL, '2022-11-29', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `class_admin_log`
--

CREATE TABLE `class_admin_log` (
  `id_class_admin_log` int(11) NOT NULL,
  `id_class_admin` int(11) NOT NULL,
  `id_users` int(11) DEFAULT NULL,
  `id_class_code_message` int(11) DEFAULT NULL,
  `message` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `class_category`
--

CREATE TABLE `class_category` (
  `id_class_category` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `class_category`
--

INSERT INTO `class_category` (`id_class_category`, `title`, `description`, `image`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Beginner', 'Beginner', '-', 'beginner', NULL, NULL, NULL),
(2, 'Intermediate', 'Intermediate', '-', 'intermediate', NULL, NULL, NULL),
(3, 'Expert', 'Expert', '-', 'expert', NULL, NULL, NULL),
(4, 'Tumbuhan', 'Tumbuhan', '-', 'tumbuhan', NULL, NULL, NULL),
(5, 'Laut', 'Laut', '-', 'laut', NULL, NULL, NULL),
(6, 'Animal', 'Animal', '-', 'animal', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `class_class`
--

CREATE TABLE `class_class` (
  `id_class_class` int(11) NOT NULL,
  `id_class_teacher` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `categories` varchar(255) NOT NULL,
  `hosts` varchar(255) NOT NULL,
  `capacity` varchar(255) NOT NULL,
  `image_banner` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `class_class`
--

INSERT INTO `class_class` (`id_class_class`, `id_class_teacher`, `slug`, `title`, `description`, `price`, `categories`, `hosts`, `capacity`, `image_banner`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 8, 'belajar-bahasa-inggris-dengan-kami-karena-menyenangkan-dan-seru-lho-hayuuu_2022-11-30_10:47:56', 'BELAJAR CODING', '<p>belajar bahasa inggris</p>', 200000, '[\"1\",\"4\"]', '[\"1\"]', '20', NULL, '2022-11-23', '2023-04-25', NULL),
(2, 8, 'kelas-coding_2022-11-24_12:16:07', 'KELAS CODING', '<p>KELAS CODING</p>', 12000, '[\"1\",\"4\"]', '[\"1\"]', '20', 'default-2.jpg', '2022-11-24', '2023-04-25', NULL),
(3, 8, 'adsbelajar-aja_2022-11-25_10:21:46', 'adsBELAJAR AJA', '<p>BELAJAR AJA</p>', 23123, '[\"4\"]', '[\"1\"]', '20', 'default-2.jpg', '2022-11-24', '2023-04-25', NULL),
(4, 8, 'asdadasddasdasd_2022-11-24_12:30:38', 'asdadasddasdasd', '<p>adasdasd</p>', 3343432, '[\"1\",\"4\"]', '[\"1\"]', '2', '1669293038.jpg', '2022-11-24', '2022-12-06', '2022-12-06'),
(5, 8, 'asdasdsada_2022-12-06_07:17:36', 'asdasdsada', '<p>asdasdasdasdas</p>', 20000, '[\"1\"]', '[\"1\"]', '10', 'default-2.jpg', '2022-12-06', '2023-04-25', NULL),
(6, 8, 'kelas-coba-aja-nih_2023-01-02_20:06:40', 'kelas coba aja nih', '<p>1234567</p>', 1230000, '[\"1\"]', '[\"1\"]', '12', 'default-2.jpg', '2023-01-02', '2023-04-25', NULL),
(7, 8, 'kelas-coba-aja-nih_2023-01-02_21:13:29', 'kelas coba aja nih', '<p>asdasdas</p>', 1230000, '[\"1\"]', '[\"1\"]', '12', 'default-2.jpg', '2023-01-02', '2023-04-25', NULL),
(8, 8, 'asdadada_2023-01-23_10:14:02', 'asdadada', '<p>adadad</p>', 20000, '[\"1\"]', '[\"1\",\"2\"]', '10', 'default-2.jpg', '2023-01-23', '2023-04-25', NULL),
(9, 8, 'asdasdasd_2023-01-23_10:20:38', 'asdasdasd', '<p>adasdasda</p>', 1231231, '[\"1\",\"2\"]', '[\"1\",\"2\"]', '3123', 'default-2.jpg', '2023-01-23', '2023-04-25', NULL),
(10, 8, 'dasdsdasasd_2023-01-23_11:20:47', 'dasdsdasasd', '<p>asddas</p>', 123000, '[\"1\",\"2\"]', '[\"1\",\"2\"]', '12', 'default-2.jpg', '2023-01-23', '2023-04-25', NULL),
(11, 8, 'adsdasasda_2023-01-23_11:31:11', 'adsdasasda', '<p>dasdadasdasda</p>', 123, '[\"1\",\"2\"]', '[\"1\",\"2\"]', '123', 'default-2.jpg', '2023-01-23', '2023-04-25', NULL),
(12, 8, 'asdsad_2023-04-25_15:56:58', 'asdsad', '<p>adsasad</p>', 12000, '[\"1\"]', '[\"1\"]', '20', 'default-2.jpg', '2023-04-25', '2023-04-25', NULL),
(13, 8, 'asdsad_2023-04-25_16:06:10', 'asdsad', '<p>adsasad</p>', 12000, '[\"1\"]', '[\"1\"]', '20', 'default-2.jpg', '2023-04-25', '2023-04-25', NULL),
(14, 8, 'adasdas_2023-04-25_16:09:47', 'adasdas', '<p>saadsad</p>', 20000, '[\"1\"]', '[\"1\"]', '12', '1682413787.png', '2023-04-25', '2023-04-25', NULL),
(15, 8, 'test_2023-04-25_22:10:03', 'test', '<p>test</p>', 20, '[\"1\"]', '[\"1\"]', '10', '1682435403.png', '2023-04-25', '2023-04-25', NULL),
(16, 8, 'adisan_2023-04-25_22:13:59', 'adisan', '<p>adisan</p>', 200000, '[\"4\"]', '[\"2\"]', '12', '1682435639.png', '2023-04-25', '2023-04-25', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `class_class_comment`
--

CREATE TABLE `class_class_comment` (
  `id_class_class_comment` int(11) NOT NULL,
  `id_class_class` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `comment` mediumtext,
  `rate` varchar(255) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `class_class_comment`
--

INSERT INTO `class_class_comment` (`id_class_class_comment`, `id_class_class`, `id_users`, `comment`, `rate`, `updated_at`, `created_at`, `deleted_at`) VALUES
(1, 1, 25, 'NICE I LIKE IT!', '4', '2022-12-15', '2022-12-15', NULL),
(2, 1, 64, 'keren', '4', '2023-04-02', '2023-04-02', NULL),
(3, 1, 64, 'ntaps', '5', '2023-04-02', '2023-04-02', NULL),
(4, 2, 64, 'test', '4', '2023-04-07', '2023-04-07', NULL),
(5, 2, 64, 'nice try', '2', '2023-04-07', '2023-04-07', NULL),
(6, 2, 64, 'nice try', '2', '2023-04-07', '2023-04-07', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `class_class_detail`
--

CREATE TABLE `class_class_detail` (
  `id_class_class_detail` int(11) NOT NULL,
  `id_class_class` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `date` date DEFAULT NULL,
  `link_exam` varchar(255) DEFAULT NULL,
  `photo_documentation` varchar(255) DEFAULT NULL,
  `via_online` varchar(255) DEFAULT NULL,
  `via_offline` varchar(255) DEFAULT NULL,
  `time_start` time DEFAULT NULL,
  `time_end` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `class_class_detail`
--

INSERT INTO `class_class_detail` (`id_class_class_detail`, `id_class_class`, `title`, `date`, `link_exam`, `photo_documentation`, `via_online`, `via_offline`, `time_start`, `time_end`, `created_at`, `updated_at`) VALUES
(2, 3, 'Pertemuan 1', '2022-12-31', NULL, 'default-2.jpg', 'asdasdsad', NULL, '06:11:00', '06:11:00', '2022-11-25 02:25:19', '2023-04-26 03:50:34'),
(3, 3, 'Pertemuan 2', '2022-12-31', NULL, 'default-2.jpg', NULL, 'asdasdasd', '06:11:00', '06:11:00', '2022-11-25 02:25:19', '2023-04-26 03:50:34'),
(4, 1, 'Pertemuan 1', '2022-11-30', 'http://google.com', '16824957321.png', 'meet', NULL, '16:00:00', '17:00:00', '2022-11-29 18:26:58', '2023-04-26 06:55:32'),
(5, 1, 'Pertemuan 2', '2022-12-27', NULL, '16824975051.png', 'meet', NULL, '15:00:00', '16:00:00', '2022-11-30 03:50:40', '2023-04-26 07:25:05'),
(6, 1, 'Pertemuan 3', '2022-12-31', NULL, '16835475411.png', 'meet', NULL, '11:00:00', '12:30:00', '2022-11-30 03:50:40', '2023-05-08 11:05:41'),
(7, 7, 'Pertemuan 1', '2023-01-03', NULL, 'default-2.jpg', '-', 'BDI DENPASAR', '01:37:00', '01:37:00', '2023-01-02 16:38:10', '2023-04-26 03:50:34'),
(8, 7, 'Pertemuan 2', '2023-01-03', NULL, 'default-2.jpg', '-', 'BDI DENPASR', '02:37:00', '02:37:00', '2023-01-02 16:38:10', '2023-04-26 03:50:34'),
(9, 8, 'Pertemuan 1', '2023-01-23', NULL, 'default-2.jpg', '-', 'BDI DENPASAR', '12:14:00', '14:14:00', '2023-01-23 02:14:46', '2023-04-26 03:50:34'),
(10, 8, 'Pertemuan 2', '2023-01-23', NULL, 'default-2.jpg', '-', 'BDI DENPASR', '11:14:00', '11:14:00', '2023-01-23 02:14:46', '2023-04-26 03:50:34'),
(11, 9, 'Pertemuan 1', '2023-01-23', NULL, 'default-2.jpg', NULL, NULL, '12:16:00', '12:20:00', '2023-01-23 03:16:13', '2023-04-26 03:50:34'),
(12, 9, 'Pertemuan 2', '2023-01-23', NULL, 'default-2.jpg', NULL, NULL, '16:16:00', '18:16:00', '2023-01-23 03:16:13', '2023-04-26 03:50:34'),
(13, 10, 'Pertemuan 1', '2023-01-23', NULL, 'default-2.jpg', NULL, NULL, '12:28:00', '12:28:00', '2023-01-23 03:28:43', '2023-04-26 03:50:34'),
(14, 10, 'Pertemuan 2', '2023-01-23', NULL, 'default-2.jpg', NULL, NULL, '12:28:00', '12:28:00', '2023-01-23 03:28:43', '2023-04-26 03:50:34'),
(15, 11, 'Pertemuan 1', '2023-01-23', NULL, 'default-2.jpg', NULL, 'BDI DENPASAR', '12:31:00', '12:31:00', '2023-01-23 03:40:12', '2023-04-26 03:50:34'),
(16, 11, 'Pertemuan 2', '2023-01-23', NULL, 'default-2.jpg', 'google meet', NULL, '12:31:00', '12:31:00', '2023-01-23 03:40:12', '2023-04-26 03:50:34'),
(17, 1, 'Pertemuan 4-test', '2023-04-24', NULL, '16835475551.jpg', 'meet', '-', '15:33:00', '16:33:00', '2023-04-24 06:33:33', '2023-05-08 11:05:55'),
(18, 16, 'Pertemuan 1', '2023-05-04', '...', 'default-2.jpg', 'location', 'location', '23:14:00', '23:14:00', '2023-04-25 14:15:31', '2023-04-26 03:50:34'),
(19, 16, 'Pertemuan 2', '2023-04-21', '...', 'default-2.jpg', 'location', 'location', '23:17:00', '02:14:00', '2023-04-25 14:15:31', '2023-04-26 03:50:34'),
(20, 1, 'Pertemuan 1', NULL, '12345678', '16835475711.jpg', NULL, NULL, '23:51:00', '23:49:00', '2023-04-25 14:49:08', '2023-05-08 11:06:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `class_class_student_report`
--

CREATE TABLE `class_class_student_report` (
  `id_class_class_student_report` int(11) NOT NULL,
  `id_class_class_transaction_detail` int(11) NOT NULL,
  `id_class_class_detail` int(11) NOT NULL,
  `message` longtext,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `class_class_student_report`
--

INSERT INTO `class_class_student_report` (`id_class_class_student_report`, `id_class_class_transaction_detail`, `id_class_class_detail`, `message`, `status`, `created_at`, `updated_at`) VALUES
(5, 25, 7, ' ', 0, '2023-04-12 10:47:39', '2023-04-12 10:47:39'),
(6, 25, 8, ' ', 0, '2023-04-12 10:47:43', '2023-04-12 10:47:43'),
(7, 26, 4, 'MANTAP', 1, '2023-04-15 21:00:02', '2023-04-19 13:02:10'),
(8, 26, 5, 'anjr', 1, '2023-04-15 21:07:14', '2023-04-20 03:01:57'),
(9, 26, 20, 'ntaps', 1, '2023-04-29 20:45:18', '2023-05-08 15:52:32'),
(10, 26, 17, 'mantap', 1, '2023-05-08 10:45:14', '2023-05-08 15:52:56'),
(11, 26, 6, ' ', 0, '2023-05-08 15:53:06', '2023-05-08 15:53:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `class_class_student_sertification`
--

CREATE TABLE `class_class_student_sertification` (
  `id_class_class_student_sertification` int(11) NOT NULL,
  `id_class_class_transaction_detail` int(11) NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `class_class_student_sertification`
--

INSERT INTO `class_class_student_sertification` (`id_class_class_student_sertification`, `id_class_class_transaction_detail`, `file`, `created_at`, `updated_at`) VALUES
(1, 26, '16827593471.pdf', '2023-04-29 06:56:56', '2023-04-29 08:09:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `class_class_student_wishlist`
--

CREATE TABLE `class_class_student_wishlist` (
  `id_class_class_student_wishlist` int(11) NOT NULL,
  `id_class_class` int(11) NOT NULL,
  `id_class_student` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `class_class_student_wishlist`
--

INSERT INTO `class_class_student_wishlist` (`id_class_class_student_wishlist`, `id_class_class`, `id_class_student`, `created_at`, `updated_at`) VALUES
(1, 2, 3, '2023-04-06 23:38:24', '2023-04-06 23:38:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `class_class_teacher_report`
--

CREATE TABLE `class_class_teacher_report` (
  `id_class_class_teacher_report` int(11) NOT NULL,
  `id_class_class_transaction_detail` int(11) NOT NULL,
  `id_class_class_detail` int(11) NOT NULL,
  `material` longtext,
  `evaluation` longtext,
  `writing` int(11) DEFAULT NULL,
  `speaking` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `class_class_teacher_report`
--

INSERT INTO `class_class_teacher_report` (`id_class_class_teacher_report`, `id_class_class_transaction_detail`, `id_class_class_detail`, `material`, `evaluation`, `writing`, `speaking`, `status`, `created_at`, `updated_at`) VALUES
(5, 25, 7, 'mantap', 'mantap', 30, 30, 1, '2023-04-15 06:43:30', '2023-04-15 06:43:37'),
(6, 25, 8, 'mantap', 'mantap', 30, 30, 1, '2023-04-15 06:43:49', '2023-04-15 06:43:54'),
(7, 26, 4, 'mantap', 'mantap', 10, 100, 1, '2023-04-15 22:40:52', '2023-04-19 10:10:03'),
(8, 26, 5, 'keren', 'keren', 20, 70, 1, '2023-04-19 10:10:15', '2023-04-26 07:24:54'),
(9, 26, 6, 'mantap', 'mantap', 10, 20, 1, '2023-04-27 12:31:55', '2023-05-08 11:04:28'),
(10, 26, 17, 'mantap', 'mantap', 20, 10, 1, '2023-05-08 11:04:41', '2023-05-08 11:04:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `class_class_transaction_detail`
--

CREATE TABLE `class_class_transaction_detail` (
  `id_class_class_transaction_detail` int(11) NOT NULL,
  `id_class_class_transaction_header` int(11) NOT NULL,
  `id_class_class` int(11) NOT NULL,
  `id_class_code_redeem` int(11) DEFAULT NULL,
  `price` decimal(11,0) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `class_class_transaction_detail`
--

INSERT INTO `class_class_transaction_detail` (`id_class_class_transaction_detail`, `id_class_class_transaction_header`, `id_class_class`, `id_class_code_redeem`, `price`, `discount`, `created_at`, `updated_at`) VALUES
(25, 25, 7, 1, '1230000', '0', '2023-04-08', '2023-04-08'),
(26, 26, 1, 1, '200000', '0', '2023-04-15', '2023-04-15'),
(27, 27, 2, 1, '12000', '0', '2023-04-15', '2023-04-15'),
(28, 28, 2, 1, '12000', '0', '2023-04-15', '2023-04-15'),
(29, 29, 3, 1, '23123', '0', '2023-05-14', '2023-05-14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `class_class_transaction_header`
--

CREATE TABLE `class_class_transaction_header` (
  `id_class_class_transaction_header` int(11) NOT NULL,
  `id_class_student` int(11) NOT NULL,
  `verified_at` timestamp NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `code_invoice` varchar(255) NOT NULL,
  `code_payment_gateway_invoice` varchar(255) NOT NULL,
  `invoice_url` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `class_class_transaction_header`
--

INSERT INTO `class_class_transaction_header` (`id_class_class_transaction_header`, `id_class_student`, `verified_at`, `ip_address`, `code_invoice`, `code_payment_gateway_invoice`, `invoice_url`, `status`, `created_at`, `updated_at`) VALUES
(25, 3, '2023-04-07 17:07:21', '::1', '#INV/20230408/1/test-1245-678910-123-456-7', '15c4b769-a226-46e5-a0f3-07fc525086f6', '0', '1', '2023-04-08', '2023-04-08'),
(26, 3, '2023-04-15 10:07:24', '::1', '#INV/20230415/1/test-1', 'becdb3e2-2bf0-414d-87cc-c92f5ed42409', '0', '1', '2023-04-15', '2023-04-15'),
(27, 3, '2023-04-15 10:14:33', '::1', '#INV/20230415/2/test-1', 'bf7e2543-6016-49c8-b471-72f80897078b', '0', '4', '2023-04-15', '2023-04-15'),
(28, 3, '2023-04-15 10:14:33', '::1', '#INV/20230415/3/test-1', 'bf7e2543-6016-49c8-b471-72f80897078b', '0', '4', '2023-04-15', '2023-04-15'),
(29, 3, '2023-05-14 14:33:11', '::1', '#INV/20230514/1/test-1', 'e9313521-0b4c-4263-b286-0582bc95f138', '0', '4', '2023-05-14', '2023-05-14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `class_code_message`
--

CREATE TABLE `class_code_message` (
  `id_class_code_message` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `class_code_message`
--

INSERT INTO `class_code_message` (`id_class_code_message`, `message`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'super admin joinnend', NULL, NULL, NULL),
(2, 'user joinned', NULL, NULL, NULL),
(3, 'tutor joinned', NULL, NULL, NULL),
(4, 'student joinned', NULL, NULL, NULL),
(5, 'student buy a class teacher', NULL, NULL, NULL),
(6, 'your class has buy with student', NULL, NULL, NULL),
(7, 'report by student (your class)', NULL, NULL, NULL),
(8, 'report by teacher(your class)', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `class_code_redeem`
--

CREATE TABLE `class_code_redeem` (
  `id_class_code_redeem` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `discount` decimal(10,0) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `class_code_redeem`
--

INSERT INTO `class_code_redeem` (`id_class_code_redeem`, `title`, `discount`, `description`, `date_start`, `date_end`, `created_at`, `updated_at`) VALUES
(1, NULL, '0', '0', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `class_host`
--

CREATE TABLE `class_host` (
  `id_class_host` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `class_host`
--

INSERT INTO `class_host` (`id_class_host`, `title`, `description`, `image`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'INDONESIA', 'Bahasa Indonesia', 'default-1.jpg', 'ID', NULL, '2023-04-25 03:08:54', NULL),
(2, 'ENGLISH', 'English ', 'default-1.jpg', 'EN', NULL, '2023-04-25 03:08:54', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `class_student`
--

CREATE TABLE `class_student` (
  `id_class_student` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `school` varchar(255) DEFAULT NULL,
  `motivation` varchar(255) DEFAULT NULL,
  `image_banner` varchar(255) DEFAULT NULL,
  `image_profile` varchar(255) DEFAULT NULL,
  `biography` mediumtext,
  `created_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `class_student`
--

INSERT INTO `class_student` (`id_class_student`, `id_users`, `school`, `motivation`, `image_banner`, `image_profile`, `biography`, `created_at`, `deleted_at`, `updated_at`) VALUES
(1, 25, 'dfgdfgdfgd', 'dsfdsf', 'default-2.jpg', 'default-1.jpg', 'sdfdsf', '2022-11-21 16:00:00', NULL, '2023-04-25 03:08:54'),
(2, 58, NULL, NULL, 'default-2.jpg', 'default-1.jpg', NULL, '2022-11-24 01:29:06', NULL, '2023-04-25 03:08:54'),
(3, 64, 'dfdfdsf', 'asdsads', 'default-2.jpg', '16824121391.png', '<p>sdsadasdasds</p>', '2023-01-03 08:28:19', NULL, '2023-04-25 07:42:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `class_student_class_relation`
--

CREATE TABLE `class_student_class_relation` (
  `id_class_student_classs_relation` int(11) NOT NULL,
  `id_class_class` int(11) NOT NULL,
  `id_class_student` int(11) NOT NULL,
  `wishlist` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `payment` varchar(255) NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `class_student_log`
--

CREATE TABLE `class_student_log` (
  `id_class_student_log` int(11) NOT NULL,
  `id_class_student` int(11) NOT NULL,
  `id_class_code_message` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `class_student_log`
--

INSERT INTO `class_student_log` (`id_class_student_log`, `id_class_student`, `id_class_code_message`, `message`, `updated_at`, `created_at`) VALUES
(1, 1, 2, 'users joined', '2022-12-23 16:00:00', '2022-11-21 16:00:00'),
(2, 2, 2, 'users joined', NULL, NULL),
(3, 1, 5, 'user buy class : BELAJAR CODING , tutor : Disan Jaya, code invoice :   #INV/20221221/4', '2023-01-07 16:00:00', '2022-12-20 16:00:00'),
(4, 1, 5, 'user buy class : BELAJAR CODING , tutor : Disan Jaya, code invoice :   #INV/20221221/5', '2023-04-03 17:25:56', '2022-12-20 16:00:00'),
(5, 1, 5, 'user buy class : BELAJAR CODING , tutor : Disan Jaya, code invoice :   #INV/20221228/1', '2023-01-03 16:00:00', '2022-12-27 16:00:00'),
(6, 1, 5, 'user buy class : BELAJAR CODING , tutor : Disan Jaya, code invoice :   #INV/20221228/2', '2023-01-03 16:00:00', '2022-12-27 16:00:00'),
(7, 1, 5, 'user buy class : BELAJAR CODING , tutor : Disan Jaya, code invoice :   #INV/20230108/1', '2023-04-13 04:45:43', '2023-01-07 16:00:00'),
(8, 1, 5, 'user buy class : BELAJAR CODING , tutor : Disan Jaya, code invoice :   #INV/20230108/2', '2023-04-12 10:47:53', '2023-01-07 16:00:00'),
(9, 1, 5, 'user buy class : BELAJAR CODING , tutor : Disan Jaya, code invoice :   #INV/20230108/3', '2023-01-07 16:00:00', '2023-01-07 16:00:00'),
(10, 1, 5, 'user buy class : BELAJAR CODING , tutor : Disan Jaya, code invoice :   #INV/20230108/4', '2023-01-07 16:00:00', '2023-01-07 16:00:00'),
(11, 1, 5, 'user buy class : BELAJAR CODING , tutor : Disan Jaya, code invoice :   #INV/20230108/5', '2023-01-07 16:00:00', '2023-01-07 16:00:00'),
(12, 1, 5, 'user buy class : BELAJAR CODING , tutor : Disan Jaya, code invoice :   #INV/20230108/6', '2023-01-07 16:00:00', '2023-01-07 16:00:00'),
(13, 1, 5, 'user buy class : BELAJAR CODING , tutor : Disan Jaya, code invoice :   #INV/20230108/7', '2023-01-07 16:00:00', '2023-01-07 16:00:00'),
(14, 1, 5, 'user buy class : BELAJAR CODING , tutor : Disan Jaya, code invoice :   #INV/20230108/8', '2023-01-07 16:00:00', '2023-01-07 16:00:00'),
(15, 1, 5, 'user buy class : BELAJAR CODING , tutor : Disan Jaya, code invoice :   #INV/20230108/9', '2023-01-07 16:00:00', '2023-01-07 16:00:00'),
(16, 1, 5, 'user buy class : BELAJAR CODING , tutor : Disan Jaya, code invoice :   #INV/20230108/10', '2023-01-07 16:00:00', '2023-01-07 16:00:00'),
(17, 1, 5, 'user buy class : BELAJAR CODING , tutor : Disan Jaya, code invoice :   #INV/20230117/1', '2023-01-17 09:32:47', '2023-01-17 09:32:47'),
(18, 1, 5, 'user buy class : BELAJAR CODING , tutor : Disan Jaya, code invoice :   #INV/20230119/1', '2023-01-19 06:00:59', '2023-01-19 06:00:59'),
(19, 1, 5, 'user buy class : BELAJAR CODING , tutor : Disan Jaya, code invoice :   #INV/20230119/2', '2023-01-19 09:27:18', '2023-01-19 09:27:18'),
(20, 1, 5, 'user buy class : BELAJAR CODING , tutor : Disan Jaya, code invoice :   #INV/20230119/3', '2023-01-19 09:29:14', '2023-01-19 09:29:14'),
(21, 1, 5, 'user buy class : BELAJAR CODING , tutor : Disan Jaya, code invoice :   #INV/20230119/4', '2023-01-19 09:30:14', '2023-01-19 09:30:14'),
(22, 1, 5, 'user buy class : BELAJAR CODING , tutor : Disan Jaya, code invoice :   #INV/20230119/5', '2023-01-19 09:31:10', '2023-01-19 09:31:10'),
(23, 1, 5, 'user buy class : BELAJAR CODING , tutor : Disan Jaya, code invoice :   #INV/20230119/6', '2023-01-19 09:32:18', '2023-01-19 09:32:18'),
(24, 1, 5, 'user buy class : BELAJAR CODING , tutor : Disan Jaya, code invoice :   #INV/20230119/7', '2023-01-19 09:55:50', '2023-01-19 09:55:50'),
(25, 1, 5, 'user buy class : BELAJAR CODING , tutor : Disan Jaya, code invoice :   #INV/20230119/8', '2023-01-19 09:56:36', '2023-01-19 09:56:36'),
(26, 3, 5, 'user buy class : KELAS CODING , tutor : Disan Jaya, code invoice :   #INV/20230130/1', '2023-03-29 21:23:55', '2023-01-30 08:57:52'),
(27, 3, 5, 'user buy class : BELAJAR CODING , tutor : Disan Jaya, code invoice :   #INV/20230130/2', '2023-03-29 21:23:59', '2023-01-30 08:59:10'),
(28, 3, 5, 'user buy class : BELAJAR CODING , tutor : Disan Jaya, code invoice :   #INV/20230331/1', '2023-04-01 00:45:37', '2023-03-31 08:03:06'),
(29, 3, 8, 'student : Disan Jaya, of class : BELAJAR CODING, meet : Pertemuan 1 , send a report message to you', '2023-04-06 23:29:31', '2023-04-06 23:29:20'),
(30, 3, 5, 'user buy class : adsBELAJAR AJA , tutor : Disan Jaya, code invoice :   #INV/20230407/1', '2023-04-12 10:45:36', '2023-04-07 11:28:01'),
(31, 3, 5, 'user buy class : adsBELAJAR AJA , tutor : Disan Jaya, code invoice :   #INV/20230407/1', '2023-04-12 10:45:39', '2023-04-07 11:34:31'),
(32, 3, 5, 'user buy class : adsBELAJAR AJA , tutor : Disan Jaya, code invoice :   #INV/20230407/1', '2023-04-12 10:45:41', '2023-04-07 11:37:30'),
(33, 3, 5, 'user buy class : kelas coba aja nih , tutor : Disan Jaya, code invoice :   #INV/20230407/2', '2023-04-12 10:45:43', '2023-04-07 13:29:51'),
(34, 3, 5, 'user buy class : kelas coba aja nih , tutor : Disan Jaya, code invoice :   #INV/20230407/2', '2023-04-12 10:45:46', '2023-04-07 13:56:08'),
(35, 3, 5, 'user buy class : kelas coba aja nih , tutor : Disan Jaya, code invoice :   #INV/20230407/2', '2023-04-12 10:46:10', '2023-04-07 13:59:34'),
(36, 3, 5, 'user buy class : kelas coba aja nih , tutor : Disan Jaya, code invoice :   #INV/20230407/2', '2023-04-12 10:46:16', '2023-04-07 14:47:46'),
(37, 3, 5, 'user buy class : kelas coba aja nih , tutor : Disan Jaya, code invoice :   #INV/20230407/1', '2023-04-12 10:46:25', '2023-04-07 15:22:38'),
(38, 3, 5, 'user buy class : kelas coba aja nih , tutor : Disan Jaya, code invoice :   #INV/20230407/1', '2023-04-12 10:46:28', '2023-04-07 15:22:38'),
(39, 3, 5, 'user buy class : kelas coba aja nih , tutor : Disan Jaya, code invoice :   #INV/20230407/1/test', '2023-04-12 10:46:18', '2023-04-07 15:30:44'),
(40, 3, 5, 'user buy class : kelas coba aja nih , tutor : Disan Jaya, code invoice :   #INV/20230407/1/test-124', '2023-04-12 10:46:31', '2023-04-07 15:43:09'),
(41, 3, 5, 'user buy class : kelas coba aja nih , tutor : Disan Jaya, code invoice :   #INV/20230407/1/test-124-567', '2023-04-12 10:46:34', '2023-04-07 15:54:34'),
(42, 3, 5, 'user buy class : kelas coba aja nih , tutor : Disan Jaya, code invoice :   #INV/20230407/2/test-124-567', '2023-04-12 10:46:37', '2023-04-07 15:54:34'),
(43, 3, 5, 'user buy class : kelas coba aja nih , tutor : Disan Jaya, code invoice :   #INV/20230408/1/test-1245-6', '2023-04-12 10:46:41', '2023-04-07 16:05:48'),
(44, 3, 5, 'user buy class : kelas coba aja nih , tutor : Disan Jaya, code invoice :   #INV/20230408/1/test-1245-67', '2023-04-12 10:46:44', '2023-04-07 16:10:37'),
(45, 3, 5, 'user buy class : kelas coba aja nih , tutor : Disan Jaya, code invoice :   #INV/20230408/1/test-1245-678', '2023-04-12 10:46:47', '2023-04-07 16:22:26'),
(46, 3, 5, 'user buy class : kelas coba aja nih , tutor : Disan Jaya, code invoice :   #INV/20230408/1/test-1245-6789', '2023-04-12 10:46:56', '2023-04-07 16:27:24'),
(47, 3, 5, 'user buy class : kelas coba aja nih , tutor : Disan Jaya, code invoice :   #INV/20230408/1/test-1245-678910', '2023-04-12 10:46:07', '2023-04-07 16:30:27'),
(48, 3, 5, 'user buy class : kelas coba aja nih , tutor : Disan Jaya, code invoice :   #INV/20230408/1/test-1245-678910-1', '2023-04-12 10:46:53', '2023-04-07 16:37:00'),
(49, 3, 5, 'user buy class : kelas coba aja nih , tutor : Disan Jaya, code invoice :   #INV/20230408/1/test-1245-678910-12', '2023-04-12 10:46:50', '2023-04-07 16:39:42'),
(50, 3, 5, 'user buy class : kelas coba aja nih , tutor : Disan Jaya, code invoice :   #INV/20230408/1/test-1245-678910-123', '2023-04-12 10:46:03', '2023-04-07 16:50:31'),
(51, 3, 5, 'user buy class : kelas coba aja nih , tutor : Disan Jaya, code invoice :   #INV/20230408/1/test-1245-678910-123-45', '2023-04-12 10:46:21', '2023-04-07 17:00:26'),
(52, 3, 5, 'user buy class : kelas coba aja nih , tutor : Disan Jaya, code invoice :   #INV/20230408/1/test-1245-678910-123-456', '2023-04-12 10:45:56', '2023-04-07 17:04:45'),
(53, 3, 5, 'user buy class : kelas coba aja nih , tutor : Disan Jaya, code invoice :   #INV/20230408/1/test-1245-678910-123-456-7', '2023-04-12 10:45:51', '2023-04-07 17:07:21'),
(54, 3, 8, 'tutor : Disan Jaya, of class : kelas coba aja nih, meet : Pertemuan 1 , send a report message to you', '2023-04-15 06:43:37', '2023-04-15 06:43:37'),
(55, 3, 8, 'tutor : Disan Jaya, of class : kelas coba aja nih, meet : Pertemuan 2 , send a report message to you', '2023-04-15 06:43:54', '2023-04-15 06:43:54'),
(56, 3, 5, 'user buy class : BELAJAR CODING , tutor : Disan Jaya, code invoice :   #INV/20230415/1/test-1', '2023-04-15 10:07:24', '2023-04-15 10:07:24'),
(57, 3, 5, 'user buy class : KELAS CODING , tutor : Disan Jaya, code invoice :   #INV/20230415/2/test-1', '2023-04-15 10:14:33', '2023-04-15 10:14:33'),
(58, 3, 5, 'user buy class : KELAS CODING , tutor : Disan Jaya, code invoice :   #INV/20230415/3/test-1', '2023-04-15 10:14:33', '2023-04-15 10:14:33'),
(59, 3, 8, 'tutor : Disan Jaya, of class : BELAJAR CODING, meet : Pertemuan 1 , send a report message to you', '2023-04-16 01:01:14', '2023-04-16 01:01:14'),
(60, 3, 8, 'tutor : Disan Jaya, of class : BELAJAR CODING, meet : Pertemuan 1 , send a report message to you', '2023-04-19 10:10:03', '2023-04-19 10:10:03'),
(61, 3, 8, 'tutor : Disan Jaya, of class : BELAJAR CODING, meet : Pertemuan 2 , send a report message to you', '2023-04-19 10:10:29', '2023-04-19 10:10:29'),
(62, 3, 8, 'tutor : Disan Jaya, of class : BELAJAR CODING, meet : Pertemuan 2 , send a report message to you', '2023-04-26 07:24:54', '2023-04-26 07:24:54'),
(63, 3, 8, 'tutor : Disan Jaya, of class : BELAJAR CODING, meet : Pertemuan 3 , send a report message to you', '2023-05-08 11:04:28', '2023-05-08 11:04:28'),
(64, 3, 8, 'tutor : Disan Jaya, of class : BELAJAR CODING, meet : Pertemuan 4-test , send a report message to you', '2023-05-08 11:04:47', '2023-05-08 11:04:47'),
(65, 3, 8, 'tutor : Disan Jaya, of class : BELAJAR CODING, meet : Pertemuan 1 , send a report message to you', '2023-05-08 11:05:03', '2023-05-08 11:05:03'),
(66, 3, 5, 'user buy class : adsBELAJAR AJA , tutor : Disan Jaya, code invoice :   #INV/20230514/1/test-1', '2023-05-14 14:33:11', '2023-05-14 14:33:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `class_super_admin`
--

CREATE TABLE `class_super_admin` (
  `id_class_super_admin` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `class_super_admin`
--

INSERT INTO `class_super_admin` (`id_class_super_admin`, `id_users`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 58, NULL, '2022-11-29', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `class_super_admin_log`
--

CREATE TABLE `class_super_admin_log` (
  `id_class_super_admin_log` int(11) NOT NULL,
  `id_class_super_admin` int(11) NOT NULL,
  `id_users` int(11) DEFAULT NULL,
  `id_class_code_message` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `class_teacher`
--

CREATE TABLE `class_teacher` (
  `id_class_teacher` int(11) NOT NULL,
  `id_users` int(11) DEFAULT NULL,
  `image_profile` varchar(255) DEFAULT NULL,
  `image_banner` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `bank_account_number` varchar(255) DEFAULT NULL,
  `id_card` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `class_teacher`
--

INSERT INTO `class_teacher` (`id_class_teacher`, `id_users`, `image_profile`, `image_banner`, `address`, `bank_account_number`, `id_card`, `instagram`, `facebook`, `verified_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(8, 57, 'default-1.jpg', 'default-2.jpg', 'jl hayam wuruk 98', 'asdasdasdas1', 'dasdsadasd1', 'dsadsadas1', 'asd1', '2022-11-23 23:23:18', '2022-11-21 19:43:32', '2023-04-25 03:08:54', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `class_teacher_comment`
--

CREATE TABLE `class_teacher_comment` (
  `id_class_teacher_comment` int(11) NOT NULL,
  `id_class_teacher` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `comment` mediumtext,
  `rate` varchar(255) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `class_teacher_comment`
--

INSERT INTO `class_teacher_comment` (`id_class_teacher_comment`, `id_class_teacher`, `id_users`, `comment`, `rate`, `updated_at`, `created_at`, `deleted_at`) VALUES
(1, 8, 25, NULL, '3', '2022-12-15', '2022-12-15', NULL),
(2, 8, 64, 'tst', '3', '2023-04-07', '2023-04-07', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `class_teacher_log`
--

CREATE TABLE `class_teacher_log` (
  `id_class_teacher_log` int(11) NOT NULL,
  `id_class_teacher` int(11) NOT NULL,
  `id_class_code_message` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `class_teacher_log`
--

INSERT INTO `class_teacher_log` (`id_class_teacher_log`, `id_class_teacher`, `id_class_code_message`, `message`, `updated_at`, `created_at`) VALUES
(1, 8, 1, 'connect', '2023-01-01 22:56:11', NULL),
(2, 8, 6, 'your class has buy with student : Disan J, class: BELAJAR CODING', '2023-04-12 10:49:14', '2022-12-23 16:00:00'),
(3, 8, 6, 'your class has buy with student : Disan J, class: BELAJAR CODING', '2022-12-27 23:52:26', '2022-12-27 23:48:10'),
(4, 8, 6, 'your class has buy with student : Disan J, class: BELAJAR CODING', '2022-12-28 02:48:09', '2022-12-28 02:48:09'),
(5, 8, 6, 'your class has buy with student : Disan J, class: BELAJAR CODING', '2023-01-07 21:46:38', '2023-01-07 21:46:38'),
(6, 8, 6, 'your class has buy with student : Disan J, class: BELAJAR CODING', '2023-01-07 22:15:46', '2023-01-07 22:15:46'),
(7, 8, 6, 'your class has buy with student : Disan J, class: BELAJAR CODING', '2023-01-07 22:20:24', '2023-01-07 22:20:24'),
(8, 8, 6, 'your class has buy with student : Disan J, class: BELAJAR CODING', '2023-01-07 22:23:05', '2023-01-07 22:23:05'),
(9, 8, 6, 'your class has buy with student : Disan J, class: BELAJAR CODING', '2023-01-07 22:24:49', '2023-01-07 22:24:49'),
(10, 8, 6, 'your class has buy with student : Disan J, class: BELAJAR CODING', '2023-01-07 22:25:24', '2023-01-07 22:25:24'),
(11, 8, 6, 'your class has buy with student : Disan J, class: BELAJAR CODING', '2023-01-07 22:25:31', '2023-01-07 22:25:31'),
(12, 8, 6, 'your class has buy with student : Disan J, class: BELAJAR CODING', '2023-01-07 22:28:34', '2023-01-07 22:28:34'),
(13, 8, 6, 'your class has buy with student : Disan J, class: BELAJAR CODING', '2023-01-17 09:33:10', '2023-01-17 09:33:10'),
(14, 8, 6, 'your class has buy with student : Disan J, class: BELAJAR CODING', '2023-01-19 06:01:05', '2023-01-19 06:01:05'),
(15, 8, 6, 'your class has buy with student : Disan J, class: BELAJAR CODING', '2023-01-19 09:27:20', '2023-01-19 09:27:20'),
(16, 8, 6, 'your class has buy with student : Disan J, class: BELAJAR CODING', '2023-01-19 09:29:16', '2023-01-19 09:29:16'),
(17, 8, 6, 'your class has buy with student : Disan J, class: BELAJAR CODING', '2023-01-19 09:30:14', '2023-01-19 09:30:14'),
(18, 8, 6, 'your class has buy with student : Disan J, class: BELAJAR CODING', '2023-01-19 09:31:12', '2023-01-19 09:31:12'),
(19, 8, 6, 'your class has buy with student : Disan J, class: BELAJAR CODING', '2023-01-19 09:32:20', '2023-01-19 09:32:20'),
(20, 8, 6, 'your class has buy with student : Disan J, class: BELAJAR CODING', '2023-01-19 09:56:37', '2023-01-19 09:56:37'),
(21, 8, 6, 'your class has buy with student : Ahasiya, class: BELAJAR CODING', '2023-01-30 08:59:19', '2023-01-30 08:59:19'),
(22, 8, 7, 'student : Ahasiya of class : BELAJAR CODING send a report message to you', '2023-04-06 23:08:15', '2023-04-06 23:08:15'),
(23, 8, 7, 'student : Ahasiya of class : BELAJAR CODING send a report message to you', '2023-04-06 23:08:18', '2023-04-06 23:08:18'),
(24, 8, 7, 'student : Ahasiya of class : BELAJAR CODING send a report message to you', '2023-04-06 23:08:21', '2023-04-06 23:08:21'),
(25, 8, 7, 'student : Ahasiya of class : BELAJAR CODING send a report message to you', '2023-04-06 23:08:29', '2023-04-06 23:08:29'),
(26, 8, 7, 'student : Ahasiya of class : BELAJAR CODING send a report message to you', '2023-04-06 23:08:40', '2023-04-06 23:08:40'),
(27, 8, 7, 'student : Ahasiya of class : BELAJAR CODING, meet : Pertemuan 2 , send a report message to you', '2023-04-06 23:18:17', '2023-04-06 23:18:03'),
(28, 8, 6, 'your class has buy with student : Ahasiya, class: adsBELAJAR AJA', '2023-04-07 11:28:06', '2023-04-07 11:28:06'),
(29, 8, 6, 'your class has buy with student : Ahasiya, class: adsBELAJAR AJA', '2023-04-07 11:34:32', '2023-04-07 11:34:32'),
(30, 8, 6, 'your class has buy with student : Ahasiya, class: adsBELAJAR AJA', '2023-04-07 11:37:38', '2023-04-07 11:37:38'),
(31, 8, 6, 'your class has buy with student : Ahasiya, class: kelas coba aja nih', '2023-04-07 13:30:07', '2023-04-07 13:30:07'),
(32, 8, 6, 'your class has buy with student : Ahasiya, class: kelas coba aja nih', '2023-04-07 13:56:10', '2023-04-07 13:56:10'),
(33, 8, 6, 'your class has buy with student : Ahasiya, class: kelas coba aja nih', '2023-04-07 13:59:35', '2023-04-07 13:59:35'),
(34, 8, 6, 'your class has buy with student : Ahasiya, class: kelas coba aja nih', '2023-04-07 14:47:48', '2023-04-07 14:47:48'),
(35, 8, 6, 'your class has buy with student : Ahasiya, class: kelas coba aja nih', '2023-04-07 15:22:40', '2023-04-07 15:22:40'),
(36, 8, 6, 'your class has buy with student : Ahasiya, class: kelas coba aja nih', '2023-04-07 15:22:41', '2023-04-07 15:22:41'),
(37, 8, 6, 'your class has buy with student : Ahasiya, class: kelas coba aja nih', '2023-04-07 15:30:47', '2023-04-07 15:30:47'),
(38, 8, 6, 'your class has buy with student : Ahasiya, class: kelas coba aja nih', '2023-04-07 15:43:12', '2023-04-07 15:43:12'),
(39, 8, 6, 'your class has buy with student : Ahasiya, class: kelas coba aja nih', '2023-04-07 15:54:36', '2023-04-07 15:54:36'),
(40, 8, 6, 'your class has buy with student : Ahasiya, class: kelas coba aja nih', '2023-04-07 15:54:36', '2023-04-07 15:54:36'),
(41, 8, 6, 'your class has buy with student : Ahasiya, class: kelas coba aja nih', '2023-04-07 16:05:51', '2023-04-07 16:05:51'),
(42, 8, 6, 'your class has buy with student : Ahasiya, class: kelas coba aja nih', '2023-04-07 16:10:39', '2023-04-07 16:10:39'),
(43, 8, 6, 'your class has buy with student : Ahasiya, class: kelas coba aja nih', '2023-04-07 16:22:29', '2023-04-07 16:22:29'),
(44, 8, 6, 'your class has buy with student : Ahasiya, class: kelas coba aja nih', '2023-04-07 16:27:27', '2023-04-07 16:27:27'),
(45, 8, 6, 'your class has buy with student : Ahasiya, class: kelas coba aja nih', '2023-04-07 16:30:29', '2023-04-07 16:30:29'),
(46, 8, 6, 'your class has buy with student : Ahasiya, class: kelas coba aja nih', '2023-04-07 16:37:01', '2023-04-07 16:37:01'),
(47, 8, 6, 'your class has buy with student : Ahasiya, class: kelas coba aja nih', '2023-04-07 16:39:43', '2023-04-07 16:39:43'),
(48, 8, 6, 'your class has buy with student : Ahasiya, class: kelas coba aja nih', '2023-04-07 16:50:33', '2023-04-07 16:50:33'),
(49, 8, 6, 'your class has buy with student : Ahasiya, class: kelas coba aja nih', '2023-04-07 17:00:29', '2023-04-07 17:00:29'),
(50, 8, 6, 'your class has buy with student : Ahasiya, class: kelas coba aja nih', '2023-04-07 17:04:46', '2023-04-07 17:04:46'),
(51, 8, 6, 'your class has buy with student : Ahasiya, class: kelas coba aja nih', '2023-04-12 10:49:11', '2023-04-07 17:07:22'),
(52, 8, 6, 'your class has buy with student : Ahasiya, class: BELAJAR CODING', '2023-04-15 10:08:35', '2023-04-15 10:08:35'),
(53, 8, 7, 'student : Ahasiya, of class : BELAJAR CODING, meet : Pertemuan 1 , send a report message to you', '2023-04-19 13:02:10', '2023-04-19 13:02:10'),
(54, 8, 7, 'student : Ahasiya, of class : BELAJAR CODING, meet : Pertemuan 2 , send a report message to you', '2023-04-20 03:01:57', '2023-04-20 03:01:57'),
(55, 8, 7, 'student : Ahasiya, of class : BELAJAR CODING, meet : Pertemuan 3 , send a report message to you', '2023-04-20 03:02:02', '2023-04-20 03:02:02'),
(56, 8, 7, 'student : Ahasiya, of class : BELAJAR CODING, meet : Pertemuan 1 , send a report message to you', '2023-04-29 20:45:24', '2023-04-29 20:45:24'),
(57, 8, 7, 'student : Ahasiya, of class : BELAJAR CODING, meet : Pertemuan 1 , send a report message to you', '2023-05-08 15:52:32', '2023-05-08 15:52:32'),
(58, 8, 7, 'student : Ahasiya, of class : BELAJAR CODING, meet : Pertemuan 4-test , send a report message to you', '2023-05-08 15:52:56', '2023-05-08 15:52:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `class_teacher_salary`
--

CREATE TABLE `class_teacher_salary` (
  `id_class_teacher_salary` int(11) NOT NULL,
  `id_class_super_admin` int(11) NOT NULL,
  `id_class_class` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `file` varchar(255) NOT NULL,
  `commission` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `class_teacher_salary`
--

INSERT INTO `class_teacher_salary` (`id_class_teacher_salary`, `id_class_super_admin`, `id_class_class`, `price`, `file`, `commission`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 7, 1107000, '16828219431.pdf', '10', 'sudah lunas', '2023-04-30 01:32:23', '2023-04-30 01:32:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `email`
--

CREATE TABLE `email` (
  `id_email` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `email_relation`
--

CREATE TABLE `email_relation` (
  `id_email_relation` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `id_email` int(11) NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_users` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_profile` mediumblob,
  `image_banner` mediumblob,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `biography` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_media` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_users`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `image_profile`, `image_banner`, `telephone`, `biography`, `social_media`, `birth`, `gender`, `updated_at`, `created_at`) VALUES
(19, 'admin', 'admin@ahaaja.com', NULL, '$2y$10$PCXkDW39xMn9/aL0437lte9UMtZ2WUyw4t.2p.2v1gsrN2b0HTP1i', NULL, 0x64656661756c742d312e6a7067, 0x64656661756c742d322e6a7067, NULL, NULL, NULL, NULL, NULL, '2023-04-25 03:08:54', '2022-09-01 07:40:35'),
(20, 'not yet', 'made@gmail.com', NULL, '$2y$10$xjmu9Lk3gm6GvxoVlaM8R.Vu28juloLxRmzBBqZmOjGIerab/N1Xe', NULL, 0x64656661756c742d312e6a7067, 0x64656661756c742d322e6a7067, NULL, NULL, NULL, NULL, NULL, '2023-04-25 03:08:54', '2022-09-04 23:34:09'),
(21, 'not yet', 'adisan@gmail.com', NULL, '$2y$10$WMthMorwpTz3Vpgb8PCCQeHSWqyPmrOctgF4o.QZw9efvlQEitEde', NULL, 0x64656661756c742d312e6a7067, 0x64656661756c742d322e6a7067, NULL, NULL, NULL, NULL, NULL, '2023-04-25 03:08:54', '2022-09-10 22:17:57'),
(22, 'not yet', 'mei@gmail.com', NULL, '$2y$10$v79qrHImbW/qetb4OcQ9a.IX1ITpttl0A.blFvwdzYok2o4K0uiRe', NULL, 0x64656661756c742d312e6a7067, 0x64656661756c742d322e6a7067, NULL, NULL, NULL, NULL, NULL, '2023-04-25 03:08:54', '2022-10-18 04:16:54'),
(23, 'meijayana', 'mei@ahaa.com', NULL, '$2y$10$gqGrYhnG2QbpK0v16Yp.EuTDmVIsUE9FzIyM98ORhBRhQL3PBvNA6', NULL, 0x64656661756c742d312e6a7067, 0x64656661756c742d322e6a7067, NULL, NULL, NULL, NULL, NULL, '2023-04-25 03:08:54', '2022-10-18 04:58:02'),
(25, 'Disan J', 'adisantikajaya10@gmail.com', '2022-11-01 23:23:01', '$2y$10$mdhKIIr4Fq/8e0ZiKnZWlOfoIXlXicL/Bq74vDIOksm1lBj5jp6c6', NULL, 0x64656661756c742d312e6a7067, 0x64656661756c742d322e6a7067, '123123', 'sdfdsf', 'fghfghfghfghf', '2018-04-23', 2, '2023-04-25 03:08:54', '2022-11-01 23:23:01'),
(26, '15_I Putu Adi Santika Jaya', 'arwinsmith01@gmail.com', '2022-11-01 23:52:13', '0', NULL, 0x64656661756c742d312e6a7067, 0x64656661756c742d322e6a7067, NULL, NULL, NULL, NULL, NULL, '2023-04-25 03:08:54', '2022-11-01 23:52:13'),
(57, 'Disan Jaya', 'playeruser103@gmail.com', '2022-11-08 21:39:00', '0', NULL, 0x64656661756c742d312e6a7067, 0x64656661756c742d322e6a7067, '628970299606', '<p>asdasdsadsadsa1</p>', NULL, '2022-11-23', 1, '2023-04-25 03:08:54', '2022-11-08 21:39:00'),
(58, 'AHA Company', 'companyaha12@gmail.com', '2022-11-24 01:28:23', '$2y$10$JDTnuDDYk2vNS0Zrs0J7D.RFBSgY0ZSHOakHSPrIgbDGV765nZHfm', NULL, 0x64656661756c742d312e6a7067, 0x64656661756c742d322e6a7067, NULL, NULL, NULL, NULL, NULL, '2023-04-25 03:08:54', '2022-11-24 01:28:23'),
(64, 'Ahasiya', 'genahcoding139@gmail.com', '2023-01-03 08:28:19', '$2y$10$ykPousTQZBiicdR5BiEkreo.uyEVllJuqa/qhvQf/q2UV941ym/JW', NULL, 0x64656661756c742d312e6a7067, 0x64656661756c742d322e6a7067, '231231', '<p>sdsadasdasds</p>', 'asdasdasds', '2023-01-30', 1, '2023-04-25 07:42:19', '2023-01-03 08:27:39'),
(66, 'Ahasiya', 'arwinsmith02@gmail.com', NULL, '$2y$10$wjKZ.MPAj5pPb/G1Pt87z.M/YisEKfgto1eJqRQuM7GeCPY3YsD2G', NULL, 0x64656661756c742d312e6a7067, 0x64656661756c742d322e6a7067, NULL, NULL, NULL, NULL, NULL, '2023-04-25 03:08:54', '2023-01-07 05:10:49'),
(67, 'Tutor', 'budi@gmail.com', NULL, '$2y$10$DgemhkhwX8hOatX9FA5gcu6O5lOdp21eJ8suZ56Pxc3275gmZijXa', NULL, 0x64656661756c742d312e6a7067, 0x64656661756c742d322e6a7067, NULL, NULL, NULL, NULL, NULL, '2023-05-15 18:17:34', '2023-05-15 18:17:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_log`
--

CREATE TABLE `users_log` (
  `id_users_log` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_role`
--

CREATE TABLE `users_role` (
  `id_users_role` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users_role`
--

INSERT INTO `users_role` (`id_users_role`, `role_name`, `created_at`, `updated_at`) VALUES
(1, 'admin_class', NULL, NULL),
(2, 'user', NULL, NULL),
(3, 'super_admin_class', NULL, NULL),
(4, 'student_class', NULL, NULL),
(5, 'tutor_class', NULL, NULL),
(6, 'admin_blog\r\n', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_role_relation`
--

CREATE TABLE `users_role_relation` (
  `id_users_role_relation` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `id_users_role` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users_role_relation`
--

INSERT INTO `users_role_relation` (`id_users_role_relation`, `id_users`, `id_users_role`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 19, 1, '2022-11-04 16:00:00', '2022-11-04 16:00:00', NULL),
(2, 20, 2, '2022-11-04 16:00:00', '2022-11-04 16:00:00', NULL),
(3, 21, 2, '2022-11-04 16:00:00', '2022-11-04 16:00:00', NULL),
(4, 22, 2, '2022-11-04 16:00:00', '2022-11-04 16:00:00', NULL),
(5, 23, 2, '2022-11-04 16:00:00', '2022-11-04 16:00:00', NULL),
(25, 25, 2, '2022-11-08 16:00:00', '2022-11-08 16:00:00', NULL),
(33, 57, 2, '2022-11-08 16:00:00', '2022-11-08 16:00:00', NULL),
(43, 24, 2, '2022-11-09 16:00:00', '2022-11-09 16:00:00', NULL),
(48, 19, 2, '2022-11-09 16:00:00', '2022-11-09 16:00:00', NULL),
(50, 26, 2, '2022-11-17 16:00:00', '2022-11-17 16:00:00', NULL),
(51, 26, 1, NULL, NULL, NULL),
(54, 57, 5, '2022-11-21 16:00:00', '2022-11-21 16:00:00', NULL),
(59, 25, 4, '2022-11-22 02:50:11', '2022-11-22 02:50:11', NULL),
(60, 58, 2, '2022-11-24 01:29:06', '2022-11-24 01:29:06', NULL),
(61, 58, 3, '2022-11-24 01:29:06', '2022-11-24 01:29:06', NULL),
(67, 64, 2, '2023-01-03 08:27:39', '2023-01-03 08:27:39', NULL),
(68, 64, 4, '2023-01-03 08:28:19', '2023-01-03 08:28:19', NULL),
(70, 66, 2, '2023-01-07 05:10:49', '2023-01-07 05:10:49', NULL),
(71, 67, 2, '2023-04-24 04:54:42', '2023-04-24 04:54:42', NULL),
(72, 68, 2, '2023-04-24 05:11:23', '2023-04-24 05:11:23', NULL),
(73, 67, 6, NULL, NULL, NULL),
(74, 25, 6, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `blog_admin`
--
ALTER TABLE `blog_admin`
  ADD PRIMARY KEY (`id_blog_admin`);

--
-- Indeks untuk tabel `blog_admin_log`
--
ALTER TABLE `blog_admin_log`
  ADD PRIMARY KEY (`id_blog_admin_log`);

--
-- Indeks untuk tabel `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`id_blog_category`);

--
-- Indeks untuk tabel `blog_code_message`
--
ALTER TABLE `blog_code_message`
  ADD PRIMARY KEY (`id_blog_code_message`);

--
-- Indeks untuk tabel `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `blog_contacts`
--
ALTER TABLE `blog_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `blog_events`
--
ALTER TABLE `blog_events`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `blog_like`
--
ALTER TABLE `blog_like`
  ADD PRIMARY KEY (`id_blog_like`);

--
-- Indeks untuk tabel `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `blog_posts_visitors`
--
ALTER TABLE `blog_posts_visitors`
  ADD PRIMARY KEY (`id_blog_posts_visitors`);

--
-- Indeks untuk tabel `blog_posts_visitors_log`
--
ALTER TABLE `blog_posts_visitors_log`
  ADD PRIMARY KEY (`id_blog_posts_visitors_log`);

--
-- Indeks untuk tabel `class_admin`
--
ALTER TABLE `class_admin`
  ADD PRIMARY KEY (`id_class_admin`);

--
-- Indeks untuk tabel `class_admin_log`
--
ALTER TABLE `class_admin_log`
  ADD PRIMARY KEY (`id_class_admin_log`);

--
-- Indeks untuk tabel `class_category`
--
ALTER TABLE `class_category`
  ADD PRIMARY KEY (`id_class_category`);

--
-- Indeks untuk tabel `class_class`
--
ALTER TABLE `class_class`
  ADD PRIMARY KEY (`id_class_class`);

--
-- Indeks untuk tabel `class_class_comment`
--
ALTER TABLE `class_class_comment`
  ADD PRIMARY KEY (`id_class_class_comment`);

--
-- Indeks untuk tabel `class_class_detail`
--
ALTER TABLE `class_class_detail`
  ADD PRIMARY KEY (`id_class_class_detail`);

--
-- Indeks untuk tabel `class_class_student_report`
--
ALTER TABLE `class_class_student_report`
  ADD PRIMARY KEY (`id_class_class_student_report`);

--
-- Indeks untuk tabel `class_class_student_sertification`
--
ALTER TABLE `class_class_student_sertification`
  ADD PRIMARY KEY (`id_class_class_student_sertification`);

--
-- Indeks untuk tabel `class_class_student_wishlist`
--
ALTER TABLE `class_class_student_wishlist`
  ADD PRIMARY KEY (`id_class_class_student_wishlist`);

--
-- Indeks untuk tabel `class_class_teacher_report`
--
ALTER TABLE `class_class_teacher_report`
  ADD PRIMARY KEY (`id_class_class_teacher_report`);

--
-- Indeks untuk tabel `class_class_transaction_detail`
--
ALTER TABLE `class_class_transaction_detail`
  ADD PRIMARY KEY (`id_class_class_transaction_detail`);

--
-- Indeks untuk tabel `class_class_transaction_header`
--
ALTER TABLE `class_class_transaction_header`
  ADD PRIMARY KEY (`id_class_class_transaction_header`);

--
-- Indeks untuk tabel `class_code_message`
--
ALTER TABLE `class_code_message`
  ADD PRIMARY KEY (`id_class_code_message`);

--
-- Indeks untuk tabel `class_code_redeem`
--
ALTER TABLE `class_code_redeem`
  ADD PRIMARY KEY (`id_class_code_redeem`);

--
-- Indeks untuk tabel `class_host`
--
ALTER TABLE `class_host`
  ADD PRIMARY KEY (`id_class_host`);

--
-- Indeks untuk tabel `class_student`
--
ALTER TABLE `class_student`
  ADD PRIMARY KEY (`id_class_student`);

--
-- Indeks untuk tabel `class_student_class_relation`
--
ALTER TABLE `class_student_class_relation`
  ADD PRIMARY KEY (`id_class_student_classs_relation`);

--
-- Indeks untuk tabel `class_student_log`
--
ALTER TABLE `class_student_log`
  ADD PRIMARY KEY (`id_class_student_log`);

--
-- Indeks untuk tabel `class_super_admin`
--
ALTER TABLE `class_super_admin`
  ADD PRIMARY KEY (`id_class_super_admin`);

--
-- Indeks untuk tabel `class_super_admin_log`
--
ALTER TABLE `class_super_admin_log`
  ADD PRIMARY KEY (`id_class_super_admin_log`);

--
-- Indeks untuk tabel `class_teacher`
--
ALTER TABLE `class_teacher`
  ADD PRIMARY KEY (`id_class_teacher`);

--
-- Indeks untuk tabel `class_teacher_comment`
--
ALTER TABLE `class_teacher_comment`
  ADD PRIMARY KEY (`id_class_teacher_comment`);

--
-- Indeks untuk tabel `class_teacher_log`
--
ALTER TABLE `class_teacher_log`
  ADD PRIMARY KEY (`id_class_teacher_log`);

--
-- Indeks untuk tabel `class_teacher_salary`
--
ALTER TABLE `class_teacher_salary`
  ADD PRIMARY KEY (`id_class_teacher_salary`);

--
-- Indeks untuk tabel `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`id_email`);

--
-- Indeks untuk tabel `email_relation`
--
ALTER TABLE `email_relation`
  ADD PRIMARY KEY (`id_email_relation`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_users`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `users_log`
--
ALTER TABLE `users_log`
  ADD PRIMARY KEY (`id_users_log`);

--
-- Indeks untuk tabel `users_role`
--
ALTER TABLE `users_role`
  ADD PRIMARY KEY (`id_users_role`);

--
-- Indeks untuk tabel `users_role_relation`
--
ALTER TABLE `users_role_relation`
  ADD PRIMARY KEY (`id_users_role_relation`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `blog_admin`
--
ALTER TABLE `blog_admin`
  MODIFY `id_blog_admin` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `blog_admin_log`
--
ALTER TABLE `blog_admin_log`
  MODIFY `id_blog_admin_log` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `id_blog_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `blog_code_message`
--
ALTER TABLE `blog_code_message`
  MODIFY `id_blog_code_message` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `blog_contacts`
--
ALTER TABLE `blog_contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `blog_events`
--
ALTER TABLE `blog_events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `blog_like`
--
ALTER TABLE `blog_like`
  MODIFY `id_blog_like` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `blog_posts_visitors`
--
ALTER TABLE `blog_posts_visitors`
  MODIFY `id_blog_posts_visitors` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT untuk tabel `blog_posts_visitors_log`
--
ALTER TABLE `blog_posts_visitors_log`
  MODIFY `id_blog_posts_visitors_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=810;

--
-- AUTO_INCREMENT untuk tabel `class_admin`
--
ALTER TABLE `class_admin`
  MODIFY `id_class_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `class_admin_log`
--
ALTER TABLE `class_admin_log`
  MODIFY `id_class_admin_log` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `class_category`
--
ALTER TABLE `class_category`
  MODIFY `id_class_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `class_class`
--
ALTER TABLE `class_class`
  MODIFY `id_class_class` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `class_class_comment`
--
ALTER TABLE `class_class_comment`
  MODIFY `id_class_class_comment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `class_class_detail`
--
ALTER TABLE `class_class_detail`
  MODIFY `id_class_class_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `class_class_student_report`
--
ALTER TABLE `class_class_student_report`
  MODIFY `id_class_class_student_report` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `class_class_student_sertification`
--
ALTER TABLE `class_class_student_sertification`
  MODIFY `id_class_class_student_sertification` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `class_class_student_wishlist`
--
ALTER TABLE `class_class_student_wishlist`
  MODIFY `id_class_class_student_wishlist` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `class_class_teacher_report`
--
ALTER TABLE `class_class_teacher_report`
  MODIFY `id_class_class_teacher_report` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `class_class_transaction_detail`
--
ALTER TABLE `class_class_transaction_detail`
  MODIFY `id_class_class_transaction_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `class_class_transaction_header`
--
ALTER TABLE `class_class_transaction_header`
  MODIFY `id_class_class_transaction_header` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `class_code_message`
--
ALTER TABLE `class_code_message`
  MODIFY `id_class_code_message` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `class_code_redeem`
--
ALTER TABLE `class_code_redeem`
  MODIFY `id_class_code_redeem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `class_host`
--
ALTER TABLE `class_host`
  MODIFY `id_class_host` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `class_student`
--
ALTER TABLE `class_student`
  MODIFY `id_class_student` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `class_student_class_relation`
--
ALTER TABLE `class_student_class_relation`
  MODIFY `id_class_student_classs_relation` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `class_student_log`
--
ALTER TABLE `class_student_log`
  MODIFY `id_class_student_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT untuk tabel `class_super_admin`
--
ALTER TABLE `class_super_admin`
  MODIFY `id_class_super_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `class_super_admin_log`
--
ALTER TABLE `class_super_admin_log`
  MODIFY `id_class_super_admin_log` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `class_teacher`
--
ALTER TABLE `class_teacher`
  MODIFY `id_class_teacher` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `class_teacher_comment`
--
ALTER TABLE `class_teacher_comment`
  MODIFY `id_class_teacher_comment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `class_teacher_log`
--
ALTER TABLE `class_teacher_log`
  MODIFY `id_class_teacher_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT untuk tabel `class_teacher_salary`
--
ALTER TABLE `class_teacher_salary`
  MODIFY `id_class_teacher_salary` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `email`
--
ALTER TABLE `email`
  MODIFY `id_email` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `email_relation`
--
ALTER TABLE `email_relation`
  MODIFY `id_email_relation` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_users` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT untuk tabel `users_log`
--
ALTER TABLE `users_log`
  MODIFY `id_users_log` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users_role`
--
ALTER TABLE `users_role`
  MODIFY `id_users_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `users_role_relation`
--
ALTER TABLE `users_role_relation`
  MODIFY `id_users_role_relation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- Database: `bmtc`
--
CREATE DATABASE IF NOT EXISTS `bmtc` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bmtc`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `db_pelanggan_kursus`
--

CREATE TABLE `db_pelanggan_kursus` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `program` varchar(255) NOT NULL,
  `sub_program` varchar(255) NOT NULL,
  `pesan` varchar(255) NOT NULL,
  `telepon` varchar(50) NOT NULL,
  `tanggal_kursus` date NOT NULL,
  `created_at` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `db_pelanggan_kursus`
--
ALTER TABLE `db_pelanggan_kursus`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `db_pelanggan_kursus`
--
ALTER TABLE `db_pelanggan_kursus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `coba_nuxtjs2_laravel9`
--
CREATE DATABASE IF NOT EXISTS `coba_nuxtjs2_laravel9` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `coba_nuxtjs2_laravel9`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data`
--

CREATE TABLE `data` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data`
--

INSERT INTO `data` (`id`, `nama`, `password`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 'admin', '$2y$10$QgzslbrPG7qGF5ibPqUXjegFLr76WwpY2qH76Qjwau9Yj.oJr/9Ze', '2022-06-30', '2022-06-30', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'admin', 'admin@gmail.com', NULL, '$2y$10$ctZMZhfr6/alXEMPALA5fu3tA9DfFjrcr7ljKJG4pQQt8pW6fn6vG', NULL, '2022-07-02 07:49:45', '2022-07-02 07:49:45');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data`
--
ALTER TABLE `data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `crud_laravel`
--
CREATE DATABASE IF NOT EXISTS `crud_laravel` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `crud_laravel`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id`, `nama`, `telp`, `harga`, `foto`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 'SALAD PACKET COMPLATE', '628970299606', '35.000', '1678785592.jpg', '<p>Salad adalah hidangan yang terdiri dari campuran sayuran mentah, buah-buahan, biji-bijian, dan bahan-bahan lainnya yang dicampur bersama dengan saus atau dressing. Salad sangat populer di seluruh dunia karena rasanya yang segar dan enak, serta memberikan banyak manfaat bagi kesehatan.</p><p>Berikut adalah 5 manfaat makan salad:</p><ol><li>Menjaga kesehatan jantung: Sayuran hijau seperti bayam dan kale, yang sering menjadi bahan dasar salad, mengandung banyak antioksidan dan nutrisi penting yang dapat membantu menjaga kesehatan jantung.</li><li>Meningkatkan sistem kekebalan tubuh: Salad mengandung banyak vitamin dan mineral yang penting untuk sistem kekebalan tubuh, seperti vitamin C dan E, yang membantu melawan infeksi dan penyakit.</li><li>Menjaga berat badan: Salad rendah kalori namun tinggi serat, yang dapat membuat perut terasa kenyang lebih lama. Ini dapat membantu mengurangi nafsu makan dan membantu menjaga berat badan yang sehat.</li><li>Menjaga kesehatan tulang: Beberapa bahan yang sering digunakan dalam salad, seperti kecambah, biji bunga matahari, dan kacang-kacangan, mengandung banyak kalsium dan vitamin D, yang sangat penting untuk menjaga kesehatan tulang.</li><li>Menjaga kesehatan mental: Salad juga dapat membantu menjaga kesehatan mental, karena beberapa bahan yang digunakan dalam salad, seperti sayuran hijau dan biji-bijian, mengandung nutrisi yang dapat membantu meningkatkan suasana hati dan mengurangi stres.</li></ol><p>\"Nikmati hidangan segar dan lezat dengan manfaat kesehatan yang melimpah dalam setiap gigitan salad kami!\"</p>', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2023_03_11_062031_menu', 1),
(3, '2023_03_11_062050_users', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'adi (admin)', 'admin@gmail.com', '$2y$10$qWJCyphA1fiVbqE3G7WjV.NPGUq8CHzd3saRd5GDbt9tcNheDJcFW', NULL, NULL),
(2, 'admin', 'admin12345@gmail.com', '$2y$10$LhOyKJNkSVbKp8Y3ttTYp.g2SEvsB.tBNBkHA7WwXcU8cErkwQwpG', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `db_kampus`
--
CREATE DATABASE IF NOT EXISTS `db_kampus` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_kampus`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nim` varchar(255) NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `jurusan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nama`, `nim`, `gender`, `jurusan`, `created_at`) VALUES
(1, 'budii', '12425', 0, 'MTI', '2023-05-21 00:15:13'),
(2, 'Andi', '12345', 1, 'DKV', '2023-05-21 01:30:45'),
(3, 'Citra', '54321', 0, 'KAB', '2023-05-21 02:45:18'),
(4, 'Dewi', '98765', 0, 'MTI', '2023-05-21 03:55:21'),
(5, 'Eka', '23456', 1, 'DKV', '2023-05-21 04:45:37'),
(6, 'Fajar', '67890', 1, 'KAB', '2023-05-21 06:15:59'),
(7, 'Gita', '13579', 0, 'MTI', '2023-05-21 07:30:12'),
(8, 'Hadi', '24680', 1, 'DKV', '2023-05-21 08:45:34'),
(9, 'Indah', '87654', 0, 'KAB', '2023-05-21 10:00:57'),
(10, 'Joko', '56789', 1, 'MTI', '2023-05-21 11:15:10'),
(11, 'Kiki', '45678', 0, 'DKV', '2023-05-21 12:30:23'),
(12, 'Lina', '32109', 0, 'KAB', '2023-05-21 13:45:46'),
(13, 'Mira', '90876', 0, 'MTI', '2023-05-21 14:55:09'),
(14, 'Nadia', '65432', 0, 'DKV', '2023-05-21 15:45:32'),
(15, 'Oscar', '10987', 1, 'KAB', '2023-05-21 16:15:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(6) UNSIGNED NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `created_at`) VALUES
(1, 'admin1234', 'admin1234', 'admin@gmail.com', '2023-05-03 06:40:42');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `disanjaya_online`
--
CREATE DATABASE IF NOT EXISTS `disanjaya_online` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `disanjaya_online`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `project`
--

CREATE TABLE `project` (
  `id_project` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `url_content` varchar(255) NOT NULL,
  `image_banner` varchar(255) NOT NULL,
  `categories` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `project`
--

INSERT INTO `project` (`id_project`, `title`, `description`, `url_content`, `image_banner`, `categories`, `created_at`, `updated_at`) VALUES
(1, 'gajah', 'gajah hewan besar', 'gajah.html', 'gajah.jpg', NULL, NULL, NULL),
(2, 'kucing', 'kucing hewan lucu', 'kucing.html', 'kucing.jpg', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `project_category`
--

CREATE TABLE `project_category` (
  `id_project_category` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `project_category`
--

INSERT INTO `project_category` (`id_project_category`, `title`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'animal', 'this is animal case\r\n', NULL, NULL, NULL),
(2, 'kaki empat', 'hewan berkaki empat', NULL, NULL, NULL),
(3, 'karnivora', 'pemakan daging', '2022-07-20', '2022-07-20', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `project_category_relationship`
--

CREATE TABLE `project_category_relationship` (
  `id_project_category_relationship` int(11) NOT NULL,
  `id_project_category` int(11) NOT NULL,
  `id_project` int(11) NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_user` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `role_user`, `created_at`, `updated_at`) VALUES
(3, 'admin', '$2y$10$RG7RXGEpYTe6i8XRew393e9CU1r4mmL68zFoVWxEVEOeKgkyq43BS', NULL, '2022-07-07', '2022-07-07');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id_project`);

--
-- Indeks untuk tabel `project_category`
--
ALTER TABLE `project_category`
  ADD PRIMARY KEY (`id_project_category`);

--
-- Indeks untuk tabel `project_category_relationship`
--
ALTER TABLE `project_category_relationship`
  ADD PRIMARY KEY (`id_project_category_relationship`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `project`
--
ALTER TABLE `project`
  MODIFY `id_project` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `project_category`
--
ALTER TABLE `project_category`
  MODIFY `id_project_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `project_category_relationship`
--
ALTER TABLE `project_category_relationship`
  MODIFY `id_project_category_relationship` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `hotel`
--
CREATE DATABASE IF NOT EXISTS `hotel` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `hotel`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kamar`
--

CREATE TABLE `kamar` (
  `id` int(11) NOT NULL,
  `nama` varchar(60) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `kategori` tinyint(4) DEFAULT NULL,
  `kapasitas` int(11) DEFAULT NULL,
  `deskripsi` text,
  `status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kamar`
--

INSERT INTO `kamar` (`id`, `nama`, `harga`, `kategori`, `kapasitas`, `deskripsi`, `status`) VALUES
(1, 'Standard Room', 500000, 1, 2, 'Kamar standar dengan tempat tidur king, area bebas asap rokok, dan luas 25 meter persegi', 1),
(2, 'Deluxe Room', 750000, 2, 2, 'Kamar deluxe dengan dua tempat tidur single, area merokok diizinkan, dan luas 30 meter persegi', 1),
(3, 'Suite Room', 1500000, 3, 2, 'Kamar suite dengan tempat tidur king, area bebas asap rokok, dan luas 50 meter persegi dengan ruang tamu terpisah', 0),
(4, 'Family Room', 1000000, 4, 4, 'Kamar keluarga dengan dua tempat tidur queen, area bebas asap rokok, dan luas 40 meter persegi', 1),
(5, 'Executive Room', 2000000, 5, 2, 'Kamar eksekutif dengan tempat tidur king, area bebas asap rokok, dan luas 60 meter persegi dengan fasilitas kamar mandi eksklusif', 0),
(6, 'Superior Room', 600000, 1, 2, 'Kamar superior dengan tempat tidur king, area bebas asap rokok, dan luas 28 meter persegi', 1),
(7, 'Grand Suite', 2500000, 3, 2, 'Kamar grand suite dengan tempat tidur king, area bebas asap rokok, dan luas 80 meter persegi dengan ruang tamu dan ruang makan terpisah', 0),
(8, 'Presidential Suite', 5000000, 3, 2, 'Kamar presidential suite dengan tempat tidur king, area bebas asap rokok, dan luas 100 meter persegi dengan fasilitas kamar mandi mewah, sauna, dan jacuzzi', 0),
(9, 'Business Room', 800000, 5, 2, 'Kamar bisnis dengan tempat tidur king, area bebas asap rokok, dan luas 35 meter persegi dengan fasilitas meja kerja', 1),
(10, 'Junior Suite', 1800000, 3, 2, 'Kamar junior suite dengan tempat tidur king, area bebas asap rokok, dan luas 70 meter persegi dengan ruang tamu dan ruang makan terpisah', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `paket`
--

CREATE TABLE `paket` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `deskripsi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `paket`
--

INSERT INTO `paket` (`id`, `nama`, `harga`, `status`, `deskripsi`) VALUES
(1, 'Paket A', 150000, 1, 'Paket kamar dan sarapan pagi'),
(2, 'Paket B', 300000, 1, 'Paket kamar, sarapan pagi, dan makan siang'),
(3, 'Paket C', 450000, 1, 'Paket kamar, sarapan pagi, makan siang, dan makan malam'),
(4, 'Paket D', 200000, 1, 'Paket kamar dan pijat satu jam'),
(5, 'Paket E', 250000, 1, 'Paket kamar, sarapan pagi, dan pijat satu jam'),
(6, 'Paket F', 500000, 1, 'Paket kamar, sarapan pagi, makan siang, makan malam, dan pijat satu jam'),
(7, 'Paket G', 100000, 0, 'Paket laundry satu kali'),
(8, 'Paket H', 50000, 0, 'Paket snack dan minuman'),
(9, 'Paket I', 70000, 0, 'Paket mini bar'),
(10, 'Paket J', 1000000, 1, 'Paket VIP: kamar mewah, sarapan pagi, makan siang, makan malam, pijat satu jam, dan pemandu wisata');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan`
--

CREATE TABLE `pesanan` (
  `id` int(11) NOT NULL,
  `nama_pemesan` varchar(255) DEFAULT NULL,
  `telp_pemesan` varchar(255) DEFAULT NULL,
  `tanggal_lahir` varchar(255) DEFAULT NULL,
  `KTP` varchar(255) DEFAULT NULL,
  `waktu_mulai` timestamp NULL DEFAULT NULL,
  `waktu_selesai` timestamp NULL DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pesanan`
--

INSERT INTO `pesanan` (`id`, `nama_pemesan`, `telp_pemesan`, `tanggal_lahir`, `KTP`, `waktu_mulai`, `waktu_selesai`, `keterangan`, `status`) VALUES
(1, 'Asep', '081234567890', '1990-10-10', '1234567890', '2023-04-18 01:00:00', '2023-04-18 04:00:00', 'Pesanan sarapan', 1),
(2, 'Budi', '085678901234', '1995-05-05', '0987654321', '2023-04-19 05:00:00', '2023-04-19 09:00:00', 'Pesanan snack', 0),
(3, 'Cici', '081234567890', '1998-01-01', '5678901234', '2023-04-20 00:00:00', '2023-04-20 04:00:00', 'Pesanan kopi dan teh', 1),
(4, 'Dodi', '085678901234', '1992-12-12', '4321098765', '2023-04-21 06:00:00', '2023-04-21 10:00:00', 'Pesanan makan siang', 1),
(5, 'Euis', '081234567890', '1991-03-15', '6789012345', '2023-04-22 02:00:00', '2023-04-22 04:00:00', 'Pesanan ruangan pendingin', 0),
(6, 'Fafa', '085678901234', '1996-07-07', '3210987654', '2023-04-23 07:00:00', '2023-04-23 09:00:00', 'Pesanan akses wifi', 1),
(7, 'Gugi', '081234567890', '1993-09-20', '8901234567', '2023-04-24 02:00:00', '2023-04-24 05:00:00', 'Pesanan makanan ringan', 1),
(8, 'Hani', '085678901234', '1994-02-02', '3456789012', '2023-04-25 03:00:00', '2023-04-25 07:00:00', 'Pesanan ruangan tanpa asap rokok', 0),
(9, 'Ivan', '081234567890', '1997-06-06', '7890123456', '2023-04-26 04:00:00', '2023-04-26 08:00:00', 'Pesanan kopi dan teh', 1),
(10, 'Joko', '085678901234', '1999-11-11', '2345678901', '2023-04-27 01:00:00', '2023-04-27 04:00:00', 'Pesanan sarapan', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan_kamar`
--

CREATE TABLE `pesanan_kamar` (
  `id` int(11) NOT NULL,
  `pesanan_id` int(11) DEFAULT NULL,
  `kamar_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pesanan_kamar`
--

INSERT INTO `pesanan_kamar` (`id`, `pesanan_id`, `kamar_id`) VALUES
(1, 1, 2),
(2, 1, 4),
(3, 2, 3),
(4, 3, 1),
(5, 4, 5),
(6, 5, 6),
(7, 6, 8),
(8, 7, 9),
(9, 8, 2),
(10, 9, 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan_ruangan`
--

CREATE TABLE `pesanan_ruangan` (
  `id` int(11) NOT NULL,
  `pesanan_id` int(11) DEFAULT NULL,
  `paket_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruangan`
--

CREATE TABLE `ruangan` (
  `id` int(11) NOT NULL,
  `nama` varchar(10) DEFAULT NULL,
  `kapasitas` int(11) DEFAULT NULL,
  `fasilitas` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ruangan`
--

INSERT INTO `ruangan` (`id`, `nama`, `kapasitas`, `fasilitas`, `status`) VALUES
(1, 'A1', 20, 'Meja, kursi, proyektor', 1),
(2, 'A2', 30, 'Meja, kursi, sound system', 1),
(3, 'B1', 15, 'Meja, kursi, papan tulis', 1),
(4, 'B2', 25, 'Meja, kursi, proyektor, whiteboard', 0),
(5, 'C1', 40, 'Meja, kursi, sound system, LCD', 1),
(6, 'C2', 50, 'Meja, kursi, proyektor, LCD', 1),
(7, 'D1', 10, 'Meja, kursi, whiteboard', 0),
(8, 'D2', 20, 'Meja, kursi, proyektor, papan tulis', 1),
(9, 'E1', 35, 'Meja, kursi, sound system, proyektor, LCD', 1),
(10, 'E2', 45, 'Meja, kursi, proyektor, LCD, papan tulis', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `jabatan` varchar(255) DEFAULT NULL,
  `telp` varchar(20) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `KTP` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kamar`
--
ALTER TABLE `kamar`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indeks untuk tabel `paket`
--
ALTER TABLE `paket`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indeks untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indeks untuk tabel `pesanan_kamar`
--
ALTER TABLE `pesanan_kamar`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indeks untuk tabel `pesanan_ruangan`
--
ALTER TABLE `pesanan_ruangan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indeks untuk tabel `ruangan`
--
ALTER TABLE `ruangan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kamar`
--
ALTER TABLE `kamar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `paket`
--
ALTER TABLE `paket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `pesanan_kamar`
--
ALTER TABLE `pesanan_kamar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `pesanan_ruangan`
--
ALTER TABLE `pesanan_ruangan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `ruangan`
--
ALTER TABLE `ruangan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `latihan_api_laravel_react`
--
CREATE DATABASE IF NOT EXISTS `latihan_api_laravel_react` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `latihan_api_laravel_react`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `activity`
--

CREATE TABLE `activity` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `activity`
--

INSERT INTO `activity` (`id`, `title`, `description`, `active`, `created_at`, `updated_at`) VALUES
(2, 'MEET TECH YUK', 'MEET TECH YUK RAME RAME', 0, '2022-12-27 15:14:44', '2023-01-15 05:10:30'),
(3, 'kegiatan', 'mencoba hal baru', 1, '2023-01-12 16:56:18', '2023-01-12 16:56:18'),
(4, 'kegiatan', 'mencoba hal baru', 1, '2023-01-12 17:29:34', '2023-01-12 17:29:34'),
(5, 'MEET TECH YUK', 'MEET TECH YUK RAME RAME', 0, '2023-01-15 05:10:48', '2023-01-15 05:10:48'),
(6, 'MEET TECH YUK', 'MEET TECH YUK RAME RAME', 0, '2023-01-15 21:46:03', '2023-01-15 21:46:03'),
(7, 'MEET TECH YUK', 'MEET TECH YUK RAME RAME', 0, '2023-01-15 21:46:05', '2023-01-15 21:46:05'),
(8, 'MEET TECH YUK', 'MEET TECH YUK RAME RAME', 0, '2023-01-15 21:46:13', '2023-01-15 21:46:13'),
(9, 'MEET TECH YUK', 'MEET TECH YUK RAME RAME', 0, '2023-01-15 21:46:29', '2023-01-15 21:46:29'),
(10, 'MEET TECH YUK', 'MEET TECH YUK RAME RAME', 0, '2023-01-15 21:46:40', '2023-01-15 21:46:40'),
(11, 'MEET TECH YUK', 'MEET TECH YUK RAME RAME', 0, '2023-01-15 21:47:29', '2023-01-15 21:47:29'),
(12, 'MEET TECH YUK', 'MEET TECH YUK RAME RAME', 0, '2023-01-15 21:47:39', '2023-01-15 21:47:39'),
(13, 'MEET TECH YUK', 'MEET TECH YUK RAME RAME', 0, '2023-01-15 22:26:40', '2023-01-15 22:26:40'),
(14, 'adsad', 'asddas', 1, '2023-01-15 22:27:10', '2023-01-15 22:27:10'),
(15, 'NGODING BARENG', 'NGODING BARENG', 1, '2023-01-16 20:37:58', '2023-01-16 20:37:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_12_27_125810_activity', 1),
(6, '2014_10_12_000000_create_users_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'adasddasasda', 'adsd@gmail.com', NULL, '$2y$10$1Yu9YJD24.FOng3iMA/jMOKWDmSfgxe4l9fKGExe8CBqBxbOcR13S', NULL, '2022-12-27 18:53:53', '2022-12-27 18:53:53'),
(2, 'admin12345', 'admin12345@gmail.com', NULL, '$2y$10$G4hnw/HD53rB.tGFFx3xA.5ccOqKpLRfR7/wy8zOzmMxzbX5rN.46', NULL, '2023-01-12 17:07:27', '2023-01-12 17:07:27');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `activity`
--
ALTER TABLE `activity`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `passteel_bali`
--
CREATE DATABASE IF NOT EXISTS `passteel_bali` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `passteel_bali`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--

CREATE TABLE `product` (
  `id_product` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image_product_1` varchar(255) NOT NULL,
  `image_product_2` varchar(255) DEFAULT NULL,
  `image_product_3` varchar(255) DEFAULT NULL,
  `image_product_4` varchar(255) DEFAULT NULL,
  `categories` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `product`
--

INSERT INTO `product` (`id_product`, `title`, `description`, `image_product_1`, `image_product_2`, `image_product_3`, `image_product_4`, `categories`, `created_at`, `updated_at`) VALUES
(1, 'asdasdsadasdsa', 'dsadasdsadasdas', '16602054691.jpg', NULL, NULL, NULL, '[\"1\"]', '2022-08-11', '2022-08-11'),
(2, 'asdasdsas', 'adasdasd', '16602119341.jpg', NULL, NULL, NULL, '[\"1\"]', '2022-08-11', '2022-08-11'),
(3, 'adasdasdasdasd', 'asdasdas', '16602119471.jpeg', NULL, NULL, NULL, '[\"1\"]', '2022-08-11', '2022-08-11'),
(4, 'fdsfdsfdsfdsfsdfd', 'dsfdsffd', '16602119541.jpg', NULL, NULL, NULL, '[\"1\"]', '2022-08-11', '2022-08-11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_category`
--

CREATE TABLE `product_category` (
  `id_product_category` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image_category` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `product_category`
--

INSERT INTO `product_category` (`id_product_category`, `title`, `description`, `image_category`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'asdasdasdas', 'asdassadas', '1660205451.jpg', '2022-08-11', '2022-08-11', NULL),
(2, 'sdfdsfsfsd', '<ul><li>fewfefef</li><li>sd</li><li>f</li><li>sddf</li></ul>', '1660267593.jpeg', '2022-08-12', '2022-08-12', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_user` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `role_user`, `created_at`, `updated_at`) VALUES
(6, 'passtellbali2016@gmail.com', '$2y$10$v7hamfOr5cGWHJhaTY032uPBP7Zo3NGj7c.Zg9HUGWtyQpzrEGmlG', NULL, '2022-08-10', '2022-08-10');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_product`);

--
-- Indeks untuk tabel `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id_product_category`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `product`
--
ALTER TABLE `product`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id_product_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Database: `penjualan`
--
CREATE DATABASE IF NOT EXISTS `penjualan` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `penjualan`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `kd_barang` varchar(10) NOT NULL,
  `nama_barang` varchar(255) DEFAULT NULL,
  `stok_barang` int(11) DEFAULT NULL,
  `harga_barang` double(12,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `kd_faktur` varchar(10) NOT NULL,
  `tanggal_faktur` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_detail`
--

CREATE TABLE `transaksi_detail` (
  `id_transaksi_detail` int(11) NOT NULL,
  `kd_barang` varchar(10) DEFAULT NULL,
  `kd_faktur` varchar(10) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `harga` double(12,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kd_barang`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`kd_faktur`);

--
-- Indeks untuk tabel `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  ADD PRIMARY KEY (`id_transaksi_detail`),
  ADD KEY `FK_barang` (`kd_barang`),
  ADD KEY `FK_transaksi` (`kd_faktur`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  ADD CONSTRAINT `FK_barang` FOREIGN KEY (`kd_barang`) REFERENCES `barang` (`kd_barang`),
  ADD CONSTRAINT `FK_transaksi` FOREIGN KEY (`kd_faktur`) REFERENCES `transaksi` (`kd_faktur`);
--
-- Database: `projek_duasa-ayu`
--
CREATE DATABASE IF NOT EXISTS `projek_duasa-ayu` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `projek_duasa-ayu`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `id_customer` int(11) NOT NULL,
  `nama_customer` varchar(225) NOT NULL,
  `no_telephone` varchar(255) NOT NULL,
  `link_undangan` varchar(255) NOT NULL,
  `link_template` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL,
  `catatan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`id_customer`, `nama_customer`, `no_telephone`, `link_undangan`, `link_template`, `harga`, `catatan`) VALUES
(1, 'budi neyy', '23131', 'test', 'blade.php', 12313123, '<p>saadsedang proses pengerjaan</p>'),
(4, 'YANI', '62', 'YANI', 'YANI', 123, '<p>YANI</p>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_users` int(11) NOT NULL,
  `username` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_users`, `username`, `password`, `email`) VALUES
(2, 'admin', '$2y$10$uSfbPVOcxDNkUb0vXbJpVuLQwPoiRCR4yEBWxPOOwwCl8Zg5bIR22', 'admin@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_log`
--

CREATE TABLE `users_log` (
  `id_users_log` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `catatan` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users_log`
--

INSERT INTO `users_log` (`id_users_log`, `id_users`, `catatan`) VALUES
(1, 2, 'admin#2  menambahkan undangan sadasd #3'),
(2, 2, 'admin#2  menghapus undangan adasdas #3'),
(3, 2, 'admin#2  menghapus undangan budi neyy #1'),
(4, 2, 'admin#2  menambahkan undangan YANI #4');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_users`);

--
-- Indeks untuk tabel `users_log`
--
ALTER TABLE `users_log`
  ADD PRIMARY KEY (`id_users_log`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `customer`
--
ALTER TABLE `customer`
  MODIFY `id_customer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users_log`
--
ALTER TABLE `users_log`
  MODIFY `id_users_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `projek_nia`
--
CREATE DATABASE IF NOT EXISTS `projek_nia` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `projek_nia`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id`, `nama`, `harga`) VALUES
(1, 'mie', 5000),
(2, 'nasi', 5000),
(3, 'roti', 6000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `projek_p5`
--
CREATE DATABASE IF NOT EXISTS `projek_p5` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `projek_p5`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `Id` int(11) NOT NULL,
  `Nama` varchar(255) NOT NULL,
  `Telp` varchar(255) NOT NULL,
  `Harga` varchar(255) NOT NULL,
  `Foto` varchar(255) NOT NULL,
  `Deskripsi` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'admin1', 'admin@gmail.com', '$2y$10$KCvbfB8mvyJiKVEXzP40seVssMerzsAEsKpA7gQ9l8TmPr8lzO1je');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`Id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `projek_ycibali`
--
CREATE DATABASE IF NOT EXISTS `projek_ycibali` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `projek_ycibali`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `achive`
--

CREATE TABLE `achive` (
  `id_achive` int(11) NOT NULL,
  `title` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `category`
--

CREATE TABLE `category` (
  `id_category` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `category`
--

INSERT INTO `category` (`id_category`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(4, 'binatang', NULL, 'default.png', '2023-03-27 15:23:14', '2023-03-27 15:23:14'),
(5, 'tumbuhan', NULL, 'default.png', '2023-03-27 15:23:18', '2023-03-27 15:23:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `comment`
--

CREATE TABLE `comment` (
  `id_commment` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `text` mediumtext NOT NULL,
  `id_news` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `gallery`
--

CREATE TABLE `gallery` (
  `id_gallery` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `gallery_category`
--

CREATE TABLE `gallery_category` (
  `id_gallery_category` int(11) NOT NULL,
  `id_gallery` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `news`
--

CREATE TABLE `news` (
  `id_news` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` mediumtext NOT NULL,
  `seo` mediumtext NOT NULL,
  `text` longtext NOT NULL,
  `author` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `news`
--

INSERT INTO `news` (`id_news`, `slug`, `title`, `seo`, `text`, `author`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'our-workshop-and-galery_2023-03-28_10:28:52', 'Our workshop and galery', '\"sofa\",\"abu\",\"abu\",\"soft\"', '<p>deskripsi</p>', 'admin fix', '1679999284.jpg', '2023-03-28 02:28:05', '2023-03-28 02:28:52', NULL),
(2, 'our-workshop-and-galery_2023-03-29_06:27:29', 'Our workshop and galery', '\"coding\",\"belajar\"', '<p>deskripsi</p>', 'admin fix', '1680071249.jpg', '2023-03-28 22:27:29', '2023-03-28 22:27:29', NULL),
(3, 'yci-balli-goes-to-school-webinar-2023_2023-04-04_15:37:43', 'YCI BALLI GOES TO SCHOOL | WEBINAR 2023', '\"yci\",\"balli\",\"goes\",\"to\",\"school\",\"webinar\",\"2023\"', '<p>YCI BALLI GOES TO SCHOOL | WEBINAR 2023</p>', 'admin2', '1680622663.png', '2023-04-04 07:37:43', '2023-04-04 07:37:43', NULL),
(4, 'yci-balli-goes-to-school-webinar-2023_2023-04-04_15:38:15', 'YCI BALLI GOES TO SCHOOL | WEBINAR 2023', '\"yci\",\"balli\",\"goes\",\"to\",\"school\",\"webinar\",\"2023\"', '<p>YCI BALLI GOES TO SCHOOL | WEBINAR 2023</p>', 'admin2', '1680622695.png', '2023-04-04 07:38:15', '2023-04-04 07:38:15', NULL),
(5, 'test---yci-balli-goes-to-school-webinar-2023_2023-04-04_15:38:44', 'TEST---YCI BALLI GOES TO SCHOOL | WEBINAR 2023', '\"test\",\"yci\",\"balli\",\"goes\",\"to\",\"school\",\"webinar\",\"2023\"', '<p>TEST---YCI BALLI GOES TO SCHOOL | WEBINAR 2023</p>', 'admin2', '1680622724.jpg', '2023-04-04 07:38:44', '2023-04-04 07:38:44', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `news_category`
--

CREATE TABLE `news_category` (
  `id_news_category` int(11) NOT NULL,
  `id_news` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `news_category`
--

INSERT INTO `news_category` (`id_news_category`, `id_news`, `id_category`, `created_at`, `updated_at`) VALUES
(3, 1, 5, '2023-03-28 02:28:52', '2023-03-28 02:28:52'),
(4, 2, 4, '2023-03-28 22:27:29', '2023-03-28 22:27:29'),
(5, 2, 5, '2023-03-28 22:27:29', '2023-03-28 22:27:29'),
(6, 3, 5, '2023-04-04 07:37:43', '2023-04-04 07:37:43'),
(7, 4, 5, '2023-04-04 07:38:15', '2023-04-04 07:38:15'),
(8, 5, 5, '2023-04-04 07:38:44', '2023-04-04 07:38:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `team`
--

CREATE TABLE `team` (
  `id_team` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `position` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `team`
--

INSERT INTO `team` (`id_team`, `username`, `email`, `description`, `position`, `instagram`, `image`, `created_at`, `updated_at`) VALUES
(1, 'OUR TEAM', 'admin2@gmail.com', '<p>OUR TEAM</p>', 'LEADER', 'adisantikajaya_', '1680622897.png', '2023-04-04 07:41:37', '2023-04-04 07:41:37'),
(2, 'OUR TEAM2', 'admin2@gmail.com', '<p>OUR TEAM</p>', 'LEADER', 'adisantikajaya_', '1680622935.png', '2023-04-04 07:42:15', '2023-04-04 07:42:15'),
(3, 'OUR TEAM3', 'admin2@gmail.com', '<p>OUR TEAM</p>', 'LEADER', 'adisantikajaya_', '1680622954.png', '2023-04-04 07:42:34', '2023-04-04 07:42:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_users` int(11) NOT NULL,
  `id_users_role` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_users`, `id_users_role`, `name`, `email`, `password`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'admin fix', 'admin@gmail.com', '$2y$10$LAcFanJUUYoW2IzPqTBfaeJEP9UJDXUDyOGcyRH5ylwTFidVit9ea', '2023-03-25 18:42:37', '2023-03-30 16:33:33', NULL),
(2, 2, 'admin2', 'admin2@gmail.com', '$2y$10$LAcFanJUUYoW2IzPqTBfaeJEP9UJDXUDyOGcyRH5ylwTFidVit9ea', NULL, '2023-03-27 23:53:05', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_log`
--

CREATE TABLE `users_log` (
  `id_users_log` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `id_users` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users_log`
--

INSERT INTO `users_log` (`id_users_log`, `title`, `id_users`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Menambahkan Gallery TITLE1 (create)', 1, 'Gallery #2', '2023-03-31 11:40:19', '2023-03-31 11:40:19'),
(2, 'Memperbaharui Gallery TITLE123213 (update)', 1, 'Gallery #2', '2023-03-31 11:54:59', '2023-03-31 11:54:59'),
(3, 'Memperbaharui Gallery TITLE123213 (update)', 1, 'Gallery #2', '2023-03-31 11:55:12', '2023-03-31 11:55:12'),
(4, 'Menghapus Gallery TITLE123213 (delete)', 1, 'Gallery #2', '2023-03-31 11:57:13', '2023-03-31 11:57:13'),
(5, 'Menambahkan Berita YCI BALLI GOES TO SCHOOL | WEBINAR 2023 (create)', 2, 'Berita #3', '2023-04-04 07:37:43', '2023-04-04 07:37:43'),
(6, 'Menambahkan Berita YCI BALLI GOES TO SCHOOL | WEBINAR 2023 (create)', 2, 'Berita #4', '2023-04-04 07:38:15', '2023-04-04 07:38:15'),
(7, 'Menambahkan Berita TEST---YCI BALLI GOES TO SCHOOL | WEBINAR 2023 (create)', 2, 'Berita #5', '2023-04-04 07:38:44', '2023-04-04 07:38:44'),
(8, 'Menambahkan Gallery gallery (create)', 2, 'Gallery #1', '2023-04-04 07:39:21', '2023-04-04 07:39:21'),
(9, 'Menambahkan Gallery gallery2 (create)', 2, 'Gallery #2', '2023-04-04 07:40:06', '2023-04-04 07:40:06'),
(10, 'Menambahkan Gallery gallery3 (create)', 2, 'Gallery #3', '2023-04-04 07:40:25', '2023-04-04 07:40:25'),
(11, 'Menambahkan Gallery gallery4 (create)', 2, 'Gallery #4', '2023-04-04 07:40:41', '2023-04-04 07:40:41'),
(12, 'Menambahkan Anggota Team OUR TEAM (create)', 2, 'Team #', '2023-04-04 07:41:37', '2023-04-04 07:41:37'),
(13, 'Menambahkan Anggota Team OUR TEAM2 (create)', 2, 'Team #', '2023-04-04 07:42:15', '2023-04-04 07:42:15'),
(14, 'Menambahkan Anggota Team OUR TEAM3 (create)', 2, 'Team #', '2023-04-04 07:42:34', '2023-04-04 07:42:34'),
(15, 'Menghapus Gallery gallery (delete)', 1, 'Gallery #1', '2023-04-10 03:22:01', '2023-04-10 03:22:01'),
(16, 'Menghapus Gallery gallery2 (delete)', 1, 'Gallery #2', '2023-04-10 03:22:04', '2023-04-10 03:22:04'),
(17, 'Menghapus Gallery gallery3 (delete)', 1, 'Gallery #3', '2023-04-10 03:22:08', '2023-04-10 03:22:08'),
(18, 'Menghapus Gallery gallery4 (delete)', 1, 'Gallery #4', '2023-04-10 03:22:11', '2023-04-10 03:22:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_role`
--

CREATE TABLE `users_role` (
  `id_users_role` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users_role`
--

INSERT INTO `users_role` (`id_users_role`, `title`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Super Admin', 'super_admin', NULL, NULL, NULL),
(2, 'Admin', 'admin', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `achive`
--
ALTER TABLE `achive`
  ADD PRIMARY KEY (`id_achive`);

--
-- Indeks untuk tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_category`);

--
-- Indeks untuk tabel `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id_gallery`);

--
-- Indeks untuk tabel `gallery_category`
--
ALTER TABLE `gallery_category`
  ADD PRIMARY KEY (`id_gallery_category`);

--
-- Indeks untuk tabel `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id_news`);

--
-- Indeks untuk tabel `news_category`
--
ALTER TABLE `news_category`
  ADD PRIMARY KEY (`id_news_category`);

--
-- Indeks untuk tabel `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id_team`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_users`);

--
-- Indeks untuk tabel `users_log`
--
ALTER TABLE `users_log`
  ADD PRIMARY KEY (`id_users_log`);

--
-- Indeks untuk tabel `users_role`
--
ALTER TABLE `users_role`
  ADD PRIMARY KEY (`id_users_role`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `achive`
--
ALTER TABLE `achive`
  MODIFY `id_achive` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `category`
--
ALTER TABLE `category`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id_gallery` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `gallery_category`
--
ALTER TABLE `gallery_category`
  MODIFY `id_gallery_category` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `news`
--
ALTER TABLE `news`
  MODIFY `id_news` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `news_category`
--
ALTER TABLE `news_category`
  MODIFY `id_news_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `team`
--
ALTER TABLE `team`
  MODIFY `id_team` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users_log`
--
ALTER TABLE `users_log`
  MODIFY `id_users_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `users_role`
--
ALTER TABLE `users_role`
  MODIFY `id_users_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `sk_desa`
--
CREATE DATABASE IF NOT EXISTS `sk_desa` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sk_desa`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2022_02_14_074348_create_tbl_user', 1),
(3, '2022_02_14_075114_create_tbl_kategori_potensi', 1),
(4, '2022_02_14_075207_create_tbl_berita', 1),
(5, '2022_02_14_075403_create_tbl_galeri', 1),
(6, '2022_02_14_075541_create_tbl_video', 1),
(7, '2022_02_14_075722_create_tbl_potensi_desa', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_berita`
--

CREATE TABLE `tbl_berita` (
  `kodeberita` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kodeuser` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judulberita` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isiberita` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambarberita` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seoberita` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statusberita` tinyint(4) NOT NULL,
  `dateaddberita` date NOT NULL,
  `dateupdberita` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbl_berita`
--

INSERT INTO `tbl_berita` (`kodeberita`, `kodeuser`, `judulberita`, `isiberita`, `gambarberita`, `seoberita`, `statusberita`, `dateaddberita`, `dateupdberita`) VALUES
('BRT-20220414122803', 'USER-20220414122757', 'Gandeng Petracho, KORPRI Kabupaten Grobogan Siapkan 1000 Unit Rumah Untuk ASN', 'Mollitia eos officia dolores neque unde quibusdam commodi. Est laudantium accusantium libero. Recusandae nihil dolorem at necessitatibus. Quas enim commodi officia omnis perspiciatis.', 'pic_1649904066_sedang_1507980170DSC06296.jpg', 'gandeng-petracho-korpri-kabupaten-grobogan-siapkan-1000-unit-rumah-untuk-asn-BRT-20220414122803', 1, '2022-04-14', '2022-04-14'),
('BRT-20220414122804', 'USER-20220414122757', 'Muncul Oknum Mengatasnamakan Kajari Grobogan, Masyarakat Diminta Berhati-Hati', 'Et adipisci harum distinctio omnis. Cumque est quaerat laborum ea. Eveniet molestiae velit omnis sunt sit architecto.', 'pic_1647519102_medium_23-03-2020-12-22-23-7650.jpg', 'muncul-oknum-mengatasnamakan-kajari-grobogan-masyarakat-diminta-berhati-hati-BRT-20220414122804', 1, '2022-04-14', '2022-04-14'),
('BRT-20220415020302', 'USER-20220414122757', 'Pentingnya Pembangunan Desa dalam Pembangunan Nasional', '<p>mantap<br />\r\n&nbsp;</p>', 'pic_1649988183_fadc14dd.webp', 'pentingnya-pembangunan-desa-dalam-pembangunan-nasional-BRT-20220415020302', 1, '2022-04-15', '2022-04-15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_galeri`
--

CREATE TABLE `tbl_galeri` (
  `kodegaleri` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kodeuser` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judulgaleri` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangangaleri` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambargaleri` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seogaleri` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statusgaleri` tinyint(4) NOT NULL,
  `dateaddgaleri` date NOT NULL,
  `dateupdgaleri` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbl_galeri`
--

INSERT INTO `tbl_galeri` (`kodegaleri`, `kodeuser`, `judulgaleri`, `keterangangaleri`, `gambargaleri`, `seogaleri`, `statusgaleri`, `dateaddgaleri`, `dateupdgaleri`) VALUES
('GLI-20220417110131', 'USER-20220414122757', 'judul', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In porta diam quis urna faucibus, at blandit mauris auctor. Quisque neque mauris, efficitur id dictum et, ullamcorper nec ligula. Proin sodales auctor aliquam. Etiam euismod convallis vestibulum.', 'pic_1650193320_5599.png', 'judul-GLI-20220417110131', 1, '2022-04-17', '2022-04-17'),
('GLI-20220417110211', 'USER-20220414122757', 'judul', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In porta diam quis urna faucibus, at blandit mauris auctor. Quisque neque mauris, efficitur id dictum et, ullamcorper nec ligula. Proin sodales auctor aliquam. Etiam euismod convallis vestibulum.', 'pic_1650193331_141382.jpg', 'judul-GLI-20220417110211', 1, '2022-04-17', '2022-04-17'),
('GLI-20220417110221', 'USER-20220414122757', 'judul', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In porta diam quis urna faucibus, at blandit mauris auctor. Quisque neque mauris, efficitur id dictum et, ullamcorper nec ligula. Proin sodales auctor aliquam. Etiam euismod convallis vestibulum.', 'pic_1650193341_36671.jpg', 'judul-GLI-20220417110221', 1, '2022-04-17', '2022-04-17'),
('GLI-20220417110230', 'USER-20220414122757', 'judul', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In porta diam quis urna faucibus, at blandit mauris auctor. Quisque neque mauris, efficitur id dictum et, ullamcorper nec ligula. Proin sodales auctor aliquam. Etiam euismod convallis vestibulum.', '', 'judul-GLI-20220417110230', 1, '2022-04-17', '2022-04-17'),
('GLI-20220417110300', 'USER-20220414122757', 'judul', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In porta diam quis urna faucibus, at blandit mauris auctor. Quisque neque mauris, efficitur id dictum et, ullamcorper nec ligula. Proin sodales auctor aliquam. Etiam euismod convallis vestibulum.', '', 'judul-GLI-20220417110300', 1, '2022-04-17', '2022-04-17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori_potensi`
--

CREATE TABLE `tbl_kategori_potensi` (
  `kodekategoripotensi` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namakategoripotensi` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statuskategoripotensi` tinyint(4) NOT NULL,
  `dateaddkategoripotensi` date NOT NULL,
  `dateupdkategoripotensi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbl_kategori_potensi`
--

INSERT INTO `tbl_kategori_potensi` (`kodekategoripotensi`, `namakategoripotensi`, `statuskategoripotensi`, `dateaddkategoripotensi`, `dateupdkategoripotensi`) VALUES
('KP-20220414122757', 'Toko', 1, '2022-04-14', '2022-04-14'),
('KP-20220414122758', 'Pande Besi', 1, '2022-04-14', '2022-04-14'),
('KP-20220414122759', 'Warung Makan', 1, '2022-04-14', '2022-04-14'),
('KP-20220414122800', 'Selip', 1, '2022-04-14', '2022-04-14'),
('KP-20220414122801', 'Penginapan', 1, '2022-04-14', '2022-04-14'),
('KP-20220414122802', 'Peternakan', 1, '2022-04-14', '2022-04-14'),
('KP-20220415020114', 'Objek Wisata', 1, '2022-04-15', '2022-04-15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_potensi_desa`
--

CREATE TABLE `tbl_potensi_desa` (
  `kodepotensidesa` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kodeuser` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kodekategoripotensi` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namapotensidesa` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namapemilik` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamatpotensidesa` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keteranganpotensidesa` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambarpotensidesa` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seopotensidesa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nohpusaha` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statuspotensidesa` int(11) NOT NULL,
  `dateaddpotensidesa` date NOT NULL,
  `dateupdpotensidesa` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbl_potensi_desa`
--

INSERT INTO `tbl_potensi_desa` (`kodepotensidesa`, `kodeuser`, `kodekategoripotensi`, `namapotensidesa`, `namapemilik`, `alamatpotensidesa`, `keteranganpotensidesa`, `gambarpotensidesa`, `longitude`, `latitude`, `seopotensidesa`, `nohpusaha`, `statuspotensidesa`, `dateaddpotensidesa`, `dateupdpotensidesa`) VALUES
('PTS-20220415020406', 'USER-20220414122757', 'KP-20220414122758', 'Yeh gangga', 'gangga', 'jalan gangga', '<p>mantap ne yan</p>', 'pic_1649988246_person.jpg', '', '', 'yeh-gangga-PTS-20220415020406', '123421897789', 1, '2022-04-15', '2022-04-15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `kodeuser` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nohp` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `akses` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statususer` tinyint(4) NOT NULL,
  `dateadduser` date NOT NULL,
  `dateupduser` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`kodeuser`, `username`, `password`, `nama`, `email`, `nohp`, `alamat`, `akses`, `statususer`, `dateadduser`, `dateupduser`) VALUES
('USER-20220414122757', 'admin', 'eyJpdiI6InAxSEdld00xWlplaUdxa2lYWWxjRkE9PSIsInZhbHVlIjoiLytVejR2Yzh5bHNCL0d2WC91OWZtUT09IiwibWFjIjoiNDUzNDNlOGY5MmZiYjlkZmE3ODFjYTJjMWNiMWM4MDU2MjlhNzI5YTNmZjFhNjk1ZWJmOWMzZDMzODA2NTlmNSIsInRhZyI6IiJ9', 'Admin Sistem', 'admin@gmail.com', '08563735581', 'Tabanan, Tonja', 'ADMIN', 1, '2022-04-14', '2022-04-14'),
('USER-20220415015913', 'made', 'eyJpdiI6InN6ZlNsVDdvRlpWeEdWY2Vwa1BQSXc9PSIsInZhbHVlIjoiYS9NT3hKV2dFSUFUcHIweUNYcnN0UT09IiwibWFjIjoiNDc5NWRlNDg0NzJmM2UwZTA4OWY5YTRlNTMxOWM4YmZiZTY3OWRjM2U5NGFkZjdkM2ZiMzJiN2I4NjY1YmJkMSIsInRhZyI6IiJ9', 'made ketut wayan', 'made@gmail.com', '', '', 'STAFF', 1, '2022-04-15', '2022-04-15'),
('USER-20220415015923', 'asdasdasdasd', 'eyJpdiI6ImZBKzJOcVRYRWNHc0h3MldaTVA4L1E9PSIsInZhbHVlIjoiQ0Y4RHBHREtVQXZLdFI3RytNVU9XQT09IiwibWFjIjoiOThjN2Y5ZTEyZDI1YjgzMDM5NGNiYjkzNTFjZTdhN2Y2NjY0YzM0NzUwZDhlOTQ0ODM5MTg5YjFlYjZkNDk2NiIsInRhZyI6IiJ9', '', '', '', '', 'STAFF', 1, '2022-04-15', '2022-04-15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_video`
--

CREATE TABLE `tbl_video` (
  `kodevideo` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kodeuser` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judulvideo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `urlvideo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keteranganvideo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnailvideo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seovideo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statusvideo` tinyint(4) NOT NULL,
  `dateaddvideo` date NOT NULL,
  `dateupdvideo` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `tbl_berita`
--
ALTER TABLE `tbl_berita`
  ADD PRIMARY KEY (`kodeberita`);

--
-- Indeks untuk tabel `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  ADD PRIMARY KEY (`kodegaleri`);

--
-- Indeks untuk tabel `tbl_kategori_potensi`
--
ALTER TABLE `tbl_kategori_potensi`
  ADD PRIMARY KEY (`kodekategoripotensi`);

--
-- Indeks untuk tabel `tbl_potensi_desa`
--
ALTER TABLE `tbl_potensi_desa`
  ADD PRIMARY KEY (`kodepotensidesa`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`kodeuser`);

--
-- Indeks untuk tabel `tbl_video`
--
ALTER TABLE `tbl_video`
  ADD PRIMARY KEY (`kodevideo`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `sk_rafting`
--
CREATE DATABASE IF NOT EXISTS `sk_rafting` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sk_rafting`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2022_04_23_031453_create_basetable', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `kodeadmin` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `useradmin` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namaadmin` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateaddadmin` datetime NOT NULL,
  `dateupdadmin` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbl_admin`
--

INSERT INTO `tbl_admin` (`kodeadmin`, `useradmin`, `password`, `namaadmin`, `dateaddadmin`, `dateupdadmin`) VALUES
('ADMIN00001', 'admin', 'eyJpdiI6IlBvNXBQM2xGQXV3SHpkWm13dUxOanc9PSIsInZhbHVlIjoiWGJzSUg2VmFBOGtMM1FxTUpEMlZQdz09IiwibWFjIjoiMGMyMDU4MDZlNGVlMzNhN2IyNTEwZWIwZDhlY2I1ZjgwMzVjMzVkZmY1NjljZWMyYTNhMDgwZmIyZGRlOWEzMSIsInRhZyI6IiJ9', 'Admin Sistem', '2022-04-29 13:29:00', '2022-04-29 13:29:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_faq`
--

CREATE TABLE `tbl_faq` (
  `kodefaq` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pertanyaan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `jawaban` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateaddfaq` datetime NOT NULL,
  `dateupdfaq` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_galeri`
--

CREATE TABLE `tbl_galeri` (
  `kodegaleri` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judulgaleri` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambargaleri` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangangaleri` text COLLATE utf8mb4_unicode_ci,
  `dateaddgaleri` datetime NOT NULL,
  `dateupdgaleri` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbl_galeri`
--

INSERT INTO `tbl_galeri` (`kodegaleri`, `judulgaleri`, `gambargaleri`, `keterangangaleri`, `dateaddgaleri`, `dateupdgaleri`) VALUES
('GAL00001', 'Wira Wibisono', 'galeri7.jpg', 'Consequatur voluptas omnis sunt et sunt. Magnam explicabo nemo quos aspernatur esse. Quae voluptatem dolor ab hic ratione eos eius eius. Quia architecto suscipit eligendi et et nemo optio ullam.', '2022-04-29 13:29:12', '2022-04-29 13:29:12'),
('GAL00002', 'Rizki Kadir Manullang', 'galeri1.jpg', 'Ullam accusantium aut autem ut et neque. Eaque ipsam quos non consequatur quos culpa accusantium. Ea tenetur saepe atque esse. Laudantium est dolorum dolores.', '2022-04-29 13:29:12', '2022-04-29 13:29:12'),
('GAL00003', 'Banara Gunawan', 'galeri2.jpg', 'Occaecati excepturi excepturi nostrum consequatur. Odio eos accusamus ut voluptas et aut. Natus molestias illum mollitia enim ipsa voluptas sequi aut.', '2022-04-29 13:29:12', '2022-04-29 13:29:12'),
('GAL00004', 'Vino Irwan Sirait S.E.', 'galeri5.jpg', 'Provident quam saepe unde perferendis reprehenderit eius quaerat. Consequuntur quia ex est at sequi. Quisquam vel architecto vel voluptatem.', '2022-04-29 13:29:12', '2022-04-29 13:29:12'),
('GAL00005', 'Maya Rahayu S.I.Kom', 'galeri3.jpg', 'Ut cupiditate ut odio quasi iusto. Vero voluptatem dolore veniam odio. Eius quia dolor inventore voluptas repellat. Dolorem suscipit omnis ipsam nam et.', '2022-04-29 13:29:12', '2022-04-29 13:29:12'),
('GAL00006', 'Yani Suartini', 'galeri6.jpg', 'Sit vero voluptate quia est reprehenderit nam repellendus. Aut praesentium culpa hic aperiam in et. Ipsam veritatis qui nulla sit et qui hic.', '2022-04-29 13:29:12', '2022-04-29 13:29:12'),
('GAL00007', 'Kiandra Hasanah', 'galeri7.jpg', 'Earum aperiam tempora fugit magni vel nemo voluptatem. Vel rem ut earum est perspiciatis optio. Nostrum quos repudiandae numquam et culpa error sit aut.', '2022-04-29 13:29:12', '2022-04-29 13:29:12'),
('GAL00008', 'Belinda Rahmawati S.Psi', 'galeri1.jpg', 'Facilis dolor dignissimos modi. Impedit et tempore enim ad consequuntur facere.', '2022-04-29 13:29:12', '2022-04-29 13:29:12'),
('GAL00009', 'Laras Nabila Rahimah M.TI.', 'galeri2.jpg', 'Optio earum commodi adipisci aut expedita dolorem. Beatae repellendus tempora nam quidem. Porro facere distinctio fuga impedit rerum. Quisquam accusamus eos in dolorem.', '2022-04-29 13:29:12', '2022-04-29 13:29:12'),
('GAL00010', 'Arsipatra Carub Putra S.E.I', 'galeri5.jpg', 'Molestiae ut placeat nobis vel nobis voluptas est. Ipsa aut eum saepe veniam. Ut aut ipsa earum dolorem aut.', '2022-04-29 13:29:12', '2022-04-29 13:29:12'),
('GAL00011', 'Hilda Padmasari S.H.', 'galeri1.jpg', 'Sunt repellat occaecati et inventore animi suscipit est quia. Voluptas in vel sint inventore est aut in. Architecto aut vel inventore. Nemo in voluptatem fugit.', '2022-04-29 13:29:12', '2022-04-29 13:29:12'),
('GAL00012', 'Tasdik Hardiansyah', 'galeri4.jpg', 'Nihil qui aperiam consequatur et maxime dolores. Rem et maiores odit eveniet quos ex consequatur. Sit dolorem est quaerat atque.', '2022-04-29 13:29:12', '2022-04-29 13:29:12'),
('GAL00013', 'Fitriani Oktaviani', 'galeri6.jpg', 'Et voluptatem excepturi numquam et. Ex facilis dolor aut laboriosam incidunt. Dolorum voluptatem necessitatibus sit ipsum. Modi consequatur omnis voluptas reiciendis omnis.', '2022-04-29 13:29:12', '2022-04-29 13:29:12'),
('GAL00014', 'Hilda Puspita M.M.', 'galeri6.jpg', 'Velit voluptatem hic sed. Ducimus dolorem et molestiae optio. Optio amet deserunt voluptates illum. Molestias qui ipsa ratione rerum perferendis molestiae et.', '2022-04-29 13:29:12', '2022-04-29 13:29:12'),
('GAL00015', 'Yance Namaga S.I.Kom', 'galeri5.jpg', 'Hic sit facilis dolor deserunt. Voluptas facere rem porro. Velit sed cumque similique porro iusto amet. Voluptas ex rerum sit dolorem tempora recusandae atque.', '2022-04-29 13:29:12', '2022-04-29 13:29:12'),
('GAL00016', 'Siti Puspita', 'galeri4.jpg', 'Temporibus doloribus pariatur voluptatem delectus fugit. Nam vel sit rerum debitis. Et vel recusandae optio. Sapiente magnam sunt atque vel nostrum.', '2022-04-29 13:29:12', '2022-04-29 13:29:12'),
('GAL00017', 'Icha Hariyah', 'galeri3.jpg', 'Aut et minus nobis architecto libero praesentium. Ducimus sunt deleniti animi et. Et ratione sunt unde corrupti sunt assumenda corrupti.', '2022-04-29 13:29:12', '2022-04-29 13:29:12'),
('GAL00018', 'Adika Thamrin', 'galeri5.jpg', 'Est consequatur cumque neque porro et tenetur amet tempora. Vel optio ex voluptatem dolores et qui. Earum commodi est ut odit quasi quia eligendi.', '2022-04-29 13:29:12', '2022-04-29 13:29:12'),
('GAL00019', 'Mustika Firgantoro S.Pd', 'galeri5.jpg', 'Voluptatibus corporis harum ipsum dolorum. Nostrum quo sint et. Vel sit eos qui at voluptas in.', '2022-04-29 13:29:12', '2022-04-29 13:29:12'),
('GAL00020', 'Wawan Permadi S.Farm', 'galeri4.jpg', 'Quibusdam repellendus non autem minima tenetur ullam magni. Dolores ut ut eius voluptatem recusandae et. Vitae velit eum est. Et totam voluptate dolore quia.', '2022-04-29 13:29:12', '2022-04-29 13:29:12'),
('GAL00021', 'Cornelia Tira Agustina', 'galeri6.jpg', 'Ipsam saepe qui in. Sunt officia molestiae ut. Asperiores autem excepturi aliquam animi.', '2022-04-29 13:29:12', '2022-04-29 13:29:12'),
('GAL00022', 'Gandi Januar', 'galeri7.jpg', 'Doloribus ducimus et aliquam rem. Ipsum fugiat est nemo. Consequuntur placeat rerum tempora sit atque voluptas cupiditate.', '2022-04-29 13:29:12', '2022-04-29 13:29:12'),
('GAL00023', 'Maria Karimah Namaga', 'galeri4.jpg', 'Temporibus tempore doloribus est. Omnis maxime placeat rerum eum et est id. Et qui alias voluptatem quod et. Aut consectetur facilis vel.', '2022-04-29 13:29:12', '2022-04-29 13:29:12'),
('GAL00024', 'Nyoman Permadi M.Kom.', 'galeri2.jpg', 'Quasi blanditiis eum vel facere dolore nemo. Consectetur nam perferendis saepe neque molestias explicabo. Exercitationem facilis aliquid quo. Et commodi ut itaque veritatis voluptas ut.', '2022-04-29 13:29:12', '2022-04-29 13:29:12'),
('GAL00025', 'Carla Purnawati S.Gz', 'galeri4.jpg', 'Id rem quae quo voluptatibus officia cum qui. Ab consequatur hic nostrum mollitia fugit. Suscipit voluptas quae debitis autem rerum veniam.', '2022-04-29 13:29:12', '2022-04-29 13:29:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_guide`
--

CREATE TABLE `tbl_guide` (
  `kodeguide` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namaguide` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagramguide` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `noteleponguide` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emailguide` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamatguide` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jk` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambarguide` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profileguide` text COLLATE utf8mb4_unicode_ci,
  `dateaddguide` datetime NOT NULL,
  `dateupdguide` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbl_guide`
--

INSERT INTO `tbl_guide` (`kodeguide`, `namaguide`, `instagramguide`, `noteleponguide`, `emailguide`, `alamatguide`, `jk`, `gambarguide`, `profileguide`, `dateaddguide`, `dateupdguide`) VALUES
('GUIDE00001', 'Yuni Mayasari', 'vivi', '(+62) 26 0522 4075', 'zulfa89@haryanti.biz', 'Ds. Kalimalang No. 876, Palembang 45790, Malut', 'P', 'guide2.jpg', NULL, '2022-04-29 13:29:12', '2022-04-29 13:29:12'),
('GUIDE00002', 'Daliono Praba Hutapea M.Farm', 'ganep', '(+62) 868 7447 835', 'hlestari@gmail.com', 'Jr. Bakhita No. 372, Bukittinggi 75430, Papua', 'L', 'guide1.jpg', NULL, '2022-04-29 13:29:12', '2022-04-29 13:29:12'),
('GUIDE00003', 'Ratih Novi Widiastuti S.Sos', 'vicky', '0781 8899 4674', 'dalima45@utami.ac.id', 'Dk. B.Agam Dlm No. 663, Cirebon 29830, Babel', 'P', 'guide2.jpg', NULL, '2022-04-29 13:29:12', '2022-04-29 13:29:12'),
('GUIDE00004', 'Marsudi Prayoga', 'cakrabirawa', '021 4370 158', 'dalima73@safitri.info', 'Kpg. Gajah No. 793, Tanjungbalai 66782, Jateng', 'L', 'guide1.jpg', NULL, '2022-04-29 13:29:12', '2022-04-29 13:29:12'),
('GUIDE00005', 'Malika Widiastuti M.TI.', 'elisa', '0359 5833 390', 'tutami@novitasari.web.id', 'Jr. Jaksa No. 604, Singkawang 46707, Sumsel', 'P', 'guide2.jpg', NULL, '2022-04-29 13:29:12', '2022-04-29 13:29:12'),
('GUIDE00006', 'Laksana Irsad Firmansyah S.H.', 'najib', '(+62) 394 9646 890', 'hidayanto.lala@pudjiastuti.name', 'Dk. PHH. Mustofa No. 666, Parepare 40341, DKI', 'L', 'guide1.jpg', NULL, '2022-04-29 13:29:12', '2022-04-29 13:29:12'),
('GUIDE00007', 'Eka Rahmawati S.Gz', 'kasiyah', '0814 4558 2849', 'sihombing.wisnu@gmail.com', 'Jln. Rajawali Barat No. 783, Cirebon 13627, Sultra', 'P', 'guide2.jpg', NULL, '2022-04-29 13:29:12', '2022-04-29 13:29:12'),
('GUIDE00008', 'Daruna Perkasa Sitorus S.Kom', 'cengkir', '(+62) 350 2653 5421', 'edward.gunarto@gmail.com', 'Jln. Panjaitan No. 782, Bogor 70997, DIY', 'L', 'guide1.jpg', NULL, '2022-04-29 13:29:12', '2022-04-29 13:29:12'),
('GUIDE00009', 'Devi Usamah S.IP', 'dinda', '(+62) 556 2286 813', 'jayadi.sirait@permata.id', 'Jln. Raden No. 387, Padangpanjang 34114, Gorontalo', 'P', 'guide2.jpg', NULL, '2022-04-29 13:29:12', '2022-04-29 13:29:12'),
('GUIDE00010', 'Sidiq Hidayat', 'nardi', '0994 4018 964', 'bdabukke@wahyuni.asia', 'Ki. Kartini No. 777, Probolinggo 58581, DIY', 'L', 'guide1.jpg', NULL, '2022-04-29 13:29:12', '2022-04-29 13:29:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_news`
--

CREATE TABLE `tbl_news` (
  `kodenews` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judulnews` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambarnews` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isinews` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateaddnews` datetime NOT NULL,
  `dateupdnews` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_video`
--

CREATE TABLE `tbl_video` (
  `kodevideo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judulvideo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `urlvideo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keteranganvideo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateaddvideo` datetime NOT NULL,
  `dateupdvideo` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`kodeadmin`);

--
-- Indeks untuk tabel `tbl_faq`
--
ALTER TABLE `tbl_faq`
  ADD PRIMARY KEY (`kodefaq`);

--
-- Indeks untuk tabel `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  ADD PRIMARY KEY (`kodegaleri`);

--
-- Indeks untuk tabel `tbl_guide`
--
ALTER TABLE `tbl_guide`
  ADD PRIMARY KEY (`kodeguide`);

--
-- Indeks untuk tabel `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`kodenews`);

--
-- Indeks untuk tabel `tbl_video`
--
ALTER TABLE `tbl_video`
  ADD PRIMARY KEY (`kodevideo`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `sk_satria_ecommerce`
--
CREATE DATABASE IF NOT EXISTS `sk_satria_ecommerce` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sk_satria_ecommerce`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2022_04_23_031453_create_basetable', 1),
(2, '2023_02_17_045515_alter_tbl_kategori_add_kategori', 1),
(3, '2023_02_17_070632_alter_tbl_kategori_add_gambar', 1),
(4, '2023_02_17_070633_alter_tbl_kategori_add_keterangankategori', 1),
(5, '2023_02_17_070634_alter_tbl_produk_add_hargaproduk', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `kodeadmin` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `useradmin` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namaadmin` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `akses` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbl_admin`
--

INSERT INTO `tbl_admin` (`kodeadmin`, `useradmin`, `password`, `namaadmin`, `akses`, `created_at`, `updated_at`, `deleted_at`) VALUES
('ADMIN00001', 'admin', 'eyJpdiI6InovUC9qYjBYc3pnRzBQMmVJbjdzaHc9PSIsInZhbHVlIjoiN0JwUFhCN2NLZW1mS2F3b2lMRlJEdz09IiwibWFjIjoiOTcxYTlhYjBlMzJiZjVhMzdiNGVlNjUyYjgyZDJkNzNlMjNlODE3M2I5NTNlOTc3MDBjZmI4Y2FhNTE5OTY0OCIsInRhZyI6IiJ9', 'Admin Sistem', 'ADMIN', '2023-04-08 11:46:00', '2023-04-08 11:46:00', NULL),
('ADMIN00002', 'maman', 'eyJpdiI6IlVZVCtUdi9FdkQrVkZ5OVVPc01nWVE9PSIsInZhbHVlIjoibzJoRVNvTi9QR1d0N2FqbFBsbkUzZz09IiwibWFjIjoiODQ3YzFhYjQ2MjJlNzk2Y2RlMmY3NWM0MzhiNTZiMzE1MzlhYWJlZDk0ZmU0YWQwOWNmYTA4NjcyYzg3NjU4MiIsInRhZyI6IiJ9', 'Maman Staff', 'STAFF', '2023-04-08 11:46:00', '2023-04-08 11:46:00', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_galeri`
--

CREATE TABLE `tbl_galeri` (
  `kodegaleri` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namagaleri` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambargaleri` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `kodekategori` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subkategori` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namakategori` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangankategori` text COLLATE utf8mb4_unicode_ci,
  `gambarkategori` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`kodekategori`, `subkategori`, `namakategori`, `keterangankategori`, `gambarkategori`, `created_at`, `updated_at`, `deleted_at`) VALUES
('KAT00001', 'Seragam', 'Seragam Operasional Engineering', NULL, 'kat_default_2.png', '2023-04-08 11:46:00', '2023-04-08 11:46:00', NULL),
('KAT00002', 'Seragam', 'Seragam Operasional Kitchen', NULL, 'kat_default_1.png', '2023-04-08 11:46:00', '2023-04-08 11:46:00', NULL),
('KAT00003', 'Seragam', 'Seragam Operasional Front Office', NULL, 'kat_default_2.png', '2023-04-08 11:46:00', '2023-04-08 11:46:00', NULL),
('KAT00004', 'Seragam', 'Seragam Operasional Restaurant', NULL, 'kat_default_1.png', '2023-04-08 11:46:00', '2023-04-08 11:46:00', NULL),
('KAT00005', 'Seragam', 'Seragam Operasional Housekeeping', NULL, 'kat_default_1.png', '2023-04-08 11:46:00', '2023-04-08 11:46:00', NULL),
('KAT00006', 'Seragam', 'Seragam Operasional Spa', NULL, 'kat_default_1.png', '2023-04-08 11:46:00', '2023-04-08 11:46:00', NULL),
('KAT00007', 'Seragam', 'Seragam Operasional Security', NULL, 'kat_default_3.png', '2023-04-08 11:46:00', '2023-04-08 11:46:00', NULL),
('KAT00008', 'Seragam', 'Seragam Operasional Sales & Marketing', NULL, 'kat_default_3.png', '2023-04-08 11:46:00', '2023-04-08 11:46:00', NULL),
('KAT00009', 'Seragam', 'Seragam Operasional Accounting', NULL, 'kat_default_1.png', '2023-04-08 11:46:00', '2023-04-08 11:46:00', NULL),
('KAT00010', 'Seragam', 'Seragam Operasional Human Resources', NULL, 'kat_default_1.png', '2023-04-08 11:46:00', '2023-04-08 11:46:00', NULL),
('KAT00011', 'Seragam', 'T-Shirt & Polo Shirt', NULL, 'kat_default_1.png', '2023-04-08 11:46:00', '2023-04-08 11:46:00', NULL),
('KAT00012', 'Aksesoris', 'Apron', NULL, 'kat_default_2.png', '2023-04-08 11:46:00', '2023-04-08 11:46:00', NULL),
('KAT00013', 'Aksesoris', 'Banda / Topi', NULL, 'kat_default_3.png', '2023-04-08 11:46:00', '2023-04-08 11:46:00', NULL),
('KAT00014', 'Medical Wear', 'Baju OKA', NULL, 'kat_default_2.png', '2023-04-08 11:46:00', '2023-04-08 11:46:00', NULL),
('KAT00015', 'Medical Wear', 'Seragam Perawat', NULL, 'kat_default_2.png', '2023-04-08 11:46:00', '2023-04-08 11:46:00', NULL),
('KAT00016', 'Medical Wear', 'Jas Dokter', NULL, 'kat_default_2.png', '2023-04-08 11:46:00', '2023-04-08 11:46:00', NULL),
('KAT00017', 'Medical Wear', 'Hazmat / ADP', NULL, 'kat_default_2.png', '2023-04-08 11:46:00', '2023-04-08 11:46:00', NULL),
('KAT00018', 'Medical Wear', 'Jas Laboratorium', NULL, 'kat_default_3.png', '2023-04-08 11:46:00', '2023-04-08 11:46:00', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pelanggan`
--

CREATE TABLE `tbl_pelanggan` (
  `kodepelanggan` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namapelanggan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statuspelanggan` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_produk`
--

CREATE TABLE `tbl_produk` (
  `kodeproduk` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kodekategori` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namaproduk` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seoproduk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hargaproduk` int(11) DEFAULT NULL,
  `gambarproduk_1` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gambarproduk_2` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gambarproduk_3` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gambarproduk_4` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gambarproduk_5` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gambarproduk_6` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keteranganproduk` text COLLATE utf8mb4_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbl_produk`
--

INSERT INTO `tbl_produk` (`kodeproduk`, `kodekategori`, `namaproduk`, `seoproduk`, `hargaproduk`, `gambarproduk_1`, `gambarproduk_2`, `gambarproduk_3`, `gambarproduk_4`, `gambarproduk_5`, `gambarproduk_6`, `keteranganproduk`, `created_at`, `updated_at`, `deleted_at`) VALUES
('PRD00001', 'KAT00001', 'BAJU HIJAU', 'baju-hijau-prd00001', 20000, 'pic_1680954571_WhatsApp Image 2022-09-29 at 15.10.56.jpeg', '', '', '', '', '', '<p>Baju adalah salah satu jenis pakaian yang paling umum digunakan di seluruh dunia. Baju terbuat dari berbagai jenis kain, seperti katun, sutra, linen, dan wol. Baju memiliki berbagai macam model dan desain yang dibuat sesuai dengan kebutuhan dan trend mode saat ini.</p><p>Selain berfungsi untuk menutupi tubuh, baju juga digunakan untuk memperlihatkan kepribadian dan gaya seseorang. Baju dapat mencerminkan latar belakang budaya, agama, atau bahkan pekerjaan seseorang. Misalnya, seragam sekolah, seragam kerja, atau pakaian tradisional.</p><p>Ada juga berbagai jenis baju sesuai dengan jenis kelamin, seperti baju pria, baju wanita, dan baju anak-anak. Baju pria biasanya lebih simpel dan sederhana, sementara baju wanita memiliki banyak variasi desain, warna, dan aksesoris yang dapat digunakan untuk meningkatkan tampilan.</p><p>Selain itu, baju juga dapat digunakan untuk keperluan khusus seperti olahraga, tidur, atau acara formal. Baju olahraga biasanya terbuat dari bahan yang nyaman dan mudah menyerap keringat, sementara baju tidur biasanya terbuat dari bahan yang lembut dan nyaman untuk digunakan saat tidur.</p><p>Secara umum, baju merupakan bagian yang tidak terpisahkan dari kehidupan manusia. Dalam perkembangannya, baju selalu mengalami inovasi dan perubahan sesuai dengan kebutuhan dan perkembangan zaman.</p>', '2023-04-08 11:49:31', '2023-04-08 11:49:31', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`kodeadmin`);

--
-- Indeks untuk tabel `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  ADD PRIMARY KEY (`kodegaleri`);

--
-- Indeks untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`kodekategori`);

--
-- Indeks untuk tabel `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  ADD PRIMARY KEY (`kodepelanggan`);

--
-- Indeks untuk tabel `tbl_produk`
--
ALTER TABLE `tbl_produk`
  ADD PRIMARY KEY (`kodeproduk`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `tugas_nia`
--
CREATE DATABASE IF NOT EXISTS `tugas_nia` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tugas_nia`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan_kamar`
--

CREATE TABLE `pesanan_kamar` (
  `BookId` varchar(255) NOT NULL,
  `RoomID` varchar(255) NOT NULL,
  `Mountly_Booking` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pesanan_kamar`
--

INSERT INTO `pesanan_kamar` (`BookId`, `RoomID`, `Mountly_Booking`) VALUES
('BK001', 'RM001', 10);

--
-- Trigger `pesanan_kamar`
--
DELIMITER $$
CREATE TRIGGER `totalbook` AFTER INSERT ON `pesanan_kamar` FOR EACH ROW BEGIN
    DECLARE room_availability INT;
    
    -- Mengambil Availability kamar dari tabel room berdasarkan RoomID
    SELECT Availability INTO room_availability FROM room WHERE RoomID = NEW.RoomID;
    
    -- Mengurangi Availability kamar dengan Availability yang ada di pesanan_kamar
    SET room_availability = room_availability - NEW.Mountly_Booking;
    
    -- Memperbarui Availability kamar pada tabel room
    UPDATE room SET Availability = room_availability WHERE RoomID = NEW.RoomID;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `room`
--

CREATE TABLE `room` (
  `RoomID` varchar(255) NOT NULL,
  `RoomName` varchar(255) NOT NULL,
  `RoomType` varchar(255) NOT NULL,
  `Availability` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `room`
--

INSERT INTO `room` (`RoomID`, `RoomName`, `RoomType`, `Availability`) VALUES
('RM001', 'Yudistira Room', 'Deluxe', 18),
('RM002', 'Arjuna Room', 'Superior', 30),
('RM003', 'Bima Room', 'Double', 25),
('RM004', 'Nakula Room', 'Family', 20),
('RM005', 'Sadewa Room', 'Standar', 26);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pesanan_kamar`
--
ALTER TABLE `pesanan_kamar`
  ADD PRIMARY KEY (`BookId`);

--
-- Indeks untuk tabel `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`RoomID`);
--
-- Database: `undangan_insigma`
--
CREATE DATABASE IF NOT EXISTS `undangan_insigma` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `undangan_insigma`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `db_form`
--

CREATE TABLE `db_form` (
  `id_form` int(11) NOT NULL,
  `nama_form` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `link_folder` varchar(255) NOT NULL,
  `status` int(9) NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `db_form`
--

INSERT INTO `db_form` (`id_form`, `nama_form`, `deskripsi`, `link_folder`, `status`, `created_at`, `updated_at`) VALUES
(3, 'form1', 'form1', 'form1', 1, '2022-01-12', '2022-02-02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `db_komentar`
--

CREATE TABLE `db_komentar` (
  `id_komentar` int(11) NOT NULL,
  `nama_komentar` varchar(255) NOT NULL,
  `deskripsi_komentar` varchar(255) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `id_pelanggan` int(9) NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `db_konten_undangan_pelanggan`
--

CREATE TABLE `db_konten_undangan_pelanggan` (
  `id_konten_undangan` int(11) NOT NULL,
  `nama_konten` varchar(255) NOT NULL,
  `deskripsi_konten` varchar(255) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `db_konten_undangan_pelanggan`
--

INSERT INTO `db_konten_undangan_pelanggan` (`id_konten_undangan`, `nama_konten`, `deskripsi_konten`, `id_pelanggan`, `created_at`, `updated_at`) VALUES
(542, 'pria_nama_lengkap', 'contoh3', 43, '2022-02-06', '2022-02-06'),
(543, 'pria_nama_panggilan', 'contoh5', 43, '2022-02-06', '2022-02-06'),
(544, 'pria_ayah', 'contoh7', 43, '2022-02-06', '2022-02-06'),
(545, 'pria_ibu', 'contoh9', 43, '2022-02-06', '2022-02-06'),
(546, 'wanita_nama_lengkap', 'contoh4', 43, '2022-02-06', '2022-02-06'),
(547, 'wanita_nama_panggilan', 'contoh6', 43, '2022-02-06', '2022-02-06'),
(548, 'wanita_ayah', 'contoh8', 43, '2022-02-06', '2022-02-06'),
(549, 'wanita_ibu', 'contoh10', 43, '2022-02-06', '2022-02-06'),
(550, 'alamat', 'contoh11', 43, '2022-02-06', '2022-02-06'),
(551, 'informasi_tambahan', 'contoh18', 43, '2022-02-06', '2022-02-06'),
(552, 'google_maps', 'contoh12', 43, '2022-02-06', '2022-02-06'),
(553, 'date_wedding', '2022-03-23', 43, '2022-02-06', '2022-02-06'),
(554, 'link_video', 'contoh13', 43, '2022-02-06', '2022-02-06'),
(555, 'konten1_judul', 'contoh14', 43, '2022-02-06', '2022-02-06'),
(556, 'konten1_deskripsi', 'contoh16', 43, '2022-02-06', '2022-02-06'),
(557, 'konten2_judul', 'contoh15', 43, '2022-02-06', '2022-02-06'),
(558, 'konten2_deskripsi', 'contoh17', 43, '2022-02-06', '2022-02-06'),
(559, 'komentar', 'true', 43, '2022-02-06', '2022-02-06'),
(560, 'protokol_kesehatan', 'true', 43, '2022-02-06', '2022-02-06'),
(561, 'pria_foto', 'WJxiIU4ZHHEN3dvBgDBHeNQkVCoX8sitTOYFwDdG.jpg', 43, '2022-02-06', '2022-02-06'),
(562, 'wanita_foto', 'h3UbIpzP6RSjIKXTMKB9kRPCRIkVXNq9uwohNolZ.jpg', 43, '2022-02-06', '2022-02-06'),
(563, 'banner1', 'iuRhj6qX8nYOSYod2ItQySJ24VjH0lrIiSWODnpV.jpg', 43, '2022-02-06', '2022-02-06'),
(564, 'banner2', 'dgeuSo6y7gar5Ok2xQNlECAjQhCfvGhFAk01hdJa.jpg', 43, '2022-02-06', '2022-02-06'),
(565, 'konten1_gambar', 'ux7cwcnixnGuAneezrUojazYHd3vc46aVVSR7rj4.jpg', 43, '2022-02-06', '2022-02-06'),
(566, 'konten2_gambar', 'wudckQzuJqhnGYFn2jjZdDDqsqFR9ubjGjmlKKG9.jpg', 43, '2022-02-06', '2022-02-06'),
(567, 'music', 'T3zik84SjaLsNSQGdeMOqBcmvC7ftcl5AvGzP57X.mp3', 43, '2022-02-06', '2022-02-06'),
(664, 'pria_nama_lengkap', 'sadsadas', 61, '2022-03-06', '2022-03-06'),
(665, 'pria_nama_panggilan', 'asdsadasd', 61, '2022-03-06', '2022-03-06'),
(666, 'pria_ayah', 'dasdas', 61, '2022-03-06', '2022-03-06'),
(667, 'pria_ibu', 'dsadasdasda', 61, '2022-03-06', '2022-03-06'),
(668, 'wanita_nama_lengkap', 'asdasdsa', 61, '2022-03-06', '2022-03-06'),
(669, 'wanita_nama_panggilan', 'asdsadasdasdas', 61, '2022-03-06', '2022-03-06'),
(670, 'wanita_ayah', 'dsadsadsa', 61, '2022-03-06', '2022-03-06'),
(671, 'wanita_ibu', 'sdsadasdsadasdsa', 61, '2022-03-06', '2022-03-06'),
(672, 'alamat', 'dasdsdasdas', 61, '2022-03-06', '2022-03-06'),
(673, 'informasi_tambahan', 'asdasdsadsdaasasd', 61, '2022-03-06', '2022-03-06'),
(674, 'google_maps', 'https://goo.gl/maps/BEePGBuMzN4FFWqCA', 61, '2022-03-06', '2022-03-06'),
(675, 'date_wedding', '2022-03-06', 61, '2022-03-06', '2022-03-06'),
(676, 'link_video', '<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/qGCuCWDs1ts\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 61, '2022-03-06', '2022-03-06'),
(677, 'konten1_judul', 'asdas', 61, '2022-03-06', '2022-03-06'),
(678, 'konten1_deskripsi', 'qweewqewe', 61, '2022-03-06', '2022-03-06'),
(679, 'konten2_judul', 'dasdasd', 61, '2022-03-06', '2022-03-06'),
(680, 'konten2_deskripsi', 'qweewqeweqweewqewe', 61, '2022-03-06', '2022-03-06'),
(681, 'komentar', 'true', 61, '2022-03-06', '2022-03-06'),
(682, 'protokol_kesehatan', 'true', 61, '2022-03-06', '2022-03-06'),
(683, 'pria_foto', 'wZJGORdENuP93u1kaeawS4l7ctbmM2pd1NEXT56T.jpg', 61, '2022-03-06', '2022-03-06'),
(684, 'wanita_foto', 'DkfItV2eg0Qa7Gkj8afCHBlouxbDxHKz6VN5ahKC.jpg', 61, '2022-03-06', '2022-03-06'),
(685, 'banner1', 'JW6OUMmKkrHk4MBMN30d57sinVFdzkAW5OMgmurw.jpg', 61, '2022-03-06', '2022-03-06'),
(686, 'banner2', '36EUylOCPcOdgU1BbXsENyNGtsmUsjXyP5lk62zo.jpg', 61, '2022-03-06', '2022-03-06'),
(687, 'konten1_gambar', 'g5nTqp4D86rdgeV60PtGyXEW5RP2uMOiFjK3AIEh.jpg', 61, '2022-03-06', '2022-03-06'),
(688, 'konten2_gambar', 'RbAuQYwkF7rU1M5I8N9w7fpQtelzUJX4Uzyt0NjN.jpg', 61, '2022-03-06', '2022-03-06'),
(689, 'music', 'PuAFt68Jvx6qXPqtcHTalZvUFraggAumuLE0x3OX.mp3', 61, '2022-03-06', '2022-03-06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `db_pelanggan`
--

CREATE TABLE `db_pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(255) NOT NULL,
  `link_custom` varchar(255) NOT NULL,
  `id_undangan` int(11) NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `db_pelanggan`
--

INSERT INTO `db_pelanggan` (`id_pelanggan`, `nama_pelanggan`, `link_custom`, `id_undangan`, `created_at`, `updated_at`) VALUES
(20, 'BPD BALI UNDANGAN HUT TRISMA', 'expo_trisma_2022_bersama_bpd_bali', 9, '2022-01-14', '2022-01-14'),
(43, 'contoh1', 'contoh2', 6, '2022-02-06', '2022-02-06'),
(52, 'wedding_swiarta_lisa', 'wedding_swiarta_lisa', 10, '2022-02-07', '2022-02-07'),
(61, 'asdasd', '1232132123', 11, '2022-03-06', '2022-03-06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `db_undangan`
--

CREATE TABLE `db_undangan` (
  `id_undangan` int(11) NOT NULL,
  `nama_desain` varchar(255) NOT NULL,
  `link_folder` varchar(255) NOT NULL,
  `status` int(9) NOT NULL,
  `id_form` int(11) DEFAULT NULL,
  `jenis_undangan` int(11) NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `db_undangan`
--

INSERT INTO `db_undangan` (`id_undangan`, `nama_desain`, `link_folder`, `status`, `id_form`, `jenis_undangan`, `created_at`, `updated_at`) VALUES
(6, 'design1', 'design1', 1, 3, 0, '2022-01-12', '2022-02-02'),
(9, 'undangan BPD BALI 2022 HUT TRISMA', 'undangan_bpd_bali_hut_trisma_2022', 1, NULL, 1, '2022-01-14', '2022-01-14'),
(10, 'wedding_swiarta_lisa', 'wedding_swiarta_lisa', 1, NULL, 1, '2022-02-07', '2022-02-07'),
(11, 'design2', 'design2', 1, 3, 0, '2022-03-06', '2022-03-06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `db_user`
--

CREATE TABLE `db_user` (
  `id_user` int(9) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `db_user`
--

INSERT INTO `db_user` (`id_user`, `username`, `password`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$0VLYR26G0W8cAyEdbacfQ.PJEPjkUu6Y8hpqHP1jmc6LLxax6IY5u', 'admin', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `db_form`
--
ALTER TABLE `db_form`
  ADD PRIMARY KEY (`id_form`);

--
-- Indeks untuk tabel `db_komentar`
--
ALTER TABLE `db_komentar`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indeks untuk tabel `db_konten_undangan_pelanggan`
--
ALTER TABLE `db_konten_undangan_pelanggan`
  ADD PRIMARY KEY (`id_konten_undangan`);

--
-- Indeks untuk tabel `db_pelanggan`
--
ALTER TABLE `db_pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indeks untuk tabel `db_undangan`
--
ALTER TABLE `db_undangan`
  ADD PRIMARY KEY (`id_undangan`);

--
-- Indeks untuk tabel `db_user`
--
ALTER TABLE `db_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `db_form`
--
ALTER TABLE `db_form`
  MODIFY `id_form` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `db_komentar`
--
ALTER TABLE `db_komentar`
  MODIFY `id_komentar` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `db_konten_undangan_pelanggan`
--
ALTER TABLE `db_konten_undangan_pelanggan`
  MODIFY `id_konten_undangan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=690;

--
-- AUTO_INCREMENT untuk tabel `db_pelanggan`
--
ALTER TABLE `db_pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT untuk tabel `db_undangan`
--
ALTER TABLE `db_undangan`
  MODIFY `id_undangan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `db_user`
--
ALTER TABLE `db_user`
  MODIFY `id_user` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `uniquebaliliving`
--
CREATE DATABASE IF NOT EXISTS `uniquebaliliving` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `uniquebaliliving`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `comment`
--

CREATE TABLE `comment` (
  `id_comment` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `image_user` varchar(255) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `gallery`
--

CREATE TABLE `gallery` (
  `id_gallery` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `categories` varchar(255) NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `gallery_category`
--

CREATE TABLE `gallery_category` (
  `id_gallery_category` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gallery_category`
--

INSERT INTO `gallery_category` (`id_gallery_category`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, '1', '<p>all</p>', '2023-03-11', '2023-03-11'),
(2, 'Exhibitions', '<p>Exhibitions</p>', '2023-03-11', '2023-03-11'),
(3, 'Export Buyer', '<p>Friendly material</p>', '2023-03-11', '2023-03-11'),
(4, 'Friendly material', '<p>Friendly material</p>', '2023-03-11', '2023-03-11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--

CREATE TABLE `product` (
  `id_product` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `telp` varchar(255) DEFAULT NULL,
  `image_product_1` varchar(255) NOT NULL,
  `image_product_2` varchar(255) DEFAULT NULL,
  `image_product_3` varchar(255) DEFAULT NULL,
  `image_product_4` varchar(255) DEFAULT NULL,
  `categories` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_category`
--

CREATE TABLE `product_category` (
  `id_product_category` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image_category` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `product_category`
--

INSERT INTO `product_category` (`id_product_category`, `title`, `description`, `image_category`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'DECORATIVE LAMPS', '<h2>DECORATIVE LAMPS</h2>', '1.jpg', '2022-08-22', '2022-08-22', NULL),
(2, 'PRIVATE COLLECTIONS', '<h2>PRIVATE COLLECTIONS</h2>', '1662566140.png', '2022-08-22', '2022-09-07', NULL),
(3, '3D ART SCULPTURES', '<h2>3D ART SCULPTURES</h2>', '1662566151.jpg', '2022-08-22', '2022-09-07', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_user` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `role_user`, `created_at`, `updated_at`) VALUES
(10, 'admin@gmail.com', '$2y$10$WuIDh1bEQSZNkjNGonv1neOt6rRbpyM8LHyYLI9vcN5a/mtTohIyy', NULL, '2022-09-04', '2022-09-05');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id_comment`);

--
-- Indeks untuk tabel `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id_gallery`);

--
-- Indeks untuk tabel `gallery_category`
--
ALTER TABLE `gallery_category`
  ADD PRIMARY KEY (`id_gallery_category`);

--
-- Indeks untuk tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_product`);

--
-- Indeks untuk tabel `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id_product_category`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `comment`
--
ALTER TABLE `comment`
  MODIFY `id_comment` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id_gallery` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `gallery_category`
--
ALTER TABLE `gallery_category`
  MODIFY `id_gallery_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `product`
--
ALTER TABLE `product`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id_product_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Database: `vicrems`
--
CREATE DATABASE IF NOT EXISTS `vicrems` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `vicrems`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `id_customer` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `bio` text,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`id_customer`, `name`, `email`, `telephone`, `bio`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'adisantikajaya', 'adisantikajaya10@gmail.com', '01231231', 'asdadasdasdadadad\"', '2022-12-30', '2023-03-25', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer_card`
--

CREATE TABLE `customer_card` (
  `id_customer_card` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `description` mediumtext,
  `id_template_card` int(11) NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `customer_card`
--

INSERT INTO `customer_card` (`id_customer_card`, `id_customer`, `link`, `description`, `id_template_card`, `created_at`, `updated_at`, `deleted_at`) VALUES
(25, 2, 'asdada123', 'sd', 1, '2023-01-29', '2023-02-01', NULL),
(26, 2, 'undangan2-gold', '<p>undangan otw</p>', 2, '2023-04-10', '2023-04-10', NULL),
(27, 2, 'undangan_3_silver', '<p>undangan otw</p>', 3, '2023-04-10', '2023-04-11', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `Kode_Jurusan` varchar(5) DEFAULT NULL,
  `Nama_Jurusan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `NIM` int(11) DEFAULT NULL,
  `Kode_Jurusan` varchar(5) DEFAULT NULL,
  `Nama_Mahasiswa` varchar(255) DEFAULT NULL,
  `IPK` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `packet`
--

CREATE TABLE `packet` (
  `id_packet` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `attribute_description` mediumtext NOT NULL,
  `template_blade_php` varchar(255) NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `packet`
--

INSERT INTO `packet` (`id_packet`, `title`, `description`, `attribute_description`, `template_blade_php`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Silver', 'Undangan Digital\r\nSimple, Mudah, dan Elegan\r\n\r\nDesain Klasik\r\nInformasi Acara\r\nGoogle Maps\r\nNama Tamu\r\nKata Bijak\r\nProtokol Kesehatan\r\nBacksound Lagu', 'Desain Klasik\r\nInformasi Acara\r\nGoogle Maps\r\nNama Tamu\r\nKata Bijak\r\nProtokol Kesehatan\r\nBacksound Lagu', 'packet1', '2022-12-31', '2023-01-27', NULL),
(2, 'Gold', 'Desain Premium\r\nInformasi Acara\r\nGoogle Maps\r\nFoto Max 10\r\nNama Tamu\r\nKata Bijak\r\nProtokol Kesehatan\r\nAmplop Digital\r\nCountdown Timer\r\nBacksound Lagu\r\nVirtual Wedding', 'Desain Premium\r\nInformasi Acara\r\nGoogle Maps\r\nFoto Max 10\r\nNama Tamu\r\nKata Bijak\r\nProtokol Kesehatan\r\nAmplop Digital\r\nCountdown Timer\r\nBacksound Lagu\r\nVirtual Wedding', 'packet2', '2022-12-31', '2023-01-27', NULL),
(3, 'Emerlad', 'Desain Ekslusif\r\nInformasi Acara\r\nGoogle Maps\r\nFoto Max 15\r\nNama Tamu\r\nKata Bijak\r\nProtokol Kesehatan\r\nAmplop Digital\r\nVideo\r\nCountdown Timer\r\nBacksound Lagu\r\nVirtual Wedding', 'Desain Ekslusif\r\nInformasi Acara\r\nGoogle Maps\r\nFoto Max 15\r\nNama Tamu\r\nKata Bijak\r\nProtokol Kesehatan\r\nAmplop Digital\r\nVideo\r\nCountdown Timer\r\nBacksound Lagu\r\nVirtual Wedding', 'packet3', '2023-01-27', '2023-01-27', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `template_card`
--

CREATE TABLE `template_card` (
  `id_template_card` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `link_template_code` varchar(255) NOT NULL,
  `id_packet` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `template_card`
--

INSERT INTO `template_card` (`id_template_card`, `title`, `link_template_code`, `id_packet`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Undangan Template 1', 'undangan1', 3, 'undangan template 1 - fix', '2022-12-31', '2023-01-28', NULL),
(2, 'undangan template 2', 'undangan2', 2, '<p>undangan template 2 - test</p>', '2023-01-01', '2023-04-10', NULL),
(3, 'undangan3-silver', 'undangan3', 1, '<p>undangan3-silver</p>', '2023-04-10', '2023-04-10', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `template_content_card`
--

CREATE TABLE `template_content_card` (
  `template_content_card` int(11) NOT NULL,
  `attribute` varchar(255) NOT NULL,
  `data` longtext NOT NULL,
  `id_customer_card` int(11) NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `template_content_card`
--

INSERT INTO `template_content_card` (`template_content_card`, `attribute`, `data`, `id_customer_card`, `created_at`, `updated_at`, `deleted_at`) VALUES
(210, 'title_1', 'asdas', 25, '2023-01-29', '2023-02-01', NULL),
(211, 'title_2', 'dasda', 25, '2023-01-29', '2023-02-01', NULL),
(212, 'love_story', 'sdasdasdas', 25, '2023-01-29', '2023-02-01', NULL),
(213, 'hastag_moment', 'dasdas', 25, '2023-01-29', '2023-02-01', NULL),
(214, 'bank_account_number', 'da', 25, '2023-01-29', '2023-02-01', NULL),
(215, 'pawiwahan_date', '2023-02-10', 25, '2023-01-29', '2023-02-01', NULL),
(216, 'pawiwahan_time', 'adasda', 25, '2023-01-29', '2023-02-01', NULL),
(217, 'pawiwahan_location', 'sdasdas', 25, '2023-01-29', '2023-02-01', NULL),
(218, 'resepsi_date', '2023-02-02', 25, '2023-01-29', '2023-02-01', NULL),
(219, 'resepsi_time', 'das', 25, '2023-01-29', '2023-02-01', NULL),
(220, 'resepsi_location', 'dasdas', 25, '2023-01-29', '2023-02-01', NULL),
(221, 'bride_nickname', 'adadasd', 25, '2023-01-29', '2023-02-01', NULL),
(222, 'bride_fullname', 'asdasdasda', 25, '2023-01-29', '2023-02-01', NULL),
(223, 'bride_mother', 'asdasdasdaasdasdasdaasdasdasdaasdasdasda', 25, '2023-01-29', '2023-02-01', NULL),
(224, 'bride_father', 'asdasdasdaasdasdasda', 25, '2023-01-29', '2023-02-01', NULL),
(225, 'groom_nickname', 'asdasdasda', 25, '2023-01-29', '2023-02-01', NULL),
(226, 'groom_fullname', 'asdasdasda', 25, '2023-01-29', '2023-02-01', NULL),
(227, 'groom_mother', 'asdasdasdaasdasdasda', 25, '2023-01-29', '2023-02-01', NULL),
(228, 'groom_father', 'asdasdasdaasdasdasdaasdasdasda', 25, '2023-01-29', '2023-02-01', NULL),
(229, 'bride_photo', '25_bride_photo_1675169611.jpg', 25, '2023-01-29', '2023-01-31', NULL),
(230, 'groom_photo', '25_groom_foto_1674992073.png', 25, '2023-01-29', '2023-01-29', NULL),
(231, 'banner1', '25_banner1_1674992073.jpg', 25, '2023-01-29', '2023-01-29', NULL),
(232, 'banner2', '25_banner2_1675171379.jpg', 25, '2023-01-29', '2023-01-31', NULL),
(233, 'banner3', '25_banner3_1674992073.png', 25, '2023-01-29', '2023-01-29', NULL),
(234, 'banner4', '25_banner4_1674992073.jpg', 25, '2023-01-29', '2023-01-29', NULL),
(235, 'banner5', '25_banner5_1674992073.jpg', 25, '2023-01-29', '2023-01-29', NULL),
(236, 'banner6', '25_banner6_1674992073.jpg', 25, '2023-01-29', '2023-01-29', NULL),
(237, 'banner7', '25_banner7_1674992073.png', 25, '2023-01-29', '2023-01-29', NULL),
(238, 'description', '', 25, NULL, NULL, NULL),
(239, 'quotes', 'qoutes', 25, NULL, '2023-02-01', NULL),
(240, 'music', 'BALI_WORLD_MUSIC_GUS_TEJA_FEE_WITH_LOVE.mp3', 25, NULL, NULL, NULL),
(241, 'title_1', 'Kennedy & Winkle', 26, '2023-04-10', '2023-04-10', NULL),
(242, 'title_2', 'Kennedy & Winkle', 26, '2023-04-10', '2023-04-10', NULL),
(243, 'quotes', '<p>\"Dalam sebuah pernikahan kalian disatukan demi sebuah kebahagiaan dengan janji hati untuk saling membahagiakan. Bersamaku engkau akan hidup selamanya karena Tuhan pasti akan memberikan karunia sebagai pelindung dan saksi dalam pernikahan ini. Untuk itulah kalian dipersatukan dalam satu keluarga..\"<br><br>(Rgveda : X.85.36)</p>', 26, '2023-04-10', '2023-04-10', NULL),
(244, 'hastag_moment', 'hansawedding', 26, '2023-04-10', '2023-04-10', NULL),
(245, 'bank_account_number', '07897****', 26, '2023-04-10', '2023-04-10', NULL),
(246, 'pawiwahan_date', '2023-04-27', 26, '2023-04-10', '2023-04-10', NULL),
(247, 'pawiwahan_time', '10.00 Wita', 26, '2023-04-10', '2023-04-10', NULL),
(248, 'pawiwahan_location', 'https://goo.gl/maps/a53VhuriRQyi4KPf9', 26, '2023-04-10', '2023-04-10', NULL),
(249, 'resepsi_date', '2023-04-29', 26, '2023-04-10', '2023-04-10', NULL),
(250, 'resepsi_time', '10.00 Wita', 26, '2023-04-10', '2023-04-10', NULL),
(251, 'resepsi_location', 'https://goo.gl/maps/a53VhuriRQyi4KPf9', 26, '2023-04-10', '2023-04-10', NULL),
(252, 'bride_brother', '1', 26, '2023-04-10', '2023-04-10', NULL),
(253, 'bride_nickname', 'Kennedy', 26, '2023-04-10', '2023-04-10', NULL),
(254, 'bride_fullname', 'I Made Kennedy', 26, '2023-04-10', '2023-04-10', NULL),
(255, 'bride_mother', 'Ibu Kennedy', 26, '2023-04-10', '2023-04-10', NULL),
(256, 'bride_father', 'Bapak kennedy', 26, '2023-04-10', '2023-04-10', NULL),
(257, 'bride_instagram', 'kennedyexample_', 26, '2023-04-10', '2023-04-10', NULL),
(258, 'groom_sister', '2', 26, '2023-04-10', '2023-04-10', NULL),
(259, 'groom_nickname', 'Wikle', 26, '2023-04-10', '2023-04-10', NULL),
(260, 'groom_fullname', 'Putu Wikle', 26, '2023-04-10', '2023-04-10', NULL),
(261, 'groom_mother', 'Ibu Wikle', 26, '2023-04-10', '2023-04-10', NULL),
(262, 'groom_father', 'Bapak Wikle', 26, '2023-04-10', '2023-04-10', NULL),
(263, 'groom_instagram', 'wiknlexample_', 26, '2023-04-10', '2023-04-10', NULL),
(264, 'music', '26_music_1681088849.mp3', 26, '2023-04-10', '2023-04-10', NULL),
(265, 'bride_photo', '26_bride_photo_1681088849.png', 26, '2023-04-10', '2023-04-10', NULL),
(266, 'groom_photo', '26_groom_photo_1681088849.png', 26, '2023-04-10', '2023-04-10', NULL),
(267, 'banner1', '26_banner1_1681088849.png', 26, '2023-04-10', '2023-04-10', NULL),
(268, 'banner2', '26_banner2_1681088849.png', 26, '2023-04-10', '2023-04-10', NULL),
(269, 'banner3', '26_banner3_1681088849.png', 26, '2023-04-10', '2023-04-10', NULL),
(270, 'banner4', '26_banner4_1681088849.png', 26, '2023-04-10', '2023-04-10', NULL),
(271, 'banner5', '26_banner5_1681088849.png', 26, '2023-04-10', '2023-04-10', NULL),
(272, 'banner6', '26_banner6_1681088849.png', 26, '2023-04-10', '2023-04-10', NULL),
(273, 'title_1', 'Radit & Sintya', 27, '2023-04-10', '2023-04-11', NULL),
(274, 'title_2', 'Radit & Sintya', 27, '2023-04-10', '2023-04-11', NULL),
(275, 'quotes1', '<p>\"Dalam sebuah pernikahan kalian disatukan demi sebuah kebahagiaan dengan janji hati untuk saling membahagiakan. Bersamaku engkau akan hidup selamanya karena Tuhan pasti akan memberikan karunia sebagai pelindung dan saksi dalam pernikahan ini. Untuk itulah kalian dipersatukan dalam satu keluarga..\"<br><br>(Rgveda : X.85.36)</p>', 27, '2023-04-10', '2023-04-11', NULL),
(276, 'quotes2', '<p>“ Cinta pada pandangan pertama yang mudah dimengerti; ketika dua orang telah saling memandang seumur hidup, itu menjadi keajaiban.\"<br><br>Sam Leveson</p>', 27, '2023-04-10', '2023-04-11', NULL),
(277, 'pawiwahan_date', '2023-04-29', 27, '2023-04-10', '2023-04-11', NULL),
(278, 'pawiwahan_time', '10.00 wita', 27, '2023-04-10', '2023-04-11', NULL),
(279, 'pawiwahan_location', 'https://goo.gl/maps/HgDsfT18ofJphLXC9', 27, '2023-04-10', '2023-04-11', NULL),
(280, 'resepsi_date', '2023-04-28', 27, '2023-04-10', '2023-04-11', NULL),
(281, 'resepsi_time', '10.00 wita', 27, '2023-04-10', '2023-04-11', NULL),
(282, 'resepsi_location', 'Tabanan', 27, '2023-04-10', '2023-04-11', NULL),
(283, 'bride_nickname', 'Sintya', 27, '2023-04-10', '2023-04-11', NULL),
(284, 'bride_fullname', 'Ni Wayan Sintya Lisna Yanti S.Ak', 27, '2023-04-10', '2023-04-11', NULL),
(285, 'bride_mother', 'dan Ibu. Ni Ketut Muliani', 27, '2023-04-10', '2023-04-11', NULL),
(286, 'bride_father', 'Bapak. I Made Dana', 27, '2023-04-10', '2023-04-11', NULL),
(287, 'bride_location', 'Jalan bhuana Asri, Gang 7 Klungkung.', 27, '2023-04-10', '2023-04-11', NULL),
(288, 'groom_nickname', 'Radit', 27, '2023-04-10', '2023-04-11', NULL),
(289, 'groom_fullname', 'Gede Raditya Dika S.Kes', 27, '2023-04-10', '2023-04-11', NULL),
(290, 'groom_mother', 'dan Ibu. Ni Komang Liani', 27, '2023-04-10', '2023-04-11', NULL),
(291, 'groom_father', 'Bapak. I Wayan Sudiraga', 27, '2023-04-10', '2023-04-11', NULL),
(292, 'groom_location', 'Jalan bhuana Asri, Gang 8 Klungkung.', 27, '2023-04-10', '2023-04-11', NULL),
(293, 'music', '27_music_1681170380.mp3', 27, '2023-04-10', '2023-04-10', NULL),
(294, 'highlight_1', 'R', 27, '2023-04-11', '2023-04-11', NULL),
(295, 'highlight_2', 'S', 27, '2023-04-11', '2023-04-11', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `template_rsvp_card`
--

CREATE TABLE `template_rsvp_card` (
  `id_template_rsvp_card` int(11) NOT NULL,
  `id_customer_card` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `attend` varchar(255) NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `template_rsvp_card`
--

INSERT INTO `template_rsvp_card` (`id_template_rsvp_card`, `id_customer_card`, `name`, `telephone`, `attend`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 25, 'asdasdadasd', 'adasdad', '1', '2023-02-01', '2023-02-01', NULL),
(2, 25, 'undangan', '2131312', '1', '2023-03-26', '2023-03-26', NULL),
(3, 27, 'adi', '02131312', '1', '2023-04-11', '2023-04-11', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `type_log`
--

CREATE TABLE `type_log` (
  `id_type_log` int(11) NOT NULL,
  `title` mediumtext NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `type_log`
--

INSERT INTO `type_log` (`id_type_log`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin Baru', NULL, NULL),
(2, 'Admin Baru', NULL, NULL),
(3, 'Customer Baru', NULL, NULL),
(4, 'Customer diperbaharui', NULL, NULL),
(5, 'Customer dihapus', NULL, NULL),
(6, 'Customer dikembalikan', NULL, NULL),
(7, 'Undangan dibuat', NULL, NULL),
(8, 'Undangan diperbaharui', NULL, NULL),
(9, 'Undangan dihapus', NULL, NULL),
(10, 'Undangan dikembalikan', NULL, NULL),
(11, 'Admin diperbaharui', NULL, NULL),
(12, 'Admin dihapus', NULL, NULL),
(13, 'Admin dikembalikan', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `id_user_role` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `id_user_role`, `email`, `created_at`, `updated_at`, `deleted_at`) VALUES
(6, 'oki2', '$2y$10$Wu9g.TRqXdPxrQwbIJx5FOfP3XMYWouxtpoy1LX4mJLWA26A4kghG', 1, 'admin@gmail.com', '2022-10-30', '2023-01-05', NULL),
(9, 'made1', '$2y$10$lsin.thAeN9p.an5cP4iEuFFYCTc5hKgcADDfzoGzbBJt7M5TY7Si', 2, 'made@gmail.com', '2023-01-05', '2023-02-01', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_log`
--

CREATE TABLE `user_log` (
  `id_user_log` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `description` mediumtext NOT NULL,
  `id_type_log` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_log`
--

INSERT INTO `user_log` (`id_user_log`, `id_user`, `description`, `id_type_log`, `created_at`, `updated_at`) VALUES
(1, 6, 'admin@gmail.com telah terdaftar menjadi super admin', 1, '2023-01-05 13:32:59', '2023-01-27 03:46:32'),
(2, 9, 'made@gmail.com has been user, get role admin', 2, NULL, '2023-01-26 22:34:50'),
(3, 6, 'menambahkan data customer : testemail, id :#6,email : testemail@gmail.com', 1, '2023-01-31 23:20:37', '2023-01-31 23:20:46'),
(4, 9, 'menghapus data admin : made1, id :#9,email : made@gmail.com', 12, '2023-01-31 23:38:55', '2023-03-03 19:32:30'),
(5, 6, 'menghapus data customer : testemail, id :#6,email : testemail@gmail.com', 5, '2023-03-24 22:12:33', '2023-03-24 22:12:33'),
(6, 6, 'menghapus data customer : testemail, id :#6,email : testemail@gmail.com', 5, '2023-03-24 22:23:17', '2023-03-24 22:23:17'),
(7, 6, 'menghapus data customer : adisantikajaya, id :#2,email : adisantikajaya10@gmail.com', 5, '2023-03-24 22:23:21', '2023-03-24 22:23:21'),
(8, 6, 'mengembalikan data customer : adisantikajaya, id :#2,email : adisantikajaya10@gmail.com', 6, '2023-03-24 22:23:25', '2023-03-24 22:23:25'),
(9, 6, 'menghapus data customer : test, id :#5,email : test@gmail.com', 5, '2023-03-24 22:23:31', '2023-03-24 22:23:31'),
(10, 6, 'menghapus data customer : Adi, id :#4,email : adisantikajaya10@gmail.com', 5, '2023-03-24 22:23:34', '2023-03-24 22:23:34'),
(11, 6, 'menghapus data customer : made budi, id :#3,email : madebudi@gmail.com', 5, '2023-03-24 22:23:38', '2023-03-24 22:23:38'),
(12, 6, 'membuat data undangan : adisantikajaya, id :#2,email : adisantikajaya10@gmail.com', 7, '2023-04-09 17:07:29', '2023-04-09 17:07:29'),
(13, 6, 'membuat undangan baru : adisantikajaya, id :#2,email : adisantikajaya10@gmail.com', 7, '2023-04-10 15:46:21', '2023-04-10 15:46:21'),
(14, 6, 'memperbaharui data undangan : adisantikajaya, id :#2,email : adisantikajaya10@gmail.com', 8, '2023-04-10 16:01:00', '2023-04-10 16:01:00'),
(15, 6, 'memperbaharui data undangan : adisantikajaya, id :#2,email : adisantikajaya10@gmail.com', 8, '2023-04-10 16:21:19', '2023-04-10 16:21:19'),
(16, 6, 'memperbaharui data undangan : adisantikajaya, id :#2,email : adisantikajaya10@gmail.com', 8, '2023-04-10 16:28:50', '2023-04-10 16:28:50'),
(17, 6, 'memperbaharui data undangan : adisantikajaya, id :#2,email : adisantikajaya10@gmail.com', 8, '2023-04-10 16:29:05', '2023-04-10 16:29:05'),
(18, 6, 'memperbaharui data undangan : adisantikajaya, id :#2,email : adisantikajaya10@gmail.com', 8, '2023-04-10 16:30:48', '2023-04-10 16:30:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `id_user_role` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id_user_role`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'super_admin', NULL, NULL, NULL),
(2, 'admin', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indeks untuk tabel `customer_card`
--
ALTER TABLE `customer_card`
  ADD PRIMARY KEY (`id_customer_card`),
  ADD KEY `id_template_card` (`id_template_card`);

--
-- Indeks untuk tabel `packet`
--
ALTER TABLE `packet`
  ADD PRIMARY KEY (`id_packet`);

--
-- Indeks untuk tabel `template_card`
--
ALTER TABLE `template_card`
  ADD PRIMARY KEY (`id_template_card`),
  ADD KEY `id_packet` (`id_packet`);

--
-- Indeks untuk tabel `template_content_card`
--
ALTER TABLE `template_content_card`
  ADD PRIMARY KEY (`template_content_card`),
  ADD KEY `id_customer` (`id_customer_card`);

--
-- Indeks untuk tabel `template_rsvp_card`
--
ALTER TABLE `template_rsvp_card`
  ADD PRIMARY KEY (`id_template_rsvp_card`);

--
-- Indeks untuk tabel `type_log`
--
ALTER TABLE `type_log`
  ADD PRIMARY KEY (`id_type_log`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `user_log`
--
ALTER TABLE `user_log`
  ADD PRIMARY KEY (`id_user_log`);

--
-- Indeks untuk tabel `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id_user_role`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `customer`
--
ALTER TABLE `customer`
  MODIFY `id_customer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `customer_card`
--
ALTER TABLE `customer_card`
  MODIFY `id_customer_card` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `packet`
--
ALTER TABLE `packet`
  MODIFY `id_packet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `template_card`
--
ALTER TABLE `template_card`
  MODIFY `id_template_card` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `template_content_card`
--
ALTER TABLE `template_content_card`
  MODIFY `template_content_card` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=296;

--
-- AUTO_INCREMENT untuk tabel `template_rsvp_card`
--
ALTER TABLE `template_rsvp_card`
  MODIFY `id_template_rsvp_card` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `type_log`
--
ALTER TABLE `type_log`
  MODIFY `id_type_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `user_log`
--
ALTER TABLE `user_log`
  MODIFY `id_user_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id_user_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `customer_card`
--
ALTER TABLE `customer_card`
  ADD CONSTRAINT `customer_card_ibfk_1` FOREIGN KEY (`id_template_card`) REFERENCES `template_card` (`id_template_card`);

--
-- Ketidakleluasaan untuk tabel `template_card`
--
ALTER TABLE `template_card`
  ADD CONSTRAINT `template_card_ibfk_1` FOREIGN KEY (`id_packet`) REFERENCES `packet` (`id_packet`);

--
-- Ketidakleluasaan untuk tabel `template_content_card`
--
ALTER TABLE `template_content_card`
  ADD CONSTRAINT `template_content_card_ibfk_1` FOREIGN KEY (`id_customer_card`) REFERENCES `customer_card` (`id_customer_card`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
