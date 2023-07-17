-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3308
-- Tiempo de generación: 17-07-2023 a las 07:58:29
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
-- Base de datos: `menu`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `id_category` bigint(20) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `id_parent` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`id_category`, `category_name`, `id_parent`) VALUES
(1, 'Lenguajes de Programación', NULL),
(2, 'Frameworks', NULL),
(3, 'Bases de Datos', NULL),
(4, 'Frontend', 1),
(5, 'Backend', 1),
(6, 'Web', 2),
(7, 'Mobile', 2),
(8, 'Relacionales', 3),
(9, 'NoSQL', 3),
(10, 'HTML', 4),
(11, 'CSS', 4),
(12, 'JavaScript', 4),
(13, 'Java', 5),
(14, 'Python', 5),
(15, 'React', 6),
(16, 'Angular', 6),
(17, 'MySQL', 7),
(18, 'PostgreSQL', 7),
(19, 'MongoDB', 8),
(20, 'Firebase', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `item`
--

CREATE TABLE `item` (
  `id_item` bigint(20) NOT NULL,
  `item_name` varchar(100) DEFAULT NULL,
  `id_category` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `item`
--

INSERT INTO `item` (`id_item`, `item_name`, `id_category`) VALUES
(12, 'HTML5', 10),
(13, 'CSS3', 11),
(14, 'JavaScript ES6', 12),
(15, 'Java SE', 13),
(16, 'Python 3', 14),
(17, 'React.js', 15),
(18, 'AngularJS', 16),
(19, 'MySQL', 17),
(20, 'PostgreSQL', 18),
(21, 'MongoDB', 19),
(22, 'Firebase Realtime Database', 20);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_category`),
  ADD KEY `fk_parentcategory` (`id_parent`);

--
-- Indices de la tabla `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id_item`),
  ADD KEY `fk_item_category` (`id_category`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `id_category` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `item`
--
ALTER TABLE `item`
  MODIFY `id_item` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `fk_parentcategory` FOREIGN KEY (`id_parent`) REFERENCES `category` (`id_category`);

--
-- Filtros para la tabla `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `fk_item_category` FOREIGN KEY (`id_category`) REFERENCES `category` (`id_category`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
