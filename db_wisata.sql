-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Jan 2024 pada 03.04
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_wisata`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_01_05_141309_create_daftar_wisatas_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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

--
-- Dumping data untuk tabel `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'kode_rahasia', '2bc1d13b3bcdde1e4717bf013a8ca6e8046d5f76b73ce05301079b2093e394db', '[\"*\"]', NULL, NULL, '2024-01-03 05:23:09', '2024-01-03 05:23:09'),
(2, 'App\\Models\\User', 1, 'kode_rahasia', '7a833c5148627489b90d164676d69938fed73e75165753570d9e1fe4c13a6a54', '[\"*\"]', NULL, NULL, '2024-01-03 05:23:09', '2024-01-03 05:23:09'),
(3, 'App\\Models\\User', 3, 'kode_rahasia', '2476c23d6d0dc9238a76150686eb15ddee84493a89483c13d82d681a882e8117', '[\"*\"]', NULL, NULL, '2024-01-06 02:59:23', '2024-01-06 02:59:23'),
(4, 'App\\Models\\User', 3, 'kode_rahasia', 'e4bfd8ad4fd64bbd5f0f438ab999ada76f864535bcf832e09a79074c8ecb35f3', '[\"*\"]', NULL, NULL, '2024-01-06 02:59:23', '2024-01-06 02:59:23'),
(5, 'App\\Models\\User', 3, 'kode_rahasia', '6fb2299bed30cb7917698f9149ad1789218ed75dbe4482f1707da1955926b11b', '[\"*\"]', NULL, NULL, '2024-01-06 02:59:25', '2024-01-06 02:59:25'),
(6, 'App\\Models\\User', 3, 'kode_rahasia', 'd79f153454c162249808b486e5d1f12b1630781119781ba061c1f8915d335fe0', '[\"*\"]', NULL, NULL, '2024-01-06 02:59:25', '2024-01-06 02:59:25'),
(7, 'App\\Models\\User', 3, 'kode_rahasia', '9c3b629cba63d5f6f791d817c47ee67ba5bc96c876719d7fae2e759e2c909b44', '[\"*\"]', NULL, NULL, '2024-01-06 03:02:29', '2024-01-06 03:02:29'),
(8, 'App\\Models\\User', 3, 'kode_rahasia', '1febcc10d8970f5628bf4602f26ac57bbde5a3ec24482273344dc51392a4435f', '[\"*\"]', NULL, NULL, '2024-01-06 03:02:29', '2024-01-06 03:02:29'),
(9, 'App\\Models\\User', 3, 'kode_rahasia', '8f384a44ca08b03a39de37c4c8eeb1dca0f861544435c243baf5f2ce9b975bb9', '[\"*\"]', NULL, NULL, '2024-01-06 03:02:32', '2024-01-06 03:02:32'),
(10, 'App\\Models\\User', 3, 'kode_rahasia', '796299dd8c7103bd65adb4fc470e0320face55e8d3d5cab73429b30c56f9ab05', '[\"*\"]', NULL, NULL, '2024-01-06 03:02:32', '2024-01-06 03:02:32'),
(11, 'App\\Models\\User', 3, 'kode_rahasia', '611015080f8390e7259b2a22059b3db1c821a817d92fa9c38df2e5829d2749e9', '[\"*\"]', NULL, NULL, '2024-01-06 03:08:54', '2024-01-06 03:08:54'),
(12, 'App\\Models\\User', 3, 'kode_rahasia', 'ff40b9db3b1ad634d8c2a745a786098bfb05a30764801616ac2627bc106ff8f4', '[\"*\"]', NULL, NULL, '2024-01-06 03:08:54', '2024-01-06 03:08:54'),
(13, 'App\\Models\\User', 5, 'kode_rahasia', '833bcec04663eb53cbb8a246e806b4d2e1abba4f735f0d7131ff7cf5dbbd5c5f', '[\"*\"]', NULL, NULL, '2024-01-06 03:22:10', '2024-01-06 03:22:10'),
(14, 'App\\Models\\User', 5, 'kode_rahasia', 'e0338a4d1191b1f26aa865b09049dbf0671335a5eb432e608b4afc5a4d88cf79', '[\"*\"]', NULL, NULL, '2024-01-06 03:22:10', '2024-01-06 03:22:10'),
(15, 'App\\Models\\User', 5, 'kode_rahasia', '31030f4541c83f2ba8e39f16d7f33ad05d8c7af3cd5e15c56827f613f40cf808', '[\"*\"]', NULL, NULL, '2024-01-06 04:45:02', '2024-01-06 04:45:02'),
(16, 'App\\Models\\User', 5, 'kode_rahasia', '0da6edddcc81138b1ff555d9021d4983d614a4fa7c33fc1a21dd471d43b0bc81', '[\"*\"]', NULL, NULL, '2024-01-06 04:45:02', '2024-01-06 04:45:02'),
(17, 'App\\Models\\User', 5, 'kode_rahasia', 'e7da5a27996563bf546196520db818418fc8cd03d45964f17657c3895f2128de', '[\"*\"]', NULL, NULL, '2024-01-06 04:52:41', '2024-01-06 04:52:41'),
(18, 'App\\Models\\User', 5, 'kode_rahasia', '81bee093d3af808ad2835b2e348efb9dc393e9a8df7ccfc3ff992abd129ed581', '[\"*\"]', NULL, NULL, '2024-01-06 04:52:41', '2024-01-06 04:52:41'),
(19, 'App\\Models\\User', 6, 'kode_rahasia', 'e151a745ce0391a86bc72c2ee6819cb68d65bc81e24a77d6f3167883686f070d', '[\"*\"]', NULL, NULL, '2024-01-06 05:11:02', '2024-01-06 05:11:02'),
(20, 'App\\Models\\User', 6, 'kode_rahasia', 'bfa6cffb70388fd1ae8a992e4a108e8144b2c043c9a165222053c46e55687078', '[\"*\"]', NULL, NULL, '2024-01-06 05:11:02', '2024-01-06 05:11:02'),
(21, 'App\\Models\\User', 6, 'kode_rahasia', '529f9a97394ebb09087417fd2af7d7f7c98a26d77643cf01976f7577db1397c3', '[\"*\"]', NULL, NULL, '2024-01-06 05:18:52', '2024-01-06 05:18:52'),
(22, 'App\\Models\\User', 6, 'kode_rahasia', 'c08b786f5fa875666346840f06800494d9444d19fd92ab8597f1b4574f395989', '[\"*\"]', NULL, NULL, '2024-01-06 05:18:52', '2024-01-06 05:18:52'),
(23, 'App\\Models\\User', 6, 'kode_rahasia', 'b25e9aaad480c208230c32178a1c82b5decf62d5c63cdbaa87006cd4fa8283b7', '[\"*\"]', NULL, NULL, '2024-01-06 05:24:11', '2024-01-06 05:24:11'),
(24, 'App\\Models\\User', 6, 'kode_rahasia', 'efa68d5bd5739412b94c7576ee013c685e8bc9de203f2a7046af9b658d0b3186', '[\"*\"]', NULL, NULL, '2024-01-06 05:24:11', '2024-01-06 05:24:11'),
(25, 'App\\Models\\User', 6, 'kode_rahasia', '78ae64654b29225b38c2e20d3cf25fbb75a465969542817fbf7898099ce48685', '[\"*\"]', NULL, NULL, '2024-01-06 05:24:23', '2024-01-06 05:24:23'),
(26, 'App\\Models\\User', 6, 'kode_rahasia', '011dcbf0d024301022957652225b4cac1f43ad77ec191aa615e236415871e288', '[\"*\"]', NULL, NULL, '2024-01-06 05:24:23', '2024-01-06 05:24:23'),
(27, 'App\\Models\\User', 6, 'kode_rahasia', '91980607bc1c70d9d244d76dc36e50885c9ddade67b4ae2337a61801eafce2d5', '[\"*\"]', NULL, NULL, '2024-01-06 05:25:50', '2024-01-06 05:25:50'),
(28, 'App\\Models\\User', 6, 'kode_rahasia', 'c7997a17a187782786c54121ed65bdc143391e3c216b9d4e980c32a3963bd611', '[\"*\"]', NULL, NULL, '2024-01-06 05:25:50', '2024-01-06 05:25:50'),
(29, 'App\\Models\\User', 6, 'kode_rahasia', '16e9e8dd7d3d1ab6ce2f4e4e4b5e7838f900df022107c5ff367c22a5043d8461', '[\"*\"]', NULL, NULL, '2024-01-06 06:34:51', '2024-01-06 06:34:51'),
(30, 'App\\Models\\User', 6, 'kode_rahasia', 'fb12915bec795f068d8596b4e2c3543ad073646a8ee58314b66193dfbf50247a', '[\"*\"]', NULL, NULL, '2024-01-06 06:34:51', '2024-01-06 06:34:51'),
(31, 'App\\Models\\User', 6, 'kode_rahasia', 'fbeffec6d507a8fc8e2bd3a3e89ceb3f74bcf874b5f8d3a73515c7a9a7075393', '[\"*\"]', NULL, NULL, '2024-01-06 07:07:31', '2024-01-06 07:07:31'),
(32, 'App\\Models\\User', 6, 'kode_rahasia', '4c372bae6edbfb3a9d05a40d4332c47170d5d64e4bad98bde49c39ecedf722c1', '[\"*\"]', NULL, NULL, '2024-01-06 07:07:31', '2024-01-06 07:07:31'),
(33, 'App\\Models\\User', 6, 'kode_rahasia', '16996a3a0371cd5d5c9225fc63209acc7c9b1f57329022189daf28b8d929ccfe', '[\"*\"]', NULL, NULL, '2024-01-06 07:21:22', '2024-01-06 07:21:22'),
(34, 'App\\Models\\User', 6, 'kode_rahasia', 'bc582cbd8f6404f98fd3e5dfee7c7fff6c6a276c3cf29288cdf7c4947717f3f9', '[\"*\"]', NULL, NULL, '2024-01-06 07:21:23', '2024-01-06 07:21:23'),
(35, 'App\\Models\\User', 6, 'kode_rahasia', '6cdfb9a559a010768d5894c2806c3a56145943668930b0cf8be152533d6883a3', '[\"*\"]', NULL, NULL, '2024-01-06 07:30:51', '2024-01-06 07:30:51'),
(36, 'App\\Models\\User', 6, 'kode_rahasia', 'c98821372f89358e42a2e7d1c35f2959103a4353f9be9581ede9aa502a718361', '[\"*\"]', NULL, NULL, '2024-01-06 07:30:51', '2024-01-06 07:30:51'),
(37, 'App\\Models\\User', 7, 'kode_rahasia', 'fe32c72fa4c508da9c4149583210fafb4e722daae9cbb381c2c43e6b660038a0', '[\"*\"]', NULL, NULL, '2024-01-06 07:49:39', '2024-01-06 07:49:39'),
(38, 'App\\Models\\User', 7, 'kode_rahasia', '3931102b807d2b4f6d574e0491dfe05b20237282de4b312577f1789c5f91541f', '[\"*\"]', NULL, NULL, '2024-01-06 07:49:39', '2024-01-06 07:49:39'),
(39, 'App\\Models\\User', 6, 'kode_rahasia', '6173dd574c6f5a216980a395d35cf70bc74cfbf350997622f24a5d66eb23c8c6', '[\"*\"]', NULL, NULL, '2024-01-06 08:11:14', '2024-01-06 08:11:14'),
(40, 'App\\Models\\User', 6, 'kode_rahasia', '6d3df9913d1cedb1928a107f43b64e7cf80310f5a0b9287cf881cfe32fc20a90', '[\"*\"]', NULL, NULL, '2024-01-06 08:11:14', '2024-01-06 08:11:14'),
(41, 'App\\Models\\User', 6, 'kode_rahasia', '3cd24d7d589353c8a758c7631030ff8da528089f98eabe335948dedfd16dac31', '[\"*\"]', NULL, NULL, '2024-01-07 02:46:49', '2024-01-07 02:46:49'),
(42, 'App\\Models\\User', 6, 'kode_rahasia', '632a8936fffd14f255c9d79728757369e9efd617032fa6a89a5a9a3df1b11115', '[\"*\"]', NULL, NULL, '2024-01-07 02:46:49', '2024-01-07 02:46:49'),
(43, 'App\\Models\\User', 6, 'kode_rahasia', '5652342f3c2f3df290269f843c096b05bfaeee2b08ea7ecf7d4ed3c0736d9a7b', '[\"*\"]', NULL, NULL, '2024-01-07 02:46:51', '2024-01-07 02:46:51'),
(44, 'App\\Models\\User', 6, 'kode_rahasia', '8923ce9625cfd523ed6fbf8acb84d9b87f108fbb81d843951c1795ce46857b84', '[\"*\"]', NULL, NULL, '2024-01-07 02:46:51', '2024-01-07 02:46:51'),
(45, 'App\\Models\\User', 6, 'kode_rahasia', 'fc9fdafe781c2aae65185ca003ced1431718f04c5128c1a1f6c13f216115f7e7', '[\"*\"]', NULL, NULL, '2024-01-07 02:57:06', '2024-01-07 02:57:06'),
(46, 'App\\Models\\User', 6, 'kode_rahasia', '2d4b692f3dec8d7a97f1d39c38342b23e5fcd087e9c4e46063b48095eb71b189', '[\"*\"]', NULL, NULL, '2024-01-07 02:57:06', '2024-01-07 02:57:06'),
(47, 'App\\Models\\User', 6, 'kode_rahasia', '00ca162b2decae914898e9ac9583a3058930a15ae15402bcc27e75039a5b2aa2', '[\"*\"]', NULL, NULL, '2024-01-07 03:43:43', '2024-01-07 03:43:43'),
(48, 'App\\Models\\User', 6, 'kode_rahasia', 'f7efd84f230f47cabf26f7803dbdd4506d2621f4facbc6bb7c214fc730366bd5', '[\"*\"]', NULL, NULL, '2024-01-07 03:43:43', '2024-01-07 03:43:43'),
(49, 'App\\Models\\User', 6, 'kode_rahasia', 'a5da6dfeb626d6420df9d6dd823664d9991e175e6bee57ea6dc82dd901ca59ef', '[\"*\"]', NULL, NULL, '2024-01-07 03:47:25', '2024-01-07 03:47:25'),
(50, 'App\\Models\\User', 6, 'kode_rahasia', '03d1d7654998fad3aca27484c8c2e955acb0fc5fd6da57d98614f097b346176a', '[\"*\"]', NULL, NULL, '2024-01-07 03:47:25', '2024-01-07 03:47:25'),
(51, 'App\\Models\\User', 6, 'kode_rahasia', '88538b8710d13f2e7d849b6189c2664d623d671f0c51f706ef2b8f1da25e7715', '[\"*\"]', NULL, NULL, '2024-01-07 03:49:36', '2024-01-07 03:49:36'),
(52, 'App\\Models\\User', 6, 'kode_rahasia', 'de86f0f0ba5b6747a4dd036fdb671c6082f4dad9621d28b740ce70cd410b6ade', '[\"*\"]', NULL, NULL, '2024-01-07 03:49:36', '2024-01-07 03:49:36'),
(53, 'App\\Models\\User', 6, 'kode_rahasia', '46fe5138be3589ed4ec7bdc61ddc9273b411713487500ab87166987d34051e44', '[\"*\"]', NULL, NULL, '2024-01-07 04:45:43', '2024-01-07 04:45:43'),
(54, 'App\\Models\\User', 6, 'kode_rahasia', '9479dce44f2a9dd4c40b2bd2d2e1f1d7bbe8763269235384533417c8b25b8aba', '[\"*\"]', NULL, NULL, '2024-01-07 04:45:43', '2024-01-07 04:45:43'),
(55, 'App\\Models\\User', 6, 'kode_rahasia', 'c11354eb1df5990d87f793835c14e943451375d7af6223a6c33bab5842f1d8f0', '[\"*\"]', NULL, NULL, '2024-01-07 05:00:30', '2024-01-07 05:00:30'),
(56, 'App\\Models\\User', 6, 'kode_rahasia', '0397ea198dd810fad5d05050489f09d17cb1e4a0c98c6405ba43752511fb51ec', '[\"*\"]', NULL, NULL, '2024-01-07 05:00:30', '2024-01-07 05:00:30'),
(57, 'App\\Models\\User', 6, 'kode_rahasia', 'dbd339bbab30e7ee1078f6ad8616856b1343a6e1eb6fa3a5528fab4e58346b87', '[\"*\"]', NULL, NULL, '2024-01-07 05:18:00', '2024-01-07 05:18:00'),
(58, 'App\\Models\\User', 6, 'kode_rahasia', '71677e3aeff169bce308badde4f03e23e0807f62119353f1d48c4e92b5b8d437', '[\"*\"]', NULL, NULL, '2024-01-07 05:18:00', '2024-01-07 05:18:00'),
(59, 'App\\Models\\User', 6, 'kode_rahasia', 'e0d902d2efcb2de87fedf5e0e021ba91b4b1a2dcdbd4a98a0a718347e8079384', '[\"*\"]', NULL, NULL, '2024-01-07 06:36:14', '2024-01-07 06:36:14'),
(60, 'App\\Models\\User', 6, 'kode_rahasia', '577505ef4621f6bd849960864e6e04664d8740bd27d3d66ebe56874c902e73ae', '[\"*\"]', NULL, NULL, '2024-01-07 06:36:14', '2024-01-07 06:36:14'),
(61, 'App\\Models\\User', 6, 'kode_rahasia', 'a897defea1b339a4901c4ec1dd40883f9756519e64983c9e1f89933879c8f44e', '[\"*\"]', NULL, NULL, '2024-01-07 06:41:22', '2024-01-07 06:41:22'),
(62, 'App\\Models\\User', 6, 'kode_rahasia', '370f13c1cee10dc379d373dbbb30c3e96b45fd75273731acb67800faa8629463', '[\"*\"]', NULL, NULL, '2024-01-07 06:41:22', '2024-01-07 06:41:22'),
(63, 'App\\Models\\User', 10, 'kode_rahasia', '27d847c76a05904de502905b2680382cbb8189f70076d4adcd46e40ad2ddb144', '[\"*\"]', NULL, NULL, '2024-01-07 06:45:22', '2024-01-07 06:45:22'),
(64, 'App\\Models\\User', 10, 'kode_rahasia', 'dc6489f7ea499b8e2d1aa6f608462dfabda03a1da629ad77f63bbdc618b77b96', '[\"*\"]', NULL, NULL, '2024-01-07 06:45:22', '2024-01-07 06:45:22'),
(65, 'App\\Models\\User', 10, 'kode_rahasia', '838c1aa96955b230685f4206bf5c0eca4d364a1438a7b0e487fba3eb4512e80f', '[\"*\"]', NULL, NULL, '2024-01-07 06:47:43', '2024-01-07 06:47:43'),
(66, 'App\\Models\\User', 10, 'kode_rahasia', '1a6071b773fcae28b9f903a8f5b970b0fd362b4ace6032f31d65493bfd3d122b', '[\"*\"]', NULL, NULL, '2024-01-07 06:47:43', '2024-01-07 06:47:43'),
(67, 'App\\Models\\User', 10, 'kode_rahasia', '4c981f098e862f8a00de9b0950a71fd72f1b6732ae7b22efcf4966b388f5c84c', '[\"*\"]', NULL, NULL, '2024-01-07 06:51:15', '2024-01-07 06:51:15'),
(68, 'App\\Models\\User', 10, 'kode_rahasia', '270c92ab3d06f39371481c9d774914ad764c4784fb21fc9d5ef881b21b79c7a3', '[\"*\"]', NULL, NULL, '2024-01-07 06:51:15', '2024-01-07 06:51:15'),
(69, 'App\\Models\\User', 10, 'kode_rahasia', '0c0052390cd35325ca7988aac674a5d2f2f5f310d13926ff1cb2fd42e8f2d8c3', '[\"*\"]', NULL, NULL, '2024-01-07 06:54:04', '2024-01-07 06:54:04'),
(70, 'App\\Models\\User', 10, 'kode_rahasia', '91574e2c9cae284a968dbab15f5ee4336982a5a11c8ce4d65f54a2c0588f5555', '[\"*\"]', NULL, NULL, '2024-01-07 06:54:04', '2024-01-07 06:54:04'),
(71, 'App\\Models\\User', 10, 'kode_rahasia', '5d5760647d48e7a59c318ed592b1bbe8174137f481a8eaa3e09eea6ddfc1430f', '[\"*\"]', NULL, NULL, '2024-01-07 06:55:00', '2024-01-07 06:55:00'),
(72, 'App\\Models\\User', 10, 'kode_rahasia', 'd6c3e6d1d6ac6d0d93fd6ecec2b2022f46de5315573badbf83e9e12408cabc05', '[\"*\"]', NULL, NULL, '2024-01-07 06:55:00', '2024-01-07 06:55:00'),
(73, 'App\\Models\\User', 6, 'kode_rahasia', '64ae5209e1b7323250779851e106851e4349c706253e5311cdd30ea721901f9a', '[\"*\"]', NULL, NULL, '2024-01-07 06:56:59', '2024-01-07 06:56:59'),
(74, 'App\\Models\\User', 6, 'kode_rahasia', 'a452f4d39c8cd29ec2ec4a4b15ff3f482335940c1d2614cb254ee0b245e70cf9', '[\"*\"]', NULL, NULL, '2024-01-07 06:56:59', '2024-01-07 06:56:59'),
(75, 'App\\Models\\User', 6, 'kode_rahasia', 'e58f43c6c3bcbee399100fe061b875874187f42fe601c619a3be55ccae1e0df7', '[\"*\"]', NULL, NULL, '2024-01-07 07:14:06', '2024-01-07 07:14:06'),
(76, 'App\\Models\\User', 6, 'kode_rahasia', '3080919868cb6b5e977d6abf67de0049b646fc326c25e952b4fa6c365f0e9b7f', '[\"*\"]', NULL, NULL, '2024-01-07 07:14:07', '2024-01-07 07:14:07'),
(77, 'App\\Models\\User', 6, 'kode_rahasia', 'c2b1427f7706e43967052ad92d80cf835e9f410a912aea1e3e7211725f06379c', '[\"*\"]', NULL, NULL, '2024-01-07 07:18:04', '2024-01-07 07:18:04'),
(78, 'App\\Models\\User', 6, 'kode_rahasia', '40eb458f8629fbb9b8a03bdd5c3ad5cc58c85483c07c27eb5b5d5bcec0362843', '[\"*\"]', NULL, NULL, '2024-01-07 07:18:04', '2024-01-07 07:18:04'),
(79, 'App\\Models\\User', 6, 'kode_rahasia', '129f9f46bc5d90897c4e0e21670634efae28d58b1dc13668d4197b510d2d3e30', '[\"*\"]', NULL, NULL, '2024-01-07 07:23:56', '2024-01-07 07:23:56'),
(80, 'App\\Models\\User', 6, 'kode_rahasia', 'c134458db9fedba934df6fdf75cfbb186a1d3fed77b79d479f6dbfeb48f0b690', '[\"*\"]', NULL, NULL, '2024-01-07 07:23:56', '2024-01-07 07:23:56'),
(81, 'App\\Models\\User', 10, 'kode_rahasia', '28af87b536dd31cc2b50927c81538c6aaef1f3b94e4af3fc1cf964aee4498a99', '[\"*\"]', NULL, NULL, '2024-01-07 07:36:29', '2024-01-07 07:36:29'),
(82, 'App\\Models\\User', 10, 'kode_rahasia', '868308af6bf1b295add701e0389c4f68374a8c9132d7c832bc089e7600d909e9', '[\"*\"]', NULL, NULL, '2024-01-07 07:36:29', '2024-01-07 07:36:29'),
(83, 'App\\Models\\User', 6, 'kode_rahasia', '6bba4d1075469a0a74b5beddfa44ddc0aca1f0ccf136507422782acefcfe4252', '[\"*\"]', NULL, NULL, '2024-01-07 07:41:01', '2024-01-07 07:41:01'),
(84, 'App\\Models\\User', 6, 'kode_rahasia', '52d6f6c04fbebf52986247179ec7b10bb2c8fc27a07663e72615bfb5abc33c15', '[\"*\"]', NULL, NULL, '2024-01-07 07:41:01', '2024-01-07 07:41:01'),
(85, 'App\\Models\\User', 10, 'kode_rahasia', '377a84e511cd17b065fbaf1499ebd6d767137a5db87a0bbb693202f37aaf9d5a', '[\"*\"]', NULL, NULL, '2024-01-07 07:54:08', '2024-01-07 07:54:08'),
(86, 'App\\Models\\User', 10, 'kode_rahasia', 'a20397ad631fa39b69c1652b2aa781d63ba9d6f74252158f93f15125e7e73436', '[\"*\"]', NULL, NULL, '2024-01-07 07:54:08', '2024-01-07 07:54:08'),
(87, 'App\\Models\\User', 6, 'kode_rahasia', '8df2eb8c2151429fd7e16e8243f47366c3e9c5631050a75cecc4ee1d8bb25b68', '[\"*\"]', NULL, NULL, '2024-01-07 08:08:49', '2024-01-07 08:08:49'),
(88, 'App\\Models\\User', 6, 'kode_rahasia', '6b2a91253cc203e023c782ace9d6042a52fa8fa8deef0c6cf6b8ef881bfd9dc0', '[\"*\"]', NULL, NULL, '2024-01-07 08:08:49', '2024-01-07 08:08:49'),
(89, 'App\\Models\\User', 6, 'kode_rahasia', 'fd1277ef5095758a8ee494eab7dae8daec1743b69ad2905e151925160ed40863', '[\"*\"]', NULL, NULL, '2024-01-07 08:10:31', '2024-01-07 08:10:31'),
(90, 'App\\Models\\User', 6, 'kode_rahasia', '64a6e83d333e704d7aefac8a349a4de965afaf6366ddd682af495840b9f9b551', '[\"*\"]', NULL, NULL, '2024-01-07 08:10:31', '2024-01-07 08:10:31'),
(91, 'App\\Models\\User', 6, 'kode_rahasia', '7977274d06c8733503b71085834dced4749ed2bbc56478140b56d1478122246f', '[\"*\"]', NULL, NULL, '2024-01-07 08:15:46', '2024-01-07 08:15:46'),
(92, 'App\\Models\\User', 6, 'kode_rahasia', '2ddbeaa32c102a8a5176de8e8595ad5320b279932f822cc2536d7d6a5c531552', '[\"*\"]', NULL, NULL, '2024-01-07 08:15:46', '2024-01-07 08:15:46'),
(93, 'App\\Models\\User', 6, 'kode_rahasia', '19559cc93039966f24dfa09b6f88b9a9112bfa42ec3cda3908475dfdb53f3fb5', '[\"*\"]', NULL, NULL, '2024-01-07 08:25:20', '2024-01-07 08:25:20'),
(94, 'App\\Models\\User', 6, 'kode_rahasia', '3c188bb9e2ee6d439afcf75c686a3c931e2410c2bd095be469eea0fd6f50f51d', '[\"*\"]', NULL, NULL, '2024-01-07 08:25:20', '2024-01-07 08:25:20'),
(95, 'App\\Models\\User', 6, 'kode_rahasia', '9fcdc2bcc33d5bb7b7d7df73562ee7cda2e042d551ab3df070b140d849bae307', '[\"*\"]', NULL, NULL, '2024-01-07 09:36:10', '2024-01-07 09:36:10'),
(96, 'App\\Models\\User', 6, 'kode_rahasia', '22427b0a36ab1c6fb0b3dd526682d02529f2ec45ed370dab0cdeff6735e49c8e', '[\"*\"]', NULL, NULL, '2024-01-07 09:36:11', '2024-01-07 09:36:11'),
(97, 'App\\Models\\User', 6, 'kode_rahasia', 'c5d2f09c5c7ae4a1460211f022d7b46a14ebe950aa052088bd8290f57658a413', '[\"*\"]', NULL, NULL, '2024-01-07 09:38:54', '2024-01-07 09:38:54'),
(98, 'App\\Models\\User', 6, 'kode_rahasia', '2464dc981a0f4ba950ea70dd336483863a8fe6fa0862637bb6190b166969a00c', '[\"*\"]', NULL, NULL, '2024-01-07 09:38:54', '2024-01-07 09:38:54'),
(99, 'App\\Models\\User', 6, 'kode_rahasia', '4adf619fa650a13dd679af918920919f8af85263d7d2e4783bfc449372a4d3a6', '[\"*\"]', NULL, NULL, '2024-01-07 09:40:25', '2024-01-07 09:40:25'),
(100, 'App\\Models\\User', 6, 'kode_rahasia', 'cc1b2512f8ee5ed3d62a89e2675331dc80b2945d249aa2053e456842eab5ca90', '[\"*\"]', NULL, NULL, '2024-01-07 09:40:25', '2024-01-07 09:40:25'),
(101, 'App\\Models\\User', 6, 'kode_rahasia', 'e8db8dd35f335c0566d586bd9477469ba2fadc37690d8975eb621221bb967733', '[\"*\"]', NULL, NULL, '2024-01-07 23:39:49', '2024-01-07 23:39:49'),
(102, 'App\\Models\\User', 6, 'kode_rahasia', '1bd4111d696e137a64803990381f7b65d082a4c98ed8f671ba967d4e789f58ac', '[\"*\"]', NULL, NULL, '2024-01-07 23:39:49', '2024-01-07 23:39:49'),
(103, 'App\\Models\\User', 6, 'kode_rahasia', 'eb419b5d4f40a8003413dc74a753fd546799e8b929ed27e0299cb62e492eb7bd', '[\"*\"]', NULL, NULL, '2024-01-08 00:37:50', '2024-01-08 00:37:50'),
(104, 'App\\Models\\User', 6, 'kode_rahasia', '9c43e968f7a26308292eac60e807bb47c9f171db06a88c54ce442d564b9c6bdf', '[\"*\"]', NULL, NULL, '2024-01-08 00:37:50', '2024-01-08 00:37:50'),
(105, 'App\\Models\\User', 6, 'kode_rahasia', '0f1093917df35e71174372d032084b9d5559fcded288f1c0f68289b1bf7c0fc7', '[\"*\"]', NULL, NULL, '2024-01-08 01:01:21', '2024-01-08 01:01:21'),
(106, 'App\\Models\\User', 6, 'kode_rahasia', 'c1af42fb417e0e41a1db0d1b65d80aa5ee9f5794ff490ec0a9bc9586e32d548b', '[\"*\"]', NULL, NULL, '2024-01-08 01:01:21', '2024-01-08 01:01:21'),
(107, 'App\\Models\\User', 6, 'kode_rahasia', 'cb0a7e3e2341d6532318d75099beeee502786899c43ecff5c5097605b39268cc', '[\"*\"]', NULL, NULL, '2024-01-08 01:03:30', '2024-01-08 01:03:30'),
(108, 'App\\Models\\User', 6, 'kode_rahasia', '22278c006061d49ea99532c17a773bfde6bbf44c7c784c3c1992e0969e5f779f', '[\"*\"]', NULL, NULL, '2024-01-08 01:03:30', '2024-01-08 01:03:30'),
(109, 'App\\Models\\User', 11, 'kode_rahasia', '7fb11495fb65caf7fb2f6b0fc18ed20af9fa63b4cba7068be3e852694f2c9df9', '[\"*\"]', NULL, NULL, '2024-01-08 01:34:44', '2024-01-08 01:34:44'),
(110, 'App\\Models\\User', 11, 'kode_rahasia', '6356fc9e435f76ac838f28427cbdff8e499a302e52d6ea72ae703ae92e9c0d12', '[\"*\"]', NULL, NULL, '2024-01-08 01:34:44', '2024-01-08 01:34:44'),
(111, 'App\\Models\\User', 11, 'kode_rahasia', 'eb95674650e34f9b11ffb712b072c4b18780a990adf299548917e5be02e338cc', '[\"*\"]', NULL, NULL, '2024-01-08 01:48:15', '2024-01-08 01:48:15'),
(112, 'App\\Models\\User', 11, 'kode_rahasia', '8699f923eb726841aefa636193811c66debaa0da3a1cce653d1dd4108b93f1cd', '[\"*\"]', NULL, NULL, '2024-01-08 01:48:15', '2024-01-08 01:48:15'),
(113, 'App\\Models\\User', 11, 'kode_rahasia', 'd0fe9a7f2e6334d10700a51e70d7827d9f157d7308675f47664fb58775f67177', '[\"*\"]', NULL, NULL, '2024-01-08 01:54:44', '2024-01-08 01:54:44'),
(114, 'App\\Models\\User', 11, 'kode_rahasia', '86668c2a777f47e41d3c96d99dc32f15a8d5c913b43b850553205c036dd2d58e', '[\"*\"]', NULL, NULL, '2024-01-08 01:54:44', '2024-01-08 01:54:44'),
(115, 'App\\Models\\User', 11, 'kode_rahasia', 'af4ea8d065b0d7c84570bd6e14afc2c4c83fc62fee8fc125bd26ee70ecc79d91', '[\"*\"]', NULL, NULL, '2024-01-08 02:31:05', '2024-01-08 02:31:05'),
(116, 'App\\Models\\User', 11, 'kode_rahasia', '641f9874229f84a0a385aa7b8917cac6d2ea3f4217a215faa1dd743a00e6f0d3', '[\"*\"]', NULL, NULL, '2024-01-08 02:31:05', '2024-01-08 02:31:05'),
(117, 'App\\Models\\User', 11, 'kode_rahasia', '041f55da748a5c0ffdaa74640bd946fb073d582626d7fb0e40044059a2c9a88a', '[\"*\"]', NULL, NULL, '2024-01-08 02:39:37', '2024-01-08 02:39:37'),
(118, 'App\\Models\\User', 11, 'kode_rahasia', '08f432c95ae4c62a2d50f492129805e9f13ab3d862da3ca62e6f1a141d64e931', '[\"*\"]', NULL, NULL, '2024-01-08 02:39:37', '2024-01-08 02:39:37'),
(119, 'App\\Models\\User', 11, 'kode_rahasia', '6b672c001636f20bd1570e80781c8cf033fbbd3f97bb16bf87d91bc5bd58ddd6', '[\"*\"]', NULL, NULL, '2024-01-08 02:41:07', '2024-01-08 02:41:07'),
(120, 'App\\Models\\User', 11, 'kode_rahasia', '92c83418136be889a1f393f942a1539f2b45255e3ec866cb3d043d67060a945b', '[\"*\"]', NULL, NULL, '2024-01-08 02:41:07', '2024-01-08 02:41:07'),
(121, 'App\\Models\\User', 6, 'kode_rahasia', '9c24c3a63cf803744993dbb6e22dd98139eb488b09273d5f086eaff7c3364656', '[\"*\"]', NULL, NULL, '2024-01-08 02:47:11', '2024-01-08 02:47:11'),
(122, 'App\\Models\\User', 6, 'kode_rahasia', '50ac7d491de49bc26f0c741579e9972e836947a7574e0f1384a8dbf6b7538415', '[\"*\"]', NULL, NULL, '2024-01-08 02:47:11', '2024-01-08 02:47:11'),
(123, 'App\\Models\\User', 6, 'kode_rahasia', '89c041e6eea16902114b1ebbab55bc98118b76d8daaeffb8a5d9591672c98549', '[\"*\"]', NULL, NULL, '2024-01-08 03:05:36', '2024-01-08 03:05:36'),
(124, 'App\\Models\\User', 6, 'kode_rahasia', '6e6313a285065dd6287e6990ead1b8040c776152f7eaeb7bc160fbbb9058c5e6', '[\"*\"]', NULL, NULL, '2024-01-08 03:05:36', '2024-01-08 03:05:36'),
(125, 'App\\Models\\User', 6, 'kode_rahasia', 'c68f7cef3173fae37f7653fdca6dc0df1bbfeb84db5aba671239be4b4ed7e14f', '[\"*\"]', NULL, NULL, '2024-01-08 03:09:32', '2024-01-08 03:09:32'),
(126, 'App\\Models\\User', 6, 'kode_rahasia', 'bcb5f6b366d3b0f1d5107923647050ab484227c3496ec5df6e24328c4ffd781f', '[\"*\"]', NULL, NULL, '2024-01-08 03:09:32', '2024-01-08 03:09:32'),
(127, 'App\\Models\\User', 6, 'kode_rahasia', '22ca87b6bdb0eb294d3d9a5e46bb834f6382a7e74b062218d3a60fa0a2b1c953', '[\"*\"]', NULL, NULL, '2024-01-08 03:29:26', '2024-01-08 03:29:26'),
(128, 'App\\Models\\User', 6, 'kode_rahasia', '240e408a0c324a4542a8e1f5ba536613a1a3c337e27b719640e13dc84698ae46', '[\"*\"]', NULL, NULL, '2024-01-08 03:29:26', '2024-01-08 03:29:26'),
(129, 'App\\Models\\User', 11, 'kode_rahasia', '32d62028644d08191f6689b18f2c0cd340ed6a4f7673d6831980cb7d7e903cc5', '[\"*\"]', NULL, NULL, '2024-01-08 03:32:54', '2024-01-08 03:32:54'),
(130, 'App\\Models\\User', 11, 'kode_rahasia', 'bfb4cc3d484c4943fbd695f8538b561edaa1c0c35c09fcd64f60388ea662a574', '[\"*\"]', NULL, NULL, '2024-01-08 03:32:54', '2024-01-08 03:32:54'),
(131, 'App\\Models\\User', 11, 'kode_rahasia', 'f704f0a687d0dcc5f182c4366805ba950c31b8569d445354fea53cc5c1942511', '[\"*\"]', NULL, NULL, '2024-01-08 03:37:48', '2024-01-08 03:37:48'),
(132, 'App\\Models\\User', 11, 'kode_rahasia', '87ac0889345f22f40ec4d80bcec9be7c4746c7443ac1ddc261af3ebb976c7fa2', '[\"*\"]', NULL, NULL, '2024-01-08 03:37:48', '2024-01-08 03:37:48'),
(133, 'App\\Models\\User', 6, 'kode_rahasia', 'b6af79670075b1cf4e688a424cefb2aa18c446bf7751cd3e8359c1cf8c7ffb79', '[\"*\"]', NULL, NULL, '2024-01-08 04:00:09', '2024-01-08 04:00:09'),
(134, 'App\\Models\\User', 6, 'kode_rahasia', '491046320ce0d1c29d498b46f42a07511fb062282ea0862b7fb98f1837074c6e', '[\"*\"]', NULL, NULL, '2024-01-08 04:00:09', '2024-01-08 04:00:09'),
(135, 'App\\Models\\User', 6, 'kode_rahasia', '22c7f3e1fb3c1e3e958a98c3b520f574a5c022c377e731a04d77313f0b117260', '[\"*\"]', NULL, NULL, '2024-01-08 04:04:34', '2024-01-08 04:04:34'),
(136, 'App\\Models\\User', 6, 'kode_rahasia', 'a5c9316eea644ab26299b85d99d97cb00a4cc41327b9bcd3fac8f9145f3c8691', '[\"*\"]', NULL, NULL, '2024-01-08 04:04:34', '2024-01-08 04:04:34'),
(137, 'App\\Models\\User', 12, 'kode_rahasia', 'ab20f75193964c50e0d05f63da49d05cf96c09979cbb8cfadf2a0234dbd03cf8', '[\"*\"]', NULL, NULL, '2024-01-08 04:14:00', '2024-01-08 04:14:00'),
(138, 'App\\Models\\User', 12, 'kode_rahasia', '7679e6ed2b9fe9f4e5b72536f514672b59aa6dd02c4ae1158d5feded7208985d', '[\"*\"]', NULL, NULL, '2024-01-08 04:14:00', '2024-01-08 04:14:00'),
(139, 'App\\Models\\User', 12, 'kode_rahasia', '55caf83fb9efd76b1aef0151cc2d56ac7242ff03dcc90e53664c35fafcd17ce6', '[\"*\"]', NULL, NULL, '2024-01-08 04:16:03', '2024-01-08 04:16:03'),
(140, 'App\\Models\\User', 12, 'kode_rahasia', '6f581411ce99e023fd5a87d973ca4dabf284f4c375b2673c8a0b9ec111ecb38b', '[\"*\"]', NULL, NULL, '2024-01-08 04:16:03', '2024-01-08 04:16:03'),
(141, 'App\\Models\\User', 12, 'kode_rahasia', '4869bb7a98a68fd1a50ba27dd3076eb90372a3f5a1a487b9764a40720ad121f3', '[\"*\"]', NULL, NULL, '2024-01-08 04:22:30', '2024-01-08 04:22:30'),
(142, 'App\\Models\\User', 12, 'kode_rahasia', '9bfbe7e30fcb6506d79f77e29511dfa4e9eb8a50842a163f5739d7fb765ebed1', '[\"*\"]', NULL, NULL, '2024-01-08 04:22:30', '2024-01-08 04:22:30'),
(143, 'App\\Models\\User', 12, 'kode_rahasia', '6c7f7b4703eb223c486adfab55f0610b760416e657f71536685a3b64fa2fa7d8', '[\"*\"]', NULL, NULL, '2024-01-08 04:24:04', '2024-01-08 04:24:04'),
(144, 'App\\Models\\User', 12, 'kode_rahasia', 'eb84ddc747641b1e128f391faf069faedb73960f3135c1b6fe2bea21a119d8e6', '[\"*\"]', NULL, NULL, '2024-01-08 04:24:04', '2024-01-08 04:24:04'),
(145, 'App\\Models\\User', 12, 'kode_rahasia', 'cc27db5aeb24d083af64ef28c4567d51c4674bf6ecde5114b496b7c3bd06811f', '[\"*\"]', NULL, NULL, '2024-01-08 04:28:12', '2024-01-08 04:28:12'),
(146, 'App\\Models\\User', 12, 'kode_rahasia', '39bc4bf664d08e99e848413cb9b0cfce42c7e98a62f921c6d8faaec899be876b', '[\"*\"]', NULL, NULL, '2024-01-08 04:28:12', '2024-01-08 04:28:12'),
(147, 'App\\Models\\User', 12, 'kode_rahasia', '9842a53099efd9436d4b9211df184749af2faf43c8e80abc2a3f95b5c50e2b26', '[\"*\"]', NULL, NULL, '2024-01-08 04:30:17', '2024-01-08 04:30:17'),
(148, 'App\\Models\\User', 12, 'kode_rahasia', '8e14d7aa7a91c06e8e870c2081678412cbd360ac3dea07a8f19d165f1f24521b', '[\"*\"]', NULL, NULL, '2024-01-08 04:30:17', '2024-01-08 04:30:17'),
(149, 'App\\Models\\User', 12, 'kode_rahasia', '14d1e30a86d23cf461346a9df35b669c775f508551bc8b9ce794ad31e7416307', '[\"*\"]', NULL, NULL, '2024-01-08 04:31:22', '2024-01-08 04:31:22'),
(150, 'App\\Models\\User', 12, 'kode_rahasia', '4f21e5791a7120e7bf3fe7f767cbc99f7d572d0b63ffb1ef6ca530dc919fbf2f', '[\"*\"]', NULL, NULL, '2024-01-08 04:31:22', '2024-01-08 04:31:22'),
(151, 'App\\Models\\User', 12, 'kode_rahasia', '76124ac99aae8f0467b3bad220f101a284c334ee9fb259939318dafd47a77479', '[\"*\"]', NULL, NULL, '2024-01-08 04:34:46', '2024-01-08 04:34:46'),
(152, 'App\\Models\\User', 12, 'kode_rahasia', 'de7b5a7739372aa65f0cf39eada243577f2bcf8ce9efa641e9e898dd5ace03d4', '[\"*\"]', NULL, NULL, '2024-01-08 04:34:46', '2024-01-08 04:34:46'),
(153, 'App\\Models\\User', 6, 'kode_rahasia', '93e8f7ec823e194f5d5953da758a449a05fa5287dade6af2e254305b1bb6fe60', '[\"*\"]', NULL, NULL, '2024-01-08 04:53:27', '2024-01-08 04:53:27'),
(154, 'App\\Models\\User', 6, 'kode_rahasia', '2a90d66c68751bcac1f62e962761323222d0987024a8c47adf7d4ecd84cf4e55', '[\"*\"]', NULL, NULL, '2024-01-08 04:53:27', '2024-01-08 04:53:27'),
(155, 'App\\Models\\User', 6, 'kode_rahasia', 'b9aa16b7120df43febcb599e013c1f5dc930c4107facec7117f40ad60ff133f0', '[\"*\"]', NULL, NULL, '2024-01-08 04:53:28', '2024-01-08 04:53:28'),
(156, 'App\\Models\\User', 6, 'kode_rahasia', 'b1e4653c18264fdb4d6e1c9d7fd0e7d710a685b75bda533aea69d4d17f9a69a9', '[\"*\"]', NULL, NULL, '2024-01-08 04:53:28', '2024-01-08 04:53:28'),
(157, 'App\\Models\\User', 12, 'kode_rahasia', '923888939061fddf82ebd09777d753829b9c6fbeaf940a2ab030c7050475f052', '[\"*\"]', NULL, NULL, '2024-01-08 04:55:14', '2024-01-08 04:55:14'),
(158, 'App\\Models\\User', 12, 'kode_rahasia', '7861f9f26aa23273a7d5cd61d0a69d11a74b8611d7d5e191d59abcca95123c29', '[\"*\"]', NULL, NULL, '2024-01-08 04:55:14', '2024-01-08 04:55:14'),
(159, 'App\\Models\\User', 12, 'kode_rahasia', '7db864db702f423abfada2787b6c9d3e98c5a5fda58b30e11f3c3262f6760272', '[\"*\"]', NULL, NULL, '2024-01-08 04:56:55', '2024-01-08 04:56:55'),
(160, 'App\\Models\\User', 12, 'kode_rahasia', '746619d0dce7febae5effb64d7f58feb35682b54a73df26427d5236bb9e664ec', '[\"*\"]', NULL, NULL, '2024-01-08 04:56:55', '2024-01-08 04:56:55'),
(161, 'App\\Models\\User', 12, 'kode_rahasia', '32a78d1a4578a6cd4fa68d20647b6e45058c9c1e91b0fd7e920105b7cc3160b9', '[\"*\"]', NULL, NULL, '2024-01-08 04:59:43', '2024-01-08 04:59:43'),
(162, 'App\\Models\\User', 12, 'kode_rahasia', '99e47269f1683bba5ed540c042eff75473c9ac1eb51d56111baaf8737def0c66', '[\"*\"]', NULL, NULL, '2024-01-08 04:59:43', '2024-01-08 04:59:43'),
(163, 'App\\Models\\User', 12, 'kode_rahasia', 'ef5774f932c32a98ee3f0c7dfb68c6605208d55bb94c499a38460ac1449add91', '[\"*\"]', NULL, NULL, '2024-01-08 05:00:27', '2024-01-08 05:00:27'),
(164, 'App\\Models\\User', 12, 'kode_rahasia', '6890506bddc1ef3f797c253ad7b1ce263557c2328097a7c7f90c0a9e27bed394', '[\"*\"]', NULL, NULL, '2024-01-08 05:00:27', '2024-01-08 05:00:27'),
(165, 'App\\Models\\User', 12, 'kode_rahasia', '537d18dacd07a4c8bf975c3d90c7b5ee21be43e729c7e397e3db21b1abc58d7d', '[\"*\"]', NULL, NULL, '2024-01-08 05:02:44', '2024-01-08 05:02:44'),
(166, 'App\\Models\\User', 12, 'kode_rahasia', '6d8568751e96d886f52a3a8253b369fe6b723b0eb984675917cce1e8f5f14678', '[\"*\"]', NULL, NULL, '2024-01-08 05:02:44', '2024-01-08 05:02:44'),
(167, 'App\\Models\\User', 12, 'kode_rahasia', '96f833583706975929b23a698b56c12aac1fbb1f70b54be668b72441cac3f9e4', '[\"*\"]', NULL, NULL, '2024-01-08 05:03:30', '2024-01-08 05:03:30'),
(168, 'App\\Models\\User', 12, 'kode_rahasia', 'b99f7de9a90a497f534c8e6db5d6eb2c5c012ec58bb1b624092087c200926962', '[\"*\"]', NULL, NULL, '2024-01-08 05:03:30', '2024-01-08 05:03:30'),
(169, 'App\\Models\\User', 12, 'kode_rahasia', '1fe2d74a4022ec902ad208ded5a0f4a981386a78aabe4b59d6398619304687cc', '[\"*\"]', NULL, NULL, '2024-01-08 05:05:06', '2024-01-08 05:05:06'),
(170, 'App\\Models\\User', 12, 'kode_rahasia', 'e5c5e65ca4671c45b5a06d49633b3a1f92784f054555cecb778cde9e2674dea5', '[\"*\"]', NULL, NULL, '2024-01-08 05:05:06', '2024-01-08 05:05:06'),
(171, 'App\\Models\\User', 12, 'kode_rahasia', '1bb4182e4785cfd18f76ae15da2d1f6b3c905d09bde29569772dacd451e87706', '[\"*\"]', NULL, NULL, '2024-01-08 05:07:55', '2024-01-08 05:07:55'),
(172, 'App\\Models\\User', 12, 'kode_rahasia', 'd95463de6942c4cde6cd7c5145237438874aaaa01bf569798929283c608de831', '[\"*\"]', NULL, NULL, '2024-01-08 05:07:55', '2024-01-08 05:07:55'),
(173, 'App\\Models\\User', 12, 'kode_rahasia', 'aa68b1196c62b4627162571cc25ca645f7d45eef86c746b4b551fa82a75b04b5', '[\"*\"]', NULL, NULL, '2024-01-08 05:09:30', '2024-01-08 05:09:30'),
(174, 'App\\Models\\User', 12, 'kode_rahasia', 'f861891a013eeaf4b8969c632e3c0289cf9a18f1946a1a75591e439083f8ba08', '[\"*\"]', NULL, NULL, '2024-01-08 05:09:30', '2024-01-08 05:09:30'),
(175, 'App\\Models\\User', 12, 'kode_rahasia', '014705f52931abdcc87f4fa8b39cb6c7e5461a6e5ffed66534136c91757a49ec', '[\"*\"]', NULL, NULL, '2024-01-08 05:10:07', '2024-01-08 05:10:07'),
(176, 'App\\Models\\User', 12, 'kode_rahasia', '933a6ecbf1f2ea7d62302b78f70bf96ba10be5e15c91747f8fd0ff7a342d0aab', '[\"*\"]', NULL, NULL, '2024-01-08 05:10:07', '2024-01-08 05:10:07'),
(177, 'App\\Models\\User', 12, 'kode_rahasia', '808f78f35a4fcaa791eaae9a98bc9a58cc8c3903435640f34065d83b6ec15bf7', '[\"*\"]', NULL, NULL, '2024-01-08 05:11:03', '2024-01-08 05:11:03'),
(178, 'App\\Models\\User', 12, 'kode_rahasia', '3bfee5e61964af40b5951fd58db94d382c9026228d620439ebabb3ac62b4306a', '[\"*\"]', NULL, NULL, '2024-01-08 05:11:03', '2024-01-08 05:11:03'),
(179, 'App\\Models\\User', 12, 'kode_rahasia', '6011977a9480dfcf80c26cb7e4dc04473ea2efa1084ed05d3a1d45f80fbb421a', '[\"*\"]', NULL, NULL, '2024-01-08 05:11:41', '2024-01-08 05:11:41'),
(180, 'App\\Models\\User', 12, 'kode_rahasia', '17982494030fc357fd34d3ee60720ae5ad82f4a6d91a2562b8ff72500e83a4dd', '[\"*\"]', NULL, NULL, '2024-01-08 05:11:41', '2024-01-08 05:11:41'),
(181, 'App\\Models\\User', 12, 'kode_rahasia', '7a7ad3cccfebc3f4e9cf2c2f8e86f1ead614d4d9d15c114700946547614c36f5', '[\"*\"]', NULL, NULL, '2024-01-08 05:15:48', '2024-01-08 05:15:48'),
(182, 'App\\Models\\User', 12, 'kode_rahasia', '4d5fb379a1f31a5d943bfa3f92a97430507971a6f69ead07b2745913cd53fe63', '[\"*\"]', NULL, NULL, '2024-01-08 05:15:48', '2024-01-08 05:15:48'),
(183, 'App\\Models\\User', 12, 'kode_rahasia', 'e81482a2a4fc959e875759829e1cba2399abcf32e0ba02526280fa53f1f0c4e7', '[\"*\"]', NULL, NULL, '2024-01-08 05:16:41', '2024-01-08 05:16:41'),
(184, 'App\\Models\\User', 12, 'kode_rahasia', '272b9757f9bca4d5fbd5892d66ba71a376fd0585246650578e7fa8c4de256f15', '[\"*\"]', NULL, NULL, '2024-01-08 05:16:41', '2024-01-08 05:16:41'),
(185, 'App\\Models\\User', 12, 'kode_rahasia', '5481a930da61fa73354031d978b082b426aace7ee7c4e03348652798647958b3', '[\"*\"]', NULL, NULL, '2024-01-08 05:18:10', '2024-01-08 05:18:10'),
(186, 'App\\Models\\User', 12, 'kode_rahasia', 'adc0d0b891bf36b48e84473e4fe54e3ad6e725afd30d2bb76d7333c92f91f676', '[\"*\"]', NULL, NULL, '2024-01-08 05:18:10', '2024-01-08 05:18:10'),
(187, 'App\\Models\\User', 12, 'kode_rahasia', '4f117f2aa200864a3ed978c8cf7549ad316929bab0aca614e8799bea60f3e76d', '[\"*\"]', NULL, NULL, '2024-01-08 05:20:49', '2024-01-08 05:20:49'),
(188, 'App\\Models\\User', 12, 'kode_rahasia', '10098644719af1481dfc97e39d3daf21c0b9ad1a98c35ee070b8c8659ea5a8a3', '[\"*\"]', NULL, NULL, '2024-01-08 05:20:49', '2024-01-08 05:20:49'),
(189, 'App\\Models\\User', 12, 'kode_rahasia', '18344f039038c5f2e55b82fd73f783d139ed773c2bc50f49bc82925c4d650d54', '[\"*\"]', NULL, NULL, '2024-01-08 05:27:06', '2024-01-08 05:27:06'),
(190, 'App\\Models\\User', 12, 'kode_rahasia', '467af5485f61f1a62c10c41bcd54623f50e2381f8a024c4f70d512deee2ee969', '[\"*\"]', NULL, NULL, '2024-01-08 05:27:06', '2024-01-08 05:27:06'),
(191, 'App\\Models\\User', 12, 'kode_rahasia', 'c89e3ea013433ee58c77fd01b354e136ed82e66a0019f195c070ebdbcd66fe6d', '[\"*\"]', NULL, NULL, '2024-01-08 05:30:47', '2024-01-08 05:30:47'),
(192, 'App\\Models\\User', 12, 'kode_rahasia', 'cc5d0c970886a9bfdb05bfbb86f4838bfe370b0a274dcbdca0689be5c14d9b59', '[\"*\"]', NULL, NULL, '2024-01-08 05:30:47', '2024-01-08 05:30:47'),
(193, 'App\\Models\\User', 12, 'kode_rahasia', '1f74e867ce12981cd30f55823263046457306ed0301f78b81dcccc3d321db4c0', '[\"*\"]', NULL, NULL, '2024-01-08 05:34:01', '2024-01-08 05:34:01'),
(194, 'App\\Models\\User', 12, 'kode_rahasia', 'eece86fd496c062c044c6883fa1763553a7873e994822650381952878c32b220', '[\"*\"]', NULL, NULL, '2024-01-08 05:34:01', '2024-01-08 05:34:01'),
(195, 'App\\Models\\User', 12, 'kode_rahasia', '070ae631f9d3c66a3a07c98c643eed770291cd74e4136c97a81ae46ec6a44c19', '[\"*\"]', NULL, NULL, '2024-01-08 05:35:01', '2024-01-08 05:35:01'),
(196, 'App\\Models\\User', 12, 'kode_rahasia', '277d2bdb1ef1cd2aefd3bf42db906ccc944baeef0feeccc938fee9795b8c0764', '[\"*\"]', NULL, NULL, '2024-01-08 05:35:01', '2024-01-08 05:35:01'),
(197, 'App\\Models\\User', 12, 'kode_rahasia', 'effc29b37f17cd1500a1477c527e0d56071dfa6dbd51dd108e9797f8c7701aee', '[\"*\"]', NULL, NULL, '2024-01-08 05:35:54', '2024-01-08 05:35:54'),
(198, 'App\\Models\\User', 12, 'kode_rahasia', 'f6325bbc2be22b1cfae91749472746d1f1f248a95e72dc0aec9096314e714595', '[\"*\"]', NULL, NULL, '2024-01-08 05:35:54', '2024-01-08 05:35:54'),
(199, 'App\\Models\\User', 12, 'kode_rahasia', '9ea00b4727fda3eb874de4ff3f36db8445c714d8adf6392a4ea44d95d39ed220', '[\"*\"]', NULL, NULL, '2024-01-08 05:36:45', '2024-01-08 05:36:45'),
(200, 'App\\Models\\User', 12, 'kode_rahasia', '856df905d1dd89ffc96ba3e5920a7ac224f4b71a7f81d9b1747b25a2ee7396d8', '[\"*\"]', NULL, NULL, '2024-01-08 05:36:45', '2024-01-08 05:36:45'),
(201, 'App\\Models\\User', 12, 'kode_rahasia', '6e085b5ff941635b535084132c9cdd6128ea0e2eb4841bf15c9c603bc2e8fc84', '[\"*\"]', NULL, NULL, '2024-01-08 05:37:52', '2024-01-08 05:37:52'),
(202, 'App\\Models\\User', 12, 'kode_rahasia', '4710c3e8ee776ca86d0cc7129f19409de2b57f5e1e158296f1e95657d704d0e4', '[\"*\"]', NULL, NULL, '2024-01-08 05:37:52', '2024-01-08 05:37:52'),
(203, 'App\\Models\\User', 12, 'kode_rahasia', 'e9d39c8db0dd8714ddbaa0b3c0575ec78f2672c811bcd115b4ef5f9ae80c2833', '[\"*\"]', NULL, NULL, '2024-01-08 05:40:12', '2024-01-08 05:40:12'),
(204, 'App\\Models\\User', 12, 'kode_rahasia', '15b60e202e56b598bea8e3b70ee0014c28a294bdb8700364ca46c6b14a9ba53d', '[\"*\"]', NULL, NULL, '2024-01-08 05:40:12', '2024-01-08 05:40:12'),
(205, 'App\\Models\\User', 12, 'kode_rahasia', '982318c7b0df2326bca3829389a43ec15d229f5a3680d75d3aaa1d3354be4cd5', '[\"*\"]', NULL, NULL, '2024-01-08 05:44:10', '2024-01-08 05:44:10'),
(206, 'App\\Models\\User', 12, 'kode_rahasia', '2462728f4121360236948c29ef0ae63e2a3a755ee2c0879b261028e6106dde3c', '[\"*\"]', NULL, NULL, '2024-01-08 05:44:10', '2024-01-08 05:44:10'),
(207, 'App\\Models\\User', 12, 'kode_rahasia', '145644a252a4a80484592bf143a87b34e593e3c9bfc0be4a53db3cb8e88b749e', '[\"*\"]', NULL, NULL, '2024-01-08 05:46:13', '2024-01-08 05:46:13'),
(208, 'App\\Models\\User', 12, 'kode_rahasia', '3bc2eaf154bedf1f6c943962105aef9b74fe153e52235ea980020ab11633e5a9', '[\"*\"]', NULL, NULL, '2024-01-08 05:46:13', '2024-01-08 05:46:13'),
(209, 'App\\Models\\User', 12, 'kode_rahasia', '3c0263d633b468a84c089cddf863e43f6810e817c08bf5b1c96069a3a3bef7f2', '[\"*\"]', NULL, NULL, '2024-01-08 05:48:20', '2024-01-08 05:48:20'),
(210, 'App\\Models\\User', 12, 'kode_rahasia', 'ffe005348873e8388a13e1fd57967276429e8d81e2401d3656f1f1e0949206f8', '[\"*\"]', NULL, NULL, '2024-01-08 05:48:20', '2024-01-08 05:48:20'),
(211, 'App\\Models\\User', 6, 'kode_rahasia', '8d4d8bca71e7b9d41c1ac32d3580908f58e37e11f94bc1b9a6be6f23d61aef1b', '[\"*\"]', NULL, NULL, '2024-01-08 05:51:08', '2024-01-08 05:51:08'),
(212, 'App\\Models\\User', 6, 'kode_rahasia', 'ae8a0fc1f1503c58565cb3d3c721251bd709eb6cdc3f65992e7fe74d3fc12295', '[\"*\"]', NULL, NULL, '2024-01-08 05:51:08', '2024-01-08 05:51:08'),
(213, 'App\\Models\\User', 6, 'kode_rahasia', '9f4608be408843bf89a2d5bc438420ae1e9eff3164ff408ccb2f52217b8fd2c3', '[\"*\"]', NULL, NULL, '2024-01-08 08:20:41', '2024-01-08 08:20:41'),
(214, 'App\\Models\\User', 6, 'kode_rahasia', 'cc27e5bc82dbbf6adb8c629514a124725cb398d18bd872f83476b3fdf7a9e4fb', '[\"*\"]', NULL, NULL, '2024-01-08 08:20:41', '2024-01-08 08:20:41'),
(215, 'App\\Models\\User', 6, 'kode_rahasia', '20e57b0334eb55db8dece08c50bdab9b7eae706d80205321a281a17b207ab13c', '[\"*\"]', NULL, NULL, '2024-01-08 08:21:30', '2024-01-08 08:21:30'),
(216, 'App\\Models\\User', 6, 'kode_rahasia', '8d877ec07dda3b02a3beecdd3df38d2340154b9bddb92c2e765656230221f437', '[\"*\"]', NULL, NULL, '2024-01-08 08:21:30', '2024-01-08 08:21:30'),
(217, 'App\\Models\\User', 6, 'kode_rahasia', '82b44773ab489a5290843fb1104d582aceadf73d5fb518b4a3b985bb7fbf26c4', '[\"*\"]', NULL, NULL, '2024-01-08 08:25:34', '2024-01-08 08:25:34'),
(218, 'App\\Models\\User', 6, 'kode_rahasia', '07b7af3ae9482ea79e16ce7c24e779a721f37a2c01d7297dfbc3dee2a0833250', '[\"*\"]', NULL, NULL, '2024-01-08 08:25:34', '2024-01-08 08:25:34'),
(219, 'App\\Models\\User', 6, 'kode_rahasia', '595b717b958ec4e4ec4ca177a1324d958f98fe01372726cc9d068e40eaf6b54a', '[\"*\"]', NULL, NULL, '2024-01-08 08:31:28', '2024-01-08 08:31:28'),
(220, 'App\\Models\\User', 6, 'kode_rahasia', '8b46fc987d80e20de9bde45cf7f19049d7b3808ae60d4b9328701483920d47be', '[\"*\"]', NULL, NULL, '2024-01-08 08:31:28', '2024-01-08 08:31:28'),
(221, 'App\\Models\\User', 6, 'kode_rahasia', 'f0bbb5c53fc46a3c4e51c6101df5280a38611fe955676fbcfad0f5a696770236', '[\"*\"]', NULL, NULL, '2024-01-08 08:34:07', '2024-01-08 08:34:07'),
(222, 'App\\Models\\User', 6, 'kode_rahasia', '923d30ecba787f85d8d7dab44ba59adb261fadb31f0d4d73443834f5e12161ac', '[\"*\"]', NULL, NULL, '2024-01-08 08:34:07', '2024-01-08 08:34:07'),
(223, 'App\\Models\\User', 6, 'kode_rahasia', '1620a618827507f99aa72d6a71c1686146492dcf85c9573e7c47800bc1fc5540', '[\"*\"]', NULL, NULL, '2024-01-08 08:47:36', '2024-01-08 08:47:36'),
(224, 'App\\Models\\User', 6, 'kode_rahasia', '79767a20b9320ba5c3b01aab9171d63f0c191c5d17ed4fe82a0a4b7f6046c1f4', '[\"*\"]', NULL, NULL, '2024-01-08 08:47:36', '2024-01-08 08:47:36'),
(225, 'App\\Models\\User', 6, 'kode_rahasia', 'd8191cd4196725eabe7ed9a003738ffdd7b8cb86448fedcdad97499cac9c7887', '[\"*\"]', NULL, NULL, '2024-01-08 08:51:50', '2024-01-08 08:51:50'),
(226, 'App\\Models\\User', 6, 'kode_rahasia', '4c4c4d1e494e154134a1cbd19ab95b7f2fa08a4e8ad8bf1a9fce96ab8931b1f6', '[\"*\"]', NULL, NULL, '2024-01-08 08:51:50', '2024-01-08 08:51:50'),
(227, 'App\\Models\\User', 6, 'kode_rahasia', '00e638f4f4859233adc73fb51d8c35928073a7212285b4e53df2f239a2cfc85a', '[\"*\"]', NULL, NULL, '2024-01-08 18:10:22', '2024-01-08 18:10:22'),
(228, 'App\\Models\\User', 6, 'kode_rahasia', 'bf7ca63d2d810ecf575401e16f5af54ee3d1530fd1ab58b4dea95bb481ee7e15', '[\"*\"]', NULL, NULL, '2024-01-08 18:10:22', '2024-01-08 18:10:22'),
(229, 'App\\Models\\User', 6, 'kode_rahasia', '23cb4db5f22332e5244aba06c22172ca305c87ad843afb4fde8b20805c8c882f', '[\"*\"]', NULL, NULL, '2024-01-08 18:44:09', '2024-01-08 18:44:09'),
(230, 'App\\Models\\User', 6, 'kode_rahasia', '936429d7d63847a80eb358704dc1e671ff8b9f10890135dbb4d8165e933f6617', '[\"*\"]', NULL, NULL, '2024-01-08 18:44:09', '2024-01-08 18:44:09'),
(231, 'App\\Models\\User', 6, 'kode_rahasia', '5fcd72eb67ffbae21c1100812867855654723ec166f5074bc713bf1b8225d837', '[\"*\"]', NULL, NULL, '2024-01-08 19:03:26', '2024-01-08 19:03:26'),
(232, 'App\\Models\\User', 6, 'kode_rahasia', '68d450a9dcdfd51b926f629cc4586b323921fdeffb8281e9bf248fed12b30e07', '[\"*\"]', NULL, NULL, '2024-01-08 19:03:26', '2024-01-08 19:03:26'),
(233, 'App\\Models\\User', 6, 'kode_rahasia', '1342f36dd3783989a559e021bdce91a1cd8c1bb183600eed6616c10b03002dd7', '[\"*\"]', NULL, NULL, '2024-01-08 19:13:54', '2024-01-08 19:13:54'),
(234, 'App\\Models\\User', 6, 'kode_rahasia', '1be3a6b4fdc6c0c7480501aa0037cecc7b4090b094e2ff8dc7cd598e29e9fac4', '[\"*\"]', NULL, NULL, '2024-01-08 19:13:54', '2024-01-08 19:13:54'),
(235, 'App\\Models\\User', 6, 'kode_rahasia', '1c077dcb053ca8a820f6841a48f37f5862c40823669543153f0d41b661cca512', '[\"*\"]', NULL, NULL, '2024-01-08 19:17:00', '2024-01-08 19:17:00'),
(236, 'App\\Models\\User', 6, 'kode_rahasia', 'e2489ce1e568b7b415cd9211e3200dd367a06ff0394239f0be008eeeed439ae0', '[\"*\"]', NULL, NULL, '2024-01-08 19:17:00', '2024-01-08 19:17:00'),
(237, 'App\\Models\\User', 13, 'kode_rahasia', '970fd26a17ab01561d2318c752dafe03859385312470cf861d0e90b03bcb0fde', '[\"*\"]', NULL, NULL, '2024-01-08 20:18:07', '2024-01-08 20:18:07'),
(238, 'App\\Models\\User', 13, 'kode_rahasia', 'f171dd4997597b96ce5710064826958630be51d29994ac36cd6b313fe89c75eb', '[\"*\"]', NULL, NULL, '2024-01-08 20:18:07', '2024-01-08 20:18:07'),
(239, 'App\\Models\\User', 6, 'kode_rahasia', '5e610a9277663722aa040dc1e0f886c9a0f865d49674c3c41d4d684eb2d29f12', '[\"*\"]', NULL, NULL, '2024-01-08 20:28:44', '2024-01-08 20:28:44'),
(240, 'App\\Models\\User', 6, 'kode_rahasia', '8f29d88eccce351d2f20d67754b93cd3a3a6081f57b09af29eb2e23cafdcc56a', '[\"*\"]', NULL, NULL, '2024-01-08 20:28:44', '2024-01-08 20:28:44'),
(241, 'App\\Models\\User', 6, 'kode_rahasia', '71b0d61fec8e142d7c09f2dec2df29a63fe5f3aad4ab1e37b8a22f116ff0baeb', '[\"*\"]', NULL, NULL, '2024-01-08 20:31:58', '2024-01-08 20:31:58'),
(242, 'App\\Models\\User', 6, 'kode_rahasia', '724a41406e20a4ce686ccfc0a9ed12c171c7ea433574d2d88f0bdd177d670a68', '[\"*\"]', NULL, NULL, '2024-01-08 20:31:58', '2024-01-08 20:31:58'),
(243, 'App\\Models\\User', 6, 'kode_rahasia', 'c47548f10e964dc9fcc7b088ae0bc5090c7b027518d8f7459723cdd553edcd08', '[\"*\"]', NULL, NULL, '2024-01-08 20:39:18', '2024-01-08 20:39:18'),
(244, 'App\\Models\\User', 6, 'kode_rahasia', 'a5a380ffdfab423955985a66fecb2cfa7b7429680f614290c70745fb14a09b73', '[\"*\"]', NULL, NULL, '2024-01-08 20:39:18', '2024-01-08 20:39:18'),
(245, 'App\\Models\\User', 6, 'kode_rahasia', '0a4b5c7acf5091e175293e6cb9ef70642641af58ad5e3ff38ce64ccf4663065c', '[\"*\"]', NULL, NULL, '2024-01-08 20:51:42', '2024-01-08 20:51:42'),
(246, 'App\\Models\\User', 6, 'kode_rahasia', '9f3be7c16af7086d6b8d0ca9d8a3c8535dec7db56688a81d550429f72293f9e3', '[\"*\"]', NULL, NULL, '2024-01-08 20:51:42', '2024-01-08 20:51:42'),
(247, 'App\\Models\\User', 6, 'kode_rahasia', '2b365221cc99a40a1529a774814801906e65a45b155890919b88d6e3694d8dea', '[\"*\"]', NULL, NULL, '2024-01-08 20:56:50', '2024-01-08 20:56:50'),
(248, 'App\\Models\\User', 6, 'kode_rahasia', 'c951a3432d57c8edb11b71e04cf3795e4e618c19633b06f5984a3ee16f58e942', '[\"*\"]', NULL, NULL, '2024-01-08 20:56:50', '2024-01-08 20:56:50'),
(249, 'App\\Models\\User', 6, 'kode_rahasia', '47bf220ef5f0b3d219e1d21fb0d3c1faa80bba9ce4d835bbd6213e4ed2a4162d', '[\"*\"]', NULL, NULL, '2024-01-08 21:22:22', '2024-01-08 21:22:22'),
(250, 'App\\Models\\User', 6, 'kode_rahasia', '43fb20981d89c9fffd8ab78a6ae510b91da7013dc26ba6c837818a3ee7885898', '[\"*\"]', NULL, NULL, '2024-01-08 21:22:22', '2024-01-08 21:22:22'),
(251, 'App\\Models\\User', 6, 'kode_rahasia', '3558239006a1e6329d0db509f271f59c3d4b6065aa57a509995c8210ee04911b', '[\"*\"]', NULL, NULL, '2024-01-08 21:40:42', '2024-01-08 21:40:42'),
(252, 'App\\Models\\User', 6, 'kode_rahasia', '6cac7460b620eba2939d588043b26416fb6c78b5522396184b3cb9319fbed86e', '[\"*\"]', NULL, NULL, '2024-01-08 21:40:42', '2024-01-08 21:40:42'),
(253, 'App\\Models\\User', 16, 'kode_rahasia', 'c3660a2b5b131339bcf0b59b3867594e561d8a88abdd224e869dea76051a821d', '[\"*\"]', NULL, NULL, '2024-01-08 21:43:30', '2024-01-08 21:43:30'),
(254, 'App\\Models\\User', 16, 'kode_rahasia', '0dc4779ec1cb7cdeae9da1986a012a98cccd83906ade1576065aee123ae9c9d4', '[\"*\"]', NULL, NULL, '2024-01-08 21:43:30', '2024-01-08 21:43:30'),
(255, 'App\\Models\\User', 16, 'kode_rahasia', '57a628da3ec50c6604fa69acf170f567c41d6f390e9ba5745c3eec9ebeabf3a5', '[\"*\"]', NULL, NULL, '2024-01-08 21:45:52', '2024-01-08 21:45:52'),
(256, 'App\\Models\\User', 16, 'kode_rahasia', '31653cb1f7959d026d727a1afa93d9f5b106118f842f786cfa2bb96b4af78d03', '[\"*\"]', NULL, NULL, '2024-01-08 21:45:52', '2024-01-08 21:45:52'),
(257, 'App\\Models\\User', 16, 'kode_rahasia', '90e7a9392c26af07cd045c956d75ab4c726bb3b19ff498f098e8da4bac1d8dc6', '[\"*\"]', NULL, NULL, '2024-01-08 21:54:16', '2024-01-08 21:54:16'),
(258, 'App\\Models\\User', 16, 'kode_rahasia', '82a4459defc82c459e4b92b8bc4c55d26354dcc210c991dc984d8ef2505b98bb', '[\"*\"]', NULL, NULL, '2024-01-08 21:54:16', '2024-01-08 21:54:16'),
(259, 'App\\Models\\User', 16, 'kode_rahasia', '2c0cd7b01c86bee4101b9c6e8012c784ca8f3ae5e2465035fe08cd682c46dce9', '[\"*\"]', NULL, NULL, '2024-01-08 22:02:09', '2024-01-08 22:02:09'),
(260, 'App\\Models\\User', 16, 'kode_rahasia', '8c56a95cea2a93fe9cb2cc2761ef5974778f6481b4dd283d28119b21e9aec7b4', '[\"*\"]', NULL, NULL, '2024-01-08 22:02:09', '2024-01-08 22:02:09'),
(261, 'App\\Models\\User', 6, 'kode_rahasia', 'b08eb7d488ae46424c711e6dda12edac1fc23e6333dd428f41f41a829fd4a60d', '[\"*\"]', NULL, NULL, '2024-01-08 22:05:56', '2024-01-08 22:05:56'),
(262, 'App\\Models\\User', 6, 'kode_rahasia', '03b8ed3f44b0df408b1fd3bd7d4c9ebbbec6a11de64b1b78ed1c46d267e1e2a8', '[\"*\"]', NULL, NULL, '2024-01-08 22:05:56', '2024-01-08 22:05:56'),
(263, 'App\\Models\\User', 16, 'kode_rahasia', '0fc22df3b55a164bf90f7288fa757d23ef0e2b42c8aa71a1f3523bfae101f6c0', '[\"*\"]', NULL, NULL, '2024-01-08 22:06:37', '2024-01-08 22:06:37'),
(264, 'App\\Models\\User', 16, 'kode_rahasia', 'd36a9dac3a3a07fdcffc938e01c22da789281db3c0ae6752fd34697f07f9a72a', '[\"*\"]', NULL, NULL, '2024-01-08 22:06:37', '2024-01-08 22:06:37'),
(265, 'App\\Models\\User', 16, 'kode_rahasia', '07709250586ec71a03e44d46963e7f768fa25931e0c52dcfe847a18422b144cc', '[\"*\"]', NULL, NULL, '2024-01-08 22:10:22', '2024-01-08 22:10:22'),
(266, 'App\\Models\\User', 16, 'kode_rahasia', '0752d9ab9ebfd4f72ffa13fe89d73d6fc7b9f67576f551865ebc3c6c3461ca4f', '[\"*\"]', NULL, NULL, '2024-01-08 22:10:22', '2024-01-08 22:10:22'),
(267, 'App\\Models\\User', 16, 'kode_rahasia', '0fb1850273db1246a0b41276bb89403bb060049b3a65dcc5f9b1c862ed5ac27f', '[\"*\"]', NULL, NULL, '2024-01-08 22:11:56', '2024-01-08 22:11:56'),
(268, 'App\\Models\\User', 16, 'kode_rahasia', '956383f0bec3898dd9efa2bb6ae4d07fc65dd9b387f0b69a28ec504cb9a42b5b', '[\"*\"]', NULL, NULL, '2024-01-08 22:11:56', '2024-01-08 22:11:56'),
(269, 'App\\Models\\User', 6, 'kode_rahasia', 'f96526d36bc9dc4feb01f8b744bffae2870a73416414b7b6993b3f24b11f0bcf', '[\"*\"]', NULL, NULL, '2024-01-08 22:12:13', '2024-01-08 22:12:13'),
(270, 'App\\Models\\User', 6, 'kode_rahasia', 'a589dfee8236aa79c531234c41a7edf8e7fe27d7a2cfd05f66cdc1330d60f6ba', '[\"*\"]', NULL, NULL, '2024-01-08 22:12:13', '2024-01-08 22:12:13'),
(271, 'App\\Models\\User', 16, 'kode_rahasia', 'f8678594d413c3ea655e2d9fc3394f828a2facddfa75a2e4681ab46c324050a6', '[\"*\"]', NULL, NULL, '2024-01-08 22:14:23', '2024-01-08 22:14:23'),
(272, 'App\\Models\\User', 16, 'kode_rahasia', '45f9772429db34c3d06c8914933ed1fe069d03952e96cbfab578917a8998844d', '[\"*\"]', NULL, NULL, '2024-01-08 22:14:23', '2024-01-08 22:14:23'),
(273, 'App\\Models\\User', 6, 'kode_rahasia', 'c8524a652360883f23169bdc6d7fd62abe843c42561e861f4cb689b27f17a960', '[\"*\"]', NULL, NULL, '2024-01-08 22:14:45', '2024-01-08 22:14:45');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(274, 'App\\Models\\User', 6, 'kode_rahasia', '6f18ddd8c05746466a0b652f13cf6e8633201ed90df4b4ce28077ca078b169d4', '[\"*\"]', NULL, NULL, '2024-01-08 22:14:45', '2024-01-08 22:14:45'),
(275, 'App\\Models\\User', 16, 'kode_rahasia', '091640dc18dffb3b88ee3b50068acbdffe2d1ef61811a47023d917156e360a3c', '[\"*\"]', NULL, NULL, '2024-01-08 22:16:55', '2024-01-08 22:16:55'),
(276, 'App\\Models\\User', 16, 'kode_rahasia', '1b79d2850f66aa17689c742b86d19f908f2c36a6fc926d9afb73b1c586caa3e2', '[\"*\"]', NULL, NULL, '2024-01-08 22:16:55', '2024-01-08 22:16:55'),
(277, 'App\\Models\\User', 6, 'kode_rahasia', '723e1157af9963e6c06e151e9afd296e55257ca4fe83d2f0e5eb2d6c53829504', '[\"*\"]', NULL, NULL, '2024-01-08 22:38:38', '2024-01-08 22:38:38'),
(278, 'App\\Models\\User', 6, 'kode_rahasia', 'be32c0125b52673fab8e2982f1a064e9bd94fa2b5288689dd38cad1a958ab9a5', '[\"*\"]', NULL, NULL, '2024-01-08 22:38:38', '2024-01-08 22:38:38'),
(279, 'App\\Models\\User', 6, 'kode_rahasia', 'cb63e6f6cde8ac7135842f2f084e8a95b5b3acbeca4fb406ad0712e21825885d', '[\"*\"]', NULL, NULL, '2024-01-08 22:44:52', '2024-01-08 22:44:52'),
(280, 'App\\Models\\User', 6, 'kode_rahasia', '96842bb7c3523f1ec037f91a3275bafe3d5b0efb08afbcf19bc82abd867ad287', '[\"*\"]', NULL, NULL, '2024-01-08 22:44:52', '2024-01-08 22:44:52'),
(281, 'App\\Models\\User', 17, 'kode_rahasia', 'c725ffdfbf76f019cb0766164c6c178c27c21fc468273cd87464e61bc809c5d1', '[\"*\"]', NULL, NULL, '2024-01-08 22:46:12', '2024-01-08 22:46:12'),
(282, 'App\\Models\\User', 17, 'kode_rahasia', 'a54ec0d80da5a87dc5f06a89acc627794856f36e7519eff7eb015db18093bf08', '[\"*\"]', NULL, NULL, '2024-01-08 22:46:12', '2024-01-08 22:46:12'),
(283, 'App\\Models\\User', 6, 'kode_rahasia', 'ea4df1ed280613ceb538989d1c74110888322d04025cf99c440a91873db0bbd5', '[\"*\"]', NULL, NULL, '2024-01-08 22:46:58', '2024-01-08 22:46:58'),
(284, 'App\\Models\\User', 6, 'kode_rahasia', '103efc68c93113354774d6ee57b647210300b16fdd48a391cb771bac178e0885', '[\"*\"]', NULL, NULL, '2024-01-08 22:46:58', '2024-01-08 22:46:58'),
(285, 'App\\Models\\User', 17, 'kode_rahasia', '58c63c37c519b07c80f011e54395f9922d03f46d2b187705a0aca6d132eb13f3', '[\"*\"]', NULL, NULL, '2024-01-08 22:48:38', '2024-01-08 22:48:38'),
(286, 'App\\Models\\User', 17, 'kode_rahasia', 'fdf6f5b37924fb7bbe43834906e4e0697ed1998fbc221925a41fc811fd256cc3', '[\"*\"]', NULL, NULL, '2024-01-08 22:48:38', '2024-01-08 22:48:38'),
(287, 'App\\Models\\User', 6, 'kode_rahasia', '4e36469bab05f9ba2ae952eb2d7df9b1f34f5f985f66784c20cf770d49cc631d', '[\"*\"]', NULL, NULL, '2024-01-08 22:49:00', '2024-01-08 22:49:00'),
(288, 'App\\Models\\User', 6, 'kode_rahasia', '5a120cdc08b861a81b88057c32b53556a17b19971118e6e54564126c7b4f3dbb', '[\"*\"]', NULL, NULL, '2024-01-08 22:49:00', '2024-01-08 22:49:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'hani', 'hani22@gmail.com', NULL, '$2y$12$UgUamNE4j5su6QKsWc1W.OwUMvr2PfUtRRp3hEx74FLJb9o/0zbdC', 'User', NULL, '2024-01-03 05:22:44', '2024-01-03 05:22:44'),
(2, 'ilham', 'ilham@gmail.com', NULL, '$2y$12$FsqlTI9fyT1LbWQfUB7Us.zoxQSghn3cFhruZco0i2a6g1asRdRTC', 'User', NULL, '2024-01-05 04:26:35', '2024-01-05 04:26:35'),
(4, 'hani', 'haniist@gmail.com', NULL, '$2y$12$PGcmCy.eiMi7R4jtB9bZAe2f727yth8Mbta5HGmi0KSru.f8RN43a', 'User', NULL, '2024-01-06 03:02:13', '2024-01-06 03:02:13'),
(5, 'lutvi', 'lutvi@gmail.com', NULL, '$2y$12$3bat/zUFdJQdOdkYI6g7AuCgroc5SEZxhYInunieUfja0oYq3aS76', 'User', NULL, '2024-01-06 03:09:37', '2024-01-06 03:09:37'),
(6, 'haniist', 'inihani@gmail.com', NULL, '$2y$12$OTwwi0KoxO9W6aQt9lMEjO6n9LlL6YMCI2aUzsKm/diCwoct2zq5K', 'Admin', NULL, '2024-01-06 05:10:36', '2024-01-06 05:10:36'),
(7, 'ulan', 'ulan@gmail.com', NULL, '$2y$12$.S23N1mBv6xgDlBpIXCXLeZLeCW/TrdvujHGMMtV/iLrQQEVuQl3m', 'User', NULL, '2024-01-06 07:33:40', '2024-01-06 07:33:40'),
(8, 'riasn', 'ria@gmail.com', NULL, '$2y$12$rAluuu.EY11NEbrkpwauI.1/mL6TG3I9EXlzB5peo6bLZ6LDiAwQa', 'User', NULL, '2024-01-07 02:50:05', '2024-01-07 02:50:05'),
(11, 'irfan', 'irfan@gmail.com', NULL, '$2y$12$aq3zXZ4n20RhtqAdbhmS2OEuMBIXhyEQg0ylbvPhHuBY4wxhYuXLe', 'User', NULL, '2024-01-08 01:34:23', '2024-01-08 01:34:23'),
(13, 'sari', 'sari@gmail.com', NULL, '$2y$12$DD8qyOUmU2Pgudom1V7LMu.w1TXF/RXRXdbgBSA/2xbEZM4BlDEJe', 'User', NULL, '2024-01-08 20:15:56', '2024-01-08 20:15:56'),
(15, 'rere', 'rere@gmail.com', NULL, '$2y$12$LtwqCMm4aUDPfVEDQPcIju6FPJtO/9pkeMI0xGAdYqiv08EMiQJ4S', 'User', NULL, '2024-01-08 20:26:26', '2024-01-08 20:26:26'),
(16, 'lintang', 'lintang@gmail.com', NULL, '$2y$12$EZMatPElX6/lSJFjJar4leGl5RODioGzqr4LEQQC1ZofYq0rDBigi', 'User', NULL, '2024-01-08 21:42:55', '2024-01-08 21:42:55'),
(17, 'lutvi', 'lutvi1@gmail.com', NULL, '$2y$12$xYmhNw4EmDBGkxZ/ocjjEeXBEr89seVjFf2m91xGpWjCKcw7Dbloq', 'User', NULL, '2024-01-08 22:40:23', '2024-01-08 22:40:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wisata`
--

CREATE TABLE `wisata` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `wisata`
--

INSERT INTO `wisata` (`id`, `nama`, `gambar`, `deskripsi`, `alamat`, `harga`, `created_at`, `updated_at`) VALUES
(18, 'Curug lawa', 'blob:http://localhost:51020/758b1e33-79b0-4ad3-811b-79767ade023e', 'wisata', 'Karangreja', 25000, '2024-01-08 22:13:58', '2024-01-08 22:49:38'),
(19, 'Serang', 'blob:http://localhost:51020/24d28497-9e82-48eb-8e77-a73b4462567b', 'wisata alam', 'Mrebet', 7000, '2024-01-08 22:15:18', '2024-01-08 22:47:20'),
(20, 'Owabong', 'blob:http://localhost:51020/e5e75d62-216e-4d54-8ae3-9cb5713f5e0f', 'kolam renang', 'Bojongsari', 25000, '2024-01-08 22:16:33', '2024-01-08 22:47:36');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

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
-- Indeks untuk tabel `wisata`
--
ALTER TABLE `wisata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=289;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `wisata`
--
ALTER TABLE `wisata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
