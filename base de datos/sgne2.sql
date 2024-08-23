-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-08-2024 a las 13:24:25
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
-- Base de datos: `sgne2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `ID` double NOT NULL,
  `ID_Persona` double DEFAULT NULL,
  `año` varchar(10) DEFAULT NULL,
  `division` varchar(10) DEFAULT NULL,
  `especialidad` varchar(40) DEFAULT NULL,
  `turno` varchar(20) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `ID_curso` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`ID`, `ID_Persona`, `año`, `division`, `especialidad`, `turno`, `estado`, `ID_curso`) VALUES
(2, NULL, NULL, NULL, NULL, NULL, 'Activo', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificacion_examen`
--

CREATE TABLE `calificacion_examen` (
  `ID` double NOT NULL,
  `ID_Examen` double NOT NULL,
  `ID_Estudiante` double NOT NULL,
  `calificacionNumerica` int(11) NOT NULL,
  `calificacionAlfabetica` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `ID` double NOT NULL,
  `nivel` varchar(20) DEFAULT NULL,
  `anio` int(11) DEFAULT NULL,
  `division` int(11) DEFAULT NULL,
  `orientacion` varchar(40) DEFAULT NULL,
  `grupo` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `examen`
--

CREATE TABLE `examen` (
  `ID` double NOT NULL,
  `ID_Materia` varchar(40) NOT NULL,
  `ID_Curso` double NOT NULL,
  `ID_Profesor` double NOT NULL,
  `nombre` varchar(40) DEFAULT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `informacioncontacto`
--

CREATE TABLE `informacioncontacto` (
  `ID` double NOT NULL,
  `ID_Persona` double NOT NULL,
  `numCelular` varchar(12) NOT NULL,
  `numTelefono` varchar(12) NOT NULL,
  `correoElectronico` varchar(40) NOT NULL,
  `numTutor` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `informacioncontacto`
--

INSERT INTO `informacioncontacto` (`ID`, `ID_Persona`, `numCelular`, `numTelefono`, `correoElectronico`, `numTutor`) VALUES
(0, 0, '', '', '', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `CUPOF` varchar(40) NOT NULL,
  `ID_Profesor` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia_curso`
--

CREATE TABLE `materia_curso` (
  `CUPOF_Materia` varchar(40) DEFAULT NULL,
  `ID_Curso` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `ID` double NOT NULL,
  `CUIL` double DEFAULT NULL,
  `nombre` varchar(40) DEFAULT NULL,
  `apellido` varchar(40) DEFAULT NULL,
  `genero` varchar(40) DEFAULT NULL,
  `fechaNac` date DEFAULT NULL,
  `nacionalidad` varchar(40) DEFAULT NULL,
  `calle` varchar(40) DEFAULT NULL,
  `altura` varchar(40) DEFAULT NULL,
  `municipio` varchar(40) DEFAULT NULL,
  `rol` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`ID`, `CUIL`, `nombre`, `apellido`, `genero`, `fechaNac`, `nacionalidad`, `calle`, `altura`, `municipio`, `rol`) VALUES
(0, 1111111, 'aaaaaaaa', 'sssssssss', 'Masculino', '0211-02-11', 'aaa', 'sss', '11', 'ssssss', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesional`
--

CREATE TABLE `profesional` (
  `ID` double NOT NULL,
  `ID_Persona` double DEFAULT NULL,
  `fechaIngreso` date DEFAULT NULL,
  `titulo` varchar(40) DEFAULT NULL,
  `tipoTitulo` varchar(40) DEFAULT NULL,
  `institucionEgreso` varchar(40) DEFAULT NULL,
  `fechaEgreso` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `alumno_ibfk_2` (`ID_curso`),
  ADD KEY `alumno_ibfk_1` (`ID_Persona`);

--
-- Indices de la tabla `calificacion_examen`
--
ALTER TABLE `calificacion_examen`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `calificacion_examen_ibfk_1` (`ID_Examen`),
  ADD KEY `calificacion_examen_ibfk_2` (`ID_Estudiante`);

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `examen`
--
ALTER TABLE `examen`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `examen_ibfk_1` (`ID_Curso`),
  ADD KEY `examen_ibfk_2` (`ID_Materia`),
  ADD KEY `examen_ibfk_3` (`ID_Profesor`);

--
-- Indices de la tabla `informacioncontacto`
--
ALTER TABLE `informacioncontacto`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `informacioncontacto_ibfk_1` (`ID_Persona`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`CUPOF`),
  ADD KEY `materia_ibfk_1` (`ID_Profesor`);

--
-- Indices de la tabla `materia_curso`
--
ALTER TABLE `materia_curso`
  ADD KEY `materia_curso_ibfk_1` (`CUPOF_Materia`),
  ADD KEY `materia_curso_ibfk_2` (`ID_Curso`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `profesional`
--
ALTER TABLE `profesional`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `profesional_ibfk_1` (`ID_Persona`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumno`
--
ALTER TABLE `alumno`
  MODIFY `ID` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD CONSTRAINT `alumno_ibfk_1` FOREIGN KEY (`ID_Persona`) REFERENCES `personas` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `alumno_ibfk_2` FOREIGN KEY (`ID_curso`) REFERENCES `curso` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `calificacion_examen`
--
ALTER TABLE `calificacion_examen`
  ADD CONSTRAINT `calificacion_examen_ibfk_1` FOREIGN KEY (`ID_Examen`) REFERENCES `examen` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `calificacion_examen_ibfk_2` FOREIGN KEY (`ID_Estudiante`) REFERENCES `alumno` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `examen`
--
ALTER TABLE `examen`
  ADD CONSTRAINT `examen_ibfk_1` FOREIGN KEY (`ID_Curso`) REFERENCES `curso` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `examen_ibfk_2` FOREIGN KEY (`ID_Materia`) REFERENCES `materia` (`CUPOF`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `examen_ibfk_3` FOREIGN KEY (`ID_Profesor`) REFERENCES `profesional` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `informacioncontacto`
--
ALTER TABLE `informacioncontacto`
  ADD CONSTRAINT `informacioncontacto_ibfk_1` FOREIGN KEY (`ID_Persona`) REFERENCES `personas` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `materia`
--
ALTER TABLE `materia`
  ADD CONSTRAINT `materia_ibfk_1` FOREIGN KEY (`ID_Profesor`) REFERENCES `profesional` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `materia_curso`
--
ALTER TABLE `materia_curso`
  ADD CONSTRAINT `materia_curso_ibfk_1` FOREIGN KEY (`CUPOF_Materia`) REFERENCES `materia` (`CUPOF`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `materia_curso_ibfk_2` FOREIGN KEY (`ID_Curso`) REFERENCES `curso` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `profesional`
--
ALTER TABLE `profesional`
  ADD CONSTRAINT `profesional_ibfk_1` FOREIGN KEY (`ID_Persona`) REFERENCES `personas` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
