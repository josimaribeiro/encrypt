-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: encrypt
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

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
-- Current Database: `encrypt`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `encrypt` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `encrypt`;

--
-- Table structure for table `encrypted_data`
--

DROP TABLE IF EXISTS `encrypted_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encrypted_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `encrypted_text` text NOT NULL,
  `encryption_key` varchar(255) NOT NULL,
  `createdAt` datetime DEFAULT current_timestamp(),
  `UpdatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encrypted_data`
--

LOCK TABLES `encrypted_data` WRITE;
/*!40000 ALTER TABLE `encrypted_data` DISABLE KEYS */;
INSERT INTO `encrypted_data` VALUES (1,'kFTxrUZVnPea5fe4JBDaQZljbtvJu+p0GfrRhdMoMk47lyzuvc8U1DIOygZ0P9jJjV6/IlxmtuzJwF2/h1j6DC4fpWRlkfK8UKNPwBH5nXw=','c53255317bb11707d0f614696b3ce6f221d0e2f2','2025-09-06 13:41:31','2025-09-06 16:41:31'),(2,'8r3iC4iak5x0Aaw+5yX66XkJKuler2VGP6KYQSljrdel6hoOJprptJx7rRwOwSv4fw73WtvEftJYWn5AoKfB2oEFbDwadaXHGvajvcxo4j3cONfVdbwcj842KEoRuDrZgaFKIaDxe+l+i7BPWQScuw==','7c4a8d09ca3762af61e59520943dc26494f8941b','2025-09-06 13:42:39','2025-09-06 16:42:39');
/*!40000 ALTER TABLE `encrypted_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-06 14:47:40
