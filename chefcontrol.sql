-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-09-2023 a las 22:36:12
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `chefcontrol`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_ajuste`
--

CREATE TABLE `detalle_ajuste` (
  `Consecutivo` int(11) NOT NULL,
  `Id_Ajuste` int(11) NOT NULL,
  `Cod_Producto` int(11) NOT NULL,
  `Cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_ajuste`
--

CREATE TABLE `tbl_ajuste` (
  `Id_Ajuste` int(11) NOT NULL,
  `Descripcion` varchar(60) NOT NULL,
  `Id_Bodega` int(11) NOT NULL,
  `Id_Empleado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_bodega`
--

CREATE TABLE `tbl_bodega` (
  `Id_Bodega` int(11) NOT NULL,
  `Nombre` varchar(60) NOT NULL,
  `Telefono` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_cliente`
--

CREATE TABLE `tbl_cliente` (
  `Id_Cliente` int(11) NOT NULL,
  `Nombre` varchar(60) NOT NULL,
  `Apellido` varchar(60) NOT NULL,
  `Telefono` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_cliente`
--

INSERT INTO `tbl_cliente` (`Id_Cliente`, `Nombre`, `Apellido`, `Telefono`) VALUES
(1, 'Mikael', 'Gaviria', 3148660670),
(2, 'Valeria', 'Jimenez', 3224598014),
(3, 'Emanuel', 'Echeverri', 3105487998),
(4, 'Samuel', 'Lema', 323546987),
(5, 'Santiago', 'Goez', 3145489658);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_compra`
--

CREATE TABLE `tbl_compra` (
  `Consecutivo` int(11) NOT NULL,
  `Nro_Factura` int(11) NOT NULL,
  `Id_Bodega` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `NIT_Proveedor` int(11) NOT NULL,
  `Id_Empleado` int(11) NOT NULL,
  `Neto_Compra` int(11) NOT NULL,
  `Impuestos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_detallecompra`
--

CREATE TABLE `tbl_detallecompra` (
  `Consecutivo` int(11) NOT NULL,
  `Nro_Factura` int(11) NOT NULL,
  `Cod_Producto` int(11) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Costo` int(11) NOT NULL,
  `Total_linea` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_detalleordenproduccion`
--

CREATE TABLE `tbl_detalleordenproduccion` (
  `Consecutivo` int(11) NOT NULL,
  `Id_Detalle` int(11) NOT NULL,
  `Fecha_Pedido` date NOT NULL,
  `Presentacion` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_detallereceta`
--

CREATE TABLE `tbl_detallereceta` (
  `Consecutivo` int(11) NOT NULL,
  `Id_Receta` int(11) NOT NULL,
  `Cod_Producto` int(11) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Cod_UMedida` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_detalletraslado`
--

CREATE TABLE `tbl_detalletraslado` (
  `Consecutivo` int(11) NOT NULL,
  `Id_Traslado` int(11) NOT NULL,
  `Cod_Producto` int(11) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Costo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_detalleventas`
--

CREATE TABLE `tbl_detalleventas` (
  `Consecutivo` int(11) NOT NULL,
  `Nro_Factura` int(11) DEFAULT NULL,
  `Cod_Producto` int(11) DEFAULT NULL,
  `Cantidad` int(11) DEFAULT NULL,
  `Precio_Venta` int(11) DEFAULT NULL,
  `Estado` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_detalleventas`
--

INSERT INTO `tbl_detalleventas` (`Consecutivo`, `Nro_Factura`, `Cod_Producto`, `Cantidad`, `Precio_Venta`, `Estado`) VALUES
(1, 1, 1, 1000, 2000, 0),
(2, 2, 2, 205, 5000, 0),
(3, 3, 3, 280, 6000, 0),
(4, 4, 4, 1200, 4500, 0),
(5, 5, 5, 2500, 6500, 0),
(7, NULL, NULL, 0, NULL, 0),
(8, NULL, NULL, 5, NULL, 0),
(9, NULL, NULL, 2, NULL, 0),
(10, NULL, NULL, 2, NULL, 0),
(11, NULL, NULL, 2, NULL, 0),
(12, NULL, NULL, 2, NULL, 0),
(13, NULL, NULL, 8, NULL, 0),
(14, NULL, NULL, 2, NULL, 0),
(15, NULL, NULL, 11, NULL, 0),
(16, NULL, NULL, 7, NULL, 0),
(17, NULL, NULL, 3, NULL, 0),
(18, NULL, NULL, 0, NULL, 0),
(19, NULL, NULL, 0, NULL, 0),
(20, NULL, NULL, 0, NULL, 0),
(21, NULL, NULL, 0, NULL, 0),
(22, NULL, NULL, 0, NULL, 0),
(23, NULL, NULL, 0, NULL, 0),
(24, NULL, NULL, 3, NULL, 0),
(25, NULL, NULL, 3, NULL, 0),
(26, NULL, NULL, 22, NULL, 1),
(27, NULL, NULL, 22, NULL, 1),
(28, NULL, NULL, 3, NULL, 0),
(29, NULL, NULL, 2, NULL, 0),
(30, NULL, NULL, 2, NULL, 0),
(31, NULL, NULL, 2, NULL, 0),
(32, NULL, NULL, 2, NULL, 0),
(33, NULL, NULL, 2, NULL, 0),
(34, NULL, NULL, 12, NULL, 0),
(35, NULL, NULL, 0, NULL, 0),
(36, NULL, NULL, 2, NULL, 0),
(37, NULL, NULL, 0, NULL, 0),
(38, NULL, NULL, 3, NULL, 0),
(39, NULL, NULL, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_detallevento`
--

CREATE TABLE `tbl_detallevento` (
  `Consecutivo` int(11) NOT NULL,
  `Factura_Nro` int(11) NOT NULL,
  `Cod_Producto` int(11) NOT NULL,
  `Cupos` int(11) NOT NULL,
  `Precio_Venta` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Hora_Inicio` time NOT NULL,
  `Hora_Fin` time NOT NULL,
  `Descripcion` varchar(200) DEFAULT NULL,
  `Imagen` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_ordenproduccion`
--

CREATE TABLE `tbl_ordenproduccion` (
  `Consecutivo` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Id_Cliente` int(11) NOT NULL,
  `Id_Empleado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_producto`
--

CREATE TABLE `tbl_producto` (
  `Cod_Producto` int(11) NOT NULL,
  `Nombre` varchar(60) NOT NULL,
  `Stock_Minimo` int(11) NOT NULL,
  `Stock_Maximo` int(11) NOT NULL,
  `Fecha_Vencimiento` date NOT NULL,
  `Costo` int(11) NOT NULL,
  `Cod_Tipo` int(11) NOT NULL,
  `Ubicacion` varchar(60) NOT NULL,
  `Cod_UMedida` int(11) NOT NULL,
  `Precio_Venta` int(11) NOT NULL,
  `Existencia` int(11) NOT NULL,
  `IVA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_producto`
--

INSERT INTO `tbl_producto` (`Cod_Producto`, `Nombre`, `Stock_Minimo`, `Stock_Maximo`, `Fecha_Vencimiento`, `Costo`, `Cod_Tipo`, `Ubicacion`, `Cod_UMedida`, `Precio_Venta`, `Existencia`, `IVA`) VALUES
(1, 'cafe expreso', 1, 100, '2023-04-04', 3000, 1, 'tienda del cafe', 3, 4000, 200, 760),
(2, 'cafe negro', 1, 100, '2023-05-04', 2000, 2, 'tienda del cafe', 3, 3000, 100, 570),
(3, 'torta zanahoria', 1, 100, '2023-04-04', 2000, 3, 'tienda del cafe', 2, 5000, 7, 950),
(4, 'brownie con helado', 1, 20, '2023-04-04', 4500, 4, 'la tienda del cafe', 2, 6000, 40, 1140),
(5, 'tinto', 1, 30, '2023-04-04', 500, 5, 'la tienda del cafe', 3, 2000, 200, 380);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_proveedores`
--

CREATE TABLE `tbl_proveedores` (
  `NIT_Proveedor` int(11) NOT NULL,
  `Razon_Social` varchar(60) NOT NULL,
  `Direccion` varchar(60) NOT NULL,
  `Telefono` double NOT NULL,
  `Municipio` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_receta`
--

CREATE TABLE `tbl_receta` (
  `Id_Receta` int(11) NOT NULL,
  `Nombre` varchar(60) NOT NULL,
  `Descripcion` varchar(60) NOT NULL,
  `Costo_Total` int(11) NOT NULL,
  `Contribucion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_rol`
--

CREATE TABLE `tbl_rol` (
  `Id_Rol` int(11) NOT NULL,
  `Rol` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipoproducto`
--

CREATE TABLE `tbl_tipoproducto` (
  `Cod_Tipo` int(11) NOT NULL,
  `Tipo` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_traslado`
--

CREATE TABLE `tbl_traslado` (
  `Id_Traslado` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Bodega_Origen` int(11) NOT NULL,
  `Bodega_Destino` int(11) NOT NULL,
  `Total_Traslado` varchar(60) NOT NULL,
  `Id_Empleado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_umedida`
--

CREATE TABLE `tbl_umedida` (
  `Cod_UMedida` int(11) NOT NULL,
  `Unidad_Medida` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuarios`
--

CREATE TABLE `tbl_usuarios` (
  `Id_Empleado` int(11) NOT NULL,
  `Nombre` varchar(60) NOT NULL,
  `Apellido` varchar(60) NOT NULL,
  `Telefono` double NOT NULL,
  `Id_Rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_ventas`
--

CREATE TABLE `tbl_ventas` (
  `Factura_Nro` int(11) NOT NULL,
  `Fecha` date DEFAULT NULL,
  `Id_Cliente` int(11) DEFAULT NULL,
  `Id_Bodega` int(11) DEFAULT NULL,
  `Neto` int(11) DEFAULT NULL,
  `IVA` int(11) DEFAULT NULL,
  `Forma_Pago` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_ventas`
--

INSERT INTO `tbl_ventas` (`Factura_Nro`, `Fecha`, `Id_Cliente`, `Id_Bodega`, `Neto`, `IVA`, `Forma_Pago`) VALUES
(1, '2023-09-28', 1, 1, 800000, 152000, 'efectivo'),
(2, '2023-04-15', 2, 2, 1000000, 190000, 'efectivo'),
(3, '2023-12-30', 3, 3, 1200000, 228000, 'tarjeta credito'),
(4, '2023-10-02', 4, 4, 620000, 117800, 'tarjeta debito'),
(5, '2023-05-08', 5, 5, 2200000, 418000, 'efectivo'),
(6, '2023-08-29', NULL, NULL, NULL, NULL, NULL),
(7, '2023-08-29', NULL, NULL, NULL, NULL, NULL),
(8, '2023-09-13', NULL, NULL, NULL, NULL, NULL),
(9, '2023-09-12', NULL, NULL, NULL, NULL, NULL),
(10, '2023-09-18', NULL, NULL, NULL, NULL, NULL),
(11, '2023-09-20', NULL, NULL, NULL, NULL, NULL),
(12, '2023-09-05', NULL, NULL, NULL, NULL, NULL),
(13, '2023-09-17', NULL, NULL, NULL, NULL, NULL),
(14, '2023-09-12', NULL, NULL, NULL, NULL, NULL),
(15, '2023-09-11', NULL, NULL, NULL, NULL, NULL),
(16, '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(17, '2023-09-14', NULL, NULL, NULL, NULL, NULL),
(18, '2023-09-22', NULL, NULL, NULL, NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `detalle_ajuste`
--
ALTER TABLE `detalle_ajuste`
  ADD PRIMARY KEY (`Consecutivo`),
  ADD KEY `Cod_Producto` (`Cod_Producto`),
  ADD KEY `Id_Ajuste` (`Id_Ajuste`);

--
-- Indices de la tabla `tbl_ajuste`
--
ALTER TABLE `tbl_ajuste`
  ADD PRIMARY KEY (`Id_Ajuste`),
  ADD KEY `Id_Bodega` (`Id_Bodega`),
  ADD KEY `Id_Empleado` (`Id_Empleado`);

--
-- Indices de la tabla `tbl_bodega`
--
ALTER TABLE `tbl_bodega`
  ADD PRIMARY KEY (`Id_Bodega`);

--
-- Indices de la tabla `tbl_cliente`
--
ALTER TABLE `tbl_cliente`
  ADD PRIMARY KEY (`Id_Cliente`),
  ADD KEY `Id_Cliente` (`Id_Cliente`);

--
-- Indices de la tabla `tbl_compra`
--
ALTER TABLE `tbl_compra`
  ADD PRIMARY KEY (`Consecutivo`),
  ADD KEY `Nro_Factura` (`Nro_Factura`),
  ADD KEY `NIT_Proveedor` (`NIT_Proveedor`),
  ADD KEY `Id_Empleado` (`Id_Empleado`),
  ADD KEY `Id_Bodega` (`Id_Bodega`);

--
-- Indices de la tabla `tbl_detallecompra`
--
ALTER TABLE `tbl_detallecompra`
  ADD PRIMARY KEY (`Consecutivo`),
  ADD KEY `Nro_Factura` (`Nro_Factura`),
  ADD KEY `Cod_Producto` (`Cod_Producto`);

--
-- Indices de la tabla `tbl_detalleordenproduccion`
--
ALTER TABLE `tbl_detalleordenproduccion`
  ADD PRIMARY KEY (`Consecutivo`),
  ADD KEY `Id_Detalle` (`Id_Detalle`);

--
-- Indices de la tabla `tbl_detallereceta`
--
ALTER TABLE `tbl_detallereceta`
  ADD PRIMARY KEY (`Consecutivo`),
  ADD KEY `Id_Receta` (`Id_Receta`),
  ADD KEY `Cod_Producto` (`Cod_Producto`);

--
-- Indices de la tabla `tbl_detalletraslado`
--
ALTER TABLE `tbl_detalletraslado`
  ADD PRIMARY KEY (`Consecutivo`),
  ADD KEY `Cod_Producto` (`Cod_Producto`),
  ADD KEY `Id_Traslado` (`Id_Traslado`);

--
-- Indices de la tabla `tbl_detalleventas`
--
ALTER TABLE `tbl_detalleventas`
  ADD PRIMARY KEY (`Consecutivo`),
  ADD KEY `Nro_Factura` (`Nro_Factura`),
  ADD KEY `Cod_Producto` (`Cod_Producto`);

--
-- Indices de la tabla `tbl_detallevento`
--
ALTER TABLE `tbl_detallevento`
  ADD PRIMARY KEY (`Consecutivo`),
  ADD KEY `Factura_Nro` (`Factura_Nro`),
  ADD KEY `Cod_Producto` (`Cod_Producto`);

--
-- Indices de la tabla `tbl_ordenproduccion`
--
ALTER TABLE `tbl_ordenproduccion`
  ADD PRIMARY KEY (`Consecutivo`),
  ADD KEY `Id_Cliente` (`Id_Cliente`),
  ADD KEY `Id_Empleado` (`Id_Empleado`),
  ADD KEY `Consecutivo` (`Consecutivo`);

--
-- Indices de la tabla `tbl_producto`
--
ALTER TABLE `tbl_producto`
  ADD PRIMARY KEY (`Cod_Producto`),
  ADD KEY `Cod_Producto` (`Cod_Producto`),
  ADD KEY `Cod_UMedida` (`Cod_UMedida`),
  ADD KEY `Cod_Tipo` (`Cod_Tipo`);

--
-- Indices de la tabla `tbl_proveedores`
--
ALTER TABLE `tbl_proveedores`
  ADD PRIMARY KEY (`NIT_Proveedor`),
  ADD KEY `NIT_Proveedor` (`NIT_Proveedor`);

--
-- Indices de la tabla `tbl_receta`
--
ALTER TABLE `tbl_receta`
  ADD PRIMARY KEY (`Id_Receta`),
  ADD KEY `Id_Receta` (`Id_Receta`);

--
-- Indices de la tabla `tbl_rol`
--
ALTER TABLE `tbl_rol`
  ADD PRIMARY KEY (`Id_Rol`),
  ADD KEY `Id_Rol` (`Id_Rol`);

--
-- Indices de la tabla `tbl_tipoproducto`
--
ALTER TABLE `tbl_tipoproducto`
  ADD PRIMARY KEY (`Cod_Tipo`),
  ADD KEY `Cod_Tipo` (`Cod_Tipo`);

--
-- Indices de la tabla `tbl_traslado`
--
ALTER TABLE `tbl_traslado`
  ADD PRIMARY KEY (`Id_Traslado`),
  ADD KEY `Bodega_Destino` (`Bodega_Destino`),
  ADD KEY `Bodega_Origen` (`Bodega_Origen`),
  ADD KEY `Id_Empleado` (`Id_Empleado`),
  ADD KEY `Id_Traslado` (`Id_Traslado`);

--
-- Indices de la tabla `tbl_umedida`
--
ALTER TABLE `tbl_umedida`
  ADD PRIMARY KEY (`Cod_UMedida`),
  ADD KEY `Cod_UMedida` (`Cod_UMedida`);

--
-- Indices de la tabla `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  ADD PRIMARY KEY (`Id_Empleado`),
  ADD KEY `Id_Empleado` (`Id_Empleado`),
  ADD KEY `Id_Rol` (`Id_Rol`);

--
-- Indices de la tabla `tbl_ventas`
--
ALTER TABLE `tbl_ventas`
  ADD PRIMARY KEY (`Factura_Nro`),
  ADD KEY `Id_Cliente` (`Id_Cliente`),
  ADD KEY `Id_Bodega` (`Id_Bodega`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `detalle_ajuste`
--
ALTER TABLE `detalle_ajuste`
  MODIFY `Consecutivo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_compra`
--
ALTER TABLE `tbl_compra`
  MODIFY `Consecutivo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_detallecompra`
--
ALTER TABLE `tbl_detallecompra`
  MODIFY `Consecutivo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_detalleordenproduccion`
--
ALTER TABLE `tbl_detalleordenproduccion`
  MODIFY `Consecutivo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_detallereceta`
--
ALTER TABLE `tbl_detallereceta`
  MODIFY `Consecutivo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_detalletraslado`
--
ALTER TABLE `tbl_detalletraslado`
  MODIFY `Consecutivo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_detalleventas`
--
ALTER TABLE `tbl_detalleventas`
  MODIFY `Consecutivo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `tbl_detallevento`
--
ALTER TABLE `tbl_detallevento`
  MODIFY `Consecutivo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_ordenproduccion`
--
ALTER TABLE `tbl_ordenproduccion`
  MODIFY `Consecutivo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_ventas`
--
ALTER TABLE `tbl_ventas`
  MODIFY `Factura_Nro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_ajuste`
--
ALTER TABLE `detalle_ajuste`
  ADD CONSTRAINT `detalle_ajuste_ibfk_1` FOREIGN KEY (`Cod_Producto`) REFERENCES `tbl_producto` (`Cod_Producto`) ON DELETE CASCADE,
  ADD CONSTRAINT `detalle_ajuste_ibfk_2` FOREIGN KEY (`Id_Ajuste`) REFERENCES `tbl_ajuste` (`Id_Ajuste`) ON DELETE CASCADE;

--
-- Filtros para la tabla `tbl_ajuste`
--
ALTER TABLE `tbl_ajuste`
  ADD CONSTRAINT `tbl_ajuste_ibfk_1` FOREIGN KEY (`Id_Empleado`) REFERENCES `tbl_usuarios` (`Id_Empleado`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_ajuste_ibfk_2` FOREIGN KEY (`Id_Bodega`) REFERENCES `tbl_bodega` (`Id_Bodega`) ON DELETE CASCADE;

--
-- Filtros para la tabla `tbl_compra`
--
ALTER TABLE `tbl_compra`
  ADD CONSTRAINT `tbl_compra_ibfk_2` FOREIGN KEY (`NIT_Proveedor`) REFERENCES `tbl_proveedores` (`NIT_Proveedor`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_compra_ibfk_3` FOREIGN KEY (`Id_Empleado`) REFERENCES `tbl_usuarios` (`Id_Empleado`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_compra_ibfk_4` FOREIGN KEY (`Id_Bodega`) REFERENCES `tbl_bodega` (`Id_Bodega`) ON DELETE CASCADE;

--
-- Filtros para la tabla `tbl_detallecompra`
--
ALTER TABLE `tbl_detallecompra`
  ADD CONSTRAINT `tbl_detallecompra_ibfk_1` FOREIGN KEY (`Nro_Factura`) REFERENCES `tbl_compra` (`Nro_Factura`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_detallecompra_ibfk_2` FOREIGN KEY (`Cod_Producto`) REFERENCES `tbl_producto` (`Cod_Producto`) ON DELETE CASCADE;

--
-- Filtros para la tabla `tbl_detalleordenproduccion`
--
ALTER TABLE `tbl_detalleordenproduccion`
  ADD CONSTRAINT `tbl_detalleordenproduccion_ibfk_1` FOREIGN KEY (`Id_Detalle`) REFERENCES `tbl_ordenproduccion` (`Consecutivo`) ON DELETE CASCADE;

--
-- Filtros para la tabla `tbl_detallereceta`
--
ALTER TABLE `tbl_detallereceta`
  ADD CONSTRAINT `tbl_detallereceta_ibfk_1` FOREIGN KEY (`Id_Receta`) REFERENCES `tbl_receta` (`Id_Receta`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_detallereceta_ibfk_2` FOREIGN KEY (`Cod_Producto`) REFERENCES `tbl_producto` (`Cod_Producto`) ON DELETE CASCADE;

--
-- Filtros para la tabla `tbl_detalletraslado`
--
ALTER TABLE `tbl_detalletraslado`
  ADD CONSTRAINT `tbl_detalletraslado_ibfk_1` FOREIGN KEY (`Cod_Producto`) REFERENCES `tbl_producto` (`Cod_Producto`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_detalletraslado_ibfk_2` FOREIGN KEY (`Id_Traslado`) REFERENCES `tbl_traslado` (`Id_Traslado`) ON DELETE CASCADE;

--
-- Filtros para la tabla `tbl_detalleventas`
--
ALTER TABLE `tbl_detalleventas`
  ADD CONSTRAINT `tbl_detalleventas_ibfk_1` FOREIGN KEY (`Cod_Producto`) REFERENCES `tbl_producto` (`Cod_Producto`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_detalleventas_ibfk_2` FOREIGN KEY (`Nro_Factura`) REFERENCES `tbl_ventas` (`Factura_Nro`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_detallevento`
--
ALTER TABLE `tbl_detallevento`
  ADD CONSTRAINT `tbl_detallevento_ibfk_2` FOREIGN KEY (`Cod_Producto`) REFERENCES `tbl_producto` (`Cod_Producto`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_detallevento_ibfk_3` FOREIGN KEY (`Factura_Nro`) REFERENCES `tbl_ventas` (`Factura_Nro`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_ordenproduccion`
--
ALTER TABLE `tbl_ordenproduccion`
  ADD CONSTRAINT `tbl_ordenproduccion_ibfk_1` FOREIGN KEY (`Id_Empleado`) REFERENCES `tbl_usuarios` (`Id_Empleado`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_ordenproduccion_ibfk_2` FOREIGN KEY (`Id_Cliente`) REFERENCES `tbl_cliente` (`Id_Cliente`) ON DELETE CASCADE;

--
-- Filtros para la tabla `tbl_traslado`
--
ALTER TABLE `tbl_traslado`
  ADD CONSTRAINT `tbl_traslado_ibfk_1` FOREIGN KEY (`Bodega_Destino`) REFERENCES `tbl_bodega` (`Id_Bodega`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_traslado_ibfk_2` FOREIGN KEY (`Bodega_Origen`) REFERENCES `tbl_bodega` (`Id_Bodega`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_traslado_ibfk_3` FOREIGN KEY (`Id_Empleado`) REFERENCES `tbl_usuarios` (`Id_Empleado`) ON DELETE CASCADE;

--
-- Filtros para la tabla `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  ADD CONSTRAINT `tbl_usuarios_ibfk_1` FOREIGN KEY (`Id_Rol`) REFERENCES `tbl_rol` (`Id_Rol`) ON DELETE CASCADE;

--
-- Filtros para la tabla `tbl_ventas`
--
ALTER TABLE `tbl_ventas`
  ADD CONSTRAINT `tbl_ventas_ibfk_1` FOREIGN KEY (`Id_Cliente`) REFERENCES `tbl_cliente` (`Id_Cliente`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
