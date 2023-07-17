-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3308
-- Tiempo de generación: 17-07-2023 a las 07:58:17
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
-- Base de datos: `inventory_control`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product`
--

CREATE TABLE `product` (
  `id_product` bigint(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `quantity_available` int(11) DEFAULT NULL,
  `id_storage_location` bigint(20) DEFAULT NULL,
  `id_supplier` bigint(20) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `acquisition_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `product`
--

INSERT INTO `product` (`id_product`, `name`, `description`, `quantity_available`, `id_storage_location`, `id_supplier`, `price`, `acquisition_date`) VALUES
(3, 'T-shirt', 'Cotton t-shirt with round neck', 100, 1, 1, '10.99', '2023-07-01'),
(4, 'Jeans', 'Blue denim jeans with straight fit', 50, 2, 1, '29.99', '2023-07-02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `storage_location`
--

CREATE TABLE `storage_location` (
  `id_location` bigint(20) NOT NULL,
  `location_name` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `storage_location`
--

INSERT INTO `storage_location` (`id_location`, `location_name`, `description`) VALUES
(1, 'Warehouse A', 'Main warehouse for finished products'),
(2, 'Warehouse B', 'Secondary warehouse for raw materials');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` bigint(20) NOT NULL,
  `supplier_name` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `supplier_name`, `phone`, `email`) VALUES
(1, 'Fabric Supplier', '123456789', 'fabricsupplier@example.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transaction_data`
--

CREATE TABLE `transaction_data` (
  `id_transaction` bigint(20) NOT NULL,
  `id_product` bigint(20) DEFAULT NULL,
  `transaction_type` varchar(50) DEFAULT NULL,
  `transaction_date` date DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `transaction_data`
--

INSERT INTO `transaction_data` (`id_transaction`, `id_product`, `transaction_type`, `transaction_date`, `quantity`, `total_amount`) VALUES
(2, 3, 'Purchase', '2023-07-03', 20, '219.80'),
(3, 4, 'Sale', '2023-07-04', 10, '299.90');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `id_storage_location` (`id_storage_location`),
  ADD KEY `id_supplier` (`id_supplier`);

--
-- Indices de la tabla `storage_location`
--
ALTER TABLE `storage_location`
  ADD PRIMARY KEY (`id_location`);

--
-- Indices de la tabla `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indices de la tabla `transaction_data`
--
ALTER TABLE `transaction_data`
  ADD PRIMARY KEY (`id_transaction`),
  ADD KEY `id_product` (`id_product`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `product`
--
ALTER TABLE `product`
  MODIFY `id_product` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `storage_location`
--
ALTER TABLE `storage_location`
  MODIFY `id_location` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_supplier` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `transaction_data`
--
ALTER TABLE `transaction_data`
  MODIFY `id_transaction` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`id_storage_location`) REFERENCES `storage_location` (`id_location`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`id_supplier`) REFERENCES `supplier` (`id_supplier`);

--
-- Filtros para la tabla `transaction_data`
--
ALTER TABLE `transaction_data`
  ADD CONSTRAINT `transaction_data_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`id_product`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
