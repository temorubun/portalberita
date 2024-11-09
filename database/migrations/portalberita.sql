-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2024 at 09:57 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portalberita`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Politik', NULL, NULL),
(2, 'Teknologi', NULL, NULL),
(3, 'Ekonomi', NULL, NULL),
(4, 'Kesehatan', NULL, NULL),
(5, 'Olahraga', NULL, NULL),
(6, 'Pendidikan', NULL, NULL),
(7, 'Lingkungan', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `news_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `news_id`, `user_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 7, 2, 'Apakah Ini Benar?', '2024-11-08 21:14:28', '2024-11-08 21:14:28'),
(2, 7, 1, 'Apakah Ini Benar', '2024-11-08 21:17:14', '2024-11-08 21:17:14');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_11_08_100422_create_table_name', 1),
(6, '2024_11_08_101717_create_categories_table', 1),
(7, '2024_11_08_101957_create_profiles_table', 1),
(8, '2024_11_08_102053_create_news_table', 1),
(9, '2024_11_08_102620_create_comments_table', 1),
(10, '2024_11_08_193154_create_replies_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `thumbnail`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Presiden Menyampaikan Pidato Kenegaraan di Sidang Tahunan', 'Presiden memulai pidatonya dengan membahas tantangan ekonomi global yang tengah dihadapi, termasuk dampak dari konflik geopolitik dan krisis pangan yang memengaruhi banyak negara, termasuk Indonesia. Dalam pidatonya, Presiden menekankan pentingnya menjaga stabilitas ekonomi nasional melalui program stimulus yang lebih terarah dan tepat sasaran.\r\n\r\nPemerintah berkomitmen untuk melanjutkan pembangunan infrastruktur di berbagai daerah guna meningkatkan konektivitas dan mendorong pertumbuhan ekonomi daerah. Selain itu, Presiden juga menyoroti pentingnya reformasi birokrasi dan pemberantasan korupsi sebagai langkah strategis untuk meningkatkan efisiensi anggaran negara.\r\n\r\nDi sisi lain, Presiden meminta dukungan dari seluruh lapisan masyarakat untuk berperan aktif dalam menciptakan iklim demokrasi yang sehat. Dia mengingatkan bahwa kerukunan dan persatuan merupakan kunci keberhasilan dalam menghadapi tantangan masa depan, terutama di tahun-tahun menjelang pemilu.', '1731118328.jpg', 1, '2024-11-08 17:12:08', '2024-11-08 17:12:08'),
(2, 'Pembaruan Android Terbaru Meningkatkan Keamanan Data Pengguna', 'Google baru saja meluncurkan pembaruan sistem Android yang dirancang untuk memperkuat keamanan pengguna, terutama dalam hal perlindungan data pribadi. Pembaruan ini menghadirkan fitur \"Privacy Dashboard\" yang memungkinkan pengguna untuk melihat aplikasi mana saja yang mengakses data sensitif seperti lokasi, kamera, dan mikrofon.\r\n\r\nSelain itu, Google juga memperkenalkan teknologi enkripsi end-to-end untuk aplikasi perpesanan di Android. Fitur ini bertujuan untuk memastikan bahwa pesan hanya dapat dibaca oleh pengirim dan penerima, tanpa bisa diakses oleh pihak ketiga, termasuk Google sendiri.\r\n\r\nDalam konferensi persnya, Google menyatakan bahwa mereka terus berupaya meningkatkan perlindungan terhadap serangan siber dan eksploitasi celah keamanan yang dapat membahayakan pengguna. Mereka juga mendorong para pengembang aplikasi untuk memperbarui kebijakan privasi agar sesuai dengan regulasi yang lebih ketat.', '1731118536.jpg', 2, '2024-11-08 17:15:36', '2024-11-08 17:15:36'),
(3, 'Harga Minyak Dunia Melonjak, Apa Dampaknya Bagi Indonesia?', 'Kenaikan harga minyak dunia mencapai puncaknya dalam beberapa bulan terakhir, dipicu oleh ketegangan politik di Timur Tengah dan gangguan pasokan global. Lonjakan ini berdampak langsung pada harga BBM di Indonesia, memaksa pemerintah mempertimbangkan penyesuaian harga bahan bakar bersubsidi.\r\n\r\nKementerian Energi dan Sumber Daya Mineral (ESDM) menyebutkan bahwa kenaikan harga minyak juga berdampak pada biaya produksi barang dan jasa, yang pada akhirnya dapat memicu inflasi. Untuk mengurangi beban masyarakat, pemerintah sedang mengkaji subsidi tambahan untuk sektor transportasi dan energi.\r\n\r\nNamun, beberapa ekonom berpendapat bahwa ketergantungan Indonesia terhadap impor minyak harus segera diatasi dengan mempercepat program energi terbarukan. Dengan memanfaatkan potensi energi surya dan angin, Indonesia diharapkan dapat mengurangi ketergantungan pada minyak impor di masa depan.', '1731131816.jpg', 3, '2024-11-08 20:56:56', '2024-11-08 20:56:56'),
(4, 'Wabah DBD Melanda, Rumah Sakit Kewalahan Tangani Pasien', 'Rumah sakit di beberapa wilayah melaporkan lonjakan jumlah pasien Demam Berdarah Dengue (DBD) akibat peningkatan curah hujan yang memicu berkembangnya nyamuk Aedes aegypti. Direktur Rumah Sakit Umum Daerah mengakui bahwa banyak pasien terpaksa dirawat di lorong karena keterbatasan ruang rawat inap.\r\n\r\nDinas Kesehatan setempat telah meningkatkan kampanye pemberantasan sarang nyamuk dengan menggencarkan program fogging di daerah rawan. Mereka juga mendorong masyarakat untuk melakukan gerakan 3M (Menguras, Menutup, dan Mengubur) untuk meminimalisir tempat perkembangbiakan nyamuk.\r\n\r\nPara ahli medis mengingatkan bahwa gejala awal DBD sering kali disalahartikan sebagai flu biasa. Oleh karena itu, masyarakat diminta untuk segera memeriksakan diri jika mengalami demam tinggi disertai nyeri otot dan ruam kulit agar dapat segera ditangani.', '1731131849.jpg', 4, '2024-11-08 20:57:29', '2024-11-08 20:57:29'),
(5, 'Timnas U-23 Raih Kemenangan di Laga Persahabatan', 'Timnas Indonesia U-23 menunjukkan performa gemilang saat menghadapi Vietnam dalam pertandingan persahabatan di Jakarta. Dengan serangan cepat dan pertahanan yang solid, Indonesia berhasil mencetak tiga gol tanpa balas di babak kedua, memastikan kemenangan telak.\r\n\r\nPelatih timnas menyebut kemenangan ini sebagai hasil kerja keras dan kekompakan para pemain muda yang terus berlatih intensif selama dua bulan terakhir. Dia berharap kemenangan ini menjadi motivasi tambahan menjelang turnamen internasional yang akan datang.\r\n\r\nDi sisi lain, kapten timnas mengungkapkan kebanggaannya atas performa rekan-rekannya yang tetap fokus meski pertandingan berjalan dengan intensitas tinggi. Mereka berjanji akan terus berlatih untuk memperbaiki kelemahan yang terlihat selama pertandingan.', '1731131921.jpg', 5, '2024-11-08 20:58:41', '2024-11-08 20:58:41'),
(6, 'Kurikulum Merdeka Mulai Diterapkan di Sekolah Dasar', 'Sebagai bagian dari reformasi pendidikan, Kurikulum Merdeka mulai diterapkan di lebih dari 1.000 sekolah dasar di seluruh Indonesia. Kurikulum ini menekankan pada pendekatan pembelajaran berbasis proyek yang bertujuan meningkatkan kreativitas dan pemikiran kritis siswa.\r\n\r\nMenteri Pendidikan mengatakan bahwa kurikulum baru ini juga memberikan kebebasan kepada guru untuk menyesuaikan metode pengajaran sesuai dengan kebutuhan siswa, tanpa terikat pada standar yang kaku. Hal ini diharapkan dapat menciptakan suasana belajar yang lebih menyenangkan.\r\n\r\nSelain itu, pelatihan bagi guru juga dilakukan secara intensif untuk memastikan mereka siap menerapkan kurikulum baru ini. Pemerintah berharap perubahan ini dapat memperbaiki kualitas pendidikan di Indonesia dan menghasilkan lulusan yang lebih kompeten di masa depan.', '1731131966.jpg', 5, '2024-11-08 20:59:26', '2024-11-08 20:59:26'),
(7, 'Hoax Kebakaran Hutan di Kalimantan, Ribuan Hektar Lahan Terbakar', 'Kebakaran hutan kembali melanda wilayah Kalimantan, menghanguskan ribuan hektar lahan. Asap tebal menyelimuti beberapa kota di sekitarnya, menyebabkan kualitas udara memburuk dan aktivitas warga terganggu. Pihak berwenang mencurigai kebakaran ini disebabkan oleh pembukaan lahan ilegal untuk perkebunan.\r\n\r\nTim pemadam kebakaran, dibantu oleh relawan, bekerja tanpa lelah untuk memadamkan api yang sulit dikendalikan karena kondisi cuaca yang kering dan angin kencang. Pemerintah daerah telah mengumumkan status darurat bencana dan mendesak perusahaan perkebunan untuk tidak melakukan pembakaran lahan.\r\n\r\nAktivis lingkungan mengecam lemahnya penegakan hukum terhadap perusahaan yang terbukti melakukan pembakaran ilegal. Mereka menuntut tindakan tegas agar kejadian serupa tidak terulang, mengingat dampak kebakaran yang merusak ekosistem dan membahayakan kesehatan masyarakat.', '1731132817.jpg', 7, '2024-11-08 21:13:37', '2024-11-08 21:18:32');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `age` int(11) NOT NULL,
  `bio` text NOT NULL,
  `address` text NOT NULL,
  `photo_profile` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `age`, `bio`, `address`, `photo_profile`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 21, 'Teknologi Rekayasa Internet \r\nSemester 5\r\n22512001', 'Jln. Cendrawasih Sp 2', '1731117996.png', 1, '2024-11-08 17:02:34', '2024-11-08 17:06:36'),
(2, 25, 'Dosen Teknologi Rekayasa Internet Politeknik Amamapare Timika', 'Jln.Busiri 99910', '1731132673.jpg', 2, '2024-11-08 21:09:00', '2024-11-08 21:11:13');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `table_name`
--

CREATE TABLE `table_name` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Agung Hendi Temorubun', 'agunghenditemorubun@gmail.com', NULL, '$2y$10$1u4giCVdEuMBGdz.tsWGI.4I8afJzewEH6tGZp2tWdjsxJwJ3MI8W', NULL, '2024-11-08 17:02:34', '2024-11-08 17:02:34'),
(2, 'Syawal Aprian', 'syawalaprian@gmail.com', NULL, '$2y$10$wj8Ys6roAj1EFeQ5N025yeQs/ZA5B4Yi2POgQ7o0EMajNcVMoCK6m', NULL, '2024-11-08 21:09:00', '2024-11-08 21:09:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_news_id_foreign` (`news_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_category_id_foreign` (`category_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `replies_comment_id_foreign` (`comment_id`),
  ADD KEY `replies_user_id_foreign` (`user_id`);

--
-- Indexes for table `table_name`
--
ALTER TABLE `table_name`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table_name`
--
ALTER TABLE `table_name`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_news_id_foreign` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`),
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `replies`
--
ALTER TABLE `replies`
  ADD CONSTRAINT `replies_comment_id_foreign` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`),
  ADD CONSTRAINT `replies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
