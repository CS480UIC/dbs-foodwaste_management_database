-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dbs_foodwaste_management_database
-- ------------------------------------------------------
-- Server version	8.0.27

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

CREATE DATABASE  IF NOT EXISTS `dbs_foodwaste_management_database_test` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `dbs_foodwaste_management_database_test`;


--
-- Table structure for table `delivery`
--

DROP TABLE IF EXISTS `delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery` (
  `delivery_id` int DEFAULT NULL,
  `delivery_date_time` datetime DEFAULT NULL,
  `delivery_address` text,
  `delivery_cost` int DEFAULT NULL,
  `restaurant_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery`
--

LOCK TABLES `delivery` WRITE;
/*!40000 ALTER TABLE `delivery` DISABLE KEYS */;
INSERT INTO `delivery` VALUES (21,'1998-02-05 00:00:00','Bishop street',100,1),(22,'2021-08-05 00:00:00','Laughlin street',200,2),(23,'2021-09-09 00:00:00','Harrison',30,3),(24,'2021-02-15 00:00:00','Little Italy',45,4),(25,'2022-03-01 00:00:00','New York',65,5);
/*!40000 ALTER TABLE `delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `employee_id` int DEFAULT NULL,
  `employee_contact` bigint DEFAULT NULL,
  `employee_join_date` text,
  `restaurant_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (101,9999999991,'2022-03-03',1),(102,9999999992,'2022-03-10',2),(103,9999999994,'2022-03-03',3),(104,9999988751,'2022-02-03',4),(105,9010934561,'2022-01-22',5);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entity1`
--

DROP TABLE IF EXISTS `entity1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entity1` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity1`
--

LOCK TABLES `entity1` WRITE;
/*!40000 ALTER TABLE `entity1` DISABLE KEYS */;
INSERT INTO `entity1` VALUES ('ent1','ent1','ent1@ent1.com'),('qwerty','qwerty','qwerty@qwerty');
/*!40000 ALTER TABLE `entity1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_descriptions`
--

DROP TABLE IF EXISTS `item_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_descriptions` (
  `description_id` int DEFAULT NULL,
  `item_id` int DEFAULT NULL,
  `item_description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_descriptions`
--

LOCK TABLES `item_descriptions` WRITE;
/*!40000 ALTER TABLE `item_descriptions` DISABLE KEYS */;
INSERT INTO `item_descriptions` VALUES (35,30,'pepperoni pizza'),(36,31,'fresh strawberries'),(37,32,'fresh yogurt'),(38,33,'breakfast cereal'),(39,34,'Imported Basmati Rice');
/*!40000 ALTER TABLE `item_descriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
  `item_id` int DEFAULT NULL,
  `item_price` int DEFAULT NULL,
  `item_name` text,
  `item_in_date` datetime DEFAULT NULL,
  `item_out_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (30,210,'pizza','2022-07-08 00:00:00','2022-07-14 00:00:00'),(31,220,'strawberries','2022-08-10 00:00:00','2022-08-15 00:00:00'),(32,100,'yogurt','2022-08-10 00:00:00','2022-08-20 00:00:00'),(33,125,'cereal','2022-08-10 00:00:00','2022-09-10 00:00:00'),(34,230,'Rice','2022-08-10 00:00:00','2022-08-22 00:00:00');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offers`
--

DROP TABLE IF EXISTS `offers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offers` (
  `offer_id` int DEFAULT NULL,
  `offer_item_name` text,
  `percentage_discount` int DEFAULT NULL,
  `restaurant_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offers`
--

LOCK TABLES `offers` WRITE;
/*!40000 ALTER TABLE `offers` DISABLE KEYS */;
INSERT INTO `offers` VALUES (26,'abc',45,1),(27,'def',50,2),(28,'Sale',70,3),(29,'Black Friday',60,4),(30,'og',20,5);
/*!40000 ALTER TABLE `offers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant` (
  `restaurant_id` int DEFAULT NULL,
  `start_time` text,
  `end_time` text,
  `restaurant_address` text,
  `restaurant_contact` bigint DEFAULT NULL,
  `restaurant_name` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant`
--

LOCK TABLES `restaurant` WRITE;
/*!40000 ALTER TABLE `restaurant` DISABLE KEYS */;
INSERT INTO `restaurant` VALUES (1,'10:00:00','18:00:00','123 W Street',9999999999,'ambrocias'),(2,'10:00:00','18:00:00','123 S Street',9876543210,'adda'),(3,'10:00:00','18:00:00','123 P street',1234567890,'BBQ Nation'),(4,'10:00:00','19:00:00','456 W street ',9087653232,'Nizam'),(5,'9:00:00','17:00:00','12 polk street',3327894021,'madini');
/*!40000 ALTER TABLE `restaurant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant_items`
--

DROP TABLE IF EXISTS `restaurant_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant_items` (
  `restaurant_id` int DEFAULT NULL,
  `item_id` int DEFAULT NULL,
  `description_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant_items`
--

LOCK TABLES `restaurant_items` WRITE;
/*!40000 ALTER TABLE `restaurant_items` DISABLE KEYS */;
INSERT INTO `restaurant_items` VALUES (1,30,100),(2,31,101),(3,32,102),(4,33,103),(5,34,104);
/*!40000 ALTER TABLE `restaurant_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `sale_id` int DEFAULT NULL,
  `daily_same_amount` int DEFAULT NULL,
  `profit` int DEFAULT NULL,
  `sales_report` text,
  `current_date` datetime DEFAULT NULL,
  `restaurant_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (16,1000,1500,'got a profit of 1500!','2022-03-03 00:00:00',1),(17,1100,1600,'got a profit of 1600!','2022-03-03 00:00:00',2),(18,1200,1700,'got a profit of 1700!','2022-03-03 00:00:00',3),(20,1400,1800,'got a profit of 1800!','2022-03-03 00:00:00',4),(19,1300,1900,'got a profit of 1900!','2022-03-03 00:00:00',5);
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('temp','temp','temp@temp'),('test','test','test@test.com');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_user_email`
--

DROP TABLE IF EXISTS `user_user_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_user_email` (
  `user_id` int DEFAULT NULL,
  `user_email` text,
  `MyUnknownColumn` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_user_email`
--

LOCK TABLES `user_user_email` WRITE;
/*!40000 ALTER TABLE `user_user_email` DISABLE KEYS */;
INSERT INTO `user_user_email` VALUES (16,'abc@gmail.com',''),(17,'def@gmail.com',''),(18,'ghj@gmail.com',''),(19,'jkl@gmail.com',''),(20,'qwe@gmail.com','');
/*!40000 ALTER TABLE `user_user_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `user_phone` bigint DEFAULT NULL,
  `user_address` text,
  `user_email` text,
  `restaurant_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (6,'2021-02-06 00:00:00',2245397898,'Denver','hdbj@uic.edu',1),(7,'2021-03-10 00:00:00',2345678909,'Arizona','avcb@uic.edu',2),(8,'2021-04-17 00:00:00',8907657656,'Dallas','rty@uic.edu',3),(9,'2021-09-09 00:00:00',5678768787,'Madison','uji@uic.edu',4),(10,'2021-08-17 00:00:00',2345445455,'Warsaw','yuop@uic.edu',5);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-31 16:56:15
