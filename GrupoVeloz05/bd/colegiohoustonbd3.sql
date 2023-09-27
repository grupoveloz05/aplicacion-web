-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-09-2023 a las 17:34:44
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
-- Base de datos: `colegiohoustonbd3`
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
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `id_curso` int(6) NOT NULL,
  `curso` varchar(30) COLLATE utf8_spanish_ci NOT NULL
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
  `cursoe` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `correoe` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `telefonoe` char(12) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`id_estudiante`, `nombree`, `apellidoe`, `edade`, `dirreccione`, `sexoe`, `fnacimientoe`, `cursoe`, `correoe`, `telefonoe`) VALUES
(1, 'Joselo', 'Capellan', 11, 'Gurabo,Santiago', 'Masculino', '2012-05-10', 'Primero', 'joselo@gmail.com', '809-408-1978'),
(2, 'Julia', 'Perez', 11, 'Camboya,Santiago', 'Femenino', '2012-09-13', 'Primero', 'julia@hotmail.com', '829-948-5960'),
(3, 'Juan', 'Cruz', 12, 'Villa Olimpica,Santiago', 'Masculino', '2011-09-06', 'Primero', 'juan@hotmail.com', '829-546-9521'),
(4, 'Maria', 'Almonte', 12, 'Cienfuegos,Santiago', 'Femenino', '2011-07-04', 'Primero', 'marialmonte@hotmail.com', '829-540-5577'),
(5, 'Ramona', 'Guzman', 11, 'Buenos Aires,Santiago', 'Femenino', '2012-08-02', 'Primero', 'ramona@hotmail.com', '829-125-2200'),
(6, 'Pedro', 'Cruz', 12, 'La Real,Santiago', 'Masculino', '2011-08-02', 'Primero', 'pedro@hotmail.com', '829-641-2848'),
(7, 'Antonio', 'Garcia', 11, 'Buenos Aires,Santiago', 'Masculino', '2012-05-05', 'Primero', 'antonio@gmail.com', '829-665-4144'),
(8, 'Maria', 'Martinez', 12, 'Pekin,Santiago', 'Femenino', '2011-01-08', 'Primero', 'maria@gmail.com', '829-220-4785'),
(9, 'Francisco', 'Lopez', 11, 'Cienfuegos,Santiago', 'Masculino', '2012-08-05', 'Primero', 'francisco@gmail.com', '829-220-4448'),
(10, 'Manuel', 'Gonzalez', 11, 'Las Colinas,Santiago', 'Masculino', '2012-02-05', 'Primero', 'manuel@gmail.com', '829-111-4569'),
(11, 'Dolores', 'Gomez', 13, 'El invi,Santiago', 'Femenino', '2010-02-05', 'Segundo', 'dolores@gmail.com', '829-555-6966'),
(12, 'Jesus', 'Fernandez', 13, 'Ensanche Libertad,Santiago', 'Masculino', '2010-07-02', 'Segundo', 'jesus@gmail.com', '809-332-1445'),
(13, 'Angel', 'Jimenez', 13, 'Ensanche Bermudez,Santiago', 'Masculino', '2010-02-03', 'Segundo', 'angel@gmail.com', '829-888-6665'),
(14, 'Antonia', 'Rodriguez', 14, 'Las Colinas,Santiago', 'Femenino', '2009-02-09', 'Segundo', 'antonia@gmail.com', '829-326-6528'),
(15, 'Lucia', 'Romero', 13, 'Camboya,Santiago', 'Femenino', '2010-01-08', 'Segundo', 'lucia@gmail.com', '809-663-4539'),
(16, 'Elena', 'Castillo', 13, 'Los Reyes,Santiago', 'Femenino', '2010-02-04', 'Segundo', 'elena@gmail.com', '809-663-2222'),
(17, 'Diego', 'Ortiz', 13, 'Ensanche Bermudez,Santiago', 'Masculino', '2010-05-02', 'Segundo', 'diego@gmail.com', '809-555-2210'),
(18, 'Andrea', 'Rodriguez', 13, 'Camboya,Santiago', 'Femenino', '2010-02-05', 'Segundo', 'andrea@gmail.com', '829-669-6930'),
(19, 'Raul', 'Torres', 13, 'Cerro Alto,Santiago', 'Masculino', '2010-05-03', 'Segundo', 'raul@gmail.com', '809-663-2598'),
(20, 'Josue', 'Mata', 13, 'La Terraza,Santiago', 'Masculino', '2010-05-09', 'Segundo', 'josue@gmail.com', '809-666-5555'),
(21, 'Cristian', 'Castro', 13, 'Miraflor,Santiago', 'Masculino', '2010-09-05', 'Segundo', 'cristian@gmail.com', '809-652-1635'),
(22, 'Nairoby', 'Almengot', 13, 'Cecara,Santiago', 'Femenino', '2010-08-06', 'Segundo', 'nairoby@gmail.com', '809-635-2514'),
(23, 'Jatnna', 'Guillen', 14, 'Los Jardines,Santiago', 'Femenino', '2009-05-09', 'Segundo', 'jatnna@gmail.com', '809-632-9854'),
(24, 'Johan', 'Martinez', 13, 'Las Carreras,Santiago', 'Masculino', '2010-09-22', 'Segundo', 'johan@gmail.com', '809-123-4567'),
(25, 'Bryan', 'Fernandez', 13, 'Tamboril,Santiago', 'Masculino', '2010-08-01', 'Segundo', 'bryan@gmail.com', '809-215-3369'),
(26, 'Brayan', 'Perez', 15, 'Licey,Santiago', 'Masculino', '2008-04-14', 'Tercero', 'brayan@gmail.com', '829-638-6666'),
(27, 'Jenny', 'Cruz', 14, 'El Ejido,Santiago', 'Femenino', '2009-07-13', 'Tercero', 'jenny@gmail.com', '809-673-1598'),
(28, 'Massiel', 'Cruz', 14, 'Ensanche Bolivar,Santiago', 'Femenino', '2009-05-16', 'Tercero', 'massiel@gmail.com', '809-963-8743'),
(29, 'Luis', 'Ortiz', 14, 'La Yaguita,Santiago', 'Masculino', '2009-03-14', 'Tercero', 'luis@gmail.com', '829-963-8521'),
(30, 'Manuela', 'Ceballo', 15, 'Villa Olga,Santiago', 'Femenino', '2008-05-13', 'Tercero', 'manuela@gmail.com', '809-651-8951'),
(31, 'Raquel', 'Collado', 14, 'El Embrujo l,Santiago', 'Femenino', '2009-05-18', 'Tercero', 'raquel@gmail.com', '809-555-6666'),
(32, 'Irene', 'Gil', 14, 'El Embrujo ll,Santiago', 'Femenino', '2009-06-21', 'Tercero', 'irene@gmail.com', '809-396-8219'),
(33, 'Teresa', 'Cano', 15, 'La Joya,Santiago', 'Femenino', '2008-08-17', 'Tercero', 'teresa@gmail.com', '809-654-7891'),
(34, 'Marleny', 'Muñoz', 15, 'Los Prados,Santiago', 'Femenino', '2008-07-10', 'Cuarto', 'marleny@gmail.com', '829-781-0008'),
(35, 'Emilio', 'Nuñez', 15, 'La Cienega,Santiago', 'Masculino', '2008-08-16', 'Cuarto', 'emilio@gmail.com', '809-735-9810'),
(36, 'Ana', 'Lopez', 15, 'Baracoa,Santiago', 'Femenino', '2008-06-15', 'Cuarto', 'analo@gmail.com', '809-745-6982'),
(37, 'Pablo', 'Gomez', 15, 'Baitoa,Santiago', 'Masculino', '2008-05-11', 'Cuarto', 'pablo@gmail.com', '829-147-8529'),
(38, 'Alejandra', 'Guzman', 16, 'Los Cocos,Santiago', 'Femenino', '2007-09-14', 'Cuarto', 'alejandra@gmail.com', '809-752-9851'),
(39, 'Eduardo', 'Sanchez', 15, 'Jacagua,Santiago', 'Masculino', '2008-03-16', 'Cuarto', 'eduardo@gmail.com', '809-528-6696'),
(40, 'Fernanda', 'Delgado', 16, 'Los Jardines,Santiago', 'Femenino', '2007-05-29', 'Cuarto', 'fernanda@gmail.com', '809-752-5588'),
(41, 'Laura', 'Soto', 15, 'Los Alamos,Santiago', 'Femenino', '2008-05-30', 'Cuarto', 'laura@gmail.com', '809-658-1010'),
(42, 'Paula', 'Leon', 16, 'Gurabo,Santiago', 'Femenino', '2007-09-20', 'Cuarto', 'paula@gmail.com', '809-418-8529'),
(43, 'Jimena', 'Santos', 15, 'Ensanche Espaillat,Santiago', 'Femenino', '2008-05-09', 'Cuarto', 'jimena@gmail.com', '809-675-9418'),
(44, 'Renata', 'Morales', 15, 'Monterico,Santiago', 'Femenino', '2008-05-06', 'Cuarto', 'renata@gmail.com', '809-665-4178'),
(45, 'Valentina', 'Rivas', 15, 'Altos de Rafey,Santiago', 'Femenino', '2008-02-09', 'Cuarto', 'valentina@gmail.com', '809-667-2158'),
(46, 'Alicia', 'Collado', 16, 'Los Reyes,Santiago', 'Femenino', '2007-01-05', 'Quinto', 'alicia@gmail.com', '829-660-3332'),
(47, 'Luis', 'Mendoza', 16, 'Rafey,Santiago', 'Masculino', '2007-04-03', 'Quinto', 'luismen@gmail.com', '809-301-5248'),
(48, 'Karen', 'Cordero', 16, 'Los Salados,Santiago', 'Femenino', '2007-10-10', 'Quinto', 'karen@gmail.com', '809-987-543'),
(49, 'Antonio', 'Silva', 16, 'La Otra Banda,Santiago', 'Masculino', '2007-02-05', 'Quinto', 'antonio@gmail.com', '809-258-9631'),
(50, 'Mario', 'Peña', 16, 'La Trinitaria,Santiago', 'Masculino', '2007-09-09', 'Quinto', 'mario@gmail.com', '829-635-2555'),
(51, 'Daniel', 'Navarro', 17, 'Cerros de Gurabo,Santiago', 'Masculino', '2006-08-08', 'Quinto', 'daniel@gmail.com', '809-632-8569'),
(52, 'Carlos', 'Pimentel', 17, 'Bella Vista,Santiago', 'Masculino', '2006-05-25', 'Quinto', 'carlospim@gmail.com', '809-824-6595'),
(53, 'Manuel', 'Rodriguez', 17, 'Buena Vista,Santiago', 'Masculino', '2006-11-20', 'Quinto', 'manuel@gmail.com', '809-739-1824'),
(54, 'Mariana', 'Perez', 16, 'Reparto Peralta,Santiago', 'Femenino', '2007-05-15', 'Quinto', 'mariana@gmail.com', '829-524-9638'),
(55, 'Patricia', 'Caba', 17, 'Pontezuela,Santiago', 'Femenino', '2006-11-12', 'Quinto', 'patricia@gmail.com', '809-321-6947'),
(56, 'Alberto', 'Mendoza', 16, 'Villa Verde,Santiago', 'Masculino', '2007-05-08', 'Quinto', 'alberto@gmail.com', '809-632-8514'),
(57, 'Alvaro', 'Castillo', 18, 'Padre las Casas,Santiago', 'Masculino', '2005-03-20', 'Sexto', 'alvaro@gmail.com', '829-652-1478'),
(58, 'Coral', 'Gonzalez', 18, 'Las Charcas,Santiago', 'Femenino', '2005-02-08', 'Sexto', 'coral@gmail.com', '809-657-6952'),
(59, 'Daniel', 'Aguilar', 18, 'Canabacoa,Santiago', 'Masculino', '2005-09-03', 'Sexto', 'daniel@gmail.com', '809-652-9568'),
(60, 'David', 'Figueroa', 17, 'Matanza,Santiago', 'Masculino', '2006-06-09', 'Sexto', 'david@gmail.com', '829-354-1235'),
(61, 'Francisco', 'Sanchez', 17, 'Las Palomas,Santiago', 'Masculino', '2006-09-06', 'Sexto', 'francisco@gmail.com', '809-225-2269'),
(62, 'Joaquin', 'Martinez', 18, 'Palo Alto,Santiago', 'Masculino', '2005-09-06', 'Sexto', 'joaquin@gmail.com', '809-352-6528'),
(63, 'Jorge', 'Ramirez', 18, 'Pedro Garcia,Santiago', 'Masculino', '2005-12-22', 'Sexto', 'jorgemen@gmail.com', '829-632-8569'),
(64, 'Nicolas', 'Alvarez', 18, 'Monterico,Santiago', 'Masculino', '2005-09-05', 'Sexto', 'nicolas@gmail.com', '829-641-9674'),
(65, 'Victor', 'Peña', 17, 'La Satelite,Santiago', 'Masculino', '2006-02-04', 'Sexto', 'victor@gmail.com', '829-693-8574'),
(66, 'Victoria', 'Castillo', 18, 'El Mella l,Santiago', 'Femenino', '2005-05-09', 'Sexto', 'victoriacas@gmail.com', '829-526-3521'),
(67, 'Sara', 'Sanchez', 17, 'El Mella ll,Santiago', 'Femenino', '2006-04-08', 'Sexto', 'sara@gmail.com', '809-718-6529'),
(68, 'Leticia', 'Garcia', 17, 'Las Dianas,Santiago', 'Femenino', '2006-05-08', 'Sexto', 'leticia@gmail.com', '829-852-9641'),
(69, 'Arturo', 'Gonzalez', 17, 'Pontezuela,Santiago', 'Masculino', '2006-01-02', 'Sexto', 'arturo@gmail.com', '809-220-8520');

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
  `materiap` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `cursop` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `correop` varchar(80) COLLATE utf8_spanish_ci NOT NULL,
  `telefonop` char(12) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promedio_final`
--

CREATE TABLE `promedio_final` (
  `id_promediofinal` int(3) NOT NULL,
  `id_estudiante` int(6) NOT NULL,
  `id_profesor` int(6) NOT NULL,
  `id_cuatrimestre1` int(6) NOT NULL,
  `id_cuatrimestre2` int(6) NOT NULL,
  `id_cuatrimestre3` int(6) NOT NULL,
  `promedio_final` int(3) NOT NULL
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
  `clave` varchar(20) COLLATE utf8_spanish_ci NOT NULL
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
-- Indices de la tabla `promedio_final`
--
ALTER TABLE `promedio_final`
  ADD PRIMARY KEY (`id_promediofinal`);

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
-- AUTO_INCREMENT de la tabla `curso`
--
ALTER TABLE `curso`
  MODIFY `id_curso` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  MODIFY `id_estudiante` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

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
-- AUTO_INCREMENT de la tabla `promedio_final`
--
ALTER TABLE `promedio_final`
  MODIFY `id_promediofinal` int(3) NOT NULL AUTO_INCREMENT;

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
