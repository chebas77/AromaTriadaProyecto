-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-12-2024 a las 19:10:29
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `aromatriade`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('34422782342505caf777fbc097f3a1fb', 'i:1;', 1733796632),
('34422782342505caf777fbc097f3a1fb:timer', 'i:1733796632;', 1733796632),
('3d9f1f137fff952a284c3ff0bc97b981', 'i:1;', 1733882253),
('3d9f1f137fff952a284c3ff0bc97b981:timer', 'i:1733882253;', 1733882253),
('dc44958e29ffba8b810d21377ae366b5', 'i:1;', 1733940542),
('dc44958e29ffba8b810d21377ae366b5:timer', 'i:1733940542;', 1733940542);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nombre`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'Tortas', 'Categoría de tortas', '2024-11-11 09:34:19', '2024-11-11 09:34:19'),
(2, 'Bocaditos', 'Categoría de bocaditos', '2024-11-11 09:34:19', '2024-11-11 09:34:19'),
(3, 'Boxes', 'Categoría de boxes', '2024-11-11 09:34:19', '2024-11-11 09:34:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedidos`
--

CREATE TABLE `detalle_pedidos` (
  `id_detalle` bigint(20) UNSIGNED NOT NULL,
  `id_pedido` bigint(20) UNSIGNED NOT NULL,
  `id_producto` bigint(20) UNSIGNED DEFAULT NULL,
  `id_servicio` bigint(20) UNSIGNED DEFAULT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_unitario` decimal(10,2) NOT NULL,
  `dedicatoria` varchar(255) DEFAULT NULL,
  `tamaño` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `detalle_pedidos`
--

INSERT INTO `detalle_pedidos` (`id_detalle`, `id_pedido`, `id_producto`, `id_servicio`, `cantidad`, `precio_unitario`, `dedicatoria`, `tamaño`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, 1, 150.00, NULL, NULL, '2024-11-23 05:34:44', '2024-11-23 05:34:44'),
(2, 2, 1, NULL, 1, 100.00, NULL, NULL, '2024-11-23 09:09:53', '2024-11-23 09:09:53'),
(3, 3, 1, NULL, 1, 100.00, NULL, NULL, '2024-11-23 09:17:43', '2024-11-23 09:17:43'),
(5, 5, 2, NULL, 1, 150.00, NULL, NULL, '2024-11-23 09:43:06', '2024-11-23 09:43:06'),
(6, 6, 2, NULL, 1, 150.00, NULL, NULL, '2024-11-23 09:49:57', '2024-11-23 09:49:57'),
(7, 7, NULL, 2, 1, 250.00, NULL, NULL, '2024-11-23 09:53:36', '2024-11-23 09:53:36'),
(8, 7, 9, NULL, 1, 125.00, NULL, NULL, '2024-11-23 09:53:36', '2024-11-23 09:53:36'),
(9, 9, NULL, 2, 1, 250.00, NULL, NULL, '2024-11-23 10:06:52', '2024-11-23 10:06:52'),
(10, 9, NULL, 4, 1, 80.00, NULL, NULL, '2024-11-23 10:06:52', '2024-11-23 10:06:52'),
(11, 9, 1, NULL, 1, 100.00, NULL, NULL, '2024-11-23 10:06:52', '2024-11-23 10:06:52'),
(12, 9, 12, NULL, 1, 250.00, NULL, NULL, '2024-11-23 10:06:52', '2024-11-23 10:06:52'),
(13, 10, NULL, 2, 1, 250.00, NULL, NULL, '2024-11-23 10:09:43', '2024-11-23 10:09:43'),
(14, 10, NULL, 4, 1, 80.00, NULL, NULL, '2024-11-23 10:09:43', '2024-11-23 10:09:43'),
(15, 10, 1, NULL, 1, 100.00, NULL, NULL, '2024-11-23 10:09:43', '2024-11-23 10:09:43'),
(16, 10, 12, NULL, 1, 250.00, NULL, NULL, '2024-11-23 10:09:43', '2024-11-23 10:09:43'),
(17, 11, NULL, 2, 1, 250.00, NULL, NULL, '2024-11-23 10:13:05', '2024-11-23 10:13:05'),
(18, 11, NULL, 4, 1, 80.00, NULL, NULL, '2024-11-23 10:13:05', '2024-11-23 10:13:05'),
(19, 11, 1, NULL, 1, 100.00, NULL, NULL, '2024-11-23 10:13:05', '2024-11-23 10:13:05'),
(20, 11, 12, NULL, 1, 250.00, NULL, NULL, '2024-11-23 10:13:05', '2024-11-23 10:13:05'),
(21, 12, NULL, 2, 1, 250.00, NULL, NULL, '2024-11-23 10:16:21', '2024-11-23 10:16:21'),
(22, 12, NULL, 4, 1, 80.00, NULL, NULL, '2024-11-23 10:16:21', '2024-11-23 10:16:21'),
(23, 12, 1, NULL, 1, 100.00, NULL, NULL, '2024-11-23 10:16:21', '2024-11-23 10:16:21'),
(24, 12, 12, NULL, 1, 250.00, NULL, NULL, '2024-11-23 10:16:21', '2024-11-23 10:16:21'),
(25, 14, NULL, 2, 1, 250.00, NULL, NULL, '2024-11-23 10:20:47', '2024-11-23 10:20:47'),
(26, 14, NULL, 4, 1, 80.00, NULL, NULL, '2024-11-23 10:20:47', '2024-11-23 10:20:47'),
(27, 14, 1, NULL, 1, 100.00, NULL, NULL, '2024-11-23 10:20:47', '2024-11-23 10:20:47'),
(28, 15, NULL, 2, 1, 250.00, NULL, NULL, '2024-11-23 10:21:47', '2024-11-23 10:21:47'),
(29, 15, NULL, 4, 1, 80.00, NULL, NULL, '2024-11-23 10:21:47', '2024-11-23 10:21:47'),
(30, 15, 1, NULL, 1, 100.00, NULL, NULL, '2024-11-23 10:21:47', '2024-11-23 10:21:47'),
(31, 21, 11, NULL, 1, 300.00, NULL, NULL, '2024-11-23 10:40:52', '2024-11-23 10:40:52'),
(32, 22, 2, NULL, 1, 150.00, NULL, NULL, '2024-11-23 18:17:44', '2024-11-23 18:17:44'),
(33, 23, 10, NULL, 1, 75.00, NULL, NULL, '2024-11-23 19:14:26', '2024-11-23 19:14:26'),
(34, 24, 4, NULL, 1, 75.00, NULL, NULL, '2024-11-23 20:05:25', '2024-11-23 20:05:25'),
(35, 24, 2, NULL, 1, 150.00, NULL, NULL, '2024-11-23 20:05:25', '2024-11-23 20:05:25'),
(36, 25, 12, NULL, 1, 250.00, NULL, NULL, '2024-11-25 11:21:54', '2024-11-25 11:21:54'),
(37, 25, NULL, 4, 1, 80.00, NULL, NULL, '2024-11-25 11:21:54', '2024-11-25 11:21:54'),
(38, 26, 12, NULL, 1, 250.00, NULL, NULL, '2024-11-25 11:23:49', '2024-11-25 11:23:49'),
(39, 26, NULL, 4, 1, 80.00, NULL, NULL, '2024-11-25 11:23:49', '2024-11-25 11:23:49'),
(40, 27, 1, NULL, 1, 100.00, NULL, NULL, '2024-11-26 07:43:08', '2024-11-26 07:43:08'),
(41, 28, 2, NULL, 1, 150.00, NULL, NULL, '2024-11-26 07:59:15', '2024-11-26 07:59:15'),
(42, 30, 1, NULL, 1, 100.00, NULL, NULL, '2024-11-26 20:28:02', '2024-11-26 20:28:02'),
(43, 30, NULL, 4, 2, 80.00, NULL, NULL, '2024-11-26 20:28:02', '2024-11-26 20:28:02'),
(44, 31, 1, NULL, 2, 150.00, NULL, NULL, '2024-11-27 04:51:14', '2024-11-27 04:51:14'),
(45, 32, 4, NULL, 2, 120.00, NULL, NULL, '2024-11-27 06:23:59', '2024-11-27 06:23:59'),
(46, 32, NULL, 4, 1, 80.00, NULL, NULL, '2024-11-27 06:23:59', '2024-11-27 06:23:59'),
(47, 32, NULL, 3, 1, 200.00, NULL, NULL, '2024-11-27 06:23:59', '2024-11-27 06:23:59'),
(48, 32, NULL, 1, 1, 200.00, NULL, NULL, '2024-11-27 06:23:59', '2024-11-27 06:23:59'),
(49, 33, 1, NULL, 2, 50.00, NULL, NULL, '2024-11-27 06:28:21', '2024-11-27 06:28:21'),
(50, 33, NULL, 4, 1, 80.00, NULL, NULL, '2024-11-27 06:28:21', '2024-11-27 06:28:21'),
(51, 34, 1, NULL, 2, 50.00, NULL, NULL, '2024-11-27 06:51:30', '2024-11-27 06:51:30'),
(52, 34, NULL, 4, 1, 80.00, NULL, NULL, '2024-11-27 06:51:30', '2024-11-27 06:51:30'),
(53, 35, 1, NULL, 2, 50.00, NULL, NULL, '2024-11-27 06:55:00', '2024-11-27 06:55:00'),
(54, 35, NULL, 4, 1, 80.00, NULL, NULL, '2024-11-27 06:55:00', '2024-11-27 06:55:00'),
(55, 36, 1, NULL, 2, 50.00, NULL, NULL, '2024-11-27 07:08:28', '2024-11-27 07:08:28'),
(56, 36, NULL, 4, 1, 80.00, NULL, NULL, '2024-11-27 07:08:28', '2024-11-27 07:08:28'),
(57, 42, 1, NULL, 1, 50.00, NULL, NULL, '2024-11-27 21:04:38', '2024-11-27 21:04:38'),
(58, 43, 1, NULL, 1, 50.00, NULL, NULL, '2024-11-27 21:11:05', '2024-11-27 21:11:05'),
(59, 44, 4, NULL, 1, 60.00, NULL, NULL, '2024-11-27 21:19:33', '2024-11-27 21:19:33'),
(60, 45, 4, NULL, 1, 60.00, NULL, NULL, '2024-11-27 16:23:18', '2024-11-27 16:23:18'),
(61, 46, 4, NULL, 1, 60.00, NULL, NULL, '2024-11-27 16:24:14', '2024-11-27 16:24:14'),
(62, 47, 4, NULL, 1, 60.00, NULL, NULL, '2024-11-27 16:25:01', '2024-11-27 16:25:01'),
(63, 48, 4, NULL, 1, 60.00, NULL, NULL, '2024-11-27 16:27:04', '2024-11-27 16:27:04'),
(64, 49, 4, NULL, 1, 60.00, NULL, NULL, '2024-11-27 16:53:40', '2024-11-27 16:53:40'),
(65, 50, 3, NULL, 1, 80.00, NULL, NULL, '2024-11-27 16:56:03', '2024-11-27 16:56:03'),
(66, 50, NULL, 4, 1, 80.00, NULL, NULL, '2024-11-27 16:56:04', '2024-11-27 16:56:04'),
(67, 51, 1, NULL, 1, 50.00, NULL, NULL, '2024-11-27 17:42:15', '2024-11-27 17:42:15'),
(68, 53, 1, NULL, 1, 50.00, 'Para PRUEBA', NULL, '2024-11-27 17:48:16', '2024-11-27 17:48:16'),
(69, 54, 12, NULL, 1, 250.00, 'Sin dedicatoria', NULL, '2024-11-27 17:49:28', '2024-11-27 17:49:28'),
(70, 56, 1, NULL, 1, 50.00, 'PRUEBITA 2', 'Mediana (30 tajadas)', '2024-11-27 17:53:02', '2024-11-27 17:53:02'),
(71, 57, 1, NULL, 1, 50.00, NULL, 'Pequeña (20 tajadas)', '2024-11-27 18:00:34', '2024-11-27 18:00:34'),
(72, 57, 3, NULL, 1, 50.00, NULL, 'Pequeña (20 tajadas)', '2024-11-27 18:00:34', '2024-11-27 18:00:34'),
(73, 59, 1, NULL, 1, 50.00, NULL, NULL, '2024-11-27 18:01:12', '2024-11-27 18:01:12'),
(74, 59, 3, NULL, 1, 50.00, NULL, NULL, '2024-11-27 18:01:12', '2024-11-27 18:01:12'),
(75, 62, 1, NULL, 1, 50.00, NULL, NULL, '2024-11-27 18:01:46', '2024-11-27 18:01:46'),
(76, 62, 3, NULL, 1, 50.00, NULL, NULL, '2024-11-27 18:01:46', '2024-11-27 18:01:46'),
(77, 63, 1, NULL, 1, 50.00, 'Sin dedicatoria', NULL, '2024-11-27 18:02:53', '2024-11-27 18:02:53'),
(78, 63, 3, NULL, 1, 50.00, 'Sin dedicatoria', NULL, '2024-11-27 18:02:53', '2024-11-27 18:02:53'),
(79, 63, NULL, 4, 1, 80.00, 'Sin dedicatoria', NULL, '2024-11-27 18:02:53', '2024-11-27 18:02:53'),
(80, 64, 1, NULL, 1, 50.00, 'Sin dedicatoria', NULL, '2024-11-27 18:04:01', '2024-11-27 18:04:01'),
(81, 64, 3, NULL, 1, 50.00, 'Sin dedicatoria', NULL, '2024-11-27 18:04:01', '2024-11-27 18:04:01'),
(82, 64, NULL, 4, 1, 80.00, 'Sin dedicatoria', NULL, '2024-11-27 18:04:01', '2024-11-27 18:04:01'),
(83, 65, 11, NULL, 1, 300.00, 'Sin dedicatoria', NULL, '2024-11-27 18:08:24', '2024-11-27 18:08:24'),
(84, 66, 1, NULL, 1, 50.00, 'Para PRUEBA asdasda', 'Pequeña (20 tajadas)', '2024-11-27 18:08:55', '2024-11-27 18:08:55'),
(85, 67, 2, NULL, 1, 60.00, 'Sin dedicatoria', 'Pequeño (20 unidades)', '2024-11-27 18:43:49', '2024-11-27 18:43:49'),
(86, 68, 1, NULL, 1, 50.00, 'adasd', 'Pequeña (20 tajadas)', '2024-11-27 19:14:38', '2024-11-27 19:14:38'),
(87, 69, 1, NULL, 2, 100.00, 'PRUEBITA 2', 'Grande (40 tajadas)', '2024-11-27 19:31:05', '2024-11-27 19:31:05'),
(88, 69, NULL, 4, 1, 80.00, 'Sin dedicatoria', NULL, '2024-11-27 19:31:05', '2024-11-27 19:31:05'),
(89, 70, 1, NULL, 1, 80.00, NULL, 'Mediana (30 tajadas)', '2024-11-27 19:33:02', '2024-11-27 19:33:02'),
(90, 70, NULL, 3, 1, 200.00, NULL, NULL, '2024-11-27 19:33:02', '2024-11-27 19:33:02'),
(91, 71, 4, NULL, 1, 60.00, 'Sin dedicatoria', 'Pequeño (20 unidades)', '2024-11-27 19:35:08', '2024-11-27 19:35:08'),
(92, 72, NULL, 1, 2, 200.00, NULL, NULL, '2024-11-27 19:53:47', '2024-11-27 19:53:47'),
(93, 72, NULL, 4, 1, 80.00, NULL, NULL, '2024-11-27 19:53:47', '2024-11-27 19:53:47'),
(94, 72, 3, NULL, 1, 100.00, 'Para Gean', 'Grande (40 tajadas)', '2024-11-27 19:53:47', '2024-11-27 19:53:47'),
(95, 73, 2, NULL, 2, 60.00, 'Sin dedicatoria', 'Pequeño (20 unidades)', '2024-11-28 02:52:08', '2024-11-28 02:52:08'),
(96, 73, NULL, 4, 1, 80.00, NULL, NULL, '2024-11-28 02:52:08', '2024-11-28 02:52:08'),
(97, 74, 1, NULL, 1, 50.00, NULL, 'Pequeña (20 tajadas)', '2024-11-28 02:57:42', '2024-11-28 02:57:42'),
(98, 75, 1, NULL, 1, 50.00, NULL, 'Pequeña (20 tajadas)', '2024-11-28 02:58:04', '2024-11-28 02:58:04'),
(99, 76, 1, NULL, 1, 50.00, NULL, 'Pequeña (20 tajadas)', '2024-11-28 02:58:21', '2024-11-28 02:58:21'),
(100, 77, 1, NULL, 1, 50.00, NULL, 'Pequeña (20 tajadas)', '2024-11-28 02:58:30', '2024-11-28 02:58:30'),
(101, 78, 1, NULL, 1, 50.00, NULL, 'Pequeña (20 tajadas)', '2024-11-28 02:58:36', '2024-11-28 02:58:36'),
(102, 79, 1, NULL, 1, 50.00, NULL, 'Pequeña (20 tajadas)', '2024-11-28 02:58:44', '2024-11-28 02:58:44'),
(103, 80, 1, NULL, 1, 50.00, NULL, 'Pequeña (20 tajadas)', '2024-11-28 02:59:05', '2024-11-28 02:59:05'),
(104, 81, 1, NULL, 1, 50.00, NULL, 'Mediana (30 tajadas)', '2024-11-28 03:05:47', '2024-11-28 03:05:47'),
(105, 82, 1, NULL, 1, 50.00, NULL, 'Pequeña (20 tajadas)', '2024-11-28 03:10:36', '2024-11-28 03:10:36'),
(106, 83, 3, NULL, 1, 50.00, NULL, 'Mediana (30 tajadas)', '2024-11-28 03:13:48', '2024-11-28 03:13:48'),
(107, 84, 1, NULL, 1, 50.00, NULL, 'Pequeña (20 tajadas)', '2024-11-28 03:15:23', '2024-11-28 03:15:23'),
(108, 85, 2, NULL, 1, 150.00, 'Sin dedicatoria', 'Pequeño (20 unidades)', '2024-11-28 16:09:18', '2024-11-28 16:09:18'),
(109, 86, 1, NULL, 3, 100.00, NULL, 'Grande (40 tajadas)', '2024-11-28 16:11:07', '2024-11-28 16:11:07'),
(110, 87, 1, NULL, 1, 50.00, 'Sin dedicatoria', NULL, '2024-11-29 04:58:37', '2024-11-29 04:58:37'),
(111, 88, 1, NULL, 1, 50.00, 'asdasdas', NULL, '2024-11-29 05:03:51', '2024-11-29 05:03:51'),
(112, 89, 1, NULL, 1, 50.00, 'CHEBAS', 'Grande (40 tajadas)', '2024-11-29 05:24:31', '2024-11-29 05:24:31'),
(113, 90, 1, NULL, 1, 50.00, 'CHEBAS', 'Grande (40 tajadas)', '2024-11-29 05:25:00', '2024-11-29 05:25:00'),
(114, 91, 1, NULL, 1, 50.00, 'CHEBAS', 'Grande (40 tajadas)', '2024-11-29 05:26:04', '2024-11-29 05:26:04'),
(115, 92, 1, NULL, 1, 50.00, NULL, 'Mediana (30 tajadas)', '2024-11-29 15:39:27', '2024-11-29 15:39:27'),
(116, 92, NULL, 4, 1, 80.00, NULL, NULL, '2024-11-29 15:39:27', '2024-11-29 15:39:27'),
(117, 93, 1, NULL, 5, 50.00, 'Prueba', 'Grande (40 tajadas)', '2024-11-29 15:44:29', '2024-11-29 15:44:29'),
(118, 93, NULL, 4, 1, 80.00, NULL, NULL, '2024-11-29 15:44:29', '2024-11-29 15:44:29'),
(119, 94, NULL, 4, 1, 80.00, NULL, NULL, '2024-11-29 16:30:50', '2024-11-29 16:30:50'),
(120, 94, 1, NULL, 2, 50.00, 'fhkkhj', 'Mediana (30 tajadas)', '2024-11-29 16:30:50', '2024-11-29 16:30:50'),
(121, 95, 1, NULL, 2, 50.00, 'Dedicar a mi hijo llamado Chebas', 'Mediana (30 tajadas)', '2024-11-29 16:31:45', '2024-11-29 16:31:45'),
(122, 97, 2, NULL, 2, 240.00, 'Sin dedicatoria', 'Mediano (50 unidades)', '2024-11-30 04:21:04', '2024-11-30 04:21:04'),
(123, 97, 1, NULL, 2, 100.00, NULL, 'Pequeña (20 tajadas)', '2024-11-30 04:21:04', '2024-11-30 04:21:04'),
(124, 97, NULL, 4, 1, 80.00, NULL, NULL, '2024-11-30 04:21:04', '2024-11-30 04:21:04'),
(125, 98, 1, NULL, 2, 80.00, NULL, NULL, '2024-11-30 04:24:36', '2024-11-30 04:24:36'),
(126, 99, 1, NULL, 1, 80.00, NULL, NULL, '2024-11-30 15:42:24', '2024-11-30 15:42:24'),
(127, 99, NULL, 4, 1, 80.00, NULL, NULL, '2024-11-30 15:42:24', '2024-11-30 15:42:24'),
(128, 100, 1, NULL, 8, 80.00, 'Prueba_Revision', NULL, '2024-11-30 15:56:50', '2024-11-30 15:56:50'),
(129, 101, 1, NULL, 2, 80.00, 'xxsad', NULL, '2024-11-30 19:21:07', '2024-11-30 19:21:07'),
(130, 101, NULL, 1, 3, 200.00, NULL, NULL, '2024-11-30 19:21:07', '2024-11-30 19:21:07'),
(131, 101, NULL, 4, 1, 80.00, NULL, NULL, '2024-11-30 19:21:07', '2024-11-30 19:21:07'),
(132, 101, 1, NULL, 1, 80.00, NULL, NULL, '2024-11-30 19:21:07', '2024-11-30 19:21:07'),
(133, 102, 2, NULL, 2, 120.00, 'Sin dedicatoria', NULL, '2024-12-01 01:36:51', '2024-12-01 01:36:51'),
(134, 102, NULL, 4, 1, 80.00, NULL, NULL, '2024-12-01 01:36:51', '2024-12-01 01:36:51'),
(135, 103, 1, NULL, 4, 50.00, NULL, NULL, '2024-12-01 03:28:09', '2024-12-01 03:28:09'),
(136, 103, 2, NULL, 2, 90.00, NULL, NULL, '2024-12-01 03:28:09', '2024-12-01 03:28:09'),
(137, 103, NULL, 4, 1, 80.00, NULL, NULL, '2024-12-01 03:28:09', '2024-12-01 03:28:09'),
(138, 104, 1, NULL, 2, 50.00, NULL, NULL, '2024-12-01 03:29:03', '2024-12-01 03:29:03'),
(139, 105, 1, NULL, 2, 50.00, NULL, NULL, '2024-12-01 03:36:27', '2024-12-01 03:36:27'),
(140, 106, 1, NULL, 2, 100.00, NULL, NULL, '2024-12-01 03:48:56', '2024-12-01 03:48:56'),
(141, 107, 3, NULL, 2, 62.50, NULL, NULL, '2024-12-01 04:00:56', '2024-12-01 04:00:56'),
(142, 108, 38, NULL, 2, 96.00, NULL, NULL, '2024-12-01 04:01:59', '2024-12-01 04:01:59'),
(143, 109, 1, NULL, 2, 80.00, NULL, NULL, '2024-12-03 21:42:42', '2024-12-03 21:42:42'),
(144, 110, 1, NULL, 2, 50.00, NULL, NULL, '2024-12-03 22:07:17', '2024-12-03 22:07:17'),
(145, 111, 1, NULL, 2, 50.00, NULL, NULL, '2024-12-03 22:08:11', '2024-12-03 22:08:11'),
(146, 112, 1, NULL, 2, 100.00, NULL, NULL, '2024-12-03 22:27:00', '2024-12-03 22:27:00'),
(147, 112, NULL, 4, 1, 80.00, NULL, NULL, '2024-12-03 22:27:00', '2024-12-03 22:27:00'),
(148, 113, 1, NULL, 2, 80.00, NULL, NULL, '2024-12-03 22:33:06', '2024-12-03 22:33:06'),
(149, 114, 3, NULL, 3, 125.00, NULL, NULL, '2024-12-03 22:35:25', '2024-12-03 22:35:25'),
(150, 115, 38, NULL, 2, 96.00, NULL, NULL, '2024-12-03 22:37:59', '2024-12-03 22:37:59'),
(151, 115, NULL, 4, 1, 80.00, NULL, NULL, '2024-12-03 22:37:59', '2024-12-03 22:37:59'),
(152, 116, 17, NULL, 2, 80.00, NULL, NULL, '2024-12-03 22:41:07', '2024-12-03 22:41:07'),
(153, 116, NULL, 4, 1, 80.00, NULL, NULL, '2024-12-03 22:41:07', '2024-12-03 22:41:07'),
(154, 117, 11, NULL, 2, 300.00, NULL, NULL, '2024-12-03 22:42:21', '2024-12-03 22:42:21'),
(155, 117, NULL, 4, 1, 80.00, NULL, NULL, '2024-12-03 22:42:21', '2024-12-03 22:42:21'),
(156, 118, 2, NULL, 2, 150.00, NULL, NULL, '2024-12-03 22:42:58', '2024-12-03 22:42:58'),
(157, 118, NULL, 4, 1, 80.00, NULL, NULL, '2024-12-03 22:42:58', '2024-12-03 22:42:58'),
(158, 119, 2, NULL, 2, 90.00, NULL, NULL, '2024-12-03 22:43:35', '2024-12-03 22:43:35'),
(159, 120, 2, NULL, 1, 90.00, NULL, NULL, '2024-12-03 22:51:52', '2024-12-03 22:51:52'),
(160, 120, NULL, 4, 1, 80.00, NULL, NULL, '2024-12-03 22:51:52', '2024-12-03 22:51:52'),
(161, 121, 1, NULL, 2, 100.00, 'asdasdasd', NULL, '2024-12-03 23:07:18', '2024-12-03 23:07:18'),
(162, 122, 3, NULL, 2, 125.00, 'Sin dedicatoria', 'Grande (40 tajadas)', '2024-12-03 23:08:10', '2024-12-03 23:08:10'),
(163, 122, NULL, 4, 1, 80.00, NULL, NULL, '2024-12-03 23:08:10', '2024-12-03 23:08:10'),
(164, 123, 2, NULL, 1, 90.00, 'Sin dedicatoria', 'Pequeño (20 unidades)', '2024-12-03 23:46:29', '2024-12-03 23:46:29'),
(165, 123, 1, NULL, 1, 50.00, 'Sin dedicatoria', 'Pequeña (20 tajadas)', '2024-12-03 23:46:29', '2024-12-03 23:46:29'),
(166, 123, 4, NULL, 1, 75.00, 'Sin dedicatoria', 'Mediano (50 unidades)', '2024-12-03 23:46:29', '2024-12-03 23:46:29'),
(167, 123, NULL, 4, 1, 80.00, NULL, NULL, '2024-12-03 23:46:29', '2024-12-03 23:46:29'),
(168, 123, 2, NULL, 1, 90.00, 'Sin dedicatoria', 'Pequeño (20 unidades)', '2024-12-03 23:46:29', '2024-12-03 23:46:29'),
(169, 124, 1, NULL, 2, 80.00, 'Sin dedicatoria', 'Mediana (30 tajadas)', '2024-12-04 04:10:04', '2024-12-04 04:10:04'),
(170, 124, NULL, 4, 1, 45.00, NULL, NULL, '2024-12-04 04:10:04', '2024-12-04 04:10:04'),
(171, 125, 3, NULL, 1, 100.00, 'Sin dedicatoria', 'Mediana (30 tajadas)', '2024-12-05 05:14:44', '2024-12-05 05:14:44'),
(172, 125, NULL, 4, 1, 45.00, NULL, NULL, '2024-12-05 05:14:44', '2024-12-05 05:14:44'),
(173, 126, 39, NULL, 2, 88.00, '5464564', 'Mediana (30 tajadas)', '2024-12-07 00:20:53', '2024-12-07 00:20:53'),
(174, 126, NULL, 4, 1, 45.00, NULL, NULL, '2024-12-07 00:20:53', '2024-12-07 00:20:53'),
(175, 127, 50, NULL, 2, 120.00, 'Sin dedicatoria', NULL, '2024-12-07 16:29:53', '2024-12-07 16:29:53'),
(176, 128, 49, NULL, 13, 150.00, 'Sin dedicatoria', NULL, '2024-12-07 16:32:01', '2024-12-07 16:32:01'),
(177, 129, 11, NULL, 2, 300.00, 'Sin dedicatoria', NULL, '2024-12-07 20:36:53', '2024-12-07 20:36:53'),
(178, 130, 11, NULL, 2, 300.00, 'Sin dedicatoria', NULL, '2024-12-07 20:37:22', '2024-12-07 20:37:22'),
(179, 131, 11, NULL, 2, 300.00, 'Sin dedicatoria', NULL, '2024-12-07 20:38:18', '2024-12-07 20:38:18'),
(180, 132, 11, NULL, 1, 300.00, 'Sin dedicatoria', NULL, '2024-12-07 20:41:12', '2024-12-07 20:41:12'),
(181, 133, 1, NULL, 12, 50.00, 'Sin dedicatoria', 'Pequeña (20 tajadas)', '2024-12-08 02:34:28', '2024-12-08 02:34:28'),
(182, 134, 2, NULL, 2, 90.00, 'Sin dedicatoria', 'Pequeño (20 unidades)', '2024-12-09 23:18:48', '2024-12-09 23:18:48'),
(183, 134, NULL, 4, 1, 45.00, NULL, NULL, '2024-12-09 23:18:48', '2024-12-09 23:18:48'),
(184, 135, 3, NULL, 2, 62.50, 'Sin dedicatoria', 'Pequeña (20 tajadas)', '2024-12-10 02:16:26', '2024-12-10 02:16:26'),
(185, 136, 1, NULL, 1, 80.00, 'Dedicar a mi hijo llamado Chebas', 'Mediana (30 tajadas)', '2024-12-10 17:30:23', '2024-12-10 17:30:23'),
(186, 138, 2, NULL, 2, 90.00, 'Sin dedicatoria', 'Pequeño (20 unidades)', '2024-12-10 17:37:48', '2024-12-10 17:37:48'),
(187, 139, 2, NULL, 3, 90.00, 'Sin dedicatoria', 'Pequeño (20 unidades)', '2024-12-10 17:43:21', '2024-12-10 17:43:21'),
(188, 140, 2, NULL, 2, 90.00, 'Sin dedicatoria', 'Pequeño (20 unidades)', '2024-12-10 17:50:08', '2024-12-10 17:50:08'),
(189, 141, 11, NULL, 1, 300.00, 'Sin dedicatoria', 'Pequeño', '2024-12-10 18:03:51', '2024-12-10 18:03:51'),
(190, 142, 11, NULL, 1, 150.00, 'Sin dedicatoria', 'Pequeño', '2024-12-10 18:05:03', '2024-12-10 18:05:03'),
(191, 142, NULL, 4, 1, 45.00, NULL, NULL, '2024-12-10 18:05:03', '2024-12-10 18:05:03'),
(192, 143, 11, NULL, 1, 150.00, 'Sin dedicatoria', 'Pequeño', '2024-12-10 23:27:46', '2024-12-10 23:27:46'),
(193, 144, 2, NULL, 1, 90.00, 'Sin dedicatoria', 'Pequeño (20 unidades)', '2024-12-11 02:14:15', '2024-12-11 02:14:15'),
(194, 144, NULL, 1, 3, 80.00, NULL, NULL, '2024-12-11 02:14:15', '2024-12-11 02:14:15'),
(195, 145, 4, NULL, 2, 45.00, 'Sin dedicatoria', 'Pequeño (20 unidades)', '2024-12-11 02:36:06', '2024-12-11 02:36:06'),
(196, 145, NULL, 1, 3, 80.00, NULL, NULL, '2024-12-11 02:36:06', '2024-12-11 02:36:06'),
(197, 146, NULL, 2, 1, 250.00, NULL, NULL, '2024-12-11 02:44:40', '2024-12-11 02:44:40'),
(198, 146, NULL, 3, 1, 100.00, NULL, NULL, '2024-12-11 02:44:40', '2024-12-11 02:44:40'),
(199, 146, NULL, 15, 1, 500.00, NULL, NULL, '2024-12-11 02:44:40', '2024-12-11 02:44:40'),
(200, 146, NULL, 4, 1, 45.00, NULL, NULL, '2024-12-11 02:44:40', '2024-12-11 02:44:40'),
(201, 146, NULL, 14, 1, 150.00, NULL, NULL, '2024-12-11 02:44:40', '2024-12-11 02:44:40'),
(202, 146, NULL, 1, 3, 80.00, NULL, NULL, '2024-12-11 02:44:40', '2024-12-11 02:44:40'),
(203, 147, 3, NULL, 2, 62.50, 'Sin dedicatoria', 'Pequeña (20 tajadas)', '2024-12-11 02:49:40', '2024-12-11 02:49:40'),
(204, 147, NULL, 2, 1, 250.00, NULL, NULL, '2024-12-11 02:49:40', '2024-12-11 02:49:40'),
(205, 147, NULL, 14, 1, 150.00, NULL, NULL, '2024-12-11 02:49:40', '2024-12-11 02:49:40'),
(206, 148, 3, NULL, 1, 62.50, 'Sin dedicatoria', 'Pequeña (20 tajadas)', '2024-12-11 06:55:05', '2024-12-11 06:55:05'),
(207, 149, 3, NULL, 1, 62.50, 'Sin dedicatoria', 'Pequeña (20 tajadas)', '2024-12-11 06:56:18', '2024-12-11 06:56:18'),
(208, 149, NULL, 2, 1, 250.00, NULL, NULL, '2024-12-11 06:56:18', '2024-12-11 06:56:18'),
(209, 149, NULL, 4, 1, 45.00, NULL, NULL, '2024-12-11 06:56:18', '2024-12-11 06:56:18'),
(210, 149, NULL, 15, 1, 500.00, NULL, NULL, '2024-12-11 06:56:18', '2024-12-11 06:56:18'),
(211, 150, 38, NULL, 2, 60.00, 'Sin dedicatoria', 'Pequeña (20 tajadas)', '2024-12-11 06:57:43', '2024-12-11 06:57:43'),
(212, 150, NULL, 1, 4, 80.00, NULL, NULL, '2024-12-11 06:57:43', '2024-12-11 06:57:43'),
(213, 150, NULL, 4, 1, 45.00, NULL, NULL, '2024-12-11 06:57:43', '2024-12-11 06:57:43'),
(214, 151, 53, NULL, 2, 55.00, 'Sin dedicatoria', 'Pequeña (20 tajadas)', '2024-12-11 07:01:15', '2024-12-11 07:01:15'),
(215, 151, NULL, 1, 3, 80.00, NULL, NULL, '2024-12-11 07:01:15', '2024-12-11 07:01:15'),
(216, 151, NULL, 2, 1, 250.00, NULL, NULL, '2024-12-11 07:01:15', '2024-12-11 07:01:15'),
(217, 152, 4, NULL, 1, 45.00, 'Sin dedicatoria', 'Pequeño (20 unidades)', '2024-12-11 08:24:02', '2024-12-11 08:24:02'),
(218, 152, NULL, 2, 1, 250.00, NULL, NULL, '2024-12-11 08:24:02', '2024-12-11 08:24:02'),
(219, 152, 4, NULL, 1, 45.00, 'Sin dedicatoria', 'Mediano (50 unidades)', '2024-12-11 08:24:02', '2024-12-11 08:24:02'),
(220, 152, NULL, 4, 1, 45.00, NULL, NULL, '2024-12-11 08:24:02', '2024-12-11 08:24:02'),
(221, 152, NULL, 15, 1, 500.00, NULL, NULL, '2024-12-11 08:24:02', '2024-12-11 08:24:02'),
(222, 153, 3, NULL, 1, 62.50, 'Sin dedicatoria', 'Pequeña (20 tajadas)', '2024-12-11 18:09:13', '2024-12-11 18:09:13'),
(223, 153, NULL, 1, 3, 80.00, NULL, NULL, '2024-12-11 18:09:13', '2024-12-11 18:09:13'),
(224, 153, NULL, 4, 1, 45.00, NULL, NULL, '2024-12-11 18:09:13', '2024-12-11 18:09:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `jobs`
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

--
-- Volcado de datos para la tabla `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(2, 'default', '{\"uuid\":\"8ec9b628-a117-49ec-8486-7acaa2fd8498\",\"displayName\":\"App\\\\Mail\\\\RegistroConfirmado\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:27:\\\"App\\\\Mail\\\\RegistroConfirmado\\\":3:{s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:16:\\\"test@example.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1732310846, 1732310846),
(3, 'default', '{\"uuid\":\"a4cb9c51-7f2b-4460-a585-02cd6153eff0\",\"displayName\":\"App\\\\Mail\\\\RegistroConfirmado\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:27:\\\"App\\\\Mail\\\\RegistroConfirmado\\\":3:{s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:6;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:32:\\\"manuel.rodriguez.j@tecsup.edu.pe\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1732311071, 1732311071);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_batches`
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
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(20, '2024_11_10_025403_create_categorias_table', 1),
(113, '0001_01_01_000000_create_users_table', 2),
(114, '0001_01_01_000001_create_cache_table', 2),
(115, '0001_01_01_000002_create_jobs_table', 2),
(116, '2024_10_19_191248_add_two_factor_columns_to_users_table', 2),
(117, '2024_10_19_191348_create_personal_access_tokens_table', 2),
(118, '2024_10_19_191351_create_teams_table', 2),
(119, '2024_10_19_191352_create_team_user_table', 2),
(120, '2024_10_19_191353_create_team_invitations_table', 2),
(121, '2024_11_10_025320_create_roles_table', 2),
(129, '2024_11_10_040713_add_id_rol_to_users_table', 2),
(144, '2024_11_10_025459_create_productos_table', 3),
(145, '2024_11_10_025513_create_servicios_table', 3),
(146, '2024_11_10_025528_create_pedidos_table', 3),
(147, '2024_11_10_025543_create_detalle_pedidos_table', 3),
(148, '2024_11_10_025556_create_pagos_table', 3),
(149, '2024_11_10_025609_create_registro_ventas_table', 3),
(150, '2024_11_10_025623_create_tracking_table', 3),
(151, '2024_11_11_042809_create_categorias_table', 4),
(152, '2024_11_11_052652_add_imagen_to_productos_and_servicios', 5),
(153, '2024_11_21_201250_add_id_rol_to_users_table', 6),
(154, '2024_11_22_220339_drop_registro_ventas_table', 7),
(155, '2024_11_22_220407_modify_pedidos_table_to_venta', 8),
(157, '2024_11_23_044111_rename_id_pedido_to_id_venta_in_tracking_table', 9),
(158, '2024_11_23_000910_rename_id_to_id_rol_in_roles_table', 10),
(159, '2024_11_25_060214_update_tracking_table', 11),
(160, '2024_11_26_231610_update_detalle_pedido_table', 12),
(161, '2024_11_27_004151_add_metodo_entrega_to_pedidos_table', 13),
(162, '2024_12_07_114059_add_stock_to_productos_table', 14),
(163, '2024_12_09_183131_add_telefono_to_users_table', 15),
(164, '2024_12_09_223930_remove_columns_from_servicios_table', 16),
(165, '2024_12_10_191351_update_fecha_despacho_to_datetime_in_tracking_table', 17);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE `pagos` (
  `id_pago` bigint(20) UNSIGNED NOT NULL,
  `id_pedido` bigint(20) UNSIGNED NOT NULL,
  `fecha_pago` date NOT NULL,
  `monto` decimal(10,2) NOT NULL,
  `estado` enum('Pendiente','Completado','Fallido') NOT NULL,
  `metodo` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pagos`
--

INSERT INTO `pagos` (`id_pago`, `id_pedido`, `fecha_pago`, `monto`, `estado`, `metodo`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-11-23', 150.00, 'Completado', 'Tarjeta de crédito', '2024-11-23 05:34:44', '2024-11-23 05:34:44'),
(2, 2, '2024-11-23', 100.00, 'Completado', 'Tarjeta de crédito', '2024-11-23 09:09:53', '2024-11-23 09:09:53'),
(3, 3, '2024-11-23', 100.00, 'Completado', 'Tarjeta de crédito', '2024-11-23 09:17:43', '2024-11-23 09:17:43'),
(5, 5, '2024-11-23', 150.00, 'Completado', 'Tarjeta de crédito', '2024-11-23 09:43:06', '2024-11-23 09:43:06'),
(6, 6, '2024-11-23', 150.00, 'Completado', 'Tarjeta de crédito', '2024-11-23 09:49:57', '2024-11-23 09:49:57'),
(7, 7, '2024-11-23', 375.00, 'Completado', 'Tarjeta de crédito', '2024-11-23 09:53:36', '2024-11-23 09:53:36'),
(8, 11, '2024-11-23', 680.00, 'Completado', 'Tarjeta de crédito', '2024-11-23 10:13:05', '2024-11-23 10:13:05'),
(9, 12, '2024-11-23', 680.00, 'Completado', 'Tarjeta de crédito', '2024-11-23 10:16:21', '2024-11-23 10:16:21'),
(10, 15, '2024-11-23', 680.00, 'Completado', 'Tarjeta de crédito', '2024-11-23 10:21:47', '2024-11-23 10:21:47'),
(11, 21, '2024-11-23', 300.00, 'Completado', 'Tarjeta de crédito', '2024-11-23 10:40:52', '2024-11-23 10:40:52'),
(12, 22, '2024-11-23', 150.00, 'Completado', 'Tarjeta de crédito', '2024-11-23 18:17:44', '2024-11-23 18:17:44'),
(13, 23, '2024-11-23', 75.00, 'Completado', 'Tarjeta de crédito', '2024-11-23 19:14:26', '2024-11-23 19:14:26'),
(14, 24, '2024-11-23', 225.00, 'Completado', 'Tarjeta de crédito', '2024-11-23 20:05:25', '2024-11-23 20:05:25'),
(15, 25, '2024-11-25', 250.00, 'Completado', 'Tarjeta de crédito', '2024-11-25 11:21:54', '2024-11-25 11:21:54'),
(16, 26, '2024-11-25', 250.00, 'Completado', 'Tarjeta de crédito', '2024-11-25 11:23:49', '2024-11-25 11:23:49'),
(17, 27, '2024-11-26', 100.00, 'Completado', 'Tarjeta de crédito', '2024-11-26 07:43:08', '2024-11-26 07:43:08'),
(18, 28, '2024-11-26', 150.00, 'Completado', 'Tarjeta de crédito', '2024-11-26 07:59:15', '2024-11-26 07:59:15'),
(19, 30, '2024-11-26', 100.00, 'Completado', 'Tarjeta de crédito', '2024-11-26 20:28:02', '2024-11-26 20:28:02'),
(20, 31, '2024-11-26', 100.00, 'Completado', 'Tarjeta de crédito', '2024-11-27 04:51:14', '2024-11-27 04:51:14'),
(21, 32, '2024-11-27', 720.00, 'Completado', 'Tarjeta de crédito', '2024-11-27 06:23:59', '2024-11-27 06:23:59'),
(22, 33, '2024-11-27', 180.00, 'Completado', 'Tarjeta de crédito', '2024-11-27 06:28:21', '2024-11-27 06:28:21'),
(23, 34, '2024-11-27', 180.00, 'Completado', 'Tarjeta de crédito', '2024-11-27 06:51:30', '2024-11-27 06:51:30'),
(24, 35, '2024-11-27', 180.00, 'Completado', 'Tarjeta de crédito', '2024-11-27 06:55:00', '2024-11-27 06:55:00'),
(25, 36, '2024-11-27', 180.00, 'Completado', 'Tarjeta de crédito', '2024-11-27 07:08:28', '2024-11-27 07:08:28'),
(26, 42, '2024-11-27', 50.00, 'Completado', 'Tarjeta de crédito', '2024-11-27 21:04:38', '2024-11-27 21:04:38'),
(27, 43, '2024-11-27', 50.00, 'Completado', 'Tarjeta de crédito', '2024-11-27 21:11:05', '2024-11-27 21:11:05'),
(28, 44, '2024-11-27', 60.00, 'Completado', 'Tarjeta de crédito', '2024-11-27 21:19:33', '2024-11-27 21:19:33'),
(29, 45, '2024-11-27', 60.00, 'Completado', 'Tarjeta de crédito', '2024-11-27 16:23:18', '2024-11-27 16:23:18'),
(30, 46, '2024-11-27', 60.00, 'Completado', 'Tarjeta de crédito', '2024-11-27 16:24:14', '2024-11-27 16:24:14'),
(31, 47, '2024-11-27', 60.00, 'Completado', 'Tarjeta de crédito', '2024-11-27 16:25:01', '2024-11-27 16:25:01'),
(32, 48, '2024-11-27', 60.00, 'Completado', 'Tarjeta de crédito', '2024-11-27 16:27:04', '2024-11-27 16:27:04'),
(33, 49, '2024-11-27', 60.00, 'Completado', 'Tarjeta de crédito', '2024-11-27 16:53:40', '2024-11-27 16:53:40'),
(34, 50, '2024-11-27', 160.00, 'Completado', 'Tarjeta de crédito', '2024-11-27 16:56:04', '2024-11-27 16:56:04'),
(35, 51, '2024-11-27', 50.00, 'Completado', 'Tarjeta de crédito', '2024-11-27 17:42:15', '2024-11-27 17:42:15'),
(36, 53, '2024-11-27', 50.00, 'Completado', 'Tarjeta de crédito', '2024-11-27 17:48:16', '2024-11-27 17:48:16'),
(37, 54, '2024-11-27', 250.00, 'Completado', 'Tarjeta de crédito', '2024-11-27 17:49:28', '2024-11-27 17:49:28'),
(38, 56, '2024-11-27', 50.00, 'Completado', 'Tarjeta de crédito', '2024-11-27 17:53:02', '2024-11-27 17:53:02'),
(39, 63, '2024-11-27', 180.00, 'Completado', 'Tarjeta de crédito', '2024-11-27 18:02:53', '2024-11-27 18:02:53'),
(40, 64, '2024-11-27', 180.00, 'Completado', 'Tarjeta de crédito', '2024-11-27 18:04:01', '2024-11-27 18:04:01'),
(41, 65, '2024-11-27', 300.00, 'Completado', 'Tarjeta de crédito', '2024-11-27 18:08:24', '2024-11-27 18:08:24'),
(42, 66, '2024-11-27', 50.00, 'Completado', 'Tarjeta de crédito', '2024-11-27 18:08:55', '2024-11-27 18:08:55'),
(43, 67, '2024-11-27', 60.00, 'Completado', 'Tarjeta de crédito', '2024-11-27 18:43:49', '2024-11-27 18:43:49'),
(44, 68, '2024-11-27', 50.00, 'Completado', 'Tarjeta de crédito', '2024-11-27 19:14:38', '2024-11-27 19:14:38'),
(45, 69, '2024-11-27', 280.00, 'Completado', 'Tarjeta de crédito', '2024-11-27 19:31:05', '2024-11-27 19:31:05'),
(46, 70, '2024-11-27', 280.00, 'Completado', 'Tarjeta de crédito', '2024-11-27 19:33:02', '2024-11-27 19:33:02'),
(47, 71, '2024-11-27', 60.00, 'Completado', 'Tarjeta de crédito', '2024-11-27 19:35:08', '2024-11-27 19:35:08'),
(48, 72, '2024-11-27', 580.00, 'Completado', 'Tarjeta de crédito', '2024-11-27 19:53:47', '2024-11-27 19:53:47'),
(49, 73, '2024-11-27', 200.00, 'Completado', 'Tarjeta de crédito', '2024-11-28 02:52:08', '2024-11-28 02:52:08'),
(50, 74, '2024-11-27', 50.00, 'Completado', 'Tarjeta de crédito', '2024-11-28 02:57:42', '2024-11-28 02:57:42'),
(51, 75, '2024-11-27', 50.00, 'Completado', 'Tarjeta de crédito', '2024-11-28 02:58:04', '2024-11-28 02:58:04'),
(52, 76, '2024-11-27', 50.00, 'Completado', 'Tarjeta de crédito', '2024-11-28 02:58:21', '2024-11-28 02:58:21'),
(53, 77, '2024-11-27', 50.00, 'Completado', 'Tarjeta de crédito', '2024-11-28 02:58:30', '2024-11-28 02:58:30'),
(54, 78, '2024-11-27', 50.00, 'Completado', 'Tarjeta de crédito', '2024-11-28 02:58:36', '2024-11-28 02:58:36'),
(55, 79, '2024-11-27', 50.00, 'Completado', 'Tarjeta de crédito', '2024-11-28 02:58:44', '2024-11-28 02:58:44'),
(56, 80, '2024-11-27', 50.00, 'Completado', 'Tarjeta de crédito', '2024-11-28 02:59:05', '2024-11-28 02:59:05'),
(57, 81, '2024-11-27', 50.00, 'Completado', 'Tarjeta de crédito', '2024-11-28 03:05:47', '2024-11-28 03:05:47'),
(58, 82, '2024-11-27', 50.00, 'Completado', 'Tarjeta de crédito', '2024-11-28 03:10:36', '2024-11-28 03:10:36'),
(59, 83, '2024-11-27', 50.00, 'Completado', 'Tarjeta de crédito', '2024-11-28 03:13:48', '2024-11-28 03:13:48'),
(60, 84, '2024-11-27', 50.00, 'Completado', 'Tarjeta de crédito', '2024-11-28 03:15:23', '2024-11-28 03:15:23'),
(61, 85, '2024-11-28', 150.00, 'Completado', 'Tarjeta de crédito', '2024-11-28 16:09:18', '2024-11-28 16:09:18'),
(62, 86, '2024-11-28', 300.00, 'Completado', 'Tarjeta de crédito', '2024-11-28 16:11:07', '2024-11-28 16:11:07'),
(63, 87, '2024-11-28', 50.00, 'Completado', 'Tarjeta de crédito', '2024-11-29 04:58:37', '2024-11-29 04:58:37'),
(64, 88, '2024-11-29', 50.00, 'Completado', 'Tarjeta de crédito', '2024-11-29 05:03:51', '2024-11-29 05:03:51'),
(65, 89, '2024-11-29', 50.00, 'Completado', 'Tarjeta de crédito', '2024-11-29 05:24:31', '2024-11-29 05:24:31'),
(66, 90, '2024-11-29', 50.00, 'Completado', 'Tarjeta de crédito', '2024-11-29 05:25:00', '2024-11-29 05:25:00'),
(67, 91, '2024-11-29', 50.00, 'Completado', 'Tarjeta de crédito', '2024-11-29 05:26:04', '2024-11-29 05:26:04'),
(68, 92, '2024-11-29', 130.00, 'Completado', 'Tarjeta de crédito', '2024-11-29 15:39:27', '2024-11-29 15:39:27'),
(69, 93, '2024-11-29', 330.00, 'Completado', 'Tarjeta de crédito', '2024-11-29 15:44:29', '2024-11-29 15:44:29'),
(70, 94, '2024-11-29', 180.00, 'Completado', 'Tarjeta de crédito', '2024-11-29 16:30:50', '2024-11-29 16:30:50'),
(71, 95, '2024-11-29', 100.00, 'Completado', 'Tarjeta de crédito', '2024-11-29 16:31:45', '2024-11-29 16:31:45'),
(72, 97, '2024-11-29', 760.00, 'Completado', 'Tarjeta de crédito', '2024-11-30 04:21:04', '2024-11-30 04:21:04'),
(73, 98, '2024-11-29', 160.00, 'Completado', 'Tarjeta de crédito', '2024-11-30 04:24:36', '2024-11-30 04:24:36'),
(74, 99, '2024-11-30', 160.00, 'Completado', 'Tarjeta de crédito', '2024-11-30 15:42:24', '2024-11-30 15:42:24'),
(75, 100, '2024-11-30', 640.00, 'Completado', 'Tarjeta de crédito', '2024-11-30 15:56:50', '2024-11-30 15:56:50'),
(76, 101, '2024-11-30', 920.00, 'Completado', 'Tarjeta de crédito', '2024-11-30 19:21:07', '2024-11-30 19:21:07'),
(77, 102, '2024-11-30', 320.00, 'Completado', 'Tarjeta de crédito', '2024-12-01 01:36:51', '2024-12-01 01:36:51'),
(78, 103, '2024-11-30', 460.00, 'Completado', 'Tarjeta de crédito', '2024-12-01 03:28:09', '2024-12-01 03:28:09'),
(79, 104, '2024-11-30', 100.00, 'Completado', 'Tarjeta de crédito', '2024-12-01 03:29:03', '2024-12-01 03:29:03'),
(80, 105, '2024-11-30', 100.00, 'Completado', 'Tarjeta de crédito', '2024-12-01 03:36:27', '2024-12-01 03:36:27'),
(81, 106, '2024-11-30', 200.00, 'Completado', 'Tarjeta de crédito', '2024-12-01 03:48:56', '2024-12-01 03:48:56'),
(82, 107, '2024-11-30', 125.00, 'Completado', 'Tarjeta de crédito', '2024-12-01 04:00:56', '2024-12-01 04:00:56'),
(83, 108, '2024-11-30', 192.00, 'Completado', 'Tarjeta de crédito', '2024-12-01 04:01:59', '2024-12-01 04:01:59'),
(84, 109, '2024-12-03', 160.00, 'Completado', 'Tarjeta de crédito', '2024-12-03 21:42:42', '2024-12-03 21:42:42'),
(85, 110, '2024-12-03', 100.00, 'Completado', 'Tarjeta de crédito', '2024-12-03 22:07:17', '2024-12-03 22:07:17'),
(86, 111, '2024-12-03', 100.00, 'Completado', 'Tarjeta de crédito', '2024-12-03 22:08:11', '2024-12-03 22:08:11'),
(87, 112, '2024-12-03', 280.00, 'Completado', 'Tarjeta de crédito', '2024-12-03 22:27:00', '2024-12-03 22:27:00'),
(88, 113, '2024-12-03', 160.00, 'Completado', 'Tarjeta de crédito', '2024-12-03 22:33:06', '2024-12-03 22:33:06'),
(89, 114, '2024-12-03', 375.00, 'Completado', 'Tarjeta de crédito', '2024-12-03 22:35:25', '2024-12-03 22:35:25'),
(90, 115, '2024-12-03', 272.00, 'Completado', 'Tarjeta de crédito', '2024-12-03 22:37:59', '2024-12-03 22:37:59'),
(91, 116, '2024-12-03', 240.00, 'Completado', 'Tarjeta de crédito', '2024-12-03 22:41:07', '2024-12-03 22:41:07'),
(92, 117, '2024-12-03', 680.00, 'Completado', 'Tarjeta de crédito', '2024-12-03 22:42:21', '2024-12-03 22:42:21'),
(93, 118, '2024-12-03', 380.00, 'Completado', 'Tarjeta de crédito', '2024-12-03 22:42:58', '2024-12-03 22:42:58'),
(94, 119, '2024-12-03', 180.00, 'Completado', 'Tarjeta de crédito', '2024-12-03 22:43:35', '2024-12-03 22:43:35'),
(95, 120, '2024-12-03', 170.00, 'Completado', 'Tarjeta de crédito', '2024-12-03 22:51:52', '2024-12-03 22:51:52'),
(96, 121, '2024-12-03', 200.00, 'Completado', 'Tarjeta de crédito', '2024-12-03 23:07:18', '2024-12-03 23:07:18'),
(97, 122, '2024-12-03', 330.00, 'Completado', 'Tarjeta de crédito', '2024-12-03 23:08:10', '2024-12-03 23:08:10'),
(98, 123, '2024-12-03', 385.00, 'Completado', 'Tarjeta de crédito', '2024-12-03 23:46:29', '2024-12-03 23:46:29'),
(99, 124, '2024-12-03', 205.00, 'Completado', 'Tarjeta de crédito', '2024-12-04 04:10:04', '2024-12-04 04:10:04'),
(100, 125, '2024-12-05', 145.00, 'Completado', 'Tarjeta de crédito', '2024-12-05 05:14:44', '2024-12-05 05:14:44'),
(101, 126, '2024-12-06', 221.00, 'Completado', 'Tarjeta de crédito', '2024-12-07 00:20:53', '2024-12-07 00:20:53'),
(102, 127, '2024-12-07', 240.00, 'Completado', 'Tarjeta de crédito', '2024-12-07 16:29:53', '2024-12-07 16:29:53'),
(103, 128, '2024-12-07', 1950.00, 'Completado', 'Tarjeta de crédito', '2024-12-07 16:32:01', '2024-12-07 16:32:01'),
(104, 131, '2024-12-07', 600.00, 'Completado', 'Tarjeta de crédito', '2024-12-07 20:38:18', '2024-12-07 20:38:18'),
(105, 132, '2024-12-07', 300.00, 'Completado', 'Tarjeta de crédito', '2024-12-07 20:41:12', '2024-12-07 20:41:12'),
(106, 133, '2024-12-07', 600.00, 'Completado', 'Tarjeta de crédito', '2024-12-08 02:34:28', '2024-12-08 02:34:28'),
(107, 134, '2024-12-09', 225.00, 'Completado', 'Tarjeta de crédito', '2024-12-09 23:18:48', '2024-12-09 23:18:48'),
(108, 135, '2024-12-09', 125.00, 'Completado', 'Tarjeta de crédito', '2024-12-10 02:16:26', '2024-12-10 02:16:26'),
(109, 136, '2024-12-10', 80.00, 'Completado', 'Tarjeta de crédito', '2024-12-10 17:30:23', '2024-12-10 17:30:23'),
(110, 138, '2024-12-10', 180.00, 'Completado', 'Tarjeta de crédito', '2024-12-10 17:37:48', '2024-12-10 17:37:48'),
(111, 139, '2024-12-10', 270.00, 'Completado', 'Tarjeta de crédito', '2024-12-10 17:43:21', '2024-12-10 17:43:21'),
(112, 140, '2024-12-10', 180.00, 'Completado', 'Tarjeta de crédito', '2024-12-10 17:50:08', '2024-12-10 17:50:08'),
(113, 141, '2024-12-10', 300.00, 'Completado', 'Tarjeta de crédito', '2024-12-10 18:03:51', '2024-12-10 18:03:51'),
(114, 142, '2024-12-10', 195.00, 'Completado', 'Tarjeta de crédito', '2024-12-10 18:05:03', '2024-12-10 18:05:03'),
(115, 143, '2024-12-10', 150.00, 'Completado', 'Tarjeta de crédito', '2024-12-10 23:27:46', '2024-12-10 23:27:46'),
(116, 144, '2024-12-10', 330.00, 'Completado', 'Tarjeta de crédito', '2024-12-11 02:14:15', '2024-12-11 02:14:15'),
(117, 145, '2024-12-10', 330.00, 'Completado', 'Tarjeta de crédito', '2024-12-11 02:36:06', '2024-12-11 02:36:06'),
(118, 146, '2024-12-10', 1285.00, 'Completado', 'Tarjeta de crédito', '2024-12-11 02:44:40', '2024-12-11 02:44:40'),
(119, 147, '2024-12-10', 525.00, 'Completado', 'Tarjeta de crédito', '2024-12-11 02:49:40', '2024-12-11 02:49:40'),
(120, 148, '2024-12-11', 62.50, 'Completado', 'Tarjeta de crédito', '2024-12-11 06:55:05', '2024-12-11 06:55:05'),
(121, 149, '2024-12-11', 857.50, 'Completado', 'Tarjeta de crédito', '2024-12-11 06:56:18', '2024-12-11 06:56:18'),
(122, 150, '2024-12-11', 485.00, 'Completado', 'Tarjeta de crédito', '2024-12-11 06:57:43', '2024-12-11 06:57:43'),
(123, 151, '2024-12-11', 600.00, 'Completado', 'Tarjeta de crédito', '2024-12-11 07:01:15', '2024-12-11 07:01:15'),
(124, 152, '2024-12-11', 885.00, 'Completado', 'Tarjeta de crédito', '2024-12-11 08:24:02', '2024-12-11 08:24:02'),
(125, 153, '2024-12-11', 347.50, 'Completado', 'Tarjeta de crédito', '2024-12-11 18:09:13', '2024-12-11 18:09:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
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
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `precio` decimal(10,2) NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `disponibilidad` tinyint(1) NOT NULL DEFAULT 1,
  `tipo_producto` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_categoria` bigint(20) UNSIGNED DEFAULT NULL,
  `stock` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `nombre`, `descripcion`, `precio`, `imagen`, `disponibilidad`, `tipo_producto`, `created_at`, `updated_at`, `id_categoria`, `stock`) VALUES
(1, 'Torta de Chocolate', 'Una torta de chocolate esponjosa con relleno de fudge cremoso y manjar', 100.00, 'images/torta_chocolate.png\r\n\r\n', 0, NULL, '2024-11-11 09:42:58', '2024-12-10 17:30:23', 1, 0),
(2, 'Petit Pan de Pollo', 'Este petit pan relleno de pollo tierno, mayonesa cremosa y lechuga fresca', 150.00, 'images/petitpan_pollo.png', 0, NULL, '2024-11-11 09:42:58', '2024-12-11 02:14:15', 2, 0),
(3, 'Torta de Tres Leches', 'La Torta de Tres Leches es un postre clásico y jugoso, con un bizcocho esponjoso', 125.00, 'images/torta_tres_leches.jpg', 1, NULL, '2024-11-13 22:33:06', '2024-12-11 18:09:13', 1, 5),
(4, 'Alfajores de Maicena', 'Los Alfajores de Maicena son dulces suaves, con galletas ligeras rellenas de dulce de leche', 75.00, 'images/alfajores_de_maicena.jpg', 1, NULL, '2024-11-13 22:33:06', '2024-12-11 08:24:02', 2, 10),
(11, 'Box Fiesta', 'El Box Fiesta es un paquete con una variedad de snacks', 300.00, 'images/box_fiesta.jpg', 0, NULL, '2024-11-14 04:55:15', '2024-12-11 06:20:28', 3, 0),
(12, 'Box Familiar', 'El Box Familiar ofrece una selección variada de platos y snacks', 250.00, 'images/box_familiar.jpg', 1, NULL, '2024-11-14 04:55:15', '2024-12-07 20:22:46', 3, 12),
(17, 'Torta Candy', 'La Torta Candy es una creación alegre con bizcocho esponjoso', 100.00, 'images/torta_candy.jpg', 1, NULL, '2024-11-27 22:12:49', '2024-12-07 20:26:20', 1, 6),
(38, 'Torta De Sauco', 'Torta de milhojas con miel de Sauco', 120.00, 'images/torta_de_sauco.jpg', 1, NULL, '2024-12-01 00:52:24', '2024-12-11 06:57:43', 1, 10),
(39, 'Torta de Zanahoria', 'Una torta húmeda de zanahoria, cubierta con crema de queso.', 110.00, 'images/torta_de_zanahoria.jpg', 1, NULL, '2024-12-04 06:07:23', '2024-12-07 20:29:27', 1, 12),
(41, 'Torta de Manzana', 'Deliciosa torta casera de manzana con canela.', 95.00, 'images/torta_de_manzana.jpg', 1, NULL, '2024-12-04 06:11:06', '2024-12-08 02:33:22', 1, 12),
(42, 'Bocadito de Queso Crema', 'Bocaditos rellenos con queso crema suave y una pizca de ajo.', 45.00, 'images/bocadito_de_queso_crema.jpg', 0, NULL, '2024-12-04 06:11:06', '2024-12-07 20:16:49', 2, 0),
(43, 'Bocaditos de Espinaca', 'Bocaditos saludables rellenos de espinaca y queso.', 50.00, 'images/bocaditos_de_espinaca.jpg', 0, NULL, '2024-12-04 06:11:06', '2024-12-07 20:16:54', 2, 0),
(44, 'Torta de Limón y Merengue', 'Refrescante torta de limón con una capa de merengue suave.', 120.00, 'images/torta_de_limón_y_merengue.jpg', 0, NULL, '2024-12-04 06:11:06', '2024-12-07 20:17:02', 1, 0),
(45, 'Torta de Fresa', 'Torta suave con sabor a fresa y cobertura de crema.', 100.00, 'images/torta_de_fresa.jpg', 0, NULL, '2024-12-04 06:11:06', '2024-12-07 20:17:08', 1, 0),
(46, 'Cupcakes de Chocolate', 'Deliciosos cupcakes con frosting de chocolate.', 35.00, 'images/cupcakes_de_chocolate.jpg', 0, NULL, '2024-12-04 06:11:06', '2024-12-07 20:17:58', 2, 0),
(47, 'Torta de Café', 'Una torta con suave sabor a café y cubierta de crema batida.', 115.00, 'images/torta_de_café.jpg', 0, NULL, '2024-12-04 06:11:06', '2024-12-07 20:17:53', 1, 0),
(48, 'Torta de Chocolate Blanco', 'Torta suave de chocolate blanco con un toque de frambuesas.', 125.00, 'images/torta_de_chocolate_blanco.jpg', 0, NULL, '2024-12-04 06:11:06', '2024-12-07 20:17:45', 1, 0),
(49, 'Mini Box de Tortas', 'Paquete pequeño con una selección de mini tortas.', 150.00, 'images/mini_box_de_tortas.jpg', 1, NULL, '2024-12-04 06:11:06', '2024-12-07 20:31:54', 3, 12),
(50, 'Mini Box de Bocaditos', 'Caja con una selección variada de bocaditos pequeños.', 120.00, 'images/mini_box_de_bocaditos.jpg', 0, NULL, '2024-12-04 06:11:06', '2024-12-07 20:17:27', 3, 0),
(51, 'Torta de Mango', 'Torta fresca con un toque tropical de mango.', 105.00, 'images/torta_de_mango.jpg', 0, NULL, '2024-12-04 06:11:06', '2024-12-07 20:17:32', 1, 0),
(52, 'Box Mix de Tortas y Bocaditos', 'Caja mixta con tortas y bocaditos para compartir en fiestas.', 200.00, 'images/box_mix_de_tortas_y_bocaditos.jpg', 0, NULL, '2024-12-04 06:11:06', '2024-12-07 20:17:38', 3, 0),
(53, 'Torta Selva Negra', 'Torta de chocolate con detalles de selva negra', 110.00, 'images/torta_selva_negra.jpg', 1, NULL, '2024-12-07 23:43:49', '2024-12-11 07:01:15', 1, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id_rol` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id_rol`, `nombre`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'Administrador', 'Acceso completo', '2024-11-23 20:16:32', '2024-11-23 20:16:32'),
(2, 'Usuario', 'Acceso Limitado', '2024-11-23 20:16:32', '2024-11-23 20:16:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `id_servicio` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `precio` decimal(10,2) NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `disponibilidad` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`id_servicio`, `nombre`, `descripcion`, `precio`, `imagen`, `disponibilidad`, `created_at`, `updated_at`) VALUES
(1, 'Mozo', 'Implementacion de un mozo para la realizacion del evento programado', 80.00, NULL, 1, '2024-11-11 09:42:58', '2024-12-07 23:15:58'),
(2, 'Decoracion', 'Implementacion de un personal adecuado que se encargue de un mejor aspecto al evento', 250.00, NULL, 1, '2024-11-11 09:42:58', '2024-12-04 02:20:03'),
(3, 'Maestro de Ceremonia', 'Implementación de un Maestro de Ceremonia para presentacion de servicios', 100.00, NULL, 1, '2024-11-13 22:33:06', '2024-12-04 02:20:34'),
(4, 'Delivery', 'Implementación de un personal que realizara el envio al lugar del evento', 45.00, NULL, 1, '2024-11-13 22:33:06', '2024-12-04 02:26:47'),
(14, 'Animadora de Eventos', 'Animadora para Eventos', 150.00, NULL, 1, '2024-12-04 02:27:28', '2024-12-04 02:27:28'),
(15, 'DJ', 'Servicio de DJ para animar eventos', 500.00, NULL, 1, '2024-12-04 02:29:14', '2024-12-05 05:30:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
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
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('7fhNqp4s7hMS5dDiRKZCFw5ErN7bft9gWZVQXkEX', 10, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 OPR/114.0.0.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiNE1FOERaMDhEQ3VQbU01dkJBTm5HWExSOW9rMVpuRWs0T0NQRExTNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC90cmFja2luZy9kZXRhbGxlLzEwNSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjEwO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEyJHhkZ3dxYjN4RTN1QjlDakZDNGdubC5XNGprYTYwamRyVWMxbXcwWUxFLzQvR2tYaEh2SjFTIjtzOjE5OiJlc3RhZG9fYW50ZXJpb3JfMTA1IjtzOjE3OiJQcmVwYXJhbmRvIGVudsOtbyI7fQ==', 1733940555),
('POQQJ9nZeXH5e0jrHEckPfwydJyyOjZqh74TMlfD', 10, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 OPR/114.0.0.0', 'YToxNjp7czo2OiJfdG9rZW4iO3M6NDA6ImNhY3FRODdiYUJtZVE1UThUMWxlREZ0TzdVR1duRmlYMVB5d2RmV0kiO3M6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQzOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYWRtaW4vYWRtaW4vcHJvZHVjdG9zIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTA7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTIkeGRnd3FiM3hFM3VCOUNqRkM0Z25sLlc0amthNjBqZHJVYzFtdzBZTEUvNC9Ha1hoSHZKMVMiO3M6MTk6ImVzdGFkb19hbnRlcmlvcl8xMDAiO3M6MTc6IlByZXBhcmFuZG8gZW52w61vIjtzOjE5OiJlc3RhZG9fYW50ZXJpb3JfMTAxIjtzOjE3OiJQcmVwYXJhbmRvIGVudsOtbyI7czoxOToiZXN0YWRvX2FudGVyaW9yXzEwMiI7czoxNzoiUHJlcGFyYW5kbyBlbnbDrW8iO3M6MTk6ImVzdGFkb19hbnRlcmlvcl8xMDMiO3M6MTc6IlByZXBhcmFuZG8gZW52w61vIjtzOjE5OiJlc3RhZG9fYW50ZXJpb3JfMTA0IjtzOjk6IkNhbmNlbGFkbyI7czo3OiJjYXJyaXRvIjthOjI6e2k6MDthOjk6e3M6NjoiaW1hZ2VuIjtzOjQ0OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvaW1hZ2VzL3BsYWNlaG9sZGVyLnBuZyI7czoyOiJpZCI7czoxOiIzIjtzOjQ6InRpcG8iO3M6ODoicHJvZHVjdG8iO3M6Njoibm9tYnJlIjtzOjIwOiJUb3J0YSBkZSBUcmVzIExlY2hlcyI7czo2OiJ0YW1hbm8iO3M6MjE6IlBlcXVlw7FhICgyMCB0YWphZGFzKSI7czo4OiJjYW50aWRhZCI7czoxOiIxIjtzOjE1OiJwcmVjaW9fdW5pdGFyaW8iO3M6NDoiNjIuNSI7czo1OiJ0b3RhbCI7ZDo2Mi41O3M6MTE6ImRlZGljYXRvcmlhIjtzOjE1OiJTaW4gZGVkaWNhdG9yaWEiO31zOjExOiJzZXJ2aWNpby0xNSI7YTo2OntzOjI6ImlkIjtpOjE1O3M6Njoibm9tYnJlIjtzOjI6IkRKIjtzOjg6ImNhbnRpZGFkIjtpOjE7czoxNToicHJlY2lvX3VuaXRhcmlvIjtzOjY6IjUwMC4wMCI7czo1OiJ0b3RhbCI7czo2OiI1MDAuMDAiO3M6NDoidGlwbyI7czo4OiJzZXJ2aWNpbyI7fX1zOjEzOiJ0b3RhbF9jYXJyaXRvIjtzOjU6IjU2Mi41IjtzOjE0OiJtZXRvZG9fZW50cmVnYSI7czoxNjoiUmVjb2pvIGVuIHRpZW5kYSI7czoxNzoiZGlyZWNjaW9uX2VudHJlZ2EiO3M6MTc6IlJlY29nZXIgZW4gdGllbmRhIjtzOjEzOiJmZWNoYV9lbnRyZWdhIjtzOjEwOiIyMDI0LTEyLTEyIjtzOjEyOiJob3JhX2VudHJlZ2EiO3M6NToiMTQ6MDAiO30=', 1733907949);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `personal_team` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `teams`
--

INSERT INTO `teams` (`id`, `user_id`, `name`, `personal_team`, `created_at`, `updated_at`) VALUES
(1, 3, 'Prueba\'s Team', 1, '2024-11-11 10:45:52', '2024-11-11 10:45:52'),
(2, 4, 'chebas\'s Team', 1, '2024-11-22 00:54:19', '2024-11-22 00:54:19'),
(3, 5, 'Manuel\'s Team', 1, '2024-11-23 02:21:53', '2024-11-23 02:21:53'),
(4, 6, 'andrea\'s Team', 1, '2024-11-23 02:31:11', '2024-11-23 02:31:11'),
(5, 8, 'Adrian\'s Team', 1, '2024-11-23 04:44:45', '2024-11-23 04:44:45'),
(6, 11, 'Adrian\'s Team', 1, '2024-11-23 21:10:01', '2024-11-23 21:10:01'),
(7, 12, 'Chebas\'s Team', 1, '2024-11-25 10:32:19', '2024-11-25 10:32:19'),
(8, 13, 'Prueba\'s Team', 1, '2024-11-27 07:14:19', '2024-11-27 07:14:19'),
(9, 14, 'Prueba\'s Team', 1, '2024-11-27 20:52:07', '2024-11-27 20:52:07'),
(10, 15, 'chebas\'s Team', 1, '2024-12-09 23:39:41', '2024-12-09 23:39:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `team_invitations`
--

CREATE TABLE `team_invitations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `team_user`
--

CREATE TABLE `team_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tracking`
--

CREATE TABLE `tracking` (
  `id_tracking` bigint(20) UNSIGNED NOT NULL,
  `id_venta` bigint(20) UNSIGNED NOT NULL,
  `origen` varchar(100) NOT NULL,
  `destino` varchar(100) NOT NULL,
  `estado_actual` enum('Preparando envío','En proceso','Enviado','Entregado','Cancelado') NOT NULL DEFAULT 'En proceso',
  `fecha_despacho` datetime DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `hora_programada` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tracking`
--

INSERT INTO `tracking` (`id_tracking`, `id_venta`, `origen`, `destino`, `estado_actual`, `fecha_despacho`, `fecha_entrega`, `hora_programada`, `created_at`, `updated_at`) VALUES
(1, 1, 'Almacén central', 'Dirección no especificada', 'Enviado', '2024-11-25 00:00:00', NULL, NULL, '2024-11-23 05:34:44', '2024-11-25 11:40:48'),
(2, 2, 'Almacén central', 'Dirección no especificada', 'Enviado', '2024-11-27 00:00:00', NULL, NULL, '2024-11-23 09:09:53', '2024-11-25 19:36:00'),
(3, 3, 'Almacén central', 'Dirección no especificada', 'En proceso', NULL, NULL, NULL, '2024-11-23 09:17:43', '2024-11-25 10:50:55'),
(5, 6, 'Almacén central', 'Dirección no especificada', 'En proceso', NULL, NULL, NULL, '2024-11-23 09:49:57', '2024-11-23 09:49:57'),
(6, 7, 'Almacén central', 'Dirección no especificada', 'En proceso', NULL, NULL, NULL, '2024-11-23 09:53:36', '2024-11-23 09:53:36'),
(7, 15, 'Almacén central', 'Dirección no especificada', 'En proceso', NULL, NULL, NULL, '2024-11-23 10:21:47', '2024-11-23 10:21:47'),
(8, 21, 'Almacén central', 'Dirección no especificada', 'En proceso', NULL, NULL, NULL, '2024-11-23 10:40:52', '2024-11-23 10:40:52'),
(9, 22, 'Almacén central', 'Dirección no especificada', 'En proceso', NULL, NULL, NULL, '2024-11-23 18:17:44', '2024-11-23 18:17:44'),
(10, 23, 'Almacén central', 'Dirección no especificada', 'En proceso', NULL, NULL, NULL, '2024-11-23 19:14:26', '2024-11-23 19:14:26'),
(11, 24, 'Almacén central', 'Dirección no especificada', 'En proceso', NULL, NULL, NULL, '2024-11-23 20:05:25', '2024-11-23 20:05:25'),
(12, 26, 'Almacén central', 'Dirección no especificada', 'Enviado', '2024-11-25 00:00:00', NULL, NULL, '2024-11-25 11:23:49', '2024-11-25 18:05:07'),
(13, 27, 'Almacén central', 'Dirección no especificada', 'Cancelado', NULL, NULL, NULL, '2024-11-26 07:43:08', '2024-11-26 08:12:00'),
(14, 28, 'Almacén central', 'Dirección no especificada', 'En proceso', NULL, NULL, NULL, '2024-11-26 07:59:15', '2024-11-26 07:59:15'),
(15, 29, 'Almacén central', 'Dirección no especificada', 'Entregado', NULL, NULL, NULL, '2024-11-26 08:07:10', '2024-11-26 08:10:31'),
(16, 30, 'Almacén central', 'Dirección no especificada', 'En proceso', '2024-11-27 00:00:00', NULL, NULL, '2024-11-26 20:28:02', '2024-11-26 20:31:57'),
(17, 31, 'Almacén central', 'Dirección no especificada', 'En proceso', NULL, NULL, NULL, '2024-11-27 04:51:14', '2024-11-27 04:51:14'),
(18, 32, 'Almacén central', 'Dirección no especificada', 'En proceso', NULL, NULL, NULL, '2024-11-27 06:23:59', '2024-11-27 06:23:59'),
(19, 36, 'Almacén central', 'Dirección no especificada', 'En proceso', NULL, '2024-11-27', NULL, '2024-11-27 07:08:28', '2024-11-27 07:08:28'),
(20, 42, 'Almacén central', 'Dirección no especificada', 'En proceso', NULL, NULL, NULL, '2024-11-27 21:04:39', '2024-11-27 21:04:39'),
(21, 43, 'Almacén central', 'Recoger en tienda', 'En proceso', NULL, NULL, '12:00:00', '2024-11-27 21:11:05', '2024-11-27 21:11:05'),
(22, 49, 'Almacén central', 'Marsella 141, Lima 15007, Perú', 'En proceso', NULL, NULL, '12:00:00', '2024-11-27 16:53:40', '2024-11-27 16:53:40'),
(23, 50, 'Almacén central', 'Marsella 141, Lima 15007, Perú', 'En proceso', NULL, NULL, '07:59:00', '2024-11-27 16:56:04', '2024-11-27 16:56:04'),
(24, 51, 'Almacén central', 'Recoger en tienda', 'En proceso', NULL, NULL, '12:00:00', '2024-11-27 17:42:15', '2024-11-27 17:42:15'),
(25, 53, 'Almacén central', 'Recoger en tienda', 'En proceso', NULL, NULL, '09:09:00', '2024-11-27 17:48:16', '2024-11-27 17:48:16'),
(26, 54, 'Almacén central', 'Marsella 141, Lima 15007, Perú', 'En proceso', NULL, NULL, '12:22:00', '2024-11-27 17:49:28', '2024-11-27 17:49:28'),
(27, 56, 'Almacén central', 'Recoger en tienda', 'En proceso', NULL, NULL, '12:00:00', '2024-11-27 17:53:02', '2024-11-27 17:53:02'),
(28, 64, 'Almacén central', 'Marsella 141, Lima 15007, Perú', 'Preparando envío', NULL, NULL, '15:55:00', '2024-11-27 18:04:01', '2024-11-27 18:04:01'),
(29, 65, 'Almacén central', 'Marsella 141, Lima 15007, Perú', 'Preparando envío', NULL, NULL, '04:55:00', '2024-11-27 18:08:24', '2024-11-27 18:08:24'),
(30, 66, 'Almacén central', 'Recoger en tienda', 'Cancelado', '2024-11-27 00:00:00', NULL, '03:33:00', '2024-11-27 18:08:55', '2024-11-27 18:34:19'),
(31, 67, 'Almacén central', 'Recoger en tienda', 'Preparando envío', NULL, NULL, '04:44:00', '2024-11-27 18:43:49', '2024-11-27 18:43:49'),
(32, 68, 'Almacén central', 'Marsella 141, Lima 15007, Perú', 'Preparando envío', NULL, NULL, '05:55:00', '2024-11-27 19:14:38', '2024-11-27 19:14:38'),
(33, 69, 'Almacén central', 'Marsella 141, Lima 15007, Perú', 'Enviado', '2024-11-27 00:00:00', NULL, '04:44:00', '2024-11-27 19:31:05', '2024-11-27 21:24:29'),
(34, 70, 'Almacén central', 'Marsella 141, Lima 15007, Perú', 'Entregado', '2024-11-27 00:00:00', '2024-11-27', '04:44:00', '2024-11-27 19:33:02', '2024-11-27 21:24:08'),
(35, 71, 'Almacén central', 'Recoger en tienda', 'Entregado', '2024-11-27 00:00:00', '2024-11-27', '04:55:00', '2024-11-27 19:35:08', '2024-11-27 21:11:54'),
(36, 72, 'Almacén central', 'Marsella 141, Lima 15007, Perú', 'Entregado', '2024-11-27 00:00:00', '2024-11-27', '17:00:00', '2024-11-27 19:53:47', '2024-11-27 21:18:32'),
(37, 73, 'Almacén central', 'Recoger en tienda', 'Preparando envío', NULL, '2024-11-28', '23:33:00', '2024-11-28 02:52:08', '2024-11-28 02:52:08'),
(38, 80, 'Almacén central', 'Recoger en tienda', 'Preparando envío', NULL, '2024-11-28', '11:11:00', '2024-11-28 02:59:05', '2024-11-28 02:59:05'),
(39, 81, 'Almacén central', 'Recoger en tienda', 'Preparando envío', NULL, '2024-11-28', '11:11:00', '2024-11-28 03:05:47', '2024-11-28 03:05:47'),
(40, 82, 'Almacén central', 'Recoger en tienda', 'Preparando envío', NULL, '2024-11-28', '22:22:00', '2024-11-28 03:10:36', '2024-11-28 03:10:36'),
(41, 83, 'Almacén central', 'Recoger en tienda', 'Cancelado', '2024-11-28 00:00:00', NULL, '05:55:00', '2024-11-28 03:13:48', '2024-11-28 14:54:55'),
(42, 84, 'Almacén central', 'Recoger en tienda', 'En proceso', '2024-11-28 00:00:00', '2024-11-28', '05:05:00', '2024-11-28 03:15:23', '2024-11-28 14:54:15'),
(43, 85, 'Almacén central', 'Recoger en tienda', 'Preparando envío', NULL, '2024-12-07', '15:13:00', '2024-11-28 16:09:18', '2024-11-28 16:09:18'),
(44, 86, 'Almacén central', 'Pje. Cahuide 126, Ate 15022, Perú', 'Preparando envío', NULL, '2024-12-07', '08:59:00', '2024-11-28 16:11:07', '2024-11-28 16:11:07'),
(45, 87, 'Almacén central', 'Recoger en tienda', 'En proceso', NULL, '2024-11-28', '05:55:00', '2024-11-29 04:58:37', '2024-11-29 04:58:37'),
(46, 88, 'Almacén central', 'Recoger en tienda', 'En proceso', NULL, '2024-11-29', '11:01:00', '2024-11-29 05:03:51', '2024-11-29 05:03:51'),
(47, 91, 'Almacén central', 'Pje. Cahuide 126, Ate 15022, Perú', 'En proceso', '2024-11-29 00:00:00', NULL, '11:22:00', '2024-11-29 05:26:04', '2024-11-29 15:29:22'),
(48, 92, 'Almacén central', 'Recoger en tienda', 'Preparando envío', NULL, NULL, '05:55:00', '2024-11-29 15:39:27', '2024-11-29 15:39:27'),
(49, 93, 'Almacén central', 'Recoger en tienda', 'Preparando envío', NULL, NULL, '05:55:00', '2024-11-29 15:44:29', '2024-11-29 15:44:29'),
(50, 94, 'Almacén central', 'Pabellón 10, Santa Anita 15011, Perú', 'Preparando envío', NULL, NULL, '05:55:00', '2024-11-29 16:30:50', '2024-11-29 16:30:50'),
(51, 95, 'Almacén central', 'Recoger en tienda', 'Preparando envío', NULL, NULL, '05:05:00', '2024-11-29 16:31:45', '2024-11-29 16:31:45'),
(52, 97, 'Almacén central', 'Pje. Cahuide 126, Ate 15022, Perú', 'Preparando envío', NULL, NULL, '11:11:00', '2024-11-30 04:21:04', '2024-11-30 04:21:04'),
(53, 98, 'Almacén central', 'Recoger en tienda', 'En proceso', '2024-11-29 00:00:00', NULL, '05:55:00', '2024-11-30 04:24:36', '2024-11-30 04:25:31'),
(54, 99, 'Almacén central', 'Recoger en tienda', 'Preparando envío', NULL, NULL, '16:00:00', '2024-11-30 15:42:24', '2024-11-30 15:42:24'),
(55, 100, 'Almacén central', 'Recoger en tienda', 'Preparando envío', NULL, NULL, '05:55:00', '2024-11-30 15:56:50', '2024-11-30 15:56:50'),
(56, 101, 'Almacén central', 'Recoger en tienda', 'Preparando envío', NULL, NULL, '22:02:00', '2024-11-30 19:21:07', '2024-11-30 19:21:07'),
(57, 102, 'Almacén central', 'Pje. Cahuide 126, Ate 15022, Perú', 'Preparando envío', NULL, NULL, '04:04:00', '2024-12-01 01:36:51', '2024-12-01 01:36:51'),
(58, 103, 'Almacén central', 'Av. Garcilaso de la Vega 1698, Lima 15046, Perú', 'Preparando envío', NULL, NULL, '11:01:00', '2024-12-01 03:28:09', '2024-12-01 03:28:09'),
(59, 104, 'Almacén central', 'Recoger en tienda', 'Preparando envío', NULL, NULL, '04:44:00', '2024-12-01 03:29:03', '2024-12-01 03:29:03'),
(60, 105, 'Almacén central', 'Av. Garcilaso de la Vega 1698, Lima 15046, Perú', 'Preparando envío', NULL, NULL, '11:01:00', '2024-12-01 03:36:27', '2024-12-01 03:36:27'),
(61, 106, 'Almacén central', 'Recoger en tienda', 'Preparando envío', NULL, NULL, '04:44:00', '2024-12-01 03:48:56', '2024-12-01 03:48:56'),
(62, 107, 'Almacén central', 'Recoger en tienda', 'Preparando envío', NULL, NULL, '04:44:00', '2024-12-01 04:00:56', '2024-12-01 04:00:56'),
(63, 108, 'Almacén central', 'Av. Garcilaso de la Vega 1698, Lima 15046, Perú', 'Preparando envío', NULL, NULL, '11:01:00', '2024-12-01 04:01:59', '2024-12-01 04:01:59'),
(64, 109, 'Almacén central', 'Dirección no especificada', 'Preparando envío', NULL, '2024-12-03', '12:00:00', '2024-12-03 21:42:42', '2024-12-03 21:42:42'),
(65, 110, 'Almacén central', 'Av. Bausate y Meza 1769, La Victoria 15018, Perú', 'Preparando envío', NULL, NULL, '04:44:00', '2024-12-03 22:07:17', '2024-12-03 22:07:17'),
(66, 111, 'Almacén central', 'Recoger en tienda', 'Preparando envío', NULL, NULL, '08:59:00', '2024-12-03 22:08:11', '2024-12-03 22:08:11'),
(67, 112, 'Almacén central', 'Av. Bausate y Meza 1769, La Victoria 15018, Perú', 'Preparando envío', NULL, NULL, '22:02:00', '2024-12-03 22:27:00', '2024-12-03 22:27:00'),
(68, 113, 'Almacén central', 'Recoger en tienda', 'Preparando envío', NULL, '2024-12-03', NULL, '2024-12-03 22:33:06', '2024-12-03 22:33:06'),
(69, 114, 'Almacén central', 'Recoger en tienda', 'Preparando envío', NULL, '2024-12-03', '22:02:00', '2024-12-03 22:35:25', '2024-12-03 22:35:25'),
(70, 115, 'Almacén central', 'Av. Bausate y Meza 1769, La Victoria 15018, Perú', 'Preparando envío', NULL, NULL, '22:02:00', '2024-12-03 22:37:59', '2024-12-03 22:37:59'),
(71, 116, 'Almacén central', 'Av. Bausate y Meza 1769, La Victoria 15018, Perú', 'Preparando envío', NULL, NULL, '12:02:00', '2024-12-03 22:41:07', '2024-12-03 22:41:07'),
(72, 117, 'Almacén central', 'Av. Bausate y Meza 1769, La Victoria 15018, Perú', 'Preparando envío', NULL, NULL, '22:02:00', '2024-12-03 22:42:21', '2024-12-03 22:42:21'),
(73, 118, 'Almacén central', 'Av. Bausate y Meza 1769, La Victoria 15018, Perú', 'Preparando envío', NULL, NULL, '05:55:00', '2024-12-03 22:42:58', '2024-12-03 22:42:58'),
(74, 119, 'Almacén central', 'Recoger en tienda', 'Preparando envío', NULL, '2024-12-04', '05:05:00', '2024-12-03 22:43:35', '2024-12-03 22:43:35'),
(75, 120, 'Almacén central', 'Av. Bausate y Meza 1769, La Victoria 15018, Perú', 'Preparando envío', NULL, '2024-12-03', '05:55:00', '2024-12-03 22:51:52', '2024-12-03 22:51:52'),
(76, 121, 'Almacén central', 'Recoger en tienda', 'Preparando envío', NULL, '2024-12-03', '12:31:00', '2024-12-03 23:07:18', '2024-12-03 23:07:18'),
(77, 122, 'Almacén central', 'Av. Bausate y Meza 1769, La Victoria 15018, Perú', 'Preparando envío', NULL, '2024-12-03', '05:55:00', '2024-12-03 23:08:10', '2024-12-03 23:08:10'),
(78, 123, 'Almacén central', 'la marsella 157', 'Cancelado', NULL, '2024-12-03', '05:30:00', '2024-12-03 23:46:29', '2024-12-04 02:37:26'),
(79, 124, 'Almacén central', 'Av. Bausate y Meza 1769, La Victoria 15018, Perú', 'Preparando envío', NULL, '2024-12-04', '17:00:00', '2024-12-04 04:10:04', '2024-12-04 04:10:04'),
(80, 125, 'Almacén central', 'Marsella 175-127', 'Preparando envío', NULL, '2024-12-05', '17:00:00', '2024-12-05 05:14:44', '2024-12-05 05:14:44'),
(81, 126, 'Almacén central', 'Av. Bausate y Meza 1769, La Victoria 15018, Perú', 'Preparando envío', NULL, '2024-12-07', '04:22:00', '2024-12-07 00:20:53', '2024-12-07 00:20:53'),
(82, 127, 'Almacén central', 'Recoger en tienda', 'Preparando envío', NULL, '2024-12-07', '17:00:00', '2024-12-07 16:29:53', '2024-12-07 16:29:53'),
(83, 128, 'Almacén central', 'Recoger en tienda', 'Preparando envío', NULL, '2024-12-07', '22:02:00', '2024-12-07 16:32:01', '2024-12-07 16:32:01'),
(84, 131, 'Almacén central', 'Recoger en tienda', 'Preparando envío', NULL, '2024-12-07', '22:02:00', '2024-12-07 20:38:18', '2024-12-07 20:38:18'),
(85, 132, 'Almacén central', 'Recoger en tienda', 'Cancelado', NULL, '2024-12-07', '22:22:00', '2024-12-07 20:41:12', '2024-12-07 23:17:38'),
(86, 133, 'Almacén central', 'Recoger en tienda', 'Preparando envío', '2024-12-09 00:00:00', '2024-12-07', '12:22:00', '2024-12-08 02:34:28', '2024-12-09 22:58:45'),
(87, 134, 'Almacén central', 'C. Fermin Tanguis 160, La Victoria 15034, Perú', 'Preparando envío', '2024-12-10 19:31:00', '2024-12-10', '09:17:00', '2024-12-09 23:18:48', '2024-12-11 00:31:23'),
(88, 135, 'Almacén central', 'Recoger en tienda', 'Preparando envío', '2024-12-10 19:31:00', '2024-12-10', '15:15:00', '2024-12-10 02:16:26', '2024-12-11 00:31:18'),
(89, 136, 'Almacén central', 'Recoger en tienda', 'Preparando envío', '2024-12-10 19:31:00', '2024-12-11', '16:30:00', '2024-12-10 17:30:23', '2024-12-11 00:31:12'),
(90, 138, 'Almacén central', 'Recoger en tienda', 'Preparando envío', '2024-12-10 19:31:00', '2024-12-11', '11:11:00', '2024-12-10 17:37:48', '2024-12-11 00:31:06'),
(91, 139, 'Almacén central', 'Recoger en tienda', 'Preparando envío', '2024-12-10 19:30:00', '2024-12-10', '12:31:00', '2024-12-10 17:43:21', '2024-12-11 00:31:00'),
(92, 140, 'Almacén central', 'Recoger en tienda', 'Entregado', '2024-12-10 19:30:00', '2024-12-11', '14:44:00', '2024-12-10 17:50:08', '2024-12-11 00:30:55'),
(93, 141, 'Almacén central', 'Recoger en tienda', 'Entregado', '2024-12-10 19:26:00', '2024-12-11', '09:44:00', '2024-12-10 18:03:51', '2024-12-11 00:26:28'),
(94, 142, 'Almacén central', 'C. Fermin Tanguis 160, La Victoria 15034, Perú', 'Cancelado', '2024-12-10 19:26:00', '2024-12-10', '16:00:00', '2024-12-10 18:05:03', '2024-12-11 00:26:23'),
(95, 143, 'Almacén central', 'Recoger en tienda', 'Cancelado', '2024-12-10 19:30:00', '2024-12-14', '14:00:00', '2024-12-10 23:27:46', '2024-12-11 00:30:44'),
(96, 144, 'Almacén central', 'Recoger en tienda', 'Preparando envío', NULL, '2024-12-10', '11:13:00', '2024-12-11 02:14:15', '2024-12-11 02:14:15'),
(97, 145, 'Almacén central', 'Recoger en tienda', 'Preparando envío', NULL, '2024-12-11', '16:35:00', '2024-12-11 02:36:06', '2024-12-11 02:36:06'),
(98, 146, 'Almacén central', 'Marsella 169, Lima 15007, Perú', 'Preparando envío', NULL, '2024-12-11', '15:44:00', '2024-12-11 02:44:40', '2024-12-11 02:44:40'),
(99, 147, 'Almacén central', 'Recoger en tienda', 'Preparando envío', NULL, '2024-12-11', '13:49:00', '2024-12-11 02:49:40', '2024-12-11 02:49:40'),
(100, 148, 'Almacén central', 'Recoger en tienda', 'Preparando envío', NULL, '2024-12-12', '16:00:00', '2024-12-11 06:55:05', '2024-12-11 06:55:05'),
(101, 149, 'Almacén central', 'Av. Aviación 1520, La Victoria 15034, Perú', 'Preparando envío', NULL, '2024-12-11', '11:44:00', '2024-12-11 06:56:18', '2024-12-11 06:56:18'),
(102, 150, 'Almacén central', 'Av. Aviación 1520, La Victoria 15034, Perú', 'Preparando envío', NULL, '2024-12-12', '15:00:00', '2024-12-11 06:57:43', '2024-12-11 06:57:43'),
(103, 151, 'Almacén central', 'Recoger en tienda', 'Preparando envío', NULL, '2024-12-12', '17:00:00', '2024-12-11 07:01:15', '2024-12-11 07:01:15'),
(104, 152, 'Almacén central', 'Av. Aviación 1520, La Victoria 15034, Perú', 'Cancelado', '2024-12-11 03:37:00', '2024-12-12', '09:29:00', '2024-12-11 08:24:02', '2024-12-11 08:40:24'),
(105, 153, 'Almacén central', 'Pabellón 1, Santa Anita 15011, Perú', 'Preparando envío', NULL, '2024-12-11', '21:00:00', '2024-12-11 18:09:13', '2024-12-11 18:09:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_rol` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `id_rol`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`, `telefono`) VALUES
(1, 1, 'Test User', 'test@example.com', '2024-11-11 09:38:55', '$2y$12$UJXR0BBYi/4RQYmzk2NJGOa82.aUP/pBtDdwxY.EEzavG5uGGgRK2', NULL, NULL, NULL, 'kJbj0j4mgW', NULL, NULL, '2024-11-11 09:38:56', '2024-12-09 23:51:49', '913974156'),
(3, 2, 'Prueba', 'prueba@prueba.com', NULL, '$2y$12$rN8G30O2aGfe7OPLGt8FYOB5z/RPM70B1YH.2McQiMLSRZbskmF4i', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-11 10:45:52', '2024-11-25 18:06:05', NULL),
(4, 2, 'chebas', 'pruebas@prueba.com', NULL, '$2y$12$2gTCU8PKB/AjvBlOfadgGOxSXN.9zAk8ulvdQkllBBTd8UJ8Y.IVu', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-22 00:54:18', '2024-11-25 18:06:10', NULL),
(5, 2, 'Manuel Rodriguez', 'msrj743@gmail.com', NULL, '$2y$12$3ieFsOLIM/SPgan/FnHh6O.xokq31RRTsu0M0FZp.h2aGV7D86ERu', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-23 02:21:52', '2024-11-25 18:06:24', NULL),
(6, 2, 'andrea', 'manuel.rodriguez.j@tecsup.edu.pe', NULL, '$2y$12$R5avffQq9VhZrLtZVXMiwuR2OGJnaA8APxx3WJovLUy6YIQl2bOTa', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-23 02:31:11', '2024-11-25 18:06:15', NULL),
(8, 2, 'Adrian Heredia', 'asdasd@fasda.com', NULL, '$2y$12$2e090MDJGPKrtafwtS5bVet6HhiQBuGuvUngKkMffIeoamtP5Gth6', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-23 04:44:44', '2024-11-25 18:06:30', NULL),
(10, 1, 'Administrador', 'admin@example.com', NULL, '$2y$12$xdgwqb3xE3uB9CjFC4gnl.W4jka60jdrUc1mw0YLE/4/GkXhHvJ1S', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-23 20:21:27', '2024-11-23 20:21:27', NULL),
(11, 2, 'Adrian Heredia', 'angela@prueba.com', NULL, '$2y$12$l3cWZI8d6ve/62ZTF/GsR.LOVWZRixwaY8linrIpEhv7Rm8T4gUAS', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-23 21:10:00', '2024-11-23 21:10:00', NULL),
(12, 2, 'Chebas', 'asdas@prueba', NULL, '$2y$12$nqXImhGx9TlzNyB4BSEKHeRxBKlFkyUqGzoORiJSVG/98JkXNxkg.', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-25 10:32:19', '2024-11-25 18:06:59', NULL),
(13, 2, 'Prueba', 'prueba@example.com', NULL, '$2y$12$x6EI.XxwudvGGJCOl./w4.BxzVEZHUQMVmcq0JZBxu4PtSwd1eLpS', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-27 07:14:18', '2024-11-27 07:14:18', NULL),
(14, 2, 'Prueba Admin', 'prueba@aromatriada.com', NULL, '$2y$12$RERJNFr7sFzPMkTUbUHaHuFFpajtvAWehH1iKd2zcFpzDHvBXcjSa', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-27 20:52:06', '2024-11-27 20:52:06', NULL),
(15, 2, 'chebas', 'msrj743@adasd.com', NULL, '$2y$12$NMi0Ba4aJXv82v3jXSrFw.vrEd59siUkpN7jc9NhEwys26M7OVzX6', NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-09 23:39:40', '2024-12-09 23:39:40', '913988385');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `id_pedido` bigint(20) UNSIGNED NOT NULL,
  `fecha` date DEFAULT NULL,
  `estado` enum('En proceso','Enviado','Entregado','Cancelado') NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `metodo_entrega` varchar(255) DEFAULT NULL,
  `direccion_entrega` text DEFAULT NULL,
  `id_usuario` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `metodo_pago` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`id_pedido`, `fecha`, `estado`, `total`, `metodo_entrega`, `direccion_entrega`, `id_usuario`, `created_at`, `updated_at`, `metodo_pago`) VALUES
(1, '2024-10-23', 'Enviado', 150.00, NULL, NULL, 8, '2024-11-23 05:34:44', '2024-11-25 11:18:56', NULL),
(2, '2024-11-23', 'Enviado', 100.00, NULL, NULL, 6, '2024-11-23 09:09:53', '2024-11-25 19:36:00', NULL),
(3, '2024-11-23', 'En proceso', 100.00, NULL, NULL, 6, '2024-11-23 09:17:43', '2024-11-23 09:17:43', NULL),
(5, '2024-11-23', 'En proceso', 150.00, NULL, NULL, 6, '2024-11-23 09:43:06', '2024-11-23 09:43:06', NULL),
(6, '2024-11-23', 'En proceso', 150.00, NULL, NULL, 6, '2024-11-23 09:49:57', '2024-11-23 09:49:57', NULL),
(7, '2024-11-23', 'En proceso', 375.00, NULL, NULL, 6, '2024-11-23 09:53:36', '2024-11-23 09:53:36', NULL),
(8, '2024-11-23', 'En proceso', 680.00, NULL, NULL, 6, '2024-11-23 10:00:07', '2024-11-23 10:00:07', NULL),
(9, '2024-11-23', 'En proceso', 680.00, NULL, NULL, 6, '2024-11-23 10:06:52', '2024-11-23 10:06:52', NULL),
(10, '2024-11-23', 'En proceso', 680.00, NULL, NULL, 6, '2024-11-23 10:09:43', '2024-11-23 10:09:43', NULL),
(11, '2024-11-23', 'En proceso', 680.00, NULL, NULL, 6, '2024-11-23 10:13:05', '2024-11-23 10:13:05', NULL),
(12, '2024-11-23', 'En proceso', 680.00, NULL, NULL, 6, '2024-11-23 10:16:21', '2024-11-23 10:16:21', NULL),
(13, '2024-11-23', 'En proceso', 680.00, NULL, NULL, 6, '2024-11-23 10:18:54', '2024-11-23 10:18:54', NULL),
(14, '2024-11-23', 'En proceso', 680.00, NULL, NULL, 6, '2024-11-23 10:20:47', '2024-11-23 10:20:47', NULL),
(15, '2024-11-23', 'En proceso', 680.00, NULL, NULL, 6, '2024-11-23 10:21:47', '2024-11-23 10:21:47', NULL),
(16, '2024-11-23', 'En proceso', 100.00, NULL, NULL, 6, '2024-11-23 10:29:38', '2024-11-23 10:29:38', NULL),
(17, '2024-11-23', 'En proceso', 100.00, NULL, NULL, 6, '2024-11-23 10:35:40', '2024-11-23 10:35:40', NULL),
(18, '2024-11-23', 'En proceso', 300.00, NULL, NULL, 6, '2024-11-23 10:37:02', '2024-11-23 10:37:02', NULL),
(19, '2024-11-23', 'En proceso', 300.00, NULL, NULL, 6, '2024-11-23 10:39:02', '2024-11-23 10:39:02', NULL),
(20, '2024-11-23', 'En proceso', 300.00, NULL, NULL, 6, '2024-11-23 10:40:17', '2024-11-23 10:40:17', NULL),
(21, '2024-11-23', 'En proceso', 300.00, NULL, NULL, 6, '2024-11-23 10:40:52', '2024-11-23 10:40:52', NULL),
(22, '2024-11-23', 'En proceso', 150.00, NULL, NULL, 6, '2024-11-23 18:17:44', '2024-11-23 18:17:44', NULL),
(23, '2024-11-23', 'En proceso', 75.00, NULL, NULL, 6, '2024-11-23 19:14:26', '2024-11-23 19:14:26', NULL),
(24, '2024-11-23', 'En proceso', 225.00, NULL, NULL, 6, '2024-11-23 20:05:25', '2024-11-23 20:05:25', NULL),
(25, '2024-11-25', 'En proceso', 250.00, NULL, NULL, 12, '2024-11-25 11:21:54', '2024-11-25 11:21:54', 'Tarjeta de crédito'),
(26, '2024-12-25', 'Enviado', 250.00, NULL, NULL, 12, '2024-11-25 11:23:49', '2024-11-25 18:05:07', 'Tarjeta de crédito'),
(27, '2024-11-26', 'Cancelado', 100.00, NULL, NULL, 10, '2024-11-26 07:43:08', '2024-11-26 08:12:00', 'Tarjeta de crédito'),
(28, '2024-11-26', 'En proceso', 150.00, NULL, NULL, 10, '2024-11-26 07:59:15', '2024-11-26 07:59:15', 'Tarjeta de crédito'),
(29, '2024-11-26', 'Entregado', 250.00, NULL, NULL, 10, '2024-11-26 08:07:10', '2024-11-26 08:10:31', 'Tarjeta de crédito'),
(30, '2024-11-26', 'En proceso', 100.00, NULL, NULL, 10, '2024-11-26 20:28:02', '2024-11-26 20:28:02', 'Tarjeta de crédito'),
(31, '2024-11-26', 'En proceso', 100.00, NULL, NULL, 10, '2024-11-27 04:51:14', '2024-11-27 04:51:14', 'Tarjeta de crédito'),
(32, '2024-11-27', 'En proceso', 720.00, NULL, NULL, 10, '2024-11-27 06:23:59', '2024-11-27 06:23:59', 'Tarjeta de crédito'),
(33, '2024-11-27', 'En proceso', 180.00, NULL, NULL, 10, '2024-11-27 06:28:21', '2024-11-27 06:28:21', 'Tarjeta de crédito'),
(34, '2024-11-27', 'En proceso', 180.00, NULL, NULL, 10, '2024-11-27 06:51:30', '2024-11-27 06:51:30', 'Tarjeta de crédito'),
(35, '2024-11-27', 'En proceso', 180.00, NULL, NULL, 10, '2024-11-27 06:55:00', '2024-11-27 06:55:00', 'Tarjeta de crédito'),
(36, '2024-11-27', 'En proceso', 180.00, NULL, NULL, 10, '2024-11-27 07:08:28', '2024-11-27 07:08:28', 'Tarjeta de crédito'),
(37, '2024-11-27', 'En proceso', 0.00, NULL, NULL, 13, '2024-11-27 08:01:02', '2024-11-27 08:01:02', 'Tarjeta de crédito'),
(38, '2024-11-27', 'En proceso', 0.00, NULL, NULL, 13, '2024-11-27 08:01:30', '2024-11-27 08:01:30', 'Tarjeta de crédito'),
(39, '2024-11-27', 'En proceso', 0.00, NULL, NULL, 13, '2024-11-27 08:04:46', '2024-11-27 08:04:46', 'Tarjeta de crédito'),
(40, '2024-11-27', 'En proceso', 0.00, NULL, NULL, 13, '2024-11-27 08:07:04', '2024-11-27 08:07:04', 'Tarjeta de crédito'),
(41, '2024-11-27', 'En proceso', 0.00, NULL, NULL, 13, '2024-11-27 08:11:44', '2024-11-27 08:11:44', 'Tarjeta de crédito'),
(42, '2024-11-27', 'En proceso', 50.00, NULL, NULL, 14, '2024-11-27 21:04:38', '2024-11-27 21:04:38', 'Tarjeta de crédito'),
(43, '2024-11-27', 'En proceso', 50.00, NULL, NULL, 14, '2024-11-27 21:11:05', '2024-11-27 21:11:05', 'Tarjeta de crédito'),
(44, '2024-11-27', 'En proceso', 60.00, NULL, NULL, 14, '2024-11-27 21:19:33', '2024-11-27 21:19:33', 'Tarjeta de crédito'),
(45, '2024-11-27', 'En proceso', 60.00, NULL, NULL, 14, '2024-11-27 16:23:18', '2024-11-27 16:23:18', 'Tarjeta de crédito'),
(46, '2024-11-27', 'En proceso', 60.00, NULL, NULL, 14, '2024-11-27 16:24:14', '2024-11-27 16:24:14', 'Tarjeta de crédito'),
(47, '2024-11-27', 'En proceso', 60.00, NULL, NULL, 14, '2024-11-27 16:25:01', '2024-11-27 16:25:01', 'Tarjeta de crédito'),
(48, '2024-11-27', 'En proceso', 60.00, NULL, NULL, 14, '2024-11-27 16:27:04', '2024-11-27 16:27:04', 'Tarjeta de crédito'),
(49, '2024-11-27', 'En proceso', 60.00, NULL, NULL, 14, '2024-11-27 16:53:40', '2024-11-27 16:53:40', 'Tarjeta de crédito'),
(50, '2024-11-27', 'En proceso', 160.00, NULL, NULL, 14, '2024-11-27 16:56:03', '2024-11-27 16:56:03', 'Tarjeta de crédito'),
(51, '2024-11-27', 'En proceso', 50.00, NULL, NULL, 14, '2024-11-27 17:42:15', '2024-11-27 17:42:15', 'Tarjeta de crédito'),
(52, '2024-11-27', 'En proceso', 50.00, NULL, NULL, 14, '2024-11-27 17:47:01', '2024-11-27 17:47:01', 'Tarjeta de crédito'),
(53, '2024-11-27', 'En proceso', 50.00, NULL, NULL, 14, '2024-11-27 17:48:16', '2024-11-27 17:48:16', 'Tarjeta de crédito'),
(54, '2024-11-27', 'En proceso', 250.00, NULL, NULL, 14, '2024-11-27 17:49:28', '2024-11-27 17:49:28', 'Tarjeta de crédito'),
(55, '2024-11-27', 'En proceso', 50.00, NULL, NULL, 14, '2024-11-27 17:52:30', '2024-11-27 17:52:30', 'Tarjeta de crédito'),
(56, '2024-11-27', 'En proceso', 50.00, NULL, NULL, 14, '2024-11-27 17:53:02', '2024-11-27 17:53:02', 'Tarjeta de crédito'),
(57, '2024-11-27', 'En proceso', 180.00, NULL, NULL, 14, '2024-11-27 18:00:34', '2024-11-27 18:00:34', 'Tarjeta de crédito'),
(58, '2024-11-27', 'En proceso', 180.00, NULL, NULL, 14, '2024-11-27 18:00:57', '2024-11-27 18:00:57', 'Tarjeta de crédito'),
(59, '2024-11-27', 'En proceso', 180.00, NULL, NULL, 14, '2024-11-27 18:01:12', '2024-11-27 18:01:12', 'Tarjeta de crédito'),
(60, '2024-11-27', 'En proceso', 180.00, NULL, NULL, 14, '2024-11-27 18:01:23', '2024-11-27 18:01:23', 'Tarjeta de crédito'),
(61, '2024-11-27', 'En proceso', 180.00, NULL, NULL, 14, '2024-11-27 18:01:33', '2024-11-27 18:01:33', 'Tarjeta de crédito'),
(62, '2024-11-27', 'En proceso', 180.00, NULL, NULL, 14, '2024-11-27 18:01:46', '2024-11-27 18:01:46', 'Tarjeta de crédito'),
(63, '2024-11-27', 'En proceso', 180.00, NULL, NULL, 14, '2024-11-27 18:02:53', '2024-11-27 18:02:53', 'Tarjeta de crédito'),
(64, '2024-11-27', 'En proceso', 180.00, NULL, NULL, 14, '2024-11-27 18:04:01', '2024-11-27 18:04:01', 'Tarjeta de crédito'),
(65, '2024-11-27', 'En proceso', 300.00, NULL, NULL, 14, '2024-11-27 18:08:24', '2024-11-27 18:08:24', 'Tarjeta de crédito'),
(66, '2024-11-27', 'Cancelado', 50.00, NULL, NULL, 14, '2024-11-27 18:08:55', '2024-11-27 18:34:19', 'Tarjeta de crédito'),
(67, '2024-11-27', 'En proceso', 60.00, NULL, NULL, 14, '2024-11-27 18:43:49', '2024-11-27 18:43:49', 'Tarjeta de crédito'),
(68, '2024-11-27', 'En proceso', 50.00, NULL, NULL, 14, '2024-11-27 19:14:38', '2024-11-27 19:14:38', 'Tarjeta de crédito'),
(69, '2024-11-27', 'En proceso', 280.00, NULL, NULL, 14, '2024-11-27 19:31:04', '2024-11-27 19:31:04', 'Tarjeta de crédito'),
(70, '2024-11-27', 'En proceso', 280.00, NULL, NULL, 14, '2024-11-27 19:33:02', '2024-11-27 19:33:02', 'Tarjeta de crédito'),
(71, '2024-11-27', 'Entregado', 60.00, 'Delivery', 'Recoger en tienda', 14, '2024-11-27 19:35:08', '2024-11-27 21:11:54', 'Tarjeta de crédito'),
(72, '2024-11-27', 'Entregado', 580.00, 'Delivery', 'Marsella 141, Lima 15007, Perú', 14, '2024-11-27 19:53:47', '2024-11-27 20:18:17', 'Tarjeta de crédito'),
(73, '2024-11-27', 'En proceso', 200.00, 'Delivery', 'Recoger en tienda', 14, '2024-11-28 02:52:08', '2024-11-28 02:52:08', 'Tarjeta de crédito'),
(74, '2024-11-27', 'En proceso', 50.00, 'Delivery', NULL, 14, '2024-11-28 02:57:42', '2024-11-28 02:57:42', 'Tarjeta de crédito'),
(75, '2024-11-27', 'En proceso', 50.00, 'Delivery', NULL, 14, '2024-11-28 02:58:04', '2024-11-28 02:58:04', 'Tarjeta de crédito'),
(76, '2024-11-27', 'En proceso', 50.00, 'Delivery', NULL, 14, '2024-11-28 02:58:21', '2024-11-28 02:58:21', 'Tarjeta de crédito'),
(77, '2024-11-27', 'En proceso', 50.00, 'Delivery', NULL, 14, '2024-11-28 02:58:30', '2024-11-28 02:58:30', 'Tarjeta de crédito'),
(78, '2024-11-27', 'En proceso', 50.00, 'Delivery', NULL, 14, '2024-11-28 02:58:35', '2024-11-28 02:58:35', 'Tarjeta de crédito'),
(79, '2024-11-27', 'En proceso', 50.00, 'Delivery', NULL, 14, '2024-11-28 02:58:44', '2024-11-28 02:58:44', 'Tarjeta de crédito'),
(80, '2024-11-27', 'En proceso', 50.00, 'Delivery', 'Recoger en tienda', 14, '2024-11-28 02:59:05', '2024-11-28 02:59:05', 'Tarjeta de crédito'),
(81, '2024-11-27', 'En proceso', 50.00, 'Delivery', 'Recoger en tienda', 14, '2024-11-28 03:05:47', '2024-11-28 03:05:47', 'Tarjeta de crédito'),
(82, '2024-11-27', 'En proceso', 50.00, 'Delivery', 'Recoger en tienda', 14, '2024-11-28 03:10:36', '2024-11-28 03:10:36', 'Tarjeta de crédito'),
(83, '2024-11-27', 'En proceso', 50.00, 'Delivery', 'Recoger en tienda', 14, '2024-11-28 03:13:48', '2024-11-28 03:13:48', 'Tarjeta de crédito'),
(84, '2024-11-27', 'En proceso', 50.00, 'Delivery', 'Recoger en tienda', 14, '2024-11-28 03:15:23', '2024-11-28 03:15:23', 'Tarjeta de crédito'),
(85, '2024-11-28', 'En proceso', 150.00, 'Recoger en tienda', 'Recoger en tienda', 10, '2024-11-28 16:09:18', '2024-11-28 16:09:18', 'Tarjeta de crédito'),
(86, '2024-11-28', 'En proceso', 300.00, 'Delivery', 'Pje. Cahuide 126, Ate 15022, Perú', 10, '2024-11-28 16:11:07', '2024-11-28 16:11:07', 'Tarjeta de crédito'),
(87, '2024-11-28', 'En proceso', 50.00, NULL, NULL, 10, '2024-11-29 04:58:37', '2024-11-29 04:58:37', 'Tarjeta de crédito'),
(88, '2024-11-29', 'En proceso', 50.00, NULL, NULL, 10, '2024-11-29 05:03:51', '2024-11-29 05:03:51', 'Tarjeta de crédito'),
(89, '2024-11-29', 'En proceso', 50.00, 'Delivery', 'Recoger en tienda', 10, '2024-11-29 05:24:31', '2024-11-29 05:24:31', 'Tarjeta de crédito'),
(90, '2024-11-29', 'En proceso', 50.00, 'Delivery', 'Pje. Cahuide 126, Ate 15022, Perú', 10, '2024-11-29 05:25:00', '2024-11-29 05:25:00', 'Tarjeta de crédito'),
(91, '2024-11-29', 'En proceso', 50.00, 'Delivery', 'Pje. Cahuide 126, Ate 15022, Perú', 10, '2024-11-29 05:26:04', '2024-11-29 05:26:04', 'Tarjeta de crédito'),
(92, '2024-11-29', 'En proceso', 130.00, 'Delivery', 'Recoger en tienda', 10, '2024-11-29 15:39:27', '2024-11-29 15:39:27', 'Tarjeta de crédito'),
(93, '2024-11-29', 'En proceso', 330.00, 'Delivery', 'Recoger en tienda', 10, '2024-11-29 15:44:29', '2024-11-29 15:44:29', 'Tarjeta de crédito'),
(94, '2024-11-29', 'En proceso', 180.00, 'Delivery', 'Pabellón 10, Santa Anita 15011, Perú', 10, '2024-11-29 16:30:50', '2024-11-29 16:30:50', 'Tarjeta de crédito'),
(95, '2024-11-29', 'En proceso', 100.00, 'Delivery', 'Recoger en tienda', 10, '2024-11-29 16:31:45', '2024-11-29 16:31:45', 'Tarjeta de crédito'),
(96, '2024-11-29', 'En proceso', 80.00, 'Delivery', 'X22W+FXR, Santa Anita 15011, Perú', 10, '2024-11-29 16:41:22', '2024-11-29 16:41:22', 'Tarjeta de crédito'),
(97, '2024-11-29', 'En proceso', 760.00, 'Delivery', 'Pje. Cahuide 126, Ate 15022, Perú', 10, '2024-11-30 04:21:04', '2024-11-30 04:21:04', 'Tarjeta de crédito'),
(98, '2024-11-29', 'En proceso', 160.00, 'Delivery', 'Recoger en tienda', 10, '2024-11-30 04:24:36', '2024-11-30 04:24:36', 'Tarjeta de crédito'),
(99, '2024-11-30', 'En proceso', 160.00, 'Delivery', 'Recoger en tienda', 10, '2024-11-30 15:42:24', '2024-11-30 15:42:24', 'Tarjeta de crédito'),
(100, '2024-11-30', 'En proceso', 640.00, 'Delivery', 'Recoger en tienda', 10, '2024-11-30 15:56:50', '2024-11-30 15:56:50', 'Tarjeta de crédito'),
(101, '2024-11-30', 'En proceso', 920.00, 'Delivery', 'Recoger en tienda', 10, '2024-11-30 19:21:07', '2024-11-30 19:21:07', 'Tarjeta de crédito'),
(102, '2024-11-30', 'En proceso', 320.00, 'Delivery', 'Pje. Cahuide 126, Ate 15022, Perú', 10, '2024-12-01 01:36:51', '2024-12-01 01:36:51', 'Tarjeta de crédito'),
(103, '2024-11-30', 'En proceso', 460.00, 'Delivery', 'Av. Garcilaso de la Vega 1698, Lima 15046, Perú', 10, '2024-12-01 03:28:09', '2024-12-01 03:28:09', 'Tarjeta de crédito'),
(104, '2024-11-30', 'En proceso', 100.00, 'Delivery', 'Recoger en tienda', 10, '2024-12-01 03:29:03', '2024-12-01 03:29:03', 'Tarjeta de crédito'),
(105, '2024-11-30', 'En proceso', 100.00, 'Delivery', 'Av. Garcilaso de la Vega 1698, Lima 15046, Perú', 10, '2024-12-01 03:36:27', '2024-12-01 03:36:27', 'Tarjeta de crédito'),
(106, '2024-11-30', 'En proceso', 200.00, 'Delivery', 'Recoger en tienda', 10, '2024-12-01 03:48:56', '2024-12-01 03:48:56', 'Tarjeta de crédito'),
(107, '2024-11-30', 'En proceso', 125.00, 'Recojo en tienda', 'Recoger en tienda', 10, '2024-12-01 04:00:56', '2024-12-01 04:00:56', 'Tarjeta de crédito'),
(108, '2024-11-30', 'En proceso', 192.00, 'Delivery', 'Av. Garcilaso de la Vega 1698, Lima 15046, Perú', 10, '2024-12-01 04:01:59', '2024-12-01 04:01:59', 'Tarjeta de crédito'),
(109, '2024-12-03', 'En proceso', 160.00, 'Método no especificado', 'Dirección no especificada', 10, '2024-12-03 21:42:42', '2024-12-03 21:42:42', 'Tarjeta de crédito'),
(110, '2024-12-03', 'En proceso', 100.00, 'Delivery', 'Av. Bausate y Meza 1769, La Victoria 15018, Perú', 10, '2024-12-03 22:07:17', '2024-12-03 22:07:17', 'Tarjeta de crédito'),
(111, '2024-12-03', 'En proceso', 100.00, 'Recojo en tienda', 'Recoger en tienda', 10, '2024-12-03 22:08:11', '2024-12-03 22:08:11', 'Tarjeta de crédito'),
(112, '2024-12-03', 'En proceso', 280.00, 'Delivery', 'Av. Bausate y Meza 1769, La Victoria 15018, Perú', 10, '2024-12-03 22:27:00', '2024-12-03 22:27:00', 'Tarjeta de crédito'),
(113, '2024-12-03', 'En proceso', 160.00, 'Recojo en tienda', 'Recoger en tienda', 10, '2024-12-03 22:33:06', '2024-12-03 22:33:06', 'Tarjeta de crédito'),
(114, '2024-12-03', 'En proceso', 375.00, 'Recojo en tienda', 'Recoger en tienda', 10, '2024-12-03 22:35:25', '2024-12-03 22:35:25', 'Tarjeta de crédito'),
(115, '2024-12-03', 'En proceso', 272.00, 'Delivery', 'Av. Bausate y Meza 1769, La Victoria 15018, Perú', 10, '2024-12-03 22:37:59', '2024-12-03 22:37:59', 'Tarjeta de crédito'),
(116, '2024-12-03', 'En proceso', 240.00, 'Delivery', 'Av. Bausate y Meza 1769, La Victoria 15018, Perú', 10, '2024-12-03 22:41:07', '2024-12-03 22:41:07', 'Tarjeta de crédito'),
(117, '2024-12-03', 'En proceso', 680.00, 'Delivery', 'Av. Bausate y Meza 1769, La Victoria 15018, Perú', 10, '2024-12-03 22:42:21', '2024-12-03 22:42:21', 'Tarjeta de crédito'),
(118, '2024-12-03', 'En proceso', 380.00, 'Delivery', 'Av. Bausate y Meza 1769, La Victoria 15018, Perú', 10, '2024-12-03 22:42:58', '2024-12-03 22:42:58', 'Tarjeta de crédito'),
(119, '2024-12-03', 'En proceso', 180.00, 'Recojo en tienda', 'Recoger en tienda', 10, '2024-12-03 22:43:35', '2024-12-03 22:43:35', 'Tarjeta de crédito'),
(120, '2024-12-03', 'En proceso', 170.00, 'Delivery', 'Av. Bausate y Meza 1769, La Victoria 15018, Perú', 10, '2024-12-03 22:51:52', '2024-12-03 22:51:52', 'Tarjeta de crédito'),
(121, '2024-12-03', 'En proceso', 200.00, 'Recojo en tienda', 'Recoger en tienda', 10, '2024-12-03 23:07:18', '2024-12-03 23:07:18', 'Tarjeta de crédito'),
(122, '2024-12-03', 'En proceso', 330.00, 'Delivery', 'Av. Bausate y Meza 1769, La Victoria 15018, Perú', 10, '2024-12-03 23:08:10', '2024-12-03 23:08:10', 'Tarjeta de crédito'),
(123, '2024-12-03', 'En proceso', 385.00, 'Delivery', 'la marsella 157', 10, '2024-12-03 23:46:29', '2024-12-03 23:46:29', 'Tarjeta de crédito'),
(124, '2024-12-03', 'En proceso', 205.00, 'Delivery', 'Av. Bausate y Meza 1769, La Victoria 15018, Perú', 10, '2024-12-04 04:10:04', '2024-12-04 04:10:04', 'Tarjeta de crédito'),
(125, '2024-12-05', 'En proceso', 145.00, 'Delivery', 'Marsella 175-127', 10, '2024-12-05 05:14:44', '2024-12-05 05:14:44', 'Tarjeta de crédito'),
(126, '2024-12-06', 'En proceso', 221.00, 'Delivery', 'Av. Bausate y Meza 1769, La Victoria 15018, Perú', 10, '2024-12-07 00:20:53', '2024-12-07 00:20:53', 'Tarjeta de crédito'),
(127, '2024-12-07', 'En proceso', 240.00, 'Recojo en tienda', 'Recoger en tienda', 10, '2024-12-07 16:29:53', '2024-12-07 16:29:53', 'Tarjeta de crédito'),
(128, '2024-12-07', 'En proceso', 1950.00, 'Recojo en tienda', 'Recoger en tienda', 10, '2024-12-07 16:32:01', '2024-12-07 16:32:01', 'Tarjeta de crédito'),
(129, '2024-12-07', 'En proceso', 600.00, 'Recojo en tienda', 'Recoger en tienda', 10, '2024-12-07 20:36:53', '2024-12-07 20:36:53', 'Tarjeta de crédito'),
(130, '2024-12-07', 'En proceso', 600.00, 'Recojo en tienda', 'Recoger en tienda', 10, '2024-12-07 20:37:22', '2024-12-07 20:37:22', 'Tarjeta de crédito'),
(131, '2024-12-07', 'En proceso', 600.00, 'Recojo en tienda', 'Recoger en tienda', 10, '2024-12-07 20:38:18', '2024-12-07 20:38:18', 'Tarjeta de crédito'),
(132, '2024-12-07', 'En proceso', 300.00, 'Recojo en tienda', 'Recoger en tienda', 10, '2024-12-07 20:41:12', '2024-12-07 20:41:12', 'Tarjeta de crédito'),
(133, '2024-12-07', 'En proceso', 600.00, 'Recojo en tienda', 'Recoger en tienda', 10, '2024-12-08 02:34:28', '2024-12-08 02:34:28', 'Tarjeta de crédito'),
(134, '2024-12-09', 'En proceso', 225.00, 'Delivery', 'C. Fermin Tanguis 160, La Victoria 15034, Perú', 10, '2024-12-09 23:18:48', '2024-12-09 23:18:48', 'Tarjeta de crédito'),
(135, '2024-12-09', 'En proceso', 125.00, 'Recojo en tienda', 'Recoger en tienda', 15, '2024-12-10 02:16:26', '2024-12-10 02:16:26', 'Tarjeta de crédito'),
(136, '2024-12-10', 'En proceso', 80.00, 'Recojo en tienda', 'Recoger en tienda', 10, '2024-12-10 17:30:23', '2024-12-10 17:30:23', 'Tarjeta de crédito'),
(138, '2024-12-10', 'En proceso', 180.00, 'Recojo en tienda', 'Recoger en tienda', 10, '2024-12-10 17:37:48', '2024-12-10 17:37:48', 'Tarjeta de crédito'),
(139, '2024-12-10', 'En proceso', 270.00, 'Recojo en tienda', 'Recoger en tienda', 10, '2024-12-10 17:43:21', '2024-12-10 17:43:21', 'Tarjeta de crédito'),
(140, '2024-12-10', 'En proceso', 180.00, 'Recojo en tienda', 'Recoger en tienda', 10, '2024-12-10 17:50:08', '2024-12-10 17:50:08', 'Tarjeta de crédito'),
(141, '2024-12-10', 'En proceso', 300.00, 'Recojo en tienda', 'Recoger en tienda', 10, '2024-12-10 18:03:51', '2024-12-10 18:03:51', 'Tarjeta de crédito'),
(142, '2024-12-10', 'En proceso', 195.00, 'Delivery', 'C. Fermin Tanguis 160, La Victoria 15034, Perú', 10, '2024-12-10 18:05:03', '2024-12-10 18:05:03', 'Tarjeta de crédito'),
(143, '2024-12-10', 'En proceso', 150.00, 'Recojo en tienda', 'Recoger en tienda', 10, '2024-12-10 23:27:46', '2024-12-10 23:27:46', 'Tarjeta de crédito'),
(144, '2024-12-10', 'En proceso', 330.00, 'Recojo en tienda', 'Recoger en tienda', 6, '2024-12-11 02:14:15', '2024-12-11 02:14:15', 'Tarjeta de crédito'),
(145, '2024-12-10', 'En proceso', 330.00, 'Recojo en tienda', 'Recoger en tienda', 6, '2024-12-11 02:36:06', '2024-12-11 02:36:06', 'Tarjeta de crédito'),
(146, '2024-12-10', 'En proceso', 1285.00, 'Delivery', 'Marsella 169, Lima 15007, Perú', 6, '2024-12-11 02:44:40', '2024-12-11 02:44:40', 'Tarjeta de crédito'),
(147, '2024-12-10', 'En proceso', 525.00, 'Recojo en tienda', 'Recoger en tienda', 6, '2024-12-11 02:49:40', '2024-12-11 02:49:40', 'Tarjeta de crédito'),
(148, '2024-12-11', 'En proceso', 62.50, 'Recojo en tienda', 'Recoger en tienda', 10, '2024-12-11 06:55:05', '2024-12-11 06:55:05', 'Tarjeta de crédito'),
(149, '2024-12-11', 'En proceso', 857.50, 'Delivery', 'Av. Aviación 1520, La Victoria 15034, Perú', 10, '2024-12-11 06:56:18', '2024-12-11 06:56:18', 'Tarjeta de crédito'),
(150, '2024-12-11', 'En proceso', 485.00, 'Delivery', 'Av. Aviación 1520, La Victoria 15034, Perú', 10, '2024-12-11 06:57:43', '2024-12-11 06:57:43', 'Tarjeta de crédito'),
(151, '2024-12-11', 'En proceso', 600.00, 'Recojo en tienda', 'Recoger en tienda', 10, '2024-12-11 07:01:15', '2024-12-11 07:01:15', 'Tarjeta de crédito'),
(152, '2024-12-11', 'En proceso', 885.00, 'Delivery', 'Av. Aviación 1520, La Victoria 15034, Perú', 10, '2024-12-11 08:24:02', '2024-12-11 08:24:02', 'Tarjeta de crédito'),
(153, '2024-12-11', 'En proceso', 347.50, 'Delivery', 'Pabellón 1, Santa Anita 15011, Perú', 10, '2024-12-11 18:09:13', '2024-12-11 18:09:13', 'Tarjeta de crédito');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`),
  ADD UNIQUE KEY `categorias_nombre_unique` (`nombre`);

--
-- Indices de la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  ADD PRIMARY KEY (`id_detalle`),
  ADD KEY `detalle_pedidos_id_pedido_foreign` (`id_pedido`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`id_pago`),
  ADD KEY `pagos_id_pedido_foreign` (`id_pedido`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `productos_id_categoria_foreign` (`id_categoria`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`id_servicio`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_user_id_index` (`user_id`);

--
-- Indices de la tabla `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_invitations_team_id_email_unique` (`team_id`,`email`);

--
-- Indices de la tabla `team_user`
--
ALTER TABLE `team_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_user_team_id_user_id_unique` (`team_id`,`user_id`);

--
-- Indices de la tabla `tracking`
--
ALTER TABLE `tracking`
  ADD PRIMARY KEY (`id_tracking`),
  ADD KEY `tracking_id_pedido_foreign` (`id_venta`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_id_rol_foreign` (`id_rol`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`id_pedido`),
  ADD KEY `pedidos_id_usuario_foreign` (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  MODIFY `id_detalle` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
  MODIFY `id_pago` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id_rol` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `id_servicio` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `team_invitations`
--
ALTER TABLE `team_invitations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `team_user`
--
ALTER TABLE `team_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tracking`
--
ALTER TABLE `tracking`
  MODIFY `id_tracking` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `id_pedido` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  ADD CONSTRAINT `detalle_pedidos_id_pedido_foreign` FOREIGN KEY (`id_pedido`) REFERENCES `venta` (`id_pedido`) ON DELETE CASCADE;

--
-- Filtros para la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD CONSTRAINT `pagos_id_pedido_foreign` FOREIGN KEY (`id_pedido`) REFERENCES `venta` (`id_pedido`) ON DELETE CASCADE;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_id_categoria_foreign` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`) ON DELETE SET NULL;

--
-- Filtros para la tabla `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD CONSTRAINT `team_invitations_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `tracking`
--
ALTER TABLE `tracking`
  ADD CONSTRAINT `tracking_id_pedido_foreign` FOREIGN KEY (`id_venta`) REFERENCES `venta` (`id_pedido`) ON DELETE CASCADE,
  ADD CONSTRAINT `tracking_id_venta_foreign` FOREIGN KEY (`id_venta`) REFERENCES `venta` (`id_pedido`) ON DELETE CASCADE;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_id_rol_foreign` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id_rol`) ON DELETE SET NULL;

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `pedidos_id_usuario_foreign` FOREIGN KEY (`id_usuario`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
