-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-09-2023 a las 16:35:15
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `colegiohoustonbd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `id_admin` int(6) NOT NULL,
  `nombrea` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `apellidoa` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `edada` int(3) NOT NULL,
  `direcciona` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `cedulaa` int(16) NOT NULL,
  `fnacimientoa` date NOT NULL,
  `correoa` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `telefofoa` char(12) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuatrimestre1`
--

CREATE TABLE `cuatrimestre1` (
  `id_cuatrimestre1` int(6) NOT NULL,
  `septiembre` varchar(3) COLLATE utf8mb4_spanish_ci NOT NULL,
  `octubre` varchar(3) COLLATE utf8mb4_spanish_ci NOT NULL,
  `noviembre` varchar(3) COLLATE utf8mb4_spanish_ci NOT NULL,
  `diciembre` varchar(3) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuatrimestre2`
--

CREATE TABLE `cuatrimestre2` (
  `id_cuatrimestre2` int(6) NOT NULL,
  `enero` varchar(3) COLLATE utf8mb4_spanish_ci NOT NULL,
  `febrero` varchar(3) COLLATE utf8mb4_spanish_ci NOT NULL,
  `marzo` varchar(3) COLLATE utf8mb4_spanish_ci NOT NULL,
  `abril` varchar(3) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuatrimestre3`
--

CREATE TABLE `cuatrimestre3` (
  `id_cuatrimestre3` int(6) NOT NULL,
  `mayo` varchar(3) COLLATE utf8mb4_spanish_ci NOT NULL,
  `junio` varchar(3) COLLATE utf8mb4_spanish_ci NOT NULL,
  `julio` varchar(3) COLLATE utf8mb4_spanish_ci NOT NULL,
  `agosto` varchar(3) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `id_curso` int(6) NOT NULL,
  `curso` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `id_grado` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `id_estudiante` int(6) NOT NULL,
  `nombree` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `apellidoe` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `edade` int(3) NOT NULL,
  `dirreccione` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `sexoe` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `fnacimientoe` date NOT NULL,
  `id_curso` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `correoe` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `telefonoe` char(12) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grado`
--

CREATE TABLE `grado` (
  `id_grado` int(6) NOT NULL,
  `grado` varchar(3) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `id_materia` int(6) NOT NULL,
  `materia` varchar(40) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE `profesor` (
  `id_profesor` int(6) NOT NULL,
  `nombrep` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `apellidop` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `edadp` int(3) NOT NULL,
  `direccionp` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `sexop` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `cedulap` int(16) NOT NULL,
  `fnacimientop` date NOT NULL,
  `id_materia` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `id_curso` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `correop` varchar(80) COLLATE utf8_spanish_ci NOT NULL,
  `telefonop` char(12) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_rol` int(6) NOT NULL,
  `rol` varchar(16) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_rol`, `rol`) VALUES
(1, 'administrador'),
(2, 'profesor'),
(3, 'estudiante');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(6) NOT NULL,
  `usuario` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `clave` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `id_rol` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indices de la tabla `cuatrimestre1`
--
ALTER TABLE `cuatrimestre1`
  ADD PRIMARY KEY (`id_cuatrimestre1`);

--
-- Indices de la tabla `cuatrimestre2`
--
ALTER TABLE `cuatrimestre2`
  ADD PRIMARY KEY (`id_cuatrimestre2`);

--
-- Indices de la tabla `cuatrimestre3`
--
ALTER TABLE `cuatrimestre3`
  ADD PRIMARY KEY (`id_cuatrimestre3`);

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`id_curso`);

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`id_estudiante`);

--
-- Indices de la tabla `grado`
--
ALTER TABLE `grado`
  ADD PRIMARY KEY (`id_grado`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`id_materia`);

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`id_profesor`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
  MODIFY `id_admin` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cuatrimestre1`
--
ALTER TABLE `cuatrimestre1`
  MODIFY `id_cuatrimestre1` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cuatrimestre2`
--
ALTER TABLE `cuatrimestre2`
  MODIFY `id_cuatrimestre2` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cuatrimestre3`
--
ALTER TABLE `cuatrimestre3`
  MODIFY `id_cuatrimestre3` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `curso`
--
ALTER TABLE `curso`
  MODIFY `id_curso` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  MODIFY `id_estudiante` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `grado`
--
ALTER TABLE `grado`
  MODIFY `id_grado` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `materia`
--
ALTER TABLE `materia`
  MODIFY `id_materia` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `profesor`
--
ALTER TABLE `profesor`
  MODIFY `id_profesor` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id_rol` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(6) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
