-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-08-2024 a las 16:59:51
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
  `ID_Alumno` double DEFAULT NULL,
  `año` varchar(10) DEFAULT NULL,
  `division` varchar(10) DEFAULT NULL,
  `especialidad` varchar(40) DEFAULT NULL,
  `turno` varchar(20) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `informacioncontacto`
--

CREATE TABLE `informacioncontacto` (
  `ID` double NOT NULL,
  `ID_Persona` double NOT NULL,
  `numCelular` varchar(12) NOT NULL,
  `numTelefono` varchar(12) NOT NULL,
  `correoElectronico` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
  `municipio` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesional`
--

CREATE TABLE `profesional` (
  `ID` double NOT NULL,
  `ID_Persona` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_Alumno` (`ID_Alumno`);

--
-- Indices de la tabla `informacioncontacto`
--
ALTER TABLE `informacioncontacto`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_Persona` (`ID_Persona`);

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
  ADD KEY `ID_Persona` (`ID_Persona`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumno`
--
ALTER TABLE `alumno`
  MODIFY `ID` double NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD CONSTRAINT `alumno_ibfk_1` FOREIGN KEY (`ID_Alumno`) REFERENCES `personas` (`ID`);

--
-- Filtros para la tabla `informacioncontacto`
--
ALTER TABLE `informacioncontacto`
  ADD CONSTRAINT `informacioncontacto_ibfk_1` FOREIGN KEY (`ID_Persona`) REFERENCES `personas` (`ID`);

--
-- Filtros para la tabla `profesional`
--
ALTER TABLE `profesional`
  ADD CONSTRAINT `profesional_ibfk_1` FOREIGN KEY (`ID_Persona`) REFERENCES `personas` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
