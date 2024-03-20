-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 20, 2024 at 07:20 AM
-- Server version: 8.0.30
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pasarcabai`
--

-- --------------------------------------------------------

--
-- Table structure for table `aturan_kualitas`
--

CREATE TABLE `aturan_kualitas` (
  `id` bigint UNSIGNED NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilai_min` double NOT NULL,
  `nilai_max` double NOT NULL,
  `poin` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `aturan_kualitas`
--

INSERT INTO `aturan_kualitas` (`id`, `keterangan`, `nilai_min`, `nilai_max`, `poin`, `created_at`, `updated_at`) VALUES
(1, 'warna', 0, 94, 1, '2023-03-12 21:34:57', '2023-03-12 21:34:57'),
(2, 'warna', 95, 100, 3, '2023-03-12 21:34:57', '2023-03-12 21:34:57'),
(3, 'seragam', 0, 95, 1, '2023-03-12 21:34:57', '2023-03-12 21:34:57'),
(4, 'seragam', 96, 97, 2, '2023-03-12 21:34:57', '2023-03-12 21:34:57'),
(5, 'seragam', 98, 100, 3, '2023-03-12 21:34:57', '2023-03-12 21:34:57'),
(6, 'panjang', 0, 8, 1, '2023-03-12 21:34:57', '2023-03-12 21:34:57'),
(7, 'panjang', 9, 11, 2, '2023-03-12 21:34:57', '2023-03-12 21:34:57'),
(8, 'panjang', 12, 20, 3, '2023-03-12 21:34:57', '2023-03-12 21:34:57'),
(9, 'pangkal', 0, 0.9, 1, '2023-03-12 21:34:57', '2023-03-12 21:34:57'),
(10, 'pangkal', 1, 1.3, 2, '2023-03-12 21:34:57', '2023-03-12 21:34:57'),
(11, 'pangkal', 1.4, 2, 3, '2023-03-12 21:34:57', '2023-03-12 21:34:57'),
(12, 'kotor', 3, 5, 1, '2023-03-12 21:34:57', '2023-03-12 21:34:57'),
(13, 'kotor', 1.1, 2.9, 2, '2023-03-12 21:34:57', '2023-03-12 21:34:57'),
(14, 'kotor', 0, 1, 3, '2023-03-12 21:34:57', '2023-03-12 21:34:57'),
(15, 'busuk', 0, 0.9, 3, '2023-03-12 21:34:57', '2023-03-12 21:34:57'),
(16, 'busuk', 1, 1.9, 2, '2023-03-12 21:34:57', '2023-03-12 21:34:57'),
(17, 'busuk', 2, 5, 1, '2023-03-12 21:34:57', '2023-03-12 21:34:57');

-- --------------------------------------------------------

--
-- Table structure for table `aturan_mutus`
--

CREATE TABLE `aturan_mutus` (
  `id` bigint UNSIGNED NOT NULL,
  `total_poin_min` int NOT NULL,
  `total_poin_max` int NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `aturan_mutus`
--

INSERT INTO `aturan_mutus` (`id`, `total_poin_min`, `total_poin_max`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 0, 7, 'Mutu III', '2023-03-12 21:34:57', '2023-03-12 21:34:57'),
(2, 8, 13, 'Mutu II', '2023-03-12 21:34:57', '2023-03-12 21:34:57'),
(3, 14, 20, 'Mutu I', '2023-03-12 21:34:57', '2023-03-12 21:34:57');

-- --------------------------------------------------------

--
-- Table structure for table `desas`
--

CREATE TABLE `desas` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_desa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kecamatan_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `desas`
--

INSERT INTO `desas` (`id`, `nama_desa`, `kecamatan_id`, `created_at`, `updated_at`) VALUES
(1, 'Karanggede', 4, '2023-03-12 21:34:57', '2023-03-12 21:34:57'),
(2, 'Kertodeso', 4, '2023-03-12 21:34:57', '2023-03-12 21:34:57'),
(3, 'Krubungan', 4, '2023-03-12 21:34:57', '2023-03-12 21:34:57'),
(4, 'Lembupurwo', 4, '2023-03-12 21:34:57', '2023-03-12 21:34:57'),
(5, 'Mangunranan', 4, '2023-03-12 21:34:57', '2023-03-12 21:34:57'),
(6, 'Mirit', 4, '2023-03-12 21:34:57', '2023-03-12 21:34:57'),
(7, 'Miritpetikusan', 4, '2023-03-12 21:34:57', '2023-03-12 21:34:57'),
(8, 'Ngabeyan', 4, '2023-03-12 21:34:57', '2023-03-12 21:34:57'),
(9, 'Patukgawemulyo', 4, '2023-03-12 21:34:57', '2023-03-12 21:34:57'),
(10, 'Patukrejomulyo', 4, '2023-03-12 21:34:57', '2023-03-12 21:34:57'),
(11, 'Pekutan', 4, '2023-03-12 21:34:57', '2023-03-12 21:34:57'),
(12, 'Rowo', 4, '2023-03-12 21:34:57', '2023-03-12 21:34:57'),
(13, 'Sarwogadung', 4, '2023-03-12 21:34:57', '2023-03-12 21:34:57'),
(14, 'Selotumpeng', 4, '2023-03-12 21:34:57', '2023-03-12 21:34:57'),
(15, 'Singoyudan', 4, '2023-03-12 21:34:57', '2023-03-12 21:34:57'),
(16, 'Sitibentar', 4, '2023-03-12 21:34:57', '2023-03-12 21:34:57'),
(17, 'Tlogodepok', 4, '2023-03-12 21:34:57', '2023-03-12 21:34:57'),
(18, 'Tlogopragoto', 4, '2023-03-12 21:34:57', '2023-03-12 21:34:57'),
(19, 'Wergonayan', 4, '2023-03-12 21:34:57', '2023-03-12 21:34:57'),
(20, 'Winong', 4, '2023-03-12 21:34:57', '2023-03-12 21:34:57'),
(21, 'Wirogaten', 4, '2023-03-12 21:34:57', '2023-03-12 21:34:57'),
(22, 'Wiromartan', 4, '2023-03-12 21:34:57', '2023-03-12 21:34:57'),
(23, 'desa test', 5, '2023-03-13 06:12:51', '2023-03-13 06:12:51');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gudangs`
--

CREATE TABLE `gudangs` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_gudang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kuota` int NOT NULL,
  `terisi` int NOT NULL DEFAULT '0',
  `desa_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gudangs`
--

INSERT INTO `gudangs` (`id`, `nama_gudang`, `kuota`, `terisi`, `desa_id`, `created_at`, `updated_at`) VALUES
(1, 'Maju Jaya', 1000000, 0, 6, '2023-03-12 21:34:57', '2023-11-16 21:37:22'),
(2, 'gudang test', 200, 0, 6, '2023-03-13 06:13:47', '2023-11-16 21:39:28'),
(3, 'gudang test krubungan', 200, 0, 3, '2023-03-13 06:14:16', '2023-03-13 06:14:16'),
(4, 'Agri Azzura', 10000, 100, 12, '2023-11-16 21:45:05', '2023-11-16 21:45:53'),
(5, 'Agri Azzura', 10000, 0, 18, '2023-11-16 21:53:32', '2023-11-16 21:53:32');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_komoditas`
--

CREATE TABLE `kategori_komoditas` (
  `id` bigint UNSIGNED NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori_komoditas`
--

INSERT INTO `kategori_komoditas` (`id`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 'Cabai', '2023-03-12 21:34:57', '2023-03-12 21:34:57');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_komoditas_details`
--

CREATE TABLE `kategori_komoditas_details` (
  `id` bigint UNSIGNED NOT NULL,
  `kategori_komoditas_id` bigint UNSIGNED NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori_komoditas_details`
--

INSERT INTO `kategori_komoditas_details` (`id`, `kategori_komoditas_id`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 1, 'Cabai Rawit', '2023-03-12 21:34:57', '2023-03-12 21:34:57'),
(2, 1, 'Cabai Keriting', '2023-03-12 21:34:57', '2023-03-12 21:34:57'),
(3, 1, 'Cabai Merah', '2023-03-12 21:34:57', '2023-03-12 21:34:57'),
(4, 1, 'Cabai Putih', '2023-03-12 21:34:57', '2023-03-12 21:34:57'),
(5, 1, 'Cabai Bubuk', '2023-03-12 21:34:57', '2023-03-12 21:34:57'),
(6, 1, 'Cabai Paprika', '2023-03-12 21:34:57', '2023-03-12 21:34:57');

-- --------------------------------------------------------

--
-- Table structure for table `kecamatans`
--

CREATE TABLE `kecamatans` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_kecamatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kecamatans`
--

INSERT INTO `kecamatans` (`id`, `nama_kecamatan`, `created_at`, `updated_at`) VALUES
(1, 'Ambal', '2023-03-12 21:34:57', '2023-03-12 21:34:57'),
(2, 'Buluspesantren', '2023-03-12 21:34:57', '2023-03-12 21:34:57'),
(3, 'Karanganyar', '2023-03-12 21:34:57', '2023-03-12 21:34:57'),
(4, 'Mirit', '2023-03-12 21:34:57', '2023-03-12 21:34:57'),
(5, 'kecamatan test', '2023-03-13 06:12:19', '2023-03-13 06:12:19'),
(6, 'Kecamatan A', '2023-11-01 04:46:13', '2023-11-01 04:46:13');

-- --------------------------------------------------------

--
-- Table structure for table `kelompok_tanis`
--

CREATE TABLE `kelompok_tanis` (
  `id` bigint UNSIGNED NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desa_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kelompok_tanis`
--

INSERT INTO `kelompok_tanis` (`id`, `keterangan`, `desa_id`, `created_at`, `updated_at`) VALUES
(1, 'Evos', 6, '2023-03-12 21:34:57', '2023-03-12 21:34:57'),
(2, 'kelompok petani', 6, '2023-03-13 06:14:44', '2023-03-13 06:14:44');

-- --------------------------------------------------------

--
-- Table structure for table `komoditas`
--

CREATE TABLE `komoditas` (
  `id` bigint UNSIGNED NOT NULL,
  `user_info_id` bigint UNSIGNED NOT NULL,
  `harga_minimal` decimal(15,2) NOT NULL,
  `harga_maksimal` decimal(15,2) NOT NULL,
  `kuantitas` double NOT NULL,
  `terjual` int DEFAULT '0',
  `kategori_komoditas_detail_id` bigint UNSIGNED NOT NULL,
  `harga_jual` decimal(15,2) DEFAULT NULL,
  `status_pengajuan` int NOT NULL DEFAULT '1',
  `status_uji_kualitas` int NOT NULL DEFAULT '1',
  `gudang_id` bigint UNSIGNED DEFAULT NULL,
  `status_komoditas_di_gudang` int NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `telah_terjual` tinyint(1) NOT NULL DEFAULT '0',
  `desa_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `komoditas`
--

INSERT INTO `komoditas` (`id`, `user_info_id`, `harga_minimal`, `harga_maksimal`, `kuantitas`, `terjual`, `kategori_komoditas_detail_id`, `harga_jual`, `status_pengajuan`, `status_uji_kualitas`, `gudang_id`, `status_komoditas_di_gudang`, `status`, `telah_terjual`, `desa_id`, `created_at`, `updated_at`) VALUES
(1, 1, '10000.00', '20000.00', 20, 0, 1, '35000.00', 3, 2, 1, 3, 1, 0, 6, '2023-03-13 04:49:30', '2023-11-16 21:37:19'),
(2, 1, '20000.00', '40000.00', 30, 0, 2, '20000.00', 3, 2, 1, 3, 1, 0, 6, '2023-03-13 04:49:49', '2023-11-16 21:37:22'),
(3, 1, '2000.00', '4000.00', 50, 40, 6, '3000.00', 3, 2, 2, 3, 1, 0, 6, '2023-03-13 06:23:52', '2023-11-16 21:39:28'),
(4, 2, '25000.00', '50000.00', 100, 0, 1, '62000.00', 3, 2, 4, 2, 1, 0, 12, '2023-03-14 02:34:21', '2023-11-16 21:45:53'),
(5, 36, '60000.00', '65000.00', 300, 0, 1, NULL, 1, 1, NULL, 1, 1, 0, 6, '2023-11-16 21:31:10', '2023-11-16 21:31:10'),
(6, 38, '60000.00', '65000.00', 500, 0, 1, NULL, 1, 1, NULL, 1, 1, 0, 6, '2023-11-16 21:32:47', '2023-11-16 21:32:47'),
(7, 22, '56000.00', '62000.00', 10000, 0, 1, NULL, 1, 1, NULL, 1, 1, 0, 6, '2023-11-16 21:47:39', '2023-11-16 21:47:39'),
(8, 24, '56000.00', '60000.00', 500, 0, 1, NULL, 1, 1, NULL, 1, 1, 0, 6, '2023-11-16 21:48:49', '2023-11-16 21:48:49'),
(9, 24, '55000.00', '60000.00', 600, 0, 1, NULL, 1, 1, NULL, 1, 1, 0, 6, '2023-11-16 21:49:18', '2023-11-16 21:49:18'),
(10, 24, '56000.00', '60000.00', 250, 0, 1, NULL, 1, 1, NULL, 1, 1, 0, 6, '2023-11-16 21:50:13', '2023-11-16 21:50:13');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_11_000000_create_kecamatans_table', 1),
(2, '2014_10_11_000000_create_roles_table', 1),
(3, '2014_10_12_000000_create_desas_table', 1),
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2014_10_12_032312_create_gudangs_table', 1),
(6, '2014_11_01_033420_create_kelompok_tanis_table', 1),
(7, '2014_11_01_033421_create_user_gudangs_table', 1),
(8, '2014_11_01_033421_create_user_infos_table', 1),
(9, '2019_08_19_000000_create_failed_jobs_table', 1),
(10, '2021_09_02_032130_create_kategori_komoditas_table', 1),
(11, '2021_09_02_032133_create_kategori_komoditas_details_table', 1),
(12, '2021_09_02_032136_create_komoditas_table', 1),
(13, '2021_09_02_041642_create_aturan_kualitas_table', 1),
(14, '2021_09_20_033708_create_aturan_mutus_table', 1),
(15, '2021_09_20_034008_create_verifikasi_kualitas_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 'Petani', '2023-03-12 21:34:57', '2023-03-12 21:34:57'),
(2, 'LPK', '2023-03-12 21:34:57', '2023-03-12 21:34:57'),
(3, 'Pengelola Gudang', '2023-03-12 21:34:57', '2023-03-12 21:34:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  `nomor_hp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `username`, `password`, `role_id`, `nomor_hp`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'desamirit', 'desamirit@gmail.com', NULL, 'desamirit', '$2y$10$LYgeFVpeW1xcsILdsNZ6b.3vc0hwYni.wpRnLMy37oIq2v2zQamLO', 3, '6287727757986', NULL, '2023-03-12 21:34:57', '2023-03-12 21:34:57'),
(2, 'desarowo', 'desarowo@gmail.com', NULL, 'desarowo', '$2y$10$lBGFqXtq6tQz6ndeysARLOCWjgru98MCW4MgLTIpBC2/803OcmaWW', 3, '6285159861101', NULL, '2023-03-12 21:34:57', '2023-03-12 21:34:57'),
(3, 'lpk', 'lpk@gmail.com', NULL, 'lpk', '$2y$10$k14BEaMGcM1l1uywU3GVSex5PHaQN/nrzinEiEp040QrL7rImeU16', 2, '6285159861101', NULL, '2023-03-12 21:34:57', '2023-03-12 21:34:57'),
(4, 'irfan', 'irfan@gmail.com', NULL, 'irfan', '$2y$10$PUL7iaG7M8B78wguqBH.5OZxUUtYzk9jR1anWxwiMmLcZYFih0Bk6', 1, '6285159861101', NULL, '2023-03-12 21:34:57', '2023-03-12 21:34:57'),
(5, 'agus', 'agus@gmail.com', NULL, 'agus', '$2y$10$T.5vbE69.j7X0DPzLsqkuOb0wCw3AWaJrJle6rA1QhQz.LMx62T3u', 1, '6285159861101', NULL, '2023-03-12 21:34:57', '2023-03-12 21:34:57'),
(6, 'mustofa', 'mustofa@gmail.com', NULL, 'mustofa', '$2y$10$GVLriXqoTV2pWkw9eSDCkeUBn5LKEzJQOdMJdmhq.F6MPfm6XYUQq', 1, NULL, NULL, '2023-03-12 21:34:57', '2023-03-12 21:34:57'),
(7, 'ngaiso', 'ngaiso@gmail.com', NULL, 'ngaiso', '$2y$10$5Gn5u85ffDqzmZm0Ub5z9Opr5Nym.i4wQ2qAWUGbwd7pMCw/X1TIW', 1, NULL, NULL, '2023-03-12 21:34:57', '2023-03-12 21:34:57'),
(8, 'suyoto', 'suyoto@gmail.com', NULL, 'suyoto', '$2y$10$C8Unzg5fI8NGrpy8ZpfY7.iM9V3p7J0uuPBNiERL0KfOYyCmMwc7u', 1, NULL, NULL, '2023-03-12 21:34:58', '2023-03-12 21:34:58'),
(9, 'tarwan', 'tarwan@gmail.com', NULL, 'tarwan', '$2y$10$t2Z5itZRFtD40RnK9lT0cu4vSZncgv8BcOjfxOgoqqn/qM4j/I4JG', 1, NULL, NULL, '2023-03-12 21:34:58', '2023-03-12 21:34:58'),
(10, 'sutrisno', 'sutrisno@gmail.com', NULL, 'sutrisno', '$2y$10$ygsXpSJthAexv4niStLOPuyFy.S0XjY0R2WgIU48H1.TcxnsCzMty', 1, NULL, NULL, '2023-03-12 21:34:58', '2023-03-12 21:34:58'),
(11, 'sugiyono', 'sugiyono@gmail.com', NULL, 'sugiyono', '$2y$10$YoVfyJunC8e17sfj29Q./.J3MOHoR0MtksEJqo4o6PA5PvuF1AyIu', 1, NULL, NULL, '2023-03-12 21:34:58', '2023-03-12 21:34:58'),
(12, 'den', 'den@gmail.com', NULL, 'den', '$2y$10$UJtsmkVYTdROiulVyW.Z/uvcl6W.p7YIUiMA6fpOYGuBt7hi3n4AW', 1, NULL, NULL, '2023-03-12 21:34:58', '2023-03-12 21:34:58'),
(13, 'wahid', 'wahid@gmail.com', NULL, 'wahid', '$2y$10$kaQPvq1xEuO2f38MHFpYj.5oHc6drrzSxKalA4juBDcVv/7hNQVTy', 1, NULL, NULL, '2023-03-12 21:34:58', '2023-03-12 21:34:58'),
(14, 'lekas', 'lekas@gmail.com', NULL, 'lekas', '$2y$10$1g2cPrdEngTmVZha5LCcQurrkEkaaEx6mD/GFH5GZqfKpIJcOjUXa', 1, NULL, NULL, '2023-03-12 21:34:58', '2023-03-12 21:34:58'),
(15, 'wakidin', 'wakidin@gmail.com', NULL, 'wakidin', '$2y$10$aF45JA9359TLeiEOYlZMdOktBj2LPjGMhTFQ53KBaZ0kGhOPbiT7K', 1, NULL, NULL, '2023-03-12 21:34:58', '2023-03-12 21:34:58'),
(16, 'sunar', 'sunar@gmail.com', NULL, 'sunar', '$2y$10$RHUiXt4bS/4dfa5T7Nzt4e.i2kizMF85X0gk9351NylQAOTHuOB9K', 1, NULL, NULL, '2023-03-12 21:34:58', '2023-03-12 21:34:58'),
(17, 'rojingun', 'rojingun@gmail.com', NULL, 'rojingun', '$2y$10$Wg6.ezWeB10scvUsNvyJY.eOpLvIqsl31ovvjqrm.b2ncR0OzgiTu', 1, NULL, NULL, '2023-03-12 21:34:58', '2023-03-12 21:34:58'),
(18, 'yuli', 'yuli@gmail.com', NULL, 'yuli', '$2y$10$DGIWtZVfx/8a.zIkxi1Mtum4As6lQFTJSBbGCKvq1HEMX9jPyQxeS', 1, NULL, NULL, '2023-03-12 21:34:58', '2023-03-12 21:34:58'),
(19, 'ipin', 'ipin@gmail.com', NULL, 'ipin', '$2y$10$sLhsiywTBzl2oM1gelZvSezwg2xiLg1OJxVbqe6BsW6ZnPAqCHYhK', 1, NULL, NULL, '2023-03-12 21:34:58', '2023-03-12 21:34:58'),
(20, 'sugi', 'sugi@gmail.com', NULL, 'sugi', '$2y$10$9m6RvyD7MCIHcuv50U.mSub.Lsl/AKnRePHKZ3wZydMS0FIGtSB5q', 1, NULL, NULL, '2023-03-12 21:34:58', '2023-03-12 21:34:58'),
(21, 'soleh', 'soleh@gmail.com', NULL, 'soleh', '$2y$10$GlkXteMC2mN9Y/PT7yjwPed9RVAGzcnLadp6m1IwSjGWRrTMHddGq', 1, NULL, NULL, '2023-03-12 21:34:58', '2023-03-12 21:34:58'),
(22, 'amir', 'amir@gmail.com', NULL, 'amir', '$2y$10$gWKqjBo50SMJHcv8Jg/moOV6HxOxJFpbZ0cp/YoYxBGkhESs8M3.m', 1, NULL, NULL, '2023-03-12 21:34:59', '2023-03-12 21:34:59'),
(23, 'sabar', 'sabar@gmail.com', NULL, 'sabar', '$2y$10$AiODQWzg9Z7wBmaoc6nBruqW2h/ePoHyttQCwGKoHjkxKXyQp1tdq', 1, NULL, NULL, '2023-03-12 21:34:59', '2023-03-12 21:34:59'),
(24, 'wagino', 'wagino@gmail.com', NULL, 'wagino', '$2y$10$5IGgcFMBcw9qGCc.EEs.auBKasq8YsUfixRmGIGHjCpjdv.8in/RG', 1, NULL, NULL, '2023-03-12 21:34:59', '2023-03-12 21:34:59'),
(25, 'arifyanto', 'arifyanto@gmail.com', NULL, 'arifyanto', '$2y$10$8Si3Y/RzeTtpD40433Ndf.UkCdaenmR7G83C52JRcb4p16MHoxjSi', 1, '0', NULL, '2023-03-12 21:34:59', '2023-11-16 21:47:04'),
(26, 'wagiatno', 'wagiatno@gmail.com', NULL, 'wagiatno', '$2y$10$yYR6tfpBGmHh.blh.0q/NOEJznnOp5cwcs56i6qN5Xuq9rkRfMWsO', 1, NULL, NULL, '2023-03-12 21:34:59', '2023-03-12 21:34:59'),
(27, 'paryanto', 'paryanto@gmail.com', NULL, 'paryanto', '$2y$10$MA0Dv8DoJ124vIuCZ4ODhOhKrt3P/9Yp2lCZLK.GS9qqwN1Uq4vU.', 1, '0', NULL, '2023-03-12 21:34:59', '2023-11-16 21:48:26'),
(28, 'harun', 'harun@gmail.com', NULL, 'harun', '$2y$10$OJ6faJbDt4ieAag6jaeCFuezGKU6I.944ZHDfBUsuNhw9VOs/e4Yu', 1, NULL, NULL, '2023-03-12 21:34:59', '2023-03-12 21:34:59'),
(29, 'puji', 'puji@gmail.com', NULL, 'puji', '$2y$10$x1UI4UvaiPBtWnUt.kqnTOqf7tk43M/Xazx5v9FE/E9Ku.VHYqsbG', 1, NULL, NULL, '2023-03-12 21:34:59', '2023-03-12 21:34:59'),
(30, 'riyadi', 'riyadi@gmail.com', NULL, 'riyadi', '$2y$10$X/TK0HEFfpF4Zjl3.lE19.y1J5/km8tMXg9.ghy9i4f5/sKNAN3C.', 1, NULL, NULL, '2023-03-12 21:34:59', '2023-03-12 21:34:59'),
(31, 'toyibmustofa', 'toyibmustofa@gmail.com', NULL, 'toyibmustofa', '$2y$10$yjQ00JlhCIpASrMs7GBMde1RCmbm2pmantvns0Cs9W3RccELC1B/2', 1, NULL, NULL, '2023-03-12 21:34:59', '2023-03-12 21:34:59'),
(32, 'pardi', 'pardi@gmail.com', NULL, 'pardi', '$2y$10$ajWOq1WR4VdEDOEen1lvW.jg9TFAMPAGSpVmQg0dSeUVOfQDxkMKC', 1, NULL, NULL, '2023-03-12 21:34:59', '2023-03-12 21:34:59'),
(33, 'jumadi', 'jumadi@gmail.com', NULL, 'jumadi', '$2y$10$cDm4vkG9.EWtoXbPXnAKCelHhpkyJErlI19KbBrWPqCBcra//PKda', 1, NULL, NULL, '2023-03-12 21:34:59', '2023-03-12 21:34:59'),
(34, 'eko', 'eko@gmail.com', NULL, 'eko', '$2y$10$3PpP0SJGsHiWyyuwO/H4g.cYQEL1FAzKPo.6xSwHW8.oPDXC7xN7a', 1, NULL, NULL, '2023-03-12 21:34:59', '2023-03-12 21:34:59'),
(35, 'yusuf', 'yusuf@gmail.com', NULL, 'yusuf', '$2y$10$P16YE8EbRGG5h3OM99UxF.DJnwMScUXm1Ryg/EQNp/C9dABOjNueO', 1, NULL, NULL, '2023-03-12 21:34:59', '2023-03-12 21:34:59'),
(36, 'penjol', 'penjol@gmail.com', NULL, 'penjol', '$2y$10$5hHsi9LPZSrw0l5ShU/LreNmunnra.OXCoTfQtsU8.IoHdi.23Uqe', 1, NULL, NULL, '2023-03-12 21:34:59', '2023-03-12 21:34:59'),
(37, 'pairah', 'pairah@gmail.com', NULL, 'pairah', '$2y$10$5bPwSfbmnnGoKxLqkrCoyOoKdX3/.JBql44CHbW8U45pY5AHepJX2', 1, NULL, NULL, '2023-03-12 21:35:00', '2023-03-12 21:35:00'),
(38, 'sangid', 'sangid@gmail.com', NULL, 'sangid', '$2y$10$ORsBohaYkQwogzdcdwr8iedKDZQi7pRDEE5X.yagqbOQdS6viX9jC', 1, NULL, NULL, '2023-03-12 21:35:00', '2023-03-12 21:35:00'),
(39, 'suyat', 'suyat@gmail.com', NULL, 'suyat', '$2y$10$i6hpT67BNFRx6aTRsVppU.5sQbxAmxL1TS5cSgoM61Xi1Xlo1nFay', 1, '087837900747', NULL, '2023-03-12 21:35:00', '2023-11-16 21:28:54'),
(40, 'ahmad', 'ahmad@gmail.com', NULL, 'ahmad', '$2y$10$XuijyoUvWnOzbOLI2hc5b.UJRCm.5miF/hIl3F5Brxr/xRtFUQdYK', 1, NULL, NULL, '2023-03-12 21:35:00', '2023-03-12 21:35:00'),
(41, 'saipul', 'saipul@gmail.com', NULL, 'saipul', '$2y$10$lhiWbqt49l2lUH1FiZnGYuNVPdVYNqsQ2MMwfUfKu47YA7lulVFz.', 1, '0', NULL, '2023-03-12 21:35:00', '2023-11-16 21:32:24'),
(42, 'kipli', 'kipli@gmail.com', NULL, 'kipli', '$2y$10$vjMxBrtxBpL/NCbUmOVjr.N9puYMnKjCM.MNMMK7lC4wdpo0U6.Q6', 1, NULL, NULL, '2023-03-12 21:35:00', '2023-03-12 21:35:00'),
(43, 'iwan', 'iwan@gmail.com', NULL, 'iwan', '$2y$10$3NPVqnfgAgMBDLrpE4Fk5eWfDOkqK8znad0Ljf7wOLDTCq8GOKQAy', 1, NULL, NULL, '2023-03-12 21:35:00', '2023-03-12 21:35:00'),
(44, 'bejo', 'bejo@gmail.com', NULL, 'bejo', '$2y$10$TEGDpocQqQb0JVGw/5qsJOEyl2RF32L1n4CRLS6Mu8BD4BAlvpE1C', 1, NULL, NULL, '2023-03-12 21:35:00', '2023-03-12 21:35:00'),
(45, 'subur', 'subur@gmail.com', NULL, 'subur', '$2y$10$ypDNKw3KoGBG3gGc2n70/ewHtTgXuD3n3xuaC5fL9alaXWF1uvf3O', 1, NULL, NULL, '2023-03-12 21:35:00', '2023-03-12 21:35:00'),
(46, 'warso', 'warso@gmail.com', NULL, 'warso', '$2y$10$ARmiVn9GaZNYFLqlwJBJJOUpYLmArDB4GFE1FZ3Yj6VwLzl6EDu2m', 1, NULL, NULL, '2023-03-12 21:35:00', '2023-03-12 21:35:00'),
(47, 'wahid2', 'wahid2@gmail.com', NULL, 'wahid2', '$2y$10$M8SevHnXSStL/FBRcWDeWuGBZR5DZ.oTfTz.0vvBdAMULR/DMqvSK', 1, NULL, NULL, '2023-03-12 21:35:00', '2023-03-12 21:35:00'),
(48, 'rajim', 'rajim@gmail.com', NULL, 'rajim', '$2y$10$ceNE.dEdz4gOiuvSJhoSouSZ4z//MQfH0CBMhtcJdgebUfnWuKGcG', 1, NULL, NULL, '2023-03-12 21:35:00', '2023-03-12 21:35:00'),
(49, 'hamid', 'hamid@gmail.com', NULL, 'hamid', '$2y$10$8PTD.n8iTCBuebtFI66FDO694xGy2nEWeZcb9Hv3hUrLl3rI9gXVO', 1, NULL, NULL, '2023-03-12 21:35:00', '2023-03-12 21:35:00'),
(50, 'ngayit', 'ngayit@gmail.com', NULL, 'ngayit', '$2y$10$rWYjoJHAA4xnEBN.Hywcj.VC144aUr2kK6aYpkza61uCuyKex1/Uy', 1, NULL, NULL, '2023-03-12 21:35:00', '2023-03-12 21:35:00'),
(51, 'muji', 'muji@gmail.com', NULL, 'muji', '$2y$10$25oR5uefXcVls020P1q3t.tESwZ6gSQsXpTk4fn0nwFhfuiv5ARGm', 1, NULL, NULL, '2023-03-12 21:35:01', '2023-03-12 21:35:01'),
(52, 'tohirin', 'tohirin@gmail.com', NULL, 'tohirin', '$2y$10$jVtu6tJA0YETQ6pADJjfwurAMvBz3P.tL5x/Dhn6diViMG4PFlOU.', 1, NULL, NULL, '2023-03-12 21:35:01', '2023-03-12 21:35:01'),
(53, 'daryanto', 'daryanto@gmail.com', NULL, 'daryanto', '$2y$10$TfRWqA4ZtFCeSEcDJ./30OmxY7v74kjKjjfMuc4vLiE1f8O8mXjXq', 1, NULL, NULL, '2023-03-12 21:35:01', '2023-03-12 21:35:01'),
(54, 'manijo', 'manijo@gmail.com', NULL, 'manijo', '$2y$10$5cMkamhmhaIUVja6LPyuv.wqDHbKNmgavRz7Of1vMUjO9cuajHeCS', 1, NULL, NULL, '2023-03-12 21:35:01', '2023-03-12 21:35:01'),
(55, 'marno', 'marno@gmail.com', NULL, 'marno', '$2y$10$uWu6UXoci2CkqZ82HVOx.ecah.Y9YW5uvef9RBjVGks5E.EDtgUJa', 1, NULL, NULL, '2023-03-12 21:35:01', '2023-03-12 21:35:01'),
(56, 'desakrubungan', 'desakrubungan@gmail.com', '2023-03-28 04:37:01', 'desakrubungan', '$2y$10$LYgeFVpeW1xcsILdsNZ6b.3vc0hwYni.wpRnLMy37oIq2v2zQamLO', 3, '0895376511386', NULL, '2023-03-13 04:37:01', '2023-03-23 04:37:01'),
(57, 'fardan', 'test@gmail.com', NULL, 'fardan', '$2y$10$CQLKAsGUGaAC7szERctgKO4pt82GCu9xUoJRGHlZKMEwlp4WBVbEq', 1, NULL, NULL, '2023-03-13 06:11:33', '2023-03-13 06:11:33');

-- --------------------------------------------------------

--
-- Table structure for table `user_gudangs`
--

CREATE TABLE `user_gudangs` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `desa_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_gudangs`
--

INSERT INTO `user_gudangs` (`id`, `user_id`, `desa_id`, `created_at`, `updated_at`) VALUES
(1, 1, 6, '2023-03-12 21:35:01', '2023-03-12 21:35:01'),
(2, 2, 12, '2023-03-12 21:35:01', '2023-03-12 21:35:01'),
(3, 56, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_infos`
--

CREATE TABLE `user_infos` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desa_id` bigint UNSIGNED DEFAULT NULL,
  `luas_lahan` double DEFAULT NULL,
  `kelompok_tani_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_infos`
--

INSERT INTO `user_infos` (`id`, `user_id`, `nama`, `desa_id`, `luas_lahan`, `kelompok_tani_id`, `created_at`, `updated_at`) VALUES
(1, 4, 'Irfan Agus Tiawan', 6, 100, 1, '2023-03-12 21:35:01', '2023-03-12 21:35:01'),
(2, 5, 'Nawait', 12, 150, 1, '2023-03-12 21:35:01', '2023-03-12 21:35:01'),
(3, 6, 'mustofa', 6, 150, 1, '2023-03-12 21:35:01', '2023-03-12 21:35:01'),
(4, 7, 'ngaiso', 6, 150, 1, '2023-03-12 21:35:01', '2023-03-12 21:35:01'),
(5, 8, 'suyoto', 6, 150, 1, '2023-03-12 21:35:01', '2023-03-12 21:35:01'),
(6, 9, 'tarwan', 6, 150, 1, '2023-03-12 21:35:01', '2023-03-12 21:35:01'),
(7, 10, 'sutrisno', 6, 150, 1, '2023-03-12 21:35:01', '2023-03-12 21:35:01'),
(8, 11, 'sugiyono', 6, 150, 1, '2023-03-12 21:35:01', '2023-03-12 21:35:01'),
(9, 12, 'den', 6, 150, 1, '2023-03-12 21:35:01', '2023-03-12 21:35:01'),
(10, 13, 'wahid', 6, 150, 1, '2023-03-12 21:35:01', '2023-03-12 21:35:01'),
(11, 14, 'lekas', 6, 150, 1, '2023-03-12 21:35:01', '2023-03-12 21:35:01'),
(12, 15, 'wakidin', 6, 150, 1, '2023-03-12 21:35:01', '2023-03-12 21:35:01'),
(13, 16, 'sunar', 6, 150, 1, '2023-03-12 21:35:01', '2023-03-12 21:35:01'),
(14, 17, 'rojingun', 6, 150, 1, '2023-03-12 21:35:01', '2023-03-12 21:35:01'),
(15, 18, 'yuli', 6, 150, 1, '2023-03-12 21:35:01', '2023-03-12 21:35:01'),
(16, 19, 'ipin', 6, 150, 1, '2023-03-12 21:35:01', '2023-03-12 21:35:01'),
(17, 20, 'sugi', 6, 150, 1, '2023-03-12 21:35:01', '2023-03-12 21:35:01'),
(18, 21, 'soleh', 6, 150, 1, '2023-03-12 21:35:01', '2023-03-12 21:35:01'),
(19, 22, 'amir', 6, 150, 1, '2023-03-12 21:35:01', '2023-03-12 21:35:01'),
(20, 23, 'sabar', 6, 150, 1, '2023-03-12 21:35:01', '2023-03-12 21:35:01'),
(21, 24, 'wagino', 6, 150, 1, '2023-03-12 21:35:01', '2023-03-12 21:35:01'),
(22, 25, 'arifyanto', 6, 150, 1, '2023-03-12 21:35:01', '2023-03-12 21:35:01'),
(23, 26, 'wagiatno', 6, 150, 1, '2023-03-12 21:35:01', '2023-03-12 21:35:01'),
(24, 27, 'paryanto', 6, 150, 2, '2023-03-12 21:35:01', '2023-11-16 21:48:26'),
(25, 28, 'harun', 6, 150, 1, '2023-03-12 21:35:01', '2023-03-12 21:35:01'),
(26, 29, 'puji', 6, 150, 1, '2023-03-12 21:35:01', '2023-03-12 21:35:01'),
(27, 30, 'riyadi', 6, 150, 1, '2023-03-12 21:35:01', '2023-03-12 21:35:01'),
(28, 31, 'toyibmustofa', 6, 150, 1, '2023-03-12 21:35:01', '2023-03-12 21:35:01'),
(29, 32, 'pardi', 6, 150, 1, '2023-03-12 21:35:01', '2023-03-12 21:35:01'),
(30, 33, 'jumadi', 6, 150, 1, '2023-03-12 21:35:01', '2023-03-12 21:35:01'),
(31, 34, 'eko', 6, 150, 1, '2023-03-12 21:35:01', '2023-03-12 21:35:01'),
(32, 35, 'yusuf', 6, 150, 1, '2023-03-12 21:35:01', '2023-03-12 21:35:01'),
(33, 36, 'penjol', 6, 150, 1, '2023-03-12 21:35:01', '2023-03-12 21:35:01'),
(34, 37, 'pairah', 6, 150, 1, '2023-03-12 21:35:01', '2023-03-12 21:35:01'),
(35, 38, 'sangid', 6, 150, 1, '2023-03-12 21:35:01', '2023-03-12 21:35:01'),
(36, 39, 'suyat', 6, 5000, 1, '2023-03-12 21:35:01', '2023-11-16 21:28:53'),
(37, 40, 'ahmad', 6, 150, 1, '2023-03-12 21:35:01', '2023-03-12 21:35:01'),
(38, 41, 'saipul', 6, 150, 1, '2023-03-12 21:35:01', '2023-03-12 21:35:01'),
(39, 42, 'kipli', 6, 150, 1, '2023-03-12 21:35:01', '2023-03-12 21:35:01'),
(40, 43, 'iwan', 6, 150, 1, '2023-03-12 21:35:01', '2023-03-12 21:35:01'),
(41, 44, 'bejo', 6, 150, 1, '2023-03-12 21:35:01', '2023-03-12 21:35:01'),
(42, 45, 'subur', 6, 150, 1, '2023-03-12 21:35:01', '2023-03-12 21:35:01'),
(43, 46, 'warso', 6, 150, 1, '2023-03-12 21:35:01', '2023-03-12 21:35:01'),
(44, 47, 'wahid2', 6, 150, 1, '2023-03-12 21:35:01', '2023-03-12 21:35:01'),
(45, 48, 'rajim', 6, 150, 1, '2023-03-12 21:35:01', '2023-03-12 21:35:01'),
(46, 49, 'hamid', 6, 150, 1, '2023-03-12 21:35:01', '2023-03-12 21:35:01'),
(47, 50, 'ngayit', 6, 150, 1, '2023-03-12 21:35:01', '2023-03-12 21:35:01'),
(48, 51, 'muji', 6, 150, 1, '2023-03-12 21:35:01', '2023-03-12 21:35:01'),
(49, 52, 'tohirin', 6, 150, 1, '2023-03-12 21:35:01', '2023-03-12 21:35:01'),
(50, 53, 'daryanto', 6, 150, 1, '2023-03-12 21:35:01', '2023-03-12 21:35:01'),
(51, 54, 'manijo', 6, 150, 1, '2023-03-12 21:35:01', '2023-03-12 21:35:01'),
(52, 55, 'marno', 6, 150, 1, '2023-03-12 21:35:01', '2023-03-12 21:35:01'),
(53, 57, 'fardan', 6, NULL, NULL, '2023-03-13 06:11:33', '2023-03-13 06:11:33');

-- --------------------------------------------------------

--
-- Table structure for table `verifikasi_kualitas`
--

CREATE TABLE `verifikasi_kualitas` (
  `id` bigint UNSIGNED NOT NULL,
  `komoditas_id` bigint UNSIGNED NOT NULL,
  `warna` double NOT NULL,
  `seragam` double NOT NULL,
  `panjang` double NOT NULL,
  `pangkal` double NOT NULL,
  `kotor` double NOT NULL,
  `busuk` double NOT NULL,
  `total_poin` int NOT NULL,
  `mutu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `verifikasi_kualitas`
--

INSERT INTO `verifikasi_kualitas` (`id`, `komoditas_id`, `warna`, `seragam`, `panjang`, `pangkal`, `kotor`, `busuk`, `total_poin`, `mutu`, `created_at`, `updated_at`) VALUES
(1, 1, 94, 98, 12, 0.9, 1, 2, 12, 'Mutu II', '2023-03-13 04:50:26', '2023-03-13 04:50:26'),
(2, 2, 94, 95, 8, 1.4, 2, 2, 9, 'Mutu II', '2023-03-13 04:50:45', '2023-03-13 04:50:45'),
(3, 3, 94, 95, 12, 0.9, 1, 2, 10, 'Mutu II', '2023-03-13 06:25:03', '2023-03-13 06:25:03'),
(4, 4, 94, 95, 8, 1, 3, 2, 7, 'Mutu III', '2023-11-16 21:45:53', '2023-11-16 21:45:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aturan_kualitas`
--
ALTER TABLE `aturan_kualitas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aturan_mutus`
--
ALTER TABLE `aturan_mutus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `desas`
--
ALTER TABLE `desas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `desas_kecamatan_id_foreign` (`kecamatan_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gudangs`
--
ALTER TABLE `gudangs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gudangs_desa_id_foreign` (`desa_id`);

--
-- Indexes for table `kategori_komoditas`
--
ALTER TABLE `kategori_komoditas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_komoditas_details`
--
ALTER TABLE `kategori_komoditas_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kategori_komoditas_details_kategori_komoditas_id_foreign` (`kategori_komoditas_id`);

--
-- Indexes for table `kecamatans`
--
ALTER TABLE `kecamatans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelompok_tanis`
--
ALTER TABLE `kelompok_tanis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kelompok_tanis_desa_id_foreign` (`desa_id`);

--
-- Indexes for table `komoditas`
--
ALTER TABLE `komoditas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `komoditas_user_info_id_foreign` (`user_info_id`),
  ADD KEY `komoditas_kategori_komoditas_detail_id_foreign` (`kategori_komoditas_detail_id`),
  ADD KEY `komoditas_gudang_id_foreign` (`gudang_id`),
  ADD KEY `komoditas_desa_id_foreign` (`desa_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_gudangs`
--
ALTER TABLE `user_gudangs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_gudangs_user_id_foreign` (`user_id`),
  ADD KEY `user_gudangs_desa_id_foreign` (`desa_id`);

--
-- Indexes for table `user_infos`
--
ALTER TABLE `user_infos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_infos_user_id_foreign` (`user_id`),
  ADD KEY `user_infos_desa_id_foreign` (`desa_id`),
  ADD KEY `user_infos_kelompok_tani_id_foreign` (`kelompok_tani_id`);

--
-- Indexes for table `verifikasi_kualitas`
--
ALTER TABLE `verifikasi_kualitas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `verifikasi_kualitas_komoditas_id_foreign` (`komoditas_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aturan_kualitas`
--
ALTER TABLE `aturan_kualitas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `aturan_mutus`
--
ALTER TABLE `aturan_mutus`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `desas`
--
ALTER TABLE `desas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gudangs`
--
ALTER TABLE `gudangs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kategori_komoditas`
--
ALTER TABLE `kategori_komoditas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kategori_komoditas_details`
--
ALTER TABLE `kategori_komoditas_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `kecamatans`
--
ALTER TABLE `kecamatans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kelompok_tanis`
--
ALTER TABLE `kelompok_tanis`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `komoditas`
--
ALTER TABLE `komoditas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `user_gudangs`
--
ALTER TABLE `user_gudangs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_infos`
--
ALTER TABLE `user_infos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `verifikasi_kualitas`
--
ALTER TABLE `verifikasi_kualitas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `desas`
--
ALTER TABLE `desas`
  ADD CONSTRAINT `desas_kecamatan_id_foreign` FOREIGN KEY (`kecamatan_id`) REFERENCES `kecamatans` (`id`);

--
-- Constraints for table `gudangs`
--
ALTER TABLE `gudangs`
  ADD CONSTRAINT `gudangs_desa_id_foreign` FOREIGN KEY (`desa_id`) REFERENCES `desas` (`id`);

--
-- Constraints for table `kategori_komoditas_details`
--
ALTER TABLE `kategori_komoditas_details`
  ADD CONSTRAINT `kategori_komoditas_details_kategori_komoditas_id_foreign` FOREIGN KEY (`kategori_komoditas_id`) REFERENCES `kategori_komoditas` (`id`);

--
-- Constraints for table `kelompok_tanis`
--
ALTER TABLE `kelompok_tanis`
  ADD CONSTRAINT `kelompok_tanis_desa_id_foreign` FOREIGN KEY (`desa_id`) REFERENCES `desas` (`id`);

--
-- Constraints for table `komoditas`
--
ALTER TABLE `komoditas`
  ADD CONSTRAINT `komoditas_desa_id_foreign` FOREIGN KEY (`desa_id`) REFERENCES `desas` (`id`),
  ADD CONSTRAINT `komoditas_gudang_id_foreign` FOREIGN KEY (`gudang_id`) REFERENCES `gudangs` (`id`),
  ADD CONSTRAINT `komoditas_kategori_komoditas_detail_id_foreign` FOREIGN KEY (`kategori_komoditas_detail_id`) REFERENCES `kategori_komoditas_details` (`id`),
  ADD CONSTRAINT `komoditas_user_info_id_foreign` FOREIGN KEY (`user_info_id`) REFERENCES `user_infos` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_gudangs`
--
ALTER TABLE `user_gudangs`
  ADD CONSTRAINT `user_gudangs_desa_id_foreign` FOREIGN KEY (`desa_id`) REFERENCES `desas` (`id`),
  ADD CONSTRAINT `user_gudangs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_infos`
--
ALTER TABLE `user_infos`
  ADD CONSTRAINT `user_infos_desa_id_foreign` FOREIGN KEY (`desa_id`) REFERENCES `desas` (`id`),
  ADD CONSTRAINT `user_infos_kelompok_tani_id_foreign` FOREIGN KEY (`kelompok_tani_id`) REFERENCES `kelompok_tanis` (`id`),
  ADD CONSTRAINT `user_infos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `verifikasi_kualitas`
--
ALTER TABLE `verifikasi_kualitas`
  ADD CONSTRAINT `verifikasi_kualitas_komoditas_id_foreign` FOREIGN KEY (`komoditas_id`) REFERENCES `komoditas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
