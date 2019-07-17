-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-07-2019 a las 07:06:20
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
-- Base de datos: `divisimabd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `cliente` varchar(50) DEFAULT NULL,
  `apellido` varchar(100) DEFAULT NULL,
  `dni` varchar(10) DEFAULT NULL,
  `ciudad` varchar(100) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `contra` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `cliente`, `apellido`, `dni`, `ciudad`, `direccion`, `email`, `contra`) VALUES
(1, 'robert', 'gomez ramos', '12321321', 'lima', 'chorrillos mzn 3 lt5', 'leo', '130'),
(2, 'luis', ' ramos gonzales', '12321321', 'lima', 'chorrillos mzn 3 lt5', NULL, NULL),
(3, 'roberta', 'gomez ramirez', '12321321', 'lima', 'chorrillos mzn 3 lt5', NULL, NULL),
(4, 'juan', 'alejo alejo', '12321321', 'lima', 'chorrillos mzn 3 lt5', NULL, NULL),
(5, 'pedro', 'ramos ramos', '12321321', 'lima', 'chorrillos mzn 3 lt5', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadopedido`
--

CREATE TABLE `estadopedido` (
  `id_estado_pedido` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estadopedido`
--

INSERT INTO `estadopedido` (`id_estado_pedido`, `nombre`) VALUES
(1, 'cancelados'),
(2, 'espera'),
(3, 'envidado'),
(4, 'preparacion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `id_pedido` int(11) NOT NULL,
  `id_cliente_pedido` int(11) DEFAULT NULL,
  `fecha_pedido` datetime DEFAULT NULL,
  `id_estado_pedido` int(11) DEFAULT NULL,
  `total` float(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`id_pedido`, `id_cliente_pedido`, `fecha_pedido`, `id_estado_pedido`, `total`) VALUES
(1, 1, '1995-01-29 00:00:00', 1, 34.40),
(2, 1, '1996-01-29 00:00:00', 2, 34.40),
(3, 1, '1997-01-29 00:00:00', 3, 34.40),
(4, 1, '1998-01-29 00:00:00', 4, 34.40);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `precio` float(6,2) DEFAULT NULL,
  `descripcion` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `nombre`, `precio`, `descripcion`) VALUES
(1, 'licuadora', 20.30, 'dsdkfnlasdfnlsdjafnñsadjnfñsadkf'),
(2, 'olla', 23.00, 'dsdkfnlasdfnlsdjafnñsadjnfñsadkf'),
(3, 'mouse', 40.00, 'dsdkfnlasdfnlsdjafnñsadjnfñsadkf'),
(4, 'teclado', 60.00, 'dsdkfnlasdfnlsdjafnñsadjnfñsadkf'),
(5, 'cables', 34.00, 'dsdkfnlasdfnlsdjafnñsadjnfñsadkf'),
(6, 'equipo sonido', 290.00, 'dsdkfnlasdfnlsdjafnñsadjnfñsadkf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productopedido`
--

CREATE TABLE `productopedido` (
  `id_producto_pedido` int(11) NOT NULL,
  `id_producto_productopedido` int(11) DEFAULT NULL,
  `id_pedido_productopedido` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productopedido`
--

INSERT INTO `productopedido` (`id_producto_pedido`, `id_producto_productopedido`, `id_pedido_productopedido`, `cantidad`) VALUES
(1, 1, 1, 4),
(2, 2, 1, 1),
(3, 3, 1, 2),
(4, 4, 1, 5),
(5, 5, 1, 2),
(6, 1, 1, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `estadopedido`
--
ALTER TABLE `estadopedido`
  ADD PRIMARY KEY (`id_estado_pedido`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id_pedido`),
  ADD KEY `id_cliente_pedido` (`id_cliente_pedido`),
  ADD KEY `id_estado_pedido` (`id_estado_pedido`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `productopedido`
--
ALTER TABLE `productopedido`
  ADD PRIMARY KEY (`id_producto_pedido`),
  ADD KEY `id_producto_productopedido` (`id_producto_productopedido`),
  ADD KEY `id_pedido_productopedido` (`id_pedido_productopedido`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `estadopedido`
--
ALTER TABLE `estadopedido`
  MODIFY `id_estado_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `productopedido`
--
ALTER TABLE `productopedido`
  MODIFY `id_producto_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`id_cliente_pedido`) REFERENCES `cliente` (`id_cliente`),
  ADD CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`id_estado_pedido`) REFERENCES `estadopedido` (`id_estado_pedido`);

--
-- Filtros para la tabla `productopedido`
--
ALTER TABLE `productopedido`
  ADD CONSTRAINT `productopedido_ibfk_1` FOREIGN KEY (`id_producto_productopedido`) REFERENCES `producto` (`id_producto`),
  ADD CONSTRAINT `productopedido_ibfk_2` FOREIGN KEY (`id_pedido_productopedido`) REFERENCES `pedido` (`id_pedido`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
