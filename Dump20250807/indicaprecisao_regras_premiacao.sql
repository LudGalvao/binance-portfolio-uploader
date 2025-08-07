-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: indicaprecisao
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `regras_premiacao`
--

DROP TABLE IF EXISTS `regras_premiacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `regras_premiacao` (
  `regra_id` bigint NOT NULL AUTO_INCREMENT,
  `tipo_imovel` varchar(20) NOT NULL,
  `tipo_negocio` varchar(20) NOT NULL,
  `com_exclusividade` tinyint(1) NOT NULL DEFAULT '0',
  `modelo_pagamento` enum('fixo','percentual') NOT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `percentual` decimal(5,2) DEFAULT NULL,
  `observacao` text,
  PRIMARY KEY (`regra_id`),
  CONSTRAINT `chk_modelo_pagamento` CHECK ((`modelo_pagamento` in (_utf8mb4'fixo',_utf8mb4'percentual'))),
  CONSTRAINT `chk_tipo_imovel` CHECK ((`tipo_imovel` in (_utf8mb4'residencial',_utf8mb4'comercial'))),
  CONSTRAINT `chk_tipo_negocio` CHECK ((`tipo_negocio` in (_utf8mb4'locacao',_utf8mb4'venda')))
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regras_premiacao`
--

LOCK TABLES `regras_premiacao` WRITE;
/*!40000 ALTER TABLE `regras_premiacao` DISABLE KEYS */;
INSERT INTO `regras_premiacao` VALUES (16,'residencial','locacao',0,'fixo',35.00,NULL,'Imóvel residencial captado para Locação sem exclusividade'),(17,'residencial','locacao',0,'fixo',35.00,NULL,'Imóvel residencial captado para Locação sem exclusividade'),(18,'residencial','locacao',0,'percentual',NULL,10.00,'10% por 1 mês da comissão de locação da imobiliária'),(19,'residencial','venda',0,'fixo',35.00,NULL,'Imóvel residencial captado para Venda sem exclusividade'),(20,'residencial','venda',0,'fixo',35.00,NULL,'Imóvel residencial vendido'),(21,'comercial','locacao',0,'fixo',35.00,NULL,'Imóvel comercial captado para Locação sem exclusividade'),(22,'comercial','venda',0,'fixo',35.00,NULL,'Imóvel comercial captado para Venda sem exclusividade'),(23,'comercial','venda',0,'fixo',35.00,NULL,'Imóvel comercial vendido');
/*!40000 ALTER TABLE `regras_premiacao` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-07 10:04:07
