-- --------------------------------------------------------
-- Host:                         191.102.85.226
-- Versión del servidor:         5.7.15-log - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             10.1.0.5464
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

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
  `NOMBRE` varchar(45) NOT NULL,
  `DIRECCION` varchar(160) NOT NULL,
  `CORREO` varchar(160) NOT NULL,
  `TELEFONO` int(12) NOT NULL,
  `DUENO` varchar(225) NOT NULL,
  `MISION` varchar(255) DEFAULT NULL,
  `VISION` varchar(45) DEFAULT NULL,
  `FOTO` varchar(500) NOT NULL,
  PRIMARY KEY (`ID_EMPRESA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bd_morelac.empresa: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` (`ID_EMPRESA`, `NOMBRE`, `DIRECCION`, `CORREO`, `TELEFONO`, `DUENO`, `MISION`, `VISION`, `FOTO`) VALUES
	(123456789, 'MORELAC', 'MORELIA', 'PRUEBA@HOTMAIL.COM', 320105177, 'YO', 'MMMIIISSSIIIOOONNN ', 'VVVIIISSSIIIOOONNN ', 'https://eastus1-mediap.svc.ms/transform/thumbnail?provider=spo&inputFormat=png&cs=fFNQTw&docid=https%3A%2F%2Fudlaedu-my.sharepoint.com%3A443%2F_api%2Fv2.0%2Fdrives%2Fb!4O9wKyoaqUue5cz8E6SQb5-pOi1qWJ5Orwj18K3WrsXG3PTR9PTNQ5wIv_qiXIRg%2Fitems%2F01RWWQHHUH5IWPUVZIP5HY7QBFXGLGPAMT%3Fversion%3DPublished&encodeFailures=1&ctag=%22c%3A%7BFA2CEA87-2857-4F7F-8FC0-25B996678193%7D%2C2%22&width=1400&height=719&srcWidth=&srcHeight=');
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
  CONSTRAINT `fk_PRODUCTOS_FACTURA` FOREIGN KEY (`PRO_X_PAGA`) REFERENCES `productos` (`NOMBRE`) ON DELETE NO ACTION ON UPDATE NO ACTION
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

-- Volcando datos para la tabla bd_morelac.factura_has_productos: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `factura_has_productos` DISABLE KEYS */;
INSERT INTO `factura_has_productos` (`FACTURA_ID_FACTURA`, `PRODUCTOS_ID_PRODUCTOS`) VALUES
	(1, 1);
/*!40000 ALTER TABLE `factura_has_productos` ENABLE KEYS */;

-- Volcando estructura para tabla bd_morelac.finca
CREATE TABLE IF NOT EXISTS `finca` (
  `ID_FINCA` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(45) NOT NULL,
  `UBICACION` varchar(45) NOT NULL,
  `DIMENSION` varchar(45) DEFAULT NULL,
  `PERSONA_ID_PERSONA` int(11) NOT NULL,
  PRIMARY KEY (`ID_FINCA`),
  KEY `fk_FINCA_PERSONA1_idx` (`PERSONA_ID_PERSONA`),
  CONSTRAINT `fk_FINCA_PERSONA1` FOREIGN KEY (`PERSONA_ID_PERSONA`) REFERENCES `persona` (`ID_PERSONA`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bd_morelac.finca: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `finca` DISABLE KEYS */;
INSERT INTO `finca` (`ID_FINCA`, `NOMBRE`, `UBICACION`, `DIMENSION`, `PERSONA_ID_PERSONA`) VALUES
	(1, 'Hebron', 'Montañita', '20 hectarias', 17683560),
	(2, 'CAMPANA', 'SAN VICENTE', '30 HECTARIAS', 40683530);
/*!40000 ALTER TABLE `finca` ENABLE KEYS */;

-- Volcando estructura para tabla bd_morelac.menu
CREATE TABLE IF NOT EXISTS `menu` (
  `ID_MENU` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `NOM_MENU` varchar(80) NOT NULL,
  `MENU_URL` varchar(255) NOT NULL,
  `PERMISO_ID_PERMISO` int(11) NOT NULL,
  PRIMARY KEY (`ID_MENU`),
  KEY `fk_MENU_PERMISO1_idx` (`PERMISO_ID_PERMISO`),
  CONSTRAINT `fk_MENU_PERMISO1` FOREIGN KEY (`PERMISO_ID_PERMISO`) REFERENCES `permiso` (`ID_PERMISO`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bd_morelac.menu: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;

-- Volcando estructura para tabla bd_morelac.permiso
CREATE TABLE IF NOT EXISTS `permiso` (
  `ID_PERMISO` int(11) NOT NULL AUTO_INCREMENT,
  `NOM_PERSONA` varchar(45) NOT NULL,
  `ROL_ID_ROL` int(2) NOT NULL,
  PRIMARY KEY (`ID_PERMISO`),
  KEY `fk_PERMISO_ROL1_idx` (`ROL_ID_ROL`),
  CONSTRAINT `fk_PERMISO_ROL1` FOREIGN KEY (`ROL_ID_ROL`) REFERENCES `rol` (`ID_ROL`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bd_morelac.permiso: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `permiso` DISABLE KEYS */;
/*!40000 ALTER TABLE `permiso` ENABLE KEYS */;

-- Volcando estructura para tabla bd_morelac.persona
CREATE TABLE IF NOT EXISTS `persona` (
  `ID_PERSONA` int(20) NOT NULL AUTO_INCREMENT,
  `NOMBRE1` varchar(20) NOT NULL,
  `NOMBRE2` varchar(20) DEFAULT NULL,
  `APELLIDO1` varchar(20) NOT NULL,
  `APELLIDO2` varchar(20) DEFAULT NULL,
  `CELULAR` varchar(10) NOT NULL DEFAULT '0',
  `NACIMIENTO` date DEFAULT NULL,
  `DIRECCION` varchar(45) DEFAULT NULL,
  `ESTADO` enum('ACTIVO','INACTIVO') NOT NULL DEFAULT 'INACTIVO',
  `DETALLES` varchar(255) DEFAULT NULL,
  `SEXO` enum('M','F') NOT NULL,
  PRIMARY KEY (`ID_PERSONA`)
) ENGINE=InnoDB AUTO_INCREMENT=1117553551 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bd_morelac.persona: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` (`ID_PERSONA`, `NOMBRE1`, `NOMBRE2`, `APELLIDO1`, `APELLIDO2`, `CELULAR`, `NACIMIENTO`, `DIRECCION`, `ESTADO`, `DETALLES`, `SEXO`) VALUES
	(3, 'CARLOS', 'ALBERTO', 'ORTIZ', 'LOSADA', '3104823632', '1999-01-17', 'SEMIANRIO', 'ACTIVO', 'CAOL', 'M'),
	(4, 'LUNA', 'FERNANDA', 'ORTIZ', 'LOSADA', '36985214', '2003-10-16', 'PTO-LEGUIZAMO', 'ACTIVO', 'MIJO', 'F'),
	(9901, 'Juan', 'Andres', 'Perez', 'Castro', '3120384213', '2018-11-07', 'caqueta', 'ACTIVO', 'casdsadasd', 'M'),
	(17683560, 'LUIS', 'HERMANDO', 'ORTIZ', 'PALADINES', '0', '1976-02-02', 'FLORENCIA CAQUETA', 'ACTIVO', NULL, 'M'),
	(17683600, 'JOSE', 'ANTONIO', 'ORTIZ', 'PALADINES', '3222012401', '1975-10-17', 'PTO-LEGUIZAMO', 'ACTIVO', 'JAOP', 'M'),
	(40683530, 'SOFIA', NULL, 'CASTRO', 'MUÑOZ', '0', '1984-02-02', 'SAN VICENTE ', 'ACTIVO', NULL, 'F'),
	(1117552597, 'CARLOS', 'ALBERTO', 'ORTIZ', 'LOSADA', '3104823632', '1999-01-17', 'FLORENCIA', 'ACTIVO', 'CAOL', 'M'),
	(1117553549, 'JOHANT', NULL, 'VARGAS', NULL, '3105874988', '1999-06-06', 'FLORENCIA', 'ACTIVO', 'JJ', 'M'),
	(1117553550, 'CRISTIAN', 'ANDRES', 'PEREZ', 'VARGAS', '0', '2000-02-03', 'MONTAÑOTA', 'ACTIVO', 'CAPV', 'M');
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;

-- Volcando estructura para tabla bd_morelac.productos
CREATE TABLE IF NOT EXISTS `productos` (
  `ID_PRODUCTOS` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(45) NOT NULL,
  `CANTIDAD` float NOT NULL,
  `PRECIO` double NOT NULL,
  PRIMARY KEY (`ID_PRODUCTOS`),
  KEY `NOMBRE` (`NOMBRE`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bd_morelac.productos: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` (`ID_PRODUCTOS`, `NOMBRE`, `CANTIDAD`, `PRECIO`) VALUES
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
  `ID_ROL` int(2) NOT NULL AUTO_INCREMENT,
  `ROL_NOMBRE` varchar(45) NOT NULL,
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

-- Volcando estructura para tabla bd_morelac.sexonada
CREATE TABLE IF NOT EXISTS `sexonada` (
  `ID` int(2) NOT NULL,
  `NOMBRE` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bd_morelac.sexonada: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `sexonada` DISABLE KEYS */;
INSERT INTO `sexonada` (`ID`, `NOMBRE`) VALUES
	(0, ''),
	(1, 'M'),
	(2, 'F');
/*!40000 ALTER TABLE `sexonada` ENABLE KEYS */;

-- Volcando estructura para tabla bd_morelac.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `ID_TIPO_USUARIO` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `CORREO_ELECTRONICO` varchar(50) NOT NULL,
  `CONTRASENA` varchar(50) NOT NULL,
  `FOTO` varchar(300) DEFAULT NULL,
  `USU_ESTADO` enum('ACTIVO','INACTIVO') NOT NULL DEFAULT 'ACTIVO',
  `PERSONA_ID_PERSONA` int(11) NOT NULL,
  `ROL_ID_ROL` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_TIPO_USUARIO`),
  UNIQUE KEY `CORREO_ELECTRONICO` (`CORREO_ELECTRONICO`),
  UNIQUE KEY `PERSONA_ID_PERSONA` (`PERSONA_ID_PERSONA`),
  KEY `fk_TIPO_USUARIO_PERSONA1_idx` (`PERSONA_ID_PERSONA`),
  KEY `fk_TIPO_USUARIO_ROL1_idx` (`ROL_ID_ROL`),
  CONSTRAINT `fk_TIPO_USUARIO_PERSONA1` FOREIGN KEY (`PERSONA_ID_PERSONA`) REFERENCES `persona` (`ID_PERSONA`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_TIPO_USUARIO_ROL1` FOREIGN KEY (`ROL_ID_ROL`) REFERENCES `rol` (`ID_ROL`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bd_morelac.usuario: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`ID_TIPO_USUARIO`, `CORREO_ELECTRONICO`, `CONTRASENA`, `FOTO`, `USU_ESTADO`, `PERSONA_ID_PERSONA`, `ROL_ID_ROL`) VALUES
	(1, 'johant.vargas', 'prueba', '~/img/friends/fr-08.jpg', 'ACTIVO', 1117553549, 1),
	(3, 'carloslosada9901@hotmail.com', 'caol', '', 'ACTIVO', 17683600, 3),
	(4, 'luis@gmail.com', 'luis', NULL, 'ACTIVO', 17683560, 5),
	(5, 'Sofia2000@gmail.com', 'sofia', NULL, 'ACTIVO', 40683530, 5),
	(6, 'juan@gmail.com', '1234', NULL, 'ACTIVO', 9901, 4),
	(7, 'Luna@gmail.com', 'luna', NULL, 'ACTIVO', 4, 5);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

-- Volcando estructura para procedimiento bd_morelac.CONS_RESULDADOS_PRUEBA
DELIMITER //
CREATE DEFINER=`user_morelac`@`%` PROCEDURE `CONS_RESULDADOS_PRUEBA`()
BEGIN
SELECT NOMBRE_PRUEBA,DAT_NOMBRE,RES_TOTAL_PRUEBAS,CANTIDAD_PRUEBAS,NOMBRE1, APELLIDO1,ROL_NOMBRE FROM resultados_pruebas
INNER JOIN persona ON (resultados_pruebas.PERSONA_ID_PERSONA=persona.ID_PERSONA)
INNER JOIN aux_prueba ON (resultados_pruebas.ID_RESULTADOS_PRUEBAS=aux_prueba.ID_RESULTADOS_PRUEBAS)
INNER JOIN datos ON(aux_prueba.DATOS_ID_DATOS=datos.ID_DATOS)
INNER JOIN usuario ON ( persona.ID_PERSONA=usuario.PERSONA_ID_PERSONA)
INNER JOIN rol ON (usuario.ROL_ID_ROL=rol.ID_ROL);
END//
DELIMITER ;

-- Volcando estructura para procedimiento bd_morelac.UPDA_PERSONA
DELIMITER //
CREATE DEFINER=`user_morelac`@`%` PROCEDURE `UPDA_PERSONA`(
	IN `ID` INT,
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
)
BEGIN
	
	UPDATE persona 
	SET NOMBRE1 = NOM1,
	NOMBRE2 = NOM2,
	APELLIDO1 = APE1,
	APELLIDO2 = APE2,
	CELULAR=CELU,
	NACIMIENTO = F_NACIMIENTO,
	DIRECCION = DIREC,
	DETALLES = DETA,
	SEXO = SEXO1
	WHERE PERSONA.ID_PERSONA = ID;
	
	CALL `UPDA_USUARIO`(ID, CONTRA,FOTO,ROLL); -- ESTADO
	
END//
DELIMITER ;

-- Volcando estructura para procedimiento bd_morelac.UPDA_USUARIO
DELIMITER //
CREATE DEFINER=`user_morelac`@`%` PROCEDURE `UPDA_USUARIO`(
	IN `ID` INT,
	IN `CONTRA` VARCHAR(50),
	IN `FOTO` VARCHAR(200),
	IN `ROLL` INT
)
BEGIN

	UPDATE usuario 
	SET CONTRASENA = CONTRA,
-- 	USU_ESTADO = ESTADO,
	FOTO=FOTO,
	ROL_ID_ROL = ROLL
	WHERE usuario.ID_TIPO_USUARIO = ID;
END//
DELIMITER ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
