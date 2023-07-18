-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3308
-- Tiempo de generación: 17-07-2023 a las 09:27:11
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
-- Base de datos: `customer_manager`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customer`
--

CREATE TABLE `customer` (
  `id_client` bigint(20) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `postal_code` varchar(12) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `customer`
--

INSERT INTO `customer` (`id_client`, `first_name`, `last_name`, `address`, `city`, `state`, `postal_code`, `phone`, `email`) VALUES
(1, 'Juan', 'Gómez', 'Carrera 123', 'Bogotá', 'Cundinamarca', '110010', '310-1234567', 'juan.gomez@example.com'),
(2, 'María', 'López', 'Calle 456', 'Medellín', 'Antioquia', '050012', '320-9876543', 'maria.lopez@example.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plan_subscription`
--

CREATE TABLE `plan_subscription` (
  `id_plan` bigint(20) NOT NULL,
  `plan_name` varchar(255) DEFAULT NULL,
  `plan_description` text DEFAULT NULL,
  `montly_price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `plan_subscription`
--

INSERT INTO `plan_subscription` (`id_plan`, `plan_name`, `plan_description`, `montly_price`) VALUES
(1, 'Básico', 'Plan de suscripción básico', '9.99'),
(2, 'Premium', 'Plan de suscripción premium', '19.99');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subscription`
--

CREATE TABLE `subscription` (
  `id_suscription` bigint(20) NOT NULL,
  `id_client` bigint(20) DEFAULT NULL,
  `id_plan` bigint(20) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `subscription`
--

INSERT INTO `subscription` (`id_suscription`, `id_client`, `id_plan`, `start_date`, `expiry_date`) VALUES
(1, 1, 1, '2023-01-01', '2023-12-31'),
(2, 2, 2, '2023-02-01', '2023-12-31');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_client`);

--
-- Indices de la tabla `plan_subscription`
--
ALTER TABLE `plan_subscription`
  ADD PRIMARY KEY (`id_plan`);

--
-- Indices de la tabla `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`id_suscription`),
  ADD KEY `id_client` (`id_client`),
  ADD KEY `id_plan` (`id_plan`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `customer`
--
ALTER TABLE `customer`
  MODIFY `id_client` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `plan_subscription`
--
ALTER TABLE `plan_subscription`
  MODIFY `id_plan` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `subscription`
--
ALTER TABLE `subscription`
  MODIFY `id_suscription` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `subscription`
--
ALTER TABLE `subscription`
  ADD CONSTRAINT `subscription_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `customer` (`id_client`),
  ADD CONSTRAINT `subscription_ibfk_2` FOREIGN KEY (`id_plan`) REFERENCES `plan_subscription` (`id_plan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
