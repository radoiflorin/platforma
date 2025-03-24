-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gazdă: 127.0.0.1
-- Timp de generare: mart. 24, 2025 la 03:58 PM
-- Versiune server: 10.4.32-MariaDB
-- Versiune PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Bază de date: `laravel`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `adeverintas`
--

CREATE TABLE `adeverintas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_cnp` varchar(255) NOT NULL,
  `data_emitere` date NOT NULL,
  `scop` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Eliminarea datelor din tabel `adeverintas`
--

INSERT INTO `adeverintas` (`id`, `student_cnp`, `data_emitere`, `scop`, `created_at`, `updated_at`) VALUES
(1, '5071209340918', '2025-03-24', 'sfd', '2025-03-24 12:40:47', '2025-03-24 12:40:47');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Eliminarea datelor din tabel `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel_cache_livewire-rate-limiter:a5953fb5e1c86b5792734a0b4775a77519f2794f', 'i:2;', 1742821844),
('laravel_cache_livewire-rate-limiter:a5953fb5e1c86b5792734a0b4775a77519f2794f:timer', 'i:1742821844;', 1742821844);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `elevs`
--

CREATE TABLE `elevs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nume` varchar(255) NOT NULL,
  `prenume` varchar(255) NOT NULL,
  `cnp` varchar(255) NOT NULL,
  `clasa` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `failed_jobs`
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
-- Structură tabel pentru tabel `jobs`
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
-- Structură tabel pentru tabel `job_batches`
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
-- Structură tabel pentru tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Eliminarea datelor din tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_03_24_081522_create_countries_table', 1),
(5, '2025_03_24_081558_create_states_table', 1),
(6, '2025_03_24_083001_create_elevs_table', 1),
(7, '2025_03_24_090101_create_adeverintas_table', 1);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `sessions`
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
-- Eliminarea datelor din tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('UaGwm69OoqXT3Bh6lg0q9xZ5sikDWvsVDJNFoCwG', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36 OPR/117.0.0.0', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiSFQ0TkxpcGxSN0lwMFFoT1Uzd3N6Q2tKSGdiakdsZklkcWhiSWR2WSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMxOiJodHRwOi8vbG9jYWxob3N0L2FkbWluL3N0dWRlbnRzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEyJEVCR1NWMExEMjY4SHBhUkQ3cDgwRS5GVjRsM2wuSWY0a2VPZlpySzZtaU5TZmxnRXNkVXdLIjtzOjg6ImZpbGFtZW50IjthOjA6e319', 1742828307);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `student`
--

CREATE TABLE `student` (
  `CNP` bigint(20) DEFAULT NULL,
  `NUME` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `INITIALA_TATALUI` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `PRENUME1` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `PRENUME2` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `PRENUME3` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `SEX` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `DATA_NASTERE` datetime DEFAULT NULL,
  `VARSTA` int(11) DEFAULT NULL,
  `LOCALITATE_NASTERE` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `DENUMIRE_UNITATE_FORMATIUNE` varchar(46) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `NIVEL_INVATAMANT` varchar(9) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `TIP_FORMATIUNE` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `NUME_CLASA` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `STATUS_ELEV` varchar(28) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `DATA_INCEPUT_ASOC_FORMATIUNE` datetime DEFAULT NULL,
  `DATA_SFARSIT_ASOC_FORMATIUNE` datetime DEFAULT NULL,
  `Profil` varchar(7) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Specializare_Calificare` varchar(19) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Domeniu` varchar(7) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `VOL` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `NR` int(11) DEFAULT NULL,
  `PAG` int(11) DEFAULT NULL,
  `DATA_INCEPUT_ASOC_UNITATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Eliminarea datelor din tabel `student`
--

INSERT INTO `student` (`CNP`, `NUME`, `INITIALA_TATALUI`, `PRENUME1`, `PRENUME2`, `PRENUME3`, `SEX`, `DATA_NASTERE`, `VARSTA`, `LOCALITATE_NASTERE`, `DENUMIRE_UNITATE_FORMATIUNE`, `NIVEL_INVATAMANT`, `TIP_FORMATIUNE`, `NUME_CLASA`, `STATUS_ELEV`, `DATA_INCEPUT_ASOC_FORMATIUNE`, `DATA_SFARSIT_ASOC_FORMATIUNE`, `Profil`, `Specializare_Calificare`, `Domeniu`, `VOL`, `NR`, `PAG`, `DATA_INCEPUT_ASOC_UNITATE`) VALUES
(5190723280861, 'ALDEA', 'NL', 'MATEI', 'SORIN', NULL, 'M', '2019-07-23 00:00:00', 5, 'CARACAL', 'GRĂDINIȚA CU PROGRAM NORMAL OSICA DE SUS', 'Preșcolar', 'Grupa mare', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-01 00:00:00'),
(5071209340918, 'ALEXANDRU', 'A', 'MARIAN', 'ALBERT', NULL, 'M', '2007-12-09 00:00:00', 17, 'MUNICIPIUL ROŞIORI DE VEDE', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a X-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXXII', 892, 1, '2023-09-01 00:00:00'),
(5070818226745, 'AMARANDEI', 'I', 'ȘTEFAN', 'EMILIAN', NULL, 'M', '2007-08-18 00:00:00', 17, 'COMARNA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XI-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXIX', 841, 1, '2022-09-01 00:00:00'),
(5080221280863, 'AMZU', 'B', 'MARIUS', 'VALENTIN', NULL, 'M', '2008-02-21 00:00:00', 17, 'MUNICIPIUL CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a X-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXXII', 892, 28, '2023-09-01 00:00:00'),
(5060422280867, 'AMZU', 'B.C.', 'TEODOR-GEORGIAN', NULL, NULL, 'M', '2006-04-22 00:00:00', 18, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXIV', 794, 1, '2021-09-01 00:00:00'),
(6101203284543, 'ANDREI', 'CF', 'ALEXANDRA', 'NICOLETA', NULL, 'F', '2010-12-03 00:00:00', 14, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a VII-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVIII', 840, 22, '2014-09-01 00:00:00'),
(5181202284544, 'ANDREI', 'CF', 'IONUȚ', 'MARIUS', NULL, 'M', '2018-12-02 00:00:00', 6, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa pregătitoare', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXIII', 911, 13, '2021-09-01 00:00:00'),
(6171228281603, 'ANDREI', 'DN', 'MARIA', 'REBECA', NULL, 'F', '2017-12-28 00:00:00', 7, 'STRĂINĂTATE', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa I', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXX', 890, 19, '2021-03-03 00:00:00'),
(6080623280865, 'ANDREI', 'EG', 'NICOLETA', 'GABRIELA', NULL, 'F', '2008-06-23 00:00:00', 16, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a X-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXXII', 892, 29, '2023-09-01 00:00:00'),
(6210331297271, 'ANDREI', 'GR', 'GEORGIANA-VALENTINA', NULL, NULL, 'F', '2021-03-31 00:00:00', 3, 'PLOIEŞTI', 'GRĂDINIȚA CU PROGRAM NORMAL OSICA DE SUS', 'Preșcolar', 'Grupa mică', 'A', 'Transferat', '2024-09-05 00:00:00', '2025-03-11 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-12 00:00:00'),
(6070323284548, 'ANDREI', 'MC', 'CRISTINA', 'MELANIA', NULL, 'F', '2007-03-23 00:00:00', 17, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XI-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXIX', 841, 28, '2022-09-01 00:00:00'),
(6071011280865, 'ANDREI', 'VD', 'ILEANA', 'LAVINIA', NULL, 'F', '2007-10-11 00:00:00', 17, 'MUNICIPIUL CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XI-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXIX', 841, 27, '2022-09-01 00:00:00'),
(5091029284573, 'ANGHEL', 'F.', 'RAREȘ-MIHAI', NULL, NULL, 'M', '2009-10-29 00:00:00', 15, 'MUNICIPIUL SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a IX-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXXV', 913, 1, '2024-09-01 00:00:00'),
(6100628460063, 'ANGHELACHE', 'I', 'PETRUȚA', NULL, NULL, 'F', '2010-06-28 00:00:00', 14, 'BUCUREŞTI SECTORUL 1', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a VIII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXV', 793, 52, '2023-09-04 00:00:00'),
(5161011284578, 'AVRAM', 'C', 'EDUARD', 'ADRIAN', NULL, 'M', '2016-10-11 00:00:00', 8, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa a II-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVII', 839, 16, '2018-09-01 00:00:00'),
(5101014284569, 'AVRAM', 'C', 'IONUȚ', 'SEBASTIAN', 'CLAUDIU', 'M', '2010-10-14 00:00:00', 14, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a VIII-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXV', 793, 26, '2014-09-01 00:00:00'),
(6090505808307, 'BACIU', 'I', 'CARMEN', 'ELENA', NULL, 'F', '2009-05-05 00:00:00', 15, 'STRĂINĂTATE', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a IX-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXXV', 913, 2, '2024-09-01 00:00:00'),
(5080415280866, 'BADEA', 'C', 'VLĂDUȚ', 'FLORIN', NULL, 'M', '2008-04-15 00:00:00', 16, 'MUNICIPIUL CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a X-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXXII', 892, 3, '2023-09-01 00:00:00'),
(6080809284574, 'BADEA', 'F', 'ANDREEA', 'VALENTINA', NULL, 'F', '2008-08-09 00:00:00', 16, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a X-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXXII', 892, 30, '2023-09-01 00:00:00'),
(5180823351570, 'BADERCĂ', 'AC', 'ANDREI', NULL, NULL, 'M', '2018-08-23 00:00:00', 6, 'LUGOJ', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa pregătitoare', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXIII', 911, 1, '2023-09-01 00:00:00'),
(6111110801151, 'BARBU', 'MC', 'DIANA', 'ANDREEA', NULL, 'F', '2011-11-10 00:00:00', 13, 'STRĂINĂTATE', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a VI-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XVI', 657, 2, '2016-09-13 00:00:00'),
(6131201284577, 'BARBU', 'R', 'LAURA', 'MARIA', NULL, 'F', '2013-12-01 00:00:00', 11, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a V-a', 'A', 'Transferat', '2024-09-06 00:00:00', '2024-11-18 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-19 00:00:00'),
(5080125284542, 'BĂDESCU', 'DMA', 'IONUȚ', 'VALENTIN', NULL, 'M', '2008-01-25 00:00:00', 17, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a X-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXXII', 892, 31, '2023-09-01 00:00:00'),
(6111107284565, 'BĂDIȚĂ', 'G', 'ANA', 'MARIA', NULL, 'F', '2011-11-07 00:00:00', 13, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a VI-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXI', 891, 15, '2014-09-01 00:00:00'),
(6111107284573, 'BĂDIȚĂ', 'G', 'NICOLETA', 'GEORGIANA', NULL, 'F', '2011-11-07 00:00:00', 13, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a VI-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXI', 891, 16, '2014-09-01 00:00:00'),
(5150825160068, 'BĂLAN', 'AR', 'DARIUS', 'NICOLAS', NULL, 'M', '2015-08-25 00:00:00', 9, 'CRAIOVA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa a II-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVII', 839, 1, '2022-09-01 00:00:00'),
(5150112283493, 'BĂLAN', 'N', 'ROBERT', 'NICOLAS', NULL, 'M', '2015-01-12 00:00:00', 10, 'CRÂMPOIA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa a III-a', 'A', 'Transferat', '2024-09-01 00:00:00', '2024-09-08 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-09 00:00:00'),
(6130210280854, 'BĂLUŢĂ', 'G', 'RALUCA', 'IONELA', 'DENISA', 'F', '2013-02-10 00:00:00', 12, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a V-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXIV', 912, 3, '2015-09-01 00:00:00'),
(5130222284578, 'BĂLUȚĂ', 'EM', 'DAVID-GABRIEL', NULL, NULL, 'M', '2013-02-22 00:00:00', 12, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a V-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXIV', 912, 2, '2015-09-01 00:00:00'),
(5141220284547, 'BĂLUȚĂ', 'G', 'LIVIU-GEORGE', NULL, NULL, 'M', '2014-12-20 00:00:00', 10, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa a III-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVI', 792, 20, '2017-09-01 00:00:00'),
(5210505284541, 'BĂLUȚĂ', 'I', 'ARIAN', 'ȘTEFAN', NULL, 'M', '2021-05-05 00:00:00', 3, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL VLĂDULENI', 'Preșcolar', 'Grupa mică', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-01 00:00:00'),
(6161012284548, 'BĂZĂVAN', 'F', 'ANISIA', 'GABRIELA', NULL, 'F', '2016-10-12 00:00:00', 8, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa a II-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVII', 839, 2, '2019-09-02 00:00:00'),
(6120204284551, 'BĂZĂVAN', 'F', 'DARIA', 'MARIA', NULL, 'F', '2012-02-04 00:00:00', 13, 'MUNICIPIUL SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a VI-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXI', 891, 2, '2018-09-01 00:00:00'),
(6120620284570, 'BEGEAC', 'I', 'NICOL', 'RENATA', NULL, 'F', '2012-06-20 00:00:00', 12, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a VI-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXI', 891, 17, '2015-09-01 00:00:00'),
(6161030284551, 'BEGEAC', 'I', 'REBECA', 'IONELA', NULL, 'F', '2016-10-30 00:00:00', 8, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa a II-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVII', 839, 18, '2018-09-01 00:00:00'),
(5080520160010, 'BEGEAC', 'M', 'STELIAN', 'CONSTANTIN', NULL, 'M', '2008-05-20 00:00:00', 16, 'CRAIOVA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a X-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXXII', 892, 32, '2023-09-01 00:00:00'),
(6170608280874, 'BEGEAC', 'Ș', 'ANTONIA', 'ȘTEFANIA', NULL, 'F', '2017-06-08 00:00:00', 7, 'CARACAL', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa I', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXX', 890, 20, '2019-09-01 00:00:00'),
(5190115284541, 'BEGEAC', 'VC', 'AYAN', 'VALENTIN', NULL, 'M', '2019-01-15 00:00:00', 6, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL OSICA DE SUS', 'Preșcolar', 'Grupa mare', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-01 00:00:00'),
(6200803284583, 'BEGEAC', 'VC', 'PATRICIA', 'ANDREEA', NULL, 'F', '2020-08-03 00:00:00', 4, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL OSICA DE SUS', 'Preșcolar', 'Grupa mijlocie', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-01 00:00:00'),
(5111203280851, 'BEGEACĂ', 'C', 'RĂZVAN', 'MARIAN', NULL, 'M', '2011-12-03 00:00:00', 13, 'CARACAL', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a VII-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVIII', 840, 23, '2014-09-01 00:00:00'),
(5170713284576, 'BELECI', 'ML', 'EDUARD', 'MARIAN', 'ANDREI', 'M', '2017-07-13 00:00:00', 7, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa I', 'A', 'Situaţie şcolară deschisă', '2024-09-11 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-09 00:00:00'),
(6150728281604, 'BELECI-PĂLĂRIE', 'MI', 'IONELA', 'ISAURA', NULL, 'F', '2015-07-28 00:00:00', 9, 'STRĂINĂTATE', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa a III-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVI', 792, 2, '2021-04-21 00:00:00'),
(6160613803733, 'BICHIAN', 'AI', 'DELIA', 'ANTONIA', NULL, 'F', '2016-06-13 00:00:00', 8, 'STRĂINĂTATE', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa a II-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVII', 839, 3, '2019-09-09 00:00:00'),
(5130504803730, 'BICHIAN', 'AS', 'ANDREI', 'CARLOS', NULL, 'M', '2013-05-04 00:00:00', 11, 'PIATRA-OLT', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a V-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXIV', 912, 4, '2019-09-01 00:00:00'),
(5191016284568, 'BICHIAN', 'AS', 'LUCAS', 'SEBASTIAN', NULL, 'M', '2019-10-16 00:00:00', 5, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL VLĂDULENI', 'Preșcolar', 'Grupa mare', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-01 00:00:00'),
(5061204280857, 'BIRTON', 'G.', 'SANDU-NICUŞOR', NULL, NULL, 'M', '2006-12-04 00:00:00', 18, 'MUNICIPIUL CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXIV', 794, 51, '2022-09-09 00:00:00'),
(5090305284555, 'BIRȚA', 'N.', 'DRAGOȘ-ANDREI', NULL, NULL, 'M', '2009-03-05 00:00:00', 16, 'MUNICIPIUL SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a VIII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXII', 753, 45, '2023-01-11 00:00:00'),
(5090115284571, 'BOBICEANU', 'M.F.', 'IONUȚ-ANDREI-MARIUS', NULL, NULL, 'M', '2009-01-15 00:00:00', 16, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a IX-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXXV', 913, 29, '2024-09-01 00:00:00'),
(6170327280855, 'BOCA', 'I', 'ANDREEA', 'CRISTINA', NULL, 'F', '2017-03-27 00:00:00', 7, 'CARACAL', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa I', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXX', 890, 21, '2020-09-14 00:00:00'),
(5120115280854, 'BOCA', 'I', 'VICTOREL', 'VALENTIN', NULL, 'M', '2012-01-15 00:00:00', 13, 'CARACAL', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a VI-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXI', 891, 18, '2015-09-01 00:00:00'),
(5191205280850, 'BOCAI', 'AD', 'NIKOLAS', 'ADRIAN', 'SORIN', 'M', '2019-12-05 00:00:00', 5, 'CARACAL', 'GRĂDINIȚA CU PROGRAM NORMAL VLĂDULENI', 'Preșcolar', 'Grupa mare', 'A', 'Situaţie şcolară deschisă', '2024-10-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-01 00:00:00'),
(6080603280872, 'BOLNAVU', 'M', 'AURORA', 'GIORGIANA', NULL, 'F', '2008-06-03 00:00:00', 16, 'MUNICIPIUL CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a X-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXXII', 892, 4, '2023-09-01 00:00:00'),
(5070127280851, 'BOLNAVU', 'V.G.', 'ANDREI-STELIAN', NULL, NULL, 'M', '2007-01-27 00:00:00', 18, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XI-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXIX', 841, 29, '2022-09-01 00:00:00'),
(6141120281603, 'BORCEA', 'MC', 'ALICIA', 'MARIA', NULL, 'F', '2014-11-20 00:00:00', 10, 'STRĂINĂTATE', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa a IV-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXI', 752, 15, '2018-04-23 00:00:00'),
(6100921283883, 'BORCEA', 'MC', 'ANCA', 'FLORENTINA', NULL, 'F', '2010-09-21 00:00:00', 14, 'STRĂINĂTATE', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a VII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVIII', 840, 1, '2018-09-10 00:00:00'),
(5060527284546, 'BORŢA', 'G.D.', 'ALEXANDRU-CIRO', NULL, NULL, 'M', '2006-05-27 00:00:00', 18, 'MUNICIPIUL SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXIV', 794, 2, '2021-09-01 00:00:00'),
(5071110284546, 'BOSOIU', 'Ș', 'GHEORGHE', 'VASILE', NULL, 'M', '2007-11-10 00:00:00', 17, 'MUNICIPIUL SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XI-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXIX', 841, 57, '2023-09-08 00:00:00'),
(5100705284560, 'BOȘTINĂ', 'SM', 'ANDREI', 'STELIAN', 'COSTINEL', 'M', '2010-07-05 00:00:00', 14, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a VIII-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXV', 793, 27, '2014-09-01 00:00:00'),
(6170812284552, 'BOȘTINĂ', 'SM', 'BIANCA', 'ALEXANDRA', 'IULIA', 'F', '2017-08-12 00:00:00', 7, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa I', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXX', 890, 22, '2021-09-01 00:00:00'),
(5181009284570, 'BOTOFEI', 'D', 'LUCA', 'ANDREI', NULL, 'M', '2018-10-09 00:00:00', 6, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa pregătitoare', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXIII', 911, 14, '2021-09-01 00:00:00'),
(5201024284544, 'BREAZU', 'IM', 'MATEO', 'CRISTIAN', NULL, 'M', '2020-10-24 00:00:00', 4, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL VLĂDULENI', 'Preșcolar', 'Grupa mijlocie', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-01 00:00:00'),
(5090514385586, 'BROSCARU', 'M.', 'ALEXANDRU-MARIAN', NULL, NULL, 'M', '2009-05-14 00:00:00', 15, 'RÂMNICU VÂLCEA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a IX-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXXV', 913, 30, '2024-09-01 00:00:00'),
(6161028284558, 'BURCIU', 'CL', 'MARIA', 'INGRID', NULL, 'F', '2016-10-28 00:00:00', 8, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa a II-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVII', 839, 4, '2020-05-28 00:00:00'),
(5190902280881, 'BURTILĂ', 'CC', 'IANYS', 'ERIC', NULL, 'M', '2019-09-02 00:00:00', 5, 'CARACAL', 'GRĂDINIȚA CU PROGRAM NORMAL OSICA DE SUS', 'Preșcolar', 'Grupa mare', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-01 00:00:00'),
(5181109280868, 'BUSNĂ', 'A', 'DAVID', 'ANDREI', NULL, 'M', '2018-11-09 00:00:00', 6, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa pregătitoare', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXIII', 911, 2, '2021-09-01 00:00:00'),
(6161003160071, 'BUSNĂ', 'A', 'EVA', 'ŞTEFANIA', 'MIHAELA', 'F', '2016-10-03 00:00:00', 8, 'CRAIOVA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa I', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXX', 890, 1, '2021-09-01 00:00:00'),
(5161106280871, 'BUZNĂ', 'GD', 'MARIO', 'ADRIAN', NULL, 'M', '2016-11-06 00:00:00', 8, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa I', 'A', 'Transferat', '2024-09-01 00:00:00', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-02 00:00:00'),
(6140404280011, 'BUZNĂ', 'I', 'LUCIA', 'GIORGIANA', NULL, 'F', '2014-04-04 00:00:00', 10, 'BALŞ', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa a IV-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXI', 752, 1, '2016-09-01 00:00:00'),
(5120507280867, 'CALIU', 'LF', 'ALEXANDRU', 'NICUȘOR', 'IONUȚ', 'M', '2012-05-07 00:00:00', 12, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a VI-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXI', 891, 3, '2019-09-09 00:00:00'),
(6200226281606, 'CALOTĂ', 'DM', 'ANTONIA', 'MIHAELA', NULL, 'F', '2020-02-26 00:00:00', 5, 'STRĂINĂTATE', 'GRĂDINIȚA CU PROGRAM NORMAL VLĂDULENI', 'Preșcolar', 'Grupa mijlocie', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-01 00:00:00'),
(5170302284573, 'CALOTĂ', 'LC', 'LUCIAN', 'MARIUS', NULL, 'M', '2017-03-02 00:00:00', 8, 'CARACAL', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa I', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXX', 890, 23, '2019-09-09 00:00:00'),
(6160413284552, 'CALOTĂ', 'LC', 'MIRUNA', 'VALENTINA', NULL, 'F', '2016-04-13 00:00:00', 8, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa a II-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVII', 839, 19, '2018-09-01 00:00:00'),
(5141220280857, 'CATRINOIU', 'D', 'DENIS', 'CRISTIAN', NULL, 'M', '2014-12-20 00:00:00', 10, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa a III-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVI', 792, 3, '2017-09-01 00:00:00'),
(6190925280858, 'CĂCĂREAZĂ', 'SC', 'MĂDĂLINA', 'ANDREEA', 'NICOLETA', 'F', '2019-09-25 00:00:00', 5, 'CARACAL', 'GRĂDINIȚA CU PROGRAM NORMAL VLĂDULENI', 'Preșcolar', 'Grupa mare', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-05 00:00:00'),
(6170419280859, 'CĂCĂREAZĂ', 'SC', 'ROXANA', 'MARIA', 'IONELA', 'F', '2017-04-19 00:00:00', 7, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa I', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXX', 890, 3, '2019-09-01 00:00:00'),
(6191218280864, 'CĂLIN', 'AA', 'MIRUNA', 'IOANA', NULL, 'F', '2019-12-18 00:00:00', 5, 'CARACAL', 'GRĂDINIȚA CU PROGRAM NORMAL VLĂDULENI', 'Preșcolar', 'Grupa mijlocie', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-01 00:00:00'),
(5210123287548, 'CĂPRARU', 'IC', 'GABRIEL', 'ȘTEFAN', 'IULIAN', 'M', '2021-01-23 00:00:00', 4, 'STRĂINĂTATE', 'GRĂDINIȚA CU PROGRAM NORMAL VLĂDULENI', 'Preșcolar', 'Grupa mică', 'A', 'Situaţie şcolară deschisă', '2024-11-04 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-04 00:00:00'),
(5190517284568, 'CĂRSTEA', 'MV', 'TEODOR', 'MATEI', NULL, 'M', '2019-05-17 00:00:00', 5, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL VLĂDULENI', 'Preșcolar', 'Grupa mare', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-01 00:00:00'),
(6090604280873, 'CEACÂRU', 'I.', 'LAVINIA-VALENTINA', NULL, NULL, 'F', '2009-06-04 00:00:00', 15, 'MUNICIPIUL CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a IX-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXXV', 913, 31, '2024-09-01 00:00:00'),
(5070520280855, 'CERBU', 'I', 'IONUŢ', NULL, NULL, 'M', '2007-05-20 00:00:00', 17, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XI-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXIX', 841, 30, '2022-09-01 00:00:00'),
(5080421280860, 'CHIDU', 'Ș', 'ANDREI', 'CRISTIAN', NULL, 'M', '2008-04-21 00:00:00', 16, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a X-a', 'A', 'Situaţie şcolară deschisă', '2024-09-10 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', NULL, NULL, NULL, '2024-09-10 00:00:00'),
(5100404280850, 'CHIDU', 'TL', 'COSMIN', 'VALENTIN', NULL, 'M', '2010-04-04 00:00:00', 14, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a VIII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXV', 793, 1, '2018-10-09 00:00:00'),
(5120719280865, 'CHILEA', 'D', 'IULIAN', 'STEFAN', NULL, 'M', '2012-07-19 00:00:00', 12, 'CARACAL', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a VI-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXI', 891, 19, '2015-09-01 00:00:00'),
(5170505284587, 'CHILEA', 'D', 'NICOLAS', 'MARIO', NULL, 'M', '2017-05-05 00:00:00', 7, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa I', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXX', 890, 24, '2019-09-01 00:00:00'),
(6120615284544, 'CHIOREAN', 'I', 'DORA', 'MARIA', 'STEFANIA', 'F', '2012-06-15 00:00:00', 12, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a VI-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXI', 891, 20, '2015-09-01 00:00:00'),
(5170221284594, 'CHIREA', 'A', 'ROBERT', 'ANDREI', NULL, 'M', '2017-02-21 00:00:00', 8, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa I', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXX', 890, 4, '2021-09-07 00:00:00'),
(5200912284545, 'CIOCHINĂ', 'CN', 'LUCAS', 'MIHAI', NULL, 'M', '2020-09-12 00:00:00', 4, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL OSICA DE SUS', 'Preșcolar', 'Grupa mijlocie', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-01 00:00:00'),
(5070430280857, 'CIOCHINĂ', 'D', 'DANIEL', 'CONSTANTIN', NULL, 'M', '2007-04-30 00:00:00', 17, 'MUNICIPIUL CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XI-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXIX', 841, 33, '2022-09-01 00:00:00'),
(5101221280865, 'CIOCHINĂ', 'D', 'RĂZVAN', 'IONUȚ', NULL, 'M', '2010-12-21 00:00:00', 14, 'CARACAL', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a VIII-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXV', 793, 28, '2014-09-01 00:00:00'),
(5070726280023, 'CIOCHINĂ', 'M', 'GEORGE', 'ANDREI', NULL, 'M', '2007-07-26 00:00:00', 17, 'ORAŞ BALŞ', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XI-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXIX', 841, 31, '2022-09-01 00:00:00'),
(6070802280879, 'CIOCHINĂ', 'P', 'MARIA', NULL, NULL, 'F', '2007-08-02 00:00:00', 17, 'MUNICIPIUL CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XI-a', 'A', 'Situaţie şcolară deschisă', '2024-09-06 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXIX', 841, 32, '2022-09-01 00:00:00'),
(6070802280879, 'CIOCHINĂ', 'P', 'MARIA', NULL, NULL, 'F', '2007-08-02 00:00:00', 17, 'MUNICIPIUL CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XI-a', 'B', 'Transferat', '2024-09-01 00:00:00', '2024-09-05 00:00:00', 'Real', 'Științe ale naturii', 'Real', 'XXIX', 841, 32, '2022-09-01 00:00:00'),
(6220226284544, 'CIOPÎC', 'IM', 'ANASTASIA', 'GABRIELA', NULL, 'F', '2022-02-26 00:00:00', 3, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL OSICA DE SUS', 'Preșcolar', 'Grupa mică', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-01 00:00:00'),
(5140613420031, 'CIUCU', 'I', 'ANDREI', 'OVIDIU', NULL, 'M', '2014-06-13 00:00:00', 10, 'BUCUREŞTI SECTORUL 2', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa a IV-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXI', 752, 2, '2017-09-01 00:00:00'),
(5170328284562, 'CIUCU', 'I', 'ȘTEFAN', 'CIPRIAN', NULL, 'M', '2017-03-28 00:00:00', 7, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa pregătitoare', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXIII', 911, 3, '2020-09-01 00:00:00'),
(5130509280852, 'CIULINCĂ', 'S', 'ILIE', 'ALEXANDRU', NULL, 'M', '2013-05-09 00:00:00', 11, 'CARACAL', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a V-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXIV', 912, 20, '2016-09-01 00:00:00'),
(5190902280873, 'CÎRSTEA', 'D', 'ERIC', 'DANIEL', NULL, 'M', '2019-09-02 00:00:00', 5, 'CARACAL', 'GRĂDINIȚA CU PROGRAM NORMAL OSICA DE SUS', 'Preșcolar', 'Grupa mare', 'A', 'Situaţie şcolară deschisă', '2024-09-06 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-01 00:00:00'),
(5071112384968, 'CÎRSTEA', 'G', 'RELU', 'IONUŢ', NULL, 'M', '2007-11-12 00:00:00', 17, 'MUNICIPIUL DRĂGĂŞANI', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a X-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXXII', 892, 33, '2023-09-01 00:00:00'),
(6060822384971, 'CÎRSTEA', 'G.', 'GEORGIANA-DANIELA', NULL, NULL, 'F', '2006-08-22 00:00:00', 18, 'DRĂGĂŞANI', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXIV', 794, 4, '2021-09-01 00:00:00'),
(6070818280854, 'CÎRSTEA', 'I', 'RALUCA', 'MIHAELA', 'ALEXIA', 'F', '2007-08-18 00:00:00', 17, 'MUNICIPIUL CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XI-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXIX', 841, 2, '2022-09-01 00:00:00'),
(5121009280857, 'CÎRSTEA', 'MV', 'RAREŞ', 'MIHAI', NULL, 'M', '2012-10-09 00:00:00', 12, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a V-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXIV', 912, 5, '2019-09-01 00:00:00'),
(5061119280852, 'CÎRSTEA', 'N.', 'CLAUDIU-MARIUS-NICOLAE', NULL, NULL, 'M', '2006-11-19 00:00:00', 18, 'MUNICIPIUL CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXIV', 794, 4, '2021-09-01 00:00:00'),
(5150419284567, 'COCA', 'S', 'DARIUS', 'ROBERT', NULL, 'M', '2015-04-19 00:00:00', 9, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa a III-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVI', 792, 21, '2017-09-11 00:00:00'),
(5191022284562, 'COCHINȚU', 'C', 'VLADIMIR', 'TEODOR', NULL, 'M', '2019-10-22 00:00:00', 5, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL OSICA DE SUS', 'Preșcolar', 'Grupa mare', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-01 00:00:00'),
(6170910284542, 'COCOCI', 'T', 'ANA', 'MARIA', NULL, 'F', '2017-09-10 00:00:00', 7, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa pregătitoare', 'O', 'Situaţie şcolară deschisă', '2024-09-10 00:00:00', NULL, NULL, NULL, NULL, 'XXXIII', 911, 15, '2024-09-10 00:00:00'),
(6100529284559, 'COMAN', 'A', 'ANA', 'MARIA', NULL, 'F', '2010-05-29 00:00:00', 14, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a V-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXI', 891, 21, '2018-09-10 00:00:00'),
(6110712160115, 'COMAN', 'F', 'ANA', 'MARIA', NULL, 'F', '2011-07-12 00:00:00', 13, 'CRAIOVA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a VII-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVIII', 840, 25, '2014-09-01 00:00:00'),
(6190513284585, 'COMAN', 'F', 'GABRIELA', NULL, NULL, 'F', '2019-05-13 00:00:00', 5, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL OSICA DE SUS', 'Preșcolar', 'Grupa mare', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-01 00:00:00'),
(6170908284549, 'COMAN', 'F', 'MARIA', 'ALEXANDRA', NULL, 'F', '2017-09-08 00:00:00', 7, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa I', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXX', 890, 25, '2021-09-01 00:00:00'),
(6130211284563, 'COMAN', 'F', 'MONICA', 'ANDREEA', NULL, 'F', '2013-02-11 00:00:00', 12, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a V-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXIV', 912, 21, '2016-09-01 00:00:00'),
(5141128284561, 'COMAN', 'F', 'VALENTIN-CĂTĂLIN', NULL, NULL, 'M', '2014-11-28 00:00:00', 10, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa a III-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVI', 792, 22, '2017-09-01 00:00:00'),
(5140922803739, 'CONSTANTIN', 'CI', 'MAXIMILIAN', 'ALEXANDRU', 'IONUȚ', 'M', '2014-09-22 00:00:00', 10, 'STRĂINĂTATE', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa a IV-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXI', 752, 3, '2017-09-01 00:00:00'),
(6081122284547, 'CONSTANTIN', 'GH', 'IONELA', 'NICOLETA', NULL, 'F', '2008-11-22 00:00:00', 16, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a IX-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXXV', 913, 32, '2024-09-01 00:00:00'),
(5130620280852, 'CONSTANTIN', 'M', 'MIHAI', 'DANIEL', 'IULIAN', 'M', '2013-06-20 00:00:00', 11, 'CARACAL', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa a IV-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXI', 752, 16, '2016-09-01 00:00:00'),
(5060208284555, 'CONSTANTIN', 'N.', 'IONUȚ-ALEXANDRU', NULL, NULL, 'M', '2006-02-08 00:00:00', 19, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XII-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXIV', 794, 27, '2021-09-01 00:00:00'),
(5080619280864, 'CONSTANTIN', 'T', 'ADI', 'MARIO', NULL, 'M', '2008-06-19 00:00:00', 16, 'MUNICIPIUL CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a VII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXV', 793, 50, '2022-09-02 00:00:00'),
(5140907280868, 'CONSTANTIN', 'T', 'ANDREI', 'EMANUEL', 'DARIUS', 'M', '2014-09-07 00:00:00', 10, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa a II-a', 'A', 'Transferat', '2024-09-01 00:00:00', '2024-11-05 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-06 00:00:00'),
(6060311280859, 'CONSTANTIN', 'T', 'CRISTINA', 'ALEXANDRA', NULL, 'F', '2006-03-11 00:00:00', 19, 'MUNICIPIUL CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XI-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXIV', 794, 28, '2021-09-01 00:00:00'),
(6090807284550, 'COPILESCU', 'M', 'MARIA', 'ROBERTA', NULL, 'F', '2009-08-07 00:00:00', 15, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a IX-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXXV', 913, 3, '2024-09-01 00:00:00'),
(6080722280858, 'CORCOVEANU', 'T', 'ALEXANDRA', 'GABRIELA', NULL, 'F', '2008-07-22 00:00:00', 16, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a X-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXXII', 892, 34, '2023-09-01 00:00:00'),
(6060708280865, 'CORCOVEANU', 'T.', 'CLAUDIȚA-IULIANA-ȘTEFANIA', NULL, NULL, 'F', '2006-07-08 00:00:00', 18, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXIV', 794, 5, '2021-09-01 00:00:00'),
(6050430280019, 'CORDUNEANU', 'I.', 'CARMEN-FLORENTINA', NULL, NULL, 'F', '2005-04-30 00:00:00', 19, 'ORAŞ BALŞ', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXIV', 794, 6, '2021-09-01 00:00:00'),
(5151011284545, 'COSTACHE', 'C', 'RAREȘ', 'LAURENȚIU', 'GABRIEL', 'M', '2015-10-11 00:00:00', 9, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa a II-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVII', 839, 20, '2021-09-13 00:00:00'),
(6200622284551, 'COSTACHE', 'IA', 'MELISSA', 'ELENA', NULL, 'F', '2020-06-22 00:00:00', 4, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL VLĂDULENI', 'Preșcolar', 'Grupa mijlocie', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-01 00:00:00'),
(5111029280851, 'COSTEA', 'Ș', 'AURELIAN', 'MIHAI', NULL, 'M', '2011-10-29 00:00:00', 13, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a VI-a', 'A', 'Situaţie şcolară deschisă', '2024-09-06 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-06 00:00:00'),
(5220331284556, 'COSTORARU', 'MC', 'AYAN-ȘTEFAN', NULL, NULL, 'M', '2022-03-31 00:00:00', 2, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL VLĂDULENI', 'Preșcolar', 'Grupa mică', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-01 00:00:00'),
(5051216280868, 'COSTORARU', 'N.', 'LIVIU-ANDREI', NULL, NULL, 'M', '2005-12-16 00:00:00', 19, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XII-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXIV', 794, 29, '2021-09-01 00:00:00'),
(6070402284548, 'COTESCU', 'I', 'MARIA', 'CRISTINA', NULL, 'F', '2007-04-02 00:00:00', 17, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XI-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXIX', 841, 3, '2022-09-01 00:00:00'),
(6110724280860, 'COȚOFANĂ', 'I', 'CRISTINA', 'ȘTEFANIA', NULL, 'F', '2011-07-24 00:00:00', 13, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a VII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVIII', 840, 2, '2014-09-01 00:00:00'),
(6070607280859, 'CRASAN', 'M', 'LOREDANA', 'PETRUȚA', NULL, 'F', '2007-06-07 00:00:00', 17, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XI-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXIX', 841, 4, '2022-09-01 00:00:00'),
(6210617284572, 'CRĂCIUNICĂ', 'GL', 'AMIRA', 'IOANA', NULL, 'F', '2021-06-17 00:00:00', 3, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL VLĂDULENI', 'Preșcolar', 'Grupa mică', 'A', 'Situaţie şcolară deschisă', '2024-09-11 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-11 00:00:00'),
(5110607284544, 'CRĂCIUNICĂ', 'MC', 'MIHAI', 'ALEXANDRU', 'EUGEN', 'M', '2011-06-07 00:00:00', 13, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a VII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XIXVII', 840, 3, '2015-09-01 00:00:00'),
(6191225284551, 'DALEA', 'GS', 'ANASTASIA', 'MIHAELA', NULL, 'F', '2019-12-25 00:00:00', 5, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL VLĂDULENI', 'Preșcolar', 'Grupa mare', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-01 00:00:00'),
(5141015284572, 'DALEA', 'GS', 'GABRIEL', 'ȘTEFAN', NULL, 'M', '2014-10-15 00:00:00', 10, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa a IV-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXI', 752, 4, '2017-09-11 00:00:00'),
(6200615280862, 'DĂBULEANU', 'F', 'RALUCA', 'IOANA', NULL, 'F', '2020-06-15 00:00:00', 4, 'CARACAL', 'GRĂDINIȚA CU PROGRAM NORMAL VLĂDULENI', 'Preșcolar', 'Grupa mijlocie', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-01 00:00:00'),
(6121123282201, 'DĂBULEANU', 'F', 'TEODORA', 'MARIA', NULL, 'F', '2012-11-23 00:00:00', 12, 'CORABIA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a V-a', 'O', 'Transferat', '2024-09-01 00:00:00', '2024-09-11 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-12 00:00:00'),
(5151218284568, 'DĂRĂU', 'MD', 'RĂZVAN', 'ANDREI', NULL, 'M', '2015-12-18 00:00:00', 9, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa a II-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVII', 839, 21, '2019-09-09 00:00:00'),
(6201130284544, 'DELCEA', 'AM', 'RALUCA', 'IONELA', NULL, 'F', '2020-11-30 00:00:00', 4, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL VLĂDULENI', 'Preșcolar', 'Grupa mică', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-01 00:00:00'),
(5080901284541, 'DELCEA', 'GD', 'MARIO', 'ALEXANDRU', NULL, 'M', '2008-09-01 00:00:00', 16, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a X-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXXII', 892, 35, '2023-09-01 00:00:00'),
(6100125284545, 'DELCEA', 'M', 'GEORGIANA', 'RALUCA', NULL, 'F', '2010-01-25 00:00:00', 15, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a VIII-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXV', 793, 31, '2018-09-11 00:00:00'),
(6140924284579, 'DELCEA', 'M', 'MIHAELA', 'BIANCA', NULL, 'F', '2014-09-24 00:00:00', 10, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa a IV-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXI', 752, 17, '2017-09-01 00:00:00'),
(6120531284540, 'DELCEA', 'P', 'TEODORA', 'BIANCA', NULL, 'F', '2012-05-31 00:00:00', 12, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a VI-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-12 00:00:00'),
(6130521281601, 'DIACONU', 'RC', 'ALESSIA', 'ELENA', NULL, 'F', '2013-05-21 00:00:00', 11, 'CORABIA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a V-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXIV', 912, 22, '2017-09-11 00:00:00'),
(6071228284557, 'DIBOC', 'V', 'NICOLETA', 'RAMONA', NULL, 'F', '2007-12-28 00:00:00', 17, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XI-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXIX', 841, 5, '2022-09-01 00:00:00'),
(6101031280857, 'DICU', 'D', 'IOANA', 'ADRIANA', NULL, 'F', '2010-10-31 00:00:00', 14, 'CARACAL', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a VIII-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-09 00:00:00'),
(5090905284549, 'DICU', 'D.', 'ALIN-VASILE', NULL, NULL, 'M', '2009-09-05 00:00:00', 15, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a IX-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXXV', 913, 4, '2024-09-01 00:00:00'),
(6090106284544, 'DINCĂ', 'VA', 'ALEXANDRA', 'IOANA', NULL, 'F', '2009-01-06 00:00:00', 16, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a IX-a', 'B', 'Transferat', '2024-09-01 00:00:00', '2024-09-11 00:00:00', 'Real', 'Științe ale naturii', 'Real', '41', 58, 58, '2024-09-12 00:00:00'),
(5070228280856, 'DINCU', 'CI', 'ȘTEFAN', 'NADYR', NULL, 'M', '2007-02-28 00:00:00', 18, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XI-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXIX', 841, 34, '2022-09-01 00:00:00'),
(6061108280012, 'DINU', 'C', 'FLORENTINA', 'ANAMARIA', 'GABRIELA', 'F', '2006-11-08 00:00:00', 18, 'ORAŞ BALŞ', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XI-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXIX', 841, 35, '2022-09-01 00:00:00'),
(5150404284568, 'DINU', 'D', 'DĂNUȚ', 'ADRIAN', NULL, 'M', '2015-04-04 00:00:00', 9, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa a III-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVI', 792, 5, '2019-02-19 00:00:00'),
(5081115284548, 'DINU', 'DV', 'PATRIC', 'MIHĂIȚĂ', NULL, 'M', '2008-11-15 00:00:00', 16, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a X-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXXII', 892, 5, '2023-09-01 00:00:00'),
(5191223281604, 'DINU', 'IN', 'ȘTEFY', 'ANDREI', NULL, 'M', '2019-12-23 00:00:00', 5, 'STRĂINĂTATE', 'GRĂDINIȚA CU PROGRAM NORMAL GRECI-OSICA DE SUS', 'Preșcolar', 'Grupa mare', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-01 00:00:00'),
(6200731284556, 'DOBRE', 'CM', 'MARIA', 'BEATRICE', NULL, 'F', '2020-07-31 00:00:00', 4, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL VLĂDULENI', 'Preșcolar', 'Grupa mijlocie', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-01 00:00:00'),
(5110211284557, 'DOBRE', 'CV', 'ANDREI', 'ALEXANDRU', NULL, 'M', '2011-02-11 00:00:00', 14, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a VII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVIII', 840, 4, '2014-09-01 00:00:00'),
(6061211284562, 'DOBRE', 'CV', 'OANA', 'MONICA', NULL, 'F', '2006-12-11 00:00:00', 18, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XI-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXIX', 841, 6, '2022-09-01 00:00:00'),
(6080827284545, 'DOBRE', 'G.', 'ADELA-GABRIELA', NULL, NULL, 'F', '2008-08-27 00:00:00', 16, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a IX-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXXV', 913, 5, '2024-09-01 00:00:00'),
(5070429284554, 'DOBRICA', 'IL', 'IONUȚ', 'MIHAI', NULL, 'M', '2007-04-29 00:00:00', 17, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a IX-a', 'B', 'Situaţie şcolară deschisă', '2024-09-04 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXXII', 892, 36, '2024-09-04 00:00:00'),
(5120327284542, 'DOBRICĂ', 'IL', 'MIHAIL', 'LEONARD', NULL, 'M', '2012-03-27 00:00:00', 12, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a VI-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXI', 891, 4, '2015-09-01 00:00:00'),
(5100901284567, 'DOBRICĂ', 'MN', 'IANNIS', 'VALENTIN', NULL, 'M', '2010-09-01 00:00:00', 14, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a VIII-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXV', 793, 32, '2014-09-01 00:00:00'),
(6140507284547, 'DOBRICĂ', 'RG', 'DARIA', 'ELENA', NULL, 'F', '2014-05-07 00:00:00', 10, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa a IV-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXI', 752, 5, '2019-02-11 00:00:00'),
(5070906284561, 'DOBRICĂ', 'RG', 'IACOB', 'LEONARD', NULL, 'M', '2007-09-06 00:00:00', 17, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a X-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXXII', 892, 36, '2023-09-01 00:00:00'),
(6140807284564, 'DOBRITOIU', 'AI', 'ALEXANDRA', 'MARIA', 'MIRABELA', 'F', '2014-08-07 00:00:00', 10, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa a IV-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXI', 752, 19, '2018-09-01 00:00:00'),
(5211011280867, 'DOBRIȚOIU', 'AI', 'ERIC', 'ANDREI', 'GEANI', 'M', '2021-10-11 00:00:00', 3, 'CARACAL', 'GRĂDINIȚA CU PROGRAM NORMAL GRECI-OSICA DE SUS', 'Preșcolar', 'Grupa mică', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-01 00:00:00');
INSERT INTO `student` (`CNP`, `NUME`, `INITIALA_TATALUI`, `PRENUME1`, `PRENUME2`, `PRENUME3`, `SEX`, `DATA_NASTERE`, `VARSTA`, `LOCALITATE_NASTERE`, `DENUMIRE_UNITATE_FORMATIUNE`, `NIVEL_INVATAMANT`, `TIP_FORMATIUNE`, `NUME_CLASA`, `STATUS_ELEV`, `DATA_INCEPUT_ASOC_FORMATIUNE`, `DATA_SFARSIT_ASOC_FORMATIUNE`, `Profil`, `Specializare_Calificare`, `Domeniu`, `VOL`, `NR`, `PAG`, `DATA_INCEPUT_ASOC_UNITATE`) VALUES
(5070210281607, 'DOBRIȚOIU', 'GA', 'ADRIANO', NULL, NULL, 'M', '2007-02-10 00:00:00', 18, 'STRĂINĂTATE', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XI-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXIX', 841, 7, '2022-09-01 00:00:00'),
(6200214284547, 'DOBRIȚOIU', 'GA', 'ANAIS', 'ADELINA', 'MARIA', 'F', '2020-02-14 00:00:00', 5, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL GRECI-OSICA DE SUS', 'Preșcolar', 'Grupa mijlocie', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-01 00:00:00'),
(6100913284551, 'DOBRIȚOIU', 'GA', 'GIULIA', 'VANESA', 'MARIA', 'F', '2010-09-13 00:00:00', 14, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a VIII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXV', 793, 2, '2014-09-01 00:00:00'),
(5181206284571, 'DOBRIȚOIU', 'GA', 'RAREȘ', 'GABRIEL', 'NICOLAS', 'M', '2018-12-06 00:00:00', 6, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL VLĂDULENI', 'Preșcolar', 'Grupa mijlocie', 'A', 'Situaţie şcolară deschisă', '2024-10-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-01 00:00:00'),
(6110213281604, 'DOBRIȚOIU', 'MI', 'GIULIA', 'REBECA', NULL, 'F', '2011-02-13 00:00:00', 14, 'STRĂINĂTATE', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a VIII-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXV', 793, 33, '2017-09-11 00:00:00'),
(5080202280857, 'DRAGOMIR', 'B.', 'ROBERT-ILIE', NULL, NULL, 'M', '2008-02-02 00:00:00', 17, 'MUNICIPIUL CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a IX-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXXV', 913, 33, '2024-09-01 00:00:00'),
(6201006284583, 'DRĂGHICI', 'CF', 'REBECA', 'MARIA', NULL, 'F', '2020-10-06 00:00:00', 4, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL VLĂDULENI', 'Preșcolar', 'Grupa mijlocie', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-01 00:00:00'),
(6080513280858, 'DRĂGHICI', 'F', 'ALEXIA', 'MARIA', NULL, 'F', '2008-05-13 00:00:00', 16, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a X-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXXII', 892, 37, '2023-09-01 00:00:00'),
(5090729280853, 'DRĂGHICI', 'G', 'ALIN', 'ȘTEFAN', NULL, 'M', '2009-07-29 00:00:00', 15, 'MUNICIPIUL CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a IX-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXXV', 913, 6, '2024-09-01 00:00:00'),
(6060212281606, 'DRĂGHICI', 'G.', 'ALEXANDRA-GIULIA', NULL, NULL, 'F', '2006-02-12 00:00:00', 19, 'STRĂINĂTATE', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXIV', 794, 7, '2021-09-01 00:00:00'),
(6060126280850, 'DRĂGHICI', 'I.', 'CĂTĂLINA', NULL, NULL, 'F', '2006-01-26 00:00:00', 19, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XII-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXIV', 794, 31, '2021-09-01 00:00:00'),
(6110722280857, 'DRĂGHICI', 'R', 'FLORENTINA', 'SORINA', NULL, 'F', '2011-07-22 00:00:00', 13, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a VII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVIII', 840, 5, '2014-09-01 00:00:00'),
(5130201280851, 'DRĂGHICI', 'R', 'MARIUS', 'ALEXANDRU', NULL, 'M', '2013-02-01 00:00:00', 12, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a V-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXIV', 912, 6, '2015-09-01 00:00:00'),
(6160617280852, 'DUDAN', 'G', 'MARIA', NULL, NULL, 'F', '2016-06-17 00:00:00', 8, 'CARACAL', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa a II-a', 'O', 'Transferat', '2024-09-01 00:00:00', '2024-09-16 00:00:00', NULL, NULL, NULL, 'XI', 2, 2, '2024-09-17 00:00:00'),
(6200119280857, 'DUDAN', 'GE', 'MĂDĂLINA', 'TEODORA', NULL, 'F', '2020-01-19 00:00:00', 5, 'CARACAL', 'GRĂDINIȚA CU PROGRAM NORMAL GRECI-OSICA DE SUS', 'Preșcolar', 'Grupa mare', 'A', 'Transferat', '2024-09-01 00:00:00', '2024-09-05 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-06 00:00:00'),
(5171019284543, 'DUDE', 'A', 'GEORGE', 'ALIN', NULL, 'M', '2017-10-19 00:00:00', 7, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa I', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXX', 890, 5, '2020-09-01 00:00:00'),
(6220316350021, 'DUMITRAȘCU', 'RC', 'NATALIA', 'ELENA', NULL, 'F', '2022-03-16 00:00:00', 3, 'TIMIŞOARA', 'GRĂDINIȚA CU PROGRAM NORMAL VLĂDULENI', 'Preșcolar', 'Grupa mică', 'A', 'Situaţie şcolară deschisă', '2024-09-12 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-12 00:00:00'),
(5180602280858, 'DUMITRESCU', 'AF', 'FLORIN', 'ALEXANDRU', NULL, 'M', '2018-06-02 00:00:00', 6, 'CARACAL', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa pregătitoare', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXIII', 911, 16, '2021-09-01 00:00:00'),
(5200730284578, 'DUMITRESCU', 'AF', 'NICOLAS', 'ANDREI', 'IONUȚ', 'M', '2020-07-30 00:00:00', 4, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL GRECI-OSICA DE SUS', 'Preșcolar', 'Grupa mijlocie', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-11 00:00:00'),
(5190614284555, 'DUMITRU', 'AA', 'MATHIAS', 'FABIAN', 'ALEXANDRU', 'M', '2019-06-14 00:00:00', 5, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL VLĂDULENI', 'Preșcolar', 'Grupa mare', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-29 00:00:00'),
(6070106280874, 'DUŢU', 'L', 'ANDREEA', 'ELENA', NULL, 'F', '2007-01-06 00:00:00', 18, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XI-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXIX', 841, 8, '2022-09-01 00:00:00'),
(6080702280857, 'ELEFTERIE', 'I', 'CARMEN', 'ALEXANDRA', NULL, 'F', '2008-07-02 00:00:00', 16, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a X-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXXII', 892, 6, '2023-09-01 00:00:00'),
(6170903284588, 'ENACHE', 'CM', 'ANTONIA', 'MARIA', NULL, 'F', '2017-09-03 00:00:00', 7, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa I', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXX', 890, 6, '2020-09-14 00:00:00'),
(5071018340921, 'ENE', 'F', 'ALIN', 'MARIUS', NULL, 'M', '2007-10-18 00:00:00', 17, 'MUNICIPIUL ROŞIORI DE VEDE', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XI-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXIX', 841, 37, '2022-09-01 00:00:00'),
(5170120204979, 'ENEA', 'C', 'RAREŞ', NULL, NULL, 'M', '2017-01-20 00:00:00', 8, 'HUNEDOARA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa I', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXX', 890, 7, '2023-09-01 00:00:00'),
(6081228280857, 'EPURE', 'G', 'EMANUELA', 'GEORGIANA', NULL, 'F', '2008-12-28 00:00:00', 16, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a X-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXXII', 892, 38, '2023-09-01 00:00:00'),
(6110713280854, 'EPURE', 'G', 'IULIA', 'ȘTEFANIA', NULL, 'F', '2011-07-13 00:00:00', 13, 'CARACAL', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a VII-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVIII', 840, 27, '2014-09-01 00:00:00'),
(6060724284563, 'EPURE', 'M.G.', 'ALEXIA-IULIA', NULL, NULL, 'F', '2006-07-24 00:00:00', 18, 'MUNICIPIUL SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXIV', 794, 8, '2021-09-01 00:00:00'),
(6090325284566, 'EREMENCU', 'D.', 'DANIELA-ELENA-ALEXANDRA', NULL, NULL, 'F', '2009-03-25 00:00:00', 15, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a IX-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXXV', 913, 7, '2024-09-01 00:00:00'),
(6080906280855, 'FĂRCĂȘANU', 'F', 'LAVINIA', 'ELENA', NULL, 'F', '2008-09-06 00:00:00', 16, 'MUNICIPIUL CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a IX-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXXV', 913, 8, '2024-09-01 00:00:00'),
(5100927284564, 'FERARU', 'C', 'CRISTIAN', 'BEBETO', NULL, 'M', '2010-09-27 00:00:00', 14, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a VII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVIII', 840, 6, '2014-09-01 00:00:00'),
(5150316284557, 'FERARU', 'CV', 'DARIUS', 'FLORIN', NULL, 'M', '2015-03-16 00:00:00', 10, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa a III-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVI', 792, 6, '2020-02-03 00:00:00'),
(6180509280855, 'FERARU', 'CV', 'DELIA', 'MARIA', NULL, 'F', '2018-05-09 00:00:00', 6, 'CARACAL', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa pregătitoare', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXIII', 911, 17, '2022-09-01 00:00:00'),
(5140405160048, 'FIERARU', 'M', 'MARIAN', 'ALIN', NULL, 'M', '2014-04-05 00:00:00', 10, 'CRAIOVA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa a IV-a', 'O', 'Transferat', '2024-09-01 00:00:00', '2024-10-02 00:00:00', NULL, NULL, NULL, 'X bis', 110, 110, '2024-10-03 00:00:00'),
(6170505284546, 'FILIP', 'GA', 'ERIKA', 'MARIA', NULL, 'F', '2017-05-05 00:00:00', 7, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa I', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXX', 890, 26, '2019-09-01 00:00:00'),
(5140921280010, 'FILIP', 'GA', 'SEBASTIAN', 'ANDREI', NULL, 'M', '2014-09-21 00:00:00', 10, 'BALŞ', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa a IV-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXI', 752, 20, '2017-09-11 00:00:00'),
(5200212281608, 'FILIP', 'IF', 'LUCAS', 'GABRIEL', NULL, 'M', '2020-02-12 00:00:00', 5, 'OSICA DE SUS', 'GRĂDINIȚA CU PROGRAM NORMAL OSICA DE SUS', 'Preșcolar', 'Grupa mijlocie', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-05 00:00:00'),
(6100210160033, 'FOTA', 'AA', 'ANDREEA', 'ELENA', NULL, 'F', '2010-02-10 00:00:00', 15, 'CRAIOVA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a VIII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXV', 793, 4, '2018-01-11 00:00:00'),
(5130930160040, 'FUGARU', 'DC', 'IOAN', 'CONSTANTIN', NULL, 'M', '2013-09-30 00:00:00', 11, 'CARACAL', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a V-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXIV', 912, 23, '2016-09-12 00:00:00'),
(6190429160050, 'FUGARU', 'GD', 'ZAIRA', 'MARIA', NULL, 'F', '2019-04-29 00:00:00', 5, 'CRAIOVA', 'GRĂDINIȚA CU PROGRAM NORMAL VLĂDULENI', 'Preșcolar', 'Grupa mare', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-01 00:00:00'),
(6080629284561, 'FUGARU', 'I', 'BIANCA', 'MIHAELA', NULL, 'F', '2008-06-29 00:00:00', 16, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a X-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXXII', 892, 7, '2023-09-01 00:00:00'),
(6090214284556, 'FUGARU', 'I.', 'REBECA-GABRIELA', NULL, NULL, 'F', '2009-02-14 00:00:00', 16, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a IX-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXXV', 913, 9, '2024-09-01 00:00:00'),
(6190528284541, 'FUGARU', 'LM', 'MARIA', 'IZABELA', NULL, 'F', '2019-05-28 00:00:00', 5, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL OSICA DE SUS', 'Preșcolar', 'Grupa mare', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-01 00:00:00'),
(6110920284565, 'FUGARU', 'LM', 'SIMONA', 'GABRIELA', NULL, 'F', '2011-09-20 00:00:00', 13, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a VII-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVIII', 840, 28, '2014-09-01 00:00:00'),
(5100206284565, 'GEAMBAȘU', 'SM', 'CONSTANTIN', 'DARIUS', NULL, 'M', '2010-02-06 00:00:00', 15, 'MUNICIPIUL SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a VIII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXV', 793, 5, '2016-09-01 00:00:00'),
(5200511284548, 'GEORGESCU', 'PA', 'IOAN', NULL, NULL, 'M', '2020-05-11 00:00:00', 4, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL GRECI-OSICA DE SUS', 'Preșcolar', 'Grupa mijlocie', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-01 00:00:00'),
(5140921280854, 'GHEORGHE', 'CM', 'DAVID', 'COSMIN', NULL, 'M', '2014-09-21 00:00:00', 10, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa a IV-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXI', 652, 6, '2017-09-01 00:00:00'),
(5210627280851, 'GHEORGHE', 'CM', 'DENIS', 'CRISTIAN', NULL, 'M', '2021-06-27 00:00:00', 3, 'CARACAL', 'GRĂDINIȚA CU PROGRAM NORMAL VLĂDULENI', 'Preșcolar', 'Grupa mică', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-01 00:00:00'),
(5130317250044, 'GHEORGHE', 'CM', 'ROBERT', 'ADRIAN', NULL, 'M', '2013-03-17 00:00:00', 12, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a V-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXIV', 912, 8, '2015-09-01 00:00:00'),
(6150811284545, 'GHEORGHE', 'G', 'IULIA', NULL, NULL, 'F', '2015-08-11 00:00:00', 9, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa a III-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVI', 792, 8, '2017-09-01 00:00:00'),
(5200730284543, 'GHEORGHE', 'GM', 'IULIAN', 'LUCA', NULL, 'M', '2020-07-30 00:00:00', 4, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL VLĂDULENI', 'Preșcolar', 'Grupa mijlocie', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-01 00:00:00'),
(5121214284589, 'GHEORGHE', 'GM', 'NICOLAE', 'FABIAN', 'MARIO', 'M', '2012-12-14 00:00:00', 12, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a V-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXIV', 912, 7, '2015-09-01 00:00:00'),
(5170511284565, 'GHEORGHE', 'LD', 'IUSTIN', 'ANDREI', NULL, 'M', '2017-05-11 00:00:00', 7, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa I', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXX', 890, 9, '2020-09-14 00:00:00'),
(6180602284566, 'GHEORGHE', 'LD', 'REBECA', 'MARIA', NULL, 'F', '2018-06-02 00:00:00', 6, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa pregătitoare', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXIII', 911, 4, '2021-09-01 00:00:00'),
(6081212284545, 'GHERGHE', 'D.', 'SORINA-ANDREEA', NULL, NULL, 'F', '2008-12-12 00:00:00', 16, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a IX-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXXV', 913, 10, '2024-09-01 00:00:00'),
(5091003280861, 'GHERGHE', 'L', 'ALEXANDRU', 'GABRIEL', NULL, 'M', '2009-10-03 00:00:00', 15, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a VIII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXV', 793, 6, '2018-09-10 00:00:00'),
(6120601281606, 'GHERGHE', 'L', 'ELENA', NULL, NULL, 'F', '2012-06-01 00:00:00', 12, 'BALŞ', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a VI-a', 'O', 'Situaţie şcolară deschisă', '2025-03-07 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-07 00:00:00'),
(6110609281601, 'GHERGHE', 'L', 'MARIA', NULL, NULL, 'F', '2011-06-09 00:00:00', 13, 'OSICA DE SUS', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a VI-a', 'O', 'Situaţie şcolară deschisă', '2025-03-06 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-06 00:00:00'),
(5060828280876, 'GHERGHE', 'L', 'PAUL', 'FLORIAN', NULL, 'M', '2006-08-28 00:00:00', 18, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XI-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXIV', 794, 33, '2021-09-01 00:00:00'),
(5100605360017, 'GHERGHE', 'LC', 'DAVID', 'ANHEL', NULL, 'M', '2010-06-05 00:00:00', 14, 'TULCEA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a VIII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXV', 793, 7, '2014-09-01 00:00:00'),
(5150321280850, 'GHIOCA', 'I', 'ȘTEFAN-ANTONIO', NULL, NULL, 'M', '2015-03-21 00:00:00', 10, 'CARACAL', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa a III-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVI', 792, 23, '2017-09-01 00:00:00'),
(6050503284572, 'GIURGIA', 'E.G.', 'COSTINA-MARINA', NULL, NULL, 'F', '2005-05-03 00:00:00', 19, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXIV', 794, 34, '2021-09-01 00:00:00'),
(6190128284547, 'GÎSCĂ', 'AN', 'ADELINA', NULL, NULL, 'F', '2019-01-28 00:00:00', 6, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL VLĂDULENI', 'Preșcolar', 'Grupa mare', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-16 00:00:00'),
(5060627284566, 'GODINO', 'P.C.', 'EDUARD-IULIAN', NULL, NULL, 'M', '2006-06-27 00:00:00', 18, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXIV', 794, 9, '2021-09-01 00:00:00'),
(6181113280850, 'GOGOAȘE', 'DM', 'ALEXANDRA', 'SOFIA', NULL, 'F', '2018-11-13 00:00:00', 6, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa pregătitoare', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXIII', 911, 5, '2021-09-01 00:00:00'),
(5120319284542, 'GOGOȘANU', 'C', 'PAUL-ANDREI', NULL, NULL, 'M', '2012-03-19 00:00:00', 13, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a VI-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXI', 891, 5, '2015-09-01 00:00:00'),
(5140603280858, 'GOLEA', 'A', 'MARK', 'ANDREI', NULL, 'M', '2014-06-03 00:00:00', 10, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa a IV-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXI', 752, 7, '2016-09-12 00:00:00'),
(6220302284562, 'GRIGOROIU', 'G', 'ANDREEA-ILINCA', NULL, NULL, 'F', '2022-03-02 00:00:00', 3, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL VLĂDULENI', 'Preșcolar', 'Grupa mică', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-01 00:00:00'),
(5170620160071, 'GUBENDREANU', 'C', 'MATHIAS', 'GABRIEL', NULL, 'M', '2017-06-20 00:00:00', 7, 'CRAIOVA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa I', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXX', 890, 11, '2020-09-01 00:00:00'),
(5091202284554, 'GUBENDREANU', 'MF', 'ARTUR', 'FLORIN', NULL, 'M', '2009-12-02 00:00:00', 15, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a VIII-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXV', 793, 34, '2014-09-01 00:00:00'),
(5161108284540, 'GUBENDREANU', 'MF', 'EDUARD', 'ANDREI', 'MIHAI', 'M', '2016-11-08 00:00:00', 8, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa I', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXX', 890, 10, '2018-09-01 00:00:00'),
(5190404284552, 'GUBENDREANU', 'MF', 'NICOLAS', 'DAVID', 'VICTOR', 'M', '2019-04-04 00:00:00', 5, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL VLĂDULENI', 'Preșcolar', 'Grupa mare', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-01 00:00:00'),
(5100630284543, 'GUBENDREANU', 'N', 'CĂTĂLIN', 'MARIO', 'FABIAN', 'M', '2010-06-30 00:00:00', 14, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a VIII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXV', 793, 8, '2014-09-01 00:00:00'),
(5200713284540, 'GUBENDREANU', 'SA', 'MIHNEA-ADRIAN', NULL, NULL, 'M', '2020-07-13 00:00:00', 4, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL OSICA DE SUS', 'Preșcolar', 'Grupa mijlocie', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-01 00:00:00'),
(6110221284554, 'GUGHEA', 'A', 'CRISTINA', 'NICOLETA', NULL, 'F', '2011-02-21 00:00:00', 14, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a VI-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXI', 891, 6, '2018-02-07 00:00:00'),
(6071201284557, 'GUGU', 'G', 'ANAMARIA', 'GEORGIANA', NULL, 'F', '2007-12-01 00:00:00', 17, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XI-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXIX', 841, 9, '2022-09-01 00:00:00'),
(5110930280852, 'HAIDĂU', 'C', 'CIPRIAN', 'ALEXANDRU', NULL, 'M', '2011-09-30 00:00:00', 13, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a VII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVIII', 840, 8, '2017-09-01 00:00:00'),
(5141001284568, 'IACOB', 'D', 'IANIS', 'ALEXANDRU', NULL, 'M', '2014-10-01 00:00:00', 10, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa a IV-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXI', 752, 8, '2017-09-01 00:00:00'),
(5140402420028, 'IACOB', 'F', 'MIHAI', 'ANDREI', NULL, 'M', '2014-04-02 00:00:00', 10, 'BUCUREŞTI SECTORUL 2', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa a IV-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXI', 752, 29, '2021-02-16 00:00:00'),
(6061203284546, 'IACOB', 'G', 'ADINA', 'GABRIELA', NULL, 'F', '2006-12-03 00:00:00', 18, 'MUNICIPIUL SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XI-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXIX', 841, 38, '2022-09-01 00:00:00'),
(6220110280859, 'IANCU', 'AI', 'ALEXIA', 'ȘTEFANIA', NULL, 'F', '2022-01-10 00:00:00', 3, 'CARACAL', 'GRĂDINIȚA CU PROGRAM NORMAL GRECI-OSICA DE SUS', 'Preșcolar', 'Grupa mică', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-01 00:00:00'),
(5071030284586, 'IANCU', 'P', 'FLORIN', NULL, NULL, 'M', '2007-10-30 00:00:00', 17, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a X-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXXII', 892, 39, '2023-09-01 00:00:00'),
(6060210284542, 'IANCU', 'P.', 'ANDREEA', NULL, NULL, 'F', '2006-02-10 00:00:00', 19, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXIV', 794, 11, '2021-09-01 00:00:00'),
(6160908160026, 'ILIE', 'LI', 'ARIANA', 'MIHAELA', NULL, 'F', '2016-09-08 00:00:00', 8, 'CRAIOVA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa a II-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVII', 839, 5, '2019-09-24 00:00:00'),
(6160919280859, 'ILIE', 'M', 'ALEXIA', 'MARIA', NULL, 'F', '2016-09-19 00:00:00', 8, 'CARACAL', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa I', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXX', 890, 27, '2018-09-01 00:00:00'),
(6190825280862, 'ILIE', 'M', 'ANDREEA', 'ANEMARY', 'CLAUDIA', 'F', '2019-08-25 00:00:00', 5, 'CARACAL', 'GRĂDINIȚA CU PROGRAM NORMAL OSICA DE SUS', 'Preșcolar', 'Grupa mare', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-01 00:00:00'),
(6090625280850, 'ILIN', 'F', 'MARIA', 'ALEXANDRA', NULL, 'F', '2009-06-25 00:00:00', 15, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a IX-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXXV', 913, 34, '2024-09-01 00:00:00'),
(5080424280850, 'ILIN', 'IC', 'MADALIN', 'FLORINEL', NULL, 'M', '2008-04-24 00:00:00', 16, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a X-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXXII', 892, 40, '2023-09-01 00:00:00'),
(5151004281606, 'ILIN', 'L', 'IANIS', 'DAMIAN', NULL, 'M', '2015-10-04 00:00:00', 9, 'STRĂINĂTATE', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa a III-a', 'O', 'Situaţie şcolară neîncheiată', '2024-09-01 00:00:00', '2025-02-17 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6120614284541, 'IOJĂ', 'I', 'ANA', 'FERNANDA', NULL, 'F', '2012-06-14 00:00:00', 12, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a VI-a', 'O', 'Situaţie şcolară neîncheiată', '2024-09-01 00:00:00', '2025-02-17 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6081214284559, 'ION', 'I', 'ANDREEA', 'MIHAELA', NULL, 'F', '2008-12-14 00:00:00', 16, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a IX-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXXV', 913, 35, '2024-09-01 00:00:00'),
(6070103280868, 'ION', 'I', 'CARMINA', 'MARIA', NULL, 'F', '2007-01-03 00:00:00', 18, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XI-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXIX', 841, 10, '2022-09-01 00:00:00'),
(6081214284567, 'ION', 'I', 'MADALINA', 'GABRIELA', NULL, 'F', '2008-12-14 00:00:00', 16, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a IX-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXXV', 913, 36, '2024-09-01 00:00:00'),
(5070411281420, 'ION', 'L', 'ŞTEFAN', 'LUCIAN', NULL, 'M', '2007-04-11 00:00:00', 17, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XI-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXIX', 841, 11, '2022-09-01 00:00:00'),
(5070904280851, 'IONIŢĂ', 'A', 'CĂTĂLIN', 'NICUŞOR', NULL, 'M', '2007-09-04 00:00:00', 17, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XI-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXIX', 841, 12, '2022-09-01 00:00:00'),
(5140922284547, 'IORDACHE', 'DV', 'MARIUS', 'VALENTIN', NULL, 'M', '2014-09-22 00:00:00', 10, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa a IV-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXI', 752, 30, '2021-10-12 00:00:00'),
(5090630284567, 'IORDACHE', 'M.', 'ALEXANDRU-FLORIN-DENIS', NULL, NULL, 'M', '2009-06-30 00:00:00', 15, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a IX-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXXV', 913, 37, '2024-09-01 00:00:00'),
(5160606284542, 'IORDĂNOAIA', 'SD', 'NICOLAS', 'SEBASTIAN', NULL, 'M', '2016-06-06 00:00:00', 8, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa a II-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVII', 839, 22, '2019-09-01 00:00:00'),
(6220303160016, 'IORGA', 'FC', 'DARIA-NICOLETA', NULL, NULL, 'F', '2022-03-03 00:00:00', 3, 'CRAIOVA', 'GRĂDINIȚA CU PROGRAM NORMAL VLĂDULENI', 'Preșcolar', 'Grupa mică', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-01 00:00:00'),
(5160103284546, 'IORGA', 'FC', 'NARCIS', 'EDUARD', NULL, 'M', '2016-01-03 00:00:00', 9, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa a II-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVII', 839, 6, '2018-09-01 00:00:00'),
(6090718351579, 'IOVESCU', 'C.C.', 'FLAVIA-BEATRICE-MIHAELA', NULL, NULL, 'F', '2009-07-18 00:00:00', 15, 'TIMIŞOARA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a VIII-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXII', 753, 27, '2014-09-01 00:00:00'),
(6070601351590, 'IOVESCU', 'CC', 'SORINA', 'CRISTINA', 'DANIELA', 'F', '2007-06-01 00:00:00', 17, 'LUGOJ', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XI-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXIX', 841, 39, '2022-09-01 00:00:00'),
(5160916284557, 'IRIMIA', 'EI', 'DAVID', 'CONSTANTIN', NULL, 'M', '2016-09-16 00:00:00', 8, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa a II-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVII', 839, 7, '2019-09-01 00:00:00'),
(6200201284543, 'IRIMIA', 'EI', 'ȘTEFANIA', 'MARINELA', NULL, 'F', '2020-02-01 00:00:00', 5, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL VLĂDULENI', 'Preșcolar', 'Grupa mijlocie', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-01 00:00:00'),
(5100407284591, 'IRINDEA', 'C', 'MARIO', 'CĂTĂLIN', NULL, 'M', '2010-04-07 00:00:00', 14, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a VIII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXV', 793, 9, '2016-09-01 00:00:00'),
(5201014280867, 'JOIȚA', 'M', 'AYAN', 'ALEXANDRU', NULL, 'M', '2020-10-14 00:00:00', 4, 'CARACAL', 'GRĂDINIȚA CU PROGRAM NORMAL VLĂDULENI', 'Preșcolar', 'Grupa mijlocie', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-01 00:00:00'),
(5190414284541, 'JOIȚA', 'M', 'MATTIAS', 'GEORGIAN', NULL, 'M', '2019-04-14 00:00:00', 5, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL VLĂDULENI', 'Preșcolar', 'Grupa mare', 'A', 'Situaţie şcolară deschisă', '2024-09-06 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-01 00:00:00'),
(5160318284550, 'LASCU', 'NO', 'NICOLAS', 'GABRIEL', NULL, 'M', '2016-03-18 00:00:00', 9, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa a II-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVII', 839, 8, '2018-09-01 00:00:00'),
(5170321280865, 'LASCU', 'NO', 'ROBERT', 'ȘTEFAN', NULL, 'M', '2017-03-21 00:00:00', 8, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa I', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXX', 890, 12, '2019-09-01 00:00:00'),
(5170814280903, 'LAZĂR', 'A', 'MARIAN', 'IULIAN', NULL, 'M', '2017-08-14 00:00:00', 7, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa I', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXX', 890, 13, '2020-09-14 00:00:00'),
(6170616160111, 'LAZĂR', 'DC', 'ARIANA', 'ELOISE', NULL, 'F', '2017-06-16 00:00:00', 7, 'STRĂINĂTATE', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa I', 'O', 'Transferat', '2024-09-01 00:00:00', '2025-03-06 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-07 00:00:00'),
(5161013250013, 'LĂUTARU', 'I', 'ANDREI', 'CIPRIAN', 'FABIAN', 'M', '2016-10-13 00:00:00', 8, 'DROBETA-TURNU SEVERIN', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa I', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXX', 890, 14, '2023-09-01 00:00:00'),
(6091122280855, 'LĂUTARU', 'IE', 'ANDREEA', 'MIHAELA', NULL, 'F', '2009-11-22 00:00:00', 15, 'CARACAL', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a VIII-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXV', 793, 35, '2014-09-01 00:00:00'),
(5130515080030, 'LUȘCAN', 'R', 'RADU', 'CONSTANTIN', NULL, 'M', '2013-05-15 00:00:00', 11, 'BRAŞOV', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a V-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXIV', 912, 9, '2021-09-13 00:00:00'),
(6190113281606, 'MALACU', 'CI', 'ANTONIA-SOFIA', NULL, NULL, 'F', '2019-01-13 00:00:00', 6, 'STRĂINĂTATE', 'GRĂDINIȚA CU PROGRAM NORMAL VLĂDULENI', 'Preșcolar', 'Grupa mare', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-01 00:00:00'),
(5110519340910, 'MALACU', 'MC', 'MARIO', 'CRISTIAN', NULL, 'M', '2011-05-19 00:00:00', 13, 'ROSIORI DE VEDE', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a VI-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXI', 891, 7, '2022-01-20 00:00:00'),
(5180908284553, 'MALACU', 'RG', 'DOMINIC', 'ADRIAN', NULL, 'M', '2018-09-08 00:00:00', 6, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa pregătitoare', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXIII', 911, 18, '2023-09-01 00:00:00'),
(6200427284564, 'MALACU', 'RG', 'IZABELLE', 'ȘTEFANIA', NULL, 'F', '2020-04-27 00:00:00', 4, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL GRECI-OSICA DE SUS', 'Preșcolar', 'Grupa mijlocie', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-11 00:00:00'),
(5071120284576, 'MANICEA', 'G', 'ANDREI', 'REMUS', NULL, 'M', '2007-11-20 00:00:00', 17, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a X-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXXII', 892, 8, '2023-09-01 00:00:00'),
(5200915284578, 'MANICEA', 'NP', 'NICHOLAS', 'SEBASTIAN', NULL, 'M', '2020-09-15 00:00:00', 4, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL OSICA DE SUS', 'Preșcolar', 'Grupa mijlocie', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-01 00:00:00'),
(6170802284549, 'MANICEA', 'NP', 'NICOLETA', 'DIANA', NULL, 'F', '2017-08-02 00:00:00', 7, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa I', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXX', 890, 29, '2019-09-01 00:00:00'),
(5150831280854, 'MARCU', 'G', 'CLAUDIU', 'GABRIEL', NULL, 'M', '2015-08-31 00:00:00', 9, 'CARACAL', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa a III-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVI', 792, 24, '2018-09-01 00:00:00'),
(5101108284541, 'MARCU', 'I', 'GABRIEL', 'CRISTIAN', NULL, 'M', '2010-11-08 00:00:00', 14, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a VII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVIII', 840, 9, '2014-09-01 00:00:00'),
(6150312284566, 'MARCU', 'I', 'SOFIA', 'FLORENTINA', NULL, 'F', '2015-03-12 00:00:00', 10, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa a III-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVI', 792, 9, '2018-09-01 00:00:00'),
(6121020280871, 'MARCU', 'M', 'ANA', 'STEFANIA', NULL, 'F', '2012-10-20 00:00:00', 12, 'CARACAL', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a V-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXIV', 912, 24, '2015-09-01 00:00:00'),
(5060901280871, 'MARCU', 'M.C.', 'COSTI', 'MIHAI', NULL, 'M', '2006-09-01 00:00:00', 18, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XII-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXIV', 794, 36, '2021-09-01 00:00:00'),
(6060724280857, 'MARIA', 'C', 'GIORGIANA', 'DENISA', NULL, 'F', '2006-07-24 00:00:00', 18, 'MUNICIPIUL CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a X-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXXII', 892, 9, '2023-09-01 00:00:00'),
(5080404280868, 'MARIA', 'I', 'LUCIAN', 'IONUŢ', NULL, 'M', '2008-04-04 00:00:00', 16, 'MUNICIPIUL CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a X-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXXII', 892, 41, '2023-09-01 00:00:00'),
(5120624284571, 'MARICA', 'L', 'SEBASTIAN', 'MIHAI', NULL, 'M', '2012-06-24 00:00:00', 12, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a VI-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXI', 891, 8, '2015-09-01 00:00:00'),
(5170328284554, 'MARICA', 'L', 'SERGIU', 'GABRIEL', NULL, 'M', '2017-03-28 00:00:00', 7, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa I', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXX', 890, 15, '2019-09-01 00:00:00'),
(6060105280865, 'MARICA', 'M.', 'ANDREEA-LILIANA', NULL, NULL, 'F', '2006-01-05 00:00:00', 19, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXIV', 794, 12, '2021-09-01 00:00:00'),
(5090730280854, 'MARICA', 'N', 'CONSTANTIN', 'GEORGIAN', NULL, 'M', '2009-07-30 00:00:00', 15, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a IX-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXXV', 913, 38, '2024-09-01 00:00:00'),
(6190302284555, 'MARINESCU', 'AT', 'MARIA', 'ALEXANDRA', NULL, 'F', '2019-03-02 00:00:00', 6, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL OSICA DE SUS', 'Preșcolar', 'Grupa mare', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-01 00:00:00'),
(6160602284543, 'MARINESCU', 'AT', 'MIRUNA', 'ELENA', NULL, 'F', '2016-06-02 00:00:00', 8, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa a II-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVII', 839, 23, '2018-09-01 00:00:00'),
(6181028284562, 'MARINICĂ', 'N', 'REBECA', 'MARIA', 'EMILIA', 'F', '2018-10-28 00:00:00', 6, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa pregătitoare', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXIII', 911, 20, '2021-09-01 00:00:00'),
(5171012284544, 'MARKOCSAN', 'CA', 'RAUL', 'FLORIN', NULL, 'M', '2017-10-12 00:00:00', 7, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa pregătitoare', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXIII', 911, 6, '2021-09-01 00:00:00'),
(5110222284547, 'MATEI', 'I', 'ALEXANDRU', 'GABRIEL', NULL, 'M', '2011-02-22 00:00:00', 14, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a VII-a', 'O', 'Transferat', '2024-09-01 00:00:00', '2024-09-05 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-06 00:00:00'),
(5160211280876, 'MATEI', 'I', 'DARIUS', 'ALEXANDRU', 'IONUT', 'M', '2016-02-11 00:00:00', 9, 'CARACAL', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa pregătitoare', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXIII', 911, 19, '2018-10-01 00:00:00'),
(5060725284564, 'MATEI', 'I.', 'MIHAI-ALEXANDRU', NULL, NULL, 'M', '2006-07-25 00:00:00', 18, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XII-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXIV', 794, 52, '2022-11-07 00:00:00'),
(6200408284574, 'MATEI', 'ID', 'ARIANA', 'ELENA', NULL, 'F', '2020-04-08 00:00:00', 4, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL VLĂDULENI', 'Preșcolar', 'Grupa mijlocie', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-01 00:00:00'),
(5171116284573, 'MATEI', 'ID', 'VICENTE', 'ANDREI', NULL, 'M', '2017-11-16 00:00:00', 7, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa pregătitoare', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXIII', 911, 7, '2019-09-01 00:00:00'),
(6130828284551, 'MATEI', 'IV', 'MARIA', 'CARINA', NULL, 'F', '2013-08-28 00:00:00', 11, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a V-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXIV', 912, 25, '2016-09-01 00:00:00'),
(6160307284546, 'MATEI', 'M', 'MAYA', 'FLORENTINA', NULL, 'F', '2016-03-07 00:00:00', 9, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa a II-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-08 00:00:00'),
(5061102035261, 'MATEIAȘI', 'V', 'GABRIEL', 'VALENTIN', NULL, 'M', '2006-11-02 00:00:00', 18, 'PITEŞTI', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XI-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXIX', 841, 40, '2022-09-01 00:00:00'),
(5131230284595, 'MATEIŢĂ', 'A', 'ALEX', 'ANTONIO', NULL, 'M', '2013-12-30 00:00:00', 11, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a V-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXIV', 912, 26, '2018-01-18 00:00:00'),
(6061011281607, 'MAXUT', 'D.A.', 'ISABELA', NULL, NULL, 'F', '2006-10-11 00:00:00', 18, 'STRĂINĂTATE', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXIV', 794, 13, '2021-09-01 00:00:00'),
(6090204284577, 'MĂIEREAN', 'M.I.', 'ADRIANA-VALENTINA', NULL, NULL, 'F', '2009-02-04 00:00:00', 16, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a IX-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXXV', 913, 39, '2024-09-01 00:00:00'),
(6130608284545, 'MĂRGHIDANU', 'I', 'CRISTINA', 'MIHAELA', NULL, 'F', '2013-06-08 00:00:00', 11, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a V-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXIV', 912, 10, '2023-09-04 00:00:00'),
(6210526284547, 'MĂRINICĂ', 'N', 'EVELIN', 'NICOLE', 'ELENA', 'F', '2021-05-26 00:00:00', 3, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL GRECI-OSICA DE SUS', 'Preșcolar', 'Grupa mijlocie', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-15 00:00:00'),
(6160803284551, 'MĂRIUȘI', 'E', 'MARIA', NULL, NULL, 'F', '2016-08-03 00:00:00', 8, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa a II-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVII', 839, 9, '2019-09-01 00:00:00'),
(5190509284576, 'MĂRIUȘI', 'E', 'MIHAIL', NULL, NULL, 'M', '2019-05-09 00:00:00', 5, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL VLĂDULENI', 'Preșcolar', 'Grupa mare', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-01 00:00:00'),
(5080517284547, 'MĂRUNȚELU', 'MR', 'SERGIU', 'ANDREI', NULL, 'M', '2008-05-17 00:00:00', 16, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a X-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXXII', 892, 42, '2023-09-01 00:00:00'),
(6100213284580, 'MĂRUNȚELU', 'SC', 'ADRIANA', 'MARIA', NULL, 'F', '2010-02-13 00:00:00', 15, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a VIII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXV', 793, 10, '2014-09-01 00:00:00'),
(5220328284541, 'MIERLĂCIOIU', 'FA', 'RAREȘ-ALEXANDRU', NULL, NULL, 'M', '2022-03-28 00:00:00', 2, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL OSICA DE SUS', 'Preșcolar', 'Grupa mică', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-01 00:00:00'),
(5200102035264, 'MIERLĂCIOIU', 'I', 'LUCAS', 'ANDREI', NULL, 'M', '2020-01-02 00:00:00', 5, 'PITEŞTI', 'GRĂDINIȚA CU PROGRAM NORMAL OSICA DE SUS', 'Preșcolar', 'Grupa mijlocie', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-01 00:00:00'),
(5130607284575, 'MIERLĂCIOIU', 'IG', 'ANDREI', 'LAURENȚIU', 'IONEL', 'M', '2013-06-07 00:00:00', 11, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a V-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XVIII', 912, 11, '2016-09-01 00:00:00'),
(6080606280854, 'MIERLĂCIOIU', 'IG', 'DARIA', 'IONELA', 'ELENA', 'F', '2008-06-06 00:00:00', 16, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a X-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXXII', 892, 43, '2023-09-01 00:00:00'),
(5120803035270, 'MIHAI', 'A', 'ALBERTO', NULL, NULL, 'M', '2012-08-03 00:00:00', 12, 'PITEŞTI', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa a IV-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXI', 752, 22, '2015-09-01 00:00:00'),
(6110325280850, 'MIHAI', 'A', 'ANA', 'MARIA', NULL, 'F', '2011-03-25 00:00:00', 13, 'CARACAL', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a VII-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVIII', 840, 33, '2014-09-01 00:00:00'),
(6140216280867, 'MIHAI', 'A', 'COSMINA', 'IOANA', NULL, 'F', '2014-02-16 00:00:00', 11, 'CARACAL', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa a IV-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXI', 752, 24, '2017-09-11 00:00:00'),
(6210912284553, 'MIHAI', 'A', 'ESTERA', 'SOFIA', NULL, 'F', '2021-09-12 00:00:00', 3, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL VLĂDULENI', 'Preșcolar', 'Grupa mică', 'A', 'Situaţie şcolară deschisă', '2024-09-18 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-18 00:00:00'),
(6170420284541, 'MIHAI', 'A', 'JADORA', 'REBECA', NULL, 'F', '2017-04-20 00:00:00', 7, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa I', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXX', 890, 31, '2020-09-01 00:00:00'),
(6150518284543, 'MIHAI', 'B', 'SAMIRA', NULL, NULL, 'F', '2015-05-18 00:00:00', 9, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa a III-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVI', 792, 25, '2019-09-01 00:00:00'),
(5211216284574, 'MIHAI', 'BM', 'ALEX', NULL, NULL, 'M', '2021-12-16 00:00:00', 3, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL VLĂDULENI', 'Preșcolar', 'Grupa mică', 'A', 'Situaţie şcolară deschisă', '2024-09-19 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-19 00:00:00');
INSERT INTO `student` (`CNP`, `NUME`, `INITIALA_TATALUI`, `PRENUME1`, `PRENUME2`, `PRENUME3`, `SEX`, `DATA_NASTERE`, `VARSTA`, `LOCALITATE_NASTERE`, `DENUMIRE_UNITATE_FORMATIUNE`, `NIVEL_INVATAMANT`, `TIP_FORMATIUNE`, `NUME_CLASA`, `STATUS_ELEV`, `DATA_INCEPUT_ASOC_FORMATIUNE`, `DATA_SFARSIT_ASOC_FORMATIUNE`, `Profil`, `Specializare_Calificare`, `Domeniu`, `VOL`, `NR`, `PAG`, `DATA_INCEPUT_ASOC_UNITATE`) VALUES
(5091120284548, 'MIHAI', 'BM', 'ANATOL', 'FLORIN', NULL, 'M', '2009-11-20 00:00:00', 15, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a VI-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXI', 891, 26, '2014-09-01 00:00:00'),
(6120720284566, 'MIHAI', 'C', 'IULIANA', NULL, NULL, 'F', '2012-07-20 00:00:00', 12, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a VI-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXI', 891, 24, '2015-09-01 00:00:00'),
(6090313280867, 'MIHAI', 'C', 'RAMONA', NULL, NULL, 'F', '2009-03-13 00:00:00', 16, 'CARACAL', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a VII-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVIII', 840, 30, '2014-09-01 00:00:00'),
(5201231284565, 'MIHAI', 'C', 'RĂDUCU', 'IANIS', NULL, 'M', '2020-12-31 00:00:00', 4, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL OSICA DE SUS', 'Preșcolar', 'Grupa mijlocie', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-01 00:00:00'),
(6190924284561, 'MIHAI', 'EA', 'RALUCA', 'ADELINA', NULL, 'F', '2019-09-24 00:00:00', 5, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL OSICA DE SUS', 'Preșcolar', 'Grupa mare', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-04 00:00:00'),
(5101209160041, 'MIHAI', 'G', 'DAVID', NULL, NULL, 'M', '2010-12-09 00:00:00', 14, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a VII-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVIII', 840, 34, '2014-09-01 00:00:00'),
(6130418284561, 'MIHAI', 'G', 'DENISA', NULL, NULL, 'F', '2013-04-18 00:00:00', 11, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa a IV-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXI', 752, 23, '2015-09-01 00:00:00'),
(5150330284551, 'MIHAI', 'G', 'IONUT', 'ANTONIO', NULL, 'M', '2015-03-30 00:00:00', 9, 'CARACAL', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa a III-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVI', 792, 26, '2017-09-01 00:00:00'),
(6201027284552, 'MIHAI', 'I', 'ADELINA', 'IZABELA', NULL, 'F', '2020-10-27 00:00:00', 4, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL OSICA DE SUS', 'Preșcolar', 'Grupa mijlocie', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-01 00:00:00'),
(6190615284551, 'MIHAI', 'I', 'ANA-MARIA', NULL, NULL, 'F', '2019-06-15 00:00:00', 5, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL OSICA DE SUS', 'Preșcolar', 'Grupa mare', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-01 00:00:00'),
(5141212284547, 'MIHAI', 'I', 'EDUARD', NULL, NULL, 'M', '2014-12-12 00:00:00', 10, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa a III-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVI', 792, 35, '2022-03-04 00:00:00'),
(5090726284545, 'MIHAI', 'I', 'RĂZVAN', NULL, NULL, 'M', '2009-07-26 00:00:00', 15, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a VI-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVIII', 840, 31, '2014-09-01 00:00:00'),
(5170218160030, 'MIHAI', 'L', 'TONI', 'GHEORGHE', NULL, 'M', '2017-02-18 00:00:00', 8, 'CRAIOVA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa I', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXX', 890, 30, '2019-09-01 00:00:00'),
(6210608284553, 'MIHAI', 'M', 'ANDREEA', 'MARIA', NULL, 'F', '2021-06-08 00:00:00', 3, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL OSICA DE SUS', 'Preșcolar', 'Grupa mică', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-01 00:00:00'),
(6210719280857, 'MIHAI', 'MF', 'IZABELA-MARIA', NULL, NULL, 'F', '2021-07-19 00:00:00', 3, 'OSICA DE SUS', 'GRĂDINIȚA CU PROGRAM NORMAL OSICA DE SUS', 'Preșcolar', 'Grupa mică', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-01 00:00:00'),
(6110607284562, 'MIHAI', 'P', 'ANA', 'MARIA', NULL, 'F', '2011-06-07 00:00:00', 13, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a V-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-09-01 00:00:00'),
(6130623284542, 'MIHAI', 'T', 'CRISTINA', NULL, NULL, 'F', '2013-06-23 00:00:00', 11, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a V-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXIV', 912, 27, '2016-09-01 00:00:00'),
(5101012280857, 'MIHALACHE', 'I', 'DARIUS', 'ANDREI', NULL, 'M', '2010-10-12 00:00:00', 14, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a VIII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXV', 793, 13, '2019-02-11 00:00:00'),
(5060203284551, 'MINCĂ', 'E.M.', 'ANDREI-EMIL', NULL, NULL, 'M', '2006-02-03 00:00:00', 19, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXIV', 794, 15, '2021-09-01 00:00:00'),
(5200220280868, 'MINCĂ', 'EM', 'CRISTIAN', 'MIHAI', NULL, 'M', '2020-02-20 00:00:00', 5, 'CARACAL', 'GRĂDINIȚA CU PROGRAM NORMAL OSICA DE SUS', 'Preșcolar', 'Grupa mare', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-05 00:00:00'),
(5151107280851, 'MITRACHE', 'S', 'VALENTIN', 'MARIUS', NULL, 'M', '2015-11-07 00:00:00', 9, 'CARACAL', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa a III-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVI', 792, 27, '2017-09-01 00:00:00'),
(6090127280858, 'MITRAN', 'G', 'ALINA', 'GABRIELA', NULL, 'F', '2009-01-27 00:00:00', 16, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a IX-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXXV', 913, 11, '2024-09-01 00:00:00'),
(5150616280868, 'MITRICĂ', 'A', 'GABRIEL', 'IONEL', NULL, 'M', '2015-06-16 00:00:00', 9, 'CARACAL', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa a III-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVI', 792, 28, '2018-09-01 00:00:00'),
(5100815280861, 'MOGOȘ', 'F', 'ALEXANDRU', 'ANDREI', NULL, 'M', '2010-08-15 00:00:00', 14, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a VIII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXV', 793, 14, '2014-09-01 00:00:00'),
(5190401284554, 'MOGOȘ', 'F', 'ALIN', 'GABRIEL', NULL, 'M', '2019-04-01 00:00:00', 5, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL VLĂDULENI', 'Preșcolar', 'Grupa mare', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-01 00:00:00'),
(5180717284575, 'MOHOR', 'R', 'ȘTEFAN', 'ALEXANDRU', NULL, 'M', '2018-07-17 00:00:00', 6, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa pregătitoare', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXIII', 911, 8, '2021-09-01 00:00:00'),
(5181003284566, 'MOLDOVAN', 'D', 'GEORGE', 'DANIEL', NULL, 'M', '2018-10-03 00:00:00', 6, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa pregătitoare', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXIII', 911, 21, '2023-11-01 00:00:00'),
(6190802280881, 'MORARU', 'GC', 'EVELINE', 'MARIA', NULL, 'F', '2019-08-02 00:00:00', 5, 'CARACAL', 'GRĂDINIȚA CU PROGRAM NORMAL OSICA DE SUS', 'Preșcolar', 'Grupa mare', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-01 00:00:00'),
(5140125280864, 'MUSTAȚĂ', 'C', 'ADELIN', 'GABRIEL', NULL, 'M', '2014-01-25 00:00:00', 11, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa a IV-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXI', 752, 9, '2017-09-01 00:00:00'),
(6190108280864, 'MUSTAȚĂ', 'C', 'DARIA', 'IOANA', NULL, 'F', '2019-01-08 00:00:00', 6, 'CARACAL', 'GRĂDINIȚA CU PROGRAM NORMAL VLĂDULENI', 'Preșcolar', 'Grupa mare', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-01 00:00:00'),
(6150916284542, 'MUSTAȚĂ', 'I', 'EMA', 'MARIA', 'GEORGIANA', 'F', '2015-09-16 00:00:00', 9, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa a II-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVII', 839, 10, '2018-09-01 00:00:00'),
(6090720284583, 'MUȘEA', 'M.', 'RALUCA-IULIANA', NULL, NULL, 'F', '2009-07-20 00:00:00', 15, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a IX-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXXV', 913, 40, '2024-09-01 00:00:00'),
(5210408284546, 'MUȘEA', 'PI', 'DENIS', 'GABRIEL', NULL, 'M', '2021-04-08 00:00:00', 3, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL GRECI-OSICA DE SUS', 'Preșcolar', 'Grupa mijlocie', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-01 00:00:00'),
(5070310280852, 'NEACŞU', 'M', 'FLORIAN', 'CRISTIAN', NULL, 'M', '2007-03-10 00:00:00', 18, 'MUNICIPIUL CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XI-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXIX', 841, 43, '2022-09-01 00:00:00'),
(6101120280852, 'NEAGOE', 'I', 'MARIA', 'ALEXIA', NULL, 'F', '2010-11-20 00:00:00', 14, 'MUNICIPIUL CARACAL', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a VIII-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXV', 793, 38, '2016-09-01 00:00:00'),
(6091006284576, 'NEAGOE', 'V', 'ELENA', 'DIANA', NULL, 'F', '2009-10-06 00:00:00', 15, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a IX-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXXV', 913, 12, '2024-09-01 00:00:00'),
(5060101284595, 'NEAGOE', 'V.', 'IULIAN-VASILE', NULL, NULL, 'M', '2006-01-01 00:00:00', 19, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXIV', 794, 16, '2021-09-01 00:00:00'),
(6150714280868, 'NEAGU', 'P', 'ANDREEA', 'MARIA', NULL, 'F', '2015-07-14 00:00:00', 9, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa a III-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVI', 792, 11, '2017-09-01 00:00:00'),
(5130807280858, 'NEAGU', 'PB', 'CRISTI', 'MIHAI', NULL, 'M', '2013-08-07 00:00:00', 11, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a V-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXIV', 912, 12, '2016-09-12 00:00:00'),
(6110402284545, 'NEAMȚU', 'IF', 'MIRUNA', 'ROMINA', NULL, 'F', '2011-04-02 00:00:00', 13, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a VII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVIII', 840, 12, '2014-09-01 00:00:00'),
(5150512284553, 'NEAMȚU', 'LP', 'EDUARD', 'LUCAS', 'ANDREI', 'M', '2015-05-12 00:00:00', 9, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa a III-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVI', 792, 12, '2019-09-09 00:00:00'),
(6060926284541, 'NECHIFOR', 'V', 'MARA', 'ANIELA', NULL, 'F', '2006-09-26 00:00:00', 18, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XI-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXIX', 841, 13, '2022-09-01 00:00:00'),
(6170920284572, 'NEDELEA', 'FM', 'ALESIA', 'MARIA', 'GEORGIANA', 'F', '2017-09-20 00:00:00', 7, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa I', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXX', 890, 32, '2020-09-01 00:00:00'),
(5150618284561, 'NEGRILA', 'D', 'IULIAN', 'NICOLAS', NULL, 'M', '2015-06-18 00:00:00', 9, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa a III-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVI', 792, 13, '2017-09-01 00:00:00'),
(5070323284570, 'NEGRILĂ', 'A', 'FLORIN', NULL, NULL, 'M', '2007-03-23 00:00:00', 17, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XI-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXIX', 841, 15, '2022-09-01 00:00:00'),
(5190717284557, 'NEGRILĂ', 'F', 'FLORIN', 'MIHAI', 'BOGDAN', 'M', '2019-07-17 00:00:00', 5, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL VLĂDULENI', 'Preșcolar', 'Grupa mare', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-01 00:00:00'),
(6171214284549, 'NEGRILĂ', 'F', 'JESSICA', 'PATRICIA', 'GEORGIANA', 'F', '2017-12-14 00:00:00', 7, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa I', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXX', 890, 33, '2020-09-14 00:00:00'),
(5081115803731, 'NEGRILĂ', 'G', 'GEORGEL', 'CĂTĂLIN', NULL, 'M', '2008-11-15 00:00:00', 16, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a X-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXXII', 892, 44, '2023-09-01 00:00:00'),
(5070115284565, 'NEGRILĂ', 'I', 'EMANUEL', 'RAREȘ', NULL, 'M', '2007-01-15 00:00:00', 18, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a X-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXIX', 841, 44, '2022-09-01 00:00:00'),
(5180804284575, 'NEGRILĂ', 'II', 'FLORIN', 'MIHAI', 'GABRIEL', 'M', '2018-08-04 00:00:00', 6, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa pregătitoare', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXIII', 911, 9, '2023-03-07 00:00:00'),
(5060816280875, 'NEGRILĂ', 'IM', 'ANDREI', 'IULIAN', NULL, 'M', '2006-08-16 00:00:00', 18, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XI-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXIX', 841, 14, '2022-09-01 00:00:00'),
(5210428284563, 'NEGRILĂ', 'MA', 'MATHIAS', 'ANDREI', 'MĂDĂLIN', 'M', '2021-04-28 00:00:00', 3, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL GRECI-OSICA DE SUS', 'Preșcolar', 'Grupa mică', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-01 00:00:00'),
(5061111161871, 'NICA', 'S', 'MIHĂIŢĂ', 'ADRIAN', NULL, 'M', '2006-11-11 00:00:00', 18, 'CALAFAT', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XI-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXIX', 841, 45, '2022-09-01 00:00:00'),
(6070130340925, 'NICA', 'Ș', 'IONELA', 'ALINA', NULL, 'F', '2007-01-30 00:00:00', 18, 'MUNICIPIUL ROŞIORI DE VEDE', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XI-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXIX', 841, 16, '2022-09-01 00:00:00'),
(5090201280879, 'NICHITA', 'I.C.', 'VLĂDUȚ-MARIAN', NULL, NULL, 'M', '2009-02-01 00:00:00', 16, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a IX-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXXV', 913, 41, '2024-09-01 00:00:00'),
(6060729160050, 'NICOLA', 'N', 'ALESSIA', 'ADRIANA', NULL, 'F', '2006-07-29 00:00:00', 18, 'MUNICIPIUL CRAIOVA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XI-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXIX', 841, 46, '2022-09-01 00:00:00'),
(5160505160021, 'NICOLAIE', 'CS', 'ALBERT', 'SEBASTIAN', NULL, 'M', '2016-05-05 00:00:00', 8, 'CRAIOVA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa a II-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVII', 839, 24, '2022-09-01 00:00:00'),
(5070227160029, 'NICOLAIE', 'CS', 'RAREȘ', 'CĂTĂLIN', NULL, 'M', '2007-02-27 00:00:00', 18, 'CRAIOVA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XI-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXIX', 841, 47, '2022-09-01 00:00:00'),
(5070323160031, 'NICOLĂIŢĂ', 'I', 'DANIEL', NULL, NULL, 'M', '2007-03-23 00:00:00', 17, 'MUNICIPIUL CRAIOVA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XI-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXIX', 841, 17, '2022-09-01 00:00:00'),
(6091217284563, 'NIȚU', 'I', 'ADELINA', 'NIKOLLE', NULL, 'F', '2009-12-17 00:00:00', 15, 'MUNICIPIUL SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a VIII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXV', 793, 15, '2019-09-27 00:00:00'),
(6071110284548, 'NIȚU', 'VV', 'IONELA', 'ELENA', NULL, 'F', '2007-11-10 00:00:00', 17, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a X-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXXII', 892, 45, '2023-09-01 00:00:00'),
(6191220303923, 'OBIȘ', 'CA', 'SAMIRA', 'ARIANNA', NULL, 'F', '2019-12-20 00:00:00', 5, 'SATU MARE', 'GRĂDINIȚA CU PROGRAM NORMAL OSICA DE SUS', 'Preșcolar', 'Grupa mare', 'A', 'Situaţie şcolară deschisă', '2024-09-11 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-11 00:00:00'),
(6091217280857, 'ODAGIU', 'I', 'DIANA', 'MARIA', NULL, 'F', '2009-12-17 00:00:00', 15, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a VIII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXV', 793, 16, '2015-09-14 00:00:00'),
(5120217280861, 'ODAGIU', 'I', 'MARIUS', NULL, NULL, 'M', '2012-02-17 00:00:00', 13, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a VI-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXI', 891, 9, '2015-09-01 00:00:00'),
(6091028280858, 'OSMAN', 'I', 'MARIA', 'CĂTĂLINA', NULL, 'F', '2009-10-28 00:00:00', 15, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a IX-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXXV', 913, 42, '2024-09-01 00:00:00'),
(6080814280861, 'OSMAN', 'I', 'MARIANA', 'FLORENTINA', 'ADRIANA', 'F', '2008-08-14 00:00:00', 16, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a IX-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXXV', 913, 43, '2024-09-01 00:00:00'),
(5180831806613, 'OSTAFE', 'JE', 'IOAN', NULL, NULL, 'M', '2018-08-31 00:00:00', 6, 'STRĂINĂTATE', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa pregătitoare', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXIII', 911, 22, '2021-09-01 00:00:00'),
(6110227284542, 'OSTROPEL', 'AI', 'ALESIA', 'NICOLE', NULL, 'F', '2011-02-27 00:00:00', 14, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a VII-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVII', 840, 36, '2014-09-01 00:00:00'),
(6080419385563, 'OSTROPEL', 'AI', 'IRINA', 'MARIA', NULL, 'F', '2008-04-19 00:00:00', 16, 'RÂMNICU VÂLCEA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a X-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXXII', 892, 46, '2023-09-01 00:00:00'),
(5140608284541, 'PANAIT', 'AC', 'ANDREI', 'COSMIN', NULL, 'M', '2014-06-08 00:00:00', 10, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa a IV-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXI', 752, 10, '2016-09-01 00:00:00'),
(5211016284550, 'PANAIT', 'AI', 'ERIC-ANREI', NULL, NULL, 'M', '2021-10-16 00:00:00', 3, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL GRECI-OSICA DE SUS', 'Preșcolar', 'Grupa mică', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-01 00:00:00'),
(5140111281608, 'PANĂ', 'MC', 'DAVID', 'IONUȚ', NULL, 'M', '2014-01-11 00:00:00', 11, 'STRĂINĂTATE', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa a IV-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXI', 752, 25, '2018-09-10 00:00:00'),
(5080808280881, 'PANCU', 'CE', 'ŞTEFAN', 'MARIAN', NULL, 'M', '2008-08-08 00:00:00', 16, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a X-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXXII', 892, 11, '2023-09-01 00:00:00'),
(5060808282203, 'PARASCHIV', 'C', 'CORNEL', 'NICOLAE', NULL, 'M', '2006-08-08 00:00:00', 18, 'CORABIA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XI-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXIX', 841, 48, '2022-09-01 00:00:00'),
(5190205284566, 'PARASCHIV', 'CC', 'RAREȘ', 'DORIN', 'ANDREI', 'M', '2019-02-05 00:00:00', 6, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL VLĂDULENI', 'Preșcolar', 'Grupa mare', 'A', 'Transferat', '2024-09-01 00:00:00', '2024-11-14 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-15 00:00:00'),
(6180516284542, 'PĂLCĂU', 'AC', 'ELENA', 'MĂDĂLINA', NULL, 'F', '2018-05-16 00:00:00', 6, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa pregătitoare', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXIII', 911, 23, '2021-09-01 00:00:00'),
(6160518284568, 'PĂLCĂU', 'AC', 'MAYA', 'ANAMARIA', NULL, 'F', '2016-05-18 00:00:00', 8, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa a II-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVII', 839, 25, '2018-09-01 00:00:00'),
(6191025284546, 'PĂLCĂU', 'MI', 'EVA', 'MARIA', NULL, 'F', '2019-10-25 00:00:00', 5, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL GRECI-OSICA DE SUS', 'Preșcolar', 'Grupa mare', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-16 00:00:00'),
(6080730284556, 'PĂTRU', 'IG', 'AMELIA', 'ALEXANDRA', NULL, 'F', '2008-07-30 00:00:00', 16, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a X-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXXII', 892, 47, '2023-09-01 00:00:00'),
(6101104284542, 'PĂTRU', 'IG', 'MARIA', 'CRISTINA', NULL, 'F', '2010-11-04 00:00:00', 14, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a VII-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVIII', 840, 37, '2014-09-01 00:00:00'),
(6081215280871, 'PĂUN', 'D', 'EMILIA', 'FLORINA', NULL, 'F', '2008-12-15 00:00:00', 16, 'MUNICIPIUL CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a IX-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXXV', 913, 13, '2024-09-01 00:00:00'),
(5080126280855, 'PĂUN', 'M', 'MIHAI', 'ALEXANDRU', NULL, 'M', '2008-01-26 00:00:00', 17, 'MUNICIPIUL CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a X-a', 'B', 'Situaţie şcolară deschisă', '2024-09-10 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', NULL, NULL, NULL, '2024-09-10 00:00:00'),
(6070418284582, 'PĂUN', 'M', 'SORINA', 'MARIA', NULL, 'F', '2007-04-18 00:00:00', 17, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XI-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXIX', 841, 18, '2022-09-01 00:00:00'),
(5070119284574, 'PĂUN', 'Ş', 'SORIN', 'ALEXANDRU', NULL, 'M', '2007-01-19 00:00:00', 18, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XI-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', NULL, NULL, NULL, '2023-09-04 00:00:00'),
(6120104284548, 'PĂUN CEL MIC', 'C', 'MARIA', 'ALEXANDRA', NULL, 'F', '2012-01-04 00:00:00', 13, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a VI-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXI', 891, 10, '2015-09-01 00:00:00'),
(5120923280861, 'PÂRLOGEA', 'C', 'EDUARD', 'CONSTANTIN', NULL, 'M', '2012-09-23 00:00:00', 12, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a VI-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXI', 891, 11, '2019-04-12 00:00:00'),
(6120522284556, 'PESCARU', 'CI', 'TATIANA', 'VALENTINA', NULL, 'F', '2012-05-22 00:00:00', 12, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a VI-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXI', 891, 12, '2014-09-01 00:00:00'),
(6201106281602, 'PESCARU', 'EA', 'EVA', NULL, NULL, 'F', '2020-11-06 00:00:00', 4, 'STRĂINĂTATE', 'GRĂDINIȚA CU PROGRAM NORMAL VLĂDULENI', 'Preșcolar', 'Grupa mică', 'A', 'Transferat', '2024-09-01 00:00:00', '2025-01-08 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-09 00:00:00'),
(6110119284549, 'PETCU', 'GS', 'NICOLETA', 'MARINA', NULL, 'F', '2011-01-19 00:00:00', 14, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a VIII-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXV', 793, 51, '2023-02-06 00:00:00'),
(5170809284570, 'PETCU', 'GS', 'SORIN', 'NICOLA', 'ANDREAS', 'M', '2017-08-09 00:00:00', 7, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa I', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXX', 890, 34, '2023-03-01 00:00:00'),
(5150524280856, 'PETRE', 'M', 'DARIUS', 'MIHAI', 'CONSTANTIN', 'M', '2015-05-24 00:00:00', 9, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa a III-a', 'A', 'Situaţie şcolară deschisă', '2025-03-14 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-14 00:00:00'),
(5091008284545, 'PETRICĂ', 'IN', 'ADRIAN', 'VALENTIN', NULL, 'M', '2009-10-08 00:00:00', 15, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a IX-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXXV', 913, 44, '2024-09-01 00:00:00'),
(5150711281608, 'PEȚA', 'CM', 'ROBERT', 'GABRIEL', NULL, 'M', '2015-07-11 00:00:00', 9, 'STRĂINĂTATE', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa a II-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVI', 792, 15, '2018-09-01 00:00:00'),
(6211102281601, 'PÎRVU', 'DC', 'ELVIRA-TEODORA', NULL, NULL, 'F', '2021-11-02 00:00:00', 3, 'STRĂINĂTATE', 'GRĂDINIȚA CU PROGRAM NORMAL VLĂDULENI', 'Preșcolar', 'Grupa mică', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-01 00:00:00'),
(6171027281603, 'PÎRVU', 'DC', 'FLAVIA', 'FLORENTINA', NULL, 'F', '2017-10-27 00:00:00', 7, 'STRĂINĂTATE', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa I', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXX', 890, 35, '2022-05-04 00:00:00'),
(6200419284556, 'PÎRVU', 'GM', 'CLARA', 'ROSALIA', 'MARIA', 'F', '2020-04-19 00:00:00', 4, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL VLĂDULENI', 'Preșcolar', 'Grupa mijlocie', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-01 00:00:00'),
(5210501281609, 'PÎRVU', 'GM', 'DAMIAN-CONSTANTIN-RICARDO', NULL, NULL, 'M', '2021-05-01 00:00:00', 3, 'STRĂINĂTATE', 'GRĂDINIȚA CU PROGRAM NORMAL VLĂDULENI', 'Preșcolar', 'Grupa mică', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-01 00:00:00'),
(6130519284558, 'PÎRVU', 'GM', 'GEORGIANA', 'RALUCA', NULL, 'F', '2013-05-19 00:00:00', 11, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a V-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXIV', 912, 13, '2022-05-18 00:00:00'),
(5101122281604, 'PÎRVU PĂLCĂU', 'MI', 'MARIO', 'IONUȚ', NULL, 'M', '2010-11-22 00:00:00', 14, 'STRĂINĂTATE', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a VIII-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXV', 793, 39, '2015-02-09 00:00:00'),
(5081030281601, 'PÎRVU-SEIXAS', 'D.C.', 'DANIEL-CONSTANTINO', NULL, NULL, 'M', '2008-10-30 00:00:00', 16, 'STRĂINĂTATE', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a IX-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXXV', 913, 14, '2024-09-01 00:00:00'),
(6081204284545, 'POPA', 'L', 'MARIA', 'ADRIANA', NULL, 'F', '2008-12-04 00:00:00', 16, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a X-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXXII', 892, 12, '2023-09-01 00:00:00'),
(5051001284551, 'POPA', 'N.I.', 'MARIUS-IONUȚ', NULL, NULL, 'M', '2005-10-01 00:00:00', 19, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXIV', 794, 17, '2021-09-01 00:00:00'),
(6071205284541, 'POPA-DRĂGOI', 'I', 'ALINA', 'NICOLETA', NULL, 'F', '2007-12-05 00:00:00', 17, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a X-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXXII', 892, 48, '2023-09-01 00:00:00'),
(6110217284547, 'POPA-DRĂGOI', 'I', 'CRISTINA', 'FLORENTINA', 'RENATA', 'F', '2011-02-17 00:00:00', 14, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a VII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVIII', 840, 13, '2014-09-01 00:00:00'),
(5170928280858, 'POPA-DRĂGOI', 'I', 'DENIS', 'ANDREI', NULL, 'M', '2017-09-28 00:00:00', 7, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa I', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXX', 890, 16, '2019-09-01 00:00:00'),
(5130809284607, 'POPESCU', 'CȘ', 'GEORGE', 'MIHAI', NULL, 'M', '2013-08-09 00:00:00', 11, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a V-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXIV', 912, 28, '2016-09-01 00:00:00'),
(5100727284540, 'POPESCU', 'CȘ', 'MARIAN', 'ALEXANDRU', NULL, 'M', '2010-07-27 00:00:00', 14, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a VIII-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXV', 793, 40, '2014-09-01 00:00:00'),
(5160121284551, 'POPESCU', 'L', 'LUCIAN', 'MIHAI', 'VALENTIN', 'M', '2016-01-21 00:00:00', 9, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa a II-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVII', 839, 11, '2022-09-01 00:00:00'),
(6120121280850, 'POPESCU', 'S', 'MARIA', 'ALEXANDRA', NULL, 'F', '2012-01-21 00:00:00', 13, 'MUNICIPIUL CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a VI-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-27 00:00:00'),
(5060612280869, 'POPESCU', 'S.', 'ALEXANDRU', NULL, NULL, 'M', '2006-06-12 00:00:00', 18, 'MUNICIPIUL CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XII-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXIV', 794, 41, '2021-09-01 00:00:00'),
(5070707284540, 'PREDA', 'A', 'NICUȘOR', 'FABIAN', NULL, 'M', '2007-07-07 00:00:00', 17, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a X-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXXII', 892, 14, '2023-09-01 00:00:00'),
(5060524284556, 'PREDA', 'D.', 'DARIUS-NICUȘOR', NULL, NULL, 'M', '2006-05-24 00:00:00', 18, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXIV', 794, 19, '2021-09-01 00:00:00'),
(6060909284563, 'PREDA', 'D.N.', 'ANA', NULL, NULL, 'F', '2006-09-09 00:00:00', 18, 'MUNICIPIUL SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXIV', 794, 18, '2021-09-01 00:00:00'),
(6080417284553, 'PREDA', 'DN', 'MARIA', 'ALISA', NULL, 'F', '2008-04-17 00:00:00', 16, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a X-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXXII', 892, 13, '2023-09-01 00:00:00'),
(5130517160044, 'PREDA', 'DN', 'MIRCEA', 'DAMIAN', NULL, 'M', '2013-05-17 00:00:00', 11, 'CRAIOVA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a V-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXIV', 912, 14, '2016-09-01 00:00:00'),
(5100406284546, 'PREDA', 'M', 'ADRIAN', 'FLORIN', 'MĂDĂLIN', 'M', '2010-04-06 00:00:00', 14, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a VIII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXV', 793, 17, '2018-09-20 00:00:00'),
(5060705284581, 'PREDA', 'N.C.', 'FLAVIUS-IONUȚ', NULL, NULL, 'M', '2006-07-05 00:00:00', 18, 'MUNICIPIUL SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XII-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXIV', 794, 42, '2021-09-01 00:00:00'),
(6090705280011, 'PREDA', 'Ș', 'RAMONA', 'IONELA', NULL, 'F', '2009-07-05 00:00:00', 15, 'BALŞ', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a IX-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXXV', 913, 45, '2024-09-01 00:00:00'),
(6191210280862, 'PREDA', 'V', 'FLORENTINA', 'DORINA', NULL, 'F', '2019-12-10 00:00:00', 5, 'CARACAL', 'GRĂDINIȚA CU PROGRAM NORMAL VLĂDULENI', 'Preșcolar', 'Grupa mijlocie', 'A', 'Transferat', '2024-09-01 00:00:00', '2025-02-26 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-27 00:00:00'),
(6070501284549, 'PREDESCU', 'FN', 'OANA', 'DARIA', NULL, 'F', '2007-05-01 00:00:00', 17, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XI-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXIX', 841, 20, '2022-09-01 00:00:00'),
(5150905281600, 'PRICOP', 'G', 'DENIS', 'MIHAI', NULL, 'M', '2015-09-05 00:00:00', 9, 'STRĂINĂTATE', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa a III-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVI', 792, 29, '2021-09-01 00:00:00'),
(6071216430051, 'PUTINEANU', 'G', 'GEORGIANA', 'ELISA', NULL, 'F', '2007-12-16 00:00:00', 17, 'STRĂINĂTATE', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a X-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXXII', 892, 15, '2023-09-01 00:00:00'),
(5061201280875, 'PUŢUREANU', 'M', 'IONUŢ-VERGI', NULL, NULL, 'M', '2006-12-01 00:00:00', 18, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XI-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXIX', 841, 21, '2022-09-01 00:00:00'),
(6120406281602, 'RADU', 'I', 'ANA', 'MARIA', 'BRÂNDUȘA', 'F', '2012-04-06 00:00:00', 12, 'CARACAL', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a V-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-09-12 00:00:00'),
(5210910284564, 'RADU', 'MA', 'ȘTEFAN-GABRIEL', NULL, NULL, 'M', '2021-09-10 00:00:00', 3, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL VLĂDULENI', 'Preșcolar', 'Grupa mică', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-01 00:00:00'),
(5070518280851, 'RAICEA', 'F', 'FLORIAN', 'CĂTĂLIN', NULL, 'M', '2007-05-18 00:00:00', 17, 'MUNICIPIUL CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XI-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXIX', 841, 50, '2022-09-01 00:00:00'),
(5090804284550, 'RAICEA', 'I.F.', 'ANDREI-ALEXANDRU', NULL, NULL, 'M', '2009-08-04 00:00:00', 15, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a IX-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXXV', 913, 15, '2024-09-01 00:00:00'),
(5110529280857, 'RAICEA', 'SN', 'DAVID', 'NICOLAS', NULL, 'M', '2011-05-29 00:00:00', 13, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a VII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVIII', 840, 14, '2014-09-01 00:00:00'),
(6130430280852, 'RĂDĂNUŢ', 'C', 'ALEXIA', 'FLORENTINA', NULL, 'F', '2013-04-30 00:00:00', 11, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a V-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXIV', 912, 15, '2015-09-01 00:00:00'),
(5160721280853, 'RĂDĂNUȚ', 'C', 'SORIN', 'IONUȚ', NULL, 'M', '2016-07-21 00:00:00', 8, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa a II-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVII', 839, 12, '2018-09-01 00:00:00'),
(5090928280014, 'RĂDĂNUȚ', 'C.', 'MARIUS-COSMIN', NULL, NULL, 'M', '2009-09-28 00:00:00', 15, 'BALŞ', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a IX-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXXV', 913, 16, '2024-09-01 00:00:00'),
(6080302281424, 'RĂDOI', 'A', 'BIANCA', 'CRISTINA', NULL, 'F', '2008-03-02 00:00:00', 17, 'STRĂINĂTATE', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a X-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXXII', 892, 17, '2023-09-01 00:00:00'),
(6160704284569, 'RĂDOI', 'LF', 'ANASTASIA', 'ALEXANDRA', NULL, 'F', '2016-07-04 00:00:00', 8, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa a II-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVII', 839, 13, '2018-09-01 00:00:00'),
(6220223284554, 'RĂDOI', 'LF', 'CORALINA', NULL, NULL, 'F', '2022-02-23 00:00:00', 3, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL VLĂDULENI', 'Preșcolar', 'Grupa mică', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-01 00:00:00'),
(6130820284551, 'RĂDOI', 'LF', 'SOFIA', 'MARIA', NULL, 'F', '2013-08-20 00:00:00', 11, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a V-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXIV', 912, 16, '2015-09-01 00:00:00'),
(6080504280863, 'RĂDOI', 'P', 'ȘTEFANIA', 'IONELA', NULL, 'F', '2008-05-04 00:00:00', 16, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a X-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXXII', 892, 16, '2023-09-01 00:00:00'),
(6081028035263, 'RĂDUCU', 'I', 'ADRIANA', NULL, NULL, 'F', '2008-10-28 00:00:00', 16, 'MUNICIPIUL PITEŞTI', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a IX-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXXV', 913, 46, '2024-09-01 00:00:00'),
(5160512281601, 'RĂDUCU', 'M', 'GEORGE', 'ERIC', NULL, 'M', '2016-05-12 00:00:00', 8, 'STRĂINĂTATE', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa a II-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVII', 839, 26, '2021-09-13 00:00:00'),
(6160510280851, 'RISTEA', 'G', 'FLAVIA', 'MARIA', NULL, 'F', '2016-05-10 00:00:00', 8, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa a II-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVII', 839, 32, '2023-01-11 00:00:00'),
(5130701280874, 'ROŞCA', 'FA', 'CLAUDIU', 'ADRIAN', NULL, 'M', '2013-07-01 00:00:00', 11, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a V-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXIV', 912, 17, '2015-09-01 00:00:00'),
(5150806160051, 'ROȘCA', 'MS', 'MIHAI', NULL, NULL, 'M', '2015-08-06 00:00:00', 9, 'CRAIOVA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa a III-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVI', 792, 16, '2018-09-01 00:00:00'),
(5110415160049, 'ROȘCA', 'MS', 'ȘTEFAN', NULL, NULL, 'M', '2011-04-15 00:00:00', 13, 'CRAIOVA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a VII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVIII', 840, 15, '2014-09-01 00:00:00'),
(6101018350137, 'ROȘU', 'D', 'DANIELA', 'LORETTA', NULL, 'F', '2010-10-18 00:00:00', 14, 'TIMIŞOARA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a VII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVIII', 840, 17, '2016-09-12 00:00:00'),
(6080219280871, 'RUȚĂ', 'A', 'MARIA', 'IRINA', NULL, 'F', '2008-02-19 00:00:00', 17, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a X-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXXII', 892, 18, '2023-09-01 00:00:00'),
(6090621284541, 'SACA', 'M.', 'MARIA-IZABELA', NULL, NULL, 'F', '2009-06-21 00:00:00', 15, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a IX-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXXV', 913, 47, '2024-09-01 00:00:00'),
(6080803160088, 'SAFTA', 'P', 'ELENA', 'ȘTEFANIA', NULL, 'F', '2008-08-03 00:00:00', 16, 'MUNICIPIUL CRAIOVA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a X-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXXII', 892, 49, '2023-09-01 00:00:00'),
(6060323280868, 'SAFTA', 'V.', 'CHAORI-NADINE', NULL, NULL, 'F', '2006-03-23 00:00:00', 18, 'MUNICIPIUL CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXIV', 794, 20, '2021-09-01 00:00:00'),
(6160406284547, 'SANDU', 'A', 'ADELA', 'MARIA', NULL, 'F', '2016-04-06 00:00:00', 8, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa a II-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVII', 839, 27, '2022-09-01 00:00:00'),
(6200826284558, 'SANDU', 'A', 'CAMELIA', 'ANDREEA', NULL, 'F', '2020-08-26 00:00:00', 4, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL GRECI-OSICA DE SUS', 'Preșcolar', 'Grupa mijlocie', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-11 00:00:00'),
(5061004280851, 'SĂFTOIU', 'D.', 'GABRIEL-MĂDĂLIN', NULL, NULL, 'M', '2006-10-04 00:00:00', 18, 'MUNICIPIUL CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XII-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXIV', 794, 43, '2021-09-01 00:00:00'),
(6070714284566, 'SĂNDICĂ', 'D', 'ELENA', 'MARIA', NULL, 'F', '2007-07-14 00:00:00', 17, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XI-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXIX', 841, 22, '2022-09-01 00:00:00'),
(6150725284548, 'SĂRACU', 'I', 'DELIA', 'GABRIELA', NULL, 'F', '2015-07-25 00:00:00', 9, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa a III-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVI', 792, 17, '2017-09-01 00:00:00'),
(5210917284555, 'SĂRACU', 'IV', 'MATEI-ANREI-ȘTEFAN', NULL, NULL, 'M', '2021-09-17 00:00:00', 3, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL VLĂDULENI', 'Preșcolar', 'Grupa mică', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-01 00:00:00'),
(5080801284554, 'SFÎRĂIALĂ', 'A', 'LUCA', 'MIHAI', NULL, 'M', '2008-08-01 00:00:00', 16, 'MUNICIPIUL SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a X-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXXII', 892, 50, '2023-09-01 00:00:00'),
(5210817284543, 'SIMA', 'C', 'DANIEL', 'ANDREI', NULL, 'M', '2021-08-17 00:00:00', 3, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL GRECI-OSICA DE SUS', 'Preșcolar', 'Grupa mică', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-01 00:00:00'),
(5060329280862, 'SIMA', 'G', 'ALEXANDRU', 'MARIAN', NULL, 'M', '2006-03-29 00:00:00', 18, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XI-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXIV', 794, 44, '2021-09-01 00:00:00'),
(5181011284541, 'SÎRBU', 'AC', 'MATEI', 'ȘTEFAN', NULL, 'M', '2018-10-11 00:00:00', 6, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa pregătitoare', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXIII', 911, 10, '2022-09-01 00:00:00'),
(5170623164122, 'SÎRBU', 'CC', 'MARIO', 'MARIAN', NULL, 'M', '2017-06-23 00:00:00', 7, 'DĂBULENI', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa I', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXX', 890, 17, '2021-05-20 00:00:00'),
(5140525160034, 'SÎRBU', 'CC', 'MIHAI', 'BOGDAN', NULL, 'M', '2014-05-25 00:00:00', 10, 'CRAIOVA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa a IV-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXI', 752, 29, '2021-02-18 00:00:00'),
(6190210284543, 'SOARE', 'M', 'DARIA', 'MARIA', NULL, 'F', '2019-02-10 00:00:00', 6, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL GRECI-OSICA DE SUS', 'Preșcolar', 'Grupa mare', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-01 00:00:00'),
(5200731284546, 'SOARE', 'M', 'PATRICK', 'ȘTEFAN', NULL, 'M', '2020-07-31 00:00:00', 4, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL GRECI-OSICA DE SUS', 'Preșcolar', 'Grupa mijlocie', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-11 00:00:00'),
(5201004284543, 'SOCOL', 'MM', 'IANIS', 'GABRIEL', NULL, 'M', '2020-10-04 00:00:00', 4, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL OSICA DE SUS', 'Preșcolar', 'Grupa mijlocie', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-01 00:00:00'),
(5180709280850, 'SPĂTARU', 'FL', 'GABRIEL', NULL, NULL, 'M', '2018-07-09 00:00:00', 6, 'CARACAL', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa pregătitoare', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXIII', 911, 24, '2021-09-01 00:00:00'),
(6130502284545, 'SPĂTARU', 'FL', 'MARIANA', NULL, NULL, 'F', '2013-05-02 00:00:00', 11, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a V-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXIV', 912, 29, '2015-09-01 00:00:00');
INSERT INTO `student` (`CNP`, `NUME`, `INITIALA_TATALUI`, `PRENUME1`, `PRENUME2`, `PRENUME3`, `SEX`, `DATA_NASTERE`, `VARSTA`, `LOCALITATE_NASTERE`, `DENUMIRE_UNITATE_FORMATIUNE`, `NIVEL_INVATAMANT`, `TIP_FORMATIUNE`, `NUME_CLASA`, `STATUS_ELEV`, `DATA_INCEPUT_ASOC_FORMATIUNE`, `DATA_SFARSIT_ASOC_FORMATIUNE`, `Profil`, `Specializare_Calificare`, `Domeniu`, `VOL`, `NR`, `PAG`, `DATA_INCEPUT_ASOC_UNITATE`) VALUES
(6080409284545, 'STAN', 'G', 'DENISA', 'MIHAELA', NULL, 'F', '2008-04-09 00:00:00', 16, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a X-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXXII', 892, 51, '2023-09-01 00:00:00'),
(6120406809251, 'STAN', 'PM', 'IONELA', 'GABRIELA', 'FLORENTINA', 'F', '2012-04-06 00:00:00', 12, 'STRĂINĂTATE', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a VI-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXI', 891, 13, '2021-10-12 00:00:00'),
(6160723284559, 'STANCA', 'AC', 'ARYANA', 'GEORGIANA', NULL, 'F', '2016-07-23 00:00:00', 8, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa a II-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVII', 839, 14, '2021-03-03 00:00:00'),
(5180804281609, 'STANCA', 'AC', 'AYAN', 'GEORGIAN', NULL, 'M', '2018-08-04 00:00:00', 6, 'STRĂINĂTATE', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa pregătitoare', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXIII', 911, 11, '2021-03-03 00:00:00'),
(5081115280858, 'STANCA', 'D.L.', 'ANDREI-GABRIEL', NULL, NULL, 'M', '2008-11-15 00:00:00', 16, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a IX-a', 'B', 'Situaţie şcolară deschisă', '2024-09-05 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXXV', 913, 48, '2024-09-05 00:00:00'),
(5061117280865, 'STANCA', 'DL', 'LUCIAN', 'IONUȚ', NULL, 'M', '2006-11-17 00:00:00', 18, 'MUNICIPIUL CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XI-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXIX', 841, 25, '2022-09-01 00:00:00'),
(5080808280863, 'STANCIU', 'I', 'DAVID', 'MIHAI', NULL, 'M', '2008-08-08 00:00:00', 16, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a X-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXXII', 892, 19, '2023-09-01 00:00:00'),
(5090219280851, 'STANCU', 'F', 'DANIEL', 'NICUȘOR', NULL, 'M', '2009-02-19 00:00:00', 16, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a IX-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXXV', 913, 49, '2024-09-01 00:00:00'),
(5200521284561, 'STANCU', 'VI', 'ȘTEFAN', 'COSTINEL', NULL, 'M', '2020-05-21 00:00:00', 4, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL VLĂDULENI', 'Preșcolar', 'Grupa mijlocie', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-01 00:00:00'),
(6180929284540, 'STĂNESCU', 'AM', 'SONIA', 'MARIA', NULL, 'F', '2018-09-29 00:00:00', 6, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL OSICA DE SUS', 'Preșcolar', 'Grupa mare', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-01 00:00:00'),
(5200418284586, 'STĂNESCU', 'B', 'MATEI', NULL, NULL, 'M', '2020-04-18 00:00:00', 4, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL OSICA DE SUS', 'Preșcolar', 'Grupa mare', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-01 00:00:00'),
(6180208287782, 'STÂNGĂ', 'Ș', 'FRANCESCA', 'GIULIA', NULL, 'F', '2018-02-08 00:00:00', 7, 'STRĂINĂTATE', 'GRĂDINIȚA CU PROGRAM NORMAL VLĂDULENI', 'Preșcolar', 'Grupa mare', 'A', 'Situaţie şcolară deschisă', '2024-10-03 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-03 00:00:00'),
(5210119133911, 'STELEA', 'D', 'EFREM', NULL, NULL, 'M', '2021-01-19 00:00:00', 4, 'MANGALIA', 'GRĂDINIȚA CU PROGRAM NORMAL GRECI-OSICA DE SUS', 'Preșcolar', 'Grupa mijlocie', 'A', 'Situaţie şcolară deschisă', '2024-09-12 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-12 00:00:00'),
(5140908133910, 'STELEA', 'FD', 'ALEXANDRU', 'MARIAN', NULL, 'M', '2014-09-08 00:00:00', 10, 'MANGALIA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa a III-a', 'O', 'Situaţie şcolară deschisă', '2024-09-09 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-09 00:00:00'),
(5170820280860, 'STOIAN', 'MI', 'ERIC', 'PAUL', 'FLORENTIN', 'M', '2017-08-20 00:00:00', 7, 'CARACAL', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa I', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXX', 890, 36, '2019-09-01 00:00:00'),
(6160522035280, 'STOICULESCU', 'N', 'EVA', 'IOANA', 'MARIA', 'F', '2016-05-22 00:00:00', 8, 'PITEŞTI', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa a II-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVII', 839, 28, '2022-09-01 00:00:00'),
(5170815035299, 'STOICULESCU', 'ND', 'LUCA', 'ANDREI', NULL, 'M', '2017-08-15 00:00:00', 7, 'PITEŞTI', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa I', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXX', 890, 37, '2022-09-12 00:00:00'),
(5131118280878, 'STROIULEASA', 'V', 'CĂTĂLIN', 'MARIAN', NULL, 'M', '2013-11-18 00:00:00', 11, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa a IV-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXI', 752, 11, '2019-12-18 00:00:00'),
(6151222280860, 'STUPARU', 'N', 'KARINA', 'DANIELA', 'GABRIELA', 'F', '2015-12-22 00:00:00', 9, 'CARACAL', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa a III-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVI', 792, 30, '2017-09-01 00:00:00'),
(5091106280871, 'SULGER', 'CA', 'MĂDĂLIN', 'GABRIEL', NULL, 'M', '2009-11-06 00:00:00', 15, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a VIII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXV', 793, 18, '2015-09-01 00:00:00'),
(6150119160061, 'SULGER', 'E', 'ANA', 'MARIA', NULL, 'F', '2015-01-19 00:00:00', 10, 'CRAIOVA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa a III-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVI', 792, 18, '2017-09-01 00:00:00'),
(6100413160039, 'SULGER', 'E', 'ELENA', 'DENISA', NULL, 'F', '2010-04-13 00:00:00', 14, 'CRAIOVA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a VIII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXV', 793, 19, '2014-09-01 00:00:00'),
(6100602284544, 'SULGER', 'M', 'ALINA', 'ELENA', NULL, 'F', '2010-06-02 00:00:00', 14, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a VIII-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXV', 793, 44, '2014-09-01 00:00:00'),
(5070124284551, 'SULGER', 'M', 'MARIUS', 'NICOLAE', NULL, 'M', '2007-01-24 00:00:00', 18, 'MUNICIPIUL SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XI-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXIX', 841, 23, '2022-09-01 00:00:00'),
(6101229284567, 'SULGER', 'V', 'ALEXANDRA', NULL, NULL, 'F', '2010-12-29 00:00:00', 14, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a VII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVIII', 840, 18, '2018-11-29 00:00:00'),
(6131209284552, 'SURDAȘ', 'F', 'ANA-MARIA', 'NICOLETA', NULL, 'F', '2013-12-09 00:00:00', 11, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa a IV-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXI', 752, 12, '2016-09-01 00:00:00'),
(5080801280856, 'ȘCOLARU', 'N', 'SORIN', 'GABRIEL', NULL, 'M', '2008-08-01 00:00:00', 16, 'MUNICIPIUL CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a X-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXXII', 892, 52, '2023-09-01 00:00:00'),
(5081114284561, 'ŞERBAN', 'NV', 'ALBERT', 'MIHAI', 'VALENTIN', 'M', '2008-11-14 00:00:00', 16, 'BALŞ', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XI-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXIX', 841, 51, '2022-09-01 00:00:00'),
(5180323284540, 'ȘERBAN', 'C', 'GABRIEL', NULL, NULL, 'M', '2018-03-23 00:00:00', 6, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa pregătitoare', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXIII', 911, 25, '2022-09-01 00:00:00'),
(6130831280851, 'ȘERBAN', 'C', 'MARIA-AIDA', NULL, NULL, 'F', '2013-08-31 00:00:00', 11, 'CARACAL', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a V-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXIV', 912, 30, '2016-09-01 00:00:00'),
(5180323284559, 'ȘERBAN', 'C', 'MIHĂIȚĂ', NULL, NULL, 'M', '2018-03-23 00:00:00', 6, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa pregătitoare', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXIII', 911, 26, '2022-09-05 00:00:00'),
(6101016284558, 'ȘERBAN', 'CC', 'MARIA', 'LUIZA', NULL, 'F', '2010-10-16 00:00:00', 14, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a VIII-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXV', 793, 45, '2014-09-01 00:00:00'),
(6080218160018, 'ȘERBAN', 'CI', 'ANDREEA', 'ALEXANDRA', NULL, 'F', '2008-02-18 00:00:00', 17, 'CRAIOVA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XI-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXIX', 841, 24, '2022-09-01 00:00:00'),
(6110221160064, 'ȘERBAN', 'CI', 'CRISTINA', 'VALENTINA', NULL, 'F', '2011-02-21 00:00:00', 14, 'CRAIOVA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a VIII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXV', 793, 20, '2014-09-01 00:00:00'),
(6190515160031, 'ȘERBAN', 'CI', 'ȘTEFANIA', 'ISABELA', NULL, 'F', '2019-05-15 00:00:00', 5, 'CRAIOVA', 'GRĂDINIȚA CU PROGRAM NORMAL GRECI-OSICA DE SUS', 'Preșcolar', 'Grupa mare', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-01 00:00:00'),
(5081213280856, 'ŞOANCĂ', 'C', 'CONSTANTIN', 'MARIAN', NULL, 'M', '2008-12-13 00:00:00', 16, 'MUNICIPIUL CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a IX-a', 'B', 'Transferat', '2024-09-01 00:00:00', '2024-11-03 00:00:00', 'Real', 'Științe ale naturii', 'Real', NULL, NULL, NULL, '2024-11-04 00:00:00'),
(6090214280858, 'ȘOANCĂ', 'N', 'SABRINA', 'PATRYCYA', NULL, 'F', '2009-02-14 00:00:00', 16, 'MUNICIPIUL CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a IX-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXXV', 913, 51, '2024-09-01 00:00:00'),
(6070406284549, 'ȘOARECE', 'C', 'ELENA', 'RUXANDRA', NULL, 'F', '2007-04-06 00:00:00', 17, 'MUNICIPIUL SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XI-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXIX', 841, 26, '2022-09-01 00:00:00'),
(5120625284572, 'ȘOARECE', 'S', 'ROBERT', 'NICOLAE', NULL, 'M', '2012-06-25 00:00:00', 12, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a V-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-09-01 00:00:00'),
(6060728280858, 'ŞOLOGAN', 'G.', 'MARIA-GIULIA', NULL, NULL, 'F', '2006-07-28 00:00:00', 18, 'MUNICIPIUL CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXIV', 794, 22, '2021-09-01 00:00:00'),
(6090719280851, 'ȘOLOGAN', 'G', 'TEODORA', 'MIHAELA', NULL, 'F', '2009-07-19 00:00:00', 15, 'MUNICIPIUL CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a IX-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXXV', 913, 17, '2024-09-01 00:00:00'),
(6100127280869, 'ŞOŞOI', 'D', 'NELA', 'MARIA', NULL, 'F', '2010-01-27 00:00:00', 15, 'CARACAL', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a VII-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVIII', 840, 38, '2015-09-01 00:00:00'),
(5110708284540, 'ȘOȘOI', 'D', 'VIOREL', 'MARIAN', NULL, 'M', '2011-07-08 00:00:00', 13, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a VI-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXI', 891, 30, '2016-09-12 00:00:00'),
(6060606280866, 'ȘTEFAN', 'M.', 'IONELA-OLIVIA', NULL, NULL, 'F', '2006-06-06 00:00:00', 18, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXIV', 794, 21, '2021-09-01 00:00:00'),
(5190403280851, 'ȘTEFĂNACHE', 'BT', 'MATEO', 'GABRIEL', NULL, 'M', '2019-04-03 00:00:00', 5, 'CARACAL', 'GRĂDINIȚA CU PROGRAM NORMAL OSICA DE SUS', 'Preșcolar', 'Grupa mare', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-01 00:00:00'),
(5140721284547, 'ȘTEFĂNOIU', 'G', 'ANDREI', 'FLORIN', NULL, 'M', '2014-07-21 00:00:00', 10, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa a IV-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXI', 652, 13, '2019-09-27 00:00:00'),
(5141115284541, 'TALAS', 'A', 'RAUL', 'GABRIEL', NULL, 'M', '2014-11-15 00:00:00', 10, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa a IV-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXI', 752, 31, '2022-09-02 00:00:00'),
(6110823160061, 'TANISLAV', 'T', 'ISABELA', 'IOANA', NULL, 'F', '2011-08-23 00:00:00', 13, 'CRAIOVA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a VI-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXI', 891, 14, '2014-09-01 00:00:00'),
(6081003809252, 'TĂNASIE', 'C', 'ALEXANDRA', 'ELENA', NULL, 'F', '2008-10-03 00:00:00', 16, 'STRĂINĂTATE', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a X-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXXII', 892, 20, '2023-09-01 00:00:00'),
(6081210280851, 'TĂNĂSESCU', 'DI', 'SORINA', 'ADRIANA', NULL, 'F', '2008-12-10 00:00:00', 16, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a IX-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXXV', 913, 52, '2024-09-01 00:00:00'),
(5051127280862, 'TĂNĂSESCU', 'I.', 'ANDREI-VALENTIN', NULL, NULL, 'M', '2005-11-27 00:00:00', 19, 'MUNICIPIUL CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXIV', 794, 23, '2021-09-01 00:00:00'),
(6201203284582, 'TEODORESCU', 'L', 'CORINA', 'MARIA', NULL, 'F', '2020-12-03 00:00:00', 4, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL OSICA DE SUS', 'Preșcolar', 'Grupa mijlocie', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-01 00:00:00'),
(5110604281604, 'TEODORESCU', 'V', 'RAREȘ', 'ALESSANDRO', NULL, 'M', '2011-06-04 00:00:00', 13, 'STRĂINĂTATE', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a VIII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXV', 793, 21, '2020-09-14 00:00:00'),
(5101112284567, 'TISMĂNARU', 'FC', 'NICOLAE', 'VALENTIN', NULL, 'M', '2010-11-12 00:00:00', 14, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a VII-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXV', 793, 46, '2014-09-01 00:00:00'),
(5090512284541, 'TÎRCĂ', 'A', 'ALEXANDRU', 'IONUȚ', NULL, 'M', '2009-05-12 00:00:00', 15, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a IX-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXXV', 913, 18, '2024-09-01 00:00:00'),
(5091104284548, 'TÎRCĂ', 'ȘV', 'ERIC', 'VALENTIN', 'CONSTANTIN', 'M', '2009-11-04 00:00:00', 15, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a VIII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXV', 793, 22, '2018-09-20 00:00:00'),
(6080121280853, 'TOMA', 'C', 'GEORGIANA', 'DENISA', NULL, 'F', '2008-01-21 00:00:00', 17, 'MUNICIPIUL CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a X-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXXII', 892, 21, '2023-09-01 00:00:00'),
(6190801284569, 'TOMA', 'D', 'FLAVIA', 'DANIELA', NULL, 'F', '2019-08-01 00:00:00', 5, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL GRECI-OSICA DE SUS', 'Preșcolar', 'Grupa mare', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-01 00:00:00'),
(6180401284558, 'TOMA', 'D', 'LARISA', 'MARIA', NULL, 'F', '2018-04-01 00:00:00', 6, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa pregătitoare', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXIII', 911, 27, '2021-09-13 00:00:00'),
(6091209160049, 'TOMA', 'F.M.', 'CĂTĂLINA-GEORGIANA', NULL, NULL, 'F', '2009-12-09 00:00:00', 15, 'STRĂINĂTATE', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a IX-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXXV', 913, 19, '2024-09-01 00:00:00'),
(6100626803738, 'TOMA', 'I', 'DENISA', 'IULIANA', NULL, 'F', '2010-06-26 00:00:00', 14, 'STRĂINĂTATE', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a VIII-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXV', 793, 47, '2015-02-09 00:00:00'),
(6170613284574, 'TOMA', 'I', 'SOFIA', 'MARIA', 'ALEXANDRA', 'F', '2017-06-13 00:00:00', 7, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa I', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXX', 890, 38, '2020-09-14 00:00:00'),
(6201108284541, 'TOMA', 'IA', 'ANAIS', 'VICTORIA', NULL, 'F', '2020-11-08 00:00:00', 4, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL OSICA DE SUS', 'Preșcolar', 'Grupa mijlocie', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-01 00:00:00'),
(5190113280856, 'TOMA', 'IA', 'MATEI', 'ALEXANDRU', NULL, 'M', '2019-01-13 00:00:00', 6, 'CARACAL', 'GRĂDINIȚA CU PROGRAM NORMAL OSICA DE SUS', 'Preșcolar', 'Grupa mare', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-01 00:00:00'),
(5200218280856, 'TOMA', 'MF', 'PATRIK', 'ANDREI', NULL, 'M', '2020-02-18 00:00:00', 5, 'CARACAL', 'GRĂDINIȚA CU PROGRAM NORMAL OSICA DE SUS', 'Preșcolar', 'Grupa mare', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-05 00:00:00'),
(5060830280871, 'TOMA', 'V', 'MARIUS', 'ANDREI', NULL, 'M', '2006-08-30 00:00:00', 18, 'MUNICIPIUL CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XI-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXIX', 841, 53, '2022-09-01 00:00:00'),
(6090207160018, 'TOMESCU', 'D', 'KARINA', 'ALEXANDRA', 'MIHAELA', 'F', '2009-02-07 00:00:00', 16, 'MUNICIPIUL CRAIOVA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a IX-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXXV', 913, 20, '2024-09-01 00:00:00'),
(5110609280851, 'TONCEA', 'IP', 'ALBERT', 'GABRIEL', NULL, 'M', '2011-06-09 00:00:00', 13, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a VII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVIII', 840, 19, '2015-02-10 00:00:00'),
(5160916280859, 'TONCEA', 'IP', 'DENIS', 'NICOLAE', NULL, 'M', '2016-09-16 00:00:00', 8, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa a II-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVII', 839, 15, '2019-09-01 00:00:00'),
(6100903284556, 'TORCEA', 'A', 'MIRUNA', 'ANDREEA', NULL, 'F', '2010-09-03 00:00:00', 14, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a VIII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXV', 793, 23, '2014-09-01 00:00:00'),
(5090104284547, 'TRANCĂ', 'V.', 'SORIN-IONUȚ', NULL, NULL, 'M', '2009-01-04 00:00:00', 16, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a IX-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXXV', 913, 53, '2024-09-01 00:00:00'),
(5100302410181, 'TRANCĂ-BEYAZKILINC', 'N', 'NICOLAE', 'ALEXANDRU', NULL, 'M', '2010-03-02 00:00:00', 15, 'BUCUREŞTI SECTORUL 1', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a VIII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXV', 793, 24, '2019-02-11 00:00:00'),
(6180806280858, 'TRAȘCĂ', 'AC', 'ALEXANDRA', 'CATALEYA', NULL, 'F', '2018-08-06 00:00:00', 6, 'CARACAL', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa pregătitoare', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXIII', 911, 28, '2021-09-01 00:00:00'),
(5201219284541, 'TRAȘCĂ', 'AC', 'LUCA', 'GABRIEL', NULL, 'M', '2020-12-19 00:00:00', 4, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL OSICA DE SUS', 'Preșcolar', 'Grupa mijlocie', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-01 00:00:00'),
(6150505280851, 'TRAȘCĂ', 'I', 'ANA', 'MARIA', 'LAURA', 'F', '2015-05-05 00:00:00', 9, 'CARACAL', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa a II-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVII', 839, 29, '2022-09-01 00:00:00'),
(6150522284542, 'TRAȘCĂ', 'I', 'ERICA', 'CRISTINA', NULL, 'F', '2015-05-22 00:00:00', 9, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa a III-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVI', 792, 32, '2017-09-01 00:00:00'),
(5191217280851, 'TRAȘCĂ', 'IC', 'VLADIMIR', 'GEORGIAN', NULL, 'M', '2019-12-17 00:00:00', 5, 'CARACAL', 'GRĂDINIȚA CU PROGRAM NORMAL OSICA DE SUS', 'Preșcolar', 'Grupa mare', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-01 00:00:00'),
(5140715280860, 'TRAȘCĂ', 'L', 'ANDREI', 'SILVIU', NULL, 'M', '2014-07-15 00:00:00', 10, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa a IV-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXI', 652, 14, '2019-09-27 00:00:00'),
(5200301280855, 'TRECERE', 'GE', 'NICOLAS', 'ANDREI', NULL, 'M', '2020-03-01 00:00:00', 5, 'CARACAL', 'GRĂDINIȚA CU PROGRAM NORMAL OSICA DE SUS', 'Preșcolar', 'Grupa mică', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-01 00:00:00'),
(5080504284551, 'TRECERE', 'I', 'FABIAN', 'CRISTIAN', NULL, 'M', '2008-05-04 00:00:00', 16, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a X-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXXII', 892, 23, '2023-09-01 00:00:00'),
(5180619284577, 'TRECERE', 'M', 'DARIUS', 'ANDREI', NULL, 'M', '2018-06-19 00:00:00', 6, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa pregătitoare', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXIII', 911, 12, '2020-09-14 00:00:00'),
(6111110284561, 'TRECERE', 'M', 'MIHAELA', 'ERIKA', NULL, 'F', '2011-11-10 00:00:00', 13, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a VII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVIII', 840, 20, '2014-09-01 00:00:00'),
(5080713284551, 'TRECERE', 'N', 'DARIUS', 'NICOLAE', NULL, 'M', '2008-07-13 00:00:00', 16, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a X-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXXII', 892, 22, '2023-09-01 00:00:00'),
(5190109809545, 'TREPĂDUȘ', 'VF', 'PATRIK', 'ANDREI', NULL, 'M', '2019-01-09 00:00:00', 6, 'STRĂINĂTATE', 'GRĂDINIȚA CU PROGRAM NORMAL VLĂDULENI', 'Preșcolar', 'Grupa mare', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-01 00:00:00'),
(6211216284541, 'TREPĂDUȘ', 'VF', 'REBECA-MARIA', NULL, NULL, 'F', '2021-12-16 00:00:00', 3, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL VLĂDULENI', 'Preșcolar', 'Grupa mică', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-01 00:00:00'),
(5140518284543, 'TRIFU', 'I', 'LAURENȚIU', NULL, NULL, 'M', '2014-05-18 00:00:00', 10, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa a IV-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXI', 752, 26, '2016-09-01 00:00:00'),
(5160622284542, 'TRIFU', 'RM', 'FLORIAN', 'IONUȚ', NULL, 'M', '2016-06-22 00:00:00', 8, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa a II-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVII', 839, 30, '2020-12-08 00:00:00'),
(6110821281606, 'TRIFU', 'RM', 'LOREDANA', 'ROBERTA', NULL, 'F', '2011-08-21 00:00:00', 13, 'STRĂINĂTATE', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a VII-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVIII', 840, 40, '2020-12-08 00:00:00'),
(6211113284558, 'TRIFU', 'RM', 'NICOLETA', 'FLORENTINA', NULL, 'F', '2021-11-13 00:00:00', 3, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL OSICA DE SUS', 'Preșcolar', 'Grupa mijlocie', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-01 00:00:00'),
(5060722284541, 'TRIŢESCU', 'C.G.', 'NICOLAE-ANDREI', NULL, NULL, 'M', '2006-07-22 00:00:00', 18, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XII-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXIV', 794, 48, '2021-09-01 00:00:00'),
(5150531280853, 'TRUȚĂ', 'FM', 'CONSTANTIN', 'MARIUS', NULL, 'M', '2015-05-31 00:00:00', 9, 'CARACAL', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa a III-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVI', 792, 33, '2017-09-11 00:00:00'),
(6200519284551, 'TUDOR', 'DȘ', 'ANASTASIA', 'IOANA', NULL, 'F', '2020-05-19 00:00:00', 4, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL VLĂDULENI', 'Preșcolar', 'Grupa mijlocie', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-01 00:00:00'),
(6090422284571, 'TUDOR', 'F', 'FLORENTINA', 'CĂTĂLINA', NULL, 'F', '2009-04-22 00:00:00', 15, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a IX-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXXV', 913, 21, '2024-09-01 00:00:00'),
(6190723284571, 'TUDOR', 'M', 'DARIA', 'MARIA', NULL, 'F', '2019-07-23 00:00:00', 5, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL VLĂDULENI', 'Preșcolar', 'Grupa mare', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-01 00:00:00'),
(5220124801151, 'TUDOR', 'M', 'DARIUS-IONUȚ', NULL, NULL, 'M', '2022-01-24 00:00:00', 3, 'STRĂINĂTATE', 'GRĂDINIȚA CU PROGRAM NORMAL VLĂDULENI', 'Preșcolar', 'Grupa mică', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-01 00:00:00'),
(7060616280011, 'TUNC', 'H.', 'MUSTAFA', NULL, NULL, 'M', '2006-06-16 00:00:00', 18, 'STRĂINĂTATE', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXIV', 794, 24, '2021-09-01 00:00:00'),
(6090211284566, 'TUTELCĂ', 'G.A.', 'MIRELA-CRISTINA', NULL, NULL, 'F', '2009-02-11 00:00:00', 16, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a IX-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXXV', 913, 54, '2024-09-01 00:00:00'),
(5141124284552, 'ȚAPU', 'A', 'FLORIN', 'CRISTIAN', NULL, 'M', '2014-11-24 00:00:00', 10, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa a III-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVI', 792, 19, '2017-09-01 00:00:00'),
(6111007284553, 'ȚAPU', 'AM', 'EMILIA', 'ELENA', NULL, 'F', '2011-10-07 00:00:00', 13, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a VII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVIII', 840, 21, '2014-09-01 00:00:00'),
(6210420284555, 'ȚAPU', 'AM', 'SOFIA-MARIA-ALEXANDRA', NULL, NULL, 'F', '2021-04-20 00:00:00', 3, 'OSTROV', 'GRĂDINIȚA CU PROGRAM NORMAL VLĂDULENI', 'Preșcolar', 'Grupa mică', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-01 00:00:00'),
(6121226284557, 'ȚAPU', 'I', 'SIMONA', 'ANDREEA', NULL, 'F', '2012-12-26 00:00:00', 12, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a VI-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXI', 891, 31, '2015-09-01 00:00:00'),
(6080909284543, 'ȚAPU', 'I.', 'MARIA-ALEXANDRA', NULL, NULL, 'F', '2008-09-09 00:00:00', 16, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a IX-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXXV', 913, 22, '2024-09-01 00:00:00'),
(6171007280854, 'ȚÂȚU', 'F', 'TANIA', 'MARIA', NULL, 'F', '2017-10-07 00:00:00', 7, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Primar', 'Clasa I', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXX', 890, 18, '2019-09-01 00:00:00'),
(5121028280863, 'ȚÂȚU', 'F', 'TIBERIU', 'NICUSOR', NULL, 'M', '2012-10-28 00:00:00', 12, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a V-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXIV', 912, 18, '2015-09-01 00:00:00'),
(6080127280851, 'ŢENEA', 'IM', 'TEODORA', 'ROBERTA', 'DARIA', 'F', '2008-01-27 00:00:00', 17, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a X-a', 'A', 'Transferat', '2024-09-01 00:00:00', '2024-09-08 00:00:00', 'Umanist', 'Filologie', 'Umanist', NULL, NULL, NULL, '2024-09-09 00:00:00'),
(6100726280851, 'ȚURLUI', 'D', 'VIORICA', 'ELENA', NULL, 'F', '2010-07-26 00:00:00', 14, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a VIII-a', 'A', 'Situaţie şcolară deschisă', '2024-11-04 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-04 00:00:00'),
(5121210280863, 'UDEANU', 'DȘ', 'STELICA', 'VALENTIN', NULL, 'M', '2012-12-10 00:00:00', 12, 'CARACAL', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a V-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXIV', 912, 31, '2015-09-01 00:00:00'),
(6090702284561, 'ULIERU', 'C', 'DIANA', 'MARIA', NULL, 'F', '2009-07-02 00:00:00', 15, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a IX-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXXV', 913, 23, '2024-09-01 00:00:00'),
(5090901280874, 'VASILESCU', 'R.A.', 'MIHAI-ALEXANDRU', NULL, NULL, 'M', '2009-09-01 00:00:00', 15, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a IX-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXXV', 913, 24, '2024-09-01 00:00:00'),
(5061010284544, 'VĂDUVA', 'G', 'CRISTO', 'GIULIAN', NULL, 'M', '2006-10-10 00:00:00', 18, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a X-a', 'B', 'Transferat', '2024-09-01 00:00:00', '2024-09-05 00:00:00', 'Real', 'Științe ale naturii', 'Real', NULL, NULL, NULL, '2024-09-06 00:00:00'),
(5090322284541, 'VĂRZARU', 'A.', 'ALEXANDRU-IONUȚ', NULL, NULL, 'M', '2009-03-22 00:00:00', 15, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a IX-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXXV', 913, 55, '2024-09-01 00:00:00'),
(5161129280854, 'VĂRZARU', 'C', 'SEBASTIAN', 'ANDREI', NULL, 'M', '2016-11-29 00:00:00', 8, 'CARACAL', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa a II-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXVII', 839, 31, '2018-09-10 00:00:00'),
(6090213284545, 'VĂRZARU', 'C.', 'HERMINA-VALENTINA', NULL, NULL, 'F', '2009-02-13 00:00:00', 16, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a IX-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXXV', 913, 25, '2024-09-01 00:00:00'),
(6080101284550, 'VĂRZARU', 'G', 'DARIA', 'NICOLETA', NULL, 'F', '2008-01-01 00:00:00', 17, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a X-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXXII', 892, 25, '2023-09-01 00:00:00'),
(5121101284573, 'VĂRZARU', 'G', 'DAVID', 'IONUȚ', 'GABRIEL', 'M', '2012-11-01 00:00:00', 12, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a V-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXIV', 912, 19, '2015-09-01 00:00:00'),
(5130313284552, 'VĂRZARU', 'GG', 'DARIUS', 'ȘTEFAN', NULL, 'M', '2013-03-13 00:00:00', 12, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a VI-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXI', 891, 32, '2015-09-01 00:00:00'),
(6080209284572, 'VĂRZARU', 'GG', 'DELIA', 'ȘTEFANIA', NULL, 'F', '2008-02-09 00:00:00', 17, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a X-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXXII', 892, 26, '2023-09-01 00:00:00'),
(5070316280867, 'VĂTAFU', 'CC', 'PETRICĂ', 'ANGEL', NULL, 'M', '2007-03-16 00:00:00', 18, 'MUNICIPIUL CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XI-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXIX', 841, 55, '2022-09-01 00:00:00'),
(5091102280860, 'VELEA', 'A', 'MANUEL', NULL, NULL, 'M', '2009-11-02 00:00:00', 15, 'MUNICIPIUL CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a IX-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXXV', 913, 26, '2024-09-01 00:00:00'),
(5091221284552, 'VÎLCEA', 'AA', 'LUCIAN', 'SORIN', 'ALEXANDRU', 'M', '2009-12-21 00:00:00', 15, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Gimnazial', 'Clasa a VIII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXV', 793, 25, '2019-02-26 00:00:00'),
(6090309280851, 'VLAD', 'M', 'DIANA', 'MIHAELA', NULL, 'F', '2009-03-09 00:00:00', 16, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a IX-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXXV', 913, 27, '2024-09-01 00:00:00'),
(6090906280853, 'VLAD', 'M', 'MARIA', 'MĂDĂLINA', NULL, 'F', '2009-09-06 00:00:00', 15, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a IX-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXXV', 913, 28, '2024-09-01 00:00:00'),
(6080409280855, 'VLAD', 'S', 'VICTORIA', 'CODRUŢA', 'MĂDĂLINA', 'F', '2008-04-09 00:00:00', 16, 'MUNICIPIUL CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a X-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXXII', 892, 53, '2023-09-01 00:00:00'),
(5060715280879, 'VLAD', 'S.', 'BOGDAN-SILVIU-TEODOR', NULL, NULL, 'M', '2006-07-15 00:00:00', 18, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXIV', 794, 25, '2021-09-01 00:00:00'),
(5201023284551, 'VLĂDAIA', 'N', 'DARIUS', 'ANDREI', NULL, 'M', '2020-10-23 00:00:00', 4, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL VLĂDULENI', 'Preșcolar', 'Grupa mijlocie', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-01 00:00:00'),
(5060605284543, 'VLĂDOI', 'C.F.', 'ALEXANDRU-IONUȚ', NULL, NULL, 'M', '2006-06-05 00:00:00', 18, 'MUNICIPIUL SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XII-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXIV', 794, 26, '2021-09-01 00:00:00'),
(5181220284566, 'VLĂDOI', 'F', 'COSMIN', 'MARIAN', NULL, 'M', '2018-12-20 00:00:00', 6, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL VLĂDULENI', 'Preșcolar', 'Grupa mare', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-01 00:00:00'),
(6190528284568, 'VOINEA', 'AV', 'DARIA', 'NICOLETA', NULL, 'F', '2019-05-28 00:00:00', 5, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL OSICA DE SUS', 'Preșcolar', 'Grupa mare', 'A', 'Situaţie şcolară deschisă', '2024-11-18 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-01 00:00:00'),
(6190528284568, 'VOINEA', 'AV', 'DARIA', 'NICOLETA', NULL, 'F', '2019-05-28 00:00:00', 5, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL VLĂDULENI', 'Preșcolar', 'Grupa mare', 'A', 'Transferat', '2024-09-02 00:00:00', '2024-11-17 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-01 00:00:00'),
(6190528284568, 'VOINEA', 'AV', 'DARIA', 'NICOLETA', NULL, 'F', '2019-05-28 00:00:00', 5, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL GRECI-OSICA DE SUS', 'Preșcolar', 'Grupa mare', 'A', 'Transferat', '2024-09-01 00:00:00', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-01 00:00:00'),
(6130707160031, 'VOINEA', 'AV', 'FLORENTINA', 'CARLA', NULL, 'F', '2013-07-07 00:00:00', 11, 'CRAIOVA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Gimnazial', 'Clasa a V-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXXIV', 912, 32, '2016-09-01 00:00:00'),
(6060807280866, 'VOINEA', 'I.', 'ANDREEA-ROBERTA', NULL, NULL, 'F', '2006-08-07 00:00:00', 18, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XII-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXIV', 794, 49, '2021-09-01 00:00:00'),
(6200502284547, 'VOINEA', 'IT', 'ANDRA', 'ȘTEFANIA', NULL, 'F', '2020-05-02 00:00:00', 4, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL VLĂDULENI', 'Preșcolar', 'Grupa mijlocie', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-01 00:00:00'),
(5080404284541, 'VOINEA', 'IT', 'MARCO', 'ROBERTO', NULL, 'M', '2008-04-04 00:00:00', 16, 'SLATINA', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a X-a', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Umanist', 'Filologie', 'Umanist', 'XXXII', 892, 27, '2023-09-01 00:00:00'),
(5070424280852, 'VOINEA', 'ML', 'ALEXANDRU', 'ANDREI', NULL, 'M', '2007-04-24 00:00:00', 17, 'MUNICIPIUL CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XI-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXIX', 841, 56, '2022-09-01 00:00:00'),
(6060716280857, 'ZAMFIR', 'C.', 'ALEXANDRA-CRISTINA', NULL, NULL, 'F', '2006-07-16 00:00:00', 18, 'CARACAL', 'LICEUL TEORETIC \"ION GH. ROȘCA\" OSICA DE SUS', 'Liceal', 'Clasa a XII-a', 'B', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, 'Real', 'Științe ale naturii', 'Real', 'XXIV', 794, 50, '2021-09-01 00:00:00'),
(5131028284551, 'ZAMFIR', 'R', 'MARIO', 'NICOLAE', NULL, 'M', '2013-10-28 00:00:00', 11, 'SLATINA', 'ȘCOALA GIMNAZIALĂ OSICA DE SUS', 'Primar', 'Clasa a IV-a', 'O', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, 'XXI', 752, 27, '2017-09-11 00:00:00'),
(5191127284561, 'ZIDARU', 'NM', 'ALBERT', 'GEORGIAN', 'AUGUSTIN', 'M', '2019-11-27 00:00:00', 5, 'SLATINA', 'GRĂDINIȚA CU PROGRAM NORMAL GRECI-OSICA DE SUS', 'Preșcolar', 'Grupa mare', 'A', 'Situaţie şcolară deschisă', '2024-09-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-01 00:00:00');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `users`
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
-- Eliminarea datelor din tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Radoi Florin', 'radoiflorin@gmail.com', NULL, '$2y$12$EBGSV0LD268HpaRD7p80E.FV4l3l.If4keOfZrK6miNSflgEsdUwK', NULL, '2025-03-24 11:10:08', '2025-03-24 11:10:08');

--
-- Indexuri pentru tabele eliminate
--

--
-- Indexuri pentru tabele `adeverintas`
--
ALTER TABLE `adeverintas`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexuri pentru tabele `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexuri pentru tabele `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `elevs`
--
ALTER TABLE `elevs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `elevs_cnp_unique` (`cnp`);

--
-- Indexuri pentru tabele `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexuri pentru tabele `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexuri pentru tabele `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexuri pentru tabele `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexuri pentru tabele `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pentru tabele eliminate
--

--
-- AUTO_INCREMENT pentru tabele `adeverintas`
--
ALTER TABLE `adeverintas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pentru tabele `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pentru tabele `elevs`
--
ALTER TABLE `elevs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pentru tabele `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pentru tabele `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pentru tabele `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pentru tabele `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pentru tabele `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
