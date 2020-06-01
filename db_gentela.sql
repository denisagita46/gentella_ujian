-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2020 at 05:58 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.1.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_gentela`
--

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
(1, '2020_06_01_063345_create_user', 1),
(2, '2020_06_01_063614_create_user_db', 2),
(3, '2020_06_01_063806_create_m_jenis', 3),
(4, '2020_06_01_071637_create_m_status_ba', 4),
(5, '2020_06_01_080720_create_m_type_ba', 5),
(6, '2020_06_01_081330_create-sd_employee', 6),
(7, '2020_06_01_082917_sd_so_main', 7),
(8, '2020_06_01_134417_create_transd_ba', 8),
(9, '2020_06_01_135351_create_type_so', 9),
(10, '2020_06_01_140704_create_trans_h_ba', 10);

-- --------------------------------------------------------

--
-- Table structure for table `m_jenis`
--

CREATE TABLE `m_jenis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flag_active` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_jenis`
--

INSERT INTO `m_jenis` (`id`, `name`, `notes`, `flag_active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Pengajuan & Penjualan Kendaraan Operasional', NULL, 1, 1, 0, '2020-06-01 08:42:29', NULL),
(2, 'Pengajuan & Penjualan Peralatan Kantor, furnitur &', NULL, 1, 1, 0, '2020-06-01 08:43:42', NULL),
(3, 'Pengajuan & Penjualan Low Value Aset ', NULL, 1, 1, 0, '2020-06-01 08:44:34', NULL),
(4, 'Penjualan modis ', NULL, 1, 1, 0, '2020-06-01 08:45:21', NULL),
(5, 'Penjualan kendaraan MOP/COP', NULL, 1, 1, 0, '2020-06-01 08:45:19', NULL),
(6, 'Pengajuan & Penjualan Tanah & Bangunan', NULL, 1, 1, 0, '2020-06-01 08:50:17', NULL),
(7, 'Transfer Aset Peralatan IT/Non IT Antar Region ', NULL, 1, 1, 0, '2020-06-01 08:50:15', NULL),
(8, 'Koreksi Deskripsi Aset ', NULL, 1, 1, 0, '2020-06-01 08:50:14', NULL),
(9, 'scrapping Peralatan IT/Modis', NULL, 1, 1, 0, '2020-06-01 08:50:54', NULL),
(10, 'scrapping Peralatan kantor, Furniture & fixture Lo', NULL, 1, 1, 0, '2020-06-01 08:51:54', NULL),
(11, 'Penjualan Kendaraan inventaris ', NULL, 1, 1, 0, '2020-06-01 08:52:18', NULL),
(12, 'Pengajuan Label', NULL, 1, 1, 0, '2020-06-01 08:52:35', NULL),
(13, 'Pengajuan & penjualan Peralatan IT', NULL, 1, 1, 0, '2020-06-01 08:54:00', NULL),
(14, 'Transfer Asset Peralatan IT/ Non IT Antar Depo', NULL, 1, 1, 0, '2020-06-01 08:55:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m_status_ba`
--

CREATE TABLE `m_status_ba` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` int(11) NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `flag_active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m_type_ba`
--

CREATE TABLE `m_type_ba` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` int(11) NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `flag_active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sd_employee`
--

CREATE TABLE `sd_employee` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status_id` int(11) NOT NULL,
  `sd_so_main_id` int(11) NOT NULL,
  `departement_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `m_company_id` int(11) NOT NULL,
  `gs_harcode_id` int(11) NOT NULL,
  `sd_supplier_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_date` date NOT NULL,
  `apk_version` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` date NOT NULL,
  `updated_by` date NOT NULL,
  `is_expired` date NOT NULL,
  `passkey` int(11) NOT NULL,
  `firebase_token` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sd_so_main`
--

CREATE TABLE `sd_so_main` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coordinate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `latitude` int(11) NOT NULL,
  `longitude` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transd_ba`
--

CREATE TABLE `transd_ba` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_trans_h_ba` int(11) NOT NULL,
  `aset` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asset_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost_center` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capitalized_on` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `acquis_val` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `accum_dep` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_val` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_pembeli` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga_penawaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `val_harga_jual` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_incoming` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `lampiran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ceklis_kelengkapan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_cicilan` int(11) NOT NULL,
  `cost_center_tujuan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_asset_baru` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi_asset_baru` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lokasi_baru` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serial_number_baru` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `merk_baru` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_baru` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_type_table_ba` int(11) NOT NULL,
  `flag_active` int(11) NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` date NOT NULL,
  `updated_by` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trans_h_ba`
--

CREATE TABLE `trans_h_ba` (
  `id` int(10) UNSIGNED NOT NULL,
  `trans_date` date NOT NULL,
  `total_asset` int(11) NOT NULL,
  `id_region` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_depo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_status_ba` int(11) NOT NULL,
  `sap_code` int(11) NOT NULL,
  `created_by` date NOT NULL,
  `updated_by` date NOT NULL,
  `approved_by` int(11) NOT NULL,
  `approved_date` date NOT NULL,
  `id_jenis_ba` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `type_so`
--

CREATE TABLE `type_so` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `type_so`
--

INSERT INTO `type_so` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'HO', NULL, NULL),
(2, 'Region', NULL, NULL),
(3, 'Depo', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `number`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'deni', '0', 'denisagita47@gmail.com', NULL, '$10$LhXHXR/K040gIK6PRoO08OvYqgpFsed6hecsVoRLTWPsTQmk6JVsG', '$2yA8SP3pKeP64xAus3Zg82S6juSyD20SbWjpDLA7eOmsEkAzoRSQF7npdzo3qy', '2020-06-01 06:42:46', '2020-06-01 06:42:47'),
(2, 'resi', '0', 'resiwindarti@gmail.com', NULL, '$10$Fzm9WGFEUO3ijJM7oPVpDOO5Aub6GvRQMHWLFTo6eFFtSgrAyBm3.', NULL, NULL, NULL),
(3, 'sagita', '12323', 'denisagita46@gmail.com', NULL, '$10$6tQgCLS6Af5R6ghXsT6DmOKywylIAoJsXfy1E/H4JeZnlGtZT1PWa', 'dxnSHEngup0OZOilD5ARRtcgessBGc7lsi916LHdSnQ3ZzuttDKu7yq5Hclp', '2020-06-01 06:56:19', '2020-06-01 06:56:22'),
(4, 'denisagita46@gmail.com', '', 'denisagita34@gmail.com', NULL, '$10$25gyzUcp.xCtx6INm.kEiO8f75eohvtOH49gAQJEEoK6YZ59P4rQ6', NULL, NULL, NULL),
(5, 'deni', '', 'denisagita34@gmail.com', NULL, '$10$25gyzUcp.xCtx6INm.kEiO8f75eohvtOH49gAQJEEoK6YZ59P4rQ6', NULL, NULL, NULL),
(6, 'deni', '12131', 'denisagita9000@gmail.com', NULL, '$10$cszshp9f2cr1zWv7fX/Bz.CffTHdiJaIGkDOKh70Z7mguJlTXYAOi', NULL, NULL, NULL),
(7, 'deni', '', 'sagitateri@gmail.com', NULL, '$10$rNJCmWDmJp/LK3PscqFf.umSUz85UIMxWiJN7wG8UNwAbWF55ZAfC', NULL, NULL, NULL),
(8, 'sagita', '', 'denisagita45@gmail.com', NULL, '$10$6tQgCLS6Af5R6ghXsT6DmOKywylIAoJsXfy1E/H4JeZnlGtZT1PWa', '7cGxHOQsIrOnlK2o6vhLyWk1LB2i5KoznAXDEEHb0ov5AkvHwpWNE7bmjEsQ', NULL, NULL),
(9, 'deni', '6060690', 'denisagita76@gmail.com', NULL, '$2y$10$MQbgizYPvBAISc8ND.jCNeDYXeml0eGtp2BOiSqV6QaYNqzr.W1b.', 'clUcDU2tvbSGHIpkoULWa4LVY442QlmHXreqLqQHJCfaoHpdcXCGhSKPa0DE', '2020-06-01 02:12:22', NULL),
(10, 'intan', '345678', 'intan23@gmail.com', NULL, '$2y$10$.PeJyzZhRBn00xNdflzyvON/xB.sxtavb/4pDzUzuUY89/5Q/XGoq', NULL, '2020-06-01 05:47:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_db`
--

CREATE TABLE `user_db` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_jenis`
--
ALTER TABLE `m_jenis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_status_ba`
--
ALTER TABLE `m_status_ba`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_type_ba`
--
ALTER TABLE `m_type_ba`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sd_employee`
--
ALTER TABLE `sd_employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sd_so_main`
--
ALTER TABLE `sd_so_main`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transd_ba`
--
ALTER TABLE `transd_ba`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trans_h_ba`
--
ALTER TABLE `trans_h_ba`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type_so`
--
ALTER TABLE `type_so`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_db`
--
ALTER TABLE `user_db`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `m_jenis`
--
ALTER TABLE `m_jenis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `m_status_ba`
--
ALTER TABLE `m_status_ba`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m_type_ba`
--
ALTER TABLE `m_type_ba`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sd_employee`
--
ALTER TABLE `sd_employee`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sd_so_main`
--
ALTER TABLE `sd_so_main`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transd_ba`
--
ALTER TABLE `transd_ba`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trans_h_ba`
--
ALTER TABLE `trans_h_ba`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `type_so`
--
ALTER TABLE `type_so`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_db`
--
ALTER TABLE `user_db`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
