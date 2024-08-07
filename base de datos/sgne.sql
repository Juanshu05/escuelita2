-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-08-2024 a las 16:36:00
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
-- Base de datos: `sgne`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `DNI` double NOT NULL,
  `nombre` varchar(40) DEFAULT NULL,
  `apellido` varchar(40) DEFAULT NULL,
  `fechaNac` date DEFAULT NULL,
  `nacionalidad` varchar(40) DEFAULT NULL,
  `numCelularTutor` varchar(12) DEFAULT NULL,
  `calle` varchar(40) DEFAULT NULL,
  `altura` varchar(40) DEFAULT NULL,
  `localidad` varchar(40) DEFAULT NULL,
  `ID_Curso` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `ID` varchar(20) NOT NULL,
  `nivel` varchar(20) DEFAULT NULL,
  `anio` int(11) DEFAULT NULL,
  `division` int(11) DEFAULT NULL,
  `orientacion` varchar(40) DEFAULT NULL,
  `grupo` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `CUPOF` double NOT NULL,
  `nombre` varchar(40) DEFAULT NULL,
  `CUPOF_Profesor` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia_curso`
--

CREATE TABLE `materia_curso` (
  `CUPOF_Materia` double NOT NULL,
  `ID_Curso` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

CREATE TABLE `profesores` (
  `CUIL` double NOT NULL,
  `nombre` varchar(40) DEFAULT NULL,
  `apellido` varchar(40) DEFAULT NULL,
  `calle` varchar(40) DEFAULT NULL,
  `altura` varchar(40) DEFAULT NULL,
  `localidad` varchar(40) DEFAULT NULL,
  `numCelular` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`DNI`),
  ADD KEY `ID_Curso` (`ID_Curso`);

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`CUPOF`),
  ADD KEY `CUPOF_Profesor` (`CUPOF_Profesor`);

--
-- Indices de la tabla `materia_curso`
--
ALTER TABLE `materia_curso`
  ADD KEY `CUPOF_Materia` (`CUPOF_Materia`),
  ADD KEY `ID_Curso` (`ID_Curso`);

--
-- Indices de la tabla `profesores`
--
ALTER TABLE `profesores`
  ADD PRIMARY KEY (`CUIL`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD CONSTRAINT `ID_Curso` FOREIGN KEY (`ID_Curso`) REFERENCES `curso` (`ID`);

--
-- Filtros para la tabla `materia`
--
ALTER TABLE `materia`
  ADD CONSTRAINT `CUPOF_Profesor` FOREIGN KEY (`CUPOF_Profesor`) REFERENCES `profesores` (`CUIL`);

--
-- Filtros para la tabla `materia_curso`
--
ALTER TABLE `materia_curso`
  ADD CONSTRAINT `materia_curso_ibfk_1` FOREIGN KEY (`CUPOF_Materia`) REFERENCES `materia` (`CUPOF`),
  ADD CONSTRAINT `materia_curso_ibfk_2` FOREIGN KEY (`ID_Curso`) REFERENCES `curso` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
