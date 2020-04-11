-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-04-2020 a las 02:18:17
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pruebafs`
--

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
(114, '2020_04_10_000000_create_productos_table', 2),
(159, '2014_10_12_000000_create_users_table', 3),
(160, '2014_10_12_100000_create_password_resets_table', 3),
(161, '2015_01_20_084450_create_roles_table', 3),
(162, '2015_01_20_084525_create_role_user_table', 3),
(163, '2015_01_24_080208_create_permissions_table', 3),
(164, '2015_01_24_080433_create_permission_role_table', 3),
(165, '2015_12_04_003040_add_special_role_column', 3),
(166, '2017_10_17_170735_create_permission_user_table', 3),
(167, '2019_12_14_143845_create_productos_table', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Navegar usuarios', 'users.index', 'Lista y navega todos los usuarios del sistema', '2020-04-10 22:03:03', '2020-04-10 22:03:03'),
(2, 'Ver detalle de usuario', 'users.show', 'Ve en detalle cada usuario del sistema', '2020-04-10 22:03:03', '2020-04-10 22:03:03'),
(3, 'Edición de usuarios', 'users.edit', 'Podría editar cualquier dato de un usuario del sistema', '2020-04-10 22:03:04', '2020-04-10 22:03:04'),
(4, 'Eliminar usuario', 'users.destroy', 'Podría eliminar cualquier usuario del sistema', '2020-04-10 22:03:05', '2020-04-10 22:03:05'),
(5, 'Navegar roles', 'roles.index', 'Lista y navega todos los roles del sistema', '2020-04-10 22:03:05', '2020-04-10 22:03:05'),
(6, 'Ver detalle de un rol', 'roles.show', 'Ve en detalle cada rol del sistema', '2020-04-10 22:03:05', '2020-04-10 22:03:05'),
(7, 'Creación de roles', 'roles.create', 'Podría crear nuevos roles en el sistema', '2020-04-10 22:03:05', '2020-04-10 22:03:05'),
(8, 'Edición de roles', 'roles.edit', 'Podría editar cualquier dato de un rol del sistema', '2020-04-10 22:03:05', '2020-04-10 22:03:05'),
(9, 'Eliminar roles', 'roles.destroy', 'Podría eliminar cualquier rol del sistema', '2020-04-10 22:03:05', '2020-04-10 22:03:05'),
(10, 'Navegar productos', 'productos.index', 'Lista y navega todos los productos del sistema', '2020-04-10 22:03:05', '2020-04-10 22:03:05'),
(11, 'Ver detalle de un producto', 'productos.show', 'Ve en detalle cada producto del sistema', '2020-04-10 22:03:05', '2020-04-10 22:03:05'),
(12, 'Creación de productos', 'productos.create', 'Podría crear nuevos productos en el sistema', '2020-04-10 22:03:05', '2020-04-10 22:03:05'),
(13, 'Edición de productos', 'productos.edit', 'Podría editar cualquier dato de un producto del sistema', '2020-04-10 22:03:05', '2020-04-10 22:03:05'),
(14, 'Eliminar productos', 'productos.destroy', 'Podría eliminar cualquier producto del sistema', '2020-04-10 22:03:05', '2020-04-10 22:03:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_role`
--

CREATE TABLE `permission_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 10, 2, '2020-04-10 22:04:14', '2020-04-10 22:04:14'),
(2, 11, 2, '2020-04-10 22:04:14', '2020-04-10 22:04:14'),
(3, 12, 2, '2020-04-10 22:04:14', '2020-04-10 22:04:14'),
(4, 13, 2, '2020-04-10 22:04:14', '2020-04-10 22:04:14'),
(5, 14, 2, '2020-04-10 22:04:14', '2020-04-10 22:04:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_user`
--

CREATE TABLE `permission_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(10) UNSIGNED NOT NULL,
  `placas` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marca` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modelo` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitud` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitud` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usuario` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `placas`, `marca`, `color`, `modelo`, `latitud`, `longitud`, `usuario`, `created_at`, `updated_at`) VALUES
(1, 'JAC6979', 'VOLKSWAGEN', 'GRIS', '2015', '41.40338', '2.17403', '21', '2020-04-10 22:05:07', '2020-04-10 22:05:07'),
(2, 'JUD9874', 'mazda', 'NEGRO', '2020', '41.40338', '2.17403', '22', '2020-04-10 22:05:54', '2020-04-10 22:05:54'),
(3, 'JVM6969', 'NISSAN VERSA', 'AZUL', '2018', '20.6858841', '-103.28283', '23', '2020-04-11 04:39:50', '2020-04-11 04:39:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `special` enum('all-access','no-access') COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`, `special`) VALUES
(1, 'Admin', 'slug', NULL, '2020-04-10 22:03:07', '2020-04-10 22:03:07', 'all-access'),
(2, 'estandar', 'estandar', 'el usuario puede ver sus propios vehículos', '2020-04-10 22:04:14', '2020-04-10 22:04:14', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 21, NULL, NULL),
(3, 1, 23, '2020-04-11 04:31:57', '2020-04-11 04:31:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(21, 'abi', 'abi.bedolla@gmail.com', '$2y$10$hVBukNsfmQGb2WNfo5lyTOpcCS7hqbMbEFITlwy4zp3XA0FgGtZ6y', 'Z4LZ7pIpmc8FWr8xC8EgWTQDl13qM0ur2hmN5BLn94PpgQftgKqXtYkVHH7t', '2020-04-10 22:03:31', '2020-04-10 22:03:31'),
(23, 'admin', 'admin@sesidiez.com', '$2y$10$3l0hHitkAy6hU8DRw1momODhf7QER.uJPBeEIRM7iPZj37k4tJjyS', 'KCXqZk4CsTAb87JhKeSiFlhxtrtS4ou0jKH4h7nO5d7ZhCt7EiAEmHI37NNj', '2020-04-11 04:31:37', '2020-04-11 04:31:37');

--
-- Índices para tablas volcadas
--

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
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_slug_unique` (`slug`);

--
-- Indices de la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indices de la tabla `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_user_permission_id_index` (`permission_id`),
  ADD KEY `permission_user_user_id_index` (`user_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indices de la tabla `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_index` (`role_id`),
  ADD KEY `role_user_user_id_index` (`user_id`);

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
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `permission_user`
--
ALTER TABLE `permission_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
