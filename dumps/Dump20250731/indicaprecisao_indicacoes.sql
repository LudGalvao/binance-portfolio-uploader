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
-- Table structure for table `indicacoes`
--

DROP TABLE IF EXISTS `indicacoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `indicacoes` (
  `indicacao_id` bigint NOT NULL AUTO_INCREMENT,
  `usuario_id` bigint DEFAULT NULL,
  `condominio_id` bigint DEFAULT NULL,
  `endereco` text,
  `responsavel` varchar(100) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `data_criacao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `proprietario_id` bigint DEFAULT NULL,
  PRIMARY KEY (`indicacao_id`),
  UNIQUE KEY `uc_usuario_condominio_proprietario` (`usuario_id`,`condominio_id`,`proprietario_id`),
  KEY `fk_indicacao_condominio` (`condominio_id`),
  KEY `fk_indicacao_proprietario` (`proprietario_id`),
  CONSTRAINT `fk_indicacao_condominio` FOREIGN KEY (`condominio_id`) REFERENCES `condominios` (`condominio_id`),
  CONSTRAINT `fk_indicacao_proprietario` FOREIGN KEY (`proprietario_id`) REFERENCES `proprietarios_indicados` (`proprietario_id`),
  CONSTRAINT `fk_indicacao_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`),
  CONSTRAINT `indicacoes_chk_1` CHECK ((`status` in (_utf8mb4'pendente',_utf8mb4'ganha',_utf8mb4'perdida',_utf8mb4'aguardando')))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicacoes`
--

LOCK TABLES `indicacoes` WRITE;
/*!40000 ALTER TABLE `indicacoes` DISABLE KEYS */;
INSERT INTO `indicacoes` VALUES (1,5,12,'teste','teste','PENDENTE','2025-07-25 21:40:11',13),(2,7,13,'rua manuel marreiros','butrico','PENDENTE','2025-07-30 16:34:19',14);
/*!40000 ALTER TABLE `indicacoes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-31  9:33:43
