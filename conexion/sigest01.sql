-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:33065
-- Tiempo de generación: 04-08-2020 a las 00:05:37
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sigest01`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id_alumno` int(11) NOT NULL,
  `anio_ingreso` int(11) NOT NULL,
  `nro_legajo` varchar(30) NOT NULL,
  `rela_id_persona` int(4) NOT NULL,
  `fecha_alta` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id_alumno`, `anio_ingreso`, `nro_legajo`, `rela_id_persona`, `fecha_alta`) VALUES
(5, 2020, 'dddaa', 3, '0000-00-00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `id_depto` int(2) NOT NULL,
  `nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`id_depto`, `nombre`) VALUES
(1, 'BERMEJO'),
(2, 'FORMOSA'),
(3, 'LAISHI'),
(4, 'MATACOS'),
(5, 'PATIÑO'),
(6, 'PILAGÁS'),
(7, 'PILCOMAYO'),
(8, 'PIRANÉ'),
(9, 'RAMÓN LISTA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `localidades`
--

CREATE TABLE `localidades` (
  `id_loca` int(4) NOT NULL,
  `cod_loca` int(8) NOT NULL,
  `localidad` varchar(25) NOT NULL,
  `cod_postal` varchar(5) NOT NULL,
  `cod_depar` int(1) NOT NULL,
  `cod_area` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `localidades`
--

INSERT INTO `localidades` (`id_loca`, `cod_loca`, `localidad`, `cod_postal`, `cod_depar`, `cod_area`) VALUES
(2, 34007009, 'BAJO HONDO', 'P3630', 1, 's/n'),
(3, 34007043, 'EL BREAL', 'P3636', 1, '3704'),
(4, 34007045, 'EL CAJON', 'P3630', 1, 'S/n'),
(5, 34007049, 'EL CAÑON', 'P3634', 1, 's/n'),
(6, 34007055, 'EL CHURCAL', 'P3636', 1, 's/n'),
(7, 34007056, 'EL COLETO', 'P3630', 1, 's/n'),
(8, 34007079, 'EL QUEMADO', 'P3634', 1, 's/n'),
(9, 34007080, 'EL REMANSO', 'P3630', 1, 's/n'),
(10, 34007082, 'EL SIMBOLAR', 'P3634', 1, '3704'),
(11, 34007083, 'EL SOLITARIO', 'P3636', 1, 's/n'),
(12, 34007095, 'FORTIN LA MADRID', 'P3630', 1, 's/n'),
(13, 34007097, 'FORTIN PILCOMAYO NUEVO', 'P3630', 1, 's/n'),
(14, 34007098, 'FORTIN SOLEDAD', 'P3630', 1, '3704'),
(15, 34007102, 'GUADALCAZAR', 'P3630', 1, '3704'),
(16, 34007117, 'LA ESPERANZA', 'P3630', 1, '3704'),
(17, 34007122, 'LA LAGUNA', 'P3634', 1, 's/n'),
(18, 34007123, 'LA LIBERTAD', 'P3630', 1, '3704'),
(19, 34007133, 'LA REPRESA', 'P3632', 1, '1'),
(20, 34007134, 'LA RINCONADA', 'P3630', 1, '3704'),
(21, 34007145, 'LAGUNA YEMA', 'P3634', 1, '3704'),
(22, 34007146, 'LAGUNITA', 'P3634', 1, 's/n'),
(23, 34007149, 'LAS BANDERITAS', 'P3630', 1, 's/n'),
(24, 34007150, 'LAS BOLIVIANAS', 'P3634', 1, 's/n'),
(25, 34007162, 'LOS CHIRIGUANOS', 'P3632', 1, 's/n'),
(26, 34007165, 'LOS POCITOS', 'P3636', 1, 's/n'),
(27, 34007170, 'MATIAS GULACSI', 'P3634', 1, 's/n'),
(28, 34007171, 'MEDIA LUNA', 'P3630', 1, 'S/I'),
(29, 34007193, 'PESCADO NEGRO', 'P3636', 1, 's/n'),
(30, 34007198, 'POZO DE MAZA', 'P3636', 1, 's/n'),
(31, 34007199, 'POZO DE MOLINA', 'P3630', 1, 's/n'),
(32, 34007205, 'POZO DEL MORTERO', 'P3632', 1, 's/n'),
(33, 34007211, 'PUERTO CABO IRIGOYEN', 'P3636', 1, 's/n'),
(34, 34007213, 'RIO MUERTO', 'P3634', 1, 's/n'),
(35, 34007222, 'SANTA ISABEL', 'P3634', 1, 's/n'),
(36, 34007227, 'SOMBRERO NEGRO', 'P3636', 1, '370'),
(37, 34007228, 'SUMAYEN', 'P3634', 1, 's/n'),
(38, 34007236, 'VACA PERDIDA', 'P3636', 1, '03711'),
(39, 34007239, 'EL BAJO', 'P3634', 1, 's/n'),
(40, 34007240, 'EL CHAÑARAL', 'P3636', 1, 's/n'),
(41, 34007241, 'EL CHURCALITO', 'P3634', 1, '3704'),
(42, 34007242, 'EL LINDERO', 'P3636', 1, '3704'),
(43, 34007243, 'EL QUIMIL', 'P3636', 1, 's/n'),
(44, 34007244, 'LAGUNA TRES PACES', 'P3636', 1, '0'),
(45, 34007245, 'LAGUNA YACARE', 'P3634', 1, '3704'),
(46, 34007246, 'LOS CIENEGUITOS', 'P3636', 1, 's/n'),
(47, 34007247, 'LA PALIZADA', 'P3634', 1, '1'),
(48, 34007249, 'POZO RAMON', 'P3636', 1, 's/n'),
(49, 34007250, 'SAN CAYETANO', 'P3630', 1, 's/n'),
(50, 34007251, 'ALTO ALEGRE', 'P3620', 1, '3704'),
(51, 34007252, 'LA ZANJA', 'P3630', 1, '3716'),
(52, 34007253, 'POZO SARGENTO', 'P3636', 1, 's/n'),
(53, 34007254, 'LA MOCHA', 'P3636', 1, 's/n'),
(54, 34007256, 'TRES YUCHAN', 'P3636', 1, 's/n'),
(55, 34007257, 'LA MADRUGADA', 'P3636', 1, 's/n'),
(56, 34014010, 'BOCA DE PILAGAS', 'P3601', 2, 's/n'),
(57, 34014018, 'COLONIA ITUZAINGO', 'P3605', 2, 's/n'),
(58, 34014020, 'COLONIA PASTORIL', 'P3601', 2, 's/n'),
(59, 34014022, 'COLONIA PRESIDENTE YRIGOY', 'P3605', 2, 's/n'),
(60, 34014051, 'FORMOSA', 'P3600', 2, '370'),
(61, 34014055, 'GRAN GUARDIA', 'P3604', 2, '3704'),
(62, 34014056, 'GUAYCOLEC', 'P3600', 2, 's/n'),
(63, 34014059, 'ISLA 25 DE MAYO', 'P3600', 2, 's/n'),
(64, 34014095, 'MOJON DE FIERRO', 'P3601', 2, 's/n'),
(65, 34014124, 'SAN HILARIO', 'P3604', 2, 's/n'),
(66, 34014156, 'BANCO LA EMILIA', 'P3600', 2, 's/n'),
(67, 34014157, 'COLONIA DALMACIA', 'P3601', 2, 's/n'),
(68, 34014158, 'MARIANO BOEDO', 'P3604', 2, 's/n'),
(69, 34014160, 'PUENTE SAN HILARIO', 'P3600', 2, '3718'),
(70, 34014161, 'VILLA TRINIDAD', 'P3600', 2, 's/n'),
(71, 34021002, 'BANCO PAYAGUA', 'P3601', 3, 's/n'),
(72, 34021008, 'CABO ADRIANO AYALA', 'P3526', 3, '3704'),
(73, 34021020, 'COLONIA EL DORADO', 'P3605', 3, 's/n'),
(74, 34021021, 'COLONIA EL NARANJITO', 'P3605', 3, 's/n'),
(75, 34021022, 'COLONIA LAGUNA GOBERNADOR', 'P3605', 3, 's/n'),
(76, 34021026, 'COLONIA SAN ANTONIO', 'P3605', 3, 's/n'),
(77, 34021027, 'COLONIA SAN ISIDRO', 'P3526', 3, 's/n'),
(78, 34021028, 'COLONIA YATAY', 'P3601', 3, 's/n'),
(79, 34021036, 'EL ANGELITO', 'P3605', 3, 's/n'),
(80, 34021039, 'EL MBIGUA', 'P3526', 3, '3704'),
(81, 34021051, 'ESTERITO', 'P3605', 3, 's/n'),
(82, 34021056, 'GENERAL LUCIO V. MANSILLA', 'P3526', 3, '3704'),
(83, 34021062, 'HERRADURA', 'P3601', 3, '3704'),
(84, 34021076, 'LA PLAYA', 'P3601', 3, 's/n'),
(85, 34021088, 'PASO POLENTA', 'P3605', 3, 's/n'),
(86, 34021090, 'POSTA DEL SALADO', 'P3605', 3, 's/n'),
(87, 34021091, 'POTRERO DE LOS CABALLOS', 'P3626', 3, '3704'),
(88, 34021095, 'RIACHO LINDO', 'P3601', 3, 's/n'),
(89, 34021097, 'SAN FRANCISCO DE LAISHI', 'P3605', 3, 's/n'),
(90, 34021104, 'TATANE', 'P3601', 3, '1'),
(91, 34021108, 'TRES MOJONES', 'P3601', 3, 's/n'),
(92, 34021110, 'VILLA ESCOLAR', 'P3526', 3, '3704'),
(93, 34021114, 'KILOMETRO 117', 'P3526', 3, 's/n'),
(94, 34028005, 'BOLSA DEL PALOMO', 'P3636', 4, 's/n'),
(95, 34028007, 'CAMPO BANDERA', 'P3636', 4, 's/n'),
(96, 34028008, 'CAMPO GRANDE', 'P3636', 4, 's/n'),
(97, 34028010, 'CAMPO LA CRUZ', 'P3636', 4, 's/n'),
(98, 34028024, 'EL MISTOLAR', 'P3636', 4, 's/n'),
(99, 34028027, 'EL TOTORAL', 'P3636', 4, 's/n'),
(100, 34028033, 'INGENIERO GUILLERMO N. JU', 'P3636', 4, 's/n'),
(101, 34028046, 'LA JUNTA', 'P3636', 4, '370'),
(102, 34028067, 'POZO EL YACARE', 'P3636', 4, '03711'),
(103, 34028075, 'TENIENTE GENERAL ROSENDO ', 'P3636', 4, 's/n'),
(104, 34028078, 'EL POTRERITO', 'P3636', 4, 's/n'),
(105, 34028079, 'EL ROSILLO', 'P3636', 4, 's/n'),
(106, 34028080, 'POZO DE LOS PATOS', 'P3636', 4, 's/n'),
(107, 34028081, 'EL TREBOL', 'P3636', 4, '0370'),
(108, 34028082, 'TRES PALMITAS', 'P3636', 4, 's/n'),
(109, 34028083, 'EL MILAGRO', 'P3636', 4, 's/n'),
(110, 34028084, 'COMUNIDAD ABORIGEN WICHI ', 'P3636', 4, 's/n'),
(111, 34035001, 'A. FLORES', 'P3624', 5, 's/n'),
(112, 34035035, 'CACIQUE COQUERO', 'P3628', 5, 's/n'),
(113, 34035037, 'CAMPO ALEGRE', 'P3626', 5, 's/n'),
(114, 34035038, 'CAMPO AZCURRA', 'P3624', 5, 's/n'),
(115, 34035040, 'CAMPO DEL CIELO', 'P3630', 5, 's/n'),
(116, 34035052, 'CHICO DOWAGAN', 'P3621', 5, '3704'),
(117, 34035055, 'COLONIA 14 DE MAYO', 'P3626', 5, 's/n'),
(118, 34035056, 'COLONIA 20 DE JUNIO', 'P3615', 5, '3704'),
(119, 34035059, 'COLONIA ALTO ALEGRE', 'P3620', 5, '3704'),
(120, 34035065, 'COLONIA CEFERINO NAMUNCUR', 'P3621', 5, '370'),
(121, 34035066, 'COLONIA EL ENSANCHE', 'P3624', 5, 's/n'),
(122, 34035067, 'COLONIA EL PAVAO', 'P3621', 5, '03716'),
(123, 34035069, 'COLONIA EL SILENCIO', 'P3624', 5, 's/n'),
(124, 34035072, 'COLONIA ISLA SOLA', 'P3624', 5, 's/n'),
(125, 34035073, 'COLONIA JUAN BAUTISTA ALB', 'P3625', 5, '03704'),
(126, 34035074, 'COLONIA JAVIER MUÑIZ', 'P3630', 5, '3718'),
(127, 34035075, 'COLONIA JUANITA', 'P3624', 5, 's/n'),
(128, 34035076, 'COLONIA LA PREFERIDA', 'P3626', 5, 's/n'),
(129, 34035078, 'COLONIA LAS CHOYAS', 'P3626', 5, 's/n'),
(130, 34035080, 'COLONIA NAPENAY', 'P3620', 5, 's/n'),
(131, 34035085, 'COLONIA SAN ANTONIO', 'P3624', 5, 's/n'),
(132, 34035086, 'COLONIA SAN ISIDRO', 'P3621', 5, '3704'),
(133, 34035089, 'COLONIA SAN PABLO', 'P3621', 5, 's/n'),
(134, 34035090, 'COLONIA SAN PEDRO', 'P3624', 5, 's/n'),
(135, 34035091, 'COLONIA SAN ROQUE', 'P3624', 5, '3704'),
(136, 34035093, 'COLONIA SANTA ROSA', 'P3621', 5, '3704'),
(137, 34035094, 'COLONIA SARMIENTO', 'P3621', 5, '3704'),
(138, 34035095, 'COLONIA SIETE QUEBRACHOS', 'P3624', 5, '00'),
(139, 34035097, 'COLONIA TATANE', 'P3620', 5, 's/n'),
(140, 34035099, 'COLONIA UNION ESCUELA', 'P3621', 5, '3716'),
(141, 34035101, 'COMANDANTE FONTANA', 'P3620', 5, '3704'),
(142, 34035128, 'EL CACUY', 'P3621', 5, 's/n'),
(143, 34035132, 'EL CEIBAL', 'P3621', 5, 's/n'),
(144, 34035139, 'EL COGOIK', 'P3615', 5, 's/n'),
(145, 34035141, 'EL CRUCE', 'P3626', 5, '370'),
(146, 34035143, 'EL DESCANSO', 'P3630', 5, 's/n'),
(147, 34035147, 'EL DIVISADERO', 'P3624', 5, '3717'),
(148, 34035158, 'EL MATADERO', 'P3620', 5, 's/n'),
(149, 34035161, 'EL OCULTO', 'P3624', 5, 's/n'),
(150, 34035165, 'EL PERDIDO', 'P3630', 5, 's/n'),
(151, 34035176, 'EL RECREO', 'P3626', 5, 's/n'),
(152, 34035183, 'EL SIMBOLAR', 'P3630', 5, 's/n'),
(153, 34035186, 'EL TIMBO', 'P3621', 5, '370'),
(154, 34035221, 'ESTANISLAO DEL CAMPO', 'P3626', 5, '3704'),
(155, 34035248, 'FORTIN CABO 1° LUGONES', 'P3621', 5, '3704'),
(156, 34035250, 'FORTIN SARGENTO 1° LEYES', 'P3621', 5, 's/n'),
(157, 34035265, 'IBARRETA', 'P3624', 5, '3716'),
(158, 34035272, 'JUAN G. BAZAN', 'P3632', 5, '3715'),
(159, 34035278, 'KILOMETRO 15', 'P3621', 5, '3704'),
(160, 34035280, 'KILOMETRO 503', 'P3626', 5, 's/n'),
(161, 34035295, 'LA CIERVA', 'P3624', 5, 's/n'),
(162, 34035305, 'LA ESTRELLA', 'P3621', 5, 's/n'),
(163, 34035313, 'LA INVERNADA', 'P3628', 5, 's/n'),
(164, 34035314, 'LA LINEA', 'P3630', 5, 's/n'),
(165, 34035320, 'LA MEDIA LUNA', 'P3624', 5, 's/n'),
(166, 34035328, 'LA PAMPA', 'P3630', 5, 's/n'),
(167, 34035348, 'LAGO VERDE', 'P3624', 5, '00'),
(168, 34035368, 'LAS LOLAS', 'P3621', 5, 's/n'),
(169, 34035369, 'LAS LOMITAS', 'P3630', 5, '03715'),
(170, 34035372, 'LAS MOCHAS', 'P3626', 5, 's/n'),
(171, 34035389, 'LOMA SAN PABLO', 'P3615', 5, '3704'),
(172, 34035403, 'LOS TRES REYES', 'P3621', 5, 's/n'),
(173, 34035404, 'LOTE 20 RURAL', 'P3620', 5, 's/n'),
(174, 34035405, 'LOTE 27', 'P3630', 5, '370'),
(175, 34035408, 'MAESTRA BLANCA GOMEZ', 'P3624', 5, 's/n'),
(176, 34035467, 'PASO NAITE', 'P3628', 5, 's/n'),
(177, 34035483, 'POSTA CAMBIO ZALAZAR', 'P3632', 5, '3715'),
(178, 34035498, 'POZO DEL TIGRE', 'P3628', 5, 's/n'),
(179, 34035500, 'POZO HONDO', 'P3626', 5, 's/n'),
(180, 34035501, 'POZO LARGO', 'P3626', 5, 's/n'),
(181, 34035505, 'POZO NAVAGAN', 'P3626', 5, 's/n'),
(182, 34035510, 'PUERTO LAVALLE', 'P3624', 5, 's/n'),
(183, 34035511, 'PUNTA DE AGUA', 'P3630', 5, 's/n'),
(184, 34035515, 'COLONIA OSVALDO QUIROGA', 'P3621', 5, '370'),
(185, 34035518, 'RANERO CUE', 'P3626', 5, 's/n'),
(186, 34035521, 'RIACHO DE ORO', 'P3624', 5, '3704'),
(187, 34035525, 'RINCON FLORIDO', 'P3620', 5, '3704'),
(188, 34035539, 'SAN CARLOS', 'P3620', 5, 's/n'),
(189, 34035539, 'SAN CARLOS', 'P3626', 5, 's/n'),
(190, 34035546, 'SAN MARTIN I', 'P3621', 5, 's/n'),
(191, 34035547, 'SAN MARTIN II', 'P3621', 5, '3704'),
(192, 34035552, 'SAN SIMON', 'P3603', 5, 's/n'),
(193, 34035570, 'SOLDADO D. SALVATIERRA', 'P3626', 5, 's/n'),
(194, 34035572, 'SOLDADO I. SANCHEZ', 'P3624', 5, 's/n'),
(195, 34035578, 'SUBTENIENTE PERIN', 'P3624', 5, '3704'),
(196, 34035586, 'TENIENTE BROWN', 'P3622', 5, '3704'),
(197, 34035596, 'TRES POZOS', 'P3626', 5, '-'),
(198, 34035598, 'URBANA VIEJA', 'P3621', 5, '3704'),
(199, 34035605, 'VILLA GENERAL GÜEMES', 'P3621', 5, '03716'),
(200, 34035606, 'VILLA GENERAL MANUEL BELG', 'P3615', 5, '03704'),
(201, 34035607, 'VILLA GENERAL URQUIZA', 'P3628', 5, 's/n'),
(202, 34035617, 'BARTOLOME DE LAS CASAS', 'P3622', 5, 's/n'),
(203, 34035618, 'CAMPO DE AVIACION', 'P3626', 5, '03704'),
(204, 34035619, 'COLONIA BARTOLOME DE LAS ', 'P3622', 5, '03704'),
(205, 34035620, 'COLONIA DANTE SANDRELLI', 'P3621', 5, 's/n'),
(206, 34035621, 'COLONIA EL CATORCE', 'P3624', 5, 's/n'),
(207, 34035623, 'COLONIA ENSANCHE NORTE', 'P3624', 5, '3716'),
(208, 34035625, 'EL BELLACO', 'P3603', 5, '3704'),
(209, 34035626, 'LAQTASATANYIE (KM14)', 'P3630', 5, 's/n'),
(210, 34035627, 'LOS TRES REYES', 'P3621', 5, 's/n'),
(211, 34035628, 'LOS JUBILADOS', 'P3620', 5, '3716'),
(212, 34035629, 'VILLA MARIN', 'P3628', 5, 's/n'),
(213, 34035630, 'LA PANTALLA', 'P3630', 5, 's/n'),
(214, 34035632, 'CAMPO TRES POZOS', 'P3632', 5, '3704'),
(215, 34035633, 'COLONIA LAKA-WICHI', 'P3628', 5, 's/n'),
(216, 34035634, 'COLONIA ABORIGEN LA BOMBA', 'P3630', 5, 's/n'),
(217, 34035635, 'LAGUNA ACEVAL', 'P3626', 5, 's/n'),
(218, 34035636, 'LOTE 42', 'P3630', 5, '370'),
(219, 34035637, 'LOTE 47', 'P3630', 5, 's/n'),
(220, 34035638, 'COMUNIDAD LOTE 21', 'P3628', 5, '3704'),
(221, 34042003, 'APAYEREY', 'P3615', 6, 's/n'),
(222, 34042008, 'BUENA VISTA', 'P3615', 6, '3718'),
(223, 34042015, 'COLONIA 25 DE MAYO', 'P3615', 6, 's/n'),
(224, 34042016, 'COLONIA EL CEIBO', 'P3615', 6, 's/n'),
(225, 34042017, 'COLONIA NUEVA', 'P3611', 6, '3718'),
(226, 34042018, 'COLONIA SANTA ROSA', 'P3615', 6, 's/n'),
(227, 34042023, 'EL ESPINILLO', 'P3615', 6, 's/n'),
(228, 34042024, 'EL POMBERO', 'P3611', 6, 's/n'),
(229, 34042038, 'ISLA AZUL', 'P3615', 6, 's/n'),
(230, 34042042, 'JULIO CUE', 'P3615', 6, 's/n'),
(231, 34042047, 'LAGUNA GALLO', 'P3611', 6, 's/n'),
(232, 34042051, 'LOMA ZAPATU', 'P3611', 6, 's/n'),
(233, 34042052, 'LORO CUE', 'P3615', 6, '3718'),
(234, 34042058, 'MISION TACAAGLE', 'P3615', 6, '3704'),
(235, 34042063, 'PORTON NEGRO', 'P3615', 6, 's/n'),
(236, 34042067, 'SALVACION', 'P3611', 6, '3718'),
(237, 34042070, 'SAN BLAS', 'P3615', 6, 's/n'),
(238, 34042071, 'SAN CARLOS', 'P3615', 6, 's/n'),
(239, 34042087, 'TRES LAGUNAS', 'P3611', 6, '3718'),
(240, 34042089, 'VILLA HERMOSA', 'P3611', 6, 's/n'),
(241, 34042091, 'VILLA REAL', 'P3615', 6, '3704'),
(242, 34042092, 'VILLA RURAL', 'P3615', 6, 's/n'),
(243, 34042094, 'VISTA ALEGRE', 'P3615', 6, '1'),
(244, 34042096, 'PUESTO RAMONA', 'P3615', 6, '03716'),
(245, 34042097, 'COLONIA ABORIGEN', 'P3615', 6, 's/n'),
(246, 34042098, 'LAGUNA TORO', 'P3611', 6, '3718'),
(247, 34049009, 'BUEY MUERTO', 'P3611', 7, '03718'),
(248, 34049011, 'CEIBO TRECE', 'P3613', 7, '03718'),
(249, 34049013, 'CLORINDA', 'P3610', 7, '3718'),
(250, 34049018, 'COLONIA LA PRIMAVERA', 'P3611', 7, 's/n'),
(251, 34049019, 'COLONIA LOS SANTAFESINOS', 'P3611', 7, '3718'),
(252, 34049020, 'COLONIA SAN JUAN', 'P3611', 7, 's/n'),
(253, 34049021, 'COLONIA SARMIENTO', 'P3611', 7, '3718'),
(254, 34049022, 'COLONIA SUDAMERICANA', 'P3613', 7, 's/n'),
(255, 34049023, 'COSTA ALEGRE', 'P3613', 7, 's/n'),
(256, 34049034, 'EL PARAISO', 'P3611', 7, '03718'),
(257, 34049036, 'EL RECODO', 'P3611', 7, 's/n'),
(258, 34049038, 'ESPERANZA', 'P3611', 7, 's/n'),
(259, 34049055, 'GARCETE CUE', 'P3610', 7, '3718'),
(260, 34049059, 'ISLA APANDO', 'P3611', 7, '03718'),
(261, 34049065, 'ISLA PUEN', 'P3611', 7, '3718'),
(262, 34049068, 'ISLA YOBAI GUAZU', 'P3613', 7, 's/n'),
(263, 34049074, 'LA FRONTERA', 'P3611', 7, '3718'),
(264, 34049075, 'LAGUNA BLANCA', 'P3613', 7, '03718'),
(265, 34049077, 'LAGUNA NAICK-NECK', 'P3611', 7, 's/n'),
(266, 34049078, 'LOMA HERMOSA', 'P3611', 7, '03718'),
(267, 34049080, 'LOMA TUYUTU', 'P3613', 7, '3613'),
(268, 34049081, 'LUCERO CUE', 'P3611', 7, 's/n'),
(269, 34049082, 'MARCA M', 'P3613', 7, 's/n'),
(270, 34049084, 'MARTIN FIERRO', 'P3611', 7, 's/n'),
(271, 34049091, 'PALMA SOLA', 'P3611', 7, '03718'),
(272, 34049094, 'PRESIDENTE AVELLANEDA', 'P3611', 7, '3718'),
(273, 34049097, 'PUERTO PILCOMAYO', 'P3611', 7, 's/n'),
(274, 34049099, 'PUNTA GUIA', 'P3611', 7, 's/n'),
(275, 34049105, 'RIACHO HE-HE', 'P3611', 7, 's/n'),
(276, 34049113, 'SIETE PALMAS', 'P3613', 7, '03718'),
(277, 34049114, 'SOL DE MAYO', 'P3611', 7, 's/n'),
(278, 34049115, 'SOL DE MAYO', 'P3613', 7, 's/n'),
(279, 34049119, 'TORO PASO', 'P3611', 7, '03718'),
(280, 34049126, 'JOSE MARIA PAZ', 'P3611', 7, 's/n'),
(281, 34049128, 'PASO ANGELITO', 'P3611', 7, '3718'),
(282, 34049130, 'RODEO TAPITI', 'P3613', 7, '3613'),
(283, 34049131, 'RIACHO NEGRO', 'P3610', 7, '3718'),
(284, 34056003, '9 DE JULIO', 'P3606', 8, 's/n'),
(285, 34056020, 'BAÑADERO', 'P3603', 8, 'S/N'),
(286, 34056028, 'CABO 1° NOROÑA', 'P3603', 8, 's/n'),
(287, 34056033, 'CAMPO HARDY', 'P3603', 8, 'S/N'),
(288, 34056034, 'CAMPO SAN RAFAEL', 'P3609', 8, 's/n'),
(289, 34056038, 'PIRANE', 'P3606', 8, '3704'),
(290, 34056042, 'COLONIA 5 DE OCTUBRE', 'P3606', 8, '3704'),
(291, 34056045, 'COLONIA CAMPO VILLAFAÑE', 'P3601', 8, '1'),
(292, 34056046, 'COLONIA CAMPO VILLAFAÑE', 'P3601', 8, '370'),
(293, 34056047, 'COLONIA EL ALBA', 'P3603', 8, 's/n'),
(294, 34056048, 'COLONIA EL CHAJA', 'P3609', 8, 'S/N'),
(295, 34056049, 'COLONIA EL COMIENZO', 'P3608', 8, 's/n'),
(296, 34056050, 'COLONIA EL DESAGUADERO', 'P3603', 8, '03704'),
(297, 34056051, 'COLONIA EL OLVIDO', 'P3609', 8, 's/n'),
(298, 34056052, 'COLONIA EL PALMAR', 'P3603', 8, 's/n'),
(299, 34056053, 'COLONIA EL PROGRESO', 'P3608', 8, 'S/N'),
(300, 34056054, 'COLONIA EL RINCON', 'P3601', 8, '03704'),
(301, 34056056, 'COLONIA EL ZAPALLITO', 'P3603', 8, 's/n'),
(302, 34056057, 'COLONIA ESPERANZA', 'P3609', 8, 's/n'),
(303, 34056058, 'COLONIA ITATI', 'P3601', 8, '3704'),
(304, 34056059, 'COLONIA LA DISCIPLINA', 'P3606', 8, 's/n'),
(305, 34056061, 'COLONIA LA UNION', 'P3603', 8, 's/n'),
(306, 34056063, 'COLONIA LOMA SENES', 'P3606', 8, '370'),
(307, 34056065, 'COLONIA PAMPA VILLANUEVA', 'P3603', 8, 's/n'),
(308, 34056067, 'COLONIA RIGONATO', 'P3606', 8, '1'),
(309, 34056068, 'COLONIA RODA', 'P3603', 8, 's/n'),
(310, 34056070, 'COLONIA SANTA CRUZ', 'P3606', 8, '03704'),
(311, 34056071, 'COLONIA WEITZEL', 'P3603', 8, 's/n'),
(312, 34056073, 'COPO BLANCO', 'P3608', 8, 's/n'),
(313, 34056079, 'COSTA RIACHO ALAZAN', 'P3609', 8, 'S/N'),
(314, 34056086, 'EL ALBA', 'P3603', 8, '3704'),
(315, 34056089, 'EL BOSQUECILLO', 'P3606', 8, 's/n'),
(316, 34056090, 'EL COATI', 'P3606', 8, '1'),
(317, 34056091, 'EL COLORADO', 'P3603', 8, '0370'),
(318, 34056092, 'EL CORRALITO', 'P3606', 8, '370'),
(319, 34056094, 'EL GATO', 'P3609', 8, 's/n'),
(320, 34056095, 'EL GUAJO', 'P3606', 8, 's/n'),
(321, 34056096, 'EL IBAGAY', 'P3606', 8, 's/n'),
(322, 34056102, 'EL PIQUETE', 'P3600', 8, 's/n'),
(323, 34056103, 'EL POI', 'P3602', 8, 's/n'),
(324, 34056104, 'EL RESGUARDO', 'P3608', 8, 'S/N'),
(325, 34056105, 'EL SALADILLO', 'P3609', 8, 'S/N'),
(326, 34056106, 'EL SALADO', 'P3606', 8, '1'),
(327, 34056137, 'ESTERO PATIÑO', 'P3608', 8, 's/n'),
(328, 34056164, 'KILOMETRO 142', 'P3609', 8, 's/n'),
(329, 34056165, 'KILOMETRO 210', 'P3602', 8, '1'),
(330, 34056167, 'KILOMETRO 224', 'P3603', 8, 's/n'),
(331, 34056174, 'LA ESPERANZA', 'P3606', 8, 'S/N'),
(332, 34056175, 'LA FLORESTA', 'P3606', 8, 'S/N'),
(333, 34056176, 'LA LOMA', 'P3606', 8, '3704'),
(334, 34056177, 'LA PICADITA', 'P3609', 8, 's/n'),
(335, 34056180, 'LA SIRENA', 'P3602', 8, '3704'),
(336, 34056184, 'LAS CAÑITAS', 'P3601', 8, 's/n'),
(337, 34056186, 'LOMA DEL QUEBRANTO', 'P3606', 8, 's/n'),
(338, 34056187, 'LOS MATACOS', 'P3608', 8, 'S/N'),
(339, 34056188, 'LOTE 108 LADRILLERIA', 'P3603', 8, '03704'),
(340, 34056189, 'LOTE 11', 'P3608', 8, '3704'),
(341, 34056191, 'LOTE 17-LEGUA A', 'P3602', 8, 's/n'),
(342, 34056199, 'MERCEDES CUE', 'P3609', 8, 'S/N'),
(343, 34056209, 'MONTE LINDO', 'P3606', 8, 's/n'),
(344, 34056210, 'MONTE QUEMADO', 'P3606', 8, 's/n'),
(345, 34056215, 'MURUA', 'P3606', 8, '3704'),
(346, 34056226, 'PALO SANTO', 'P3608', 8, '370'),
(347, 34056228, 'PARATODOS', 'P3606', 8, 's/n'),
(348, 34056230, 'PILAGAS III', 'P3606', 8, 's/n'),
(349, 34056231, 'PIRANE', 'P3606', 8, '370'),
(350, 34056234, 'POTRERO NORTE', 'P3608', 8, '3704'),
(351, 34056236, 'POTRERO ÑANDU', 'P3608', 8, '3704'),
(352, 34056242, 'RACEDO ESCOBAR', 'P3602', 8, 's/n'),
(353, 34056249, 'RODAS', 'P3603', 8, 'S/N'),
(354, 34056287, 'VILLA KILOMETRO 213', 'P3603', 8, '3704'),
(355, 34056301, 'LOMA SENES', 'P3606', 8, 's/n'),
(356, 34056302, 'SOLDADO EDMUNDO SOSA', 'P3601', 8, 's/n'),
(357, 34056304, 'LOTE 219', 'P3602', 8, '0370-'),
(358, 34056305, 'CENTRO FORESTAL PIRANE', 'P3606', 8, '370'),
(359, 34056306, 'LA LOMITA', 'P3606', 8, '0370'),
(360, 34056307, 'LOMA SENES SUR', 'P3606', 8, 's/n'),
(361, 34056308, 'LOTE 31 MAYOR VILLAFAÑE', 'P3601', 8, '03704'),
(362, 34056309, 'LOMA ALBERDI', 'P3606', 8, '3704'),
(363, 34063003, 'CAMPO DEL ACHA', 'P3636', 9, 's/n'),
(364, 34063012, 'EL ALAMBRADO', 'P3636', 9, '1'),
(365, 34063014, 'EL ALGARROBO', 'P3636', 9, 's/n'),
(366, 34063020, 'EL CHIVIL', 'P3636', 9, 's/n'),
(367, 34063022, 'EL DIVISADERO', 'P3636', 9, '3636'),
(368, 34063029, 'EL PALMARCITO', 'P3636', 9, 's/n'),
(369, 34063030, 'EL POTRILLO', 'P3636', 9, '370'),
(370, 34063033, 'EL ROSARIO', 'P3636', 9, 's/n'),
(371, 34063034, 'EL SILENCIO', 'P3636', 9, 's/n'),
(372, 34063036, 'EL TABIQUE', 'P3636', 9, 's/n'),
(373, 34063038, 'EL TUCUMANCITO', 'P3636', 9, 's/n'),
(374, 34063047, 'LA BREA', 'P3636', 9, 's/n'),
(375, 34063051, 'LA MOCHA', 'P3636', 9, '3716'),
(376, 34063057, 'LOTE 1', 'P3636', 9, 's/n'),
(377, 34063060, 'LOTE 8', 'P3636', 9, 's/n'),
(378, 34063061, 'MARIA CRISTINA', 'P3636', 9, 's/n'),
(379, 34063065, 'MISION SAN ANDRES', 'P3636', 9, 's/n'),
(380, 34063069, 'PALMAR LARGO', 'P3636', 9, 's/n'),
(381, 34063071, 'PALO SECO', 'P3636', 9, 's/n'),
(382, 34063072, 'POZO CERCADO', 'P3636', 9, 's/n'),
(383, 34063081, 'SAN MARTIN', 'P3636', 9, 's/n'),
(384, 34063082, 'SANTA ROSA', 'P3615', 9, '3704'),
(385, 34063083, 'SANTA TERESA', 'P3636', 9, '370'),
(386, 34063087, 'TRES PALMAS', 'P3636', 9, 's/n'),
(387, 34063088, 'TRES POZOS', 'P3636', 9, '1'),
(388, 34063090, 'BARRIO EL FAVORITO', 'P3636', 9, '370'),
(389, 34063092, 'EL BREAL', 'P3636', 9, 's/n'),
(390, 34063093, 'EL CHORRO', 'P3636', 9, 's/n'),
(391, 34063094, 'EL CRUCE', 'P3636', 9, 's/n'),
(392, 34063095, 'EL ESTANQUE', 'P3636', 9, 's/n'),
(393, 34063096, 'EL QUEBRACHO', 'P3636', 9, 's/n'),
(394, 34063098, 'EL TRONQUITO', 'P3636', 9, '3716'),
(395, 34063099, 'LA PAMPA', 'P3636', 9, 's/n'),
(396, 34063100, 'LAS CAÑITAS', 'P3636', 9, '03716'),
(397, 34063102, 'POZO LA CHIVA', 'P3636', 9, 's/n'),
(398, 34063103, 'SAN MIGUEL', 'P3636', 9, 's/n'),
(399, 34063104, 'COMUNIDAD 7 DE JUNIO', 'P3636', 9, 's/n'),
(400, 34063105, 'VILLA DEVOTO', 'P3636', 9, '3716'),
(401, 34063106, 'POZO DEL OSO', 'P3636', 9, 's/n'),
(402, 34063108, 'EL SOL', 'P3636', 9, 's/n'),
(403, 34063109, 'POZO CHARATA', 'P3636', 9, 's/n'),
(404, 34063110, 'POZO CABALLO', 'P3636', 9, 's/n'),
(405, 34063111, 'LA BATERIA', 'P3636', 9, '3704'),
(406, 34063113, 'COMUNIDAD ABORIGEN WICHI', 'P3636', 9, 's/n'),
(407, 34063114, 'LAS PALMITAS', 'P3636', 9, 's/n'),
(408, 34063115, 'COMUNIDAD WICHI OBLITAJ', 'P3636', 9, 's/n'),
(409, 34063116, 'PUERTO IRIGOYEN', 'P3636', 9, 's/n'),
(410, 34063117, 'COMUNIDAD WICHI BARRIO EL', 'P3636', 9, 's/n'),
(411, 34063283, 'EL SAUZALITO', 'P3636', 9, 's/n'),
(412, 34035087, 'COLONIA SAN JOSE', 'RUTA ', 5, ''),
(413, 34007004, 'AIBAL EL SILENCIO', '', 1, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `id_persona` int(4) NOT NULL,
  `apellido_nombre_persona` varchar(60) NOT NULL,
  `cuil_persona` varchar(20) NOT NULL,
  `sexo` varchar(2) NOT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `domicilio` varchar(250) DEFAULT NULL,
  `contacto` int(20) DEFAULT NULL,
  `rela_id_localidad` int(4) DEFAULT NULL,
  `nacionalidad` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id_persona`, `apellido_nombre_persona`, `cuil_persona`, `sexo`, `fecha_nacimiento`, `email`, `domicilio`, `contacto`, `rela_id_localidad`, `nacionalidad`) VALUES
(1, 'Maza Romina Alejand', '27393204775', 'F', '2020-07-27', 'aalejandramaza_535@hotmail.com', '', 0, 6, NULL),
(3, 'Almeida Martin', '2048292224', 'M', NULL, NULL, NULL, NULL, 4, NULL),
(5, 'Martin Almeida', '20371173022', 'M', '0000-00-00', 'll@gmail.com', '', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `tipo_usuario` int(1) NOT NULL COMMENT '1=administrador,2=profesor,3=alumno',
  `rela_persona` int(11) NOT NULL,
  `nombre_usuario` varchar(250) NOT NULL,
  `clave` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `tipo_usuario`, `rela_persona`, `nombre_usuario`, `clave`) VALUES
(4, 2, 5, 'maurene', 'd7a84628c025d30f7b2c52c958767e76'),
(5, 1, 1, 'm4z', '81dc9bdb52d04dc20036dbd8313ed055');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id_alumno`),
  ADD KEY `rela_id_persona` (`rela_id_persona`);

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`id_depto`);

--
-- Indices de la tabla `localidades`
--
ALTER TABLE `localidades`
  ADD PRIMARY KEY (`id_loca`),
  ADD KEY `cod_depar` (`cod_depar`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`id_persona`),
  ADD KEY `rela_id_localidad` (`rela_id_localidad`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `rela_persona` (`rela_persona`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id_alumno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `id_persona` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD CONSTRAINT `alumnos_ibfk_1` FOREIGN KEY (`rela_id_persona`) REFERENCES `personas` (`id_persona`);

--
-- Filtros para la tabla `localidades`
--
ALTER TABLE `localidades`
  ADD CONSTRAINT `localidades_ibfk_1` FOREIGN KEY (`cod_depar`) REFERENCES `departamentos` (`id_depto`),
  ADD CONSTRAINT `localidades_ibfk_2` FOREIGN KEY (`cod_depar`) REFERENCES `departamentos` (`id_depto`);

--
-- Filtros para la tabla `personas`
--
ALTER TABLE `personas`
  ADD CONSTRAINT `personas_ibfk_1` FOREIGN KEY (`rela_id_localidad`) REFERENCES `localidades` (`id_loca`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`rela_persona`) REFERENCES `personas` (`id_persona`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
