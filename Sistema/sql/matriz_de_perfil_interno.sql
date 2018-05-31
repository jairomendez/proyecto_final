-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-05-2018 a las 17:35:34
-- Versión del servidor: 10.1.30-MariaDB
-- Versión de PHP: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `matriz de perfil interno`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `debilidades`
--

CREATE TABLE `debilidades` (
  `id_debilidades` int(11) NOT NULL,
  `gestion_directiva` varchar(500) COLLATE utf8mb4_spanish_ci NOT NULL,
  `gestion_financiera` varchar(500) COLLATE utf8mb4_spanish_ci NOT NULL,
  `gestion_pedagogica` varchar(500) COLLATE utf8mb4_spanish_ci NOT NULL,
  `gestion_comunitaria` varchar(500) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `debilidades`
--

INSERT INTO `debilidades` (`id_debilidades`, `gestion_directiva`, `gestion_financiera`, `gestion_pedagogica`, `gestion_comunitaria`) VALUES
(1, '1) La institución no implementa procesos eficaces de comunicación que garanticen una buena toma de decisiones.\r\n2) No existe el comité de convivencia y por lo tanto no se garantiza su funcionamiento.\r\n', '1) La institución no ha realizado estudios que le permitan tener aproximación parcial de su panorama de riesgos.\r\n2) La institución no cuenta con programas definidos de psicología, enfermería, odontología y problemas de interacción.\r\n', '1)El sistema de evaluación no es integral.\r\n2) El enfoque metodológico no está definido.\r\n', '1) La Institución Educativa no tiene estrategias definidas para evaluar a los padres de familia en los procesos de formación de los estudiantes.\r\n2) No existen dentro de la institución procedimientos para recoger sugerencias y quejas del personal académico donde se incluyen mecanismos de participación dela comunidad.\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fortalezas`
--

CREATE TABLE `fortalezas` (
  `id_fortalezas` int(11) NOT NULL,
  `gestion_directiva` varchar(500) COLLATE utf8mb4_spanish_ci NOT NULL,
  `gestion_financiera` varchar(500) COLLATE utf8mb4_spanish_ci NOT NULL,
  `gestion_pedagogica` varchar(500) COLLATE utf8mb4_spanish_ci NOT NULL,
  `gestion_comunitaria` varchar(500) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `fortalezas`
--

INSERT INTO `fortalezas` (`id_fortalezas`, `gestion_directiva`, `gestion_financiera`, `gestion_pedagogica`, `gestion_comunitaria`) VALUES
(1, '1) El equipo de dirección se apropia del direccionamiento de la institución.\r\n2) La institución educativa ha definido objetivos y metas para el direccionamiento administrativo.\r\n\r\n', '1) La institución cuenta con criterios propios para el proceso de matrícula.\r\n2) El proceso de matrícula es coherente con los lineamientos establecidos por el MEN y la Secretaria de Educación municipal.\r\n', '1) El colegio cuenta con buenos recursos académicos, logísticos, humanos y financieros para el desarrollo de la labor educativa.\r\n2) El docente en su práctica valora las relaciones afectivas entre los estudiantes.\r\n', '1) La institución tiene conocimiento de su entorno social.\r\n2) La institución promueve la capacitación de los padres de familia.\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instituciones`
--

CREATE TABLE `instituciones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `mision` varchar(5000) COLLATE utf8mb4_spanish_ci NOT NULL,
  `vision` varchar(5000) COLLATE utf8mb4_spanish_ci NOT NULL,
  `filosofia` varchar(5000) COLLATE utf8mb4_spanish_ci NOT NULL,
  `municipio` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `direccion` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `instituciones`
--

INSERT INTO `instituciones` (`id`, `nombre`, `mision`, `vision`, `filosofia`, `municipio`, `direccion`) VALUES
(1, 'institucion educativa las delicias', 'La Institución Educativa rural Las Delicias de Tierralta - Córdoba, forma personas comprometidas con el entorno ambiental, a través del Modelo Constructivista con Enfoque Social, integrando el uso de las TICs, que apunten a la conservación del ambiente con responsabilidad, tolerancia, respeto y solidaridad', 'La Institución Educativa Las Delicias del Municipio de Tierralta - Córdoba, para el año 2019 será reconocida como ente dinamizador de procesos educativos que ofrezcan soluciones a la problemática social del contexto, apoyados por programas articulados con entidades de educación superior  que permitan la integración con la comunidad', 'La Institución Educativa  Las delicias tiene como fin   “Educar Para La Paz” en valores de sentido de pertenencia, tolerancia, responsabilidad, respeto hacia Dios, la naturaleza y sus semejantes. ', 'tierralta', 'b/ las delicias');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `id` int(11) NOT NULL,
  `nombre1` varchar(10) COLLATE utf8mb4_spanish_ci NOT NULL,
  `nombre2` varchar(10) COLLATE utf8mb4_spanish_ci NOT NULL,
  `apellido1` varchar(10) COLLATE utf8mb4_spanish_ci NOT NULL,
  `apellido2` varchar(10) COLLATE utf8mb4_spanish_ci NOT NULL,
  `correo` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `telefono` varchar(15) COLLATE utf8mb4_spanish_ci NOT NULL,
  `usuario` varchar(15) COLLATE utf8mb4_spanish_ci NOT NULL,
  `clave` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `direccion` varchar(10) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id`, `nombre1`, `nombre2`, `apellido1`, `apellido2`, `correo`, `telefono`, `usuario`, `clave`, `direccion`) VALUES
(1, 'Omar', 'Jose', 'Arcia', 'Barastegui', 'daniadres1602@hotmail.com', '3013246755', 'Dsalgado', 'nacional', 'Sahagun '),
(2, 'jairo', 'jose', 'mendez', 'mendez', 'yatusabes@gmail.com', '12345', 'jm20', '0000', 'p. rica'),
(3, 'jairo', 'miguel', 'salgado', 'arcia', 'elmismo@gmail.com', '32123', 'miguel', '0101', 'la ceiva');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `debilidades`
--
ALTER TABLE `debilidades`
  ADD PRIMARY KEY (`id_debilidades`);

--
-- Indices de la tabla `fortalezas`
--
ALTER TABLE `fortalezas`
  ADD PRIMARY KEY (`id_fortalezas`);

--
-- Indices de la tabla `instituciones`
--
ALTER TABLE `instituciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `debilidades`
--
ALTER TABLE `debilidades`
  MODIFY `id_debilidades` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `fortalezas`
--
ALTER TABLE `fortalezas`
  MODIFY `id_fortalezas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `instituciones`
--
ALTER TABLE `instituciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
