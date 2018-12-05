-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 05-12-2018 a las 09:42:05
-- Versión del servidor: 5.7.23-0ubuntu0.18.04.1
-- Versión de PHP: 7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_springboot2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `authorities`
--

CREATE TABLE `authorities` (
  `id` bigint(20) NOT NULL,
  `authority` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `authorities`
--

INSERT INTO `authorities` (`id`, `authority`, `user_id`) VALUES
(1, 'ROLE_USER', 1),
(2, 'ROLE_ADMIN', 2),
(3, 'ROLE_USER', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` bigint(20) NOT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `create_at` date NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `apellido`, `create_at`, `email`, `foto`, `nombre`) VALUES
(1, 'Guzman', '2017-08-01', 'profesor@bolsadeideas.com', '', 'Andres'),
(2, 'Doe', '2017-08-02', 'john.doe@gmail.com', '', 'John'),
(3, 'Torvalds', '2017-08-03', 'linus.torvalds@gmail.com', '', 'Linus'),
(4, 'Doe', '2017-08-04', 'jane.doe@gmail.com', '', 'Jane'),
(5, 'Lerdorf', '2017-08-05', 'rasmus.lerdorf@gmail.com', '', 'Rasmus'),
(6, 'Gamma', '2017-08-06', 'erich.gamma@gmail.com', '', 'Erich'),
(7, 'Helm', '2017-08-07', 'richard.helm@gmail.com', '', 'Richard'),
(8, 'Johnson', '2017-08-08', 'ralph.johnson@gmail.com', '', 'Ralph'),
(9, 'Vlissides', '2017-08-09', 'john.vlissides@gmail.com', '', 'John'),
(10, 'Gosling', '2017-08-10', 'james.gosling@gmail.com', '', 'James'),
(11, 'Lee', '2017-08-11', 'bruce.lee@gmail.com', '', 'Bruce'),
(12, 'Doe', '2017-08-12', 'johnny.doe@gmail.com', '', 'Johnny'),
(13, 'Roe', '2017-08-13', 'john.roe@gmail.com', '', 'John'),
(14, 'Roe', '2017-08-14', 'jane.roe@gmail.com', '', 'Jane'),
(15, 'Doe', '2017-08-15', 'richard.doe@gmail.com', '', 'Richard'),
(16, 'Doe', '2017-08-16', 'janie.doe@gmail.com', '', 'Janie'),
(17, 'Webb', '2017-08-17', 'phillip.webb@gmail.com', '', 'Phillip'),
(18, 'Nicoll', '2017-08-18', 'stephane.nicoll@gmail.com', '', 'Stephane'),
(19, 'Brannen', '2017-08-19', 'sam.brannen@gmail.com', '', 'Sam'),
(20, 'Hoeller', '2017-08-20', 'juergen.Hoeller@gmail.com', '', 'Juergen'),
(21, 'Roe', '2017-08-21', 'janie.roe@gmail.com', '', 'Janie'),
(22, 'Smith', '2017-08-22', 'john.smith@gmail.com', '', 'John'),
(23, 'Bloggs', '2017-08-23', 'joe.bloggs@gmail.com', '', 'Joe'),
(24, 'Stiles', '2017-08-24', 'john.stiles@gmail.com', '', 'John'),
(25, 'Roe', '2017-08-25', 'stiles.roe@gmail.com', '', 'Richard'),
(26, 'carcausto', '2019-11-09', 'jassonquiroga@gmail.com', '55743c61-0a50-4f34-bd51-4f532ebb4a01_1u.jpg', 'Jasson');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE `facturas` (
  `id` bigint(20) NOT NULL,
  `create_at` date DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `observacion` varchar(255) DEFAULT NULL,
  `cliente_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `facturas`
--

INSERT INTO `facturas` (`id`, `create_at`, `descripcion`, `observacion`, `cliente_id`) VALUES
(1, '2018-12-05', 'Factura equipos de oficina', NULL, 1),
(2, '2018-12-05', 'Factura Bicicleta', 'Alguna nota importante!', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas_items`
--

CREATE TABLE `facturas_items` (
  `id` bigint(20) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `producto_id` bigint(20) DEFAULT NULL,
  `factura_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `facturas_items`
--

INSERT INTO `facturas_items` (`id`, `cantidad`, `producto_id`, `factura_id`) VALUES
(1, 1, 1, 1),
(2, 2, 4, 1),
(3, 1, 5, 1),
(4, 1, 7, 1),
(5, 3, 6, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` bigint(20) NOT NULL,
  `create_at` date DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `precio` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `create_at`, `nombre`, `precio`) VALUES
(1, '2018-12-05', 'Panasonic Pantalla LCD', 259990),
(2, '2018-12-05', 'Sony Camara digital DSC-W320B', 123490),
(3, '2018-12-05', 'Apple iPod shuffle', 1499990),
(4, '2018-12-05', 'Sony Notebook Z110', 37990),
(5, '2018-12-05', 'Hewlett Packard Multifuncional F2280', 69990),
(6, '2018-12-05', 'Bianchi Bicicleta Aro 26', 69990),
(7, '2018-12-05', 'Mica Comoda 5 Cajones', 299990);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `enabled` bit(1) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `enabled`, `password`, `username`) VALUES
(1, b'1', '$2a$10$O9wxmH/AeyZZzIS09Wp8YOEMvFnbRVJ8B4dmAMVSGloR62lj.yqXG', 'andres'),
(2, b'1', '$2a$10$DOMDxjYyfZ/e7RcBfUpzqeaCs8pLgcizuiQWXPkU35nOhZlFcE9MS', 'admin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `authorities`
--
ALTER TABLE `authorities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UKrimuuii4fm3j9qt8uupyiy8nd` (`user_id`,`authority`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK1qiuk10rfkovhlfpsk7oic0v8` (`cliente_id`);

--
-- Indices de la tabla `facturas_items`
--
ALTER TABLE `facturas_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKdumnm9x14hjfp9fufn7q8389r` (`producto_id`),
  ADD KEY `FKnv8ijya20df661b0p6drqcx7u` (`factura_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_r43af9ap4edm43mmtq01oddj6` (`username`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `authorities`
--
ALTER TABLE `authorities`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT de la tabla `facturas`
--
ALTER TABLE `facturas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `facturas_items`
--
ALTER TABLE `facturas_items`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `authorities`
--
ALTER TABLE `authorities`
  ADD CONSTRAINT `FKk91upmbueyim93v469wj7b2qh` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD CONSTRAINT `FK1qiuk10rfkovhlfpsk7oic0v8` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`);

--
-- Filtros para la tabla `facturas_items`
--
ALTER TABLE `facturas_items`
  ADD CONSTRAINT `FKdumnm9x14hjfp9fufn7q8389r` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`),
  ADD CONSTRAINT `FKnv8ijya20df661b0p6drqcx7u` FOREIGN KEY (`factura_id`) REFERENCES `facturas` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
