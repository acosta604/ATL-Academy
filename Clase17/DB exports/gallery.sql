-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3308
-- Tiempo de generación: 17-07-2023 a las 07:58:01
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gallery`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album`
--

CREATE TABLE `album` (
  `id_album` bigint(20) NOT NULL,
  `album_name` varchar(100) DEFAULT NULL,
  `id_category` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `id_category` bigint(20) NOT NULL,
  `category_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favorite`
--

CREATE TABLE `favorite` (
  `id_favorite` bigint(20) NOT NULL,
  `id_photo` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `photo`
--

CREATE TABLE `photo` (
  `id_photo` bigint(20) NOT NULL,
  `capure_date` datetime DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `save_path` varchar(255) DEFAULT NULL,
  `file_size` bigint(40) DEFAULT NULL,
  `id_album` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `photo_tag`
--

CREATE TABLE `photo_tag` (
  `id_photo` bigint(20) DEFAULT NULL,
  `id_tag` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tag`
--

CREATE TABLE `tag` (
  `id_tag` bigint(20) NOT NULL,
  `tag_name` varchar(100) DEFAULT NULL,
  `tag_description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trash`
--

CREATE TABLE `trash` (
  `id_trash` bigint(20) NOT NULL,
  `id_photo` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id_album`),
  ADD KEY `fk_album_category` (`id_category`);

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_category`);

--
-- Indices de la tabla `favorite`
--
ALTER TABLE `favorite`
  ADD PRIMARY KEY (`id_favorite`),
  ADD KEY `fk_favorite_photo` (`id_photo`);

--
-- Indices de la tabla `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`id_photo`),
  ADD KEY `fk_photo_album` (`id_album`);

--
-- Indices de la tabla `photo_tag`
--
ALTER TABLE `photo_tag`
  ADD KEY `fk_phototag_photo` (`id_photo`),
  ADD KEY `fk_phototag_tag` (`id_tag`);

--
-- Indices de la tabla `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id_tag`);

--
-- Indices de la tabla `trash`
--
ALTER TABLE `trash`
  ADD PRIMARY KEY (`id_trash`),
  ADD KEY `fk_trash_photo` (`id_photo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `album`
--
ALTER TABLE `album`
  MODIFY `id_album` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `id_category` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `favorite`
--
ALTER TABLE `favorite`
  MODIFY `id_favorite` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `photo`
--
ALTER TABLE `photo`
  MODIFY `id_photo` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tag`
--
ALTER TABLE `tag`
  MODIFY `id_tag` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `trash`
--
ALTER TABLE `trash`
  MODIFY `id_trash` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `fk_album_category` FOREIGN KEY (`id_category`) REFERENCES `category` (`id_category`);

--
-- Filtros para la tabla `favorite`
--
ALTER TABLE `favorite`
  ADD CONSTRAINT `fk_favorite_photo` FOREIGN KEY (`id_photo`) REFERENCES `photo` (`id_photo`);

--
-- Filtros para la tabla `photo`
--
ALTER TABLE `photo`
  ADD CONSTRAINT `fk_photo_album` FOREIGN KEY (`id_album`) REFERENCES `album` (`id_album`);

--
-- Filtros para la tabla `photo_tag`
--
ALTER TABLE `photo_tag`
  ADD CONSTRAINT `fk_phototag_photo` FOREIGN KEY (`id_photo`) REFERENCES `photo` (`id_photo`),
  ADD CONSTRAINT `fk_phototag_tag` FOREIGN KEY (`id_tag`) REFERENCES `tag` (`id_tag`);

--
-- Filtros para la tabla `trash`
--
ALTER TABLE `trash`
  ADD CONSTRAINT `fk_trash_photo` FOREIGN KEY (`id_photo`) REFERENCES `photo` (`id_photo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
