-- MySQL dump 10.13  Distrib 8.0.39, for Linux (x86_64)
--
-- Host: localhost    Database: laboratory_dir
-- ------------------------------------------------------
-- Server version	8.0.39-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `rdmc_full_pentavalent_percentage_disparities`
--

DROP TABLE IF EXISTS `rdmc_full_pentavalent_percentage_disparities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rdmc_full_pentavalent_percentage_disparities` (
  `PSU` int DEFAULT NULL,
  `No` int DEFAULT NULL,
  `Pentavalent` int DEFAULT NULL,
  `LATNUM` double DEFAULT NULL,
  `LONGNUM` double DEFAULT NULL,
  `region` text COLLATE utf8mb4_general_ci,
  `zone_name` text COLLATE utf8mb4_general_ci,
  `ISO` text COLLATE utf8mb4_general_ci,
  `dtm` text COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rdmc_full_pentavalent_percentage_disparities`
--

LOCK TABLES `rdmc_full_pentavalent_percentage_disparities` WRITE;
/*!40000 ALTER TABLE `rdmc_full_pentavalent_percentage_disparities` DISABLE KEYS */;
INSERT INTO `rdmc_full_pentavalent_percentage_disparities` VALUES (79,3,75,10.833913,36.81368,'Amhara','Awi','ET-AM-AW','2020-01-01 00:00:00'),(80,6,50,10.779921,36.711575,'Amhara','Awi','ET-AM-AW','2020-01-02 00:00:00'),(54,4,71,11.594791,37.382458,'Amhara','Bar Dar Sp. Zone','ET-AM-BD','2020-01-03 00:00:00'),(81,8,58,11.582726,37.396091,'Amhara','Bar Dar Sp. Zone','ET-AM-BD','2020-01-04 00:00:00'),(52,1,91,10.448012,37.572393,'Amhara','East Gojam','ET-AM-EG','2020-01-05 00:00:00'),(70,1,93,10.884895,37.758051,'Amhara','East Gojam','ET-AM-EG','2020-01-06 00:00:00'),(71,8,53,10.732356,38.048965,'Amhara','East Gojam','ET-AM-EG','2020-01-07 00:00:00'),(72,5,67,10.555963,37.646891,'Amhara','East Gojam','ET-AM-EG','2020-01-08 00:00:00'),(73,1,90,10.229077,38.121993,'Amhara','East Gojam','ET-AM-EG','2020-01-09 00:00:00'),(55,1,92,13.009869,36.258229,'Amhara','North Gonder','ET-AM-NG','2020-01-10 00:00:00'),(56,7,68,12.939659,37.743025,'Amhara','North Gonder','ET-AM-NG','2020-01-11 00:00:00'),(82,1,94,12.387114,37.630096,'Amhara','North Gonder','ET-AM-NG','2020-01-12 00:00:00'),(84,1,94,12.365834,37.356766,'Amhara','North Gonder','ET-AM-NG','2020-01-13 00:00:00'),(85,2,88,12.985634,36.239465,'Amhara','North Gonder','ET-AM-NG','2020-01-14 00:00:00'),(67,4,67,10.236394,39.142027,'Amhara','North Shewa','ET-AM-NS','2020-01-15 00:00:00'),(69,0,100,9.577575,39.728117,'Amhara','North Shewa','ET-AM-NS','2020-01-16 00:00:00'),(61,3,85,11.735435,38.771268,'Amhara','North Wollo','ET-AM-NW','2020-01-17 00:00:00'),(62,2,86,11.988585,39.121066,'Amhara','North Wollo','ET-AM-NW','2020-01-18 00:00:00'),(68,0,100,10.41919,39.928658,'Amhara','Oromia Zone','ET-AM-OR','2020-01-19 00:00:00'),(57,2,89,11.929771,37.60154,'Amhara','South Gonder','ET-AM-SG','2020-01-20 00:00:00'),(58,6,73,11.722588,38.322763,'Amhara','South Gonder','ET-AM-SG','2020-01-21 00:00:00'),(59,1,92,11.746607,37.461901,'Amhara','South Gonder','ET-AM-SG','2020-01-22 00:00:00'),(60,8,53,11.303503,38.440382,'Amhara','South Gonder','ET-AM-SG','2020-01-23 00:00:00'),(83,3,86,12.322718,37.959425,'Amhara','South Gonder','ET-AM-SG','2020-01-24 00:00:00'),(51,0,100,10.794737,39.04929,'Amhara','South Wollo','ET-AM-SW','2020-01-25 00:00:00'),(63,0,100,10.992773,39.299566,'Amhara','South Wollo','ET-AM-SW','2020-01-26 00:00:00'),(64,1,92,11.059651,39.833633,'Amhara','South Wollo','ET-AM-SW','2020-01-27 00:00:00'),(65,3,79,11.072967,38.884163,'Amhara','South Wollo','ET-AM-SW','2020-01-28 00:00:00'),(66,1,92,10.729517,39.373696,'Amhara','South Wollo','ET-AM-SW','2020-01-29 00:00:00'),(78,8,74,12.345158,38.647788,'Amhara','Wag Hemira','ET-AM-WH','2020-01-30 00:00:00'),(53,1,89,11.405457,37.147808,'Amhara','West Gojam','ET-AM-WG','2020-01-31 00:00:00'),(74,0,100,11.691682,37.219549,'Amhara','West Gojam','ET-AM-WG','2020-02-01 00:00:00'),(75,5,78,11.496184,37.066831,'Amhara','West Gojam','ET-AM-WG','2020-02-02 00:00:00'),(76,6,54,10.838051,37.668705,'Amhara','West Gojam','ET-AM-WG','2020-02-03 00:00:00'),(77,0,100,10.51125,36.855594,'Amhara','West Gojam','ET-AM-WG','2020-02-04 00:00:00');
/*!40000 ALTER TABLE `rdmc_full_pentavalent_percentage_disparities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rdmc_pcv_edhis_2024_data`
--

DROP TABLE IF EXISTS `rdmc_pcv_edhis_2024_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rdmc_pcv_edhis_2024_data` (
  `PCV` text COLLATE utf8mb4_general_ci,
  `Region` text COLLATE utf8mb4_general_ci,
  `Coverage` double DEFAULT NULL,
  `dtm` text COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rdmc_pcv_edhis_2024_data`
--

LOCK TABLES `rdmc_pcv_edhis_2024_data` WRITE;
/*!40000 ALTER TABLE `rdmc_pcv_edhis_2024_data` DISABLE KEYS */;
INSERT INTO `rdmc_pcv_edhis_2024_data` VALUES ('Pneumococcal Conjugate vaccines (PCV1)','Ethiopia',70,''),('Pneumococcal Conjugate vaccines (PCV2)','Ethiopia',63.9,''),('Pneumococcal Conjugate vaccines (PCV3)','Ethiopia',55.5,''),('Pneumococcal Conjugate vaccines (PCV1)','Amhara',78.8,''),('Pneumococcal Conjugate vaccines (PCV2)','Amhara',76.8,''),('Pneumococcal Conjugate vaccines (PCV3)','Amhara',72.7,'');
/*!40000 ALTER TABLE `rdmc_pcv_edhis_2024_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-28  8:39:16
