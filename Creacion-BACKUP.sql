CREATE DATABASE  IF NOT EXISTS `ecommercesql` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ProyectofinalSQL`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: ProyectofinalSQL
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping data for table `categ_prod`

LOCK TABLES `categ_prod` WRITE;
/*!40000 ALTER TABLE `categ_prod` DISABLE KEYS */;
INSERT INTO `categ_prod` VALUES (1,'SUBLIMABLES','niños','',''),(2,'SUBLIMABLES','unisex','',''),(3,'FRIZA SUBLIMABLE','unisex','',''),(4,'FRIZA SUBLIMABLE','bermudas','',''),(5,'Preventa','gorras','',''),(6,'Preventa','pilusos','',''),(7,'ALGODON ','niños ','',''),(8,'ALGODON ','unisex','','');
/*!40000 ALTER TABLE `categ_prod` ENABLE KEYS */;
UNLOCK TABLES;


-- Dumping data for table `clientes`

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (3,'Tomás','Villalba',5,'Argentina','45087845','tomivillalba17@gmail.com','1159404361','Saenz peña'),(4,'Yamila','Vera',7,'Argentina','31477527','yamilabelen.vera@gmail.com','1158087241','España'),(5,'Sandra','Rivello',8,'Argentina','14710011','sandramariaraquel@hotmail.com','2213601388','Calle 10 ruta 40'),(6,'Facundo','Alemañi',21,'Argentina','41774769','facualemani066@gmail.com','2901411315','San cayetano'),(7,'Walter','Valenzuela',22,'Argentina','37892653','waltervalenzuela89@gmail.com','3835519993','9 DE JULIO 965'),(8,'Adrian','Reyes',15,'Argentina','31795362','adrianreyes6523@outlook.com','1121866000','calle 15 entre 38 y 40'),(9,'CRISTIAN','LOPEZ',15,'Argentina','17567938','cail1166@hotmail.com','1150216087','Calle Rafael Bielsa'),(10,'Sabrina','Clementti',16,'Argentina','28645270','sabriclementti@gmail.com','2262542117','El montañez'),(11,'Cassandra','Romero',12,'Argentina','41010205','Rgarciagutierrez@gmail.com','1123208057','Sabattini'),(12,'ariel','cisterna',11,'Argentina','35573806','cisternariel@gmail.com','1154835590','Munilla'),(13,'Luciana','Manzano',8,'Argentina','39103485','lucianamanzano13@gmail.com','2345655076','junin'),(14,'MARTIN','CUCELI',5,'Argentina','42304774','okasan.store@gmail.com','3515410008','25 de mayo'),(15,'Joaquin','Montana',6,'Argentina','2039057354','cfacundo@gmail.com','3514565688','jose de medeiros 2488');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;


-- Dumping data for table `compras`

LOCK TABLES `compras` WRITE;
/*!40000 ALTER TABLE `compras` DISABLE KEYS */;
INSERT INTO `compras` VALUES (1,'2005-01-23',3,5,1,0.00,0.00,21.00,350.00),(2,'2006-01-23',5,5,2,0.00,0.00,21.00,350.00),(3,'2007-01-23',5,5,3,0.00,0.00,21.00,126.00),(4,'2008-01-23',4,5,4,0.00,0.00,21.00,105.00),(5,'2009-01-23',8,5,5,0.00,0.00,21.00,119.00),(6,'2010-01-23',10,5,6,0.00,0.00,21.00,1302.00),(7,'2011-01-23',12,5,7,0.00,0.00,21.00,875.00),(8,'2012-01-23',11,5,8,0.00,0.00,21.00,900.00),(9,'2013-01-23',4,5,9,0.00,0.00,21.00,1260.00),(10,'2014-01-23',4,5,10,0.00,0.00,21.00,193.00),(11,'2015-01-23',8,5,11,0.00,0.00,21.00,385.00),(12,'2016-01-23',6,5,12,0.00,0.00,21.00,800.00),(13,'2017-01-23',7,5,13,0.00,0.00,21.00,180.00),(14,'2018-01-23',2,5,14,0.00,0.00,21.00,203.00),(15,'2019-01-23',3,5,15,0.00,0.00,21.00,224.00);
/*!40000 ALTER TABLE `compras` ENABLE KEYS */;
UNLOCK TABLES;


-- Dumping data for table `envios`

LOCK TABLES `envios` WRITE;
/*!40000 ALTER TABLE `envios` DISABLE KEYS */;
INSERT INTO `envios` VALUES (1,'Correo Arg a dom','Avenida alvear 4040 alvear','2001-02-23',34038.26),(2,'Retira local','Pio Leon 1321','2002-02-23',1020.02),(3,'Correo Arg a dom','BARRIO CONVIVIR CASA 10','2003-02-23',3681.94),(4,'Correo Arg a dom','ROQUETA 2376 ','2004-02-23',1112.05),(5,'Enviar a expreso','Av. Colon 1231','2005-02-23',1389.96),(6,'Retira local','Uruguay 1231','2006-02-23',2440.02),(7,'24hs FULLKING','Espejo 412','2007-02-23',1551.20),(8,'Correo Arg a dom','Las palmas 4324','2008-02-23',1492.97),(9,'Enviar a expreso','Cordoba 1839','2009-02-23',1080.53),(10,'Retira local','San Luis 21','2010-02-23',599.94),(11,'Expr retira local','LA FERRERE 1044 ','2011-02-23',1080.01),(12,'Correo Arg a suc','Beron de astrada','2012-02-23',1141.04),(13,'Expr retira local','JOSE DE MEDEIROS 3021','2010-02-23',1570.01),(14,'Correo Arg a dom','Miranda 213','2011-02-23',1553.10),(15,'Correo Arg a suc','JULIO DE VEDIA 212','2012-02-23',985.99);
/*!40000 ALTER TABLE `envios` ENABLE KEYS */;
UNLOCK TABLES;


-- Dumping data for table `estado_orden`

LOCK TABLES `estado_orden` WRITE;
/*!40000 ALTER TABLE `estado_orden` DISABLE KEYS */;
INSERT INTO `estado_orden` VALUES (1,'Anulado'),(2,'En espera'),(3,'Enviando'),(4,'Finalizado'),(5,'Fallido');
/*!40000 ALTER TABLE `estado_orden` ENABLE KEYS */;
UNLOCK TABLES;


-- Dumping data for table `log_auditoria`

LOCK TABLES `log_auditoria` WRITE;
/*!40000 ALTER TABLE `log_auditoria` DISABLE KEYS */;
INSERT INTO `log_auditoria` VALUES (1,'id_estado','4','1','root@localhost','2023-03-20 20:10:12'),(2,'id_estado','4','4','root@localhost','2023-03-20 20:11:41'),(3,'total','4020.02','5000.00','root@localhost','2023-03-20 20:11:41');
/*!40000 ALTER TABLE `log_auditoria` ENABLE KEYS */;
UNLOCK TABLES;

-- Dumping data for table `log_auditoria_2`

LOCK TABLES `log_auditoria_2` WRITE;
/*!40000 ALTER TABLE `log_auditoria_2` DISABLE KEYS */;
INSERT INTO `log_auditoria_2` VALUES (1,'PRODUCTOS','PRECIO_VENTA','700.00','750.50','root@localhost','2023-03-20 20:14:13'),(3,'PRODUCTOS','PRECIO_VENTA','1800.00','1800.00','root@localhost','2023-03-20 20:21:00'),(4,'PRODUCTOS','NOMBRE','CANG RUST','Canguro Rustico','root@localhost','2023-03-20 20:21:00');
/*!40000 ALTER TABLE `log_auditoria_2` ENABLE KEYS */;
UNLOCK TABLES;


-- Dumping data for table `metodopago`

LOCK TABLES `metodopago` WRITE;
/*!40000 ALTER TABLE `metodopago` DISABLE KEYS */;
INSERT INTO `metodopago` VALUES (1,'debito','1 cuota','pesos'),(2,'credito','1 cuota','pesos'),(3,'credito','3 cuotas','pesos'),(4,'credito','6 cuotas','pesos'),(5,'transferencia','inmediato','pesos');
/*!40000 ALTER TABLE `metodopago` ENABLE KEYS */;
UNLOCK TABLES;


-- Dumping data for table `ordenes`

LOCK TABLES `ordenes` WRITE;
/*!40000 ALTER TABLE `ordenes` DISABLE KEYS */;
INSERT INTO `ordenes` VALUES (1,'2001-02-23',100,1,1,12,4,36038.26),(2,'2002-02-23',101,2,2,9,4,5000.00),(3,'2003-02-23',102,3,3,8,4,35838.26),(4,'2004-02-23',103,4,4,5,4,1437.05),(5,'2005-02-23',104,5,5,10,1,1889.96),(6,'2006-02-23',105,6,6,15,4,2940.02),(7,'2007-02-23',106,7,7,3,4,1851.20),(8,'2008-02-23',107,8,8,2,4,2142.97),(9,'2009-02-23',108,9,9,14,4,1800.01),(10,'2010-02-23',109,10,10,1,4,1199.94),(11,'2011-02-23',110,11,11,13,4,1640.01),(12,'2012-02-23',111,12,12,4,4,1446.04),(13,'2010-02-23',112,13,13,6,4,4170.01),(14,'2011-02-23',113,14,14,7,4,3453.10),(15,'2012-02-23',114,15,15,11,4,1685.99);
/*!40000 ALTER TABLE `ordenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `productos`

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'BER RUS',3,8,'00000051',350.00,600.00,15.00,'simple','21'),(2,'BERM SUBLI',5,4,'00000050',350.00,650.00,25.00,'simple','21'),(3,'BODYS BB',5,2,'00000048',126.00,300.00,65.00,'simple','21'),(4,'BRETEL B',4,1,'00000022',105.00,305.00,14.00,'simple','21'),(5,'BRETEL OSCURO',8,2,'00000023',119.00,325.00,15.00,'simple','21'),(6,'CANG NEGRO ',10,3,'00000029',1302.00,2600.00,15.00,'simple','21'),(7,'CANGURITO',12,1,'00000026',875.00,1900.00,25.00,'simple','21'),(8,'Canguro Rustico',11,8,'00000055',900.00,1800.00,36.00,'simple','21'),(9,'CANGURO ',4,7,'00000037',1260.00,3000.00,25.00,'simple','21'),(10,'CARDADO ',4,7,'00000035',193.00,500.00,5.00,'simple','21'),(11,'CHOMBA MODAL',8,2,'00000049',385.00,750.50,41.00,'simple','21'),(12,'SUPER MODA',6,8,'00000064',800.00,2000.00,21.00,'simple','21'),(13,'RANGLAN GRIS ',7,2,'00000003',180.00,560.00,25.00,'simple','21'),(14,'GORRAS TRUCKERS',2,5,'00000061',203.00,720.00,32.00,'simple','21'),(15,'PILUSO MAYOR',3,6,'00000041',224.00,500.00,50.00,'simple','21'),(16,'Remera Invierno',3,7,'0000089N',573.55,1750.50,20.00,'simple','21.00');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'Ventiva IT Solutions','RESP INSCRIPTO',3,'Argentina','30707769102','freidenbergerf@gmail.com','3517452392'),(2,'ALMADA','RESP INSCRIPTO',4,'Argentina','20306603281','melinaamaya960@gmail.com','2214770033'),(3,'MACCIO DIEGO HERNAN','RESP INSCRIPTO',8,'Argentina','30502961817','pato72xx@outlook.com','2804192956'),(4,'Antares soc','RESP INSCRIPTO',6,'Argentina','30574816498','miarodriguez@gmail.com','3534170105'),(5,'A. MAZZACANI','RESP INSCRIPTO',15,'Argentina','30715669273','stieblaura@gmail.com','1136478796'),(6,'ABASTO SOLUCIONES ','RESP INSCRIPTO',13,'Argentina','30710317034','micaelaastrada23@hotmail.com','3404483977'),(7,'ABERTURAS MARTIN ','RESP INSCRIPTO',21,'Argentina','30598028938','familiaruizdia@hotmail.com','2645701312'),(8,'ACERCO S A','RESP INSCRIPTO',16,'Argentina','30581245722','lisaflores876@gmail.com','3775400218'),(9,'ADOLFO CASSARO ','RESP INSCRIPTO',1,'Argentina','30714092150','ojedacarla1993@gmail.com','2215227608'),(10,'AGUALANDIA PISCINAS ','RESP INSCRIPTO',1,'Argentina','30709348775','pettinavivi@gmail.com','3388677194'),(11,'ALCIDES JORDAN ','Resp Monotributo',4,'Argentina','20162312813','montaldoange@yahoo.com.ar','3413703292'),(12,'ALIBERTI SERGIO ','Resp Monotributo',5,'Argentina','30709549398','alfarocarolina99@gmail.com','2995901921'),(13,'ALUMBRON SRL','Resp Monotributo',5,'Argentina','30622120697','gabicoro86@gmail.com','3541334083'),(14,'ALVAREZ NEUMATICOS ','Resp Monotributo',7,'Argentina','27420500020','gabicoro86@gmail.com','1556383032'),(15,'AMADO ANTONELLA','Resp Monotributo',9,'Argentina','30716707055','facturas@kiboo.app','1170178573');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `provincia`
--

LOCK TABLES `provincia` WRITE;
/*!40000 ALTER TABLE `provincia` DISABLE KEYS */;
INSERT INTO `provincia` VALUES (1,'Buenos Aires',1900),(2,'CABA',1406),(3,'Chaco',3500),(4,'Cordoba',5000),(5,'Corrientes',3197),(6,'Entre Rios',3100),(7,'Formosa',3600),(8,'Jujuy',4600),(9,'La Pampa',6300),(10,'La Rioja',5300),(11,'Mendoza',5500),(12,'Misiones',3300),(13,'Neuquen',8300),(14,'Rio Negro',8500),(15,'Salta',4400),(16,'San Juan',5400),(17,'San Luis',5700),(18,'Santa Cruz',9400),(19,'Santa Fe',3006),(20,'Santiago del Estero',4200),(21,'Tierra Del Fuego',9410),(22,'Tucuman',4000);
/*!40000 ALTER TABLE `provincia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1,'2003-02-23',3,1,3,8,5.00,0.00,21.00,34046.34),(2,'2002-02-23',2,1,2,9,5.00,0.00,21.00,3819.02),(3,'2004-02-23',4,5,4,5,10.00,0.00,21.00,1293.35),(4,'2006-02-23',6,2,6,15,0.00,2.00,21.00,2998.82),(5,'2001-02-23',1,5,1,12,10.00,0.00,21.00,32434.43),(6,'2005-02-23',5,5,5,10,10.00,0.00,21.00,1700.96),(7,'2007-02-23',7,3,7,3,0.00,5.00,21.00,1943.76),(8,'2008-02-23',8,5,8,2,10.00,0.00,21.00,1928.67),(9,'2012-02-23',15,4,15,11,0.00,15.00,21.00,1938.88),(10,'2012-02-23',12,1,12,4,5.00,0.00,21.00,1373.74),(11,'2010-02-23',13,2,13,6,0.00,2.00,21.00,4253.41),(12,'2011-02-23',11,1,11,13,5.00,0.00,21.00,1558.01),(13,'2010-02-23',10,4,10,1,0.00,15.00,21.00,1379.93),(14,'2009-02-23',9,5,9,14,10.00,0.00,21.00,1620.01),(15,'2011-02-23',14,4,14,7,0.00,15.00,21.00,3971.07);
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


