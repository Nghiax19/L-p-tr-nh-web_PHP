-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 20, 2024 lúc 11:50 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `travel_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hotels`
--

CREATE TABLE `hotels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hotelName` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `rating` double DEFAULT NULL,
  `description` text DEFAULT NULL,
  `pricePerPerson` decimal(8,2) NOT NULL,
  `imageUrl` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `site_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hotels`
--

INSERT INTO `hotels` (`id`, `hotelName`, `address`, `rating`, `description`, `pricePerPerson`, `imageUrl`, `created_at`, `updated_at`, `site_id`) VALUES
(11, 'The Palmy Phu Quoc Resort & Spa', 'Trần Hưng Đạo, Dương Đông, Phú Quốc, Kiên Giang, Việt Nam', 5, NULL, 817500.00, '../images/hotels/hotel-1.jpg', NULL, NULL, 1),
(12, 'Vinpearl Wonderworld Phu Quoc', 'Bãi Dài, Gành Dầu, Gành Dầu, Phú Quốc, Kiên Giang, Việt Nam', 5, NULL, 980000.00, '../images/hotels/hotel-2.jpg', NULL, NULL, 2),
(13, 'Gold Plaza Hotel Da Nang', '11 Trần Thị Lý, Quận Hải Châu, Đà Nẵng, Việt Nam', 5, NULL, 890000.00, '../images/hotels/hotel-3.jpg', NULL, NULL, 3),
(14, 'La Beach Hotel', '22 Lê Bình, Phước Mỹ, Sơn Trà, Đà Nẵng, Việt Nam', 5, NULL, 270000.00, '../images/hotels/hotel-4.jpg', NULL, NULL, 4),
(15, 'K Boutique Hotel in Dalat', '05 Mai Hắc Đế, Phường 6, Đà Lạt, Lâm Đồng, Việt Nam', 5, NULL, 510000.00, '../images/hotels/hotel-5.jpg', NULL, NULL, 5),
(16, 'Le Recit Boutique Hotel de Dalat', '117 Bùi Thị Xuân, Phường 2, Đà Lạt, Lâm Đồng, Việt Nam', 5, NULL, 875000.00, '../images/hotels/hotel-6.jpg', NULL, NULL, 6),
(17, 'Vinpearl Resort & Spa Ha Long', 'Đảo Rều, Bãi Cháy, Hạ Long, Quảng Ninh, Việt Nam', 5, NULL, 945000.00, '../images/hotels/hotel-7.jpg', NULL, NULL, 7),
(18, 'Halios Hotel Halong', '38 Nguyễn Du, Hồng Gai, Hạ Long, Quảng Ninh, Việt Nam', 5, NULL, 550000.00, '../images/hotels/hotel-8.jpg', NULL, NULL, 8),
(19, 'AUI Hotel', '38 Mây Tơ, Máy Tơ, Ngô Quyền, Hải Phòng, Việt Nam', 5, NULL, 665000.00, '../images/hotels/hotel-9.jpg', NULL, NULL, 9),
(20, 'Cat Ba Paradise Hotel', '231 Đường 1/4, Cát Bà, Cát Hải, Hải Phòng, Việt Nam', 5, NULL, 855000.00, '../images/hotels/hotel-10.jpg', NULL, NULL, 10),
(21, 'La Beach Hotel', '22 Lê Bình, Phước Mỹ, Sơn Trà, Đà Nẵng, Việt Nam', 5, NULL, 270000.00, '../images/hotels/hotel-4.jpg', NULL, NULL, 11),
(22, 'K Boutique Hotel in Dalat', '05 Mai Hắc Đế, Phường 6, Đà Lạt, Lâm Đồng, Việt Nam', 5, NULL, 510000.00, '../images/hotels/hotel-5.jpg', NULL, NULL, 12),
(23, 'Le Recit Boutique Hotel de Dalat', '117 Bùi Thị Xuân, Phường 2, Đà Lạt, Lâm Đồng, Việt Nam', 5, NULL, 875000.00, '../images/hotels/hotel-6.jpg', NULL, NULL, 13),
(24, 'Vinpearl Resort & Spa Ha Long', 'Đảo Rều, Bãi Cháy, Hạ Long, Quảng Ninh, Việt Nam', 5, NULL, 945000.00, '../images/hotels/hotel-7.jpg', NULL, NULL, 14),
(25, 'Halios Hotel Halong', '38 Nguyễn Du, Hồng Gai, Hạ Long, Quảng Ninh, Việt Nam', 5, NULL, 550000.00, '../images/hotels/hotel-8.jpg', NULL, NULL, 15),
(26, 'AUI Hotel', '38 Mây Tơ, Máy Tơ, Ngô Quyền, Hải Phòng, Việt Nam', 5, NULL, 665000.00, '../images/hotels/hotel-9.jpg', NULL, NULL, 16),
(27, 'Cat Ba Paradise Hotel', '231 Đường 1/4, Cát Bà, Cát Hải, Hải Phòng, Việt Nam', 5, NULL, 855000.00, '../images/hotels/hotel-10.jpg', NULL, NULL, 17);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `locations`
--

CREATE TABLE `locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `locationName` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `locations`
--

INSERT INTO `locations` (`id`, `locationName`, `created_at`, `updated_at`) VALUES
(1, 'Kiên Giang', NULL, NULL),
(2, 'Đà Nẵng', NULL, NULL),
(3, 'Lâm Đồng', NULL, NULL),
(4, 'Quảng Ninh', NULL, NULL),
(5, 'Hải Phòng', NULL, NULL),
(6, 'Kiên Giang', NULL, NULL),
(7, 'Đà Nẵng', NULL, NULL),
(8, 'Lâm Đồng', NULL, NULL),
(9, 'Quảng Ninh', NULL, NULL),
(10, 'Hải Phòng', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2023_10_30_180644_create_hotels_table', 1),
(4, '2023_10_30_180744_create_locations_table', 1),
(5, '2023_10_30_180833_create_sites_table', 1),
(6, '2023_10_30_181000_create_tours_table', 1),
(7, '2023_10_30_181219_create_tourdetails_table', 1),
(8, '2023_10_30_181349_create_tourimages_table', 1),
(9, '2023_10_30_181433_create_orders_table', 1),
(10, '2023_11_02_072012_create_tour_site_table', 1),
(11, '2023_11_06_122951_add_column_address_to_users', 1),
(12, '2023_11_07_085050_drop_hotelid_from_orders_table', 1),
(13, '2023_11_07_090831_add_siteid_to_hotels', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `orderDate` datetime NOT NULL,
  `totalAmount` double NOT NULL,
  `participantNumber` int(11) NOT NULL,
  `paymentStatus` varchar(255) DEFAULT NULL,
  `sessionId` varchar(255) DEFAULT NULL,
  `paymentIntentId` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `tour_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
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
-- Cấu trúc bảng cho bảng `sites`
--

CREATE TABLE `sites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `siteName` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sites`
--

INSERT INTO `sites` (`id`, `siteName`, `image`, `description`, `location_id`, `created_at`, `updated_at`) VALUES
(1, 'Đảo Phú Quốc', '../images/sites/site-1.jpg', NULL, 1, NULL, NULL),
(2, 'Đảo Hà Tiên', '../images/sites/site-2.jpg', NULL, 1, NULL, NULL),
(3, 'Thành Phố Rạch Giá', '../images/sites/site-3.jpg', NULL, 1, NULL, NULL),
(4, 'Bán đảo Sơn Trà', '../images/sites/site-4.jpg', NULL, 2, NULL, NULL),
(5, 'Bãi biển Mỹ Khê', '../images/sites/site-5.jpg', NULL, 2, NULL, NULL),
(6, 'Phố cổ Hội An', '../images/sites/site-6.jpg', NULL, 2, NULL, NULL),
(7, 'Hồ Xuân Hương', '../images/sites/site-7.jpg', NULL, 3, NULL, NULL),
(8, 'Đồi Thiên Phúc Đức', '../images/sites/site-8.jpg', NULL, 3, NULL, NULL),
(9, 'Vườn Quốc gia Nam Cát Tiên', '../images/sites/site-9.jpg', NULL, 3, NULL, NULL),
(10, 'Khu du lịch Vân Đồn', '../images/sites/site-10.jpg', NULL, 4, NULL, NULL),
(11, 'Khu du lịch Quốc tế Tuần Châu', '../images/sites/site-11.jpg', NULL, 4, NULL, NULL),
(12, 'Vịnh Hạ Long', '../images/sites/site-12.jpg', NULL, 4, NULL, NULL),
(13, 'Chùa Ba Vàng', '../images/sites/site-13.jpg', NULL, 4, NULL, NULL),
(14, 'Vịnh Lan Hạ', '../images/sites/site-14.jpg', NULL, 5, NULL, NULL),
(15, 'Bãi biển Đồ Sơn', '../images/sites/site-15.jpg', NULL, 5, NULL, NULL),
(16, 'Chùa Tháp Tường Long', '../images/sites/site-16.jpg', NULL, 5, NULL, NULL),
(17, 'Bạch Đằng Giang', '../images/sites/site-17.jpg', NULL, 5, NULL, NULL),
(18, 'Đảo Phú Quốc', '../images/sites/site-1.jpg', NULL, 1, NULL, NULL),
(19, 'Đảo Hà Tiên', '../images/sites/site-2.jpg', NULL, 1, NULL, NULL),
(20, 'Thành Phố Rạch Giá', '../images/sites/site-3.jpg', NULL, 1, NULL, NULL),
(21, 'Bán đảo Sơn Trà', '../images/sites/site-4.jpg', NULL, 2, NULL, NULL),
(22, 'Bãi biển Mỹ Khê', '../images/sites/site-5.jpg', NULL, 2, NULL, NULL),
(23, 'Phố cổ Hội An', '../images/sites/site-6.jpg', NULL, 2, NULL, NULL),
(24, 'Hồ Xuân Hương', '../images/sites/site-7.jpg', NULL, 3, NULL, NULL),
(25, 'Đồi Thiên Phúc Đức', '../images/sites/site-8.jpg', NULL, 3, NULL, NULL),
(26, 'Vườn Quốc gia Nam Cát Tiên', '../images/sites/site-9.jpg', NULL, 3, NULL, NULL),
(27, 'Khu du lịch Vân Đồn', '../images/sites/site-10.jpg', NULL, 4, NULL, NULL),
(28, 'Khu du lịch Quốc tế Tuần Châu', '../images/sites/site-11.jpg', NULL, 4, NULL, NULL),
(29, 'Vịnh Hạ Long', '../images/sites/site-12.jpg', NULL, 4, NULL, NULL),
(30, 'Chùa Ba Vàng', '../images/sites/site-13.jpg', NULL, 4, NULL, NULL),
(31, 'Vịnh Lan Hạ', '../images/sites/site-14.jpg', NULL, 5, NULL, NULL),
(32, 'Bãi biển Đồ Sơn', '../images/sites/site-15.jpg', NULL, 5, NULL, NULL),
(33, 'Chùa Tháp Tường Long', '../images/sites/site-16.jpg', NULL, 5, NULL, NULL),
(34, 'Bạch Đằng Giang', '../images/sites/site-17.jpg', NULL, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tourdetails`
--

CREATE TABLE `tourdetails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `checkInDate` date NOT NULL,
  `checkOutDate` date NOT NULL,
  `vehicle` varchar(255) NOT NULL,
  `maxParticipant` int(11) NOT NULL,
  `childrenPrice` int(11) NOT NULL,
  `adultPrice` int(11) NOT NULL,
  `discount` int(11) DEFAULT NULL,
  `depatureLocation` varchar(255) NOT NULL,
  `tripDescription` text DEFAULT NULL,
  `tour_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tourdetails`
--

INSERT INTO `tourdetails` (`id`, `checkInDate`, `checkOutDate`, `vehicle`, `maxParticipant`, `childrenPrice`, `adultPrice`, `discount`, `depatureLocation`, `tripDescription`, `tour_id`, `created_at`, `updated_at`) VALUES
(1, '2023-11-03', '2023-11-05', 'Ô tô', 8, 980000, 1790000, NULL, 'TP Hồ Chí Minh', NULL, 1, NULL, NULL),
(2, '2023-12-05', '2023-12-05', 'Ô tô', 8, 320000, 590000, NULL, 'Phú Quốc', NULL, 2, NULL, NULL),
(3, '2024-07-17', '2023-12-21', 'Ô tô', 32, 1890000, 2790000, NULL, 'Đà Nẵng', NULL, 3, NULL, NULL),
(4, '2024-06-01', '2024-06-21', 'Ô tô', 16, 2150000, 2875000, NULL, 'Hà Nội', NULL, 4, NULL, NULL),
(5, '2023-12-01', '2023-01-03', 'Ô tô', 32, 1780000, 2550000, NULL, 'Bắc Ninh', NULL, 5, NULL, NULL),
(6, '2023-11-03', '2023-11-05', 'Ô tô', 8, 980000, 1790000, NULL, 'TP Hồ Chí Minh', NULL, 1, NULL, NULL),
(7, '2023-12-05', '2023-12-05', 'Ô tô', 8, 320000, 590000, NULL, 'Phú Quốc', NULL, 2, NULL, NULL),
(8, '2024-07-17', '2023-12-21', 'Ô tô', 32, 1890000, 2790000, NULL, 'Đà Nẵng', NULL, 3, NULL, NULL),
(9, '2024-06-01', '2024-06-21', 'Ô tô', 16, 2150000, 2875000, NULL, 'Hà Nội', NULL, 4, NULL, NULL),
(10, '2023-12-01', '2023-01-03', 'Ô tô', 32, 1780000, 2550000, NULL, 'Bắc Ninh', NULL, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tourimages`
--

CREATE TABLE `tourimages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `imageUrl` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tour_detail_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tourimages`
--

INSERT INTO `tourimages` (`id`, `imageUrl`, `created_at`, `updated_at`, `tour_detail_id`) VALUES
(1, '../images/tourimages/tourimage-1.jpg', NULL, NULL, 1),
(2, '../images/tourimages/tourimage-2.jpg', NULL, NULL, 1),
(3, '../images/tourimages/tourimage-3.jpg', NULL, NULL, 1),
(4, '../images/tourimages/tourimage-4.jpg', NULL, NULL, 2),
(5, '../images/tourimages/tourimage-5.jpg', NULL, NULL, 2),
(6, '../images/tourimages/tourimage-6.jpg', NULL, NULL, 2),
(7, '../images/tourimages/tourimage-7.jpg', NULL, NULL, 2),
(8, '../images/tourimages/tourimage-8.jpg', NULL, NULL, 3),
(9, '../images/tourimages/tourimage-9.jpg', NULL, NULL, 3),
(10, '../images/tourimages/tourimage-10.jpg', NULL, NULL, 3),
(11, '../images/tourimages/tourimage-11.jpg', NULL, NULL, 3),
(12, '../images/tourimages/tourimage-12.jpg', NULL, NULL, 3),
(13, '../images/tourimages/tourimage-13.jpg', NULL, NULL, 4),
(14, '../images/tourimages/tourimage-14.jpg', NULL, NULL, 4),
(15, '../images/tourimages/tourimage-15.jpg', NULL, NULL, 4),
(16, '../images/tourimages/tourimage-16.jpg', NULL, NULL, 4),
(17, '../images/tourimages/tourimage-17.jpg', NULL, NULL, 5),
(18, '../images/tourimages/tourimage-18.jpg', NULL, NULL, 5),
(19, '../images/tourimages/tourimage-19.jpg', NULL, NULL, 5),
(20, '../images/tourimages/tourimage-20.jpg', NULL, NULL, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tours`
--

CREATE TABLE `tours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tourName` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tours`
--

INSERT INTO `tours` (`id`, `tourName`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Tour Đà Lạt 2 Ngày 2 Đêm Giá Rẻ Từ Sài Gòn', '../images/tours/tour-1.jpg', NULL, NULL),
(2, 'Tour khám phá 3 đảo tại Phú Quốc 1 ngày', '../images/tours/tour-2.jpg', NULL, NULL),
(3, 'Tour Đà Nẵng Hội An 4 ngày 3 đêm', '../images/tours/tour-3.jpg', NULL, NULL),
(4, 'Tour du lịch Hà Nội Quảng Ninh 2 ngày 1 đêm', '../images/tours/tour-4.jpg', NULL, NULL),
(5, 'Tour du lịch Bắc Ninh Hải Phòng 2 ngày 1 đêm', '../images/tours/tour-5.jpg', NULL, NULL),
(6, 'Tour Đà Lạt 2 Ngày 2 Đêm Giá Rẻ Từ Sài Gòn', '../images/tours/tour-1.jpg', NULL, NULL),
(7, 'Tour khám phá 3 đảo tại Phú Quốc 1 ngày', '../images/tours/tour-2.jpg', NULL, NULL),
(8, 'Tour Đà Nẵng Hội An 4 ngày 3 đêm', '../images/tours/tour-3.jpg', NULL, NULL),
(9, 'Tour du lịch Hà Nội Quảng Ninh 2 ngày 1 đêm', '../images/tours/tour-4.jpg', NULL, NULL),
(10, 'Tour du lịch Bắc Ninh Hải Phòng 2 ngày 1 đêm', '../images/tours/tour-5.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tour_site`
--

CREATE TABLE `tour_site` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tour_id` bigint(20) UNSIGNED NOT NULL,
  `site_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tour_site`
--

INSERT INTO `tour_site` (`id`, `tour_id`, `site_id`, `created_at`, `updated_at`) VALUES
(1, 1, 7, NULL, NULL),
(2, 1, 8, NULL, NULL),
(3, 1, 9, NULL, NULL),
(4, 2, 1, NULL, NULL),
(5, 2, 2, NULL, NULL),
(6, 2, 1, NULL, NULL),
(7, 3, 4, NULL, NULL),
(8, 3, 5, NULL, NULL),
(9, 3, 6, NULL, NULL),
(10, 4, 10, NULL, NULL),
(11, 4, 11, NULL, NULL),
(12, 4, 12, NULL, NULL),
(13, 4, 13, NULL, NULL),
(14, 5, 14, NULL, NULL),
(15, 5, 15, NULL, NULL),
(16, 5, 16, NULL, NULL),
(17, 5, 17, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `isAdmin` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `fullName`, `phoneNumber`, `remember_token`, `email_verified_at`, `isAdmin`, `created_at`, `updated_at`, `address`) VALUES
(1, 'chien18012002@gmail.com', '$2y$10$DFlTdvkBXWInP.KPFgAPJuKzTXg5DuRnleBxBMTVLNXALj1.bimEy', 'chien', NULL, 'PVZxIkPkJdSgGHTRPlq0bH7NHtOY9MhnkAGJQ0pcJDzta128yQyAspEB1251', '2024-12-20 07:35:54', 0, '2024-12-20 00:34:12', '2024-12-20 00:34:12', NULL),
(2, 'phamchien.jvb@gmail.com', '$2y$10$IJB56jcxoxgGCaFCImqlZusJm/qr7d08jOeEtHt9fWNTF1/LxKCke', 'Kiều Anh', NULL, 'y4GQl7Wa1Owq20h8xSv81Kpu1HArnPbMwuHfVAqL', '2024-12-20 01:59:44', 0, '2024-12-20 01:59:22', '2024-12-20 02:00:49', NULL),
(3, 'mmm@gmail.com', '$2y$10$u/wbNewHExNyKFkiQYlf9.OsQLByzU7lqAB0Z17xUoAxGI/9TnOtm', 'ka', NULL, 'Aq2kl46c2Fv8xKlPY29DAwpi55fBTFZbuzMoxup4', NULL, 0, '2024-12-20 03:28:50', '2024-12-20 03:28:50', NULL),
(4, 'phamkieuanh277@gmail.com', '$2y$10$Y04X5p09qwG5yskX9WrHxu9wbHzQPjxoi.PQHx1KKmmQfP3yawOrq', 'ka', NULL, 'FpRYVJ2QwImWHVWNfdx7aJEEklenhZJS52FWrsmNuvO9bmKeGUFZgLFAxDKu', '2024-12-20 03:43:04', 1, '2024-12-20 03:31:33', '2024-12-20 03:43:04', NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hotels_site_id_foreign` (`site_id`);

--
-- Chỉ mục cho bảng `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_tour_id_foreign` (`tour_id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `sites`
--
ALTER TABLE `sites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sites_location_id_foreign` (`location_id`);

--
-- Chỉ mục cho bảng `tourdetails`
--
ALTER TABLE `tourdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tourdetails_tour_id_foreign` (`tour_id`);

--
-- Chỉ mục cho bảng `tourimages`
--
ALTER TABLE `tourimages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tourimages_tour_detail_id_foreign` (`tour_detail_id`);

--
-- Chỉ mục cho bảng `tours`
--
ALTER TABLE `tours`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tour_site`
--
ALTER TABLE `tour_site`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tour_site_tour_id_foreign` (`tour_id`),
  ADD KEY `tour_site_site_id_foreign` (`site_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sites`
--
ALTER TABLE `sites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `tourdetails`
--
ALTER TABLE `tourdetails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tourimages`
--
ALTER TABLE `tourimages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `tours`
--
ALTER TABLE `tours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tour_site`
--
ALTER TABLE `tour_site`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `hotels`
--
ALTER TABLE `hotels`
  ADD CONSTRAINT `hotels_site_id_foreign` FOREIGN KEY (`site_id`) REFERENCES `sites` (`id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_tour_id_foreign` FOREIGN KEY (`tour_id`) REFERENCES `tours` (`id`),
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `sites`
--
ALTER TABLE `sites`
  ADD CONSTRAINT `sites_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`);

--
-- Các ràng buộc cho bảng `tourdetails`
--
ALTER TABLE `tourdetails`
  ADD CONSTRAINT `tourdetails_tour_id_foreign` FOREIGN KEY (`tour_id`) REFERENCES `tours` (`id`);

--
-- Các ràng buộc cho bảng `tourimages`
--
ALTER TABLE `tourimages`
  ADD CONSTRAINT `tourimages_tour_detail_id_foreign` FOREIGN KEY (`tour_detail_id`) REFERENCES `tourdetails` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `tour_site`
--
ALTER TABLE `tour_site`
  ADD CONSTRAINT `tour_site_site_id_foreign` FOREIGN KEY (`site_id`) REFERENCES `sites` (`id`),
  ADD CONSTRAINT `tour_site_tour_id_foreign` FOREIGN KEY (`tour_id`) REFERENCES `tours` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
