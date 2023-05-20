-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-05-2023 a las 03:08:26
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ayudagrov2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `archivo`
--

CREATE TABLE `archivo` (
  `id_archivo` int(11) NOT NULL,
  `nombre_archivo` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `archivo`
--

INSERT INTO `archivo` (`id_archivo`, `nombre_archivo`, `url`, `createdAt`, `updatedAt`) VALUES
(1, 'foto', 'htpps://www.problemas.com', '2023-05-14 17:26:03', '2023-05-14 17:26:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `descripcion`, `titulo`, `createdAt`, `updatedAt`) VALUES
(1, 'hace referencia a frutos', 'frutos', '2023-05-14 17:26:03', '2023-05-14 17:26:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pregunta`
--

CREATE TABLE `pregunta` (
  `id_pregunta` int(11) NOT NULL,
  `subcategoria_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pregunta`
--

INSERT INTO `pregunta` (`id_pregunta`, `subcategoria_id`, `usuario_id`, `descripcion`, `createdAt`, `updatedAt`) VALUES
(1, 1, 1, 'Cómo controlar manchas amarillas en las hojas del café', '2023-05-14 17:26:03', '2023-05-14 17:26:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pregunta_archivos`
--

CREATE TABLE `pregunta_archivos` (
  `id_pregunta_archivo` int(11) NOT NULL,
  `pregunta_id` int(11) DEFAULT NULL,
  `archivo_id` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pregunta_archivos`
--

INSERT INTO `pregunta_archivos` (`id_pregunta_archivo`, `pregunta_id`, `archivo_id`, `createdAt`, `updatedAt`) VALUES
(1, 1, 1, '2023-05-14 17:26:03', '2023-05-14 17:26:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuesta`
--

CREATE TABLE `respuesta` (
  `id_respuesta` int(11) NOT NULL,
  `pregunta_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `hora_fecha` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `respuesta`
--

INSERT INTO `respuesta` (`id_respuesta`, `pregunta_id`, `usuario_id`, `descripcion`, `hora_fecha`, `createdAt`, `updatedAt`) VALUES
(1, 1, 1, 'respuestas claras ', 'agosto 2023', '2023-05-14 17:26:03', '2023-05-14 17:26:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuesta_archivos`
--

CREATE TABLE `respuesta_archivos` (
  `id_respuesta_archivo` int(11) NOT NULL,
  `respuesta_id` int(11) DEFAULT NULL,
  `archivo_id` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `respuesta_archivos`
--

INSERT INTO `respuesta_archivos` (`id_respuesta_archivo`, `respuesta_id`, `archivo_id`, `createdAt`, `updatedAt`) VALUES
(1, 1, 1, '2023-05-14 17:26:03', '2023-05-14 17:26:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_rol` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_rol`, `nombre`, `createdAt`, `updatedAt`) VALUES
(1, 'Campesino', '2023-05-14 17:26:03', '2023-05-14 17:26:03'),
(2, 'Administrador', '2023-05-14 17:26:03', '2023-05-14 17:26:03'),
(3, 'Profesional', '2023-05-14 17:26:03', '2023-05-14 17:26:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20230301042237-create-categoria.js'),
('20230302005055-create-rol.js'),
('20230302005126-create-archivo.js'),
('20230302005127-create-subcategoria.js'),
('20230302005127-create-usuario.js'),
('20230302005239-create-sugerencia.js'),
('20230302005240-create-pregunta.js'),
('20230303020255-create-respuesta.js'),
('20230303020256-create-valorar-respuesta.js'),
('20230309042108-create-sugerencia-archivo.js'),
('20230309042935-create-pregunta-archivo.js'),
('20230309043156-create-respuesta-archivo.js');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategoria`
--

CREATE TABLE `subcategoria` (
  `id_subcategoria` int(11) NOT NULL,
  `categoria_id` int(11) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `subcategoria`
--

INSERT INTO `subcategoria` (`id_subcategoria`, `categoria_id`, `descripcion`, `titulo`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'subcategoria', 'sub', '2023-05-14 17:26:03', '2023-05-14 17:26:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sugerencia`
--

CREATE TABLE `sugerencia` (
  `id_sugerencia` int(11) NOT NULL,
  `subcategoria_id` int(11) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sugerencia`
--

INSERT INTO `sugerencia` (`id_sugerencia`, `subcategoria_id`, `descripcion`, `usuario_id`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'come mas papa', 1, '2023-05-14 17:26:03', '2023-05-14 17:26:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sugerencia_archivos`
--

CREATE TABLE `sugerencia_archivos` (
  `id_sugerencia_archivo` int(11) NOT NULL,
  `archivo_id` int(11) DEFAULT NULL,
  `sugerencia_id` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sugerencia_archivos`
--

INSERT INTO `sugerencia_archivos` (`id_sugerencia_archivo`, `archivo_id`, `sugerencia_id`, `createdAt`, `updatedAt`) VALUES
(1, 1, 1, '2023-05-14 17:26:03', '2023-05-14 17:26:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `rol_id` int(11) DEFAULT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `correo_electronico` varchar(255) NOT NULL,
  `contrasena` varchar(255) NOT NULL,
  `telefono` int(11) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `rol_id`, `nombre`, `apellido`, `correo_electronico`, `contrasena`, `telefono`, `direccion`, `estado`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'Yennifer Nataly', 'Martinez Ortega', 'yennifernataly2003@gmail.com', 'Yennita123', 2147483647, 'calle 70AN No 5-14', 'activo', '2023-05-14 17:26:03', '2023-05-14 17:26:03'),
(2, 1, 'Erazo', 'Ortiz', 'campesino@gmail.com', '$2b$10$GwzOGBIou9olgc6RhNT2COA30EtLdd743Grq03dcxrmLL/syd2acy', 3432423, 'El Diviso', 'activo', '2023-05-14 17:27:09', '2023-05-18 19:33:56'),
(3, 2, 'Darney', 'Erazo', 'administrador@gmail.com', '$2b$10$ldcPVXLwtShutl5oPasReudhzT6YkTkrls5DTpGrRHCVeVGms8V4q', 3233423, 'popayan', 'activo', '2023-05-14 17:27:27', '2023-05-14 17:27:27'),
(14, 3, ' Profesional: Elizabeth ', 'Prado', 'profesional@gmail.com', '$2b$10$vbFXx2Nk1z8Uru6qrPc70uSaw8kzw9rJoFwOd6LZiAQ.eWpd7HBrS', 2147483647, 'Agua tibia ', 'activo', '2023-05-19 01:57:17', '2023-05-19 01:57:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `valorar_respuesta`
--

CREATE TABLE `valorar_respuesta` (
  `id_valorar` int(11) NOT NULL,
  `respuesta_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `calificacion` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `valorar_respuesta`
--

INSERT INTO `valorar_respuesta` (`id_valorar`, `respuesta_id`, `usuario_id`, `calificacion`, `createdAt`, `updatedAt`) VALUES
(1, 1, 1, '1', '2023-05-14 17:26:03', '2023-05-14 17:26:03');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `archivo`
--
ALTER TABLE `archivo`
  ADD PRIMARY KEY (`id_archivo`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  ADD PRIMARY KEY (`id_pregunta`),
  ADD KEY `subcategoria_id` (`subcategoria_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `pregunta_archivos`
--
ALTER TABLE `pregunta_archivos`
  ADD PRIMARY KEY (`id_pregunta_archivo`),
  ADD KEY `pregunta_id` (`pregunta_id`),
  ADD KEY `archivo_id` (`archivo_id`);

--
-- Indices de la tabla `respuesta`
--
ALTER TABLE `respuesta`
  ADD PRIMARY KEY (`id_respuesta`),
  ADD KEY `pregunta_id` (`pregunta_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `respuesta_archivos`
--
ALTER TABLE `respuesta_archivos`
  ADD PRIMARY KEY (`id_respuesta_archivo`),
  ADD KEY `respuesta_id` (`respuesta_id`),
  ADD KEY `archivo_id` (`archivo_id`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `subcategoria`
--
ALTER TABLE `subcategoria`
  ADD PRIMARY KEY (`id_subcategoria`),
  ADD KEY `categoria_id` (`categoria_id`);

--
-- Indices de la tabla `sugerencia`
--
ALTER TABLE `sugerencia`
  ADD PRIMARY KEY (`id_sugerencia`),
  ADD KEY `subcategoria_id` (`subcategoria_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `sugerencia_archivos`
--
ALTER TABLE `sugerencia_archivos`
  ADD PRIMARY KEY (`id_sugerencia_archivo`),
  ADD KEY `archivo_id` (`archivo_id`),
  ADD KEY `sugerencia_id` (`sugerencia_id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `rol_id` (`rol_id`);

--
-- Indices de la tabla `valorar_respuesta`
--
ALTER TABLE `valorar_respuesta`
  ADD PRIMARY KEY (`id_valorar`),
  ADD KEY `respuesta_id` (`respuesta_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `archivo`
--
ALTER TABLE `archivo`
  MODIFY `id_archivo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  MODIFY `id_pregunta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `pregunta_archivos`
--
ALTER TABLE `pregunta_archivos`
  MODIFY `id_pregunta_archivo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `respuesta`
--
ALTER TABLE `respuesta`
  MODIFY `id_respuesta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `respuesta_archivos`
--
ALTER TABLE `respuesta_archivos`
  MODIFY `id_respuesta_archivo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `subcategoria`
--
ALTER TABLE `subcategoria`
  MODIFY `id_subcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `sugerencia`
--
ALTER TABLE `sugerencia`
  MODIFY `id_sugerencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `sugerencia_archivos`
--
ALTER TABLE `sugerencia_archivos`
  MODIFY `id_sugerencia_archivo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `valorar_respuesta`
--
ALTER TABLE `valorar_respuesta`
  MODIFY `id_valorar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pregunta`
--
ALTER TABLE `pregunta`
  ADD CONSTRAINT `pregunta_ibfk_1` FOREIGN KEY (`subcategoria_id`) REFERENCES `subcategoria` (`id_subcategoria`),
  ADD CONSTRAINT `pregunta_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `pregunta_archivos`
--
ALTER TABLE `pregunta_archivos`
  ADD CONSTRAINT `pregunta_archivos_ibfk_1` FOREIGN KEY (`pregunta_id`) REFERENCES `pregunta` (`id_pregunta`),
  ADD CONSTRAINT `pregunta_archivos_ibfk_2` FOREIGN KEY (`archivo_id`) REFERENCES `archivo` (`id_archivo`);

--
-- Filtros para la tabla `respuesta`
--
ALTER TABLE `respuesta`
  ADD CONSTRAINT `respuesta_ibfk_1` FOREIGN KEY (`pregunta_id`) REFERENCES `pregunta` (`id_pregunta`),
  ADD CONSTRAINT `respuesta_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `respuesta_archivos`
--
ALTER TABLE `respuesta_archivos`
  ADD CONSTRAINT `respuesta_archivos_ibfk_1` FOREIGN KEY (`respuesta_id`) REFERENCES `respuesta` (`id_respuesta`),
  ADD CONSTRAINT `respuesta_archivos_ibfk_2` FOREIGN KEY (`archivo_id`) REFERENCES `archivo` (`id_archivo`);

--
-- Filtros para la tabla `subcategoria`
--
ALTER TABLE `subcategoria`
  ADD CONSTRAINT `subcategoria_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id_categoria`);

--
-- Filtros para la tabla `sugerencia`
--
ALTER TABLE `sugerencia`
  ADD CONSTRAINT `sugerencia_ibfk_1` FOREIGN KEY (`subcategoria_id`) REFERENCES `subcategoria` (`id_subcategoria`),
  ADD CONSTRAINT `sugerencia_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `sugerencia_archivos`
--
ALTER TABLE `sugerencia_archivos`
  ADD CONSTRAINT `sugerencia_archivos_ibfk_1` FOREIGN KEY (`archivo_id`) REFERENCES `archivo` (`id_archivo`),
  ADD CONSTRAINT `sugerencia_archivos_ibfk_2` FOREIGN KEY (`sugerencia_id`) REFERENCES `sugerencia` (`id_sugerencia`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`rol_id`) REFERENCES `rol` (`id_rol`) ON DELETE CASCADE;

--
-- Filtros para la tabla `valorar_respuesta`
--
ALTER TABLE `valorar_respuesta`
  ADD CONSTRAINT `valorar_respuesta_ibfk_1` FOREIGN KEY (`respuesta_id`) REFERENCES `respuesta` (`id_respuesta`),
  ADD CONSTRAINT `valorar_respuesta_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
