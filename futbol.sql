-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-06-2019 a las 08:31:48
-- Versión del servidor: 10.1.40-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `futbol`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `gestionarEquipo` (IN `tipoOperacion` INT(1), IN `p_idEquipo` INT, IN `p_nombre` VARCHAR(30), IN `p_nombreEntrenador` VARCHAR(60))  BEGIN

DECLARE numeroRegistros int;



IF tipoOperacion = 1 THEN

   

 SELECT COUNT(1) INTO numeroRegistros
    FROM equipo WHERE idEquipo= p_idEquipo;
    
    
    

   
 IF numeroRegistros = 0 THEN
   INSERT INTO equipo VALUES (p_idEquipo,p_nombre,p_nombreEntrenador);
  

    ELSE 
	SET SQL_SAFE_UPDATES=0;
    UPDATE equipo SET idEquipo= p_idEquipo,nombre = p_nombre,nombreEntrenador = p_nombreEntrenador
    WHERE  idEquipo= p_idEquipo;

    END IF;
END IF;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `gestionarJugador` (IN `tipoOperacion` INT(1), IN `p_idJugador` INT, IN `p_nombres` VARCHAR(50), IN `p_dorsal` INT, IN `p_posicion` VARCHAR(40), IN `p_idEquipo` INT)  BEGIN

DECLARE numeroRegistros int;

IF tipoOperacion = 1 THEN


 SELECT COUNT(1) INTO numeroRegistros
    FROM jugadores WHERE idJugador= p_idJugador;
    
    
 IF numeroRegistros = 0 THEN
   INSERT INTO jugadores VALUES (p_idJugador,p_nombres,p_dorsal,p_posicion,p_idEquipo);
  

    ELSE 
	SET SQL_SAFE_UPDATES=0;
    UPDATE jugadores SET idJugador= p_idJugador,nombres = p_nombres,dorsal = p_dorsal,posicion = p_posicion,idEquipo = p_idEquipo
    WHERE  idJugador= p_idJugador;

    END IF;
END IF;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `gestionarTablaMarcadores` (IN `tipoOperacion` INT(1), IN `p_idEquipo` INT, IN `p_golesAfavor` INT, IN `p_golesEncontra` INT, IN `p_juegosJugados` INT, IN `p_juegosEmpatados` INT, IN `p_juegosGanados` INT)  BEGIN

DECLARE numeroRegistros int;



IF tipoOperacion = 1 THEN

   

 SELECT COUNT(1) INTO numeroRegistros
    FROM tablamarcadores WHERE idEquipo= p_idEquipo;
    
    
    

   
 IF numeroRegistros = 0 THEN
   INSERT INTO tablamarcadores VALUES (p_idEquipo,p_golesAfavor,p_golesEncontra,p_juegosJugados,p_juegosEmpatados,p_juegosGanados);
  

    ELSE 
	SET SQL_SAFE_UPDATES=0;
    UPDATE tablamarcadores SET idEquipo= p_idEquipo,golesAfavor = p_golesAfavor,golesEncontra = p_golesEncontra,juegosJugados = p_juegosJugados, juegosEmpatados = p_juegosEmpatados,juegosGanados = p_juegosGanados
    WHERE  idEquipo= p_idEquipo;

    END IF;
END IF;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo`
--

CREATE TABLE `equipo` (
  `idEquipo` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `nombreEntrenador` varchar(60) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `equipo`
--

INSERT INTO `equipo` (`idEquipo`, `nombre`, `nombreEntrenador`) VALUES
(10, 'Real Madrid', 'Zidane'),
(11, 'Barcelona', 'Valverde'),
(12, 'PSG', 'San Paoli');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugadores`
--

CREATE TABLE `jugadores` (
  `idJugador` int(11) NOT NULL,
  `nombres` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `dorsal` int(10) NOT NULL,
  `posicion` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `idEquipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `jugadores`
--

INSERT INTO `jugadores` (`idJugador`, `nombres`, `dorsal`, `posicion`, `idEquipo`) VALUES
(1102852456, 'Griezman', 7, 'Lateral', 11),
(1102876847, 'Hazard', 10, 'Central', 10),
(1109645753, 'Luis', 8, 'Medio campo', 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partidos`
--

CREATE TABLE `partidos` (
  `idPartido` int(11) NOT NULL,
  `equipoUno` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `equipoDos` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `lugarPartido` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `fechaPartido` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tablamarcadores`
--

CREATE TABLE `tablamarcadores` (
  `idEquipo` int(11) NOT NULL,
  `golesAfavor` int(11) NOT NULL,
  `golesEncontra` int(11) NOT NULL,
  `juegosJugados` int(11) NOT NULL,
  `juegosEmpatados` int(11) NOT NULL,
  `juegosGanados` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tablamarcadores`
--

INSERT INTO `tablamarcadores` (`idEquipo`, `golesAfavor`, `golesEncontra`, `juegosJugados`, `juegosEmpatados`, `juegosGanados`) VALUES
(10, 14, 6, 20, 6, 14),
(11, 50, 12, 40, 5, 35),
(12, 17, 5, 20, 2, 18);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD PRIMARY KEY (`idEquipo`);

--
-- Indices de la tabla `jugadores`
--
ALTER TABLE `jugadores`
  ADD PRIMARY KEY (`idJugador`),
  ADD KEY `fk_IdEquipo_idx` (`idEquipo`);

--
-- Indices de la tabla `partidos`
--
ALTER TABLE `partidos`
  ADD PRIMARY KEY (`idPartido`);

--
-- Indices de la tabla `tablamarcadores`
--
ALTER TABLE `tablamarcadores`
  ADD PRIMARY KEY (`idEquipo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `equipo`
--
ALTER TABLE `equipo`
  MODIFY `idEquipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12313;

--
-- AUTO_INCREMENT de la tabla `partidos`
--
ALTER TABLE `partidos`
  MODIFY `idPartido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tablamarcadores`
--
ALTER TABLE `tablamarcadores`
  MODIFY `idEquipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=896;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `jugadores`
--
ALTER TABLE `jugadores`
  ADD CONSTRAINT `fk_idEquipo` FOREIGN KEY (`idEquipo`) REFERENCES `equipo` (`idEquipo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tablamarcadores`
--
ALTER TABLE `tablamarcadores`
  ADD CONSTRAINT `fk_Equipo` FOREIGN KEY (`idEquipo`) REFERENCES `equipo` (`idEquipo`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
