-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-03-2021 a las 18:36:08
-- Versión del servidor: 10.4.16-MariaDB
-- Versión de PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mercado`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `descripcion` varchar(1000) NOT NULL,
  `precio` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `nombre`, `descripcion`, `precio`) VALUES
(263, 'Pepino', 'Pepinos de calidad de la huerta de pechina', '1,25/KG'),
(264, 'Lejía', 'Lejia de nuestra marca para una casa bien bonita', '2'),
(265, 'Limpiacristales', 'Con este limpiacristales parecerá que no hay ventanas en tu casa', '2,50'),
(266, 'Aguacate', 'Aguacate de nuestra huerta de calidad de Murcia, con un sabor exquisito y único', '3/KG'),
(268, 'Pimiento rojo', 'Pimiento muy rico en proteínas, recogido de nuestra huerta de Alicante', '2/KG'),
(269, 'Galletas Asindado', 'Prueba estas nuevas galletas de nuestra marca con un sabor único e inigualable', '0.99'),
(270, 'Leche Desnatada Asindado', 'Nuestra leche proviene de una granja de Aguadulce, con un trato exquisito y un sabor perfecto', '0,45'),
(271, 'Chocolate Asindado', 'Nuestro chocolate hecho con mucho cariño', '1'),
(272, 'Agua Sierra Lamilla 8L', 'Agua recogida de la fuente de Sierra Lamilla, un pueblo muy conocido por su muy baja mineralización', '0,60'),
(273, 'Agua Sierra Lamilla 6L', 'Agua recogida de la fuente de Sierra Lamilla, un pueblo muy conocido por su muy baja mineralización', '0,50'),
(274, 'Agua Sierra Lamilla 2L', 'Agua recogida de la fuente de Sierra Lamilla, un pueblo muy conocido por su muy baja mineralización', '0,35'),
(276, 'Azucar Asindado 1KG', 'Azucar blanco', '1,50'),
(277, 'Azucar Asindado 1KG', 'Azucar blanco', '1,50');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=278;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
