-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-10-2020 a las 21:52:02
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto_minero`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `minero`
--

CREATE TABLE `minero` (
  `idMinero` int(11) NOT NULL,
  `tipoDocumento` varchar(200) NOT NULL,
  `numeroDocumento` varchar(100) NOT NULL,
  `nombres` varchar(200) NOT NULL,
  `apellidos` varchar(200) NOT NULL,
  `email` varchar(300) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `nombreFamiliar` varchar(200) NOT NULL,
  `telefonoFamiliar` varchar(100) NOT NULL,
  `direccion` varchar(300) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `estado` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `minero`
--

INSERT INTO `minero` (`idMinero`, `tipoDocumento`, `numeroDocumento`, `nombres`, `apellidos`, `email`, `telefono`, `nombreFamiliar`, `telefonoFamiliar`, `direccion`, `foto`, `estado`) VALUES
(4, 'Cédula de Extranjería', '222222', 'Manuel S', 'Silva T', 'manuel@gmail.com', '3133333444', 'Ganzo Prueba', '31333333', 'Av 4 Atalayaaa', 'img-login.png', 'true'),
(5, 'Cédula de Ciudadanía', '10088888', 'Brayan', 'Rodriguez', 'br@br.com', '3133333333', 'Hector', '3124481775', 'Calle 2', 'foto.jpeg', 'true');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `idPersona` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `apellido` varchar(200) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `foto` varchar(200) NOT NULL,
  `rol` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`idPersona`, `nombre`, `apellido`, `telefono`, `email`, `password`, `foto`, `rol`) VALUES
(1, 'Empresa Minera del Zulia', 'Mineria', '+57 3132356478', 'mineria@gmail.com', '123456789', 'avatarEmpresa.jpg', 'Administrador');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `minero`
--
ALTER TABLE `minero`
  ADD PRIMARY KEY (`idMinero`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`idPersona`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `minero`
--
ALTER TABLE `minero`
  MODIFY `idMinero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `idPersona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
