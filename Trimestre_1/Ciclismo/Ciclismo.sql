-- MariaDB dump 10.19  Distrib 10.4.22-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: CICLISMO
-- ------------------------------------------------------
-- Server version	10.4.22-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ciclista`
--

DROP TABLE IF EXISTS `ciclista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ciclista` (
  `PK_Dosal` int(11) NOT NULL,
  `nomCiclista` varchar(10) NOT NULL,
  `apeCiclista` varchar(15) NOT NULL,
  `dirCiclista` varchar(30) NOT NULL,
  `telCiclista` int(11) NOT NULL,
  `emaCiclista` varchar(25) NOT NULL,
  `Fnaciclista` date NOT NULL,
  `FK_codEquipo` int(11) DEFAULT NULL,
  PRIMARY KEY (`PK_Dosal`),
  KEY `FK_codEquipo` (`FK_codEquipo`),
  CONSTRAINT `ciclista_ibfk_1` FOREIGN KEY (`FK_codEquipo`) REFERENCES `equipo` (`PK_codEquipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciclista`
--

LOCK TABLES `ciclista` WRITE;
/*!40000 ALTER TABLE `ciclista` DISABLE KEYS */;
/*!40000 ALTER TABLE `ciclista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ciclista_etapa`
--

DROP TABLE IF EXISTS `ciclista_etapa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ciclista_etapa` (
  `PK_dorsal` int(11) NOT NULL,
  `PK_numEtapa` int(11) NOT NULL,
  PRIMARY KEY (`PK_dorsal`,`PK_numEtapa`),
  KEY `PK_numEtapa` (`PK_numEtapa`),
  CONSTRAINT `ciclista_etapa_ibfk_1` FOREIGN KEY (`PK_dorsal`) REFERENCES `ciclista` (`PK_Dosal`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ciclista_etapa_ibfk_2` FOREIGN KEY (`PK_numEtapa`) REFERENCES `etapa` (`PK_numEtapa`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciclista_etapa`
--

LOCK TABLES `ciclista_etapa` WRITE;
/*!40000 ALTER TABLE `ciclista_etapa` DISABLE KEYS */;
/*!40000 ALTER TABLE `ciclista_etapa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipo`
--

DROP TABLE IF EXISTS `equipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipo` (
  `PK_codEquipo` int(11) NOT NULL,
  `nomEquipo` varchar(15) NOT NULL,
  `dirEquipo` varchar(30) NOT NULL,
  `ciuEquipo` varchar(15) NOT NULL,
  PRIMARY KEY (`PK_codEquipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipo`
--

LOCK TABLES `equipo` WRITE;
/*!40000 ALTER TABLE `equipo` DISABLE KEYS */;
/*!40000 ALTER TABLE `equipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `etapa`
--

DROP TABLE IF EXISTS `etapa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `etapa` (
  `PK_numEtapa` int(11) NOT NULL,
  `kmsetapa` int(11) NOT NULL,
  `salEtapa` varchar(15) NOT NULL,
  `llgEtapa` varchar(15) NOT NULL,
  PRIMARY KEY (`PK_numEtapa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etapa`
--

LOCK TABLES `etapa` WRITE;
/*!40000 ALTER TABLE `etapa` DISABLE KEYS */;
/*!40000 ALTER TABLE `etapa` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-14 20:32:47
