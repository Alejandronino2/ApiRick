-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-01-2023 a las 22:22:02
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `rickapi`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `name` mediumtext DEFAULT NULL,
  `status` mediumtext DEFAULT NULL,
  `species` mediumtext DEFAULT NULL,
  `type` mediumtext DEFAULT NULL,
  `gender` mediumtext DEFAULT NULL,
  `origin_name` mediumtext DEFAULT NULL,
  `origin_url` longtext DEFAULT NULL,
  `image` longtext DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `name`, `status`, `species`, `type`, `gender`, `origin_name`, `origin_url`, `image`, `updated_at`, `created_at`) VALUES
(1, 'Rick Sanchez', 'Alive', 'Human', '', 'Male', 'Earth (C-137)', 'https://rickandmortyapi.com/api/character/1', 'https://rickandmortyapi.com/api/character/avatar/1.jpeg', '2023-01-26 21:09:37', '2023-01-26 21:09:37'),
(2, 'Morty Smith', 'Alive', 'Human', '', 'Male', 'unknown', 'https://rickandmortyapi.com/api/character/2', 'https://rickandmortyapi.com/api/character/avatar/2.jpeg', '2023-01-26 21:09:37', '2023-01-26 21:09:37'),
(3, 'Summer Smith', 'Alive', 'Human', '', 'Female', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/character/3', 'https://rickandmortyapi.com/api/character/avatar/3.jpeg', '2023-01-26 21:09:37', '2023-01-26 21:09:37'),
(4, 'Beth Smith', 'Alive', 'Human', '', 'Female', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/character/4', 'https://rickandmortyapi.com/api/character/avatar/4.jpeg', '2023-01-26 21:09:37', '2023-01-26 21:09:37'),
(5, 'Jerry Smith', 'Alive', 'Human', '', 'Male', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/character/5', 'https://rickandmortyapi.com/api/character/avatar/5.jpeg', '2023-01-26 21:09:37', '2023-01-26 21:09:37'),
(6, 'Abadango Cluster Princess', 'Alive', 'Alien', '', 'Female', 'Abadango', 'https://rickandmortyapi.com/api/character/6', 'https://rickandmortyapi.com/api/character/avatar/6.jpeg', '2023-01-26 21:09:37', '2023-01-26 21:09:37'),
(7, 'Abradolf Lincler', 'unknown', 'Human', 'Genetic experiment', 'Male', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/character/7', 'https://rickandmortyapi.com/api/character/avatar/7.jpeg', '2023-01-26 21:09:37', '2023-01-26 21:09:37'),
(8, 'Adjudicator Rick', 'Dead', 'Human', '', 'Male', 'unknown', 'https://rickandmortyapi.com/api/character/8', 'https://rickandmortyapi.com/api/character/avatar/8.jpeg', '2023-01-26 21:09:37', '2023-01-26 21:09:37'),
(9, 'Agency Director', 'Dead', 'Human', '', 'Male', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/character/9', 'https://rickandmortyapi.com/api/character/avatar/9.jpeg', '2023-01-26 21:09:37', '2023-01-26 21:09:37'),
(10, 'Alan Rails', 'Dead', 'Human', 'Superhuman (Ghost trains summoner)', 'Male', 'unknown', 'https://rickandmortyapi.com/api/character/10', 'https://rickandmortyapi.com/api/character/avatar/10.jpeg', '2023-01-26 21:09:37', '2023-01-26 21:09:37'),
(11, 'Albert Einstein', 'Dead', 'Human', '', 'Male', 'Earth (C-137)', 'https://rickandmortyapi.com/api/character/11', 'https://rickandmortyapi.com/api/character/avatar/11.jpeg', '2023-01-26 21:09:37', '2023-01-26 21:09:37'),
(12, 'Alexander', 'Dead', 'Human', '', 'Male', 'Earth (C-137)', 'https://rickandmortyapi.com/api/character/12', 'https://rickandmortyapi.com/api/character/avatar/12.jpeg', '2023-01-26 21:09:37', '2023-01-26 21:09:37'),
(13, 'Alien Googah', 'unknown', 'Alien', '', 'unknown', 'unknown', 'https://rickandmortyapi.com/api/character/13', 'https://rickandmortyapi.com/api/character/avatar/13.jpeg', '2023-01-26 21:09:37', '2023-01-26 21:09:37'),
(14, 'Alien Morty', 'unknown', 'Alien', '', 'Male', 'unknown', 'https://rickandmortyapi.com/api/character/14', 'https://rickandmortyapi.com/api/character/avatar/14.jpeg', '2023-01-26 21:09:37', '2023-01-26 21:09:37'),
(15, 'Alien Rick', 'unknown', 'Alien', '', 'Male', 'unknown', 'https://rickandmortyapi.com/api/character/15', 'https://rickandmortyapi.com/api/character/avatar/15.jpeg', '2023-01-26 21:09:37', '2023-01-26 21:09:37'),
(16, 'Amish Cyborg', 'Dead', 'Alien', 'Parasite', 'Male', 'unknown', 'https://rickandmortyapi.com/api/character/16', 'https://rickandmortyapi.com/api/character/avatar/16.jpeg', '2023-01-26 21:09:37', '2023-01-26 21:09:37'),
(17, 'Annie', 'Alive', 'Human', '', 'Female', 'Earth (C-137)', 'https://rickandmortyapi.com/api/character/17', 'https://rickandmortyapi.com/api/character/avatar/17.jpeg', '2023-01-26 21:09:37', '2023-01-26 21:09:37'),
(18, 'Antenna Morty', 'Alive', 'Human', 'Human with antennae', 'Male', 'unknown', 'https://rickandmortyapi.com/api/character/18', 'https://rickandmortyapi.com/api/character/avatar/18.jpeg', '2023-01-26 21:09:37', '2023-01-26 21:09:37'),
(19, 'Antenna Rick', 'unknown', 'Human', 'Human with antennae', 'Male', 'unknown', 'https://rickandmortyapi.com/api/character/19', 'https://rickandmortyapi.com/api/character/avatar/19.jpeg', '2023-01-26 21:09:37', '2023-01-26 21:09:37'),
(20, 'Ants in my Eyes Johnson', 'unknown', 'Human', 'Human with ants in his eyes', 'Male', 'unknown', 'https://rickandmortyapi.com/api/character/20', 'https://rickandmortyapi.com/api/character/avatar/20.jpeg', '2023-01-26 21:09:37', '2023-01-26 21:09:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Diego Alejandro Niño', 'diegoalejandroninolozano@hotmail.com', NULL, '$2y$10$KCwTubPM/Q9sNH56TSzUj.rPviPhk60VWe0a81xRKIdbqQIpWu3NK', NULL, '2023-01-26 09:10:55', '2023-01-26 09:10:55');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
