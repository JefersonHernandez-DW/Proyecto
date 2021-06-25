-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-06-2021 a las 17:02:20
-- Versión del servidor: 10.3.16-MariaDB
-- Versión de PHP: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mydb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitación`
--

CREATE TABLE `habitación` (
  `tipoHabitación` int(11) NOT NULL,
  `infoHabitacion` varchar(45) NOT NULL,
  `precio` varchar(45) NOT NULL,
  `caracteristicas` varchar(45) NOT NULL,
  `persona_idpersona` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `idpersona` int(11) NOT NULL,
  `rollPersona` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `dirección` varchar(45) NOT NULL,
  `teléfono` varchar(45) NOT NULL,
  `contraseña` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`idpersona`, `rollPersona`, `nombre`, `apellido`, `dirección`, `teléfono`, `contraseña`) VALUES
(1, 'huesped', 'juan', 'pepe', 'sogamoso', '3119006060', NULL),
(987, 'admin', 'juan', 'pepe', 'sogamoso', '3119006060', '1234');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registrohuespedes`
--

CREATE TABLE `registrohuespedes` (
  `idreserva` int(11) NOT NULL,
  `fechaIngreso` varchar(45) NOT NULL,
  `fechaSalida` varchar(45) NOT NULL,
  `cantidadPersonas` varchar(45) NOT NULL,
  `persona_idpersona` int(11) NOT NULL,
  `habitación_tipoHabitación` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `habitación`
--
ALTER TABLE `habitación`
  ADD PRIMARY KEY (`tipoHabitación`),
  ADD KEY `fk_habitación_persona1_idx` (`persona_idpersona`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`idpersona`);

--
-- Indices de la tabla `registrohuespedes`
--
ALTER TABLE `registrohuespedes`
  ADD PRIMARY KEY (`idreserva`),
  ADD KEY `fk_registroHuespedes_persona_idx` (`persona_idpersona`),
  ADD KEY `fk_registroHuespedes_habitación1_idx` (`habitación_tipoHabitación`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `habitación`
--
ALTER TABLE `habitación`
  ADD CONSTRAINT `fk_habitación_persona1` FOREIGN KEY (`persona_idpersona`) REFERENCES `persona` (`idpersona`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `registrohuespedes`
--
ALTER TABLE `registrohuespedes`
  ADD CONSTRAINT `fk_registroHuespedes_habitación1` FOREIGN KEY (`habitación_tipoHabitación`) REFERENCES `habitación` (`tipoHabitación`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_registroHuespedes_persona` FOREIGN KEY (`persona_idpersona`) REFERENCES `persona` (`idpersona`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
