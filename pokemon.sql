-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 03-04-2021 a las 02:26:12
-- Versión del servidor: 5.7.33-0ubuntu0.18.04.1
-- Versión de PHP: 7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `freedbtech_lenguajes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pokemon`
--

CREATE TABLE `pokemon` (
  `clave_pokemon` int(11) NOT NULL,
  `nombre_pokemon` varchar(255) NOT NULL,
  `tipo_pokemon` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pokemon`
--

INSERT INTO `pokemon` (`clave_pokemon`, `nombre_pokemon`, `tipo_pokemon`) VALUES(1, 'p13333', '2');
INSERT INTO `pokemon` (`clave_pokemon`, `nombre_pokemon`, `tipo_pokemon`) VALUES(3, 'kavi', 'gato');
INSERT INTO `pokemon` (`clave_pokemon`, `nombre_pokemon`, `tipo_pokemon`) VALUES(4, 'daksa', 'negrita');
INSERT INTO `pokemon` (`clave_pokemon`, `nombre_pokemon`, `tipo_pokemon`) VALUES(5, 'zeus', 'negrito');
INSERT INTO `pokemon` (`clave_pokemon`, `nombre_pokemon`, `tipo_pokemon`) VALUES(6, 'tobi', 'bagrecito');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pokemon`
--
ALTER TABLE `pokemon`
  ADD PRIMARY KEY (`clave_pokemon`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pokemon`
--
ALTER TABLE `pokemon`
  MODIFY `clave_pokemon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
