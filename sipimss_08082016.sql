-- MySQL dump 10.13  Distrib 5.7.12, for osx10.11 (x86_64)
--
-- Host: 11.32.41.238    Database: sipimss
-- ------------------------------------------------------
-- Server version	5.6.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `actividad_docente_gral`
--

DROP TABLE IF EXISTS `actividad_docente_gral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actividad_docente_gral` (
  `ACT_DOC_GRAL_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `ANIOS_DEDICADOS` int(11) DEFAULT NULL,
  `CURSO_MAS_DEDICADO` varchar(20) DEFAULT NULL,
  `CURSO_PRINC_IMPARTE` varchar(20) DEFAULT NULL,
  `EJER_PREDOMI_CVE` int(11) DEFAULT NULL,
  `EMPLEADO_CVE` int(11) NOT NULL,
  `TIP_ACT_DOC_PRINCIPAL_CVE` int(10) DEFAULT NULL,
  `FECHA_INSERSION` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ACT_DOC_GRAL_CVE`),
  UNIQUE KEY `XPKACTIVIDAD_DOCENTE_GRAL` (`ACT_DOC_GRAL_CVE`),
  KEY `XIF1ACTIVIDAD_DOCENTE_GRAL` (`EJER_PREDOMI_CVE`),
  KEY `EMPLEADO_CVE` (`EMPLEADO_CVE`),
  KEY `XIF10EMP_ACTIVIDAD_DOCENTE_GRAL` (`TIP_ACT_DOC_PRINCIPAL_CVE`),
  CONSTRAINT `actividad_docente_gral_ibfk` FOREIGN KEY (`EJER_PREDOMI_CVE`) REFERENCES `cejercicio_predominante` (`EJER_PREDOMI_CVE`),
  CONSTRAINT `actividad_docente_gral_tadpcfk` FOREIGN KEY (`TIP_ACT_DOC_PRINCIPAL_CVE`) REFERENCES `ctipo_actividad_docente` (`TIP_ACT_DOC_CVE`),
  CONSTRAINT `emp_actividad_docente_gral_ibfk` FOREIGN KEY (`EMPLEADO_CVE`) REFERENCES `empleado` (`EMPLEADO_CVE`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actividad_docente_gral`
--

LOCK TABLES `actividad_docente_gral` WRITE;
/*!40000 ALTER TABLE `actividad_docente_gral` DISABLE KEYS */;
INSERT INTO `actividad_docente_gral` VALUES (2,44,NULL,'12',6,2,NULL,'2016-08-05 22:22:13'),(3,50,NULL,'51',3,1,4,'2016-08-05 22:22:13'),(4,3,NULL,NULL,1,23,NULL,'2016-08-05 22:22:13'),(5,10,NULL,NULL,2,12,NULL,'2016-08-05 22:22:13');
/*!40000 ALTER TABLE `actividad_docente_gral` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actualizar_contrasenia_mesa`
--

DROP TABLE IF EXISTS `actualizar_contrasenia_mesa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actualizar_contrasenia_mesa` (
  `USUARIO_CVE` int(11) DEFAULT NULL,
  `ACM_FCH_ACTUALIZA` date DEFAULT NULL,
  `ACM_CONTRASENIA_TEMP` varchar(20) DEFAULT NULL,
  `USR_QUIEN_REALIZA_ACT` varchar(20) DEFAULT NULL,
  `USR_A_QUIEN_ACTUALIZAN` varchar(20) DEFAULT NULL,
  `ACTUALIZA_ESTADO` varchar(20) DEFAULT NULL,
  `ACTUA_CONTRA_MESA` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ACTUA_CONTRA_MESA`),
  UNIQUE KEY `XPKACTUALIZAR_CONTRASENIA_MESA` (`ACTUA_CONTRA_MESA`),
  KEY `XIF1ACTUALIZAR_CONTRASENIA_MESA` (`USUARIO_CVE`),
  CONSTRAINT `actualizar_contrasenia_mesa_ibfk_1` FOREIGN KEY (`USUARIO_CVE`) REFERENCES `usuario` (`USUARIO_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actualizar_contrasenia_mesa`
--

LOCK TABLES `actualizar_contrasenia_mesa` WRITE;
/*!40000 ALTER TABLE `actualizar_contrasenia_mesa` DISABLE KEYS */;
/*!40000 ALTER TABLE `actualizar_contrasenia_mesa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_dictamen_evaluacion`
--

DROP TABLE IF EXISTS `admin_dictamen_evaluacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_dictamen_evaluacion` (
  `FCH_INICIO_EVALUACION` date DEFAULT NULL,
  `FCH_FIN_EVALUACION` date DEFAULT NULL,
  `FCH_FIN_INCONFORMIDAD` date DEFAULT NULL,
  `ADMIN_DICTAMEN_EVA_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `ADMIN_VALIDADOR_CVE` int(11) DEFAULT NULL,
  PRIMARY KEY (`ADMIN_DICTAMEN_EVA_CVE`),
  UNIQUE KEY `XPKCONVOCATORIA` (`ADMIN_DICTAMEN_EVA_CVE`),
  KEY `XIF1CONVOCATORIA` (`ADMIN_VALIDADOR_CVE`),
  CONSTRAINT `admin_dictamen_evaluacion_ibfk_1` FOREIGN KEY (`ADMIN_VALIDADOR_CVE`) REFERENCES `admin_validador` (`ADMIN_VALIDADOR_CVE`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_dictamen_evaluacion`
--

LOCK TABLES `admin_dictamen_evaluacion` WRITE;
/*!40000 ALTER TABLE `admin_dictamen_evaluacion` DISABLE KEYS */;
INSERT INTO `admin_dictamen_evaluacion` VALUES ('2016-08-25','2016-08-30','2016-09-05',1,1),('2016-08-30','2016-09-05','2016-09-10',2,1),('2016-07-15','2016-07-22','2016-07-30',10,2),('2016-07-17','2016-07-24','2016-07-31',11,2),('2016-07-14','2016-07-15','2016-07-24',12,2),('2016-07-21','2016-07-24','2016-07-30',13,20),('2016-07-09','2016-07-24','2016-07-31',14,19),('2016-07-16','2016-07-23','2016-07-30',17,19),('2016-07-01','2016-07-15','2016-07-31',19,22),('2016-07-17','2016-07-26','2016-07-31',20,22),('2016-07-27','2016-07-28','2016-07-29',22,21),('2016-07-25','2016-07-29','2016-07-31',23,22),('2016-07-05','2016-07-06','2016-07-07',24,22),('2016-07-01','2016-07-02','2016-07-02',25,22),('2016-07-03','2016-07-04','2016-07-05',26,22),('2016-07-06','2016-07-08','2016-07-09',27,22);
/*!40000 ALTER TABLE `admin_dictamen_evaluacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_validador`
--

DROP TABLE IF EXISTS `admin_validador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_validador` (
  `FCH_FIN_REG_DOCENTE` date DEFAULT NULL,
  `FCH_FIN_VALIDACION_1` date DEFAULT NULL,
  `FCH_FIN_VALIDACION_2` date DEFAULT NULL,
  `ADMIN_VALIDADOR_CVE` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ADMIN_VALIDADOR_CVE`),
  UNIQUE KEY `XPKCONVOCATORIA` (`ADMIN_VALIDADOR_CVE`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_validador`
--

LOCK TABLES `admin_validador` WRITE;
/*!40000 ALTER TABLE `admin_validador` DISABLE KEYS */;
INSERT INTO `admin_validador` VALUES ('2016-08-10','2016-08-16','2016-08-20',1),('2016-09-14','2016-09-21','2016-09-28',2),('2016-07-07','2016-07-17','2016-07-23',19),('2016-07-08','2016-07-20','2016-07-28',20),('2016-07-01','2016-07-16','2016-07-23',21),('2016-07-02','2016-07-10','2016-07-24',22);
/*!40000 ALTER TABLE `admin_validador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adscripcion`
--

DROP TABLE IF EXISTS `adscripcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adscripcion` (
  `ADSCRIPCION_CVE` varchar(20) NOT NULL,
  `ADS_NOM_AREA` varchar(20) NOT NULL,
  `ADS_NOM_UNIDAD` varchar(25) NOT NULL,
  PRIMARY KEY (`ADSCRIPCION_CVE`),
  UNIQUE KEY `XPKADSCRIPCION` (`ADSCRIPCION_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adscripcion`
--

LOCK TABLES `adscripcion` WRITE;
/*!40000 ALTER TABLE `adscripcion` DISABLE KEYS */;
INSERT INTO `adscripcion` VALUES ('26HD032500','desconocido',''),('29HA062500','COORDINACION DE EDUC','');
/*!40000 ALTER TABLE `adscripcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitacora`
--

DROP TABLE IF EXISTS `bitacora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bitacora` (
  `BITACORA_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `BIT_FCH_CAMBIO` timestamp NULL DEFAULT NULL,
  `BIT_RUTA` varchar(250) DEFAULT NULL,
  `BIT_OPERACION` varchar(20) DEFAULT NULL,
  `BIT_IP` varchar(20) DEFAULT NULL,
  `USUARIO_CVE` int(11) DEFAULT NULL,
  `MODULO_CVE` int(11) DEFAULT NULL,
  `ENTIDAD` varchar(300) DEFAULT NULL,
  `REGISTRO_ENTIDAD_CVE` varchar(50) DEFAULT NULL,
  `PARAMETROS_JSON` text,
  PRIMARY KEY (`BITACORA_CVE`),
  UNIQUE KEY `XPKBITACORA` (`BITACORA_CVE`),
  KEY `XIF2BITACORA` (`USUARIO_CVE`),
  KEY `XIF3BITACORA` (`MODULO_CVE`),
  CONSTRAINT `bitacora_ibfk_1` FOREIGN KEY (`USUARIO_CVE`) REFERENCES `usuario` (`USUARIO_CVE`),
  CONSTRAINT `bitacora_ibfk_2` FOREIGN KEY (`MODULO_CVE`) REFERENCES `modulo` (`MODULO_CVE`)
) ENGINE=InnoDB AUTO_INCREMENT=260 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacora`
--

LOCK TABLES `bitacora` WRITE;
/*!40000 ALTER TABLE `bitacora` DISABLE KEYS */;
INSERT INTO `bitacora` VALUES (5,'2016-06-17 23:51:55','/perfil#get_data_ajax_actividad/ actualiza','NULL','NULL',2,NULL,NULL,NULL,NULL),(6,'2016-06-17 23:55:02','/perfil#get_data_ajax_actividad/ inserta','NULL','NULL',1,NULL,NULL,NULL,NULL),(7,'2016-06-17 23:55:35','/perfil#get_data_ajax_actividad/ actualiza','NULL','NULL',1,NULL,NULL,NULL,NULL),(13,'2016-06-21 16:02:50','/perfil#get_data_ajax_actividad/ actualiza','NULL','NULL',1,NULL,NULL,NULL,NULL),(14,'2016-06-21 16:10:03','/perfil#get_data_ajax_actividad/ actualiza','NULL','NULL',1,NULL,NULL,NULL,NULL),(15,'2016-06-21 18:52:00','/perfil#get_data_ajax_actividad/ actualiza','NULL','NULL',1,NULL,NULL,NULL,NULL),(16,'2016-06-21 19:15:51','/perfil#get_data_ajax_actividad/ actualiza','NULL','NULL',1,NULL,NULL,NULL,NULL),(17,'2016-06-21 19:16:00','/perfil#get_data_ajax_actividad/ actualiza','NULL','NULL',1,NULL,NULL,NULL,NULL),(18,'2016-06-22 00:43:10','/perfil#get_data_ajax_actividad/ actualiza','NULL','NULL',1,NULL,NULL,NULL,NULL),(19,'2016-07-06 16:34:44','/perfil/get_data_ajax_actividad_cuerpo_modal/ inse','NULL','NULL',1,NULL,NULL,NULL,NULL),(20,'2016-07-06 16:36:48','/perfil/get_data_ajax_actividad_cuerpo_modal/ inse','NULL','NULL',1,NULL,NULL,NULL,NULL),(21,'2016-07-06 16:37:43','/perfil/get_data_ajax_actividad_cuerpo_modal/ inse','NULL','NULL',1,NULL,NULL,NULL,NULL),(22,'2016-07-06 16:40:12','/perfil/get_data_ajax_actividad_cuerpo_modal/ inse','NULL','NULL',1,NULL,NULL,NULL,NULL),(23,'2016-07-06 16:41:22','/perfil/get_data_ajax_actividad_cuerpo_modal/ inse','NULL','NULL',1,NULL,NULL,NULL,NULL),(24,'2016-07-06 16:41:39','/perfil/get_data_ajax_actividad_cuerpo_modal/ inse','NULL','NULL',1,NULL,NULL,NULL,NULL),(25,'2016-07-06 16:42:20','/perfil/get_data_ajax_actividad_cuerpo_modal/ inse','NULL','NULL',1,NULL,NULL,NULL,NULL),(26,'2016-07-06 16:42:57','/perfil/get_data_ajax_actividad_cuerpo_modal/ inse','NULL','NULL',1,NULL,NULL,NULL,NULL),(27,'2016-07-06 16:44:06','/perfil/get_data_ajax_actividad_cuerpo_modal/ inse','NULL','NULL',1,NULL,NULL,NULL,NULL),(28,'2016-07-06 16:53:53','/perfil/get_data_ajax_actividad_cuerpo_modal/ inse','NULL','NULL',1,NULL,NULL,NULL,NULL),(29,'2016-07-06 16:54:58','/perfil/get_data_ajax_actividad_cuerpo_modal/ inse','NULL','NULL',1,NULL,NULL,NULL,NULL),(30,'2016-07-06 16:59:36','/perfil/get_data_ajax_actividad_cuerpo_modal/ inse','NULL','NULL',1,NULL,NULL,NULL,NULL),(31,'2016-07-06 17:06:32','/perfil/get_data_ajax_actividad_cuerpo_modal/ inse','NULL','NULL',1,NULL,NULL,NULL,NULL),(32,'2016-07-06 17:34:34','/perfil/get_data_ajax_actividad_cuerpo_modal/ inse','NULL','NULL',1,NULL,NULL,NULL,NULL),(33,'2016-07-06 20:02:45','/perfil/get_data_ajax_actividad_cuerpo_modal/ inse','NULL','NULL',1,NULL,NULL,NULL,NULL),(34,'2016-07-08 17:18:46','/perfil/get_data_ajax_actividad_cuerpo_modal/ inse','NULL','NULL',1,NULL,NULL,NULL,NULL),(35,'2016-07-08 17:25:55','/perfil/get_data_ajax_actividad_cuerpo_modal/ inse','NULL','NULL',1,NULL,NULL,NULL,NULL),(36,'2016-07-08 17:39:18','/perfil/get_data_ajax_actividad_cuerpo_modal/ inse','NULL','NULL',1,NULL,NULL,NULL,NULL),(37,'2016-07-08 20:04:34','/perfil#get_data_ajax_actividad/ actualiza','NULL','NULL',1,NULL,NULL,NULL,NULL),(38,'2016-07-08 20:05:27','/perfil#get_data_ajax_actividad/ actualiza','NULL','NULL',1,NULL,NULL,NULL,NULL),(39,'2016-07-08 20:12:52','/perfil#get_data_ajax_actividad/ actualiza','NULL','NULL',1,NULL,NULL,NULL,NULL),(40,'2016-07-08 20:36:35','/perfil#get_data_ajax_actividad/ actualiza','NULL','NULL',1,NULL,NULL,NULL,NULL),(41,'2016-07-08 20:52:24','/perfil#get_data_ajax_actividad/ actualiza','NULL','NULL',1,NULL,NULL,NULL,NULL),(42,'2016-07-08 20:52:31','/perfil#get_data_ajax_actividad/ actualiza','NULL','NULL',1,NULL,NULL,NULL,NULL),(43,'2016-07-08 23:08:24','/perfil#get_data_ajax_actividad/ actualiza','NULL','NULL',1,NULL,NULL,NULL,NULL),(44,'2016-07-12 00:15:23','/perfil#get_data_ajax_actividad/ actualiza','NULL','NULL',1,NULL,NULL,NULL,NULL),(45,'2016-07-12 00:15:43','/perfil#get_data_ajax_actividad/ actualiza','NULL','NULL',1,NULL,NULL,NULL,NULL),(46,'2016-07-12 00:20:39','/perfil#get_data_ajax_actividad/ actualiza','NULL','NULL',1,NULL,NULL,NULL,NULL),(47,'2016-07-12 00:21:48','/perfil#get_data_ajax_actividad/ actualiza','NULL','NULL',1,NULL,NULL,NULL,NULL),(48,'2016-07-12 00:23:25','/perfil#get_data_ajax_actividad/ actualiza','NULL','NULL',1,NULL,NULL,NULL,NULL),(49,'2016-07-12 00:25:25','/perfil#get_data_ajax_actividad/ actualiza','NULL','NULL',1,NULL,NULL,NULL,NULL),(50,'2016-07-12 00:25:53','/perfil#get_data_ajax_actividad/ actualiza','NULL','NULL',1,NULL,NULL,NULL,NULL),(51,'2016-07-12 00:26:19','/perfil#get_data_ajax_actividad/ actualiza','NULL','NULL',1,NULL,NULL,NULL,NULL),(52,'2016-07-12 00:26:28','/perfil#get_data_ajax_actividad/ actualiza','NULL','NULL',1,NULL,NULL,NULL,NULL),(53,'2016-07-12 17:08:20','/perfil#get_data_ajax_actividad/ actualiza','NULL','NULL',1,NULL,NULL,NULL,NULL),(54,'2016-07-12 17:09:40','/perfil#get_data_ajax_actividad/ actualiza','NULL','NULL',1,NULL,NULL,NULL,NULL),(55,'2016-07-12 17:13:53','/perfil#get_data_ajax_actividad/ actualiza','NULL','NULL',1,NULL,NULL,NULL,NULL),(56,'2016-07-12 17:18:12','/perfil/get_data_ajax_actividad_cuerpo_modal/ inse','NULL','NULL',1,NULL,NULL,NULL,NULL),(57,'2016-07-12 17:18:54','/perfil/get_data_ajax_actividad_cuerpo_modal/ inse','NULL','NULL',1,NULL,NULL,NULL,NULL),(58,'2016-07-12 17:20:25','/perfil/get_data_ajax_actividad_cuerpo_modal/ inse','NULL','NULL',1,NULL,NULL,NULL,NULL),(59,'2016-07-12 18:30:57','/perfil#get_data_ajax_actividad/ actualiza','NULL','NULL',1,NULL,NULL,NULL,NULL),(60,'2016-07-12 21:44:24','/perfil#get_data_ajax_actividad/ actualiza','NULL','NULL',1,NULL,NULL,NULL,NULL),(61,'2016-07-12 21:45:19','/perfil/get_data_ajax_actividad_cuerpo_modal/ inse','NULL','NULL',1,NULL,NULL,NULL,NULL),(62,'2016-07-12 21:50:21','/perfil/get_data_ajax_actividad_cuerpo_modal/ inse','NULL','NULL',1,NULL,NULL,NULL,NULL),(63,'2016-07-12 22:08:11','/perfil#get_data_ajax_actividad/ actualiza','NULL','NULL',1,NULL,NULL,NULL,NULL),(64,'2016-07-12 22:11:40','/perfil#get_data_ajax_actividad/ actualiza','NULL','NULL',1,NULL,NULL,NULL,NULL),(65,'2016-07-12 22:31:09','/perfil#get_data_ajax_actividad/ actualiza','NULL','NULL',1,NULL,NULL,NULL,NULL),(66,'2016-07-12 22:32:06','/perfil#get_data_ajax_actividad/ actualiza','NULL','NULL',1,NULL,NULL,NULL,NULL),(67,'2016-07-12 22:33:00','/perfil#get_data_ajax_actividad/ actualiza','NULL','NULL',1,NULL,NULL,NULL,NULL),(68,'2016-07-12 22:33:47','/perfil#get_data_ajax_actividad/ actualiza','NULL','NULL',1,NULL,NULL,NULL,NULL),(69,'2016-07-12 22:34:09','/perfil#get_data_ajax_actividad/ actualiza','NULL','NULL',1,NULL,NULL,NULL,NULL),(70,'2016-07-13 01:21:21','/perfil/get_data_ajax_actividad_cuerpo_modal/ inse','NULL','NULL',1,NULL,NULL,NULL,NULL),(71,'2016-07-13 16:29:48','/perfil/get_data_ajax_actividad_cuerpo_modal/ inse','NULL','NULL',1,NULL,NULL,NULL,NULL),(72,'2016-07-13 16:30:14','/perfil/get_data_ajax_actividad_cuerpo_modal/ inse','NULL','NULL',1,NULL,NULL,NULL,NULL),(73,'2016-07-13 16:43:47','/perfil/get_data_ajax_actividad_cuerpo_modal/ inse','NULL','NULL',1,NULL,NULL,NULL,NULL),(74,'2016-07-13 18:44:44','/perfil/get_data_ajax_actividad_cuerpo_modal/ inse','NULL','NULL',1,NULL,NULL,NULL,NULL),(75,'2016-07-13 19:04:37','/perfil/get_data_ajax_actividad_cuerpo_modal/ inse','NULL','NULL',1,NULL,NULL,NULL,NULL),(76,'2016-07-13 19:09:02','/perfil/get_data_ajax_actividad_cuerpo_modal/ inse','NULL','NULL',1,NULL,NULL,NULL,NULL),(77,'2016-07-13 19:13:37','/perfil/get_data_ajax_actividad_cuerpo_modal/ inse','NULL','NULL',1,NULL,NULL,NULL,NULL),(78,'2016-07-13 19:15:48','/perfil/get_data_ajax_actividad_cuerpo_modal/ inse','NULL','NULL',1,NULL,NULL,NULL,NULL),(79,'2016-07-13 19:16:46','/perfil/get_data_ajax_actividad_cuerpo_modal/ inse','NULL','NULL',1,NULL,NULL,NULL,NULL),(80,'2016-07-13 19:21:23','/perfil/get_data_ajax_actividad_cuerpo_modal/ inse','NULL','NULL',1,NULL,NULL,NULL,NULL),(81,'2016-07-13 21:05:10','/perfil/get_data_ajax_actividad_cuerpo_modal/ inse','NULL','NULL',1,NULL,NULL,NULL,NULL),(82,'2016-07-13 21:09:32','/perfil/get_data_ajax_actividad_cuerpo_modal/ inse','NULL','NULL',1,NULL,NULL,NULL,NULL),(83,'2016-07-13 21:12:21','/perfil/get_data_ajax_actividad_cuerpo_modal/ inse','NULL','NULL',1,NULL,NULL,NULL,NULL),(84,'2016-07-13 21:15:10','/perfil/get_data_ajax_actividad_cuerpo_modal/ inse','NULL','NULL',1,NULL,NULL,NULL,NULL),(85,'2016-07-13 21:22:26','/perfil/get_data_ajax_actividad_cuerpo_modal/ inse','NULL','NULL',1,NULL,NULL,NULL,NULL),(86,'2016-07-13 21:24:01','/perfil/get_data_ajax_actividad_cuerpo_modal/ inse','NULL','NULL',1,NULL,NULL,NULL,NULL),(87,'2016-07-14 21:00:12','/sipimss_censo/index.php/perfil/get_data_ajax_acti','NULL','::1',1,NULL,'0','0','0'),(88,'2016-07-14 21:14:19','/sipimss_censo/index.php/perfil/get_data_ajax_actividad/','NULL','127.0.0.1',1,NULL,'actividad_docente_gral','EMPLEADO_CVE','{\"ANIOS_DEDICADOS\":\"20\",\"EJER_PREDOMI_CVE\":\"6\",\"EMPLEADO_CVE\":\"1\"}'),(89,'2016-07-14 21:15:31','/sipimss_censo/index.php/perfil/get_data_ajax_actividad/','NULL','::1',1,NULL,'actividad_docente_gral','EMPLEADO_CVE','{\"ANIOS_DEDICADOS\":\"47\",\"EJER_PREDOMI_CVE\":\"6\",\"EMPLEADO_CVE\":\"1\"}'),(90,'2016-07-14 21:58:01','/sipimss_censo/index.php/perfil/get_data_ajax_actividad/','NULL','::1',1,NULL,'actividad_docente_gral','EMPLEADO_CVE','{\"ANIOS_DEDICADOS\":\"47\",\"EJER_PREDOMI_CVE\":\"6\",\"EMPLEADO_CVE\":\"1\"}'),(91,'2016-07-14 21:58:27','/sipimss_censo/index.php/perfil/get_data_ajax_actividad/','NULL','::1',1,NULL,'actividad_docente_gral','EMPLEADO_CVE','{\"ANIOS_DEDICADOS\":\"47\",\"EJER_PREDOMI_CVE\":\"6\",\"EMPLEADO_CVE\":\"1\"}'),(92,'2016-07-14 22:20:08','/sipimss_censo/index.php/perfil/get_data_ajax_actividad/','NULL','::1',1,NULL,'actividad_docente_gral','EMPLEADO_CVE','{\"ANIOS_DEDICADOS\":\"47\",\"EJER_PREDOMI_CVE\":\"6\",\"EMPLEADO_CVE\":\"1\"}'),(93,'2016-07-14 22:25:17','/sipimss_censo/index.php/perfil/get_data_ajax_actividad','NULL','::1',1,NULL,'actividad_docente_gral','EMPLEADO_CVE','{\"ANIOS_DEDICADOS\":\"47\",\"EJER_PREDOMI_CVE\":\"6\",\"EMPLEADO_CVE\":\"1\"}'),(94,'2016-07-14 22:30:08','/sipimss_censo/index.php/perfil/get_data_ajax_actividad','NULL','::1',1,NULL,'actividad_docente_gral','EMPLEADO_CVE','{\"ANIOS_DEDICADOS\":\"47\",\"EJER_PREDOMI_CVE\":\"6\",\"EMPLEADO_CVE\":\"1\"}'),(95,'2016-07-14 22:33:03','/sipimss_censo/index.php/perfil/get_data_ajax_actividad','NULL','::1',1,NULL,'actividad_docente_gral','EMPLEADO_CVE','{\"ANIOS_DEDICADOS\":\"47\",\"EJER_PREDOMI_CVE\":\"6\",\"EMPLEADO_CVE\":\"1\"}'),(96,'2016-07-14 22:35:53','/sipimss_censo/index.php/perfil/get_data_ajax_actividad','NULL','::1',1,NULL,'actividad_docente_gral','EMPLEADO_CVE','{\"ANIOS_DEDICADOS\":\"47\",\"EJER_PREDOMI_CVE\":\"6\",\"EMPLEADO_CVE\":\"1\"}'),(97,'2016-07-14 22:36:16','/sipimss_censo/index.php/perfil/get_data_ajax_actividad','NULL','::1',1,NULL,'actividad_docente_gral','EMPLEADO_CVE','{\"ANIOS_DEDICADOS\":\"47\",\"EJER_PREDOMI_CVE\":\"6\",\"EMPLEADO_CVE\":\"1\"}'),(98,'2016-07-14 22:48:47','/sipimss_censo/index.php/perfil/get_data_ajax_actividad','NULL','::1',1,NULL,'actividad_docente_gral','EMPLEADO_CVE','{\"ANIOS_DEDICADOS\":\"47\",\"EJER_PREDOMI_CVE\":\"6\",\"EMPLEADO_CVE\":\"1\"}'),(99,'2016-07-14 22:49:02','/sipimss_censo/index.php/perfil/get_data_ajax_actividad','NULL','::1',1,NULL,'actividad_docente_gral','EMPLEADO_CVE','{\"ANIOS_DEDICADOS\":\"47\",\"EJER_PREDOMI_CVE\":\"6\",\"EMPLEADO_CVE\":\"1\"}'),(100,'2016-07-14 22:50:54','/sipimss_censo/index.php/perfil/get_data_ajax_actividad','NULL','::1',1,NULL,'actividad_docente_gral','EMPLEADO_CVE','{\"ANIOS_DEDICADOS\":\"47\",\"EJER_PREDOMI_CVE\":\"6\",\"EMPLEADO_CVE\":\"1\"}'),(101,'2016-07-14 23:53:02','/sipimss_censo/index.php/perfil/get_data_ajax_actividad_cuerpo_modal/1/1/0','NULL','127.0.0.1',1,NULL,'emp_actividad_docente','EMP_ACT_DOCENTE_CVE:','{\"emp_actividad_docente\":{\"TIP_ACT_DOC_CVE\":\"1\",\"EAD_NOMBRE_CURSO\":\"dfgdf\",\"ROL_DESEMPENIA_CVE\":\"2\",\"INS_AVALA_CVE\":\"3\",\"EAD_EXTRA_INS_AVALA\":\"Si\",\"LICENCIATURA_CVE\":\"2\",\"MODALIDAD_CVE\":\"2\",\"EAD_ANIO_CURSO\":\"1902\",\"EAD_DURACION\":\"4\",\"COMPROBANTE_CVE\":55,\"ACT_DOC_GRAL_CVE\":\"3\",\"EMP_ACT_DOCENTE_CVE\":62}}'),(102,'2016-07-14 23:55:38','/sipimss_censo/index.php/perfil/get_data_ajax_actividad_cuerpo_modal/1/1/0','NULL','127.0.0.1',1,NULL,'emp_actividad_docente','EMP_ACT_DOCENTE_CVE:63','{\"emp_actividad_docente\":{\"TIP_ACT_DOC_CVE\":\"1\",\"EAD_NOMBRE_CURSO\":\"dfghd\",\"ROL_DESEMPENIA_CVE\":\"2\",\"INS_AVALA_CVE\":\"2\",\"EAD_EXTRA_INS_AVALA\":\"Si\",\"LICENCIATURA_CVE\":\"2\",\"MODALIDAD_CVE\":\"1\",\"EAD_ANIO_CURSO\":\"1902\",\"EAD_DURACION\":\"4\",\"COMPROBANTE_CVE\":56,\"ACT_DOC_GRAL_CVE\":\"3\",\"EMP_ACT_DOCENTE_CVE\":63}}'),(103,'2016-07-14 23:56:36','/sipimss_censo/index.php/perfil/get_data_ajax_actividad_cuerpo_modal/6/1/0','NULL','127.0.0.1',1,NULL,'emp_actividad_docente','EMP_ACT_DOCENTE_CVE:64','{\"emp_actividad_docente\":{\"TIP_ACT_DOC_CVE\":\"6\",\"AREA_CVE\":\"2\",\"EAD_NOMBRE_MATERIA_IMPARTIO\":\"dfgdfg\",\"ROL_DESEMPENIA_CVE\":\"2\",\"INS_AVALA_CVE\":\"2\",\"EAD_EXTRA_INS_AVALA\":\"Si\",\"MODALIDAD_CVE\":\"3\",\"EAD_ANIO_CURSO\":\"1902\",\"EAD_DURACION\":\"4\",\"COMPROBANTE_CVE\":57,\"ACT_DOC_GRAL_CVE\":\"3\",\"EMP_ACT_DOCENTE_CVE\":64}}'),(104,'2016-07-15 00:02:31','/sipimss_censo/index.php/perfil/get_data_ajax_actividad_cuerpo_modal/14/1/0','','127.0.0.1',1,NULL,'emp_educacion_distancia','EMP_EDU_DISTANCIA_CVE:1','{\"emp_educacion_distancia\":{\"TIP_ACT_DOC_CVE\":\"14\",\"EED_NOMBRE_CURSO\":\"asdasd\",\"TIPO_CURSO_CVE\":\"3\",\"EDD_CUR_ANIO\":\"1904\",\"FOLIO_CONSTANCIA\":\"2332\",\"ROL_DESEMPENIA_CVE\":\"1\",\"EED_DURACION\":\"5\",\"COMPROBANTE_CVE\":58,\"ACT_DOC_GRAL_CVE\":\"3\",\"EMP_EDU_DISTANCIA_CVE\":1}}'),(105,'2016-07-15 00:05:13','/sipimss_censo/index.php/perfil/get_data_ajax_actividad_cuerpo_modal/8/1/0','insert','127.0.0.1',1,NULL,'emp_actividad_docente','EMP_ACT_DOCENTE_CVE:65','{\"emp_actividad_docente\":{\"TIP_ACT_DOC_CVE\":\"8\",\"EAD_NOMBRE_CURSO\":\"sdfdfsdfsdf\",\"ROL_DESEMPENIA_CVE\":\"3\",\"INS_AVALA_CVE\":\"2\",\"EAD_EXTRA_INS_AVALA\":\"Si\",\"MODALIDAD_CVE\":\"1\",\"EAD_ANIO_CURSO\":\"1902\",\"EAD_DURACION\":\"3\",\"COMPROBANTE_CVE\":59,\"ACT_DOC_GRAL_CVE\":\"3\",\"EMP_ACT_DOCENTE_CVE\":65}}'),(106,'2016-07-15 00:07:30','/sipimss_censo/index.php/perfil/get_data_ajax_actividad_cuerpo_modal/14/1/0','insert','127.0.0.1',1,NULL,'emp_educacion_distancia','EMP_EDU_DISTANCIA_CVE:2','{\"emp_educacion_distancia\":{\"TIP_ACT_DOC_CVE\":\"14\",\"EED_NOMBRE_CURSO\":\"Cervantino\",\"TIPO_CURSO_CVE\":\"2\",\"EDD_CUR_ANIO\":\"1902\",\"FOLIO_CONSTANCIA\":\"56987\",\"ROL_DESEMPENIA_CVE\":\"2\",\"EED_DURACION\":\"3\",\"COMPROBANTE_CVE\":60,\"ACT_DOC_GRAL_CVE\":\"3\",\"EMP_EDU_DISTANCIA_CVE\":2}}'),(107,'2016-07-15 00:11:00','/sipimss_censo/index.php/perfil/get_data_ajax_actividad_cuerpo_modal/14/1/0','insert','127.0.0.1',1,NULL,'emp_educacion_distancia','EMP_EDU_DISTANCIA_CVE:3','{\"emp_educacion_distancia\":{\"TIP_ACT_DOC_CVE\":\"14\",\"EED_NOMBRE_CURSO\":\"asdfsdfsd\",\"TIPO_CURSO_CVE\":\"5\",\"EDD_CUR_ANIO\":\"1903\",\"FOLIO_CONSTANCIA\":\"2343\",\"ROL_DESEMPENIA_CVE\":\"3\",\"EED_DURACION\":\"4\",\"COMPROBANTE_CVE\":61,\"ACT_DOC_GRAL_CVE\":\"3\",\"EMP_EDU_DISTANCIA_CVE\":3}}'),(108,'2016-07-15 00:13:25','/sipimss_censo/index.php/perfil/get_data_ajax_actividad_cuerpo_modal/14/1/0','insert','127.0.0.1',1,NULL,'emp_educacion_distancia','EMP_EDU_DISTANCIA_CVE:4','{\"emp_educacion_distancia\":{\"TIP_ACT_DOC_CVE\":\"14\",\"EED_NOMBRE_CURSO\":\"asdasd\",\"TIPO_CURSO_CVE\":\"3\",\"EDD_CUR_ANIO\":\"1900\",\"FOLIO_CONSTANCIA\":\"231231\",\"ROL_DESEMPENIA_CVE\":\"2\",\"EED_DURACION\":\"3\",\"COMPROBANTE_CVE\":62,\"ACT_DOC_GRAL_CVE\":\"3\",\"EMP_EDU_DISTANCIA_CVE\":4}}'),(109,'2016-07-15 00:19:27','/sipimss_censo/index.php/perfil/get_data_ajax_actividad_cuerpo_modal/5/1/0','insert','127.0.0.1',1,NULL,'emp_esp_medica','EMP_ESP_MEDICA_CVE:1','{\"emp_esp_medica\":{\"TIP_ACT_DOC_CVE\":\"5\",\"ROL_DESEMPENIA_CVE\":\"2\",\"INS_AVALA_CVE\":\"3\",\"EEM_PAGO_EXTRA\":\"Si\",\"TIP_ESP_MEDICA_CVE\":\"2\",\"MODALIDAD_CVE\":\"3\",\"EEM_ANIO_FUNGIO\":\"1903\",\"EEM_FCH_INICIO\":\"2016/11/02\",\"EEM_FCH_FIN\":\"2016/11/02\",\"COMPROBANTE_CVE\":63,\"ACT_DOC_GRAL_CVE\":\"3\",\"EMP_ESP_MEDICA_CVE\":1}}'),(110,'2016-07-15 00:21:50','/sipimss_censo/index.php/perfil/get_data_ajax_actividad_cuerpo_modal/13/1/0','insert','127.0.0.1',1,NULL,'emp_actividad_docente','EMP_ACT_DOCENTE_CVE:66','{\"emp_actividad_docente\":{\"TIP_ACT_DOC_CVE\":\"13\",\"EAD_NOMBRE_CURSO\":\"sada\",\"ROL_DESEMPENIA_CVE\":\"3\",\"INS_AVALA_CVE\":\"2\",\"EAD_EXTRA_INS_AVALA\":\"Si\",\"MODALIDAD_CVE\":\"2\",\"EAD_ANIO_CURSO\":\"1902\",\"EAD_DURACION\":\"2\",\"COMPROBANTE_CVE\":64,\"ACT_DOC_GRAL_CVE\":\"3\",\"EMP_ACT_DOCENTE_CVE\":66}}'),(111,'2016-07-15 00:28:05','/sipimss_censo/index.php/perfil/get_data_ajax_actividad_cuerpo_modal/14/1/0','insert','127.0.0.1',1,NULL,'emp_educacion_distancia','EMP_EDU_DISTANCIA_CVE:5','{\"emp_educacion_distancia\":{\"TIP_ACT_DOC_CVE\":\"14\",\"EED_NOMBRE_CURSO\":\"dsfgdsfg\",\"TIPO_CURSO_CVE\":\"3\",\"EDD_CUR_ANIO\":\"1902\",\"FOLIO_CONSTANCIA\":\"445\",\"ROL_DESEMPENIA_CVE\":\"2\",\"EED_DURACION\":\"3\",\"COMPROBANTE_CVE\":65,\"ACT_DOC_GRAL_CVE\":\"3\",\"EMP_EDU_DISTANCIA_CVE\":5}}'),(112,'2016-07-15 00:29:57','/sipimss_censo/index.php/perfil/get_data_ajax_actividad_cuerpo_modal/14/1/0','insert','127.0.0.1',1,NULL,'emp_educacion_distancia','EMP_EDU_DISTANCIA_CVE:6','{\"emp_educacion_distancia\":{\"TIP_ACT_DOC_CVE\":\"14\",\"EED_NOMBRE_CURSO\":\"rtyrty\",\"TIPO_CURSO_CVE\":\"2\",\"EDD_CUR_ANIO\":\"1902\",\"FOLIO_CONSTANCIA\":\"54564\",\"ROL_DESEMPENIA_CVE\":\"2\",\"EED_DURACION\":\"2\",\"COMPROBANTE_CVE\":66,\"ACT_DOC_GRAL_CVE\":\"3\",\"EMP_EDU_DISTANCIA_CVE\":6}}'),(113,'2016-07-15 00:34:29','/sipimss_censo/index.php/perfil/get_data_ajax_actividad_cuerpo_modal/4/1/0','insert','127.0.0.1',1,NULL,'emp_actividad_docente','EMP_ACT_DOCENTE_CVE:67','{\"emp_actividad_docente\":{\"TIP_ACT_DOC_CVE\":\"4\",\"EAD_NOMBRE_CURSO\":\"sdfs\",\"ROL_DESEMPENIA_CVE\":\"3\",\"INS_AVALA_CVE\":\"5\",\"EAD_EXTRA_INS_AVALA\":\"Si\",\"LICENCIATURA_CVE\":\"2\",\"MODALIDAD_CVE\":\"1\",\"EAD_ANIO_CURSO\":\"1902\",\"EAD_DURACION\":\"2\",\"COMPROBANTE_CVE\":67,\"ACT_DOC_GRAL_CVE\":\"3\",\"EMP_ACT_DOCENTE_CVE\":67}}'),(114,'2016-07-15 00:36:13','/sipimss_censo/index.php/perfil/get_data_ajax_actividad_cuerpo_modal/6/1/0','insert','127.0.0.1',1,NULL,'emp_actividad_docente','EMP_ACT_DOCENTE_CVE:68','{\"emp_actividad_docente\":{\"TIP_ACT_DOC_CVE\":\"6\",\"AREA_CVE\":\"2\",\"EAD_NOMBRE_MATERIA_IMPARTIO\":\"dfger\",\"ROL_DESEMPENIA_CVE\":\"2\",\"INS_AVALA_CVE\":\"2\",\"EAD_EXTRA_INS_AVALA\":\"Si\",\"MODALIDAD_CVE\":\"2\",\"EAD_ANIO_CURSO\":\"1902\",\"EAD_DURACION\":\"2\",\"COMPROBANTE_CVE\":68,\"ACT_DOC_GRAL_CVE\":\"3\",\"EMP_ACT_DOCENTE_CVE\":68}}'),(115,'2016-07-15 00:41:46','/sipimss_censo/index.php/perfil/get_data_ajax_actividad_cuerpo_modal/1/1/0','insert','127.0.0.1',1,NULL,'emp_actividad_docente','EMP_ACT_DOCENTE_CVE:69','{\"emp_actividad_docente\":{\"TIP_ACT_DOC_CVE\":\"1\",\"EAD_NOMBRE_CURSO\":\"leas\",\"ROL_DESEMPENIA_CVE\":\"1\",\"INS_AVALA_CVE\":\"3\",\"EAD_EXTRA_INS_AVALA\":\"Si\",\"LICENCIATURA_CVE\":\"4\",\"MODALIDAD_CVE\":\"2\",\"EAD_ANIO_CURSO\":\"1902\",\"EAD_DURACION\":\"2\",\"COMPROBANTE_CVE\":69,\"ACT_DOC_GRAL_CVE\":\"3\",\"EMP_ACT_DOCENTE_CVE\":69}}'),(116,'2016-07-15 00:48:24','/sipimss_censo/index.php/perfil/get_data_ajax_actividad_cuerpo_modal/11/1/0','insert','127.0.0.1',1,NULL,'emp_actividad_docente','EMP_ACT_DOCENTE_CVE:70','{\"emp_actividad_docente\":{\"TIP_ACT_DOC_CVE\":\"11\",\"EAD_NOMBRE_CURSO\":\"lkjhlkjh\",\"ROL_DESEMPENIA_CVE\":\"3\",\"INS_AVALA_CVE\":\"3\",\"EAD_EXTRA_INS_AVALA\":\"Si\",\"MODALIDAD_CVE\":\"3\",\"EAD_ANIO_CURSO\":\"1902\",\"EAD_DURACION\":\"1\",\"COMPROBANTE_CVE\":70,\"ACT_DOC_GRAL_CVE\":\"3\",\"EMP_ACT_DOCENTE_CVE\":70}}'),(117,'2016-07-15 00:50:13','/sipimss_censo/index.php/perfil/get_data_ajax_actividad_cuerpo_modal/1/1/0','insert','127.0.0.1',1,NULL,'emp_actividad_docente','EMP_ACT_DOCENTE_CVE:71','{\"emp_actividad_docente\":{\"TIP_ACT_DOC_CVE\":\"1\",\"EAD_NOMBRE_CURSO\":\"serg\",\"ROL_DESEMPENIA_CVE\":\"2\",\"INS_AVALA_CVE\":\"4\",\"EAD_EXTRA_INS_AVALA\":\"Si\",\"LICENCIATURA_CVE\":\"1\",\"MODALIDAD_CVE\":\"2\",\"EAD_ANIO_CURSO\":\"1902\",\"EAD_DURACION\":\"2\",\"COMPROBANTE_CVE\":71,\"ACT_DOC_GRAL_CVE\":\"3\",\"EMP_ACT_DOCENTE_CVE\":71}}'),(118,'2016-07-15 00:52:29','/sipimss_censo/index.php/perfil/get_data_ajax_actividad_cuerpo_modal/9/1/0','insert','127.0.0.1',1,NULL,'emp_actividad_docente','EMP_ACT_DOCENTE_CVE:72','{\"emp_actividad_docente\":{\"TIP_ACT_DOC_CVE\":\"9\",\"EAD_NOMBRE_CURSO\":\"nu00f1knl\",\"ROL_DESEMPENIA_CVE\":\"2\",\"INS_AVALA_CVE\":\"4\",\"EAD_EXTRA_INS_AVALA\":\"Si\",\"MODALIDAD_CVE\":\"1\",\"EAD_ANIO_CURSO\":\"1902\",\"EAD_DURACION\":\"2\",\"COMPROBANTE_CVE\":72,\"ACT_DOC_GRAL_CVE\":\"3\",\"EMP_ACT_DOCENTE_CVE\":72}}'),(119,'2016-07-15 00:53:58','/sipimss_censo/index.php/perfil/get_data_ajax_actividad_cuerpo_modal/10/1/0','insert','127.0.0.1',1,NULL,'emp_actividad_docente','EMP_ACT_DOCENTE_CVE:73','{\"emp_actividad_docente\":{\"TIP_ACT_DOC_CVE\":\"10\",\"EAD_NOMBRE_CURSO\":\"yu\",\"ROL_DESEMPENIA_CVE\":\"3\",\"EAD_EXTRA_INS_AVALA\":\"Si\",\"AREA_CVE\":\"4\",\"MODALIDAD_CVE\":\"2\",\"EAD_ANIO_CURSO\":\"1901\",\"EAD_DURACION\":\"2\",\"COMPROBANTE_CVE\":73,\"ACT_DOC_GRAL_CVE\":\"3\",\"EMP_ACT_DOCENTE_CVE\":73}}'),(120,'2016-07-15 00:57:27','/sipimss_censo/index.php/perfil/get_data_ajax_actividad_cuerpo_modal/1/1/0','insert','127.0.0.1',1,NULL,'emp_actividad_docente','EMP_ACT_DOCENTE_CVE:74','{\"emp_actividad_docente\":{\"TIP_ACT_DOC_CVE\":\"1\",\"EAD_NOMBRE_CURSO\":\"ghj\",\"ROL_DESEMPENIA_CVE\":\"4\",\"INS_AVALA_CVE\":\"3\",\"EAD_EXTRA_INS_AVALA\":\"Si\",\"LICENCIATURA_CVE\":\"3\",\"MODALIDAD_CVE\":\"3\",\"EAD_ANIO_CURSO\":\"1901\",\"EAD_DURACION\":\"2\",\"COMPROBANTE_CVE\":74,\"ACT_DOC_GRAL_CVE\":\"3\",\"EMP_ACT_DOCENTE_CVE\":74}}'),(121,'2016-07-15 00:59:11','/sipimss_censo/index.php/perfil/get_data_ajax_actividad_cuerpo_modal/1/1/0','insert','127.0.0.1',1,NULL,'emp_actividad_docente','EMP_ACT_DOCENTE_CVE:75','{\"emp_actividad_docente\":{\"TIP_ACT_DOC_CVE\":\"1\",\"EAD_NOMBRE_CURSO\":\"fdgh\",\"ROL_DESEMPENIA_CVE\":\"4\",\"INS_AVALA_CVE\":\"3\",\"EAD_EXTRA_INS_AVALA\":\"Si\",\"LICENCIATURA_CVE\":\"3\",\"MODALIDAD_CVE\":\"2\",\"EAD_ANIO_CURSO\":\"1903\",\"EAD_DURACION\":\"3\",\"COMPROBANTE_CVE\":75,\"ACT_DOC_GRAL_CVE\":\"3\",\"EMP_ACT_DOCENTE_CVE\":75}}'),(122,'2016-07-15 01:01:10','/sipimss_censo/index.php/perfil/get_data_ajax_actividad_cuerpo_modal/10/1/0','insert','127.0.0.1',1,NULL,'emp_actividad_docente','EMP_ACT_DOCENTE_CVE:76','{\"emp_actividad_docente\":{\"TIP_ACT_DOC_CVE\":\"10\",\"EAD_NOMBRE_CURSO\":\"ili\",\"ROL_DESEMPENIA_CVE\":\"4\",\"EAD_EXTRA_INS_AVALA\":\"Si\",\"AREA_CVE\":\"2\",\"MODALIDAD_CVE\":\"3\",\"EAD_ANIO_CURSO\":\"1901\",\"EAD_DURACION\":\"2\",\"COMPROBANTE_CVE\":76,\"ACT_DOC_GRAL_CVE\":\"3\",\"EMP_ACT_DOCENTE_CVE\":76}}'),(123,'2016-07-15 01:06:16','/sipimss_censo/index.php/perfil/get_data_ajax_actividad_cuerpo_modal/14/1/0','insert','127.0.0.1',1,NULL,'emp_educacion_distancia','EMP_EDU_DISTANCIA_CVE:7','{\"emp_educacion_distancia\":{\"TIP_ACT_DOC_CVE\":\"14\",\"EED_NOMBRE_CURSO\":\"No lo se\",\"TIPO_CURSO_CVE\":\"4\",\"EDD_CUR_ANIO\":\"1902\",\"FOLIO_CONSTANCIA\":\"2343\",\"ROL_DESEMPENIA_CVE\":\"3\",\"EED_DURACION\":\"4\",\"COMPROBANTE_CVE\":77,\"ACT_DOC_GRAL_CVE\":\"3\",\"EMP_EDU_DISTANCIA_CVE\":7}}'),(124,'2016-07-15 01:08:37','/sipimss_censo/index.php/perfil/get_data_ajax_actividad_cuerpo_modal/14/1/0','insert','127.0.0.1',1,NULL,'emp_educacion_distancia','EMP_EDU_DISTANCIA_CVE:8','{\"emp_educacion_distancia\":{\"TIP_ACT_DOC_CVE\":\"14\",\"EED_NOMBRE_CURSO\":\"sdfs\",\"TIPO_CURSO_CVE\":\"3\",\"EDD_CUR_ANIO\":\"1902\",\"FOLIO_CONSTANCIA\":\"234desfd\",\"ROL_DESEMPENIA_CVE\":\"1\",\"EED_DURACION\":\"3\",\"COMPROBANTE_CVE\":78,\"ACT_DOC_GRAL_CVE\":\"3\",\"EMP_EDU_DISTANCIA_CVE\":8}}'),(125,'2016-07-15 01:10:21','/sipimss_censo/index.php/perfil/get_data_ajax_actividad_cuerpo_modal/14/1/0','insert','127.0.0.1',1,NULL,'emp_educacion_distancia','EMP_EDU_DISTANCIA_CVE:9','{\"emp_educacion_distancia\":{\"TIP_ACT_DOC_CVE\":\"14\",\"EED_NOMBRE_CURSO\":\"asdasd\",\"TIPO_CURSO_CVE\":\"2\",\"EDD_CUR_ANIO\":\"1909\",\"FOLIO_CONSTANCIA\":\"asdasd\",\"ROL_DESEMPENIA_CVE\":\"3\",\"EED_DURACION\":\"3\",\"COMPROBANTE_CVE\":79,\"ACT_DOC_GRAL_CVE\":\"3\",\"EMP_EDU_DISTANCIA_CVE\":9}}'),(126,'2016-07-15 01:13:28','/sipimss_censo/index.php/perfil/get_data_ajax_actividad_cuerpo_modal/1/1/0','insert','::1',1,NULL,'emp_actividad_docente','EMP_ACT_DOCENTE_CVE:77','{\"emp_actividad_docente\":{\"TIP_ACT_DOC_CVE\":\"1\",\"EAD_NOMBRE_CURSO\":\"adsas\",\"ROL_DESEMPENIA_CVE\":\"3\",\"INS_AVALA_CVE\":\"3\",\"EAD_EXTRA_INS_AVALA\":\"Si\",\"LICENCIATURA_CVE\":\"2\",\"MODALIDAD_CVE\":\"3\",\"EAD_ANIO_CURSO\":\"1902\",\"EAD_DURACION\":\"3\",\"COMPROBANTE_CVE\":80,\"ACT_DOC_GRAL_CVE\":\"3\",\"EMP_ACT_DOCENTE_CVE\":77}}'),(127,'2016-07-15 01:16:32','/sipimss_censo/index.php/perfil/get_data_ajax_actividad_cuerpo_modal/10/1/0','insert','::1',1,NULL,'emp_actividad_docente','EMP_ACT_DOCENTE_CVE:78','{\"emp_actividad_docente\":{\"TIP_ACT_DOC_CVE\":\"10\",\"EAD_NOMBRE_CURSO\":\"adsd\",\"ROL_DESEMPENIA_CVE\":\"2\",\"EAD_EXTRA_INS_AVALA\":\"Si\",\"AREA_CVE\":\"3\",\"MODALIDAD_CVE\":\"2\",\"EAD_ANIO_CURSO\":\"1903\",\"EAD_FCH_INICIO\":\"2016/05/02\",\"EAD_FCH_FIN\":\"2016/05/02\",\"EAD_DURACION\":\"4\",\"COMPROBANTE_CVE\":81,\"ACT_DOC_GRAL_CVE\":\"3\",\"EMP_ACT_DOCENTE_CVE\":78}}'),(128,'2016-07-15 01:18:44','/sipimss_censo/index.php/perfil/get_data_ajax_actividad_cuerpo_modal/14/1/0','insert','::1',1,NULL,'emp_educacion_distancia','EMP_EDU_DISTANCIA_CVE:10','{\"emp_educacion_distancia\":{\"TIP_ACT_DOC_CVE\":\"14\",\"EED_NOMBRE_CURSO\":\"fdgdfg\",\"TIPO_CURSO_CVE\":\"6\",\"EDD_CUR_ANIO\":\"1904\",\"FOLIO_CONSTANCIA\":\"sdr4ew\",\"ROL_DESEMPENIA_CVE\":\"2\",\"EDD_FCH_INICIO\":\"2015/11/02\",\"EED_FCH_FIN\":\"2016/11/02\",\"EED_DURACION\":\"\",\"COMPROBANTE_CVE\":82,\"ACT_DOC_GRAL_CVE\":\"3\",\"EMP_EDU_DISTANCIA_CVE\":10}}'),(129,'2016-07-15 01:20:28','/sipimss_censo/index.php/perfil/get_data_ajax_actividad','update','::1',1,NULL,'actividad_docente_gral','EMPLEADO_CVE','{\"ANIOS_DEDICADOS\":\"47\",\"EJER_PREDOMI_CVE\":\"6\",\"EMPLEADO_CVE\":\"1\"}'),(130,'2016-07-15 01:20:33','/sipimss_censo/index.php/perfil/get_data_ajax_actividad','update','::1',1,NULL,'actividad_docente_gral','EMPLEADO_CVE','{\"ANIOS_DEDICADOS\":\"50\",\"EJER_PREDOMI_CVE\":\"6\",\"EMPLEADO_CVE\":\"1\"}'),(131,'2016-07-15 01:20:48','/sipimss_censo/index.php/perfil/get_data_ajax_actividad','update','::1',1,NULL,'actividad_docente_gral','EMPLEADO_CVE','{\"ANIOS_DEDICADOS\":\"50\",\"EJER_PREDOMI_CVE\":\"3\",\"EMPLEADO_CVE\":\"1\"}'),(134,'2016-07-21 19:07:05','/2016/sipimss/index.php/registro','NULL','11.32.41.238',274,NULL,'NULL','274,12','{\"usuario\":{\"USU_MATRICULA\":\"311091402\",\"DELEGACION_CVE\":\"09\",\"USU_CORREO\":\"jesusz.unam@gmail.com\",\"USU_CONTRASENIA\":\"affd77e05aaae1e7a229c6c4725545fd612bf18dc41cbe6d349084fcf0848f2a261c7272a6200a4255019460550b4393e42d3df10115eaa3ec8bfc57ffc70686\",\"USU_NOMBRE\":\"JESUS ZOE\",\"USU_PATERNO\":\"DIAZ\",\"USU_MATERNO\":\"PELAEZ\",\"USU_GENERO\":\"M\",\"USU_CURP\":\"DIPJ840421HMCZLS09\",\"ADSCRIPCION_CVE\":\"09NC012520\",\"CATEGORIA_CVE\":\"36112580\",\"ESTADO_USUARIO_CVE\":1,\"USU_FCH_REGISTRO\":\"16/02/2015\"},\"empleado\":{\"EMP_NOMBRE\":\"JESUS ZOE\",\"EMP_APE_PATERNO\":\"DIAZ\",\"EMP_APE_MATERNO\":\"PELAEZ\",\"EMP_MATRICULA\":\"311091402\",\"EMP_CURP\":\"DIPJ840421HMCZLS09\",\"DELEGACION_CVE\":\"09\",\"USUARIO_CVE\":274,\"ADSCRIPCION_CVE\":\"09NC012520\",\"EMP_GENERO\":\"M\",\"EMP_EMAIL\":\"jesusz.unam@gmail.com\"}}'),(143,'2016-07-22 00:08:02','/sipimss_censo/index.php/registro','NULL','11.32.41.86',283,NULL,'{\"usuario\":{\"insert\":283},\"empleado\":{\"update\":1}}','283:1','{\"usuario\":{\"USU_MATRICULA\":\"311091476\",\"DELEGACION_CVE\":\"09\",\"USU_CORREO\":\"leylanyh@gmail.com\",\"USU_CONTRASENIA\":\"3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2\",\"USU_NOMBRE\":\"LEYLANI\",\"USU_PATERNO\":\"GARCIA\",\"USU_MATERNO\":\"BA&UELOS\",\"USU_GENERO\":\"F\",\"USU_CURP\":\"GABL800219MDFRXY08\",\"ADSCRIPCION_CVE\":\"09NC012520\",\"CATEGORIA_CVE\":\"35312180\",\"ESTADO_USUARIO_CVE\":1,\"USU_FCH_REGISTRO\":\"04/05/2015\"},\"empleado\":{\"USUARIO_CVE\":283,\"EMP_MATRICULA\":\"311091476\"}}'),(144,'2016-07-23 19:10:48','/sipimss_censo/index.php/perfil/get_data_ajax_eliminar_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":{\"delete\":\"4\"}}','4','{\"emp_act_inv_edu\":{\"EAID_CVE\":\"4\"}}'),(145,'2016-07-24 02:14:35','/sipimss_censo/index.php/perfil/ajax_add_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":\"insert:5\"}','NULL','{\"emp_act_inv_edu\":{\"TIP_ACT_DOC_CVE\":\"15\",\"EIAE_NOMBRE_INV\":\"fghfgh\",\"EAIE_FOLIO_ACEPTACION\":\"fghfgh\",\"TIP_ESTUDIO_CVE\":\"3\",\"TIP_PARTICIPACION_CVE\":\"2\",\"MED_DIVULGACION_CVE\":\"2\",\"COMPROBANTE_CVE\":83,\"EAID_CVE\":5}}'),(146,'2016-07-25 14:40:26','/sipimss_censo/index.php/perfil/ajax_add_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":\"insert:8\"}','NULL','{\"emp_act_inv_edu\":{\"TIP_ACT_DOC_CVE\":\"16\",\"EIAE_NOMBRE_INV\":\"dfgdfg\",\"EAIE_FOLIO_ACEPTACION\":\"gdfgdf\",\"TIP_ESTUDIO_CVE\":\"1\",\"TIP_PARTICIPACION_CVE\":\"1\",\"MED_DIVULGACION_CVE\":\"4\",\"EAIE_PUB_CITA\":\"gdfgdfg\",\"EAID_CVE\":8}}'),(147,'2016-07-25 14:41:42','/sipimss_censo/index.php/perfil/ajax_add_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":\"insert:9\"}','NULL','{\"emp_act_inv_edu\":{\"TIP_ACT_DOC_CVE\":\"16\",\"EIAE_NOMBRE_INV\":\"dfsgsg\",\"EAIE_FOLIO_ACEPTACION\":\"gsdfgs\",\"TIP_ESTUDIO_CVE\":\"1\",\"TIP_PARTICIPACION_CVE\":\"2\",\"MED_DIVULGACION_CVE\":\"4\",\"EAIE_PUB_CITA\":\"gsgddgs\",\"EAID_CVE\":9}}'),(148,'2016-07-25 14:42:00','/sipimss_censo/index.php/perfil/get_data_ajax_eliminar_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":{\"delete\":\"9\"}}','9','{\"emp_act_inv_edu\":{\"EAID_CVE\":\"9\"}}'),(149,'2016-07-25 14:42:28','/sipimss_censo/index.php/perfil/ajax_add_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":\"insert:10\"}','NULL','{\"emp_act_inv_edu\":{\"TIP_ACT_DOC_CVE\":\"15\",\"EIAE_NOMBRE_INV\":\"dsfgsetg\",\"EAIE_FOLIO_ACEPTACION\":\"dgfgdf\",\"TIP_ESTUDIO_CVE\":\"2\",\"TIP_PARTICIPACION_CVE\":\"2\",\"MED_DIVULGACION_CVE\":\"2\",\"COMPROBANTE_CVE\":84,\"EAID_CVE\":10}}'),(150,'2016-07-25 14:46:47','/sipimss_censo/index.php/perfil/ajax_add_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":\"insert:11\"}','NULL','{\"emp_act_inv_edu\":{\"TIP_ACT_DOC_CVE\":\"15\",\"EIAE_NOMBRE_INV\":\"FGHFG\",\"EAIE_FOLIO_ACEPTACION\":\"FGHFGHFGH123\",\"TIP_ESTUDIO_CVE\":\"1\",\"TIP_PARTICIPACION_CVE\":\"1\",\"MED_DIVULGACION_CVE\":\"4\",\"EAIE_PUB_CITA\":\"FGHFGH\",\"EAID_CVE\":11}}'),(151,'2016-07-25 14:48:59','/sipimss_censo/index.php/perfil/ajax_add_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":\"insert:12\"}','NULL','{\"emp_act_inv_edu\":{\"TIP_ACT_DOC_CVE\":\"15\",\"EIAE_NOMBRE_INV\":\"gdfgd\",\"EAIE_FOLIO_ACEPTACION\":\"dfgd\",\"TIP_ESTUDIO_CVE\":\"2\",\"TIP_PARTICIPACION_CVE\":\"2\",\"MED_DIVULGACION_CVE\":\"4\",\"EAIE_PUB_CITA\":\"dfgdfgdgd\",\"EMPLEADO_CVE\":\"1\",\"EAID_CVE\":12}}'),(152,'2016-07-25 14:57:13','/sipimss_censo/index.php/perfil/ajax_add_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":\"insert:13\"}','NULL','{\"emp_act_inv_edu\":{\"TIP_ACT_DOC_CVE\":\"15\",\"EIAE_NOMBRE_INV\":\"dasdasd\",\"EAIE_FOLIO_ACEPTACION\":\"asdasd\",\"TIP_ESTUDIO_CVE\":\"1\",\"TIP_PARTICIPACION_CVE\":\"2\",\"MED_DIVULGACION_CVE\":\"4\",\"EAIE_PUB_CITA\":\"&lt;dsadasddasdads \",\"EMPLEADO_CVE\":\"1\",\"EAID_CVE\":13}}'),(153,'2016-07-25 15:00:44','/sipimss_censo/index.php/perfil/get_data_ajax_eliminar_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":{\"delete\":\"13\"}}','13','{\"emp_act_inv_edu\":{\"EAID_CVE\":\"13\"}}'),(154,'2016-07-25 15:03:12','/sipimss_censo/index.php/perfil/ajax_add_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":\"insert:14\"}','NULL','{\"emp_act_inv_edu\":{\"TIP_ACT_DOC_CVE\":\"15\",\"EIAE_NOMBRE_INV\":\"fghfgh\",\"EAIE_FOLIO_ACEPTACION\":\"fghfgh\",\"TIP_ESTUDIO_CVE\":\"2\",\"TIP_PARTICIPACION_CVE\":\"1\",\"MED_DIVULGACION_CVE\":\"2\",\"EMPLEADO_CVE\":\"1\",\"COMPROBANTE_CVE\":85,\"EAID_CVE\":14}}'),(155,'2016-07-25 15:05:59','/sipimss_censo/index.php/perfil/ajax_add_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":\"insert:15\"}','NULL','{\"emp_act_inv_edu\":{\"TIP_ACT_DOC_CVE\":\"15\",\"EIAE_NOMBRE_INV\":\"ghjghj\",\"EAIE_FOLIO_ACEPTACION\":\"ghjghj\",\"TIP_ESTUDIO_CVE\":\"2\",\"TIP_PARTICIPACION_CVE\":\"1\",\"MED_DIVULGACION_CVE\":\"4\",\"EAIE_PUB_CITA\":\"ghjghjgh\",\"EMPLEADO_CVE\":\"1\",\"EAID_CVE\":15}}'),(156,'2016-07-25 15:14:42','/sipimss_censo/index.php/perfil/ajax_add_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":\"insert:16\"}','NULL','{\"emp_act_inv_edu\":{\"TIP_ACT_DOC_CVE\":\"15\",\"EIAE_NOMBRE_INV\":\"dasd\",\"EAIE_FOLIO_ACEPTACION\":\"asdasd\",\"TIP_ESTUDIO_CVE\":\"2\",\"TIP_PARTICIPACION_CVE\":\"1\",\"MED_DIVULGACION_CVE\":\"3\",\"EAIE_PUB_CITA\":\"adsasdasd\",\"EMPLEADO_CVE\":\"1\",\"EAID_CVE\":16}}'),(157,'2016-07-25 15:17:03','/sipimss_censo/index.php/perfil/ajax_add_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":\"insert:17\"}','NULL','{\"emp_act_inv_edu\":{\"TIP_ACT_DOC_CVE\":\"15\",\"EIAE_NOMBRE_INV\":\"sdfsd\",\"EAIE_FOLIO_ACEPTACION\":\"dfsfsdf\",\"TIP_ESTUDIO_CVE\":\"2\",\"TIP_PARTICIPACION_CVE\":\"1\",\"MED_DIVULGACION_CVE\":\"4\",\"EAIE_PUB_CITA\":\"sdfdsf\",\"EMPLEADO_CVE\":\"1\",\"EAID_CVE\":17}}'),(158,'2016-07-25 15:20:28','/sipimss_censo/index.php/perfil/ajax_add_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":\"insert:18\"}','NULL','{\"emp_act_inv_edu\":{\"TIP_ACT_DOC_CVE\":\"16\",\"EIAE_NOMBRE_INV\":\"dsfsdf\",\"EAIE_FOLIO_ACEPTACION\":\"sdfsdf\",\"TIP_ESTUDIO_CVE\":\"3\",\"TIP_PARTICIPACION_CVE\":\"1\",\"MED_DIVULGACION_CVE\":\"3\",\"EAIE_PUB_CITA\":\"sdfsdfdsf\",\"EMPLEADO_CVE\":\"1\",\"EAID_CVE\":18}}'),(159,'2016-07-25 15:21:42','/sipimss_censo/index.php/perfil/ajax_add_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":\"insert:19\"}','NULL','{\"emp_act_inv_edu\":{\"TIP_ACT_DOC_CVE\":\"15\",\"EIAE_NOMBRE_INV\":\"sdfsdf\",\"EAIE_FOLIO_ACEPTACION\":\"sdfsdf\",\"TIP_ESTUDIO_CVE\":\"2\",\"TIP_PARTICIPACION_CVE\":\"1\",\"MED_DIVULGACION_CVE\":\"3\",\"EAIE_PUB_CITA\":\"sdfsdffsdfs sdf sdf sfs dfdsf\",\"EMPLEADO_CVE\":\"1\",\"EAID_CVE\":19}}'),(160,'2016-07-26 00:43:47','/sipimss_censo/index.php/perfil/ajax_add_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":\"insert:20\"}','NULL','{\"emp_act_inv_edu\":{\"TIP_ACT_DOC_CVE\":\"15\",\"EIAE_NOMBRE_INV\":\"fghfgh\",\"EAIE_FOLIO_ACEPTACION\":\"fghfgh\",\"TIP_ESTUDIO_CVE\":\"2\",\"TIP_PARTICIPACION_CVE\":\"1\",\"MED_DIVULGACION_CVE\":\"2\",\"EMPLEADO_CVE\":\"1\",\"COMPROBANTE_CVE\":86,\"EAID_CVE\":20}}'),(161,'2016-07-26 00:50:24','/sipimss_censo/index.php/perfil/get_data_ajax_eliminar_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":{\"delete\":\"2\"}}','2','{\"emp_act_inv_edu\":{\"EAID_CVE\":\"2\"}}'),(162,'2016-07-27 14:57:28','/sipimss_censo/index.php/perfil/ajax_add_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":\"insert:21\"}','NULL','{\"emp_act_inv_edu\":{\"TIP_ACT_DOC_CVE\":\"15\",\"EIAE_NOMBRE_INV\":\"gdfgd\",\"EAIE_FOLIO_ACEPTACION\":\"dfgd\",\"TIP_ESTUDIO_CVE\":\"2\",\"TIP_PARTICIPACION_CVE\":\"2\",\"MED_DIVULGACION_CVE\":\"4\",\"EAIE_PUB_CITA\":\"dfgdfgdgd\",\"EMPLEADO_CVE\":\"1\",\"EAID_CVE\":21}}'),(163,'2016-07-27 17:17:21','/sipimss_censo/index.php/perfil/ajax_add_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":\"insert:22\"}','NULL','{\"emp_act_inv_edu\":{\"TIP_ACT_DOC_CVE\":\"15\",\"EIAE_NOMBRE_INV\":\"gdfgd\",\"EAIE_FOLIO_ACEPTACION\":\"dfgd\",\"TIP_ESTUDIO_CVE\":\"2\",\"TIP_PARTICIPACION_CVE\":\"2\",\"MED_DIVULGACION_CVE\":\"4\",\"EAIE_PUB_CITA\":\"dfgdfgdgd\",\"EMPLEADO_CVE\":\"1\",\"EAID_CVE\":22}}'),(164,'2016-07-27 17:17:52','/sipimss_censo/index.php/perfil/ajax_add_investigacion','NULL','11.32.41.86',1,NULL,'{\"comprobante\":\"insert:87\",\"emp_act_inv_edu\":\"insert:23\"}','NULL','{\"comprobante\":{\"TIPO_COMPROBANTE_CVE\":\"3\",\"COM_NOMBRE\":\"Modelo de actividad \",\"COMPROBANTE_CVE\":87},\"emp_act_inv_edu\":{\"TIP_ACT_DOC_CVE\":\"15\",\"EIAE_NOMBRE_INV\":\"fghfgh\",\"EAIE_FOLIO_ACEPTACION\":\"fghfgh\",\"TIP_ESTUDIO_CVE\":\"2\",\"TIP_PARTICIPACION_CVE\":\"1\",\"MED_DIVULGACION_CVE\":\"2\",\"EMPLEADO_CVE\":\"1\",\"COMPROBANTE_CVE\":87,\"EAID_CVE\":23}}'),(165,'2016-07-27 17:18:06','/sipimss_censo/index.php/perfil/ajax_add_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":\"insert:24\"}','NULL','{\"emp_act_inv_edu\":{\"TIP_ACT_DOC_CVE\":\"15\",\"EIAE_NOMBRE_INV\":\"gdfgd\",\"EAIE_FOLIO_ACEPTACION\":\"dfgd\",\"TIP_ESTUDIO_CVE\":\"2\",\"TIP_PARTICIPACION_CVE\":\"2\",\"MED_DIVULGACION_CVE\":\"4\",\"EAIE_PUB_CITA\":\"dfgdfgdgd\",\"EMPLEADO_CVE\":\"1\",\"EAID_CVE\":24}}'),(166,'2016-07-27 17:18:32','/sipimss_censo/index.php/perfil/ajax_add_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":\"insert:25\"}','NULL','{\"emp_act_inv_edu\":{\"TIP_ACT_DOC_CVE\":\"15\",\"EIAE_NOMBRE_INV\":\"gdfgd\",\"EAIE_FOLIO_ACEPTACION\":\"dfgd\",\"TIP_ESTUDIO_CVE\":\"2\",\"TIP_PARTICIPACION_CVE\":\"2\",\"MED_DIVULGACION_CVE\":\"4\",\"EAIE_PUB_CITA\":\"dfgdfgdgd\",\"EMPLEADO_CVE\":\"1\",\"EAID_CVE\":25}}'),(167,'2016-07-27 18:07:14','/sipimss_censo/index.php/perfil/ajax_update_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":\"update:12\"}','NULL','{\"emp_act_inv_edu\":{\"TIP_ACT_DOC_CVE\":\"15\",\"EIAE_NOMBRE_INV\":\"Mal\",\"EAIE_FOLIO_ACEPTACION\":\"dfgd\",\"TIP_ESTUDIO_CVE\":\"2\",\"TIP_PARTICIPACION_CVE\":\"2\",\"MED_DIVULGACION_CVE\":\"4\",\"EAIE_PUB_CITA\":\"dfgdfgdgd\",\"COMPROBANTE_CVE\":null,\"EAID_CVE\":12}}'),(168,'2016-07-27 18:07:55','/sipimss_censo/index.php/perfil/ajax_update_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":\"update:14\"}','NULL','{\"emp_act_inv_edu\":{\"TIP_ACT_DOC_CVE\":\"15\",\"EIAE_NOMBRE_INV\":\"Bien\",\"EAIE_FOLIO_ACEPTACION\":\"fghfgh\",\"TIP_ESTUDIO_CVE\":\"2\",\"TIP_PARTICIPACION_CVE\":\"1\",\"MED_DIVULGACION_CVE\":\"2\",\"EAIE_PUB_CITA\":null,\"EAID_CVE\":14}}'),(169,'2016-07-27 18:12:59','/sipimss_censo/index.php/perfil/ajax_update_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":\"update:14\"}','NULL','{\"emp_act_inv_edu\":{\"TIP_ACT_DOC_CVE\":\"15\",\"EIAE_NOMBRE_INV\":\"Bien ma\",\"EAIE_FOLIO_ACEPTACION\":\"fghfgh\",\"TIP_ESTUDIO_CVE\":\"2\",\"TIP_PARTICIPACION_CVE\":\"1\",\"MED_DIVULGACION_CVE\":\"2\",\"EAIE_PUB_CITA\":null,\"EAID_CVE\":14}}'),(170,'2016-07-27 18:20:18','/sipimss_censo/index.php/perfil/ajax_update_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":\"update:14\"}','NULL','{\"emp_act_inv_edu\":{\"TIP_ACT_DOC_CVE\":\"15\",\"EIAE_NOMBRE_INV\":\"Bien malisimo\",\"EAIE_FOLIO_ACEPTACION\":\"fghfgh\",\"TIP_ESTUDIO_CVE\":\"2\",\"TIP_PARTICIPACION_CVE\":\"1\",\"MED_DIVULGACION_CVE\":\"3\",\"COMPROBANTE_CVE\":null,\"EAIE_PUB_CITA\":\"Bien revistassssssss\",\"EAID_CVE\":14}}'),(171,'2016-07-27 18:21:25','/sipimss_censo/index.php/perfil/ajax_update_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":\"update:20\"}','NULL','{\"emp_act_inv_edu\":{\"TIP_ACT_DOC_CVE\":\"15\",\"EIAE_NOMBRE_INV\":\"Coprobante leas\",\"EAIE_FOLIO_ACEPTACION\":\"fghfgh\",\"TIP_ESTUDIO_CVE\":\"2\",\"TIP_PARTICIPACION_CVE\":\"1\",\"MED_DIVULGACION_CVE\":\"4\",\"EAIE_PUB_CITA\":\"Librossssssssssssss locos\",\"COMPROBANTE_CVE\":null,\"EAID_CVE\":20}}'),(172,'2016-07-27 18:24:26','/sipimss_censo/index.php/perfil/ajax_update_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":\"update:23\",\"comprobante\":\"delete:87\"}','NULL','{\"emp_act_inv_edu\":{\"TIP_ACT_DOC_CVE\":\"16\",\"EIAE_NOMBRE_INV\":\"Bien \",\"EAIE_FOLIO_ACEPTACION\":\"fghfgh\",\"TIP_ESTUDIO_CVE\":\"2\",\"TIP_PARTICIPACION_CVE\":\"2\",\"MED_DIVULGACION_CVE\":\"3\",\"COMPROBANTE_CVE\":null,\"EAIE_PUB_CITA\":\"sdfsdfsdfsdfsdffdsdf sdf sdfRevista \",\"EAID_CVE\":23},\"comprobante\":{\"COMPROBANTE_CVE\":\"87\",\"COM_NOMBRE\":\"Modelo de actividad \",\"TIPO_COMPROBANTE_CVE\":\"3\"}}'),(173,'2016-07-27 18:33:54','/sipimss_censo/index.php/perfil/ajax_add_investigacion','NULL','11.32.41.86',1,NULL,'{\"comprobante\":\"insert:89\",\"emp_act_inv_edu\":\"insert:26\"}','NULL','{\"comprobante\":{\"TIPO_COMPROBANTE_CVE\":\"2\",\"COM_NOMBRE\":\"SIPIMSS_v6.3_ModeloFisico_2016_04_15.pdf\",\"COMPROBANTE_CVE\":89},\"emp_act_inv_edu\":{\"TIP_ACT_DOC_CVE\":\"16\",\"EIAE_NOMBRE_INV\":\"Nuevo 1.0\",\"EAIE_FOLIO_ACEPTACION\":\"15-cc\",\"TIP_ESTUDIO_CVE\":\"1\",\"TIP_PARTICIPACION_CVE\":\"1\",\"MED_DIVULGACION_CVE\":\"1\",\"EMPLEADO_CVE\":\"1\",\"COMPROBANTE_CVE\":89,\"EAID_CVE\":26}}'),(174,'2016-07-27 18:36:34','/sipimss_censo/index.php/perfil/get_data_ajax_eliminar_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":{\"delete\":\"19\"}}','19','{\"emp_act_inv_edu\":{\"EAID_CVE\":\"19\"}}'),(175,'2016-07-27 18:37:27','/sipimss_censo/index.php/perfil/ajax_add_investigacion','NULL','11.32.41.86',1,NULL,'{\"comprobante\":\"insert-90\",\"emp_act_inv_edu\":\"insert-27\"}','NULL','{\"comprobante\":{\"TIPO_COMPROBANTE_CVE\":\"2\",\"COM_NOMBRE\":\"SIPIMSS_v6.3_ModeloF\",\"COMPROBANTE_CVE\":90},\"emp_act_inv_edu\":{\"TIP_ACT_DOC_CVE\":\"16\",\"EIAE_NOMBRE_INV\":\"Nuevo 1.0\",\"EAIE_FOLIO_ACEPTACION\":\"15-cc\",\"TIP_ESTUDIO_CVE\":\"1\",\"TIP_PARTICIPACION_CVE\":\"1\",\"MED_DIVULGACION_CVE\":\"1\",\"EMPLEADO_CVE\":\"1\",\"COMPROBANTE_CVE\":90,\"EAID_CVE\":27}}'),(176,'2016-07-27 18:39:38','/sipimss_censo/index.php/perfil/ajax_add_investigacion','NULL','11.32.41.86',1,NULL,'{\"comprobante\":\"insert-91\",\"emp_act_inv_edu\":\"insert-28\"}','NULL','{\"comprobante\":{\"TIPO_COMPROBANTE_CVE\":\"1\",\"COM_NOMBRE\":\"SIPIMSS_v6.3_ModeloFisico_2016_04_15.pdf\",\"COMPROBANTE_CVE\":91},\"emp_act_inv_edu\":{\"TIP_ACT_DOC_CVE\":\"15\",\"EIAE_NOMBRE_INV\":\"Nuevo 232323\",\"EAIE_FOLIO_ACEPTACION\":\"12der\",\"TIP_ESTUDIO_CVE\":\"1\",\"TIP_PARTICIPACION_CVE\":\"1\",\"MED_DIVULGACION_CVE\":\"2\",\"EMPLEADO_CVE\":\"1\",\"COMPROBANTE_CVE\":91,\"EAID_CVE\":28}}'),(177,'2016-07-27 18:41:40','/sipimss_censo/index.php/perfil/ajax_add_investigacion','NULL','11.32.41.86',1,NULL,'{\"comprobante\":\"insert-92\",\"emp_act_inv_edu\":\"insert-29\"}','NULL','{\"comprobante\":{\"TIPO_COMPROBANTE_CVE\":\"2\",\"COM_NOMBRE\":\"SIPIMSS_v6.3_ModeloFisico_2016_04_15.pdf\",\"COMPROBANTE_CVE\":92},\"emp_act_inv_edu\":{\"TIP_ACT_DOC_CVE\":\"15\",\"EIAE_NOMBRE_INV\":\"zxczx\",\"EAIE_FOLIO_ACEPTACION\":\"zxczxcawqw122\",\"TIP_ESTUDIO_CVE\":\"2\",\"TIP_PARTICIPACION_CVE\":\"2\",\"MED_DIVULGACION_CVE\":\"1\",\"EMPLEADO_CVE\":\"1\",\"COMPROBANTE_CVE\":92,\"EAID_CVE\":29}}'),(178,'2016-07-27 20:43:48','/sipimss_censo/index.php/perfil/ajax_add_investigacion','NULL','11.32.41.86',1,NULL,'{\"comprobante\":\"insert-93\",\"emp_act_inv_edu\":\"insert-30\"}','NULL','{\"comprobante\":{\"TIPO_COMPROBANTE_CVE\":\"2\",\"COM_NOMBRE\":\"SIPIMSS_v6.3_ModeloF\",\"COMPROBANTE_CVE\":93},\"emp_act_inv_edu\":{\"TIP_ACT_DOC_CVE\":\"16\",\"EIAE_NOMBRE_INV\":\"Nuevo 1.0\",\"EAIE_FOLIO_ACEPTACION\":\"15-cc\",\"TIP_ESTUDIO_CVE\":\"1\",\"TIP_PARTICIPACION_CVE\":\"1\",\"MED_DIVULGACION_CVE\":\"1\",\"EMPLEADO_CVE\":\"1\",\"COMPROBANTE_CVE\":93,\"EAID_CVE\":30}}'),(179,'2016-07-27 20:44:30','/sipimss_censo/index.php/perfil/ajax_add_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":\"insert-31\"}','NULL','{\"emp_act_inv_edu\":{\"TIP_ACT_DOC_CVE\":\"16\",\"EIAE_NOMBRE_INV\":\"leas\",\"EAIE_FOLIO_ACEPTACION\":\"aa3e\",\"TIP_ESTUDIO_CVE\":\"2\",\"TIP_PARTICIPACION_CVE\":\"1\",\"MED_DIVULGACION_CVE\":\"3\",\"EAIE_PUB_CITA\":\"asdfasdasdf\",\"EMPLEADO_CVE\":\"1\",\"EAID_CVE\":31}}'),(180,'2016-07-27 20:44:54','/sipimss_censo/index.php/perfil/get_data_ajax_eliminar_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":{\"delete\":\"31\"}}','31','{\"emp_act_inv_edu\":{\"EAID_CVE\":\"31\"}}'),(181,'2016-07-27 20:44:58','/sipimss_censo/index.php/perfil/get_data_ajax_eliminar_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":{\"delete\":\"31\"}}','31','{\"emp_act_inv_edu\":{\"EAID_CVE\":\"31\"}}'),(182,'2016-07-27 20:45:27','/sipimss_censo/index.php/perfil/ajax_update_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":\"update-26\",\"comprobante\":\"delete-89\"}','NULL','{\"emp_act_inv_edu\":{\"TIP_ACT_DOC_CVE\":\"16\",\"EIAE_NOMBRE_INV\":\"Nuevo 1.0\",\"EAIE_FOLIO_ACEPTACION\":\"15-cc\",\"TIP_ESTUDIO_CVE\":\"1\",\"TIP_PARTICIPACION_CVE\":\"1\",\"MED_DIVULGACION_CVE\":\"4\",\"EAIE_PUB_CITA\":\"algo\",\"COMPROBANTE_CVE\":null,\"EAID_CVE\":26},\"comprobante\":{\"COMPROBANTE_CVE\":\"89\",\"COM_NOMBRE\":\"SIPIMSS_v6.3_ModeloF\",\"TIPO_COMPROBANTE_CVE\":\"2\"}}'),(183,'2016-07-27 21:00:02','/sipimss_censo/index.php/perfil/get_data_ajax_eliminar_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":{\"delete\":\"30\"},\"comprobante\":{\"delete\":{\"COMPROBANTE_CVE\":\"93\",\"COM_NOMBRE\":\"SIPIMSS_v6.3_ModeloF\",\"TIPO_COMPROBANTE_CVE\":\"2\"}}}','123','{\"emp_act_inv_edu\":{\"EAID_CVE\":\"30\"},\"comprobante\":{\"COMPROBANTE_CVE\":\"93\",\"COM_NOMBRE\":\"SIPIMSS_v6.3_ModeloF\",\"TIPO_COMPROBANTE_CVE\":\"2\"}}'),(184,'2016-07-27 21:00:05','/sipimss_censo/index.php/perfil/get_data_ajax_eliminar_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":{\"delete\":\"27\"},\"comprobante\":{\"delete\":{\"COMPROBANTE_CVE\":\"90\",\"COM_NOMBRE\":\"SIPIMSS_v6.3_ModeloF\",\"TIPO_COMPROBANTE_CVE\":\"2\"}}}','117','{\"emp_act_inv_edu\":{\"EAID_CVE\":\"27\"},\"comprobante\":{\"COMPROBANTE_CVE\":\"90\",\"COM_NOMBRE\":\"SIPIMSS_v6.3_ModeloF\",\"TIPO_COMPROBANTE_CVE\":\"2\"}}'),(185,'2016-07-27 21:01:12','/sipimss_censo/index.php/perfil/ajax_update_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":\"update-26\"}','NULL','{\"emp_act_inv_edu\":{\"TIP_ACT_DOC_CVE\":\"16\",\"EIAE_NOMBRE_INV\":\"Nuevo 1.045\",\"EAIE_FOLIO_ACEPTACION\":\"15-cc\",\"TIP_ESTUDIO_CVE\":\"1\",\"TIP_PARTICIPACION_CVE\":\"1\",\"MED_DIVULGACION_CVE\":\"4\",\"EAIE_PUB_CITA\":\"algo\",\"COMPROBANTE_CVE\":null,\"EAID_CVE\":26}}'),(186,'2016-07-27 21:06:20','/sipimss_censo/index.php/perfil/ajax_update_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":\"update-12\"}','NULL','{\"emp_act_inv_edu\":{\"TIP_ACT_DOC_CVE\":\"15\",\"EIAE_NOMBRE_INV\":\"Mal muy mal \",\"EAIE_FOLIO_ACEPTACION\":\"dfgd\",\"TIP_ESTUDIO_CVE\":\"2\",\"TIP_PARTICIPACION_CVE\":\"2\",\"MED_DIVULGACION_CVE\":\"4\",\"EAIE_PUB_CITA\":\"dfgdfgdgd\",\"COMPROBANTE_CVE\":null,\"EAID_CVE\":12}}'),(187,'2016-07-27 21:09:29','/sipimss_censo/index.php/perfil/ajax_update_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":\"update-12\"}','NULL','{\"emp_act_inv_edu\":{\"TIP_ACT_DOC_CVE\":\"15\",\"EIAE_NOMBRE_INV\":\"Mal muy mal \",\"EAIE_FOLIO_ACEPTACION\":\"dfgd\",\"TIP_ESTUDIO_CVE\":\"2\",\"TIP_PARTICIPACION_CVE\":\"2\",\"MED_DIVULGACION_CVE\":\"4\",\"EAIE_PUB_CITA\":\"dfgdfgdgd\",\"COMPROBANTE_CVE\":null,\"EAID_CVE\":12}}'),(188,'2016-07-27 21:10:58','/sipimss_censo/index.php/perfil/ajax_update_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":\"update-14\"}','NULL','{\"emp_act_inv_edu\":{\"TIP_ACT_DOC_CVE\":\"15\",\"EIAE_NOMBRE_INV\":\"Bien malisimo gggg\",\"EAIE_FOLIO_ACEPTACION\":\"fghfgh\",\"TIP_ESTUDIO_CVE\":\"2\",\"TIP_PARTICIPACION_CVE\":\"1\",\"MED_DIVULGACION_CVE\":\"3\",\"COMPROBANTE_CVE\":null,\"EAIE_PUB_CITA\":\"Bien revistassssssss\",\"EAID_CVE\":14}}'),(189,'2016-07-28 00:36:44','/sipimss_censo/index.php/perfil/get_data_ajax_eliminar_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":{\"delete\":\"12\"}}','12','{\"emp_act_inv_edu\":{\"EAID_CVE\":\"12\"}}'),(190,'2016-07-28 00:36:53','/sipimss_censo/index.php/perfil/get_data_ajax_eliminar_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":{\"delete\":\"14\"}}','14','{\"emp_act_inv_edu\":{\"EAID_CVE\":\"14\"}}'),(191,'2016-07-28 00:36:56','/sipimss_censo/index.php/perfil/get_data_ajax_eliminar_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":{\"delete\":\"15\"}}','15','{\"emp_act_inv_edu\":{\"EAID_CVE\":\"15\"}}'),(192,'2016-07-28 00:36:58','/sipimss_censo/index.php/perfil/get_data_ajax_eliminar_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":{\"delete\":\"16\"}}','16','{\"emp_act_inv_edu\":{\"EAID_CVE\":\"16\"}}'),(193,'2016-07-28 00:37:02','/sipimss_censo/index.php/perfil/get_data_ajax_eliminar_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":{\"delete\":\"17\"}}','17','{\"emp_act_inv_edu\":{\"EAID_CVE\":\"17\"}}'),(194,'2016-07-28 21:15:52','/sipimss_censo/index.php/perfil/get_data_ajax_eliminar_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":{\"delete\":\"23\"}}','23','{\"emp_act_inv_edu\":{\"EAID_CVE\":\"23\"}}'),(206,'2016-08-05 02:08:41','/sipimss_censo/index.php/designar_validador/get_data_seleccionar_validador','NULL','11.32.41.86',1,NULL,'null','1:','[]'),(207,'2016-08-05 02:19:10','/sipimss_censo/index.php/designar_validador/get_data_seleccionar_validador','NULL','11.32.41.86',1,NULL,'{\"validador\":{\"insert\":\"1\",\"VALIDADOR_CVE\":\"1\"}}','NULL','{\"validador\":{\"EMPLEADO_CVE\":\"23\",\"DEPARTAMENTO_CVE\":\"09NC012520\",\"DELEGACION_CVE\":\"09\",\"ROL_CVE\":2,\"VALIDADOR_CVE\":-1}}'),(208,'2016-08-05 02:42:53','/sipimss_censo/index.php/designar_validador/get_data_seleccionar_validador','NULL','11.32.41.86',1,NULL,'{\"validador\":{\"insert\":3,\"VALIDADOR_CVE\":3}}','NULL','{\"validador\":{\"EMPLEADO_CVE\":\"9\",\"DEPARTAMENTO_CVE\":\"09NC012520\",\"DELEGACION_CVE\":\"09\",\"ROL_CVE\":2,\"VALIDADOR_CVE\":3}}'),(209,'2016-08-05 23:17:01','/sipimss_censo/index.php/perfil/get_data_ajax_eliminar_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":{\"delete\":\"21\"}}','21','{\"emp_act_inv_edu\":{\"EAID_CVE\":\"21\"}}'),(210,'2016-08-05 23:47:18','/sipimss_censo/index.php/perfil/get_data_ajax_eliminar_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":{\"delete\":\"18\"}}','18','{\"emp_act_inv_edu\":{\"EAID_CVE\":\"18\"}}'),(211,'2016-08-06 00:38:07','/sipimss_censo/index.php/perfil/get_data_ajax_eliminar_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":{\"delete\":\"22\"}}','22','{\"emp_act_inv_edu\":{\"EAID_CVE\":\"22\"}}'),(212,'2016-08-06 00:39:37','/sipimss_censo/index.php/perfil/get_data_ajax_eliminar_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":{\"delete\":\"26\"}}','26','{\"emp_act_inv_edu\":{\"EAID_CVE\":\"26\"}}'),(213,'2016-08-06 00:40:17','/sipimss_censo/index.php/perfil/get_data_ajax_eliminar_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":{\"delete\":\"29\"},\"comprobante\":{\"delete\":{\"COMPROBANTE_CVE\":\"92\",\"COM_NOMBRE\":\"SIPIMSS_v6.3_ModeloF\",\"TIPO_COMPROBANTE_CVE\":\"2\"}}}','121','{\"emp_act_inv_edu\":{\"EAID_CVE\":\"29\"},\"comprobante\":{\"COMPROBANTE_CVE\":\"92\",\"COM_NOMBRE\":\"SIPIMSS_v6.3_ModeloF\",\"TIPO_COMPROBANTE_CVE\":\"2\"}}'),(214,'2016-08-06 21:27:09','/sipimss_censo/index.php/perfil/ajax_add_investigacion','NULL','11.32.41.86',1,NULL,'{\"comprobante\":\"insert-93\",\"emp_act_inv_edu\":\"insert-30\"}','NULL','{\"comprobante\":{\"TIPO_COMPROBANTE_CVE\":\"3\",\"COM_NOMBRE\":\"investigacion_10004696_1_28\",\"COMPROBANTE_CVE\":93},\"emp_act_inv_edu\":{\"TIP_ACT_DOC_CVE\":\"15\",\"EIAE_NOMBRE_INV\":\"sadas\",\"EAIE_FOLIO_ACEPTACION\":\"asda222321\",\"TIP_ESTUDIO_CVE\":\"1\",\"TIP_PARTICIPACION_CVE\":\"2\",\"MED_DIVULGACION_CVE\":\"1\",\"EMPLEADO_CVE\":\"1\",\"COMPROBANTE_CVE\":93,\"EAID_CVE\":30}}'),(215,'2016-08-06 21:33:53','/sipimss_censo/index.php/perfil/ajax_add_investigacion','NULL','11.32.41.86',1,NULL,'{\"comprobante\":\"insert-94\",\"emp_act_inv_edu\":\"insert-31\"}','NULL','{\"comprobante\":{\"TIPO_COMPROBANTE_CVE\":\"2\",\"COM_NOMBRE\":\"investigacion_10004696_1_31\",\"COMPROBANTE_CVE\":94},\"emp_act_inv_edu\":{\"TIP_ACT_DOC_CVE\":\"16\",\"EIAE_NOMBRE_INV\":\"Angola\",\"EAIE_FOLIO_ACEPTACION\":\"2345po\",\"TIP_ESTUDIO_CVE\":\"1\",\"TIP_PARTICIPACION_CVE\":\"1\",\"MED_DIVULGACION_CVE\":\"2\",\"EMPLEADO_CVE\":\"1\",\"COMPROBANTE_CVE\":94,\"EAID_CVE\":31}}'),(216,'2016-08-06 21:38:15','/sipimss_censo/index.php/perfil/ajax_add_investigacion','NULL','11.32.41.86',1,NULL,'{\"comprobante\":\"insert-95\",\"emp_act_inv_edu\":\"insert-32\"}','NULL','{\"comprobante\":{\"TIPO_COMPROBANTE_CVE\":\"2\",\"COM_NOMBRE\":\"investigacion_10004696_1_32\",\"COMPROBANTE_CVE\":95},\"emp_act_inv_edu\":{\"TIP_ACT_DOC_CVE\":\"16\",\"EIAE_NOMBRE_INV\":\"Angola\",\"EAIE_FOLIO_ACEPTACION\":\"2345po\",\"TIP_ESTUDIO_CVE\":\"1\",\"TIP_PARTICIPACION_CVE\":\"1\",\"MED_DIVULGACION_CVE\":\"2\",\"EMPLEADO_CVE\":\"1\",\"COMPROBANTE_CVE\":95,\"EAID_CVE\":32}}'),(217,'2016-08-06 21:40:21','/sipimss_censo/index.php/perfil/ajax_add_investigacion','NULL','11.32.41.86',1,NULL,'{\"comprobante\":\"insert-96\",\"emp_act_inv_edu\":\"insert-33\"}','NULL','{\"comprobante\":{\"TIPO_COMPROBANTE_CVE\":\"1\",\"COM_NOMBRE\":\"investigacion_10004696_1_33\",\"COMPROBANTE_CVE\":96},\"emp_act_inv_edu\":{\"TIP_ACT_DOC_CVE\":\"16\",\"EIAE_NOMBRE_INV\":\"sasda\",\"EAIE_FOLIO_ACEPTACION\":\"asdasd\",\"TIP_ESTUDIO_CVE\":\"1\",\"TIP_PARTICIPACION_CVE\":\"1\",\"MED_DIVULGACION_CVE\":\"2\",\"EMPLEADO_CVE\":\"1\",\"COMPROBANTE_CVE\":96,\"EAID_CVE\":33}}'),(218,'2016-08-06 21:41:29','/sipimss_censo/index.php/perfil/ajax_add_investigacion','NULL','11.32.41.86',1,NULL,'{\"comprobante\":\"insert-97\",\"emp_act_inv_edu\":\"insert-34\"}','NULL','{\"comprobante\":{\"TIPO_COMPROBANTE_CVE\":\"2\",\"COM_NOMBRE\":\"investigacion_10004696_2_34\",\"COMPROBANTE_CVE\":97},\"emp_act_inv_edu\":{\"TIP_ACT_DOC_CVE\":\"16\",\"EIAE_NOMBRE_INV\":\"wew\",\"EAIE_FOLIO_ACEPTACION\":\"werwe\",\"TIP_ESTUDIO_CVE\":\"2\",\"TIP_PARTICIPACION_CVE\":\"1\",\"MED_DIVULGACION_CVE\":\"2\",\"EMPLEADO_CVE\":\"1\",\"COMPROBANTE_CVE\":97,\"EAID_CVE\":34}}'),(219,'2016-08-06 22:01:24','/sipimss_censo/index.php/perfil/get_data_ajax_eliminar_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":{\"delete\":\"34\"},\"comprobante\":{\"delete\":{\"COMPROBANTE_CVE\":\"97\",\"COM_NOMBRE\":\"investigacion_100046\",\"TIPO_COMPROBANTE_CVE\":\"2\"}}}','131','{\"emp_act_inv_edu\":{\"EAID_CVE\":\"34\"},\"comprobante\":{\"COMPROBANTE_CVE\":\"97\",\"COM_NOMBRE\":\"investigacion_100046\",\"TIPO_COMPROBANTE_CVE\":\"2\"}}'),(220,'2016-08-06 22:02:01','/sipimss_censo/index.php/perfil/get_data_ajax_eliminar_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":{\"delete\":\"31\"},\"comprobante\":{\"delete\":{\"COMPROBANTE_CVE\":\"94\",\"COM_NOMBRE\":\"investigacion_100046\",\"TIPO_COMPROBANTE_CVE\":\"2\"}}}','125','{\"emp_act_inv_edu\":{\"EAID_CVE\":\"31\"},\"comprobante\":{\"COMPROBANTE_CVE\":\"94\",\"COM_NOMBRE\":\"investigacion_100046\",\"TIPO_COMPROBANTE_CVE\":\"2\"}}'),(221,'2016-08-06 22:03:43','/sipimss_censo/index.php/perfil/ajax_add_investigacion','NULL','11.32.41.86',1,NULL,'{\"comprobante\":\"insert-98\",\"emp_act_inv_edu\":\"insert-35\"}','NULL','{\"comprobante\":{\"TIPO_COMPROBANTE_CVE\":\"1\",\"COM_NOMBRE\":\"investigacion_10004696_2_34\",\"COMPROBANTE_CVE\":98},\"emp_act_inv_edu\":{\"TIP_ACT_DOC_CVE\":\"16\",\"EIAE_NOMBRE_INV\":\"borrar\",\"EAIE_FOLIO_ACEPTACION\":\"werwer\",\"TIP_ESTUDIO_CVE\":\"2\",\"TIP_PARTICIPACION_CVE\":\"2\",\"MED_DIVULGACION_CVE\":\"1\",\"EMPLEADO_CVE\":\"1\",\"COMPROBANTE_CVE\":98,\"EAID_CVE\":35}}'),(222,'2016-08-06 22:06:24','/sipimss_censo/index.php/perfil/ajax_add_investigacion','NULL','11.32.41.86',1,NULL,'{\"comprobante\":\"insert-99\",\"emp_act_inv_edu\":\"insert-36\"}','NULL','{\"comprobante\":{\"TIPO_COMPROBANTE_CVE\":\"2\",\"COM_NOMBRE\":\"investigacion_10004696_2_36\",\"COMPROBANTE_CVE\":99},\"emp_act_inv_edu\":{\"TIP_ACT_DOC_CVE\":\"15\",\"EIAE_NOMBRE_INV\":\"limpiovvvv\",\"EAIE_FOLIO_ACEPTACION\":\"asdadsq\",\"TIP_ESTUDIO_CVE\":\"2\",\"TIP_PARTICIPACION_CVE\":\"2\",\"MED_DIVULGACION_CVE\":\"2\",\"EMPLEADO_CVE\":\"1\",\"COMPROBANTE_CVE\":99,\"EAID_CVE\":36}}'),(223,'2016-08-06 22:07:21','/sipimss_censo/index.php/perfil/get_data_ajax_eliminar_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":{\"delete\":\"36\"},\"comprobante\":{\"delete\":{\"COMPROBANTE_CVE\":\"99\",\"COM_NOMBRE\":\"investigacion_100046\",\"TIPO_COMPROBANTE_CVE\":\"2\"}}}','135','{\"emp_act_inv_edu\":{\"EAID_CVE\":\"36\"},\"comprobante\":{\"COMPROBANTE_CVE\":\"99\",\"COM_NOMBRE\":\"investigacion_100046\",\"TIPO_COMPROBANTE_CVE\":\"2\"}}'),(224,'2016-08-06 22:08:33','/sipimss_censo/index.php/perfil/get_data_ajax_eliminar_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":{\"delete\":\"35\"},\"comprobante\":{\"delete\":{\"COMPROBANTE_CVE\":\"98\",\"COM_NOMBRE\":\"investigacion_100046\",\"TIPO_COMPROBANTE_CVE\":\"1\"}}}','133','{\"emp_act_inv_edu\":{\"EAID_CVE\":\"35\"},\"comprobante\":{\"COMPROBANTE_CVE\":\"98\",\"COM_NOMBRE\":\"investigacion_100046\",\"TIPO_COMPROBANTE_CVE\":\"1\"}}'),(225,'2016-08-06 22:11:05','/sipimss_censo/index.php/perfil/get_data_ajax_eliminar_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":{\"delete\":\"35\"}}','35','{\"emp_act_inv_edu\":{\"EAID_CVE\":\"35\"}}'),(226,'2016-08-06 22:11:55','/sipimss_censo/index.php/perfil/ajax_add_investigacion','NULL','11.32.41.86',1,NULL,'{\"comprobante\":\"insert-100\",\"emp_act_inv_edu\":\"insert-37\"}','NULL','{\"comprobante\":{\"TIPO_COMPROBANTE_CVE\":\"3\",\"COM_NOMBRE\":\"investigacion_10004696_1_34\",\"COMPROBANTE_CVE\":100},\"emp_act_inv_edu\":{\"TIP_ACT_DOC_CVE\":\"15\",\"EIAE_NOMBRE_INV\":\"seguro funciona\",\"EAIE_FOLIO_ACEPTACION\":\"ewrwer\",\"TIP_ESTUDIO_CVE\":\"1\",\"TIP_PARTICIPACION_CVE\":\"2\",\"MED_DIVULGACION_CVE\":\"1\",\"EMPLEADO_CVE\":\"1\",\"COMPROBANTE_CVE\":100,\"EAID_CVE\":37}}'),(227,'2016-08-06 22:12:12','/sipimss_censo/index.php/perfil/get_data_ajax_eliminar_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":{\"delete\":\"37\"},\"comprobante\":{\"delete\":{\"COMPROBANTE_CVE\":\"100\",\"COM_NOMBRE\":\"investigacion_100046\",\"TIPO_COMPROBANTE_CVE\":\"3\"}}}','137','{\"emp_act_inv_edu\":{\"EAID_CVE\":\"37\"},\"comprobante\":{\"COMPROBANTE_CVE\":\"100\",\"COM_NOMBRE\":\"investigacion_100046\",\"TIPO_COMPROBANTE_CVE\":\"3\"}}'),(228,'2016-08-06 22:18:47','/sipimss_censo/index.php/perfil/ajax_add_investigacion','NULL','11.32.41.86',1,NULL,'{\"comprobante\":\"insert-101\",\"emp_act_inv_edu\":\"insert-38\"}','NULL','{\"comprobante\":{\"TIPO_COMPROBANTE_CVE\":\"2\",\"COM_NOMBRE\":\"investigacion_10004696_1_34\",\"COMPROBANTE_CVE\":101},\"emp_act_inv_edu\":{\"TIP_ACT_DOC_CVE\":\"15\",\"EIAE_NOMBRE_INV\":\"dEFINITIVO\",\"EAIE_FOLIO_ACEPTACION\":\"ASDQW\",\"TIP_ESTUDIO_CVE\":\"1\",\"TIP_PARTICIPACION_CVE\":\"2\",\"MED_DIVULGACION_CVE\":\"2\",\"EMPLEADO_CVE\":\"1\",\"COMPROBANTE_CVE\":101,\"EAID_CVE\":38}}'),(229,'2016-08-06 22:20:49','/sipimss_censo/index.php/perfil/ajax_add_investigacion','NULL','11.32.41.86',1,NULL,'{\"comprobante\":\"insert-102\",\"emp_act_inv_edu\":\"insert-39\"}','NULL','{\"comprobante\":{\"TIPO_COMPROBANTE_CVE\":\"3\",\"COM_NOMBRE\":\"investigacion_10004696_1_39\",\"COMPROBANTE_CVE\":102},\"emp_act_inv_edu\":{\"TIP_ACT_DOC_CVE\":\"15\",\"EIAE_NOMBRE_INV\":\"VERDADEROOOO\",\"EAIE_FOLIO_ACEPTACION\":\"SDFEW\",\"TIP_ESTUDIO_CVE\":\"1\",\"TIP_PARTICIPACION_CVE\":\"1\",\"MED_DIVULGACION_CVE\":\"2\",\"EMPLEADO_CVE\":\"1\",\"COMPROBANTE_CVE\":102,\"EAID_CVE\":39}}'),(230,'2016-08-06 22:21:12','/sipimss_censo/index.php/perfil/get_data_ajax_eliminar_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":{\"delete\":\"39\"},\"comprobante\":{\"delete\":{\"COMPROBANTE_CVE\":\"102\",\"COM_NOMBRE\":\"investigacion_10004696_1_39\",\"TIPO_COMPROBANTE_CVE\":\"3\"}}}','141','{\"emp_act_inv_edu\":{\"EAID_CVE\":\"39\"},\"comprobante\":{\"COMPROBANTE_CVE\":\"102\",\"COM_NOMBRE\":\"investigacion_10004696_1_39\",\"TIPO_COMPROBANTE_CVE\":\"3\"}}'),(231,'2016-08-06 22:22:17','/sipimss_censo/index.php/perfil/get_data_ajax_eliminar_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":{\"delete\":\"20\"}}','20','{\"emp_act_inv_edu\":{\"EAID_CVE\":\"20\"}}'),(232,'2016-08-06 22:22:48','/sipimss_censo/index.php/perfil/ajax_add_investigacion','NULL','11.32.41.86',1,NULL,'{\"comprobante\":\"insert-103\",\"emp_act_inv_edu\":\"insert-40\"}','NULL','{\"comprobante\":{\"TIPO_COMPROBANTE_CVE\":\"2\",\"COM_NOMBRE\":\"investigacion_10004696_2_39\",\"COMPROBANTE_CVE\":103},\"emp_act_inv_edu\":{\"TIP_ACT_DOC_CVE\":\"16\",\"EIAE_NOMBRE_INV\":\"mIRA QUE YA FUNCIONA\",\"EAIE_FOLIO_ACEPTACION\":\"WERWET\",\"TIP_ESTUDIO_CVE\":\"2\",\"TIP_PARTICIPACION_CVE\":\"2\",\"MED_DIVULGACION_CVE\":\"2\",\"EMPLEADO_CVE\":\"1\",\"COMPROBANTE_CVE\":103,\"EAID_CVE\":40}}'),(233,'2016-08-06 22:23:27','/sipimss_censo/index.php/perfil/get_data_ajax_eliminar_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":{\"delete\":\"40\"},\"comprobante\":{\"delete\":{\"COMPROBANTE_CVE\":\"103\",\"COM_NOMBRE\":\"investigacion_10004696_2_39\",\"TIPO_COMPROBANTE_CVE\":\"2\"}}}','143','{\"emp_act_inv_edu\":{\"EAID_CVE\":\"40\"},\"comprobante\":{\"COMPROBANTE_CVE\":\"103\",\"COM_NOMBRE\":\"investigacion_10004696_2_39\",\"TIPO_COMPROBANTE_CVE\":\"2\"}}'),(234,'2016-08-06 22:25:17','/sipimss_censo/index.php/perfil/ajax_add_investigacion','NULL','11.32.41.86',1,NULL,'{\"comprobante\":\"insert-104\",\"emp_act_inv_edu\":\"insert-41\"}','NULL','{\"comprobante\":{\"TIPO_COMPROBANTE_CVE\":\"2\",\"COM_NOMBRE\":\"investigacion_10004696_1_39\",\"COMPROBANTE_CVE\":104},\"emp_act_inv_edu\":{\"TIP_ACT_DOC_CVE\":\"16\",\"EIAE_NOMBRE_INV\":\"ERWER\",\"EAIE_FOLIO_ACEPTACION\":\"FYUITU\",\"TIP_ESTUDIO_CVE\":\"1\",\"TIP_PARTICIPACION_CVE\":\"2\",\"MED_DIVULGACION_CVE\":\"1\",\"EMPLEADO_CVE\":\"1\",\"COMPROBANTE_CVE\":104,\"EAID_CVE\":41}}'),(235,'2016-08-06 22:27:19','/sipimss_censo/index.php/perfil/get_data_ajax_eliminar_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":{\"delete\":\"41\"},\"comprobante\":{\"delete\":{\"COMPROBANTE_CVE\":\"104\",\"COM_NOMBRE\":\"investigacion_10004696_1_39\",\"TIPO_COMPROBANTE_CVE\":\"2\"}}}','145','{\"emp_act_inv_edu\":{\"EAID_CVE\":\"41\"},\"comprobante\":{\"COMPROBANTE_CVE\":\"104\",\"COM_NOMBRE\":\"investigacion_10004696_1_39\",\"TIPO_COMPROBANTE_CVE\":\"2\"}}'),(236,'2016-08-06 22:27:40','/sipimss_censo/index.php/perfil/get_data_ajax_eliminar_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":{\"delete\":\"28\"},\"comprobante\":{\"delete\":{\"COMPROBANTE_CVE\":\"91\",\"COM_NOMBRE\":\"SIPIMSS_v6.3_ModeloF\",\"TIPO_COMPROBANTE_CVE\":\"1\"}}}','119','{\"emp_act_inv_edu\":{\"EAID_CVE\":\"28\"},\"comprobante\":{\"COMPROBANTE_CVE\":\"91\",\"COM_NOMBRE\":\"SIPIMSS_v6.3_ModeloF\",\"TIPO_COMPROBANTE_CVE\":\"1\"}}'),(237,'2016-08-06 22:31:39','/sipimss_censo/index.php/perfil/get_data_ajax_eliminar_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":{\"delete\":\"38\"},\"comprobante\":{\"delete\":{\"COMPROBANTE_CVE\":\"101\",\"COM_NOMBRE\":\"investigacion_10004696_1_34\",\"TIPO_COMPROBANTE_CVE\":\"2\"}}}','139','{\"emp_act_inv_edu\":{\"EAID_CVE\":\"38\"},\"comprobante\":{\"COMPROBANTE_CVE\":\"101\",\"COM_NOMBRE\":\"investigacion_10004696_1_34\",\"TIPO_COMPROBANTE_CVE\":\"2\"}}'),(238,'2016-08-06 22:31:42','/sipimss_censo/index.php/perfil/get_data_ajax_eliminar_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":{\"delete\":\"24\"}}','24','{\"emp_act_inv_edu\":{\"EAID_CVE\":\"24\"}}'),(239,'2016-08-06 22:31:47','/sipimss_censo/index.php/perfil/get_data_ajax_eliminar_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":{\"delete\":\"33\"},\"comprobante\":{\"delete\":{\"COMPROBANTE_CVE\":\"96\",\"COM_NOMBRE\":\"investigacion_100046\",\"TIPO_COMPROBANTE_CVE\":\"1\"}}}','129','{\"emp_act_inv_edu\":{\"EAID_CVE\":\"33\"},\"comprobante\":{\"COMPROBANTE_CVE\":\"96\",\"COM_NOMBRE\":\"investigacion_100046\",\"TIPO_COMPROBANTE_CVE\":\"1\"}}'),(240,'2016-08-06 22:31:51','/sipimss_censo/index.php/perfil/get_data_ajax_eliminar_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":{\"delete\":\"39\"}}','39','{\"emp_act_inv_edu\":{\"EAID_CVE\":\"39\"}}'),(241,'2016-08-06 22:32:37','/sipimss_censo/index.php/perfil/ajax_add_investigacion','NULL','11.32.41.86',1,NULL,'{\"comprobante\":\"insert-105\",\"emp_act_inv_edu\":\"insert-42\"}','NULL','{\"comprobante\":{\"TIPO_COMPROBANTE_CVE\":\"2\",\"COM_NOMBRE\":\"investigacion_10004696_2_33\",\"COMPROBANTE_CVE\":105},\"emp_act_inv_edu\":{\"TIP_ACT_DOC_CVE\":\"15\",\"EIAE_NOMBRE_INV\":\"asdasd\",\"EAIE_FOLIO_ACEPTACION\":\"asda\",\"TIP_ESTUDIO_CVE\":\"2\",\"TIP_PARTICIPACION_CVE\":\"1\",\"MED_DIVULGACION_CVE\":\"1\",\"EMPLEADO_CVE\":\"1\",\"COMPROBANTE_CVE\":105,\"EAID_CVE\":42}}'),(242,'2016-08-06 22:35:35','/sipimss_censo/index.php/perfil/get_data_ajax_eliminar_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":{\"delete\":\"25\"}}','25','{\"emp_act_inv_edu\":{\"EAID_CVE\":\"25\"}}'),(243,'2016-08-06 22:35:38','/sipimss_censo/index.php/perfil/get_data_ajax_eliminar_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":{\"delete\":\"30\"},\"comprobante\":{\"delete\":{\"COMPROBANTE_CVE\":\"93\",\"COM_NOMBRE\":\"investigacion_100046\",\"TIPO_COMPROBANTE_CVE\":\"3\"}}}','123','{\"emp_act_inv_edu\":{\"EAID_CVE\":\"30\"},\"comprobante\":{\"COMPROBANTE_CVE\":\"93\",\"COM_NOMBRE\":\"investigacion_100046\",\"TIPO_COMPROBANTE_CVE\":\"3\"}}'),(244,'2016-08-06 22:35:40','/sipimss_censo/index.php/perfil/get_data_ajax_eliminar_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":{\"delete\":\"32\"},\"comprobante\":{\"delete\":{\"COMPROBANTE_CVE\":\"95\",\"COM_NOMBRE\":\"investigacion_100046\",\"TIPO_COMPROBANTE_CVE\":\"2\"}}}','127','{\"emp_act_inv_edu\":{\"EAID_CVE\":\"32\"},\"comprobante\":{\"COMPROBANTE_CVE\":\"95\",\"COM_NOMBRE\":\"investigacion_100046\",\"TIPO_COMPROBANTE_CVE\":\"2\"}}'),(245,'2016-08-06 22:35:42','/sipimss_censo/index.php/perfil/get_data_ajax_eliminar_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":{\"delete\":\"42\"},\"comprobante\":{\"delete\":{\"COMPROBANTE_CVE\":\"105\",\"COM_NOMBRE\":\"investigacion_10004696_2_33\",\"TIPO_COMPROBANTE_CVE\":\"2\"}}}','147','{\"emp_act_inv_edu\":{\"EAID_CVE\":\"42\"},\"comprobante\":{\"COMPROBANTE_CVE\":\"105\",\"COM_NOMBRE\":\"investigacion_10004696_2_33\",\"TIPO_COMPROBANTE_CVE\":\"2\"}}'),(246,'2016-08-06 22:36:16','/sipimss_censo/index.php/perfil/ajax_add_investigacion','NULL','11.32.41.86',1,NULL,'{\"comprobante\":\"insert-106\",\"emp_act_inv_edu\":\"insert-43\"}','NULL','{\"comprobante\":{\"TIPO_COMPROBANTE_CVE\":\"3\",\"COM_NOMBRE\":\"investigacion_10004696_2_1\",\"COMPROBANTE_CVE\":106},\"emp_act_inv_edu\":{\"TIP_ACT_DOC_CVE\":\"15\",\"EIAE_NOMBRE_INV\":\"asdas\",\"EAIE_FOLIO_ACEPTACION\":\"asdasd\",\"TIP_ESTUDIO_CVE\":\"2\",\"TIP_PARTICIPACION_CVE\":\"2\",\"MED_DIVULGACION_CVE\":\"1\",\"EMPLEADO_CVE\":\"1\",\"COMPROBANTE_CVE\":106,\"EAID_CVE\":43}}'),(247,'2016-08-06 22:45:18','/sipimss_censo/index.php/perfil/get_data_ajax_eliminar_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":{\"delete\":\"43\"},\"comprobante\":{\"delete\":{\"COMPROBANTE_CVE\":\"106\",\"COM_NOMBRE\":\"investigacion_10004696_2_1\",\"TIPO_COMPROBANTE_CVE\":\"3\"}}}','149','{\"emp_act_inv_edu\":{\"EAID_CVE\":\"43\"},\"comprobante\":{\"COMPROBANTE_CVE\":\"106\",\"COM_NOMBRE\":\"investigacion_10004696_2_1\",\"TIPO_COMPROBANTE_CVE\":\"3\"}}'),(248,'2016-08-06 22:45:41','/sipimss_censo/index.php/perfil/ajax_add_investigacion','NULL','11.32.41.86',1,NULL,'{\"comprobante\":\"insert-107\",\"emp_act_inv_edu\":\"insert-44\"}','NULL','{\"comprobante\":{\"TIPO_COMPROBANTE_CVE\":\"2\",\"COM_NOMBRE\":\"investigacion_10004696_2_1_2_780\",\"COMPROBANTE_CVE\":107},\"emp_act_inv_edu\":{\"TIP_ACT_DOC_CVE\":\"16\",\"EIAE_NOMBRE_INV\":\"344\",\"EAIE_FOLIO_ACEPTACION\":\"dfg\",\"TIP_ESTUDIO_CVE\":\"2\",\"TIP_PARTICIPACION_CVE\":\"1\",\"MED_DIVULGACION_CVE\":\"1\",\"EMPLEADO_CVE\":\"1\",\"COMPROBANTE_CVE\":107,\"EAID_CVE\":44}}'),(249,'2016-08-06 22:46:36','/sipimss_censo/index.php/perfil/ajax_add_investigacion','NULL','11.32.41.86',1,NULL,'{\"comprobante\":\"insert-108\",\"emp_act_inv_edu\":\"insert-45\"}','NULL','{\"comprobante\":{\"TIPO_COMPROBANTE_CVE\":\"2\",\"COM_NOMBRE\":\"investigacion_10004696_2_45_2_1316\",\"COMPROBANTE_CVE\":108},\"emp_act_inv_edu\":{\"TIP_ACT_DOC_CVE\":\"15\",\"EIAE_NOMBRE_INV\":\"Prueba 34\",\"EAIE_FOLIO_ACEPTACION\":\"sdfsf\",\"TIP_ESTUDIO_CVE\":\"2\",\"TIP_PARTICIPACION_CVE\":\"1\",\"MED_DIVULGACION_CVE\":\"2\",\"EMPLEADO_CVE\":\"1\",\"COMPROBANTE_CVE\":108,\"EAID_CVE\":45}}'),(250,'2016-08-06 22:47:10','/sipimss_censo/index.php/perfil/get_data_ajax_eliminar_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":{\"delete\":\"44\"},\"comprobante\":{\"delete\":{\"COMPROBANTE_CVE\":\"107\",\"COM_NOMBRE\":\"investigacion_10004696_2_1_2_780\",\"TIPO_COMPROBANTE_CVE\":\"2\"}}}','151','{\"emp_act_inv_edu\":{\"EAID_CVE\":\"44\"},\"comprobante\":{\"COMPROBANTE_CVE\":\"107\",\"COM_NOMBRE\":\"investigacion_10004696_2_1_2_780\",\"TIPO_COMPROBANTE_CVE\":\"2\"}}'),(251,'2016-08-06 22:51:53','/sipimss_censo/index.php/perfil/get_data_ajax_eliminar_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":{\"delete\":\"45\"},\"comprobante\":{\"delete\":{\"COMPROBANTE_CVE\":\"108\",\"COM_NOMBRE\":\"investigacion_10004696_2_45_2_1316\",\"TIPO_COMPROBANTE_CVE\":\"2\"}}}','153','{\"emp_act_inv_edu\":{\"EAID_CVE\":\"45\"},\"comprobante\":{\"COMPROBANTE_CVE\":\"108\",\"COM_NOMBRE\":\"investigacion_10004696_2_45_2_1316\",\"TIPO_COMPROBANTE_CVE\":\"2\"}}'),(252,'2016-08-06 22:53:57','/sipimss_censo/index.php/perfil/ajax_add_investigacion','NULL','11.32.41.86',1,NULL,'{\"comprobante\":\"insert-109\",\"emp_act_inv_edu\":\"insert-46\"}','NULL','{\"comprobante\":{\"TIPO_COMPROBANTE_CVE\":\"2\",\"COM_NOMBRE\":\"investigacion_10004696_2_1_2_1007\",\"COMPROBANTE_CVE\":109},\"emp_act_inv_edu\":{\"TIP_ACT_DOC_CVE\":\"15\",\"EIAE_NOMBRE_INV\":\"asdasd\",\"EAIE_FOLIO_ACEPTACION\":\"asdasd\",\"TIP_ESTUDIO_CVE\":\"2\",\"TIP_PARTICIPACION_CVE\":\"2\",\"MED_DIVULGACION_CVE\":\"1\",\"EMPLEADO_CVE\":\"1\",\"COMPROBANTE_CVE\":109,\"EAID_CVE\":46}}'),(253,'2016-08-06 23:10:01','/sipimss_censo/index.php/perfil/ajax_add_investigacion','NULL','11.32.41.86',1,NULL,'{\"comprobante\":\"insert-110\",\"emp_act_inv_edu\":\"insert-47\"}','NULL','{\"comprobante\":{\"TIPO_COMPROBANTE_CVE\":\"2\",\"COM_NOMBRE\":\"investigacion_10004696_1_47_2_428\",\"COMPROBANTE_CVE\":110},\"emp_act_inv_edu\":{\"TIP_ACT_DOC_CVE\":\"15\",\"EIAE_NOMBRE_INV\":\"sdfsdf\",\"EAIE_FOLIO_ACEPTACION\":\"sdfsdf\",\"TIP_ESTUDIO_CVE\":\"1\",\"TIP_PARTICIPACION_CVE\":\"1\",\"MED_DIVULGACION_CVE\":\"2\",\"EMPLEADO_CVE\":\"1\",\"COMPROBANTE_CVE\":110,\"EAID_CVE\":47}}'),(254,'2016-08-06 23:18:45','/sipimss_censo/index.php/perfil/ajax_add_investigacion','NULL','11.32.41.86',1,NULL,'{\"emp_act_inv_edu\":\"insert-48\"}','NULL','{\"emp_act_inv_edu\":{\"TIP_ACT_DOC_CVE\":\"15\",\"EIAE_NOMBRE_INV\":\"asdasd\",\"EAIE_FOLIO_ACEPTACION\":\"sdfewe\",\"TIP_ESTUDIO_CVE\":\"1\",\"TIP_PARTICIPACION_CVE\":\"1\",\"MED_DIVULGACION_CVE\":\"3\",\"EAIE_PUB_CITA\":\"zsrgfsdgfdszfgdfg\",\"EMPLEADO_CVE\":\"1\",\"EAID_CVE\":48}}'),(255,'2016-08-06 23:19:33','/sipimss_censo/index.php/perfil/ajax_add_investigacion','NULL','11.32.41.86',1,NULL,'{\"comprobante\":\"insert-111\",\"emp_act_inv_edu\":\"insert-49\"}','NULL','{\"comprobante\":{\"TIPO_COMPROBANTE_CVE\":\"1\",\"COM_NOMBRE\":\"investigacion_10004696_1_49_1_1117\",\"COMPROBANTE_CVE\":111},\"emp_act_inv_edu\":{\"TIP_ACT_DOC_CVE\":\"15\",\"EIAE_NOMBRE_INV\":\"dasdddddddddddddddddddddd\",\"EAIE_FOLIO_ACEPTACION\":\"ewqwe3\",\"TIP_ESTUDIO_CVE\":\"1\",\"TIP_PARTICIPACION_CVE\":\"2\",\"MED_DIVULGACION_CVE\":\"1\",\"EMPLEADO_CVE\":\"1\",\"COMPROBANTE_CVE\":111,\"EAID_CVE\":49}}'),(256,'2016-08-06 23:22:50','/sipimss_censo/index.php/perfil/ajax_add_investigacion','NULL','11.32.41.86',1,NULL,'{\"comprobante\":\"insert-112\",\"emp_act_inv_edu\":\"insert-50\"}','NULL','{\"comprobante\":{\"TIPO_COMPROBANTE_CVE\":\"1\",\"COM_NOMBRE\":\"investigacion_10004696_1_50_1_1691\",\"COMPROBANTE_CVE\":112},\"emp_act_inv_edu\":{\"TIP_ACT_DOC_CVE\":\"16\",\"EIAE_NOMBRE_INV\":\"nolaaaaaaaaaaa\",\"EAIE_FOLIO_ACEPTACION\":\"sss\",\"TIP_ESTUDIO_CVE\":\"1\",\"TIP_PARTICIPACION_CVE\":\"1\",\"MED_DIVULGACION_CVE\":\"1\",\"EMPLEADO_CVE\":\"1\",\"COMPROBANTE_CVE\":112,\"EAID_CVE\":50}}'),(257,'2016-08-06 23:23:22','/sipimss_censo/index.php/perfil/ajax_add_investigacion','NULL','11.32.41.86',1,NULL,'{\"comprobante\":\"insert-113\",\"emp_act_inv_edu\":\"insert-51\"}','NULL','{\"comprobante\":{\"TIPO_COMPROBANTE_CVE\":\"1\",\"COM_NOMBRE\":\"investigacion_10004696_1_51_1_110\",\"COMPROBANTE_CVE\":113},\"emp_act_inv_edu\":{\"TIP_ACT_DOC_CVE\":\"16\",\"EIAE_NOMBRE_INV\":\"asdas\",\"EAIE_FOLIO_ACEPTACION\":\"adw3\",\"TIP_ESTUDIO_CVE\":\"1\",\"TIP_PARTICIPACION_CVE\":\"1\",\"MED_DIVULGACION_CVE\":\"2\",\"EMPLEADO_CVE\":\"1\",\"COMPROBANTE_CVE\":113,\"EAID_CVE\":51}}'),(258,'2016-08-06 23:24:01','/sipimss_censo/index.php/perfil/ajax_add_investigacion','NULL','11.32.41.86',1,NULL,'{\"comprobante\":\"insert-114\",\"emp_act_inv_edu\":\"insert-52\"}','NULL','{\"comprobante\":{\"TIPO_COMPROBANTE_CVE\":\"1\",\"COM_NOMBRE\":\"investigacion_10004696_1_52_1_1446\",\"COMPROBANTE_CVE\":114},\"emp_act_inv_edu\":{\"TIP_ACT_DOC_CVE\":\"15\",\"EIAE_NOMBRE_INV\":\"sdfsdf\",\"EAIE_FOLIO_ACEPTACION\":\"SAdad\",\"TIP_ESTUDIO_CVE\":\"1\",\"TIP_PARTICIPACION_CVE\":\"1\",\"MED_DIVULGACION_CVE\":\"2\",\"EMPLEADO_CVE\":\"1\",\"COMPROBANTE_CVE\":114,\"EAID_CVE\":52}}'),(259,'2016-08-07 01:26:55','/sipimss_censo/index.php/perfil/ajax_add_investigacion','NULL','11.32.41.86',1,NULL,'{\"comprobante\":\"insert-117\",\"emp_act_inv_edu\":\"insert-53\"}','NULL','{\"comprobante\":{\"TIPO_COMPROBANTE_CVE\":\"1\",\"COM_NOMBRE\":\"investigacion_10004696_1_53_1_365\",\"COMPROBANTE_CVE\":117},\"emp_act_inv_edu\":{\"TIP_ACT_DOC_CVE\":\"15\",\"EIAE_NOMBRE_INV\":\"comprobante\",\"EAIE_FOLIO_ACEPTACION\":\"aas\",\"TIP_ESTUDIO_CVE\":\"1\",\"TIP_PARTICIPACION_CVE\":\"1\",\"MED_DIVULGACION_CVE\":\"2\",\"EMPLEADO_CVE\":\"1\",\"COMPROBANTE_CVE\":117,\"EAID_CVE\":53}}');
/*!40000 ALTER TABLE `bitacora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campos_catalogos`
--

DROP TABLE IF EXISTS `campos_catalogos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campos_catalogos` (
  `MED_DIVULGACION_CVE` int(11) DEFAULT NULL,
  `CURSO_CVE` int(11) DEFAULT NULL,
  `TIP_MATERIAL_CVE` int(11) DEFAULT NULL,
  `MODULO_CVE` int(11) DEFAULT NULL,
  `LICENCIATURA_CVE` int(11) DEFAULT NULL,
  `ROL_DESEMPENIA_CVE` int(11) DEFAULT NULL,
  KEY `XIF1CAMPOS_CATALOGOS` (`MED_DIVULGACION_CVE`),
  KEY `XIF2CAMPOS_CATALOGOS` (`CURSO_CVE`),
  KEY `XIF4CAMPOS_CATALOGOS` (`TIP_MATERIAL_CVE`),
  KEY `XIF5CAMPOS_CATALOGOS` (`MODULO_CVE`),
  KEY `XIF6CAMPOS_CATALOGOS` (`LICENCIATURA_CVE`),
  KEY `XIF7CAMPOS_CATALOGOS` (`ROL_DESEMPENIA_CVE`),
  CONSTRAINT `campos_catalogos_ibfk_1` FOREIGN KEY (`MED_DIVULGACION_CVE`) REFERENCES `cmedio_divulgacion` (`MED_DIVULGACION_CVE`),
  CONSTRAINT `campos_catalogos_ibfk_2` FOREIGN KEY (`CURSO_CVE`) REFERENCES `ccurso` (`CURSO_CVE`),
  CONSTRAINT `campos_catalogos_ibfk_3` FOREIGN KEY (`TIP_MATERIAL_CVE`) REFERENCES `ctipo_material` (`TIP_MATERIAL_CVE`),
  CONSTRAINT `campos_catalogos_ibfk_4` FOREIGN KEY (`MODULO_CVE`) REFERENCES `ccatalogo_modulo` (`MODULO_CVE`),
  CONSTRAINT `campos_catalogos_ibfk_5` FOREIGN KEY (`LICENCIATURA_CVE`) REFERENCES `licenciatura` (`LICENCIATURA_CVE`),
  CONSTRAINT `campos_catalogos_ibfk_6` FOREIGN KEY (`ROL_DESEMPENIA_CVE`) REFERENCES `crol_desempenia` (`ROL_DESEMPENIA_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campos_catalogos`
--

LOCK TABLES `campos_catalogos` WRITE;
/*!40000 ALTER TABLE `campos_catalogos` DISABLE KEYS */;
/*!40000 ALTER TABLE `campos_catalogos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `can_bono_registro`
--

DROP TABLE IF EXISTS `can_bono_registro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `can_bono_registro` (
  `CAN_BON_REG_FCH` date DEFAULT NULL,
  `CAN_BON_REG_CVE` int(11) NOT NULL,
  `CAN_BON_REG_PROMEDIO` int(11) DEFAULT NULL,
  `CAN_BON_REG_MSG` varchar(20) DEFAULT NULL,
  `EMP_CAN_BONO_CVE` int(11) DEFAULT NULL,
  `ESTADO_BONO_CVE` int(11) DEFAULT NULL,
  PRIMARY KEY (`CAN_BON_REG_CVE`),
  UNIQUE KEY `XPKCAN_BONO_REGISTRO` (`CAN_BON_REG_CVE`),
  KEY `XIF1CAN_BONO_REGISTRO` (`EMP_CAN_BONO_CVE`),
  KEY `XIF2CAN_BONO_REGISTRO` (`ESTADO_BONO_CVE`),
  CONSTRAINT `can_bono_registro_ibfk_1` FOREIGN KEY (`EMP_CAN_BONO_CVE`) REFERENCES `emp_can_bono` (`EMP_CAN_BONO_CVE`),
  CONSTRAINT `can_bono_registro_ibfk_2` FOREIGN KEY (`ESTADO_BONO_CVE`) REFERENCES `cestado_bono` (`ESTADO_BONO_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `can_bono_registro`
--

LOCK TABLES `can_bono_registro` WRITE;
/*!40000 ALTER TABLE `can_bono_registro` DISABLE KEYS */;
/*!40000 ALTER TABLE `can_bono_registro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carea`
--

DROP TABLE IF EXISTS `carea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carea` (
  `AREA_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `AREA_NOMBRE` varchar(20) NOT NULL,
  PRIMARY KEY (`AREA_CVE`),
  UNIQUE KEY `XPKCAREA` (`AREA_CVE`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carea`
--

LOCK TABLES `carea` WRITE;
/*!40000 ALTER TABLE `carea` DISABLE KEYS */;
INSERT INTO `carea` VALUES (1,'Clínica'),(2,'Epidemiología'),(3,'Biomédica'),(4,'Salud pública'),(5,'Educación');
/*!40000 ALTER TABLE `carea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cbeca_interrumpida`
--

DROP TABLE IF EXISTS `cbeca_interrumpida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cbeca_interrumpida` (
  `BECA_INTERRIMPIDA_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `MSG_BEC_INTE` varchar(40) NOT NULL,
  PRIMARY KEY (`BECA_INTERRIMPIDA_CVE`),
  UNIQUE KEY `XPKCBECA_INTERRUMPIDA` (`BECA_INTERRIMPIDA_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cbeca_interrumpida`
--

LOCK TABLES `cbeca_interrumpida` WRITE;
/*!40000 ALTER TABLE `cbeca_interrumpida` DISABLE KEYS */;
/*!40000 ALTER TABLE `cbeca_interrumpida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ccatalogo_modulo`
--

DROP TABLE IF EXISTS `ccatalogo_modulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccatalogo_modulo` (
  `MODULO_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `MOD_NOMBRE` varchar(20) NOT NULL,
  PRIMARY KEY (`MODULO_CVE`),
  UNIQUE KEY `XPKMODULO` (`MODULO_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ccatalogo_modulo`
--

LOCK TABLES `ccatalogo_modulo` WRITE;
/*!40000 ALTER TABLE `ccatalogo_modulo` DISABLE KEYS */;
/*!40000 ALTER TABLE `ccatalogo_modulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ccategoria`
--

DROP TABLE IF EXISTS `ccategoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccategoria` (
  `id_cat` int(11) NOT NULL,
  `nom_categoria` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `des_clave` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `cve_tipo_categoria` int(11) NOT NULL,
  `nom_tipo_cat` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`des_clave`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ccategoria`
--

LOCK TABLES `ccategoria` WRITE;
/*!40000 ALTER TABLE `ccategoria` DISABLE KEYS */;
INSERT INTO `ccategoria` VALUES (2206,'N18 TECNICO OFFSET     80','10000080',155,'TECNICO'),(2002,'N17 TEC AUX C S CONSER 80','10000180',117,'CONSERVACION'),(1961,'N22 TEC AUX B S CONSER 80','10000280',117,'CONSERVACION'),(950,'N27 TEC AUX A S CONSER 80','10000380',117,'CONSERVACION'),(2047,'N33 TEC SIST CONSERV   80','10000480',117,'CONSERVACION'),(1670,'N29 CAJERO TITULAR     80','10000580',112,'CAJERO'),(1382,'N26 CAJERO AYUDANTE    80','10000680',112,'CAJERO'),(1773,'N22 CAJERO AUXILIAR    80','10000780',112,'CAJERO'),(2062,'N24 CHOFER COORDINADOR 80','10000880',78,'PROVISIONAL'),(1241,'N32 VAL A REG COM TE G 80','10000980',78,'PROVISIONAL'),(2109,'N36 TEC ESP SIST CONS  80','10001080',117,'CONSERVACION'),(135,'N46 COORD PROG DIET','10001180',7,'COORDINADOR'),(1387,'N47 SUPERV ZONA PROY   80','10001280',40,'SUPERVISOR'),(1328,'N39 ING ESP SIST CONS  80','10001380',97,'INGENIERO'),(786,'N50 LIDER PROYECTO A','10001480',51,'PROYECTOS'),(716,'N49 LIDER DE PROYECTO B','10001580',51,'PROYECTOS'),(959,'N52 RESPONSABLE PROY B 80','10001680',78,'PROVISIONAL'),(1856,'N46 COORD PROGR PARAMED80','10002080',78,'PROVISIONAL'),(918,'N47 LIDER PROYECTO C   80','10002180',51,'PROYECTOS'),(970,'N51 RESPONSABLE PROY C 80','10002280',78,'PROVISIONAL'),(711,'N53 RESPONSABLE PROY A','10002380',51,'PROYECTOS'),(2407,'N44 LITIGANTE C        80','10002480',89,'LITIGANTE'),(987,'N47 LITIGANTE B        80','10002580',89,'LITIGANTE'),(1386,'N49 LITIGANTE A        80','10002680',89,'LITIGANTE'),(1813,'N57 COOR PROG NO MED S 80','10002780',78,'PROVISIONAL'),(140,'N50 COORD PROG DIET','10002880',7,'COORDINADOR'),(141,'N50 COORD PROG TS MED','10002980',7,'COORDINADOR'),(1768,'N63 JEFE DEPTO ADMVO A 80','10003080',78,'PROVISIONAL'),(1392,'N63 JEFE DIVISION B    80','10003180',19,'JEFE DE DIVISION'),(976,'N62 JEFE DE AREA       80','10003280',105,'JEFE DE AREA'),(1389,'N60 SRIO PART COORD    80','10003380',78,'PROVISIONAL'),(710,'N60 COORD TECNICO A','10003480',7,'COORDINADOR'),(994,'N58 COORD TECNICO B    80','10003580',7,'COORDINADOR'),(1247,'N56 ASESOR COORDINADOR 80','10003680',78,'PROVISIONAL'),(1381,'N49 SRIA A DIRECTOR    80','10003780',76,'SECRETARIA'),(981,'N47 SRIA B DIRECTOR    80','10003880',78,'PROVISIONAL'),(1688,'N44 SRIA AUX A DIRECTOR80','10003980',78,'PROVISIONAL'),(1726,'N45 SRIA A COORD GRAL  80','10004080',78,'PROVISIONAL'),(1379,'N42 SRIA AUX B DIRECTOR80','10004180',76,'SECRETARIA'),(1253,'N41 SRIA SRIO PART DIR 80','10004280',78,'PROVISIONAL'),(1390,'N41 SRIA B COORD GRAL  80','10004380',76,'SECRETARIA'),(2465,'N37 SRIA SRIO PAR CO GR80','10004580',78,'PROVISIONAL'),(984,'N37 SRIA A JEF DIVISION80','10004680',78,'PROVISIONAL'),(974,'N35 SRIA JEFE DE AREA  80','10004780',78,'PROVISIONAL'),(977,'N35 SRIA AUX A JEFE DIV80','10004980',78,'PROVISIONAL'),(968,'N31 SRIA AUX JEFE AREA 80','10005080',78,'PROVISIONAL'),(995,'N31 SRIA AUX B JEFE DIV80','10005380',78,'PROVISIONAL'),(2466,'N31 RECEP DIRECTOR     80','10005480',78,'PROVISIONAL'),(1940,'N31 RECEP COORDINADOR  80','10005580',78,'PROVISIONAL'),(2003,'N36 CHOFER DIRECTOR    80','10005680',78,'PROVISIONAL'),(2064,'N30 CHOFER COORD GRAL  80','10005780',78,'PROVISIONAL'),(1399,'N61 JEFE DEPTO ADMVO B 80','10005880',18,'JEFE DE DEPARTAMENTO'),(980,'N57 COORD PROGRAMAS    80','10005980',7,'COORDINADOR'),(1245,'N43 SRIA A COORD       80','10006080',78,'PROVISIONAL'),(973,'N39 SRIA B COORD       80','10006180',78,'PROVISIONAL'),(997,'N37 SRIA AUX A COORD   80','10006280',78,'PROVISIONAL'),(989,'N37 SRIA JEF DEP ADVO A80','10006380',78,'PROVISIONAL'),(1901,'N35 SRIA AUX J DEP AD A80','10006480',78,'PROVISIONAL'),(1243,'N35 SRIA JEF DEP ADVO B80','10006580',78,'PROVISIONAL'),(1246,'N25 SRIA AUXILIAR      80','10006780',78,'PROVISIONAL'),(130,'N44 COOR PR ASIS MED NC','10006880',7,'COORDINADOR'),(2170,'N34 ANALISTA RESP E 80','10006980',78,'PROVISIONAL'),(2329,'N45 LIDER PROYECTO D 80','10007080',78,'PROVISIONAL'),(1814,'N59 COORD PROGRAMAS A 80','10007180',7,'COORDINADOR'),(69,'N49 CONFIANZA MEDICA','10100080',6,'CONFIANZA MEDICA'),(71,'N52 CONFIANZA MEDICA','10100180',6,'CONFIANZA MEDICA'),(75,'N56 CONFIANZA MEDICA','10100280',6,'CONFIANZA MEDICA'),(62,'N41 CONFIANZA MEDICA','10100380',6,'CONFIANZA MEDICA'),(67,'N47 CONFIANZA MEDICA','10100480',6,'CONFIANZA MEDICA'),(76,'N56 CONFIANZA MEDICA','10100580',6,'CONFIANZA MEDICA'),(68,'N48 CONFIANZA MEDICA','10100680',6,'CONFIANZA MEDICA'),(78,'N58 CONFIANZA MEDICA','10100780',6,'CONFIANZA MEDICA'),(70,'N51 CONFIANZA MEDICA','10100880',6,'CONFIANZA MEDICA'),(73,'N54 CONFIANZA MEDICA','10100980',6,'CONFIANZA MEDICA'),(74,'N55 CONFIANZA MEDICA','10101080',6,'CONFIANZA MEDICA'),(81,'N61 C0NFIANZA MEDICA','10101180',6,'CONFIANZA MEDICA'),(80,'N60 CONFIANZA MEDICA','10101280',6,'CONFIANZA MEDICA'),(79,'N59 CONFIANZA MEDICA','10101380',6,'CONFIANZA MEDICA'),(77,'N57 CONFIANZA MEDICA','10101480',6,'CONFIANZA MEDICA'),(166,'N57 COOR PROG MED S','10101580',7,'COORDINADOR'),(407,'N62 JEFE AREA MEDICA','10101880',18,'JEFE DE DEPARTAMENTO'),(169,'N57 COORD PROG MED','10101980',7,'COORDINADOR'),(2480,'N60 COORD TECNICO A MED80','10102080',7,'COORDINADOR'),(83,'N63 CONFIANZA MEDICA ','10102180',6,'CONFIANZA MEDICA'),(168,'N57 COORD ESTOMATOLOG','10110080',7,'COORDINADOR'),(36,'N56 CONFIANZA ENFERM','10120080',5,'CONFIANZA ENFERMERIA'),(31,'N46 CONFIANZA ENFERM','10120180',5,'CONFIANZA ENFERMERIA'),(26,'N31 CONFIANZA ENFERM','10120280',5,'CONFIANZA ENFERMERIA'),(28,'N38 CONFIANZA ENFERM','10120380',5,'CONFIANZA ENFERMERIA'),(35,'N53 CONFIANZA ENFERM','10120480',5,'CONFIANZA ENFERMERIA'),(33,'N49 CONFIANZA ENFERM','10120580',5,'CONFIANZA ENFERMERIA'),(142,'N50 COORD PROGR ENF','10120680',7,'COORDINADOR'),(986,'N50 SUPERV PROG ENF SOL80','10120780',78,'PROVISIONAL'),(37,'N57 CONFIANZA ENFERM ','10120880',5,'CONFIANZA ENFERMERIA'),(34,'N51 CONFIANZA ENFERM ','10120980',5,'CONFIANZA ENFERMERIA'),(38,'N62 CONFIANZA ENFERM ','10121080',5,'CONFIANZA ENFERMERIA'),(2596,'Especial-DFSUR','1111111',78,'PROVISIONAL'),(1324,'N06 CONFIANZA NIVEL    80','12000080',86,'CONFIANZA'),(2126,'N07 CONFIANZA NIVEL    80','12000180',78,'PROVISIONAL'),(2174,'N09 CONFIANZA NIVEL    80','12000380',78,'PROVISIONAL'),(1825,'N10 CONFIANZA NIVEL    80','12000480',78,'PROVISIONAL'),(1674,'N11 CONFIANZA NIVEL    80','12000580',78,'PROVISIONAL'),(922,'N12 CONFIANZA NIVEL    80','12000680',86,'CONFIANZA'),(1342,'N13 CONFIANZA NIVEL    80','12000780',86,'CONFIANZA'),(1854,'N14 CONFIANZA NIVEL    80','12000880',78,'PROVISIONAL'),(1256,'N15 CONFIANZA NIVEL    80','12000980',86,'CONFIANZA'),(1689,'N16 CONFIANZA NIVEL    80','12001080',78,'PROVISIONAL'),(990,'N17 CONFIANZA NIVEL    80','12001180',86,'CONFIANZA'),(1194,'N18 CONFIANZA NIVEL    80','12001280',86,'CONFIANZA'),(910,'N19 CONFIANZA NIVEL    80','12001380',86,'CONFIANZA'),(1082,'N20 CONFIANZA NIVEL    80','12001480',86,'CONFIANZA'),(1686,'N21 CONFIANZA NIVEL    80','12001580',78,'PROVISIONAL'),(1257,'N22 CONFIANZA NIVEL    80','12001680',86,'CONFIANZA'),(1185,'N23 CONFIANZA NIVEL    80','12001780',86,'CONFIANZA'),(1744,'N24 CONFIANZA NIVEL    80','12001880',78,'PROVISIONAL'),(1431,'N25 CONFIANZA NIVEL    80','12001980',86,'CONFIANZA'),(1210,'N26 CONFIANZA NIVEL    80','12002080',86,'CONFIANZA'),(1482,'N27 CONFIANZA NIVEL    80','12002180',86,'CONFIANZA'),(1620,'N28 CONFIANZA NIVEL    80','12002280',78,'PROVISIONAL'),(1646,'N29 CONFIANZA NIVEL    80','12002380',78,'PROVISIONAL'),(1345,'N30 CONFIANZA NIVEL    80','12002480',86,'CONFIANZA'),(1502,'N31 CONFIANZA NIVEL    80','12002580',86,'CONFIANZA'),(2149,'N32 CONFIANZA NIVEL    80','12002680',78,'PROVISIONAL'),(1160,'N33 CONFIANZA NIVEL    80','12002780',86,'CONFIANZA'),(1497,'N34 CONFIANZA NIVEL    80','12002880',86,'CONFIANZA'),(949,'N35 CONFIANZA NIVEL    80','12002980',86,'CONFIANZA'),(1320,'N36 CONFIANZA NIVEL    80','12003080',86,'CONFIANZA'),(1636,'N37 CONFIANZA NIVEL    80','12003180',78,'PROVISIONAL'),(1527,'N38 CONFIANZA NIVEL    80','12003280',86,'CONFIANZA'),(926,'N39 CONFIANZA NIVEL    80','12003380',86,'CONFIANZA'),(1480,'N40 CONFIANZA NIVEL    80','12003480',86,'CONFIANZA'),(1494,'N41 CONFIANZA NIVEL    80','12003580',86,'CONFIANZA'),(1172,'N42 CONFIANZA NIVEL    80','12003680',86,'CONFIANZA'),(2213,'N43 CONFIANZA NIVEL    80','12003780',78,'PROVISIONAL'),(1361,'N44 CONFIANZA NIVEL    80','12003880',86,'CONFIANZA'),(1626,'N45 CONFIANZA NIVEL    80','12003980',78,'PROVISIONAL'),(1512,'N46 CONFIANZA NIVEL    80','12004080',86,'CONFIANZA'),(908,'N47 CONFIANZA NIVEL    80','12004180',86,'CONFIANZA'),(1900,'N48 CONFIANZA NIVEL    80','12004280',78,'PROVISIONAL'),(844,'N49 CONFIANZA NIVEL    80','12004380',78,'PROVISIONAL'),(1719,'N50 CONFIANZA NIVEL    80','12004480',78,'PROVISIONAL'),(794,'N51 CONFIANZA NIVEL    80','12004580',86,'CONFIANZA'),(1693,'N52 CONFIANZA NIVEL    80','12004680',78,'PROVISIONAL'),(1161,'N53 CONFIANZA NIVEL    80','12004780',86,'CONFIANZA'),(1124,'N54 CONFIANZA NIVEL    80','12004880',86,'CONFIANZA'),(1271,'N55 CONFIANZA NIVEL    80','12004980',86,'CONFIANZA'),(1364,'N56 CONFIANZA NIVEL    80','12005080',86,'CONFIANZA'),(1917,'N57 CONFIANZA NIVEL    80','12005180',78,'PROVISIONAL'),(1007,'N58 CONFIANZA NIVEL    80','12005280',86,'CONFIANZA'),(969,'N59 CONFIANZA NIVEL    80','12005380',86,'CONFIANZA'),(991,'N60 CONFIANZA NIVEL    80','12005480',86,'CONFIANZA'),(1251,'N61 CONFIANZA NIVEL    80','12005580',86,'CONFIANZA'),(1280,'N62 CONFIANZA NIVEL    80','12005680',86,'CONFIANZA'),(1999,'N63 CONFIANZA NIVEL    80','12005780',78,'PROVISIONAL'),(1139,'N19 ENC BOD O COB IMSS 80','12005880',78,'PROVISIONAL'),(1055,'N18 J SEC PROD DIE UMH 80','12005980',78,'PROVISIONAL'),(2074,'N10 OFICIAL CONS HRS   80','12006080',78,'PROVISIONAL'),(1153,'N22 ENCARGADO TEATRO   80','12006180',154,'TEATRO'),(901,'N10 AUX ADMINISTRATIVO 80','12006280',78,'PROVISIONAL'),(1384,'N12 OP SIST IMPRESION  80','12006380',78,'PROVISIONAL'),(1631,'N13 CAJ CV Y VELAT     80','12006480',112,'CAJERO'),(911,'N13 INST BASIC ENS CSS 80','12006580',135,'INSTRUCTOR'),(1507,'N14 PROMO BRIG SAL COM 80','12006680',32,'PROMOTOR'),(2210,'N09 ASIST SALUD MENTAL 80','12006780',78,'PROVISIONAL'),(1026,'N18 OP SIST PERSONAL   80','12006880',78,'PROVISIONAL'),(2540,'N17 TECNICO TEATRAL B  80','12006980',154,'TEATRO'),(1262,'N24 SRIA INV JEF U INV 80','12007080',78,'PROVISIONAL'),(1115,'N17 SRIA B UNID OPERAT 80','12007180',78,'PROVISIONAL'),(1023,'N20 INST ENSENANZA CSS 80','12007280',135,'INSTRUCTOR'),(1808,'N25 DISENADOR GRAFICO  80','12007380',124,'DISEÑADOR GRAFICO'),(1645,'N25 PROF ARTES OFIC    80','12007480',147,'PROFESOR'),(1855,'N29 TEC INVESTIG B     80','12007580',78,'PROVISIONAL'),(1628,'N24 CAJERO AYTE D3 Y 4 80','12007680',112,'CAJERO'),(1457,'N21 CAJERO AYTE D1 Y 2 80','12007780',112,'CAJERO'),(1015,'N21 CAJ AYTE SUBD3 Y 4 80','12007880',112,'CAJERO'),(2448,'N19 CAJ AYTE SUBD1 Y 2 80','12007980',112,'CAJERO'),(1838,'N21 CAJERO AUX D3 Y 4  80','12008080',112,'CAJERO'),(1731,'N18 CAJERO AUX D1 Y 2  80','12008180',112,'CAJERO'),(1752,'N18 CAJ AUX SUBD3 Y 4  80','12008280',112,'CAJERO'),(1585,'N16 CAJ AUX SUBD1 Y 2  80','12008380',112,'CAJERO'),(486,'N26 LABORATORISTA HRS','12008480',23,'LABORATORISTA'),(1119,'N33 CONT SIST INTER C  80','12008580',122,'CONTROLADOR DE SISTEMAS'),(2360,'N30 CONT SIST INTER D  80','12008680',122,'CONTROLADOR DE SISTEMAS'),(1910,'N25 TEC ECOALIMENT     80','12008780',78,'PROVISIONAL'),(964,'N14 AYTE ADMVO         80','12008880',78,'PROVISIONAL'),(1018,'N17 ASISTENTE ADMVO C  80','12008980',78,'PROVISIONAL'),(1766,'N23 RESP CONT ASIST P  80','12009080',78,'PROVISIONAL'),(1679,'N14 OP CONMUT CENTR VAC80','12009180',78,'PROVISIONAL'),(2350,'N15 SUPERV SERVS CV    80','12009280',78,'PROVISIONAL'),(2077,'N24 CHOFER DELEGADO 4  80','12009380',78,'PROVISIONAL'),(2263,'N23 CHOFER DELEGADO 3  80','12009480',78,'PROVISIONAL'),(2114,'N22 CHOFER DELEGADO 2  80','12009580',78,'PROVISIONAL'),(2431,'N21 CHOFER DELEGADO 1  80','12009680',94,'CHOFER'),(907,'N22 ASISTENTE ADMVO B  80','12009780',78,'PROVISIONAL'),(1600,'N25 COORD SIST PERS    80','12009880',7,'COORDINADOR'),(871,'N25 ASISTENTE ADMVO A  80','12009980',78,'PROVISIONAL'),(1883,'N17 TRAM CONV GARANT B 80','12010080',78,'PROVISIONAL'),(1869,'N22 TRAM CONV GARANT A 80','12010180',78,'PROVISIONAL'),(885,'N27 ANALISTA D         80','12010280',78,'PROVISIONAL'),(1682,'N21 AYTE ABO S JUR DEL 80','12010380',78,'PROVISIONAL'),(1073,'N39 CONT SIST INTER A  80','12010480',122,'CONTROLADOR DE SISTEMAS'),(875,'N36 CONT SIST INTER B  80','12010580',122,'CONTROLADOR DE SISTEMAS'),(1275,'N26 ANALISTA ESTADIS S 80','12010680',78,'PROVISIONAL'),(851,'N29 CONSUL ATN Y ORIENT80','12010780',78,'PROVISIONAL'),(943,'N30 ANALISTA C         80','12010880',78,'PROVISIONAL'),(965,'N31 ANALISTA B         80','12010980',78,'PROVISIONAL'),(787,'N34 SUBJEF BC CON UNID','12011080',37,'SUBJEFE DE DEPARTAMENTO'),(741,'N33 ANALISTA 80','12011180',58,'ANALISTA'),(789,'N39 ADMOR UMH E','12011280',55,'ADMINISTRADOR'),(751,'N39 FAC INST CAP CAL A','12011380',60,'CAPACITACION'),(1587,'N38 AUDITOR            80','12011480',78,'PROVISIONAL'),(966,'N39 ANALISTA RESP B    80','12011580',78,'PROVISIONAL'),(847,'N41 ANALISTA COORD C   80','12011680',58,'ANALISTA'),(719,'N44 ANALISTA COORD A','12011780',7,'COORDINADOR'),(1522,'N27 LITIGANTE ASIST A  80','12011880',89,'LITIGANTE'),(1087,'N36 FAC INST CAP CAL B 80','12011980',60,'CAPACITACION'),(1075,'N33 COORD CAPAC DES C  80','12012080',7,'COORDINADOR'),(1547,'N39 ESP SEGURIDAD TRAB 80','12012180',78,'PROVISIONAL'),(1622,'N33 PROM SERV PRES SOC 80','12012280',78,'PROVISIONAL'),(1740,'N39 PSIC EVA COM LAB D480','12012380',78,'PROVISIONAL'),(1013,'N44 COORD DEL TS D3Y4  80','12012480',7,'COORDINADOR'),(1037,'N41 COORD A CLIN D1Y2  80','12012580',7,'COORDINADOR'),(1042,'N41 COOR DEL TS M D1Y2 80','12012680',7,'COORDINADOR'),(1315,'N36 PSIC EVA COM LAB D380','12012780',78,'PROVISIONAL'),(963,'N38 ANALISTA RESP C    80','12012880',78,'PROVISIONAL'),(2437,'N33 PSIC EVA COM LAB D280','12012980',78,'PROVISIONAL'),(1489,'N44 COORD A CLIN D3Y4  80','12013080',7,'COORDINADOR'),(946,'N43 ANALISTA COORD B   80','12013180',78,'PROVISIONAL'),(1179,'N40 ANALISTA RESP A    80','12013280',78,'PROVISIONAL'),(1374,'N41 TECNICO INVESTIG A 80','12013380',78,'PROVISIONAL'),(854,'N36 ANALISTA RESP D    80','12013480',78,'PROVISIONAL'),(1548,'N30 SUBJ SER BAS UNI A 80','12013580',78,'PROVISIONAL'),(784,'N27 SUBJ SER BAS UNI B','12013680',170,'SUBJEFE DE SERVICIOS'),(749,'N24 SUBJ SER BAS UNI C','12013780',170,'SUBJEFE DE SERVICIOS'),(1880,'N34 TEC ESP A CON D1Y2 80','12013880',78,'PROVISIONAL'),(1757,'N39 TEC ESP A CON D3Y4 80','12013980',78,'PROVISIONAL'),(1261,'N27 CAJERO TIT D3Y4    80','12014080',112,'CAJERO'),(1784,'N24 CAJERO TIT D1Y2    80','12014180',112,'CAJERO'),(1440,'N24 CAJERO TIT SUB 3Y4 80','12014280',112,'CAJERO'),(1363,'N22 CAJERO TIT SUB 1Y2 80','12014380',112,'CAJERO'),(1903,'N30 COORD CAPAC DES D  80','12014480',78,'PROVISIONAL'),(718,'N36 TEC SEG E HIG TRAB','12014580',54,'SEGURIDAD EN EL TRABAJO'),(1085,'N39 SUPERV INSTAL A    80','12014780',40,'SUPERVISOR'),(1715,'N36 SUPERV INSTAL B    80','12014880',78,'PROVISIONAL'),(788,'N44 JEFE A CONSER UNID','12014980',18,'JEFE DE DEPARTAMENTO'),(1717,'N41 JEFE B CONSER UNID 80','12015080',117,'CONSERVACION'),(746,'N39 JEFE C CONSER UNID','12015180',18,'JEFE DE DEPARTAMENTO'),(750,'N36 SUBJEF A CONS UNID','12015280',170,'SUBJEFE DE SERVICIOS'),(394,'N36 JEF D NUT DIE UMHA','12015380',18,'JEFE DE DEPARTAMENTO'),(392,'N33 JEF D NUT DIE UMHB','12015480',18,'JEFE DE DEPARTAMENTO'),(390,'N30 JEF D NUT DIE UMHC','12015580',18,'JEFE DE DEPARTAMENTO'),(387,'N25 JEF D NUT DIE UMHD','12015680',18,'JEFE DE DEPARTAMENTO'),(386,'N25 J O DIE ENS UMH AYB','12015780',18,'JEFE DE DEPARTAMENTO'),(395,'N36 JEF TRAB SOC UMH A','12015880',18,'JEFE DE DEPARTAMENTO'),(393,'N33 JEF TRAB SOC UMH B','12015980',18,'JEFE DE DEPARTAMENTO'),(391,'N30 JEF TRAB SOC UMH C','12016080',18,'JEFE DE DEPARTAMENTO'),(389,'N27 JEF TRAB SOC UMH D','12016180',18,'JEFE DE DEPARTAMENTO'),(388,'N27 JEF TRAB SOC UMF','12016280',18,'JEFE DE DEPARTAMENTO'),(608,'N25 SUBJ TRAB SOC UMH','12016380',37,'SUBJEFE DE DEPARTAMENTO'),(126,'N41 COO D NUT DIE D1Y2','12016480',7,'COORDINADOR'),(129,'N44 COO D NUT DIE D3Y4','12016580',7,'COORDINADOR'),(1269,'N25 FOTOG VIDEO DIGIT  80','12016680',130,'FOTOGRAFO'),(783,'N12 SECRETARIA DE UNID OPERAT','12016780',76,'SECRETARIA'),(2481,'N10 SRIA F UNID OPERAT 80','12016880',78,'PROVISIONAL'),(2436,'N10 SRIA J OFNA DEL 1  80','12016980',78,'PROVISIONAL'),(1045,'N12 SRIA J OFNA DEL 2  80','12017080',78,'PROVISIONAL'),(1025,'N13 SRIA J OFNA DEL 3  80','12017180',78,'PROVISIONAL'),(1209,'N15 SRIA J OFNA DEL 4  80','12017280',78,'PROVISIONAL'),(1330,'N10 TAQUIMECANOGRAFA   80','12017380',78,'PROVISIONAL'),(1478,'N12 SRIA J DEPTO DEL 1 80','12017480',78,'PROVISIONAL'),(900,'N13 SRIA J DEPTO DEL 2 80','12017580',78,'PROVISIONAL'),(880,'N15 SRIA J DEPTO DEL 3 80','12017680',78,'PROVISIONAL'),(1083,'N17 SRIA J DEPTO DEL 4 80','12017780',78,'PROVISIONAL'),(828,'N13 SRIA D UNID OPERAT 80','12017880',78,'PROVISIONAL'),(1593,'N13 SRIA J SERV DEL 1  80','12017980',76,'SECRETARIA'),(1033,'N15 SRIA J SERV DEL 2  80','12018080',78,'PROVISIONAL'),(1132,'N17 SRIA J SERV DEL 3  80','12018180',78,'PROVISIONAL'),(1282,'N20 SRIA J SERV DEL 4  80','12018280',78,'PROVISIONAL'),(1875,'N13 SRIA SUBDELEGADO 1 80','12018380',78,'PROVISIONAL'),(1423,'N15 SRIA SUBDELEGADO 2 80','12018480',78,'PROVISIONAL'),(1041,'N17 SRIA SUBDELEGADO 3 80','12018580',78,'PROVISIONAL'),(1126,'N20 SRIA SUBDELEGADO 4 80','12018680',78,'PROVISIONAL'),(2492,'N15 SRIA AUX DELEG 1   80','12018780',78,'PROVISIONAL'),(1799,'N17 SRIA AUX DELEG 2   80','12018880',78,'PROVISIONAL'),(1226,'N20 SRIA AUX DELEG 3   80','12018980',78,'PROVISIONAL'),(2486,'N22 SRIA AUX DELEG 4   80','12019080',78,'PROVISIONAL'),(1052,'N15 SRIA C UNID OPERAT 80','12019180',78,'PROVISIONAL'),(1263,'N20 SRIA A UNID OPERAT 80','12019280',78,'PROVISIONAL'),(1592,'N20 SRIA DELEGADO 1    80','12019380',76,'SECRETARIA'),(1616,'N22 SRIA DELEGADO 2    80','12019480',78,'PROVISIONAL'),(1786,'N24 SRIA DELEGADO 3    80','12019580',78,'PROVISIONAL'),(2514,'N27 SRIA DELEGADO 4    80','12019680',78,'PROVISIONAL'),(1418,'N12 SUBJ CJAS TIENDA AB80','12019780',112,'CAJERO'),(1419,'N13 JEFE AREA TIENDA   80','12019880',139,'JEFE DE TIENDA'),(1198,'N17 JEFE CAJ TIENDA    80','12019980',112,'CAJERO'),(1537,'N44 ADMOR TIENDA A     80','12020080',55,'ADMINISTRADOR'),(1403,'N41 ADMOR TIENDA B     80','12020180',55,'ADMINISTRADOR'),(1278,'N39 ADMOR TIENDA C     80','12020280',55,'ADMINISTRADOR'),(2471,'N14 PROM REGIS PR REC N80','12020380',78,'PROVISIONAL'),(1656,'N18 COOR REG CIV REC N 80','12020480',78,'PROVISIONAL'),(1599,'N47 ASESOR DELEGADO D2 80','12020680',78,'PROVISIONAL'),(2273,'N51 ASESOR DELEGADO D4 80','12020880',78,'PROVISIONAL'),(1841,'N44 ASESOR JEF SERV D3 80','12020980',78,'PROVISIONAL'),(1664,'N47 ASESOR JEF SERV D4 80','12021080',78,'PROVISIONAL'),(731,'N41 COORD CURSOS TEC','12021180',7,'COORDINADOR'),(2233,'N10 AUX ADMVO SOLID    80','12021280',78,'PROVISIONAL'),(1027,'N16 TEC ATN ORIE DERECH80','12021380',78,'PROVISIONAL'),(1293,'N17 CENSOR CONSTRUC    80','12021480',114,'CENSOR'),(1310,'N17 LOCALIZADOR PATRON 80','12021580',140,'LOCALIZADOR'),(1295,'N22 VISITADOR          80','12021680',96,'VISITADOR'),(1078,'N26 EJEC OFNA COBR IMSS80','12021780',78,'PROVISIONAL'),(1306,'N29 TEC EST SOC SAL TRA80','12021880',78,'PROVISIONAL'),(1960,'N29 CONTADOR TIENDA C  80','12021980',119,'CONTADOR'),(1516,'N29 JEFE MERC TIENDA B 80','12022080',139,'JEFE DE TIENDA'),(1291,'N34 CONTADOR TIENDA B  80','12022180',78,'PROVISIONAL'),(2150,'N34 JEF APOYO OP TIEN A80','12022280',78,'PROVISIONAL'),(1840,'N34 JEFE MERC TIENDA A 80','12022380',139,'JEFE DE TIENDA'),(1175,'N37 CONTADOR TIENDA A  80','12022480',119,'CONTADOR'),(776,'12022580 N20 INSP CONTR TEC INS','12022580',75,'INSPECTOR'),(1863,'N58 COORDINADOR D4     80','12022680',7,'COORDINADOR'),(1340,'N56 COORDINADOR D3     80','12022780',7,'COORDINADOR'),(799,'N54 COORDINADOR D2     80','12022880',7,'COORDINADOR'),(2318,'N52 COORDINADOR D1     80','12022980',7,'COORDINADOR'),(1077,'N55 JEFE DEPTO DELEG 4 80','12023080',18,'JEFE DE DEPARTAMENTO'),(721,'N53 JEFE DEPTO DELEG 3','12023180',18,'JEFE DE DEPARTAMENTO'),(798,'N51 JEFE DEPTO DELEG 2 80','12023280',18,'JEFE DE DEPARTAMENTO'),(1169,'N49 JEFE DEPTO DELEG 1 80','12023380',18,'JEFE DE DEPARTAMENTO'),(801,'N51 JEFE OFNA DELEG 4  80','12023480',50,'OFICINA'),(840,'N49 JEFE OFNA DELEG 3  80','12023580',50,'OFICINA'),(1006,'N47 JEFE OFNA DELEG 2  80','12023680',50,'OFICINA'),(865,'N44 JEFE OFNA DELEG 1  80','12023780',50,'OFICINA'),(2172,'N60 SUBDELEGADO 4      80','12023880',78,'PROVISIONAL'),(2045,'N59 SUBDELEGADO 3      80','12023980',78,'PROVISIONAL'),(2218,'N58 SUBDELEGADO 2      80','12024080',78,'PROVISIONAL'),(2240,'N56 SUBDELEGADO 1      80','12024180',78,'PROVISIONAL'),(827,'N53 JEFE DEPTO SUBDEL4 80','12024280',18,'JEFE DE DEPARTAMENTO'),(883,'N51 JEFE DEPTO SUBDEL3 80','12024380',18,'JEFE DE DEPARTAMENTO'),(891,'N49 JEFE DEPTO SUBDEL2 80','12024480',18,'JEFE DE DEPARTAMENTO'),(1296,'N47 JEFE DEPTO SUBDEL1 80','12024580',78,'PROVISIONAL'),(832,'N49 JEFE OFNA SUBDEL 4 80','12024680',50,'OFICINA'),(1302,'N47 JEFE OFNA SUBDEL 3 80','12024780',50,'OFICINA'),(856,'N44 JEFE OFNA SUBDEL 2 80','12024880',50,'OFICINA'),(1044,'N41 JEFE OFNA SUBDEL 1 80','12024980',50,'OFICINA'),(896,'N22 J OFNA TEC ADMVA 1 80','12025080',50,'OFICINA'),(1019,'N24 J OFNA TEC ADMVA 2 80','12025180',50,'OFICINA'),(1594,'N27 J OFNA TEC ADMVA 3 80','12025280',50,'OFICINA'),(848,'N30 J OFNA TEC ADMVA 4 80','12025380',50,'OFICINA'),(1204,'N47 SUP SERVS FINANZ D480','12025480',78,'PROVISIONAL'),(1563,'N44 SUP SERVS FINANZ D380','12025580',78,'PROVISIONAL'),(1448,'N41 SUP SERVS FINANZ D280','12025680',40,'SUPERVISOR'),(2455,'N39 SUP SERVS FINANZ D180','12025780',40,'SUPERVISOR'),(1205,'N51 J GPO AP PRES SO D480','12025880',137,'JEFE DE GRUPO'),(1362,'N49 J GPO AP PRES SO D380','12025980',137,'JEFE DE GRUPO'),(1308,'N47 J GPO AP PRES SO D280','12026080',137,'JEFE DE GRUPO'),(2145,'N44 J GPO AP PRES SO D180','12026180',137,'JEFE DE GRUPO'),(771,'N20 TEC INF C CTR P INV','12026280',72,'INFORMATICA'),(1322,'N62 J SERVS A D4       80','12026380',103,'JEFE DE SERVICIOS'),(1187,'N60 J SERVS A D3       80','12026480',103,'JEFE DE SERVICIOS'),(1655,'N59 J SERVS A D2       80','12026580',103,'JEFE DE SERVICIOS'),(1837,'N58 J SERVS A D1       80','12026680',103,'JEFE DE SERVICIOS'),(1133,'N14 CONTROLADOR TARJ   80','12026780',120,'CONTROLADOR'),(1076,'N20 CONT REC E INC DEL 80','12026880',78,'PROVISIONAL'),(1297,'N12 OP  CAJAS TIENDA   80','12026980',78,'PROVISIONAL'),(1849,'N44 COORD PERSONAL D1  80','12027080',78,'PROVISIONAL'),(1188,'N47 COORD PERSONAL D2  80','12027180',7,'COORDINADOR'),(1705,'N49 COORD PERSONAL D3  80','12027280',78,'PROVISIONAL'),(1673,'N51 COORD PERSONAL D4  80','12027380',78,'PROVISIONAL'),(1034,'N44 ABOGADO PROCURADOR 80','12027480',91,'ABOGADO'),(800,'N45 COORD ZON GUAR D1Y280','12027580',7,'COORDINADOR'),(913,'N47 COORD ZON GUAR D3Y480','12027680',7,'COORDINADOR'),(2495,'N44 ADMOR VELATORIO A  80','12027780',55,'ADMINISTRADOR'),(2528,'N41 ADMOR VELATORIO B  80','12027880',55,'ADMINISTRADOR'),(1905,'N39 ADMOR VELATORIO C  80','12027980',55,'ADMINISTRADOR'),(2048,'N20 AGENTE FUNERALES   80','12028080',78,'PROVISIONAL'),(2067,'N49 RESID A PROY CONST 80','12028180',78,'PROVISIONAL'),(1872,'N47 RESID B PROY CONST 80','12028280',78,'PROVISIONAL'),(1625,'N45 RESID C PROY CONST 80','12028380',78,'PROVISIONAL'),(2526,'N43 SUBRES A PROY CONST80','12028480',78,'PROVISIONAL'),(2013,'N41 SUBRES B PROY CONST80','12028580',78,'PROVISIONAL'),(2351,'N48 SUP INST A PROY CON80','12028680',78,'PROVISIONAL'),(2278,'N46 SUP INST B PROY CON80','12028780',78,'PROVISIONAL'),(2046,'N44 SUP INST C PROY CON80','12028880',40,'SUPERVISOR'),(2119,'N42 AUX SUP INS A PR CO80','12028980',78,'PROVISIONAL'),(687,'N20 TRABAJ SOCIAL HRS','12029180',48,'TRABAJO SOCIAL'),(553,'N20 DIETISTA HR S','12029280',29,'NUTRICION Y DIETOLOGIA'),(1801,'N41 ASESOR JUR TES SUB380','12029380',78,'PROVISIONAL'),(1859,'N44 ASESOR JUR TES SUB480','12029480',78,'PROVISIONAL'),(839,'N44 DIRECTORA GUARD A  80','12029580',9,'DIRECTOR'),(1288,'N41 DIRECTORA GUARD B  80','12029680',9,'DIRECTOR'),(1162,'N39 DIRECTORA GUARD C  80','12029780',9,'DIRECTOR'),(2507,'N12 SRIA J DEPTO SUBD2 80','12029980',78,'PROVISIONAL'),(1881,'N13 SRIA J DEPTO SUBD3 80','12030080',78,'PROVISIONAL'),(1079,'N15 SRIA J DEPTO SUBD4 80','12030180',78,'PROVISIONAL'),(1178,'N23 AUX ENTRENADOR     80','12030280',126,'ENTRENADOR'),(1817,'N31 ENTRENADOR A       80','12030380',126,'ENTRENADOR'),(1504,'N37 ENTRENADOR B       80','12030480',126,'ENTRENADOR'),(1453,'N31 INST ENS TEC O ART 80','12030580',78,'PROVISIONAL'),(1447,'N14 AYTE ADMVO SOLID B 80','12030680',78,'PROVISIONAL'),(1329,'N30 ADMOR DE TEATRO DF 80','12030780',55,'ADMINISTRADOR'),(888,'N46 SUP ADMON A CL S   80','12030880',78,'PROVISIONAL'),(1829,'N46 SUP ACCION COM S   80','12030980',78,'PROVISIONAL'),(1134,'N41 ADMINISTRADOR HRS  80','12031080',55,'ADMINISTRADOR'),(2190,'N41 RESIDENTE CONS HR S80','12031180',28,'MEDICO RESIDENTE'),(1354,'N26 TEC RURAL SALUD S  80','12031280',78,'PROVISIONAL'),(1425,'N22 AYTE ADMVO SOLID A 80','12031380',78,'PROVISIONAL'),(903,'N16 CHOFER POLIV S     80','12031480',94,'CHOFER'),(2049,'N12 CHOFER S           80','12031580',78,'PROVISIONAL'),(2011,'N14 AUX ALMACEN S      80','12031680',78,'PROVISIONAL'),(1043,'N36 AUDITOR A PATR B   80','12031780',108,'AUDITOR'),(838,'N38 AUDITOR A PATR A   80','12031880',108,'AUDITOR'),(1036,'N44 SUPERV AUD PATRONES80','12031980',40,'SUPERVISOR'),(397,'N46 JEFE LABORATORIO','12032080',18,'JEFE DE DEPARTAMENTO'),(1780,'N18 JEFE ROPERIA UMH   80','12032180',137,'JEFE DE GRUPO'),(1254,'N46 SRIA DIRECTOR REG A80','12032280',78,'PROVISIONAL'),(1058,'N37 SRIA J DIV A DIR RE80','12032480',78,'PROVISIONAL'),(1792,'N35 SRIA J DIV B DIR RE80','12032580',78,'PROVISIONAL'),(1053,'N47 RESP PROY D4       80','12032780',78,'PROVISIONAL'),(1093,'N44 RESP PROY D3       80','12032880',78,'PROVISIONAL'),(809,'N41 RESP PROY D2       80','12032980',78,'PROVISIONAL'),(864,'N39 RESP PROY D1       80','12033080',78,'PROVISIONAL'),(1024,'N44 RESP PROY SUBD 4   80','12033180',78,'PROVISIONAL'),(1014,'N41 RESP PROY SUBD 3   80','12033280',78,'PROVISIONAL'),(836,'N39 RESP PROY SUBD 2   80','12033380',78,'PROVISIONAL'),(1405,'N36 RESP PROY SUBD 1   80','12033480',78,'PROVISIONAL'),(1230,'N30 PROM ACCION COMUN  80','12033580',32,'PROMOTOR'),(1929,'N53 J GPO AUDITORIA D3 80','12033780',108,'AUDITOR'),(1525,'N51 J GPO AUDITORIA D2 80','12033880',108,'AUDITOR'),(2258,'N49 J GPO AUDITORIA D1 80','12033980',108,'AUDITOR'),(1915,'N47 AUDITOR RESP DEL 4 80','12034080',108,'AUDITOR'),(2080,'N44 AUDITOR RESP DEL 3 80','12034180',108,'AUDITOR'),(1189,'N41 AUDITOR RESP DEL 2 80','12034280',108,'AUDITOR'),(736,'N42 FISICO MEDICO','12034480',27,'MEDICO NO FAMILIAR'),(2358,'N35 TECNICO MECANICO   80','12034580',78,'PROVISIONAL'),(1051,'N35 TEC DOSIMETRISTA   80','12034680',125,'DOSIMETRISTA'),(2821,'N27 AUX TEC DOSIMETR   80','12034880',78,'PROVISIONAL'),(1028,'N31 ADMOR GUARDERIA    80','12034980',55,'ADMINISTRADOR'),(1231,'N31 ADMOR CSS UD Y CA  80','12035080',55,'ADMINISTRADOR'),(1104,'N25 ADMOR CSS UD Y CA  80','12035180',55,'ADMINISTRADOR'),(1228,'N39 ESP CLASIFIC EMPR  80','12035280',78,'PROVISIONAL'),(1954,'N30 COORD TERAPISTAS   80','12035380',78,'PROVISIONAL'),(1624,'N47 DIR U OP PRES SOC A80','12035480',9,'DIRECTOR'),(1020,'N44 DIR U OP PRES SOC B80','12035580',9,'DIRECTOR'),(1197,'N41 DIR U OP PRES SOC C80','12035680',9,'DIRECTOR'),(914,'N39 DIR U OP PRES SOC D80','12035780',9,'DIRECTOR'),(895,'N36 DIR U OP PRES SOC E80','12035880',78,'PROVISIONAL'),(1750,'N33 PROM ATN PENSIONAD 80','12035980',78,'PROVISIONAL'),(747,'N54 SUBDIR ADMVO UMH A','12036080',56,'SUBDIRECTOR ADMINISTRATIVO'),(810,'N53 SUBDIR ADMVO UMH B 80','12036180',78,'PROVISIONAL'),(739,'N52 SUBDIR ADMVO UMH C','12036280',56,'SUBDIRECTOR ADMINISTRATIVO'),(738,'N49 ADMOR UMH D','12036380',55,'ADMINISTRADOR'),(1120,'N47 JEFE DEPTO UMH A   80','12036480',18,'JEFE DE DEPARTAMENTO'),(745,'N45 JEFE DEPTO UMH B','12036580',18,'JEFE DE DEPARTAMENTO'),(742,'N43 JEFE DEPTO UMH C','12036680',18,'JEFE DE DEPARTAMENTO'),(1414,'N44 ADMINISTRADOR UMF 180','12036780',55,'ADMINISTRADOR'),(1445,'N41 ADMINISTRADOR UMF 280','12036880',55,'ADMINISTRADOR'),(1118,'N39 ADMINISTRADOR UMF 380','12036980',55,'ADMINISTRADOR'),(849,'N36 ADMINISTRADOR UMF 480','12037080',55,'ADMINISTRADOR'),(1136,'N33 ADMINISTRADOR UMF 580','12037180',55,'ADMINISTRADOR'),(1935,'N40 JEF CONT PREST UMF280','12037380',136,'JEFE DE CONTROL'),(1250,'N10 VIGILANTE C        80','12037780',93,'VIGILANTE'),(1496,'N12 VIGILANTE B        80','12037880',93,'VIGILANTE'),(1583,'N14 VIGILANTE A CUSTOD 80','12037980',93,'VIGILANTE'),(1894,'N16 RESP VIG HGZ O UM A80','12038080',78,'PROVISIONAL'),(2000,'N22 SUPERV VIGILANCIA  80','12038180',78,'PROVISIONAL'),(1925,'N24 JEFE TURNO VIG     80','12038280',139,'JEFE DE TIENDA'),(2208,'N14 AYTE SEGURIDAD CV  80','12038380',78,'PROVISIONAL'),(2250,'N19 JEFE GPO VIGIL CV  80','12038480',78,'PROVISIONAL'),(1081,'N42 COOR D ASIS ME D3Y480','12038580',7,'COORDINADOR'),(1429,'N40 C00R D ASIS ME D1Y280','12038680',7,'COORDINADOR'),(1545,'N62 SUBDELEGADO 4  80','12038780',78,'PROVISIONAL'),(1283,'N61 SUBDELEGADO 3  80','12038880',80,'SUBDELEGADO'),(1680,'N60 SUBDELEGADO 2  80','12038980',78,'PROVISIONAL'),(2203,'N58 SUBDELEGADO 1  80','12039080',78,'PROVISIONAL'),(2444,'N40 GESTOR OCUPACIONAL 80','12039180',131,'GESTOR'),(1810,'N49 SOPORTE TEC ESP D4 80','12039280',78,'PROVISIONAL'),(1186,'N47 SOPORTE TEC ESP D3 80','12039380',78,'PROVISIONAL'),(2479,'N44 SOPORTE TEC ESP D2 80','12039480',78,'PROVISIONAL'),(2533,'N41 SOPORTE TEC ESP D1 80','12039580',78,'PROVISIONAL'),(2101,'N47 ENCARG AUDIT PAT SB2','12040280',108,'AUDITOR'),(2117,'N44 ENCARG AUDIT PAT SB 1','12040380',108,'AUDITOR'),(2490,'N51 COORD AUX SEG T D4 80','12040480',7,'COORDINADOR'),(1341,'N49 COORD AUX SEG T D3 80','12040580',7,'COORDINADOR'),(2040,'N47 COORD AUX SEG T D2 80','12040680',78,'PROVISIONAL'),(2397,'N44 COORD AUX SEG T D1 80','12040780',7,'COORDINADOR'),(399,'N51 JEF LAB SAL TRAB D4','12040880',18,'JEFE DE DEPARTAMENTO'),(398,'N49 JEF LAB SAL TRAB D3','12040980',18,'JEFE DE DEPARTAMENTO'),(2530,'N34 COOR TA ADIES AC MU80','12041080',7,'COORDINADOR'),(1540,'N54 ASESOR DELEGADO D4 80','12041180',104,'ASESOR'),(1652,'N52 ASESOR DELEGADO D3 80','12041280',78,'PROVISIONAL'),(2383,'N50 ASESOR DELEGADO D2 80','12041380',78,'PROVISIONAL'),(2464,'N48 ASESOR DELEGADO D1 80','12041480',78,'PROVISIONAL'),(2072,'N55 JEFE DIV A JUR UMAE80','12041680',78,'PROVISIONAL'),(1017,'N52 JEFE DEPTO UMAE 80','12041780',18,'JEFE DE DEPARTAMENTO'),(2162,'N47 JEFE OFICINA UMAE  80','12041880',78,'PROVISIONAL'),(886,'N42 JEF OFNA T SOC UMAE80','12041980',50,'OFICINA'),(1506,'N42 J OFNA NUT DIE UMAE80','12042080',50,'OFICINA'),(1442,'N42 J OFNA IM Y AC UMAE80','12042180',50,'OFICINA'),(2133,'N39 J OFNA SER BAS UMAE80','12042280',50,'OFICINA'),(2468,'N55 JEF DIV I BIOM UMAE80','12042380',78,'PROVISIONAL'),(1675,'N47 JEFE DEPTO AOD UMAE80','12042580',78,'PROVISIONAL'),(1570,'N20 SRIA DIRECTOR UMAE  80','12042680',76,'SECRETARIA'),(1177,'N17 SECRETARIA UMAE    80','12042780',78,'PROVISIONAL'),(1922,'N60 COORD MEDIOS D3Y4  80','12042880',78,'PROVISIONAL'),(1601,'N58 COORD MEDIOS D1Y2  80','12042980',7,'COORDINADOR'),(1560,'N41 ADMOR FARMACIA UMAE80','12043080',55,'ADMINISTRADOR'),(2459,'N39 QUIM RESP FARM UMAE80','12043180',78,'PROVISIONAL'),(2458,'N47 FISICO MEDICO UMAE 80','12043280',78,'PROVISIONAL'),(572,'N26 PSICOLOGO H R 80','12043380',33,'PSICOLOGO'),(1614,'N63 DIR ADMVO UMAE 80','12043480',9,'DIRECTOR'),(403,'N53 JEFE DEPTO UMAE 80','12043580',18,'JEFE DE DEPARTAMENTO'),(1021,'N49 JEFE OFICINA UMAE 80','12043680',50,'OFICINA'),(1332,'N62 JEFE GPO AREA AUD QR80','12043780',137,'JEFE DE GRUPO'),(1168,'N49 AUDITOR AREA AUD QR80','12043880',108,'AUDITOR'),(1833,'N51 COOR TEC ATN DER A 80','12043980',78,'PROVISIONAL'),(887,'N49 COOR TEC ATN DER B 80','12044080',78,'PROVISIONAL'),(1145,'N36 CONSULTORA ATN O D 80','12044180',78,'PROVISIONAL'),(712,'TECNICO EN ATENCION Y ORIENTACION AL DERECHOHABIENTE','12044280',52,'TECNICO EN ATENCION'),(2450,'N42 ASESOR JEFE SERVICIOS D1 Y 2','12044380',78,'PROVISIONAL'),(2500,'N44 JEFE OFNA AREA COM 80','12044580',50,'OFICINA'),(2523,'N17 HORNERO 80','12044680',134,'HORNERO'),(807,'N49 COOR TEC EV SER DH 80','12045180',7,'COORDINADOR'),(2482,'N51 COOR TEC EV SER DH 80','12045280',7,'COORDINADOR'),(2538,'N48 COORD AUX SEG TRAB D1','12045380',7,'COORDINADOR'),(722,'N50 COORDINADOR AUXILIAR DE SEGURIDAD EN EL TRABAJO','12045480',54,'SEGURIDAD EN EL TRABAJO'),(725,'N52 COORDINADOR AUXILIAR DE SEGURIDAD EN EL TRABAJO','12045580',54,'SEGURIDAD EN EL TRABAJO'),(723,'N54 COORDINADOR AUXILIAR DE SEGURIDAD ','12045680',54,'SEGURIDAD EN EL TRABAJO'),(2524,'N47 COORD Z SEG TRAB D2','12045780',7,'COORDINADOR'),(2186,'N49 COORD Z SEG TRAB D3','12045880',78,'PROVISIONAL'),(2055,'N51 COORD Z SEG TRAB D4','12045980',78,'PROVISIONAL'),(720,'N51 DIR CENT REG STCYP','12046080',9,'DIRECTOR'),(2443,'N51 JEFE LAB SALUD TRAB','12046180',78,'PROVISIONAL'),(2474,'N44 COOR OP CAPACIT DIFUS','12046280',7,'COORDINADOR'),(717,'N44 ESP SEGURIDAD TRABAJO','12046380',54,'SEGURIDAD EN EL TRABAJO'),(1234,'N49 COOR TEC ATN QUEJ D B','12046580',7,'COORDINADOR'),(1105,'N49 COOR TEC OR INF DEL B','12046680',7,'COORDINADOR'),(1703,'N51 COOR TEC ATN QUEJ D A','12046780',78,'PROVISIONAL'),(1873,'N51 COOR TEC OR INF DEL A','12046880',78,'PROVISIONAL'),(2628,'N41 COOR TERAPISTAS 80','12047080',47,'TERAPISTA'),(2508,'N57 COOR VINC AP USU CAICE','12048080',7,'COORDINADOR'),(2519,'N49 ADMINISTRADOR CAICE','12048180',55,'ADMINISTRADOR'),(2504,'N49 PSICOLOGO ESP CAICE','12048280',33,'PSICOLOGO'),(2515,'N25 AUX ADMVO CAICE','12048380',78,'PROVISIONAL'),(2452,'N33 TECNICO ATN USU CAICE','12048480',78,'PROVISIONAL'),(2532,'N21 CHOFER CAICE','12048580',94,'CHOFER'),(2513,'N39 PSIC ESP GERONT CEAGE','12048680',33,'PSICOLOGO'),(2505,'N31 PROM PMED NUT GER CEAGE','12048780',32,'PROMOTOR'),(2494,'N31 PROM PMED TS GER CEAGE','12048880',78,'PROVISIONAL'),(2475,'N31 ANIM SOCULT GER CEAGE','12048980',78,'PROVISIONAL'),(2511,'N31 INST TEC ENS TEC CEAGE','12049080',135,'INSTRUCTOR'),(2541,'N31 INST TEC ENS DEP RAHB GER CEAGE','12049180',135,'INSTRUCTOR'),(2512,'N31 PROM PMED TERAP GER CEAGE','12049280',32,'PROMOTOR'),(2497,'N25 PODOLOGO GER CEAGE','12049380',78,'PROVISIONAL'),(2476,'N25 TEC SIST INFO CEAGE','12049480',78,'PROVISIONAL'),(2496,'N20 ASIST ADMVO B CEAGE','12049580',78,'PROVISIONAL'),(2478,'N14 RECEPCIONISTA CEAGE','12049680',78,'PROVISIONAL'),(2463,'N51 DIRECTOR A  80','12050080',9,'DIRECTOR'),(2542,'N31 ADMINISTRADOR A  80','12050180',55,'ADMINISTRADOR'),(2534,'N51 DIRECTOR DE CECART 80','12050280',9,'DIRECTOR'),(2531,'N49 JEF AREA CAP CECART80','12050380',78,'PROVISIONAL'),(2454,'N39 INSTR ENS TEC CECART 80','12050480',135,'INSTRUCTOR'),(2506,'N36 ANALIST ENS CECART 80','12050580',78,'PROVISIONAL'),(2536,'N31 ADMOR EN CECART 80','12050680',55,'ADMINISTRADOR'),(2488,'N30 TRAB SOCIAL CECART 80','12050780',48,'TRABAJO SOCIAL'),(2723,'N55 COORD AUX SEG TRAB D4 80','12050880',54,'SEGURIDAD EN EL TRABAJO'),(2740,'N54 COORD AUX SEG TRAB D3 80','12050980',54,'SEGURIDAD EN EL TRABAJO'),(2730,'N53 COORD AUX SEG TRAB D2 80','12051080',54,'SEGURIDAD EN EL TRABAJO'),(2618,'N49 ADMON SIST INF SALUD D3YD','12051280',55,'ADMINISTRADOR'),(2637,'N48 ADMON SIST INF SALUD D1YD2 80','12051380',55,'ADMINISTRADOR'),(2617,'N47 COORD AUX DEL SOP MED D3Y','12051480',7,'COORDINADOR'),(2636,'N46 COORD AUX DEL SOP MED D1YD2 80','12051580',7,'COORDINADOR'),(2671,'N42 ANALISTA DEL PLAN D3YD4 80','12051680',58,'ANALISTA'),(2638,'N41 ANALISTA DEL PLAN D1YD2 80','12051780',58,'ANALISTA'),(2668,'N42 ANALISTA INF SALUD D3YD4 80','12051880',58,'ANALISTA'),(2632,'N41 ANALISTA INF SALUD D1YD2 80','12051980',58,'ANALISTA'),(2607,'N44 SUP TRAB SOCIAL','12052080',40,'SUPERVISOR'),(2621,'N44 SUP NUTRI DIET 80','12052180',29,'NUTRICION Y DIETOLOGIA'),(2644,'N42 SUP SIST INF SALUD 80','12052280',40,'SUPERVISOR'),(2662,'N41 SUP ASIST MED 80','12052380',40,'SUPERVISOR'),(2635,'N55 COORD AUX SEG TRAB D1YD2 80','12052780',54,'SEGURIDAD EN EL TRABAJO'),(2672,'N56 COORD AUX SEG TRAB D3YD4 80','12052880',54,'SEGURIDAD EN EL TRABAJO'),(2799,'N55 ING BIOMEDICO D1 Y D2 80','12053080',78,'PROVISIONAL'),(2765,'N56 ING BIOMEDICO D3 Y D4 80','12053180',97,'INGENIERO'),(2811,'N49 FISICO MED ESR RADIOTERAPIA 80','12053580',78,'PROVISIONAL'),(335,'N49 INVEST ASOC A MED','12100080',16,'INVESTIGADOR'),(338,'N50 INVEST ASOC B MED','12100180',16,'INVESTIGADOR'),(341,'N52 INVEST ASOC C MED','12100280',16,'INVESTIGADOR'),(344,'N53 INVEST ASOC D MED','12100380',16,'INVESTIGADOR'),(230,'N60 DIR CENT INV B MED','12100480',9,'DIRECTOR'),(453,'N60 JEFE UNID INV MED','12100580',21,'JEFE DE INVESTIGACION'),(346,'N55 INVEST TIT A MED','12100680',16,'INVESTIGADOR'),(349,'N56 INVEST TIT B MED','12100780',16,'INVESTIGADOR'),(352,'N58 INVEST TIT C MED','12100880',16,'INVESTIGADOR'),(218,'N52 DIRECTOR HOSP RURAL','12100980',9,'DIRECTOR'),(228,'N56 DIRECTOR UMH A','12101080',9,'DIRECTOR'),(227,'N55 DIRECTOR UMH B','12101180',9,'DIRECTOR'),(217,'N51 DIRECTOR UMH E','12101280',9,'DIRECTOR'),(357,'N52 JEFE CLIN SAL TRAB','12101380',17,'JEFE CLINICO'),(416,'N52 JEFE DIVISION UMH','12101480',19,'JEFE DE DIVISION'),(532,'N43 MEDICO ESP HR S','12101580',27,'MEDICO NO FAMILIAR'),(533,'N51 MEDICO ESP ST','12101680',54,'SEGURIDAD EN EL TRABAJO'),(504,'N34 MEDICO GRAL U MED','12101780',25,'MEDICO GENERAL'),(602,'N55 SUBD MED UMH A','12101880',36,'SUBDIRECTOR MEDICO'),(634,'N41 SUP MED AUX UMR S','12101980',40,'SUPERVISOR'),(531,'N43 ANESTESIOLOGO UMH','12102080',27,'MEDICO NO FAMILIAR'),(469,'N62 JEFE SERV A MED D4','12102180',22,'JEFE DE SERVICIOS MEDICOS'),(468,'N60 JEFE SERV A MED D3','12102280',22,'JEFE DE SERVICIOS MEDICOS'),(467,'N59 JEFE SERV A MED D2','12102380',22,'JEFE DE SERVICIOS MEDICOS'),(466,'N58 JEFE SERV A MED D1','12102480',22,'JEFE DE SERVICIOS MEDICOS'),(167,'N57 COORD ATN MED D4','12102580',7,'COORDINADOR'),(163,'N56 COORD ATN MED D3','12102680',7,'COORDINADOR'),(158,'N55 COORD ATN MED D2','12102780',7,'COORDINADOR'),(152,'N54 COORD ATN MED D1','12102880',7,'COORDINADOR'),(164,'N56 COORD PROG MED D4','12102980',7,'COORDINADOR'),(161,'N55 COORD PROG MED D3','12103080',7,'COORDINADOR'),(153,'N54 COORD PROG MED D2','12103180',7,'COORDINADOR'),(149,'N53 COORD PROG MED D1','12103280',7,'COORDINADOR'),(162,'N56 COOR AUX AT MED D4','12103380',7,'COORDINADOR'),(154,'N55 COOR AUX AT MED D3','12103480',7,'COORDINADOR'),(150,'N54 COOR AUX AT MED D2','12103580',7,'COORDINADOR'),(147,'N53 COOR AUX AT MED D1','12103680',7,'COORDINADOR'),(155,'N55 COOR AUX PROG M D4','12103780',7,'COORDINADOR'),(151,'N54 COOR AUX PROG M D3','12103880',7,'COORDINADOR'),(148,'N53 COOR AUX PROG M D2','12103980',7,'COORDINADOR'),(145,'N52 COOR AUX PROG M D1','12104080',7,'COORDINADOR'),(709,'N56 SUPERV MED PROG','12104180',40,'SUPERVISOR'),(455,'N60 JEFE UNIDAD INVEST','12104280',21,'JEFE DE INVESTIGACION'),(351,'N56 INVEST TITULAR B','12104380',16,'INVESTIGADOR'),(348,'N55 INVEST TITULAR A','12104480',16,'INVESTIGADOR'),(345,'N53 INVEST ASOCIADO D','12104580',16,'INVESTIGADOR'),(342,'N52 INVEST ASOCIADO C','12104680',16,'INVESTIGADOR'),(339,'N50 INVEST ASOCIADO B','12104780',16,'INVESTIGADOR'),(336,'N49 INVEST ASOCIADO A','12104880',16,'INVESTIGADOR'),(231,'N60 DIR CENT INV BIO','12104980',9,'DIRECTOR'),(354,'N58 INVEST TITULAR C','12105080',16,'INVESTIGADOR'),(2590,'N57 COORDINADOR REGIONAL MEDICO A','12105180',7,'COORDINADOR'),(2589,'N56 COORDINADOR REGIONAL MEDICO B','12105280',7,'COORDINADOR'),(2473,'N56 COOR REG AUX MED D480','12105380',7,'COORDINADOR'),(2345,'N55 COOR REG AUX MED D380','12105480',7,'COORDINADOR'),(226,'N54 DIRECTOR UMH C','12105580',9,'DIRECTOR'),(224,'N53 DIRECTOR UMH D','12105680',9,'DIRECTOR'),(601,'N54 SUBDIR MED UMH B','12105780',36,'SUBDIRECTOR MEDICO'),(600,'N53 SUBDIR MED UMH C','12105880',36,'SUBDIRECTOR MEDICO'),(715,'N53 COORD CL TURNO UMH 80','12105980',7,'COORDINADOR'),(146,'N52 COORD CLINICO UMH','12106080',7,'COORDINADOR'),(464,'N51 JEFE SERVICIO UMH','12106180',22,'JEFE DE SERVICIOS MEDICOS'),(225,'N54 DIRECTOR UMF 1','12106280',9,'DIRECTOR'),(221,'N53 DIRECTOR  UMF 2','12106380',9,'DIRECTOR'),(220,'N52 DIRECTOR UMF 3','12106480',9,'DIRECTOR'),(215,'N49 DIR UMF 4  5 Y 6','12106580',9,'DIRECTOR'),(599,'N52 SUBDIR MEDICO UMF','12106680',36,'SUBDIRECTOR MEDICO'),(465,'N51 JEFE SERVICIOS UMF','12106780',22,'JEFE DE SERVICIOS MEDICOS'),(233,'N60 DIRECTOR MED UMAE 8','12106880',9,'DIRECTOR'),(229,'N58 DIR ED INV SA UMAE','12106980',9,'DIRECTOR'),(2441,'N57 COOR CLIN TUR UMAE 80','12107080',7,'COORDINADOR'),(417,'N55 JEFE DIV MED UMAE','12107180',19,'JEFE DE DIVISION'),(706,'N39 DIR MED MICROZONA','12107280',9,'DIRECTOR'),(402,'N53 JEF DEPTO CLIN UMAE','12107380',18,'JEFE DE DEPARTAMENTO'),(234,'N60 DIRECTOR UC UMAE','12107480',9,'DIRECTOR'),(236,'N63 DIRECTOR UMAE 80','12107580',9,'DIRECTOR'),(235,'N63 DIRECTOR MED UMAE 8','12107680',9,'DIRECTOR'),(2521,'N58 ADMOR AREA COM UMAE80','12107880',55,'ADMINISTRADOR'),(737,'N45 COORD MEDICO HR','12107980',7,'COORDINADOR'),(2520,'N60 COOR ATN MED CAICE','12108080',7,'COORDINADOR'),(2499,'N55 MED ESP MFR CAICE','12108180',78,'PROVISIONAL'),(2470,'N55 MED ESP PEDIATRA CAICE','12108280',78,'PROVISIONAL'),(2516,'N49 JEF AREA MED CECART80','12108380',78,'PROVISIONAL'),(2472,'N43 MED ESP RAHB GERON CEAGE','12108480',78,'PROVISIONAL'),(2498,'N43 ODONTOGERIATRA CEAGE','12108580',78,'PROVISIONAL'),(2467,'N53 COORD HOSP DON ORG Y TEJ UMAE','12108780',7,'COORDINADOR'),(2761,'N51 COORD HOSP DON ORG Y TEJ','12108880',7,'COORDINADOR'),(2469,'N55 COORD AUX D SPPSTIMSS D4 80','12109080',7,'COORDINADOR'),(2451,'N54 COORD AUX D SPPSTIMSS D3 80','12109180',7,'COORDINADOR'),(2493,'N53 COORD AUX D SPPSTIMSS D2 80','12109280',7,'COORDINADOR'),(2503,'N52 COORD AUX D SPPSTIMSS D1 80','12109380',7,'COORDINADOR'),(2483,'N53 JEF SPPSTIMSS UMAE 80','12109480',78,'PROVISIONAL'),(2487,'N51 JEF SPPSTIMSS IMH 2NIV 80','12109580',78,'PROVISIONAL'),(730,'N48 DIR MED MICROZONA','12109780',9,'DIRECTOR'),(2611,'N56 COORD AUX ATN MED D3YD4 8','12109880',7,'COORDINADOR'),(2623,'N55 COOR AUX ATN MED D1YD2 8','12109980',7,'COORDINADOR'),(192,'N26 DENTISTA HR S','12110080',8,'DENTISTA'),(1862,'N56 COORD AUX EST DEL4 80','12110180',78,'PROVISIONAL'),(1089,'N55 COORD AUX EST DEL3 80','12110280',7,'COORDINADOR'),(1816,'N54 COORD AUX EST DEL2 80','12110380',78,'PROVISIONAL'),(2509,'N53 COORD AUX EST DEL1 80','12110480',7,'COORDINADOR'),(2661,'N54 SUP ESTOM 80','12110680',40,'SUPERVISOR'),(703,'N55 COORD AUX ESTOMATOLOGIA DEL','12110880',7,'COORDINADOR'),(137,'N49 COOR D ENF D3Y4','12120080',7,'COORDINADOR'),(127,'N41 COOR CURSOS ENF','12120180',7,'COORDINADOR'),(714,'N49 DIRECTORA DE ESCUELA','12120280',9,'DIRECTOR'),(273,'N20 ENFERMERA GRAL HR S','12120380',11,'ENFERMERIA'),(447,'N41 JEFE ENF HR S','12120480',20,'JEFE DE ENFERMERIA'),(452,'N43 JEFE ENFERM UM A','12120580',20,'JEFE DE ENFERMERIA'),(450,'N42 JEFE ENFERM UM B','12120680',20,'JEFE DE ENFERMERIA'),(451,'N42 JEFE ENFERM UM C','12120780',20,'JEFE DE ENFERMERIA'),(448,'N41 JEFE ENFERM UM D','12120880',20,'JEFE DE ENFERMERIA'),(449,'N41 JEFE ENFERM UM E','12120980',20,'JEFE DE ENFERMERIA'),(446,'N39 JEFE ENFERM UMF 3','12121080',20,'JEFE DE ENFERMERIA'),(445,'N37 JEFE ENFERM UMF 4','12121180',20,'JEFE DE ENFERMERIA'),(618,'N41 SUBJ ENF UM A','12121280',38,'SUBJEFE DE ENFERMERIA'),(619,'N41 SUBJ ENF UM B','12121380',38,'SUBJEFE DE ENFERMERIA'),(620,'N41 SUBJ ENF UM C','12121480',38,'SUBJEFE DE ENFERMERIA'),(617,'N40 SUBJ ENF UM D','12121580',38,'SUBJEFE DE ENFERMERIA'),(616,'N39 SUBJ ENF UM E','12121680',38,'SUBJEFE DE ENFERMERIA'),(133,'N46 COOR DEL ENF D1Y2','12121780',7,'COORDINADOR'),(1092,'N46 SUP ENF S          80','12121880',40,'SUPERVISOR'),(1056,'N36 TEC EN PERFUSION   80','12121980',162,'TECNICO EN PERFUSION'),(222,'N53 DIRECTOR ENF UMAE','12122080',9,'DIRECTOR'),(621,'N44 SUBJEFE ENFER UMAE','12122180',38,'SUBJEFE DE ENFERMERIA'),(2462,'N49 COORD ENF SAL T D3Y4','12122380',7,'COORDINADOR'),(2501,'N31 PROM PMED ENF GER CEAGE','12122480',32,'PROMOTOR'),(2614,'N62 JEFE DE AREA ENF 80','12122680',105,'JEFE DE AREA'),(2615,'N57 COORD DE PROG ENF 80','12122780',7,'COORDINADOR'),(2643,'N46 ENF SUP SAL PUBLICA 80','12122880',11,'ENFERMERIA'),(2645,'N46 ENF SUP ATN MED 80','12122980',11,'ENFERMERIA'),(2666,'N49 COORD DEL ENF ATN MED D3YD4 80','12123080',7,'COORDINADOR'),(2646,'N48 COORD DEL ENF ATN MED D1YD2 80','12123180',7,'COORDINADOR'),(2667,'N49 COORD DEL ENF SAL PUBLICA D3YD4 80','12123280',7,'COORDINADOR'),(2633,'N48 COORD DEL ENF SAL PUBLICA D1YD2 80','12123380',7,'COORDINADOR'),(2687,'N56 COORD AUX MED SAL PUBLICA D3YD4 80','12130080',7,'COORDINADOR'),(2620,'N55 COORD AUX MED SAL PUBLICA','12130180',7,'COORDINADOR'),(2669,'N56 COORD AUX MED EPIDEMIOLOGI D3YD4 80','12130280',7,'COORDINADOR'),(2604,'N55 COORD AUX MED EPIDEMIOLOGI D1YD2 80','12130380',7,'COORDINADOR'),(2456,'N56 COORD AUX MED INVEST D3YD4 80','12130480',7,'COORDINADOR'),(2446,'N55 COORD AUX MED INVEST D1YD2 80','12130580',7,'COORDINADOR'),(2659,'N56 COORD AUX MED EDUCA D3YD4 80','12130680',7,'COORDINADOR'),(2613,'N55 COORD AUX MED EDUCA D1YD2','12130780',7,'COORDINADOR'),(2616,'N56 COORD AUX GEST MED D3YD4','12130880',7,'COORDINADOR'),(2609,'N55 COORD AUX GEST MED D1YD2','12130980',7,'COORDINADOR'),(2610,'N55 COORD AUX SALUD TRAB D4 8','12131080',7,'COORDINADOR'),(2714,'N54 COORD AUX SALUD TRAB D3 80','12131180',54,'SEGURIDAD EN EL TRABAJO'),(2731,'N53 COORD AUX SALUD TRAB D2 80','12131280',7,'COORDINADOR'),(2685,'N52 COORD AUX SALUD TRAB D1 80','12131380',7,'COORDINADOR'),(2670,'N42 ANALISTA INF EPIDEMIOLOGICA 80','12131480',58,'ANALISTA'),(2622,'N56 MED SUP LIDER 80','12131580',40,'SUPERVISOR'),(2612,'N54 MED SUP MED FAM','12131680',40,'SUPERVISOR'),(2608,'N54 MED SUP HOSPITALES 80','12131780',40,'SUPERVISOR'),(2665,'N54 MED SUP EPIDEMIOLOGO 80','12131880',40,'SUPERVISOR'),(2522,'N57 COOR DELEG MEDICO OPORT','12131980',7,'COORDINADOR'),(2817,'N53 DIR CENT INV ED FORM DOC 80','12132080',78,'PROVISIONAL'),(2766,'N51 PROF MED CENT INV ED FORM','12132180',147,'PROFESOR'),(2634,'N55 COORD AUX MED SPPSTIMSS D1YD2 80','12132280',7,'COORDINADOR'),(2631,'N56 COORD AUX MED SPPSTIMSS D','12132380',7,'COORDINADOR'),(2660,'N55 COORD AUX MED SALUD TRAB D1YD2 80','12132480',54,'SEGURIDAD EN EL TRABAJO'),(2630,'N56 COORD AUX MED SALUD TRAB','12132580',7,'COORDINADOR'),(2816,'N55 ING BIOMEDICO D1 Y D2 80','12132680',78,'PROVISIONAL'),(2782,'N62 JEF AREA MED OPORT','12132880',78,'PROVISIONAL'),(1983,'01 CONFIANZA NIVEL 1   80','1500180',78,'PROVISIONAL'),(1711,'02 CONFIANZA NIVEL 2   80','1500280',78,'PROVISIONAL'),(2301,'03 CONFIANZA NIVEL 3   80','1500380',78,'PROVISIONAL'),(2161,'04 CONFIANZA NIVEL 4   80','1500480',78,'PROVISIONAL'),(2209,'05 CONFIANZA NIVEL 5   80','1500580',78,'PROVISIONAL'),(1605,'06 CONFIANZA NIVEL 6   80','1500680',86,'CONFIANZA'),(1550,'07 CONFIANZA NIVEL 7   80','1500780',86,'CONFIANZA'),(2425,'08 CONFIANZA NIVEL 8   80','1500880',78,'PROVISIONAL'),(1290,'09 CONFIANZA NIVEL 9   80','1500980',86,'CONFIANZA'),(1684,'10 CONFIANZA NIVEL 10  80','1501080',78,'PROVISIONAL'),(1927,'11 CONFIANZA NIVEL 11  80','1501180',78,'PROVISIONAL'),(1333,'12 CONFIANZA NIVEL 12  80','1501280',86,'CONFIANZA'),(1372,'13 CONFIANZA NIVEL 13  80','1501380',86,'CONFIANZA'),(1216,'14 CONFIANZA NIVEL 14  80','1501480',86,'CONFIANZA'),(1199,'15 CONFIANZA NIVEL 15  80','1501580',86,'CONFIANZA'),(1292,'16 CONFIANZA NIVEL 16  80','1501680',86,'CONFIANZA'),(953,'17 CONFIANZA NIVEL 17  80','1501780',86,'CONFIANZA'),(1046,'18 CONFIANZA NIVEL 18  80','1501880',86,'CONFIANZA'),(938,'19 CONFIANZA NIVEL 19  80','1501980',86,'CONFIANZA'),(1218,'20 CONFIANZA NIVEL 20  80','1502080',86,'CONFIANZA'),(992,'21 CONFIANZA NIVEL 21  80','1502180',86,'CONFIANZA'),(1309,'22 CONFIANZA NIVEL 22  80','1502280',86,'CONFIANZA'),(1122,'23 CONFIANZA NIVEL 23  80','1502380',86,'CONFIANZA'),(1397,'24 CONFIANZA NIVEL 24  80','1502480',86,'CONFIANZA'),(956,'25 CONFIANZA NIVEL 25  80','1502580',86,'CONFIANZA'),(1672,'26 CONFIANZA NIVEL 26  80','1502680',78,'PROVISIONAL'),(1072,'27 CONFIANZA NIVEL 27  80','1502780',86,'CONFIANZA'),(1071,'28 CONFIANZA NIVEL 28  80','1502880',86,'CONFIANZA'),(1221,'29 CONFIANZA NIVEL 29  80','1502980',86,'CONFIANZA'),(1500,'30 CONFIANZA NIVEL 30  80','1503080',86,'CONFIANZA'),(1222,'31 CONFIANZA NIVEL 31  80','1503180',86,'CONFIANZA'),(1191,'32 CONFIANZA NIVEL 32  80','1503280',86,'CONFIANZA'),(1248,'33 CONFIANZA NIVEL 33  80','1503380',86,'CONFIANZA'),(1067,'34 CONFIANZA NIVEL 34  80','1503480',86,'CONFIANZA'),(952,'35 CONFIANZA NIVEL 35  80','1503580',86,'CONFIANZA'),(1200,'36 CONFIANZA NIVEL 36  80','1503680',86,'CONFIANZA'),(1220,'37 CONFIANZA NIVEL 37  80','1503780',86,'CONFIANZA'),(1192,'38 CONFIANZA NIVEL 38  80','1503880',86,'CONFIANZA'),(1323,'39 CONFIANZA NIVEL 39  80','1503980',86,'CONFIANZA'),(1321,'40 CONFIANZA NIVEL 40  80','1504080',86,'CONFIANZA'),(1065,'41 CONFIANZA NIVEL 41  80','1504180',86,'CONFIANZA'),(1509,'42 CONFIANZA NIVEL 42  80','1504280',86,'CONFIANZA'),(1369,'43 CONFIANZA NIVEL 43  80','1504380',86,'CONFIANZA'),(1371,'44 CONFIANZA NIVEL 44  80','1504480',86,'CONFIANZA'),(791,'45 CONFIANZA NIVEL 45  80','1504580',86,'CONFIANZA'),(1110,'46 CONFIANZA NIVEL 46  80','1504680',86,'CONFIANZA'),(940,'47 CONFIANZA NIVEL 47  80','1504780',86,'CONFIANZA'),(863,'48 CONFIANZA NIVEL 48  80','1504880',78,'PROVISIONAL'),(1669,'49 CONFIANZA NIVEL 49  80','1504980',78,'PROVISIONAL'),(2337,'50 CONFIANZA NIVEL 50  80','1505080',78,'PROVISIONAL'),(1378,'51 CONFIANZA NIVEL 51  80','1505180',86,'CONFIANZA'),(2012,'53 CONFIANZA NIVEL 53  80','1505380',78,'PROVISIONAL'),(1911,'55 CONFIANZA NIVEL 55  80','1505580',78,'PROVISIONAL'),(1606,'56 CONFIANZA NIVEL 56  80','1505680',86,'CONFIANZA'),(1561,'58 CONFIANZA NIVEL 58  80','1505880',86,'CONFIANZA'),(1607,'59 CONFIANZA NIVEL 59  80','1505980',86,'CONFIANZA'),(2192,'60 CONFIANZA NIVEL 60  80','1506080',78,'PROVISIONAL'),(534,'XX ANESTESIOLOGO UMH','1506280',27,'MEDICO NO FAMILIAR'),(413,'JEFE DIVISION UMH','1506380',19,'JEFE DE DIVISION'),(211,'DIRECTOR UMC','1506480',9,'DIRECTOR'),(210,'DIRECTOR UMB        ','1506580',9,'DIRECTOR'),(603,'SUBD MEDICO UMA     ','1506680',36,'SUBDIRECTOR MEDICO'),(635,'SUP MED PROG DEL    ','1506780',40,'SUPERVISOR'),(107,'COOR DEL AT MED EST ','1506880',7,'COORDINADOR'),(209,'DIRECTOR UMA','1506980',9,'DIRECTOR'),(460,'JEFE SERVS MEDS D1','1507080',22,'JEFE DE SERVICIOS MEDICOS'),(461,'JEFE SERVS MEDS D2','1507180',22,'JEFE DE SERVICIOS MEDICOS'),(462,'JEFE SERVS MEDS D3','1507280',22,'JEFE DE SERVICIOS MEDICOS'),(507,'42 MEDICO ESP HR S','1507380',27,'MEDICO NO FAMILIAR'),(463,'JEFE SERVS MEDS D4','1507480',22,'JEFE DE SERVICIOS MEDICOS'),(596,'49 SUBD MEDICO UMB','1507580',36,'SUBDIRECTOR MEDICO'),(637,'SUPERV MED PROG D4','1507680',40,'SUPERVISOR'),(205,'51 DIRECTOR UMB','1507780',9,'DIRECTOR'),(598,'51 SUBD MEDICO UMA','1507880',36,'SUBDIRECTOR MEDICO'),(206,'53 DIRECTOR UMA','1507980',9,'DIRECTOR'),(456,'53 J SERVS MED D1','1508080',22,'JEFE DE SERVICIOS MEDICOS'),(457,'54 J SERVS MED D2','1508180',22,'JEFE DE SERVICIOS MEDICOS'),(458,'55 JEFE SERVS MED D3','1508280',22,'JEFE DE SERVICIOS MEDICOS'),(459,'56 JEFE SERVS MED D4','1508380',22,'JEFE DE SERVICIOS MEDICOS'),(306,'51 INVEST TIT A','1508480',16,'INVESTIGADOR'),(308,'53 INV TIT B','1508580',16,'INVESTIGADOR'),(310,'55 INVEST TIT C','1508680',16,'INVESTIGADOR'),(315,'56 INV J UI CLIN','1508780',16,'INVESTIGADOR'),(312,'56 INV J UI BIOMED','1508880',16,'INVESTIGADOR'),(106,'COOR AUX DEL ST','1509080',7,'COORDINADOR'),(203,'49 DIRECTOR UMD','1509280',9,'DIRECTOR'),(204,'50 DIRECTOR UMC','1509380',9,'DIRECTOR'),(597,'49 SUBD MEDICO UMC','1509480',36,'SUBDIRECTOR MEDICO'),(202,'49 DIRECTOR HRS','1509580',9,'DIRECTOR'),(201,'48 DIRECTOR UME','1509680',9,'DIRECTOR'),(632,'51 SUP MED PROG DELEG','1509780',40,'SUPERVISOR'),(103,'51 COOR DEL AT MED EST','1509880',7,'COORDINADOR'),(2056,'14 CHOFER POLIV S      80','1510380',78,'PROVISIONAL'),(2295,'12 CHOFER POLIV SOLID  80','1510480',78,'PROVISIONAL'),(2265,'19 ENC BOD OF COB IMSS 80','1510580',78,'PROVISIONAL'),(2167,'09 AUX ALM SOLIDARIDAD 80','1510680',78,'PROVISIONAL'),(1822,'18 J SEC PROD DIET UMH 80','1510780',78,'PROVISIONAL'),(2043,'10 OFICIAL CONS HR S   80','1510980',78,'PROVISIONAL'),(565,'14 PROM ACCION COMUNIT','1511080',32,'PROMOTOR'),(668,'09 TEC RURAL SALUD SOL','1511180',46,'TECNICO RURAL'),(567,'20 PROM ACCION COMUNIT','1511280',32,'PROMOTOR'),(669,'15 TEC RURAL SAL SOL','1511380',46,'TECNICO RURAL'),(2381,'05 LOCALIZADOR PATRON  80','1520180',140,'LOCALIZADOR'),(1879,'16 AYTE ADMVO SOLID B  80','1520280',78,'PROVISIONAL'),(2244,'09 CONT TARJETAS       80','1520380',119,'CONTADOR'),(2134,'09 PROMOTOR COBRANZAS  80','1520480',78,'PROVISIONAL'),(564,'09 PROMOTOR SALUD BR','1520580',32,'PROMOTOR'),(2315,'16 INSPECTOR CONT CAL  80','1520680',78,'PROVISIONAL'),(1943,'10 AUX ADMINISTRATIVO  80','1520780',78,'PROVISIONAL'),(2343,'25 FOTOGRAFO ENS UMH   80','1521080',130,'FOTOGRAFO'),(2405,'12 AYTE ADMVO SOLID B  80','1521380',78,'PROVISIONAL'),(1327,'12 JEFE ROPERIA UMH    80','1521580',137,'JEFE DE GRUPO'),(2353,'12 OP MAQ FOTOCOPIADO  80','1521680',78,'PROVISIONAL'),(1420,'08 VIGILANTE B         80','1521780',93,'VIGILANTE'),(821,'13 INSTR BASIC ENS CSS 80','1522080',78,'PROVISIONAL'),(1979,'13 JEF MESA OF ADMVA   80','1522180',137,'JEFE DE GRUPO'),(2029,'14 CENSOR CONSTRUCCION 80','1522280',114,'CENSOR'),(1687,'10 VIGILANTE A CUSTOD  80','1522380',78,'PROVISIONAL'),(1853,'14 PAGADOR SUBSID UMF  80','1522480',78,'PROVISIONAL'),(1249,'06 VIGILANTE C         80','1522680',93,'VIGILANTE'),(1152,'15 ORIENT IMSS PERS    80','1522780',90,'ORIENTADOR'),(1807,'16 CAJ AU AB U TE CONT 80','1522880',112,'CAJERO'),(2001,'18 COORD TRAF AMB V M  80','1523080',78,'PROVISIONAL'),(2283,'18 SUP LIMP            80','1523180',78,'PROVISIONAL'),(2099,'18 TEC CONT FAUNA NOC  80','1523280',78,'PROVISIONAL'),(1355,'24 CAJ T AB U TES CONT 80','1523580',112,'CAJERO'),(2180,'31 ADMINISTRADOR HR S  80','1523780',78,'PROVISIONAL'),(1660,'15 OP SIST PERSONAL    80','1524080',78,'PROVISIONAL'),(566,'14 PROMOTOR SALUD BMP','1524180',32,'PROMOTOR'),(2414,'12 INSPECTOR CONT CAL  80','1524680',78,'PROVISIONAL'),(2426,'10 CHOFER SOLIDARIDAD  80','1524880',94,'CHOFER'),(1713,'10 CALCULISTA TIENDA   80','1525080',113,'CALCULISTA'),(1611,'15 ORIENTADOR SINDICAL 80','1525180',78,'PROVISIONAL'),(1137,'10 TAQUIMECANOGRAFA    80','1530380',78,'PROVISIONAL'),(1948,'12 SRIA DIR GUARDERIA  80','1530580',78,'PROVISIONAL'),(1835,'12 SRIA JEF OFNA DEL 2 80','1530880',78,'PROVISIONAL'),(867,'12 SRIA RESID CONSERV  80','1531080',78,'PROVISIONAL'),(1887,'13 SRIA COORD SUBDEL 2 80','1531180',78,'PROVISIONAL'),(1951,'13 SRIA DIRECTOR UMB   80','1531280',78,'PROVISIONAL'),(1394,'13 SRIA JEF DEPTO D2   80','1531380',76,'SECRETARIA'),(1698,'13 SRIA JEF OFNA DEL 3 80','1531480',78,'PROVISIONAL'),(1923,'13 SRIA SUBD ADMVO UMA 80','1531680',78,'PROVISIONAL'),(1650,'15 SRIA COORD SUBDEL 3 80','1532080',78,'PROVISIONAL'),(1536,'15 SRIA DIR UMA 2N     80','1532180',76,'SECRETARIA'),(1299,'15 SRIA JEF DEPTO D3   80','1532280',78,'PROVISIONAL'),(1553,'15 SRIA JEF OFNA DEL 4 80','1532380',76,'SECRETARIA'),(1913,'15 SRIA JEF SERV DEL 2 80','1532580',78,'PROVISIONAL'),(1649,'15 SRIA SUBDELEG 2     80','1532680',78,'PROVISIONAL'),(2267,'17 SRIA DIR UMA 3N     80','1532980',78,'PROVISIONAL'),(1559,'17 SRIA JEF DEPTO D4   80','1533080',76,'SECRETARIA'),(1314,'17 SRIA JEFE OFNA      80','1533180',76,'SECRETARIA'),(1316,'17 SRIA JEF SERV DEL 3 80','1533380',76,'SECRETARIA'),(1311,'17 SRIA COOR SUBD AM 4 80','1533680',78,'PROVISIONAL'),(1769,'20 SRIA AUX JEFE DEPTO 80','1533880',78,'PROVISIONAL'),(1638,'20 SRIA JEF SERV DEL 4 80','1534080',78,'PROVISIONAL'),(1479,'20 SRIA SUBDELEG 4     80','1534180',76,'SECRETARIA'),(1697,'24 SRIA JEFE DEPTO     80','1534680',78,'PROVISIONAL'),(1928,'27 SRIA AUX B JEF SERV 80','1534780',78,'PROVISIONAL'),(1603,'30 SRIA SUBJEFE SERVS  80','1535080',76,'SECRETARIA'),(1421,'33 SRIA AUX B SUBDIR G 80','1535280',78,'PROVISIONAL'),(1203,'33 SRIA B JEFE SERVS   80','1535380',78,'PROVISIONAL'),(1380,'36 SRIA A JEFE SERVS   80','1535480',76,'SECRETARIA'),(1521,'36 SRIA AUX A SUBDIR G 80','1535680',76,'SECRETARIA'),(1947,'39 SRIA B SUBDIR GRAL  80','1535880',78,'PROVISIONAL'),(1743,'41 SRIA A SUBDIR GRAL  80','1536080',78,'PROVISIONAL'),(1484,'12 SRIA SOLIDARIDAD A  80','1536180',76,'SECRETARIA'),(2419,'22 VAL C REG COM TES G 80','1536280',78,'PROVISIONAL'),(1836,'33 SRIA DELEG 4        80','1537380',78,'PROVISIONAL'),(1653,'22 SRIA JEF SERV DEL 3 80','1538380',78,'PROVISIONAL'),(2335,'20 SRIA JEF SERV DEL 2 80','1538480',78,'PROVISIONAL'),(1891,'18 SRIA JEF SERV DEL 1 80','1538580',78,'PROVISIONAL'),(1539,'22 SRIA JEF DEPTO D4   80','1538680',76,'SECRETARIA'),(819,'20 SRIA JEF DEPTO D3   80','1538780',78,'PROVISIONAL'),(1665,'18 SRIA JEF DEPTO D2   80','1538880',78,'PROVISIONAL'),(1751,'18 SRIA JEF OFNA DEL 3 80','1539180',78,'PROVISIONAL'),(1821,'22 SRIA SUBDELEG 3     80','1539880',78,'PROVISIONAL'),(1727,'20 SRIA SUBDELEG 2     80','1539980',78,'PROVISIONAL'),(2413,'14 TEC CPEI UMH        80','1540180',155,'TECNICO'),(238,'15 ENF GRAL HRS','1540480',11,'ENFERMERIA'),(1690,'39 SUP DEL NUT DIE D4  80','1540680',78,'PROVISIONAL'),(2019,'20 INSTR ENSENANZA CSS 80','1540880',135,'INSTRUCTOR'),(2270,'25 DISENADOR GRAFICO   80','1541080',124,'DISEÑADOR GRAFICO'),(297,'29 TEC INVESTIG B','1541280',16,'INVESTIGADOR'),(470,'15 LAB HR S','1541480',23,'LABORATORISTA'),(2327,'20 OPERADOR SIST D     80','1541680',78,'PROVISIONAL'),(1783,'24 OPERADOR SIST C     80','1541780',78,'PROVISIONAL'),(2165,'30 OPERADOR SIST B     80','1541880',78,'PROVISIONAL'),(975,'33 OPERADOR SIST A     80','1541980',70,'OPERADOR'),(2110,'17 TEC AUX C S CONSERV 80','1542580',117,'CONSERVACION'),(972,'27 TEC AUX A S CONSERV 80','1542780',117,'CONSERVACION'),(2164,'33 TEC SIST CONSERV    80','1542880',117,'CONSERVACION'),(2408,'29 CAJERO TITULAR      80','1542980',112,'CAJERO'),(1877,'22 CAJERO AUXILIAR     80','1543180',112,'CAJERO'),(86,'38 COORD CURSOS TEC','1543480',7,'COORDINADOR'),(1518,'30 CONT SIST INTERAC C 80','1543580',122,'CONTROLADOR DE SISTEMAS'),(545,'15 DIETISTA HR S','1544580',29,'NUTRICION Y DIETOLOGIA'),(681,'15 TRAB SOCIAL HR S','1544680',48,'TRABAJO SOCIAL'),(471,'26 LAB HR S','1544780',23,'LABORATORISTA'),(2312,'33 CONT SIST INTERAC C 80','1544880',122,'CONTROLADOR DE SISTEMAS'),(1391,'10 AYTE SEGURIDAD CV   80','1550180',78,'PROVISIONAL'),(1906,'27 J MESA A SUBD AM 4  80','1550280',78,'PROVISIONAL'),(1434,'14 AYTE ADMVO          80','1550480',78,'PROVISIONAL'),(2236,'25 JEF OFNA TEC ADMVA4 80','1550580',78,'PROVISIONAL'),(1742,'15 EJEC C OF COB IMSS  80','1550780',78,'PROVISIONAL'),(2380,'13 RESP VIG HGZ O UM-A 80','1550880',78,'PROVISIONAL'),(1108,'17 ANALISTA SISTEMAS   80','1551080',78,'PROVISIONAL'),(1827,'17 JEF OFNA TEC ADMVA1 80','1551280',78,'PROVISIONAL'),(1787,'15 TECNICO ORIENT INF  80','1551580',78,'PROVISIONAL'),(1436,'20 JEF OFNA TEC ADMVA2 80','1551780',50,'OFICINA'),(1462,'22 JEF OFNA TEC ADMVA3 80','1551880',50,'OFICINA'),(1959,'22 JEFE OFNA C DELEG 1 80','1551980',78,'PROVISIONAL'),(2137,'47 ADMOR TIENDA A      80','1552080',78,'PROVISIONAL'),(2243,'24 JEFE SECC B DELEG 1 80','1552380',138,'JEFE DE SECCION'),(2097,'24 J SECC B SUBDELEG 2 80','1552480',78,'PROVISIONAL'),(2014,'24 VERIFICADOR         80','1552580',168,'VERIFICADOR'),(1061,'25 EJEC B OF COB IMSS  80','1552680',78,'PROVISIONAL'),(2269,'25 GESTOR              80','1552780',131,'GESTOR'),(1912,'14 OP CONMUT BILING CV 80','1552980',78,'PROVISIONAL'),(1828,'27 JEFE SECC B DELEG 2 80','1553080',138,'JEFE DE SECCION'),(1474,'27 J SECC B SUBDEL 3   80','1553180',78,'PROVISIONAL'),(1802,'30 JEFE SECC B DELEG 3 80','1553280',138,'JEFE DE SECCION'),(2288,'30 J SECC B SUBDEL 4   80','1553380',78,'PROVISIONAL'),(1637,'33 ENC A ADMVO CO IMSS 80','1553480',78,'PROVISIONAL'),(2304,'33 J GPO OF C CO IMSS  80','1553580',78,'PROVISIONAL'),(1331,'33 JEFE SECC B DELEG 4 80','1553680',138,'JEFE DE SECCION'),(2009,'20 J MESA A SUBDELEG 1 80','1553880',78,'PROVISIONAL'),(2400,'20 JEFE TURNO VIG      80','1554380',139,'JEFE DE TIENDA'),(1831,'13 JEFE AREA TIENDA    80','1554580',139,'JEFE DE TIENDA'),(2332,'44 ADMOR TIENDA B      80','1555280',55,'ADMINISTRADOR'),(2286,'30 CHOFER SUBDIR GRAL  80','1555680',78,'PROVISIONAL'),(2326,'24 CHOFER JEFE SERVS   80','1555780',94,'CHOFER'),(2310,'23 CHOFER DELEGADO 3   80','1555980',94,'CHOFER'),(2342,'22 CHOFER DELEGADO 2   80','1556080',94,'CHOFER'),(2260,'21 CHOFER DELEGADO 1   80','1556180',78,'PROVISIONAL'),(2252,'18 CHOFER JEF S MED D4 80','1556280',78,'PROVISIONAL'),(2399,'16 CHOFER JEF S MED D3 80','1556380',94,'CHOFER'),(2376,'15 CHOFER JEF S MED D2 80','1556480',94,'CHOFER'),(1641,'33 JEFE LINEA D4       80','1556680',137,'JEFE DE GRUPO'),(1952,'41 ADMOR TIENDA C      80','1556780',78,'PROVISIONAL'),(2128,'14 LOCALIZADOR PAT \"A\" 80','1557380',140,'LOCALIZADOR'),(2377,'33 SUP ADMON A C COPLA 80','1557480',78,'PROVISIONAL'),(2484,'28 ADMOR CSS UD Y CA   80','1557580',55,'ADMINISTRADOR'),(1824,'36 JEFE LINEA DELEG 3  80','1557780',78,'PROVISIONAL'),(1617,'39 JEFE LINEA DELEG 4  80','1557880',78,'PROVISIONAL'),(2160,'39 JEFE SECC B DELEG 4 80','1558280',138,'JEFE DE SECCION'),(1524,'30 JEFE OFNA C DELEG 2 80','1558480',50,'OFICINA'),(2221,'39 SUP ADMON ARCH CL S 80','1558780',78,'PROVISIONAL'),(2420,'36 JEFE MERC TIENDA B  80','1558880',139,'JEFE DE TIENDA'),(1858,'30 VERIFICADOR         80','1559080',168,'VERIFICADOR'),(1931,'34 EJEC OFNA COB IMSS  80','1559380',78,'PROVISIONAL'),(2346,'25 LOCALIZADOR PATRON  80','1559480',140,'LOCALIZADOR'),(1764,'22 ANALISTA SISTEMAS   80','1560080',78,'PROVISIONAL'),(2280,'24 CALCUL CUOTAS CONST 80','1560380',78,'PROVISIONAL'),(1213,'25 ANALISTA SISTEMAS   80','1560580',78,'PROVISIONAL'),(1562,'25 AUD PATRON C DELEG  80','1560680',108,'AUDITOR'),(1337,'25 CONT SIST INTERACT  80','1560780',122,'CONTROLADOR DE SISTEMAS'),(1143,'22 CONTROLADOR EMISION 80','1561280',121,'CONTROLADOR DE EMISIONES'),(1864,'22 CONTROLADOR SIST C  80','1561380',122,'CONTROLADOR DE SISTEMAS'),(1239,'30 CONTROLADOR SIST B  80','1561480',122,'CONTROLADOR DE SISTEMAS'),(1417,'33 CONTROLADOR SIST A  80','1561580',122,'CONTROLADOR DE SISTEMAS'),(2324,'36 ANA PROGRA SIST C   80','1561980',78,'PROVISIONAL'),(2328,'39 ANA PROGRA SIST B   80','1562080',78,'PROVISIONAL'),(1892,'22 COORD SIST PERSONAL 80','1562380',78,'PROVISIONAL'),(2404,'27 TEC SEG HIGIENE DEL 80','1562580',78,'PROVISIONAL'),(1510,'30 CONT SIST INTERAC B 80','1562680',122,'CONTROLADOR DE SISTEMAS'),(2422,'33 CONT SIST INTERAC A 80','1562780',122,'CONTROLADOR DE SISTEMAS'),(1630,'22 TRAM CONV GARANT A  80','1562980',78,'PROVISIONAL'),(1579,'27 ANALISTA SISTEMAS   80','1563080',78,'PROVISIONAL'),(1212,'30 TEC S TRAB B DELEG  80','1563180',78,'PROVISIONAL'),(2371,'33 CONT SIST INTERAC B 80','1563280',122,'CONTROLADOR DE SISTEMAS'),(104,'51 COOR Z MED APS','1563780',7,'COORDINADOR'),(102,'48 COOR Z EST APS','1563880',7,'COORDINADOR'),(101,'48 COOR Z EPID APS','1563980',7,'COORDINADOR'),(93,'42 COOR Z ENF APS D4Y3','1564080',7,'COORDINADOR'),(94,'42 COOR Z TS APS D3Y4','1564180',7,'COORDINADOR'),(88,'40 COOR Z ENF APS DIY2','1564280',7,'COORDINADOR'),(89,'40 COOR Z TS APS D1Y2','1564380',7,'COORDINADOR'),(121,'COORD NORMATIVO','1564480',7,'COORDINADOR'),(411,'JEFE DIVISION','1564580',19,'JEFE DE DIVISION'),(124,'COORD PROGRAMAS     80','1564780',7,'COORDINADOR'),(208,'DIRECTOR HRS','1566280',9,'DIRECTOR'),(1721,'SUPERV PROG ENF SOL 80','1566380',78,'PROVISIONAL'),(515,'MEDICO ESP HR S','1566480',27,'MEDICO NO FAMILIAR'),(1598,'SUPERV ENF SOL      80','1566580',40,'SUPERVISOR'),(636,'SUPERV MED AUX SOLI','1566680',40,'SUPERVISOR'),(437,'JEFE ENF HR S','1566780',20,'JEFE DE ENFERMERIA'),(502,'MEDICO GRAL U MED','1566880',25,'MEDICO GENERAL'),(272,'ENFERMERA GRAL HR S','1566980',11,'ENFERMERIA'),(509,'ANESTESIOLOGO UMH','1567080',27,'MEDICO NO FAMILIAR'),(2153,'17 AYTE ADMVO SOLID B  80','1567480',78,'PROVISIONAL'),(1412,'33 J SECC A SUBD AM 4  80','1570080',78,'PROVISIONAL'),(2146,'14 AYTE AUD PATRON DEL 80','1570180',108,'AUDITOR'),(2384,'14 TEC INF CONTAB UMF  80','1570280',118,'CONTABILIDAD'),(1568,'33 JEFE OFNA C DELEG 3 80','1570380',50,'OFICINA'),(1635,'22 JEFE OFICINA UMC    80','1570580',78,'PROVISIONAL'),(1123,'24 J SECC A SUBDEL 1   80','1571180',78,'PROVISIONAL'),(817,'27 JEFE OFICINA UMA    80','1571680',50,'OFICINA'),(173,'26 DENTISTA HR S','1571780',8,'DENTISTA'),(1791,'27 JEFE OFNA B SUBD 1  80','1571880',78,'PROVISIONAL'),(2340,'27 JEFE OFNA C DELEG 3 80','1571980',50,'OFICINA'),(1760,'27 JEFE SECC A DELEG 1 80','1572080',138,'JEFE DE SECCION'),(1165,'27 J SECC A SUBDELEG 2 80','1572180',78,'PROVISIONAL'),(2205,'39 COORD CAP DES UMA   80','1572280',78,'PROVISIONAL'),(1685,'29 COORD ORIENTACION   80','1572780',78,'PROVISIONAL'),(2151,'30 INSTRUC DES DELEG 3 80','1572980',135,'INSTRUCTOR'),(1459,'30 JEFE OFNA B DELEG 2 80','1573080',50,'OFICINA'),(1095,'30 JEFE SECC A DELEG 2 80','1573380',138,'JEFE DE SECCION'),(1475,'30 J SECC A SUBDELEG 3 80','1573480',78,'PROVISIONAL'),(1793,'30 ANALISTA SISTEMAS   80','1573580',78,'PROVISIONAL'),(1571,'31 ANALISTA SISTEMAS   80','1573680',78,'PROVISIONAL'),(2140,'34 SUBJEF BC CONS UNID 80','1573780',78,'PROVISIONAL'),(1483,'33 JEFE OFNA B SUBD 3  80','1574180',78,'PROVISIONAL'),(1487,'33 JEFE SECC A DELEG 3 80','1574280',138,'JEFE DE SECCION'),(1144,'33 J SECC A SUBDELEG 4 80','1574380',78,'PROVISIONAL'),(2291,'35 SUPERVISOR INSTALAC 80','1574780',78,'PROVISIONAL'),(2333,'36 JEFE OFNA B SUBD 4  80','1574880',50,'OFICINA'),(1325,'36 JEFE SECC A DELEG 4 80','1574980',138,'JEFE DE SECCION'),(1508,'36 JEFE SECCION C      80','1575080',138,'JEFE DE SECCION'),(535,'37 RESIDENTE CONS HR S','1575180',28,'MEDICO RESIDENTE'),(2427,'35 SUPERV TESO GENERAL 80','1575380',40,'SUPERVISOR'),(2037,'47 ANA SISTEMAS A JSS  80','1575480',78,'PROVISIONAL'),(1942,'33 COORD CAP DES UMC   80','1576080',78,'PROVISIONAL'),(1718,'41 ADMINISTRADOR UMH D 80','1576180',78,'PROVISIONAL'),(2367,'39 ADMINISTRADOR UMH E 80','1576280',55,'ADMINISTRADOR'),(1924,'41 ADMINISTRADOR UMF 1 80','1576380',78,'PROVISIONAL'),(2364,'39 ADMINISTRADOR UMF 2 80','1576480',55,'ADMINISTRADOR'),(1847,'30 ADMINISTRADOR UMF 5 80','1576780',78,'PROVISIONAL'),(1148,'30 JEFE OFICINA UMH A  80','1576880',50,'OFICINA'),(1850,'27 JEFE OFICINA UMH B  80','1576980',78,'PROVISIONAL'),(2113,'24 JEFE OFICINA UMH C  80','1577080',78,'PROVISIONAL'),(1806,'38 AUDITOR             80','1577580',108,'AUDITOR'),(2107,'36 TEC SEG H TRAB UM-A 80','1577680',78,'PROVISIONAL'),(372,'44 JEFE DEPTO UMH A','1577780',18,'JEFE DE DEPARTAMENTO'),(370,'39 JEFE DEPTO UMH B','1577880',18,'JEFE DE DEPARTAMENTO'),(367,'36 JEFE DEPTO UMH C','1577980',18,'JEFE DE DEPARTAMENTO'),(2139,'21 ASIST SERVS JUR D   80','1578180',78,'PROVISIONAL'),(1486,'39 ANALISTA SISTEMAS   80','1578280',78,'PROVISIONAL'),(1544,'41 ANALISTA SISTEMAS   80','1578380',78,'PROVISIONAL'),(935,'44 ANALISTA SISTEMAS   80','1578480',78,'PROVISIONAL'),(2363,'44 LIDER PROYEC SIST C 80','1578780',78,'PROVISIONAL'),(2226,'47 LIDER PROYEC SIST B 80','1578880',78,'PROVISIONAL'),(2433,'25 RESP DESP TRAM VEH  80','1579380',78,'PROVISIONAL'),(1989,'36 TEC ESP SIS CONSERV 80','1579680',117,'CONSERVACION'),(1531,'32 AUDITOR             80','1579780',78,'PROVISIONAL'),(1710,'33 TEC S TRAB A D3 Y 4 80','1579880',78,'PROVISIONAL'),(606,'18 SUBJEFE DIET UMH','1580180',37,'SUBJEFE DE DEPARTAMENTO'),(1513,'33 PROM SERV PREST SOC 80','1580280',32,'PROMOTOR'),(2415,'44 ADMOR TIENDA A      80','1580380',55,'ADMINISTRADOR'),(200,'45 DIRECTOR UMF','1580480',9,'DIRECTOR'),(1926,'25 JEFE TRABAJO SOC UM 80','1580580',78,'PROVISIONAL'),(1214,'42 JEFE LAB ANA CLINIC 80','1580780',78,'PROVISIONAL'),(1755,'30 AUD PATRON A DELEG  80','1580980',108,'AUDITOR'),(892,'30 JEFE OFNA A SUBD 1  80','1581080',50,'OFICINA'),(1472,'30 EVALUADOR SELEC D3  80','1581180',129,'EVALUADOR'),(2388,'31 INSTRUC ENS TEC CCT 80','1581280',135,'INSTRUCTOR'),(1481,'41 CONTADOR TIENDA A   80','1581380',78,'PROVISIONAL'),(364,'33 JEFE DEPTO UMC','1581580',18,'JEFE DE DEPARTAMENTO'),(2410,'39 CONTADOR TIENDA B   80','1581680',119,'CONTADOR'),(1258,'33 JEF RELACS LABS UMA 80','1581780',78,'PROVISIONAL'),(1972,'36 CONTADOR TIENDA C   80','1581880',119,'CONTADOR'),(1359,'33 JEFE OFNA A SUBD 2  80','1581980',50,'OFICINA'),(1396,'33 JEFE OFNA B DELEG 3 80','1582080',50,'OFICINA'),(609,'33 SUBJEFE ENF UM B','1582180',38,'SUBJEFE DE ENFERMERIA'),(423,'35 JEFE ENF UMB','1582280',20,'JEFE DE ENFERMERIA'),(611,'35 SUBJEFE ENF UMA','1582380',38,'SUBJEFE DE ENFERMERIA'),(571,'39 PSICOLOGO SELEC D4','1582480',33,'PSICOLOGO'),(1882,'56 SUBDELEGADO AM 4    80','1582580',78,'PROVISIONAL'),(1289,'44 COORD DEL TS M D3Y4 80','1582780',7,'COORDINADOR'),(1739,'36 JEFE DEPTO UMB      80','1582880',78,'PROVISIONAL'),(795,'36 JEFE OFNA A DELEG 2 80','1582980',50,'OFICINA'),(1476,'36 JEFE OFNA A SUBD 3  80','1583080',78,'PROVISIONAL'),(1803,'36 JEFE OFNA B DELEG 4 80','1583180',78,'PROVISIONAL'),(2144,'36 RESIDENT CONSERV C  80','1583280',117,'CONSERVACION'),(199,'44 DIRECTOR ESC ENF','1583380',9,'DIRECTOR'),(1029,'41 COOR ARCH CLIN D1Y2 80','1583480',7,'COORDINADOR'),(1956,'36 TEC SEG TRAB DELEG  80','1583580',78,'PROVISIONAL'),(570,'36 PSICOLOGO SELEC D3','1583780',33,'PSICOLOGO'),(1276,'38 ANALISTA SISTEMAS   80','1583880',78,'PROVISIONAL'),(373,'48 JEFE DEPTO CLINICO','1583980',18,'JEFE DE DEPARTAMENTO'),(427,'38 JEFE ENF UMA','1584080',20,'JEFE DE ENFERMERIA'),(569,'33 PSICOLOGO SELEC D2','1584280',33,'PSICOLOGO'),(1313,'39 ABOGADO PROCURADOR  80','1584380',91,'ABOGADO'),(2241,'39 AS JUR OF COB IMSS  80','1584480',78,'PROVISIONAL'),(443,'JEFE ENFERMERIA UMD','1584580',20,'JEFE DE ENFERMERIA'),(1754,'33 JEFE OFNA A DELEG 1 80','1584680',78,'PROVISIONAL'),(369,'39 JEFE DEPTO UMA 2N','1584880',18,'JEFE DE DEPARTAMENTO'),(98,'46 COOR PROG DIET','1584980',7,'COORDINADOR'),(1147,'39 JEFE OFNA A DELEG 3 80','1585080',50,'OFICINA'),(814,'39 JEFE OFNA A SUBD 4  80','1585180',50,'OFICINA'),(1468,'39 JEFE SECCION B      80','1585280',138,'JEFE DE SECCION'),(2220,'39 RESIDENT CONSERV B  80','1585380',117,'CONSERVACION'),(2369,'51 LID PROY SIST A JSS 80','1585480',78,'PROVISIONAL'),(498,'33 MEDICO GRAL U MED','1585580',25,'MEDICO GENERAL'),(1557,'44 JEFE OFNA A SUBD 4  80','1585680',50,'OFICINA'),(1648,'44 COOR ARCH CLIN D3Y4 80','1585780',78,'PROVISIONAL'),(1166,'41 JEFE OFNA A SUBD 3  80','1585880',50,'OFICINA'),(371,'41 JEFE DEPTO UMA 3N','1586080',18,'JEFE DE DEPARTAMENTO'),(1357,'39 JEFE OFNA A SUBD 2  80','1586180',50,'OFICINA'),(2334,'56 JEFE SERVS DELEG 4  80','1586280',78,'PROVISIONAL'),(2412,'41 JEFE OF C COB IMSS  80','1586380',50,'OFICINA'),(1511,'41 JEFE OFNA A DELEG 4 80','1586480',50,'OFICINA'),(1549,'41 JEFE SECCION A      80','1586580',138,'JEFE DE SECCION'),(2319,'36 JEFE OFNA A SUBD 1  80','1586680',50,'OFICINA'),(1796,'41 SUBDIR ADMVO UMC    80','1586780',78,'PROVISIONAL'),(1897,'53 JEFE SERVS DELEG 3  80','1586980',78,'PROVISIONAL'),(1776,'49 JEFE OF AB COB IMSS 80','1587080',78,'PROVISIONAL'),(1851,'43 ANALISTA SISTEMAS   80','1587180',78,'PROVISIONAL'),(1876,'43 AYTE MED DIR UMF    80','1587280',110,'AUX DE AREA MEDICA'),(1170,'51 COORD SERVS SUBD 4  80','1587480',7,'COORDINADOR'),(1937,'47 JEFE OF C COB IMSS  80','1587580',78,'PROVISIONAL'),(444,'JEFE ENFERMERIA UME','1587680',20,'JEFE DE ENFERMERIA'),(1252,'44 JEFE OFICINA C      80','1587880',50,'OFICINA'),(1778,'44 SUBJ DEPTO DELEG 4  80','1588080',78,'PROVISIONAL'),(2197,'39 ADMOR VELATORIO DF  80','1588180',78,'PROVISIONAL'),(2105,'53 RES PROY SIST B JSS 80','1588280',78,'PROVISIONAL'),(1410,'38 AUDITOR PATRONES    80','1588380',108,'AUDITOR'),(622,'SUBJEFE ENFERM UMA','1588480',38,'SUBJEFE DE ENFERMERIA'),(925,'47 JEFE OFICINA B      80','1588580',50,'OFICINA'),(1988,'40 ANALISTA SISTEMAS   80','1588680',78,'PROVISIONAL'),(2276,'39 SUP AUD PAT SUBD4   80','1588780',78,'PROVISIONAL'),(2147,'47 SUBD ADMVO UMA 2N   80','1588880',78,'PROVISIONAL'),(2235,'41 SUP AUD PAT D3      80','1588980',78,'PROVISIONAL'),(440,'JEFE ENFERMERIA UMA','1589080',20,'JEFE DE ENFERMERIA'),(1868,'49 ASESOR FUNCIONARIO  80','1589180',78,'PROVISIONAL'),(410,'49 JEFE DIVISION UMH','1589280',19,'JEFE DE DIVISION'),(1724,'49 JEFE OFICINA A      80','1589380',78,'PROVISIONAL'),(2325,'56 RES PROY SIST A JSS 80','1589480',78,'PROVISIONAL'),(2411,'49 SUBD ADMVO UMA 3N   80','1589580',78,'PROVISIONAL'),(441,'JEFE ENFERMERIA UMB','1589680',20,'JEFE DE ENFERMERIA'),(374,'51 JEFE DEPARTAMENTO C','1589780',18,'JEFE DE DEPARTAMENTO'),(2316,'49 COORD SER SUBD AM 3 80','1589880',7,'COORDINADOR'),(442,'JEFE ENFERMERIA UMC','1589980',20,'JEFE DE ENFERMERIA'),(377,'53 JEFE DEPARTAMENTO B','1590180',18,'JEFE DE DEPARTAMENTO'),(506,'36 ESP SEG TRAB DEL 4','1590280',54,'SEGURIDAD EN EL TRABAJO'),(633,'53 SUP MED PROG D4','1590380',40,'SUPERVISOR'),(2368,'56 ASESOR FUNCIONARIO  80','1590480',78,'PROVISIONAL'),(378,'56 JEFE DEPARTAMENTO A','1590680',18,'JEFE DE DEPARTAMENTO'),(2123,'58 SUBJEFE DE SERVS    80','1590880',78,'PROVISIONAL'),(1304,'36 J OFNA C SUBD AM 3  80','1591180',50,'OFICINA'),(1955,'39 J OF B SUB AM 3 O 4 80','1591280',78,'PROVISIONAL'),(1064,'41 J OFNA A SUBD AM 4  80','1591480',50,'OFICINA'),(625,'SUBJEFE ENFERM UMD','1591680',38,'SUBJEFE DE ENFERMERIA'),(626,'SUBJEFE ENFERM UME','1591780',38,'SUBJEFE DE ENFERMERIA'),(2094,'49 COORD SERVS SUBD 3  80','1591880',78,'PROVISIONAL'),(425,'37 JEFE ENF HR S','1591980',20,'JEFE DE ENFERMERIA'),(1658,'39 DIR U OPTVA P SOC B 80','1592080',78,'PROVISIONAL'),(1962,'36 DIR U OPTVA P SOC C 80','1592180',78,'PROVISIONAL'),(1107,'33 DIR U OPTVA P SOC D 80','1592280',78,'PROVISIONAL'),(1463,'30 DIR U OPTVA P SOC E 80','1592380',78,'PROVISIONAL'),(1588,'36 SUPERV AUD PAT D4   80','1592580',40,'SUPERVISOR'),(438,'JEFE ENFERM UMF 3','1592980',20,'JEFE DE ENFERMERIA'),(439,'JEFE ENFERM UMF 4','1593080',20,'JEFE DE ENFERMERIA'),(207,'DIRECTOR ESC ENFERM','1593180',9,'DIRECTOR'),(114,'COORD CURSOS ENFERM','1593480',7,'COORDINADOR'),(1127,'42 SUPERV PROG COPLA B 80','1593680',40,'SUPERVISOR'),(303,'49 INVEST ASOC C','1593780',16,'INVESTIGADOR'),(301,'47 INVEST ASOC B','1593880',16,'INVESTIGADOR'),(299,'44 INVEST ASOC A','1593980',16,'INVESTIGADOR'),(630,'33 SUPERV ENF COPLAMAR','1594080',40,'SUPERVISOR'),(420,'31 JEFE ENF HR S','1594280',20,'JEFE DE ENFERMERIA'),(629,'33 SUP MED A UMR SOLID','1594380',40,'SUPERVISOR'),(1519,'39 JEFE OFNA B CV      80','1594480',50,'OFICINA'),(1634,'44 JEFE DEPTO C CV     80','1594880',78,'PROVISIONAL'),(213,'DIRECTOR UMF','1595080',9,'DIRECTOR'),(1805,'47 JEFE DEPTO B CV     80','1595280',78,'PROVISIONAL'),(1794,'39 ADMOR TIENDA C      80','1595380',78,'PROVISIONAL'),(1469,'47 COORD SERVS SUBD 2  80','1595880',7,'COORDINADOR'),(631,'39 SUPERV ENFERMERIA S','1595980',40,'SUPERVISOR'),(2366,'44 COORD SERVS SUBD 1  80','1596080',78,'PROVISIONAL'),(2307,'56 SUBDELEGADO 4       80','1596180',80,'SUBDELEGADO'),(2308,'53 SUBDELEGADO 3       80','1596480',80,'SUBDELEGADO'),(212,'DIRECTOR UME','1596580',9,'DIRECTOR'),(1716,'51 SUBDELEGADO 2       80','1596680',78,'PROVISIONAL'),(1990,'51 RESP PROYEC SIST B  80','1596980',78,'PROVISIONAL'),(2323,'53 RESP PROYEC SIST A  80','1597080',78,'PROVISIONAL'),(1242,'36 ANALISTA SISTEMAS   80','1597180',78,'PROVISIONAL'),(1993,'47 SUPERV ZONA PROY    80','1597280',78,'PROVISIONAL'),(383,'JEFE DEPTO CLINICO','1597480',18,'JEFE DE DEPARTAMENTO'),(1499,'38 LITIGANTE C         80','1597580',89,'LITIGANTE'),(2059,'41 LITIGANTE B         80','1597680',89,'LITIGANTE'),(2271,'44 LITIGANTE A         80','1597780',78,'PROVISIONAL'),(2039,'35 ADMOR VELATORIO FOR 80','1597980',78,'PROVISIONAL'),(1661,'42 COORD PROG PARA-MED 80','1598080',78,'PROVISIONAL'),(2076,'DIRECTOR UMD        80','1598180',78,'PROVISIONAL'),(2228,'39 ING ESP SIS CONSERV 80','1598280',117,'CONSERVACION'),(604,'SUBD MEDICO UMB','1598380',36,'SUBDIRECTOR MEDICO'),(84,'36 COOR D ENF D1Y2','1598480',7,'COORDINADOR'),(87,'39 COORD DEL DIET D3Y4','1598580',7,'COORDINADOR'),(605,'SUBD MEDICO UMC','1598680',36,'SUBDIRECTOR MEDICO'),(100,'46 COORD PROGR TS MED','1598780',7,'COORDINADOR'),(2224,'49 SUBDELEGADO 1       80','1599180',78,'PROVISIONAL'),(1618,'51 JEFE DEPTO A DEL 4  80','1599280',78,'PROVISIONAL'),(1356,'49 JEFE DEPTO A DEL 3  80','1599380',18,'JEFE DE DEPARTAMENTO'),(1352,'47 JEFE DEPTO A DEL 2  80','1599480',18,'JEFE DE DEPARTAMENTO'),(1591,'44 JEFE DEPTO A DEL 1  80','1599580',18,'JEFE DE DEPARTAMENTO'),(2429,'49 JEFE DEPTO B DEL 4  80','1599680',18,'JEFE DE DEPARTAMENTO'),(1896,'47 JEFE DEPTO B DEL 3  80','1599780',78,'PROVISIONAL'),(1692,'44 JEFE DEPTO B DEL 2  80','1599880',78,'PROVISIONAL'),(1681,'41 JEFE DEPTO B DEL 1  80','1599980',78,'PROVISIONAL'),(1745,'20 SRIA COORD SUBD 3   80','1630180',78,'PROVISIONAL'),(1365,'20 SRIA J OF SUBD 4    80','1630880',76,'SECRETARIA'),(1173,'20 SRIA DIR UMA 2N     80','1631480',78,'PROVISIONAL'),(1967,'16 SRIA DIRECTOR UMC   80','1631680',76,'SECRETARIA'),(1845,'16 SRIA JEFE SECCION   80','1632080',78,'PROVISIONAL'),(1225,'16 SRIA RESID CONSERV  80','1632180',78,'PROVISIONAL'),(1456,'14 TAQUIMECANOGRAFA    80','1632280',78,'PROVISIONAL'),(1613,'30 SUBJ SER BAS UNID A 80','1670080',78,'PROVISIONAL'),(1694,'27 SUBJ SER BAS UNID B 80','1670180',78,'PROVISIONAL'),(1691,'24 SUBJ SER BAS UNID C 80','1670280',78,'PROVISIONAL'),(2374,'34 TEC ESP AP CON D1Y2 80','1670480',78,'PROVISIONAL'),(2259,'28 ADMINISTRADOR GUARD 80','1670680',78,'PROVISIONAL'),(1857,'24 CAJERO TIT SUBD 3Y4 80','1670980',112,'CAJERO'),(1526,'41 JEFE SECC A DELEG 4 80','1671180',138,'JEFE DE SECCION'),(1010,'39 JEFE SECC A DELEG 3 80','1671280',138,'JEFE DE SECCION'),(1904,'36 JEFE SECC A DELEG 2 80','1671380',138,'JEFE DE SECCION'),(1738,'36 ESP SEG HIG TRAB B  80','1672180',78,'PROVISIONAL'),(1358,'39 JEFE SECC A SUBD 4  80','1672380',138,'JEFE DE SECCION'),(1919,'36 JEFE SECC A SUBD 3  80','1672480',138,'JEFE DE SECCION'),(2173,'33 JEFE SECC A SUBD 2  80','1672580',138,'JEFE DE SECCION'),(1264,'33 ADMINISTRADOR GUARD 80','1672780',55,'ADMINISTRADOR'),(172,'15 DENTISTA HR S','1672980',8,'DENTISTA'),(2311,'31 RESIDENTE  CONS HRS 80','1673180',28,'MEDICO RESIDENTE'),(385,'JEFE LABORATORIO','1673380',18,'JEFE DE DEPARTAMENTO'),(355,'49 J CLIN SALUD TRAB','1673480',17,'JEFE CLINICO'),(508,'48 MED ESP SALUD TRAB','1673580',54,'SEGURIDAD EN EL TRABAJO'),(1146,'SUBJEFE SERVICIOS   80','1674280',78,'PROVISIONAL'),(951,'JEFE DEPARTAMENTO A 80','1674380',18,'JEFE DE DEPARTAMENTO'),(2354,'JEFE DEPARTAMENTO B 80','1674480',18,'JEFE DE DEPARTAMENTO'),(2168,'JEFE DEPARTAMENTO C 80','1674580',78,'PROVISIONAL'),(1723,'JEFE OFNA N C       80','1674780',78,'PROVISIONAL'),(2191,'JEFE OFICINA B      80','1674880',78,'PROVISIONAL'),(2104,'JEFE OFICINA C      80','1674980',78,'PROVISIONAL'),(1244,'SRIA A SUBDIR GRAL  80','1675080',78,'PROVISIONAL'),(948,'SRIA AUX A SUBDIR G 80','1675280',78,'PROVISIONAL'),(1734,'SRIA A JEFE SERVS   80','1675480',78,'PROVISIONAL'),(1939,'SRIA AUX A JEF SERV 80','1675680',78,'PROVISIONAL'),(931,'SRIA AUX B JEF SERV 80','1675780',78,'PROVISIONAL'),(1767,'SRIA SUBJEFE SERVS  80','1675880',78,'PROVISIONAL'),(1695,'SRIA AUX SUBJ SERVS 80','1675980',78,'PROVISIONAL'),(1368,'SRIA JEFE DEPTO     80','1676080',76,'SECRETARIA'),(1765,'SRIA AUX JEFE DEPTO 80','1676180',78,'PROVISIONAL'),(356,'JEFE CLINICA SAL TR','1676280',17,'JEFE CLINICO'),(510,'MED ESP SALUD TRAB','1676380',54,'SEGURIDAD EN EL TRABAJO'),(947,'SRIA JEFE OFNA      80','1676580',50,'OFICINA'),(2195,'JEFE SERVS DELEG 4  80','1676680',78,'PROVISIONAL'),(2050,'JEFE SERVS DELEG 3  80','1676780',78,'PROVISIONAL'),(2136,'JEFE SERVS DELEG 2  80','1676880',78,'PROVISIONAL'),(2331,'COOR ZONAL MED APS  80','1677080',7,'COORDINADOR'),(1490,'COOR Z ENF APS D3Y4 80','1677380',7,'COORDINADOR'),(2344,'25 CENSOR CONSTRUCCION 80','1678080',114,'CENSOR'),(2417,'36 COORD OPERAT SUBD4  80','1678180',7,'COORDINADOR'),(317,'INVEST ASOC A','1679180',16,'INVESTIGADOR'),(319,'INVEST ASOC B','1679280',16,'INVESTIGADOR'),(321,'INVEST ASOC C','1679380',16,'INVESTIGADOR'),(323,'INVEST ASOC D','1679480',16,'INVESTIGADOR'),(325,'INVEST J UI BIOMED','1679580',16,'INVESTIGADOR'),(327,'INVEST J UI CLIN','1679680',16,'INVESTIGADOR'),(328,'INVEST TIT A        80','1679780',16,'INVESTIGADOR'),(330,'INVEST TIT B','1679880',16,'INVESTIGADOR'),(332,'INVEST TIT C','1679980',16,'INVESTIGADOR'),(2303,'36 SUP SERV TEC TES D4 80','1680380',40,'SUPERVISOR'),(1671,'51 SUBD AD UMH A D3 D4 80','1680480',78,'PROVISIONAL'),(1704,'47 SUBDIR ADMVO UMH B  80','1680580',78,'PROVISIONAL'),(2321,'44 SUBDIR ADMVO UMH C  80','1680680',78,'PROVISIONAL'),(2176,'44 JEFE A CONSER UNID  80','1681380',117,'CONSERVACION'),(2306,'41 JEFE B CONSER UNID  80','1681480',117,'CONSERVACION'),(2087,'39 JEFE C CONSER UNID  80','1681580',117,'CONSERVACION'),(2141,'36 SUBJEF A CONS UNID  80','1681680',78,'PROVISIONAL'),(2424,'36 JEFE GPO AUD INT D1 80','1681880',137,'JEFE DE GRUPO'),(623,'SUBJEFE ENFERM UMB','1682080',38,'SUBJEFE DE ENFERMERIA'),(1677,'COORD DEL ENF D3Y4  80','1682380',78,'PROVISIONAL'),(1842,'COORD DEL ENF D1Y2  80','1682480',78,'PROVISIONAL'),(115,'COORD ENF PF D3Y4','1682580',7,'COORDINADOR'),(116,'COORD ENF PF DIY2','1682680',7,'COORDINADOR'),(118,'COORD ENF SP D3Y4','1682780',7,'COORDINADOR'),(117,'COORD ENF SP D1Y2','1682880',7,'COORDINADOR'),(2317,'20 TECNICO             80','1682980',155,'TECNICO'),(366,'36 JEF D NUT DIET UMHA','1683080',18,'JEFE DE DEPARTAMENTO'),(363,'33 JEF D NUT DIET UMHB','1683180',18,'JEFE DE DEPARTAMENTO'),(362,'30 JEF D NUT DIET UMHC','1683280',18,'JEFE DE DEPARTAMENTO'),(358,'25 J D NUT DIE UMH D','1683380',18,'JEFE DE DEPARTAMENTO'),(1714,'25 J O DIE ENS UMH AYB 80','1683480',78,'PROVISIONAL'),(85,'38 COORD CURSOS ENF','1683580',7,'COORDINADOR'),(1407,'47 JEFE OFNA A DELEG 4 80','1683680',50,'OFICINA'),(1298,'44 JEFE OFNA A DELEG 3 80','1683780',50,'OFICINA'),(1039,'41 JEFE OFNA A DELEG 2 80','1683880',50,'OFICINA'),(624,'SUBJEFE ENFERM UMC','1684080',38,'SUBJEFE DE ENFERMERIA'),(430,'40 JEFE ENFERMERIA UMA','1684180',20,'JEFE DE ENFERMERIA'),(429,'39 JEFE ENFERMERIA UMB','1684280',20,'JEFE DE ENFERMERIA'),(428,'38 JEFE ENFERMERIA UMC','1684380',20,'JEFE DE ENFERMERIA'),(426,'37 JEFE ENFERMERIA UMD','1684480',20,'JEFE DE ENFERMERIA'),(615,'38 SUBJEFE ENFERM UMA','1684580',38,'SUBJEFE DE ENFERMERIA'),(614,'37 SUBJEFE ENFERM UMB','1684680',38,'SUBJEFE DE ENFERMERIA'),(613,'36 SUBJEFE ENFERM UMC','1684780',38,'SUBJEFE DE ENFERMERIA'),(1581,'41 COORD DEL ENF D1Y2  80','1684880',7,'COORDINADOR'),(1761,'44 COORD DEL ENF D3Y4  80','1684980',78,'PROVISIONAL'),(92,'41 COORD ENF SP D1Y2','1685080',7,'COORDINADOR'),(97,'44 COORD ENF SP D3Y4','1685180',7,'COORDINADOR'),(91,'41 COORD ENF PF D1Y2','1685280',7,'COORDINADOR'),(95,'44 COOR ENF PF D3Y4','1685380',7,'COORDINADOR'),(368,'36 JEFE TRAB SOC UMHA','1685480',18,'JEFE DE DEPARTAMENTO'),(365,'33 JEFE TRAB SOC UMHB','1685580',18,'JEFE DE DEPARTAMENTO'),(361,'30 J TRAB SOC UMH C','1685680',18,'JEFE DE DEPARTAMENTO'),(360,'27 JEFE TRAB SOC UMHD','1685780',18,'JEFE DE DEPARTAMENTO'),(359,'27 JEFE TRAB SOC UMF','1685880',18,'JEFE DE DEPARTAMENTO'),(607,'25 SUBJEF TRAB SOC UMH','1685980',37,'SUBJEFE DE DEPARTAMENTO'),(90,'41 COORD DEL DIET D2','1686080',7,'COORDINADOR'),(96,'44 COORD DEL DIET D3Y4','1686180',7,'COORDINADOR'),(1501,'44 DIR U OP PRES SOC A 80','1686280',78,'PROVISIONAL'),(1408,'39 DIR U OP PRES SOC C 80','1686480',9,'DIRECTOR'),(1657,'36 DIR U OP PRES SOC D 80','1686580',78,'PROVISIONAL'),(1789,'33 DIR U OP PRES SOC E 80','1686680',78,'PROVISIONAL'),(1756,'42 SUPERV GUARD D3Y4   80','1686780',78,'PROVISIONAL'),(1151,'40 DIRECTORA GUARD A   80','1686980',9,'DIRECTOR'),(1651,'37 DIRECTORA GUARD B   80','1687080',9,'DIRECTOR'),(2061,'34 AUDITOR             80','1687280',108,'AUDITOR'),(2237,'53 JEFE SERVS DELEG 1  80','1687980',78,'PROVISIONAL'),(1284,'54 JEFE SERVS DELEG 2  80','1688080',78,'PROVISIONAL'),(1632,'55 JEFE SERVS DELEG 3  80','1688180',78,'PROVISIONAL'),(2264,'41 JEFE OFNA B DELEG 4 80','1688280',78,'PROVISIONAL'),(2373,'33 JEFE OFNA B DELEG 1 80','1688580',50,'OFICINA'),(2219,'47 JEFE GPO AUD INT D3 80','1688780',137,'JEFE DE GRUPO'),(424,'36 J ENF UME','1689080',20,'JEFE DE ENFERMERIA'),(612,'35 SUBJEFE ENFERM UMD','1689180',38,'SUBJEFE DE ENFERMERIA'),(610,'34 SUBJEFE ENFERM UME','1689280',38,'SUBJEFE DE ENFERMERIA'),(422,'34 J ENF UMF 3','1689380',20,'JEFE DE ENFERMERIA'),(421,'33 J ENF UMF4','1689480',20,'JEFE DE ENFERMERIA'),(1663,'43 DIRECTORA GUARD A   80','1689580',9,'DIRECTOR'),(1809,'40 DIRECTORA GUARD B   80','1689680',9,'DIRECTOR'),(1733,'44 SUPERV GUARD D3Y4   80','1689980',78,'PROVISIONAL'),(384,'JEFE DEPTO LABORAT','1690080',18,'JEFE DE DEPARTAMENTO'),(50,'49 CONFIANZA MEDICA','1700080',6,'CONFIANZA MEDICA'),(298,'44 INV ASOC A MED','1700180',16,'INVESTIGADOR'),(300,'47 INV ASOC B MED','1700280',16,'INVESTIGADOR'),(304,'49 INVEST ASOC C MED','1700380',16,'INVESTIGADOR'),(307,'51 INVEST TIT A MED','1700480',16,'INVESTIGADOR'),(105,'51 COORD MEDICO PROG','1700580',7,'COORDINADOR'),(375,'51 JEFE DEPTO C MED','1700680',18,'JEFE DE DEPARTAMENTO'),(309,'53 INV TIT B MED','1700780',16,'INVESTIGADOR'),(376,'53 J DEPTO B MED','1700880',18,'JEFE DE DEPARTAMENTO'),(311,'55 INVEST TIT C MED','1700980',16,'INVESTIGADOR'),(313,'56 INV J UI BIOMED MED','1701080',16,'INVESTIGADOR'),(314,'56 INV J UI CLI MED','1701180',16,'INVESTIGADOR'),(379,'56 JEFE DEPTO A MED','1701280',18,'JEFE DE DEPARTAMENTO'),(39,'36 CONFIANZA MEDICA','1701380',6,'CONFIANZA MEDICA'),(40,'38 CONFIANZA MEDICA','1701480',6,'CONFIANZA MEDICA'),(41,'39 CONFIANZA MEDICA','1701580',6,'CONFIANZA MEDICA'),(45,'43 CONFIANZA MEDICA','1701680',6,'CONFIANZA MEDICA'),(46,'44 CONFIANZA MEDICA','1701780',6,'CONFIANZA MEDICA'),(52,'52 CONFIANZA MEDICA','1701880',6,'CONFIANZA MEDICA'),(53,'53 CONFIANZA MEDICA','1701980',6,'CONFIANZA MEDICA'),(55,'56 CONFIANZA MEDICA','1702080',6,'CONFIANZA MEDICA'),(43,'41 CONFIANZA MEDICA','1702180',6,'CONFIANZA MEDICA'),(47,'46 CONFIANZA MEDICA','1702280',6,'CONFIANZA MEDICA'),(48,'47 CONFIANZA MEDICA','1702380',6,'CONFIANZA MEDICA'),(56,'56 CONFIANZA MEDICA','1702480',6,'CONFIANZA MEDICA'),(49,'48 CONFIANZA MEDICA','1702580',6,'CONFIANZA MEDICA'),(44,'42 CONFIANZA MEDICA','1702680',6,'CONFIANZA MEDICA'),(627,'58 SUBJEFE SERVS MED','1702780',39,'SUBJEFE DE SERVICIOS MEDICOS'),(57,'58 CONFIANZA MEDICA','1702880',6,'CONFIANZA MEDICA'),(42,'40 CONFIANZA MEDICA','1702980',6,'CONFIANZA MEDICA'),(302,'48 INVEST MED QUEJAS','1703080',16,'INVESTIGADOR'),(99,'46 COORD PROG ENFERM','1703180',7,'COORDINADOR'),(123,'COORD PROG ENFERM','1703280',7,'COORDINADOR'),(21,'46 CONFIANZA ENF','1703380',5,'CONFIANZA ENFERMERIA'),(20,'43 CONFIANZA ENFERM','1703480',5,'CONFIANZA ENFERMERIA'),(19,'41 CONFIANZA ENFERM','1703580',5,'CONFIANZA ENFERMERIA'),(16,'31 CONFIANZA ENFERM','1703680',5,'CONFIANZA ENFERMERIA'),(15,'21 CONFIANZA ENFERM','1703780',5,'CONFIANZA ENFERMERIA'),(17,'33 CONFIANZA ENF','1703880',5,'CONFIANZA ENFERMERIA'),(18,'38 CONFIANZA ENF','1703980',5,'CONFIANZA ENFERMERIA'),(239,'42 SUP PROG ENF COPLA','1704080',11,'ENFERMERIA'),(51,'51 CONFIANZA MEDICA','1704180',6,'CONFIANZA MEDICA'),(24,'53 CONFIANZA ENF','1704280',5,'CONFIANZA ENFERMERIA'),(23,'49 CONFIANZA ENF','1704380',5,'CONFIANZA ENFERMERIA'),(22,'47 CONFIANZA ENFERM','1704480',5,'CONFIANZA ENFERMERIA'),(54,'54 CONFIANZA MEDICA','1704580',6,'CONFIANZA MEDICA'),(305,'50 INV ASOC D MED','1704780',16,'INVESTIGADOR'),(120,'COORD MEDICO PROG   80','1705080',7,'COORDINADOR'),(380,'JEFE DEPTO A MED','1705280',18,'JEFE DE DEPARTAMENTO'),(381,'JEFE DEPTO B MED','1705380',18,'JEFE DE DEPARTAMENTO'),(382,'JEFE DEPTO C MED    80','1705480',18,'JEFE DE DEPARTAMENTO'),(119,'COORD MED ESTOMAT   80','1705580',7,'COORDINADOR'),(318,'INVEST ASOC A MED','1705680',16,'INVESTIGADOR'),(320,'INVEST ASOC B MED','1705780',16,'INVESTIGADOR'),(322,'INVEST ASOC C MED','1705880',16,'INVESTIGADOR'),(324,'INVEST ASOC D MED','1705980',16,'INVESTIGADOR'),(316,'INV J UI BIOMED MED','1706080',16,'INVESTIGADOR'),(326,'INVEST J UI CLI MED','1706180',16,'INVESTIGADOR'),(329,'INVEST TIT A MED    80','1706280',16,'INVESTIGADOR'),(331,'INVEST TIT B MED','1706380',16,'INVESTIGADOR'),(333,'INVEST TIT C MED','1706480',16,'INVESTIGADOR'),(122,'COORD NORMATIVO MED','1706580',7,'COORDINADOR'),(412,'JEFE DIVISION MED','1706680',19,'JEFE DE DIVISION'),(58,'N36 CONFIANZA MEDICA','1706880',6,'CONFIANZA MEDICA'),(59,'N38 CONFIANZA MEDICA','1706980',6,'CONFIANZA MEDICA'),(60,'N39 CONFIANZA MEDICA','1707080',6,'CONFIANZA MEDICA'),(64,'N43 CONFIANZA MEDICA','1707180',6,'CONFIANZA MEDICA'),(65,'N44 CONFIANZA MEDICA','1707280',6,'CONFIANZA MEDICA'),(72,'N53 CONFIANZA MEDICA','1707480',6,'CONFIANZA MEDICA'),(66,'N46 CONFIANZA MEDICA','1707780',6,'CONFIANZA MEDICA'),(63,'N42 CONFIANZA MEDICA','1708180',6,'CONFIANZA MEDICA'),(61,'N40 CONFIANZA MEDICA','1708380',6,'CONFIANZA MEDICA'),(30,'N43 CONFIANZA ENFERM','1708580',5,'CONFIANZA ENFERMERIA'),(29,'N41 CONFIANZA ENFERM','1708680',5,'CONFIANZA ENFERMERIA'),(25,'N21 CONFIANZA ENFERM','1708880',5,'CONFIANZA ENFERMERIA'),(27,'N33 CONFIANZA ENFERM','1708980',5,'CONFIANZA ENFERMERIA'),(32,'N47 CONFIANZA ENFERM','1709480',5,'CONFIANZA ENFERMERIA'),(156,'N55 COOR MED EST','1709680',7,'COORDINADOR'),(160,'N55 COORD MED PROGR','1709780',7,'COORDINADOR'),(170,'N60 COORD NORM MED','1709980',7,'COORDINADOR'),(406,'N60 JEFE DEPTO A MED','1710980',18,'JEFE DE DEPARTAMENTO'),(405,'N56 JEFE DEPTO B MED','1711080',18,'JEFE DE DEPARTAMENTO'),(404,'N55 JEFE DEPTO C MED','1711180',18,'JEFE DE DEPARTAMENTO'),(419,'N60 JEFE DIVISION MED','1711280',19,'JEFE DE DIVISION'),(628,'N61 SUBJ SERVS MED','1711380',39,'SUBJEFE DE SERVICIOS MEDICOS'),(2428,'N05 CONFIANZA NIVEL    80','1800580',78,'PROVISIONAL'),(1676,'N20 PROM ACCION COMUN  80','1806680',78,'PROVISIONAL'),(2069,'N09 CONT TARJETAS      80','1806880',119,'CONTADOR'),(2347,'N09 PROMOTOR COBRANZAS 80','1806980',78,'PROVISIONAL'),(2282,'N09 PROM SALUD BRIG R  80','1807080',78,'PROVISIONAL'),(2348,'N12 JEFE ROPERIA UMH   80','1807380',137,'JEFE DE GRUPO'),(1941,'N08 VIGILANTE B        80','1807580',78,'PROVISIONAL'),(2391,'N13 CAJ AUX C U T CONT 80','1807680',112,'CAJERO'),(1884,'N13 JEF MESA OF ADMVA  80','1807980',137,'JEFE DE GRUPO'),(2054,'N10 VIGILANTE A CUSTOD 80','1808080',78,'PROVISIONAL'),(1196,'N06 VIGILANTE C        80','1808280',78,'PROVISIONAL'),(2804,'N15 ORIENT IMSS PERS   80','1808380',78,'PROVISIONAL'),(1647,'N22 TECNICO TEATRAL A  80','1808580',154,'TEATRO'),(2169,'N18 SUPERVISOR LIMP    80','1808780',78,'PROVISIONAL'),(2158,'N18 TEC CONT FAUNA NOC 80','1808880',78,'PROVISIONAL'),(1060,'N24 CAJ T AB U TE CONT 80','1809080',112,'CAJERO'),(2753,'N21 ALMACENISTA SOLID  80','1809180',61,'ALMACEN'),(1994,'N15 ORIENTADOR SINDIC  80','1809780',78,'PROVISIONAL'),(1973,'N25 DIS GRAF ENS UMH   80','1810580',124,'DISEÑADOR GRAFICO'),(2232,'N15 OPERADOR SIST E    80','1811380',78,'PROVISIONAL'),(1576,'N20 OPERADOR SIST D    80','1811480',70,'OPERADOR'),(1416,'N24 OPERADOR SIST C    80','1811580',70,'OPERADOR'),(1933,'N33 OPERADOR SIST A    80','1811780',78,'PROVISIONAL'),(2386,'N27 PROGRAMADOR SIST C 80','1811880',78,'PROVISIONAL'),(1997,'N33 PROG SISTEM C JSS  80','1812880',78,'PROVISIONAL'),(125,'N38 COORD CURSOS TEC','1812980',7,'COORDINADOR'),(2362,'N39 SUP ACCION COMUNIT 80','1813880',78,'PROVISIONAL'),(552,'N15 DIETISTA HRS','1813980',29,'NUTRICION Y DIETOLOGIA'),(686,'N15 TRABAJ SOCIAL HRS','1814080',48,'TRABAJO SOCIAL'),(2024,'N10 AYTE SEGURIDAD CV  80','1814680',78,'PROVISIONAL'),(1554,'N25 JEF OFNA T ADMVA 4 80','1814980',78,'PROVISIONAL'),(2211,'N13 RESP VIG HGZ O UM-A80','1815180',78,'PROVISIONAL'),(2409,'N17 JEF OFNA T ADMVA 1 80','1815380',50,'OFICINA'),(2262,'N18 SUPERV VIGILANCIA  80','1815580',78,'PROVISIONAL'),(1902,'N20 JEF OFNA T ADMVA 2 80','1815780',78,'PROVISIONAL'),(1582,'N22 JEF OFNA T ADMVA 3 80','1815880',50,'OFICINA'),(2042,'N25 GESTOR             80','1816180',131,'GESTOR'),(1749,'N33 J GPO OF C CO IMSS 80','1816480',137,'JEFE DE GRUPO'),(1762,'N36 J GPO O AB CO IMSS 80','1816580',137,'JEFE DE GRUPO'),(2339,'N24 J MESA A SUBDEL 3  80','1816880',78,'PROVISIONAL'),(2370,'N27 J MESA A SUBDEL 4  80','1816980',78,'PROVISIONAL'),(2247,'N20 JEFE TURNO VIG     80','1817180',78,'PROVISIONAL'),(2430,'N36 JEFE SEC B SUBD 4  80','1817380',138,'JEFE DE SECCION'),(2044,'N33 JEFE SEC B SUBD 3  80','1817480',138,'JEFE DE SECCION'),(1729,'N37 ADMOR HR S         80','1817880',78,'PROVISIONAL'),(2199,'N30 CHOFER SUBDIR GRAL 80','1817980',78,'PROVISIONAL'),(1678,'N22 COORDINADOR        80','1818580',78,'PROVISIONAL'),(2207,'N19 COORDINADOR        80','1818680',78,'PROVISIONAL'),(1424,'N28 ADMOR CSS UD Y CA  80','1818880',55,'ADMINISTRADOR'),(813,'N36 JEFE LINEA DELEG 3 80','1819080',78,'PROVISIONAL'),(1409,'N39 JEFE LINEA DELEG 4 80','1819180',78,'PROVISIONAL'),(1464,'N22 ADMOR CSS UD Y CA  80','1819680',55,'ADMINISTRADOR'),(2023,'N15 JEFE GPO VIGIL CV  80','1819780',137,'JEFE DE GRUPO'),(2254,'N39 SUP ADMON A CLIN S 80','1819880',78,'PROVISIONAL'),(2365,'N22 CONTR EMISIONES    80','1820680',121,'CONTROLADOR DE EMISIONES'),(1375,'N30 CONTROLADOR SIST B 80','1820880',122,'CONTROLADOR DE SISTEMAS'),(936,'N33 CONTROLADOR SIST A 80','1820980',122,'CONTROLADOR DE SISTEMAS'),(1597,'N36 ANAL PROG SIST C   80','1821380',78,'PROVISIONAL'),(1830,'N42 COOR Z TS APS D4Y3 80','1822280',78,'PROVISIONAL'),(1458,'N40 COOR Z TS APS D2Y1 80','1822380',7,'COORDINADOR'),(1706,'N41 JEFE OFNA B SUBD 4 80','1822880',78,'PROVISIONAL'),(2402,'N39 COORD CAP DES UMA  80','1823180',7,'COORDINADOR'),(2356,'N31 EVALUADOR VEHICUL  80','1823880',129,'EVALUADOR'),(1696,'N36 JEFE SECCION C     80','1824380',138,'JEFE DE SECCION'),(2390,'N37 RESIDENTE CONS HRS 80','1824480',28,'MEDICO RESIDENTE'),(2418,'N47 ANAL SIST A JSS    80','1824780',78,'PROVISIONAL'),(1909,'N31 ANALISTA SISTEMAS S80','1824880',78,'PROVISIONAL'),(1612,'N33 COORD CAP DES UMC  80','1825080',78,'PROVISIONAL'),(1022,'N41 ADMOR UMH D        80','1825180',55,'ADMINISTRADOR'),(916,'N41 ADMOR UMF 1        80','1825380',55,'ADMINISTRADOR'),(1174,'N39 ADMOR UMF 2        80','1825480',78,'PROVISIONAL'),(1035,'N36 ADMOR UMF 3        80','1825580',55,'ADMINISTRADOR'),(1272,'N33 ADMOR UMF 4        80','1825680',55,'ADMINISTRADOR'),(1057,'N30 ADMOR UMF 5        80','1825780',55,'ADMINISTRADOR'),(744,'N30 JEFE OFNA UMH A','1825880',50,'OFICINA'),(777,'N27 JEFE OFNA UMH B','1825980',50,'OFICINA'),(1415,'N24 JEFE OFNA UMH C    80','1826080',50,'OFICINA'),(1159,'N22 JEFE OFNA UMH D    80','1826180',50,'OFICINA'),(1555,'N22 JEFE OFNA UMF 1    80','1826280',50,'OFICINA'),(2084,'N36 TEC S H TRAB UM-A  80','1826680',78,'PROVISIONAL'),(748,'N44 JEFE DEPTO UMH A','1826780',18,'JEFE DE DEPARTAMENTO'),(1305,'N39 JEFE DEPTO UMH B   80','1826880',78,'PROVISIONAL'),(1411,'N36 JEFE DEPTO UMH C   80','1826980',18,'JEFE DE DEPARTAMENTO'),(1860,'N21 ASIST SERVS JUR D  80','1827180',78,'PROVISIONAL'),(2245,'N44 LIDER PROY SIST C  80','1827780',78,'PROVISIONAL'),(939,'N47 LIDER PROY SIST B  80','1827880',78,'PROVISIONAL'),(954,'N49 LIDER PROY SIST A  80','1827980',78,'PROVISIONAL'),(2120,'N25 RESP DESP TRAM VEH 80','1828080',78,'PROVISIONAL'),(1895,'N31 INST ENS TEC CCT   80','1828780',135,'INSTRUCTOR'),(2004,'N56 SUBDELEGADO AM 4   80','1828980',78,'PROVISIONAL'),(1566,'N39 ABOGADO PROCURADOR 80','1829780',91,'ABOGADO'),(1899,'N49 LID PROY SIS B JSS 80','1829980',78,'PROVISIONAL'),(1604,'N39 JEFE SECCION B     80','1830180',138,'JEFE DE SECCION'),(1376,'N51 LID PROY SIS A JSS 80','1830280',78,'PROVISIONAL'),(1336,'N44 JEFE OFNA A SUBD 4 80','1830380',50,'OFICINA'),(1157,'N41 JEFE OFNA A SUBD 3 80','1830580',50,'OFICINA'),(2194,'N53 SUBDELEGADO AM 3   80','1830680',78,'PROVISIONAL'),(1627,'N39 JEFE OFNA A SUBD 2 80','1830780',78,'PROVISIONAL'),(1720,'N41 JEFE SECCION A     80','1830880',138,'JEFE DE SECCION'),(2389,'N36 JEFE OFNA A SUBD 1 80','1830980',50,'OFICINA'),(2314,'N43 AYTE MED DIR UMF   80','1831180',110,'AUX DE AREA MEDICA'),(1492,'N51 COORD SERVS SUBD 4 80','1831280',7,'COORDINADOR'),(2229,'N49 ASESOR FUNCIONARIO 80','1831680',78,'PROVISIONAL'),(1930,'N56 RESP PRO SIS A JSS 80','1831780',78,'PROVISIONAL'),(2092,'N56 ASESOR FUNCIONARIO 80','1831980',78,'PROVISIONAL'),(1736,'N51 COORD SERV SUB AM4 80','1832180',78,'PROVISIONAL'),(1861,'N49 COORD SERV SUB 3   80','1832280',78,'PROVISIONAL'),(1785,'N39 JEFE OFNA B CV     80','1832480',78,'PROVISIONAL'),(2234,'N47 JEFE DEPTO B CV    80','1832880',78,'PROVISIONAL'),(2201,'N47 COORD SERV SUBD 2  80','1833380',78,'PROVISIONAL'),(2166,'N44 COORD SERV SUBD 1  80','1833480',78,'PROVISIONAL'),(2082,'N56 SUBDELEGADO 4      80','1833580',78,'PROVISIONAL'),(2387,'N51 SUBDELEGADO 2      80','1833780',80,'SUBDELEGADO'),(1370,'N49 RES PROYEC SIST C  80','1833880',78,'PROVISIONAL'),(1195,'N51 RES PROYEC SIST B  80','1833980',78,'PROVISIONAL'),(1377,'N53 RES PROYEC SIST A  80','1834080',78,'PROVISIONAL'),(1388,'N42 COORDINADOR ADMVO  80','1834680',7,'COORDINADOR'),(2352,'N35 ADMOR VELATOR FOR  80','1834780',55,'ADMINISTRADOR'),(1991,'N42 COORD PROG PAR-MED 80','1834880',78,'PROVISIONAL'),(136,'N46 COORD PROG TS MED','1835080',7,'COORDINADOR'),(2143,'N49 SUBDELEGADO 1      80','1835180',78,'PROVISIONAL'),(1772,'N51 JEFE DEPTO A DEL 4 80','1835280',78,'PROVISIONAL'),(1728,'N49 JEFE DEPTO A DEL 3 80','1835380',78,'PROVISIONAL'),(1920,'N47 JEFE DEPTO A DEL 2 80','1835480',78,'PROVISIONAL'),(1971,'N44 JEFE DEPTO A DEL 1 80','1835580',78,'PROVISIONAL'),(2266,'N49 JEFE DEPTO B DEL 4 80','1835680',78,'PROVISIONAL'),(2393,'N47 JEFE DEPTO B DEL 3 80','1835780',18,'JEFE DE DEPARTAMENTO'),(1839,'N44 JEFE DEPTO B DEL 2 80','1835880',78,'PROVISIONAL'),(1206,'N30 SUPER DEL SERV BAS 80','1836380',40,'SUPERVISOR'),(1639,'N41 JEFE SECC A DEL 4  80','1837080',138,'JEFE DE SECCION'),(1086,'N39 JEFE SECC A DEL 3  80','1837180',138,'JEFE DE SECCION'),(1771,'N36 JEFE SECC A DEL 2  80','1837280',138,'JEFE DE SECCION'),(1774,'N39 RESP CAP DES SUBD4 80','1837580',78,'PROVISIONAL'),(1031,'N39 JEFE SECC A SUBD 4 80','1838180',138,'JEFE DE SECCION'),(1294,'N36 JEFE SECC A SUBD 3 80','1838280',138,'JEFE DE SECCION'),(1878,'N33 JEFE SECC A SUBD 2 80','1838380',138,'JEFE DE SECCION'),(2152,'N30 JEFE SECC A SUBD 1 80','1838480',138,'JEFE DE SECCION'),(2294,'N49 SUBD AD UMH A D1Y2 80','1838880',78,'PROVISIONAL'),(781,'N51 SUBD AD UMH A D3 Y 4','1838980',56,'SUBDIRECTOR ADMINISTRATIVO'),(1273,'N47 SUBDIR ADMVO UMH B 80','1839080',78,'PROVISIONAL'),(1402,'N44 SUBDIR ADMVO UMH C 80','1839180',78,'PROVISIONAL'),(1944,'N36 TEC COS PRES A D4  80','1839280',157,'TECNICO DE COSTOS'),(2255,'N33 TEC COS PRES A D3  80','1839380',157,'TECNICO DE COSTOS'),(2378,'N30 TEC COS PRES A D2  80','1839480',157,'TECNICO DE COSTOS'),(2382,'N30 TEC COS PRES B D3  80','1839680',157,'TECNICO DE COSTOS'),(1945,'N47 JEFE OFNA A DEL 4  80','1840780',78,'PROVISIONAL'),(1398,'N44 JEFE OFNA A DEL 3  80','1840880',50,'OFICINA'),(1470,'N41 JEFE OFNA A DEL 2  80','1840980',78,'PROVISIONAL'),(1867,'N39 JEFE OFNA A DEL 1  80','1841080',78,'PROVISIONAL'),(1936,'N44 DIR U OP PRE SOC A 80','1841980',78,'PROVISIONAL'),(1114,'N41 DIR U OP PRE SOC B 80','1842080',78,'PROVISIONAL'),(1439,'N39 DIR U OP PRE SOC C 80','1842180',78,'PROVISIONAL'),(1615,'N36 DIR U OP PRE SOC D 80','1842280',78,'PROVISIONAL'),(1454,'N33 DIR U OP PRE SOC E 80','1842380',78,'PROVISIONAL'),(2063,'N41 JEFE GRUPO A AUDIT 80','1842580',108,'AUDITOR'),(1319,'N41 JEFE OFNA B DEL 4  80','1843080',50,'OFICINA'),(2068,'N36 JEFE OFNA B DEL 2  80','1843280',78,'PROVISIONAL'),(1348,'N09 SRIA ADMOR TIENDA C80','1844180',76,'SECRETARIA'),(2510,'N13 SRIA COORD SUBD 2  80','1845080',78,'PROVISIONAL'),(1444,'N17 SRIA COORD SUBD 4  80','1845280',78,'PROVISIONAL'),(1938,'N12 SRIA DIR GUARDERIA 80','1845580',78,'PROVISIONAL'),(1227,'N12 SRIA JEFE SECCION  80','1846080',78,'PROVISIONAL'),(1422,'N12 SRIA RESID CONSERV 80','1846180',78,'PROVISIONAL'),(1790,'N13 SRIA J OFNA SUBD 3 80','1846480',78,'PROVISIONAL'),(1874,'N15 SRIA J OFNA SUBD 4 80','1846580',78,'PROVISIONAL'),(1437,'N17 SRIA DIR UMA 3NIV  80','1847980',78,'PROVISIONAL'),(1798,'N17 SRIA J OF AB COIMSS80','1848080',78,'PROVISIONAL'),(1654,'N15 SRIA J OF C CO IMSS80','1848180',78,'PROVISIONAL'),(1871,'N28 ADMOR GUARDERIA    80','1848780',78,'PROVISIONAL'),(1532,'N10 CALCULISTA TIENDA  80','1849380',113,'CALCULISTA'),(139,'N49 COOR D ENF SP D3Y4','1850880',7,'COORDINADOR'),(996,'N55 COORD PROGRAMAS B  80','1851280',7,'COORDINADOR'),(128,'N43 COOR Z ENF APS D1Y2','1851480',7,'COORDINADOR'),(134,'N46 COOR Z ENF APS D3Y4','1851580',7,'COORDINADOR'),(157,'N55 COOR Z MED APS','1851680',7,'COORDINADOR'),(2281,'N52 COOR AUX DEL ST    80','1851880',78,'PROVISIONAL'),(171,'N60 COORD NORMATIVO','1851980',7,'COORDINADOR'),(143,'N51 COOR Z EPID APS','1852180',7,'COORDINADOR'),(144,'N51 COOR Z ESTOM APS','1852280',7,'COORDINADOR'),(223,'N53 DIRECTOR UM C','1852680',9,'DIRECTOR'),(219,'N52 DIRECTOR UM D','1852780',9,'DIRECTOR'),(216,'N49 DIRECTOR UMF','1852980',9,'DIRECTOR'),(334,'N49 INVEST ASOC A','1853280',16,'INVESTIGADOR'),(337,'N50 INVEST ASOC B','1853480',16,'INVESTIGADOR'),(340,'N52 INVEST ASOC C','1853680',16,'INVESTIGADOR'),(343,'N53 INVEST ASOC D','1853880',16,'INVESTIGADOR'),(232,'N60 DIR CENT INV BIOM','1854180',9,'DIRECTOR'),(454,'N60 JEFE UNID INVEST','1854280',21,'JEFE DE INVESTIGACION'),(347,'N55 INVEST TITULAR A','1854480',16,'INVESTIGADOR'),(350,'N56 INVEST TITULAR B','1854680',16,'INVESTIGADOR'),(353,'N58 INVEST TITULAR C','1854880',16,'INVESTIGADOR'),(396,'N42 JEFE LABORATORIO','1855180',18,'JEFE DE DEPARTAMENTO'),(1852,'N60 JEFE DEPTO A       80','1855280',78,'PROVISIONAL'),(1725,'N63 JEFE DEPTO AUTON A 80','1855480',78,'PROVISIONAL'),(1811,'N61 JEFE DEPTO AUTON B 80','1855580',78,'PROVISIONAL'),(165,'N56 COORD PROGRAMAS A','1855680',7,'COORDINADOR'),(2293,'N55 JEFE DEPTO C       80','1855880',78,'PROVISIONAL'),(400,'N51 JEFE DEPTO CLINICO','1856080',18,'JEFE DE DEPARTAMENTO'),(418,'N60 JEFE DIVISION','1856180',19,'JEFE DE DIVISION'),(2187,'N56 JEFE SERVS DELEG 1 80','1857580',78,'PROVISIONAL'),(2007,'N58 JEFE SERVS DELEG 2 80','1857680',78,'PROVISIONAL'),(2006,'N59 JEFE SERVS DELEG 3 80','1857780',78,'PROVISIONAL'),(1260,'N60 JEFE SERVS DELEG 4 80','1857880',78,'PROVISIONAL'),(944,'N41 SRIA A JEFE SERVS  80','1858680',78,'PROVISIONAL'),(1590,'N46 SRIA A SUBD GRAL   80','1858780',76,'SECRETARIA'),(988,'N35 SRIA AUX A JEF SERV80','1858880',78,'PROVISIONAL'),(1609,'N41 SRIA AUX A SUBD G  80','1858980',78,'PROVISIONAL'),(1788,'N33 SRIA AUX B JEF SERV80','1859080',78,'PROVISIONAL'),(967,'N25 SRIA AUX JEF DEPTO 80','1859280',78,'PROVISIONAL'),(1229,'N31 SRIA AUX SUBJ SERVS80','1859380',78,'PROVISIONAL'),(1383,'N37 SRIA B JEFE SERVS  80','1859480',76,'SECRETARIA'),(960,'N31 SRIA JEFE DEPTO    80','1859680',78,'PROVISIONAL'),(955,'N23 SRIA AUXILIAR      80','1859780',78,'PROVISIONAL'),(1826,'N49 SRIA PART JEF SERV 80','1859880',78,'PROVISIONAL'),(927,'N35 SRIA SUBJ SERVS    80','1859980',78,'PROVISIONAL'),(1758,'N52 SUBD MED UM B      80','1860180',78,'PROVISIONAL'),(757,'N52 SUBD MED UM C','1860280',36,'SUBDIRECTOR MEDICO'),(1992,'N61 SUBJEFE SERVS      80','1860380',78,'PROVISIONAL'),(894,'N63 SUBJEFE SERVS      80','1860580',78,'PROVISIONAL'),(1737,'N55 SUP MED PROG DEL   80','1861380',78,'PROVISIONAL'),(1800,'N42 SUPERVISORA ENF S  80','1861580',78,'PROVISIONAL'),(2100,'N12 AUX ALMACEN SOLID  80','1861980',78,'PROVISIONAL'),(1084,'N12 AYTE ADMVO SOLID B 80','1862080',78,'PROVISIONAL'),(1529,'N17 ASIST ADMVO ST     80','1862380',78,'PROVISIONAL'),(2035,'N19 AYTE ADMVO SOLID A 80','1862680',78,'PROVISIONAL'),(919,'N19 TEC RURAL SAL SOLID80','1862780',78,'PROVISIONAL'),(2185,'N22 COOR CEN CONS SUB2 80','1862980',78,'PROVISIONAL'),(2178,'N25 COOR OPERAT SUBD 3 80','1863780',78,'PROVISIONAL'),(2183,'N29 COOR CEN CONS SUB4 80','1864280',78,'PROVISIONAL'),(1491,'N32 AUDITOR PATRONES   80','1864680',108,'AUDITOR'),(2053,'N34 SUP AUD PAT SUBD 4 80','1865080',78,'PROVISIONAL'),(2008,'N37 SUP AUD PAT DEL 3  80','1865280',78,'PROVISIONAL'),(2379,'N41 JEF OFNA C COB IMSS80','1865380',50,'OFICINA'),(131,'N46 COOR D ENF PF D1Y2','1865780',7,'COORDINADOR'),(132,'N46 COOR D ENF SP D1Y2','1865880',7,'COORDINADOR'),(159,'N55 COORD D AT MED EST','1866080',7,'COORDINADOR'),(138,'N49 COOR D ENF PF D3Y4','1866180',7,'COORDINADOR'),(401,'N51 JEFE DEPTO LAB','1866280',18,'JEFE DE DEPARTAMENTO'),(1268,'N47 JEFE SECC DELEG 4  80','1867780',138,'JEFE DE SECCION'),(1236,'N44 JEFE SECC DELEG 3  80','1867880',138,'JEFE DE SECCION'),(1307,'N41 JEFE SECC DELEG 2  80','1867980',138,'JEFE DE SECCION'),(2251,'N56 JEFE SERVS SUBDEL4 80','1868580',78,'PROVISIONAL'),(1167,'N54 JEFE SERVS SUBDEL3 80','1868680',78,'PROVISIONAL'),(2398,'N52 JEFE SERVS SUBDEL2 80','1868780',78,'PROVISIONAL'),(2212,'N50 JEFE SERVS SUBDEL1 80','1868880',78,'PROVISIONAL'),(1008,'N44 JEFE SECC SUBDEL 4 80','1869780',138,'JEFE DE SECCION'),(1683,'N41 JEFE SECC SUBDEL 3 80','1869880',138,'JEFE DE SECCION'),(2216,'N39 JEFE SECC SUBDEL 2 80','1869980',138,'JEFE DE SECCION'),(1815,'N20 TEC CON PR INV UMH 80','1871380',78,'PROVISIONAL'),(2806,'N36 EJEC COBR AUX SUB4 80','1873880',78,'PROVISIONAL'),(1535,'N44 SUPERVISORA ENF S  80','1875680',40,'SUPERVISOR'),(2148,'N41 SUP ADMON A CL S   80','1875780',78,'PROVISIONAL'),(1596,'N43 COOR ENF Z O SUB1Y280','1880480',7,'COORDINADOR'),(1012,'N46 COOR ENF Z O SUB3Y480','1880580',7,'COORDINADOR'),(1163,'N40 COOR TS Z O SUB1Y2 80','1880680',7,'COORDINADOR'),(1558,'N42 COOR TS Z O SUB3Y4 80','1880780',7,'COORDINADOR'),(971,'N39 EJEC COBR TIT NIV C80','1880980',78,'PROVISIONAL'),(1551,'N12 SRIA J SERVS SUBD1 80','1881080',78,'PROVISIONAL'),(2460,'N15 SRIA J SERVS SUBD3 80','1881280',78,'PROVISIONAL'),(1564,'N17 SRIA J SERVS SUBD4 80','1881380',76,'SECRETARIA'),(2588,'N53 COORD CL TURNO UMH','1895480',7,'COORDINADOR'),(82,'N62 CONFIANZA MEDICA','1898280',6,'CONFIANZA MEDICA'),(2299,'PASANTE DE ABOGADO     65','20000065',78,'PROVISIONAL'),(1608,'ABOGADO                80','20000180',91,'ABOGADO'),(2297,'ABOGADO                65','2001165',78,'PROVISIONAL'),(1763,'ABOGADO                80','2001180',78,'PROVISIONAL'),(2298,'AUX TEC ACTUARIADO SOC 80','2002080',107,'ACTUARIO'),(2287,'TEC DE ACTUARIADO SOC  65','2002265',107,'ACTUARIO'),(2091,'ACTUARIO SOC MATEMATICO65','2002365',107,'ACTUARIO'),(1572,'ACTUARIO SOC MATEMATICO80','2002780',78,'PROVISIONAL'),(1621,'AUX DE SERVS ADMVOS    65','2003065',78,'PROVISIONAL'),(2106,'AUX DE SERVS ADMVOS    72','2003072',78,'PROVISIONAL'),(1404,'AUX DE SERVS ADMVOS    80','2003080',78,'PROVISIONAL'),(1005,'AUX ADMON UMEMC        80','2003180',78,'PROVISIONAL'),(2020,'JEFE DE OFICINA A      80','2003980',78,'PROVISIONAL'),(957,'JEFE DE OFICINA A      80','2004080',50,'OFICINA'),(2272,'AYUDANTE DE AUTOPSIA   65','20050065',109,'AUTOPSIA'),(1176,'AYUDANTE DE AUTOPSIA   80','20050080',110,'AUX DE AREA MEDICA'),(2461,'BIBLIOTECARIO          65','20060065',78,'PROVISIONAL'),(985,'BIBLIOTECARIO          80','20060080',53,'BIBLIOTECA'),(1385,'BIOLOGO                80','20070080',2,'BIOLOGO'),(2242,'AUXILIAR ALMACENISTA   65','2008065',78,'PROVISIONAL'),(2093,'AUXILIAR ALMACENISTA   80','2008080',78,'PROVISIONAL'),(2215,'ALMACENISTA            65','2008165',78,'PROVISIONAL'),(1066,'ALMACENISTA            80','2008180',61,'ALMACEN'),(2239,'ALMACENISTA RESPONSABLE65','2008265',78,'PROVISIONAL'),(1202,'ALMACENISTA RESPONSABLE80','2008280',61,'ALMACEN'),(2130,'COORDINADOR DE ALMACEN 80','2008380',78,'PROVISIONAL'),(1101,'AUX DE ADMON CENT VAC  80','20090080',78,'PROVISIONAL'),(1428,'AUX ATEN MED CENT VAC  80','20090180',78,'PROVISIONAL'),(1106,'AUX HOSPEDAJE CENT VAC 80','20090280',111,'AUXILIAR'),(2070,'AUX DE OP CONT CENT VAC80','20090380',78,'PROVISIONAL'),(1427,'LAVANDERO CENT VAC     80','20090480',78,'PROVISIONAL'),(2071,'OP SEG ALBERCA CENT VAC80','20090580',78,'PROVISIONAL'),(1099,'OP SERVS INTER CENT VAC80','20090680',78,'PROVISIONAL'),(2026,'OP DE VEHICULO CENT VAC80','20090780',78,'PROVISIONAL'),(1426,'PLANCHADOR CENTROS VAC 80','20090880',144,'PLANCHADOR'),(2028,'VIGILANTE EN CENT VAC  80','20090980',78,'PROVISIONAL'),(12,'CIRUJANO MAXILO-FACIAL','20100080',3,'CIRUJANO MAXILO-FACIAL'),(2525,'ARQUITECTO             80','2010180',101,'ARQUITECTO'),(14,'CITOTECNOLOGO','20110080',4,'CITOTECNOLOGO'),(2274,'PELUQUERO              80','2011080',78,'PROVISIONAL'),(2253,'AYTE DE AUTOPSIA       65','2012065',109,'AUTOPSIA'),(1964,'AYTE DE AUTOPSIA       80','2012080',109,'AUTOPSIA'),(998,'CONTADOR               80','20130080',78,'PROVISIONAL'),(2138,'CONTADOR AUDITOR       80','20130180',119,'CONTADOR'),(1886,'TECNICO DE BIBLIOTECAS 65','2013065',78,'PROVISIONAL'),(1520,'TECNICO DE BIBLIOTECAS 80','2013080',53,'BIBLIOTECA'),(1164,'BIBLIOTECARIO          80','2013180',53,'BIBLIOTECA'),(1770,'ASIST BIBLIOTECARIO    65','2013265',78,'PROVISIONAL'),(2079,'ASIST BIBLIOTECARIO    40','2013540',78,'PROVISIONAL'),(2016,'CUIDADOR DE ANIMALES   80','20140080',123,'CUIDADOR DE ANIMALES'),(2179,'CAJERO C               80','2015380',112,'CAJERO'),(1467,'CODIFICADOR CLINICO    65','2016065',116,'CODIFICADOR'),(904,'CODIFICADOR CLINICO    80','2016080',116,'CODIFICADOR'),(2231,'ECONOMISTA             80','20170180',78,'PROVISIONAL'),(1098,'EDUCADORA              40','20180040',92,'EDUCADORA'),(1443,'EDUCADORA              60','20180060',92,'EDUCADORA'),(1946,'EDUCADORA              65','20180065',78,'PROVISIONAL'),(1080,'EDUCADORA              80','20180080',92,'EDUCADORA'),(237,'ELECTROCARDIOGRAFISTA','20190080',10,'ELECTROCARDIOGRAFISTA'),(2227,'JEFE TEC COBR Y ADEUDOS80','2019780',78,'PROVISIONAL'),(1016,'ELEVADORISTA           65','20200065',87,'ELEVADORISTA'),(906,'ELEVADORISTA           80','20200080',87,'ELEVADORISTA'),(249,'AUX DE ENFERMERIA GRAL','20210080',11,'ENFERMERIA'),(243,'AUX DE ENF SALUD PUB','20210180',11,'ENFERMERIA'),(902,'AUX DE ENFERMERIA GRAL HR','20210280',78,'PROVISIONAL'),(186,'ESTOMATOLOGO','20220080',8,'DENTISTA'),(1921,'AYTE UNIV DE CONTAB    65','2022065',118,'CONTABILIDAD'),(1338,'AYTE UNIV DE CONTAB    80','2022080',118,'CONTABILIDAD'),(1406,'OF DE CONTABILIDAD     65','2022165',118,'CONTABILIDAD'),(1096,'OF DE CONTABILIDAD     80','2022180',118,'CONTABILIDAD'),(1619,'TECNICO CONTABILIDAD   65','2022265',118,'CONTABILIDAD'),(820,'TECNICO CONTABILIDAD   80','2022280',118,'CONTABILIDAD'),(2155,'PREPARADOR DE RECETAS  80','20230080',145,'PREPARADOR'),(2132,'PREPARADOR DESPACHADOR 80','20230180',145,'PREPARADOR'),(1446,'JEFE DE TURNO          80','20230280',139,'JEFE DE TIENDA'),(590,'QUIMICO RESPONSABLE','20230365',34,'QUIMICO'),(591,'QUIMICO RESPONSABLE','20230380',34,'QUIMICO'),(1820,'TECNICO CONTABILIDAD   65','2023365',118,'CONTABILIDAD'),(1158,'TECNICO CONTABILIDAD   80','2023380',118,'CONTABILIDAD'),(2103,'CONTADOR               65','2023465',119,'CONTADOR'),(1578,'CONTADOR               80','2023480',78,'PROVISIONAL'),(1722,'CONTADOR AUDITOR       65','2023565',119,'CONTADOR'),(1644,'CONTADOR AUDITOR       80','2023580',119,'CONTADOR'),(734,'FONOAUDIOLOGO 80','20240080',13,'FONOAUDIOLOGO'),(11,'CIRUJANO MAXILO-FACIAL','2024080',3,'CIRUJANO MAXILO-FACIAL'),(174,'ESTOMATOLOGO','2024620',8,'DENTISTA'),(175,'ESTOMATOLOGO','2024630',8,'DENTISTA'),(176,'ESTOMATOLOGO','2024640',8,'DENTISTA'),(177,'ESTOMATOLOGO','2024650',8,'DENTISTA'),(178,'ESTOMATOLOGO','2024660',8,'DENTISTA'),(179,'ESTOMATOLOGO','2024680',8,'DENTISTA'),(1505,'PROMOTOR ESTOMATOLOGIA 65','2024965',32,'PROMOTOR'),(180,'ESTOMATOLOGO','2025020',8,'DENTISTA'),(181,'ESTOMATOLOGO','2025030',8,'DENTISTA'),(182,'ESTOMATOLOGO','2025040',8,'DENTISTA'),(183,'ESTOMATOLOGO','2025050',8,'DENTISTA'),(184,'ESTOMATOLOGO','2025060',8,'DENTISTA'),(185,'ESTOMATOLOGO','2025080',8,'DENTISTA'),(188,'ESTOMATOLOGO UMC','2025180',8,'DENTISTA'),(190,'ESTOMATOLOGO UMEMC','2025260',8,'DENTISTA'),(257,'ENF TRAS PAC URG','2025480',11,'ENFERMERIA'),(255,'ENF TRAS PAC TERAP INT','2025580',11,'ENFERMERIA'),(513,'MED TRAS PAC URGENCIA','2025880',27,'MEDICO NO FAMILIAR'),(511,'MED TRAS PAC TERAP INT','2025980',27,'MEDICO NO FAMILIAR'),(2300,'HELIOGRAFISTA          80','20260080',133,'HELIOGRAFISTA'),(2401,'DIBUJANTE DE CONSTRUCC 80','2026080',100,'DIBUJANTE'),(285,'HISTOTECNOLOGO','20270060',14,'HISTOTECNOLOGO'),(286,'HISTOTECNOLOGO','20270080',14,'HISTOTECNOLOGO'),(2338,'DIBUJANTE EST Y PUB A  80','2027280',78,'PROVISIONAL'),(2341,'DIBUJANTE DE ING Y ARQ 80','2028080',78,'PROVISIONAL'),(2285,'DIBUJANTE EST Y PUB B  65','2028365',78,'PROVISIONAL'),(292,'INHALOTERAPEUTA','20290060',15,'INHALOTERAPEUTA'),(293,'INHALOTERAPEUTA','20290065',15,'INHALOTERAPEUTA'),(294,'INHALOTERAPEUTA','20290080',15,'INHALOTERAPEUTA'),(928,'ECONOMISTA             65','2030165',85,'ECONOMISTA'),(2090,'INTENDENTE             80','20310080',78,'PROVISIONAL'),(474,'AUX DE LABORATORIO','20320060',23,'LABORATORISTA'),(475,'AUX DE LABORATORIO','20320080',23,'LABORATORISTA'),(483,'LABORATORISTA','20320160',23,'LABORATORISTA'),(484,'LABORATORISTA','20320180',23,'LABORATORISTA'),(1141,'EDUCADORA              40','2032040',92,'EDUCADORA'),(1438,'EDUCADORA              60','2032060',92,'EDUCADORA'),(1277,'EDUCADORA              80','2032080',92,'EDUCADORA'),(1708,'ELECTROCARDIOGRAFISTA  80','2033080',78,'PROVISIONAL'),(2095,'MACHETERO              80','20340080',141,'MACHETERO'),(1346,'ELEVADORISTA           65','2035065',87,'ELEVADORISTA'),(1666,'ELEVADORISTA           72','2035072',87,'ELEVADORISTA'),(961,'ELEVADORISTA           80','2035080',87,'ELEVADORISTA'),(530,'MEDICO NO FAMILIAR','20360180',27,'MEDICO NO FAMILIAR'),(497,'MEDICO FAMILIAR','20360280',24,'MEDICO FAMILIAR'),(501,'MEDICO GENERAL U MED  8','20360380',25,'MEDICO GENERAL'),(499,'MEDICO GENERAL 80','20360480',25,'MEDICO GENERAL'),(2453,'MEDICO NO FAMILIAR H R','20360580',27,'MEDICO NO FAMILIAR'),(240,'AUX DE ENF SALUD PUB','2036065',11,'ENFERMERIA'),(241,'AUX DE ENF SALUD PUB','2036080',11,'ENFERMERIA'),(244,'AUX DE ENFERMERIA GRAL','2036165',11,'ENFERMERIA'),(245,'AUX DE ENFERMERIA GRAL','2036172',11,'ENFERMERIA'),(246,'AUX DE ENFERMERIA GRAL','2036180',11,'ENFERMERIA'),(264,'ENFERMERA GENERAL','2036265',11,'ENFERMERIA'),(265,'ENFERMERA GENERAL','2036270',11,'ENFERMERIA'),(266,'ENFERMERA GENERAL','2036272',11,'ENFERMERIA'),(267,'ENFERMERA GENERAL','2036280',11,'ENFERMERIA'),(258,'ENFERMERA ESPECIALISTA','2036365',11,'ENFERMERIA'),(259,'ENFERMERA ESPECIALISTA','2036372',11,'ENFERMERIA'),(260,'ENFERMERA ESPECIALISTA','2036380',11,'ENFERMERIA'),(431,'ENFERMERA JEFE DE PISO','2036465',20,'JEFE DE ENFERMERIA'),(432,'ENFERMERA JEFE DE PISO','2036472',20,'JEFE DE ENFERMERIA'),(433,'ENFERMERA JEFE DE PISO','2036480',20,'JEFE DE ENFERMERIA'),(242,'AUX DE ENF SALUD PUB','2036565',11,'ENFERMERIA'),(247,'AUX DE ENFERMERIA GRAL','2036665',11,'ENFERMERIA'),(248,'AUX DE ENFERMERIA GRAL','2036672',11,'ENFERMERIA'),(268,'ENFERMERA GENERAL','2036765',11,'ENFERMERIA'),(269,'ENFERMERA GENERAL','2036772',11,'ENFERMERIA'),(261,'ENFERMERA ESPECIALISTA','2036865',11,'ENFERMERIA'),(262,'ENFERMERA ESPECIALISTA','2036872',11,'ENFERMERIA'),(434,'ENFERMERA JEFE DE PISO','2036965',20,'JEFE DE ENFERMERIA'),(435,'ENFERMERA JEFE DE PISO','2036972',20,'JEFE DE ENFERMERIA'),(1777,'TECNICO DE MICROFOTOG  80','20370080',158,'TECNICO DE MICROFOTOGRAFIA'),(1958,'OFICIAL DE ESTADISTICA 65','2037065',78,'PROVISIONAL'),(816,'OFICIAL DE ESTADISTICA 80','2037080',78,'PROVISIONAL'),(1488,'COORD DE SERVS DE EST  65','2037165',7,'COORDINADOR'),(1353,'COORD DE SERVS DE EST  80','2037180',7,'COORDINADOR'),(1318,'JEFE GRUPOS ESTADISTICA80','2037280',153,'SERVICIOS DE ESTADISTICA'),(1932,'ESP SERVS ESTADISTICA  80','2037380',153,'SERVICIOS DE ESTADISTICA'),(2065,'MULTILITISTA           65','20380065',78,'PROVISIONAL'),(740,'MULTILITISTA 80','20380080',57,'MULTILITISTA'),(1215,'OFICIAL CONT PRESTAC   80','2038080',78,'PROVISIONAL'),(1180,'JEFE CONTROL PRESTAC C 80','2038180',136,'JEFE DE CONTROL'),(1541,'JEFE CONTROL PRESTAC B 80','2038280',136,'JEFE DE CONTROL'),(1709,'JEFE CONTROL PRESTAC A 80','2038380',136,'JEFE DE CONTROL'),(1533,'AUXILIAR DE FARMACIA   65','2039465',49,'FARMACIA'),(1232,'AUXILIAR DE FARMACIA   80','2039480',78,'PROVISIONAL'),(2122,'OFICIAL DE FARMACIA    65','2039765',78,'PROVISIONAL'),(878,'OFICIAL DE FARMACIA    80','2039780',49,'FARMACIA'),(1217,'COORDINADOR DE FARMACIA80','2039880',7,'COORDINADOR'),(1001,'AYUDANTE DE FARMACIA   65','2039965',78,'PROVISIONAL'),(1865,'AYUDANTE DE FARMACIA   72','2039972',78,'PROVISIONAL'),(1011,'AYUDANTE DE FARMACIA   80','2039980',78,'PROVISIONAL'),(1219,'AUXILIAR DE FARMACIA   65','2040065',49,'FARMACIA'),(1534,'AUXILIAR DE FARMACIA   72','2040072',49,'FARMACIA'),(1349,'AUXILIAR DE FARMACIA   80','2040080',78,'PROVISIONAL'),(1804,'PREPARADOR DE RECETAS  65','2040165',145,'PREPARADOR'),(1449,'PREPARADOR DE RECETAS  80','2040180',145,'PREPARADOR'),(1747,'PREPARADOR DESPACHADOR 65','2040265',145,'PREPARADOR'),(1233,'PREPARADOR DESPACHADOR 80','2040280',145,'PREPARADOR'),(1451,'JEFE DE TURNO          65','2040365',139,'JEFE DE TIENDA'),(1224,'JEFE DE TURNO          80','2040380',139,'JEFE DE TIENDA'),(1433,'QUIMICO RESPONSABLE    65','2040465',34,'QUIMICO'),(1009,'QUIMICO RESPONSABLE    80','2040480',78,'PROVISIONAL'),(1047,'OFICIAL DE FARMACIA    65','2040565',49,'FARMACIA'),(861,'OFICIAL DE FARMACIA    80','2040580',49,'FARMACIA'),(1070,'COORDINADOR DE FARMACIA65','2040665',7,'COORDINADOR'),(822,'COORDINADOR DE FARMACIA80','2040680',7,'COORDINADOR'),(1237,'AYUDANTE DE FARMACIA   65','2040765',49,'FARMACIA'),(2196,'AYUDANTE DE FARMACIA   72','2040772',78,'PROVISIONAL'),(1128,'AYUDANTE DE FARMACIA   80','2040780',49,'FARMACIA'),(2175,'JEFE DE TURNO          65','2040865',139,'JEFE DE TIENDA'),(2182,'OP MAQUINA DE REV AUT  60','20410060',78,'PROVISIONAL'),(1528,'OP MAQUINA DE REV AUT  80','20410080',78,'PROVISIONAL'),(278,'FISIOTERAPEUTA','2041060',12,'FISIOTERAPEUTA'),(279,'FISIOTERAPEUTA','2041065',12,'FISIOTERAPEUTA'),(280,'FISIOTERAPEUTA','2041080',12,'FISIOTERAPEUTA'),(671,'TERAPISTA FISICO','2041140',47,'TERAPISTA'),(672,'TERAPISTA FISICO','2041160',47,'TERAPISTA'),(673,'TERAPISTA FISICO','2041180',47,'TERAPISTA'),(677,'TERAPISTA OCUPACIONAL','2041260',47,'TERAPISTA'),(678,'TERAPISTA OCUPACIONAL','2041280',47,'TERAPISTA'),(674,'TERAPISTA FISICO','2041340',47,'TERAPISTA'),(1208,'OPTOMETRISTA           60','20420060',30,'OPTOMETRISTA'),(1699,'OPTOMETRISTA           80','20420080',78,'PROVISIONAL'),(281,'FONOAUDIOLOGO','2042060',13,'FONOAUDIOLOGO'),(282,'FONOAUDIOLOGO','2042080',13,'FONOAUDIOLOGO'),(1279,'ORIENTADOR             40','20430040',90,'ORIENTADOR'),(1712,'ORIENTADOR             65','20430065',78,'PROVISIONAL'),(830,'ORIENTADOR             80','20430080',90,'ORIENTADOR'),(287,'INHALOTERAPEUTA','2043060',15,'INHALOTERAPEUTA'),(288,'INHALOTERAPEUTA','2043065',15,'INHALOTERAPEUTA'),(289,'INHALOTERAPEUTA','2043072',15,'INHALOTERAPEUTA'),(290,'INHALOTERAPEUTA','2043080',15,'INHALOTERAPEUTA'),(291,'INHALOTERAPEUTA','2043172',15,'INHALOTERAPEUTA'),(2447,'ORIENT ACT FAMILIARES  20','20440020',90,'ORIENTADOR'),(868,'ORIENT ACT FAMILIARES  33','20440033',90,'ORIENTADOR'),(855,'ORIENT ACT FAMILIARES  40','20440040',78,'PROVISIONAL'),(2485,'ORIENT ACT ARTISTICAS  20','20440120',90,'ORIENTADOR'),(1154,'ORIENT ACT ARTISTICAS  33','20440133',90,'ORIENTADOR'),(1834,'ORIENT ACT ARTISTICAS  40','20440140',78,'PROVISIONAL'),(2438,'ORIENT ACT ART DANZA   20','20440220',90,'ORIENTADOR'),(1140,'ORIENT ACT ART DANZA   40','20440240',90,'ORIENTADOR'),(2517,'ORIENT ACT ARTIS MUSIC 20','20440320',90,'ORIENTADOR'),(862,'ORIENT ACT ART MUSICA  40','20440340',90,'ORIENTADOR'),(2309,'ORIENT ACT ART ARTE DRA20','20440420',90,'ORIENTADOR'),(2081,'ORIENT ACT ART ARTE DRA33','20440433',78,'PROVISIONAL'),(2086,'ORIENT ACT ART ARTE DRA40','20440440',78,'PROVISIONAL'),(2477,'ORIENT EDUC FISICA     20','20440520',90,'ORIENTADOR'),(283,'HISTOTECNOLOGO','2044060',14,'HISTOTECNOLOGO'),(2445,'ORIENT INIC CULTURAL   20','20440620',90,'ORIENTADOR'),(1032,'ORIENT INIC CULTURAL   40','20440640',90,'ORIENTADOR'),(2442,'ORIENT TECNICO MEDICO  20','20440720',90,'ORIENTADOR'),(2225,'ORIENT TECNICO MEDICO  80','20440780',78,'PROVISIONAL'),(284,'HISTOTECNOLOGO','2044080',14,'HISTOTECNOLOGO'),(1589,'AUX ORIENTADOR TEC MED 65','20450065',78,'PROVISIONAL'),(1701,'ORTOPEDISTA            80','20460080',78,'PROVISIONAL'),(2127,'HELIOGRAFISTA          80','2047080',133,'HELIOGRAFISTA'),(1996,'PELUQUERO              80','20480080',99,'PELUQUERO'),(2423,'INGENIERO              65','2048165',97,'INGENIERO'),(1577,'PIANISTA               15','20490015',95,'PIANISTA'),(1823,'INTENDENTE             80','2049580',78,'PROVISIONAL'),(921,'AUX ADMON UNID MEDICA  65','20500065',78,'PROVISIONAL'),(1000,'AUX ADMON UNID MEDICA  80','20500080',78,'PROVISIONAL'),(778,'AUX ENFERMERIA U M','20500180',11,'ENFERMERIA'),(1546,'AUX LIMP Y COC U MED   65','20500265',78,'PROVISIONAL'),(912,'AUX LIMP Y COC U MED   80','20500280',78,'PROVISIONAL'),(1819,'AUX SERVS GRALES U MED 65','20500365',111,'AUXILIAR'),(1317,'AUX SERVS GRALES U MED 80','20500380',111,'AUXILIAR'),(651,'TECNICO MED NUCLEAR','2050080',44,'TECNICO MED NUCLEAR'),(472,'AUX DE LABORATORIO','2051060',23,'LABORATORISTA'),(477,'AUXILIAR LAB','2051070',23,'LABORATORISTA'),(473,'AUX DE LABORATORIO','2051080',23,'LABORATORISTA'),(478,'LABORATORISTA','2051150',23,'LABORATORISTA'),(479,'LABORATORISTA','2051160',23,'LABORATORISTA'),(480,'LABORATORISTA','2051165',23,'LABORATORISTA'),(481,'LABORATORISTA','2051172',23,'LABORATORISTA'),(482,'LABORATORISTA','2051180',23,'LABORATORISTA'),(476,'AUX LAB UMEMC','2051380',23,'LABORATORISTA'),(13,'CITOTECNOLOGO','2051580',4,'CITOTECNOLOGO'),(707,'PROMOTOR ESTOMATOLOGIA','20520080',32,'PROMOTOR'),(568,'PROM SALUD COMUNITARIA','20530080',32,'PROMOTOR'),(581,'PSICOLOGO','20540080',33,'PSICOLOGO'),(582,'PSICOLOGO CLINICO','20540160',33,'PSICOLOGO'),(583,'PSICOLOGO CLINICO','20540180',33,'PSICOLOGO'),(841,'PSICOMETRA             60','20550060',148,'PSICOMETRA'),(1503,'PSICOMETRA             80','20550080',148,'PSICOMETRA'),(666,'TECNICO RADIOLOGO','20570060',45,'TECNICO RADIOLOGO'),(667,'TECNICO RADIOLOGO','20570080',45,'TECNICO RADIOLOGO'),(594,'RADIOTERAPEUTA','20580060',35,'RADIOTERAPEUTA'),(595,'RADIOTERAPEUTA','20580080',35,'RADIOTERAPEUTA'),(2302,'JEFE GPO DE MEDS FAMS  80','2058980',78,'PROVISIONAL'),(2057,'JEFE GPO DE MEDS FAMS  80','2059080',137,'JEFE DE GRUPO'),(2078,'VETERINARIO            80','2059180',78,'PROVISIONAL'),(525,'MEDICO NO FAMILIAR','2059240',27,'MEDICO NO FAMILIAR'),(516,'MEDICO NO FAM CLIN','2059260',27,'MEDICO NO FAMILIAR'),(526,'MEDICO NO FAMILIAR','2059272',27,'MEDICO NO FAMILIAR'),(517,'MEDICO NO FAM CLIN','2059280',27,'MEDICO NO FAMILIAR'),(527,'MEDICO NO FAMILIAR','2059340',27,'MEDICO NO FAMILIAR'),(521,'MEDICO NO FAM HOSP','2059360',27,'MEDICO NO FAMILIAR'),(522,'MEDICO NO FAM HOSP','2059380',27,'MEDICO NO FAMILIAR'),(489,'MEDICO FAMILIAR','2059430',24,'MEDICO FAMILIAR'),(490,'MEDICO FAMILIAR','2059450',24,'MEDICO FAMILIAR'),(491,'MEDICO FAMILIAR','2059460',24,'MEDICO FAMILIAR'),(492,'MEDICO FAMILIAR','2059472',24,'MEDICO FAMILIAR'),(518,'MEDICO NO FAM CLIN','2059580',27,'MEDICO NO FAMILIAR'),(523,'MEDICO NO FAM HOSP','2059680',27,'MEDICO NO FAMILIAR'),(493,'MEDICO FAMILIAR','2059765',24,'MEDICO FAMILIAR'),(494,'MEDICO FAMILIAR','2059780',24,'MEDICO FAMILIAR'),(503,'MEDICO UNID MED CAMPO','2059880',25,'MEDICO GENERAL'),(1574,'SALVAVIDAS             65','20600065',78,'PROVISIONAL'),(2021,'SALVAVIDAS             80','20600080',152,'SALVAVIDAS'),(528,'MEDICO NO FAMILIAR','2060040',27,'MEDICO NO FAMILIAR'),(519,'MEDICO NO FAM CLIN','2060060',27,'MEDICO NO FAMILIAR'),(529,'MEDICO NO FAMILIAR','2060072',27,'MEDICO NO FAMILIAR'),(520,'MEDICO NO FAM CLIN','2060080',27,'MEDICO NO FAMILIAR'),(524,'MEDICO NO FAM HOSP','2060160',27,'MEDICO NO FAMILIAR'),(495,'MEDICO FAMILIAR','2060260',24,'MEDICO FAMILIAR'),(496,'MEDICO FAMILIAR','2060272',24,'MEDICO FAMILIAR'),(2204,'MULTILITISTA           80','2061080',78,'PROVISIONAL'),(1567,'ASISTENTE GUARDERIA    80','2061180',132,'GUARDERIA'),(1129,'OF DE PUERICULTURA     60','2062060',78,'PROVISIONAL'),(1090,'OFICIAL DE PUERICULTURA65','2062065',78,'PROVISIONAL'),(802,'OFICIAL DE PUERICULTURA80','2062080',78,'PROVISIONAL'),(1130,'TECNICO EN PUERICULTURA65','2062165',167,'TECNICO PUERICULTURA'),(942,'TECNICO EN PUERICULTURA80','2062180',167,'TECNICO PUERICULTURA'),(2489,'OFICIAL PUERICULTURA   60','2062260',78,'PROVISIONAL'),(1150,'TECNICO PUERICULTURA   65','2062365',167,'TECNICO PUERICULTURA'),(646,'TECNICO DE ANESTESIA','20630060',42,'TECNICO DE ANESTESIA'),(647,'TECNICO DE ANESTESIA','20630080',42,'TECNICO DE ANESTESIA'),(638,'TEC MANEJO AP ELECTRODI','20640060',41,'TECNICO AP ELECTRODIAGNOSTICO'),(639,'TEC MANEJO AP ELECTRODI','20640080',41,'TECNICO AP ELECTRODIAGNOSTICO'),(652,'TECNICO MED NUCLEAR','20650080',44,'TECNICO MED NUCLEAR'),(2058,'ORIENTADOR             40','2065040',90,'ORIENTADOR'),(2022,'ORIENTADOR             65','2065065',78,'PROVISIONAL'),(1113,'ORIENTADOR             80','2065080',90,'ORIENTADOR'),(2202,'ORIENT ACT ART DANZA   20','2065520',78,'PROVISIONAL'),(1182,'ORIENT ACT ART DANZA   40','2065540',90,'ORIENTADOR'),(1667,'ORIENT ACT ART DRAM    40','2065640',78,'PROVISIONAL'),(1435,'ORIENT ACT ART MUSICA  40','2065740',90,'ORIENTADOR'),(1097,'ORIENT INIC CULTURAL   40','2065840',90,'ORIENTADOR'),(1586,'OR ACT ART ART PLAST   40','2065940',78,'PROVISIONAL'),(870,'AUX TEC SERVS DIET     80','20660080',78,'PROVISIONAL'),(2375,'ORIENT ACT FAMILIARES  12','2066012',78,'PROVISIONAL'),(824,'ORIENT ACT FAMILIARES  33','2066033',78,'PROVISIONAL'),(1782,'ORIENT ACT ARTISTICAS  20','2066120',78,'PROVISIONAL'),(999,'ORIENT ACT ARTISTICAS  33','2066133',90,'ORIENTADOR'),(2142,'ORIENT ACT ARTIS MUSIC 20','2066220',78,'PROVISIONAL'),(1759,'ORIENT ACT ARTIS MUSIC 33','2066233',78,'PROVISIONAL'),(1957,'ORIENT ACT ART ARTE DRA33','2066333',78,'PROVISIONAL'),(2217,'ORIENT INIC CULTURAL   20','2066420',78,'PROVISIONAL'),(1700,'ORIENT INIC CULTURAL   27','2066427',78,'PROVISIONAL'),(2359,'ORIENT INIC CULTURAL   33','2066433',90,'ORIENTADOR'),(1797,'ORIENT TECNICO MEDICO  30','2066530',78,'PROVISIONAL'),(1223,'ORIENT TECNICO MEDICO  40','2066540',90,'ORIENTADOR'),(1885,'AUX ORIENTADOR TEC MED 65','2066665',78,'PROVISIONAL'),(1844,'SALVAVIDAS             65','2066765',152,'SALVAVIDAS'),(1112,'ORIENT EDUC FISICA     40','2066840',90,'ORIENTADOR'),(563,'ORTOPEDISTA','2067080',31,'ORTOPEDISTA'),(2257,'PROF EDUC FISICA B     40','2067240',147,'PROFESOR'),(2395,'PROF EDUC FISICA B     60','2067260',147,'PROFESOR'),(2290,'PROF EDUC FISICA B     80','2067280',147,'PROFESOR'),(1514,'PROF EDUC FISICA C     40','2067340',147,'PROFESOR'),(1201,'PROF EDUC FISICA C     60','2067360',147,'PROFESOR'),(1889,'PROF EDUC FISICA C     80','2067380',147,'PROFESOR'),(1207,'ORIENT ACT ART DRAM    40','2067540',90,'ORIENTADOR'),(1281,'OR ACT ART ART PLAS    40','2067840',90,'ORIENTADOR'),(1460,'ORIENT ACT FAMILIARES  80','2067980',78,'PROVISIONAL'),(675,'TERAPISTA FISICO','20680060',47,'TERAPISTA'),(676,'TERAPISTA FISICO','20680080',47,'TERAPISTA'),(679,'TERAPISTA OCUPACIONAL','20680160',47,'TERAPISTA'),(680,'TERAPISTA OCUPACIONAL','20680180',47,'TERAPISTA'),(1914,'PARTERA                65','2068065',142,'PARTERAS'),(1523,'PARTERA                80','2068080',78,'PROVISIONAL'),(1432,'JEFE DE PARTERAS       65','2068165',142,'PARTERAS'),(1038,'JEFE DE PARTERAS       80','2068180',142,'PARTERAS'),(1623,'ORIENT ACT ARTIS MUSIC 33','2068533',78,'PROVISIONAL'),(2052,'ORIENT ACT ART ARTE DRA66','2068666',78,'PROVISIONAL'),(2157,'ORIENT TECNICO MEDICO  30','2068830',78,'PROVISIONAL'),(1171,'ORIENT TECNICO MEDICO  40','2068840',90,'ORIENTADOR'),(1255,'PIANISTA               15','2069015',95,'PIANISTA'),(1344,'PIANISTA               20','2069020',95,'PIANISTA'),(1094,'ORIENT EDUC FISICA     40','2069740',90,'ORIENTADOR'),(2124,'ORIENT EDUC FISICA     80','2069780',78,'PROVISIONAL'),(697,'TRABAJADORA SOCIAL','20700065',48,'TRABAJO SOCIAL'),(698,'TRABAJADORA SOCIAL','20700080',48,'TRABAJO SOCIAL'),(576,'PSICOLOGO','2070060',33,'PSICOLOGO'),(577,'PSICOLOGO','2070065',33,'PSICOLOGO'),(578,'PSICOLOGO','2070080',33,'PSICOLOGO'),(579,'PSICOLOGO','2070160',33,'PSICOLOGO'),(580,'PSICOLOGO','2070165',33,'PSICOLOGO'),(1866,'PIANISTA               20','2070320',78,'PROVISIONAL'),(684,'AUX DE TRAB SOCIAL','20710065',48,'TRABAJO SOCIAL'),(685,'AUX DE TRAB SOCIAL','20710080',48,'TRABAJO SOCIAL'),(2156,'PSICOMETRA             80','2071080',148,'PSICOMETRA'),(7,'BIOLOGO','2072080',2,'BIOLOGO'),(586,'QUIM LAB A CLINICOS','2072260',34,'QUIMICO'),(587,'QUIM LAB A CLINICOS','2072280',34,'QUIMICO'),(408,'QUIM JEFE SECC LAB','2072360',18,'JEFE DE DEPARTAMENTO'),(409,'QUIM JEFE SECC LAB','2072380',18,'JEFE DE DEPARTAMENTO'),(588,'QUIMICO CLINICO','2072460',34,'QUIMICO'),(514,'MED TRAS PAC URGENCIA','20730080',27,'MEDICO NO FAMILIAR'),(512,'MED TRAS PAC TERAP INT','20730180',27,'MEDICO NO FAMILIAR'),(1059,'QUINESITERAPEUTA       60','2073060',149,'QUINESITERAPEUTA'),(1471,'QUINESITERAPEUTA       80','2073080',149,'QUINESITERAPEUTA'),(877,'AUX ADMON UMEMC        80','20740080',78,'PROVISIONAL'),(876,'AUX ATEN MED UMEMC     80','20740180',110,'AUX DE AREA MEDICA'),(1062,'AUX LAB UMEMC          80','20740280',78,'PROVISIONAL'),(890,'AUX SERVS GRALES UMEMC 80','20740380',111,'AUXILIAR'),(191,'ESTOMATOLOGO UMEMC','20740460',8,'DENTISTA'),(1953,'OP SERV RAD UMEMC      80','20740580',78,'PROVISIONAL'),(656,'TEC RADIOLOGO','2074140',45,'TECNICO RADIOLOGO'),(657,'TEC RADIOLOGO','2074145',45,'TECNICO RADIOLOGO'),(658,'TECNICO RADIOLOGO','2074160',45,'TECNICO RADIOLOGO'),(659,'TECNICO RADIOLOGO','2074165',45,'TECNICO RADIOLOGO'),(660,'TECNICO RADIOLOGO','2074172',45,'TECNICO RADIOLOGO'),(661,'TECNICO RADIOLOGO','2074180',45,'TECNICO RADIOLOGO'),(1565,'OP DE SERVS AUXS UMC R 80','2074380',78,'PROVISIONAL'),(1156,'AUX DE ADMON UMC       80','20750080',78,'PROVISIONAL'),(852,'AUX AREA MEDICA UMC    80','20750180',110,'AUX DE AREA MEDICA'),(1274,'AUX SERVS GRALES UMC   80','20750280',111,'AUXILIAR'),(189,'ESTOMATOLOGO UMC','20750380',8,'DENTISTA'),(2223,'OP MANTENIMIENTO UMC   80','20750480',78,'PROVISIONAL'),(2116,'OP DE SERVS AUXS UMC L 80','20750580',78,'PROVISIONAL'),(592,'RADIOTERAPEUTA','2075060',35,'RADIOTERAPEUTA'),(2372,'OP DE SERVS AUXS UMC R 80','20750680',78,'PROVISIONAL'),(485,'LABORATORISTA HR 80','20750780',23,'LABORATORISTA'),(593,'RADIOTERAPEUTA','2075080',35,'RADIOTERAPEUTA'),(187,'ESTOMATOLOGO HR 80','20750880',8,'DENTISTA'),(554,'NUTRICIONISTA DIET HR 8','20750980',29,'NUTRICION Y DIETOLOGIA'),(699,'TRABAJADORA SOCIAL HR 8','20751080',48,'TRABAJO SOCIAL'),(2535,'OFICIAL CONSERVACION HR80','20751180',78,'PROVISIONAL'),(271,'ENFERMERA GENERAL HR 80','20751280',11,'ENFERMERIA'),(1004,'AUX AREA MEDICA UMR 80','20751380',110,'AUX DE AREA MEDICA'),(662,'TECNICO RADIOLOGO','2075140',45,'TECNICO RADIOLOGO'),(663,'TECNICO RADIOLOGO','2075145',45,'TECNICO RADIOLOGO'),(1088,'AUX AREA MEDICA HR 80','20751480',110,'AUX DE AREA MEDICA'),(882,'AUX DE ADMON HR 80','20751580',78,'PROVISIONAL'),(664,'TECNICO RADIOLOGO','2075165',45,'TECNICO RADIOLOGO'),(917,'AUX SERVS GRALES HR 80','20751680',111,'AUXILIAR'),(665,'TECNICO RADIOLOGO','2075172',45,'TECNICO RADIOLOGO'),(1477,'OP DE SERVS AUXS HR L 80','20751780',78,'PROVISIONAL'),(1287,'OP DE SERVS AUXS HR R 80','20751880',78,'PROVISIONAL'),(1982,'OP DE MANTENIMIENTO HR 80','20751980',78,'PROVISIONAL'),(2647,'CITOTECNOLOGO HR 80','20752080',4,'CITOTECNOLOGO'),(1183,'MENSAJERO              65','20760065',71,'MENSAJERIA'),(770,'MENSAJERO','20760080',71,'MENSAJERIA'),(1,'ASISTENTE MEDICA','2076065',1,'ASISTENTE MEDICA'),(2,'ASISTENTE MEDICA','2076072',1,'ASISTENTE MEDICA'),(3,'ASISTENTE MEDICA','2076080',1,'ASISTENTE MEDICA'),(108,'COORD ASIST MEDICAS','2076165',7,'COORDINADOR'),(109,'COORD ASIST MEDICAS','2076172',7,'COORDINADOR'),(110,'COORD ASIST MEDICAS','2076180',7,'COORDINADOR'),(4,'ASISTENTE MEDICA','2076272',1,'ASISTENTE MEDICA'),(111,'COORD ASIST MEDICAS','2076365',7,'COORDINADOR'),(112,'COORD ASIST MEDICAS','2076372',7,'COORDINADOR'),(1393,'JEFE DE OFICINA A      80','20770080',50,'OFICINA'),(2336,'JEF GPO SERVS PERSONAL 80','20770280',137,'JEFE DE GRUPO'),(1812,'REDACTOR B             65','2077065',150,'REDACTOR'),(2330,'CAM VEH SER OR PR      80','20780080',78,'PROVISIONAL'),(1995,'OP VEH SER OR PR       80','20780180',78,'PROVISIONAL'),(1986,'OP AMBULANCIAS         65','20780265',78,'PROVISIONAL'),(1977,'OP AMBULANCIAS         80','20780280',78,'PROVISIONAL'),(2036,'AUX DE VELATORIO       80','20790080',111,'AUXILIAR'),(2017,'OPERADOR DE VELATORIO  80','20790180',78,'PROVISIONAL'),(2246,'AYTE EMBALSAMAMIENTO   80','20790280',111,'AUXILIAR'),(1543,'SOCIOLOGO              80','2079080',88,'SOCIOLOGO'),(978,'SOCIOLOGO              80','2079180',88,'SOCIOLOGO'),(2010,'CONTROLADOR TRANSP     65','2079865',120,'CONTROLADOR'),(2320,'CONTROLADOR TRANSP     72','2079872',120,'CONTROLADOR'),(1818,'CONTROLADOR TRANSP     80','2079880',120,'CONTROLADOR'),(640,'TECNICO DE ANESTESIA','2079945',42,'TECNICO DE ANESTESIA'),(641,'TECNICO DE ANESTESIA','2079972',42,'TECNICO DE ANESTESIA'),(1610,'VETERINARIO            80','20800080',98,'VETERINARIO'),(642,'TECNICO DE ANESTESIA','2080045',42,'TECNICO DE ANESTESIA'),(643,'TECNICO DE ANESTESIA','2080060',42,'TECNICO DE ANESTESIA'),(644,'TECNICO DE ANESTESIA','2080072',42,'TECNICO DE ANESTESIA'),(645,'TECNICO DE ANESTESIA','2080080',42,'TECNICO DE ANESTESIA'),(1498,'YESISTA                80','20810080',169,'YESISTA'),(682,'AUX DE TRAB SOCIAL','2081065',48,'TRABAJO SOCIAL'),(683,'AUX DE TRAB SOCIAL','2081080',48,'TRABAJO SOCIAL'),(693,'TRABAJADORA SOCIAL','2081165',48,'TRABAJO SOCIAL'),(694,'TRABAJADORA SOCIAL','2081172',48,'TRABAJO SOCIAL'),(695,'TRABAJADORA SOCIAL','2081180',48,'TRABAJO SOCIAL'),(696,'TRABAJADORA SOCIAL','2081372',48,'TRABAJO SOCIAL'),(1980,'CHOFER                 65','2082065',94,'CHOFER'),(2096,'CHOFER                 72','2082072',78,'PROVISIONAL'),(1334,'CHOFER                 80','2082080',94,'CHOFER'),(2214,'MOTOCICLISTA           65','2082165',78,'PROVISIONAL'),(2085,'MOTOCICLISTA           80','2082180',78,'PROVISIONAL'),(2041,'CONTROLADOR DE TRANSP  65','2082265',120,'CONTROLADOR'),(2292,'CONTROLADOR DE TRANSP  72','2082272',120,'CONTROLADOR'),(1452,'CONTROLADOR DE TRANSP  80','2082280',120,'CONTROLADOR'),(1659,'YESISTA                80','2083080',169,'YESISTA'),(1575,'TEC MANEJO AP ELECTRODI60','2085060',78,'PROVISIONAL'),(1193,'TEC MANEJO AP ELECTRODI80','2085080',78,'PROVISIONAL'),(2115,'CONTROLADOR DE TRANSP  65','2085165',120,'CONTROLADOR'),(1735,'CONTROLADOR DE TRANSP  80','2085180',120,'CONTROLADOR'),(2539,'OP MAQUINA DE REV AUT  65','2085365',78,'PROVISIONAL'),(1002,'OP TELEX TELEG B       65','2085565',78,'PROVISIONAL'),(1401,'OP TELEX TELEG B       80','2085580',78,'PROVISIONAL'),(2406,'OP TELEX TELEG C       80','2085680',78,'PROVISIONAL'),(1602,'COOR OP TELEX TELEG    80','2085780',7,'COORDINADOR'),(1413,'OPERADOR TELEFONICO B  65','2085965',70,'OPERADOR'),(1707,'OPERADOR TELEFONICO B  72','2085972',78,'PROVISIONAL'),(1642,'OP MAQUINA DE REV AUT  80','2086080',78,'PROVISIONAL'),(1775,'OPERADOR TELEFONICO C  65','2086165',78,'PROVISIONAL'),(253,'AUX ENFERMERIA U M','2086372',11,'ENFERMERIA'),(2098,'AUX SERVS GRALES U MED 72','2086672',111,'AUXILIAR'),(2502,'OP TELEX TELEG A       65','2087065',78,'PROVISIONAL'),(1843,'OP EQ Y AP TELECOMUNIC 72','2087072',164,'TECNICO EN TELECOMUNICACIONES'),(1265,'OP TELEX TELEG A       80','2087080',78,'PROVISIONAL'),(1303,'OP TELEX TELEG B       65','2087165',78,'PROVISIONAL'),(1485,'OP TELEX TELEG B       80','2087180',70,'OPERADOR'),(1893,'OP TELEX TELEG C       65','2087265',78,'PROVISIONAL'),(1430,'OP TELEX TELEG C       80','2087280',78,'PROVISIONAL'),(1068,'COORD OP TELEX TELEG   80','2087580',7,'COORDINADOR'),(2200,'CAMI TRAS PAC S ORD PR 80','2087680',78,'PROVISIONAL'),(2102,'OP TRANSP PAC S ORD PR 80','2087780',78,'PROVISIONAL'),(1441,'OP TELEFONICO A        65','2088065',70,'OPERADOR'),(2163,'OP TELEFONICO A        72','2088072',78,'PROVISIONAL'),(1351,'OP TELEFONICO A        80','2088080',70,'OPERADOR'),(1259,'OP TELEFONCIO B        65','2088165',70,'OPERADOR'),(2256,'OP TELEFONICO B        72','2088172',78,'PROVISIONAL'),(869,'OP TELEFONICO B        80','2088180',78,'PROVISIONAL'),(1846,'OP TELEFONICO C        65','2088265',78,'PROVISIONAL'),(2159,'OP TELEFONICO C        72','2088272',78,'PROVISIONAL'),(930,'OP TELEFONICO C        80','2088280',70,'OPERADOR'),(1455,'COORD OP TELEFONICOS   80','2088580',7,'COORDINADOR'),(250,'AUX DE ENFERMERIA U M','2089065',11,'ENFERMERIA'),(252,'AUX ENF UM','2089072',11,'ENFERMERIA'),(251,'AUX DE ENFERMERIA U M','2089080',11,'ENFERMERIA'),(1461,'AUX ADMON UNID MEDICA  65','2089165',78,'PROVISIONAL'),(1149,'AUX ADMON UNID MEDICA  80','2089180',78,'PROVISIONAL'),(1181,'AUX DE LIMP Y COC U MED80','2089280',78,'PROVISIONAL'),(2131,'AUX DE SERVS GRALES U M65','2089365',111,'AUXILIAR'),(2189,'AUX DE SERVS GRALES U M72','2089372',111,'AUXILIAR'),(1640,'AUX DE SERVS GRALES U M80','2089380',111,'AUXILIAR'),(1125,'AUX DE AREA MEDICA UMC 80','2089480',110,'AUX DE AREA MEDICA'),(1949,'AUX DE ADMON UMC       80','2089580',78,'PROVISIONAL'),(1753,'AUX DE SERVS GRALS UMC 80','2089680',111,'AUXILIAR'),(2279,'OP DE MANTENIMIENTO UMC80','2089780',78,'PROVISIONAL'),(2171,'OF CONSERVACION        65','2090065',117,'CONSERVACION'),(1795,'OFICIAL CONSERVACION   80','2090080',78,'PROVISIONAL'),(2038,'TEC CONSERVACION A 1   80','2091180',117,'CONSERVACION'),(2112,'TEC CONSERVACION B 1   80','2091280',117,'CONSERVACION'),(2083,'TEC CONSERVACION C 1   80','2091380',117,'CONSERVACION'),(2230,'TEC CONSERVACION D 1   80','2091480',117,'CONSERVACION'),(2089,'TEC CONSERVACION A 2   80','2092180',117,'CONSERVACION'),(2111,'TEC CONSERVACION B 2   80','2092280',117,'CONSERVACION'),(2051,'TEC CONSERVACION C 2   80','2092380',117,'CONSERVACION'),(2066,'TEC CONSERVACION D 2   80','2092480',117,'CONSERVACION'),(2184,'TEC CONSERVACION A 3   72','2093172',117,'CONSERVACION'),(2355,'TEC CONSERVACION A 3   80','2093180',117,'CONSERVACION'),(2193,'TEC CONSERVACION B 3   80','2093280',117,'CONSERVACION'),(2394,'TEC CONSERVACION C 3   80','2093380',117,'CONSERVACION'),(2060,'TEC CONSERVACION D 3   80','2093480',117,'CONSERVACION'),(2416,'TEC CONSERVACION A 4   80','2094180',117,'CONSERVACION'),(2289,'TEC CONSERVACION B 4   80','2094280',117,'CONSERVACION'),(2313,'TEC CONSERVACION C 4   80','2094380',117,'CONSERVACION'),(1890,'TEC CONSERVACION D 4   80','2094480',117,'CONSERVACION'),(2125,'OF CONSERVACION UMEMC  80','2094680',117,'CONSERVACION'),(1950,'JEF GPO SERVS PERSONAL 80','2095480',137,'JEFE DE GRUPO'),(1552,'JEF GPO SERVS PERSONAL 80','2095580',137,'JEFE DE GRUPO'),(1339,'OP PROCESAMIENTO DATOS 65','2096065',146,'PROCESADOR DE DATOS'),(1074,'OP PROCESAMIENTO DATOS 80','2096080',78,'PROVISIONAL'),(1335,'AYTE TEC PROCES DATOS  65','2096165',146,'PROCESADOR DE DATOS'),(1238,'AYTE TEC PROCES DATOS  80','2096180',146,'PROCESADOR DE DATOS'),(2238,'OF TEC PROCES DATOS    65','2096265',146,'PROCESADOR DE DATOS'),(1240,'OF TEC PROCES DATOS    80','2096280',146,'PROCESADOR DE DATOS'),(1569,'COORD TEC PROC DATOS   65','2096365',7,'COORDINADOR'),(1211,'COORD TEC PROC DATOS   80','2096380',7,'COORDINADOR'),(2018,'OF DE MANTENIMIENTO 4  80','2097380',117,'CONSERVACION'),(1285,'TECNICO POLIVALENTE    80','2101180',78,'PROVISIONAL'),(2518,'AUXILIAR DE ALMACEN    65','21020065',78,'PROVISIONAL'),(753,'AUXILIAR DE ALMACEN','21020080',61,'ALMACEN'),(2248,'PROCESO TRANSFORMACION 80','2102080',78,'PROVISIONAL'),(1907,'TECNICO ELECTRICISTA   80','2102180',78,'PROVISIONAL'),(1898,'TECNICO MECANICO       80','2102280',78,'PROVISIONAL'),(1998,'TECNICO PLOMERO        80','2102380',166,'TECNICO PLOMERO'),(1981,'TECNICO ELECTRONICO    80','2102480',159,'TECNICO ELECTRONICO'),(1473,'TEC A AIRE ACON-REFRIG 80','2103180',78,'PROVISIONAL'),(2005,'TEC A EQUIPOS MEDICOS  80','2103280',78,'PROVISIONAL'),(2268,'TEC A PLANTAS LAVADO   80','2103480',78,'PROVISIONAL'),(1965,'TEC A FLUIDOS-ENERGET  80','2103580',78,'PROVISIONAL'),(5,'ASISTENTE MEDICA','21040065',1,'ASISTENTE MEDICA'),(6,'ASISTENTE MEDICA','21040080',1,'ASISTENTE MEDICA'),(1326,'TEC EQ RECIPROCANTES   80','2104180',78,'PROVISIONAL'),(2188,'TEC B EQUIPOS MEDICOS  80','2104280',78,'PROVISIONAL'),(2434,'TEC B TELECOMUNICACION 80','2104380',164,'TECNICO EN TELECOMUNICACIONES'),(2275,'TEC B PLANTAS LAVADO   80','2104480',78,'PROVISIONAL'),(1515,'TEC B FLUIDOS-ENERGET  80','2104580',78,'PROVISIONAL'),(2181,'TEC EQ TURBOCENTRIFUGO 80','2105180',161,'TECNICO EN EQUIPOS TURBOCENTRIFUGO'),(1584,'TEC MEC FLUIDOS-ESPEC  80','2105280',78,'PROVISIONAL'),(1974,'TEC C FLUIDOS-ENERGET  80','2105580',78,'PROVISIONAL'),(1975,'TEC EQ ABSORCION       80','2105780',160,'TECNICO EN EQUIPOS DE ABSORCION'),(2075,'TEC ELECT MED-LAB      80','2105880',78,'PROVISIONAL'),(2322,'TEC EQ RAYOS X         80','2105980',163,'TECNICO EN RAYOS X'),(1350,'TECNICO DE BIBLIOTECAS 65','21060065',78,'PROVISIONAL'),(1668,'TECNICO DE BIBLIOTECAS 80','21060080',78,'PROVISIONAL'),(2030,'ESP FLUIDOS-ENERGET    80','2106580',78,'PROVISIONAL'),(774,'TECNICO POLIVALENTE','21120080',74,'TECNICO POLIVALENTE'),(2537,'DIBUJANTE EST Y PUB C  65','21160065',100,'DIBUJANTE'),(270,'ENFERMERA GENERAL','21210080',11,'ENFERMERIA'),(1360,'AUXILIAR DE FARMACIA   65','21230065',49,'FARMACIA'),(1643,'AUXILIAR DE FARMACIA   80','21230080',78,'PROVISIONAL'),(858,'OFICIAL PUERICULTURA   65','21250065',78,'PROVISIONAL'),(857,'OFICIAL PUERICULTURA   80','21250080',78,'PROVISIONAL'),(763,'AUX DE SERV DE INT','21300065',59,'INTENDENCIA'),(923,'AUX DE SERVS DE INT    80','21300080',78,'PROVISIONAL'),(743,'AUX DE SERVS DE INT','2130080',59,'INTENDENCIA'),(2349,'OP SERVS DE LAVANDERIA 65','21330065',78,'PROVISIONAL'),(846,'OP SERVS DE LAVANDERIA 80','21330080',78,'PROVISIONAL'),(555,'NUTRICIONISTA DIETISTA','21390065',29,'NUTRICION Y DIETOLOGIA'),(556,'NUTRICIONISTA DIETISTA','21390080',29,'NUTRICION Y DIETOLOGIA'),(1848,'PROF EDUC FISICA A     40','21510040',147,'PROFESOR'),(2222,'PROF EDUC FISICA A     60','21510060',147,'PROFESOR'),(2088,'PROF EDUC FISICA A     80','21510080',147,'PROFESOR'),(589,'QUIMICO CLINICO','21560080',34,'QUIMICO'),(1918,'MANEJADOR ALIMENTOS    65','21610065',78,'PROVISIONAL'),(859,'MANEJADOR ALIMENTOS    80','21610080',78,'PROVISIONAL'),(812,'OPERADOR TELEFONICO A  65','21670065',78,'PROVISIONAL'),(1117,'OPERADOR TELEFONICO A  80','21670080',70,'OPERADOR'),(860,'OP GRAL EN TIENDAS     80','21690080',78,'PROVISIONAL'),(873,'TRABAJADORA SOCIAL     65','21700065',48,'TRABAJO SOCIAL'),(705,'TRABAJADORA SOCIAL','21700080',48,'TRABAJO SOCIAL'),(1138,'TRABAJADOR SOCIAL CLINICO','21710080',48,'TRABAJO SOCIAL'),(1978,'CHOFER                 65','21720065',94,'CHOFER'),(1235,'CHOFER                 80','21720080',94,'CHOFER'),(2527,'MOTOCICLISTA           80','21720180',102,'MOTOCICLISTA'),(701,'ENF TRAS PAC URG','21730080',11,'ENFERMERIA'),(760,'TEC OP TRANS PAC URG','21730180',66,'TECNICO OPERACION'),(1109,'AUX UNIV DE OFICINAS   65','21760065',78,'PROVISIONAL'),(708,'AUX UNIVERSAL DE OFICINAS','21760080',50,'OFICINA'),(993,'OPERADOR VEH SER OR PR 80','21780080',70,'OPERADOR'),(2118,'OPERADOR AMBULANCIAS 65','21780165',78,'PROVISIONAL'),(769,'OPERADOR AMBULANCIAS','21780180',70,'OPERADOR'),(2435,'AUX SOPORTE TEC INFORMAT','21820080',78,'PROVISIONAL'),(1466,'OF SOPORTE TEC INFORMAT','21820180',78,'PROVISIONAL'),(768,'OFICIAL DE ALMACEN','22020080',61,'ALMACEN'),(113,'COORD ASIST MEDICAS','22040080',7,'COORDINADOR'),(1465,'ASIST BIBLIOTECARIO    65','22060065',53,'BIBLIOTECA'),(713,'ASISTENTE BIBLIOTECARIO','22060080',53,'BIBLIOTECA'),(766,'TECNICO ELECTRICISTA','22120080',69,'TECNICO ELECTRICISTA'),(785,'TECNICO ELETRONICO','22120180',77,'TECNICO ELETRONICO'),(754,'TECNICO MECANICO','22120280',62,'TECNICO MECANICO'),(1267,'TECNICO PLOMERO        80','22120380',166,'TECNICO PLOMERO'),(263,'ENFERMERA ESPECIALISTA','22210080',11,'ENFERMERIA'),(254,'ENF ESPEC SALUD PUBL','22210180',11,'ENFERMERIA'),(2602,'HONORARIOS','22222222',143,'PERSONAL DE HONORARIOS'),(704,'AYUDANTE DE FARMACIA','22230080',49,'FARMACIA'),(803,'TECNICO PUERICULTURA   80','22250080',167,'TECNICO PUERICULTURA'),(762,'AYTE DE SERVS DE INT','22300080',59,'INTENDENCIA'),(2421,'OF SERVS DE LAVANDERIA 65','22330065',78,'PROVISIONAL'),(761,'OF SERVS DE LAVANDERIA','22330080',67,'LAVANDERIA'),(551,'ESP NUTRIC DIETETICA','22390080',29,'NUTRICION Y DIETOLOGIA'),(1142,'JEFE DE PARTERAS       80','22470080',142,'PARTERAS'),(1030,'AUX UNIV DE OFNAS      65','2250065',50,'OFICINA'),(1888,'AUX UNIV DE OFNAS      72','2250072',78,'PROVISIONAL'),(881,'AUX UNIV DE OFNAS      80','2250080',50,'OFICINA'),(866,'AYTE UNIV DE OFNAS     65','2250165',50,'OFICINA'),(2261,'AYTE UNIV DE OFNAS     70','2250170',78,'PROVISIONAL'),(1730,'AYTE UNIV DE OFNAS     72','2250172',78,'PROVISIONAL'),(793,'AYTE UNIV DE OFNAS     80','2250180',78,'PROVISIONAL'),(915,'PROF EDUC FISICA B     40','22510040',147,'PROFESOR'),(1366,'PROF EDUC FISICA B     60','22510060',147,'PROFESOR'),(1556,'PROF EDUC FISICA B     80','22510080',147,'PROFESOR'),(1538,'OF TEC DE OFICINAS     65','2251265',78,'PROVISIONAL'),(941,'OF TEC DE OFICINAS     80','2251280',50,'OFICINA'),(1702,'COORD TEC DE OFNAS     65','2251365',78,'PROVISIONAL'),(962,'COORD TEC DE OFNAS     80','2251380',7,'COORDINADOR'),(932,'JEFE DE GRUPOS DE OFNAS80','2251480',50,'OFICINA'),(924,'ESP EN SERVS ADMVOS    80','2251580',78,'PROVISIONAL'),(2432,'TECNICO DE ARCHIVO     65','2252265',156,'TECNICO DE ARCHIVO'),(1121,'TECNICO DE ARCHIVO     80','2252280',156,'TECNICO DE ARCHIVO'),(1343,'COORD TEC DE ARCHIVOS  80','2252380',7,'COORDINADOR'),(1450,'OFICIAL DE DEP TECNICA 65','2253265',78,'PROVISIONAL'),(898,'OFICIAL DE DEP TECNICA 80','2253280',78,'PROVISIONAL'),(1111,'COORD EN DEP TECNICA   65','2253365',7,'COORDINADOR'),(818,'COORD EN DEP TECNICA   80','2253380',7,'COORDINADOR'),(1870,'JEFE GRUPO SERVS TEC   65','2253465',137,'JEFE DE GRUPO'),(1050,'JEFE GRUPO SERVS TEC   80','2253480',137,'JEFE DE GRUPO'),(1266,'ESP EN SERVS TECNICOS  80','2253580',128,'ESPECIALISTA EN SERVICIOS TECNICOS'),(2529,'AUX UNIV DE OFICINAS   72','2253772',78,'PROVISIONAL'),(1048,'OFICIAL DE TESORERIA   65','2253865',78,'PROVISIONAL'),(1832,'OFICIAL DE TESORERIA   72','2253872',78,'PROVISIONAL'),(934,'ESP DE TESORERIA       80','2254180',127,'ESPECIALISTA DE TESORERIA'),(1495,'OF DE SERVS TECNICOS   65','2254265',78,'PROVISIONAL'),(1063,'ESP DE SERVS TECNICOS  80','2254580',128,'ESPECIALISTA EN SERVICIOS TECNICOS'),(1131,'OF DE SERVS ADMVOS     65','2254665',78,'PROVISIONAL'),(2198,'JEFE GPO SERVS ADMVOS  65','2254865',137,'JEFE DE GRUPO'),(1135,'ESP DE SERVS ADMVOS    80','2254980',78,'PROVISIONAL'),(1301,'OFICIAL DE PERSONAL    65','2255065',78,'PROVISIONAL'),(1367,'ESP DE PERSONAL        80','2255380',78,'PROVISIONAL'),(829,'OFICIAL DE ESTADISTICA 65','2255465',78,'PROVISIONAL'),(2284,'ESP DE ESTADISTICA     80','2255780',153,'SERVICIOS DE ESTADISTICA'),(1400,'COORD DE PROC DE DATOS 65','2255965',7,'COORDINADOR'),(808,'QUIMICO CLIN JEF SECC  80','22560080',78,'PROVISIONAL'),(1312,'ESP DE PROCES DE DATOS 80','2256180',146,'PROCESADOR DE DATOS'),(1741,'OF DE CONTABILIDAD     65','2256265',118,'CONTABILIDAD'),(1732,'ESP DE CONTABILIDAD    80','2256580',118,'CONTABILIDAD'),(1746,'COCINERO TECNICO 2     65','22610065',115,'COCINERO'),(805,'COCINERO TECNICO 2     80','22610080',115,'COCINERO'),(842,'OPERADOR TELEFONICO B  80','22670080',78,'PROVISIONAL'),(889,'JEFE DE LINEA EN TIENDA80','22690080',139,'JEFE DE TIENDA'),(732,'TRABAJADOR SOCIAL CLINICO','22700080',48,'TRABAJO SOCIAL'),(546,'AUX SERVS DIETOLOGIA','2270065',29,'NUTRICION Y DIETOLOGIA'),(547,'AUX SERVS DIETOLOGIA','2270072',29,'NUTRICION Y DIETOLOGIA'),(548,'AUX SERVS DIETOLOGIA','2270080',29,'NUTRICION Y DIETOLOGIA'),(899,'AYTE SERVS DIETOLOGIA  80','2271080',78,'PROVISIONAL'),(1985,'CONTROLADOR VEHICULOS  65','22720065',120,'CONTROLADOR'),(811,'CONTROLADOR VEHICULOS  80','22720080',120,'CONTROLADOR'),(1493,'OF SERVS DIETOLOGIA    65','2272065',78,'PROVISIONAL'),(1054,'OF SERVS DIETOLOGIA    80','2272080',78,'PROVISIONAL'),(256,'ENF TRAS PAC TERAP INT','22730080',11,'ENFERMERIA'),(1395,'TEC OP TRANS PAC T INT 80','22730180',78,'PROVISIONAL'),(796,'OFICIAL DE TESORERIA   80','22760080',78,'PROVISIONAL'),(835,'OF DE SERVS TECNICOS   80','22760180',78,'PROVISIONAL'),(897,'OF DE SERVS ADMVOS     80','22760280',78,'PROVISIONAL'),(782,'OFICIAL DE PERSONAL','22760380',73,'OFICIAL'),(773,'OFICIAL DE ESTADISTICA','22760480',73,'OFICIAL'),(1633,'OF DE PROCES DE DATOS  80','22760580',146,'PROCESADOR DE DATOS'),(1155,'OF DE CONTABILIDAD     80','22760680',118,'CONTABILIDAD'),(2135,'CONTROL VEH SER OR PR 65','22780065',120,'CONTROLADOR'),(1970,'CONTROL VEH SER OR PR 80','22780080',120,'CONTROLADOR'),(905,'AUX TEC SERVS DIET     80','2280080',78,'PROVISIONAL'),(772,'OF SOPORTE TEC INFORMAT','22820180',72,'INFORMATICA'),(549,'DIETISTA','2290065',29,'NUTRICION Y DIETOLOGIA'),(550,'DIETISTA','2290080',29,'NUTRICION Y DIETOLOGIA'),(1595,'AUX DE SERVS DE INT    72','2299772',78,'PROVISIONAL'),(1049,'AYTE DE SERVS DE INT   65','2299865',78,'PROVISIONAL'),(1003,'AYTE DE SERVS DE INT   72','2299872',78,'PROVISIONAL'),(1748,'OFICIAL SERVS DE INT   65','2299965',78,'PROVISIONAL'),(920,'AUX DE SERVS DE INT    65','2300065',78,'PROVISIONAL'),(2108,'AUX SERVS DE INT       70','2300070',78,'PROVISIONAL'),(1091,'AUX DE SERVS DE INT    72','2300072',78,'PROVISIONAL'),(1040,'AUX DE SERVS DE INT    80','2300080',78,'PROVISIONAL'),(2396,'AYTE DE SERVS DE INT   45','2301045',78,'PROVISIONAL'),(1184,'AYTE DE SERVS DE INT   65','2301065',78,'PROVISIONAL'),(929,'AYTE DE SERVS DE INT   70','2301070',78,'PROVISIONAL'),(1069,'AYTE DE SERVS DE INT   72','2301072',78,'PROVISIONAL'),(792,'AYTE DE SERVS DE INT   80','2301080',78,'PROVISIONAL'),(1662,'COORDINADOR DE ALMACEN 80','23020080',78,'PROVISIONAL'),(2129,'OF DE SERVS DE INT     65','2302065',78,'PROVISIONAL'),(1542,'OF DE SERVS DE INT     72','2302072',78,'PROVISIONAL'),(933,'OF DE SERVS DE INT     80','2302080',78,'PROVISIONAL'),(2403,'TECNICO DE MICROFOTOG  80','2302180',158,'TECNICO DE MICROFOTOGRAFIA'),(2392,'CUIDADOR DE ANIMALES   80','2303080',123,'CUIDADOR DE ANIMALES'),(1190,'AUX SERV GRALES UMEMC  80','2304080',78,'PROVISIONAL'),(1629,'OP SERVS DE LAVANDERIA 65','2305165',78,'PROVISIONAL'),(1286,'OP SERVS DE LAVANDERIA 80','2305180',78,'PROVISIONAL'),(2361,'OF SERVS DE LAVANDERIA 65','2305265',78,'PROVISIONAL'),(823,'OF SERV DE LAVANDERIA  80','2305280',78,'PROVISIONAL'),(1103,'CAJERA DE TIENDAS      80','2306080',112,'CAJERO'),(2277,'OPERADOR DE TIENDAS    80','2306180',78,'PROVISIONAL'),(1373,'JEFE DE LINEA EN TIENDA80','2306280',139,'JEFE DE TIENDA'),(879,'CAJERA DE TIENDAS      80','2306380',112,'CAJERO'),(2177,'OPERADOR DE TIENDAS    80','2306480',78,'PROVISIONAL'),(1530,'JEFE DE LINEA EN TIENDA80','2306580',139,'JEFE DE TIENDA'),(765,'TEC A AIRE ACON REFRIG','23120080',68,'TECNICO REFRIGERACION'),(755,'TEC A EQUIPOS MEDICOS','23120180',63,'TECNICO EQUIPOS MEDICOS'),(1270,'TEC A FLUIDOS-ENERGET  80','23120280',78,'PROVISIONAL'),(1963,'TEC A PLANTAS LAVADO   80','23120380',78,'PROVISIONAL'),(2073,'TEC A TELECOMUNICACION 80','23120480',164,'TECNICO EN TELECOMUNICACIONES'),(2121,'DIBUJANTE EST Y PUB A  80','23160080',78,'PROVISIONAL'),(436,'ENFERMERA JEFE DE PISO','23210080',20,'JEFE DE ENFERMERIA'),(752,'OFICIAL DE FARMACIA','23230080',49,'FARMACIA'),(764,'OFICIAL SERVS DE INT','23300080',59,'INTENDENCIA'),(2762,'NUTRIOLOGO CLIN ESPEC','23390080',29,'NUTRICION Y DIETOLOGIA'),(1781,'PROF EDUC FISICA C     40','23510040',147,'PROFESOR'),(1779,'PROF EDUC FISICA C     60','23510060',147,'PROFESOR'),(1116,'PROF EDUC FISICA C     80','23510080',147,'PROFESOR'),(884,'COCINERO TECNICO 1     80','23610080',115,'COCINERO'),(958,'OPERADOR TELEFONICO C  80','23670080',78,'PROVISIONAL'),(826,'COORD DE TESORERIA     80','23760080',7,'COORDINADOR'),(850,'COOR DE SERVS TECNICOS 80','23760180',7,'COORDINADOR'),(1300,'COORD DE SERVS ADMVOS  80','23760280',7,'COORDINADOR'),(834,'COORD DE PERSONAL      80','23760380',7,'COORDINADOR'),(779,'COORD DE ESTADISTICA','23760480',7,'COORDINADOR'),(893,'COORD DE PROC DE DATOS 80','23760580',7,'COORDINADOR'),(775,'COORD DE CONTABILIDAD','23760680',7,'COORDINADOR'),(853,'COOR SOPORTE TEC INFORMAT','23820280',7,'COORDINADOR'),(1916,'OP SEG ALBERCA CENT VAC80','2400080',78,'PROVISIONAL'),(2305,'OP DE CONSERV CENT VAC 80','2400180',78,'PROVISIONAL'),(2357,'OP DE VEHICULO CENT VAC80','2400280',78,'PROVISIONAL'),(1102,'OP SERVS INTER CENT VAC80','2400380',78,'PROVISIONAL'),(2249,'OP AUX CENTRO VAC      80','2400480',78,'PROVISIONAL'),(1580,'AUX HOSPEDAJE CENT VAC 80','2400880',111,'AUXILIAR'),(2025,'VIGILANTE EN CENT VAC  80','2401080',78,'PROVISIONAL'),(1100,'PLANCHADOR CENTROS VAC 80','2401280',144,'PLANCHADOR'),(1517,'JEFE DE GPO DE ALMACEN 80','24020080',137,'JEFE DE GRUPO'),(2385,'AUX DE VELATORIO       80','2402080',111,'AUXILIAR'),(2154,'OPERADOR DE VELATORIO  80','2402180',78,'PROVISIONAL'),(767,'TEC B EQUIPOS MEDICOS','24120080',63,'TECNICO EQUIPOS MEDICOS'),(1966,'TEC B FLUIDOS-ENERGET  80','24120180',78,'PROVISIONAL'),(2031,'TEC B PLANTAS LAVADO   80','24120280',78,'PROVISIONAL'),(2027,'TEC B TELECOMUNICACION 80','24120380',164,'TECNICO EN TELECOMUNICACIONES'),(756,'TEC EQ RECIPROCANTES','24120480',64,'TECNICO RECIPROCANTES'),(872,'COORDINADOR DE FARMACIA80','24230080',7,'COORDINADOR'),(874,'AUX ATEN MED UMEMC     80','2453080',110,'AUX DE AREA MEDICA'),(983,'COORD OP TELEFONICOS   80','24670080',7,'COORDINADOR'),(815,'JEFE DE GPO DE TESORER 80','24760080',137,'JEFE DE GRUPO'),(806,'JEFE GRUPO SERVS TEC   80','24760180',137,'JEFE DE GRUPO'),(945,'JEFE GPO SERVS ADMVOS  80','24760280',137,'JEFE DE GRUPO'),(843,'JEFE GPO DE PERSONAL   80','24760380',137,'JEFE DE GRUPO'),(831,'JEFE GPO ESTADISTICA   80','24760480',153,'SERVICIOS DE ESTADISTICA'),(979,'JEFE GPO PROCES DATOS  80','24760580',146,'PROCESADOR DE DATOS'),(845,'JEFE GPO CONTABILIDAD  80','24760680',118,'CONTABILIDAD'),(1908,'ESP DE ALMACEN         80','25020080',78,'PROVISIONAL'),(1984,'TEC ELECT MED LAB      80','25120080',78,'PROVISIONAL'),(758,'TEC C FLUIDOS ENERGET','25120180',65,'TECNICO FLUIDOS'),(1976,'TEC C PLANTAS LAVADO   80','25120280',78,'PROVISIONAL'),(1968,'TEC C TELECOMUNICACION 80','25120380',164,'TECNICO EN TELECOMUNICACIONES'),(759,'TEC MEC FLUIDOS ESPEC','25120480',65,'TECNICO FLUIDOS'),(1347,'TEC EQ ABSORCION       80','25120580',160,'TECNICO EN EQUIPOS DE ABSORCION'),(2034,'TEC EQ HELICOIDAL      80','25120680',165,'TECNICO EQUIPO HELICOIDAL'),(1969,'TEC EQ RAYOS X         80','25120780',163,'TECNICO EN RAYOS X'),(825,'TEC EQ TURBOCENTRIFUGO 80','25120880',161,'TECNICO EN EQUIPOS TURBOCENTRIFUGO'),(833,'ESP DE TESORERIA       80','25760080',127,'ESPECIALISTA DE TESORERIA'),(982,'ESP DE SERVS TECNICOS  80','25760180',128,'ESPECIALISTA EN SERVICIOS TECNICOS'),(937,'ESP DE SERVS ADMVOS    80','25760280',78,'PROVISIONAL'),(804,'ESP DE PERSONAL        80','25760380',78,'PROVISIONAL'),(797,'ESP DE ESTADISTICA     80','25760480',153,'SERVICIOS DE ESTADISTICA'),(909,'ESP DE PROCES DATOS    80','25760580',146,'PROCESADOR DE DATOS'),(837,'ESP DE CONTABILIDAD    80','25760680',118,'CONTABILIDAD'),(2015,'ESP EQ LABORATORIO     80','26120180',78,'PROVISIONAL'),(1987,'ESP EQ MEC FLUIDOS     80','26120280',78,'PROVISIONAL'),(2033,'ESP EQ AIRE ACON REFRI 80','26120380',78,'PROVISIONAL'),(2032,'ESP EQ ELECT MEDICA    80','26120580',78,'PROVISIONAL'),(2296,'ESP EQ RAYOS X         80','26120680',163,'TECNICO EN RAYOS X'),(1934,'ESP FLUIDOS ENERGET    80','26120780',78,'PROVISIONAL'),(2824,'JA3JEFE DE UNIDAD','30413000',78,'PROVISIONAL'),(2825,'LA1COORDINADOR NORM M','30611000',78,'PROVISIONAL'),(2827,'LA1HOMOL COORD NORM D','30611002',78,'PROVISIONAL'),(2834,'LC2COORDINADOR NORM D','30632001',78,'PROVISIONAL'),(2828,'MA1HOMOL JEFE DIV G','30711001',78,'PROVISIONAL'),(2829,'MA3ASESOR DIR NOR','30713001',78,'PROVISIONAL'),(2830,'MA3HOMOL JEFE DIV E','30713002',78,'PROVISIONAL'),(2826,'MA3JEFE DE DIVISION A','30713003',78,'PROVISIONAL'),(2831,'MA3SRIO PART DIR NORM','30713006',78,'PROVISIONAL'),(2835,'MB3JEFE DE DIVISION','30723000',78,'PROVISIONAL'),(2813,'ASISTENTE SALUD MENTAL E0','31210080',78,'PROVISIONAL'),(2789,'AUX ADMVO E1','31310080',78,'PROVISIONAL'),(2810,'AUX ADMVO OPORT E0','31310180',78,'PROVISIONAL'),(2738,'SECRETARIA E1','31310380',76,'SECRETARIA'),(2711,'VIGILANTE C E0','31310480',93,'VIGILANTE'),(2770,'N45 COORD MEDICO HR','32107980',7,'COORDINADOR'),(2709,'AUX ADMVO E2','32110080',111,'AUXILIAR'),(2655,'AUX ALMACEN OPORT E0','32110180',61,'ALMACEN'),(2658,'AYUD ADMVO OPORT E1','32110280',50,'OFICINA'),(2815,'CAJERO CENTRO VAC Y VELATORIO E0','32110480',78,'PROVISIONAL'),(2729,'CHOFER OPORT E0','32110580',94,'CHOFER'),(2713,'CONTROLADOR TARJETAS E0','32110680',120,'CONTROLADOR'),(2814,'OPER CONMUTADOR CENTRO VAC E0','32110780',78,'PROVISIONAL'),(2656,'SECRETARIA E2','32110980',76,'SECRETARIA'),(2708,'VIGILANTE B E0','32111180',93,'VIGILANTE'),(2652,'CHOFER POLIVALENTE OPORT E0','32210080',94,'CHOFER'),(2642,'SECRETARIA E3','32210280',76,'SECRETARIA'),(2783,'AUX ADMVO E3','32310180',78,'PROVISIONAL'),(2720,'CENSOR CONSTRUCCION E0','32310480',114,'CENSOR'),(2732,'LOCALIZADOR PATRONES E0','32311080',140,'LOCALIZADOR'),(2676,'SECRETARIA E4','32311280',76,'SECRETARIA'),(2703,'AUX TECNICO E1','33110080',155,'TECNICO'),(2775,'AYUD ADMVO OPORT E2','33110180',78,'PROVISIONAL'),(2688,'AYUD DE ABOGADO E0','33110280',91,'ABOGADO'),(2818,'CHOFER CAICE E0','33110380',78,'PROVISIONAL'),(2737,'CHOFER E1','33110480',94,'CHOFER'),(2779,'SECRETARIA E5','33110680',78,'PROVISIONAL'),(2778,'SUPERV VIGILANCIA E0','33110780',78,'PROVISIONAL'),(2689,'VISITADOR E0','33110980',96,'VISITADOR'),(2651,'ANALISTA ESTADISTICA OPORT E0','33210080',58,'ANALISTA'),(2692,'ASISTENTE INFORMACION E1','33210180',50,'OFICINA'),(2693,'AUX TECNICO E2','33210380',155,'TECNICO'),(2727,'EJECUTOR OFICINA COBROS E0','33210680',50,'OFICINA'),(2823,'FOTOGRAFO E0','33210780',78,'PROVISIONAL'),(2750,'JEFE TURNO VIGILANCIA E0','33210880',139,'JEFE DE TIENDA'),(2803,'LAB HOSPITAL RURAL OPORT E0','33210980',78,'PROVISIONAL'),(2808,'LITIGANTE ASISTENTE E0','33211080',78,'PROVISIONAL'),(2677,'SECRETARIA E6','33211280',76,'SECRETARIA'),(2663,'TEC ATN DERECHOHABIENTE E0','33211380',52,'TECNICO EN ATENCION'),(2648,'PSICOLOGO HOSPITAL RURAL E0','33211680',33,'PSICOLOGO'),(2694,'ASISTENTE INFORMACION E2','33310380',50,'OFICINA'),(2794,'CHOFER E3','33310480',78,'PROVISIONAL'),(2747,'PROM ACCION COMUNITARIA OPORT E0','33310880',32,'PROMOTOR'),(2735,'PROM PARAMEDICO TERAPISTA CEAGE E0','33311180',32,'PROMOTOR'),(2795,'RECEPCIONISTA DIR E0','33311480',78,'PROVISIONAL'),(2675,'CONTROLADOR SIST INTERACTIVO E1','33311880',122,'CONTROLADOR DE SISTEMAS'),(2710,'ANALISTA E1','34110080',58,'ANALISTA'),(2742,'CONTROLADOR SIST INTERACTIVO E2','34110180',122,'CONTROLADOR DE SISTEMAS'),(2802,'COORD CAPACITACION Y DESARROLLO E0','34110280',78,'PROVISIONAL'),(2680,'PSICOLOGO EVALUADOR E1','34110380',33,'PSICOLOGO'),(2801,'TEC ESPECIAL APOYO CONSERVACION E1','34110580',78,'PROVISIONAL'),(2786,'TEC SIST CONSERVACION E1','34110680',78,'PROVISIONAL'),(2728,'MED GENERAL UNIDAD MEDICA E0','34110880',25,'MEDICO GENERAL'),(2657,'ANALISTA E2','34210180',58,'ANALISTA'),(2690,'AUDIT A PATRONES E0','34210280',108,'AUDITOR'),(2797,'AUDIT E0','34210380',78,'PROVISIONAL'),(2776,'CONSULTORA AL DERECHOHABIENTE E0','34210580',78,'PROVISIONAL'),(2724,'CONTROLADOR SIST INTERACTIVO E3','34210680',122,'CONTROLADOR DE SISTEMAS'),(2626,'FACILIT INSTRUC CAPAC CALIDAD E1','34210780',60,'CAPACITACION'),(2686,'PSICOLOGO EVALUADOR E2','34210880',33,'PSICOLOGO'),(2787,'SECRETARIA E8','34211080',78,'PROVISIONAL'),(2820,'SUPERV INSTALACIONES E1','34211180',78,'PROVISIONAL'),(2707,'ANALISTA E3','34310080',58,'ANALISTA'),(2653,'CONTROLADOR SIST INTERACTIVO E4','34310180',122,'CONTROLADOR DE SISTEMAS'),(2684,'FACILIT INSTRUC CAPAC CALIDAD E2','34310380',60,'CAPACITACION'),(2796,'GESTOR OCUPACIONAL E0','34310480',78,'PROVISIONAL'),(2752,'INSTRUCTOR CECART E0','34310580',135,'INSTRUCTOR'),(2718,'PSICOLOGO EVALUADOR E3','34310780',33,'PSICOLOGO'),(2798,'RESP FARMACIA E0','34310880',78,'PROVISIONAL'),(2682,'RESP PROYECTOS E2','34310980',51,'PROYECTOS'),(2771,'SUPERV INSTALACIONES E2','34311180',78,'PROVISIONAL'),(2809,'TEC ESPECIAL APOYO CONSERVACION E2','34311280',78,'PROVISIONAL'),(2781,'ESPECIAL CLASIFICACION EMPRESAS E0','34311380',78,'PROVISIONAL'),(2701,'ANALISTA SUPERVISOR E1','35110080',58,'ANALISTA'),(2725,'ADMINISTRADOR HOSPITAL RURAL OPORT E0','35110180',55,'ADMINISTRADOR'),(2800,'JEFE OFICINA SUBDELEG E1','35110780',78,'PROVISIONAL'),(2726,'RES CONSERV HOSPITAL RURAL OPORT E0','35110880',117,'CONSERVACION'),(2716,'RESP PROYECTOS E3','35110980',51,'PROYECTOS'),(2784,'SECRETARIA E10','35111080',78,'PROVISIONAL'),(2673,'SUPERV MEDICO AUX UMR OPORT E0','35111380',40,'SUPERVISOR'),(2704,'TEC INVESTIGACION E2','35111480',16,'INVESTIGADOR'),(2678,'ANALISTA DELEG DE PLANEACION E0','35111580',58,'ANALISTA'),(2721,'FISICO MEDICO E0','35111680',27,'MEDICO NO FAMILIAR'),(2650,'ABOGADO PROCURADOR E0','35210080',91,'ABOGADO'),(2654,'ANALISTA SUPERVISOR E2','35210180',58,'ANALISTA'),(2746,'ASESOR JURIDICO TESORERIA E2','35210380',104,'ASESOR'),(2733,'ESPECIAL SEG EN EL TRABAJO E0','35210880',54,'SEGURIDAD EN EL TRABAJO'),(2683,'JEFE OFICINA E1','35211080',50,'OFICINA'),(2748,'JEFE OFICINA SUBDELEG E2','35211180',50,'OFICINA'),(2785,'LITIGANTE E1','35211280',78,'PROVISIONAL'),(2649,'MED ESPECIAL HOSPITAL RURAL OPORT E0','35211380',27,'MEDICO NO FAMILIAR'),(2739,'RESIDENTE CONSTRUCCIONES E1','35211780',117,'CONSERVACION'),(2741,'RESP PROYECTOS E4','35211880',51,'PROYECTOS'),(2791,'SECRETARIA E11','35211980',78,'PROVISIONAL'),(2751,'SUBRESIDENTE CONSTRUCCIONES E2','35212180',117,'CONSERVACION'),(2691,'SUPERV AUDITORIA PATRONES E0','35212280',108,'AUDITOR'),(2819,'ASESOR DELEGADO E1','35310080',78,'PROVISIONAL'),(2807,'ASESOR JEFE SERVICIO E3','35310180',78,'PROVISIONAL'),(2772,'JEFE OFICINA E2','35310980',78,'PROVISIONAL'),(2780,'JEFE OFICINA SUBDELEG E3','35311080',78,'PROVISIONAL'),(2792,'LITIGANTE E2','35311180',78,'PROVISIONAL'),(2640,'RESIDENTE CONSTRUCCIONES E2','35311280',117,'CONSERVACION'),(2722,'RESP PROYECTOS E5','35311380',51,'PROYECTOS'),(2712,'SECRETARIA E12','35311480',76,'SECRETARIA'),(2749,'SUPERV ADMON ARCH CLIN OPORT E0','35311780',40,'SUPERVISOR'),(2639,'SUPERV INSTALS CONSTRUCCIONES E2','35312080',40,'SUPERVISOR'),(2695,'SUPERV PROYECTOS E2','35312180',51,'PROYECTOS'),(2717,'COORD MEDICO HOSPITAL RURAL E0','35312380',7,'COORDINADOR'),(2805,'FISICO MEDICO UMAE E0','35312480',78,'PROVISIONAL'),(2715,'ASESOR DELEGADO E2','36110180',104,'ASESOR'),(2664,'AUDIT AREA AUDIT QUEJAS RESPONSAB E0','36110280',108,'AUDITOR'),(2774,'COORD TEC QUEJAS DERECHOHA E1','36110980',78,'PROVISIONAL'),(2790,'INVESTIGADOR ASOCIADO E1','36111280',78,'PROVISIONAL'),(2744,'JEFE OFICINA E3','36111780',50,'OFICINA'),(2745,'JEFE OFICINA SUBDELEG E4','36111880',50,'OFICINA'),(2641,'RESIDENTE CONSTRUCCIONES E3','36112180',117,'CONSERVACION'),(2702,'SUPERV PROYECTOS E3','36112580',51,'PROYECTOS'),(2812,'JEFE OFNA UMAE CONSULTIVO E0','36112980',78,'PROVISIONAL'),(2734,'JEFE OFNA UMAE CONTENCIOSO E0','36113080',50,'OFICINA'),(2743,'ASESOR DELEGADO E3','36210080',104,'ASESOR'),(2674,'COORD PROYECTO E1','36210680',7,'COORDINADOR'),(2736,'DIR HOSPITAL RURAL OPORT E0','36211080',9,'DIRECTOR'),(2719,'JEFE OFICINA E4','36211780',50,'OFICINA'),(2700,'COORD PROYECTO E2','36310280',7,'COORDINADOR'),(2822,'JEFE DIV JURIDICA UMAE E0','36310880',78,'PROVISIONAL'),(2767,'COORD AUX MEDICO DE INVESTIG E1','36311380',7,'COORDINADOR'),(2773,'ING BIOMEDICO E1','36311580',78,'PROVISIONAL'),(2706,'ASESOR COORDINADOR E0','37110080',7,'COORDINADOR'),(2763,'COORD PROGS MEDICOS NIVEL CENTRAL E0','37110280',7,'COORDINADOR'),(2705,'COORD PROGS NIVEL CENTRAL E1','37110580',7,'COORDINADOR'),(2768,'ING BIOMEDICO E2','37111280',97,'INGENIERO'),(2681,'COORD MEDIOS E1','37210080',7,'COORDINADOR'),(2699,'COORD PROGS NIVEL CENTRAL E2','37210180',7,'COORDINADOR'),(2788,'COORD TEC NIVEL CENTRAL E1','37210280',78,'PROVISIONAL'),(2777,'COORD MEDIOS E2','37310280',78,'PROVISIONAL'),(2698,'COORD TEC NIVEL CENTRAL E2','37310380',7,'COORDINADOR'),(2696,'JEFE DIV OPERATIVA E0','37310580',19,'JEFE DE DIVISION'),(2793,'JEFE AREA MEDICA NIVEL CENTRAL E0','37310780',78,'PROVISIONAL'),(2754,'JEFE GRUPO AUDITORIA E3','37310880',108,'AUDITOR'),(2697,'JEFE AREA NIVEL CENTRAL E0','37310980',105,'JEFE DE AREA'),(2544,'IA3DIRECTOR NORMATIVO','40313000',9,'DIRECTOR'),(2545,'JA3JEFE DE UNIDAD','40413000',83,'JEFE DE UNIDAD'),(2546,'JC1 UNIDAD VINCULACION','40431002',84,'UNIDAD VINCULACION'),(2547,'KA1 COORDINADOR NORMATIVO G ','40511001',7,'COORDINADOR'),(2552,'KA1 HOMOLOGO COORDINADOR NORMATIVO E','40511002',7,'COORDINADOR'),(2548,'KA1 DELEGADO B ','40511200',79,'DELEGADO'),(2550,'KA2 COORDINADOR NORMATIVO B ','40512000',7,'COORDINADOR'),(2551,'KA2 HOMOLOGO COORDINADOR NORMATIVO','40512001',7,'COORDINADOR'),(2553,'KB1 COORDINADOR NORMATIVO A ','40521001',7,'COORDINADOR'),(2555,'KB1 HOMOLOGO COORDINADOR NORMATIVO','40521003',7,'COORDINADOR'),(2554,'KB1 DELEGADO A ','40521200',79,'DELEGADO'),(2836,'KB2COORDINADOR NORM','40522000',78,'PROVISIONAL'),(2556,'KC1 COORDINADOR COMUNICACION SOCIAL','40531001',7,'COORDINADOR'),(2557,'LA1 COORDINADOR NORMATIVO M ','40611000',7,'COORDINADOR'),(2558,'LA1 HOMOLOGO COORDINADOR NORMATIVO D','40611002',7,'COORDINADOR'),(2755,'LA1COORD ADMVO','40611003',7,'COORDINADOR'),(2585,'LA1 DIRECTOR UMAE B','40611201',9,'DIRECTOR'),(2586,'LA2 DIRECTOR UMAE A','40612200',9,'DIRECTOR'),(2559,'LA3COORDINADOR NORM A','40613000',7,'COORDINADOR'),(2561,'LB1 COORDINADOR NORMATIVO TECNICO','40621000',7,'COORDINADOR'),(2562,'LB1 HOMOLOGO COORDINADOR NORMATIVO C ','40621001',7,'COORDINADOR'),(2560,'LB1 COORDINADOR NORMATIVO ','40621002',7,'COORDINADOR'),(2563,'LC1 COORDINADOR NORMATIVO I','40631000',7,'COORDINADOR'),(2564,'LC1 COORDINADOR NORMATIVO J','40631002',7,'COORDINADOR'),(2594,'LC1COOR ASESORES DIR NOR','40631004',7,'COORDINADOR'),(2839,'LC1COORD ADMVO','40631008',7,'COORDINADOR'),(2832,'LC2HOMOL COORD NORM A','40632000',78,'PROVISIONAL'),(2565,'LC2COORDINADOR NORM D','40632001',7,'COORDINADOR'),(414,'MA1JEFE DE DIVISION C','40711000',19,'JEFE DE DIVISION'),(2566,'MA1 HOMOLOGO JEFE DIVISION G','40711001',19,'JEFE DE DIVISION'),(2567,'MA2 HOMOLOGO JEFE DIVISION F ','40712001',19,'JEFE DE DIVISION'),(2568,'MA2 JEFE DE DIVISION B ','40712002',19,'JEFE DE DIVISION'),(2833,'MA2SRIO PRIVADO DIR NORM','40712004',78,'PROVISIONAL'),(729,'MA2 JEFE DE SERVS DEL B','40712201',22,'JEFE DE SERVICIOS MEDICOS'),(214,'MA2 DIRECTOR UMAE','40712203',9,'DIRECTOR'),(2600,'MA2 COORD ABASTO DEL B','40712204',7,'COORDINADOR'),(2606,'MA3ASESOR DIR NOR','40713001',104,'ASESOR'),(2569,'MA3HOMOL JEFE DIV E','40713002',19,'JEFE DE DIVISION'),(415,'MA3JEFE DE DIVISION A','40713003',19,'JEFE DE DIVISION'),(2587,'MA3 JEFE DEPTO ADMVO A','40713004',18,'JEFE DE DEPARTAMENTO'),(2625,'MA3 SRIO PART DIR NORM','40713006',106,'SECRETARIO PARTICULAR'),(2571,'MA3 JEFE DE SERVICIOS DELEGACION A ','40713201',82,'JEFE DE SERVICIOS DELEGACION'),(2543,'MA3JEFE DE SERVS DEL B','40713202',82,'JEFE DE SERVICIOS DELEGACION'),(2756,'MA3 COORD ABASTO DEL A','40713203',7,'COORDINADOR'),(2572,'MB3JEFE DE DIVISION','40723000',19,'JEFE DE DIVISION'),(2591,'MB3JEFE DE SERVS DEL A','40723200',82,'JEFE DE SERVICIOS DELEGACION'),(2574,'MC2 HOMOLOGO JEFE DIVISION B ','40732001',19,'JEFE DE DIVISION'),(2575,'MC2JEFE DE DIVISION','40732006',19,'JEFE DE DIVISION'),(2573,'MC2 COORDINADOR REGIONAL ','40732007',7,'COORDINADOR'),(2576,'MC3 HOMOLOGO JEFE DE DIVISION','40733000',19,'JEFE DE DIVISION'),(2577,'MC3 JEFE DE DIVISION','40733001',19,'JEFE DE DIVISION'),(2578,'NA3 JEFE DE DEPARTAMENTO DELEGACION B','40813200',18,'JEFE DE DEPARTAMENTO'),(2601,'NB2 SUBJEFE DE DIVISION C','40822001',81,'SUBJEFE DE DIVISION'),(2579,'NB2 COORDINADOR DELEGACION B ','40822200',7,'COORDINADOR'),(2599,'NB3 SUBJEFE DE DIVISION','40823001',81,'SUBJEFE DE DIVISION'),(2597,'NB3 COORDINADOR DEL B','40823200',7,'COORDINADOR'),(2592,'NB3 JEFE DE DEPARTAMENTO DELEGACION B','40823201',18,'JEFE DE DEPARTAMENTO'),(2598,'Nc2 HOMOL SUBJEFE DIV E','40832000',80,'SUBDELEGADO'),(2582,'NC2 SUBJEFE DE DIVISION B ','40832001',81,'SUBJEFE DE DIVISION'),(2580,'NC2 COORDINADOR DELEGACION A ','40832200',7,'COORDINADOR'),(2581,'NC2 JEFE DE DEPARTAMENTO DELEGACION A','40832201',18,'JEFE DE DEPARTAMENTO'),(2593,'NC3 HOMOL SUBJEFE DIV B','40833000',81,'SUBJEFE DE DIVISION'),(2605,'NC3 SUBJEFE DE DIVISION A','40833004',81,'SUBJEFE DE DIVISION'),(702,'NC3COORD SERVS MEDS DEL','40833201',7,'COORDINADOR'),(2595,'NC3 JEFE DEPTO DEL A','40833203',18,'JEFE DE DEPARTAMENTO'),(2603,'OC3 JEFE DE OFICINA DEL','40933200',50,'OFICINA'),(2583,'NC58 SUBDELEGADO B ','48358200',80,'SUBDELEGADO'),(2584,'NC68 SUBDELEGADO A','48368200',80,'SUBDELEGADO'),(2627,'OC50 JEFE DEPTO SUBDEL B','49350200',18,'JEFE DE DEPARTAMENTO'),(2757,'OC59 JEFE DEPTO SUBDEL A','49359200',18,'JEFE DE DEPARTAMENTO'),(2440,'BECARIO DE INVESTIG I','50000080',78,'PROVISIONAL'),(2457,'BECARIO DE INVESTIG II','50000180',78,'PROVISIONAL'),(2439,'BECARIO DE INVESTIG III','50000280',78,'PROVISIONAL'),(690,'PAS TRABAJO SOC A SS','50010080',48,'TRABAJO SOCIAL'),(691,'PAS TRABAJO SOC B SS','50010180',48,'TRABAJO SOCIAL'),(692,'PAS TRABAJO SOC C SS','50010280',48,'TRABAJO SOCIAL'),(559,'PAS DIETOLOGIA B SS','50020080',29,'NUTRICION Y DIETOLOGIA'),(560,'PAS DIETOLOGIA C SS','50020180',29,'NUTRICION Y DIETOLOGIA'),(193,'PAS A TEC DENTAL SS','50030080',8,'DENTISTA'),(194,'PAS B TEC DENTAL SS','50030180',8,'DENTISTA'),(195,'PAS C TEC DENTAL SS','50030280',8,'DENTISTA'),(274,'PAS ENFERMERIA A SS','50040080',11,'ENFERMERIA'),(275,'PAS ENFERMERIA B SS','50040180',11,'ENFERMERIA'),(276,'PAS ENFERMERIA C SS','50040280',11,'ENFERMERIA'),(277,'PAS LIC ENFERMER CC SS','50050080',11,'ENFERMERIA'),(196,'PAS ODONTOLOGIA A SS','50060080',8,'DENTISTA'),(197,'PAS ODONTOLOGIA B SS','50060180',8,'DENTISTA'),(198,'PAS ODONTOLOGIA C SS','50060280',8,'DENTISTA'),(584,'PAS QUIM FARMAC A SS','50070080',34,'QUIMICO'),(585,'PAS QUIM FARMAC B SS','50070180',34,'QUIMICO'),(295,'PAS INHALOTERAPIA A SS','50080080',15,'INHALOTERAPEUTA'),(296,'PAS INHALOTERAPIA B SS','50080180',15,'INHALOTERAPEUTA'),(487,'PAS TEC LAB CLIN A SS','50090080',23,'LABORATORISTA'),(488,'PAS TEC LAB CLIN B SS','50090180',23,'LABORATORISTA'),(648,'PAS A TEC SALUD COM SS','50100080',43,'TECNICO EN SALUD COMUNITARIA'),(649,'PAS B TEC SALUD COM SS','50100180',43,'TECNICO EN SALUD COMUNITARIA'),(650,'PAS C TEC SALUD COM SS','50100280',43,'TECNICO EN SALUD COMUNITARIA'),(573,'PAS A PSICOLOGIA SS','50110080',33,'PSICOLOGO'),(574,'PAS B PSICOLOGIA SS','50110180',33,'PSICOLOGO'),(575,'PAS C PSICOLOGIA SS','50110280',33,'PSICOLOGO'),(653,'PAS A TEC RADIOLOGO SS','50120080',45,'TECNICO RADIOLOGO'),(654,'PAS B TEC RADIOLOGO SS','50120180',45,'TECNICO RADIOLOGO'),(655,'PAS C TEC RADIOLOGO SS','50120280',45,'TECNICO RADIOLOGO'),(8,'PAS A BIOLOG ECOLOG SS','50130080',2,'BIOLOGO'),(9,'PAS B BIOLOG ECOLOG SS','50130180',2,'BIOLOGO'),(10,'PAS C BIOLOG ECOLOG SS','50130280',2,'BIOLOGO'),(688,'PAS B MEDICINA SER SOC','50140080',48,'TRABAJO SOCIAL'),(689,'PAS C MEDICINA SER SOC','50140180',48,'TRABAJO SOCIAL'),(670,'PAS TEC TERAP FIS A SS','50150080',47,'TERAPISTA'),(557,'PAS A NUTRICION SS','50160080',29,'NUTRICION Y DIETOLOGIA'),(558,'PAS B NUTRICION SS','50160180',29,'NUTRICION Y DIETOLOGIA'),(561,'PAS A OPTOMETRIA SS','50170080',30,'OPTOMETRISTA'),(562,'PAS B OPTOMETRIA SS','50170180',30,'OPTOMETRISTA'),(505,'INTERNO DE PREGRADO','50180080',26,'MEDICO INTERNO'),(2449,'PAS C LIC REHABILITACION','50190080',151,'REHABILITACION'),(2491,'PAS C CITOTECNOLOGO SS','50200080',4,'CITOTECNOLOGO'),(2759,'MEDICO NO FAMILIAR','70360180',27,'MEDICO NO FAMILIAR'),(728,'MEDICO FAMILIAR','70360280',24,'MEDICO FAMILIAR'),(726,'MEDICO GENERAL','70360380',25,'MEDICO GENERAL'),(727,'MEDICO GENERAL','70360480',25,'MEDICO GENERAL'),(2629,'NUTRICIONISTA DIETISTA  80','71390080',29,'NUTRICION Y DIETOLOGIA'),(2760,'ENFERMERA ESPECIALISTA 80','72210080',11,'ENFERMERIA'),(2769,'ESP NUTRIC DIETETICA 80','72390080',29,'NUTRICION Y DIETOLOGIA'),(2764,'AUX ENFERMERIA GRAL HR','80210280',11,'ENFERMERIA'),(735,'MEDICO NO FAMILIAR','80360180',27,'MEDICO NO FAMILIAR'),(2758,'MEDICO FAMILIAR','80360280',24,'MEDICO FAMILIAR'),(790,'MEDICO GENERAL U MED','80360380',25,'MEDICO GENERAL'),(500,'MEDICO GENERAL 80','80360480',25,'MEDICO GENERAL'),(1573,'','8072280',78,'PROVISIONAL'),(733,'ASISTENTE MEDICA','81040080',1,'ASISTENTE MEDICA'),(780,'ENFERMERA GENERAL','81210080',11,'ENFERMERIA'),(700,'SUP NUTRICIONISTA DIETISTA','81390080',29,'NUTRICION Y DIETOLOGIA'),(2624,'ES PRUEBA','8989898',78,'PROVISIONAL'),(536,'RESIDENTE 1','90010080',28,'MEDICO RESIDENTE'),(537,'RESIDENTE 2','90020080',28,'MEDICO RESIDENTE'),(538,'RESIDENTE 3','90030080',28,'MEDICO RESIDENTE'),(539,'RESIDENTE 4','90040080',28,'MEDICO RESIDENTE'),(540,'RESIDENTE 5','90050080',28,'MEDICO RESIDENTE'),(541,'RESIDENTE 6','90060080',28,'MEDICO RESIDENTE'),(542,'RESIDENTE 7','90070080',28,'MEDICO RESIDENTE'),(543,'RESIDENTE 8','90080080',28,'MEDICO RESIDENTE'),(544,'RESIDENTE 9','90090080',28,'MEDICO RESIDENTE'),(2838,'EXTERNO','externo',78,'PROVISIONAL');
/*!40000 ALTER TABLE `ccategoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ccategoria_dictamen`
--

DROP TABLE IF EXISTS `ccategoria_dictamen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccategoria_dictamen` (
  `CATEGORIA_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `CAT_NOMBRE` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`CATEGORIA_CVE`),
  UNIQUE KEY `XPKCCATEGORIA` (`CATEGORIA_CVE`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ccategoria_dictamen`
--

LOCK TABLES `ccategoria_dictamen` WRITE;
/*!40000 ALTER TABLE `ccategoria_dictamen` DISABLE KEYS */;
INSERT INTO `ccategoria_dictamen` VALUES (1,'Asociado A'),(2,'Asociado B');
/*!40000 ALTER TABLE `ccategoria_dictamen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cclase_beca`
--

DROP TABLE IF EXISTS `cclase_beca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cclase_beca` (
  `CLA_BECA_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `CLA_BEC_NOMBRE` varchar(30) NOT NULL,
  PRIMARY KEY (`CLA_BECA_CVE`),
  UNIQUE KEY `XPKCCLASE_BECA` (`CLA_BECA_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cclase_beca`
--

LOCK TABLES `cclase_beca` WRITE;
/*!40000 ALTER TABLE `cclase_beca` DISABLE KEYS */;
/*!40000 ALTER TABLE `cclase_beca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ccurso`
--

DROP TABLE IF EXISTS `ccurso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccurso` (
  `CURSO_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `CUR_NOMBRE` varchar(70) NOT NULL,
  `TIP_CURSO_CVE` int(11) DEFAULT NULL,
  PRIMARY KEY (`CURSO_CVE`),
  UNIQUE KEY `XPKCCURSO` (`CURSO_CVE`),
  KEY `XIF1CCURSO` (`TIP_CURSO_CVE`),
  CONSTRAINT `ccurso_ibfk_1` FOREIGN KEY (`TIP_CURSO_CVE`) REFERENCES `ctipo_curso` (`TIP_CURSO_CVE`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ccurso`
--

LOCK TABLES `ccurso` WRITE;
/*!40000 ALTER TABLE `ccurso` DISABLE KEYS */;
INSERT INTO `ccurso` VALUES (1,'Formación inicial',NULL),(2,'Formación continua',NULL),(3,'Educación continua',NULL),(4,'Curso interactivo en Educación Continua ',NULL),(5,'Auxiliar de laboratorio',NULL),(6,'Citotecnólogo',NULL),(7,'Profesional técnico Fonoaudiólogo',NULL),(8,'Histotecnólogo',NULL),(9,'Inhaloterapeuta',NULL),(10,'Profesional técnico Nutricionista Dietista',NULL),(11,'Profesional técnico Radiólogo',NULL),(12,'Profesional técnico Laboratorista Clínico',NULL),(13,'Medicina Nuclear',NULL),(14,'Profesional técnico Radioterapeuta',NULL),(15,'Técnico en el Manejo de Aparatos para Electrodiagnóstico',NULL),(16,'Profesional técnico en Terapia Física',NULL),(17,'Profesional técnico en Terapia Ocupacional',NULL),(18,'Profesional Asistente de Bibliotecario',NULL),(19,'Auxiliar técnico de Enfermería',NULL);
/*!40000 ALTER TABLE `ccurso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdelegacion`
--

DROP TABLE IF EXISTS `cdelegacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdelegacion` (
  `DELEGACION_CVE` char(2) NOT NULL DEFAULT '',
  `DEL_NOMBRE` varchar(30) NOT NULL,
  `ref_tipo` char(1) DEFAULT NULL,
  `ref_identificador` char(1) DEFAULT NULL,
  `ind_baja` smallint(6) NOT NULL,
  PRIMARY KEY (`DELEGACION_CVE`),
  UNIQUE KEY `XPKCDELEGACION` (`DELEGACION_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdelegacion`
--

LOCK TABLES `cdelegacion` WRITE;
/*!40000 ALTER TABLE `cdelegacion` DISABLE KEYS */;
INSERT INTO `cdelegacion` VALUES ('01','AGUASCALIENTES','B','E',0),('02','BAJA CALIFORNIA','B','R',0),('03','BAJA CALIFORNIA SUR','B','R',0),('04','CAMPECHE','B','E',0),('05','COAHUILA','B','E',0),('06','COLIMA','B','R',0),('07','CHIAPAS','B','E',0),('08','CHIHUAHUA','B','E',0),('09','OFICINAS CENTRALES','B','R',0),('10','DURANGO','B','E',0),('11','GUANAJUATO','B','E',0),('12','GUERRERO','B','E',0),('13','HIDALGO','B','E',0),('14','JALISCO','A','E',0),('15','EDO MEX OTE','A','R',0),('16','EDO MEX PTE','A','R',0),('17','MICHOACAN','B','R',0),('18','MORELOS','B','E',0),('19','NAYARIT','B','E',0),('20','NUEVO LEON','A','R',0),('21','OAXACA','B','E',0),('22','PUEBLA','B','E',0),('23','QUERETARO','B','E',0),('24','QUINTANA ROO','B','E',0),('25','SAN LUIS POTOSI','B','E',0),('26','SINALOA','B','E',0),('27','SONORA','B','E',0),('28','TABASCO','B','E',0),('29','TAMAULIPAS','B','E',0),('30','TLAXCALA','B','R',0),('31','VERACRUZ NORTE','B','E',0),('32','VERACRUZ SUR','B','R',0),('33','YUCATAN','B','R',0),('34','ZACATECAS','B','E',0),('35','D F 1 NORTE','A','E',0),('36','D F 2 NORTE','A','R',0),('37','D F 3 SUR','A','R',0),('38','D F 4 SUR','A','R',0),('39','MANDO','A','R',0);
/*!40000 ALTER TABLE `cdelegacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdepartamento`
--

DROP TABLE IF EXISTS `cdepartamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdepartamento` (
  `departamento_cve` char(10) NOT NULL DEFAULT '',
  `cve_unidad_atencion` int(11) NOT NULL,
  `des_unidad_atencion` varchar(80) NOT NULL,
  `ind_medica` smallint(6) NOT NULL,
  `cve_organo_control` char(2) DEFAULT NULL,
  `nom_organo_control` varchar(80) NOT NULL,
  `cve_departamento` char(4) DEFAULT NULL,
  `nom_normativa` varchar(60) NOT NULL,
  `nom_dependencia` varchar(200) NOT NULL,
  `ref_ubicacion` varchar(200) NOT NULL,
  `cve_delegacion` char(2) DEFAULT NULL,
  `nom_delegacion` varchar(30) NOT NULL,
  `cve_depto_adscripcion_padre` char(10) DEFAULT NULL,
  `dep_nombre` varchar(50) NOT NULL,
  `cve_nivel_atencion` smallint(6) NOT NULL,
  `des_nivel_atencion` varchar(20) NOT NULL,
  `ind_imss_oport` smallint(6) NOT NULL,
  `ind_umae` smallint(6) NOT NULL,
  `id_tipo_adscripcion` int(11) NOT NULL,
  `dpt_rama` longtext NOT NULL,
  `presupuestal_cve` varchar(20) DEFAULT NULL,
  `pre_nombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`departamento_cve`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdepartamento`
--

LOCK TABLES `cdepartamento` WRITE;
/*!40000 ALTER TABLE `cdepartamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdepartamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cejercicio_predominante`
--

DROP TABLE IF EXISTS `cejercicio_predominante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cejercicio_predominante` (
  `EJER_PREDOMI_CVE` int(11) NOT NULL,
  `EJE_PRE_NOMBRE` varchar(40) NOT NULL,
  PRIMARY KEY (`EJER_PREDOMI_CVE`),
  UNIQUE KEY `XPKCEJERCICIO_PREDOMINANTE` (`EJER_PREDOMI_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cejercicio_predominante`
--

LOCK TABLES `cejercicio_predominante` WRITE;
/*!40000 ALTER TABLE `cejercicio_predominante` DISABLE KEYS */;
INSERT INTO `cejercicio_predominante` VALUES (1,'PREGRADO'),(2,'POSGRADO'),(3,'EDUCACIÓN CONTINUA'),(4,'DIRECTIVOS PARA LA SALUD'),(5,'FORMACIÓN DE PROFESORES'),(6,'POSTECNICO');
/*!40000 ALTER TABLE `cejercicio_predominante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cejercicio_profesional`
--

DROP TABLE IF EXISTS `cejercicio_profesional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cejercicio_profesional` (
  `EJE_PRO_NOMBRE` varchar(50) NOT NULL,
  `EJE_PRO_CVE` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`EJE_PRO_CVE`),
  UNIQUE KEY `XPKCEJERCICIO_PROFESIONAL` (`EJE_PRO_CVE`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cejercicio_profesional`
--

LOCK TABLES `cejercicio_profesional` WRITE;
/*!40000 ALTER TABLE `cejercicio_profesional` DISABLE KEYS */;
INSERT INTO `cejercicio_profesional` VALUES ('Administrativa/ directiva',1),('Asesor',2),('Atención directa a pacientes (asistencial)',3),('Editor',4),('Educativa',5),('Investigador',6),('En Comité',7),('Profesor',8);
/*!40000 ALTER TABLE `cejercicio_profesional` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cestado_bono`
--

DROP TABLE IF EXISTS `cestado_bono`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cestado_bono` (
  `ESTADO_BONO_CVE` int(11) NOT NULL,
  `EST_BON_NOMBRE` varchar(20) NOT NULL,
  PRIMARY KEY (`ESTADO_BONO_CVE`),
  UNIQUE KEY `XPKCESTADO_BONO` (`ESTADO_BONO_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cestado_bono`
--

LOCK TABLES `cestado_bono` WRITE;
/*!40000 ALTER TABLE `cestado_bono` DISABLE KEYS */;
/*!40000 ALTER TABLE `cestado_bono` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cestado_civil`
--

DROP TABLE IF EXISTS `cestado_civil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cestado_civil` (
  `CESTADO_CIVIL_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `EDO_CIV_NOMBRE` varchar(20) NOT NULL,
  PRIMARY KEY (`CESTADO_CIVIL_CVE`),
  UNIQUE KEY `XPKCESTADO_CIVIL` (`CESTADO_CIVIL_CVE`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cestado_civil`
--

LOCK TABLES `cestado_civil` WRITE;
/*!40000 ALTER TABLE `cestado_civil` DISABLE KEYS */;
INSERT INTO `cestado_civil` VALUES (1,'Soltero'),(2,'Casado'),(3,'Divorciado'),(4,'Viudo');
/*!40000 ALTER TABLE `cestado_civil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cestado_dictamen`
--

DROP TABLE IF EXISTS `cestado_dictamen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cestado_dictamen` (
  `ESTADO_DICTAMEN_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `EST_DIC_NOMBRE` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ESTADO_DICTAMEN_CVE`),
  UNIQUE KEY `XPKCESTADO_DICTAMEN` (`ESTADO_DICTAMEN_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cestado_dictamen`
--

LOCK TABLES `cestado_dictamen` WRITE;
/*!40000 ALTER TABLE `cestado_dictamen` DISABLE KEYS */;
/*!40000 ALTER TABLE `cestado_dictamen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cestado_evaluacion`
--

DROP TABLE IF EXISTS `cestado_evaluacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cestado_evaluacion` (
  `EST_EVALUACION_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `EST_EVA_NOMBRE` varchar(20) NOT NULL,
  PRIMARY KEY (`EST_EVALUACION_CVE`),
  UNIQUE KEY `XPKCESTADO_ESVALUACION` (`EST_EVALUACION_CVE`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cestado_evaluacion`
--

LOCK TABLES `cestado_evaluacion` WRITE;
/*!40000 ALTER TABLE `cestado_evaluacion` DISABLE KEYS */;
INSERT INTO `cestado_evaluacion` VALUES (1,'estado1'),(2,'estado2');
/*!40000 ALTER TABLE `cestado_evaluacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cestado_laboral`
--

DROP TABLE IF EXISTS `cestado_laboral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cestado_laboral` (
  `EDO_LABORAL_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `EDO_LAB_NOMBRE` varchar(25) NOT NULL,
  PRIMARY KEY (`EDO_LABORAL_CVE`),
  UNIQUE KEY `XPKCESTADO_LABORAL` (`EDO_LABORAL_CVE`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cestado_laboral`
--

LOCK TABLES `cestado_laboral` WRITE;
/*!40000 ALTER TABLE `cestado_laboral` DISABLE KEYS */;
INSERT INTO `cestado_laboral` VALUES (1,'laborando'),(2,'no laborando'),(3,'edo3');
/*!40000 ALTER TABLE `cestado_laboral` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cestado_usuario`
--

DROP TABLE IF EXISTS `cestado_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cestado_usuario` (
  `ESTADO_USUARIO_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `EDO_USUARIO_DESC` varchar(20) NOT NULL,
  PRIMARY KEY (`ESTADO_USUARIO_CVE`),
  UNIQUE KEY `XPKCESTADO_USUARIO` (`ESTADO_USUARIO_CVE`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cestado_usuario`
--

LOCK TABLES `cestado_usuario` WRITE;
/*!40000 ALTER TABLE `cestado_usuario` DISABLE KEYS */;
INSERT INTO `cestado_usuario` VALUES (1,'Activo'),(2,'Inactivo'),(3,'Restablecer C'),(4,'Restablecer CMA');
/*!40000 ALTER TABLE `cestado_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cestado_validacion`
--

DROP TABLE IF EXISTS `cestado_validacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cestado_validacion` (
  `EST_VALIDACION_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `EST_VALIDA_DESC` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`EST_VALIDACION_CVE`),
  UNIQUE KEY `XPKCESTADO_VALIDACION` (`EST_VALIDACION_CVE`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cestado_validacion`
--

LOCK TABLES `cestado_validacion` WRITE;
/*!40000 ALTER TABLE `cestado_validacion` DISABLE KEYS */;
INSERT INTO `cestado_validacion` VALUES (1,'Inicio evaluación'),(2,'Incompleta'),(3,'Completa'),(4,'Por validar nivel 1'),(5,'En revisión nivel 1'),(6,'En correción por doc'),(7,'Validado nivel 1'),(8,'Por validar nivel 2'),(9,'En revisión nivel 2'),(10,'En corrección por ni'),(11,'Validado nivel 2'),(12,'Por validar por prof'),(13,'En revisión por prof'),(14,'En corrección por ni'),(15,'Validado');
/*!40000 ALTER TABLE `cestado_validacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cinconformidad`
--

DROP TABLE IF EXISTS `cinconformidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cinconformidad` (
  `FCH_INCONFORMIDAD` date DEFAULT NULL,
  `MSG_INCONFORMIDAD` varchar(20) DEFAULT NULL,
  `INCONFORMIDAD_CVE` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`INCONFORMIDAD_CVE`),
  UNIQUE KEY `XPKINCONFORMIDAD` (`INCONFORMIDAD_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cinconformidad`
--

LOCK TABLES `cinconformidad` WRITE;
/*!40000 ALTER TABLE `cinconformidad` DISABLE KEYS */;
/*!40000 ALTER TABLE `cinconformidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cinstitucion_avala`
--

DROP TABLE IF EXISTS `cinstitucion_avala`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cinstitucion_avala` (
  `INS_AVALA_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `IA_NOMBRE` varchar(70) NOT NULL,
  `IA_TIPO` varchar(20) NOT NULL,
  PRIMARY KEY (`INS_AVALA_CVE`),
  UNIQUE KEY `XPKCINSTITUCION_AVALA` (`INS_AVALA_CVE`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cinstitucion_avala`
--

LOCK TABLES `cinstitucion_avala` WRITE;
/*!40000 ALTER TABLE `cinstitucion_avala` DISABLE KEYS */;
INSERT INTO `cinstitucion_avala` VALUES (1,'Universidad Nacional Autónoma de México (UNAM)',''),(2,'Instituto Politécnico Nacional  (IPN)',''),(3,'Instituto Mexicano del Seguro Social (IMSS)',''),(4,'Secretaría de Educación Pública (SEP)',''),(5,'Universidad Autónoma de Guadalajara (UAG)',''),(6,'Colegio Nacional de Educación Profesional Técnica (CONALEP)','');
/*!40000 ALTER TABLE `cinstitucion_avala` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cita`
--

DROP TABLE IF EXISTS `cita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cita` (
  `CIT_TIPO_FUENTE` varchar(20) DEFAULT NULL,
  `CITA_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `CIT_TITULO` varchar(18) DEFAULT NULL,
  `CIT_ANIO` int(11) DEFAULT NULL,
  PRIMARY KEY (`CITA_CVE`),
  UNIQUE KEY `XPKCITA` (`CITA_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cita`
--

LOCK TABLES `cita` WRITE;
/*!40000 ALTER TABLE `cita` DISABLE KEYS */;
/*!40000 ALTER TABLE `cita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cita_tipo_articulo_revista`
--

DROP TABLE IF EXISTS `cita_tipo_articulo_revista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cita_tipo_articulo_revista` (
  `CITA_CVE` int(11) NOT NULL,
  `CTAR_MES` varchar(20) DEFAULT NULL,
  `CTAR_NOMBRE_REVISTA` varchar(20) DEFAULT NULL,
  `CTAR_VOLUMEN` varchar(20) DEFAULT NULL,
  `CTAR_NUMERO` int(11) DEFAULT NULL,
  `CTAR_CIUDAD` varchar(20) DEFAULT NULL,
  `CTAR_DIA` varchar(20) DEFAULT NULL,
  `CTAR_PAGINAS` int(11) DEFAULT NULL,
  `CTAR_EDITORIAL` char(18) DEFAULT NULL,
  `CTAR_TITULO_BREVE` varchar(20) DEFAULT NULL,
  `CTAR_NUMERO_ESATANDAR` varchar(20) DEFAULT NULL,
  `CTAR_COMENTARIO` mediumtext,
  `CTAR_SOPORTE` varchar(20) DEFAULT NULL,
  `CTAR_ANIO_CONSULTA` int(11) DEFAULT NULL,
  `CTAR_MES_CONSULTA` varchar(20) DEFAULT NULL,
  `CTAR_DIA_CONSULTA` varchar(20) DEFAULT NULL,
  `CTAR_URL` varchar(200) DEFAULT NULL,
  `CTAR_DOI` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`CITA_CVE`),
  UNIQUE KEY `XPKCITA_TIPO_ARTICULO_REVISTA` (`CITA_CVE`),
  UNIQUE KEY `XIF1CITA_TIPO_ARTICULO_REVISTA` (`CITA_CVE`),
  CONSTRAINT `cita_tipo_articulo_revista_ibfk_1` FOREIGN KEY (`CITA_CVE`) REFERENCES `cita` (`CITA_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cita_tipo_articulo_revista`
--

LOCK TABLES `cita_tipo_articulo_revista` WRITE;
/*!40000 ALTER TABLE `cita_tipo_articulo_revista` DISABLE KEYS */;
/*!40000 ALTER TABLE `cita_tipo_articulo_revista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cita_tipo_libro`
--

DROP TABLE IF EXISTS `cita_tipo_libro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cita_tipo_libro` (
  `CITA_CVE` int(11) NOT NULL,
  `CIT_TIP_LIB_CIUDAD` varchar(20) DEFAULT NULL,
  `CIT_TIP_LIB_EDITORIAL` varchar(20) DEFAULT NULL,
  `CIT_TIP_LIB_EDICION` varchar(20) DEFAULT NULL,
  `CIT_TIP_LIB_VOLUMEN` varchar(20) DEFAULT NULL,
  `CIT_TIP_LIB_NUMERO_VOLUMENES` int(11) DEFAULT NULL,
  `CIT_TIP_LIB_TRADUCTOR` varchar(20) DEFAULT NULL,
  `CIT_TIP_LIB_TITULO_BREVE` varchar(20) DEFAULT NULL,
  `CIT_TIP_LIB_NUMERO_ESTANDAR` int(11) DEFAULT NULL,
  `CIT_TIP_LIB_PAGINAS` int(11) DEFAULT NULL,
  `CIT_TIP_LIB_COMENTARIO` varchar(200) DEFAULT NULL,
  `CIT_TIP_LIB_SOPORTE` varchar(20) DEFAULT NULL,
  `CIT_TIP_LIB_ANIO_CONSULTA` int(11) DEFAULT NULL,
  `CIT_TIP_LIB_MES_CONSULTA` varchar(20) DEFAULT NULL,
  `CIT_TIP_LIB_DIA_CONSULTA` varchar(20) DEFAULT NULL,
  `CIT_TIP_LIB_URL` varchar(200) DEFAULT NULL,
  `CIT_TIP_LIB_DOI` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`CITA_CVE`),
  UNIQUE KEY `XPKCITA_TIPO_LIBRO` (`CITA_CVE`),
  UNIQUE KEY `XIF1CITA_TIPO_LIBRO` (`CITA_CVE`),
  CONSTRAINT `cita_tipo_libro_ibfk_1` FOREIGN KEY (`CITA_CVE`) REFERENCES `cita` (`CITA_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cita_tipo_libro`
--

LOCK TABLES `cita_tipo_libro` WRITE;
/*!40000 ALTER TABLE `cita_tipo_libro` DISABLE KEYS */;
/*!40000 ALTER TABLE `cita_tipo_libro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cita_tipo_seccion_libro`
--

DROP TABLE IF EXISTS `cita_tipo_seccion_libro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cita_tipo_seccion_libro` (
  `CITA_CVE` int(11) NOT NULL,
  `CIT_TIP_SEC_LIB_CIUDAD` varchar(20) DEFAULT NULL,
  `CIT_TIP_SEC_LIB_EDITORIAL` varchar(20) DEFAULT NULL,
  `CIT_TIP_SEC_LIB_TITULO_LIBRO` varchar(20) DEFAULT NULL,
  `CIT_TIP_SEC_LIB_PAGINAS` int(11) DEFAULT NULL,
  `ESTADO_CVE` int(11) DEFAULT NULL,
  `PAIS_CVE` int(11) DEFAULT NULL,
  `CIT_TIP_SEC_LIB_VOLUMEN` varchar(20) DEFAULT NULL,
  `CIT_TIP_SEC_LIB_NUM_VOLUMENES` int(11) DEFAULT NULL,
  `CIT_TIP_LIB_NUM_CAPITULO` int(11) DEFAULT NULL,
  `CIT_TIP_SEC_TITULO_BREVE` varchar(40) DEFAULT NULL,
  `CIT_TIP_SEC_LIB_NUM_ESTANDAR` int(11) DEFAULT NULL,
  `CIT_TIP_SEC_LIB_EDICION` varchar(20) DEFAULT NULL,
  `CIT_TIP_SEC_LIB_COMENTARIO` varchar(2000) DEFAULT NULL,
  `CIT_TIP_SEC_LIB_ANIO_CONSULTA` int(11) DEFAULT NULL,
  `CIT_TIP_SEC_LIB_MES_CONSULTA` varchar(20) DEFAULT NULL,
  `CIT_TIP_SEC_LIB_DIA_CONSULTA` varchar(20) DEFAULT NULL,
  `CIT_TIP_SEC_LIB_URL` varchar(500) DEFAULT NULL,
  `CIT_TIP_SEC_LIB_DOI` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`CITA_CVE`),
  UNIQUE KEY `XPKCITA_TIPO_SECCION_LIBRO` (`CITA_CVE`),
  UNIQUE KEY `XIF1CITA_TIPO_SECCION_LIBRO` (`CITA_CVE`),
  CONSTRAINT `cita_tipo_seccion_libro_ibfk_1` FOREIGN KEY (`CITA_CVE`) REFERENCES `cita` (`CITA_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cita_tipo_seccion_libro`
--

LOCK TABLES `cita_tipo_seccion_libro` WRITE;
/*!40000 ALTER TABLE `cita_tipo_seccion_libro` DISABLE KEYS */;
/*!40000 ALTER TABLE `cita_tipo_seccion_libro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cita_usuario`
--

DROP TABLE IF EXISTS `cita_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cita_usuario` (
  `CITA_USUARIO_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `CIT_USU_TIPO` varchar(20) DEFAULT NULL,
  `CIT_USU_APELLIDOS` varchar(20) DEFAULT NULL,
  `CIT_USU_NOMBRE` varchar(20) DEFAULT NULL,
  `CIT_USU_SEGUNDO_NOMBRE` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`CITA_USUARIO_CVE`),
  UNIQUE KEY `XPKCITA_USUARIO` (`CITA_USUARIO_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cita_usuario`
--

LOCK TABLES `cita_usuario` WRITE;
/*!40000 ALTER TABLE `cita_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `cita_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cita_usuario_relacion`
--

DROP TABLE IF EXISTS `cita_usuario_relacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cita_usuario_relacion` (
  `CITA_USUARIO_CVE` int(11) NOT NULL,
  `CITA_CVE` int(11) NOT NULL,
  PRIMARY KEY (`CITA_USUARIO_CVE`,`CITA_CVE`),
  UNIQUE KEY `XPKCITA_USUARIO_RELACION` (`CITA_USUARIO_CVE`,`CITA_CVE`),
  KEY `XIF1CITA_USUARIO_RELACION` (`CITA_USUARIO_CVE`),
  KEY `XIF2CITA_USUARIO_RELACION` (`CITA_CVE`),
  CONSTRAINT `cita_usuario_relacion_ibfk_1` FOREIGN KEY (`CITA_USUARIO_CVE`) REFERENCES `cita_usuario` (`CITA_USUARIO_CVE`),
  CONSTRAINT `cita_usuario_relacion_ibfk_2` FOREIGN KEY (`CITA_CVE`) REFERENCES `cita` (`CITA_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cita_usuario_relacion`
--

LOCK TABLES `cita_usuario_relacion` WRITE;
/*!40000 ALTER TABLE `cita_usuario_relacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `cita_usuario_relacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmateria`
--

DROP TABLE IF EXISTS `cmateria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmateria` (
  `MATERIA_CVE` int(11) NOT NULL,
  `MATERIA_NOMBRE` varchar(20) NOT NULL,
  PRIMARY KEY (`MATERIA_CVE`),
  UNIQUE KEY `XPKCMATERIA` (`MATERIA_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmateria`
--

LOCK TABLES `cmateria` WRITE;
/*!40000 ALTER TABLE `cmateria` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmateria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmaterial`
--

DROP TABLE IF EXISTS `cmaterial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmaterial` (
  `TIP_MATERIAL_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `TIP_MAT_NOMBRE` varchar(30) NOT NULL,
  PRIMARY KEY (`TIP_MATERIAL_CVE`),
  UNIQUE KEY `XPKCMATERIAL` (`TIP_MATERIAL_CVE`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmaterial`
--

LOCK TABLES `cmaterial` WRITE;
/*!40000 ALTER TABLE `cmaterial` DISABLE KEYS */;
INSERT INTO `cmaterial` VALUES (1,'Materia 11'),(2,'Materia 12'),(3,'Materia 13'),(4,'Materia 14'),(5,'Materia 15'),(6,'Materia 16');
/*!40000 ALTER TABLE `cmaterial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmedio_divulgacion`
--

DROP TABLE IF EXISTS `cmedio_divulgacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmedio_divulgacion` (
  `MED_DIVULGACION_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `MED_DIV_NOMBRE` varchar(35) NOT NULL,
  PRIMARY KEY (`MED_DIVULGACION_CVE`),
  UNIQUE KEY `XPKCMEDIO_DIVULGACION` (`MED_DIVULGACION_CVE`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmedio_divulgacion`
--

LOCK TABLES `cmedio_divulgacion` WRITE;
/*!40000 ALTER TABLE `cmedio_divulgacion` DISABLE KEYS */;
INSERT INTO `cmedio_divulgacion` VALUES (1,'Comprobante'),(2,'Foro'),(3,'Revista'),(4,'Libro');
/*!40000 ALTER TABLE `cmedio_divulgacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmodalidad`
--

DROP TABLE IF EXISTS `cmodalidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmodalidad` (
  `MODALIDAD_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `MOD_NOMBRE` varchar(30) NOT NULL,
  PRIMARY KEY (`MODALIDAD_CVE`),
  UNIQUE KEY `XPKCMODALIDAD` (`MODALIDAD_CVE`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmodalidad`
--

LOCK TABLES `cmodalidad` WRITE;
/*!40000 ALTER TABLE `cmodalidad` DISABLE KEYS */;
INSERT INTO `cmodalidad` VALUES (1,'Presencial'),(2,'A distancia'),(3,'Semipresencial(o mixta)');
/*!40000 ALTER TABLE `cmodalidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmodulo`
--

DROP TABLE IF EXISTS `cmodulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmodulo` (
  `MODULO_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `MODULO_NOMBRE` varchar(30) NOT NULL,
  PRIMARY KEY (`MODULO_CVE`),
  UNIQUE KEY `XPKCMODULO` (`MODULO_CVE`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmodulo`
--

LOCK TABLES `cmodulo` WRITE;
/*!40000 ALTER TABLE `cmodulo` DISABLE KEYS */;
INSERT INTO `cmodulo` VALUES (1,'Modulo1'),(2,'Modulo2'),(3,'Modulo3'),(4,'Modulo4'),(5,'Modulo5'),(6,'Modulo6');
/*!40000 ALTER TABLE `cmodulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmodulo_estado`
--

DROP TABLE IF EXISTS `cmodulo_estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmodulo_estado` (
  `MOD_EST_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `MOD_EST_NOMBRE` varchar(30) NOT NULL,
  PRIMARY KEY (`MOD_EST_CVE`),
  UNIQUE KEY `XPKCMODULO_ESTADO` (`MOD_EST_CVE`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmodulo_estado`
--

LOCK TABLES `cmodulo_estado` WRITE;
/*!40000 ALTER TABLE `cmodulo_estado` DISABLE KEYS */;
INSERT INTO `cmodulo_estado` VALUES (1,'Visible'),(2,'No visible');
/*!40000 ALTER TABLE `cmodulo_estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmotivo_becado`
--

DROP TABLE IF EXISTS `cmotivo_becado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmotivo_becado` (
  `MOTIVO_BECADO_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `MOT_BEC_NOMBRE` varchar(30) NOT NULL,
  PRIMARY KEY (`MOTIVO_BECADO_CVE`),
  UNIQUE KEY `XPKCMOTIVO_BECADO` (`MOTIVO_BECADO_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmotivo_becado`
--

LOCK TABLES `cmotivo_becado` WRITE;
/*!40000 ALTER TABLE `cmotivo_becado` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmotivo_becado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cnivel_academico`
--

DROP TABLE IF EXISTS `cnivel_academico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cnivel_academico` (
  `NIV_ACADEMICO_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `NIV_ACA_NOMBRE` varchar(20) NOT NULL,
  PRIMARY KEY (`NIV_ACADEMICO_CVE`),
  UNIQUE KEY `XPKCNIVEL_ACADEMICO` (`NIV_ACADEMICO_CVE`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cnivel_academico`
--

LOCK TABLES `cnivel_academico` WRITE;
/*!40000 ALTER TABLE `cnivel_academico` DISABLE KEYS */;
INSERT INTO `cnivel_academico` VALUES (1,'Nivel académico 1'),(2,'Nivel académico 2'),(3,'Nivel académico 3'),(4,'Nivel académico 4'),(5,'Nivel académico 5');
/*!40000 ALTER TABLE `cnivel_academico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comision_area`
--

DROP TABLE IF EXISTS `comision_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comision_area` (
  `COM_AREA_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `COM_ARE_NOMBRE` varchar(20) NOT NULL,
  PRIMARY KEY (`COM_AREA_CVE`),
  UNIQUE KEY `XPKCOMISION_AREA` (`COM_AREA_CVE`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comision_area`
--

LOCK TABLES `comision_area` WRITE;
/*!40000 ALTER TABLE `comision_area` DISABLE KEYS */;
INSERT INTO `comision_area` VALUES (1,'Comisión área 1'),(2,'Comisión área 2'),(3,'Comisión área 3'),(4,'Comisión área 4'),(5,'Comisión área 5');
/*!40000 ALTER TABLE `comision_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comprobante`
--

DROP TABLE IF EXISTS `comprobante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comprobante` (
  `COMPROBANTE_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `COM_NOMBRE` varchar(250) DEFAULT NULL,
  `TIPO_COMPROBANTE_CVE` int(11) DEFAULT NULL,
  PRIMARY KEY (`COMPROBANTE_CVE`),
  UNIQUE KEY `XPKCOMPROBANTE` (`COMPROBANTE_CVE`),
  KEY `XIF1COMPROBANTE` (`TIPO_COMPROBANTE_CVE`),
  CONSTRAINT `comprobante_ibfk_1` FOREIGN KEY (`TIPO_COMPROBANTE_CVE`) REFERENCES `ctipo_comprobante` (`TIPO_COMPROBANTE_CVE`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comprobante`
--

LOCK TABLES `comprobante` WRITE;
/*!40000 ALTER TABLE `comprobante` DISABLE KEYS */;
INSERT INTO `comprobante` VALUES (1,'Modelo de actividad ',3),(2,'Modelo de actividad ',3),(3,'Modelo de actividad ',1),(4,'Modelo de actividad ',1),(5,'SIPIMSS_v6.7_ModeloF',1),(6,'SIPIMSS_v6.7_ModeloF',3),(7,'SIPIMSS_v6.7_ModeloF',2),(8,'SIPIMSS_v6.7_ModeloF',2),(9,'SIPIMSS_v6.7_ModeloF',2),(10,'SIPIMSS_v6.7_ModeloF',2),(11,'SIPIMSS_v6.7_ModeloF',2),(12,'SIPIMSS_v6.7_ModeloF',2),(13,'SIPIMSS_v6.7_ModeloF',2),(14,'SIPIMSS_v6.7_ModeloF',2),(15,'SIPIMSS_v6.7_ModeloF',2),(16,'SIPIMSS_v6.7_ModeloF',2),(17,'SIPIMSS_v6.7_ModeloF',2),(18,'diagrama cursos.pdf',1),(19,'diagrama cursos.pdf',3),(20,'diagrama cursos.pdf',1),(21,'diagrama cursos.pdf',2),(22,'diagrama cursos.pdf',2),(23,'diagrama cursos.pdf',1),(24,'diagrama cursos.pdf',2),(25,'diagrama cursos.pdf',2),(26,'diagrama cursos.pdf',1),(27,'diagrama cursos.pdf',2),(28,'diagrama cursos.pdf',1),(29,'diagrama cursos.pdf',1),(30,'diagrama cursos.pdf',1),(31,'diagrama cursos.pdf',3),(32,'diagrama cursos.pdf',3),(33,'diagrama cursos.pdf',1),(34,'diagrama cursos.pdf',1),(35,'diagrama cursos.pdf',1),(36,'diagrama cursos.pdf',1),(37,'diagrama cursos.pdf',1),(38,'diagrama cursos.pdf',2),(39,'diagrama cursos.pdf',2),(40,'diagrama cursos.pdf',1),(41,'diagrama cursos.pdf',2),(42,'diagrama cursos.pdf',2),(43,'diagrama cursos.pdf',2),(44,'diagrama cursos.pdf',1),(45,'diagrama cursos.pdf',3),(46,'diagrama cursos.pdf',1),(47,'diagrama cursos.pdf',2),(48,'diagrama cursos.pdf',2),(49,'diagrama cursos.pdf',1),(50,'diagrama cursos.pdf',2),(51,'diagrama cursos.pdf',1),(52,'diagrama cursos.pdf',2),(53,'diagrama cursos.pdf',1),(54,'diagrama cursos.pdf',2),(55,'diagrama cursos.pdf',1),(56,'diagrama cursos.pdf',2),(57,'diagrama cursos.pdf',2),(58,'diagrama cursos.pdf',1),(59,'diagrama cursos.pdf',2),(60,'diagrama cursos.pdf',1),(61,'diagrama cursos.pdf',2),(62,'diagrama cursos.pdf',2),(63,'diagrama cursos.pdf',2),(64,'diagrama cursos.pdf',3),(65,'diagrama cursos.pdf',2),(66,'diagrama cursos.pdf',1),(67,'diagrama cursos.pdf',2),(68,'diagrama cursos.pdf',2),(69,'diagrama cursos.pdf',1),(70,'diagrama cursos.pdf',1),(71,'diagrama cursos.pdf',3),(72,'diagrama cursos.pdf',2),(73,'diagrama cursos.pdf',1),(74,'diagrama cursos.pdf',2),(75,'diagrama cursos.pdf',1),(76,'diagrama cursos.pdf',3),(77,'diagrama cursos.pdf',2),(78,'diagrama cursos.pdf',2),(79,'diagrama cursos.pdf',3),(80,'diagrama cursos.pdf',2),(81,'diagrama cursos.pdf',3),(82,'diagrama cursos.pdf',1),(83,'SIPIMSS_v6.7_ModeloF',2),(84,'Modelo de actividad ',3),(88,'Modelo de actividad ',3),(109,'investigacion_10004696_2_1_2_1007',2),(110,'investigacion_10004696_1_47_2_428',2),(111,'investigacion_10004696_1_49_1_1117',1),(112,'investigacion_10004696_1_50_1_1691',1),(113,'investigacion_10004696_1_51_1_110',1),(114,'investigacion_10004696_1_52_1_1446',1),(115,'investigacion_10004696_2_1_2_1007',2),(116,'investigacion_10004696_2_1_2_1007',2),(117,'investigacion_10004696_1_53_1_365',1);
/*!40000 ALTER TABLE `comprobante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conv_periodo_horas`
--

DROP TABLE IF EXISTS `conv_periodo_horas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conv_periodo_horas` (
  `EMP_ESP_MEDICA_CVE` int(11) DEFAULT NULL,
  `EMP_ACT_DOCENTE_CVE` int(11) DEFAULT NULL,
  `EMP_FORMACION_PROFESIONAL_CVE` int(11) DEFAULT NULL,
  `EDIS_CVE` int(11) DEFAULT NULL,
  `EAID_CVE` int(11) DEFAULT NULL,
  `EMP_COMISION_CVE` int(11) DEFAULT NULL,
  `FPCS_CVE` int(11) DEFAULT NULL,
  `TAB_CONV_PER_HORAS` int(11) DEFAULT NULL,
  `TAB_CON_PER_HORAS_CVE` int(11) DEFAULT NULL,
  KEY `XIF9TABULADOR_CONV_PERIODO_HORAS` (`TAB_CON_PER_HORAS_CVE`),
  KEY `XIF10TABULADOR_CONV_PERIODO_HORAS` (`EMP_ESP_MEDICA_CVE`),
  KEY `XIF11TABULADOR_CONV_PERIODO_HORAS` (`EMP_ACT_DOCENTE_CVE`),
  KEY `XIF12TABULADOR_CONV_PERIODO_HORAS` (`EMP_FORMACION_PROFESIONAL_CVE`),
  KEY `XIF13TABULADOR_CONV_PERIODO_HORAS` (`EAID_CVE`),
  KEY `XIF14TABULADOR_CONV_PERIODO_HORAS` (`EMP_COMISION_CVE`),
  KEY `XIF16TABULADOR_CONV_PERIODO_HORAS` (`FPCS_CVE`),
  CONSTRAINT `conv_periodo_horas_ibfk_1` FOREIGN KEY (`TAB_CON_PER_HORAS_CVE`) REFERENCES `tabulador_conv_per_horas` (`TAB_CON_PER_HORAS_CVE`),
  CONSTRAINT `conv_periodo_horas_ibfk_2` FOREIGN KEY (`EMP_ESP_MEDICA_CVE`) REFERENCES `emp_esp_medica` (`EMP_ESP_MEDICA_CVE`),
  CONSTRAINT `conv_periodo_horas_ibfk_3` FOREIGN KEY (`EMP_ACT_DOCENTE_CVE`) REFERENCES `emp_actividad_docente` (`EMP_ACT_DOCENTE_CVE`),
  CONSTRAINT `conv_periodo_horas_ibfk_4` FOREIGN KEY (`EMP_FORMACION_PROFESIONAL_CVE`) REFERENCES `emp_formacion_profesional` (`EMP_FORMACION_PROFESIONAL_CVE`),
  CONSTRAINT `conv_periodo_horas_ibfk_5` FOREIGN KEY (`EAID_CVE`) REFERENCES `emp_act_inv_edu` (`EAID_CVE`),
  CONSTRAINT `conv_periodo_horas_ibfk_6` FOREIGN KEY (`EMP_COMISION_CVE`) REFERENCES `emp_comision` (`EMP_COMISION_CVE`),
  CONSTRAINT `conv_periodo_horas_ibfk_7` FOREIGN KEY (`FPCS_CVE`) REFERENCES `emp_for_personal_continua_salud` (`FPCS_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conv_periodo_horas`
--

LOCK TABLES `conv_periodo_horas` WRITE;
/*!40000 ALTER TABLE `conv_periodo_horas` DISABLE KEYS */;
/*!40000 ALTER TABLE `conv_periodo_horas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cparametros`
--

DROP TABLE IF EXISTS `cparametros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cparametros` (
  `PERAM_PERIODO_INCONFORMIDAD` int(11) DEFAULT NULL,
  `PARAM_VIGENCIA` int(11) DEFAULT NULL,
  `PARAM_RE_EVALUACION` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cparametros`
--

LOCK TABLES `cparametros` WRITE;
/*!40000 ALTER TABLE `cparametros` DISABLE KEYS */;
/*!40000 ALTER TABLE `cparametros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cpresupuestal`
--

DROP TABLE IF EXISTS `cpresupuestal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cpresupuestal` (
  `PRESUPUESTAL_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `PRE_NOMBRE` varchar(20) NOT NULL,
  PRIMARY KEY (`PRESUPUESTAL_CVE`),
  UNIQUE KEY `XPKCPRESUPUESTAL` (`PRESUPUESTAL_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cpresupuestal`
--

LOCK TABLES `cpresupuestal` WRITE;
/*!40000 ALTER TABLE `cpresupuestal` DISABLE KEYS */;
/*!40000 ALTER TABLE `cpresupuestal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crol`
--

DROP TABLE IF EXISTS `crol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crol` (
  `ROL_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `ROL_NOMBRE` varchar(20) DEFAULT NULL,
  `PROYECTO_CVE` int(11) DEFAULT NULL,
  PRIMARY KEY (`ROL_CVE`),
  UNIQUE KEY `XPKCROL` (`ROL_CVE`),
  KEY `XIF1CROL` (`PROYECTO_CVE`),
  CONSTRAINT `crol_ibfk_1` FOREIGN KEY (`PROYECTO_CVE`) REFERENCES `proyecto` (`PROYECTO_CVE`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crol`
--

LOCK TABLES `crol` WRITE;
/*!40000 ALTER TABLE `crol` DISABLE KEYS */;
INSERT INTO `crol` VALUES (1,'Docente',NULL),(2,'Validador N1',NULL),(3,'Validador N2',NULL),(4,'Administrador',NULL),(5,'Super-Administrador',NULL),(6,'Presidente',NULL),(7,'Secretario',NULL),(8,'Vocal',NULL),(9,'Coordinador',NULL),(10,'Jefe de área_bono',NULL),(11,'Titular',NULL),(12,'Mesa de ayuda',NULL),(13,'Jefe de área_eva',NULL),(14,'Profesionalización',NULL);
/*!40000 ALTER TABLE `crol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crol_area`
--

DROP TABLE IF EXISTS `crol_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crol_area` (
  `ROL_DESEMPENIA_CVE` int(11) DEFAULT NULL,
  `ROL_AREA_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `ROL_AREA_DESC` varchar(40) NOT NULL,
  PRIMARY KEY (`ROL_AREA_CVE`),
  UNIQUE KEY `XPKCROL_AREA` (`ROL_AREA_CVE`),
  KEY `XIF1CROL_AREA` (`ROL_DESEMPENIA_CVE`),
  CONSTRAINT `crol_area_ibfk_1` FOREIGN KEY (`ROL_DESEMPENIA_CVE`) REFERENCES `crol_desempenia` (`ROL_DESEMPENIA_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crol_area`
--

LOCK TABLES `crol_area` WRITE;
/*!40000 ALTER TABLE `crol_area` DISABLE KEYS */;
/*!40000 ALTER TABLE `crol_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crol_desempenia`
--

DROP TABLE IF EXISTS `crol_desempenia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crol_desempenia` (
  `ROL_DESEMPENIA` varchar(35) NOT NULL,
  `ROL_DESEMPENIA_CVE` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ROL_DESEMPENIA_CVE`),
  UNIQUE KEY `XPKCROL` (`ROL_DESEMPENIA_CVE`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crol_desempenia`
--

LOCK TABLES `crol_desempenia` WRITE;
/*!40000 ALTER TABLE `crol_desempenia` DISABLE KEYS */;
INSERT INTO `crol_desempenia` VALUES ('Titular',1),('Adjunto',2),('Ayudante',3),('Instructor de práctica clínica',4);
/*!40000 ALTER TABLE `crol_desempenia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crol_evaluador`
--

DROP TABLE IF EXISTS `crol_evaluador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crol_evaluador` (
  `ROL_EVALUADOR_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `CROL_EVALUADOR_NOMBRE` varchar(20) NOT NULL,
  `ROL_EVA_FIRMA_RUTA` varchar(300) NOT NULL,
  PRIMARY KEY (`ROL_EVALUADOR_CVE`),
  UNIQUE KEY `XPKCROL_EVALUADOR` (`ROL_EVALUADOR_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crol_evaluador`
--

LOCK TABLES `crol_evaluador` WRITE;
/*!40000 ALTER TABLE `crol_evaluador` DISABLE KEYS */;
/*!40000 ALTER TABLE `crol_evaluador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crol_validador`
--

DROP TABLE IF EXISTS `crol_validador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crol_validador` (
  `ROL_VALIDADOR_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `ROL_VAL_NOMBRE` varchar(20) NOT NULL,
  PRIMARY KEY (`ROL_VALIDADOR_CVE`),
  UNIQUE KEY `XPKCROL_VALIDADOR` (`ROL_VALIDADOR_CVE`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crol_validador`
--

LOCK TABLES `crol_validador` WRITE;
/*!40000 ALTER TABLE `crol_validador` DISABLE KEYS */;
INSERT INTO `crol_validador` VALUES (1,'Validador N1'),(2,'Validador N2');
/*!40000 ALTER TABLE `crol_validador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cseccion`
--

DROP TABLE IF EXISTS `cseccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cseccion` (
  `SECCION_CVE` int(11) NOT NULL,
  `SECCION_DES` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`SECCION_CVE`),
  UNIQUE KEY `XPKCSECCION` (`SECCION_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cseccion`
--

LOCK TABLES `cseccion` WRITE;
/*!40000 ALTER TABLE `cseccion` DISABLE KEYS */;
/*!40000 ALTER TABLE `cseccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csubtipo_formacion_profesional`
--

DROP TABLE IF EXISTS `csubtipo_formacion_profesional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csubtipo_formacion_profesional` (
  `SUB_FOR_PRO_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `SUB_FOR_PRO_NOMBRE` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`SUB_FOR_PRO_CVE`),
  UNIQUE KEY `XPKCSUBTIPO_ACTIVIDAD_DOCENTE` (`SUB_FOR_PRO_CVE`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csubtipo_formacion_profesional`
--

LOCK TABLES `csubtipo_formacion_profesional` WRITE;
/*!40000 ALTER TABLE `csubtipo_formacion_profesional` DISABLE KEYS */;
INSERT INTO `csubtipo_formacion_profesional` VALUES (1,'sub_tipo_formacion_1'),(2,'sub_tipo_formacion_2');
/*!40000 ALTER TABLE `csubtipo_formacion_profesional` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csubtipo_formacion_salud`
--

DROP TABLE IF EXISTS `csubtipo_formacion_salud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csubtipo_formacion_salud` (
  `SUBTIP_NOMBRE` varchar(20) NOT NULL,
  `TIP_FORM_SALUD_CVE` int(11) DEFAULT NULL,
  `CSUBTIP_FORM_SALUD_CVE` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`CSUBTIP_FORM_SALUD_CVE`),
  UNIQUE KEY `XPKCSUBTIPO_ACTIVIDAD_DOCENTE` (`CSUBTIP_FORM_SALUD_CVE`),
  KEY `XIF1CSUBTIPO_ACTIVIDAD_DOCENTE` (`TIP_FORM_SALUD_CVE`),
  CONSTRAINT `csubtipo_formacion_salud_ibfk_1` FOREIGN KEY (`TIP_FORM_SALUD_CVE`) REFERENCES `ctipo_formacion_salud` (`TIP_FORM_SALUD_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csubtipo_formacion_salud`
--

LOCK TABLES `csubtipo_formacion_salud` WRITE;
/*!40000 ALTER TABLE `csubtipo_formacion_salud` DISABLE KEYS */;
/*!40000 ALTER TABLE `csubtipo_formacion_salud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctematica`
--

DROP TABLE IF EXISTS `ctematica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctematica` (
  `TEMATICA_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `TEM_NOMBRE` varchar(30) NOT NULL,
  PRIMARY KEY (`TEMATICA_CVE`),
  UNIQUE KEY `XPKCTEMATICA` (`TEMATICA_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctematica`
--

LOCK TABLES `ctematica` WRITE;
/*!40000 ALTER TABLE `ctematica` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctematica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctipo_actividad_docente`
--

DROP TABLE IF EXISTS `ctipo_actividad_docente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctipo_actividad_docente` (
  `TIP_ACT_DOC_NOMBRE` varchar(50) NOT NULL,
  `TIP_ACT_DOC_CVE` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`TIP_ACT_DOC_CVE`),
  UNIQUE KEY `XPKCTIPO_ACTIVIDAD_DOCENTE` (`TIP_ACT_DOC_CVE`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctipo_actividad_docente`
--

LOCK TABLES `ctipo_actividad_docente` WRITE;
/*!40000 ALTER TABLE `ctipo_actividad_docente` DISABLE KEYS */;
INSERT INTO `ctipo_actividad_docente` VALUES ('Ciclos Clínicos',1),('Internado Médico',2),('Servicio Social',3),('Licenciatura',4),('Especialidad Médica',5),('Maestría',6),('Doctorado',7),('Técnico',8),('Postécnico',9),('Educación continua',10),('Directivos para la salud',11),('Educación / Formación de Profesores',12),('Formacionde Profesoresen Investigación',13),('Educacióna Distancia',14),('Investigación educativa',15),('Investigación clínica',16);
/*!40000 ALTER TABLE `ctipo_actividad_docente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctipo_comision`
--

DROP TABLE IF EXISTS `ctipo_comision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctipo_comision` (
  `TIP_COMISION_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `TIP_COM_NOMBRE` varchar(20) NOT NULL,
  PRIMARY KEY (`TIP_COMISION_CVE`),
  UNIQUE KEY `XPKCTIPO_COMISION` (`TIP_COMISION_CVE`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctipo_comision`
--

LOCK TABLES `ctipo_comision` WRITE;
/*!40000 ALTER TABLE `ctipo_comision` DISABLE KEYS */;
INSERT INTO `ctipo_comision` VALUES (1,'Direccion de tesis'),(2,'Comisión laboral');
/*!40000 ALTER TABLE `ctipo_comision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctipo_comprobante`
--

DROP TABLE IF EXISTS `ctipo_comprobante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctipo_comprobante` (
  `TIPO_COMPROBANTE_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `TIP_COM_NOMBRE` varchar(20) NOT NULL,
  PRIMARY KEY (`TIPO_COMPROBANTE_CVE`),
  UNIQUE KEY `XPKCTIPO_COMPROBANTE` (`TIPO_COMPROBANTE_CVE`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctipo_comprobante`
--

LOCK TABLES `ctipo_comprobante` WRITE;
/*!40000 ALTER TABLE `ctipo_comprobante` DISABLE KEYS */;
INSERT INTO `ctipo_comprobante` VALUES (1,'Cédula'),(2,'Diploma'),(3,'Certificado');
/*!40000 ALTER TABLE `ctipo_comprobante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctipo_contacto`
--

DROP TABLE IF EXISTS `ctipo_contacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctipo_contacto` (
  `TIP_CON_CVE` int(11) NOT NULL,
  `TIP_CON_DES` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`TIP_CON_CVE`),
  UNIQUE KEY `XPKCTIPO_CONTACTO` (`TIP_CON_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctipo_contacto`
--

LOCK TABLES `ctipo_contacto` WRITE;
/*!40000 ALTER TABLE `ctipo_contacto` DISABLE KEYS */;
INSERT INTO `ctipo_contacto` VALUES (1,'Teléfono particular'),(2,'Teléfono laboral'),(3,'Correo electrónico'),(4,'skype');
/*!40000 ALTER TABLE `ctipo_contacto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctipo_contratacion`
--

DROP TABLE IF EXISTS `ctipo_contratacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctipo_contratacion` (
  `TIP_CON_NOMBRE` varchar(30) NOT NULL,
  `TIP_CONTRATACION_CVE` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`TIP_CONTRATACION_CVE`),
  UNIQUE KEY `XPKCTIPO_CONTRATACION` (`TIP_CONTRATACION_CVE`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctipo_contratacion`
--

LOCK TABLES `ctipo_contratacion` WRITE;
/*!40000 ALTER TABLE `ctipo_contratacion` DISABLE KEYS */;
INSERT INTO `ctipo_contratacion` VALUES ('Honorarios',1),('Asimilados',2),('Sindicalizado',3);
/*!40000 ALTER TABLE `ctipo_contratacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctipo_curso`
--

DROP TABLE IF EXISTS `ctipo_curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctipo_curso` (
  `TIP_CURSO_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `TIP_CUR_NOMBRE` varchar(40) NOT NULL,
  PRIMARY KEY (`TIP_CURSO_CVE`),
  UNIQUE KEY `XPKCTIPO_CURSO` (`TIP_CURSO_CVE`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctipo_curso`
--

LOCK TABLES `ctipo_curso` WRITE;
/*!40000 ALTER TABLE `ctipo_curso` DISABLE KEYS */;
INSERT INTO `ctipo_curso` VALUES (1,'Curso'),(2,'Diplomado'),(3,'Maestría'),(4,'Especialidad en el área de educación'),(5,'Doctorado'),(6,'Posdoctorado'),(7,'Seminario');
/*!40000 ALTER TABLE `ctipo_curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctipo_especialidad`
--

DROP TABLE IF EXISTS `ctipo_especialidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctipo_especialidad` (
  `TIP_ESP_MEDICA_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `TIP_ESP_MED_NOMBRE` varchar(70) NOT NULL,
  PRIMARY KEY (`TIP_ESP_MEDICA_CVE`),
  UNIQUE KEY `XPKCTIPO_ESPECIALIDAD` (`TIP_ESP_MEDICA_CVE`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctipo_especialidad`
--

LOCK TABLES `ctipo_especialidad` WRITE;
/*!40000 ALTER TABLE `ctipo_especialidad` DISABLE KEYS */;
INSERT INTO `ctipo_especialidad` VALUES (1,'Alergologia'),(2,'Algologia'),(3,'Anatomia Patologica'),(4,'Anestesiologia'),(5,'Cardiologia'),(6,'Cardiologia Pediatrica'),(7,'Cirugia Cardiotoracica'),(8,'Cirugia Cardiovascular'),(9,'Cirugia General'),(10,'Cirugia Oncologica'),(11,'Cirugia Pediatrica'),(12,'Cirugia Plastica'),(13,'Dermatologia'),(14,'Endocrinologia'),(15,'Endocrinologia Pediatrica'),(16,'Epidemiologia'),(17,'Gastroenterologia'),(18,'Gastroenterologia Pediatrica'),(19,'Genetica'),(20,'Geriatria'),(21,'Ginecologia y Obstetricia'),(22,'Hematologia'),(23,'Hematologia Pediatrica'),(24,'Infectologia'),(25,'Intensivista'),(26,'Medicina del Enfermo en Estado Critico'),(27,'Medicina del Trabajo'),(28,'Medicina Familiar'),(29,'Medicina Fisica y de Rehabilitacion'),(30,'Medicina Interna'),(31,'Medicina Nuclear'),(32,'Nefrologia'),(33,'Nefrologia Pediatrica'),(34,'Neonatologia'),(35,'Neumologia'),(36,'Neurologia'),(37,'Neurologia Pediatrica'),(38,'Oftalmologia'),(39,'Oftalmologia Pediatrica'),(40,'Oncologia'),(41,'Oncologia Pediatrica'),(42,'Ortopedia y Traumatologia'),(43,'Otorrinolaringologia'),(44,'Otorrinolaringologia Pediatrica'),(45,'Patologia'),(46,'Pediatria'),(47,'Psiquiatria'),(48,'Radiologia'),(49,'Reumatologia'),(50,'Reumatologia Pediatrica'),(51,'Toxicologia'),(52,'Traumatologia'),(53,'Traumatologia Pediatrica'),(54,'Urgenciologia'),(55,'Urologia'),(56,'Urologia Pediatrica'),(57,'Cirugía para los Servicios Rurales de Salud'),(58,'Medicina del Niño y del Adulto para los Servicios Rurales de Salud'),(59,'Anestesiología para los Servicios Rurales de Salud'),(60,'Ginecología para los Servicios Rurales de Salud');
/*!40000 ALTER TABLE `ctipo_especialidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctipo_estudio`
--

DROP TABLE IF EXISTS `ctipo_estudio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctipo_estudio` (
  `TIP_ESTUDIO_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `TIP_EST_NOMBRE` varchar(40) NOT NULL,
  PRIMARY KEY (`TIP_ESTUDIO_CVE`),
  UNIQUE KEY `XPKCTIPO_ESTUDIO` (`TIP_ESTUDIO_CVE`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctipo_estudio`
--

LOCK TABLES `ctipo_estudio` WRITE;
/*!40000 ALTER TABLE `ctipo_estudio` DISABLE KEYS */;
INSERT INTO `ctipo_estudio` VALUES (1,'Estudio 1'),(2,'Estudio 2'),(3,'Estudio 3');
/*!40000 ALTER TABLE `ctipo_estudio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctipo_formacion_profesional`
--

DROP TABLE IF EXISTS `ctipo_formacion_profesional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctipo_formacion_profesional` (
  `TIP_FOR_PROF_CVE` int(11) NOT NULL,
  `TIP_FOR_PRO_NOMBRE` varchar(30) NOT NULL,
  `SUB_FOR_PRO_CVE` int(11) DEFAULT NULL,
  PRIMARY KEY (`TIP_FOR_PROF_CVE`),
  UNIQUE KEY `XPKCTIPO_FORMACION_PROFESIONAL` (`TIP_FOR_PROF_CVE`),
  KEY `XIF1CTIPO_FORMACION_PROFESIONAL` (`SUB_FOR_PRO_CVE`),
  CONSTRAINT `ctipo_formacion_profesional_ibfk_1` FOREIGN KEY (`SUB_FOR_PRO_CVE`) REFERENCES `csubtipo_formacion_profesional` (`SUB_FOR_PRO_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctipo_formacion_profesional`
--

LOCK TABLES `ctipo_formacion_profesional` WRITE;
/*!40000 ALTER TABLE `ctipo_formacion_profesional` DISABLE KEYS */;
INSERT INTO `ctipo_formacion_profesional` VALUES (1,'Formación docente inicial',1),(2,'Formación docente continua',2);
/*!40000 ALTER TABLE `ctipo_formacion_profesional` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctipo_formacion_salud`
--

DROP TABLE IF EXISTS `ctipo_formacion_salud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctipo_formacion_salud` (
  `TIP_FORM_SALUD_NOMBRE` varchar(50) NOT NULL,
  `TIP_FORM_SALUD_CVE` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`TIP_FORM_SALUD_CVE`),
  UNIQUE KEY `XPKCTIPO_ACTIVIDAD_DOCENTE` (`TIP_FORM_SALUD_CVE`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctipo_formacion_salud`
--

LOCK TABLES `ctipo_formacion_salud` WRITE;
/*!40000 ALTER TABLE `ctipo_formacion_salud` DISABLE KEYS */;
INSERT INTO `ctipo_formacion_salud` VALUES ('Curso técnico realizado IMSS/Otros',1),('Carrera técnica',2),('Postécnico',3),('Licenciatura',4),('Residencia médica',5),('Especialidad',6),('Investigación clínica ',7),('Maestría (la de mayor trascendencia)',8),('Doctorado',9),('Posdoctorado',10);
/*!40000 ALTER TABLE `ctipo_formacion_salud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctipo_licenciatura`
--

DROP TABLE IF EXISTS `ctipo_licenciatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctipo_licenciatura` (
  `TIP_LIC_NOMBRE` varchar(30) NOT NULL,
  `TIP_LICENCIATURA_CVE` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`TIP_LICENCIATURA_CVE`),
  UNIQUE KEY `XPKCTIPO_LICENCIATURA` (`TIP_LICENCIATURA_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctipo_licenciatura`
--

LOCK TABLES `ctipo_licenciatura` WRITE;
/*!40000 ALTER TABLE `ctipo_licenciatura` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctipo_licenciatura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctipo_material`
--

DROP TABLE IF EXISTS `ctipo_material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctipo_material` (
  `TIP_MAT_NOMBRE` varchar(100) NOT NULL,
  `TIP_MATERIAL_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `TIP_MAT_TIPO` varchar(100) NOT NULL,
  PRIMARY KEY (`TIP_MATERIAL_CVE`),
  UNIQUE KEY `XPKCTIPO_MATERIAL` (`TIP_MATERIAL_CVE`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctipo_material`
--

LOCK TABLES `ctipo_material` WRITE;
/*!40000 ALTER TABLE `ctipo_material` DISABLE KEYS */;
INSERT INTO `ctipo_material` VALUES ('Antologías o manuales relativos a la educación',1,'1'),('Material escrito, de audio, de video',2,'2'),('Guión narrativo por unidad didáctica',3,'3'),('Objeto de aprendizaje',4,'4'),('Recurso Web',5,'5');
/*!40000 ALTER TABLE `ctipo_material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctipo_participacion`
--

DROP TABLE IF EXISTS `ctipo_participacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctipo_participacion` (
  `TIP_PARTICIPACION_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `TIP_PAR_NOMBRE` varchar(20) NOT NULL,
  PRIMARY KEY (`TIP_PARTICIPACION_CVE`),
  UNIQUE KEY `XPKCTIPO_PARTICIPACION` (`TIP_PARTICIPACION_CVE`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctipo_participacion`
--

LOCK TABLES `ctipo_participacion` WRITE;
/*!40000 ALTER TABLE `ctipo_participacion` DISABLE KEYS */;
INSERT INTO `ctipo_participacion` VALUES (1,'Autor'),(2,'Coautor');
/*!40000 ALTER TABLE `ctipo_participacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctipo_unidad_adscripcion`
--

DROP TABLE IF EXISTS `ctipo_unidad_adscripcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctipo_unidad_adscripcion` (
  `TIPO_UNIDAD_ADSCRIPCION_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `DESCRIPCION_TIPO_UNIDAD` varchar(30) NOT NULL,
  PRIMARY KEY (`TIPO_UNIDAD_ADSCRIPCION_CVE`),
  UNIQUE KEY `XPKCTIPO_UNIDAD_ADSCRIPCION` (`TIPO_UNIDAD_ADSCRIPCION_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctipo_unidad_adscripcion`
--

LOCK TABLES `ctipo_unidad_adscripcion` WRITE;
/*!40000 ALTER TABLE `ctipo_unidad_adscripcion` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctipo_unidad_adscripcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cunidad`
--

DROP TABLE IF EXISTS `cunidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cunidad` (
  `UNIDAD_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `DELEGACION_CVE` char(2) DEFAULT NULL,
  `TIPO_UNIDAD_ADSCRIPCION_CVE` int(11) DEFAULT NULL,
  PRIMARY KEY (`UNIDAD_CVE`),
  UNIQUE KEY `XPKCUNIDAD` (`UNIDAD_CVE`),
  KEY `XIF1CUNIDAD` (`DELEGACION_CVE`),
  KEY `XIF3CUNIDAD_ADS` (`TIPO_UNIDAD_ADSCRIPCION_CVE`),
  CONSTRAINT `cunidad_cufk` FOREIGN KEY (`TIPO_UNIDAD_ADSCRIPCION_CVE`) REFERENCES `ctipo_unidad_adscripcion` (`TIPO_UNIDAD_ADSCRIPCION_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cunidad`
--

LOCK TABLES `cunidad` WRITE;
/*!40000 ALTER TABLE `cunidad` DISABLE KEYS */;
/*!40000 ALTER TABLE `cunidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cvalidacion_curso_estado`
--

DROP TABLE IF EXISTS `cvalidacion_curso_estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cvalidacion_curso_estado` (
  `VAL_CUR_EST_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `VAl_CUR_EST_NOMBRE` varchar(20) NOT NULL,
  PRIMARY KEY (`VAL_CUR_EST_CVE`),
  UNIQUE KEY `XPKCVALIDACION_CURSO_ESTADO` (`VAL_CUR_EST_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cvalidacion_curso_estado`
--

LOCK TABLES `cvalidacion_curso_estado` WRITE;
/*!40000 ALTER TABLE `cvalidacion_curso_estado` DISABLE KEYS */;
/*!40000 ALTER TABLE `cvalidacion_curso_estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cvalidacion_estado`
--

DROP TABLE IF EXISTS `cvalidacion_estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cvalidacion_estado` (
  `VAL_ESTADO_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `VAL_EST_NOMBRE` char(18) NOT NULL,
  PRIMARY KEY (`VAL_ESTADO_CVE`),
  UNIQUE KEY `XPKCVALIDACION_ESTADO` (`VAL_ESTADO_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cvalidacion_estado`
--

LOCK TABLES `cvalidacion_estado` WRITE;
/*!40000 ALTER TABLE `cvalidacion_estado` DISABLE KEYS */;
/*!40000 ALTER TABLE `cvalidacion_estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dictamen`
--

DROP TABLE IF EXISTS `dictamen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dictamen` (
  `MSG_INCONFORMIDAD` varchar(200) DEFAULT NULL,
  `FCH_DICTAMEN` date DEFAULT NULL,
  `FCH_VIGENCIA_INICIO` date DEFAULT NULL,
  `FCH_VIGENCIA_FIN` date DEFAULT NULL,
  `FCH_INCONFOR_FIN` date DEFAULT NULL,
  `CATEGORIA_CVE` int(11) DEFAULT NULL,
  `ESTADO_DICTAMEN_CVE` int(11) DEFAULT NULL,
  `EMPLEADO_CVE` int(11) NOT NULL,
  `DICTAMEN_CVE` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`DICTAMEN_CVE`),
  KEY `XIF1DICTAMEN` (`CATEGORIA_CVE`),
  KEY `XIF2DICTAMEN` (`ESTADO_DICTAMEN_CVE`),
  KEY `XIF20DICTAMEN` (`EMPLEADO_CVE`),
  CONSTRAINT `dictamen_empleado_tpdfk` FOREIGN KEY (`EMPLEADO_CVE`) REFERENCES `empleado` (`EMPLEADO_CVE`),
  CONSTRAINT `dictamen_ibfk_1` FOREIGN KEY (`CATEGORIA_CVE`) REFERENCES `ccategoria_dictamen` (`CATEGORIA_CVE`),
  CONSTRAINT `dictamen_ibfk_2` FOREIGN KEY (`ESTADO_DICTAMEN_CVE`) REFERENCES `cestado_dictamen` (`ESTADO_DICTAMEN_CVE`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dictamen`
--

LOCK TABLES `dictamen` WRITE;
/*!40000 ALTER TABLE `dictamen` DISABLE KEYS */;
INSERT INTO `dictamen` VALUES (NULL,'2015-07-15','2015-07-15','2017-07-16',NULL,1,NULL,12,1),(NULL,'2013-03-01','2013-03-01','2014-02-28',NULL,1,NULL,12,2);
/*!40000 ALTER TABLE `dictamen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_act_inv_edu`
--

DROP TABLE IF EXISTS `emp_act_inv_edu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_act_inv_edu` (
  `MED_DIVULGACION_CVE` int(11) DEFAULT NULL,
  `EAIE_FCH_INICIO` date DEFAULT NULL,
  `EAIE_FCH_FIN` date DEFAULT NULL,
  `EAIE_PUB_CITA` mediumtext,
  `COMPROBANTE_CVE` int(11) DEFAULT NULL,
  `EAIE_FOLIO_ACEPTACION` varchar(20) DEFAULT NULL,
  `EMPLEADO_CVE` int(11) DEFAULT NULL,
  `TIP_PARTICIPACION_CVE` int(11) DEFAULT NULL,
  `EIAE_DURACION` varchar(20) DEFAULT NULL,
  `EIAE_NOMBRE_INV` varchar(40) NOT NULL,
  `EAID_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `TIP_ESTUDIO_CVE` int(11) DEFAULT NULL,
  `TIP_ACT_DOC_CVE` int(11) NOT NULL,
  `FECHA_INSERSION` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`EAID_CVE`),
  UNIQUE KEY `XPKEMP_ACT_INV_EDU` (`EAID_CVE`),
  KEY `XIF2EMP_ACT_INV_EDU` (`MED_DIVULGACION_CVE`),
  KEY `XIF5EMP_ACT_INV_EDU` (`COMPROBANTE_CVE`),
  KEY `XIF6EMP_ACT_INV_EDU` (`EMPLEADO_CVE`),
  KEY `XIF7EMP_ACT_INV_EDU` (`TIP_PARTICIPACION_CVE`),
  KEY `XIF8EMP_ACT_INV_EDU` (`TIP_ESTUDIO_CVE`),
  KEY `XIF9EMP_ACT_INV_EDU` (`TIP_ACT_DOC_CVE`),
  CONSTRAINT `emp_act_inv_edu_ibfk_1` FOREIGN KEY (`MED_DIVULGACION_CVE`) REFERENCES `cmedio_divulgacion` (`MED_DIVULGACION_CVE`),
  CONSTRAINT `emp_act_inv_edu_ibfk_2` FOREIGN KEY (`COMPROBANTE_CVE`) REFERENCES `comprobante` (`COMPROBANTE_CVE`),
  CONSTRAINT `emp_act_inv_edu_ibfk_3` FOREIGN KEY (`EMPLEADO_CVE`) REFERENCES `empleado` (`EMPLEADO_CVE`),
  CONSTRAINT `emp_act_inv_edu_ibfk_4` FOREIGN KEY (`TIP_PARTICIPACION_CVE`) REFERENCES `ctipo_participacion` (`TIP_PARTICIPACION_CVE`),
  CONSTRAINT `emp_act_inv_edu_ibfk_5` FOREIGN KEY (`TIP_ESTUDIO_CVE`) REFERENCES `ctipo_estudio` (`TIP_ESTUDIO_CVE`),
  CONSTRAINT `emp_act_inv_edu_tpdfk` FOREIGN KEY (`TIP_ACT_DOC_CVE`) REFERENCES `ctipo_actividad_docente` (`TIP_ACT_DOC_CVE`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_act_inv_edu`
--

LOCK TABLES `emp_act_inv_edu` WRITE;
/*!40000 ALTER TABLE `emp_act_inv_edu` DISABLE KEYS */;
INSERT INTO `emp_act_inv_edu` VALUES (1,NULL,NULL,NULL,109,'asdasd',1,2,NULL,'asdasd',46,2,15,'2016-08-06 22:53:57'),(2,NULL,NULL,NULL,110,'sdfsdf',1,1,NULL,'sdfsdf',47,1,15,'2016-08-06 23:10:01'),(3,NULL,NULL,'zsrgfsdgfdszfgdfg',NULL,'sdfewe',1,1,NULL,'asdasd',48,1,15,'2016-08-06 23:18:45'),(1,NULL,NULL,NULL,111,'ewqwe3',1,2,NULL,'dasdddddddddddddddddddddd',49,1,15,'2016-08-06 23:19:32'),(1,NULL,NULL,NULL,112,'sss',1,1,NULL,'nolaaaaaaaaaaa',50,1,16,'2016-08-06 23:22:50'),(2,NULL,NULL,NULL,113,'adw3',1,1,NULL,'asdas',51,1,16,'2016-08-06 23:23:22'),(2,NULL,NULL,NULL,114,'SAdad',1,1,NULL,'sdfsdf',52,1,15,'2016-08-06 23:24:01'),(2,NULL,NULL,NULL,117,'aas',1,1,NULL,'comprobante',53,1,15,'2016-08-07 01:26:55');
/*!40000 ALTER TABLE `emp_act_inv_edu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_actividad_docente`
--

DROP TABLE IF EXISTS `emp_actividad_docente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_actividad_docente` (
  `EAD_DURACION` varchar(20) DEFAULT NULL,
  `EAD_FCH_INICIO` date DEFAULT NULL,
  `EAD_FCH_FIN` date DEFAULT NULL,
  `MODALIDAD_CVE` int(11) DEFAULT NULL,
  `LICENCIATURA_CVE` int(11) DEFAULT NULL,
  `COMPROBANTE_CVE` int(11) DEFAULT NULL,
  `EAD_EXTRA_INS_AVALA` int(11) NOT NULL,
  `EAD_CURSO_PRIN_IMPARTE` varchar(20) NOT NULL,
  `ROL_DESEMPENIA_CVE` int(11) DEFAULT NULL,
  `TIP_ACT_DOC_CVE` int(11) DEFAULT NULL,
  `INS_AVALA_CVE` int(11) DEFAULT NULL,
  `CURSO_CVE` int(11) DEFAULT NULL,
  `EMP_ACT_DOCENTE_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `TIP_MATERIAL_CVE` int(11) DEFAULT NULL,
  `AREA_CVE` int(11) DEFAULT NULL,
  `ACT_DOC_GRAL_CVE` int(11) DEFAULT NULL,
  `MODULO_CVE` int(11) DEFAULT NULL,
  `EAD_ANIO_CURSO` int(11) DEFAULT NULL,
  `EAD_NOMBRE_CURSO` varchar(100) DEFAULT NULL,
  `EAD_NOMBRE_MATERIA_IMPARTIO` varchar(100) DEFAULT NULL,
  `TIP_FOR_PROF_CVE` int(10) DEFAULT NULL,
  `FECHA_INSERSION` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`EMP_ACT_DOCENTE_CVE`),
  UNIQUE KEY `XPKEMP_ACTIVIDAD_DOCENTE` (`EMP_ACT_DOCENTE_CVE`),
  KEY `XIF2EMP_ACTIVIDAD_DOCENTE` (`MODALIDAD_CVE`),
  KEY `XIF3EMP_ACTIVIDAD_DOCENTE` (`LICENCIATURA_CVE`),
  KEY `XIF10EMP_ACTIVIDAD_DOCENTE` (`COMPROBANTE_CVE`),
  KEY `XIF12EMP_ACTIVIDAD_DOCENTE` (`ROL_DESEMPENIA_CVE`),
  KEY `XIF13EMP_ACTIVIDAD_DOCENTE` (`TIP_ACT_DOC_CVE`),
  KEY `XIF16EMP_ACTIVIDAD_DOCENTE` (`INS_AVALA_CVE`),
  KEY `XIF17EMP_ACTIVIDAD_DOCENTE` (`CURSO_CVE`),
  KEY `XIF18EMP_ACTIVIDAD_DOCENTE` (`TIP_MATERIAL_CVE`),
  KEY `XIF19EMP_ACTIVIDAD_DOCENTE` (`AREA_CVE`),
  KEY `XIF22EMP_ACTIVIDAD_DOCENTE` (`ACT_DOC_GRAL_CVE`),
  KEY `XIF26EMP_ACTIVIDAD_DOCENTE` (`MODULO_CVE`),
  KEY `XIF20EMP_ACTIVIDAD_DOCENTE` (`TIP_FOR_PROF_CVE`),
  KEY `XIF15EMP_ESP_MEDICA` (`TIP_ACT_DOC_CVE`),
  CONSTRAINT `emp_actividad_docente_ibfk_1` FOREIGN KEY (`MODALIDAD_CVE`) REFERENCES `cmodalidad` (`MODALIDAD_CVE`),
  CONSTRAINT `emp_actividad_docente_ibfk_10` FOREIGN KEY (`AREA_CVE`) REFERENCES `carea` (`AREA_CVE`),
  CONSTRAINT `emp_actividad_docente_ibfk_11` FOREIGN KEY (`ACT_DOC_GRAL_CVE`) REFERENCES `actividad_docente_gral` (`ACT_DOC_GRAL_CVE`),
  CONSTRAINT `emp_actividad_docente_ibfk_12` FOREIGN KEY (`MODULO_CVE`) REFERENCES `cmodulo` (`MODULO_CVE`),
  CONSTRAINT `emp_actividad_docente_ibfk_2` FOREIGN KEY (`LICENCIATURA_CVE`) REFERENCES `licenciatura` (`LICENCIATURA_CVE`),
  CONSTRAINT `emp_actividad_docente_ibfk_3` FOREIGN KEY (`COMPROBANTE_CVE`) REFERENCES `comprobante` (`COMPROBANTE_CVE`),
  CONSTRAINT `emp_actividad_docente_ibfk_4` FOREIGN KEY (`ROL_DESEMPENIA_CVE`) REFERENCES `crol_desempenia` (`ROL_DESEMPENIA_CVE`),
  CONSTRAINT `emp_actividad_docente_ibfk_5` FOREIGN KEY (`TIP_ACT_DOC_CVE`) REFERENCES `ctipo_actividad_docente` (`TIP_ACT_DOC_CVE`),
  CONSTRAINT `emp_actividad_docente_ibfk_7` FOREIGN KEY (`INS_AVALA_CVE`) REFERENCES `cinstitucion_avala` (`INS_AVALA_CVE`),
  CONSTRAINT `emp_actividad_docente_ibfk_8` FOREIGN KEY (`CURSO_CVE`) REFERENCES `ccurso` (`CURSO_CVE`),
  CONSTRAINT `emp_actividad_docente_ibfk_9` FOREIGN KEY (`TIP_MATERIAL_CVE`) REFERENCES `cmaterial` (`TIP_MATERIAL_CVE`),
  CONSTRAINT `emp_actividad_docente_tfpcfk` FOREIGN KEY (`TIP_FOR_PROF_CVE`) REFERENCES `ctipo_formacion_profesional` (`TIP_FOR_PROF_CVE`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_actividad_docente`
--

LOCK TABLES `emp_actividad_docente` WRITE;
/*!40000 ALTER TABLE `emp_actividad_docente` DISABLE KEYS */;
INSERT INTO `emp_actividad_docente` VALUES ('23','0000-00-00','0000-00-00',2,4,NULL,0,'',2,1,3,NULL,4,NULL,NULL,3,NULL,232,'saasd',NULL,NULL,'2016-08-05 22:09:24'),('4',NULL,NULL,2,1,44,0,'',3,4,2,NULL,51,NULL,NULL,3,NULL,1902,'dfgdfg',NULL,NULL,'2016-08-05 22:09:24');
/*!40000 ALTER TABLE `emp_actividad_docente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_beca`
--

DROP TABLE IF EXISTS `emp_beca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_beca` (
  `EB_FCH_INICIO` date DEFAULT NULL,
  `EB_FCH_FIN` date DEFAULT NULL,
  `CLA_BECA_CVE` int(11) DEFAULT NULL,
  `COMPROBANTE_CVE` int(11) DEFAULT NULL,
  `EMPLEADO_CVE` int(11) DEFAULT NULL,
  `EB_DURACION` varchar(20) DEFAULT NULL,
  `EMP_BECA_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `MOTIVO_BECADO_CVE` int(11) DEFAULT NULL,
  `BECA_INTERRIMPIDA_CVE` int(11) DEFAULT NULL,
  `FECHA_INSERSION` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`EMP_BECA_CVE`),
  UNIQUE KEY `XPKEMP_BECA` (`EMP_BECA_CVE`),
  KEY `XIF1EMP_BECA` (`CLA_BECA_CVE`),
  KEY `XIF2EMP_BECA` (`COMPROBANTE_CVE`),
  KEY `XIF3EMP_BECA` (`EMPLEADO_CVE`),
  KEY `XIF4EMP_BECA` (`MOTIVO_BECADO_CVE`),
  KEY `XIF5EMP_BECA` (`BECA_INTERRIMPIDA_CVE`),
  CONSTRAINT `emp_beca_ibfk_1` FOREIGN KEY (`CLA_BECA_CVE`) REFERENCES `cclase_beca` (`CLA_BECA_CVE`),
  CONSTRAINT `emp_beca_ibfk_2` FOREIGN KEY (`COMPROBANTE_CVE`) REFERENCES `comprobante` (`COMPROBANTE_CVE`),
  CONSTRAINT `emp_beca_ibfk_3` FOREIGN KEY (`EMPLEADO_CVE`) REFERENCES `empleado` (`EMPLEADO_CVE`),
  CONSTRAINT `emp_beca_ibfk_4` FOREIGN KEY (`MOTIVO_BECADO_CVE`) REFERENCES `cmotivo_becado` (`MOTIVO_BECADO_CVE`),
  CONSTRAINT `emp_beca_ibfk_5` FOREIGN KEY (`BECA_INTERRIMPIDA_CVE`) REFERENCES `cbeca_interrumpida` (`BECA_INTERRIMPIDA_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_beca`
--

LOCK TABLES `emp_beca` WRITE;
/*!40000 ALTER TABLE `emp_beca` DISABLE KEYS */;
/*!40000 ALTER TABLE `emp_beca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_can_bono`
--

DROP TABLE IF EXISTS `emp_can_bono`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_can_bono` (
  `EMP_CAN_BONO_CVE` int(11) NOT NULL,
  `CAN_BON_PERIODO` varchar(20) DEFAULT NULL,
  `CAN_BON_SUM_ACTI` varchar(20) DEFAULT NULL,
  `CAN_BON_ESTADO` varchar(20) DEFAULT NULL,
  `CAN_BON_TOT_PRO_EVA` varchar(20) NOT NULL,
  `CAN_BON_CORREO` varchar(20) DEFAULT NULL,
  `EMPLEADO_CVE` int(11) DEFAULT NULL,
  PRIMARY KEY (`EMP_CAN_BONO_CVE`),
  UNIQUE KEY `XPKEMP_CAN_BONO` (`EMP_CAN_BONO_CVE`),
  KEY `XIF1EMP_CAN_BONO` (`EMPLEADO_CVE`),
  CONSTRAINT `emp_can_bono_ibfk_1` FOREIGN KEY (`EMPLEADO_CVE`) REFERENCES `empleado` (`EMPLEADO_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_can_bono`
--

LOCK TABLES `emp_can_bono` WRITE;
/*!40000 ALTER TABLE `emp_can_bono` DISABLE KEYS */;
/*!40000 ALTER TABLE `emp_can_bono` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_ciclos_clinicos`
--

DROP TABLE IF EXISTS `emp_ciclos_clinicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_ciclos_clinicos` (
  `LICENCIATURA_CVE` int(11) DEFAULT NULL,
  `ROL_DESEMPENIA_CVE` int(11) DEFAULT NULL,
  `INS_AVALA_CVE` int(11) DEFAULT NULL,
  `ECC_PAGO_EXTRA` varchar(20) NOT NULL,
  `MODALIDAD_CVE` int(11) DEFAULT NULL,
  `ECC_ANIO_IMPARTIDO` int(11) NOT NULL,
  `ECC_DURACION` varchar(20) DEFAULT NULL,
  `EMPLEADO_CVE` int(11) NOT NULL,
  `ECC_CURSO` varchar(20) NOT NULL,
  `ECC_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `ECC_FCH_INICIO` date DEFAULT NULL,
  `ECC_FCH_FIN` date DEFAULT NULL,
  `FECHA_INSERSION` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ECC_CVE`),
  UNIQUE KEY `XPKEMP_CICLOS_CLINICOS` (`ECC_CVE`),
  KEY `XIF1EMP_CICLOS_CLINICOS` (`LICENCIATURA_CVE`),
  KEY `XIF2EMP_CICLOS_CLINICOS` (`ROL_DESEMPENIA_CVE`),
  KEY `XIF3EMP_CICLOS_CLINICOS` (`INS_AVALA_CVE`),
  KEY `XIF4EMP_CICLOS_CLINICOS` (`MODALIDAD_CVE`),
  KEY `XIF5EMP_CICLOS_CLINICOS` (`EMPLEADO_CVE`),
  CONSTRAINT `emp_ciclos_clinicos_ibfk_1` FOREIGN KEY (`LICENCIATURA_CVE`) REFERENCES `licenciatura` (`LICENCIATURA_CVE`),
  CONSTRAINT `emp_ciclos_clinicos_ibfk_2` FOREIGN KEY (`ROL_DESEMPENIA_CVE`) REFERENCES `crol_desempenia` (`ROL_DESEMPENIA_CVE`),
  CONSTRAINT `emp_ciclos_clinicos_ibfk_3` FOREIGN KEY (`INS_AVALA_CVE`) REFERENCES `cinstitucion_avala` (`INS_AVALA_CVE`),
  CONSTRAINT `emp_ciclos_clinicos_ibfk_4` FOREIGN KEY (`MODALIDAD_CVE`) REFERENCES `cmodalidad` (`MODALIDAD_CVE`),
  CONSTRAINT `emp_ciclos_clinicos_ibfk_5` FOREIGN KEY (`EMPLEADO_CVE`) REFERENCES `empleado` (`EMPLEADO_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_ciclos_clinicos`
--

LOCK TABLES `emp_ciclos_clinicos` WRITE;
/*!40000 ALTER TABLE `emp_ciclos_clinicos` DISABLE KEYS */;
/*!40000 ALTER TABLE `emp_ciclos_clinicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_comision`
--

DROP TABLE IF EXISTS `emp_comision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_comision` (
  `EC_DURACION` varchar(20) DEFAULT NULL,
  `EMPLEADO_CVE` int(11) DEFAULT NULL,
  `TIP_COMISION_CVE` int(11) DEFAULT NULL,
  `COMPROBANTE_CVE` int(11) DEFAULT NULL,
  `EC_ANIO` int(11) NOT NULL,
  `COM_AREA_CVE` int(11) DEFAULT NULL,
  `SIN_EXA_ANIO` int(11) DEFAULT NULL,
  `NIV_ACADEMICO_CVE` int(11) DEFAULT NULL,
  `EMP_COMISION_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `EC_FCH_INICIO` date DEFAULT NULL,
  `EC_FCH_FIN` date DEFAULT NULL,
  `FECHA_INSERSION` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`EMP_COMISION_CVE`),
  UNIQUE KEY `XPKEMP_COMISION` (`EMP_COMISION_CVE`),
  KEY `XIF1EMP_COMISION` (`EMPLEADO_CVE`),
  KEY `XIF2EMP_COMISION` (`TIP_COMISION_CVE`),
  KEY `XIF3EMP_COMISION` (`COMPROBANTE_CVE`),
  KEY `XIF4EMP_COMISION` (`COM_AREA_CVE`),
  KEY `XIF5EMP_COMISION` (`NIV_ACADEMICO_CVE`),
  CONSTRAINT `emp_comision_ibfk_1` FOREIGN KEY (`EMPLEADO_CVE`) REFERENCES `empleado` (`EMPLEADO_CVE`),
  CONSTRAINT `emp_comision_ibfk_2` FOREIGN KEY (`TIP_COMISION_CVE`) REFERENCES `ctipo_comision` (`TIP_COMISION_CVE`),
  CONSTRAINT `emp_comision_ibfk_3` FOREIGN KEY (`COMPROBANTE_CVE`) REFERENCES `comprobante` (`COMPROBANTE_CVE`),
  CONSTRAINT `emp_comision_ibfk_4` FOREIGN KEY (`COM_AREA_CVE`) REFERENCES `comision_area` (`COM_AREA_CVE`),
  CONSTRAINT `emp_comision_ibfk_5` FOREIGN KEY (`NIV_ACADEMICO_CVE`) REFERENCES `cnivel_academico` (`NIV_ACADEMICO_CVE`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_comision`
--

LOCK TABLES `emp_comision` WRITE;
/*!40000 ALTER TABLE `emp_comision` DISABLE KEYS */;
INSERT INTO `emp_comision` VALUES (NULL,12,1,NULL,2014,3,NULL,2,1,NULL,NULL,'2016-08-05 22:21:50'),(NULL,12,1,NULL,2015,1,NULL,4,2,NULL,NULL,'2016-08-05 22:21:50');
/*!40000 ALTER TABLE `emp_comision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_contacto`
--

DROP TABLE IF EXISTS `emp_contacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_contacto` (
  `EMPLEADO_CVE` int(11) DEFAULT NULL,
  `CONTACTO_CVE` int(11) NOT NULL,
  `CON_VALOR` varchar(60) DEFAULT NULL,
  `TIP_CON_CVE` int(11) DEFAULT NULL,
  `SECCION_CVE` int(11) DEFAULT NULL,
  PRIMARY KEY (`CONTACTO_CVE`),
  UNIQUE KEY `XPKEMP_CONTACTO` (`CONTACTO_CVE`),
  KEY `XIF1EMP_CONTACTO` (`EMPLEADO_CVE`),
  KEY `XIF2EMP_CONTACTO` (`TIP_CON_CVE`),
  KEY `XIF3EMP_CONTACTO` (`SECCION_CVE`),
  CONSTRAINT `emp_contacto_ibfk_1` FOREIGN KEY (`EMPLEADO_CVE`) REFERENCES `empleado` (`EMPLEADO_CVE`),
  CONSTRAINT `emp_contacto_ibfk_2` FOREIGN KEY (`TIP_CON_CVE`) REFERENCES `ctipo_contacto` (`TIP_CON_CVE`),
  CONSTRAINT `emp_contacto_ibfk_3` FOREIGN KEY (`SECCION_CVE`) REFERENCES `cseccion` (`SECCION_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_contacto`
--

LOCK TABLES `emp_contacto` WRITE;
/*!40000 ALTER TABLE `emp_contacto` DISABLE KEYS */;
/*!40000 ALTER TABLE `emp_contacto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_desa_inv_salud`
--

DROP TABLE IF EXISTS `emp_desa_inv_salud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_desa_inv_salud` (
  `EDIS_FOLIO_ACEPTACION` varchar(20) NOT NULL,
  `EDIS_CITA_PUBLICACION` varchar(20) DEFAULT NULL,
  `TIP_ESTUDIO_CVE` int(11) DEFAULT NULL,
  `MED_DIVULGACION_CVE` int(11) DEFAULT NULL,
  `TIP_PARTICIPACION_CVE` int(11) DEFAULT NULL,
  `COMPROBANTE_CVE` int(11) DEFAULT NULL,
  `EMPLEADO_CVE` int(11) DEFAULT NULL,
  `EDIS_DURACION` varchar(20) DEFAULT NULL,
  `EDIS_NOMBRE_INV` varchar(40) NOT NULL,
  `EDIS_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `EDIS_FCH_FIN` date DEFAULT NULL,
  `EDIS_FCH_INICIO` char(18) DEFAULT NULL,
  `INS_AVALA_CVE` int(11) DEFAULT NULL,
  PRIMARY KEY (`EDIS_CVE`),
  UNIQUE KEY `XPKEMP_DESA_INV_SALUD` (`EDIS_CVE`),
  KEY `XIF2EMP_DESA_INV_SALUD` (`TIP_ESTUDIO_CVE`),
  KEY `XIF3EMP_DESA_INV_SALUD` (`MED_DIVULGACION_CVE`),
  KEY `XIF4EMP_DESA_INV_SALUD` (`TIP_PARTICIPACION_CVE`),
  KEY `XIF5EMP_DESA_INV_SALUD` (`COMPROBANTE_CVE`),
  KEY `XIF6EMP_DESA_INV_SALUD` (`EMPLEADO_CVE`),
  KEY `XIF8EMP_DESA_INV_SALUD` (`INS_AVALA_CVE`),
  CONSTRAINT `emp_desa_inv_salud_ibfk_1` FOREIGN KEY (`TIP_ESTUDIO_CVE`) REFERENCES `ctipo_estudio` (`TIP_ESTUDIO_CVE`),
  CONSTRAINT `emp_desa_inv_salud_ibfk_2` FOREIGN KEY (`MED_DIVULGACION_CVE`) REFERENCES `cmedio_divulgacion` (`MED_DIVULGACION_CVE`),
  CONSTRAINT `emp_desa_inv_salud_ibfk_3` FOREIGN KEY (`TIP_PARTICIPACION_CVE`) REFERENCES `ctipo_participacion` (`TIP_PARTICIPACION_CVE`),
  CONSTRAINT `emp_desa_inv_salud_ibfk_4` FOREIGN KEY (`COMPROBANTE_CVE`) REFERENCES `comprobante` (`COMPROBANTE_CVE`),
  CONSTRAINT `emp_desa_inv_salud_ibfk_5` FOREIGN KEY (`EMPLEADO_CVE`) REFERENCES `empleado` (`EMPLEADO_CVE`),
  CONSTRAINT `emp_desa_inv_salud_ibfk_6` FOREIGN KEY (`INS_AVALA_CVE`) REFERENCES `cinstitucion_avala` (`INS_AVALA_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_desa_inv_salud`
--

LOCK TABLES `emp_desa_inv_salud` WRITE;
/*!40000 ALTER TABLE `emp_desa_inv_salud` DISABLE KEYS */;
/*!40000 ALTER TABLE `emp_desa_inv_salud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_educacion_distancia`
--

DROP TABLE IF EXISTS `emp_educacion_distancia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_educacion_distancia` (
  `EED_DURACION` varchar(20) DEFAULT NULL,
  `EMPLEADO_CVE` int(11) DEFAULT NULL,
  `ROL_DESEMPENIA_CVE` int(11) DEFAULT NULL,
  `EED_FCH_FIN` date DEFAULT NULL,
  `EMP_EDU_DISTANCIA_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `COMPROBANTE_CVE` int(11) DEFAULT NULL,
  `CURSO_CVE` int(11) DEFAULT NULL,
  `EDD_FCH_INICIO` date DEFAULT NULL,
  `EDD_CUR_ANIO` int(11) DEFAULT NULL,
  `EDD_CUR_PUN_ROL` int(11) DEFAULT NULL,
  `EDD_CUR_PUN_ALCANCE` int(11) DEFAULT NULL,
  `EDD_PUN_DURACION` int(11) DEFAULT NULL,
  `EDD_CUR_SUM_TOT_ACT` int(11) DEFAULT NULL,
  `EDD_CUR_PROM_EVALUACIONES` int(11) DEFAULT NULL,
  `TIP_ACT_DOC_CVE` int(11) DEFAULT NULL,
  `FOLIO_CONSTANCIA` varchar(35) DEFAULT NULL,
  `TIPO_CURSO_CVE` int(11) NOT NULL,
  `EED_NOMBRE_CURSO` varchar(100) DEFAULT NULL,
  `ACT_DOC_GRAL_CVE` int(10) DEFAULT NULL,
  `FECHA_INSERSION` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`EMP_EDU_DISTANCIA_CVE`),
  UNIQUE KEY `XPKEMP_EDUCACION_DISTANCIA` (`EMP_EDU_DISTANCIA_CVE`),
  KEY `XIF4EMP_EDUCACION_DISTANCIA` (`EMPLEADO_CVE`),
  KEY `XIF5EMP_EDUCACION_DISTANCIA` (`ROL_DESEMPENIA_CVE`),
  KEY `XIF6EMP_EDUCACION_DISTANCIA` (`COMPROBANTE_CVE`),
  KEY `XIF7EMP_EDUCACION_DISTANCIA` (`CURSO_CVE`),
  KEY `XIF8EMP_EDUCACION_DISTANCIA` (`TIP_ACT_DOC_CVE`),
  KEY `XIF9EMP_EDUCACION_DISTANCIA` (`TIPO_CURSO_CVE`),
  KEY `XIF10EMP_EDUCACION_DISTANCIA` (`ACT_DOC_GRAL_CVE`),
  CONSTRAINT `emp_educacion_distancia_eadcfk` FOREIGN KEY (`ACT_DOC_GRAL_CVE`) REFERENCES `actividad_docente_gral` (`ACT_DOC_GRAL_CVE`),
  CONSTRAINT `emp_educacion_distancia_ibfk_1` FOREIGN KEY (`EMPLEADO_CVE`) REFERENCES `empleado` (`EMPLEADO_CVE`),
  CONSTRAINT `emp_educacion_distancia_ibfk_2` FOREIGN KEY (`ROL_DESEMPENIA_CVE`) REFERENCES `crol_desempenia` (`ROL_DESEMPENIA_CVE`),
  CONSTRAINT `emp_educacion_distancia_ibfk_3` FOREIGN KEY (`COMPROBANTE_CVE`) REFERENCES `comprobante` (`COMPROBANTE_CVE`),
  CONSTRAINT `emp_educacion_distancia_ibfk_4` FOREIGN KEY (`CURSO_CVE`) REFERENCES `ccurso` (`CURSO_CVE`),
  CONSTRAINT `emp_educacion_distancia_ibfk_5` FOREIGN KEY (`TIP_ACT_DOC_CVE`) REFERENCES `ctipo_actividad_docente` (`TIP_ACT_DOC_CVE`),
  CONSTRAINT `emp_educacion_distancia_tpcfk` FOREIGN KEY (`TIPO_CURSO_CVE`) REFERENCES `ctipo_curso` (`TIP_CURSO_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_educacion_distancia`
--

LOCK TABLES `emp_educacion_distancia` WRITE;
/*!40000 ALTER TABLE `emp_educacion_distancia` DISABLE KEYS */;
/*!40000 ALTER TABLE `emp_educacion_distancia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_esp_medica`
--

DROP TABLE IF EXISTS `emp_esp_medica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_esp_medica` (
  `TIP_ESP_MEDICA_CVE` int(11) DEFAULT NULL,
  `ROL_DESEMPENIA_CVE` int(11) DEFAULT NULL,
  `INS_AVALA_CVE` int(11) DEFAULT NULL,
  `MODALIDAD_CVE` int(11) DEFAULT NULL,
  `COMPROBANTE_CVE` int(11) DEFAULT NULL,
  `EEM_FCH_INICIO` date DEFAULT NULL,
  `EEM_FCH_FIN` date DEFAULT NULL,
  `EEM_PAGO_EXTRA` varchar(20) NOT NULL,
  `EEM_ANIO_FUNGIO` int(11) NOT NULL,
  `EMPLEADO_CVE` int(11) DEFAULT NULL,
  `EEM_DURACION` varchar(20) DEFAULT NULL,
  `EMP_ESP_MEDICA_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `ACT_DOC_GRAL_CVE` int(10) DEFAULT NULL,
  `TIP_ACT_DOC_CVE` int(10) DEFAULT NULL,
  `FECHA_INSERSION` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`EMP_ESP_MEDICA_CVE`),
  UNIQUE KEY `XPKEMP_ESP_MEDICA` (`EMP_ESP_MEDICA_CVE`),
  KEY `XIF1EMP_ESP_MEDICA` (`TIP_ESP_MEDICA_CVE`),
  KEY `XIF2EMP_ESP_MEDICA` (`ROL_DESEMPENIA_CVE`),
  KEY `XIF3EMP_ESP_MEDICA` (`INS_AVALA_CVE`),
  KEY `XIF4EMP_ESP_MEDICA` (`MODALIDAD_CVE`),
  KEY `XIF5EMP_ESP_MEDICA` (`COMPROBANTE_CVE`),
  KEY `XIF6EMP_ESP_MEDICA` (`EMPLEADO_CVE`),
  KEY `XIF10EMP_EDUCACION_DISTANCIA` (`ACT_DOC_GRAL_CVE`),
  KEY `emp_esp_medica_tadcfk` (`TIP_ACT_DOC_CVE`),
  CONSTRAINT `emp_esp_medica_eadcfk` FOREIGN KEY (`ACT_DOC_GRAL_CVE`) REFERENCES `actividad_docente_gral` (`ACT_DOC_GRAL_CVE`),
  CONSTRAINT `emp_esp_medica_ibfk_1` FOREIGN KEY (`TIP_ESP_MEDICA_CVE`) REFERENCES `ctipo_especialidad` (`TIP_ESP_MEDICA_CVE`),
  CONSTRAINT `emp_esp_medica_ibfk_2` FOREIGN KEY (`ROL_DESEMPENIA_CVE`) REFERENCES `crol_desempenia` (`ROL_DESEMPENIA_CVE`),
  CONSTRAINT `emp_esp_medica_ibfk_3` FOREIGN KEY (`INS_AVALA_CVE`) REFERENCES `cinstitucion_avala` (`INS_AVALA_CVE`),
  CONSTRAINT `emp_esp_medica_ibfk_4` FOREIGN KEY (`MODALIDAD_CVE`) REFERENCES `cmodalidad` (`MODALIDAD_CVE`),
  CONSTRAINT `emp_esp_medica_ibfk_5` FOREIGN KEY (`COMPROBANTE_CVE`) REFERENCES `comprobante` (`COMPROBANTE_CVE`),
  CONSTRAINT `emp_esp_medica_ibfk_6` FOREIGN KEY (`EMPLEADO_CVE`) REFERENCES `empleado` (`EMPLEADO_CVE`),
  CONSTRAINT `emp_esp_medica_tadcfk` FOREIGN KEY (`TIP_ACT_DOC_CVE`) REFERENCES `ctipo_actividad_docente` (`TIP_ACT_DOC_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_esp_medica`
--

LOCK TABLES `emp_esp_medica` WRITE;
/*!40000 ALTER TABLE `emp_esp_medica` DISABLE KEYS */;
/*!40000 ALTER TABLE `emp_esp_medica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_for_personal_continua_salud`
--

DROP TABLE IF EXISTS `emp_for_personal_continua_salud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_for_personal_continua_salud` (
  `FPCS_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `COMPROBANTE_CVE` int(11) DEFAULT NULL,
  `EMPLEADO_CVE` int(11) DEFAULT NULL,
  `EFPCS_FCH_INICIO` date DEFAULT NULL,
  `EFPCS_FCH_FIN` char(18) DEFAULT NULL,
  `EFPCS_ANIO` int(11) DEFAULT NULL,
  `EFPCS_FOR_INICIAL` varchar(20) DEFAULT NULL,
  `EFPCS_DURACION` varchar(20) DEFAULT NULL,
  `TIP_FORM_SALUD_CVE` int(11) DEFAULT NULL,
  `FECHA_INSERSION` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`FPCS_CVE`),
  UNIQUE KEY `XPKEMP_FOR_PERSONAL_CONTINUA_SALUD` (`FPCS_CVE`),
  KEY `XIF1EMP_FOR_PERSONAL_CONTINUA_SALUD` (`COMPROBANTE_CVE`),
  KEY `XIF2EMP_FOR_PERSONAL_CONTINUA_SALUD` (`EMPLEADO_CVE`),
  KEY `XIF6EMP_FOR_PERSONAL_CONTINUA_SALUD` (`TIP_FORM_SALUD_CVE`),
  CONSTRAINT `emp_for_personal_continua_salud_ibfk_1` FOREIGN KEY (`COMPROBANTE_CVE`) REFERENCES `comprobante` (`COMPROBANTE_CVE`),
  CONSTRAINT `emp_for_personal_continua_salud_ibfk_2` FOREIGN KEY (`EMPLEADO_CVE`) REFERENCES `empleado` (`EMPLEADO_CVE`),
  CONSTRAINT `emp_for_personal_continua_salud_ibfk_3` FOREIGN KEY (`TIP_FORM_SALUD_CVE`) REFERENCES `ctipo_formacion_salud` (`TIP_FORM_SALUD_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_for_personal_continua_salud`
--

LOCK TABLES `emp_for_personal_continua_salud` WRITE;
/*!40000 ALTER TABLE `emp_for_personal_continua_salud` DISABLE KEYS */;
/*!40000 ALTER TABLE `emp_for_personal_continua_salud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_formacion_profesional`
--

DROP TABLE IF EXISTS `emp_formacion_profesional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_formacion_profesional` (
  `EFP_DURACION` varchar(20) DEFAULT NULL,
  `TEMATICA_CVE` int(11) DEFAULT NULL,
  `MODALIDAD_CVE` int(11) DEFAULT NULL,
  `COMPROBANTE_CVE` int(11) DEFAULT NULL,
  `INS_AVALA_CVE` int(11) DEFAULT NULL,
  `EFP_FCH_INICIO` date DEFAULT NULL,
  `EFP_FCH_FIN` date DEFAULT NULL,
  `EFP_EXTRA_INS_AVALA` int(11) NOT NULL,
  `EMPLEADO_CVE` int(11) DEFAULT NULL,
  `EFP_TIENE_FORMA_EDU` int(11) NOT NULL,
  `CURSO_CVE` int(11) DEFAULT NULL,
  `EJE_PRO_CVE` int(11) DEFAULT NULL,
  `EMP_FORMACION_PROFESIONAL_CVE` int(11) NOT NULL,
  `LICENCIATURA_CVE` int(11) DEFAULT NULL,
  `TIP_ACT_DOC_CVE` int(11) DEFAULT NULL,
  `TIP_FOR_PROF_CVE` int(11) DEFAULT NULL,
  `EFO_ANIO_CURSO` int(11) DEFAULT NULL,
  `FECHA_INSERSION` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`EMP_FORMACION_PROFESIONAL_CVE`),
  UNIQUE KEY `XPKEMP_FORMACION_PROFESIONAL` (`EMP_FORMACION_PROFESIONAL_CVE`),
  KEY `XIF7EMP_FORMACION_PROFESIONAL` (`TEMATICA_CVE`),
  KEY `XIF8EMP_FORMACION_PROFESIONAL` (`MODALIDAD_CVE`),
  KEY `XIF9EMP_FORMACION_PROFESIONAL` (`COMPROBANTE_CVE`),
  KEY `XIF12EMP_FORMACION_PROFESIONAL` (`INS_AVALA_CVE`),
  KEY `XIF13EMP_FORMACION_PROFESIONAL` (`EMPLEADO_CVE`),
  KEY `XIF14EMP_FORMACION_PROFESIONAL` (`CURSO_CVE`),
  KEY `XIF15EMP_FORMACION_PROFESIONAL` (`EJE_PRO_CVE`),
  KEY `XIF16EMP_FORMACION_PROFESIONAL` (`LICENCIATURA_CVE`),
  KEY `XIF17EMP_FORMACION_PROFESIONAL` (`TIP_ACT_DOC_CVE`),
  KEY `XIF18EMP_FORMACION_PROFESIONAL` (`TIP_FOR_PROF_CVE`),
  CONSTRAINT `emp_formacion_profesional_ibfk_1` FOREIGN KEY (`TEMATICA_CVE`) REFERENCES `ctematica` (`TEMATICA_CVE`),
  CONSTRAINT `emp_formacion_profesional_ibfk_10` FOREIGN KEY (`TIP_FOR_PROF_CVE`) REFERENCES `ctipo_formacion_profesional` (`TIP_FOR_PROF_CVE`),
  CONSTRAINT `emp_formacion_profesional_ibfk_2` FOREIGN KEY (`MODALIDAD_CVE`) REFERENCES `cmodalidad` (`MODALIDAD_CVE`),
  CONSTRAINT `emp_formacion_profesional_ibfk_3` FOREIGN KEY (`COMPROBANTE_CVE`) REFERENCES `comprobante` (`COMPROBANTE_CVE`),
  CONSTRAINT `emp_formacion_profesional_ibfk_4` FOREIGN KEY (`INS_AVALA_CVE`) REFERENCES `cinstitucion_avala` (`INS_AVALA_CVE`),
  CONSTRAINT `emp_formacion_profesional_ibfk_5` FOREIGN KEY (`EMPLEADO_CVE`) REFERENCES `empleado` (`EMPLEADO_CVE`),
  CONSTRAINT `emp_formacion_profesional_ibfk_6` FOREIGN KEY (`CURSO_CVE`) REFERENCES `ccurso` (`CURSO_CVE`),
  CONSTRAINT `emp_formacion_profesional_ibfk_7` FOREIGN KEY (`EJE_PRO_CVE`) REFERENCES `cejercicio_profesional` (`EJE_PRO_CVE`),
  CONSTRAINT `emp_formacion_profesional_ibfk_8` FOREIGN KEY (`LICENCIATURA_CVE`) REFERENCES `licenciatura` (`LICENCIATURA_CVE`),
  CONSTRAINT `emp_formacion_profesional_ibfk_9` FOREIGN KEY (`TIP_ACT_DOC_CVE`) REFERENCES `ctipo_actividad_docente` (`TIP_ACT_DOC_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_formacion_profesional`
--

LOCK TABLES `emp_formacion_profesional` WRITE;
/*!40000 ALTER TABLE `emp_formacion_profesional` DISABLE KEYS */;
INSERT INTO `emp_formacion_profesional` VALUES ('5',NULL,2,16,2,NULL,NULL,0,NULL,0,NULL,NULL,0,NULL,12,1,1905,'2016-08-05 22:21:39');
/*!40000 ALTER TABLE `emp_formacion_profesional` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_materia_educativo`
--

DROP TABLE IF EXISTS `emp_materia_educativo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_materia_educativo` (
  `COMPROBANTE_CVE` int(11) DEFAULT NULL,
  `MAT_EDU_ANIO` int(11) NOT NULL,
  `TIP_MATERIAL_CVE` int(11) DEFAULT NULL,
  `EMPLEADO_CVE` int(11) DEFAULT NULL,
  `MATERIA_EDUCATIVO_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `FECHA_INSERSION` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`MATERIA_EDUCATIVO_CVE`),
  UNIQUE KEY `XPKMATERIA_EDUCATIVO` (`MATERIA_EDUCATIVO_CVE`),
  KEY `XIF1MATERIA_EDUCATIVO` (`COMPROBANTE_CVE`),
  KEY `XIF2MATERIA_EDUCATIVO` (`TIP_MATERIAL_CVE`),
  KEY `XIF3MATERIA_EDUCATIVO` (`EMPLEADO_CVE`),
  CONSTRAINT `emp_materia_educativo_ibfk_1` FOREIGN KEY (`COMPROBANTE_CVE`) REFERENCES `comprobante` (`COMPROBANTE_CVE`),
  CONSTRAINT `emp_materia_educativo_ibfk_2` FOREIGN KEY (`TIP_MATERIAL_CVE`) REFERENCES `ctipo_material` (`TIP_MATERIAL_CVE`),
  CONSTRAINT `emp_materia_educativo_ibfk_3` FOREIGN KEY (`EMPLEADO_CVE`) REFERENCES `empleado` (`EMPLEADO_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_materia_educativo`
--

LOCK TABLES `emp_materia_educativo` WRITE;
/*!40000 ALTER TABLE `emp_materia_educativo` DISABLE KEYS */;
/*!40000 ALTER TABLE `emp_materia_educativo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleado` (
  `EMP_NOMBRE` varchar(30) NOT NULL,
  `EMP_APE_PATERNO` varchar(15) NOT NULL,
  `EMP_APE_MATERNO` varchar(15) NOT NULL,
  `EMP_CURP` varchar(20) NOT NULL,
  `EMP_EDAD` decimal(10,0) DEFAULT NULL,
  `EMP_GENERO` varchar(15) NOT NULL,
  `EMP_ANTIGUEDAD` varchar(10) DEFAULT NULL,
  `EMP_NUM_FUE_IMSS` int(11) DEFAULT NULL,
  `EMP_EMAIL` varchar(30) DEFAULT NULL,
  `EMP_TEL_LABORAL` int(11) DEFAULT NULL,
  `EMP_TEL_PARTICULAR` int(11) DEFAULT NULL,
  `CATEGORIA_CVE` int(11) DEFAULT NULL,
  `ADSCRIPCION_CVE` varchar(20) DEFAULT NULL,
  `EMPLEADO_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `DELEGACION_CVE` char(2) DEFAULT NULL,
  `TIP_CONTRATACION_CVE` int(11) DEFAULT NULL,
  `CESTADO_CIVIL_CVE` int(11) DEFAULT NULL,
  `EDO_LABORAL_CVE` int(11) DEFAULT NULL,
  `EMP_MATRICULA` decimal(10,0) NOT NULL,
  `USUARIO_CVE` int(11) DEFAULT NULL,
  `DEPARTAMENTO_CVE` int(11) DEFAULT NULL,
  `PRESUPUESTAL_ADSCRIPCION_CVE` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`EMPLEADO_CVE`),
  UNIQUE KEY `XPKEMPLEADO` (`EMPLEADO_CVE`),
  UNIQUE KEY `XIF9EMPLEADO` (`USUARIO_CVE`),
  KEY `XIF4EMPLEADO` (`DELEGACION_CVE`),
  KEY `XIF2EMPLEADO` (`CATEGORIA_CVE`),
  KEY `XIF3EMPLEADO` (`ADSCRIPCION_CVE`),
  KEY `XIF5EMPLEADO` (`TIP_CONTRATACION_CVE`),
  KEY `XIF6EMPLEADO` (`CESTADO_CIVIL_CVE`),
  KEY `XIF7EMPLEADO` (`EDO_LABORAL_CVE`),
  KEY `XIF10EMPLEADO` (`DEPARTAMENTO_CVE`),
  CONSTRAINT `empleado_ibfk_4` FOREIGN KEY (`TIP_CONTRATACION_CVE`) REFERENCES `ctipo_contratacion` (`TIP_CONTRATACION_CVE`),
  CONSTRAINT `empleado_ibfk_5` FOREIGN KEY (`CESTADO_CIVIL_CVE`) REFERENCES `cestado_civil` (`CESTADO_CIVIL_CVE`),
  CONSTRAINT `empleado_ibfk_6` FOREIGN KEY (`EDO_LABORAL_CVE`) REFERENCES `cestado_laboral` (`EDO_LABORAL_CVE`),
  CONSTRAINT `empleado_ibfk_7` FOREIGN KEY (`USUARIO_CVE`) REFERENCES `usuario` (`USUARIO_CVE`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES ('Pepe','Pecas','Pica','curppepe',30,'F','10',1,'pepe@pepe.com',23434,124234234,1,NULL,1,'1',1,2,2,121212,1,NULL,NULL),('Ricardo','Zavala','Alonso','sasr890323',27,'M','9',0,'ricsasa@gmail.com',3234234,234234234,2,NULL,2,'1',1,1,1,10004696,2,NULL,NULL),('LEYLANI','GARCIA','BA&UELOS','GABL800219MDFRXY08',NULL,'F','1_6_12',NULL,'leyhlani@gmail.com',NULL,NULL,2695,'09NC012520',9,'09',NULL,NULL,1,311091476,283,NULL,NULL),('JESUS ZOE','DIAZ','PELAEZ','DIPJ840421HMCZLS09',NULL,'M','1_12_0',NULL,'jesusz.unam@gmail.com',NULL,NULL,2702,'09NC012520',12,'09',NULL,NULL,1,311091402,274,NULL,NULL),('MIGUEL ANGEL','GONZALEZ','GUAGNELLI','GOGM860828HDFNGG07',NULL,'M','1_11_14',NULL,'cenit@gmail.com',NULL,NULL,2702,'09NC012520',23,'09',NULL,NULL,1,311091403,NULL,NULL,NULL);
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluacion_act_doc`
--

DROP TABLE IF EXISTS `evaluacion_act_doc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evaluacion_act_doc` (
  `TOTAL_PUNTOS` int(11) NOT NULL,
  `MSG_INCONFORMIDAD` varchar(200) DEFAULT NULL,
  `EVA_CURSO_CVE` int(11) DEFAULT NULL,
  `EST_EVALUACION_CVE` int(11) DEFAULT NULL,
  KEY `XIF1EVALUACION_ACT_DOC` (`EVA_CURSO_CVE`),
  KEY `XIF2EVALUACION_ACT_DOC` (`EVA_CURSO_CVE`),
  KEY `XIF3EVALUACION_ACT_DOC` (`EVA_CURSO_CVE`),
  KEY `XIF4EVALUACION_ACT_DOC` (`EST_EVALUACION_CVE`),
  CONSTRAINT `evaluacion_act_doc_ibfk_1` FOREIGN KEY (`EVA_CURSO_CVE`) REFERENCES `evaluacion_curso_esp_medica` (`EVA_CURSO_CVE`),
  CONSTRAINT `evaluacion_act_doc_ibfk_2` FOREIGN KEY (`EVA_CURSO_CVE`) REFERENCES `evaluacion_curso_act_docente` (`EVA_CURSO_CVE`),
  CONSTRAINT `evaluacion_act_doc_ibfk_3` FOREIGN KEY (`EVA_CURSO_CVE`) REFERENCES `evaluacion_curso_for_profesonal` (`EVA_CURSO_CVE`),
  CONSTRAINT `evaluacion_act_doc_ibfk_4` FOREIGN KEY (`EST_EVALUACION_CVE`) REFERENCES `cestado_evaluacion` (`EST_EVALUACION_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluacion_act_doc`
--

LOCK TABLES `evaluacion_act_doc` WRITE;
/*!40000 ALTER TABLE `evaluacion_act_doc` DISABLE KEYS */;
/*!40000 ALTER TABLE `evaluacion_act_doc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluacion_act_inv_edu`
--

DROP TABLE IF EXISTS `evaluacion_act_inv_edu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evaluacion_act_inv_edu` (
  `TOTAL_PUNTOS` int(11) NOT NULL,
  `MSG_INCONFORMIDAD` varchar(200) DEFAULT NULL,
  `EVA_CURSO_CVE` int(11) DEFAULT NULL,
  `EST_EVALUACION_CVE` int(11) DEFAULT NULL,
  KEY `XIF1EVALUACION_ACT_DOC` (`EVA_CURSO_CVE`),
  KEY `XIF2EVALUACION_ACT_DOC` (`EST_EVALUACION_CVE`),
  CONSTRAINT `evaluacion_act_inv_edu_ibfk_1` FOREIGN KEY (`EVA_CURSO_CVE`) REFERENCES `evaluacion_curso_act_inv_edu` (`EVA_CURSO_CVE`),
  CONSTRAINT `evaluacion_act_inv_edu_ibfk_2` FOREIGN KEY (`EST_EVALUACION_CVE`) REFERENCES `cestado_evaluacion` (`EST_EVALUACION_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluacion_act_inv_edu`
--

LOCK TABLES `evaluacion_act_inv_edu` WRITE;
/*!40000 ALTER TABLE `evaluacion_act_inv_edu` DISABLE KEYS */;
/*!40000 ALTER TABLE `evaluacion_act_inv_edu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluacion_comision`
--

DROP TABLE IF EXISTS `evaluacion_comision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evaluacion_comision` (
  `TOTAL_PUNTOS` int(11) DEFAULT NULL,
  `MSG_INCONFORMIDAD` varchar(200) DEFAULT NULL,
  `EVA_CURSO_CVE` int(11) DEFAULT NULL,
  `EST_EVALUACION_CVE` int(11) DEFAULT NULL,
  KEY `XIF1EVALUACION_ACT_DOC` (`EVA_CURSO_CVE`),
  KEY `XIF2EVALUACION_ACT_DOC` (`EST_EVALUACION_CVE`),
  CONSTRAINT `evaluacion_comision_ibfk_1` FOREIGN KEY (`EVA_CURSO_CVE`) REFERENCES `evaluacion_curso_comision` (`EVA_CURSO_CVE`),
  CONSTRAINT `evaluacion_comision_ibfk_2` FOREIGN KEY (`EST_EVALUACION_CVE`) REFERENCES `cestado_evaluacion` (`EST_EVALUACION_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluacion_comision`
--

LOCK TABLES `evaluacion_comision` WRITE;
/*!40000 ALTER TABLE `evaluacion_comision` DISABLE KEYS */;
/*!40000 ALTER TABLE `evaluacion_comision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluacion_curso_act_docente`
--

DROP TABLE IF EXISTS `evaluacion_curso_act_docente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evaluacion_curso_act_docente` (
  `EVA_CURSO_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `EVA_CUR_VALIDO` char(1) DEFAULT NULL,
  `EVA_CUR_PUNTOS_CURSO` int(11) DEFAULT NULL,
  `TABU_ACT_DOCENTE_CVE` int(11) DEFAULT NULL,
  `ROL_EVALUADOR_CVE` int(11) DEFAULT NULL,
  `EVA_CUR_CATEGORIA` varchar(20) DEFAULT NULL,
  `EVA_CUR_MSG_RE_EVALUACION` mediumtext,
  `EVA_CUR_PUNTOS_CURSO_ORIGINAL` int(11) DEFAULT NULL,
  `EMP_ACT_DOCENTE_CVE` int(11) DEFAULT NULL,
  `FCH_EVALUACION_CURSO_GAECUD` date DEFAULT NULL,
  PRIMARY KEY (`EVA_CURSO_CVE`),
  UNIQUE KEY `XPKEVALUACION_CURSO` (`EVA_CURSO_CVE`),
  KEY `XIF2EVALUACION_CURSO` (`TABU_ACT_DOCENTE_CVE`),
  KEY `XIF3EVALUACION_CURSO` (`ROL_EVALUADOR_CVE`),
  KEY `XIF4EVALUACION_CURSO` (`EMP_ACT_DOCENTE_CVE`),
  CONSTRAINT `evaluacion_curso_act_docente_ibfk_1` FOREIGN KEY (`TABU_ACT_DOCENTE_CVE`) REFERENCES `tabulador_act_docente` (`TABU_ACT_DOCENTE_CVE`),
  CONSTRAINT `evaluacion_curso_act_docente_ibfk_2` FOREIGN KEY (`ROL_EVALUADOR_CVE`) REFERENCES `crol_evaluador` (`ROL_EVALUADOR_CVE`),
  CONSTRAINT `evaluacion_curso_act_docente_ibfk_3` FOREIGN KEY (`EMP_ACT_DOCENTE_CVE`) REFERENCES `emp_actividad_docente` (`EMP_ACT_DOCENTE_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluacion_curso_act_docente`
--

LOCK TABLES `evaluacion_curso_act_docente` WRITE;
/*!40000 ALTER TABLE `evaluacion_curso_act_docente` DISABLE KEYS */;
/*!40000 ALTER TABLE `evaluacion_curso_act_docente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluacion_curso_act_inv_edu`
--

DROP TABLE IF EXISTS `evaluacion_curso_act_inv_edu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evaluacion_curso_act_inv_edu` (
  `EVA_CURSO_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `EVA_CUR_VALIDO` char(1) DEFAULT NULL,
  `EVA_CUR_PUNTOS_CURSO` int(11) DEFAULT NULL,
  `ROL_EVALUADOR_CVE` int(11) DEFAULT NULL,
  `EVA_CUR_CATEGORIA` varchar(20) DEFAULT NULL,
  `EVA_CUR_MSG_RE_EVALUACION` mediumtext,
  `EVA_CUR_PUNTOS_CURSO_ORIGINAL` int(11) DEFAULT NULL,
  `EAID_CVE` int(11) DEFAULT NULL,
  `TABU_ACT_INV_EDU_CVE` int(11) DEFAULT NULL,
  `FCH_EVALUACION_CURSO_GAECUD` date DEFAULT NULL,
  PRIMARY KEY (`EVA_CURSO_CVE`),
  UNIQUE KEY `XPKEVALUACION_CURSO` (`EVA_CURSO_CVE`),
  KEY `XIF2EVALUACION_CURSO` (`ROL_EVALUADOR_CVE`),
  KEY `XIF3EVALUACION_CURSO` (`TABU_ACT_INV_EDU_CVE`),
  KEY `XIF4EVALUACION_CURSO` (`EAID_CVE`),
  CONSTRAINT `evaluacion_curso_act_inv_edu_ibfk_1` FOREIGN KEY (`ROL_EVALUADOR_CVE`) REFERENCES `crol_evaluador` (`ROL_EVALUADOR_CVE`),
  CONSTRAINT `evaluacion_curso_act_inv_edu_ibfk_2` FOREIGN KEY (`TABU_ACT_INV_EDU_CVE`) REFERENCES `tabulador_act_inv_edu` (`TABU_ACT_INV_EDU_CVE`),
  CONSTRAINT `evaluacion_curso_act_inv_edu_ibfk_3` FOREIGN KEY (`EAID_CVE`) REFERENCES `emp_act_inv_edu` (`EAID_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluacion_curso_act_inv_edu`
--

LOCK TABLES `evaluacion_curso_act_inv_edu` WRITE;
/*!40000 ALTER TABLE `evaluacion_curso_act_inv_edu` DISABLE KEYS */;
/*!40000 ALTER TABLE `evaluacion_curso_act_inv_edu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluacion_curso_comision`
--

DROP TABLE IF EXISTS `evaluacion_curso_comision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evaluacion_curso_comision` (
  `EVA_CURSO_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `EVA_CUR_VALIDO` char(1) DEFAULT NULL,
  `EVA_CUR_PUNTOS_CURSO` int(11) DEFAULT NULL,
  `ROL_EVALUADOR_CVE` int(11) DEFAULT NULL,
  `EVA_CUR_CATEGORIA` varchar(20) DEFAULT NULL,
  `EVA_CUR_MSG_RE_EVALUACION` mediumtext,
  `EVA_CUR_PUNTOS_CURSO_ORIGINAL` int(11) DEFAULT NULL,
  `TABU_DIR_TESIS_CVE` int(11) DEFAULT NULL,
  `TAB_COM_ACADEMICA_CVE` int(11) DEFAULT NULL,
  `EMP_COMISION_CVE` int(11) DEFAULT NULL,
  `TABULADOR_COOR_CVE` int(11) DEFAULT NULL,
  `FCH_EVALUACION_CURSO_GAECUD` date DEFAULT NULL,
  PRIMARY KEY (`EVA_CURSO_CVE`),
  UNIQUE KEY `XPKEVALUACION_CURSO` (`EVA_CURSO_CVE`),
  KEY `XIF1EVALUACION_CURSO` (`TABU_DIR_TESIS_CVE`),
  KEY `XIF2EVALUACION_CURSO` (`TAB_COM_ACADEMICA_CVE`),
  KEY `XIF4EVALUACION_CURSO` (`ROL_EVALUADOR_CVE`),
  KEY `XIF5EVALUACION_CURSO` (`EMP_COMISION_CVE`),
  KEY `XIF6EVALUACION_CURSO` (`TABULADOR_COOR_CVE`),
  CONSTRAINT `evaluacion_curso_comision_ibfk_1` FOREIGN KEY (`TABU_DIR_TESIS_CVE`) REFERENCES `tabulador_dir_tesis` (`TABU_DIR_TESIS_CVE`),
  CONSTRAINT `evaluacion_curso_comision_ibfk_2` FOREIGN KEY (`TAB_COM_ACADEMICA_CVE`) REFERENCES `tabulador_com_academica` (`TAB_COM_ACADEMICA_CVE`),
  CONSTRAINT `evaluacion_curso_comision_ibfk_3` FOREIGN KEY (`ROL_EVALUADOR_CVE`) REFERENCES `crol_evaluador` (`ROL_EVALUADOR_CVE`),
  CONSTRAINT `evaluacion_curso_comision_ibfk_4` FOREIGN KEY (`EMP_COMISION_CVE`) REFERENCES `emp_comision` (`EMP_COMISION_CVE`),
  CONSTRAINT `evaluacion_curso_comision_ibfk_5` FOREIGN KEY (`TABULADOR_COOR_CVE`) REFERENCES `tabulador_coordinador` (`TABULADOR_COOR_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluacion_curso_comision`
--

LOCK TABLES `evaluacion_curso_comision` WRITE;
/*!40000 ALTER TABLE `evaluacion_curso_comision` DISABLE KEYS */;
/*!40000 ALTER TABLE `evaluacion_curso_comision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluacion_curso_edu_dis`
--

DROP TABLE IF EXISTS `evaluacion_curso_edu_dis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evaluacion_curso_edu_dis` (
  `EVA_CURSO_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `EVA_CUR_VALIDO` char(1) DEFAULT NULL,
  `EVA_CUR_PUNTOS_CURSO` int(11) DEFAULT NULL,
  `ROL_EVALUADOR_CVE` int(11) DEFAULT NULL,
  `EVA_CUR_CATEGORIA` varchar(20) DEFAULT NULL,
  `EVA_CUR_MSG_RE_EVALUACION` mediumtext,
  `EVA_CUR_PUNTOS_CURSO_ORIGINAL` int(11) DEFAULT NULL,
  `EMP_EDU_DISTANCIA_CVE` int(11) DEFAULT NULL,
  `FCH_EVALUACION_CURSO_GAECUD` date DEFAULT NULL,
  PRIMARY KEY (`EVA_CURSO_CVE`),
  UNIQUE KEY `XPKEVALUACION_CURSO` (`EVA_CURSO_CVE`),
  KEY `XIF1EVALUACION_CURSO` (`EMP_EDU_DISTANCIA_CVE`),
  KEY `XIF2EVALUACION_CURSO` (`ROL_EVALUADOR_CVE`),
  CONSTRAINT `evaluacion_curso_edu_dis_ibfk_1` FOREIGN KEY (`EMP_EDU_DISTANCIA_CVE`) REFERENCES `emp_educacion_distancia` (`EMP_EDU_DISTANCIA_CVE`),
  CONSTRAINT `evaluacion_curso_edu_dis_ibfk_2` FOREIGN KEY (`ROL_EVALUADOR_CVE`) REFERENCES `crol_evaluador` (`ROL_EVALUADOR_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluacion_curso_edu_dis`
--

LOCK TABLES `evaluacion_curso_edu_dis` WRITE;
/*!40000 ALTER TABLE `evaluacion_curso_edu_dis` DISABLE KEYS */;
/*!40000 ALTER TABLE `evaluacion_curso_edu_dis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluacion_curso_esp_medica`
--

DROP TABLE IF EXISTS `evaluacion_curso_esp_medica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evaluacion_curso_esp_medica` (
  `EVA_CURSO_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `EVA_CUR_VALIDO` char(1) DEFAULT NULL,
  `EVA_CUR_PUNTOS_CURSO` int(11) DEFAULT NULL,
  `TABU_ACT_DOCENTE_CVE` int(11) DEFAULT NULL,
  `ROL_EVALUADOR_CVE` int(11) DEFAULT NULL,
  `EVA_CUR_CATEGORIA` varchar(20) DEFAULT NULL,
  `EVA_CUR_MSG_RE_EVALUACION` mediumtext,
  `EVA_CUR_PUNTOS_CURSO_ORIGINAL` int(11) DEFAULT NULL,
  `EMP_ESP_MEDICA_CVE` int(11) DEFAULT NULL,
  `FCH_EVALUACION_CURSO_GAECUD` date DEFAULT NULL,
  PRIMARY KEY (`EVA_CURSO_CVE`),
  UNIQUE KEY `XPKEVALUACION_CURSO` (`EVA_CURSO_CVE`),
  KEY `XIF1EVALUACION_CURSO` (`TABU_ACT_DOCENTE_CVE`),
  KEY `XIF2EVALUACION_CURSO` (`ROL_EVALUADOR_CVE`),
  KEY `XIF3EVALUACION_CURSO` (`EMP_ESP_MEDICA_CVE`),
  CONSTRAINT `evaluacion_curso_esp_medica_ibfk_1` FOREIGN KEY (`TABU_ACT_DOCENTE_CVE`) REFERENCES `tabulador_act_docente` (`TABU_ACT_DOCENTE_CVE`),
  CONSTRAINT `evaluacion_curso_esp_medica_ibfk_2` FOREIGN KEY (`ROL_EVALUADOR_CVE`) REFERENCES `crol_evaluador` (`ROL_EVALUADOR_CVE`),
  CONSTRAINT `evaluacion_curso_esp_medica_ibfk_3` FOREIGN KEY (`EMP_ESP_MEDICA_CVE`) REFERENCES `emp_esp_medica` (`EMP_ESP_MEDICA_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluacion_curso_esp_medica`
--

LOCK TABLES `evaluacion_curso_esp_medica` WRITE;
/*!40000 ALTER TABLE `evaluacion_curso_esp_medica` DISABLE KEYS */;
/*!40000 ALTER TABLE `evaluacion_curso_esp_medica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluacion_curso_for_profesonal`
--

DROP TABLE IF EXISTS `evaluacion_curso_for_profesonal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evaluacion_curso_for_profesonal` (
  `EVA_CURSO_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `EVA_CUR_VALIDO` char(1) DEFAULT NULL,
  `EVA_CUR_PUNTOS_CURSO` int(11) DEFAULT NULL,
  `ROL_EVALUADOR_CVE` int(11) DEFAULT NULL,
  `EVA_CUR_CATEGORIA` varchar(20) DEFAULT NULL,
  `EVA_CUR_MSG_RE_EVALUACION` mediumtext,
  `EVA_CUR_PUNTOS_CURSO_ORIGINAL` int(11) DEFAULT NULL,
  `EMP_FORMACION_PROFESIONAL_CVE` int(11) DEFAULT NULL,
  `FCH_EVALUACION_CURSO_GAECUD` date DEFAULT NULL,
  PRIMARY KEY (`EVA_CURSO_CVE`),
  UNIQUE KEY `XPKEVALUACION_CURSO` (`EVA_CURSO_CVE`),
  KEY `XIF2EVALUACION_CURSO` (`ROL_EVALUADOR_CVE`),
  KEY `XIF3EVALUACION_CURSO` (`EMP_FORMACION_PROFESIONAL_CVE`),
  CONSTRAINT `evaluacion_curso_for_profesonal_ibfk_1` FOREIGN KEY (`ROL_EVALUADOR_CVE`) REFERENCES `crol_evaluador` (`ROL_EVALUADOR_CVE`),
  CONSTRAINT `evaluacion_curso_for_profesonal_ibfk_2` FOREIGN KEY (`EMP_FORMACION_PROFESIONAL_CVE`) REFERENCES `emp_formacion_profesional` (`EMP_FORMACION_PROFESIONAL_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluacion_curso_for_profesonal`
--

LOCK TABLES `evaluacion_curso_for_profesonal` WRITE;
/*!40000 ALTER TABLE `evaluacion_curso_for_profesonal` DISABLE KEYS */;
/*!40000 ALTER TABLE `evaluacion_curso_for_profesonal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluacion_curso_fpcs`
--

DROP TABLE IF EXISTS `evaluacion_curso_fpcs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evaluacion_curso_fpcs` (
  `EVA_CURSO_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `EVA_CUR_VALIDO` char(1) DEFAULT NULL,
  `EVA_CUR_PUNTOS_CURSO` int(11) DEFAULT NULL,
  `TABU_EDU_CONTINUA_CVE` int(11) DEFAULT NULL,
  `ROL_EVALUADOR_CVE` int(11) DEFAULT NULL,
  `EVA_CUR_CATEGORIA` varchar(20) DEFAULT NULL,
  `EVA_CUR_MSG_RE_EVALUACION` mediumtext,
  `EVA_CUR_PUNTOS_CURSO_ORIGINAL` int(11) DEFAULT NULL,
  `MATERIA_EDUCATIVO_CVE` int(11) DEFAULT NULL,
  `TEM_ELA_MATERIAL_CVE` int(11) DEFAULT NULL,
  `FPCS_CVE` int(11) DEFAULT NULL,
  `FCH_EVALUACION_CURSO_GAECUD` date DEFAULT NULL,
  PRIMARY KEY (`EVA_CURSO_CVE`),
  UNIQUE KEY `XPKEVALUACION_CURSO` (`EVA_CURSO_CVE`),
  KEY `XIF2EVALUACION_CURSO` (`FPCS_CVE`),
  KEY `XIF4EVALUACION_CURSO` (`TABU_EDU_CONTINUA_CVE`),
  KEY `XIF5EVALUACION_CURSO` (`ROL_EVALUADOR_CVE`),
  CONSTRAINT `evaluacion_curso_fpcs_ibfk_1` FOREIGN KEY (`FPCS_CVE`) REFERENCES `emp_for_personal_continua_salud` (`FPCS_CVE`),
  CONSTRAINT `evaluacion_curso_fpcs_ibfk_2` FOREIGN KEY (`TABU_EDU_CONTINUA_CVE`) REFERENCES `tabulador_edu_continua` (`TABU_EDU_CONTINUA_CVE`),
  CONSTRAINT `evaluacion_curso_fpcs_ibfk_3` FOREIGN KEY (`ROL_EVALUADOR_CVE`) REFERENCES `crol_evaluador` (`ROL_EVALUADOR_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluacion_curso_fpcs`
--

LOCK TABLES `evaluacion_curso_fpcs` WRITE;
/*!40000 ALTER TABLE `evaluacion_curso_fpcs` DISABLE KEYS */;
/*!40000 ALTER TABLE `evaluacion_curso_fpcs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluacion_curso_mat_edu`
--

DROP TABLE IF EXISTS `evaluacion_curso_mat_edu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evaluacion_curso_mat_edu` (
  `EVA_CURSO_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `EVA_CUR_VALIDO` char(1) DEFAULT NULL,
  `EVA_CUR_PUNTOS_CURSO` int(11) DEFAULT NULL,
  `ROL_EVALUADOR_CVE` int(11) DEFAULT NULL,
  `EVA_CUR_CATEGORIA` varchar(20) DEFAULT NULL,
  `EVA_CUR_MSG_RE_EVALUACION` mediumtext,
  `EVA_CUR_PUNTOS_CURSO_ORIGINAL` int(11) DEFAULT NULL,
  `MATERIA_EDUCATIVO_CVE` int(11) DEFAULT NULL,
  `TEM_ELA_MATERIAL_CVE` int(11) DEFAULT NULL,
  `FCH_EVALUACION_CURSO_GAECUD` date DEFAULT NULL,
  PRIMARY KEY (`EVA_CURSO_CVE`),
  UNIQUE KEY `XPKEVALUACION_CURSO` (`EVA_CURSO_CVE`),
  KEY `XIF2EVALUACION_CURSO` (`ROL_EVALUADOR_CVE`),
  KEY `XIF3EVALUACION_CURSO` (`TEM_ELA_MATERIAL_CVE`),
  KEY `XIF4EVALUACION_CURSO` (`MATERIA_EDUCATIVO_CVE`),
  CONSTRAINT `evaluacion_curso_mat_edu_ibfk_1` FOREIGN KEY (`ROL_EVALUADOR_CVE`) REFERENCES `crol_evaluador` (`ROL_EVALUADOR_CVE`),
  CONSTRAINT `evaluacion_curso_mat_edu_ibfk_2` FOREIGN KEY (`TEM_ELA_MATERIAL_CVE`) REFERENCES `tabulador_ela_meterial` (`TEM_ELA_MATERIAL_CVE`),
  CONSTRAINT `evaluacion_curso_mat_edu_ibfk_3` FOREIGN KEY (`MATERIA_EDUCATIVO_CVE`) REFERENCES `emp_materia_educativo` (`MATERIA_EDUCATIVO_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluacion_curso_mat_edu`
--

LOCK TABLES `evaluacion_curso_mat_edu` WRITE;
/*!40000 ALTER TABLE `evaluacion_curso_mat_edu` DISABLE KEYS */;
/*!40000 ALTER TABLE `evaluacion_curso_mat_edu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluacion_edu_dis`
--

DROP TABLE IF EXISTS `evaluacion_edu_dis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evaluacion_edu_dis` (
  `TOTAL_PUNTOS` int(11) DEFAULT NULL,
  `MSG_INCONFORMIDAD` varchar(200) DEFAULT NULL,
  `EVA_CURSO_CVE` int(11) DEFAULT NULL,
  `EST_EVALUACION_CVE` int(11) DEFAULT NULL,
  KEY `XIF1EVALUACION_ACT_DOC` (`EST_EVALUACION_CVE`),
  KEY `XIF2EVALUACION_ACT_DOC` (`EVA_CURSO_CVE`),
  CONSTRAINT `evaluacion_edu_dis_ibfk_1` FOREIGN KEY (`EST_EVALUACION_CVE`) REFERENCES `cestado_evaluacion` (`EST_EVALUACION_CVE`),
  CONSTRAINT `evaluacion_edu_dis_ibfk_2` FOREIGN KEY (`EVA_CURSO_CVE`) REFERENCES `evaluacion_curso_edu_dis` (`EVA_CURSO_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluacion_edu_dis`
--

LOCK TABLES `evaluacion_edu_dis` WRITE;
/*!40000 ALTER TABLE `evaluacion_edu_dis` DISABLE KEYS */;
/*!40000 ALTER TABLE `evaluacion_edu_dis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluacion_fpcs`
--

DROP TABLE IF EXISTS `evaluacion_fpcs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evaluacion_fpcs` (
  `TOTAL_PUNTOS` int(11) DEFAULT NULL,
  `MSG_INCONFORMIDAD` varchar(200) DEFAULT NULL,
  `EVA_CURSO_CVE` int(11) DEFAULT NULL,
  `EST_EVALUACION_CVE` int(11) DEFAULT NULL,
  KEY `XIF1EVALUACION_ACT_DOC` (`EVA_CURSO_CVE`),
  KEY `XIF2EVALUACION_ACT_DOC` (`EST_EVALUACION_CVE`),
  CONSTRAINT `evaluacion_fpcs_ibfk_1` FOREIGN KEY (`EVA_CURSO_CVE`) REFERENCES `evaluacion_curso_fpcs` (`EVA_CURSO_CVE`),
  CONSTRAINT `evaluacion_fpcs_ibfk_2` FOREIGN KEY (`EST_EVALUACION_CVE`) REFERENCES `cestado_evaluacion` (`EST_EVALUACION_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluacion_fpcs`
--

LOCK TABLES `evaluacion_fpcs` WRITE;
/*!40000 ALTER TABLE `evaluacion_fpcs` DISABLE KEYS */;
/*!40000 ALTER TABLE `evaluacion_fpcs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluacion_mat_edu`
--

DROP TABLE IF EXISTS `evaluacion_mat_edu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evaluacion_mat_edu` (
  `TOTAL_PUNTOS` int(11) DEFAULT NULL,
  `MSG_INCONFORMIDAD` varchar(200) DEFAULT NULL,
  `EVA_CURSO_CVE` int(11) DEFAULT NULL,
  `EST_EVALUACION_CVE` int(11) DEFAULT NULL,
  KEY `XIF1EVALUACION_ACT_DOC` (`EVA_CURSO_CVE`),
  KEY `XIF2EVALUACION_ACT_DOC` (`EST_EVALUACION_CVE`),
  CONSTRAINT `evaluacion_mat_edu_ibfk_1` FOREIGN KEY (`EVA_CURSO_CVE`) REFERENCES `evaluacion_curso_mat_edu` (`EVA_CURSO_CVE`),
  CONSTRAINT `evaluacion_mat_edu_ibfk_2` FOREIGN KEY (`EST_EVALUACION_CVE`) REFERENCES `cestado_evaluacion` (`EST_EVALUACION_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluacion_mat_edu`
--

LOCK TABLES `evaluacion_mat_edu` WRITE;
/*!40000 ALTER TABLE `evaluacion_mat_edu` DISABLE KEYS */;
/*!40000 ALTER TABLE `evaluacion_mat_edu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hist_beca_validacion_curso`
--

DROP TABLE IF EXISTS `hist_beca_validacion_curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hist_beca_validacion_curso` (
  `VALIDACION_CVE` int(11) DEFAULT NULL,
  `VAL_CUR_EST_CVE` int(11) DEFAULT NULL,
  `HIST_VAL_CURSO_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `VAL_CUR_COMENTARIO` varchar(2000) DEFAULT NULL,
  `VAL_CUR_FCH` date DEFAULT NULL,
  `EMP_BECA_CVE` int(11) DEFAULT NULL,
  PRIMARY KEY (`HIST_VAL_CURSO_CVE`),
  UNIQUE KEY `XPKHIST_BECA_VALIDACION_CURSO` (`HIST_VAL_CURSO_CVE`),
  KEY `XIF1HIST_BECA_VALIDACION_CURSO` (`VAL_CUR_EST_CVE`),
  KEY `XIF2HIST_BECA_VALIDACION_CURSO` (`VALIDACION_CVE`),
  KEY `XIF3HIST_BECA_VALIDACION_CURSO` (`EMP_BECA_CVE`),
  CONSTRAINT `hist_beca_validacion_curso_ibfk_1` FOREIGN KEY (`VAL_CUR_EST_CVE`) REFERENCES `cvalidacion_curso_estado` (`VAL_CUR_EST_CVE`),
  CONSTRAINT `hist_beca_validacion_curso_ibfk_2` FOREIGN KEY (`VALIDACION_CVE`) REFERENCES `hist_validacion` (`VALIDACION_CVE`),
  CONSTRAINT `hist_beca_validacion_curso_ibfk_3` FOREIGN KEY (`EMP_BECA_CVE`) REFERENCES `emp_beca` (`EMP_BECA_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hist_beca_validacion_curso`
--

LOCK TABLES `hist_beca_validacion_curso` WRITE;
/*!40000 ALTER TABLE `hist_beca_validacion_curso` DISABLE KEYS */;
/*!40000 ALTER TABLE `hist_beca_validacion_curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hist_comision_validacion_curso`
--

DROP TABLE IF EXISTS `hist_comision_validacion_curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hist_comision_validacion_curso` (
  `VALIDACION_CVE` int(11) DEFAULT NULL,
  `VAL_CUR_EST_CVE` int(11) DEFAULT NULL,
  `HIST_VAL_CURSO_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `VAL_CUR_COMENTARIO` varchar(2000) DEFAULT NULL,
  `VAL_CUR_FCH` date DEFAULT NULL,
  `EMP_COMISION_CVE` int(11) DEFAULT NULL,
  PRIMARY KEY (`HIST_VAL_CURSO_CVE`),
  UNIQUE KEY `XPKHIST_COMISION_VALIDACION_CURSO` (`HIST_VAL_CURSO_CVE`),
  KEY `XIF1HIST_COMISION_VALIDACION_CURSO` (`VALIDACION_CVE`),
  KEY `XIF2HIST_COMISION_VALIDACION_CURSO` (`VAL_CUR_EST_CVE`),
  KEY `XIF3HIST_COMISION_VALIDACION_CURSO` (`EMP_COMISION_CVE`),
  CONSTRAINT `hist_comision_validacion_curso_ibfk_1` FOREIGN KEY (`VALIDACION_CVE`) REFERENCES `hist_validacion` (`VALIDACION_CVE`),
  CONSTRAINT `hist_comision_validacion_curso_ibfk_2` FOREIGN KEY (`VAL_CUR_EST_CVE`) REFERENCES `cvalidacion_curso_estado` (`VAL_CUR_EST_CVE`),
  CONSTRAINT `hist_comision_validacion_curso_ibfk_3` FOREIGN KEY (`EMP_COMISION_CVE`) REFERENCES `emp_comision` (`EMP_COMISION_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hist_comision_validacion_curso`
--

LOCK TABLES `hist_comision_validacion_curso` WRITE;
/*!40000 ALTER TABLE `hist_comision_validacion_curso` DISABLE KEYS */;
/*!40000 ALTER TABLE `hist_comision_validacion_curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hist_eaid_validacion_curso`
--

DROP TABLE IF EXISTS `hist_eaid_validacion_curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hist_eaid_validacion_curso` (
  `VALIDACION_CVE` int(11) DEFAULT NULL,
  `VAL_CUR_EST_CVE` int(11) DEFAULT NULL,
  `HIST_VAL_CURSO_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `VAL_CUR_COMENTARIO` varchar(2000) DEFAULT NULL,
  `VAL_CUR_FCH` date DEFAULT NULL,
  `EAID_CVE` int(11) DEFAULT NULL,
  PRIMARY KEY (`HIST_VAL_CURSO_CVE`),
  UNIQUE KEY `XPKHIST_EAID_VALIDACION_CURSO` (`HIST_VAL_CURSO_CVE`),
  KEY `XIF1HIST_EAID_VALIDACION_CURSO` (`VAL_CUR_EST_CVE`),
  KEY `XIF2HIST_EAID_VALIDACION_CURSO` (`VALIDACION_CVE`),
  KEY `XIF3HIST_EAID_VALIDACION_CURSO` (`EAID_CVE`),
  CONSTRAINT `hist_eaid_validacion_curso_ibfk_1` FOREIGN KEY (`VAL_CUR_EST_CVE`) REFERENCES `cvalidacion_curso_estado` (`VAL_CUR_EST_CVE`),
  CONSTRAINT `hist_eaid_validacion_curso_ibfk_2` FOREIGN KEY (`VALIDACION_CVE`) REFERENCES `hist_validacion` (`VALIDACION_CVE`),
  CONSTRAINT `hist_eaid_validacion_curso_ibfk_3` FOREIGN KEY (`EAID_CVE`) REFERENCES `emp_act_inv_edu` (`EAID_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hist_eaid_validacion_curso`
--

LOCK TABLES `hist_eaid_validacion_curso` WRITE;
/*!40000 ALTER TABLE `hist_eaid_validacion_curso` DISABLE KEYS */;
/*!40000 ALTER TABLE `hist_eaid_validacion_curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hist_ecc_validacion_curso`
--

DROP TABLE IF EXISTS `hist_ecc_validacion_curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hist_ecc_validacion_curso` (
  `VALIDACION_CVE` int(11) DEFAULT NULL,
  `VAL_CUR_EST_CVE` int(11) DEFAULT NULL,
  `HIST_VAL_CURSO_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `VAL_CUR_COMENTARIO` varchar(2000) DEFAULT NULL,
  `VAL_CUR_FCH` date DEFAULT NULL,
  `ECC_CVE` int(11) DEFAULT NULL,
  PRIMARY KEY (`HIST_VAL_CURSO_CVE`),
  UNIQUE KEY `XPKHIST_ECC_VALIDACION_CURSO` (`HIST_VAL_CURSO_CVE`),
  KEY `XIF1HIST_ECC_VALIDACION_CURSO` (`VAL_CUR_EST_CVE`),
  KEY `XIF2HIST_ECC_VALIDACION_CURSO` (`VALIDACION_CVE`),
  KEY `XIF3HIST_ECC_VALIDACION_CURSO` (`ECC_CVE`),
  CONSTRAINT `hist_ecc_validacion_curso_ibfk_1` FOREIGN KEY (`VAL_CUR_EST_CVE`) REFERENCES `cvalidacion_curso_estado` (`VAL_CUR_EST_CVE`),
  CONSTRAINT `hist_ecc_validacion_curso_ibfk_2` FOREIGN KEY (`VALIDACION_CVE`) REFERENCES `hist_validacion` (`VALIDACION_CVE`),
  CONSTRAINT `hist_ecc_validacion_curso_ibfk_3` FOREIGN KEY (`ECC_CVE`) REFERENCES `emp_ciclos_clinicos` (`ECC_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hist_ecc_validacion_curso`
--

LOCK TABLES `hist_ecc_validacion_curso` WRITE;
/*!40000 ALTER TABLE `hist_ecc_validacion_curso` DISABLE KEYS */;
/*!40000 ALTER TABLE `hist_ecc_validacion_curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hist_edd_validacion_curso`
--

DROP TABLE IF EXISTS `hist_edd_validacion_curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hist_edd_validacion_curso` (
  `VALIDACION_CVE` int(11) DEFAULT NULL,
  `VAL_CUR_EST_CVE` int(11) DEFAULT NULL,
  `HIST_VAL_CURSO_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `VAL_CUR_COMENTARIO` varchar(2000) DEFAULT NULL,
  `VAL_CUR_FCH` date DEFAULT NULL,
  `EMP_EDU_DISTANCIA_CVE` int(11) DEFAULT NULL,
  PRIMARY KEY (`HIST_VAL_CURSO_CVE`),
  UNIQUE KEY `XPKHIST_EDD_VALIDACION_CURSO` (`HIST_VAL_CURSO_CVE`),
  KEY `XIF1HIST_EDD_VALIDACION_CURSO` (`VALIDACION_CVE`),
  KEY `XIF2HIST_EDD_VALIDACION_CURSO` (`VAL_CUR_EST_CVE`),
  KEY `XIF3HIST_EDD_VALIDACION_CURSO` (`EMP_EDU_DISTANCIA_CVE`),
  CONSTRAINT `hist_edd_validacion_curso_ibfk_1` FOREIGN KEY (`VALIDACION_CVE`) REFERENCES `hist_validacion` (`VALIDACION_CVE`),
  CONSTRAINT `hist_edd_validacion_curso_ibfk_2` FOREIGN KEY (`VAL_CUR_EST_CVE`) REFERENCES `cvalidacion_curso_estado` (`VAL_CUR_EST_CVE`),
  CONSTRAINT `hist_edd_validacion_curso_ibfk_3` FOREIGN KEY (`EMP_EDU_DISTANCIA_CVE`) REFERENCES `emp_educacion_distancia` (`EMP_EDU_DISTANCIA_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hist_edd_validacion_curso`
--

LOCK TABLES `hist_edd_validacion_curso` WRITE;
/*!40000 ALTER TABLE `hist_edd_validacion_curso` DISABLE KEYS */;
/*!40000 ALTER TABLE `hist_edd_validacion_curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hist_edis_validacion_curso`
--

DROP TABLE IF EXISTS `hist_edis_validacion_curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hist_edis_validacion_curso` (
  `VALIDACION_CVE` int(11) DEFAULT NULL,
  `VAL_CUR_EST_CVE` int(11) DEFAULT NULL,
  `HIST_VAL_CURSO_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `VAL_CUR_COMENTARIO` varchar(2000) DEFAULT NULL,
  `VAL_CUR_FCH` date DEFAULT NULL,
  `EDIS_CVE` int(11) DEFAULT NULL,
  PRIMARY KEY (`HIST_VAL_CURSO_CVE`),
  UNIQUE KEY `XPKHIST_EDIS_VALIDACION_CURSO` (`HIST_VAL_CURSO_CVE`),
  KEY `XIF1HIST_EDIS_VALIDACION_CURSO` (`VAL_CUR_EST_CVE`),
  KEY `XIF2HIST_EDIS_VALIDACION_CURSO` (`VALIDACION_CVE`),
  KEY `XIF3HIST_EDIS_VALIDACION_CURSO` (`EDIS_CVE`),
  CONSTRAINT `hist_edis_validacion_curso_ibfk_1` FOREIGN KEY (`VAL_CUR_EST_CVE`) REFERENCES `cvalidacion_curso_estado` (`VAL_CUR_EST_CVE`),
  CONSTRAINT `hist_edis_validacion_curso_ibfk_2` FOREIGN KEY (`VALIDACION_CVE`) REFERENCES `hist_validacion` (`VALIDACION_CVE`),
  CONSTRAINT `hist_edis_validacion_curso_ibfk_3` FOREIGN KEY (`EDIS_CVE`) REFERENCES `emp_desa_inv_salud` (`EDIS_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hist_edis_validacion_curso`
--

LOCK TABLES `hist_edis_validacion_curso` WRITE;
/*!40000 ALTER TABLE `hist_edis_validacion_curso` DISABLE KEYS */;
/*!40000 ALTER TABLE `hist_edis_validacion_curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hist_eem_validacion_curso`
--

DROP TABLE IF EXISTS `hist_eem_validacion_curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hist_eem_validacion_curso` (
  `VALIDACION_CVE` int(11) DEFAULT NULL,
  `VAL_CUR_EST_CVE` int(11) DEFAULT NULL,
  `HIST_VAL_CURSO_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `VAL_CUR_COMENTARIO` varchar(2000) DEFAULT NULL,
  `VAL_CUR_FCH` date DEFAULT NULL,
  `EMP_ESP_MEDICA_CVE` int(11) DEFAULT NULL,
  PRIMARY KEY (`HIST_VAL_CURSO_CVE`),
  UNIQUE KEY `XPKHIST_EEM_VALIDACION_CURSO` (`HIST_VAL_CURSO_CVE`),
  KEY `XIF1HIST_EEM_VALIDACION_CURSO` (`VAL_CUR_EST_CVE`),
  KEY `XIF2HIST_EEM_VALIDACION_CURSO` (`VALIDACION_CVE`),
  KEY `XIF3HIST_EEM_VALIDACION_CURSO` (`EMP_ESP_MEDICA_CVE`),
  CONSTRAINT `hist_eem_validacion_curso_ibfk_1` FOREIGN KEY (`VAL_CUR_EST_CVE`) REFERENCES `cvalidacion_curso_estado` (`VAL_CUR_EST_CVE`),
  CONSTRAINT `hist_eem_validacion_curso_ibfk_2` FOREIGN KEY (`VALIDACION_CVE`) REFERENCES `hist_validacion` (`VALIDACION_CVE`),
  CONSTRAINT `hist_eem_validacion_curso_ibfk_3` FOREIGN KEY (`EMP_ESP_MEDICA_CVE`) REFERENCES `emp_esp_medica` (`EMP_ESP_MEDICA_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hist_eem_validacion_curso`
--

LOCK TABLES `hist_eem_validacion_curso` WRITE;
/*!40000 ALTER TABLE `hist_eem_validacion_curso` DISABLE KEYS */;
/*!40000 ALTER TABLE `hist_eem_validacion_curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hist_efp_validacion_curso`
--

DROP TABLE IF EXISTS `hist_efp_validacion_curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hist_efp_validacion_curso` (
  `VALIDACION_CVE` int(11) DEFAULT NULL,
  `VAL_CUR_EST_CVE` int(11) DEFAULT NULL,
  `HIST_VAL_CURSO_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `VAL_CUR_COMENTARIO` varchar(2000) DEFAULT NULL,
  `VAL_CUR_FCH` date DEFAULT NULL,
  `EMP_FORMACION_PROFESIONAL_CVE` int(11) DEFAULT NULL,
  PRIMARY KEY (`HIST_VAL_CURSO_CVE`),
  UNIQUE KEY `XPKHIST_EFP_VALIDACION_CURSO` (`HIST_VAL_CURSO_CVE`),
  KEY `XIF1HIST_EFP_VALIDACION_CURSO` (`EMP_FORMACION_PROFESIONAL_CVE`),
  KEY `XIF2HIST_EFP_VALIDACION_CURSO` (`VALIDACION_CVE`),
  KEY `XIF3HIST_EFP_VALIDACION_CURSO` (`VAL_CUR_EST_CVE`),
  CONSTRAINT `hist_efp_validacion_curso_ibfk_1` FOREIGN KEY (`EMP_FORMACION_PROFESIONAL_CVE`) REFERENCES `emp_formacion_profesional` (`EMP_FORMACION_PROFESIONAL_CVE`),
  CONSTRAINT `hist_efp_validacion_curso_ibfk_2` FOREIGN KEY (`VALIDACION_CVE`) REFERENCES `hist_validacion` (`VALIDACION_CVE`),
  CONSTRAINT `hist_efp_validacion_curso_ibfk_3` FOREIGN KEY (`VAL_CUR_EST_CVE`) REFERENCES `cvalidacion_curso_estado` (`VAL_CUR_EST_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hist_efp_validacion_curso`
--

LOCK TABLES `hist_efp_validacion_curso` WRITE;
/*!40000 ALTER TABLE `hist_efp_validacion_curso` DISABLE KEYS */;
/*!40000 ALTER TABLE `hist_efp_validacion_curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hist_efpd_validacion_curso`
--

DROP TABLE IF EXISTS `hist_efpd_validacion_curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hist_efpd_validacion_curso` (
  `VALIDACION_CVE` int(11) DEFAULT NULL,
  `VAL_CUR_EST_CVE` int(11) DEFAULT NULL,
  `HIST_VAL_CURSO_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `VAL_CUR_COMENTARIO` varchar(2000) DEFAULT NULL,
  `VAL_CUR_FCH` date DEFAULT NULL,
  `EMP_ACT_DOCENTE_CVE` int(11) DEFAULT NULL,
  PRIMARY KEY (`HIST_VAL_CURSO_CVE`),
  UNIQUE KEY `XPKHIST_EFPD_VALIDACION_CURSO` (`HIST_VAL_CURSO_CVE`),
  KEY `XIF1HIST_EFPD_VALIDACION_CURSO` (`EMP_ACT_DOCENTE_CVE`),
  KEY `XIF2HIST_EFPD_VALIDACION_CURSO` (`VALIDACION_CVE`),
  KEY `XIF3HIST_EFPD_VALIDACION_CURSO` (`VAL_CUR_EST_CVE`),
  CONSTRAINT `hist_efpd_validacion_curso_ibfk_1` FOREIGN KEY (`EMP_ACT_DOCENTE_CVE`) REFERENCES `emp_actividad_docente` (`EMP_ACT_DOCENTE_CVE`),
  CONSTRAINT `hist_efpd_validacion_curso_ibfk_2` FOREIGN KEY (`VALIDACION_CVE`) REFERENCES `hist_validacion` (`VALIDACION_CVE`),
  CONSTRAINT `hist_efpd_validacion_curso_ibfk_3` FOREIGN KEY (`VAL_CUR_EST_CVE`) REFERENCES `cvalidacion_curso_estado` (`VAL_CUR_EST_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hist_efpd_validacion_curso`
--

LOCK TABLES `hist_efpd_validacion_curso` WRITE;
/*!40000 ALTER TABLE `hist_efpd_validacion_curso` DISABLE KEYS */;
/*!40000 ALTER TABLE `hist_efpd_validacion_curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hist_fpcs_validacion_curso`
--

DROP TABLE IF EXISTS `hist_fpcs_validacion_curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hist_fpcs_validacion_curso` (
  `VALIDACION_CVE` int(11) DEFAULT NULL,
  `VAL_CUR_EST_CVE` int(11) DEFAULT NULL,
  `HIST_VAL_CURSO_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `VAL_CUR_COMENTARIO` varchar(2000) DEFAULT NULL,
  `VAL_CUR_FCH` date DEFAULT NULL,
  `FPCS_CVE` int(11) DEFAULT NULL,
  PRIMARY KEY (`HIST_VAL_CURSO_CVE`),
  UNIQUE KEY `XPKHIST_FPCS_VALIDACION_CURSO` (`HIST_VAL_CURSO_CVE`),
  KEY `XIF1HIST_FPCS_VALIDACION_CURSO` (`FPCS_CVE`),
  KEY `XIF2HIST_FPCS_VALIDACION_CURSO` (`VAL_CUR_EST_CVE`),
  KEY `XIF3HIST_FPCS_VALIDACION_CURSO` (`VALIDACION_CVE`),
  CONSTRAINT `hist_fpcs_validacion_curso_ibfk_1` FOREIGN KEY (`FPCS_CVE`) REFERENCES `emp_for_personal_continua_salud` (`FPCS_CVE`),
  CONSTRAINT `hist_fpcs_validacion_curso_ibfk_2` FOREIGN KEY (`VAL_CUR_EST_CVE`) REFERENCES `cvalidacion_curso_estado` (`VAL_CUR_EST_CVE`),
  CONSTRAINT `hist_fpcs_validacion_curso_ibfk_3` FOREIGN KEY (`VALIDACION_CVE`) REFERENCES `hist_validacion` (`VALIDACION_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hist_fpcs_validacion_curso`
--

LOCK TABLES `hist_fpcs_validacion_curso` WRITE;
/*!40000 ALTER TABLE `hist_fpcs_validacion_curso` DISABLE KEYS */;
/*!40000 ALTER TABLE `hist_fpcs_validacion_curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hist_me_validacion_curso`
--

DROP TABLE IF EXISTS `hist_me_validacion_curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hist_me_validacion_curso` (
  `VALIDACION_CVE` int(11) DEFAULT NULL,
  `VAL_CUR_EST_CVE` int(11) DEFAULT NULL,
  `HIST_VAL_CURSO_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `VAL_CUR_COMENTARIO` varchar(2000) DEFAULT NULL,
  `VAL_CUR_FCH` date DEFAULT NULL,
  `FPCS_CVE` int(11) DEFAULT NULL,
  `MATERIA_EDUCATIVO_CVE` int(11) DEFAULT NULL,
  PRIMARY KEY (`HIST_VAL_CURSO_CVE`),
  UNIQUE KEY `XPKHIST_ME_VALIDACION_CURSO` (`HIST_VAL_CURSO_CVE`),
  KEY `XIF1HIST_ME_VALIDACION_CURSO` (`VALIDACION_CVE`),
  KEY `XIF2HIST_ME_VALIDACION_CURSO` (`VALIDACION_CVE`),
  KEY `XIF3HIST_ME_VALIDACION_CURSO` (`MATERIA_EDUCATIVO_CVE`),
  CONSTRAINT `hist_me_validacion_curso_ibfk_1` FOREIGN KEY (`VALIDACION_CVE`) REFERENCES `hist_validacion` (`VALIDACION_CVE`),
  CONSTRAINT `hist_me_validacion_curso_ibfk_2` FOREIGN KEY (`VALIDACION_CVE`) REFERENCES `hist_validacion` (`VALIDACION_CVE`),
  CONSTRAINT `hist_me_validacion_curso_ibfk_3` FOREIGN KEY (`MATERIA_EDUCATIVO_CVE`) REFERENCES `emp_materia_educativo` (`MATERIA_EDUCATIVO_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hist_me_validacion_curso`
--

LOCK TABLES `hist_me_validacion_curso` WRITE;
/*!40000 ALTER TABLE `hist_me_validacion_curso` DISABLE KEYS */;
/*!40000 ALTER TABLE `hist_me_validacion_curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hist_validacion`
--

DROP TABLE IF EXISTS `hist_validacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hist_validacion` (
  `VAL_CON_CVE` int(11) DEFAULT NULL,
  `VALIDACION_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `VAL_ESTADO_CVE` int(11) DEFAULT NULL,
  `VALIDADOR_CVE` int(11) DEFAULT NULL,
  `VAL_FCH` varchar(20) DEFAULT NULL,
  `VAL_COMENTARIO` varchar(2000) DEFAULT NULL,
  `EMPLEADO_CVE` int(11) DEFAULT NULL,
  PRIMARY KEY (`VALIDACION_CVE`),
  UNIQUE KEY `XPKVALIDACION` (`VALIDACION_CVE`),
  KEY `XIF1VALIDACION` (`VAL_CON_CVE`),
  KEY `XIF2VALIDACION` (`VAL_ESTADO_CVE`),
  KEY `XIF3VALIDACION` (`VALIDADOR_CVE`),
  KEY `XIF4VALIDACION` (`EMPLEADO_CVE`),
  CONSTRAINT `hist_validacion_ibfk_1` FOREIGN KEY (`VAL_CON_CVE`) REFERENCES `validacion_convocatoria` (`VAL_CON_CVE`),
  CONSTRAINT `hist_validacion_ibfk_2` FOREIGN KEY (`VAL_ESTADO_CVE`) REFERENCES `cvalidacion_estado` (`VAL_ESTADO_CVE`),
  CONSTRAINT `hist_validacion_ibfk_3` FOREIGN KEY (`VALIDADOR_CVE`) REFERENCES `validador` (`VALIDADOR_CVE`),
  CONSTRAINT `hist_validacion_ibfk_4` FOREIGN KEY (`EMPLEADO_CVE`) REFERENCES `empleado` (`EMPLEADO_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hist_validacion`
--

LOCK TABLES `hist_validacion` WRITE;
/*!40000 ALTER TABLE `hist_validacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `hist_validacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `licenciatura`
--

DROP TABLE IF EXISTS `licenciatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `licenciatura` (
  `LICENCIATURA_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `LIC_NOMBRE` varchar(25) NOT NULL,
  `TIP_LICENCIATURA_CVE` int(11) DEFAULT NULL,
  PRIMARY KEY (`LICENCIATURA_CVE`),
  UNIQUE KEY `XPKLICENCIATURA` (`LICENCIATURA_CVE`),
  KEY `XIF1LICENCIATURA` (`TIP_LICENCIATURA_CVE`),
  CONSTRAINT `licenciatura_ibfk_1` FOREIGN KEY (`TIP_LICENCIATURA_CVE`) REFERENCES `ctipo_licenciatura` (`TIP_LICENCIATURA_CVE`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `licenciatura`
--

LOCK TABLES `licenciatura` WRITE;
/*!40000 ALTER TABLE `licenciatura` DISABLE KEYS */;
INSERT INTO `licenciatura` VALUES (1,'Medicina',NULL),(2,'Enfermería',NULL),(3,'Nutrición',NULL),(4,'Odontología',NULL),(5,'Psicología',NULL),(6,'Optometría',NULL);
/*!40000 ALTER TABLE `licenciatura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_inicio_sesion`
--

DROP TABLE IF EXISTS `log_inicio_sesion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_inicio_sesion` (
  `LOG_INI_SES_FCH_INICIO` timestamp NULL DEFAULT NULL,
  `LOG_INI_SES_IP` varchar(20) DEFAULT NULL,
  `USUARIO_CVE` int(11) DEFAULT NULL,
  `LOG_INI_S_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `INICIO_SATISFACTORIO` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`LOG_INI_S_CVE`),
  UNIQUE KEY `XPKLOG_INICIO_SESION` (`LOG_INI_S_CVE`),
  KEY `XIF1LOG_INICIO_SESION` (`USUARIO_CVE`),
  CONSTRAINT `log_inicio_sesion_ibfk_1` FOREIGN KEY (`USUARIO_CVE`) REFERENCES `usuario` (`USUARIO_CVE`)
) ENGINE=InnoDB AUTO_INCREMENT=255 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_inicio_sesion`
--

LOCK TABLES `log_inicio_sesion` WRITE;
/*!40000 ALTER TABLE `log_inicio_sesion` DISABLE KEYS */;
INSERT INTO `log_inicio_sesion` VALUES ('2016-06-08 18:09:25','NULL',1,1,1),('2016-06-09 16:54:53','NULL',1,2,1),('2016-06-09 17:55:40','NULL',1,3,1),('2016-06-09 18:07:13','NULL',1,4,1),('2016-06-09 18:11:11','NULL',1,5,1),('2016-06-09 18:13:30','NULL',1,6,1),('2016-06-09 18:45:35','NULL',1,7,0),('2016-06-09 20:03:19','NULL',1,8,0),('2016-06-09 20:05:23','NULL',1,9,1),('2016-06-09 20:20:44','NULL',1,10,1),('2016-06-09 21:05:34','NULL',1,11,1),('2016-06-09 21:58:15','NULL',1,12,1),('2016-06-09 21:59:27','NULL',1,13,1),('2016-06-09 22:28:11','NULL',1,14,1),('2016-06-09 22:37:55','NULL',1,15,1),('2016-06-09 22:39:39','NULL',1,16,1),('2016-06-09 22:40:23','NULL',1,17,1),('2016-06-09 22:41:22','NULL',1,18,1),('2016-06-09 23:28:16','NULL',1,19,1),('2016-06-10 15:53:37','NULL',1,20,1),('2016-06-14 23:19:42','NULL',1,21,1),('2016-06-15 00:02:03','NULL',1,22,1),('2016-06-15 14:25:56','NULL',1,23,1),('2016-06-15 18:32:38','NULL',1,24,1),('2016-06-16 15:06:12','NULL',1,25,1),('2016-06-16 20:31:15','NULL',1,26,1),('2016-06-17 16:09:38','NULL',1,27,1),('2016-06-17 17:41:40','NULL',2,28,1),('2016-06-17 17:42:31','NULL',2,29,1),('2016-06-17 17:51:12','NULL',1,30,1),('2016-06-17 17:55:23','NULL',2,31,1),('2016-06-17 18:00:04','NULL',2,32,1),('2016-06-17 23:53:47','NULL',1,33,1),('2016-06-20 21:36:51','NULL',1,35,1),('2016-06-21 15:15:22','NULL',1,36,1),('2016-06-22 17:02:48','NULL',1,37,1),('2016-06-22 19:38:52','NULL',1,38,1),('2016-06-22 23:23:57','NULL',1,39,1),('2016-06-22 23:26:11','NULL',1,40,1),('2016-06-23 14:01:46','NULL',1,41,1),('2016-06-23 18:27:56','NULL',1,42,1),('2016-06-24 14:43:36','NULL',1,43,1),('2016-06-27 15:37:38','NULL',1,44,1),('2016-06-28 18:36:15','NULL',1,45,1),('2016-06-28 18:39:34','NULL',1,46,1),('2016-06-29 15:12:28','NULL',1,47,1),('2016-06-30 16:31:28','NULL',1,48,1),('2016-07-01 19:19:27','NULL',1,49,1),('2016-07-04 19:34:06','NULL',1,50,1),('2016-07-04 21:16:30','NULL',1,51,1),('2016-07-04 21:19:51','NULL',1,52,1),('2016-07-04 21:20:44','NULL',1,53,1),('2016-07-05 16:59:45','NULL',1,54,1),('2016-07-05 21:33:14','NULL',1,55,1),('2016-07-06 14:41:09','NULL',1,56,1),('2016-07-06 19:46:49','NULL',1,57,1),('2016-07-08 16:01:15','NULL',1,58,1),('2016-07-08 17:13:47','NULL',1,59,1),('2016-07-08 20:09:35','NULL',1,60,1),('2016-07-11 14:45:32','NULL',1,61,1),('2016-07-11 16:09:37','NULL',1,62,1),('2016-07-11 20:59:04','NULL',1,63,1),('2016-07-12 14:47:25','NULL',1,64,1),('2016-07-13 14:50:10','NULL',1,65,1),('2016-07-14 15:43:41','NULL',1,66,1),('2016-07-14 18:17:26','NULL',1,67,1),('2016-07-14 20:32:48','NULL',1,68,1),('2016-07-14 23:24:34','NULL',1,69,1),('2016-07-15 01:13:01','NULL',1,70,1),('2016-07-15 14:23:03','NULL',1,71,1),('2016-07-18 14:32:19','NULL',1,72,1),('2016-07-19 14:25:17','NULL',1,73,1),('2016-07-19 14:27:17','NULL',1,74,1),('2016-07-19 14:30:52','NULL',1,75,1),('2016-07-19 15:52:12','NULL',1,76,1),('2016-07-19 19:02:03','NULL',1,77,1),('2016-07-19 21:22:11','NULL',1,78,1),('2016-07-20 14:48:09','NULL',1,79,1),('2016-07-20 16:59:27','NULL',1,80,1),('2016-07-20 17:00:58','NULL',1,81,1),('2016-07-20 17:22:49','NULL',1,82,1),('2016-07-20 17:29:50','NULL',1,83,1),('2016-07-20 17:35:20','NULL',1,84,1),('2016-07-20 17:57:09','NULL',1,85,1),('2016-07-20 20:01:50','NULL',1,86,1),('2016-07-20 22:52:51','NULL',1,87,1),('2016-07-21 02:30:03','NULL',1,88,1),('2016-07-21 15:16:19','NULL',1,89,1),('2016-07-21 15:39:49','NULL',1,90,1),('2016-07-21 15:43:28','NULL',1,91,1),('2016-07-21 15:48:05','NULL',1,92,1),('2016-07-21 19:08:55','NULL',274,93,1),('2016-07-21 21:50:53','NULL',1,94,1),('2016-07-21 21:52:00','NULL',1,95,1),('2016-07-21 21:53:43','NULL',1,96,1),('2016-07-21 21:55:07','NULL',1,97,1),('2016-07-21 21:58:00','NULL',1,98,1),('2016-07-21 22:02:58','NULL',1,99,1),('2016-07-21 22:04:16','NULL',1,100,1),('2016-07-21 22:06:15','NULL',1,101,1),('2016-07-21 22:07:54','NULL',1,102,1),('2016-07-21 22:09:58','NULL',1,103,1),('2016-07-21 22:15:11','NULL',1,104,1),('2016-07-21 22:15:56','NULL',1,105,1),('2016-07-21 22:16:04','NULL',1,106,1),('2016-07-21 22:16:13','NULL',1,107,1),('2016-07-21 22:16:47','NULL',1,108,1),('2016-07-21 22:19:44','NULL',1,109,1),('2016-07-21 22:20:01','NULL',1,110,1),('2016-07-21 22:20:16','NULL',1,111,1),('2016-07-21 22:30:56','NULL',1,112,1),('2016-07-21 22:32:31','NULL',1,113,1),('2016-07-21 22:32:53','NULL',1,114,1),('2016-07-21 22:35:03','NULL',1,115,1),('2016-07-21 23:38:42','NULL',1,118,1),('2016-07-21 23:44:21','NULL',1,120,1),('2016-07-22 00:03:02','NULL',1,121,1),('2016-07-22 00:08:44','NULL',283,122,1),('2016-07-22 00:40:23','NULL',1,123,1),('2016-07-22 01:15:25','NULL',1,124,1),('2016-07-22 01:17:11','NULL',274,125,1),('2016-07-22 01:28:02','NULL',1,126,1),('2016-07-22 01:50:32','NULL',1,127,1),('2016-07-22 01:53:37','NULL',1,128,1),('2016-07-22 01:54:50','NULL',1,129,1),('2016-07-22 13:51:15','NULL',274,130,1),('2016-07-22 14:02:32','NULL',274,131,1),('2016-07-22 15:37:39','NULL',1,132,1),('2016-07-22 16:15:20','NULL',274,133,1),('2016-07-23 15:14:25','NULL',1,134,1),('2016-07-23 15:59:53','NULL',274,135,1),('2016-07-23 16:53:36','NULL',1,136,1),('2016-07-23 20:37:03','NULL',1,137,1),('2016-07-24 01:56:33','NULL',1,138,1),('2016-07-25 13:45:37','NULL',274,139,1),('2016-07-25 14:28:28','NULL',1,140,1),('2016-07-25 17:56:44','NULL',274,141,1),('2016-07-25 17:59:15','NULL',274,142,1),('2016-07-25 18:01:09','NULL',274,143,1),('2016-07-25 18:02:09','NULL',274,144,1),('2016-07-25 18:04:41','NULL',274,145,1),('2016-07-25 18:14:58','NULL',274,146,1),('2016-07-26 00:09:03','NULL',1,147,1),('2016-07-26 14:48:58','NULL',1,148,1),('2016-07-26 15:05:19','NULL',274,149,1),('2016-07-26 21:30:20','NULL',274,150,1),('2016-07-27 01:51:44','NULL',1,151,1),('2016-07-27 14:54:02','NULL',1,152,1),('2016-07-27 17:34:44','NULL',1,153,1),('2016-07-28 00:15:20','NULL',274,154,1),('2016-07-28 01:19:47','NULL',1,155,1),('2016-07-28 01:23:53','NULL',1,156,1),('2016-07-28 01:27:11','NULL',1,157,1),('2016-07-28 01:34:07','NULL',1,158,1),('2016-07-28 14:54:18','NULL',1,159,1),('2016-07-28 14:59:09','NULL',1,160,1),('2016-07-28 19:54:38','NULL',1,161,1),('2016-07-28 21:58:03','NULL',274,162,1),('2016-07-29 02:19:03','NULL',1,163,1),('2016-07-29 02:27:55','NULL',1,164,1),('2016-07-29 14:32:28','NULL',1,165,1),('2016-07-29 18:32:58','NULL',1,166,1),('2016-07-29 21:20:49','NULL',1,167,1),('2016-07-30 00:43:02','NULL',1,168,1),('2016-07-30 16:03:09','NULL',1,169,1),('2016-07-30 16:03:15','NULL',274,170,1),('2016-07-31 00:12:14','NULL',1,182,1),('2016-08-01 14:32:49','NULL',274,183,1),('2016-08-01 15:18:13','NULL',1,184,1),('2016-08-01 20:30:20','NULL',274,186,1),('2016-08-02 15:15:17','NULL',1,187,1),('2016-08-02 15:18:38','NULL',274,188,1),('2016-08-02 21:55:37','NULL',274,189,1),('2016-08-03 14:59:15','NULL',1,193,1),('2016-08-03 23:39:42','NULL',1,205,1),('2016-08-03 23:46:06','NULL',1,211,1),('2016-08-04 00:01:44','NULL',1,214,1),('2016-08-04 00:10:13','NULL',274,216,0),('2016-08-04 00:10:38','NULL',274,217,0),('2016-08-04 00:12:24','NULL',1,218,0),('2016-08-04 00:15:36','NULL',1,219,1),('2016-08-04 00:17:11','NULL',1,220,1),('2016-08-04 00:17:40','NULL',274,221,1),('2016-08-04 00:45:35','NULL',274,222,1),('2016-08-04 01:02:53','NULL',1,223,1),('2016-08-04 01:05:37','NULL',274,224,1),('2016-08-04 14:47:27','NULL',1,225,1),('2016-08-04 21:45:16','NULL',1,226,1),('2016-08-05 01:06:53','NULL',274,227,1),('2016-08-05 01:20:41','NULL',274,228,1),('2016-08-05 13:48:12','NULL',274,229,1),('2016-08-05 14:48:12','NULL',1,230,1),('2016-08-05 15:58:43','NULL',1,231,1),('2016-08-06 01:01:25','NULL',1,232,1),('2016-08-06 16:31:41','NULL',1,233,1),('2016-08-06 16:35:18','NULL',274,234,1),('2016-08-07 02:14:44','NULL',274,235,1),('2016-08-08 14:16:24','NULL',274,236,1),('2016-08-08 14:17:32','NULL',1,237,1),('2016-08-08 14:36:18','NULL',1,238,1),('2016-08-08 14:48:42','NULL',1,239,1),('2016-08-08 14:53:59','NULL',1,240,1),('2016-08-08 14:57:40','NULL',274,241,1),('2016-08-08 15:47:04','NULL',1,242,1),('2016-08-08 20:10:58','NULL',1,243,1),('2016-08-08 20:23:51','NULL',1,247,1),('2016-08-08 21:02:25','NULL',274,248,1),('2016-08-08 21:11:47','NULL',274,249,1),('2016-08-08 21:13:25','NULL',274,250,1),('2016-08-08 21:17:14','NULL',1,251,1),('2016-08-08 21:18:50','NULL',274,252,1),('2016-08-08 21:19:52','NULL',1,253,1),('2016-08-08 22:21:15','NULL',1,254,1);
/*!40000 ALTER TABLE `log_inicio_sesion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modulo`
--

DROP TABLE IF EXISTS `modulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modulo` (
  `MODULO_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `MOD_NOMBRE` varchar(50) DEFAULT NULL,
  `MOD_RUTA` varchar(255) DEFAULT NULL,
  `MOD_EST_CVE` int(11) DEFAULT NULL,
  `MODULO_CVE_PADRE` int(11) DEFAULT NULL,
  `IS_CONTROLADOR` tinyint(1) NOT NULL DEFAULT '0',
  `ORDEN_MODULO` int(10) DEFAULT NULL,
  PRIMARY KEY (`MODULO_CVE`),
  UNIQUE KEY `XPKMODULO` (`MODULO_CVE`),
  KEY `XIF1MODULO` (`MOD_EST_CVE`),
  KEY `XIF2MODULO` (`MODULO_CVE_PADRE`),
  CONSTRAINT `modulo_ibfk_1` FOREIGN KEY (`MOD_EST_CVE`) REFERENCES `cmodulo_estado` (`MOD_EST_CVE`),
  CONSTRAINT `modulo_ibfk_2` FOREIGN KEY (`MODULO_CVE_PADRE`) REFERENCES `modulo` (`MODULO_CVE`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modulo`
--

LOCK TABLES `modulo` WRITE;
/*!40000 ALTER TABLE `modulo` DISABLE KEYS */;
INSERT INTO `modulo` VALUES (1,'Dashboard','dashboard',1,NULL,1,0),(2,'Perfil','perfil',1,NULL,1,NULL),(3,'Actividad docente','get_data_ajax_actividad:#form_actividad_docente:#get_data_ajax_actividad',1,2,0,3),(4,'Becas y comisiones laborales','seccion_becas_comisiones:$:#seccion_becas_comisiones',1,2,0,4),(5,'Comisiones academicas','comisionesAcademicas',1,2,0,5),(6,'Elaboración de material educativo','elaboracion_material_edu_tpl',1,2,0,6),(7,'Formación','formacion',1,2,0,2),(8,'Informaciòn general','informacionGeneral',1,2,0,1),(9,'Registro','registro',1,NULL,1,NULL),(10,'Convocatoria de evaluación','convocatoria_evaluacion',1,NULL,1,NULL),(11,'Investigación','ajax_investigacion:#form_investigacion_docente:#ajax_investigacion',1,2,0,7),(12,'Evaluación docente','evaluacion_docente',1,NULL,1,NULL),(13,'Administración de usuarios','usuario',1,NULL,1,NULL),(14,'Gestión de usuarios','usuario/gestionar_usuario',1,NULL,1,NULL),(15,'Catálogos','catalogo',1,NULL,1,NULL),(16,'Designación de validadores','designar_validador',1,NULL,1,NULL),(17,'Dirección de tesis','ajax_direccion_tesis:#form_direccion_tesis:#ajax_direccion_tesis',1,2,0,8),(18,'Validación de ceso de profesores','validacion_censo_profesores',1,NULL,1,NULL),(19,'Administración. Carga de archivos','administracion/cargar_archivo',1,NULL,1,NULL);
/*!40000 ALTER TABLE `modulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plantilla_correo`
--

DROP TABLE IF EXISTS `plantilla_correo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plantilla_correo` (
  `PLAN_CORREO_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `PLA_COR_DESCRIPCION` varchar(200) DEFAULT NULL,
  `PLA_COR_VARIABLES` varchar(200) DEFAULT NULL,
  `PLA_COR_ASUNTO` varchar(200) DEFAULT NULL,
  `PLA_COR_MENSAJE` mediumtext,
  `ROL_CVE_REMITENTE` int(11) DEFAULT NULL,
  `ROL_CVE` int(11) DEFAULT NULL,
  `MODULO_CVE` int(11) DEFAULT NULL,
  PRIMARY KEY (`PLAN_CORREO_CVE`),
  UNIQUE KEY `XPKPLANTILLA_CORREO` (`PLAN_CORREO_CVE`),
  KEY `XIF1PLANTILLA_CORREO` (`ROL_CVE`,`MODULO_CVE`),
  KEY `XIF2PLANTILLA_CORREO` (`ROL_CVE_REMITENTE`),
  CONSTRAINT `plantilla_correo_ibfk_2` FOREIGN KEY (`ROL_CVE_REMITENTE`) REFERENCES `crol` (`ROL_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plantilla_correo`
--

LOCK TABLES `plantilla_correo` WRITE;
/*!40000 ALTER TABLE `plantilla_correo` DISABLE KEYS */;
/*!40000 ALTER TABLE `plantilla_correo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proyecto`
--

DROP TABLE IF EXISTS `proyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proyecto` (
  `PROYECTO_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `PRO_NOMBRE` varchar(40) NOT NULL,
  PRIMARY KEY (`PROYECTO_CVE`),
  UNIQUE KEY `XPKPROYECTO` (`PROYECTO_CVE`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyecto`
--

LOCK TABLES `proyecto` WRITE;
/*!40000 ALTER TABLE `proyecto` DISABLE KEYS */;
INSERT INTO `proyecto` VALUES (1,'Censo'),(2,'Evaluación');
/*!40000 ALTER TABLE `proyecto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recuperar_contrasenia`
--

DROP TABLE IF EXISTS `recuperar_contrasenia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recuperar_contrasenia` (
  `REC_CON_CVE` int(11) NOT NULL,
  `REC_CON_CODIGO` varchar(20) DEFAULT NULL,
  `REC_CON_FCH` date DEFAULT NULL,
  `REC_CON_ESTADO` varchar(20) DEFAULT NULL,
  `USUARIO_CVE` int(11) DEFAULT NULL,
  PRIMARY KEY (`REC_CON_CVE`),
  UNIQUE KEY `XPKRECUPERAR_CONTRASENIA_` (`REC_CON_CVE`),
  KEY `XIF1RECUPERAR_CONTRASENIA_` (`USUARIO_CVE`),
  CONSTRAINT `recuperar_contrasenia_ibfk_1` FOREIGN KEY (`USUARIO_CVE`) REFERENCES `usuario` (`USUARIO_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recuperar_contrasenia`
--

LOCK TABLES `recuperar_contrasenia` WRITE;
/*!40000 ALTER TABLE `recuperar_contrasenia` DISABLE KEYS */;
/*!40000 ALTER TABLE `recuperar_contrasenia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rist_categoria`
--

DROP TABLE IF EXISTS `rist_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rist_categoria` (
  `id_cat` int(11) NOT NULL,
  `nom_categoria` varchar(60) NOT NULL,
  `des_clave` varchar(15) NOT NULL,
  `cve_tipo_categoria` decimal(11,0) NOT NULL,
  `nom_tipo_cat` varchar(40) NOT NULL,
  PRIMARY KEY (`des_clave`),
  UNIQUE KEY `XPKRIST_CATEGORIA` (`des_clave`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rist_categoria`
--

LOCK TABLES `rist_categoria` WRITE;
/*!40000 ALTER TABLE `rist_categoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `rist_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rist_delegacion`
--

DROP TABLE IF EXISTS `rist_delegacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rist_delegacion` (
  `cve_delegacion` char(2) NOT NULL,
  `nom_delegacion` varchar(30) NOT NULL,
  `ref_tipo` char(1) DEFAULT NULL,
  `ind_baja` smallint(6) NOT NULL,
  PRIMARY KEY (`cve_delegacion`),
  UNIQUE KEY `XPKRIST_DELEGACION` (`cve_delegacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rist_delegacion`
--

LOCK TABLES `rist_delegacion` WRITE;
/*!40000 ALTER TABLE `rist_delegacion` DISABLE KEYS */;
INSERT INTO `rist_delegacion` VALUES ('00','SIN DELEGACION','B',0),('01','AGUASCALIENTES','B',1),('02','BAJA CALIFORNIA','B',1),('03','BAJA CALIFORNIA SUR','B',1),('04','CAMPECHE','B',1),('05','COAHUILA','B',1),('06','COLIMA','B',1),('07','CHIAPAS','B',1),('08','CHIHUAHUA','B',1),('09','OFICINAS CENTRALES','B',1),('10','DURANGO','B',1),('11','GUANAJUATO','B',1),('12','GUERRERO','B',1),('13','HIDALGO','B',1),('14','JALISCO','A',1),('15','EDO MEX OTE','A',1),('16','EDO MEX PTE','A',1),('17','MICHOACAN','B',1),('18','MORELOS','B',1),('19','NAYARIT','B',1),('20','NUEVO LEON','A',1),('21','OAXACA','B',1),('22','PUEBLA','B',1),('23','QUERETARO','B',1),('24','QUINTANA ROO','B',1),('25','SAN LUIS POTOSI','B',1),('26','SINALOA','B',1),('27','SONORA','B',1),('28','TABASCO','B',1),('29','TAMAULIPAS','B',1),('30','TLAXCALA','B',1),('31','VERACRUZ NORTE','B',1),('32','VERACRUZ SUR','B',1),('33','YUCATAN','B',1),('34','ZACATECAS','B',1),('35','D F 1 NORTE','A',1),('36','D F 2 NORTE','A',1),('37','D F 3 SUR','A',1),('38','D F 4 SUR','A',1),('39','MANDO','A',1);
/*!40000 ALTER TABLE `rist_delegacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rist_departamentos`
--

DROP TABLE IF EXISTS `rist_departamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rist_departamentos` (
  `cve_unidad_atencion` int(11) NOT NULL,
  `des_unidad_atencion` varchar(80) NOT NULL,
  `ind_medica` decimal(1,0) NOT NULL,
  `cve_organo_control` char(2) NOT NULL,
  `nom_organo_control` varchar(80) DEFAULT NULL,
  `cve_departamento` char(4) NOT NULL,
  `nom_normativa` varchar(60) NOT NULL,
  `cve_depto_adscripcion` char(10) NOT NULL,
  `nom_dependencia` varchar(200) DEFAULT NULL,
  `ref_ubicacion` varchar(200) DEFAULT NULL,
  `cve_delegacion` char(2) NOT NULL,
  `nom_delegacion` varchar(30) NOT NULL,
  `nom_depto_adscripcion` varchar(50) NOT NULL,
  `cve_depto_adscripcion_padre` char(10) DEFAULT NULL,
  `cve_nivel_atencion` int(11) DEFAULT NULL,
  `des_nivel_atencion` varchar(20) DEFAULT NULL,
  `ind_imss_oport` decimal(1,0) DEFAULT NULL,
  `ind_umae` decimal(1,0) DEFAULT NULL,
  `id_tipo_adscripcion` decimal(11,0) DEFAULT NULL,
  `dpt_rama` text,
  PRIMARY KEY (`cve_depto_adscripcion`),
  UNIQUE KEY `XPKrist_departamentos` (`cve_depto_adscripcion`),
  KEY `XIF1rist_departamentos` (`cve_delegacion`),
  CONSTRAINT `rist_departamentos_ibfk_1` FOREIGN KEY (`cve_delegacion`) REFERENCES `rist_delegacion` (`cve_delegacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rist_departamentos`
--

LOCK TABLES `rist_departamentos` WRITE;
/*!40000 ALTER TABLE `rist_departamentos` DISABLE KEYS */;
/*!40000 ALTER TABLE `rist_departamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol_modulo`
--

DROP TABLE IF EXISTS `rol_modulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rol_modulo` (
  `MODULO_CVE` int(11) NOT NULL,
  `ROL_CVE` int(11) NOT NULL,
  PRIMARY KEY (`ROL_CVE`,`MODULO_CVE`),
  UNIQUE KEY `XPKROL_MODULO` (`ROL_CVE`,`MODULO_CVE`),
  KEY `XIF1ROL_MODULO` (`MODULO_CVE`),
  KEY `XIF2ROL_MODULO` (`ROL_CVE`),
  CONSTRAINT `rol_modulo_ibfk_1` FOREIGN KEY (`MODULO_CVE`) REFERENCES `modulo` (`MODULO_CVE`),
  CONSTRAINT `rol_modulo_ibfk_2` FOREIGN KEY (`ROL_CVE`) REFERENCES `crol` (`ROL_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol_modulo`
--

LOCK TABLES `rol_modulo` WRITE;
/*!40000 ALTER TABLE `rol_modulo` DISABLE KEYS */;
INSERT INTO `rol_modulo` VALUES (1,4),(1,5),(2,1),(2,4),(2,5),(3,1),(3,4),(3,5),(4,1),(4,4),(4,5),(5,1),(5,4),(5,5),(6,4),(6,5),(7,1),(7,4),(7,5),(8,1),(8,4),(8,5),(9,4),(9,5),(10,4),(10,5),(11,1),(11,4),(11,5),(12,4),(12,5),(12,13),(13,4),(13,5),(13,12),(13,13),(14,4),(14,5),(14,11),(14,12),(14,13),(14,14),(15,4),(15,5),(16,2),(16,4),(16,5),(16,14),(17,1),(17,4),(17,5),(18,2),(18,3),(19,4),(19,5);
/*!40000 ALTER TABLE `rol_modulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabulador_act_docente`
--

DROP TABLE IF EXISTS `tabulador_act_docente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabulador_act_docente` (
  `TABU_ACT_DOCENTE_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `TAD_TIPO_CURSO` varchar(20) NOT NULL,
  `TAD_PRESENCIAL_RANGO_1` varchar(20) DEFAULT NULL,
  `TAD_PRECENCIAL_RANGO_2` varchar(20) DEFAULT NULL,
  `TAD_PRECENCIAL_RANGO_3` varchar(20) DEFAULT NULL,
  `TAD_MIXTA_RANGO_1` varchar(20) DEFAULT NULL,
  `TAD_MIXTA_RANGO_2` varchar(20) DEFAULT NULL,
  `TAD_MIXTA_RANGO_3` varchar(20) DEFAULT NULL,
  `TAD_LINEA_RANGO_1` varchar(20) DEFAULT NULL,
  `TAD_LINEA_RANGO_2` varchar(20) DEFAULT NULL,
  `TAD_LINEA_RANGO_3` varchar(20) DEFAULT NULL,
  `TAD_PRE_RANGO_1_PUNTOS` int(11) DEFAULT NULL,
  `TAD_PRE_RANGO_2_PUNTOS` int(11) DEFAULT NULL,
  `TAD_PRE_RANGO_3_PUNTOS` int(11) DEFAULT NULL,
  `TAD_MIX_RANGO_1_PUNTOS` int(11) DEFAULT NULL,
  `TAD_MIX_RANGO_3_PUNTOS` int(11) DEFAULT NULL,
  `TAD_MIX_RANGO_2_PUNTOS` int(11) DEFAULT NULL,
  `TAD_LINEA_RANGO_1_PUNTOS` int(11) DEFAULT NULL,
  `TAD_LINEA_RANGO_2_PUNTOS` int(11) DEFAULT NULL,
  `TAD_LINEA_RANGO_3_PUNTOS` int(11) DEFAULT NULL,
  PRIMARY KEY (`TABU_ACT_DOCENTE_CVE`),
  UNIQUE KEY `XPKTABULADOR_ACT_DOCENTE` (`TABU_ACT_DOCENTE_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabulador_act_docente`
--

LOCK TABLES `tabulador_act_docente` WRITE;
/*!40000 ALTER TABLE `tabulador_act_docente` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabulador_act_docente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabulador_act_inv_edu`
--

DROP TABLE IF EXISTS `tabulador_act_inv_edu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabulador_act_inv_edu` (
  `TABU_ACT_INV_EDU_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `TAIE_TIPO_ACTIVIDAD` varchar(20) DEFAULT NULL,
  `TAIE_RANGO_1` char(18) DEFAULT NULL,
  PRIMARY KEY (`TABU_ACT_INV_EDU_CVE`),
  UNIQUE KEY `XPKTABULADOR_` (`TABU_ACT_INV_EDU_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabulador_act_inv_edu`
--

LOCK TABLES `tabulador_act_inv_edu` WRITE;
/*!40000 ALTER TABLE `tabulador_act_inv_edu` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabulador_act_inv_edu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabulador_com_academica`
--

DROP TABLE IF EXISTS `tabulador_com_academica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabulador_com_academica` (
  `TAB_COM_ACADEMICA_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `TCA_RANGO_1` varchar(20) DEFAULT NULL,
  `TCA_RANGO_1_PUNTOS` int(11) DEFAULT NULL,
  PRIMARY KEY (`TAB_COM_ACADEMICA_CVE`),
  UNIQUE KEY `XPKTABULADOR_COM_ACADEMICA` (`TAB_COM_ACADEMICA_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabulador_com_academica`
--

LOCK TABLES `tabulador_com_academica` WRITE;
/*!40000 ALTER TABLE `tabulador_com_academica` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabulador_com_academica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabulador_conv_per_horas`
--

DROP TABLE IF EXISTS `tabulador_conv_per_horas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabulador_conv_per_horas` (
  `TAB_CON_PER_HORAS_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `TCPH_RANGO_1` varchar(20) DEFAULT NULL,
  `TCPH_RANGO_2` varchar(20) DEFAULT NULL,
  `TCPH_RANGO_1_HORAS` int(11) DEFAULT NULL,
  `TCPH_RANGO_2_HORAS` int(11) DEFAULT NULL,
  PRIMARY KEY (`TAB_CON_PER_HORAS_CVE`),
  UNIQUE KEY `XPKTABULADOR_CONV_PER_HORAS` (`TAB_CON_PER_HORAS_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabulador_conv_per_horas`
--

LOCK TABLES `tabulador_conv_per_horas` WRITE;
/*!40000 ALTER TABLE `tabulador_conv_per_horas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabulador_conv_per_horas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabulador_coordinador`
--

DROP TABLE IF EXISTS `tabulador_coordinador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabulador_coordinador` (
  `TC_RANGO_1` varchar(20) DEFAULT NULL,
  `TC_RANGO_2` varchar(20) DEFAULT NULL,
  `TC_RANGO_3` varchar(20) DEFAULT NULL,
  `TC_RANGO_1_PUNTOS` int(11) DEFAULT NULL,
  `TC_RANGO_2_PUNTOS` int(11) DEFAULT NULL,
  `TC_RANGO_3_PUNTOS` int(11) DEFAULT NULL,
  `TABULADOR_COOR_CVE` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`TABULADOR_COOR_CVE`),
  UNIQUE KEY `XPKTABULADOR_COORDINADOR` (`TABULADOR_COOR_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabulador_coordinador`
--

LOCK TABLES `tabulador_coordinador` WRITE;
/*!40000 ALTER TABLE `tabulador_coordinador` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabulador_coordinador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabulador_dir_tesis`
--

DROP TABLE IF EXISTS `tabulador_dir_tesis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabulador_dir_tesis` (
  `TABU_DIR_TESIS_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `TDT_NIVEL_ESTUDIOS` varchar(20) DEFAULT NULL,
  `TDT_RANGO_1` int(11) DEFAULT NULL,
  PRIMARY KEY (`TABU_DIR_TESIS_CVE`),
  UNIQUE KEY `XPKTABULADOR_DIR_TESIS` (`TABU_DIR_TESIS_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabulador_dir_tesis`
--

LOCK TABLES `tabulador_dir_tesis` WRITE;
/*!40000 ALTER TABLE `tabulador_dir_tesis` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabulador_dir_tesis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabulador_edu_continua`
--

DROP TABLE IF EXISTS `tabulador_edu_continua`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabulador_edu_continua` (
  `TABU_EDU_CONTINUA_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `TEC_TIPO_CURSO` varchar(20) NOT NULL,
  `TEC_PRESENCIAL_RANGO_1` varchar(20) DEFAULT NULL,
  `TEC_PRECENCIAL_RANGO_2` varchar(20) DEFAULT NULL,
  `TEC_PRECENCIAL_RANGO_3` varchar(20) DEFAULT NULL,
  `TEC_MIXTA_RANGO_1` varchar(20) DEFAULT NULL,
  `TEC_MIXTA_RANGO_2` varchar(20) DEFAULT NULL,
  `TEC_MIXTA_RANGO_3` varchar(20) DEFAULT NULL,
  `TEC_LINEA_RANGO_1` varchar(20) DEFAULT NULL,
  `TEC_LINEA_RANGO_2` varchar(20) DEFAULT NULL,
  `TEC_LINEA_RANGO_3` varchar(20) DEFAULT NULL,
  `TEC_PRE_RANGO_1_PUNTOS` int(11) DEFAULT NULL,
  `TEC_PRE_RANGO_2_PUNTOS` int(11) DEFAULT NULL,
  `TEC_PRE_RANGO_3_PUNTOS` int(11) DEFAULT NULL,
  `TEC_MIX_RANGO_1_PUNTOS` int(11) DEFAULT NULL,
  `TEC_MIX_RANGO_3_PUNTOS` int(11) DEFAULT NULL,
  `TEC_MIX_RANGO_2_PUNTOS` int(11) DEFAULT NULL,
  `TEC_LINEA_RANGO_1_PUNTOS` int(11) DEFAULT NULL,
  `TEC_LINEA_RANGO_2_PUNTOS` int(11) DEFAULT NULL,
  `TEC_LINEA_RANGO_3_PUNTOS` int(11) DEFAULT NULL,
  PRIMARY KEY (`TABU_EDU_CONTINUA_CVE`),
  UNIQUE KEY `XPKTABULADOR_ACT_DOCENTE` (`TABU_EDU_CONTINUA_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabulador_edu_continua`
--

LOCK TABLES `tabulador_edu_continua` WRITE;
/*!40000 ALTER TABLE `tabulador_edu_continua` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabulador_edu_continua` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabulador_edu_distancia`
--

DROP TABLE IF EXISTS `tabulador_edu_distancia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabulador_edu_distancia` (
  `TUTOR_DIPLO_RANGO_1` varchar(20) DEFAULT NULL,
  `TUTOR_DIPLO_RANGO_2` varchar(20) DEFAULT NULL,
  `TUTOR_DIPLO_RANGO_3` varchar(20) DEFAULT NULL,
  `TUTOR_PROF_TEC_RANGO_1` varchar(20) DEFAULT NULL,
  `TUTOR_PROF_TEC_RANGO_2` varchar(20) DEFAULT NULL,
  `TUTOR_PROF_TEC_RANGO_3` varchar(20) DEFAULT NULL,
  `TUTOR_POSTEC_RANGO_1` varchar(20) DEFAULT NULL,
  `TUTOR_POSTEC_RANGO_2` varchar(20) DEFAULT NULL,
  `TUTOR_POSTEC_RANGO_3` varchar(20) DEFAULT NULL,
  `COOR_TUTO_FOR_RANGO_1` varchar(20) DEFAULT NULL,
  `COOR_TUTO_FOR_RANGO_2` varchar(20) DEFAULT NULL,
  `COOR_TUTO_FOR_RANGO_3` varchar(20) DEFAULT NULL,
  `COOR_CUR_FOR_RANGO_1` varchar(20) DEFAULT NULL,
  `COOR_CUR_FOR_RANGO_2` varchar(20) DEFAULT NULL,
  `COOR_CUR_FOR_RANGO_3` varchar(20) DEFAULT NULL,
  `COOR_TUTO_CUR_INT_RANGO_1` char(18) DEFAULT NULL,
  `COOR_TUTO_CUR_INT_RANGO_2` varchar(20) DEFAULT NULL,
  `COOR_TUTO_CUR_INT_RANGO_3` char(18) DEFAULT NULL,
  `COOR_CUR_CUR_INT_RANGO_1` varchar(20) DEFAULT NULL,
  `COOR_CUR_CUR_INT_RANGO_2` varchar(20) DEFAULT NULL,
  `COOR_CUR_CUR_INT_RANGO_3` varchar(20) DEFAULT NULL,
  `TUTOR_DIPLO_RANGO_1_PUNTOS` int(11) DEFAULT NULL,
  `TUTOR_DIPLO_RANGO_2_PUNTOS` int(11) DEFAULT NULL,
  `TUTOR_DIPLO_RANGO_3_PUNTOS` varchar(20) DEFAULT NULL,
  `TUTOR_PROF_TEC_RANGO_1_PUNTOS` int(11) DEFAULT NULL,
  `TUTOR_PROF_TEC_RANGO_2_PUNTOS` int(11) DEFAULT NULL,
  `TUTOR_PROF_TEC_RANGO_3_PUNTOS` int(11) DEFAULT NULL,
  `TUTOR_POSTEC_RANGO_1_PUNTOS` int(11) DEFAULT NULL,
  `TUTOR_POSTEC_RANGO_2_PUNTOS` int(11) DEFAULT NULL,
  `TUTOR_POSTEC_RANGO_3_PUNTOS` int(11) DEFAULT NULL,
  `COOR_TUTO_FOR_RANGO_1_PUNTOS` int(11) DEFAULT NULL,
  `COOR_TUTO_FOR_RANGO_2_PUNTOS` int(11) DEFAULT NULL,
  `COOR_TUTO_FOR_RANGO_3_PUNTOS` int(11) DEFAULT NULL,
  `COOR_CUR_FOR_RANGO_1_PUNTOS` int(11) DEFAULT NULL,
  `COOR_CUR_FOR_RANGO_2_PUNTOS` int(11) DEFAULT NULL,
  `COOR_CUR_FOR_RANGO_3_PUNTOS` int(11) DEFAULT NULL,
  `COOR_TUTO_CUR_RANGO_1_PUNTOS` int(11) DEFAULT NULL,
  `COOR_TUTO_CUR_RANGO_2_PUNTOS` int(11) DEFAULT NULL,
  `COOR_TUTO_CUR_RANGO_3_PUNTOS` int(11) DEFAULT NULL,
  `COOR_CUR_CUR_INT_RANGO_1_PUNTOS` int(11) DEFAULT NULL,
  `COOR_CUR_CUR_INT_RANGO_2_PUNTOS` int(11) DEFAULT NULL,
  `COOR_CUR_CUR_INT_RANGO_3_PUNTOS` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabulador_edu_distancia`
--

LOCK TABLES `tabulador_edu_distancia` WRITE;
/*!40000 ALTER TABLE `tabulador_edu_distancia` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabulador_edu_distancia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabulador_ela_meterial`
--

DROP TABLE IF EXISTS `tabulador_ela_meterial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabulador_ela_meterial` (
  `TEM_ELA_MATERIAL_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `TEM_RANGO_1` varchar(20) DEFAULT NULL,
  `TEM_RANGO_2` varchar(20) DEFAULT NULL,
  `TEM_PUNTOS_RANGO_1` int(11) DEFAULT NULL,
  `TEM_PUNTOS_RANGO_2` int(11) DEFAULT NULL,
  PRIMARY KEY (`TEM_ELA_MATERIAL_CVE`),
  UNIQUE KEY `XPKTABULADOR_ELA_METERIAL` (`TEM_ELA_MATERIAL_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabulador_ela_meterial`
--

LOCK TABLES `tabulador_ela_meterial` WRITE;
/*!40000 ALTER TABLE `tabulador_ela_meterial` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabulador_ela_meterial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarjeton`
--

DROP TABLE IF EXISTS `tarjeton`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tarjeton` (
  `TARJETON_CVE` int(11) NOT NULL,
  `TAR_FOLIO` varchar(20) DEFAULT NULL,
  `TAR_QUINCENA` varchar(20) DEFAULT NULL,
  `TAR_INCIDENCIA` int(11) DEFAULT NULL,
  `CAN_BON_REG_CVE` int(11) DEFAULT NULL,
  PRIMARY KEY (`TARJETON_CVE`),
  UNIQUE KEY `XPKTARJETON` (`TARJETON_CVE`),
  KEY `XIF1TARJETON` (`CAN_BON_REG_CVE`),
  CONSTRAINT `tarjeton_ibfk_1` FOREIGN KEY (`CAN_BON_REG_CVE`) REFERENCES `can_bono_registro` (`CAN_BON_REG_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarjeton`
--

LOCK TABLES `tarjeton` WRITE;
/*!40000 ALTER TABLE `tarjeton` DISABLE KEYS */;
/*!40000 ALTER TABLE `tarjeton` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `USU_MATRICULA` varchar(25) DEFAULT NULL,
  `USUARIO_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `USU_CORREO` varchar(40) NOT NULL,
  `USU_CONTRASENIA` varchar(150) NOT NULL,
  `USU_FCH_REGISTRO` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CATEGORIA_CVE` int(11) DEFAULT NULL,
  `USU_CURP` varchar(30) NOT NULL,
  `USU_NOMBRE` varchar(20) NOT NULL,
  `USU_PATERNO` varchar(20) NOT NULL,
  `USU_MATERNO` varchar(20) NOT NULL,
  `ADSCRIPCION_CVE` varchar(20) DEFAULT NULL,
  `TIP_CONTRATACION_CVE` int(11) DEFAULT NULL,
  `PRESUPUESTAL_ADSCRIPCION_CVE` varchar(20) DEFAULT NULL,
  `EDO_LABORAL_CVE` int(11) DEFAULT NULL,
  `ROL_DESEMPENIA_CVE` int(11) DEFAULT NULL,
  `USU_GENERO` varchar(20) NOT NULL,
  `USU_TEL_PARTICULAR` int(11) DEFAULT NULL,
  `USU_TEL_LABORAL` int(11) DEFAULT NULL,
  `USU_CORREO_ALTERNATIVO` varchar(40) DEFAULT NULL,
  `CESTADO_CIVIL_CVE` int(11) DEFAULT NULL,
  `DELEGACION_CVE` char(2) DEFAULT NULL,
  `ESTADO_USUARIO_CVE` int(11) DEFAULT NULL,
  `USU_ANTIGUEDAD` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`USUARIO_CVE`),
  UNIQUE KEY `XPKUSUARIO` (`USUARIO_CVE`),
  KEY `XIF1USUARIO` (`CATEGORIA_CVE`),
  KEY `XIF2USUARIO` (`ADSCRIPCION_CVE`),
  KEY `XIF3USUARIO` (`TIP_CONTRATACION_CVE`),
  KEY `XIF4USUARIO` (`PRESUPUESTAL_ADSCRIPCION_CVE`),
  KEY `XIF5USUARIO` (`EDO_LABORAL_CVE`),
  KEY `XIF6USUARIO` (`ROL_DESEMPENIA_CVE`),
  KEY `XIF7USUARIO` (`CESTADO_CIVIL_CVE`),
  KEY `XIF8USUARIO` (`DELEGACION_CVE`),
  KEY `XIF9USUARIO` (`ESTADO_USUARIO_CVE`),
  CONSTRAINT `usuario_ibfk_3` FOREIGN KEY (`TIP_CONTRATACION_CVE`) REFERENCES `ctipo_contratacion` (`TIP_CONTRATACION_CVE`),
  CONSTRAINT `usuario_ibfk_5` FOREIGN KEY (`EDO_LABORAL_CVE`) REFERENCES `cestado_laboral` (`EDO_LABORAL_CVE`),
  CONSTRAINT `usuario_ibfk_6` FOREIGN KEY (`ROL_DESEMPENIA_CVE`) REFERENCES `crol_desempenia` (`ROL_DESEMPENIA_CVE`),
  CONSTRAINT `usuario_ibfk_7` FOREIGN KEY (`CESTADO_CIVIL_CVE`) REFERENCES `cestado_civil` (`CESTADO_CIVIL_CVE`),
  CONSTRAINT `usuario_ibfk_9` FOREIGN KEY (`ESTADO_USUARIO_CVE`) REFERENCES `cestado_usuario` (`ESTADO_USUARIO_CVE`)
) ENGINE=InnoDB AUTO_INCREMENT=300 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES ('10004696',1,'elenazavala_a@hotmail.com','1efdd896225929133bfbbc4666d28d416ff8de18c59baed77026ee9fb404634b5430e51238300211d05044bed28edbf4eb95f7d515b15c6e8f8356137e0168ae','0000-00-00 00:00:00',NULL,'ZAAE630823MSPVLL02','Ma Elena','Zavala','Alonso',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('10010629',2,'salhergon@yahoo.com.mx','1efdd896225929133bfbbc4666d28d416ff8de18c59baed77026ee9fb404634b5430e51238300211d05044bed28edbf4eb95f7d515b15c6e8f8356137e0168ae','0000-00-00 00:00:00',NULL,'HEGS661016HTSRNL02','Salvador','Hernandez','Gonzalez',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('10050965',3,'rotcivramon@hotmail.com','1efdd896225929133bfbbc4666d28d416ff8de18c59baed77026ee9fb404634b5430e51238300211d05044bed28edbf4eb95f7d515b15c6e8f8356137e0168ae','0000-00-00 00:00:00',NULL,'AAVV700924HNTLZC03','Victor Ramon','Alcantar','Vazquez',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,2,NULL),('10096671',4,'lalejandro.romerop@gmail.com','1efdd896225929133bfbbc4666d28d416ff8de18c59baed77026ee9fb404634b5430e51238300211d05044bed28edbf4eb95f7d515b15c6e8f8356137e0168ae','0000-00-00 00:00:00',NULL,'ROPL581026HDFMXS00','Luis Alejandro','Romero','PeÑa',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,2,NULL),('10129677',5,'','1efdd896225929133bfbbc4666d28d416ff8de18c59baed77026ee9fb404634b5430e51238300211d05044bed28edbf4eb95f7d515b15c6e8f8356137e0168ae','0000-00-00 00:00:00',NULL,'MELF620501HDFDPR01','Francisco','Medrano','Lopez',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('10136479',6,'drarosy_andrade@gmail.com','1efdd896225929133bfbbc4666d28d416ff8de18c59baed77026ee9fb404634b5430e51238300211d05044bed28edbf4eb95f7d515b15c6e8f8356137e0168ae','0000-00-00 00:00:00',NULL,'AABR690613MDFNZS07','Rosa Elena','Andrade','Baeza',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,2,NULL),('10137386',7,'','3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2','0000-00-00 00:00:00',NULL,'RIDR560924MDFVLS01','Rosa Maria','Rivera','Delgado',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('10140239',8,'nojugda@hotmail.com','3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2','0000-00-00 00:00:00',NULL,'RAGN640205MJCMRR05','Nora Judith','Ramos','Garcia De Alba',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('10170901',9,'maryurbe@live.com.mx','3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2','0000-00-00 00:00:00',NULL,'FEVU670607MPLRZR09','Maria Urbelina','Fernandez','Vazquez',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,2,NULL),('10208461',10,'anazamorano12@gmail.com','3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2','0000-00-00 00:00:00',NULL,'ZAAA751216MMSMNN06','Ana Ever','Zamorano','Andres',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('10211829',11,'rossportales@gmail.com','','0000-00-00 00:00:00',NULL,'POHR621014MTSRRS08','Ma Del Rosario','Portales','Hernandez',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('10224319',12,'lettynuberg@hotmail.com','','0000-00-00 00:00:00',NULL,'NUVG670215MVZBLL07','Gloria Leticia','Nuberg','Velarde',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('10288228',13,'dra.robles@outlook.com','','0000-00-00 00:00:00',NULL,'RORR660423MSLBSS07','Maria Rosario Isabel','Robles','Rosas',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('10351116',14,'','','0000-00-00 00:00:00',NULL,'MAGE700801MJCRLS19','Esther Alicia','Martinez','Gloria',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,2,NULL),('10351116',15,'nutrimamidaj@gmail.com','','0000-00-00 00:00:00',NULL,'MAGE700801MJCRLS19','Esther Alicia','Martinez','Gloria',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('10382852',16,'georgicastaeda@yahoo.com.mx','','0000-00-00 00:00:00',NULL,'CAZG721111MASSMR05','Georgina Penelope','CastaÑeda','Zamarripa',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('10411712',17,'enfgonzalezg@gmail.com','','0000-00-00 00:00:00',NULL,'GOGA731018MBSNRR02','Armida','Gonzalez','Graciano',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('10454136',18,'','','0000-00-00 00:00:00',NULL,'GAVH630122HNLRLC00','Hector Alejandro','Garcia','Valdez',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,2,NULL),('10455183',19,'','','0000-00-00 00:00:00',NULL,'CAAG620705HNLSRL09','Guillermo','Castillo','Arredondo',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('10456724',20,'terezamag@hotmail.com','','0000-00-00 00:00:00',NULL,'MUMT660206MJCXGR16','Ma Tereza','MuÑoz','Magallanes',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('10477349',21,'dra.lupis@hotmail.com','','0000-00-00 00:00:00',NULL,'RAJG621210MVZMRD01','Guadalupe','Ramos','Juarez',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('10516956',22,'','','0000-00-00 00:00:00',NULL,'RUDM670106HZSZRR03','Marco Antonio','Ruiz','Dorado',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('10534997',23,'kalfelal@hotmail.com','','0000-00-00 00:00:00',NULL,'FEAC680420HSRLLR00','Carlos Alberto','Felix','Alvarez',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,2,NULL),('10546952',24,'','','0000-00-00 00:00:00',NULL,'AOGN710418MSLLSR07','Norma Angelica','Alonso','Gastelum',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('10566112',25,'','','0000-00-00 00:00:00',NULL,'CAOM700227MGTRRR07','Martha Guadalupe','Carriles','Ortiz',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('10566503',26,'pattypacaivo@gmail.com','','0000-00-00 00:00:00',NULL,'REGP661210MVZYBT01','Patricia Teresa','Reyes','Gabino',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('10596208',27,'cris_gaviota67@yahoo.com.mx','','0000-00-00 00:00:00',NULL,'AASP670329MGRLVT08','Patricia','Alarcon','Severiano',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('10599479',28,'suastegui1961@live.com.mx','','0000-00-00 00:00:00',NULL,'SUCJ610430HGRSRM12','Jaime','Suastegui','Carbajal',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('10602356',29,'','','0000-00-00 00:00:00',NULL,'LOCB740311MGRZSL03','Blanca Esther','Loeza','Castillo',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('10604375',30,'albertorojasdaz@gmail.com','','0000-00-00 00:00:00',NULL,'RODA741118HGRJZL00','Alberto','Rojas','Diaz',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('10636714',31,'mendozacruz.joseulises207@gmail.com','','0000-00-00 00:00:00',NULL,'MECU630821HYNNRL00','Jose Ulises','Mendoza','Cruz',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('10640436',32,'taxrosado@gmail.com','','0000-00-00 00:00:00',NULL,'TARR630810HYNXSB03','Ruben Enrique','Tax','Rosado',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('10663134',33,'','','0000-00-00 00:00:00',NULL,'COSR690911MCHNLS08','Rosa Emma','Contreras','Solís',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('10771492',34,'xeos17@yahoo.com.mx','','0000-00-00 00:00:00',NULL,'OISX670517MVZRLC01','Xochitl Erendira','Ortiz','Solana',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('10815082',35,'','','0000-00-00 00:00:00',NULL,'CABC670930MVZMRR02','Carmen','Campos','Barcenas',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('10815678',36,'','','0000-00-00 00:00:00',NULL,'VESL651107HVZLNS02','Jose Luis','Velasco','Sanchez',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('10888918',37,'','','0000-00-00 00:00:00',NULL,'AOOO670417HYNCRS00','Osman David','Acosta','Ortega',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('10910956',38,'laurameve_07@hotmail.com','','0000-00-00 00:00:00',NULL,'MEVL710724MCLDRR08','Laura Alicia','Medina','Verastegui',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('10920366',39,'armando1machoalfa@gmail.com','','0000-00-00 00:00:00',NULL,'MAPA690506HDFRXR01','Armando','Martinez','PeÑa',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('10961615',40,'enf.luissalas@gmail.com','','0000-00-00 00:00:00',NULL,'SAVL731129HSRLLS07','Luis Adalberto','Salas','Villa',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('10970185',41,'','','0000-00-00 00:00:00',NULL,'AAPA710413HDFLLN07','Andres','Alvarado','Palacios',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('10981705',42,'formacionacademica.elizalde@gmail.com','','0000-00-00 00:00:00',NULL,'EIME651210HSLLRL02','Eulalio','Elizalde','Martinez',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('10991786',43,'arizyedd@gmail.com','','0000-00-00 00:00:00',NULL,'VIMA740812MMCLXR03','Arizbeth','Vilchis','MuÑoz',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('11056576',44,'ducedilars@hotmail.com','','0000-00-00 00:00:00',NULL,'FAVF740518HDFRRR03','Fernando','Franco','Vargas',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('11079142',45,'draroco@gmail.com','','0000-00-00 00:00:00',NULL,'ROZA730914MPLCXN04','Ana Luisa','Roco','ZuÑiga',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('11081171',46,'abelroka74@gmail.com','','0000-00-00 00:00:00',NULL,'RORA740706HTLDDB00','Abel','Rodriguez','Rodriguez',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('11156902',47,'luraru@prodigy.net.mx','','0000-00-00 00:00:00',NULL,'RARG680525MMNMZD17','Ma Guadalupe','Ramos','Ruiz',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('11180781',48,'dra_salazar64@hotmail.com','','0000-00-00 00:00:00',NULL,'SACT640228MDFLRR08','Teresa','Salazar','Cordero',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('11264748',49,'dr.pabloramirez1971@outlook.com','','0000-00-00 00:00:00',NULL,'RAGP710509HOCMMB09','Jose Pablo','Ramirez','Gomez',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('11277599',50,'renefernandezflores@gmail.com','','0000-00-00 00:00:00',NULL,'FEFR681107HDFRLN16','Rene Ernesto','Fernandez','Flores',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('11296631',51,'','','0000-00-00 00:00:00',NULL,'KARA660812MNTMMN00','Angelica Maria','Kam','Ramos',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('11318171',52,'melimuh@gmail.com','','0000-00-00 00:00:00',NULL,'MUHM740925MDFXRL09','Melisa Alejandra','MuÑoz','Hernandez',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('11328169',53,'dandyjmz@yahoo.com.mx','','0000-00-00 00:00:00',NULL,'JIDC720513HZSMZS05','Cesar','Jimenez','Diaz',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('11328185',54,'magumeza_22@yahoo.com.mx','','0000-00-00 00:00:00',NULL,'MEVG771222MZSZRD00','María Guadalupe','Meza','Vargas',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('11332824',55,'ilse942000@yahoo.com.mx','','0000-00-00 00:00:00',NULL,'AATI660302HDFPRL05','Ildefonso','Aparicio','Trejo',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('11333081',56,'','','0000-00-00 00:00:00',NULL,'MARR790115MZSRDQ00','Raquel','Martinez','Rodriguez',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('11344156',57,'mextiluna@yahoo.com.mx','','0000-00-00 00:00:00',NULL,'ROCP721008MDFDRL04','Maria Del Pilar','Rodriguez','Correa',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('11363487',58,'alergiaheal67@hotmail.com','','0000-00-00 00:00:00',NULL,'HEAJ670112MDFRLL03','Julia','Hernandez','Alvarez',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('11367245',59,'salvador.juareza@outlook.com','','0000-00-00 00:00:00',NULL,'JUAS610101HPLRDL00','Salvador','Juarez','Adauta',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('11381671',60,'','','0000-00-00 00:00:00',NULL,'LOEJ730615HDFRSS00','Jesus Omar','Lora','Espino',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('11425784',61,'gilberarce@gmail.com','','0000-00-00 00:00:00',NULL,'CAAG680116HYNCRL07','Gilberto','Cauich','Arceo',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('11463414',62,'alejandrocastromx@gmail.com','','0000-00-00 00:00:00',NULL,'CALL700623HSLSGS01','Luis Alejandro','Castro','Lugo',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('11475536',63,'francovbc@gmail.com','','0000-00-00 00:00:00',NULL,'FAVB751005MDFRRT04','Beatriz Cecilia','Franco','Vergara',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('11577908',64,'claudinermz@gmail.com','','0000-00-00 00:00:00',NULL,'RASS750717MDFMNY00','Sylvia Claudine','Ramirez','Sanchez',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('11631252',65,'','','0000-00-00 00:00:00',NULL,'PEBC641221MTSRCR07','Ma Del Carmen','Perez','Bocanegra',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('11631252',66,'carmenperezboca@gmail.com','','0000-00-00 00:00:00',NULL,'PEBC641221MTSRCR07','Ma Del Carmen','Perez','Bocanegra',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('11637145',67,'','','0000-00-00 00:00:00',NULL,'AEGA750826MJCCRL05','Alma','Aceves','Garcia',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('11657251',68,'eemfacr@gmail.com','','0000-00-00 00:00:00',NULL,'CARO740826MDFNCR13','Oralia Alejandra','Cano','Ricci',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('11664452',69,'','','0000-00-00 00:00:00',NULL,'HEDJ720514HDFRMN04','Juan','Hernandez','Dominguez',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('11666706',70,'','','0000-00-00 00:00:00',NULL,'RADL760219MSRMXZ03','Luz Karina','Ramirez','DueÑas',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('11670975',71,'','','0000-00-00 00:00:00',NULL,'GAFM750501HPLRLX05','Maximo Alejandro','Garcia','Flores',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('11680407',72,'','','0000-00-00 00:00:00',NULL,'OAGA750816HMNLLN03','Andres Eusebio','Olalde','Gil',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('11700688',73,'gloria_luz_88@hotmail.com','','0000-00-00 00:00:00',NULL,'SAAG620207MGTNLL03','Gloria Luz','Sanchez','Alvarado',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('11721448',74,'maricelachao@gmail.com','','0000-00-00 00:00:00',NULL,'CARM730225MCLHMR09','Maricela','Chao','Ramirez',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('11732482',75,'topojanusz@interia.pl','','0000-00-00 00:00:00',NULL,'WORJ650623HNEJYN19','Janusz Franciszek','Wojcik','Rybarska',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('11734515',76,'normavisoso@gmail.com','','0000-00-00 00:00:00',NULL,'CAVN750109MDFRSR05','Norma','Carbajal','Visoso',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('11787538',77,'gadrico1509@hotmail.com','','0000-00-00 00:00:00',NULL,'CUOG740906MDFRJB08','Gabriela Adriana','Cruz','Ojeda',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('11867639',78,'augustosarralde@hotmail.com','','0000-00-00 00:00:00',NULL,'SADA621006HNERLG01','Augusto','Sarralde','Delgado',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('11874422',79,'dalivillegm@gmail.com','','0000-00-00 00:00:00',NULL,'VIMD751220MOCLRL01','Dalila','Villegas','Martinez',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('12001996',80,'elbaluce@hotmail.com','','0000-00-00 00:00:00',NULL,'LUGE571109MJCCNL08','Elba Graciela','Luce','Gonzalez',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('12144088',81,'elifloresnieto.enf@gmail.com','','0000-00-00 00:00:00',NULL,'FONE770403MMCLTL07','Elizabeth','Flores','Nieto',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('5068606',82,'aurea_jeshua@yahoo.com.mx','','0000-00-00 00:00:00',NULL,'MEOA570625MVZNLR05','Maria Aurea','Mendoza','Olvera',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('5399548',83,'','','0000-00-00 00:00:00',NULL,'EINM570301MVZNRN09','Monica','Enriquez','Neri',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('6090397',84,'jorge.uriber@imss.gob.mx','','0000-00-00 00:00:00',NULL,'UIRJ560201HDFRVR05','Jorge Augusto','Uribe','Ravell',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('6853927',85,'hdezjesus@prodigy.net.mx','','0000-00-00 00:00:00',NULL,'HEVJ610710HVZRRS00','Jesus','Hernandez','Vera',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('7019173',86,'angel.moresua@gmail.com','','0000-00-00 00:00:00',NULL,'MOSA620618MBCRRN01','Angelina','Moreno','Suarez',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('7092814',87,'armansalas201@gmail.com','','0000-00-00 00:00:00',NULL,'SAOA601117HMCLRR05','Armando','Salas','Ortiz',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('7300891',88,'juroelte@hotmail.com','','0000-00-00 00:00:00',NULL,'MABM611223HOCNRR06','Margarito Juan','Manzano','Barragan',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('7445628',89,'','','0000-00-00 00:00:00',NULL,'BEPP620805HDFLXD08','Pedro Abel','Beltran','PeÑaloza',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('7445628',90,'drpedroabeltran@gmail.com','','0000-00-00 00:00:00',NULL,'BEPP620805HDFLXD08','Pedro Abel','Beltran','PeÑaloza',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('7680767',91,'','','0000-00-00 00:00:00',NULL,'GAEC620201MNTRSN05','Concepcion Elizabeth','Gradilla','Estrada',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('7692315',92,'falbertovidalr@hotmail.com','','0000-00-00 00:00:00',NULL,'VIRF630614HMCDDR07','Francisco Alberto','Vidal','Rodriguez',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('7722664',93,'karina.vazquez.68@gmail.com','','0000-00-00 00:00:00',NULL,'VAHR680414MCSZRS01','Rosa Karina','Vazquez','Hernandez',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('7809662',94,'tnjc7809@gmail.com','','0000-00-00 00:00:00',NULL,'TENJ670321HYNZHR01','Jorge Carlos','Tzec','Noh',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('7845278',95,'nelizaldi@yahoo.com.mx','','0000-00-00 00:00:00',NULL,'EILN560606HNLLZR07','Norberto Enrique','Elizaldi','Lozano',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('8019061',96,'luceroruizvargas@gmail.com','','0000-00-00 00:00:00',NULL,'RUVL620918MTSZRC03','Lucero Del Carmen','Ruiz','Vargas',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('8178593',97,'lopez.saradejesus@gmail.com','','0000-00-00 00:00:00',NULL,'LOSS641219MYNPLR00','Sara De Jesus','Lopez','Salas',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('8211124',98,'aaarreolar@gmail.com','','0000-00-00 00:00:00',NULL,'AERA620224HDFRCN02','Antonio Arturo','Arreola','Rico',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('8265712',99,'jovitasalzar@yahoo.com','','0000-00-00 00:00:00',NULL,'SACJ600215MVZLRV01','Jovita','Salazar','Cruz',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('8274851',100,'otexonfernandez@gmail.com','','0000-00-00 00:00:00',NULL,'TEFO581231MVZXRB09','Obdulia','Texon','Fernández',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('8398372',101,'','','0000-00-00 00:00:00',NULL,'MEGP631010MGRRRT07','Patricia Minerva','Merlin','Garcia',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('8425485',102,'agvillanueva1@hotmail.com','','0000-00-00 00:00:00',NULL,'GAVA620531HDGRLL06','Alfonso','Garcia','Villanueva',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('8514011',103,'mepa_1968@hotmail.com','','0000-00-00 00:00:00',NULL,'MEPA681209MGRNBL09','Alberta','Mendoza','Pablo',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('8517088',104,'nut.angeles.yanez@gmail.com','','0000-00-00 00:00:00',NULL,'YATA680318MDFXRN09','Maria De Los Angeles','YaÑez','Trujillo',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('8526478',105,'','','0000-00-00 00:00:00',NULL,'AECD590503HDFLRV06','David','Alejos','Carmona',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('8556717',106,'gabygmr@gmail.com','','0000-00-00 00:00:00',NULL,'MARG691006MCHRMB06','Gabriela Guadalupe','MariÑelarena','Ramirez',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('8575681',107,'','','0000-00-00 00:00:00',NULL,'VAVF650315HYNZLR03','Fernando José Raymun','Vázquez','Velázquez',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('8580243',108,'docjorgeosorno@gmail.com','','0000-00-00 00:00:00',NULL,'OOGJ640216HYNSMR06','Jorge Alberto','Osorno','Gomez',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('8586039',109,'lilia.degollado@gmail.com','','0000-00-00 00:00:00',NULL,'DEBL661020MDFGRL01','Lilia','Degollado','Bardales',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('8633967',110,'mariele0720@hotmail.com','','0000-00-00 00:00:00',NULL,'LULE680720MNTJPL05','Maria Elena','Lujan','Lopez',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('8642664',111,'queenhg@hotmail.com','','0000-00-00 00:00:00',NULL,'HEGR660106MDFRRY09','Reyna','Hernández','García',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('8678898',112,'hermosasanta@gmail.com','','0000-00-00 00:00:00',NULL,'OILS690403MDFRPN01','Santa','Ortiz','Lopez',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('8823871',113,'cibriansol@hotmail.com','','0000-00-00 00:00:00',NULL,'CITS710409MCMBRL13','Soledad','Cibrian','Torres',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('8834903',114,'erikapatygm@gmail.com','','0000-00-00 00:00:00',NULL,'GUME631106MVZRLR09','Erika Patricia','Guerra','Molina',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('8892377',115,'','','0000-00-00 00:00:00',NULL,'AAAN661006MBCLVR05','Norma Alicia','Alvarez','Avila',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('8907641',116,'','','0000-00-00 00:00:00',NULL,'SACM520612HPLNRN06','Jose Manuel','Sandoval','Cruz',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('8907641',117,'jmsandoval52@gmail.com','','0000-00-00 00:00:00',NULL,'SACM520612HPLNRN06','Jose Manuel','Sandoval','Cruz',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('8938512',118,'gracielarosales2465@gmail.com','','0000-00-00 00:00:00',NULL,'ROSG651024MCLSRR03','Graciela','Rosales','Soria',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('8949131',119,'pepehztyo@gmail.com','','0000-00-00 00:00:00',NULL,'HEGA710314HOCRNN06','Jose Anatolio','Hernandez','Gonzalez',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('9026908',120,'dostreser@me.com','','0000-00-00 00:00:00',NULL,'EIFG551208HMCSNL09','Guillermo Austrebert','Espinosa','Fuentes',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('9057161',121,'','','0000-00-00 00:00:00',NULL,'DITY670402MDFZRN00','Yaneth','Diaz','Torres',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('9120734',122,'cecy.perez15@hotmail.com','','0000-00-00 00:00:00',NULL,'PEGC670915MSLRRC06','Cecilia De Los Angel','Perez','Garcia',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('9169539',123,'Dra.zamacona@gmail.com','','0000-00-00 00:00:00',NULL,'ZASR590222MDFMNS05','Rosa Marina','Zamacona','Sanchez',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('9177736',124,'eloinamendiola@live.com.mx','','0000-00-00 00:00:00',NULL,'MEAE651027MDFNLL03','Eloina','Mendiola','Álvarez',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('9224343',125,'ritaurg@yahoo.com.mx','','0000-00-00 00:00:00',NULL,'RIGR660816MTCVRT00','Rita','Rivera','Garcia',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('9264884',126,'anamaria.alvag@gmail.com','','0000-00-00 00:00:00',NULL,'AAGA561220MDFLVN03','Ana María','Alva','Guevara',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('9273441',127,'sarita_torres62@hotmail.com','','0000-00-00 00:00:00',NULL,'TOBJ620821MDFRRN09','Juana Sara','Torres','Barrera',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('9276343',128,'agustinasolamente@hotmail.com','','0000-00-00 00:00:00',NULL,'FOSA640828MDFLNG03','Agustina','Flores','Sanchez',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('9291792',129,'','','0000-00-00 00:00:00',NULL,'TIGA590330MSLRRD02','Aide','Tirado','Garcia',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('9293639',130,'','','0000-00-00 00:00:00',NULL,'ROCY670113MNTMSS01','Yesenia','Romero','Casillas',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('9307893',131,'chiquigorda3@hotmail.com','','0000-00-00 00:00:00',NULL,'DEHH570402HJCLRG02','Hugo','Delgado','Hernandez',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('9315748',132,'vmirthala@hotmail.com','','0000-00-00 00:00:00',NULL,'VAMM700917MNLZRR03','Mirthala','Vázquez','Martínez',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('9333827',133,'enfra56@hotmail.com','','0000-00-00 00:00:00',NULL,'COUG580728MYNSRB01','Gabriela','Cosio','Uribe',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('9334351',134,'carine.1026@live.com.mx','','0000-00-00 00:00:00',NULL,'IEMC661026MYNLDR08','Carmen Irene','Illescas','Medina',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('9334351',135,'Carine.1026@live.com.mx','','0000-00-00 00:00:00',NULL,'IEMC661026MYNLDR08','Carmen Irene','Illescas','Medina',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('9344829',136,'','','0000-00-00 00:00:00',NULL,'YAGR650203MCCXNS05','Rosa Maria','YaÑez','Gonzalez',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('9344829',137,'rosyanez0203@gmail.com','','0000-00-00 00:00:00',NULL,'YAGR650203MCCXNS05','Rosa Maria','YaÑez','Gonzalez',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('9432248',138,'miriam.mendoza5@gmail.com.mx','','0000-00-00 00:00:00',NULL,'MEGM681001MCHNTR18','Miriam Haidee','Mendoza','Gutierrez',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('9546731',139,'vsetroc@gmail.com','','0000-00-00 00:00:00',NULL,'COTV600122HTLRLC04','Victor Arturo','Cortes','Tellez',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('9715614',140,'igalaviza@yahoo.com.mx','','0000-00-00 00:00:00',NULL,'GAAI621009MDGLVR09','Irma Yolanda','Galaviz','Avalos',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('9740708',141,'turco168@hotmail.com','','0000-00-00 00:00:00',NULL,'HEPF661004HDFRRR02','Francisco','Hernandez','Perez',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('9782303',142,'mcespinoza68@hotmail.com','','0000-00-00 00:00:00',NULL,'EICA681124HZSSSN01','Jose Antonio','Espinoza','Castro',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('9789235',143,'bellaa_1@live.com.mx','','0000-00-00 00:00:00',NULL,'MABI670708MDFCRS11','Maria Isabel','Macias','Barrios',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('98050313',144,'cheli-dv@hotmail.com','','0000-00-00 00:00:00',NULL,'DOVA680720MZSMTR08','Araceli','Dominguez','Vital',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('98150758',145,'thathis7@hotmail.com','','0000-00-00 00:00:00',NULL,'AUVT810707MDFNLB07','Tabata Gabriela','Anguiano','Velazquez',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('98161366',146,'tolucame@msn.com','','0000-00-00 00:00:00',NULL,'MALV610427HMCLNC17','Vicente Alejandro','Maldonado','Luna',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('98373260',147,'bris_ri@hotmail.com','','0000-00-00 00:00:00',NULL,'MOSB860206MDFRNR01','Brisa Edith','Morales','Sanchez',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99011679',148,'jazahel_cm@hotmail.com','','0000-00-00 00:00:00',NULL,'CAMJ780425HZSRRM06','Jaime Azahel','Carranza','Murillo',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('99030123',149,'marthanurse@hotmail.com','','0000-00-00 00:00:00',NULL,'CALM791020MSLSZR03','Martha Alicia','Casillas','Lizarraga',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,2,NULL),('99030170',150,'osvaldo.garciatorres@gmail.com','','0000-00-00 00:00:00',NULL,'GATO740513HDFRRS09','Osvaldo','Garcia','Torres',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('99030379',151,'ccastroc74@gmail.com','','0000-00-00 00:00:00',NULL,'CACC741024MCHSML06','Claudia Ibette','Castro','Camarillo',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99041463',152,'proteuxx@hotmail.com','','0000-00-00 00:00:00',NULL,'AICJ811025HCCVCS08','Jesus Ivan','Avila','Cauich',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('99041800',153,'geovanifloresc@gmail.com','','0000-00-00 00:00:00',NULL,'FOCG820907HCCLRV08','Geovani Abdiel','Flores','Carrillo',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('99050709',154,'gvilla0406@gmail.com','','0000-00-00 00:00:00',NULL,'VIGG680730MDGLND08','Maria Guadalupe','Villa','Gonzalez',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99053982',155,'','','0000-00-00 00:00:00',NULL,'RAVT791122MCLMLH07','Thelma Alicia','Ramírez','Valdéz',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99056307',156,'alvareztjc@gmail.com','','0000-00-00 00:00:00',NULL,'AATJ800311HNLLRN02','Juan Carlos','Alvarez','TreviÑo',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('99060516',157,'','','0000-00-00 00:00:00',NULL,'AERR751221MCMRMF03','Ma Del Refugio','Arreola','Ramirez',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99060803',158,'artymar66@hotmail.com','','0000-00-00 00:00:00',NULL,'GUOA661201HJCRCR07','Jose Arturo','Guerrero','Ochoa',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('99070247',159,'','','0000-00-00 00:00:00',NULL,'RUCG740922MCSDSR01','Maria Griselda','Rueda','CastaÑeda',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99072021',160,'xochitldelcarmen.solorzano@gmail.com','','0000-00-00 00:00:00',NULL,'SOSX710601MCSLLC04','Xochitl Del Carmen','Solorzano','Sol',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99085076',161,'ednalicerio@gmail.com','','0000-00-00 00:00:00',NULL,'LIPE790718MCHCRD03','Edna Edith','Licerio','Perez',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99087279',162,'adriana.montanod@gmail.com','','0000-00-00 00:00:00',NULL,'MODA810302MCHNLD05','Adriana Patricia','MontaÑo','Delgado',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99091201',163,'','','0000-00-00 00:00:00',NULL,'GORL761206MTCMCC08','Licely Angelica','Gomez','Ricardez',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99101337',164,'','','0000-00-00 00:00:00',NULL,'SARV770513MDGNDR05','Virsil Nerisa','Sanchez','Rodriguez',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99103554',165,'','','0000-00-00 00:00:00',NULL,'AUAJ790505HCLZNM09','Jaime','Azuela','Antuna',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('99103555',166,'jecsvcg100@hotmail.com','','0000-00-00 00:00:00',NULL,'CASJ800116HCLMNR06','Jorge Enrique','Camacho','Sánchez',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('99103588',167,'','','0000-00-00 00:00:00',NULL,'EOPG801030MMCSRB01','Gabriela','Escott','Pérez',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99104275',168,'','','0000-00-00 00:00:00',NULL,'LESI781127MDGNLZ02','Izcalli Fabiola','Leon','Solis',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99110715',169,'rulibuy@icloud.com','','0000-00-00 00:00:00',NULL,'HEOR740323HDFRRL04','Raul','Hernandez','Ordonez',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('99111005',170,'drefrennieves@hotmail.com','','0000-00-00 00:00:00',NULL,'NIRE731112HNTVZF08','Efren Rene','Nieves','Ruiz',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('99112531',171,'narosil1144@gmail.com','','0000-00-00 00:00:00',NULL,'ROSN760611MMNDLR00','Narsedalia','Rodriguez','Silva',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99113672',172,'','','0000-00-00 00:00:00',NULL,'LOPX781231MJCPRM07','Xiomara Midory','Lopez','Partida',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99113690',173,'martha.castrom2014@gmail.com','','0000-00-00 00:00:00',NULL,'CAMM781004MMNSRR03','Martha Beatriz','Castro','Mora',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99115407',174,'bigorina@hotmail.com','','0000-00-00 00:00:00',NULL,'GUMB800908MGTTRR01','Maria Berenice','Gutierrez','Martinez',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99115435',175,'diegueen@hotmail.com','','0000-00-00 00:00:00',NULL,'VAGS810614MGTZNN07','Sandra Guadalupe','Vazquez','Gonzalez',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99118797',176,'mocamfgto@gmail.com','','0000-00-00 00:00:00',NULL,'CUAM830606HJCTGG03','Miguel Orlando','Cueto','Aguilar',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('99120104',177,'rogelio3rs@gmail.com','','0000-00-00 00:00:00',NULL,'RARR621102HGRMSG15','Rogelio','Ramirez','Rios',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('99122836',178,'raliuga79@gmail.com','','0000-00-00 00:00:00',NULL,'AUGA791224HGRGRG14','Agustín','Aguilar','García',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('99131503',179,'fracesarnavamartinez.69@gmail.com','','0000-00-00 00:00:00',NULL,'NAMF690129HTLVRR08','Francisco Cesar','Nava','Martinez',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('99131538',180,'nazgul740310@hotmail.com','','0000-00-00 00:00:00',NULL,'AEGJ740310HHGRRS08','Jesus','Arteaga','Garcia',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('991411858',181,'','','0000-00-00 00:00:00',NULL,'GOPE810701MJCNLL07','Elisa Alexandra','González','Plascencia',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('991411926',182,'lucero.rodriguezg@imss.gob.mx','','0000-00-00 00:00:00',NULL,'ROGL821127MJCDDC02','Lucero','Rodríguez','Gudiño',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('991412633',183,'b_vazquez11@hotmail.com','','0000-00-00 00:00:00',NULL,'VAMB811011MJCZRL05','Belen','Vazquez','Martinez',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('991415926',184,'sergeo16@hotmail.com','','0000-00-00 00:00:00',NULL,'GURS841209HSLRNR02','Sergio Geovanny','Guerra','Renteria',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('991419215',185,'rosayaorumf48@gmail.com','','0000-00-00 00:00:00',NULL,'YAOR831002MJCXRS09','Rosa','YaÑez','Ortega',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('991422373',186,'alejandroyanezortega@gmail.com','','0000-00-00 00:00:00',NULL,'YAOA850528HQTXRL06','Alejandro','YaÑez','Ortega',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('99143894',187,'lunacov@hotmail.com','','0000-00-00 00:00:00',NULL,'LUCE760609HJCNVD07','Edgar Ricardo','Luna','Covarrubias',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('99147721',188,'ivoneosornoe@gmail.com','','0000-00-00 00:00:00',NULL,'OOEA800102MVZSSL00','Alicia Ivone','Osorno','Estrada',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99148106',189,'adrianalorenasantana@gmail.com','','0000-00-00 00:00:00',NULL,'SACA800707MJCNND07','Adriana Lorena','Santana','Cano',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99153587',190,'madjru@outlook.com','','0000-00-00 00:00:00',NULL,'REUJ740424MDFYRS06','Maria De Jesus','Reyes','Urquiza',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99158596',191,'zuzukinoemi@gmail.com','','0000-00-00 00:00:00',NULL,'GOGZ770112MDFNNZ01','Zuzuki Noemi','Gonzalez','Gonzalez',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99158729',192,'fatykgn@hotmail.com','','0000-00-00 00:00:00',NULL,'GANF810813MDFYXT01','Fátima Korina','Gaytán','Núñez',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99160135',193,'dr.josuegonzalez@gmail.com','','0000-00-00 00:00:00',NULL,'GOLJ760224HZSNPN02','Juan Josue','Gonzalez','Lopez',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('99161158',194,'lrn.gzd.21@gmail.com','','0000-00-00 00:00:00',NULL,'GODL821221MMCNSR06','Lorena','Gonzalez','Desales',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99161215',195,'cardenassiglo21@gmail.com','','0000-00-00 00:00:00',NULL,'CXCA780927HMCRNR02','Armando','Cardenas','Contreras',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('99164873',196,'bblancaesthela@yahoo.com.mx','','0000-00-00 00:00:00',NULL,'BEJB760510MMCRML01','Blanca Esthela','Bernal','Jiménez',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99169207',197,'','','0000-00-00 00:00:00',NULL,'REPF791128HMCYRR04','Fernando','Reyes','Perez',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('99172144',198,'drvenicechv@hotmail.com','','0000-00-00 00:00:00',NULL,'CAVV790323HMNHLN01','Venice','Chavez','Valencia',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('99173294',199,'dredgardohurtado@hotmail.com','','0000-00-00 00:00:00',NULL,'HURE741103HMNRDD00','Edgardo','Hurtado','Rodríguez',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('99173970',200,'chcn0177@gmail.com','','0000-00-00 00:00:00',NULL,'CANC770121HMNRTH08','Christian Hugo','Carreón','Nieto',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('99180320',201,'monylsolis2@gmail.com','','0000-00-00 00:00:00',NULL,'LOSM711119MDFPLN08','Monica','Lopez','Solis',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99181533',202,'nayadeehg@gmail.com','','0000-00-00 00:00:00',NULL,'HEGN810801MDFRRY09','Nayade','Herrera','Garcia',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99181789',203,'leonmarco42@gmail.com','','0000-00-00 00:00:00',NULL,'LEMM790320HGRNZR05','Marco Antonio','Leon','Mazon',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('9918906',204,'galartmx@hotmail.com','','0000-00-00 00:00:00',NULL,'GAAO571228HGTLGC07','Jose Octavio','Gallardo','Aguilera',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('99190577',205,'julio-decibel@live.com.mx','','0000-00-00 00:00:00',NULL,'ZARJ770904HNTVDL03','Jose Julio','Zavala','Rodriguez',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('99191089',206,'','','0000-00-00 00:00:00',NULL,'VEGL760628MNTLNS00','Luisa Elizabeth','Velasco','González',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99191349',207,'daymond.garcia@gmail.com','','0000-00-00 00:00:00',NULL,'GAAD780826HNTRGY07','Daymond Ilich','Garcia','Aguilar',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('99191992',208,'marie.rilo98@gmail.com','','0000-00-00 00:00:00',NULL,'RIPE790115MNTVRL01','Maria Elena','Rivera','Perez',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99192691',209,'','','0000-00-00 00:00:00',NULL,'KAAA811221HNTMRL00','Alfredo','Kam','Arreola',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('99200239',210,'','','0000-00-00 00:00:00',NULL,'CELH690111HNLRRG01','Higinio Joaquin','Cerda','Lara',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('99200643',211,'estevanesara@gmail.com','','0000-00-00 00:00:00',NULL,'EEDS741029MCLSZR05','Sara Maria','Estevane','Diaz',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99202413',212,'smpp74@hotmail.com','','0000-00-00 00:00:00',NULL,'PEPS740508MTSXRN05','Sandra Marcela','PeÑa','Porres',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99203139',213,'','','0000-00-00 00:00:00',NULL,'GAAM780331MNLRGR07','Marcela Regina','García','Aguirre',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,2,NULL),('99213095',214,'','','0000-00-00 00:00:00',NULL,'BEAA780831HOCRGS01','Asdrúbal','Bermúdez','Aguirre',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('99215172',215,'jemima11@hotmail.com','','0000-00-00 00:00:00',NULL,'MEGJ801011MDFNRM02','Jemima','Mendoza','Garcia',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99223936',216,'montseramales@gmail.com','','0000-00-00 00:00:00',NULL,'RAME790523MPLMNG03','Eugenia Montserrat','Ramales','Montes',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99226103',217,'azugenetics@gmail.com','','0000-00-00 00:00:00',NULL,'SAOA740221MDFNRZ05','Azucena','Sanchez','Ortega',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99228090',218,'ser.monts@gmail.com','','0000-00-00 00:00:00',NULL,'MOLS781014HMSNRR03','Sergio Manuel','Montes','Lara',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('99231486',219,'liacadenas4@hotmail.com','','0000-00-00 00:00:00',NULL,'CASR780904MDFDLS00','Rosalia','Cadenas','Salazar',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99240477',220,'','','0000-00-00 00:00:00',NULL,'LORM710822MPLPMR06','Maribel','Lopez','Ramirez',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99240477',221,'maribell_634@hotmail.com','','0000-00-00 00:00:00',NULL,'LORM710822MPLPMR06','Maribel','Lopez','Ramirez',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99255053',222,'fgarma27@gmail.com','','0000-00-00 00:00:00',NULL,'GAMF780127HDFRND01','Federico Raul','Garma','Montiel',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('99272550',223,'jose.aurelio.mendez.cazares@gmail.com','','0000-00-00 00:00:00',NULL,'MECA780701HSRNZR06','Jose Aurelio','Mendez','Cazares',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('99272805',224,'','','0000-00-00 00:00:00',NULL,'GOHR761103HBCNRC01','Ricardo','Gonzalez','Heredia',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('99274660',225,'meloskats01@hotmail.com.mx','','0000-00-00 00:00:00',NULL,'AOTK830404MSRCRY00','Keyla Teresa','Acosta','Torres',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99280989',226,'','','0000-00-00 00:00:00',NULL,'PEPA741018HVZRVB07','Abel','Perez','Pavon',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('99281538',227,'sulamithlinares@hotmail.com','','0000-00-00 00:00:00',NULL,'LIPS770926MVZNLL05','Sulamith','Linares','Palacios',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99281990',228,'dra.maryamp@outlook.com','','0000-00-00 00:00:00',NULL,'CAHA761208MCCHRM05','Maria Amparo','Chan','Hernandez',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99282032',229,'','','0000-00-00 00:00:00',NULL,'VEPE760216MCSLRL04','Elendyra','Velázquez','Pérez',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99292913',230,'risafl@yahoo.com','','0000-00-00 00:00:00',NULL,'SAFR710307HTSLLC06','Ricardo','Salas','Flores',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('99295305',231,'md.raul@hotmail.com','','0000-00-00 00:00:00',NULL,'MOOR790218HTSNLL08','Raúl Andrés','Montesinos','Olvera',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('99295822',232,'lilia_81@hotmail.com','','0000-00-00 00:00:00',NULL,'MEZA800918MTSDRN01','Ana Lilia','Medina','Zaragoza',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99295822',233,'lilia_81@hotmil.com','','0000-00-00 00:00:00',NULL,'MEZA800918MTSDRN01','Ana Lilia','Medina','Zaragoza',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99296455',234,'','','0000-00-00 00:00:00',NULL,'LOGP811104MTSPRR01','Perla Marina','Lopez','Guerrero',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99296455',235,'perlita_5@hotmail.com','','0000-00-00 00:00:00',NULL,'LOGP811104MTSPRR01','Perla Marina','Lopez','Guerrero',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99297310',236,'c_e_s_a_r_155@hotmail.com','','0000-00-00 00:00:00',NULL,'NASC860528HTSRNS06','Cesar Manuel','Narvaez','Sanchez',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('99297551',237,'drariestra@hotmail.com','','0000-00-00 00:00:00',NULL,'RICD820127MTSSRR00','Darica Nureyen','Riestra','De La Cruz',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99300100',238,'alixmehm3@gmail.com','','0000-00-00 00:00:00',NULL,'MEMA740825MTLNNL09','Alicia','Meneses','Meneses',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99300192',239,'hema070727@gmail.com','','0000-00-00 00:00:00',NULL,'HEMJ681127MTLRRS12','Ma Josefina','Hernandez','Martinez',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99300319',240,'rosaelbazpdtrrns6@gmail.com','','0000-00-00 00:00:00',NULL,'ZETR710807MDFPRS06','Rosa Elba','Zepeda','Terrones',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99311481',241,'martinelli.rguez@hotmail.com','','0000-00-00 00:00:00',NULL,'ROMM760118MVZDRR03','Margarita','Rodriguez','Murrieta',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99314370',242,'straffon@hotmail.com','','0000-00-00 00:00:00',NULL,'SAVR770311MVZTNS00','Rosalba','Straffon','Vincent',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99316958',243,'','','0000-00-00 00:00:00',NULL,'GOPP810508MVZNZT04','Patricia Vanessa','González','Pozos',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99317804',244,'dra.angelicas@gmail.com','','0000-00-00 00:00:00',NULL,'OOSA810519MVZCSN09','Angelica','Ochoa','Sosa',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99318772',245,'','','0000-00-00 00:00:00',NULL,'OADL820601MDFVGL00','Liliana','Ovando','Diego',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99320110',246,'ggramos2010@gmail.com','','0000-00-00 00:00:00',NULL,'GARG751129MVZRMR09','Griselda','Garcia','Ramos',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99322987',247,'gismendoza29@gmail.com','','0000-00-00 00:00:00',NULL,'MEOM820725MVZNRC07','Macrina Gisela','Mendoza','Orozco',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99324079',248,'shumtzlopez@gmail.com','','0000-00-00 00:00:00',NULL,'MALS760706HTSRPR08','Sergio Humberto','Martinez','Lopez',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('99332117',249,'','','0000-00-00 00:00:00',NULL,'OEBE710808MYNJRG01','Maria Eugenia','Ojeda','Barbudo',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99332495',250,'umqbalcazar@gmail.com','','0000-00-00 00:00:00',NULL,'BARL760914HCSLNS00','Luis Ernesto','Balcazar','Rincon',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('99342095',251,'','','0000-00-00 00:00:00',NULL,'DOVR770303MZSMLS07','Rosa Karen','Dominguez','Valdez',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99350573',252,'aureabarretog@gmail.com','','0000-00-00 00:00:00',NULL,'BAGA690502MMSRNR02','Aurea Atanacia','Barreto','Gonzalez',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99352132',253,'','','0000-00-00 00:00:00',NULL,'SACM800207MDFNRN06','Monica','Sanchez','Corona',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99352725',254,'gali_7902@yahoo.com.mx','','0000-00-00 00:00:00',NULL,'RORE790202MDFBNL01','Elvira Evelyn','Robles','Renteria',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99353434',255,'','','0000-00-00 00:00:00',NULL,'LEMG810315MDFLSD02','Maria Guadalupe','Leal','Mosqueda',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99354177',256,'','','0000-00-00 00:00:00',NULL,'GAPI801229MMCRDR01','Irma Fabiola','Garcia','Padilla',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99354178',257,'angelezg@yahoo.com.mx','','0000-00-00 00:00:00',NULL,'GOMA810711MDFNRN01','Maria De Los Angeles','Gonzalez','Martinez',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99356614',258,'rocio.nube43@gmail.com','','0000-00-00 00:00:00',NULL,'RIPR811213MDFSRC08','Maria Rocio','Rios','Portilla',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99356630',259,'nanuel25@hotmail.com','','0000-00-00 00:00:00',NULL,'AUGM780425MMSGNY05','Mayra Adoraim','Aguilar','Gonzalez',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99366361',260,'rodriguin60@hotmail.com','','0000-00-00 00:00:00',NULL,'VIHR810516HDFLDD09','Rodrigo','VillaseÑor','Hidalgo',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('99370534',261,'','','0000-00-00 00:00:00',NULL,'RAPB740209HDFMSN00','Benjamin Alejandro','Ramirez','Pascualli',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('99371012',262,'may_kar28@hotmail.com','','0000-00-00 00:00:00',NULL,'CARM800223MDFBJY02','Mayte De Guadalupe','CabaÑez','Rojas',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99374183',263,'tzeath@hotmail.com','','0000-00-00 00:00:00',NULL,'CAAT781213MMSSLZ00','Tzeithel Athenea','Castillo','Altamirano',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99382632',264,'enero_mmr@hotmail.com','','0000-00-00 00:00:00',NULL,'MARJ730216MDFRZC01','Jocabed','Martinez','Ruiz',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99384933',265,'aniketrrom@hotmail.com','','0000-00-00 00:00:00',NULL,'MIRR790823HDFGYC07','Ricardo','Miguel','Reyes',NULL,NULL,NULL,NULL,NULL,'H',0,0,NULL,NULL,NULL,NULL,NULL),('99384940',266,'cyntiayolanda@yahoo.com.mx','','0000-00-00 00:00:00',NULL,'HEGC810416MDFRNY03','Cyntia Yolanda','Hernandez','Gonzalez',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99387128',267,'','','0000-00-00 00:00:00',NULL,'CAHC710716MTSSRR09','Maria Del Carmen','Castillo','Hernandez',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('99387559',268,'vicahu2015@gmail.com','','0000-00-00 00:00:00',NULL,'CAVI820527MDFSLS03','Isis Carolina','Castro','Valdes',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,NULL,NULL),('9951571',269,'sanbit15@hotmail.com','','0000-00-00 00:00:00',NULL,'GOMS710315MASNTN07','Sandra Beatriz','Gonzalez','Mota',NULL,NULL,NULL,NULL,NULL,'M',0,0,NULL,NULL,NULL,2,NULL),('311091402',274,'jesusz.unam@gmail.com','aabaa221b2c95783c5ce21c07d54c357ff73b8a70dd201aa322782a740e0592a2c77b968f35e7ea6e5a5b96c24fa6bab3607b011d66bd02aa3739756778af89f','0000-00-00 00:00:00',36112580,'DIPJ840421HMCZLS09','JESUS ZOE','DIAZ','PELAEZ','09NC012520',NULL,NULL,1,NULL,'M',NULL,NULL,'jesus@mail.com',2,'09',1,'1_11_0'),('311091476',283,'leylanyh@gmail.com','3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2','0000-00-00 00:00:00',35312180,'GABL800219MDFRXY08','LEYLANI','GARCIA','BA&UELOS','09NC012520',NULL,NULL,NULL,NULL,'F',NULL,NULL,NULL,NULL,'09',1,NULL);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_modulo`
--

DROP TABLE IF EXISTS `usuario_modulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario_modulo` (
  `USUARIO_CVE` int(11) NOT NULL,
  `MODULO_CVE` int(11) NOT NULL,
  `ACCESO` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`USUARIO_CVE`,`MODULO_CVE`),
  UNIQUE KEY `XPKUSUARIO_MODULO` (`USUARIO_CVE`,`MODULO_CVE`),
  KEY `XIF1USUARIO_MODULO` (`USUARIO_CVE`),
  KEY `XIF2USUARIO_MODULO` (`MODULO_CVE`),
  CONSTRAINT `usuario_modulo_ibfk_1` FOREIGN KEY (`USUARIO_CVE`) REFERENCES `usuario` (`USUARIO_CVE`),
  CONSTRAINT `usuario_modulo_ibfk_2` FOREIGN KEY (`MODULO_CVE`) REFERENCES `modulo` (`MODULO_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_modulo`
--

LOCK TABLES `usuario_modulo` WRITE;
/*!40000 ALTER TABLE `usuario_modulo` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario_modulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_rol`
--

DROP TABLE IF EXISTS `usuario_rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario_rol` (
  `USUARIO_CVE` int(11) NOT NULL,
  `ROL_CVE` int(11) NOT NULL,
  PRIMARY KEY (`USUARIO_CVE`,`ROL_CVE`),
  UNIQUE KEY `XPKUSUARIO_ROL_MODULO` (`USUARIO_CVE`,`ROL_CVE`),
  KEY `XIF1USUARIO_ROL_MODULO` (`USUARIO_CVE`),
  KEY `XIF3USUARIO_ROL_MODULO` (`ROL_CVE`),
  CONSTRAINT `usuario_rol_ibfk_1` FOREIGN KEY (`USUARIO_CVE`) REFERENCES `usuario` (`USUARIO_CVE`),
  CONSTRAINT `usuario_rol_ibfk_2` FOREIGN KEY (`ROL_CVE`) REFERENCES `crol` (`ROL_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_rol`
--

LOCK TABLES `usuario_rol` WRITE;
/*!40000 ALTER TABLE `usuario_rol` DISABLE KEYS */;
INSERT INTO `usuario_rol` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,14),(2,4),(2,5),(274,1),(274,4),(274,9),(274,14);
/*!40000 ALTER TABLE `usuario_rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `validacion_convocatoria`
--

DROP TABLE IF EXISTS `validacion_convocatoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `validacion_convocatoria` (
  `VAL_CON_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `VAL_CON_FCH_INICIO_ACTUALIZACION` char(18) DEFAULT NULL,
  `VAL_CON_FCH_FIN_ACTUALIZACION` char(18) DEFAULT NULL,
  `VAL_CON_FCH_INICIO_VALIDACION_FASE_I` char(18) DEFAULT NULL,
  `VAL_CON_FCH_FIN_VALIDACION_FASE_I` char(18) DEFAULT NULL,
  `VAL_CON_FCH_INICIO_VALIDACION_FASE_II` char(18) DEFAULT NULL,
  `VAL_CON_FCH_FIN_VALIDACION_FASE_II` char(18) DEFAULT NULL,
  PRIMARY KEY (`VAL_CON_CVE`),
  UNIQUE KEY `XPKVALIDACION_CONVOCATORIA` (`VAL_CON_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `validacion_convocatoria`
--

LOCK TABLES `validacion_convocatoria` WRITE;
/*!40000 ALTER TABLE `validacion_convocatoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `validacion_convocatoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `validacion_convocatoria_delegacion`
--

DROP TABLE IF EXISTS `validacion_convocatoria_delegacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `validacion_convocatoria_delegacion` (
  `VAL_CON_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `DEL_NOMBRE` varchar(30) NOT NULL,
  `VAL_CON_DEL_CVE` int(11) DEFAULT NULL,
  PRIMARY KEY (`VAL_CON_CVE`),
  UNIQUE KEY `XPKVALIDACION_CONVOCATORIA_DELEGACION` (`VAL_CON_CVE`),
  KEY `XIF1VALIDACION_CONVOCATORIA_DELEGACION` (`VAL_CON_CVE`),
  CONSTRAINT `validacion_convocatoria_delegacion_ibfk_1` FOREIGN KEY (`VAL_CON_CVE`) REFERENCES `validacion_convocatoria` (`VAL_CON_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `validacion_convocatoria_delegacion`
--

LOCK TABLES `validacion_convocatoria_delegacion` WRITE;
/*!40000 ALTER TABLE `validacion_convocatoria_delegacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `validacion_convocatoria_delegacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `validacion_validador`
--

DROP TABLE IF EXISTS `validacion_validador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `validacion_validador` (
  `VALIDACION_COMPLETA` blob,
  `MSG_CORRECCIONES` varchar(800) DEFAULT NULL,
  `VALIDACION_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `UNIDAD_CVE` int(11) DEFAULT NULL,
  `EST_VALIDACION_CVE` int(11) DEFAULT NULL,
  `ROL_VALIDADOR_CVE` int(11) DEFAULT NULL,
  `SELECCION_DICTAMEN` char(18) DEFAULT NULL,
  `EMPLEADO_CVE` int(11) DEFAULT NULL,
  `ADMIN_VALIDADOR_CVE` int(11) DEFAULT NULL,
  `FCH_REGISTRO_VALIDADOR` date DEFAULT NULL,
  PRIMARY KEY (`VALIDACION_CVE`),
  UNIQUE KEY `XPKVALIDACION` (`VALIDACION_CVE`),
  KEY `XIF1VALIDACION` (`UNIDAD_CVE`),
  KEY `XIF2VALIDACION` (`EST_VALIDACION_CVE`),
  KEY `XIF3VALIDACION` (`ROL_VALIDADOR_CVE`),
  KEY `XIF4VALIDACION` (`EMPLEADO_CVE`),
  KEY `XIF5VALIDACION` (`ADMIN_VALIDADOR_CVE`),
  CONSTRAINT `validacion_validador_ibfk_1` FOREIGN KEY (`UNIDAD_CVE`) REFERENCES `cunidad` (`UNIDAD_CVE`),
  CONSTRAINT `validacion_validador_ibfk_2` FOREIGN KEY (`EST_VALIDACION_CVE`) REFERENCES `cestado_validacion` (`EST_VALIDACION_CVE`),
  CONSTRAINT `validacion_validador_ibfk_3` FOREIGN KEY (`ROL_VALIDADOR_CVE`) REFERENCES `crol_validador` (`ROL_VALIDADOR_CVE`),
  CONSTRAINT `validacion_validador_ibfk_4` FOREIGN KEY (`EMPLEADO_CVE`) REFERENCES `empleado` (`EMPLEADO_CVE`),
  CONSTRAINT `validacion_validador_ibfk_5` FOREIGN KEY (`ADMIN_VALIDADOR_CVE`) REFERENCES `admin_validador` (`ADMIN_VALIDADOR_CVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `validacion_validador`
--

LOCK TABLES `validacion_validador` WRITE;
/*!40000 ALTER TABLE `validacion_validador` DISABLE KEYS */;
/*!40000 ALTER TABLE `validacion_validador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `validador`
--

DROP TABLE IF EXISTS `validador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `validador` (
  `VALIDADOR_CVE` int(11) NOT NULL AUTO_INCREMENT,
  `EMPLEADO_CVE` int(11) DEFAULT NULL,
  `ROL_CVE` int(11) DEFAULT NULL,
  `DELEGACION_CVE` char(2) DEFAULT NULL,
  `DEPARTAMENTO_CVE` char(10) NOT NULL,
  PRIMARY KEY (`VALIDADOR_CVE`),
  UNIQUE KEY `XPKVALIDADOR` (`VALIDADOR_CVE`),
  KEY `XIF1VALIDADOR` (`EMPLEADO_CVE`),
  KEY `XIF2VALIDADOR` (`ROL_CVE`),
  KEY `XIF3VALIDADOR` (`DELEGACION_CVE`),
  KEY `XIF4VALIDADOR` (`DEPARTAMENTO_CVE`),
  CONSTRAINT `validador_ibfk_1` FOREIGN KEY (`EMPLEADO_CVE`) REFERENCES `empleado` (`EMPLEADO_CVE`),
  CONSTRAINT `validador_ibfk_2` FOREIGN KEY (`ROL_CVE`) REFERENCES `crol` (`ROL_CVE`),
  CONSTRAINT `validador_ibfk_3` FOREIGN KEY (`DELEGACION_CVE`) REFERENCES `cdelegacion` (`DELEGACION_CVE`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `validador`
--

LOCK TABLES `validador` WRITE;
/*!40000 ALTER TABLE `validador` DISABLE KEYS */;
INSERT INTO `validador` VALUES (3,9,2,'09','09NC012520');
/*!40000 ALTER TABLE `validador` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-08-08 17:48:30