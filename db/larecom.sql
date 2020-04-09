-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2020 at 10:40 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `larecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category`, `created_at`, `updated_at`) VALUES
(1, 'test', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2020_01_05_140658_create_products_table', 1),
(9, '2020_01_05_140737_create_category_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('00cf8362c59bc2891e8565e84a4596544cab9f038f215b3861206a230741e398f93049eb6a3cf4f9', 19, 4, 'authToken', '[]', 0, '2020-01-12 09:40:55', '2020-01-12 09:40:55', '2021-01-12 15:10:55'),
('029aaaeaf91eb37d60dc12d7700192c661f8539a8dc0eaf6fb1e5cdfcc3dc0e1652dffd747f43253', 2, 4, 'authToken', '[]', 0, '2020-01-12 08:56:40', '2020-01-12 08:56:40', '2021-01-12 14:26:40'),
('062f70a95c548864250665d3777f00dacfacb536d1be89e7d4559d87b7a9a2a82b841ea2662e313a', 12, 4, 'authToken', '[]', 0, '2020-01-08 11:05:48', '2020-01-08 11:05:48', '2021-01-08 16:35:48'),
('0b26b8f7d093562e24b716c24f63e81a89107b59e4e636dfaf2b805231e002b0d2fc674aab317f80', 10, 4, 'authToken', '[]', 0, '2020-01-12 09:11:16', '2020-01-12 09:11:16', '2021-01-12 14:41:16'),
('0b8ff7750fc7880dd1547b4c02146f0e769c9e9a6c713f45392dd335101c1d58faaae1b7bc6a3882', 1, 4, 'authToken', '[]', 0, '2020-01-29 05:04:48', '2020-01-29 05:04:48', '2021-01-29 10:34:48'),
('16899b7a0dbe52d4cbead8407b2a88de98f194d31d2e2c6848cd8c755464038ac3d8d26db80086cd', 2, 4, 'authToken', '[]', 0, '2020-01-12 09:02:50', '2020-01-12 09:02:50', '2021-01-12 14:32:50'),
('197e85ff19b5786bcc2bef59889fa3650b3b74c6749e2758de260ff56b973d1c439b93c74d3053fb', NULL, 1, NULL, '[]', 0, '2020-01-07 10:25:16', '2020-01-07 10:25:16', '2021-01-07 15:55:16'),
('232967051a27db8634f9b3a783ec969c886c02a406645b7fd709fb78e8cbfa2f251a3965cfed91b1', 10, 4, 'authToken', '[]', 0, '2020-01-13 10:30:36', '2020-01-13 10:30:36', '2021-01-13 16:00:36'),
('276c0e4b0a8151e2dcaf357fbb557309c0738c7986dbdabd924b35a00806ceca329dfaa18412097c', 2, 4, 'authToken', '[]', 0, '2020-01-12 09:07:59', '2020-01-12 09:07:59', '2021-01-12 14:37:59'),
('2c827e85f9e4934ce2b1ef7ef9e491f2282d319787b159646037cd018b78fec5d1e6198f6f605bbe', 2, 4, 'authToken', '[]', 0, '2020-01-12 09:02:16', '2020-01-12 09:02:16', '2021-01-12 14:32:16'),
('3268bc954154735acda8c6c4f881062bd323ef7aaa1a98564f0bda6dfd44c8a39bc9c227a0b3731f', 2, 4, 'authToken', '[]', 0, '2020-01-12 09:01:10', '2020-01-12 09:01:10', '2021-01-12 14:31:10'),
('57006c46bf434227db3a895dd8f05c652fa124cefc48ee46536c5e75d0d5252db88b025b902a7dbd', NULL, 1, NULL, '[]', 0, '2020-01-06 11:07:43', '2020-01-06 11:07:43', '2021-01-06 16:37:43'),
('5c933dfe28c498b6e3ad47899274cf6bb1b4319e13eed49c092335eb979de960219fb595379343a8', 2, 4, 'authToken', '[]', 0, '2020-01-12 08:10:33', '2020-01-12 08:10:33', '2021-01-12 13:40:33'),
('61850c5220b9ba8fb85391151ae5c27ec7e10fdb9d238b5117a7991122c1858c0f63e5a93751dc5b', 13, 4, 'authToken', '[]', 0, '2020-01-08 11:06:28', '2020-01-08 11:06:28', '2021-01-08 16:36:28'),
('67c38240e2f0c49eebc8672eeea5ac5a7cdb45809c0764414af588cb8656dc4e4dd8fd9c57df0ea9', 1, 4, 'authToken', '[]', 0, '2020-01-29 06:35:06', '2020-01-29 06:35:06', '2021-01-29 12:05:06'),
('72a1b27acbdd9f30aec48f70f10abfb03fd23c8057998ff7408f37777ae1c6955b514267eee431be', 1, 4, 'authToken', '[]', 0, '2020-01-29 06:25:13', '2020-01-29 06:25:13', '2021-01-29 11:55:13'),
('73980a9643fee328c6d56a7900f162a2c296194ed3e8a5aec0d6f1a1b613cc92bf9cea3427a5fb0b', 2, 4, 'authToken', '[]', 0, '2020-01-12 09:05:43', '2020-01-12 09:05:43', '2021-01-12 14:35:43'),
('74708cc8114d08526d3d59041f0c971e9fe8b230a0dbf2a0f89618681ebb522f626dd23d226a0d5e', 2, 4, 'authToken', '[]', 0, '2020-01-12 08:58:14', '2020-01-12 08:58:14', '2021-01-12 14:28:14'),
('871bb335ea3762b07db874a635f1c42b3175101f3383f065b7217308639662800e0d7e7a85e45dbc', 17, 4, 'authToken', '[]', 0, '2020-01-12 09:33:05', '2020-01-12 09:33:05', '2021-01-12 15:03:05'),
('95c3c6504484a503d373ab7494d93d7d2a7fe05c988e5982941d8776119b8747b9c65e97ef649ea5', NULL, 7, NULL, '[]', 0, '2020-01-12 08:08:27', '2020-01-12 08:08:27', '2021-01-12 13:38:27'),
('a7aa467ee397d49fb2782a502654698fce238ecc28c934d2847ae88140ed64c4634080435f1c07b7', 20, 4, 'authToken', '[]', 0, '2020-01-29 06:47:18', '2020-01-29 06:47:18', '2021-01-29 12:17:18'),
('a9dde32a2efccaa2784c3477f8a134923a78d9b602d3f58896992034ae84fa8f0e2f1987bc5d67c9', 20, 4, 'authToken', '[]', 0, '2020-01-29 06:47:04', '2020-01-29 06:47:04', '2021-01-29 12:17:04'),
('aa76a8131a1fbfcb95bb528952cd3d2fecc59fbe75a507b62ba7c7d76e84a5e80216a8507d56b83c', 14, 4, 'authToken', '[]', 0, '2020-01-12 09:16:35', '2020-01-12 09:16:35', '2021-01-12 14:46:35'),
('b80e096b7ffa123b729a0dbf30871e4486b537fed78509281869b12bd843f785c3176c5721e6d125', 18, 4, 'authToken', '[]', 0, '2020-01-12 09:35:33', '2020-01-12 09:35:33', '2021-01-12 15:05:33'),
('bc1d293769f717da0b262e3b3aa6ba3155a686cbb9b8d34958b78a785270b51ed2109df954c2f4a8', NULL, 1, NULL, '[]', 0, '2020-01-06 10:51:53', '2020-01-06 10:51:53', '2021-01-06 16:21:53'),
('cfee3ff298d76a0afbda9b16633f68294553ae0e764a1ffd8dd99c5bf6e9bb514002430801af7f98', 1, 4, 'authToken', '[]', 0, '2020-01-29 06:44:15', '2020-01-29 06:44:15', '2021-01-29 12:14:15'),
('d0b5c117261f5532a614537cf35cae1184160a28663b08430c8f16b4038dd46a33291ca09a8fdf11', 2, 4, 'authToken', '[]', 0, '2020-01-12 09:04:01', '2020-01-12 09:04:01', '2021-01-12 14:34:01'),
('d5daca4d9cee27cabcbf5b1701a50ae9973e6dd8781f2610d880dc9ef5bd0bdbe8c1903b2dd9346e', 15, 4, 'authToken', '[]', 0, '2020-01-12 09:29:48', '2020-01-12 09:29:48', '2021-01-12 14:59:48'),
('d9a5bc1a01b2bd6b0eaddff31c5d5007bc1b1f780ffd6eb6f5d4a9b6dfc5cde3d76d36ffb4578856', 1, 4, 'authToken', '[]', 0, '2020-01-29 05:04:30', '2020-01-29 05:04:30', '2021-01-29 10:34:30'),
('de57b60535cd3e1369a20ed211f452c0203d1f71c1bff007d913c2981d6dff7ffe83ece851c64b33', 2, 4, 'authToken', '[]', 0, '2020-01-12 08:59:07', '2020-01-12 08:59:07', '2021-01-12 14:29:07'),
('e9dec4eeb9dd067794560896c55641a656bfd73c4240ae2c396efb80c1f0138e3b1a596b62a14c5c', 2, 4, 'authToken', '[]', 0, '2020-01-12 08:59:49', '2020-01-12 08:59:49', '2021-01-12 14:29:49'),
('eefcb85f7d55438f66c850cba0920ee0d50568494b17f150329acf818cb1d48ac78324f03eaefd61', 2, 4, 'authToken', '[]', 0, '2020-01-12 09:03:18', '2020-01-12 09:03:18', '2021-01-12 14:33:18'),
('ef8c4e85ff5f55d7b621a46ad91dbb3178e643249a76046ab504d4b1a181ae0c7bbbe2b8046e3212', 2, 4, 'authToken', '[]', 0, '2020-01-12 08:58:59', '2020-01-12 08:58:59', '2021-01-12 14:28:59'),
('f47aacd46e679ed66bc67db4be399ea0e540d142eece44dbc521c28bccd878b1a658a2511847f5fc', 2, 4, 'authToken', '[]', 0, '2020-01-12 09:02:10', '2020-01-12 09:02:10', '2021-01-12 14:32:10');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, 2, 'gulla', 'dD1W7osh0AkmDYW6BLsyw2VpkXDm43CozKEQy8gu', 'http://localhost/auth/callback', 0, 0, 0, '2020-01-06 10:24:59', '2020-01-06 10:24:59'),
(2, NULL, 'Laravel Personal Access Client', 'KrIfJKpl9iwFmj9PceBQ8bitmO4bINnaqWbJ2cQ7', 'http://localhost', 1, 0, 0, '2020-01-08 11:05:14', '2020-01-08 11:05:14'),
(3, NULL, 'Laravel Password Grant Client', 'xkdxlQ8XgQUoCGgn2Ux95p3758i3X9XIElwBpINX', 'http://localhost', 0, 1, 0, '2020-01-08 11:05:15', '2020-01-08 11:05:15'),
(4, NULL, 'Laravel Personal Access Client', 'zcz9Pe2RhL1N0qLz1JQ4sG134HvoOYuRAL7umfuC', 'http://localhost', 1, 0, 0, '2020-01-08 11:05:30', '2020-01-08 11:05:30'),
(5, NULL, 'Laravel Password Grant Client', 'iSitAXMcOUCZX60aHancJHvKbw6zCyWxCqVivGsJ', 'http://localhost', 0, 1, 0, '2020-01-08 11:05:30', '2020-01-08 11:05:30'),
(6, 2, 'test', 'jiVYeySkVb1u2FxyKS38vJiugufOiyrrR2yvXYQv', 'http://localhost/auth/callback', 0, 0, 0, '2020-01-11 11:41:58', '2020-01-11 11:41:58'),
(7, 2, 'suman', 'U3sehGqzjdbh8JZhPQHt80oHGMnr4K4pKn01UI9X', 'http://localhost/auth/callback', 0, 0, 0, '2020-01-12 08:03:55', '2020-01-12 08:03:55');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 2, '2020-01-08 11:05:15', '2020-01-08 11:05:15'),
(2, 4, '2020-01-08 11:05:30', '2020-01-08 11:05:30');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user_id`, `product_title`, `product_description`, `category_id`, `price`, `product_image`, `created_at`, `updated_at`) VALUES
(1, 1, 'Abstract Men Hooded Neck Dark Blue T-Shirt\r\n', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n', 3, 999, 'http://127.0.0.1:8000/uploads/two.jpeg', '2020-01-06 10:42:49', '2020-01-06 10:42:49'),
(2, 1, 'Solid Men Hooded Neck Black T-Shirt\r\n', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n', 3, 499, 'http://127.0.0.1:8000/uploads/three.jpeg', '2020-01-06 10:53:08', '2020-01-06 10:53:08'),
(3, 1, 'Solid Men Hooded Neck Black, Red T-Shirt\r\n', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n', 3, 999, 'http://127.0.0.1:8000/uploads/one.jpeg', '2020-01-06 10:42:49', '2020-01-06 10:42:49'),
(4, 1, 'Solid Men Hooded Neck Dark Blue T-Shirt\r\n', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n', 3, 299, 'http://127.0.0.1:8000/uploads/four.jpeg', '2020-01-06 10:42:49', '2020-01-06 10:42:49'),
(5, 1, 'Checkered Men Hooded Neck Black, Red T-Shirt\r\n', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n', 3, 699, 'http://127.0.0.1:8000/uploads/five.jpeg', '2020-01-06 10:42:49', '2020-01-06 10:42:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Apu Chakraborty', 'apu@apu.com', NULL, '$2y$10$ZWwP4wfUuJY/jQxTm1O5FuGXqdd2d56yfj6FfZS/rXOj9J97JTg9C', NULL, '2020-01-06 10:39:50', '2020-01-06 10:39:50'),
(2, 'suman', 'suman@suman.com', NULL, '$2y$10$yBNu1wCYKUzGCOLYzVIMFubYlRY/S2sBpleBG0wAgwZP2nseqJdo.', NULL, '2020-01-06 11:00:41', '2020-01-06 11:00:41'),
(4, 'gulla', 'gulla@gulla.com', NULL, '$2y$10$q.xZYbjxPUuVUb.SxX47GunuAQIMxfIEdI9JdOfLQuv0Mba45YnzG', NULL, '2020-01-06 11:18:37', '2020-01-06 11:18:37'),
(8, 'khan', 'khan@khan.com', NULL, '$2y$10$6DMFqr0E7sxqjdU8d6yaFO2yJB8YKx/oIFLYtRpf2w.70.S1NePXu', NULL, '2020-01-07 10:24:57', '2020-01-07 10:24:57'),
(10, 'roy', 'roy@roy.com', NULL, '$2y$10$Kh4FlvCLMIH4KYQk2gKnmeCy6TJPwZAfFbGIPsh3KymnEYX.snqr6', NULL, '2020-01-07 10:26:49', '2020-01-07 10:26:49'),
(12, 'raman', 'raman@raman.com', NULL, '$2y$10$WAqMiwxp2DUr9R5pOGuFLeDnP1eWOLdWTFtXIvdY6g.B2b1w4GL.e', NULL, '2020-01-08 10:29:43', '2020-01-08 10:29:43'),
(13, 'ram', 'ram@ram.com', NULL, '$2y$10$1e.4JOa8qHH80ZLY/8JEBuKOcBh603H5InVWT8HV57PE3y4Q82BcO', NULL, '2020-01-08 11:06:28', '2020-01-08 11:06:28'),
(14, 'john', 'john@john.com', NULL, '$2y$10$kW.SEsVll0PMfNw93hpWveQWu3a8BqXFM/eBS./s2YGoF1k3xK/ru', NULL, '2020-01-12 09:16:34', '2020-01-12 09:16:34'),
(15, 'bony', 'bony@bony.com', NULL, '$2y$10$7AAZ4m2poZBDsoiHvEpnSOEErpOfhA/OHkwOGil1aqJYCjBREjStu', NULL, '2020-01-12 09:29:48', '2020-01-12 09:29:48'),
(17, 'doe', 'doe@doe.com', NULL, '$2y$10$sZHeh0sY6KcoTOdDh4Dqvubhzhw/UJy7mBTirbO73Qsr6TLq/zBcq', NULL, '2020-01-12 09:33:05', '2020-01-12 09:33:05'),
(18, 'ayan', 'ayan@ayan.com', NULL, '$2y$10$M9vUmSU06oU0Wtzy8JVKxuZTVcYJYsMfixOTP8pMIKZeegGpc2JCy', NULL, '2020-01-12 09:35:33', '2020-01-12 09:35:33'),
(19, 'kutti', 'kutti@kutti.com', NULL, '$2y$10$.Awmou9sAiTMDlrTTMiAvODaXZPrTb4qFLGta53qOFH0uc65JIBr2', NULL, '2020-01-12 09:40:55', '2020-01-12 09:40:55'),
(20, 'torton', 'jobocidof@mail81app.com', NULL, '$2y$10$dir62sQWopwBmuX960jGC.lV.YAtOSxqok8RoOOkkNPcScszuBk4a', NULL, '2020-01-29 06:47:04', '2020-01-29 06:47:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
