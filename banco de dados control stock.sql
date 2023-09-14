CREATE DATABASE  IF NOT EXISTS `bdcontrolstock` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `bdcontrolstock`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: bdcontrolstock
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.28-MariaDB

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

--
-- Table structure for table `cadastrodeclientes`
--

DROP TABLE IF EXISTS `cadastrodeclientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cadastrodeclientes` (
  `idcadastro` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(25) NOT NULL,
  `email` varchar(35) NOT NULL,
  `senha` varchar(10) NOT NULL,
  `telefone` varchar(13) NOT NULL,
  PRIMARY KEY (`idcadastro`),
  UNIQUE KEY `nome` (`nome`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cadastrodeclientes`
--

LOCK TABLES `cadastrodeclientes` WRITE;
/*!40000 ALTER TABLE `cadastrodeclientes` DISABLE KEYS */;
INSERT INTO `cadastrodeclientes` VALUES (1,'Felipe ','felipe@gmail.com','123456','51993000');
/*!40000 ALTER TABLE `cadastrodeclientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cadastrodeprodutos`
--

DROP TABLE IF EXISTS `cadastrodeprodutos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cadastrodeprodutos` (
  `idcadastroProdutos` int(11) NOT NULL AUTO_INCREMENT,
  `nomeProduto` varchar(20) NOT NULL,
  `numeroA_SerEstocado` int(11) NOT NULL,
  `quantidade` double NOT NULL,
  `preco` double NOT NULL,
  PRIMARY KEY (`idcadastroProdutos`),
  UNIQUE KEY `nomeProduto` (`nomeProduto`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cadastrodeprodutos`
--

LOCK TABLES `cadastrodeprodutos` WRITE;
/*!40000 ALTER TABLE `cadastrodeprodutos` DISABLE KEYS */;
INSERT INTO `cadastrodeprodutos` VALUES (2,'couve',30,2.2,2.29);
/*!40000 ALTER TABLE `cadastrodeprodutos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-14 16:33:25
