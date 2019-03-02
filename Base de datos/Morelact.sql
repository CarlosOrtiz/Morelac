-- --------------------------------------------------------
-- Host:                         191.102.85.226
-- Versión del servidor:         5.7.15-log - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             10.1.0.5474
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para information_schema

-- Volcando estructura de base de datos para information_schema

-- Volcando estructura de base de datos para information_schema

-- Volcando estructura de base de datos para information_schema

-- Volcando estructura de base de datos para information_schema

-- Volcando estructura de base de datos para information_schema

-- Volcando estructura de base de datos para information_schema

-- Volcando estructura de base de datos para information_schema

-- Volcando estructura de base de datos para information_schema

-- Volcando estructura de base de datos para information_schema

-- Volcando estructura de base de datos para information_schema

-- Volcando estructura de base de datos para information_schema

-- Volcando estructura de base de datos para information_schema

-- Volcando estructura de base de datos para information_schema

-- Volcando estructura de base de datos para information_schema

-- Volcando estructura de base de datos para information_schema

-- Volcando estructura de base de datos para information_schema

-- Volcando estructura de base de datos para information_schema

-- Volcando estructura de base de datos para information_schema

-- Volcando estructura de base de datos para information_schema

-- Volcando estructura de base de datos para information_schema

-- Volcando estructura de base de datos para information_schema

-- Volcando estructura de base de datos para information_schema

-- Volcando estructura de base de datos para information_schema

-- Volcando estructura de base de datos para information_schema

-- Volcando estructura de base de datos para information_schema

-- Volcando estructura de base de datos para information_schema

-- Volcando estructura de base de datos para information_schema

-- Volcando estructura de base de datos para information_schema

-- Volcando estructura de base de datos para information_schema

-- Volcando estructura de base de datos para information_schema

-- Volcando estructura de base de datos para information_schema

-- Volcando estructura de base de datos para information_schema

-- Volcando estructura de base de datos para information_schema

-- Volcando estructura de base de datos para information_schema

-- Volcando estructura de base de datos para information_schema

-- Volcando estructura de base de datos para information_schema

-- Volcando estructura de base de datos para information_schema

-- Volcando estructura de base de datos para information_schema

-- Volcando estructura de base de datos para information_schema

-- Volcando estructura de base de datos para information_schema

-- Volcando estructura de base de datos para information_schema

-- Volcando estructura de base de datos para information_schema

-- Volcando estructura de base de datos para information_schema

-- Volcando estructura de base de datos para information_schema

-- Volcando estructura de base de datos para information_schema

-- Volcando estructura de base de datos para information_schema

-- Volcando estructura de base de datos para information_schema

-- Volcando estructura de base de datos para information_schema

-- Volcando estructura de base de datos para information_schema

-- Volcando estructura de base de datos para information_schema

-- Volcando estructura de base de datos para information_schema

-- Volcando estructura de base de datos para information_schema

-- Volcando estructura de base de datos para information_schema

-- Volcando estructura de base de datos para information_schema

-- Volcando estructura de base de datos para information_schema

-- Volcando estructura de base de datos para information_schema

-- Volcando estructura de base de datos para information_schema

-- Volcando estructura de base de datos para information_schema

-- Volcando estructura de base de datos para information_schema

-- Volcando estructura de base de datos para information_schema

-- Volcando estructura de base de datos para bd_morelac
CREATE DATABASE IF NOT EXISTS `bd_morelac` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `bd_morelac`;

-- Volcando estructura para tabla bd_morelac.aux_prueba
CREATE TABLE IF NOT EXISTS `aux_prueba` (
  `ID_AUX_PRUEBA` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ID_RESULTADOS_PRUEBAS` int(11) unsigned NOT NULL DEFAULT '0',
  `DATOS_ID_DATOS` int(11) NOT NULL,
  PRIMARY KEY (`ID_AUX_PRUEBA`),
  KEY `fk_AUX_PRUEBA_DATOS1_idx` (`DATOS_ID_DATOS`),
  KEY `fk2_ID_RESULTADOS_PRUEBAS` (`ID_RESULTADOS_PRUEBAS`),
  CONSTRAINT `fk2_ID_RESULTADOS_PRUEBAS` FOREIGN KEY (`ID_RESULTADOS_PRUEBAS`) REFERENCES `resultados_pruebas` (`ID_RESULTADOS_PRUEBAS`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_AUX_PRUEBA_DATOS1` FOREIGN KEY (`DATOS_ID_DATOS`) REFERENCES `datos` (`ID_DATOS`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bd_morelac.aux_prueba: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `aux_prueba` DISABLE KEYS */;
INSERT INTO `aux_prueba` (`ID_AUX_PRUEBA`, `ID_RESULTADOS_PRUEBAS`, `DATOS_ID_DATOS`) VALUES
	(1, 2, 2),
	(2, 2, 4),
	(3, 2, 5),
	(4, 2, 3),
	(5, 3, 6),
	(6, 1, 1);
/*!40000 ALTER TABLE `aux_prueba` ENABLE KEYS */;

-- Volcando estructura para tabla bd_morelac.datos
CREATE TABLE IF NOT EXISTS `datos` (
  `ID_DATOS` int(11) NOT NULL AUTO_INCREMENT,
  `DAT_NOMBRE` varchar(50) NOT NULL,
  `VALOR` varchar(50) NOT NULL,
  `OBSERVACION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_DATOS`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bd_morelac.datos: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `datos` DISABLE KEYS */;
INSERT INTO `datos` (`ID_DATOS`, `DAT_NOMBRE`, `VALOR`, `OBSERVACION`) VALUES
	(1, 'Minerales', '1', NULL),
	(2, 'Color', '1', 'BLANCO'),
	(3, 'Textura', '1', 'LIQUIDA'),
	(4, 'OLOR', '3', 'CARACTERISTICA'),
	(5, 'SABOR', '2', 'A LECHE'),
	(6, 'TEMPERATURA', '5', '5 GRADOS');
/*!40000 ALTER TABLE `datos` ENABLE KEYS */;

-- Volcando estructura para tabla bd_morelac.empresa
CREATE TABLE IF NOT EXISTS `empresa` (
  `ID_EMPRESA` int(11) unsigned NOT NULL,
  `EMP_NOMBRE` varchar(50) NOT NULL,
  `EMP_DIRECCION` varchar(160) NOT NULL,
  `EMP_CORREO` varchar(160) NOT NULL,
  `EMP_TELEFONO` varchar(10) NOT NULL,
  `EMP_DUENO` varchar(50) NOT NULL,
  `EMP_MISION` varchar(500) DEFAULT NULL,
  `EMP_VISION` varchar(500) DEFAULT NULL,
  `EMP_FOTO` varchar(500) NOT NULL,
  PRIMARY KEY (`ID_EMPRESA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bd_morelac.empresa: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` (`ID_EMPRESA`, `EMP_NOMBRE`, `EMP_DIRECCION`, `EMP_CORREO`, `EMP_TELEFONO`, `EMP_DUENO`, `EMP_MISION`, `EMP_VISION`, `EMP_FOTO`) VALUES
	(12345, 'MORELACtfghjk', 'MORELIA - CAQUETÁ', 'morelac2019@gmail.es', '3202042401', 'SOFIA ANDREA ORTIZ SANDOVAL', 'Elaborar y comercializar productos lácteos de la más alta calidad que contribuyan al crecimiento y nutrición de una población saludable.', 'Ser la empresa de industrias lácteas líder en el mercado centroamericano al satisfacer las necesidades alimenticias de la población ofreciéndoles siempre productos de primera calidad, manteniendo un enfoque en el apoyo a la sociedad.', '~/Multimedia/Imagenes/Logo sin fondo.png');
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;

-- Volcando estructura para tabla bd_morelac.factura
CREATE TABLE IF NOT EXISTS `factura` (
  `ID_FACTURA` int(11) NOT NULL AUTO_INCREMENT,
  `TOTAL` double NOT NULL,
  `PRO_X_PAGA` varchar(45) NOT NULL,
  `PERSONA_ID_PERSONA` int(11) NOT NULL,
  PRIMARY KEY (`ID_FACTURA`),
  KEY `fk_FACTURA_PERSONA1_idx` (`PERSONA_ID_PERSONA`),
  KEY `fk_PRODUCTOS_FACTURA` (`PRO_X_PAGA`),
  CONSTRAINT `fk_FACTURA_PERSONA1` FOREIGN KEY (`PERSONA_ID_PERSONA`) REFERENCES `persona` (`ID_PERSONA`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_PRODUCTOS_FACTURA` FOREIGN KEY (`PRO_X_PAGA`) REFERENCES `productos` (`PRO_NOMBRE`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bd_morelac.factura: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `factura` DISABLE KEYS */;
INSERT INTO `factura` (`ID_FACTURA`, `TOTAL`, `PRO_X_PAGA`, `PERSONA_ID_PERSONA`) VALUES
	(1, 37.5, 'Yogurt', 9901);
/*!40000 ALTER TABLE `factura` ENABLE KEYS */;

-- Volcando estructura para tabla bd_morelac.factura_has_productos
CREATE TABLE IF NOT EXISTS `factura_has_productos` (
  `FACTURA_ID_FACTURA` int(11) NOT NULL,
  `PRODUCTOS_ID_PRODUCTOS` int(11) NOT NULL,
  PRIMARY KEY (`FACTURA_ID_FACTURA`,`PRODUCTOS_ID_PRODUCTOS`),
  KEY `fk_FACTURA_has_PRODUCTOS_PRODUCTOS1_idx` (`PRODUCTOS_ID_PRODUCTOS`),
  KEY `fk_FACTURA_has_PRODUCTOS_FACTURA1_idx` (`FACTURA_ID_FACTURA`),
  CONSTRAINT `fk_FACTURA_has_PRODUCTOS_FACTURA1` FOREIGN KEY (`FACTURA_ID_FACTURA`) REFERENCES `factura` (`ID_FACTURA`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_FACTURA_has_PRODUCTOS_PRODUCTOS1` FOREIGN KEY (`PRODUCTOS_ID_PRODUCTOS`) REFERENCES `productos` (`ID_PRODUCTOS`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bd_morelac.factura_has_productos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `factura_has_productos` DISABLE KEYS */;
INSERT INTO `factura_has_productos` (`FACTURA_ID_FACTURA`, `PRODUCTOS_ID_PRODUCTOS`) VALUES
	(1, 1);
/*!40000 ALTER TABLE `factura_has_productos` ENABLE KEYS */;

-- Volcando estructura para tabla bd_morelac.finca
CREATE TABLE IF NOT EXISTS `finca` (
  `ID_FINCA` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `FIN_NOMBRE` varchar(45) NOT NULL,
  `FIN_UBICACION` varchar(45) NOT NULL,
  `FIN_DIMENSION` varchar(45) DEFAULT NULL,
  `PERSONA_ID_PERSONA` int(11) NOT NULL,
  PRIMARY KEY (`ID_FINCA`),
  KEY `fk_FINCA_PERSONA1_idx` (`PERSONA_ID_PERSONA`),
  CONSTRAINT `fk_FINCA_PERSONA1` FOREIGN KEY (`PERSONA_ID_PERSONA`) REFERENCES `persona` (`ID_PERSONA`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bd_morelac.finca: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `finca` DISABLE KEYS */;
INSERT INTO `finca` (`ID_FINCA`, `FIN_NOMBRE`, `FIN_UBICACION`, `FIN_DIMENSION`, `PERSONA_ID_PERSONA`) VALUES
	(1, 'Hebron', 'Montañita', '20 hectarias', 17683560),
	(2, 'CAMPANA', 'SAN VICENTE', '30 HECTARIAS', 40683530),
	(3, 'FIN_HOY', 'HOY', '300', 1117553557),
	(4, 'LAS 3 VACAS', 'SAN VICENTE', '100', 1117553558),
	(6, 'prueba de todo 2', 'Florencia tu papa', '666', 1117553559),
	(7, 'XD', 'FLORENCIA ITALIA', '800', 4),
	(8, 'LAS 3 LECHES', '10', 'Solano', 1117553561);
/*!40000 ALTER TABLE `finca` ENABLE KEYS */;

-- Volcando estructura para tabla bd_morelac.leche
CREATE TABLE IF NOT EXISTS `leche` (
  `ID_LECHE` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `CANT_LECHE` float NOT NULL DEFAULT '0',
  `LEC_FECHA` date NOT NULL,
  `ID_FINCA_ID_LECHE` int(11) unsigned NOT NULL,
  PRIMARY KEY (`ID_LECHE`),
  KEY `FK_leche_finca` (`ID_FINCA_ID_LECHE`),
  CONSTRAINT `FK_leche_finca` FOREIGN KEY (`ID_FINCA_ID_LECHE`) REFERENCES `finca` (`ID_FINCA`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bd_morelac.leche: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `leche` DISABLE KEYS */;
INSERT INTO `leche` (`ID_LECHE`, `CANT_LECHE`, `LEC_FECHA`, `ID_FINCA_ID_LECHE`) VALUES
	(1, 15.92, '2019-02-24', 3),
	(2, 23.5, '2019-02-23', 2),
	(3, 200, '2019-02-28', 1),
	(4, 35, '2019-02-27', 4),
	(5, 3, '2019-02-26', 6),
	(6, 500, '2019-02-27', 2);
/*!40000 ALTER TABLE `leche` ENABLE KEYS */;

-- Volcando estructura para tabla bd_morelac.menu
CREATE TABLE IF NOT EXISTS `menu` (
  `ID_MENU` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `MENU_NOMBRE` varchar(80) NOT NULL,
  `MENU_ICON` varchar(80) NOT NULL,
  `MENU_ORDEN` int(11) NOT NULL,
  `MENU_URL` varchar(255) NOT NULL,
  `PERMISO_ID_PERMISO` int(11) NOT NULL,
  PRIMARY KEY (`ID_MENU`),
  KEY `fk_MENU_PERMISO1_idx` (`PERMISO_ID_PERMISO`),
  CONSTRAINT `fk_MENU_PERMISO1` FOREIGN KEY (`PERMISO_ID_PERMISO`) REFERENCES `permiso` (`ID_PERMISO`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bd_morelac.menu: ~12 rows (aproximadamente)
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` (`ID_MENU`, `MENU_NOMBRE`, `MENU_ICON`, `MENU_ORDEN`, `MENU_URL`, `PERMISO_ID_PERMISO`) VALUES
	(1, 'Empresa', 'fa-briefcase', 1, '../Gerente/Modi_empresa.aspx', 1),
	(2, 'Supervisor', 'fa-dashboard', 2, '../Supervisor/supervisor.aspx', 1),
	(3, 'Clientes', 'fa-users', 3, '../Cliente/Clientes.aspx', 1),
	(4, 'Proveedores', 'fa-street-view', 4, '../Proveedor/Proveedores.aspx', 1),
	(5, 'Finanzas', 'fa-bar-chart', 5, '', 1),
	(6, 'Pedidos', 'fa-tags', 8, '../Cliente/pedidos_clientes.aspx', 1),
	(7, 'Reporte Proveedores', 'fa-book', 7, '../Reportes/REPORTEEE.aspx', 1),
	(8, 'Surtir Leche', 'fa-balance-scale', 6, '../Supervisor/surtirleche.aspx', 1),
	(9, 'Proveedores', 'fa-street-view', 1, '../Supervisor/supervisor.aspx', 3),
	(10, 'Gerente', 'fa-briefcase', 0, '../Gerente/gerente.aspx', 1),
	(11, 'Reporte Clientes', 'fa-book', 7, '../Reportes/Reporte_clientes.aspx', 1),
	(12, 'Reporte Productos', 'fa-book', 7, '../Reportes/Reporte_productos.aspx', 1);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;

-- Volcando estructura para tabla bd_morelac.permiso
CREATE TABLE IF NOT EXISTS `permiso` (
  `ID_PERMISO` int(11) NOT NULL AUTO_INCREMENT,
  `PERMISO_ROL` varchar(50) DEFAULT NULL,
  `ROL_ID_ROL` int(2) NOT NULL,
  PRIMARY KEY (`ID_PERMISO`),
  KEY `fk_PERMISO_ROL1_idx` (`ROL_ID_ROL`),
  CONSTRAINT `fk_PERMISO_ROL1` FOREIGN KEY (`ROL_ID_ROL`) REFERENCES `rol` (`ID_ROL`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bd_morelac.permiso: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `permiso` DISABLE KEYS */;
INSERT INTO `permiso` (`ID_PERMISO`, `PERMISO_ROL`, `ROL_ID_ROL`) VALUES
	(1, 'SUPERADMIN', 1),
	(2, 'ADMINISTRADOR', 2),
	(3, 'SUPERVISOR', 3),
	(4, 'CLIENTE', 4),
	(5, 'PROVEEDOR', 5);
/*!40000 ALTER TABLE `permiso` ENABLE KEYS */;

-- Volcando estructura para tabla bd_morelac.persona
CREATE TABLE IF NOT EXISTS `persona` (
  `ID_PERSONA` int(20) NOT NULL AUTO_INCREMENT,
  `PER_CEDULA` varchar(10) NOT NULL,
  `PER_NOMBRE1` varchar(20) NOT NULL,
  `PER_NOMBRE2` varchar(20) DEFAULT NULL,
  `PER_APELLIDO1` varchar(20) NOT NULL,
  `PER_APELLIDO2` varchar(20) DEFAULT NULL,
  `PER_CELULAR` varchar(10) NOT NULL DEFAULT '0',
  `PER_NACIMIENTO` date DEFAULT NULL,
  `PER_DIRECCION` varchar(50) DEFAULT NULL,
  `PER_DETALLES` varchar(255) DEFAULT NULL,
  `PER_SEXO` enum('M','F') NOT NULL,
  `PER_FOTO` varchar(200) DEFAULT '../../../Plantilla/Privado/dist/img/empresa/gerente.jpg',
  PRIMARY KEY (`ID_PERSONA`),
  UNIQUE KEY `PER_CEDULA` (`PER_CEDULA`)
) ENGINE=InnoDB AUTO_INCREMENT=1117553562 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bd_morelac.persona: ~21 rows (aproximadamente)
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` (`ID_PERSONA`, `PER_CEDULA`, `PER_NOMBRE1`, `PER_NOMBRE2`, `PER_APELLIDO1`, `PER_APELLIDO2`, `PER_CELULAR`, `PER_NACIMIENTO`, `PER_DIRECCION`, `PER_DETALLES`, `PER_SEXO`, `PER_FOTO`) VALUES
	(1, '1111', 'cardasd ', NULL, '3213 12das', NULL, '0123123', NULL, NULL, NULL, 'M', 'img/empresa/gerente.png'),
	(3, '1112', 'CARLOS', 'ALBERTO', 'EL MEJOR', 'LOSADA', '3104823632', '1999-01-17', 'SEMIANRIO', 'CAOL', 'M', NULL),
	(4, '1113', 'LUNA', 'FERNANDA', 'ORTIZ', 'LOSADA', '36985214', '2003-10-16', 'PTO-LEGUIZAMO', 'MIJO', 'F', NULL),
	(9901, '1114', 'Juan', 'Andres', 'Perez', 'Castro', '3120384213', '2018-11-07', 'caqueta', 'casdsadasd', 'M', NULL),
	(17683560, '1115', 'LUIS', 'HERMANDO', 'ORTIZ', 'PALADINES', '0', '1976-02-02', 'FLORENCIA CAQUETA', NULL, 'M', NULL),
	(17683600, '1116', 'JOSE', 'ANTONIO', 'ORTIZ', 'PALADINES', '3222012401', '1975-10-17', 'PTO-LEGUIZAMO', 'JAOP', 'M', 'https://scontent-mia3-2.xx.fbcdn.net/v/t1.0-9/33420903_2139377412959444_41807250313969664_n.jpg?_nc_cat=109&_nc_ht=scontent-mia3-2.xx&oh=63dcc33b10b6ccc800505a191c9a84b0&oe=5CF64A18'),
	(40683530, '1117', 'SOFIA', NULL, 'CASTRO', 'MUÑOZ', '0', '1984-02-02', 'SAN VICENTE ', NULL, 'F', NULL),
	(1117552597, '1118', 'CARLOS', 'ALBERTO', 'ORTIZ', 'LOSADA', '3104823632', '1999-01-17', 'FLORENCIA', 'CAOL', 'M', 'https://scontent-mia3-2.xx.fbcdn.net/v/t1.0-9/33420903_2139377412959444_41807250313969664_n.jpg?_nc_cat=109&_nc_ht=scontent-mia3-2.xx&oh=63dcc33b10b6ccc800505a191c9a84b0&oe=5CF64A18'),
	(1117553549, '1119', 'JOHANT', NULL, 'VARGAS', 'VARGAS', '3105874988', '1999-06-06', 'FLORENCIA', 'JJ', 'M', 'https://scontent-mia3-2.xx.fbcdn.net/v/t1.0-9/51158817_2195938630723557_1395904580683825152_n.jpg?_nc_cat=100&_nc_ht=scontent-mia3-2.xx&oh=f20742908ec47d141eb77c5ae7e1499a&oe=5CE32017'),
	(1117553550, '1120', 'CRISTIAN', 'ANDRES', 'PEREZ', 'VARGAS', '0', '2000-02-03', 'MONTAÑOTA', 'CAPV', 'M', NULL),
	(1117553551, '1121', 'ANUEL', 'ANUEL2', 'ANUEL3', 'ANUEL4', '1234567890', '1978-01-17', 'florenci', 'HOLAS BEBECITA MALA', 'M', '../../../Plantilla/Privado/dist/img/empresa/gerente.jpg'),
	(1117553552, '1122', 'KAROL', 'ANUEL2', 'ANUEL3', 'ANUEL4', '1234567890', '1978-01-17', 'florenci', 'HOLAS BEBECITA MALA', 'F', '../../../Plantilla/Privado/dist/img/empresa/gerente.jpg'),
	(1117553553, '1123', 'PEZ', 'PEZ', 'PEZ', 'PEZ', '123213', '2000-10-10', 'PEZ', 'PEZ', 'M', '../../../Plantilla/Privado/dist/img/empresa/gerente.jpg'),
	(1117553554, '1124', 'aaaaaaaaaaaaa', 'aaaaaaaaaaa', 'aaaaaaaaaaa', 'aaaaaaaaaaa', '1111111111', '2019-02-04', 'aaaaaaaaa', 'asd', 'F', '../../../Plantilla/Privado/dist/img/empresa/gerente.jpg'),
	(1117553555, '1125', 'ERNESTO', '', 'PINZON', 'ARBOLEDA', '312039123', '1988-02-05', 'MONTAÑITA', 'De puerto leguizamo putumayo', 'M', '../../../Plantilla/Privado/dist/img/empresa/gerente.jpg'),
	(1117553556, '1126', 'PR', 'PR', 'PR', 'PR', '123', '2000-02-20', 'SAD', 'SAD', 'M', '../../../Plantilla/Privado/dist/img/empresa/gerente.jpg'),
	(1117553557, '12', 'HOY', 'HOY', 'HOY', 'HOY', '312', '1996-11-22', 'HOY', 'HOY', 'M', '../../../Plantilla/Privado/dist/img/empresa/gerente.jpg'),
	(1117553558, '2222222', 'CARLOS', 'NADAL', 'NADAL', 'NADAL', '444444', '2010-10-10', 'NADAL', 'NADAL', 'M', '../../../Plantilla/Privado/dist/img/empresa/gerente.jpg'),
	(1117553559, '99999', 'DANILO2', 'SE CAMBIO', 'HOLA', 'QUE TAL', '310482363', '2000-10-17', 'UNIVERSIDAD', 'HOLA SOY YO DE PRUEBA', 'M', '../../../Plantilla/Privado/dist/img/empresa/gerente.jpg'),
	(1117553560, '1111755253', 'CRISTIANO', '', 'RONALDO ', 'DOS SANTOS', '1234567899', '1985-02-12', 'ITALIA', 'THE BEST PLAYER OF WORD', 'M', '../../../Plantilla/Privado/dist/img/empresa/gerente.jpg'),
	(1117553561, '93289383', 'KAREN', 'DAYANA', 'TEQUIA', 'OSOARIO', '323123123', '2019-01-28', 'FLORENCIA', 'Hola ', 'F', '../../../Plantilla/Privado/dist/img/empresa/gerente.jpg');
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;

-- Volcando estructura para tabla bd_morelac.productos
CREATE TABLE IF NOT EXISTS `productos` (
  `ID_PRODUCTOS` int(11) NOT NULL AUTO_INCREMENT,
  `PRO_NOMBRE` varchar(45) NOT NULL,
  `PRO_CANTIDAD` float NOT NULL,
  `PRO_PRECIO` double NOT NULL,
  PRIMARY KEY (`ID_PRODUCTOS`),
  KEY `NOMBRE` (`PRO_NOMBRE`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bd_morelac.productos: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` (`ID_PRODUCTOS`, `PRO_NOMBRE`, `PRO_CANTIDAD`, `PRO_PRECIO`) VALUES
	(1, 'Yogurt', 15, 2500),
	(2, 'Queso', 20, 1500),
	(3, 'Leche de 1000mL', 10, 3100);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;

-- Volcando estructura para tabla bd_morelac.resultados_pruebas
CREATE TABLE IF NOT EXISTS `resultados_pruebas` (
  `ID_RESULTADOS_PRUEBAS` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `NOMBRE_PRUEBA` varchar(50) NOT NULL,
  `RES_TOTAL_PRUEBAS` double NOT NULL DEFAULT '0',
  `CANTIDAD_PRUEBAS` float NOT NULL DEFAULT '0',
  `OBSERVACION` varchar(700) DEFAULT NULL,
  `PERSONA_ID_PERSONA` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_RESULTADOS_PRUEBAS`),
  KEY `persona_id_persona` (`PERSONA_ID_PERSONA`),
  CONSTRAINT `FK_PERSONA_ID_PERSONA` FOREIGN KEY (`PERSONA_ID_PERSONA`) REFERENCES `persona` (`ID_PERSONA`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bd_morelac.resultados_pruebas: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `resultados_pruebas` DISABLE KEYS */;
INSERT INTO `resultados_pruebas` (`ID_RESULTADOS_PRUEBAS`, `NOMBRE_PRUEBA`, `RES_TOTAL_PRUEBAS`, `CANTIDAD_PRUEBAS`, `OBSERVACION`, `PERSONA_ID_PERSONA`) VALUES
	(1, 'PRUEBA DE NUTRIENTES', 100, 3, NULL, 17683560),
	(2, 'ORGANOLÉPTICOS', 100, 2, NULL, 40683530),
	(3, 'Antibióticos', 10, 3, NULL, 4);
/*!40000 ALTER TABLE `resultados_pruebas` ENABLE KEYS */;

-- Volcando estructura para tabla bd_morelac.rol
CREATE TABLE IF NOT EXISTS `rol` (
  `ID_ROL` int(11) NOT NULL AUTO_INCREMENT,
  `ROL_NOMBRE` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_ROL`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bd_morelac.rol: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
INSERT INTO `rol` (`ID_ROL`, `ROL_NOMBRE`) VALUES
	(1, 'SUPERADMIN'),
	(2, 'ADMINISTRADOR'),
	(3, 'SUPERVISOR'),
	(4, 'CLIENTE'),
	(5, 'PROVEEDOR');
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;

-- Volcando estructura para tabla bd_morelac.submenu
CREATE TABLE IF NOT EXISTS `submenu` (
  `ID_SUBMENU` int(11) NOT NULL AUTO_INCREMENT,
  `SUB_NOMBRE` varchar(100) NOT NULL,
  `URL_SUBMENU` varchar(100) NOT NULL,
  `SUB_MENUICON` varchar(100) NOT NULL,
  `ID_MENU_SUBMENU` int(11) unsigned NOT NULL,
  PRIMARY KEY (`ID_SUBMENU`),
  KEY `ID_MENU_SUBMENU` (`ID_MENU_SUBMENU`),
  CONSTRAINT `FK_submenu_menu` FOREIGN KEY (`ID_MENU_SUBMENU`) REFERENCES `menu` (`ID_MENU`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bd_morelac.submenu: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `submenu` DISABLE KEYS */;
/*!40000 ALTER TABLE `submenu` ENABLE KEYS */;

-- Volcando estructura para tabla bd_morelac.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `ID_USUARIO` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `USU_CORREO_ELECTRONICO` varchar(50) NOT NULL,
  `USU_CONTRASENA` varchar(50) NOT NULL,
  `USU_ESTADO` enum('ACTIVO','INACTIVO') DEFAULT 'INACTIVO',
  `PERSONA_ID_PERSONA` int(11) NOT NULL,
  `ROL_ID_ROL` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_USUARIO`),
  UNIQUE KEY `CORREO_ELECTRONICO` (`USU_CORREO_ELECTRONICO`),
  UNIQUE KEY `PERSONA_ID_PERSONA` (`PERSONA_ID_PERSONA`),
  KEY `fk_TIPO_USUARIO_PERSONA1_idx` (`PERSONA_ID_PERSONA`),
  KEY `fk_TIPO_USUARIO_ROL1_idx` (`ROL_ID_ROL`),
  CONSTRAINT `fk_TIPO_USUARIO_PERSONA1` FOREIGN KEY (`PERSONA_ID_PERSONA`) REFERENCES `persona` (`ID_PERSONA`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_TIPO_USUARIO_ROL1` FOREIGN KEY (`ROL_ID_ROL`) REFERENCES `rol` (`ID_ROL`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bd_morelac.usuario: ~15 rows (aproximadamente)
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`ID_USUARIO`, `USU_CORREO_ELECTRONICO`, `USU_CONTRASENA`, `USU_ESTADO`, `PERSONA_ID_PERSONA`, `ROL_ID_ROL`) VALUES
	(1, 'j@j.j', 'j', 'ACTIVO', 1117553549, 1),
	(3, 'c@c.co', 'caol', 'ACTIVO', 1117552597, 3),
	(4, 'luis@gmail.com', 'luis', 'ACTIVO', 17683560, 2),
	(6, 'juan@gmail.com', '1234', 'ACTIVO', 9901, 4),
	(7, 'Luna@gmail.com', 'luna', 'ACTIVO', 4, 5),
	(8, 'Pruea@fs.com', '1234', 'INACTIVO', 3, 3),
	(9, 'cadd1@gm.com', '123', 'INACTIVO', 1, 4),
	(10, 'karen@gmail.comcom', '1234', 'INACTIVO', 1117553554, 3),
	(11, 'ernesto2019@gmail.com', 'ernesto', 'INACTIVO', 1117553555, 2),
	(12, 'M@M.M', 'M', 'INACTIVO', 1117553556, 5),
	(13, 'PEREZ@p.p', 'HOY', 'ACTIVO', 1117553557, 5),
	(14, 'a@a.com', 'NADAL', 'ACTIVO', 1117553558, 5),
	(15, 'da@da.da', 'caol9901', 'ACTIVO', 1117553559, 5),
	(16, 'cr7@cr7@.com', 'cr7', 'INACTIVO', 1117553560, 3),
	(17, 'kd@g.com', 'k', 'INACTIVO', 1117553561, 5);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

-- Volcando estructura para procedimiento bd_morelac.CONST_GERENTES
DELIMITER //
CREATE DEFINER=`user_morelac`@`%` PROCEDURE `CONST_GERENTES`()
BEGIN
SELECT CONCAT (PER_NOMBRE1," ", PER_APELLIDO1) AS NOMBRET,ID_PERSONA AS IDT, ROL_NOMBRE AS ROLT,USU_ESTADO AS ESTADO FROM persona
INNER JOIN usuario ON (persona.ID_PERSONA = usuario.PERSONA_ID_PERSONA)
INNER JOIN rol ON (usuario.ROL_ID_ROL= rol.ID_ROL)
WHERE rol.ID_ROL=2 ;
END//
DELIMITER ;

-- Volcando estructura para procedimiento bd_morelac.CONS_CLIENTE_ALL
DELIMITER //
CREATE DEFINER=`user_morelac`@`%` PROCEDURE `CONS_CLIENTE_ALL`()
BEGIN
SELECT ID_PERSONA AS ID, CONCAT (PER_NOMBRE1," ", PER_APELLIDO1) AS NOMBRE, USU_ESTADO AS ESTADO FROM persona
INNER JOIN usuario ON (persona.ID_PERSONA = usuario.PERSONA_ID_PERSONA)
INNER JOIN rol ON (usuario.ROL_ID_ROL= rol.ID_ROL)
WHERE rol.ID_ROL=4 ;
END//
DELIMITER ;

-- Volcando estructura para procedimiento bd_morelac.CONS_CLIENTE_ID
DELIMITER //
CREATE DEFINER=`user_morelac`@`%` PROCEDURE `CONS_CLIENTE_ID`(
	IN `IDCLI` INT




)
BEGIN
SELECT ID_PERSONA AS ID, PER_CEDULA, PER_NOMBRE1,PER_NOMBRE2,PER_APELLIDO1, PER_APELLIDO2,PER_CELULAR,
PER_DIRECCION,PER_DETALLES,USU_ESTADO AS ESTADO,PER_FOTO FROM persona
INNER JOIN usuario ON (persona.ID_PERSONA = usuario.PERSONA_ID_PERSONA)
INNER JOIN rol ON (usuario.ROL_ID_ROL= rol.ID_ROL)
WHERE rol.ID_ROL='4' AND ID_PERSONA = IDCLI;
END//
DELIMITER ;

-- Volcando estructura para procedimiento bd_morelac.CONS_CLIENTE_REPORTE
DELIMITER //
CREATE DEFINER=`user_morelac`@`%` PROCEDURE `CONS_CLIENTE_REPORTE`()
BEGIN
SELECT ID_PERSONA,PER_NOMBRE1,PER_NOMBRE2,PER_APELLIDO1,PER_APELLIDO2,PER_DIRECCION, USU_ESTADO AS ESTADO FROM persona
INNER JOIN usuario ON (persona.ID_PERSONA = usuario.PERSONA_ID_PERSONA)
INNER JOIN rol ON (usuario.ROL_ID_ROL= rol.ID_ROL)
WHERE rol.ID_ROL=4 AND usuario.USU_ESTADO='ACTIVO' ;
END//
DELIMITER ;

-- Volcando estructura para procedimiento bd_morelac.CONS_EMPRESA
DELIMITER //
CREATE DEFINER=`user_morelac`@`%` PROCEDURE `CONS_EMPRESA`()
BEGIN
SELECT ID_EMPRESA,EMP_NOMBRE,EMP_DIRECCION,EMP_CORREO,EMP_TELEFONO,EMP_DUENO,EMP_MISION,EMP_VISION,EMP_FOTO 
FROM EMPRESA ;
END//
DELIMITER ;

-- Volcando estructura para procedimiento bd_morelac.CONS_FINCA
DELIMITER //
CREATE DEFINER=`user_morelac`@`%` PROCEDURE `CONS_FINCA`()
BEGIN
	SELECT ID_FINCA,FIN_NOMBRE,FIN_UBICACION,FIN_DIMENSION,PERSONA_ID_PERSONA FROM finca;
END//
DELIMITER ;

-- Volcando estructura para procedimiento bd_morelac.CONS_GERENTE_ALL
DELIMITER //
CREATE DEFINER=`user_morelac`@`%` PROCEDURE `CONS_GERENTE_ALL`()
BEGIN
SELECT ID_PERSONA AS ID, CONCAT (PER_NOMBRE1," ", PER_APELLIDO1) AS NOMBRE, USU_ESTADO AS ESTADO FROM persona
INNER JOIN usuario ON (persona.ID_PERSONA = usuario.PERSONA_ID_PERSONA)
INNER JOIN rol ON (usuario.ROL_ID_ROL= rol.ID_ROL)
WHERE rol.ID_ROL=2 ;
END//
DELIMITER ;

-- Volcando estructura para procedimiento bd_morelac.CONS_GERENTE_ID
DELIMITER //
CREATE DEFINER=`user_morelac`@`%` PROCEDURE `CONS_GERENTE_ID`(
	IN `IDGER` INT

)
BEGIN
SELECT ID_PERSONA AS ID, PER_CEDULA, PER_NOMBRE1,PER_NOMBRE2,PER_APELLIDO1, PER_APELLIDO2,PER_CELULAR,
PER_DIRECCION,PER_DETALLES,USU_ESTADO AS ESTADO,PER_FOTO FROM persona
INNER JOIN usuario ON (persona.ID_PERSONA = usuario.PERSONA_ID_PERSONA)
INNER JOIN rol ON (usuario.ROL_ID_ROL= rol.ID_ROL)
WHERE rol.ID_ROL='2' AND ID_PERSONA = IDGER;
END//
DELIMITER ;

-- Volcando estructura para procedimiento bd_morelac.CONS_MENU
DELIMITER //
CREATE DEFINER=`user_morelac`@`%` PROCEDURE `CONS_MENU`(
	IN `CORREO` VARCHAR(50)
)
BEGIN
SELECT MENU_NOMBRE,MENU_URL,MENU_ICON,MENU_ORDEN FROM menu
INNER JOIN permiso ON (menu.PERMISO_ID_PERMISO = permiso.ID_PERMISO)
INNER JOIN rol ON ( permiso.ROL_ID_ROL = rol.ID_ROL )
INNER JOIN usuario ON(rol.ID_ROL= usuario.ROL_ID_ROL)
WHERE usuario.USU_CORREO_ELECTRONICO= CORREO ORDER BY MENU_ORDEN ASC;
END//
DELIMITER ;

-- Volcando estructura para procedimiento bd_morelac.CONS_PERSONA
DELIMITER //
CREATE DEFINER=`user_morelac`@`%` PROCEDURE `CONS_PERSONA`(
	IN `Correo` VARCHAR(100)
)
BEGIN
SELECT PER_NOMBRE1,PER_NOMBRE2,PER_APELLIDO1,PER_APELLIDO2, PER_SEXO,PER_FOTO FROM persona
INNER JOIN usuario ON (persona.ID_PERSONA = usuario.PERSONA_ID_PERSONA)
WHERE usuario.USU_CORREO_ELECTRONICO=Correo ;
END//
DELIMITER ;

-- Volcando estructura para procedimiento bd_morelac.CONS_PRODUCTO
DELIMITER //
CREATE DEFINER=`user_morelac`@`%` PROCEDURE `CONS_PRODUCTO`(
	IN `ID` INT
)
BEGIN
SELECT ID_PRODUCTOS, PRO_NOMBRE,PRO_CANTIDAD,PRO_PRECIO FROM productos
WHERE productos.ID_PRODUCTOS = ID;
END//
DELIMITER ;

-- Volcando estructura para procedimiento bd_morelac.CONS_PROVEEDOR_ALL
DELIMITER //
CREATE DEFINER=`user_morelac`@`%` PROCEDURE `CONS_PROVEEDOR_ALL`()
BEGIN
SELECT ID_PERSONA AS ID, CONCAT (PER_NOMBRE1," ", PER_APELLIDO1) AS NOMBRE, USU_ESTADO AS ESTADO FROM persona
INNER JOIN usuario ON (persona.ID_PERSONA = usuario.PERSONA_ID_PERSONA)
INNER JOIN rol ON (usuario.ROL_ID_ROL= rol.ID_ROL)
WHERE rol.ID_ROL=5 ;
END//
DELIMITER ;

-- Volcando estructura para procedimiento bd_morelac.CONS_PROVEEDOR_ID
DELIMITER //
CREATE DEFINER=`user_morelac`@`%` PROCEDURE `CONS_PROVEEDOR_ID`(
	IN `IDPRO` INT






)
BEGIN
SELECT ID_PERSONA AS ID, PER_CEDULA AS CEDULA, PER_NOMBRE1,PER_NOMBRE2,PER_APELLIDO1, PER_APELLIDO2,PER_CELULAR AS CELULAR,
PER_DIRECCION AS DIRECCION,PER_DETALLES AS DETALLE,FIN_NOMBRE,FIN_UBICACION ,FIN_DIMENSION,CANT_LECHE,LEC_FECHA,USU_ESTADO AS ESTADO,USU_CORREO_ELECTRONICO AS CORREO,
USU_CONTRASENA AS CONTRASENA,PER_FOTO AS FOTO FROM persona
INNER JOIN usuario ON (persona.ID_PERSONA = usuario.PERSONA_ID_PERSONA)
INNER JOIN rol ON (usuario.ROL_ID_ROL= rol.ID_ROL)
INNER JOIN finca ON (persona.ID_PERSONA=finca.PERSONA_ID_PERSONA)
INNER JOIN leche ON (finca.ID_FINCA = leche.ID_FINCA_ID_LECHE)
WHERE rol.ID_ROL='5' AND ID_PERSONA = IDPRO;
END//
DELIMITER ;

-- Volcando estructura para procedimiento bd_morelac.CONS_PROVEEDOR_REPORTE
DELIMITER //
CREATE DEFINER=`user_morelac`@`%` PROCEDURE `CONS_PROVEEDOR_REPORTE`()
BEGIN
SELECT ID_PERSONA,PER_NOMBRE1,PER_NOMBRE2,PER_APELLIDO1,PER_APELLIDO2,PER_DIRECCION, USU_ESTADO AS ESTADO FROM persona
INNER JOIN usuario ON (persona.ID_PERSONA = usuario.PERSONA_ID_PERSONA)
INNER JOIN rol ON (usuario.ROL_ID_ROL= rol.ID_ROL)
WHERE rol.ID_ROL=5 AND usuario.USU_ESTADO='ACTIVO' ;
END//
DELIMITER ;

-- Volcando estructura para procedimiento bd_morelac.CONS_RESULDADOS_PRUEBA
DELIMITER //
CREATE DEFINER=`user_morelac`@`%` PROCEDURE `CONS_RESULDADOS_PRUEBA`()
BEGIN
SELECT NOMBRE_PRUEBA,DAT_NOMBRE,RES_TOTAL_PRUEBAS,CANTIDAD_PRUEBAS, CONCAT (PER_NOMBRE1," " , PER_APELLIDO1) AS NOMBRE,ROL_NOMBRE FROM resultados_pruebas
INNER JOIN persona ON (resultados_pruebas.PERSONA_ID_PERSONA=persona.ID_PERSONA)
INNER JOIN aux_prueba ON (resultados_pruebas.ID_RESULTADOS_PRUEBAS=aux_prueba.ID_RESULTADOS_PRUEBAS)
INNER JOIN datos ON(aux_prueba.DATOS_ID_DATOS=datos.ID_DATOS)
INNER JOIN usuario ON ( persona.ID_PERSONA=usuario.PERSONA_ID_PERSONA)
INNER JOIN rol ON (usuario.ROL_ID_ROL=rol.ID_ROL);
END//
DELIMITER ;

-- Volcando estructura para procedimiento bd_morelac.CONS_ROL
DELIMITER //
CREATE DEFINER=`user_morelac`@`%` PROCEDURE `CONS_ROL`(
	IN `CORREO` VARCHAR(100)
)
BEGIN
	SELECT ID_ROL, ROL_NOMBRE FROM rol
	INNER JOIN usuario ON rol.ID_ROL= usuario.ROL_ID_ROL
	WHERE usuario.USU_CORREO_ELECTRONICO= CORREO;
END//
DELIMITER ;

-- Volcando estructura para procedimiento bd_morelac.CONS_ROL_ALL
DELIMITER //
CREATE DEFINER=`user_morelac`@`%` PROCEDURE `CONS_ROL_ALL`()
BEGIN
	SELECT ID_ROL AS ID, ROL_NOMBRE AS NOMBRE FROM rol;
END//
DELIMITER ;

-- Volcando estructura para procedimiento bd_morelac.CONS_SUPERVISOR_ALL
DELIMITER //
CREATE DEFINER=`user_morelac`@`%` PROCEDURE `CONS_SUPERVISOR_ALL`()
BEGIN
SELECT ID_PERSONA AS ID, CONCAT (PER_NOMBRE1," ", PER_APELLIDO1) AS NOMBRE, USU_ESTADO AS ESTADO FROM persona
INNER JOIN usuario ON (persona.ID_PERSONA = usuario.PERSONA_ID_PERSONA)
INNER JOIN rol ON (usuario.ROL_ID_ROL= rol.ID_ROL)
WHERE rol.ID_ROL=3 ;
END//
DELIMITER ;

-- Volcando estructura para procedimiento bd_morelac.CONS_SUPERVISOR_ID
DELIMITER //
CREATE DEFINER=`user_morelac`@`%` PROCEDURE `CONS_SUPERVISOR_ID`(
	IN `IDSUP` INT

)
BEGIN
SELECT ID_PERSONA AS ID, PER_CEDULA, PER_NOMBRE1,PER_NOMBRE2,PER_APELLIDO1, PER_APELLIDO2,PER_CELULAR,
PER_DIRECCION,PER_DETALLES,USU_ESTADO AS ESTADO,PER_FOTO FROM persona
INNER JOIN usuario ON (persona.ID_PERSONA = usuario.PERSONA_ID_PERSONA)
INNER JOIN rol ON (usuario.ROL_ID_ROL= rol.ID_ROL)
WHERE rol.ID_ROL='3' AND ID_PERSONA = IDSUP;
END//
DELIMITER ;

-- Volcando estructura para procedimiento bd_morelac.CONS_TODOS_CLIENTES
DELIMITER //
CREATE DEFINER=`user_morelac`@`%` PROCEDURE `CONS_TODOS_CLIENTES`()
BEGIN
SELECT ID_PERSONA AS ID, CONCAT (PER_NOMBRE1," ", PER_APELLIDO1) AS NOMBRE, USU_ESTADO AS ESTADO FROM persona
INNER JOIN usuario ON (persona.ID_PERSONA = usuario.PERSONA_ID_PERSONA)
INNER JOIN rol ON (usuario.ROL_ID_ROL= rol.ID_ROL)
WHERE rol.ID_ROL=4 ;
END//
DELIMITER ;

-- Volcando estructura para procedimiento bd_morelac.CONS_TODOS_GERENTES
DELIMITER //
CREATE DEFINER=`user_morelac`@`%` PROCEDURE `CONS_TODOS_GERENTES`()
BEGIN
SELECT ID_PERSONA AS ID, CONCAT (PER_NOMBRE1," ", PER_APELLIDO1) AS NOMBRE, USU_ESTADO AS ESTADO FROM persona
INNER JOIN usuario ON (persona.ID_PERSONA = usuario.PERSONA_ID_PERSONA)
INNER JOIN rol ON (usuario.ROL_ID_ROL= rol.ID_ROL)
WHERE rol.ID_ROL=2 ;
END//
DELIMITER ;

-- Volcando estructura para procedimiento bd_morelac.CONS_TODOS_PROVEEDORES
DELIMITER //
CREATE DEFINER=`user_morelac`@`%` PROCEDURE `CONS_TODOS_PROVEEDORES`()
BEGIN
SELECT ID_PERSONA AS ID, CONCAT (PER_NOMBRE1," ", PER_APELLIDO1) AS NOMBRE, USU_ESTADO AS ESTADO,FIN_NOMBRE,CANT_LECHE,LEC_FECHA FROM persona
INNER JOIN usuario ON (persona.ID_PERSONA = usuario.PERSONA_ID_PERSONA)
INNER JOIN rol ON (usuario.ROL_ID_ROL= rol.ID_ROL)
INNER JOIN finca ON (persona.ID_PERSONA=finca.PERSONA_ID_PERSONA)
INNER JOIN leche ON (finca.ID_FINCA = leche.ID_FINCA_ID_LECHE)
WHERE rol.ID_ROL=5 ;
END//
DELIMITER ;

-- Volcando estructura para procedimiento bd_morelac.CONS_TODOS_SUPERVISORES
DELIMITER //
CREATE DEFINER=`user_morelac`@`%` PROCEDURE `CONS_TODOS_SUPERVISORES`()
BEGIN
SELECT ID_PERSONA AS IDT, CONCAT (PER_NOMBRE1," ", PER_APELLIDO1) AS NOMBRET, ROL_NOMBRE AS ROLT,USU_ESTADO AS ESTADO FROM persona
INNER JOIN usuario ON (persona.ID_PERSONA = usuario.PERSONA_ID_PERSONA)
INNER JOIN rol ON (usuario.ROL_ID_ROL= rol.ID_ROL)
WHERE rol.ID_ROL='3' ;
END//
DELIMITER ;

-- Volcando estructura para procedimiento bd_morelac.CONS_USUARIO
DELIMITER //
CREATE DEFINER=`user_morelac`@`%` PROCEDURE `CONS_USUARIO`(
	IN `CORREO` VARCHAR(50),
	IN `CONTRASENA` VARCHAR(50)
)
BEGIN	
	IF ((SELECT COUNT(USU_CORREO_ELECTRONICO) FROM usuario WHERE CORREO = USU_CORREO_ELECTRONICO)=0) THEN
		CALL SHOW_MENSAJE('1', '¡Error! Su usuario o contraseña son incorrectos.');
	ELSEIF ((SELECT COUNT(USU_CORREO_ELECTRONICO) FROM usuario WHERE CORREO = USU_CORREO_ELECTRONICO AND USU_CONTRASENA = CONTRASENA)=0) THEN
		CALL SHOW_MENSAJE('1', '¡Error! Su usuario o contraseña son incorrectos.');
	ELSEIF ((SELECT COUNT(USU_CORREO_ELECTRONICO) FROM usuario WHERE CORREO = USU_CORREO_ELECTRONICO AND USU_ESTADO = 'ACTIVO')=0) THEN
		CALL SHOW_MENSAJE('1', '¡Error! Su cuenta se encuentra inactiva.');
	ELSE
		CALL SHOW_MENSAJE('3', 'Acceso permitido.');
	END IF;
	
END//
DELIMITER ;

-- Volcando estructura para procedimiento bd_morelac.COUNT_USER
DELIMITER //
CREATE DEFINER=`user_morelac`@`%` PROCEDURE `COUNT_USER`()
BEGIN
SELECT  COUNT(usuario.USU_CORREO_ELECTRONICO) FROM usuario WHERE usuario.USU_ESTADO='ACTIVO';
END//
DELIMITER ;

-- Volcando estructura para procedimiento bd_morelac.INSE_EMPRESA
DELIMITER //
CREATE DEFINER=`user_morelac`@`%` PROCEDURE `INSE_EMPRESA`(
	IN `NOM` VARCHAR(45),
	IN `DIRE` VARCHAR(160),
	IN `CORREO` VARCHAR(160),
	IN `TELE` VARCHAR(10),
	IN `DUENO` VARCHAR(50),
	IN `MISION` VARCHAR(500),
	IN `VISION` VARCHAR(500),
	IN `FOTO` VARCHAR(500)

)
BEGIN

	DECLARE ID_EMP INT;
	
	IF ((SELECT COUNT(empresa.ID_EMPRESA) FROM empresa)=0) THEN

	INSERT INTO empresa (ID_EMPRESA,EMP_NOMBRE,EMP_DIRECCION,EMP_CORREO,EMP_TELEFONO,EMP_DUENO,EMP_MISION,EMP_VISION,EMP_FOTO)
   VALUES (1,NOM,DIRE,CORREO,TELE,DUENO,MISION,VISION,FOTO);

  ELSE
	
	SET ID_EMP = (SELECT MAX(empresa.ID_EMPRESA ) FROM empresa)+1;
   
	INSERT INTO empresa (ID_EMPRESA,EMP_NOMBRE,EMP_DIRECCION,EMP_CORREO,EMP_TELEFONO,EMP_DUENO,EMP_MISION,EMP_VISION,EMP_FOTO)
   VALUES (NOM,DIRE,CORREO,TELE,DUENO,MISION,VISION,FOTO);
 
 END IF;

END//
DELIMITER ;

-- Volcando estructura para procedimiento bd_morelac.INSE_FINCA
DELIMITER //
CREATE DEFINER=`user_morelac`@`%` PROCEDURE `INSE_FINCA`(
	IN `F_NOMBRE` VARCHAR(45),
	IN `F_UBICACION` VARCHAR(45),
	IN `F_DIMENSION` VARCHAR(45),
	IN `IDPERSONA` INT





)
BEGIN

	DECLARE ID_FIN INT;
	
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	CALL SHOW_MENSAJE('1', '¡Ha ocurrido un error en el registro de los datos!');
	
 	START TRANSACTION;
		IF ((SELECT COUNT(finca.ID_FINCA) FROM finca)=0) THEN
			SET ID_FIN = 1;
		ELSE
			SET ID_FIN = (SELECT MAX(finca.ID_FINCA ) FROM finca)+1;
		END IF;
	
		INSERT INTO finca (ID_FINCA, FIN_NOMBRE,FIN_UBICACION, FIN_DIMENSION,PERSONA_ID_PERSONA)
   	VALUES (ID_FIN,F_NOMBRE,F_UBICACION,F_DIMENSION,IDPERSONA);
   
   	CALL SHOW_MENSAJE('3', 'Datos ingresados correctamente!');	
	COMMIT;
END//
DELIMITER ;

-- Volcando estructura para procedimiento bd_morelac.INSE_LECHE
DELIMITER //
CREATE DEFINER=`user_morelac`@`%` PROCEDURE `INSE_LECHE`(
	IN `CANT` INT,
	IN `FECHA` DATE,
	IN `IDFINCA` INT



)
BEGIN
	DECLARE ID_LEC INT;

	
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	CALL SHOW_MENSAJE('1', '¡Ha ocurrido un error en el registro de los datos!');
   START TRANSACTION;
	
	IF ((SELECT COUNT(leche.ID_LECHE) FROM leche)=0) THEN

	INSERT INTO leche (ID_LECHE, CANT_LECHE,LEC_FECHA, ID_FINCA_ID_LECHE)
   VALUES (1,CANT,FECHA,IDFINCA);
	CALL SHOW_MENSAJE('3', 'Datos ingresados correctamente. CASO 1');	
  ELSE
	
	SET ID_LEC = (SELECT MAX(leche.ID_LECHE ) FROM leche)+1;
   
	INSERT INTO leche (ID_LECHE, CANT_LECHE,LEC_FECHA, ID_FINCA_ID_LECHE)
   VALUES (ID_LEC, CANT,FECHA,IDFINCA);
	CALL SHOW_MENSAJE('3', 'Datos ingresados correctamente. CASO 2');	
 END IF;
END//
DELIMITER ;

-- Volcando estructura para procedimiento bd_morelac.INSE_PERSONA
DELIMITER //
CREATE DEFINER=`user_morelac`@`%` PROCEDURE `INSE_PERSONA`(
	IN `CEDULA` INT,
	IN `NOM1` VARCHAR(50),
	IN `NOM2` VARCHAR(50),
	IN `APE1` VARCHAR(50),
	IN `APE2` VARCHAR(50),
	IN `CELU` INT,
	IN `FECHA` VARCHAR(50),
	IN `DIRE` VARCHAR(50),
	IN `DETALLE` VARCHAR(255),
	IN `SEXO` ENUM('M','F'),
	IN `CORREO` VARCHAR(200)
,
	IN `CONTRASENA` VARCHAR(50)
,
	IN `ROLL` INT

)
BEGIN
	
	DECLARE ID_PE INT;
	
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	CALL SHOW_MENSAJE('1', '¡Ha ocurrido un error en el registro de los datos!');
 	
	DECLARE EXIT HANDLER FOR 1062
	CALL SHOW_MENSAJE('1', '¡Error! La persona ya se encuentra registrada.');
		
 	START TRANSACTION;
		IF  ((SELECT COUNT(persona.ID_PERSONA) FROM persona) = 0) THEN
			SET ID_PE = 1;
		ELSE		
			SET ID_PE = (SELECT MAX(persona.ID_PERSONA) FROM persona)+1;
		END IF;
		
		IF ((SELECT COUNT(ID_USUARIO) FROM usuario WHERE usuario.USU_CORREO_ELECTRONICO = CORREO)=0) THEN
			INSERT INTO persona (ID_PERSONA,PER_CEDULA, PER_NOMBRE1, PER_NOMBRE2, PER_APELLIDO1, PER_APELLIDO2, PER_CELULAR, PER_NACIMIENTO, PER_DIRECCION,PER_DETALLES, PER_SEXO)
			VALUES (ID_PE,CEDULA,NOM1,NOM2,APE1,APE2,CELU,FECHA,DIRE,DETALLE,SEXO );
			CALL INSE_USUARIO(CORREO, CONTRASENA, ID_PE,ROLL);
		ELSE
			CALL SHOW_MENSAJE('1', '¡Error! El correo digitado ya se encuentra registrado.');
		END IF;
		
		CALL SHOW_MENSAJE('3', 'Datos ingresados correctamente. Los revisaremos para poder completar su registro y se lo notificaremos a su correo.');	
	COMMIT;
END//
DELIMITER ;

-- Volcando estructura para procedimiento bd_morelac.INSE_PRODUCTO
DELIMITER //
CREATE DEFINER=`user_morelac`@`%` PROCEDURE `INSE_PRODUCTO`(
	IN `NOMBRE` VARCHAR(50),
	IN `CANTIDAD` INT,
	IN `PRECIO` DOUBLE
)
BEGIN
DECLARE ID_PRO INT;
	
	IF ((SELECT COUNT(productos.ID_PRODUCTOS) FROM productos)=0) THEN

	INSERT INTO productos (ID_PRODUCTOS, PRO_NOMBRE,PRO_CANTIDAD, PRO_PRECIO)
   VALUES (1,NOMBRE,CANTIDAD,PRECIO);

  ELSE
	
	SET ID_PRO = (SELECT MAX(productos.ID_PRODUCTOS ) FROM productos)+1;
   
	INSERT INTO productos(ID_PRODUCTOS, PRO_NOMBRE,PRO_CANTIDAD, PRO_PRECIO)
   VALUES (ID_PRO,NOMBRE,CANTIDAD,PRECIO);
	
	END IF;
END//
DELIMITER ;

-- Volcando estructura para procedimiento bd_morelac.INSE_PROVEEDOR
DELIMITER //
CREATE DEFINER=`user_morelac`@`%` PROCEDURE `INSE_PROVEEDOR`(
	IN `CEDULA` INT(10),
	IN `NOM1` VARCHAR(50),
	IN `NOM2` VARCHAR(50),
	IN `APE1` VARCHAR(50),
	IN `APE2` VARCHAR(50),
	IN `CELU` INT(10),
	IN `FECHAN` DATE,
	IN `DIRE` VARCHAR(50),
	IN `DETALLES` VARCHAR(50),
	IN `SEXO` ENUM('M','F'),
	IN `CORREO` VARCHAR(50),
	IN `CONTRASENA` VARCHAR(50),
	IN `ROLL` INT,
	IN `F_NOMBRE` VARCHAR(50),
	IN `F_UBICACION` VARCHAR(50),
	IN `F_DIMENCION` VARCHAR(50),
	IN `CANT` FLOAT,
	IN `FECHA` DATE
)
BEGIN
	DECLARE ID_PR INT;
   DECLARE ID_FINCA_BUSCADA INT;
	
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	CALL SHOW_MENSAJE('1', '¡Ha ocurrido un error en el registro de los datos!');
 	
	DECLARE EXIT HANDLER FOR 1062
	CALL SHOW_MENSAJE('1', '¡Error! El proveedor ya se encuentra registrado.');
		
 	START TRANSACTION;
 	
		IF  ((SELECT COUNT(persona.ID_PERSONA) FROM persona) = 0) THEN
			SET ID_PR = 1;
		ELSE		
			SET ID_PR = (SELECT MAX(persona.ID_PERSONA) FROM persona)+1;
		END IF;
		
		IF ((SELECT COUNT(ID_USUARIO) FROM usuario WHERE usuario.USU_CORREO_ELECTRONICO = CORREO)=0) THEN
			INSERT INTO persona (ID_PERSONA,PER_CEDULA, PER_NOMBRE1, PER_NOMBRE2, PER_APELLIDO1, PER_APELLIDO2, PER_CELULAR, PER_NACIMIENTO, PER_DIRECCION,PER_DETALLES, PER_SEXO)
			VALUES (ID_PR,CEDULA,NOM1,NOM2,APE1,APE2,CELU,FECHAN,DIRE,DETALLE,SEXO );
			CALL INSE_USUARIO(CORREO, CONTRASENA, ID_PR,ROLL);
			CALL INSE_FINCA(F_NOMBRE, F_UBICACION, F_DIMENSION, ID_PR);
			SET ID_FINCA_BUSCADA = (SELECT ID_FINCA FROM finca WHERE finca.FIN_NOMBRE=F_NOMBRE); 
			CALL INSE_LECHE(CANT, FECHA, ID_FINCA_BUSCADA);
		ELSE
			CALL SHOW_MENSAJE('1', '¡Error! El correo digitado ya se encuentra registrado.');
		END IF;
		
		CALL SHOW_MENSAJE('3', 'Datos ingresados correctamente.');	
	COMMIT;
END//
DELIMITER ;

-- Volcando estructura para procedimiento bd_morelac.INSE_ROL
DELIMITER //
CREATE DEFINER=`user_morelac`@`%` PROCEDURE `INSE_ROL`(
	IN `NOMBRE` VARCHAR(50)
)
BEGIN

	DECLARE ID_RO INT;
	
	IF  ((SELECT COUNT(rol.ID_ROL) FROM rol) = 0) THEN
		
		INSERT INTO rol (ID_ROL, ROL_NOMBRE)
		VALUES (1, NOMBRE);
		
	ELSE		
	
		SET ID_RO = (SELECT MAX(rol.ID_ROL) FROM rol)+1;
		
		INSERT INTO rol (ID_ROL, ROL_NOMBRE)
		VALUES (ID_RO, NOMBRE);
		
	END IF;
END//
DELIMITER ;

-- Volcando estructura para procedimiento bd_morelac.INSE_SUPERVISOR
DELIMITER //
CREATE DEFINER=`user_morelac`@`%` PROCEDURE `INSE_SUPERVISOR`()
BEGIN

	DECLARE ID_PERSO INT;
	DECLARE ID_USUA INT;
	
   DECLARE EXIT HANDLER FOR SQLEXCEPTION
	CALL SHOW_MENSAJE('1', '¡Ha ocurrido un error en el registro de los datos!');
 	
	DECLARE EXIT HANDLER FOR 1062
	CALL SHOW_MENSAJE('1', '¡Error! El supervisor ya se encuentra registrada.');
		
 	START TRANSACTION;
	
	IF ((SELECT COUNT(persona.ID_PERSONA) FROM persona )=0) AND ((SELECT CONNT(usuario.ID_USUARIO) FROM usuario)=0) THEN
 
	INSERT INTO persona (ID_PERSONA,PER_NOMBRE1,PER_NOMBRE2,PER_APELLIDO1,PER_APELLIDO2,PER_CELULAR,PER_FECHA_NACIMIENTO,PER_DIRRECCION,PER_DETALLES,PER_SEXO)
   VALUES (1,NOM1,NOM2,APE1,APE2,CELU,FECHA,DIRE,DETALLE,SEXO);
	
	INSERT INTO usuario(ID_USUARIO, USU_CORREO_ELECTRONICO, USU_CONTRASENA)
	VALUES (1,CORREO,CONTRASENA);
	
  ELSE
	
	SET ID_PERSO = (SELECT MAX(persona.ID_PERSONA  ) FROM persona)+1;
	SET ID_USUA = (SELECT MAX(usuario.ID_USUARIO ) FROM usuario)+1;
   
	INSERT INTO persona (ID_PERSONA,PER_NOMBRE1,PER_NOMBRE2,PER_APELLIDO1,PER_APELLIDO2,PER_CELULAR,PER_FECHA_NACIMIENTO,PER_DIRRECCION,PER_DETALLES,PER_SEXO)
   VALUES (NOM1,NOM2,APE1,APE2,CELU,FECHA,DIRE,DETALLE,SEXO);
   
	INSERT INTO usuario(ID_USUARIO, USU_CORREO_ELECTRONICO, USU_CONTRASENA)
	VALUES (CORREO,CONTRASENA);
   
	CALL SHOW_MENSAJE('3', 'Datos ingresados correctamente. Los revisaremos para poder completar su registro y se lo notificaremos a su correo.');	
	
 END IF;

END//
DELIMITER ;

-- Volcando estructura para procedimiento bd_morelac.INSE_USUARIO
DELIMITER //
CREATE DEFINER=`user_morelac`@`%` PROCEDURE `INSE_USUARIO`(
	IN `CORREO` VARCHAR(50),
	IN `CONTRA` VARCHAR(50),
	IN `IDPERSONA` INT




,
	IN `ROLL` INT
)
BEGIN

	DECLARE ID_US INT;	
	
	IF  ((SELECT COUNT(usuario.ID_USUARIO) FROM usuario) = 0) THEN
		SET ID_US = (SELECT MAX(usuario.ID_USUARIO) FROM usuario)+1;
	ELSE		
		SET ID_US = (SELECT MAX(usuario.ID_USUARIO) FROM usuario)+1;
	END IF;
		
	INSERT INTO usuario (ID_USUARIO, USU_CORREO_ELECTRONICO , USU_CONTRASENA, PERSONA_ID_PERSONA,ROL_ID_ROL)
	VALUES (ID_US, CORREO, CONTRA, IDPERSONA,ROLL);
	
END//
DELIMITER ;

-- Volcando estructura para procedimiento bd_morelac.SHOW_MENSAJE
DELIMITER //
CREATE DEFINER=`user_morelac`@`%` PROCEDURE `SHOW_MENSAJE`(
	IN `TIPO` VARCHAR(1),
	IN `MENSAJE` VARCHAR(1000)
)
BEGIN
	SELECT TIPO AS 'TIPO', MENSAJE AS 'MENSAJE';
END//
DELIMITER ;

-- Volcando estructura para procedimiento bd_morelac.UPDA_EMPRESA
DELIMITER //
CREATE DEFINER=`user_morelac`@`%` PROCEDURE `UPDA_EMPRESA`(
	IN `ID` INT(11),
	IN `NOM` VARCHAR(50),
	IN `DIR` VARCHAR(160),
	IN `COR` VARCHAR(160),
	IN `TEL` VARCHAR(10),
	IN `DUE` VARCHAR(500),
	IN `MIS` VARCHAR(500),
	IN `VIS` VARCHAR(500)







)
BEGIN

	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	
	CALL SHOW_MENSAJE('1', '¡Ha ocurrido un error en la modificacion de los datos!');
	
	START TRANSACTION;

	UPDATE empresa 
	SET EMP_NOMBRE = NOM,
	EMP_DIRECCION= DIR,
	EMP_CORREO=COR,
	EMP_TELEFONO=TEL,	
	EMP_DUENO=DUE,
	EMP_MISION=MIS,
	EMP_VISION=VIS
	WHERE empresa.ID_EMPRESA=ID;
	
	CALL SHOW_MENSAJE('3','¡Sus datos fueron modificados corectamente!');
	COMMIT;
END//
DELIMITER ;

-- Volcando estructura para procedimiento bd_morelac.UPDA_FINCA
DELIMITER //
CREATE DEFINER=`user_morelac`@`%` PROCEDURE `UPDA_FINCA`(
	IN `ID` INT
,
	IN `NOMBRE` VARCHAR(50),
	IN `UBICACION` VARCHAR(50),
	IN `DIME` VARCHAR(50)
)
BEGIN
   DECLARE ID_FI INT;
   DECLARE EXIT HANDLER FOR SQLEXCEPTION

	CALL SHOW_MENSAJE('1', '¡Ha ocurrido un error en la modificacion de los datos FINCA!');
	
	START TRANSACTION;
	SET ID_FI = (SELECT ID_FINCA FROM finca WHERE finca.PERSONA_ID_PERSONA=ID);
	UPDATE finca
	SET FIN_NOMBRE = NOMBRE,
	FIN_UBICACION = UBICACION,
	FIN_DIMENSION = DIME
	WHERE finca.ID_FINCA = ID_FI;
	
	CALL SHOW_MENSAJE('3','¡Sus datos fueron modificados corectamente FINCA!');
	COMMIT;
END//
DELIMITER ;

-- Volcando estructura para procedimiento bd_morelac.UPDA_FOTO_EMPRESA
DELIMITER //
CREATE DEFINER=`user_morelac`@`%` PROCEDURE `UPDA_FOTO_EMPRESA`(
	IN `ID` INT,
	IN `FOTO` VARCHAR(250)

)
BEGIN
	
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	
	CALL SHOW_MENSAJE('1', '¡Ha ocurrido un error en la modificacion de los datos!');
	
	START TRANSACTION;

	UPDATE empresa 
	SET EMP_FOTO = FOTO
	WHERE empresa.ID_EMPRESA=ID;
		
	CALL SHOW_MENSAJE('3','¡Sus datos fueron modificados corectamente!');
	COMMIT;
END//
DELIMITER ;

-- Volcando estructura para procedimiento bd_morelac.UPDA_LECHE
DELIMITER //
CREATE DEFINER=`user_morelac`@`%` PROCEDURE `UPDA_LECHE`(
	IN `ID` INT,
	IN `CANT` FLOAT,
	IN `FECHA` DATE
)
BEGIN
	DECLARE ID_FIN_LECHE INT;
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	
	CALL SHOW_MENSAJE('1', '¡Ha ocurrido un error en la modificacion de los datos LECHE!');
	START TRANSACTION;
	
	SET	ID_FIN_LECHE = (SELECT ID_FINCA FROM finca WHERE finca.PERSONA_ID_PERSONA=ID);

	UPDATE leche
	SET CANT_LECHE = CANT,
	LEC_FECHA = FECHA
   WHERE leche.ID_LECHE = ID_FIN_LECHE;

	CALL SHOW_MENSAJE('3','¡Sus datos fueron modificados corectamente LECHE!');
	COMMIT;
END//
DELIMITER ;

-- Volcando estructura para procedimiento bd_morelac.UPDA_PERSONA
DELIMITER //
CREATE DEFINER=`user_morelac`@`%` PROCEDURE `UPDA_PERSONA`(
	IN `ID` INT,
	IN `CEDU` INT,
	IN `NOM1` VARCHAR(50),
	IN `NOM2` VARCHAR(50),
	IN `APE1` VARCHAR(50),
	IN `APE2` VARCHAR(50),
	IN `CELU` VARCHAR(10),
	IN `F_NACIMIENTO` VARCHAR(50),
	IN `DIREC` VARCHAR(50),
	IN `DETA` VARCHAR(50),
	IN `SEXO1` ENUM('F','M'),
	IN `CONTRA` VARCHAR(50)



,
	IN `ESTADO` ENUM('ACTIVO','INACTIVO'),
	IN `ROL` INT



)
BEGIN
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	
	CALL SHOW_MENSAJE('1', '¡Ha ocurrido un error en la modificacion de los datos!');
	
	START TRANSACTION;
	UPDATE persona 
	SET PER_NOMBRE1 = NOM1,
	PER_CEDULA = CEDU,
	PER_NOMBRE2 = NOM2,
	PER_APELLIDO1 = APE1,
	PER_APELLIDO2 = APE2,
	PER_CELULAR=CELU,
	PER_NACIMIENTO = F_NACIMIENTO,
	PER_DIRECCION = DIREC,
	PER_DETALLES = DETA,
	PER_SEXO = SEXO1
   WHERE persona.ID_PERSONA=ID;

   CALL SHOW_MENSAJE('3','¡Sus datos fueron modificados corectamente!');
	COMMIT;
	CALL UPDA_USUARIO(ID, CONTRA, ESTADO, ROLL);
END//
DELIMITER ;

-- Volcando estructura para procedimiento bd_morelac.UPDA_PROVEEDOR
DELIMITER //
CREATE DEFINER=`user_morelac`@`%` PROCEDURE `UPDA_PROVEEDOR`(
	IN `ID` INT,
	IN `CEDU` INT,
	IN `NOM1` VARCHAR(50),
	IN `NOM2` VARCHAR(50),
	IN `APE1` VARCHAR(50),
	IN `APE2` VARCHAR(50),
	IN `CELU` INT,
	IN `DIREC` VARCHAR(50),
	IN `DETA` VARCHAR(50),
	IN `SEXO1` ENUM('M','F')
,
	IN `CONTRA` VARCHAR(50),
	IN `ESTADO` ENUM('ACTIVO','INACTIVO'),
	IN `NOMBRE_FINCA` VARCHAR(50),
	IN `UBICACION` VARCHAR(50),
	IN `DIME` VARCHAR(50),
	IN `CANT` INT,
	IN `FECHA` DATE



)
BEGIN
	
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	
	CALL SHOW_MENSAJE('1', '¡Ha ocurrido un error en la modificacion de los datos PRO!');
	
	START TRANSACTION;
	UPDATE persona 
	SET PER_CEDULA = CEDU,
	PER_NOMBRE1 = NOM1,
	PER_NOMBRE2 = NOM2,
	PER_APELLIDO1 = APE1,
	PER_APELLIDO2 = APE2,
	PER_CELULAR=CELU,
	PER_DIRECCION = DIREC,
	PER_DETALLES = DETA,
	PER_SEXO = SEXO1
   WHERE persona.ID_PERSONA=ID;

   CALL SHOW_MENSAJE('3','¡Sus datos fueron modificados corectamente PRO!');
	COMMIT;
	
	CALL UPDA_USUARIO(ID, CONTRA, ESTADO, '5');
	CALL UPDA_FINCA(ID, NOMBRE_FINCA, UBICACION, DIME);
	CALL UPDA_LECHE(ID, CANT, FECHA);
	
END//
DELIMITER ;

-- Volcando estructura para procedimiento bd_morelac.UPDA_USUARIO
DELIMITER //
CREATE DEFINER=`user_morelac`@`%` PROCEDURE `UPDA_USUARIO`(
	IN `ID` INT,
	IN `CONTRA` VARCHAR(50),
	IN `ESTADO` ENUM('ACTIVO','INACTIVO'),
	IN `ROLL` INT







)
BEGIN
DECLARE ID_U INT;
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	
	CALL SHOW_MENSAJE('1', '¡Ha ocurrido un error en la modificacion de los datos USUARIO!');
	
	START TRANSACTION;
	
	SET ID_U= (SELECT ID_USUARIO FROM usuario WHERE usuario.PERSONA_ID_PERSONA = ID);
	
	UPDATE usuario 
	SET USU_CONTRASENA = CONTRA,
	USU_ESTADO = ESTADO,
	ROL_ID_ROL = ROLL
	WHERE usuario.ID_USUARIO = ID_U;
	
	CALL SHOW_MENSAJE('3','¡Sus datos fueron modificados corectamente USUARIO!');
	COMMIT;
END//
DELIMITER ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
