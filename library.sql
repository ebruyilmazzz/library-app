-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 25 Mar 2025, 14:48:33
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `library`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `category`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 'Gurur ve Önyargı', 'JANE AUSTEN', 'Roman', 3, '2025-03-24 06:42:20', '2025-03-24 06:42:20'),
(2, '1984', 'George Orwell', 'Roman', 5, '2025-03-24 13:25:46', '2025-03-24 13:25:46'),
(3, 'Suç ve Ceza', 'Fyodor Dostoyevski', 'Roman', 3, '2025-03-24 13:25:46', '2025-03-24 13:25:46'),
(4, 'Sefiller', 'Victor Hugo', 'Roman', 4, '2025-03-24 13:25:46', '2025-03-24 13:25:46'),
(5, 'Yeraltından Notlar', 'Fyodor Dostoyevski', 'Roman', 2, '2025-03-24 13:25:46', '2025-03-24 13:25:46'),
(6, 'Bilinmeyen Bir Kadının Mektubu', 'Stefan Zweig', 'Roman', 3, '2025-03-24 13:25:46', '2025-03-24 13:25:46'),
(7, 'Simyacı', 'Paulo Coelho', 'Roman', 6, '2025-03-24 13:25:46', '2025-03-24 13:25:46'),
(8, 'Küçük Prens', 'Antoine de Saint-Exupéry', 'Çocuk', 10, '2025-03-24 13:25:46', '2025-03-24 13:25:46'),
(9, 'Dönüşüm', 'Franz Kafka', 'Roman', 4, '2025-03-24 13:25:46', '2025-03-24 13:25:46'),
(10, 'Şeker Portakalı', 'José Mauro de Vasconcelos', 'Roman', 5, '2025-03-24 13:25:46', '2025-03-24 13:25:46'),
(11, 'Karamazov Kardeşler', 'Fyodor Dostoyevski', 'Roman', 2, '2025-03-24 13:25:46', '2025-03-24 13:25:46'),
(12, 'Don Kişot', 'Miguel de Cervantes', 'Roman', 3, '2025-03-24 13:25:46', '2025-03-24 13:25:46'),
(13, 'Beyaz Diş', 'Jack London', 'Macera', 7, '2025-03-24 13:25:46', '2025-03-24 13:25:46'),
(14, 'Kumarbaz', 'Fyodor Dostoyevski', 'Roman', 4, '2025-03-24 13:25:46', '2025-03-24 13:25:46'),
(15, 'Uğultulu Tepeler', 'Emily Brontë', 'Roman', 3, '2025-03-24 13:25:46', '2025-03-24 13:25:46'),
(16, 'Kızıl ve Kara', 'Stendhal', 'Roman', 3, '2025-03-24 13:25:46', '2025-03-24 13:25:46'),
(17, 'Dracula', 'Bram Stoker', 'Korku', 4, '2025-03-24 13:25:46', '2025-03-24 13:25:46'),
(18, 'Denemeler', 'Montaigne', 'Felsefe', 2, '2025-03-24 13:25:46', '2025-03-24 13:25:46'),
(19, 'İlahi Komedya', 'Dante Alighieri', 'Şiir', 3, '2025-03-24 13:25:46', '2025-03-24 13:25:46'),
(20, 'Madame Bovary', 'Gustave Flaubert', 'Roman', 5, '2025-03-24 13:25:46', '2025-03-24 13:25:46'),
(21, 'Babalar ve Oğullar', 'İvan Turgenyev', 'Roman', 3, '2025-03-24 13:25:46', '2025-03-24 13:25:46'),
(22, 'Monte Cristo Kontu', 'Alexandre Dumas', 'Macera', 6, '2025-03-24 13:25:46', '2025-03-24 13:25:46'),
(23, 'Notre Dame’ın Kamburu', 'Victor Hugo', 'Roman', 4, '2025-03-24 13:25:46', '2025-03-24 13:25:46'),
(24, 'Faust', 'Johann Wolfgang von Goethe', 'Tiyatro', 3, '2025-03-24 13:25:46', '2025-03-24 13:25:46'),
(25, 'Satranç', 'Stefan Zweig', 'Roman', 5, '2025-03-24 13:25:46', '2025-03-24 13:25:46'),
(26, 'Savaş ve Barış', 'Lev Tolstoy', 'Roman', 2, '2025-03-24 13:25:46', '2025-03-24 13:25:46'),
(27, 'Zamanın Kısa Tarihi', 'Stephen Hawking', 'Bilim', 3, '2025-03-24 13:25:46', '2025-03-24 13:25:46'),
(28, 'İnsan Ne ile Yaşar?', 'Lev Tolstoy', 'Felsefe', 4, '2025-03-24 13:25:46', '2025-03-24 13:25:46'),
(29, 'Harry Potter ve Felsefe Taşı', 'J.K. Rowling', 'Fantastik', 8, '2025-03-24 13:25:46', '2025-03-24 13:25:46'),
(30, 'Yüzüklerin Efendisi', 'J.R.R. Tolkien', 'Fantastik', 5, '2025-03-24 13:25:46', '2025-03-24 13:25:46'),
(31, 'Kızıl Panda', 'Santiago García', 'Çocuk', 6, '2025-03-24 13:25:46', '2025-03-24 13:25:46'),
(32, 'da vinci şifresi', 'dan brown', 'Roman', 78, '2025-03-25 05:53:13', '2025-03-25 05:53:13'),
(33, 'Dune', 'Dune', 'Bilim Kurgu', 3, '2025-03-25 07:54:33', '2025-03-25 07:54:33');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `failed_jobs`
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
-- Tablo için tablo yapısı `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `loans`
--

CREATE TABLE `loans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `loan_date` date NOT NULL,
  `return_date` date NOT NULL,
  `status` enum('borrowed','returned') NOT NULL DEFAULT 'borrowed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_03_24_075241_create_books_table', 1),
(5, '2025_03_24_075241_create_loans_table', 1),
(6, '2025_03_24_075241_create_requests_table', 1),
(7, '2025_03_24_124858_update_users_table', 2),
(8, '2014_10_12_100000_create_password_resets_table', 3);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `requests`
--

CREATE TABLE `requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('pending','approved','rejected') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('IA0aU2Dq9u1bvPPNXw6q3h9vPGvUxVJLXvV32tPJ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRnhXUmNmQlZxMjRpeXN5ankwVUhwM09mcmtsTU5rcEI2YXdrRnJxNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1742890783);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `status` enum('pending','approved','rejected') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `status`, `created_at`, `updated_at`) VALUES
(6, 'Ebru Yılmaz', 'ebruylmaazz0505@gmail.com', '$2y$12$TGXukQw9mAYYu6ggPb6D4u.Ghbl7JUu5Ln8JFGVcIN9cc54lY6qp6', 'librarian', 'approved', '2025-03-24 10:08:44', '2025-03-25 07:23:34'),
(7, 'Beyza Yılmaz', 'beyzayilmaz@gmail.com', '$2y$12$/d3SzbtPXSHW8zvxmhLS3eKej3x8rb1R.bF.L9HUafdnZXrfpWdzS', 'student', 'approved', '2025-03-24 10:09:25', '2025-03-24 11:17:41'),
(8, 'Melike keskin', 'jetabir531@birige.com', '$2y$12$1ab1fOy3IibP5txDoH2Wh.8zkfqwsBduZZ28uYfSehaKwfVWhxn8m', 'student', 'rejected', '2025-03-25 07:52:00', '2025-03-25 08:25:52');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Tablo için indeksler `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Tablo için indeksler `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Tablo için indeksler `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Tablo için indeksler `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `loans`
--
ALTER TABLE `loans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loans_user_id_foreign` (`user_id`),
  ADD KEY `loans_book_id_foreign` (`book_id`);

--
-- Tablo için indeksler `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Tablo için indeksler `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Tablo için indeksler `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `requests_user_id_foreign` (`user_id`),
  ADD KEY `requests_book_id_foreign` (`book_id`);

--
-- Tablo için indeksler `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Tablo için AUTO_INCREMENT değeri `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `loans`
--
ALTER TABLE `loans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `requests`
--
ALTER TABLE `requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `loans`
--
ALTER TABLE `loans`
  ADD CONSTRAINT `loans_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `loans_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `requests`
--
ALTER TABLE `requests`
  ADD CONSTRAINT `requests_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `requests_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
