-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-04-2026 a las 06:01:56
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
-- Base de datos: `ct_usm_postulaciones`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo_persona`
--

CREATE TABLE `cargo_persona` (
  `id_cargo` int(11) NOT NULL,
  `nom_cargo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cargo_persona`
--

INSERT INTO `cargo_persona` (`id_cargo`, `nom_cargo`) VALUES
(1, '\"Estudiante\"'),
(2, '\"Profesor\"');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `rut_empresa` varchar(12) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `convenio` tinyint(1) NOT NULL,
  `nombre_representante` varchar(100) NOT NULL,
  `email_representante` varchar(100) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `id_tam` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`rut_empresa`, `nombre`, `convenio`, `nombre_representante`, `email_representante`, `telefono`, `id_tam`) VALUES
('76.111.222-3', 'Tech Solutions S.A.', 1, 'Carlos Perez', 'cperez@tech.cl', '911112222', 3),
('77.333.444-5', 'Pyme Innova SpA', 0, 'Ana Morales', 'amorales@innova.cl', '933334444', 1),
('78.777.888-9', 'EcoEnergía Ltda', 1, 'Lucia Rios', 'lrios@eco.cl', '977778888', 2),
('79.999.000-1', 'StartUp Valpo', 0, 'Seba Mack', 'smack@startup.cl', '999990000', 1),
('80.555.666-K', 'Global Mining Corp', 1, 'John Doe', 'jdoe@mining.com', '955556666', 3),
('81.222.333-4', 'Constructora Sur', 0, 'Pedro Vera', 'pvera@const.cl', '922223333', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo_de_trabajo`
--

CREATE TABLE `equipo_de_trabajo` (
  `id_grupo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `equipo_de_trabajo`
--

INSERT INTO `equipo_de_trabajo` (`id_grupo`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_postulacion`
--

CREATE TABLE `estado_postulacion` (
  `id_estado` int(11) NOT NULL,
  `nombre_estado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estado_postulacion`
--

INSERT INTO `estado_postulacion` (`id_estado`, `nombre_estado`) VALUES
(2, '\"Aprobada\"'),
(4, '\"Cerrada\"'),
(1, '\"En Revision\"'),
(3, '\"Rechazada\"');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `etapa_del_cronograma`
--

CREATE TABLE `etapa_del_cronograma` (
  `id_cronograma` int(11) NOT NULL,
  `id_n_postulacion` int(11) NOT NULL,
  `n_etapa` int(11) NOT NULL,
  `entregable` varchar(500) NOT NULL,
  `plazo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `etapa_del_cronograma`
--

INSERT INTO `etapa_del_cronograma` (`id_cronograma`, `id_n_postulacion`, `n_etapa`, `entregable`, `plazo`) VALUES
(1, 1, 1, 'Informe de Diseño', 12),
(2, 1, 2, 'Prototipo Funcional', 12),
(3, 1, 3, 'Manual de Usuario', 12),
(4, 2, 1, 'Estudio de Factibilidad', 12),
(5, 2, 2, 'Prototipo de Circuito', 12),
(6, 2, 3, 'Informe Final', 12),
(7, 3, 1, 'Modelado de Datos', 12),
(8, 3, 2, 'API Backend', 12),
(9, 3, 3, 'Test de Carga', 12),
(10, 4, 1, 'Estudio de Factibilidad', 12),
(11, 4, 2, 'Estudio de fuentes renovables', 12),
(12, 4, 3, 'Logistica para colocar las fuentes', 12),
(13, 4, 4, 'Efectuacion de la colocacion', 12),
(14, 5, 1, 'Encontrar lugares de dificil acceso', 12),
(15, 5, 2, 'Encontrar diferentes instrumentos que nos pueden ayudar', 12),
(16, 5, 3, 'Instalacion', 12),
(17, 6, 1, 'Análisis de datos históricos', 12),
(18, 6, 2, 'Modelo de predicción', 12),
(19, 6, 3, 'Integración API', 12),
(20, 7, 1, 'Mapeo de zonas', 12),
(21, 7, 2, 'Instalación sensores', 12),
(22, 7, 3, 'Dashboard control', 12),
(26, 13, 1, 'Levantamiento Eléctrico', 12),
(27, 13, 2, 'Instalación de Nodos', 12),
(28, 13, 3, 'Reporte de Eficiencia', 12),
(29, 8, 1, 'Diseño UI App', 12),
(30, 8, 2, 'Beta Testing', 12),
(31, 8, 3, 'Lanzamiento Store', 12),
(32, 12, 1, 'Instalación Sensores', 12),
(33, 12, 2, 'Pruebas de Red', 12),
(34, 12, 3, 'Entrega Sistema', 12),
(35, 14, 1, 'Eleccion Lugares', 5),
(36, 14, 2, 'Construccion paneles', 20),
(37, 14, 3, 'Entrega paneles', 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `iniciativa`
--

CREATE TABLE `iniciativa` (
  `id_iniciativa` int(11) NOT NULL,
  `nombre_iniciativa` varchar(255) NOT NULL,
  `Objetivo` text NOT NULL,
  `descrip_solucion` text NOT NULL,
  `resultados` varchar(1000) NOT NULL,
  `otros_documentos` mediumblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `iniciativa`
--

INSERT INTO `iniciativa` (`id_iniciativa`, `nombre_iniciativa`, `Objetivo`, `descrip_solucion`, `resultados`, `otros_documentos`) VALUES
(1, 'Sistema IoT Agrícola', 'Optimizar riego', 'Sensores de humedad', 'Ahorro 20% agua', NULL),
(2, 'Panel Solar Inteligente', 'Eficiencia energética', 'Seguimiento solar por IA', 'Mejora 15% captación', NULL),
(3, 'Rutas Optimizadas', 'Reducir CO2', 'Algoritmo de grafos', 'Reducción 10% combustible', NULL),
(4, 'Energia Renovable Universitaria', 'Obtener fuentes de energia renovables', 'Encontrar diferentes Fuentes de energia que puedan ayudar a la universidad', 'Universidad mas amigable con el medio ambiente', NULL),
(5, 'Mejor movilidad gente reducida', 'Incluir mejor a las personas con problemas motrices', 'Utilizacion de diferentes instrumentos para ayudar a la gente con movilidad reducida', 'Mejora en la inclusion universitaria', NULL),
(6, 'Inventario Pro SpA', 'Reducir quiebres de stock', 'Algoritmo predictivo de compras', 'Ahorro 12% en logística', NULL),
(7, 'Smart Irrigation USM', 'Optimizar uso de agua', 'Red de sensores LoRaWAN', 'Reducción 30% consumo hídrico', NULL),
(8, 'Sansano Zen', 'Bienestar estudiantil', 'App de gestión de ansiedad', 'Menor tasa de deserción', NULL),
(9, 'Minera Segura V2', 'Detección intrusos', 'Cámaras térmicas con visión nocturna', 'Cero robos reportados', NULL),
(10, 'Sansano Zen', 'Bienestar estudiantil', 'App de gestión de ansiedad', 'Menor tasa de deserción', NULL),
(11, 'Paneles solares para regiones', 'Ayudar a las regiones a tener mejores opciones para obtener energia', 'Creacion y donacion de diferentes paneles solares', 'Ahorro 30% costo eléctrico en lugares donados', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `integrante_equipo`
--

CREATE TABLE `integrante_equipo` (
  `id_grupo` int(11) NOT NULL,
  `rut_persona` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `integrante_equipo`
--

INSERT INTO `integrante_equipo` (`id_grupo`, `rut_persona`) VALUES
(1, '10.111.222-3'),
(1, '11.222.333-4'),
(1, '12.333.444-5'),
(1, '20.888.999-K'),
(1, '21.000.111-2'),
(1, '21.222.333-4'),
(1, '21.444.555-6'),
(1, '21.666.777-8'),
(2, '13.111.001-1'),
(2, '13.111.002-2'),
(2, '13.111.003-3'),
(2, '22.000.001-1'),
(2, '22.000.002-2'),
(2, '22.000.003-3'),
(2, '22.000.004-4'),
(2, '22.000.005-5'),
(3, '14.222.001-1'),
(3, '14.222.002-2'),
(3, '14.222.003-3'),
(3, '23.000.001-1'),
(3, '23.000.002-2'),
(3, '23.000.003-3'),
(3, '23.000.004-4'),
(3, '23.000.005-5'),
(4, '13.112.001-1'),
(4, '13.112.002-2'),
(4, '13.112.003-3'),
(4, '22.001.001-1'),
(4, '22.001.002-2'),
(4, '22.001.003-3'),
(4, '22.001.004-4'),
(4, '22.001.005-5'),
(5, '14.258.001-1'),
(5, '14.258.002-2'),
(5, '14.258.003-3'),
(5, '23.367.001-1'),
(5, '23.367.002-2'),
(5, '23.367.003-3'),
(5, '23.367.004-4'),
(5, '23.367.005-5'),
(6, '17.111.001-1'),
(6, '17.111.002-2'),
(6, '17.111.003-3'),
(6, '26.000.001-1'),
(6, '26.000.002-2'),
(6, '26.000.003-3'),
(6, '26.000.004-4'),
(6, '26.000.005-5'),
(7, '18.222.001-1'),
(7, '18.222.002-2'),
(7, '18.222.003-3'),
(7, '27.000.001-1'),
(7, '27.000.002-2'),
(7, '27.000.003-3'),
(7, '27.000.004-4'),
(7, '27.000.005-5'),
(8, '10.111.222-3'),
(8, '19.000.001-1'),
(8, '19.000.002-2'),
(8, '20.888.999-K'),
(8, '28.000.001-1'),
(8, '28.000.002-2'),
(8, '28.000.003-3'),
(8, '28.000.004-4'),
(9, '21.999.001-1'),
(9, '21.999.002-2'),
(9, '21.999.003-3'),
(9, '32.111.001-1'),
(9, '32.111.002-2'),
(9, '32.111.003-3'),
(9, '32.111.004-4'),
(9, '32.111.005-5'),
(10, '22.777.001-1'),
(10, '22.777.002-2'),
(10, '22.777.003-3'),
(10, '33.000.001-1'),
(10, '33.000.002-2'),
(10, '33.000.003-3'),
(10, '33.000.004-4'),
(10, '33.000.005-5'),
(11, '18.222.002-2'),
(11, '20.000.001-1'),
(11, '22.000.002-2'),
(11, '23.000.001-1'),
(11, '23.000.002-2'),
(11, '26.000.001-1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `rut_persona` varchar(12) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `depto_area` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `id_cargo` int(3) NOT NULL,
  `id_sede` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`rut_persona`, `nombre`, `depto_area`, `email`, `telefono`, `id_cargo`, `id_sede`) VALUES
('10.111.222-3', 'Arnaldo Pérez', 'Informática', 'arnaldo.perez@usm.cl', '910002000', 2, 1),
('11.222.333-4', 'Maria Paz', 'Electrónica', 'maria.paz@usm.cl', '910002001', 2, 1),
('12.333.444-5', 'Roberto Swift', 'Informática', 'roberto.swift@usm.cl', '910002002', 2, 1),
('13.111.001-1', 'Luis Arancibia', 'Electricidad', 'luis.a@usm.cl', NULL, 2, 2),
('13.111.002-2', 'Marta Soto', 'Física', 'marta.s@usm.cl', NULL, 2, 2),
('13.111.003-3', 'Jorge Valdés', 'Electricidad', 'jorge.v@usm.cl', NULL, 2, 2),
('13.112.001-1', 'Donkam Moreno', 'MedioAmbiental', 'donkam.m@usm.cl', NULL, 2, 1),
('13.112.002-2', 'Renato Adios', 'Mecanica', 'renato.h@usm.cl', NULL, 2, 1),
('13.112.003-3', 'Jorge Olivares', 'Electricidad', 'jorge.o@usm.cl', NULL, 2, 2),
('14.222.001-1', 'Elena Rivas', 'Informática', 'elena.r@usm.cl', NULL, 2, 3),
('14.222.002-2', 'Hugo Boss', 'Industrial', 'hugo.b@usm.cl', NULL, 2, 3),
('14.222.003-3', 'Sara Carbon', 'Informática', 'sara.c@usm.cl', NULL, 2, 3),
('14.258.001-1', 'Alonso Epuyao', 'Informática', 'aepuyao@usm.cl', NULL, 2, 3),
('14.258.002-2', 'Jaime Inostroza', 'Informatica', 'jinostroza@usm.cl', NULL, 2, 3),
('14.258.003-3', 'Marla Carbon', 'Informática', 'marla.c@usm.cl', NULL, 2, 3),
('17.111.001-1', 'Claudia Retamales', 'Informática', 'claudia.r@usm.cl', NULL, 2, 1),
('17.111.002-2', 'Felipe Ortiz', 'Industrial', 'felipe.o@usm.cl', NULL, 2, 1),
('17.111.003-3', 'Monica Zúñiga', 'Informática', 'monica.z@usm.cl', NULL, 2, 1),
('18.222.001-1', 'Marcelo Valenzuela', 'Electrónica', 'marcelo.v@usm.cl', NULL, 2, 2),
('18.222.002-2', 'Paola Daza', 'Química', 'paola.d@usm.cl', NULL, 2, 2),
('18.222.003-3', 'Cristian Farías', 'Electrónica', 'cristian.f@usm.cl', NULL, 2, 2),
('19.000.001-1', 'Beatriz Pinzón', 'Humanidades', 'beatriz.p@usm.cl', NULL, 2, 1),
('19.000.002-2', 'Daniel Valencia', 'Informática', 'daniel.v@usm.cl', NULL, 2, 1),
('20.000.001-1', 'Víctor Gutiérrez', 'Electrónica', 'victor.g@usm.cl', NULL, 2, 1),
('20.000.002-2', 'Jimena Fariña', 'Informática', 'jimena.f@usm.cl', NULL, 2, 1),
('20.888.999-K', 'Ivan Ordenes', 'Informática', 'iordenes@ad.usm.cl', '910003000', 1, 1),
('21.000.111-2', 'Carla Gomez', 'Informática', 'carla.g@sansano.usm.cl', '910003001', 1, 1),
('21.222.333-4', 'Luis Jara', 'Industrial', 'luis.j@sansano.usm.cl', '910003002', 1, 1),
('21.444.555-6', 'Sofia Mack', 'Mecánica', 'sofia.m@sansano.usm.cl', '910003003', 1, 1),
('21.666.777-8', 'Diego Vera', 'Informática', 'diego.v@sansano.usm.cl', '910003004', 1, 1),
('21.999.001-1', 'Monica Zúñiga', 'Informática', 'monica.z@usm.cl', NULL, 2, 1),
('21.999.002-2', 'Fabian Gomez', 'Electrónica', 'fabian.g@usm.cl', NULL, 2, 1),
('21.999.003-3', 'Lorena Paz', 'Mecánica', 'lorena.p@usm.cl', NULL, 2, 1),
('22.000.001-1', 'Pedro Alva', 'Informática', 'pedro.a@sansano.usm.cl', NULL, 1, 2),
('22.000.002-2', 'Julia Reales', 'Informática', 'julia.r@sansano.usm.cl', NULL, 1, 2),
('22.000.003-3', 'Kevin Mora', 'Mecánica', 'kevin.m@sansano.usm.cl', NULL, 1, 2),
('22.000.004-4', 'Rosa Espina', 'Informática', 'rosa.e@sansano.usm.cl', NULL, 1, 2),
('22.000.005-5', 'Tomas Lee', 'Informática', 'tomas.l@sansano.usm.cl', NULL, 1, 2),
('22.001.001-1', 'Pedro Alvarado', 'Informática', 'pedro.al@sansano.usm.cl', NULL, 1, 2),
('22.001.002-2', 'Julia Aguilera', 'Informática', 'julia.a@sansano.usm.cl', NULL, 1, 2),
('22.001.003-3', 'Kevin Martinez', 'Mecánica', 'kevin.ma@sansano.usm.cl', NULL, 1, 2),
('22.001.004-4', 'Rosa Margarita', 'Informática', 'rosa.m@sansano.usm.cl', NULL, 1, 2),
('22.001.005-5', 'Tomas Chan', 'Informática', 'tomas.c@sansano.usm.cl', NULL, 1, 2),
('22.777.001-1', 'Patricia Thunder', 'Electricidad', 'patricia.t@usm.cl', NULL, 2, 2),
('22.777.002-2', 'Ignacio Jara', 'Industrial', 'ignacio.j@usm.cl', NULL, 2, 2),
('22.777.003-3', 'Sara Meza', 'Informática', 'sara.m@usm.cl', NULL, 2, 2),
('23.000.001-1', 'Alex Tut', 'Informática', 'alex.t@sansano.usm.cl', NULL, 1, 3),
('23.000.002-2', 'Beto Cue', 'Mecánica', 'beto.c@sansano.usm.cl', NULL, 1, 3),
('23.000.003-3', 'Cami Pol', 'Informática', 'cami.p@sansano.usm.cl', NULL, 1, 3),
('23.000.004-4', 'Dani Sol', 'Informática', 'dani.s@sansano.usm.cl', NULL, 1, 3),
('23.000.005-5', 'Ema Luz', 'Informática', 'ema.l@sansano.usm.cl', NULL, 1, 3),
('23.367.001-1', 'Alex Hunter', 'Informática', 'alex.hunter@sansano.usm.cl', NULL, 1, 3),
('23.367.002-2', 'Beto Cuevas', 'Mecánica', 'beto.cuevas@sansano.usm.cl', NULL, 1, 3),
('23.367.003-3', 'Cami Poland', 'Informática', 'cami.poland@sansano.usm.cl', NULL, 1, 3),
('23.367.004-4', 'Dani Luna', 'Informática', 'dani.luna@sansano.usm.cl', NULL, 1, 3),
('23.367.005-5', 'Ema Noche', 'Informática', 'ema.noche@sansano.usm.cl', NULL, 1, 3),
('26.000.001-1', 'Matias Ruiz', 'Informática', 'matias.r@sansano.usm.cl', NULL, 1, 1),
('26.000.002-2', 'Ignacio Silva', 'Informática', 'ignacio.s@sansano.usm.cl', NULL, 1, 1),
('26.000.003-3', 'Francisca Lara', 'Mecánica', 'fran.l@sansano.usm.cl', NULL, 1, 1),
('26.000.004-4', 'Gabriel Pino', 'Informática', 'gabriel.p@sansano.usm.cl', NULL, 1, 1),
('26.000.005-5', 'Valentina Paz', 'Informática', 'vale.p@sansano.usm.cl', NULL, 1, 1),
('27.000.001-1', 'Javiera Soto', 'Electrónica', 'javiera.s@sansano.usm.cl', NULL, 1, 2),
('27.000.002-2', 'Andrés Bello', 'Informática', 'andres.b@sansano.usm.cl', NULL, 1, 2),
('27.000.003-3', 'Karla Vivar', 'Mecánica', 'karla.v@sansano.usm.cl', NULL, 1, 2),
('27.000.004-4', 'Esteban Quito', 'Informática', 'esteban.q@sansano.usm.cl', NULL, 1, 2),
('27.000.005-5', 'Loreto Letelier', 'Informática', 'loreto.l@sansano.usm.cl', NULL, 1, 2),
('28.000.001-1', 'Nicolás Mora', 'Informática', 'nicolas.m@sansano.usm.cl', NULL, 1, 1),
('28.000.002-2', 'Patricia Fernández', 'Informática', 'patricia.f@sansano.usm.cl', NULL, 1, 1),
('28.000.003-3', 'Freddy Stewart', 'Informática', 'freddy.s@sansano.usm.cl', NULL, 1, 1),
('28.000.004-4', 'Sandra Patiño', 'Informática', 'sandra.p@sansano.usm.cl', NULL, 1, 1),
('29.000.001-1', 'Raúl Pérez', 'Informática', 'raul.p@sansano.usm.cl', NULL, 1, 1),
('29.000.002-2', 'Bastián Tapia', 'Electrónica', 'bastian.t@sansano.usm.cl', NULL, 1, 1),
('29.000.003-3', 'Oscar Alvear', 'Informática', 'oscar.a@sansano.usm.cl', NULL, 1, 1),
('29.000.004-4', 'Pamela Díaz', 'Informática', 'pamela.d@sansano.usm.cl', NULL, 1, 1),
('32.111.001-1', 'Carlos Valdes', 'Informática', 'carlos.v@sansano.usm.cl', NULL, 1, 1),
('32.111.002-2', 'Denisse Vera', 'Informática', 'denisse.v@sansano.usm.cl', NULL, 1, 1),
('32.111.003-3', 'Esteban Silva', 'Informática', 'esteban.s@sansano.usm.cl', NULL, 1, 1),
('32.111.004-4', 'Felipe Ossa', 'Informática', 'felipe.o@sansano.usm.cl', NULL, 1, 1),
('32.111.005-5', 'Gloria Trevi', 'Informática', 'gloria.t@sansano.usm.cl', NULL, 1, 1),
('33.000.001-1', 'Kevin Silva', 'Electricidad', 'kevin.s@sansano.usm.cl', NULL, 1, 2),
('33.000.002-2', 'Bastián Tapia', 'Electrónica', 'bastian.t@sansano.usm.cl', NULL, 1, 2),
('33.000.003-3', 'Javiera Paz', 'Informática', 'javiera.p@sansano.usm.cl', NULL, 1, 2),
('33.000.004-4', 'Tomas Alvear', 'Informática', 'tomas.a@sansano.usm.cl', NULL, 1, 2),
('33.000.005-5', 'Camila Rios', 'Informática', 'camila.r@sansano.usm.cl', NULL, 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `postulacion`
--

CREATE TABLE `postulacion` (
  `id_n_postulacion` int(9) NOT NULL,
  `codigo` int(9) UNSIGNED ZEROFILL NOT NULL,
  `fecha_post` date NOT NULL DEFAULT current_timestamp(),
  `nombre_repre1` varchar(100) NOT NULL,
  `nombre_repre2` varchar(100) NOT NULL,
  `presupuesto` decimal(15,2) NOT NULL,
  `Tipo_iniciativa` int(11) NOT NULL,
  `id_iniciativa` int(11) NOT NULL,
  `rut_empresa` varchar(12) NOT NULL,
  `id_regionor` int(11) NOT NULL,
  `id_regionimp` int(11) NOT NULL,
  `id_estado` int(11) NOT NULL,
  `id_grupo` int(11) NOT NULL,
  `id_sede` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `postulacion`
--

INSERT INTO `postulacion` (`id_n_postulacion`, `codigo`, `fecha_post`, `nombre_repre1`, `nombre_repre2`, `presupuesto`, `Tipo_iniciativa`, `id_iniciativa`, `rut_empresa`, `id_regionor`, `id_regionimp`, `id_estado`, `id_grupo`, `id_sede`) VALUES
(1, 000000001, '2026-04-06', 'Ivan Ordenes', 'Prof. Arnaldo', 5000000.00, 1, 1, '76.111.222-3', 5, 5, 1, 1, 1),
(2, 000000002, '2026-04-07', 'Ana Morales', 'Prof. Luis', 8500000.00, 1, 2, '78.777.888-9', 13, 13, 1, 2, 2),
(3, 000000003, '2026-04-07', 'Seba Mack', 'Prof. Elena', 12000000.00, 1, 3, '76.111.222-3', 5, 7, 1, 3, 3),
(4, 000000004, '2026-04-07', 'Donkam Moreno', 'Prof. Renato', 720000.00, 1, 4, '78.777.888-9', 5, 5, 1, 4, 1),
(5, 000000005, '2026-04-07', 'Alonso Epuyao', 'Prof. Jaime', 14000000.00, 1, 5, '81.222.333-4', 5, 5, 1, 5, 3),
(6, 000000006, '2026-04-07', 'Matias Ruiz', 'Prof. Claudia', 4500000.00, 1, 6, '76.111.222-3', 5, 5, 1, 6, 1),
(7, 000000007, '2026-04-07', 'Javiera Soto', 'Prof. Marcelo', 2800000.00, 1, 7, '77.333.444-5', 6, 6, 1, 7, 2),
(8, 000000008, '2026-04-07', 'Ivan Ordenes', 'Prof. Arnaldo', 1200000.00, 1, 8, '78.777.888-9', 5, 5, 1, 8, 1),
(12, 000000009, '2026-04-07', 'Carlos Valdes', 'Prof. Monica', 5000000.00, 1, 9, '76.111.222-3', 5, 5, 1, 9, 1),
(13, 000000010, '2026-04-07', 'Kevin Silva', 'Prof. Patricia', 6800000.00, 1, 10, '81.222.333-4', 5, 5, 1, 10, 2),
(14, 000000014, '2026-04-08', 'Paola Daza', 'Prof. Victor', 6850000.00, 2, 11, '81.222.333-4', 5, 6, 2, 11, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `region`
--

CREATE TABLE `region` (
  `id_region` int(3) NOT NULL,
  `nom_region` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `region`
--

INSERT INTO `region` (`id_region`, `nom_region`) VALUES
(2, 'Antofagasta'),
(9, 'Araucania'),
(15, 'Arica-Parinacota'),
(3, 'Atacama'),
(11, 'Aysen'),
(8, 'BioBio'),
(4, 'Coquimbo'),
(10, 'Los Lagos'),
(14, 'Los Rios'),
(12, 'Magallanes y Antartica Chilena'),
(7, 'Maule'),
(13, 'Metropolitana de Santiago'),
(16, 'Nuble'),
(6, 'OHiggins'),
(1, 'Tarapaca'),
(5, 'Valparaiso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sede`
--

CREATE TABLE `sede` (
  `id_sede` int(11) NOT NULL,
  `nom_sede` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sede`
--

INSERT INTO `sede` (`id_sede`, `nom_sede`) VALUES
(1, 'Campus Casa Central Valparaiso'),
(2, 'Campus San Joaquin'),
(3, 'Campus Vitacura'),
(5, 'Sede Concepcion'),
(4, 'Sede Viña del Mar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tam_empresa`
--

CREATE TABLE `tam_empresa` (
  `id_tam` int(3) NOT NULL,
  `tamano_empr` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tam_empresa`
--

INSERT INTO `tam_empresa` (`id_tam`, `tamano_empr`) VALUES
(3, '\"Grande\"'),
(2, '\"Mediana\"'),
(1, '\"Microempresa\"');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_postulacion`
--

CREATE TABLE `tipo_postulacion` (
  `id_existen_inicia` int(3) NOT NULL,
  `nom_tipo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_postulacion`
--

INSERT INTO `tipo_postulacion` (`id_existen_inicia`, `nom_tipo`) VALUES
(2, '\"Existente\"'),
(1, '\"Nueva\"');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cargo_persona`
--
ALTER TABLE `cargo_persona`
  ADD PRIMARY KEY (`id_cargo`),
  ADD UNIQUE KEY `nom_cargo` (`nom_cargo`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`rut_empresa`),
  ADD UNIQUE KEY `nombre_repre` (`nombre_representante`),
  ADD KEY `fk_empresa_tamano` (`id_tam`);

--
-- Indices de la tabla `equipo_de_trabajo`
--
ALTER TABLE `equipo_de_trabajo`
  ADD PRIMARY KEY (`id_grupo`);

--
-- Indices de la tabla `estado_postulacion`
--
ALTER TABLE `estado_postulacion`
  ADD PRIMARY KEY (`id_estado`),
  ADD UNIQUE KEY `nombre_estado` (`nombre_estado`);

--
-- Indices de la tabla `etapa_del_cronograma`
--
ALTER TABLE `etapa_del_cronograma`
  ADD PRIMARY KEY (`id_cronograma`),
  ADD KEY `fk_cronograma_postulacion` (`id_n_postulacion`);

--
-- Indices de la tabla `iniciativa`
--
ALTER TABLE `iniciativa`
  ADD PRIMARY KEY (`id_iniciativa`);

--
-- Indices de la tabla `integrante_equipo`
--
ALTER TABLE `integrante_equipo`
  ADD PRIMARY KEY (`id_grupo`,`rut_persona`),
  ADD KEY `fk_persona` (`rut_persona`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`rut_persona`),
  ADD KEY `fk_persona_cargo` (`id_cargo`),
  ADD KEY `fk_persona_sede` (`id_sede`);

--
-- Indices de la tabla `postulacion`
--
ALTER TABLE `postulacion`
  ADD PRIMARY KEY (`id_n_postulacion`),
  ADD UNIQUE KEY `codigo` (`codigo`),
  ADD KEY `fk_postulacion_tipo` (`Tipo_iniciativa`),
  ADD KEY `fk_postulacion_estado` (`id_estado`),
  ADD KEY `fk_postulacion_integrantes` (`id_grupo`),
  ADD KEY `fk_postulacion_sede` (`id_sede`),
  ADD KEY `fk_region_origen` (`id_regionor`),
  ADD KEY `fk_region_impac` (`id_regionimp`),
  ADD KEY `fk_postulacion_empresa` (`rut_empresa`),
  ADD KEY `fk_postulacion_iniciativa` (`id_iniciativa`);

--
-- Indices de la tabla `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`id_region`),
  ADD UNIQUE KEY `nom_region` (`nom_region`);

--
-- Indices de la tabla `sede`
--
ALTER TABLE `sede`
  ADD PRIMARY KEY (`id_sede`),
  ADD UNIQUE KEY `nom_sede` (`nom_sede`);

--
-- Indices de la tabla `tam_empresa`
--
ALTER TABLE `tam_empresa`
  ADD PRIMARY KEY (`id_tam`),
  ADD UNIQUE KEY `tamano_empr` (`tamano_empr`);

--
-- Indices de la tabla `tipo_postulacion`
--
ALTER TABLE `tipo_postulacion`
  ADD PRIMARY KEY (`id_existen_inicia`),
  ADD UNIQUE KEY `nom_tipo` (`nom_tipo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cargo_persona`
--
ALTER TABLE `cargo_persona`
  MODIFY `id_cargo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `equipo_de_trabajo`
--
ALTER TABLE `equipo_de_trabajo`
  MODIFY `id_grupo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `estado_postulacion`
--
ALTER TABLE `estado_postulacion`
  MODIFY `id_estado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `etapa_del_cronograma`
--
ALTER TABLE `etapa_del_cronograma`
  MODIFY `id_cronograma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `iniciativa`
--
ALTER TABLE `iniciativa`
  MODIFY `id_iniciativa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `postulacion`
--
ALTER TABLE `postulacion`
  MODIFY `id_n_postulacion` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `region`
--
ALTER TABLE `region`
  MODIFY `id_region` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `sede`
--
ALTER TABLE `sede`
  MODIFY `id_sede` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tam_empresa`
--
ALTER TABLE `tam_empresa`
  MODIFY `id_tam` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo_postulacion`
--
ALTER TABLE `tipo_postulacion`
  MODIFY `id_existen_inicia` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD CONSTRAINT `fk_empresa_tamano` FOREIGN KEY (`id_tam`) REFERENCES `tam_empresa` (`id_tam`);

--
-- Filtros para la tabla `etapa_del_cronograma`
--
ALTER TABLE `etapa_del_cronograma`
  ADD CONSTRAINT `fk_cronograma_postulacion` FOREIGN KEY (`id_n_postulacion`) REFERENCES `postulacion` (`id_n_postulacion`);

--
-- Filtros para la tabla `integrante_equipo`
--
ALTER TABLE `integrante_equipo`
  ADD CONSTRAINT `fk_grupo` FOREIGN KEY (`id_grupo`) REFERENCES `equipo_de_trabajo` (`id_grupo`),
  ADD CONSTRAINT `fk_persona` FOREIGN KEY (`rut_persona`) REFERENCES `persona` (`rut_persona`);

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `fk_persona_cargo` FOREIGN KEY (`id_cargo`) REFERENCES `cargo_persona` (`id_cargo`),
  ADD CONSTRAINT `fk_persona_sede` FOREIGN KEY (`id_sede`) REFERENCES `sede` (`id_sede`);

--
-- Filtros para la tabla `postulacion`
--
ALTER TABLE `postulacion`
  ADD CONSTRAINT `fk_postulacion_empresa` FOREIGN KEY (`rut_empresa`) REFERENCES `empresa` (`rut_empresa`),
  ADD CONSTRAINT `fk_postulacion_estado` FOREIGN KEY (`id_estado`) REFERENCES `estado_postulacion` (`id_estado`),
  ADD CONSTRAINT `fk_postulacion_iniciativa` FOREIGN KEY (`id_iniciativa`) REFERENCES `iniciativa` (`id_iniciativa`),
  ADD CONSTRAINT `fk_postulacion_integrantes` FOREIGN KEY (`id_grupo`) REFERENCES `equipo_de_trabajo` (`id_grupo`),
  ADD CONSTRAINT `fk_postulacion_sede` FOREIGN KEY (`id_sede`) REFERENCES `sede` (`id_sede`),
  ADD CONSTRAINT `fk_postulacion_tipo` FOREIGN KEY (`Tipo_iniciativa`) REFERENCES `tipo_postulacion` (`id_existen_inicia`),
  ADD CONSTRAINT `fk_region_impac` FOREIGN KEY (`id_regionimp`) REFERENCES `region` (`id_region`),
  ADD CONSTRAINT `fk_region_origen` FOREIGN KEY (`id_regionor`) REFERENCES `region` (`id_region`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
