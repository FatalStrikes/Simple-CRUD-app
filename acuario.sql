CREATE DATABASE  IF NOT EXISTS `conversion` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `conversion`;
-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: conversion
-- ------------------------------------------------------
-- Server version	5.6.24

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
-- Table structure for table `s_customer`
--

DROP TABLE IF EXISTS `s_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_customer` (
  `ID` int(7) NOT NULL DEFAULT '0',
  `NAME` varchar(50) NOT NULL,
  `PHONE` varchar(25) DEFAULT NULL,
  `ADDRESS` varchar(400) DEFAULT NULL,
  `CITY` varchar(30) DEFAULT NULL,
  `STATE` varchar(20) DEFAULT NULL,
  `COUNTRY` varchar(30) DEFAULT NULL,
  `ZIP_CODE` varchar(75) DEFAULT NULL,
  `CREDIT_RATING` varchar(9) DEFAULT NULL,
  `SALES_REP_ID` int(7) DEFAULT NULL,
  `COMMENTS` varchar(255) DEFAULT NULL,
  `TELEFONO` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_customer`
--

LOCK TABLES `s_customer` WRITE;
/*!40000 ALTER TABLE `s_customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_dept`
--

DROP TABLE IF EXISTS `s_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_dept` (
  `ID` int(7) NOT NULL DEFAULT '0',
  `NAME` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_dept`
--

LOCK TABLES `s_dept` WRITE;
/*!40000 ALTER TABLE `s_dept` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_emp`
--

DROP TABLE IF EXISTS `s_emp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_emp` (
  `ID` int(7) NOT NULL DEFAULT '0',
  `LAST_NAME` varchar(25) NOT NULL,
  `FIRST_NAME` varchar(25) DEFAULT NULL,
  `USERID` varchar(8) NOT NULL,
  `START_DATE` date DEFAULT NULL,
  `COMMENTS` varchar(255) DEFAULT NULL,
  `TITLE` varchar(25) DEFAULT NULL,
  `DEPT_ID` int(7) DEFAULT NULL,
  `SALARY` int(112) DEFAULT NULL,
  `COMISION_PCT` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_emp`
--

LOCK TABLES `s_emp` WRITE;
/*!40000 ALTER TABLE `s_emp` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_emp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_image`
--

DROP TABLE IF EXISTS `s_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_image` (
  `ID` int(7) DEFAULT NULL,
  `FORMAT` varchar(25) DEFAULT NULL,
  `USE_FILENAME` varchar(25) DEFAULT NULL,
  `FILENAME` varchar(25) DEFAULT NULL,
  `IMAGE` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_image`
--

LOCK TABLES `s_image` WRITE;
/*!40000 ALTER TABLE `s_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_inventory`
--

DROP TABLE IF EXISTS `s_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_inventory` (
  `PRODUCT_ID` int(7) NOT NULL DEFAULT '0',
  `WAREHOUSE_ID` int(7) NOT NULL,
  `AMOUNT_IN_STOCK` int(9) DEFAULT NULL,
  `REORDER_POINT` int(9) DEFAULT NULL,
  `MAX_IN_STOCK` int(9) DEFAULT NULL,
  `OUT_OF_STOCK_EXPLANATION` varchar(255) DEFAULT NULL,
  `RESTOCK_DATE` date DEFAULT NULL,
  PRIMARY KEY (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_inventory`
--

LOCK TABLES `s_inventory` WRITE;
/*!40000 ALTER TABLE `s_inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_item`
--

DROP TABLE IF EXISTS `s_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_item` (
  `PRICE` int(112) DEFAULT NULL,
  `QUANTITY` int(9) DEFAULT NULL,
  `QUANTITY_SHIPPED` int(9) DEFAULT NULL,
  `WAREHOUSE_ID` int(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_item`
--

LOCK TABLES `s_item` WRITE;
/*!40000 ALTER TABLE `s_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_ord`
--

DROP TABLE IF EXISTS `s_ord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_ord` (
  `ID` int(7) NOT NULL,
  `DATE_ORDERED` date DEFAULT NULL,
  `DATE_SHIPPED` date DEFAULT NULL,
  `TOTAL` int(112) DEFAULT NULL,
  `PAYMENT_TYPE` int(6) DEFAULT NULL,
  `ORDER_FILLED` int(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_ord`
--

LOCK TABLES `s_ord` WRITE;
/*!40000 ALTER TABLE `s_ord` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_ord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_product`
--

DROP TABLE IF EXISTS `s_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_product` (
  `ID` int(7) NOT NULL DEFAULT '0',
  `NAME` varchar(50) NOT NULL,
  `SHOERT_DESC` varchar(255) DEFAULT NULL,
  `SUGGESTED_WHLSL_PRICE` int(112) DEFAULT NULL,
  `WHLSL_UNITS` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_product`
--

LOCK TABLES `s_product` WRITE;
/*!40000 ALTER TABLE `s_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_region`
--

DROP TABLE IF EXISTS `s_region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_region` (
  `ID` int(7) NOT NULL DEFAULT '0',
  `NAME` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_region`
--

LOCK TABLES `s_region` WRITE;
/*!40000 ALTER TABLE `s_region` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_warehouse`
--

DROP TABLE IF EXISTS `s_warehouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_warehouse` (
  `ID` int(7) NOT NULL DEFAULT '0',
  `ADDRESS` mediumtext,
  `CITY` varchar(30) DEFAULT NULL,
  `STATE` varchar(20) DEFAULT NULL,
  `COUNTRY` varchar(30) DEFAULT NULL,
  `ZIP_CODE` varchar(75) DEFAULT NULL,
  `PHONE` varchar(25) DEFAULT NULL,
  `UBICACION_GEOGRAFICA` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_warehouse`
--

LOCK TABLES `s_warehouse` WRITE;
/*!40000 ALTER TABLE `s_warehouse` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_warehouse` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-10-06 17:40:20
