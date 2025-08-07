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
-- Table structure for table `pagamentos`
--

DROP TABLE IF EXISTS `pagamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagamentos` (
  `pagamento_id` bigint NOT NULL AUTO_INCREMENT,
  `usuario_id` bigint DEFAULT NULL,
  `indicacao_id` bigint DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `data_pagamento` date DEFAULT NULL,
  `data_previsao_inicio` date DEFAULT NULL,
  `data_previsao_fim` date DEFAULT NULL,
  `data_status_inicio` date DEFAULT NULL,
  `data_status_fim` date DEFAULT NULL,
  `regra_id` bigint DEFAULT NULL,
  PRIMARY KEY (`pagamento_id`),
  KEY `fk_pagamento_usuario` (`usuario_id`),
  KEY `fk_pagamento_indicacao` (`indicacao_id`),
  KEY `fk_pagamento_regra` (`regra_id`),
  CONSTRAINT `fk_pagamento_indicacao` FOREIGN KEY (`indicacao_id`) REFERENCES `indicacoes` (`indicacao_id`),
  CONSTRAINT `fk_pagamento_regra` FOREIGN KEY (`regra_id`) REFERENCES `regras_premiacao` (`regra_id`),
  CONSTRAINT `fk_pagamento_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`),
  CONSTRAINT `pagamentos_chk_1` CHECK ((`status` in (_utf8mb4'pago',_utf8mb4'aguardando',_utf8mb4'rejeitado')))
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagamentos`
--

LOCK TABLES `pagamentos` WRITE;
/*!40000 ALTER TABLE `pagamentos` DISABLE KEYS */;
INSERT INTO `pagamentos` VALUES (7,1,1,'aguardando',NULL,'2025-08-06','2025-09-05',NULL,NULL,NULL),(8,1,2,'aguardando',NULL,'2025-08-06','2025-09-05',NULL,NULL,NULL),(9,2,6,'aguardando',NULL,'2025-08-06','2025-09-05',NULL,NULL,NULL);
/*!40000 ALTER TABLE `pagamentos` ENABLE KEYS */;
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
