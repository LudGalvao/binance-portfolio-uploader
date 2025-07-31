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
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `usuario_id` bigint NOT NULL AUTO_INCREMENT,
  `tipo_usuario` smallint DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `sobrenome` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `senha_hash` text,
  `ativo` tinyint(1) DEFAULT '1',
  `notificacao_sms` tinyint(1) DEFAULT '0',
  `notificacao_email` tinyint(1) DEFAULT '1',
  `notificacao_whatsapp` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`usuario_id`),
  UNIQUE KEY `email` (`email`),
  CONSTRAINT `usuarios_chk_1` CHECK ((`tipo_usuario` in (1,2,3)))
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,1,'PENDENTE','PENDENTE','ludgalvao09@gmail.com','PENDENTE','$2a$10$akLBGl5bss1mK6N4ySqaA.IQkCRbqQ9L8dlbw931Quz7jPH9TrdzW',0,0,0,0),(4,1,'Lud','Galvão','ludgalvao07@gmail.com','21971134394','$2a$10$m37ypzkhVUba/IbKZQoii.4GaSt8NS9WQjHAY1aJcSMpYmCprNtMm',1,0,0,0),(5,1,'teste','teste','teste@mail.com','21932324444','$2a$10$qFtNyeUnm1R1yCPTdyWGceGEDtNxDLfngK62YV2cX5tIOjNCfw8Ai',1,0,0,0),(7,1,'butrico','','butrico@mail.com','21971134394','$2a$10$LxfPs18sBxcyEdO1RQ6ZDOKDMzsfSwMMjH4FNgYqjYozESJQz8VMK',1,0,0,0);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-31  9:33:44
