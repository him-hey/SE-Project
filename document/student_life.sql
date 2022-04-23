-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2022 at 05:16 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_life`
--

-- --------------------------------------------------------

--
-- Table structure for table `disciples`
--

CREATE TABLE `disciples` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `dateWn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `disciples`
--

INSERT INTO `disciples` (`id`, `student_id`, `dateWn`, `type`, `description`, `created_at`, `updated_at`) VALUES
(17, 68, '2022-01-03', 'Warning letter', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Laboriosam id facere itaque porro. Assumenda iusto nobis deserunt, vero incidunt dicta nostrum dolor. Assumenda iusto nobis deserunt, vero incidunt dicta nostrum dolor.', '2022-01-02 05:10:23', '2022-01-03 17:11:04'),
(19, 69, '2021-12-27', 'Warning letter', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Laboriosam id facere itaque porro. Assumenda iusto nobis deserunt, vero incidunt dicta nostrum dolor. Assumenda iusto nobis deserunt, vero incidunt dicta nostrum dolor.', '2022-01-03 17:10:38', '2022-01-03 17:10:38'),
(21, 80, '2022-01-03', 'Termination', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Laboriosam id facere itaque porro. Assumenda iusto nobis deserunt, vero incidunt dicta nostrum dolor.', '2022-01-04 06:19:41', '2022-01-04 06:31:08'),
(22, 81, '2022-01-06', 'Oral warning', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Laboriosam id facere itaque porro. Assumenda iusto nobis deserunt, vero incidunt dicta nostrum dolor.', '2022-01-04 06:34:33', '2022-01-04 06:34:33'),
(24, 82, '2022-01-04', 'Misconduct', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Laboriosam id facere itaque porro. Assumenda iusto nobis deserunt, vero incidunt dicta nostrum dolor.', '2022-01-04 06:40:07', '2022-01-04 20:13:48');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(8, '2014_10_12_000000_create_users_table', 1),
(9, '2014_10_12_100000_create_password_resets_table', 1),
(10, '2019_08_19_000000_create_failed_jobs_table', 1),
(11, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(12, '2021_12_17_005021_create_students_table', 1),
(13, '2021_12_24_004633_create_permissions_table', 1),
(14, '2021_12_27_004415_create_disciples_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `startAt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `endAt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `student_id`, `startAt`, `endAt`, `type`, `description`, `created_at`, `updated_at`) VALUES
(22, 65, '2022-01-08', '2022-01-16', 'Unauthorize', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Laboriosam id facere itaque porro. Assumenda iusto nobis deserunt, vero incidunt dicta nostrum dolor.', '2022-01-01 07:55:10', '2022-01-04 06:55:16'),
(27, 67, '2022-01-04', '2022-01-07', 'Authorize', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Laboriosam id facere itaque porro. Assumenda iusto nobis deserunt, vero incidunt dicta nostrum dolor.', '2022-01-03 05:16:46', '2022-01-04 06:55:11'),
(28, 69, '2022-01-05', '2022-01-07', 'Unauthorize', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Laboriosam id facere itaque porro. Assumenda iusto nobis deserunt, vero incidunt dicta nostrum dolor.', '2022-01-03 05:18:21', '2022-01-04 06:55:05'),
(30, 68, '2022-01-06', '2022-01-09', 'Unauthorize', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Laboriosam id facere itaque porro. Assumenda iusto nobis deserunt, vero incidunt dicta nostrum dolor.', '2022-01-03 19:39:07', '2022-01-04 07:44:07'),
(31, 68, '2022-01-11', '2022-01-13', 'Authorize', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Laboriosam id facere itaque porro. Assumenda iusto nobis deserunt, vero incidunt dicta nostrum dolor.', '2022-01-03 19:41:27', '2022-01-04 06:54:52'),
(33, 70, '2022-01-05', '2022-01-07', 'Unauthorize', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Laboriosam id facere itaque porro. Assumenda iusto nobis deserunt, vero incidunt dicta nostrum dolor.', '2022-01-03 20:30:47', '2022-01-04 06:54:46'),
(35, 76, '2022-01-05', '2022-01-14', 'Unauthorize', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Laboriosam id facere itaque porro. Assumenda iusto nobis deserunt, vero incidunt dicta nostrum dolor.', '2022-01-04 06:17:20', '2022-01-04 07:31:53'),
(37, 79, '2022-01-05', '2022-01-08', 'Authorize', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Laboriosam id facere itaque porro. Assumenda iusto nobis deserunt, vero incidunt dicta nostrum dolor.', '2022-01-04 06:29:34', '2022-01-04 07:31:43'),
(38, 67, '2022-01-07', '2022-01-11', 'Authorize', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Laboriosam id facere itaque porro. Assumenda iusto nobis deserunt, vero incidunt dicta nostrum dolor.', '2022-01-04 06:41:05', '2022-01-04 07:35:43'),
(39, 65, '2022-01-07', '2022-01-10', 'Unauthorize', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Laboriosam id facere itaque porro. Assumenda iusto nobis deserunt, vero incidunt dicta nostrum dolor.', '2022-01-04 06:43:47', '2022-01-04 19:01:08'),
(41, 83, '2022-01-13', '2022-01-15', 'Authorize', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Laboriosam id facere itaque porro. Assumenda iusto nobis deserunt, vero incidunt dicta nostrum dolor.', '2022-01-04 20:53:17', '2022-01-04 20:53:17');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'MyToken', '2b06fbca1ccb36e75e54b0d871dfb3b250047c47b5d24164fff998fe16e2682f', '[\"*\"]', NULL, '2021-12-28 08:45:31', '2021-12-28 08:45:31'),
(2, 'App\\Models\\User', 1, 'MyToken', '1234556bee2fde88f125ba9e87fbb5fbe35ed26414099b6a6ac8160313ea11cc', '[\"*\"]', NULL, '2021-12-28 08:46:29', '2021-12-28 08:46:29'),
(3, 'App\\Models\\User', 1, 'MyToken', '52860a5c757e225d3af211616ce7a30d1b491b62182783659e807ba8edb2a509', '[\"*\"]', NULL, '2021-12-28 17:10:02', '2021-12-28 17:10:02'),
(4, 'App\\Models\\User', 1, 'MyToken', 'bd481d9c103a02a8c8af66de40ab453451cbf844ed361fb17df34ab893858142', '[\"*\"]', NULL, '2021-12-28 18:01:57', '2021-12-28 18:01:57'),
(5, 'App\\Models\\User', 1, 'MyToken', 'ea5b8111cd5bea493c756eee3b3b0e2b8af2320c56f6b0a2c0ed06053a39253a', '[\"*\"]', NULL, '2021-12-28 18:03:40', '2021-12-28 18:03:40'),
(6, 'App\\Models\\User', 1, 'MyToken', '562b348e72f6b776644df9b4946bb5ec49d7fad7107d4b7111661fff9520915e', '[\"*\"]', NULL, '2021-12-28 18:05:45', '2021-12-28 18:05:45'),
(7, 'App\\Models\\User', 1, 'MyToken', '50321a78e8a7eb33774c989331d311e7aba706ba999f174234058f46dce5b430', '[\"*\"]', NULL, '2021-12-28 18:07:06', '2021-12-28 18:07:06'),
(8, 'App\\Models\\User', 1, 'MyToken', 'c68f078ee6cb9d99327b271a059bd9dd1a39f85cd43a8488c404ffb45e4b3ddf', '[\"*\"]', NULL, '2021-12-28 18:23:30', '2021-12-28 18:23:30'),
(9, 'App\\Models\\User', 1, 'MyToken', '0a24e680e5f819efa931f6c4b70444f4b2a4292d72f6fee4c60cb145d7033fbe', '[\"*\"]', NULL, '2021-12-28 18:24:50', '2021-12-28 18:24:50'),
(10, 'App\\Models\\User', 1, 'MyToken', 'd66731457f7850b1ca7bc45598d5360a247b65b2513d52ee4174257415b63c52', '[\"*\"]', NULL, '2021-12-28 18:27:41', '2021-12-28 18:27:41'),
(11, 'App\\Models\\User', 1, 'MyToken', '66cbdcb78a033fd1f71ae1861ebd7ff5a7d06018b8f287813536f4ae695ff9c5', '[\"*\"]', NULL, '2021-12-28 18:29:25', '2021-12-28 18:29:25'),
(12, 'App\\Models\\User', 1, 'MyToken', 'fd894213e57a361587590baa01bf41a941049acd10ef2432403cb2a8dc60d5e7', '[\"*\"]', NULL, '2021-12-28 18:31:02', '2021-12-28 18:31:02'),
(13, 'App\\Models\\User', 2, 'MyToken', '7fd7a80639903701265fa874359b78c4e80b071c389144f2190f7ffa18dc15ec', '[\"*\"]', NULL, '2021-12-28 18:31:58', '2021-12-28 18:31:58'),
(14, 'App\\Models\\User', 2, 'MyToken', '8589eb1dfdb46cfa96a8a6815f212ab20deddc03ce9a852e13c85ef6452a98d2', '[\"*\"]', NULL, '2021-12-28 18:32:20', '2021-12-28 18:32:20'),
(15, 'App\\Models\\User', 1, 'MyToken', 'dabc264eac843a7be758fb34823b9ab9866961a47b6d60c39167b3e8e44e9b0f', '[\"*\"]', NULL, '2021-12-28 18:33:09', '2021-12-28 18:33:09'),
(16, 'App\\Models\\User', 1, 'MyToken', '9fe54be99b89750a2e6bf6e5bca7ff25e8441b25662c6d4c0524c9c409cffa96', '[\"*\"]', NULL, '2021-12-28 18:33:48', '2021-12-28 18:33:48'),
(17, 'App\\Models\\User', 3, 'MyToken', '96c3f9751988d85842f7a944bc6a8e4cbdc9f94297fa38dfa7c50f5d0789aa38', '[\"*\"]', NULL, '2021-12-28 18:37:18', '2021-12-28 18:37:18'),
(18, 'App\\Models\\User', 1, 'MyToken', '7e5bf1e2086778480aa16ddef61a5200ae5e341e6175af33a0125104b22ecb53', '[\"*\"]', NULL, '2021-12-28 18:48:25', '2021-12-28 18:48:25'),
(19, 'App\\Models\\User', 1, 'MyToken', '7b65237bc6bef62a1310105deb0301775348faa2f2fe1ee87fd1f2ce60a85f5d', '[\"*\"]', NULL, '2021-12-28 18:51:23', '2021-12-28 18:51:23'),
(20, 'App\\Models\\User', 1, 'MyToken', '3437dd1e67ac6ba68e84151fae0ed2fb9665fdb80f45842698f65b61670d7255', '[\"*\"]', NULL, '2021-12-28 19:00:18', '2021-12-28 19:00:18'),
(21, 'App\\Models\\User', 2, 'MyToken', '77d2f7f6243583d67f1f9207e8d85f576efe4b0030c3a751f19dcef7547750a0', '[\"*\"]', NULL, '2021-12-28 19:05:34', '2021-12-28 19:05:34'),
(22, 'App\\Models\\User', 1, 'MyToken', '29a9936ee4962a2554bec4336d45d321392a2ba821dfd08a18e9b4f63ac7fd59', '[\"*\"]', NULL, '2021-12-28 19:07:04', '2021-12-28 19:07:04'),
(23, 'App\\Models\\User', 1, 'MyToken', '98100381c6d8f0a0cecb2f52b9af346c01e238ae09989f4779fc56e36f7fbae4', '[\"*\"]', NULL, '2021-12-28 19:15:44', '2021-12-28 19:15:44'),
(24, 'App\\Models\\User', 2, 'MyToken', 'f0de98720ca18f41fb7f14519e739af105b301eff7e3fb1b0063e84452b9f047', '[\"*\"]', NULL, '2021-12-28 19:17:03', '2021-12-28 19:17:03'),
(25, 'App\\Models\\User', 1, 'MyToken', '948a424897ba28b80d94d54a748bcd5588505f5e231ac55cd6d30714a92509b8', '[\"*\"]', NULL, '2021-12-28 19:18:02', '2021-12-28 19:18:02'),
(26, 'App\\Models\\User', 4, 'MyToken', '65bfcad7c818a84ba1d6a9c378a77b56fedf7b9db15065f839400a0f5c1ef991', '[\"*\"]', NULL, '2021-12-28 19:18:45', '2021-12-28 19:18:45'),
(27, 'App\\Models\\User', 4, 'MyToken', '3c2b3c4d70dacf91181050b6e91ac94437af46792480854acc59f0d01ba26bcc', '[\"*\"]', NULL, '2021-12-28 19:19:06', '2021-12-28 19:19:06'),
(28, 'App\\Models\\User', 1, 'MyToken', '6ff0c5de92c03a05c934a5b015280f0633f8dc2f84520a9a36cec318bd70c32e', '[\"*\"]', NULL, '2021-12-28 20:50:18', '2021-12-28 20:50:18'),
(29, 'App\\Models\\User', 5, 'MyToken', 'df8705a7548e0445d7c2e221ce9cd9f426518656d84aa5777e4e072fed19ca0f', '[\"*\"]', NULL, '2021-12-28 20:53:31', '2021-12-28 20:53:31'),
(30, 'App\\Models\\User', 1, 'MyToken', '0a861b688955c3ca091c75fba69dafbc6a14212de8c092079bb0640314ad6841', '[\"*\"]', NULL, '2021-12-29 00:58:11', '2021-12-29 00:58:11'),
(31, 'App\\Models\\User', 1, 'MyToken', 'd869cd9daa755e2c153e4ef459fbfd1b55f2b76e7da5b11cfddc345e49fb233a', '[\"*\"]', NULL, '2021-12-29 01:20:39', '2021-12-29 01:20:39'),
(32, 'App\\Models\\User', 6, 'MyToken', '300a52f2116588456373584f2935c88922f11fc91d166423dcc80a791d9d8af4', '[\"*\"]', NULL, '2021-12-29 02:57:46', '2021-12-29 02:57:46'),
(33, 'App\\Models\\User', 7, 'MyToken', '54ffc3f08224af3973a3d7108688db7fc24abc4dc15308ebd7e20d93ecd5dba5', '[\"*\"]', NULL, '2021-12-29 02:58:48', '2021-12-29 02:58:48'),
(34, 'App\\Models\\User', 4, 'MyToken', '3922d11f470972241370e7fc56441d5fdeaa9a20ab685a047b4099ba4bb8c20c', '[\"*\"]', NULL, '2021-12-29 05:03:04', '2021-12-29 05:03:04'),
(35, 'App\\Models\\User', 1, 'MyToken', 'aeefe7b1d30f7a308110a8b5473d415b594b554fccf3048bb0441ecf98eabb60', '[\"*\"]', NULL, '2021-12-29 17:05:33', '2021-12-29 17:05:33'),
(36, 'App\\Models\\User', 8, 'MyToken', '1c4486ac69d9b0ba2b57a3f0973c7f79abcdb150ddb6edef23ea89d91f48a41a', '[\"*\"]', NULL, '2021-12-29 17:35:29', '2021-12-29 17:35:29'),
(37, 'App\\Models\\User', 8, 'MyToken', 'f6e65f6f610af5f762101e652b5bf3698a20e167cec0769169f808a17d2894b4', '[\"*\"]', NULL, '2021-12-29 17:39:00', '2021-12-29 17:39:00'),
(38, 'App\\Models\\User', 1, 'MyToken', 'a2944267c57844af2539760d90f6302cf4b28d6b89bf23605549afc88519322d', '[\"*\"]', NULL, '2021-12-29 17:55:54', '2021-12-29 17:55:54'),
(39, 'App\\Models\\User', 1, 'MyToken', '11d7b4f1e63e40c935a1dedcfff7f96ec32b2a34bc73a7ff5530443509452d28', '[\"*\"]', NULL, '2021-12-29 17:56:15', '2021-12-29 17:56:15'),
(40, 'App\\Models\\User', 1, 'MyToken', '2b1985e02965171d076de5bab78319c54591d96aff98303fabbdca4b4c59456c', '[\"*\"]', NULL, '2021-12-29 19:10:19', '2021-12-29 19:10:19'),
(41, 'App\\Models\\User', 1, 'MyToken', 'd774a1950663ecf01b8b41437100e81841487a681be165e85f563ab47beba041', '[\"*\"]', NULL, '2021-12-29 19:10:40', '2021-12-29 19:10:40'),
(42, 'App\\Models\\User', 1, 'MyToken', '5a4c667ed92e538d7b82427a6819c76cc1c1827450d55cc8d19e79d2ccd3567a', '[\"*\"]', NULL, '2021-12-29 19:45:47', '2021-12-29 19:45:47'),
(43, 'App\\Models\\User', 1, 'MyToken', 'df5549f26050a66ab6b0ff3cc6c38724c0ac4cab0c8ed2befa7083c29955c329', '[\"*\"]', NULL, '2021-12-29 22:39:07', '2021-12-29 22:39:07'),
(44, 'App\\Models\\User', 9, 'MyToken', '02f8122ef115270f27167c80ab64d8c3796e203ecd87744ff8904a6bcbae69ff', '[\"*\"]', NULL, '2021-12-29 22:39:51', '2021-12-29 22:39:51'),
(45, 'App\\Models\\User', 1, 'MyToken', 'b63ed38ce7e97ca42e5b3edcb90fa6707558a3e69efca86a2995d0a08f08e060', '[\"*\"]', NULL, '2021-12-30 00:26:07', '2021-12-30 00:26:07'),
(46, 'App\\Models\\User', 1, 'MyToken', '2b71da1512ad672927ea5147af264186e0c8ebd71278bcd104745db9fa191418', '[\"*\"]', NULL, '2021-12-30 00:35:00', '2021-12-30 00:35:00'),
(47, 'App\\Models\\User', 1, 'MyToken', 'fe988cccffa524d375b63992cb425aa2670ba0397128930418d1f21afe121c83', '[\"*\"]', NULL, '2021-12-30 01:47:17', '2021-12-30 01:47:17'),
(48, 'App\\Models\\User', 10, 'MyToken', '2917db7157935bd05ab62a86cdd347104fdf1e22b48c3c7b22be517c0cd1459a', '[\"*\"]', NULL, '2021-12-30 02:02:33', '2021-12-30 02:02:33'),
(49, 'App\\Models\\User', 11, 'MyToken', '10af3a259ce60d17810c4ba8c5d2e1fca0ee78b50e6b2b92eff15e0d020d33bb', '[\"*\"]', NULL, '2021-12-30 02:22:56', '2021-12-30 02:22:56'),
(50, 'App\\Models\\User', 1, 'MyToken', 'eb610b13e1fb96a588d982f6519d6b8852417b7bb45361ce03bd0fe89fe342fa', '[\"*\"]', NULL, '2021-12-30 02:37:00', '2021-12-30 02:37:00'),
(51, 'App\\Models\\User', 12, 'MyToken', 'db6a7dbd9feb4429f43871d05848a653ef9be600cff43906e9a8be5fffeb7dd3', '[\"*\"]', NULL, '2021-12-30 02:45:05', '2021-12-30 02:45:05'),
(52, 'App\\Models\\User', 1, 'MyToken', 'a69ae37f66da186a9edbee7e9b259d3ff34565d6aff4d2cc0ec2e46d12a0725a', '[\"*\"]', NULL, '2021-12-30 17:07:17', '2021-12-30 17:07:17'),
(53, 'App\\Models\\User', 1, 'MyToken', '64573ffbe94d3249c907af0b0be98c2efde804f6e6952c0b03ec0353227b83c5', '[\"*\"]', NULL, '2021-12-30 17:10:42', '2021-12-30 17:10:42'),
(54, 'App\\Models\\User', 13, 'MyToken', 'fc9f480ca151408ccf0218f93a1190bddc81fb84d48b2cd698e6bab8bd5f7622', '[\"*\"]', NULL, '2021-12-30 17:38:01', '2021-12-30 17:38:01'),
(55, 'App\\Models\\User', 14, 'MyToken', '4f501cfad8251faf7801984868e48c261a00abc420b7031085aac4a15f6f733b', '[\"*\"]', NULL, '2021-12-30 20:29:53', '2021-12-30 20:29:53'),
(56, 'App\\Models\\User', 15, 'MyToken', '30093785c4881892c1423a5890f7c99af03039cb9eba7c17c0d3acd71c0fadcf', '[\"*\"]', NULL, '2021-12-31 00:22:52', '2021-12-31 00:22:52'),
(57, 'App\\Models\\User', 1, 'MyToken', 'b62c23bea66229cf5adab4d52baf1bc5817870b8da337ce7bfa197931d831497', '[\"*\"]', NULL, '2021-12-31 00:26:30', '2021-12-31 00:26:30'),
(58, 'App\\Models\\User', 16, 'MyToken', '03d70438b2cb39ea5b0e790c7b4411d67339f0a9777280ca8e77ed37f9554286', '[\"*\"]', NULL, '2021-12-31 00:29:05', '2021-12-31 00:29:05'),
(59, 'App\\Models\\User', 1, 'MyToken', 'da0c610666776738b81226135f0eb007b39be1082a96c27fa842dfcbc718ec1f', '[\"*\"]', NULL, '2021-12-31 01:01:49', '2021-12-31 01:01:49'),
(60, 'App\\Models\\User', 17, 'MyToken', '6e4799c3fb1f42706770ad02f6396e59eb6a2f6c3acd0b910d27b791779e7ef4', '[\"*\"]', NULL, '2021-12-31 01:03:57', '2021-12-31 01:03:57'),
(61, 'App\\Models\\User', 1, 'MyToken', '4bcf03f64544670f4a90100dec8b2abfc8f0747ed83044865c47682e49bef7b6', '[\"*\"]', NULL, '2021-12-31 22:08:13', '2021-12-31 22:08:13'),
(62, 'App\\Models\\User', 18, 'MyToken', '52db4b8fdf86bab3bc953a4341ab113f42ab8796c0fd8ce05e22e674b1398662', '[\"*\"]', NULL, '2021-12-31 23:57:38', '2021-12-31 23:57:38'),
(63, 'App\\Models\\User', 1, 'MyToken', '343dc0b0e0c04aaee298fe64d20cfea6c947f0619d46596f7da9451ece3a6009', '[\"*\"]', NULL, '2022-01-01 01:32:28', '2022-01-01 01:32:28'),
(64, 'App\\Models\\User', 1, 'MyToken', 'eb56b5e3a7e7c41640dbb5e9d157b82b566451323289bb86d61eb1ed15ad735f', '[\"*\"]', NULL, '2022-01-01 07:10:29', '2022-01-01 07:10:29'),
(65, 'App\\Models\\User', 19, 'MyToken', '6942d56dbc8fb7560dac76b82c413662c04691480b742f5da3d0199192ea4e2f', '[\"*\"]', NULL, '2022-01-01 07:14:03', '2022-01-01 07:14:03'),
(66, 'App\\Models\\User', 18, 'MyToken', '04f1c02ad577b81b8b94d32cf341c00c86ccd4a0661f24caa3b92e419105569c', '[\"*\"]', NULL, '2022-01-01 07:17:17', '2022-01-01 07:17:17'),
(67, 'App\\Models\\User', 1, 'MyToken', '05ce7bf913dc535a7bd78c20c0499530893bd9e24a87206981af2f6ce7e2e619', '[\"*\"]', NULL, '2022-01-01 07:20:18', '2022-01-01 07:20:18'),
(68, 'App\\Models\\User', 20, 'MyToken', '4bdb4606bf02f6ec6cb3f847bfe829e5ff5d7e8cb10636a94470e3a78d5013f6', '[\"*\"]', NULL, '2022-01-01 08:13:49', '2022-01-01 08:13:49'),
(69, 'App\\Models\\User', 20, 'MyToken', 'a7507e4457ab08faa81be5816a77e843176e10c10b4e8e19978eb105a38ba3e2', '[\"*\"]', NULL, '2022-01-01 08:14:11', '2022-01-01 08:14:11'),
(70, 'App\\Models\\User', 20, 'MyToken', '6fdae8bffa0d0b992a36d3a73bf43a64d897f0a235f48217804e37d63fec11af', '[\"*\"]', NULL, '2022-01-01 08:34:35', '2022-01-01 08:34:35'),
(71, 'App\\Models\\User', 20, 'MyToken', '220bc5f67277fa4fe9c0ab508835944e32f7a30b0088fe17d884035ec89652f7', '[\"*\"]', NULL, '2022-01-01 08:38:38', '2022-01-01 08:38:38'),
(72, 'App\\Models\\User', 21, 'MyToken', '1a0574076f5320ad1c6ef76f40bb463ed7fc33fb51894e121fd720e4733067b9', '[\"*\"]', NULL, '2022-01-01 08:40:00', '2022-01-01 08:40:00'),
(73, 'App\\Models\\User', 22, 'MyToken', 'e965c438522f5ad0df50c4dc8c3e5250c1437d01dc44f982f97a4a1eb760f7d2', '[\"*\"]', NULL, '2022-01-01 08:43:19', '2022-01-01 08:43:19'),
(74, 'App\\Models\\User', 20, 'MyToken', '43b98b20811973cf054b39ddcd7245adb18f0bdc68cb59a94444dbe637f7155d', '[\"*\"]', NULL, '2022-01-01 20:32:29', '2022-01-01 20:32:29'),
(75, 'App\\Models\\User', 20, 'MyToken', 'b20c5f043bd5ff391b737ea814f216c64fefaa65136d141820242befe41a8e66', '[\"*\"]', NULL, '2022-01-01 20:34:34', '2022-01-01 20:34:34'),
(76, 'App\\Models\\User', 20, 'MyToken', 'fd94a64ee49e113ae3ad673d11029afef62e19f54d8eaf6efec1e49710276023', '[\"*\"]', NULL, '2022-01-01 20:36:33', '2022-01-01 20:36:33'),
(77, 'App\\Models\\User', 23, 'MyToken', 'b3d67519397108ff00b415fc4a1b07194520d31d86a56b92fec4dbf0a9291cbe', '[\"*\"]', NULL, '2022-01-01 20:42:12', '2022-01-01 20:42:12'),
(78, 'App\\Models\\User', 24, 'MyToken', 'ad9b12d0aa86db091f25e2767d86628608c49d137bf2773d5e2ff58b074812e0', '[\"*\"]', NULL, '2022-01-01 20:43:19', '2022-01-01 20:43:19'),
(79, 'App\\Models\\User', 25, 'MyToken', '0cc8f7e7e99a4ecc9e870e1c29be34f472638bdf72d45d8333209a465be5f06b', '[\"*\"]', NULL, '2022-01-01 20:46:10', '2022-01-01 20:46:10'),
(80, 'App\\Models\\User', 20, 'MyToken', 'aa0ca4628d30b5e45945383002ec9011e2c1613d24987c25980ce1b2d7e4de86', '[\"*\"]', NULL, '2022-01-01 20:55:42', '2022-01-01 20:55:42'),
(81, 'App\\Models\\User', 20, 'MyToken', '6c0856f6a6e58635f453324a63aed8ed564cc99f7a381841b56304a376c23bca', '[\"*\"]', NULL, '2022-01-01 21:00:57', '2022-01-01 21:00:57'),
(82, 'App\\Models\\User', 20, 'MyToken', '9ea15d661d367c70c20f861b7e6d07cf05a89daf36bddb6cf5952f7f1e5256bf', '[\"*\"]', NULL, '2022-01-01 21:11:33', '2022-01-01 21:11:33'),
(83, 'App\\Models\\User', 20, 'MyToken', '30ceaf39d91075028a0c18e0df07e9096367795dac7ca2cd1a0ed5ab7f65f429', '[\"*\"]', NULL, '2022-01-01 21:11:51', '2022-01-01 21:11:51'),
(84, 'App\\Models\\User', 20, 'MyToken', 'b61264a39c5fa3a1b745ff950b000ee5eafce3365384c5001d5742ff4555bb63', '[\"*\"]', NULL, '2022-01-01 21:12:27', '2022-01-01 21:12:27'),
(85, 'App\\Models\\User', 21, 'MyToken', '9c3c98c71ee257d6b0ecc1abbf392980455fbf0b4e8e2c91effe8728c2320588', '[\"*\"]', NULL, '2022-01-01 21:12:38', '2022-01-01 21:12:38'),
(86, 'App\\Models\\User', 20, 'MyToken', '6303fdab344ba2c972504e20e41f983b8a2f11569f636e1e6f47c973d7226440', '[\"*\"]', NULL, '2022-01-01 21:13:51', '2022-01-01 21:13:51'),
(87, 'App\\Models\\User', 23, 'MyToken', '5be7c37141f24c35072ec278c527321c7534246957e06e1e493ace4ee6113066', '[\"*\"]', NULL, '2022-01-01 21:24:21', '2022-01-01 21:24:21'),
(88, 'App\\Models\\User', 20, 'MyToken', '02dbbc84cb45c356acee6355616bc805168533ede7e346772f9dad04203fda6b', '[\"*\"]', NULL, '2022-01-01 21:26:22', '2022-01-01 21:26:22'),
(89, 'App\\Models\\User', 26, 'MyToken', '14076d086c044c282c35559d1d87db31e5103aae7d1206dcdb5b290fe4491bbe', '[\"*\"]', NULL, '2022-01-02 00:10:08', '2022-01-02 00:10:08'),
(90, 'App\\Models\\User', 27, 'MyToken', '896e39204aabb9141fa448ecc28cbb78d918290222395c0d041e052a795efbe6', '[\"*\"]', NULL, '2022-01-02 00:17:02', '2022-01-02 00:17:02'),
(91, 'App\\Models\\User', 20, 'MyToken', '873b7662fe8bced97b522bca4149c85e8ed8ecba9f087f223eb3f0a044d95357', '[\"*\"]', NULL, '2022-01-02 00:17:39', '2022-01-02 00:17:39'),
(92, 'App\\Models\\User', 20, 'MyToken', 'b3d28c7aa171f1da2a85ecf96c73ddda4a5a4ea42858c137a6deccbaccb914fc', '[\"*\"]', NULL, '2022-01-02 00:22:39', '2022-01-02 00:22:39'),
(93, 'App\\Models\\User', 20, 'MyToken', '4ebf3e40dcaf373bd0cebe8a130e5a54a25ff68ce6f0273a2b75a61d8c77ca82', '[\"*\"]', NULL, '2022-01-02 00:23:57', '2022-01-02 00:23:57'),
(94, 'App\\Models\\User', 20, 'MyToken', 'b4c981e8a468aaaf940fb5f4055d7359196598fe781819398a999ef2fe598ce3', '[\"*\"]', NULL, '2022-01-02 00:26:48', '2022-01-02 00:26:48'),
(95, 'App\\Models\\User', 20, 'MyToken', '1140a301545c8991d94a2bba8d931102c73c5b45967220ba93e37f88738b49a8', '[\"*\"]', NULL, '2022-01-02 00:27:45', '2022-01-02 00:27:45'),
(96, 'App\\Models\\User', 20, 'MyToken', '729360c017f0d9d9bf7ec06b287e12ddfb4dc86cf7063a1459ba9058c5ca9de6', '[\"*\"]', NULL, '2022-01-02 00:29:04', '2022-01-02 00:29:04'),
(97, 'App\\Models\\User', 20, 'MyToken', '7617ff0c87e943c5c91fad9dd45aca140ecbff9aaf0751a17dfbbd506ccc2939', '[\"*\"]', NULL, '2022-01-02 00:32:27', '2022-01-02 00:32:27'),
(98, 'App\\Models\\User', 20, 'MyToken', '2df18155be4dc3587fcaaf7211bbeb9cc64c5fbd3e36686105ba9040e71ad678', '[\"*\"]', NULL, '2022-01-02 00:34:45', '2022-01-02 00:34:45'),
(99, 'App\\Models\\User', 20, 'MyToken', 'f3076a3d727b800a5fea423b64637edd5ceae3c71b68105d172d09cb21fc9da0', '[\"*\"]', NULL, '2022-01-02 00:36:04', '2022-01-02 00:36:04'),
(100, 'App\\Models\\User', 20, 'MyToken', 'd9037d1ff5bbdb33364a077bc53a2cd6c288fd0f92cea7b2dd9e8d97d6f8a6f0', '[\"*\"]', NULL, '2022-01-02 00:37:12', '2022-01-02 00:37:12'),
(101, 'App\\Models\\User', 20, 'MyToken', '38596c28ef465223086ec2e325af12a31852d6e1a487335084cd79ee727cbfd0', '[\"*\"]', NULL, '2022-01-02 00:39:25', '2022-01-02 00:39:25'),
(102, 'App\\Models\\User', 20, 'MyToken', '83d4c340f5aa3e1dec7874a4c01794c59fa8ff05ce537b9437ccfb563ef8950c', '[\"*\"]', NULL, '2022-01-02 00:41:09', '2022-01-02 00:41:09'),
(103, 'App\\Models\\User', 24, 'MyToken', '2e2e2bfbe32d427d36fcf1d32105b115bf722b02284729c175ad754084864cdf', '[\"*\"]', NULL, '2022-01-02 01:02:48', '2022-01-02 01:02:48'),
(104, 'App\\Models\\User', 20, 'MyToken', '0be683f47ce7fa80d0d2163c849a82a8341d6eb6de8a2a5a9dc58b74566f7148', '[\"*\"]', NULL, '2022-01-02 01:33:05', '2022-01-02 01:33:05'),
(105, 'App\\Models\\User', 28, 'MyToken', '6b0cca2d9d157ff4fe3e69ef3b78a6a9923e8500806bac4764918e601acb6e79', '[\"*\"]', NULL, '2022-01-02 02:01:44', '2022-01-02 02:01:44'),
(106, 'App\\Models\\User', 28, 'MyToken', 'c133fd342b5ba473467ae476679f774d4cd536fe163130ad354ce559e4df8f8a', '[\"*\"]', NULL, '2022-01-02 02:02:07', '2022-01-02 02:02:07'),
(107, 'App\\Models\\User', 20, 'MyToken', 'c1586e36c5d3e053d035368d85f1dad04c23e6de8326777726f92da745c0049f', '[\"*\"]', NULL, '2022-01-02 02:02:33', '2022-01-02 02:02:33'),
(108, 'App\\Models\\User', 29, 'MyToken', 'f35380b8ce098c94bf05feb6f803cfbac768ffb1dec3b9ac7d81c6082b150392', '[\"*\"]', NULL, '2022-01-02 02:07:01', '2022-01-02 02:07:01'),
(109, 'App\\Models\\User', 30, 'MyToken', 'a0c893f6d1b67a28d82af276d102c8ee8b8c984e457ba0c3109ffc6604b4dd79', '[\"*\"]', NULL, '2022-01-02 02:08:30', '2022-01-02 02:08:30'),
(110, 'App\\Models\\User', 31, 'MyToken', '7317b416d2efc5864c92e49a36b4b75d225bdbce67d051d17677285e1ad86c86', '[\"*\"]', NULL, '2022-01-02 02:10:33', '2022-01-02 02:10:33'),
(111, 'App\\Models\\User', 32, 'MyToken', 'e94aa20e646f2448db52da12d7544cd9090aad013af3c8f563899d5a00b5eefd', '[\"*\"]', NULL, '2022-01-02 02:11:10', '2022-01-02 02:11:10'),
(112, 'App\\Models\\User', 33, 'MyToken', '503f034443edac6c01a53a15c72821c21ac21e3c88fe5bde57c9985a5109f091', '[\"*\"]', NULL, '2022-01-02 02:11:45', '2022-01-02 02:11:45'),
(113, 'App\\Models\\User', 34, 'MyToken', '81b210a0ad1781294e3ed8f75d41cabdfe08deef7005fb1fa643e56cb5d5682d', '[\"*\"]', NULL, '2022-01-02 02:45:09', '2022-01-02 02:45:09'),
(114, 'App\\Models\\User', 34, 'MyToken', '2046e5c0407982d4d06e62c825f12e157f0ca9383fe6aefe178543a3a502cfa1', '[\"*\"]', NULL, '2022-01-02 03:13:04', '2022-01-02 03:13:04'),
(115, 'App\\Models\\User', 20, 'MyToken', '65db66ca01327a3ec43e07a91e7daea49c26a795c2c271ff19782a68e6c856c8', '[\"*\"]', NULL, '2022-01-02 03:17:35', '2022-01-02 03:17:35'),
(116, 'App\\Models\\User', 21, 'MyToken', '2f5ecb4177a3f8916dcd3a65707fb2044524c52550e913da215dd1486795069b', '[\"*\"]', NULL, '2022-01-02 05:47:23', '2022-01-02 05:47:23'),
(117, 'App\\Models\\User', 20, 'MyToken', '7b682374d57cfa386bf6c1bbc08f94d0b06d564f414b6778a452d18f002806b1', '[\"*\"]', NULL, '2022-01-02 05:48:34', '2022-01-02 05:48:34'),
(118, 'App\\Models\\User', 20, 'MyToken', 'ebb03fe8c48bb94ebea664f40bbcbfd42ef702526f85e318bf23971146d58191', '[\"*\"]', NULL, '2022-01-02 05:57:50', '2022-01-02 05:57:50'),
(119, 'App\\Models\\User', 33, 'MyToken', '01850a5638de7e315bf58353fda57f21d04f6a2565cd9aba449500ecb83c33cb', '[\"*\"]', NULL, '2022-01-02 06:05:28', '2022-01-02 06:05:28'),
(120, 'App\\Models\\User', 20, 'MyToken', 'df40d55cce0e9c49c23fc93b9404f54e6fc51a256da0d4e90faa5f4164e492cc', '[\"*\"]', NULL, '2022-01-02 06:05:57', '2022-01-02 06:05:57'),
(121, 'App\\Models\\User', 20, 'MyToken', '5e9abf78c6de12880f5a428dfc01c942dacac2e22646143e87a0b8b43e50916c', '[\"*\"]', NULL, '2022-01-02 17:12:07', '2022-01-02 17:12:07'),
(122, 'App\\Models\\User', 35, 'MyToken', '5b3583e97330abbad4b5a70336c4fb4579f9176deb44f3bd87115aebb5b8c640', '[\"*\"]', NULL, '2022-01-02 18:15:52', '2022-01-02 18:15:52'),
(123, 'App\\Models\\User', 36, 'MyToken', 'c8b6aac95bd9433b499a3056c8f5cd975a8486f2c422fa47019d276ddbf41891', '[\"*\"]', NULL, '2022-01-02 18:47:20', '2022-01-02 18:47:20'),
(124, 'App\\Models\\User', 20, 'MyToken', '85f8e18ff3ac9d72c2b861a2ab6b0c88311fab6e1c72efb82ff74a3df7f777d9', '[\"*\"]', NULL, '2022-01-02 19:12:22', '2022-01-02 19:12:22'),
(125, 'App\\Models\\User', 34, 'MyToken', '823ffc6bdcea6386ae85d0d3773918aa43b3531c7e433264692a7c5b27f4e22c', '[\"*\"]', NULL, '2022-01-02 19:41:37', '2022-01-02 19:41:37'),
(126, 'App\\Models\\User', 20, 'MyToken', '4c3425a261a74ed6c093a8a01caed5199c5ef14c3160d8562f23182deccc623b', '[\"*\"]', NULL, '2022-01-02 19:42:59', '2022-01-02 19:42:59'),
(127, 'App\\Models\\User', 34, 'MyToken', 'f3d33d65f769b9c0d83683ce8c2f116d09c04c6d12a8c7b0af97311af1b8654e', '[\"*\"]', NULL, '2022-01-02 19:48:50', '2022-01-02 19:48:50'),
(128, 'App\\Models\\User', 20, 'MyToken', '4d2c09598401ad0f2e27bf9a254f601eb39b35b0663f2a4e2b935efa87fe33c2', '[\"*\"]', NULL, '2022-01-02 19:49:45', '2022-01-02 19:49:45'),
(129, 'App\\Models\\User', 37, 'MyToken', 'fd1364f0217664c21b4eca1020785dfa61221a7e0474a7c414a31f036717508d', '[\"*\"]', NULL, '2022-01-02 23:30:37', '2022-01-02 23:30:37'),
(130, 'App\\Models\\User', 33, 'MyToken', 'd278b8f7405aa0057af2d3d75bd9160bae0944a9f8add6eb34796f716b8c8e17', '[\"*\"]', NULL, '2022-01-03 00:16:51', '2022-01-03 00:16:51'),
(131, 'App\\Models\\User', 20, 'MyToken', '3c1fbf642086421f7f2f9a1755238f583cec14587e31178968b9a699c17ff40d', '[\"*\"]', NULL, '2022-01-03 00:26:53', '2022-01-03 00:26:53'),
(132, 'App\\Models\\User', 20, 'MyToken', '41d63c89aed564c15c2ca2e8d79a96883b39d1d0d21227dc63d2a8c695564cc5', '[\"*\"]', NULL, '2022-01-03 01:17:53', '2022-01-03 01:17:53'),
(133, 'App\\Models\\User', 21, 'MyToken', 'f9f483adc5668ebb2ab423f5610edf486a64c5eca5f753ad6cbc9bf0e7b3d4ae', '[\"*\"]', NULL, '2022-01-03 02:20:43', '2022-01-03 02:20:43'),
(134, 'App\\Models\\User', 20, 'MyToken', '6ef9050671aa7d4823e7e70a23facc5f3652ab0da034aaf997637bcaa84ccabe', '[\"*\"]', NULL, '2022-01-03 02:22:03', '2022-01-03 02:22:03'),
(135, 'App\\Models\\User', 21, 'MyToken', 'cdd7bb5cd50e5b9557de0f786d8ea74890a03c24016911aafdb6d4f4dcb8c352', '[\"*\"]', NULL, '2022-01-03 02:39:57', '2022-01-03 02:39:57'),
(136, 'App\\Models\\User', 20, 'MyToken', '58344778fb685f1fe9f4be2fde2d3acb29c92a625b7e0dd898e13c3f0c7afd97', '[\"*\"]', NULL, '2022-01-03 02:40:45', '2022-01-03 02:40:45'),
(137, 'App\\Models\\User', 20, 'MyToken', 'fe4d499d21abdfb311955a708205a358134d42c6025376a8d23c6a8ddee754c2', '[\"*\"]', NULL, '2022-01-03 04:21:02', '2022-01-03 04:21:02'),
(138, 'App\\Models\\User', 38, 'MyToken', 'aae6f742e94b1fb17fd069fdd9bea31a61fe5b9e799feba65a893c2f90286b59', '[\"*\"]', NULL, '2022-01-03 04:21:42', '2022-01-03 04:21:42'),
(139, 'App\\Models\\User', 38, 'MyToken', 'b154b2446071e850d08fb5742e85676c1dcb93448fa1fe47958b7323f86a9f11', '[\"*\"]', NULL, '2022-01-03 04:21:54', '2022-01-03 04:21:54'),
(140, 'App\\Models\\User', 20, 'MyToken', 'c9f4a8e07670a370743f2ba524dc30b166aef55d95946d04a0ab48a953ecbad3', '[\"*\"]', NULL, '2022-01-03 04:27:41', '2022-01-03 04:27:41'),
(141, 'App\\Models\\User', 31, 'MyToken', 'ba8770948b40e4382a4f5e5e03c504ac8937799f926b61bffb2b78985e1b7605', '[\"*\"]', NULL, '2022-01-03 04:28:03', '2022-01-03 04:28:03'),
(142, 'App\\Models\\User', 20, 'MyToken', '619f162094483dd9953c2a5aed49d3a24d3446243f679074bd869c6918f10610', '[\"*\"]', NULL, '2022-01-03 04:38:13', '2022-01-03 04:38:13'),
(143, 'App\\Models\\User', 20, 'MyToken', '3300648442a0470fffc41e9d0739ed421fe3d9213a86d2c9ce248b228e6ecf9f', '[\"*\"]', NULL, '2022-01-03 17:01:13', '2022-01-03 17:01:13'),
(144, 'App\\Models\\User', 24, 'MyToken', '857426c9cd8ef14ad0b3a86e16816ab1f356ccfa3437297ab080e1c20c03118d', '[\"*\"]', NULL, '2022-01-03 17:52:55', '2022-01-03 17:52:55'),
(145, 'App\\Models\\User', 20, 'MyToken', 'e641f734d9707fa908b27166453ca788e41f2c2ccd8ba30c64532c57cb47e9c8', '[\"*\"]', NULL, '2022-01-03 17:53:14', '2022-01-03 17:53:14'),
(146, 'App\\Models\\User', 21, 'MyToken', 'f8b77f4fd8a5edabfb87cb78523b98532de7125f61b4b50f9d469f9282a6399c', '[\"*\"]', NULL, '2022-01-03 17:56:29', '2022-01-03 17:56:29'),
(147, 'App\\Models\\User', 20, 'MyToken', 'ef7953133b80b3755744968797f72ea4b9ec9c9362a3f56247bb5bda419a2e47', '[\"*\"]', NULL, '2022-01-03 17:57:51', '2022-01-03 17:57:51'),
(148, 'App\\Models\\User', 38, 'MyToken', '3aeb27f2fd74b8680787c29e7ad170cbc44c56dafa2cad0f29751dcd8c056a72', '[\"*\"]', NULL, '2022-01-03 18:56:41', '2022-01-03 18:56:41'),
(149, 'App\\Models\\User', 20, 'MyToken', '6f540994c2c9a69b350cc8a127b95f27d77876d7a13194478ee6250951fc4bb0', '[\"*\"]', NULL, '2022-01-03 18:57:05', '2022-01-03 18:57:05'),
(150, 'App\\Models\\User', 21, 'MyToken', '8b45c342da96048795a7db90f6c30373383d01c09849def873ae662287a3a49e', '[\"*\"]', NULL, '2022-01-03 19:04:10', '2022-01-03 19:04:10'),
(151, 'App\\Models\\User', 21, 'MyToken', '1e9f3e8cd940135f863623c58299f35588c0390369a2f20b70a11cd3a0fa0266', '[\"*\"]', NULL, '2022-01-03 19:04:35', '2022-01-03 19:04:35'),
(152, 'App\\Models\\User', 20, 'MyToken', 'c53530a7264fc95c54f8aebfef3ed4116a1083b582c5fdb2177e5ac78853cb2b', '[\"*\"]', NULL, '2022-01-03 19:06:04', '2022-01-03 19:06:04'),
(153, 'App\\Models\\User', 20, 'MyToken', '0a3945add2d0241a077cf2ed9bc8aa148c10fa8d86b3a27408b2ac5b7895ca6c', '[\"*\"]', NULL, '2022-01-03 19:23:39', '2022-01-03 19:23:39'),
(154, 'App\\Models\\User', 20, 'MyToken', 'c6ea65363f9df4bcaae2062aeec3f3171078e03e2aa9c377d3a7755ca9740154', '[\"*\"]', NULL, '2022-01-03 19:28:33', '2022-01-03 19:28:33'),
(155, 'App\\Models\\User', 39, 'MyToken', '1cdb2e51c9f352513541f541b2ac97167c281e5d245dbe1418bdbbe50de5a3fe', '[\"*\"]', NULL, '2022-01-03 19:29:44', '2022-01-03 19:29:44'),
(156, 'App\\Models\\User', 39, 'MyToken', 'dd9149bd9183ec5e34a0d4a209cf3bd6a5447682ff8e87a3807ca5db7d02cb59', '[\"*\"]', NULL, '2022-01-03 19:30:20', '2022-01-03 19:30:20'),
(157, 'App\\Models\\User', 20, 'MyToken', '8af06fd1202d97c835401aedf63609b0b1897de0c522f063e38425c26a5474ee', '[\"*\"]', NULL, '2022-01-03 19:31:43', '2022-01-03 19:31:43'),
(158, 'App\\Models\\User', 39, 'MyToken', 'd89cdabee8335f3b0cb7561c3e3b2f4214b2c27555d53a67a5cd4cce78832e98', '[\"*\"]', NULL, '2022-01-03 19:34:22', '2022-01-03 19:34:22'),
(159, 'App\\Models\\User', 20, 'MyToken', 'f896c5ec665efa06b1e883be40f236870e35a40db7f94f8e076d8280fb6af75e', '[\"*\"]', NULL, '2022-01-03 19:36:18', '2022-01-03 19:36:18'),
(160, 'App\\Models\\User', 21, 'MyToken', 'f4e2badac2a5809c25b5a811e5c9d641f48a7d9458cfd878973bafc9c34a473c', '[\"*\"]', NULL, '2022-01-03 19:42:22', '2022-01-03 19:42:22'),
(161, 'App\\Models\\User', 20, 'MyToken', '5fd7eea4ad50bdb58e2eab079c3237d3870cf6ead42213cf0e5c88c3d11b5acb', '[\"*\"]', NULL, '2022-01-03 19:42:52', '2022-01-03 19:42:52'),
(162, 'App\\Models\\User', 40, 'MyToken', 'a402b1bb103852b54a40f851acd619e4fd665471ae93fabb3c1a1b2afdeadd1b', '[\"*\"]', NULL, '2022-01-03 19:43:37', '2022-01-03 19:43:37'),
(163, 'App\\Models\\User', 40, 'MyToken', '13bfe8f8b386f8f792bf6a37d22c5a2e1c36a82fb00239eb0aad254ccdd8da22', '[\"*\"]', NULL, '2022-01-03 19:43:56', '2022-01-03 19:43:56'),
(164, 'App\\Models\\User', 20, 'MyToken', '653ef41bc3dde8bf52a164ba75817612fd5ecd41df38e134c2e40ffc7ac092f6', '[\"*\"]', NULL, '2022-01-03 19:44:39', '2022-01-03 19:44:39'),
(165, 'App\\Models\\User', 34, 'MyToken', '51f57c6a7085b5f07ecacbcc2b737fa04877e81fb5d0a80bdee19951674d221d', '[\"*\"]', NULL, '2022-01-03 19:44:53', '2022-01-03 19:44:53'),
(166, 'App\\Models\\User', 20, 'MyToken', '29bc327355acfe6f872856a3d184024cb6d9a191ba1e534783a1f63d521c9ca6', '[\"*\"]', NULL, '2022-01-03 19:45:08', '2022-01-03 19:45:08'),
(167, 'App\\Models\\User', 41, 'MyToken', '53037d7e4683eded6dc9c6cb2370ad932f0dcfd15fab118cd25bf6e36d39a3e2', '[\"*\"]', NULL, '2022-01-03 19:46:10', '2022-01-03 19:46:10'),
(168, 'App\\Models\\User', 20, 'MyToken', '0663a9be91741a6f018b79330a8dc3060984a1bc29a828dc5ed449f3242f0111', '[\"*\"]', NULL, '2022-01-03 19:46:51', '2022-01-03 19:46:51'),
(169, 'App\\Models\\User', 41, 'MyToken', '582e6e691fd8d6bc70901998310c60e76805f787721dbdb5da206f73fb3d77c6', '[\"*\"]', NULL, '2022-01-03 19:47:33', '2022-01-03 19:47:33'),
(170, 'App\\Models\\User', 20, 'MyToken', 'ead3c2043877b4d2713ea9cfcc48f90aeb5c41af8be047069371a31ec638aaa0', '[\"*\"]', NULL, '2022-01-03 19:48:42', '2022-01-03 19:48:42'),
(171, 'App\\Models\\User', 24, 'MyToken', 'a25214be15ad5f64ad415d1d9f2de7d31cd75783a147140a38a8f8b0a0aebc2f', '[\"*\"]', NULL, '2022-01-03 19:52:46', '2022-01-03 19:52:46'),
(172, 'App\\Models\\User', 20, 'MyToken', 'ace0da7e6daf431d88cca90efffe895db4eef53ccb51454a5ea03c6ee6c1434f', '[\"*\"]', NULL, '2022-01-03 19:53:05', '2022-01-03 19:53:05'),
(173, 'App\\Models\\User', 42, 'MyToken', '00a612993a5bd3def3dc5d33017384b544bffc46362ed06e0ca2b6c08c52d901', '[\"*\"]', NULL, '2022-01-03 19:53:56', '2022-01-03 19:53:56'),
(174, 'App\\Models\\User', 42, 'MyToken', '6247fb0f3878e9ef4b5e37b1acfe147a013cc32e32ca0c5835e91c142f8fc310', '[\"*\"]', NULL, '2022-01-03 19:54:06', '2022-01-03 19:54:06'),
(175, 'App\\Models\\User', 20, 'MyToken', '3c573d0d71d5de1f8334d40aeb0cae6d4356259a27ef8655d8a60f6cf131b6cd', '[\"*\"]', NULL, '2022-01-03 19:54:40', '2022-01-03 19:54:40'),
(176, 'App\\Models\\User', 20, 'MyToken', 'f758d8d2076313d6cd20e6f387abacaec220351cda733b14fd39d13733b275b6', '[\"*\"]', NULL, '2022-01-03 19:58:56', '2022-01-03 19:58:56'),
(177, 'App\\Models\\User', 23, 'MyToken', 'c84926f14d2d403b824bcce04c04a9a5da3faa0d030c22832d7ce812ad0c5697', '[\"*\"]', NULL, '2022-01-03 20:00:18', '2022-01-03 20:00:18'),
(178, 'App\\Models\\User', 20, 'MyToken', '987ce071a803dc06f85116faff283176a292dace1cd91026e20604878362f27a', '[\"*\"]', NULL, '2022-01-03 20:00:39', '2022-01-03 20:00:39'),
(179, 'App\\Models\\User', 43, 'MyToken', 'f89251c990fa36e1a4915fc00567ee53f58e33f08791743f40a0b74dcfbef806', '[\"*\"]', NULL, '2022-01-03 20:01:16', '2022-01-03 20:01:16'),
(180, 'App\\Models\\User', 43, 'MyToken', 'c67b81534241f18b2c6ac87728104a2d853b6a2c11d75fb0861e787802bb5e0a', '[\"*\"]', NULL, '2022-01-03 20:01:27', '2022-01-03 20:01:27'),
(181, 'App\\Models\\User', 20, 'MyToken', 'f5c4c7dcedb945f4a44d9429703dacb73a1a2c0f584ec0caef883e1c7785d299', '[\"*\"]', NULL, '2022-01-03 20:02:04', '2022-01-03 20:02:04'),
(182, 'App\\Models\\User', 39, 'MyToken', '820b18f8ff146875da04252b3d86e5403bfb11a2c7a1c3b33b619e91171a77d8', '[\"*\"]', NULL, '2022-01-03 20:12:01', '2022-01-03 20:12:01'),
(183, 'App\\Models\\User', 20, 'MyToken', '37fb6e8227da00c3a6498fec5b4a0696fc1f77168c1b8f79e0fa9c0014806747', '[\"*\"]', NULL, '2022-01-03 20:12:51', '2022-01-03 20:12:51'),
(184, 'App\\Models\\User', 39, 'MyToken', 'f9877b56b266dd0cfb70b219eafdaa471b116539cd5d5a9e485cd8111a41a458', '[\"*\"]', NULL, '2022-01-03 20:22:05', '2022-01-03 20:22:05'),
(185, 'App\\Models\\User', 20, 'MyToken', 'f27d441818df60d29572675ed75af4994b1e78950427d79a0dcfa2b0f1bcf80c', '[\"*\"]', NULL, '2022-01-03 20:22:37', '2022-01-03 20:22:37'),
(186, 'App\\Models\\User', 40, 'MyToken', 'c6df3ad2ab13b33123097e4f7127b177a71700311a6ae8cb4701a367c4c22aaa', '[\"*\"]', NULL, '2022-01-03 20:36:58', '2022-01-03 20:36:58'),
(187, 'App\\Models\\User', 20, 'MyToken', '5346947e96abba0251499bcb9f9295b716200cd85906682874535d9d7431f1f1', '[\"*\"]', NULL, '2022-01-03 20:38:13', '2022-01-03 20:38:13'),
(188, 'App\\Models\\User', 40, 'MyToken', '345c9ea6f9e9f28dc790bf6ae02c77c499a3ac5db10112a813728f16f1e831b1', '[\"*\"]', NULL, '2022-01-03 20:44:54', '2022-01-03 20:44:54'),
(189, 'App\\Models\\User', 20, 'MyToken', '955317a424715618d134fab5a0181e7dd5b568a8deb4153e6010cc2d099a582b', '[\"*\"]', NULL, '2022-01-03 20:51:04', '2022-01-03 20:51:04'),
(190, 'App\\Models\\User', 40, 'MyToken', 'c1c6a8a66ec7289c5025a1d7744914868f3a6e4da76cbc75f7543a652447baa4', '[\"*\"]', NULL, '2022-01-03 21:00:50', '2022-01-03 21:00:50'),
(191, 'App\\Models\\User', 20, 'MyToken', '84112bfa4c0875764d94fa2d68de0c7594c95303ed02b14799a5726e9b6c06ac', '[\"*\"]', NULL, '2022-01-03 21:02:45', '2022-01-03 21:02:45'),
(192, 'App\\Models\\User', 39, 'MyToken', 'fe687ae35b4d06037d6bfb15f16c3acead362ededb66bd14190f0753833517e1', '[\"*\"]', NULL, '2022-01-03 21:07:17', '2022-01-03 21:07:17'),
(193, 'App\\Models\\User', 20, 'MyToken', '7645ffcfc1ecef1b0cbb40de42b59df5e201560a4d8c934440d412fc7baaebde', '[\"*\"]', NULL, '2022-01-03 21:08:33', '2022-01-03 21:08:33'),
(194, 'App\\Models\\User', 39, 'MyToken', 'a6a4b756250ac02b21b68d97a4911ec3f009e1092107c5a85ca4178d9c5c7843', '[\"*\"]', NULL, '2022-01-03 21:15:33', '2022-01-03 21:15:33'),
(195, 'App\\Models\\User', 20, 'MyToken', '490cf8b3205e0d0662d659f108a118713c2820be885686729ab62310c6bc7aa5', '[\"*\"]', NULL, '2022-01-03 21:30:03', '2022-01-03 21:30:03'),
(196, 'App\\Models\\User', 20, 'MyToken', 'c616644b92bb4bd24b345e89aefc9935285196ec689d71b3b6cf9574bd724768', '[\"*\"]', NULL, '2022-01-03 22:57:42', '2022-01-03 22:57:42'),
(197, 'App\\Models\\User', 44, 'MyToken', '5cd4a8c290ef98dcb1cdcae885e487c8d82365564040cfb288483cb75ce90e14', '[\"*\"]', NULL, '2022-01-03 23:00:31', '2022-01-03 23:00:31'),
(198, 'App\\Models\\User', 20, 'MyToken', '964c187c87b0d9dd1c31c215d38bcfedfc3d11be32d1a51f5697dee60c58f9e3', '[\"*\"]', NULL, '2022-01-03 23:48:21', '2022-01-03 23:48:21'),
(199, 'App\\Models\\User', 44, 'MyToken', '04f472ffb7fec7c8785fbd7da4d9f57b73fb3b7230b7710fc8df28130a7c79d4', '[\"*\"]', NULL, '2022-01-03 23:48:41', '2022-01-03 23:48:41'),
(200, 'App\\Models\\User', 20, 'MyToken', '8177d81be8c022e53d64fc1818b5b6476e67d61b18f91819f94665efb16a33c7', '[\"*\"]', NULL, '2022-01-04 00:07:32', '2022-01-04 00:07:32'),
(201, 'App\\Models\\User', 20, 'MyToken', '67461d0df986f200b75a41caf00cf1184bc852fd2b3ae7c6c8c9f8655ad0be2a', '[\"*\"]', NULL, '2022-01-04 00:32:34', '2022-01-04 00:32:34'),
(202, 'App\\Models\\User', 45, 'MyToken', 'c776623cf849789aef41616a30ba1ddd7f6d5bf19ba3332648374db568580851', '[\"*\"]', NULL, '2022-01-04 00:35:36', '2022-01-04 00:35:36'),
(203, 'App\\Models\\User', 44, 'MyToken', '3284538ad4db8a1ee5409d188c04aec172cfc1e3bfca9d6a641df335946e1b5e', '[\"*\"]', NULL, '2022-01-04 00:38:15', '2022-01-04 00:38:15'),
(204, 'App\\Models\\User', 39, 'MyToken', 'd1ed29a23971af0f2908a2d789104f1397fbed387d96604e3aae2c72d91b2174', '[\"*\"]', NULL, '2022-01-04 00:39:11', '2022-01-04 00:39:11'),
(205, 'App\\Models\\User', 44, 'MyToken', '795498ca1f29b500b5d46c73b0d6ad9155c7e1a118290226126570e32a199b81', '[\"*\"]', NULL, '2022-01-04 00:40:41', '2022-01-04 00:40:41'),
(206, 'App\\Models\\User', 20, 'MyToken', 'b2808043ec41b9fb9518a1d3dd31d4e0880e793b9f9947ede6a2ec93714ea76a', '[\"*\"]', NULL, '2022-01-04 01:13:14', '2022-01-04 01:13:14'),
(207, 'App\\Models\\User', 40, 'MyToken', '6bc5e1eda9c4d05af86788b66a100615058a175b41e56e0a590345ffa4aa9aa1', '[\"*\"]', NULL, '2022-01-04 01:14:41', '2022-01-04 01:14:41'),
(208, 'App\\Models\\User', 20, 'MyToken', 'b12512c38d89a4c32cde3ebd3640b1c0d9c9b03553a75599cb8afb438a08927c', '[\"*\"]', NULL, '2022-01-04 01:16:10', '2022-01-04 01:16:10'),
(209, 'App\\Models\\User', 44, 'MyToken', '9f5141ac95f3e8b5599da401d2eea7cd1fad0605f7a1967d92f690336570679e', '[\"*\"]', NULL, '2022-01-04 01:16:25', '2022-01-04 01:16:25'),
(210, 'App\\Models\\User', 40, 'MyToken', '67c172bc3d90a045d982451b7b2ce9127ce82e2b5cc133fa8f9983300e217520', '[\"*\"]', NULL, '2022-01-04 01:18:06', '2022-01-04 01:18:06'),
(211, 'App\\Models\\User', 20, 'MyToken', '51903c3a19fee5bd29a11f5583c357a01c60598365fd4b45013245103930263e', '[\"*\"]', NULL, '2022-01-04 01:25:31', '2022-01-04 01:25:31'),
(212, 'App\\Models\\User', 20, 'MyToken', '71e214b72bde65d42d816cf9cf631797b72736e2edf64d28e00e1a186ba87248', '[\"*\"]', NULL, '2022-01-04 02:18:34', '2022-01-04 02:18:34'),
(213, 'App\\Models\\User', 20, 'MyToken', '7805923f78b342f68a51d01d5d8f64f03ade2f70723111170b4f2292d514ad06', '[\"*\"]', NULL, '2022-01-04 05:21:54', '2022-01-04 05:21:54'),
(214, 'App\\Models\\User', 20, 'MyToken', 'f3e7b2355abd4a69cde4198337b6b0665c41e19ed7c05b96bf25d73d5501ab12', '[\"*\"]', NULL, '2022-01-04 05:25:44', '2022-01-04 05:25:44'),
(215, 'App\\Models\\User', 20, 'MyToken', '6ee8b8d3b2a6557a06ee2026aee04774536ea36a114966e2674df029b3c93420', '[\"*\"]', NULL, '2022-01-04 05:26:04', '2022-01-04 05:26:04'),
(216, 'App\\Models\\User', 40, 'MyToken', 'a535963f0f965c02d2a1d2f1881edd73b5379caf909e472b2c0133c2b435fa31', '[\"*\"]', NULL, '2022-01-04 05:26:18', '2022-01-04 05:26:18'),
(217, 'App\\Models\\User', 20, 'MyToken', 'c691e5dcbb69514c1f94059f974edea3d0bfd0c82b58de1f60b2918babded4cb', '[\"*\"]', NULL, '2022-01-04 05:26:43', '2022-01-04 05:26:43'),
(218, 'App\\Models\\User', 41, 'MyToken', 'b9a257e4b194eafdc720868b321bf810ce73cf65a9c04af5a6969ac969d5e529', '[\"*\"]', NULL, '2022-01-04 05:26:56', '2022-01-04 05:26:56'),
(219, 'App\\Models\\User', 20, 'MyToken', '3efbaf22cd682fa00e4fe17c025f3858a3d000a79653c14681fff9a1f3bc0ec0', '[\"*\"]', NULL, '2022-01-04 05:27:07', '2022-01-04 05:27:07'),
(220, 'App\\Models\\User', 46, 'MyToken', '9c0512f7103da6b6e00b0d606c634815dc99750f2d7c9d3f1e8044072386f8f1', '[\"*\"]', NULL, '2022-01-04 05:27:52', '2022-01-04 05:27:52'),
(221, 'App\\Models\\User', 46, 'MyToken', 'b7a0b52f3386f7a15a63c8969ae4f7674426032271a6d5baae469237a8b755cb', '[\"*\"]', NULL, '2022-01-04 05:28:13', '2022-01-04 05:28:13'),
(222, 'App\\Models\\User', 20, 'MyToken', '39a2278759b6d2a379b663dbc1d5cceeb07feb2b06db3514f13d52c89ecdc20a', '[\"*\"]', NULL, '2022-01-04 05:28:52', '2022-01-04 05:28:52'),
(223, 'App\\Models\\User', 39, 'MyToken', '327d085d2bca2175bf5b275b6d7a6e96eb728f48a19bea59646d6380df86cc38', '[\"*\"]', NULL, '2022-01-04 05:35:12', '2022-01-04 05:35:12'),
(224, 'App\\Models\\User', 20, 'MyToken', '9cfb3e38fa83070dc207281723948d163c3bf1e2009ed88cb8c436c9daa33a19', '[\"*\"]', NULL, '2022-01-04 05:49:45', '2022-01-04 05:49:45'),
(225, 'App\\Models\\User', 43, 'MyToken', 'e49c4ab2acf18ec21532e1c2c3d2c89ac32d8b1ee77912d47266522ee521a791', '[\"*\"]', NULL, '2022-01-04 05:53:20', '2022-01-04 05:53:20'),
(226, 'App\\Models\\User', 20, 'MyToken', '291d0d282bcec4a2110b1dfcb46e39dafeabbd1aea822b495e704b1e330541cd', '[\"*\"]', NULL, '2022-01-04 05:53:29', '2022-01-04 05:53:29'),
(227, 'App\\Models\\User', 47, 'MyToken', '78e79416605549138b2f28b5f4d1b4dc70e06ccac28c286e5d9fc9f7b0342040', '[\"*\"]', NULL, '2022-01-04 06:02:18', '2022-01-04 06:02:18'),
(228, 'App\\Models\\User', 48, 'MyToken', '391c5a6ecb931da3426dcabe85454118d9d3c90865f7afbc9d8780c0f57995fd', '[\"*\"]', NULL, '2022-01-04 06:09:03', '2022-01-04 06:09:03'),
(229, 'App\\Models\\User', 49, 'MyToken', '38d013f64073018c2c82716ed4a07fa7483d0883c7415c633fb03179a5a9d88a', '[\"*\"]', NULL, '2022-01-04 06:16:50', '2022-01-04 06:16:50'),
(230, 'App\\Models\\User', 50, 'MyToken', '988b6f2744ea86674342b73c0feba8da63bfe1843cdf8bacd7fd277f13b828b9', '[\"*\"]', NULL, '2022-01-04 06:20:35', '2022-01-04 06:20:35'),
(231, 'App\\Models\\User', 51, 'MyToken', '251ec5d29e693419552049bd397131f015bc293dfb20c988d434ec04df78fc9b', '[\"*\"]', NULL, '2022-01-04 06:21:18', '2022-01-04 06:21:18'),
(232, 'App\\Models\\User', 40, 'MyToken', '60e2749fbef15aa4b401779b332bf2cc7cd62b81b2709aaa36b886d5694ccf61', '[\"*\"]', NULL, '2022-01-04 06:27:37', '2022-01-04 06:27:37'),
(233, 'App\\Models\\User', 46, 'MyToken', '6d02052a48b8e35b2deaff4797d33bbd0d0b0714d26fc909d18583c897aa9500', '[\"*\"]', NULL, '2022-01-04 06:27:52', '2022-01-04 06:27:52'),
(234, 'App\\Models\\User', 20, 'MyToken', '39bcd80fd14d942f0520427eb81ecde222876a713283a0ba3baffa70397ca9fa', '[\"*\"]', NULL, '2022-01-04 06:28:16', '2022-01-04 06:28:16'),
(235, 'App\\Models\\User', 52, 'MyToken', 'b8372e1bf076e547597a53dc6bcc9e48815249c7126cbcfe7628963259106dff', '[\"*\"]', NULL, '2022-01-04 06:28:58', '2022-01-04 06:28:58'),
(236, 'App\\Models\\User', 40, 'MyToken', '7389620317eaca6dd1af85341d3f061e339fc75349320f8181f9c4d2491eaeb5', '[\"*\"]', NULL, '2022-01-04 06:44:50', '2022-01-04 06:44:50'),
(237, 'App\\Models\\User', 20, 'MyToken', 'ea47a1d486f7906e2b141da95a61d65bd2e34bb1107ec7bdefdf27d06180f20d', '[\"*\"]', NULL, '2022-01-04 06:45:06', '2022-01-04 06:45:06'),
(238, 'App\\Models\\User', 39, 'MyToken', '3af23ad947e5d02339f4aad1b7789d992922faeb5fa23738b884c4373d27824a', '[\"*\"]', NULL, '2022-01-04 06:45:35', '2022-01-04 06:45:35'),
(239, 'App\\Models\\User', 39, 'MyToken', 'fbd5e61f4556f87a424ed8c6c1f01f5981d16c1ebac199fa41da6bf70e3df34f', '[\"*\"]', NULL, '2022-01-04 06:48:51', '2022-01-04 06:48:51'),
(240, 'App\\Models\\User', 20, 'MyToken', 'ba031fee02000829d8c0550bcc17525d1bfe508eaa84ee81236ad808670d3547', '[\"*\"]', NULL, '2022-01-04 06:49:03', '2022-01-04 06:49:03'),
(241, 'App\\Models\\User', 20, 'MyToken', 'ae5c75f841e6c44486a95e268e044fb19dde9dd8ff7654aadddc78072b2816fe', '[\"*\"]', NULL, '2022-01-04 07:17:55', '2022-01-04 07:17:55'),
(242, 'App\\Models\\User', 20, 'MyToken', 'b13b5abefd46480e8f526c79f976d266a2a8500d590141af5ad16ccdb2de636b', '[\"*\"]', NULL, '2022-01-04 07:43:19', '2022-01-04 07:43:19'),
(243, 'App\\Models\\User', 46, 'MyToken', '2ce2aeeef4e87683b2a4bee46f64f6168cc37a572dfc0965396c396b7f0fc905', '[\"*\"]', NULL, '2022-01-04 07:43:26', '2022-01-04 07:43:26'),
(244, 'App\\Models\\User', 39, 'MyToken', '6caad9aa86956c43219c027f8273b42ed2e5e060395ee14cbc59149cb942cf56', '[\"*\"]', NULL, '2022-01-04 07:43:38', '2022-01-04 07:43:38'),
(245, 'App\\Models\\User', 20, 'MyToken', '03ae9faf995e8988eca4dc568f6d91e2c08a3b238884382130c98a90b93736db', '[\"*\"]', NULL, '2022-01-04 07:43:58', '2022-01-04 07:43:58'),
(246, 'App\\Models\\User', 40, 'MyToken', '118857463f507b54cc16995b050a7c594df92b8b5c4edb29ed2d3c635e144618', '[\"*\"]', NULL, '2022-01-04 08:03:06', '2022-01-04 08:03:06'),
(247, 'App\\Models\\User', 20, 'MyToken', 'c9c190bb9e78b3251b9e519a399aa339cb0c0c59c6a3c41732ed0f09eac4792f', '[\"*\"]', NULL, '2022-01-04 08:37:29', '2022-01-04 08:37:29'),
(248, 'App\\Models\\User', 40, 'MyToken', '544681cbf23c1c38e4ea08d8db7b28c41e683124d588f10dbef0e163a821d07a', '[\"*\"]', NULL, '2022-01-04 08:46:06', '2022-01-04 08:46:06'),
(249, 'App\\Models\\User', 20, 'MyToken', '634c926169a34bde484dbbbc00b02f96af97f8934907baeb50a206e18da970e3', '[\"*\"]', NULL, '2022-01-04 08:49:44', '2022-01-04 08:49:44'),
(250, 'App\\Models\\User', 40, 'MyToken', '386681b1178ea0d226abc47a9a7a09ac5950af4c81d70e945ae74c23097a84ab', '[\"*\"]', NULL, '2022-01-04 08:50:34', '2022-01-04 08:50:34'),
(251, 'App\\Models\\User', 20, 'MyToken', 'ba254c7e531284fbd85706afa13a89d46c3537e8f7243719bd9e8ffc55516dcc', '[\"*\"]', NULL, '2022-01-04 08:51:02', '2022-01-04 08:51:02'),
(252, 'App\\Models\\User', 40, 'MyToken', '48f61d0974c5316b74ede11fd614d928442d3514cb196ea409b7d854fc8c2152', '[\"*\"]', NULL, '2022-01-04 08:52:21', '2022-01-04 08:52:21'),
(253, 'App\\Models\\User', 20, 'MyToken', 'e1634354d170157cae201a1a87d87d8c965cc22a048e43c668e0fb8752552c5b', '[\"*\"]', NULL, '2022-01-04 08:57:31', '2022-01-04 08:57:31'),
(254, 'App\\Models\\User', 40, 'MyToken', 'fd9d7ae9831d064f52067f5a607f4eae3dd5a61533ccd78540474872694b6914', '[\"*\"]', NULL, '2022-01-04 09:26:21', '2022-01-04 09:26:21'),
(255, 'App\\Models\\User', 20, 'MyToken', '65d05c4d19d16fc295269b46ec722b92441a7b8a6bf515511f68321f7167c9d1', '[\"*\"]', NULL, '2022-01-04 09:30:51', '2022-01-04 09:30:51'),
(256, 'App\\Models\\User', 40, 'MyToken', 'ad6681f3b70ca73f9051ef303283cac26e3896794b074c6efe68b30a1ea1d539', '[\"*\"]', NULL, '2022-01-04 09:31:04', '2022-01-04 09:31:04'),
(257, 'App\\Models\\User', 20, 'MyToken', '2cafc039a5bba0a3158688477ecaa5275d5caf84f169f6025789e1739cc9dfbd', '[\"*\"]', NULL, '2022-01-04 09:32:30', '2022-01-04 09:32:30'),
(258, 'App\\Models\\User', 53, 'MyToken', '65e4eca3c57bc246712910402a21f909bb62b3ee137d9f4a0d790b84558d4fd7', '[\"*\"]', NULL, '2022-01-04 09:33:27', '2022-01-04 09:33:27'),
(259, 'App\\Models\\User', 53, 'MyToken', '004a271f2f0664092cf06c7dc80fd8d98fcc154097ba62e1417f6e31f840b350', '[\"*\"]', NULL, '2022-01-04 09:33:39', '2022-01-04 09:33:39'),
(260, 'App\\Models\\User', 20, 'MyToken', 'b3bec463a5371638a78ea6d932f5712293a6588df292e1b8c750e55a6854fe0c', '[\"*\"]', NULL, '2022-01-04 09:37:02', '2022-01-04 09:37:02'),
(261, 'App\\Models\\User', 53, 'MyToken', 'e0f0c2167e32198cd8844625a94769e0f71036385715edf3b51bbf108428f607', '[\"*\"]', NULL, '2022-01-04 09:37:35', '2022-01-04 09:37:35'),
(262, 'App\\Models\\User', 40, 'MyToken', '0710e78653ea3d444209dfad3aac2d63c0cf33febcd38d95e421e0aee5687af8', '[\"*\"]', NULL, '2022-01-04 09:37:53', '2022-01-04 09:37:53'),
(263, 'App\\Models\\User', 20, 'MyToken', '01b147b88e8a9d1b9e171dfa29a39b17b1452dc9e00e1716f68e9a1759f084f9', '[\"*\"]', NULL, '2022-01-04 09:44:18', '2022-01-04 09:44:18'),
(264, 'App\\Models\\User', 40, 'MyToken', 'b13eb6c7738696326fc48effd7c6efbeae2d6457506f018ae50c69aa07e57157', '[\"*\"]', NULL, '2022-01-04 09:57:57', '2022-01-04 09:57:57'),
(265, 'App\\Models\\User', 39, 'MyToken', '5b31166833691d3a39445686a802caa0c81d9dbea6b5bdbd465cc2f6d102d4b7', '[\"*\"]', NULL, '2022-01-04 09:58:04', '2022-01-04 09:58:04'),
(266, 'App\\Models\\User', 39, 'MyToken', '7f94eb9b96fc1e845579e23cfaaef47ca9e6a1c8d73a7765dc8b76510af25404', '[\"*\"]', NULL, '2022-01-04 10:03:52', '2022-01-04 10:03:52'),
(267, 'App\\Models\\User', 20, 'MyToken', '0730e7cf00217f7b14a807c4cc9c22e070f822625f523e2b18bc18ee4593980b', '[\"*\"]', NULL, '2022-01-04 10:04:03', '2022-01-04 10:04:03'),
(268, 'App\\Models\\User', 54, 'MyToken', 'c6b6074bc56ed49b719e4ccbfe6acb170adf7b680e72c97a96ad04324bf93164', '[\"*\"]', NULL, '2022-01-04 10:06:44', '2022-01-04 10:06:44'),
(269, 'App\\Models\\User', 54, 'MyToken', '4fff33631bdeecb279b560f6c3a4f359f0e93de969640ea02b816a0ed8a07a4b', '[\"*\"]', NULL, '2022-01-04 10:06:59', '2022-01-04 10:06:59'),
(270, 'App\\Models\\User', 54, 'MyToken', '399ee02a47317a793b42b7e86e178f19262131a7eb3351998ec7a80fe6a7367e', '[\"*\"]', NULL, '2022-01-04 10:07:18', '2022-01-04 10:07:18'),
(271, 'App\\Models\\User', 20, 'MyToken', '88874294391b4eecffd271459c7afca4c275df37eb765b6e09bb95a3c58d1032', '[\"*\"]', NULL, '2022-01-04 10:07:29', '2022-01-04 10:07:29'),
(272, 'App\\Models\\User', 55, 'MyToken', 'cebff2cfae95ca53b4e48cb43cb0e4d1e34d70af3ae5d449ba9a48921a4bf218', '[\"*\"]', NULL, '2022-01-04 10:08:46', '2022-01-04 10:08:46'),
(273, 'App\\Models\\User', 55, 'MyToken', '70b99cd107e007cd96fc852fbb56fda496f29645dfd2c027cb6ad7382f1efb88', '[\"*\"]', NULL, '2022-01-04 10:08:59', '2022-01-04 10:08:59'),
(274, 'App\\Models\\User', 20, 'MyToken', '18ce542fbc7bb9334b4bdf6dc9ea59b6659c5d21002533f93b28667ee1dfe702', '[\"*\"]', NULL, '2022-01-04 10:09:44', '2022-01-04 10:09:44'),
(275, 'App\\Models\\User', 20, 'MyToken', '04ba899a378af16854b1cfc1006eabd2d823b9a9f05547d8f070af39260b1684', '[\"*\"]', NULL, '2022-01-04 10:25:21', '2022-01-04 10:25:21'),
(276, 'App\\Models\\User', 48, 'MyToken', 'a645eb580f9f9389596a45bcb4a582b832c1ef48661a2afbec49e8b30bd32d2a', '[\"*\"]', NULL, '2022-01-04 10:25:37', '2022-01-04 10:25:37'),
(277, 'App\\Models\\User', 20, 'MyToken', '33faa8091fc1529f4347c09708daa84432a4c50dab6d8d7c5dc561e725869804', '[\"*\"]', NULL, '2022-01-04 17:08:03', '2022-01-04 17:08:03'),
(278, 'App\\Models\\User', 54, 'MyToken', 'd1e8df9f39b31ba599270dc395b6586f3688864cf2f21aaa36d54d293081cc88', '[\"*\"]', NULL, '2022-01-04 17:25:31', '2022-01-04 17:25:31'),
(279, 'App\\Models\\User', 20, 'MyToken', '1608208c4dddd4997d1296280fef266fb5de7e6480450454d0d7075927916b85', '[\"*\"]', NULL, '2022-01-04 17:26:14', '2022-01-04 17:26:14'),
(280, 'App\\Models\\User', 39, 'MyToken', '5c662123e7b01f7c17e79f1e92b62de55a229621ba369c7b671adbdf1d585a59', '[\"*\"]', NULL, '2022-01-04 17:56:02', '2022-01-04 17:56:02'),
(281, 'App\\Models\\User', 20, 'MyToken', '080a45b6950f479047d6cd452eb1a27150865d99d4d6834d0ee42d600aa092b4', '[\"*\"]', NULL, '2022-01-04 17:56:19', '2022-01-04 17:56:19'),
(282, 'App\\Models\\User', 20, 'MyToken', 'f2a5c4de74271efb8c80d1cf7f396c99cb5761e8efa395cc132db9f2285bbca2', '[\"*\"]', NULL, '2022-01-04 18:50:38', '2022-01-04 18:50:38'),
(283, 'App\\Models\\User', 20, 'MyToken', '90c96d22a185f7522bd73e88f36a1e2d4c723550f825dd984ae79fcb559ee1eb', '[\"*\"]', NULL, '2022-01-04 18:55:29', '2022-01-04 18:55:29'),
(284, 'App\\Models\\User', 56, 'MyToken', '5843b6abddde5f0c8f30f8686882e7c0cdab34e0aa9c9f4d5d7a0661f0eda0f1', '[\"*\"]', NULL, '2022-01-04 19:03:38', '2022-01-04 19:03:38'),
(285, 'App\\Models\\User', 54, 'MyToken', '58a86c6e751e6680d8fcfd0a0e1d83c4f816b81236deb5de186eaf64b8a99855', '[\"*\"]', NULL, '2022-01-04 19:04:14', '2022-01-04 19:04:14'),
(286, 'App\\Models\\User', 20, 'MyToken', 'd32601939f186b4d5061356cef7544fe1e7154b101882fa708d73d9c43ea09a2', '[\"*\"]', NULL, '2022-01-04 19:05:44', '2022-01-04 19:05:44'),
(287, 'App\\Models\\User', 50, 'MyToken', 'a73a30a17e310e0e10e0e46a21d992bd42e8572fc7b34395aa4b142614f7c638', '[\"*\"]', NULL, '2022-01-04 19:06:03', '2022-01-04 19:06:03'),
(288, 'App\\Models\\User', 20, 'MyToken', '8ca733dba8947b2495e69ce955ad77a1436d9224e91039a48c3ee983de46e54e', '[\"*\"]', NULL, '2022-01-04 19:39:34', '2022-01-04 19:39:34'),
(289, 'App\\Models\\User', 39, 'MyToken', '4527d97686833a53f58e4675c76fa3dd08db5a4f8ffd8c761a171ee3cc4808b7', '[\"*\"]', NULL, '2022-01-04 19:55:30', '2022-01-04 19:55:30'),
(290, 'App\\Models\\User', 20, 'MyToken', '1b595591a6be55173d48d8e8f16632b72c966ab36c324673530092a9be8caf50', '[\"*\"]', NULL, '2022-01-04 19:56:21', '2022-01-04 19:56:21');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(291, 'App\\Models\\User', 56, 'MyToken', '74cfa9a2af1f480c398e7cd44b6f5bc18f8d07c5cceaf254a6576561daabacc1', '[\"*\"]', NULL, '2022-01-04 20:38:11', '2022-01-04 20:38:11'),
(292, 'App\\Models\\User', 39, 'MyToken', 'df2d94ccc4ebf7d065dec4915405415b09f9506b293f39f33d86e865e75f6f38', '[\"*\"]', NULL, '2022-01-04 20:40:19', '2022-01-04 20:40:19'),
(293, 'App\\Models\\User', 20, 'MyToken', '31c9e127bb85c015d2acddc5fc61089ec349b84d2f9de68d6d7c133ade281eb7', '[\"*\"]', NULL, '2022-01-04 20:40:59', '2022-01-04 20:40:59'),
(294, 'App\\Models\\User', 20, 'MyToken', 'ecfd5f5139e8980c6e06624ed66fc621e9413cfdfce1a2e450fd3e639f51de93', '[\"*\"]', NULL, '2022-01-04 20:48:03', '2022-01-04 20:48:03'),
(295, 'App\\Models\\User', 54, 'MyToken', '68cf48b5571d7fa1ba0f87c2dc4a1e7b086dd1a49c4ef73a9917bcb39f2008d1', '[\"*\"]', NULL, '2022-01-04 21:07:44', '2022-01-04 21:07:44'),
(296, 'App\\Models\\User', 20, 'MyToken', '5000908c8ae1ce6d8f60b96903e43b081e473b8592a42faf057fa5a7ee62805b', '[\"*\"]', NULL, '2022-01-04 21:08:27', '2022-01-04 21:08:27'),
(297, 'App\\Models\\User', 39, 'MyToken', '26809431d20c7190efa6e5744b55046d497d436db8647d39cf279946520d656e', '[\"*\"]', NULL, '2022-01-04 21:08:32', '2022-01-04 21:08:32'),
(298, 'App\\Models\\User', 20, 'MyToken', '8ce80c22cf1c3ab49c76e1840ff92bee0453cf04d74f6ffcac0be5ac9f4093dc', '[\"*\"]', NULL, '2022-01-04 21:10:14', '2022-01-04 21:10:14');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `first_name`, `last_name`, `class`, `phone`, `gender`, `image`, `created_at`, `updated_at`) VALUES
(65, 'Lu', 'Feifei', 'WEP-2021 A', 123456789, 'Female', 'ti3BPY2YlmT2vTlcO3GbzkvVhuRURd8EbV01N0VW.jpg', '2022-01-02 22:56:34', '2022-01-02 22:56:34'),
(67, 'Lyden', 'Chai', 'WEP-2021 A', 123456789, 'Male', 'KcSaJ3iFwVBIL2nV8WtLJ59m2t2b6wBusvMO1oMX.jpg', '2022-01-02 23:22:27', '2022-01-02 23:22:27'),
(68, 'Lyheang', 'Chhem', 'WEP-2021 A', 12345678, 'Male', 'ichlmuE6Zvjm76t3dgkWTav7DAsTspli71sJamIb.jpg', '2022-01-02 23:25:42', '2022-01-02 23:25:42'),
(69, 'Vicheka', 'Lo', 'WEP-2021 A', 123456789, 'Female', 'IdXEpyOPqtyyC9rDFMUhBy1RjmcCCuOnxmcCL0yj.jpg', '2022-01-03 05:17:57', '2022-01-03 05:17:57'),
(70, 'banjamin', 'Buggero', 'SAN-2022', 123456789, 'Male', 'VVtu2YTZjuQ3piPsYOiSLsWmpdPe7cx8hYiOQeyK.jpg', '2022-01-03 20:29:49', '2022-01-03 20:29:49'),
(71, 'Siny', 'Sen', 'WEP-2021 B', 9846862, 'Male', 'yXU4gz12eJCQQhiZsQDVXEsuG382i9TqLmWDGBMC.png', '2022-01-04 06:11:44', '2022-01-04 06:11:44'),
(72, 'Vantheav', 'Thav', 'WEP-2021 A', 12695373, 'Male', 'KMbrvC3zbqfun98JdD9X7PIO4QARFjjyal98qz3r.png', '2022-01-04 06:12:23', '2022-01-04 06:12:23'),
(73, 'Channary', 'Pha', 'WEP-2021 A', 97583785, 'Female', 'vgF1JggrbJqVfvEmir2f6F50zI4oldRpMFBmqMRP.png', '2022-01-04 06:13:14', '2022-01-04 06:13:14'),
(74, 'Vun', 'Yin', 'WEP-2021 A', 85373211, 'Female', 'xkmqQP7PwNnB7dP7YeJlirsxkbLmdPO3P6aLFVc8.png', '2022-01-04 06:13:52', '2022-01-04 06:13:52'),
(75, 'Nimout', 'Mang', 'WEP-2021 B', 19476378, 'Female', 'wMi7VWBQ6LNgYbVRcOOo2t1TLbPcgFHhfZWZM8QH.png', '2022-01-04 06:14:33', '2022-01-04 06:17:58'),
(76, 'Sothoun', 'Phaov', 'WEP-2021 B', 123456789, 'Male', 't0hroTOOIQyOu95RlWepSli8xL0HTC19r0DDaNfE.png', '2022-01-04 06:15:08', '2022-01-04 06:15:08'),
(77, 'Leakena', 'Nhorn', 'SNA-2023', 31278392, 'Female', 'yVw5Zflai6NP5TbUIVO8eOXmWActlyjXFG8Z7rFb.png', '2022-01-04 06:19:16', '2022-01-04 06:19:16'),
(78, 'Chanthea', 'Phon', 'WEP-2021 B', 69463663, 'Female', 'ORwnWIIlH8jNDFXtqaEK8nxJujkXS5DH1N0G2qeW.png', '2022-01-04 06:26:26', '2022-01-04 06:26:26'),
(79, 'Nisai', 'Lorn', 'SNA-2021', 89574372, 'Male', 'UTPS83DMQcbllXeJEMEK0fPPvPpInItFbN6TyLu1.png', '2022-01-04 06:27:11', '2022-01-04 06:27:11'),
(80, 'Nana', 'Boeun', 'WEP-2023 B', 45678932, 'Female', 'Gbd13tP1AoDhPt8xY8zQDPTGkpQeXPpfI0l2j2Uv.jpg', '2022-01-04 06:30:57', '2022-01-04 06:30:57'),
(81, 'Jabie', 'Son', 'SNA-2022', 14962674, 'Male', 'wrGPMA6rZrQrFVX61kZGXfayqNISXtwCkLI1EExu.png', '2022-01-04 06:34:02', '2022-01-04 06:34:02'),
(82, 'Tom', 'Oriya', 'WEP-2022 B', 9754218, 'Male', 'YQuJxNccMMEaatKiXxps793UKzihth3vewWZmWoa.jpg', '2022-01-04 06:39:39', '2022-01-04 06:39:39'),
(83, 'Jenny', 'Dom', 'SNA-2022', 23456789, 'Female', 'wLRAz4A3vqGS7iYUEw47NFF2BkfTx7eXIRfFlnma.jpg', '2022-01-04 18:57:42', '2022-01-04 18:57:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `student_id`, `username`, `email`, `email_verified_at`, `password`, `role`, `image`, `remember_token`, `created_at`, `updated_at`) VALUES
(20, NULL, 'Admin', 'admin@gmail.com', NULL, '$2y$10$CXcFbi5ol4LdsbYyIW2/0eKmtRamB8YcwushzUq..K9n3C1KPOfhK', 'Admin', 'ebPVSCHJYzn9CSQMkDKJySyMy1OkQinAVkvuwi3q.png', NULL, '2022-01-01 08:13:49', '2022-01-01 08:13:49'),
(39, 68, 'Lyheang', 'lyheang@gmail.com', NULL, '$2y$10$bplO18oawPMERyTv/SxDquXi9J4kWhHWtsbpqodqpoDrdVo0dSpda', 'STUDENT', '3ZEyfOfJITrN7VjJ9A9kRw3wlvFKY2iDaS9iBjfB.jpg', NULL, '2022-01-03 19:29:44', '2022-01-03 19:29:44'),
(42, 69, 'Vicheka', 'vicheka@gmail.com', NULL, '$2y$10$ruXQ8/0oIqEvn53so.MDFu7VPg6f.geeeq5.n8btSUgjwJ7JBywjW', 'STUDENT', 'awOS8aQ3vT63iVgn7EuGcSSsfq5x1n93UFAOQs2c.jpg', NULL, '2022-01-03 19:53:56', '2022-01-03 19:53:56'),
(43, 58, 'Siny', 'siny@gmail.com', NULL, '$2y$10$spVBWwPDoNjH/Lf3d5.PIOxZHAkXtuNjgi5QF5X4InqnPxLrf4ydi', 'STUDENT', 'BIC2RBfdlJ2Ut2MgClbUarfQVx0WOVce0TlIqlcA.jpg', NULL, '2022-01-03 20:01:16', '2022-01-03 20:01:16'),
(47, NULL, 'Sim Hul', 'simhul@gmail.com', NULL, '$2y$10$L7AzE8jzbmAwIMTEmNiEOu2HxGzOCOY4rzlKEL2.E7FfXirE/2R8e', 'SOCIAL AFFAIR', 'XDef754FIz8JjwGAn3JHsriODSteUwyA1Z5VZGVB.png', NULL, '2022-01-04 06:02:18', '2022-01-04 06:02:18'),
(48, NULL, 'Puthy', 'puthy@gmail.com', NULL, '$2y$10$wBs1YojNfISWPDkIu81RbulNx9E78jQeq7lMYwD.OjLwrfNq2t/Fe', 'SOCIAL AFFAIR', 'Vbwmiq1nS0fU2FEtOcea6XpVKu63Z83FVFmXaHNp.png', NULL, '2022-01-04 06:09:03', '2022-01-04 06:09:03'),
(49, 76, 'Sothoun', 'sothoun@gmail.com', NULL, '$2y$10$dmlyFrW2KalFFfBagfDGEetcI.3h1fjV4cRRtxa5iR56uSnzsEy22', 'STUDENT', '6xE1qmm83DBLcULqmHbJfWBJ6OHsO2pqEFiFKZl1.png', NULL, '2022-01-04 06:16:50', '2022-01-04 06:16:50'),
(50, NULL, 'Davy', 'davy@gmail.com', NULL, '$2y$10$HpixE91f5FgbJwKOhivUL.dfet.3rCMWbTzTcjvAlqYpQVVAOaX6y', 'SOCIAL AFFAIR', 't6EhDKZbDIMWBl71FdcJBDCJ73bxD3s2i3t6a28g.png', NULL, '2022-01-04 06:20:35', '2022-01-04 06:20:35'),
(51, 75, 'Nimout', 'nimout@gmail.com', NULL, '$2y$10$hL2PJW25YQAipEk2hOIeL.AMdzTULGwmIWzb5gDAv1OIJELgId3Fa', 'STUDENT', 'O2yOmayCI2QU7MvXG93KHaPzKsR5FAFXYTt9GhiT.png', NULL, '2022-01-04 06:21:18', '2022-01-04 06:21:18'),
(52, 79, 'Nisai', 'nisai@gamil.com', NULL, '$2y$10$MeQBaU1BE.RoUCrvEjzp..BqVb3P0TZgKgs4LT8wT0OHfHN6KOOZ.', 'STUDENT', 'BNDpXjTeSxCS4uloEDvkwIJDYYE4QSIZuh2WI3XF.png', NULL, '2022-01-04 06:28:58', '2022-01-04 06:28:58'),
(54, 67, 'Lyden', 'lyden@gmail.com', NULL, '$2y$10$rJAj4fryCXVA9nOUsiLmzOBHsngh56bRdBZF4vkIHiR8Gg0Vc/nii', 'STUDENT', 'S29WZ6njYzGNLzfp5d4udL6WSIUWr2dhIk5uHere.jpg', NULL, '2022-01-04 10:06:44', '2022-01-04 10:06:44'),
(55, 65, 'Lu Feifei', 'feifei@gmail.com', NULL, '$2y$10$ZdZK7z/lzEjR7yWF9yxEx.wBvgYnjjD3AfjVP0h2wXjEhaeNABkKq', 'STUDENT', 'lzXDmUftBshkwZZ20nfq0ZhtFNtng5fBrOuRz31o.jpg', NULL, '2022-01-04 10:08:46', '2022-01-04 10:08:46'),
(56, 78, 'Chanthea', 'chanthea@gmail.com', NULL, '$2y$10$iMnnfuZg2ILt9aOqrbiIDeTvnidNGBSMjq3c5cPMbh0gIiSiD/YkS', 'STUDENT', 'SPObS12oC8xQcZdt7uXInOwaX8u24Y3Lyv6uhVQ1.png', NULL, '2022-01-04 19:03:38', '2022-01-04 19:03:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `disciples`
--
ALTER TABLE `disciples`
  ADD PRIMARY KEY (`id`),
  ADD KEY `disciples_student_id_foreign` (`student_id`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_student_id_foreign` (`student_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
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
-- AUTO_INCREMENT for table `disciples`
--
ALTER TABLE `disciples`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=299;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `disciples`
--
ALTER TABLE `disciples`
  ADD CONSTRAINT `disciples_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
