-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-03-2024 a las 18:55:44
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
-- Base de datos: `coleccioncoches`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coches`
--

CREATE TABLE `coches` (
  `id` int(11) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `ano` int(11) NOT NULL,
  `precio` int(11) NOT NULL,
  `color` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `coches`
--

INSERT INTO `coches` (`id`, `marca`, `modelo`, `ano`, `precio`, `color`) VALUES
(0, 'Toyota', 'Corolla', 2018, 15000, 'Azul'),
(0, 'Honda', 'Civic', 2019, 18000, 'Blanco'),
(0, 'Ford', 'Focus', 2017, 12000, 'Gris'),
(0, 'Chevrolet', 'Camaro', 2020, 35000, 'Rojo'),
(0, 'Nissan', 'Sentra', 2016, 11000, 'Negro'),
(0, 'Toyota', 'Camry', 2019, 20000, 'Plata'),
(0, 'Honda', 'Accord', 2018, 19000, 'Verde'),
(0, 'Ford', 'Mustang', 2021, 38000, 'Amarillo'),
(0, 'Chevrolet', 'Malibu', 2019, 22000, 'Azul'),
(0, 'Nissan', 'Altima', 2017, 17000, 'Blanco'),
(0, 'Toyota', 'Rav4', 2020, 25000, 'Gris'),
(0, 'Honda', 'Fit', 2018, 15000, 'Rojo'),
(0, 'Ford', 'Escape', 2019, 23000, 'Negro'),
(0, 'Chevrolet', 'Equinox', 2017, 18000, 'Plata'),
(0, 'Nissan', 'Rogue', 2021, 27000, 'Verde'),
(0, 'Toyota', 'Highlander', 2020, 32000, 'Amarillo'),
(0, 'Honda', 'CR-V', 2019, 24000, 'Azul'),
(0, 'Ford', 'Edge', 2018, 20000, 'Blanco'),
(0, 'Chevrolet', 'Traverse', 2017, 25000, 'Gris'),
(0, 'Nissan', 'Pathfinder', 2019, 29000, 'Rojo'),
(0, 'Toyota', 'Sienna', 2020, 34000, 'Negro'),
(0, 'Honda', 'Odyssey', 2018, 28000, 'Plata'),
(0, 'Ford', 'Explorer', 2021, 38000, 'Verde'),
(0, 'Chevrolet', 'Tahoe', 2019, 42000, 'Amarillo'),
(0, 'Nissan', 'Armada', 2017, 35000, 'Azul'),
(0, 'Toyota', 'Tacoma', 2019, 31000, 'Blanco'),
(0, 'Honda', 'Ridgeline', 2018, 32000, 'Gris'),
(0, 'Ford', 'F-150', 2020, 40000, 'Rojo'),
(0, 'Chevrolet', 'Silverado', 2019, 38000, 'Negro'),
(0, 'Nissan', 'Titan', 2017, 37000, 'Plata'),
(0, 'Toyota', 'Tundra', 2021, 45000, 'Verde'),
(0, 'Honda', 'Pilot', 2019, 36000, 'Amarillo'),
(0, 'Ford', 'Expedition', 2018, 43000, 'Azul'),
(0, 'Chevrolet', 'Suburban', 2020, 50000, 'Blanco'),
(0, 'Nissan', 'NV', 2017, 40000, 'Gris'),
(0, 'Toyota', 'Sienna', 2019, 48000, 'Rojo'),
(0, 'Honda', 'Odyssey', 2018, 44000, 'Negro'),
(0, 'Ford', 'Transit', 2021, 52000, 'Plata'),
(0, 'Chevrolet', 'Express', 2019, 46000, 'Verde'),
(0, 'Nissan', 'NV200', 2017, 43000, 'Amarillo'),
(0, 'Toyota', 'Avalon', 2020, 55000, 'Azul'),
(0, 'Honda', 'Insight', 2018, 50000, 'Blanco'),
(0, 'Ford', 'Fusion', 2019, 49000, 'Gris'),
(0, 'Chevrolet', 'Bolt', 2017, 53000, 'Rojo'),
(0, 'Nissan', 'Leaf', 2021, 60000, 'Negro');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
