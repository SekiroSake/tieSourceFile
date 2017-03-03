-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: mx
-- ------------------------------------------------------
-- Server version	5.7.12-log

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
-- Table structure for table `cbcrprop`
--

DROP TABLE IF EXISTS `cbcrprop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cbcrprop` (
  `tieDocId` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `value` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`tieDocId`,`name`),
  CONSTRAINT `cbcrprop_ibfk_1` FOREIGN KEY (`tieDocId`) REFERENCES `tiedoc` (`tieDocId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cbcrprop`
--

LOCK TABLES `cbcrprop` WRITE;
/*!40000 ALTER TABLE `cbcrprop` DISABLE KEYS */;
/*!40000 ALTER TABLE `cbcrprop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cbcrtable1`
--

DROP TABLE IF EXISTS `cbcrtable1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cbcrtable1` (
  `tieDocId` int(11) NOT NULL,
  `taxJurisdiction` varchar(80) NOT NULL,
  `revenueUnrelatedParty` decimal(20,5) DEFAULT NULL,
  `revenueRelatedParty` decimal(20,5) DEFAULT NULL,
  `revenueTotal` decimal(20,5) DEFAULT NULL,
  `plBeforeIncomeTax` decimal(20,5) DEFAULT NULL,
  `incomeTaxPaid` decimal(20,5) DEFAULT NULL,
  `incomeTaxAccrued` decimal(20,5) DEFAULT NULL,
  `statedCapital` decimal(20,5) DEFAULT NULL,
  `accumulatedEarnings` decimal(20,5) DEFAULT NULL,
  `numberOfEmployees` int(11) DEFAULT NULL,
  `tangibleAssetsNonCash` decimal(20,5) DEFAULT NULL,
  PRIMARY KEY (`tieDocId`,`taxJurisdiction`),
  KEY `cbcrtable1_ibfk_1_idx` (`tieDocId`),
  CONSTRAINT `cbcrtable1_ibfk_1` FOREIGN KEY (`tieDocId`) REFERENCES `tiedoc` (`tieDocId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cbcrtable1`
--

LOCK TABLES `cbcrtable1` WRITE;
/*!40000 ALTER TABLE `cbcrtable1` DISABLE KEYS */;
INSERT INTO `cbcrtable1` VALUES (15,'test1',11.00000,33.00000,22.00000,123.00000,NULL,NULL,NULL,NULL,NULL,NULL),(16,'test2',22.00000,44.00000,11123.00000,123.00000,NULL,NULL,NULL,NULL,NULL,NULL),(72,'MX',300.00000,400.00000,700.00000,400.00000,80.00000,20.00000,250000.00000,20000.00000,300,7000000.00000),(72,'US',1000.00000,2000.00000,3000.00000,500.00000,100.00000,150.00000,1000000.00000,10000.00000,120,150000000.00000),(73,'MX',300.00000,400.00000,700.00000,400.00000,80.00000,20.00000,250000.00000,20000.00000,300,7000000.00000),(73,'US',1000.00000,2000.00000,3000.00000,500.00000,100.00000,150.00000,1000000.00000,10000.00000,120,150000000.00000),(74,'MX',300.00000,400.00000,700.00000,400.00000,80.00000,20.00000,250000.00000,20000.00000,300,7000000.00000),(74,'US',1000.00000,2000.00000,3000.00000,500.00000,100.00000,150.00000,1000000.00000,10000.00000,120,150000000.00000),(106,'MX',300.00000,400.00000,700.00000,400.00000,80.00000,20.00000,250000.00000,20000.00000,300,7000000.00000),(106,'US',1000.00000,2000.00000,3000.00000,500.00000,100.00000,150.00000,1000000.00000,10000.00000,120,150000000.00000),(114,'MX',300.00000,400.00000,700.00000,400.00000,80.00000,20.00000,250000.00000,20000.00000,300,7000000.00000),(114,'US',1000.00000,2000.00000,3000.00000,500.00000,100.00000,150.00000,1000000.00000,10000.00000,120,150000000.00000),(120,'MX',300.00000,400.00000,700.00000,400.00000,80.00000,20.00000,250000.00000,20000.00000,300,7000000.00000),(120,'US',1000.00000,2000.00000,3000.00000,500.00000,100.00000,150.00000,1000000.00000,10000.00000,120,150000000.00000),(153,'MX',300.00000,400.00000,700.00000,400.00000,80.00000,20.00000,250000.00000,20000.00000,300,7000000.00000),(153,'US',1000.00000,2000.00000,3000.00000,500.00000,100.00000,150.00000,1000000.00000,10000.00000,120,150000000.00000);
/*!40000 ALTER TABLE `cbcrtable1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cbcrtable2`
--

DROP TABLE IF EXISTS `cbcrtable2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cbcrtable2` (
  `tieDocId` int(11) NOT NULL,
  `taxJurisdiction` varchar(80) NOT NULL,
  `entityCode` varchar(80) NOT NULL,
  `taxJurisOfIncorporation` varchar(200) DEFAULT NULL,
  `mainBusRAndD` int(11) DEFAULT NULL,
  `mainBusHoldingIp` int(11) DEFAULT NULL,
  `mainBusPurchasing` int(11) DEFAULT NULL,
  `mainBusSaleMktDistr` int(11) DEFAULT NULL,
  `mainBusAdminMgmtSupportSvc` int(11) DEFAULT NULL,
  `mainBusProvSvcToUnrelatedParti` int(11) DEFAULT NULL,
  `mainBusInternalGroupFinance` int(11) DEFAULT NULL,
  `mainBusRegulatedFinSvc` int(11) DEFAULT NULL,
  `mainBusInsurance` int(11) DEFAULT NULL,
  `mainBusHoldingEquityInstrument` int(11) DEFAULT NULL,
  `mainBusDormant` int(11) DEFAULT NULL,
  `mainBusOther` int(11) DEFAULT NULL,
  `mainBusOtherNotes` varchar(400) DEFAULT NULL,
  `mainBusMfctOrPrdn` int(11) DEFAULT NULL,
  PRIMARY KEY (`tieDocId`,`taxJurisdiction`,`entityCode`),
  KEY `cbcrtable2_ibfk_1_idx` (`tieDocId`),
  CONSTRAINT `cbcrtable2_ibfk_1` FOREIGN KEY (`tieDocId`) REFERENCES `tiedoc` (`tieDocId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cbcrtable2`
--

LOCK TABLES `cbcrtable2` WRITE;
/*!40000 ALTER TABLE `cbcrtable2` DISABLE KEYS */;
INSERT INTO `cbcrtable2` VALUES (15,'RO','RU=94764','RO',0,1,1,1,1,1,1,1,1,1,1,1,'1',NULL),(72,'MX','AbcCorp','US',0,0,0,0,0,0,0,0,1,0,0,0,'',0),(72,'MX','MexSub1','MX',0,0,1,0,0,0,1,0,0,0,0,0,'',0),(72,'US','AbcCorp','US',1,0,0,1,0,0,0,0,0,0,0,0,'',0),(73,'MX','AbcCorp','US',0,0,0,0,0,0,0,0,1,0,0,0,'',0),(73,'MX','MexSub1','MX',0,0,1,0,0,0,1,0,0,0,0,0,'',0),(73,'US','AbcCorp','US',1,0,0,1,0,0,0,0,0,0,0,0,'',0),(74,'MX','AbcCorp','US',0,0,0,0,0,0,0,0,1,0,0,0,'',0),(74,'MX','MexSub1','MX',0,0,1,0,0,0,1,0,0,0,0,0,'',0),(74,'US','AbcCorp','US',1,0,0,1,0,0,0,0,0,0,0,0,'',0),(106,'MX','AbcCorp','US',0,0,0,0,0,0,0,0,1,0,0,0,'',0),(106,'MX','MexSub1','MX',0,0,1,0,0,0,1,0,0,0,0,0,'',0),(106,'US','AbcCorp','US',1,0,0,1,0,0,0,0,0,0,0,0,'',0),(114,'MX','AbcCorp','US',0,0,0,0,0,0,0,0,1,0,0,0,'',0),(114,'MX','MexSub1','MX',0,0,1,0,0,0,1,0,0,0,0,0,'',0),(114,'US','AbcCorp','US',1,0,0,1,0,0,0,0,0,0,0,0,'',0),(120,'MX','AbcCorp','US',0,0,0,0,0,0,0,0,1,0,0,0,'',0),(120,'MX','MexSub1','MX',0,0,1,0,0,0,1,0,0,0,0,0,'',0),(120,'US','AbcCorp','US',1,0,0,1,0,0,0,0,0,0,0,0,'',0),(153,'MX','AbcCorp','US',0,0,0,0,0,0,0,0,1,0,0,0,'',0),(153,'MX','MexSub1','MX',0,0,1,0,0,0,1,0,0,0,0,0,'',0),(153,'US','AbcCorp','US',1,0,0,1,0,0,0,0,0,0,0,0,'',0);
/*!40000 ALTER TABLE `cbcrtable2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cbcrtable3`
--

DROP TABLE IF EXISTS `cbcrtable3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cbcrtable3` (
  `tieDocId` int(11) NOT NULL,
  `countryCode` varchar(20) NOT NULL,
  `summaryRef` varchar(20) NOT NULL,
  `mneGroupName` varchar(80) DEFAULT NULL,
  `fiscalYearConcerned` varchar(80) DEFAULT NULL,
  `additionalInfo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`tieDocId`,`countryCode`,`summaryRef`),
  KEY `cbcrtable3_ibfk_1_idx` (`tieDocId`),
  CONSTRAINT `cbcrtable3_ibfk_1` FOREIGN KEY (`tieDocId`) REFERENCES `tiedoc` (`tieDocId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cbcrtable3`
--

LOCK TABLES `cbcrtable3` WRITE;
/*!40000 ALTER TABLE `cbcrtable3` DISABLE KEYS */;
INSERT INTO `cbcrtable3` VALUES (72,'MX','CBC601','ABC Corp','2015','All currency are translated using spot rate 12/31/2015.'),(72,'MX','CBC602','ABC Corp','2015','The number is much increased this year due to acquisition of a provate company'),(72,'US','CBC601','ABC Corp','2015','The headquarter office rental cost is high due to the high real estate market at the location.'),(73,'MX','CBC601','ABC Corp','2015','All currency are translated using spot rate 12/31/2015.'),(73,'MX','CBC602','ABC Corp','2015','The number is much increased this year due to acquisition of a provate company'),(73,'US','CBC601','ABC Corp','2015','The headquarter office rental cost is high due to the high real estate market at the location.'),(74,'MX','CBC601','ABC Corp','2015','All currency are translated using spot rate 12/31/2015.'),(74,'MX','CBC602','ABC Corp','2015','The number is much increased this year due to acquisition of a provate company'),(74,'US','CBC601','ABC Corp','2015','The headquarter office rental cost is high due to the high real estate market at the location.'),(106,'MX','CBC601','ABC Corp','2015','All currency are translated using spot rate 12/31/2015.'),(106,'MX','CBC602','ABC Corp','2015','The number is much increased this year due to acquisition of a provate company'),(106,'US','CBC601','ABC Corp','2015','The headquarter office rental cost is high due to the high real estate market at the location.'),(114,'MX','CBC601','ABC Corp','2015','All currency are translated using spot rate 12/31/2015.'),(114,'MX','CBC602','ABC Corp','2015','The number is much increased this year due to acquisition of a provate company'),(114,'US','CBC601','ABC Corp','2015','The headquarter office rental cost is high due to the high real estate market at the location.'),(120,'MX','CBC601','ABC Corp','2015','All currency are translated using spot rate 12/31/2015.'),(120,'MX','CBC602','ABC Corp','2015','The number is much increased this year due to acquisition of a provate company'),(120,'US','CBC601','ABC Corp','2015','The headquarter office rental cost is high due to the high real estate market at the location.'),(153,'MX','CBC601','ABC Corp','2015','All currency are translated using spot rate 12/31/2015.'),(153,'MX','CBC602','ABC Corp','2015','The number is much increased this year due to acquisition of a provate company'),(153,'US','CBC601','ABC Corp','2015','The headquarter office rental cost is high due to the high real estate market at the location.');
/*!40000 ALTER TABLE `cbcrtable3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxentity`
--

DROP TABLE IF EXISTS `taxentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taxentity` (
  `tieDocId` int(11) NOT NULL,
  `entityCode` varchar(80) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `taxIdNum` varchar(80) DEFAULT NULL,
  `incorpCountryCode` varchar(20) DEFAULT NULL,
  `otherEntityInfo` varchar(4000) DEFAULT NULL,
  `resCountryCode` varchar(20) DEFAULT NULL,
  `idNum` varchar(80) DEFAULT NULL,
  `isPermExtabliment` int(11) DEFAULT NULL,
  `addrLegalType` varchar(20) DEFAULT NULL,
  `addrCountryCode` varchar(20) DEFAULT NULL,
  `addrFreeText` varchar(200) DEFAULT NULL,
  `addrStreet` varchar(80) DEFAULT NULL,
  `addrBuildingIdentifier` varchar(40) DEFAULT NULL,
  `addrSuiteIdentifier` varchar(20) DEFAULT NULL,
  `addrFloorIdentifier` varchar(20) DEFAULT NULL,
  `addrPOB` varchar(20) DEFAULT NULL,
  `addrPostCode` varchar(40) DEFAULT NULL,
  `addrCity` varchar(80) DEFAULT NULL,
  `addrCountrySubentity` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`tieDocId`,`entityCode`),
  CONSTRAINT `taxentity_ibfk_1` FOREIGN KEY (`tieDocId`) REFERENCES `tiedoc` (`tieDocId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxentity`
--

LOCK TABLES `taxentity` WRITE;
/*!40000 ALTER TABLE `taxentity` DISABLE KEYS */;
INSERT INTO `taxentity` VALUES (15,'RU=04054','Demo 15','textenety 15','10019','US',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1002 WhiteSell St',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'RU=05686','Demo 16','textenety 16','10020','US',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'337 Mon Ave',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(72,'AbcCorp','ABC Corp','An example parent company.','123456789','US','None','US','',0,'','US','\"123 Main Street, Philadelphia, PA 19101, USA\"','123','','','','','no value','no value','no value'),(72,'MexSub1','Mexico Sub1','A subsidiary of ABC Corp in Mexico','AbcSub1','MX','None','MX','',0,'','MX','\"456 Market St, Mexico City, MX\"','456','','','','','no value','no value','no value'),(73,'AbcCorp','ABC Corp','An example parent company.','123456789','US','None','US','',0,'','US','\"123 Main Street, Philadelphia, PA 19101, USA\"','123','','','','','no value','no value','no value'),(73,'MexSub1','Mexico Sub1','A subsidiary of ABC Corp in Mexico','AbcSub1','MX','None','MX','',0,'','MX','\"456 Market St, Mexico City, MX\"','456','','','','','no value','no value','no value'),(74,'AbcCorp','ABC Corp','An example parent company.','123456789','US','None','US','',0,'','US','\"123 Main Street, Philadelphia, PA 19101, USA\"','123','','','','','no value','no value','no value'),(74,'MexSub1','Mexico Sub1','A subsidiary of ABC Corp in Mexico','AbcSub1','MX','None','MX','',0,'','MX','\"456 Market St, Mexico City, MX\"','456','','','','','no value','no value','no value'),(106,'AbcCorp','ABC Corp','An example parent company.','123456789','US','None','US','',0,'','US','\"123 Main Street, Philadelphia, PA 19101, USA\"','123','','','','','no value','no value','no value'),(106,'MexSub1','Mexico Sub1','A subsidiary of ABC Corp in Mexico','AbcSub1','MX','None','MX','',0,'','MX','\"456 Market St, Mexico City, MX\"','456','','','','','no value','no value','no value'),(114,'AbcCorp','ABC Corp','An example parent company.','123456789','US','None','US','',0,'','US','\"123 Main Street, Philadelphia, PA 19101, USA\"','123','','','','','no value','no value','no value'),(114,'MexSub1','Mexico Sub1','A subsidiary of ABC Corp in Mexico','AbcSub1','MX','None','MX','',0,'','MX','\"456 Market St, Mexico City, MX\"','456','','','','','no value','no value','no value'),(120,'AbcCorp','ABC Corp','An example parent company.','123456789','US','None','US','',0,'','US','\"123 Main Street, Philadelphia, PA 19101, USA\"','123','','','','','no value','no value','no value'),(120,'MexSub1','Mexico Sub1','A subsidiary of ABC Corp in Mexico','AbcSub1','MX','None','MX','',0,'','MX','\"456 Market St, Mexico City, MX\"','456','','','','','no value','no value','no value'),(153,'AbcCorp','ABC Corp','An example parent company.','123456789','US','None','US','',0,'','US','\"123 Main Street, Philadelphia, PA 19101, USA\"','123','','','','','no value','no value','no value'),(153,'MexSub1','Mexico Sub1','A subsidiary of ABC Corp in Mexico','AbcSub1','MX','None','MX','',0,'','MX','\"456 Market St, Mexico City, MX\"','456','','','','','no value','no value','no value');
/*!40000 ALTER TABLE `taxentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tieapp`
--

DROP TABLE IF EXISTS `tieapp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tieapp` (
  `tieAppId` int(11) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `code` varchar(80) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `ctsId` varchar(80) DEFAULT NULL,
  `ctsPwd` varchar(400) DEFAULT NULL,
  `taxAuthorityCode` varchar(80) DEFAULT NULL,
  `countryCode` varchar(80) DEFAULT NULL,
  `isRunning` int(11) DEFAULT NULL,
  PRIMARY KEY (`tieAppId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tieapp`
--

LOCK TABLES `tieapp` WRITE;
/*!40000 ALTER TABLE `tieapp` DISABLE KEYS */;
INSERT INTO `tieapp` VALUES (1,'American SAT','000','App description','1','000','000','MX',1),(2,'US',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tieapp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiedoc`
--

DROP TABLE IF EXISTS `tiedoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiedoc` (
  `tieDocId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) DEFAULT NULL,
  `code` varchar(80) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `tieDocTypeId` int(11) DEFAULT NULL,
  `tieMsgId` int(11) NOT NULL,
  `reportingEntityCode` varchar(80) DEFAULT NULL,
  `currencyCode` varchar(20) DEFAULT NULL,
  `resCountryCode` varchar(20) DEFAULT NULL,
  `sourceDoc` varchar(200) DEFAULT NULL,
  `accountingStandard` varchar(80) DEFAULT NULL,
  `reportingPeriod` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`tieDocId`),
  KEY `tieDocTypeId` (`tieDocTypeId`),
  KEY `tiedoc_ibfk_1` (`tieMsgId`),
  CONSTRAINT `tiedoc_ibfk_1` FOREIGN KEY (`tieMsgId`) REFERENCES `tiemsg` (`tieMsgId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `tiedoc_ibfk_2` FOREIGN KEY (`tieDocTypeId`) REFERENCES `tiedoctype` (`tieDocTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiedoc`
--

LOCK TABLES `tiedoc` WRITE;
/*!40000 ALTER TABLE `tiedoc` DISABLE KEYS */;
INSERT INTO `tiedoc` VALUES (1,'doc1','doc001','This is tieDoc001',1,1,'1','1','1','',NULL,NULL),(2,'doc2','doc002','This is tiedoc2',1,1,'1','1','1',NULL,NULL,NULL),(3,'doc3','doc003','This is tiedoc3',1,1,'1','1','1',NULL,NULL,NULL),(4,'doc4','doc004','This is tieDoc4',1,2,'1','1','1','',NULL,NULL),(5,'doc5','doc005','This is tiedoc5',1,2,'1','1','1',NULL,NULL,NULL),(6,'doc6','doc006','This is tiedoc6',2,3,'1','1','1',NULL,NULL,NULL),(7,'doc7','doc007','This is tieDoc7',1,4,'1','1','1','',NULL,NULL),(8,'doc8','doc008','This is tiedoc8',1,5,'1','1','1',NULL,NULL,NULL),(9,'doc9','doc009','This is tiedoc9',2,6,'1','1','1',NULL,NULL,NULL),(10,'doc10','doc0010','This is tieDoc10',1,7,'1','1','1','',NULL,NULL),(11,'doc11','doc0011','This is tiedoc11',1,8,'1','1','1',NULL,NULL,NULL),(12,'doc12','doc0012','This is tiedoc12',2,9,'1','1','1',NULL,NULL,NULL),(15,'doc15','Sample15','Sample15',2,11,'RU=04054','MXN','US','2','US GAAP','2014-12-31'),(16,'doc16','Sample16','Sample16',2,12,'RU=05686','MXN','US','2','US GAAP','2014-12-31'),(72,'Sample CBCR Report 1','Sample1','A sample CBCR report that government gets from its taxpayer.',1,10,'AbcCorp','USD','US',NULL,NULL,NULL),(73,'Sample CBCR Report 1','Sample1_1','A sample CBCR report that government gets from its taxpayer.',1,10,'AbcCorp','USD','US',NULL,NULL,NULL),(74,'Sample CBCR Report 1','Sample1','A sample CBCR report that government gets from its taxpayer.',1,12,'AbcCorp','USD','US',NULL,NULL,NULL),(106,'Sample CBCR Report 1','Sample1_2','A sample CBCR report that government gets from its taxpayer.',1,10,'AbcCorp','USD','US',NULL,NULL,NULL),(114,'Sample CBCR Report 1','Sample1_3','A sample CBCR report that government gets from its taxpayer.',1,10,'AbcCorp','USD','US',NULL,NULL,NULL),(120,'Sample CBCR Report 1','Sample1_4','A sample CBCR report that government gets from its taxpayer.',1,10,'AbcCorp','USD','US',NULL,NULL,NULL),(153,'Sample CBCR Report 1','Sample1','A sample CBCR report that government gets from its taxpayer.',1,46,'AbcCorp','USD','US',NULL,NULL,NULL);
/*!40000 ALTER TABLE `tiedoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiedoctype`
--

DROP TABLE IF EXISTS `tiedoctype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiedoctype` (
  `tieDocTypeId` int(11) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `code` varchar(80) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`tieDocTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiedoctype`
--

LOCK TABLES `tiedoctype` WRITE;
/*!40000 ALTER TABLE `tiedoctype` DISABLE KEYS */;
INSERT INTO `tiedoctype` VALUES (1,'excel','excel','It\'s excel type'),(2,'csv','csv','It\'s csv type'),(3,'CBCR','cbcr','It is CBCR type');
/*!40000 ALTER TABLE `tiedoctype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiemsg`
--

DROP TABLE IF EXISTS `tiemsg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiemsg` (
  `tieMsgId` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(200) DEFAULT NULL,
  `code` varchar(80) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `notes` varchar(2000) DEFAULT NULL,
  `senderId` int(11) DEFAULT NULL,
  `ownerid` int(11) DEFAULT NULL,
  `tieMsgStateId` int(11) DEFAULT NULL,
  `sendingEntityIdNum` varchar(80) DEFAULT NULL,
  `transmittingCountry` varchar(20) DEFAULT NULL,
  `receivingCountries` varchar(400) DEFAULT NULL,
  `messageType` varchar(20) DEFAULT NULL,
  `lauguage` varchar(20) DEFAULT NULL,
  `warning` varchar(4000) DEFAULT NULL,
  `contact` varchar(400) DEFAULT NULL,
  `messageRefId` varchar(200) DEFAULT NULL,
  `messageTypeIndic` varchar(20) DEFAULT NULL,
  `corrMessageRefIds` varchar(200) DEFAULT NULL,
  `reportingPeriod` varchar(20) DEFAULT NULL,
  `timestamp` varchar(20) DEFAULT NULL,
  `rawMsg` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`tieMsgId`),
  KEY `senderId` (`senderId`),
  KEY `tieMsgStateId` (`tieMsgStateId`),
  KEY `ownerid` (`ownerid`),
  CONSTRAINT `tiemsg_ibfk_1` FOREIGN KEY (`senderId`) REFERENCES `tieuser` (`tieUserId`),
  CONSTRAINT `tiemsg_ibfk_2` FOREIGN KEY (`tieMsgStateId`) REFERENCES `tiemsgstate` (`tieMsgStateId`),
  CONSTRAINT `tiemsg_ibfk_3` FOREIGN KEY (`ownerid`) REFERENCES `tieuser` (`tieUserId`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiemsg`
--

LOCK TABLES `tiemsg` WRITE;
/*!40000 ALTER TABLE `tiemsg` DISABLE KEYS */;
INSERT INTO `tiemsg` VALUES (1,'cbcr1','1','This is cbcr1','tie msg details here',2,1,1,'1','US','US,CN','CbCR','en','This is warning','contacters','1','CBC401','1','2014-12-31','2016-08-03T13:23:21','raw'),(2,'cbcr2','2','This is cbcr2','tie msg details here',1,2,1,'1','US','US,CN','CbCR','en','This is warning','contacters','1','CBC401','1','2014-12-31','2016-08-14T13:23:21','raw'),(3,'cbcr4','3','This is cbcr3','tie msg details here',1,3,1,'1','US','US,CN','CbCR','en','This is warning','contacters','1','CBC401','1','2014-12-31','2016-08-04T23:23:21','raw'),(4,'cbcr5','4','This is cbcr4','tie msg details here',2,1,1,'1','US','US,CN','CbCR','en','This is warning','contacters','1','CBC401','1','2014-12-31','2016-08-04T10:23:21','raw'),(5,'cbcr6','5','This is cbcr5','tie msg details here',2,1,1,'1','US','US,CN','CbCR','en','This is warning','contacters','1','CBC401','1','2014-12-31','2016-07-04T13:13:21','raw'),(6,'cbcr7','6','This is cbcr6','tie msg details here',3,1,1,'1','US','US,CN','CbCR','en','This is warning','contacters','1','CBC401','1','2014-12-31','2013-08-04T13:23:21','raw'),(7,'cbcr8','7','This is cbcr7','tie msg details here',3,1,1,'1','US','US,CN','CbCR','fr','This is warning','contacters','1','CBC401','1','2014-12-31','2014-08-04T13:23:21','raw'),(8,'CBCR to US','8','CBCR docs received from Canada','tie msg details here',1,3,1,'1','US','US,CN','CbCR','es','This is warning','contacters','1','CBC401','1','2014-12-31','2014-08-04T13:23:21','raw'),(9,'CBCR to MX','9','CBCR docs for MX','tie msg details here',1,3,1,'1','US','US,CN','CbCR','es','This is warning','contacters','1','CBC401','1','2014-12-31','2015-08-04T13:23:21','raw'),(10,'CBCR to DE ','10','CBCR docs for DE','Sending the CBCR docs of Industry Co and EYSampleCo to Germany tax authority.\n',4,4,1,NULL,'US','MX','CbCR',NULL,'Waning: ','contacters info','1','CBC401','1','2014-12-31','1/17/2017, 11:35 AM',NULL),(11,'CBCR to US','11','CBCR docs for US','CBCR docs for US',4,4,1,NULL,'US','MX','CbCR',NULL,'This is warning','contacters','1','CBC401','1','2013-12-31','1/17/2017, 11:34 AM',NULL),(12,'CBCR to US','12','CBCR docs for MX','CBCR docs for MX client',4,4,1,NULL,'US','MX','CbCR',NULL,'This is warning','contacters','1','CBC401','1','2012-12-31','1/18/2017, 10:33 AM',NULL),(46,'123','46','CBCR docs','123',4,4,1,NULL,'MX','US','CbC',NULL,'12312','123','1','CBC402',NULL,'new','3/2/2017, 2:12 PM',NULL),(51,NULL,'51',NULL,NULL,4,4,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'new','3/2/2017, 5:32 PM',NULL);
/*!40000 ALTER TABLE `tiemsg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiemsgreceiver`
--

DROP TABLE IF EXISTS `tiemsgreceiver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiemsgreceiver` (
  `tiemsgid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `senderCode` varchar(80) NOT NULL,
  `receiverCode` varchar(80) NOT NULL,
  `tieMsgTrackingStatusId` int(11) DEFAULT NULL,
  `trackingNote` varchar(2000) DEFAULT NULL,
  `receivingCountry` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`tiemsgid`,`senderCode`,`receiverCode`),
  KEY `tieMsgTrackingStatusId` (`tieMsgTrackingStatusId`),
  CONSTRAINT `tiemsgreceiver_ibfk_1` FOREIGN KEY (`tieMsgTrackingStatusId`) REFERENCES `tiemsgtrackingstateus` (`tieMsgTrackingStatusId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiemsgreceiver`
--

LOCK TABLES `tiemsgreceiver` WRITE;
/*!40000 ALTER TABLE `tiemsgreceiver` DISABLE KEYS */;
INSERT INTO `tiemsgreceiver` VALUES (10,'Danil13','Marisol',1,'note','MX'),(10,'John16','Marisol',1,'note','US'),(10,'Mary16','Marisol',1,'note','DE'),(10,'Max','Marisol',1,'note','US'),(11,'Larry','Marisol',1,'note','CN'),(11,'Liu','Marisol',1,'note','US'),(12,'Peter','Marisol',1,'note','MX');
/*!40000 ALTER TABLE `tiemsgreceiver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiemsgstate`
--

DROP TABLE IF EXISTS `tiemsgstate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiemsgstate` (
  `tieMsgStateId` int(11) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `code` varchar(80) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `countryCodeA2` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`tieMsgStateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiemsgstate`
--

LOCK TABLES `tiemsgstate` WRITE;
/*!40000 ALTER TABLE `tiemsgstate` DISABLE KEYS */;
INSERT INTO `tiemsgstate` VALUES (1,'Created','Created','The message is created in the system',' '),(2,'Sent','Sent','The message is sent in the system',NULL),(3,'DeliveredToAll','DeliveredToAll','The message is delivered to all in the system',NULL),(4,'Deleted','Deleted','The message is deleted in the system',NULL),(5,'Archived','Archived','The message is archived in the system',NULL),(6,'Error','Error','The message is an error in the system',NULL);
/*!40000 ALTER TABLE `tiemsgstate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiemsgtrackingstateus`
--

DROP TABLE IF EXISTS `tiemsgtrackingstateus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiemsgtrackingstateus` (
  `tieMsgTrackingStatusId` int(11) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `code` varchar(80) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`tieMsgTrackingStatusId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiemsgtrackingstateus`
--

LOCK TABLES `tiemsgtrackingstateus` WRITE;
/*!40000 ALTER TABLE `tiemsgtrackingstateus` DISABLE KEYS */;
INSERT INTO `tiemsgtrackingstateus` VALUES (1,'created','created','created');
/*!40000 ALTER TABLE `tiemsgtrackingstateus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tieoplog`
--

DROP TABLE IF EXISTS `tieoplog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tieoplog` (
  `timeStamp` int(11) DEFAULT NULL,
  `timeYear` int(11) DEFAULT NULL,
  `timeMonth` int(11) DEFAULT NULL,
  `timeDay` int(11) DEFAULT NULL,
  `timeHour` int(11) DEFAULT NULL,
  `timeMinute` int(11) DEFAULT NULL,
  `timeSecond` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `userCode` varchar(80) DEFAULT NULL,
  `userName` varchar(80) DEFAULT NULL,
  `userCtsId` varchar(80) DEFAULT NULL,
  `actionTypeId` int(11) DEFAULT NULL,
  `actionName` varchar(80) DEFAULT NULL,
  `actionCode` varchar(80) DEFAULT NULL,
  `actionNotes` varchar(2000) DEFAULT NULL,
  `msgId` int(11) DEFAULT NULL,
  `msgSubject` varchar(200) DEFAULT NULL,
  `msgCode` varchar(80) DEFAULT NULL,
  `docId` int(11) DEFAULT NULL,
  `docName` varchar(200) DEFAULT NULL,
  `docCode` varchar(80) DEFAULT NULL,
  `fieldNames` varchar(400) DEFAULT NULL,
  `fieldsBefore` varchar(200) DEFAULT NULL,
  `fieldsAfter` varchar(200) DEFAULT NULL,
  KEY `actionTypeId` (`actionTypeId`),
  CONSTRAINT `tieoplog_ibfk_1` FOREIGN KEY (`actionTypeId`) REFERENCES `tieoplogactiontype` (`tieOpLogActionTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tieoplog`
--

LOCK TABLES `tieoplog` WRITE;
/*!40000 ALTER TABLE `tieoplog` DISABLE KEYS */;
/*!40000 ALTER TABLE `tieoplog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tieoplogactiontype`
--

DROP TABLE IF EXISTS `tieoplogactiontype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tieoplogactiontype` (
  `tieOpLogActionTypeId` int(11) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `code` varchar(80) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`tieOpLogActionTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tieoplogactiontype`
--

LOCK TABLES `tieoplogactiontype` WRITE;
/*!40000 ALTER TABLE `tieoplogactiontype` DISABLE KEYS */;
/*!40000 ALTER TABLE `tieoplogactiontype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tieuser`
--

DROP TABLE IF EXISTS `tieuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tieuser` (
  `tieUserId` int(11) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `code` varchar(80) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `ctsUserId` varchar(80) DEFAULT NULL,
  `ctsUserPwd` varchar(200) DEFAULT NULL,
  `ctsUserCertificate` varchar(200) DEFAULT NULL,
  `tieAppId` int(11) DEFAULT NULL,
  `isExternal` int(11) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`tieUserId`),
  KEY `tieAppId` (`tieAppId`),
  CONSTRAINT `tieuser_ibfk_1` FOREIGN KEY (`tieAppId`) REFERENCES `tieapp` (`tieAppId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tieuser`
--

LOCK TABLES `tieuser` WRITE;
/*!40000 ALTER TABLE `tieuser` DISABLE KEYS */;
INSERT INTO `tieuser` VALUES (1,'Adam','Adam16','Adam description','adam@gmail.com','1','000','certificateopm',1,1,'001'),(2,'John','John16','John description','john@gmail.com','1','000','certificateopm',1,1,'002'),(3,'Mary','Mary16','Mary description','mary@gmail.com','1','000','certificateopm',1,1,'003'),(4,'Marisol','Marisol','The user  David','marisol@gmail.com','1','000','cert',1,1,'Marisol');
/*!40000 ALTER TABLE `tieuser` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-03  9:57:19
