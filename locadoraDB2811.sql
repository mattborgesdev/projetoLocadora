-- MySQL dump 10.16  Distrib 10.1.34-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: locadoradb
-- ------------------------------------------------------
-- Server version	10.1.34-MariaDB

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
-- Current Database: `locadoradb`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `locadoradb` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `locadoradb`;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `codigoCli` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `Endereco_idEndereco` int(11) NOT NULL,
  PRIMARY KEY (`codigoCli`),
  KEY `fk_Cliente_Endereco1_idx` (`Endereco_idEndereco`),
  CONSTRAINT `fk_Cliente_Endereco1` FOREIGN KEY (`Endereco_idEndereco`) REFERENCES `endereco` (`idEndereco`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` (`codigoCli`, `nome`, `Endereco_idEndereco`) VALUES (1,'Matheus',3),(2,'Cleber',2),(3,'Sophia',1);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `endereco` (
  `idEndereco` int(11) NOT NULL AUTO_INCREMENT,
  `rua` varchar(45) NOT NULL,
  `numero` int(11) NOT NULL,
  PRIMARY KEY (`idEndereco`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` (`idEndereco`, `rua`, `numero`) VALUES (1,'Rua das Amoras',3),(2,'Rua dos Doidos',2),(3,'Rua dos Sãos',1);
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filme`
--

DROP TABLE IF EXISTS `filme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filme` (
  `codigoFil` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `nomeEstudio` varchar(255) NOT NULL,
  `ano` int(11) NOT NULL,
  PRIMARY KEY (`codigoFil`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filme`
--

LOCK TABLES `filme` WRITE;
/*!40000 ALTER TABLE `filme` DISABLE KEYS */;
INSERT INTO `filme` (`codigoFil`, `nome`, `nomeEstudio`, `ano`) VALUES (1,'Todo Mundo em Pânico','Dimension Films',2000),(2,'Bob Esponja O Filme','Nickelodeon',2004),(3,'Os Incriveis','Pixar',2004);
/*!40000 ALTER TABLE `filme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jogo`
--

DROP TABLE IF EXISTS `jogo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jogo` (
  `codigoJog` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `plataforma` varchar(255) NOT NULL,
  `ano` int(11) NOT NULL,
  PRIMARY KEY (`codigoJog`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jogo`
--

LOCK TABLES `jogo` WRITE;
/*!40000 ALTER TABLE `jogo` DISABLE KEYS */;
INSERT INTO `jogo` (`codigoJog`, `nome`, `plataforma`, `ano`) VALUES (1,'Castlevania: SOTN','Playstation 1',1997),(2,'God of War 4','Playstation 4',2018),(3,'Spider Man','Playstation 4',2018);
/*!40000 ALTER TABLE `jogo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locacao`
--

DROP TABLE IF EXISTS `locacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locacao` (
  `codigoLoc` int(11) NOT NULL AUTO_INCREMENT,
  `dataLoc` varchar(45) NOT NULL,
  `dataDev` varchar(45) NOT NULL,
  `valorLoc` double NOT NULL,
  PRIMARY KEY (`codigoLoc`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locacao`
--

LOCK TABLES `locacao` WRITE;
/*!40000 ALTER TABLE `locacao` DISABLE KEYS */;
INSERT INTO `locacao` (`codigoLoc`, `dataLoc`, `dataDev`, `valorLoc`) VALUES (1,'26/11/2018','03/12/2018',2.5),(2,'28/11/2018','05/12/2018',10),(3,'27/11/2018','05/12/2018',10);
/*!40000 ALTER TABLE `locacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locacao_cliente`
--

DROP TABLE IF EXISTS `locacao_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locacao_cliente` (
  `Locacao_codigoLoc` int(11) NOT NULL,
  `Cliente_codigoCli` int(11) NOT NULL,
  `Filme_codigoFil` int(11) DEFAULT NULL,
  `Jogo_codigoJog` int(11) DEFAULT NULL,
  PRIMARY KEY (`Locacao_codigoLoc`,`Cliente_codigoCli`),
  KEY `fk_Locacao_has_Cliente_Cliente1_idx` (`Cliente_codigoCli`),
  KEY `fk_Locacao_has_Cliente_Locacao1_idx` (`Locacao_codigoLoc`),
  KEY `fk_Locacao_Cliente_Filme1_idx` (`Filme_codigoFil`),
  KEY `fk_Locacao_Cliente_Jogo2_idx` (`Jogo_codigoJog`),
  CONSTRAINT `fk_Locacao_Cliente_Filme1` FOREIGN KEY (`Filme_codigoFil`) REFERENCES `filme` (`codigoFil`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Locacao_Cliente_Jogo2` FOREIGN KEY (`Jogo_codigoJog`) REFERENCES `jogo` (`codigoJog`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Locacao_has_Cliente_Cliente1` FOREIGN KEY (`Cliente_codigoCli`) REFERENCES `cliente` (`codigoCli`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Locacao_has_Cliente_Locacao1` FOREIGN KEY (`Locacao_codigoLoc`) REFERENCES `locacao` (`codigoLoc`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locacao_cliente`
--

LOCK TABLES `locacao_cliente` WRITE;
/*!40000 ALTER TABLE `locacao_cliente` DISABLE KEYS */;
INSERT INTO `locacao_cliente` (`Locacao_codigoLoc`, `Cliente_codigoCli`, `Filme_codigoFil`, `Jogo_codigoJog`) VALUES (1,3,3,1),(2,1,1,2),(2,3,3,1);
/*!40000 ALTER TABLE `locacao_cliente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-28  1:32:09
