-- MySQL dump 10.19  Distrib 10.3.31-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: inform_a_fish
-- ------------------------------------------------------
-- Server version	10.3.31-MariaDB-0+deb10u1

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
-- Table structure for table `Body`
--

DROP TABLE IF EXISTS `Body`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Body` (
  `Name` varchar(100) NOT NULL,
  `BodyID` int(11) NOT NULL AUTO_INCREMENT,
  `Size` int(11) NOT NULL,
  `Type` varchar(100) NOT NULL,
  PRIMARY KEY (`BodyID`),
  UNIQUE KEY `Name` (`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Body`
--

LOCK TABLES `Body` WRITE;
/*!40000 ALTER TABLE `Body` DISABLE KEYS */;
INSERT INTO `Body` VALUES ('lake evans',1,5892700,'lake'),('castaic lake',2,430556,'lake'),('pyramid lake',3,54892570,'lake'),('quail lake',4,21527820,'lake'),('lake isabella',5,617506560,'lake'),('california aqueduct',6,257875200,'canal'),('san luis ressivor',7,553107456,'ressivor'),('oneill forebay',8,98020454,'lake'),('lake webb',9,43462425,'lake'),('lake ming',10,4530240,'lake');
/*!40000 ALTER TABLE `Body` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Catches`
--

DROP TABLE IF EXISTS `Catches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Catches` (
  `Username` varchar(100) NOT NULL,
  `BodyID` int(11) NOT NULL,
  `FishName` varchar(100) NOT NULL,
  `DateCaught` datetime NOT NULL DEFAULT current_timestamp(),
  `SizeCaught` int(11) DEFAULT NULL,
  `NativeOrStocked` varchar(20) DEFAULT NULL,
  `Bait` varchar(100) DEFAULT NULL,
  `SpotID` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`FishName`,`BodyID`,`Username`,`DateCaught`),
  KEY `Username` (`Username`),
  KEY `BodyID` (`BodyID`),
  CONSTRAINT `Catches_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `Fisherman` (`Username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Catches_ibfk_2` FOREIGN KEY (`BodyID`) REFERENCES `Body` (`BodyID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Catches_ibfk_3` FOREIGN KEY (`FishName`) REFERENCES `Fish` (`FishName`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Catches`
--

LOCK TABLES `Catches` WRITE;
/*!40000 ALTER TABLE `Catches` DISABLE KEYS */;
INSERT INTO `Catches` VALUES ('abarhems3',1,'Black Crappie','2022-03-01 10:36:04',15,'Native','Worms','35.234278578105545, -119.29835354929749'),('biggy_cheese',8,'Black Crappie','2022-05-18 17:59:21',10,'Native','Jig','35.2602764, -118.9125167'),('biggy_cheese',8,'Black Crappie','2022-05-18 18:01:53',10,'Native','Live Bait',''),('krodgier2',8,'Black Crappie','2022-03-24 11:24:38',10,'Native','Live Bait','37.08522740982039, -121.04667615918702'),('nboylin8',9,'Black Crappie','2022-03-09 05:03:04',8,'Native','Live Bait','35.22480209332371, -119.26256346464582'),('vpulford0',10,'Black Crappie','2022-03-10 01:49:39',9,'Native','Fresh Shad','35.441382526999746, -118.8642409190524'),('abarhems3',1,'Blue Catfish','2022-03-11 23:50:51',12,'Native','Live Bait','35.234278578105545, -119.29835354929749'),('ctrainer4',2,'Blue Catfish','2022-03-02 12:50:10',5,'Native','Fresh Shad','34.52869025203219, -118.60444781895313'),('user',5,'Blue Catfish','2022-05-18 17:32:44',15,'Native','Live Bait',''),('nboylin8',9,'Blue Catfish','2022-03-25 12:12:04',23,'Native','Jig','35.22480209332371, -119.26256346464582'),('vpulford0',10,'Blue Catfish','2022-03-10 19:00:22',5,'Native','Live Bait','35.441382526999746, -118.8642409190524'),('abarhems3',1,'Lake trout','2022-03-17 14:33:33',7,'Stocked','Jig','35.234278578105545, -119.29835354929749'),('ctrainer4',2,'Lake trout','2022-03-12 17:49:11',10,'Stocked','Live Bait','34.52869025203219, -118.60444781895313'),('esimmell7',3,'Lake trout','2022-03-03 11:09:04',10,'Stocked','Live Bait','34.655299357921805, -118.77554973408046'),('foscandall6',3,'Lake trout','2022-03-21 09:08:38',10,'Stocked','Live Bait','34.655299357921805, -118.77554973408046'),('ghannaby1',3,'Lake trout','2022-03-01 11:10:11',10,'Stocked','Live Bait','34.655299357921805, -118.77554973408046'),('jharrowsmith5',3,'Lake trout','2022-03-20 12:33:01',10,'Stocked','Live Bait','34.655299357921805, -118.77554973408046'),('jreitenbach9',3,'Lake trout','2022-03-08 19:18:02',10,'Stocked','Live Bait','34.655299357921805, -118.77554973408046'),('krodgier2',3,'Lake trout','2022-03-04 01:02:03',10,'Stocked','Live Bait','34.655299357921805, -118.77554973408046'),('nboylin8',3,'Lake trout','2022-03-03 13:13:03',10,'Stocked','Live Bait','34.655299357921805, -118.77554973408046'),('vpulford0',10,'Lake trout','2022-03-26 08:36:27',15,'Stocked','Berkely Micetails','35.441382526999746, -118.8642409190524'),('ctrainer4',2,'Largemouth bass','2022-03-18 13:27:37',8,'Native','Berkely Micetails','34.52869025203219, -118.60444781895313'),('esimmell7',3,'Largemouth bass','2022-03-13 01:30:48',13,'Native','Jig','34.655299357921805, -118.77554973408046'),('foscandall6',4,'Largemouth bass','2022-03-04 10:20:50',17,'Native','Live Bait','34.772910521063025, -118.74756360743514'),('biggy_cheese',8,'Largemouth bass','2022-03-17 00:00:00',9,'Stocked','bass',''),('nboylin8',9,'Largemouth bass','2022-03-08 11:01:10',8,'Native','Worms','35.22480209332371, -119.26256346464582'),('esimmell7',2,'Pink salmon','2022-05-04 15:30:25',19,'Native','Worms','34.655299357921805, -118.77554973408046'),('nboylin8',2,'Pink salmon','2022-05-03 00:00:00',15,'Stocked','Fresh Shad',''),('esimmell7',3,'Pink salmon','2022-03-19 19:35:20',12,'Native','Bblade baits','34.655299357921805, -118.77554973408046'),('foscandall6',4,'Pink salmon','2022-03-04 16:06:26',17,'Native','Berkely Micetails','34.772910521063025, -118.74756360743514'),('ghannaby1',5,'Pink salmon','2022-03-05 00:40:01',20,'Native','Jig','35.63946107281644, -118.48471233812928'),('nboylin8',9,'Pink salmon','2022-03-09 11:02:59',8,'Native','Worms','35.22480209332371, -119.26256346464582'),('foscandall6',4,'Rainbow trout','2022-03-20 11:14:40',12,'Stocked','Spooks','34.772910521063025, -118.74756360743514'),('ghannaby1',5,'Rainbow trout','2022-03-05 06:28:44',23,'Stocked','Bblade baits','35.63946107281644, -118.48471233812928'),('jharrowsmith5',6,'Rainbow trout','2022-03-06 07:23:07',9,'Stocked','Berkely Micetails','35.232614328731906, -119.32707202167913'),('nboylin8',9,'Rainbow trout','2022-03-07 10:06:12',12,'Native','Worms','35.22480209332371, -119.26256346464582'),('ghannaby1',5,'Smallmouth bass','2022-03-21 04:27:08',5,'Native','Worms','35.63946107281644, -118.48471233812928'),('jharrowsmith5',6,'Smallmouth bass','2022-03-06 21:52:07',14,'Native','Spooks','35.232614328731906, -119.32707202167913'),('jreitenbach9',7,'Smallmouth bass','2022-03-07 13:18:59',7,'Native','Bblade baits','37.06151312223517, -121.11117528598983'),('nboylin8',9,'Smallmouth bass','2022-03-09 11:13:27',8,'Native','Worms','35.22480209332371, -119.26256346464582'),('jharrowsmith5',6,'Spotted bass','2022-03-22 15:04:18',12,'Native','Fresh Shad','35.232614328731906, -119.32707202167913'),('jreitenbach9',7,'Spotted bass','2022-03-07 19:02:17',16,'Native','Worms','37.06151312223517, -121.11117528598983'),('krodgier2',8,'Spotted bass','2022-03-08 00:07:10',14,'Stocked','Spooks','37.08522740982039, -121.04667615918702'),('nboylin8',9,'Spotted bass','2022-03-10 04:08:15',8,'Native','Worms','35.22480209332371, -119.26256346464582'),('jreitenbach9',7,'White Crappie','2022-03-23 11:31:10',6,'Native','Live Bait','37.06151312223517, -121.11117528598983'),('krodgier2',8,'White Crappie','2022-03-08 02:46:27',12,'Native','Fresh Shad','37.08522740982039, -121.04667615918702'),('nboylin8',9,'White Crappie','2022-03-09 09:50:17',8,'Native','Worms','35.22480209332371, -119.26256346464582');
/*!40000 ALTER TABLE `Catches` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`jquinonez`@`localhost`*/ /*!50003 TRIGGER fishSwims
AFTER INSERT ON Catches
FOR EACH ROW
BEGIN
    CALL FishBody(NEW.FishName, NEW.BodyID);
   
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary table structure for view `CatchesTable`
--

DROP TABLE IF EXISTS `CatchesTable`;
/*!50001 DROP VIEW IF EXISTS `CatchesTable`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `CatchesTable` (
  `FLname` tinyint NOT NULL,
  `Username` tinyint NOT NULL,
  `FishermanType` tinyint NOT NULL,
  `FishName` tinyint NOT NULL,
  `Bname` tinyint NOT NULL,
  `DateCaught` tinyint NOT NULL,
  `SizeCaught` tinyint NOT NULL,
  `NativeOrStocked` tinyint NOT NULL,
  `Bait` tinyint NOT NULL,
  `SpotID` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Catches_History`
--

DROP TABLE IF EXISTS `Catches_History`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Catches_History` (
  `Username` varchar(100) NOT NULL,
  `BodyID` int(11) NOT NULL,
  `FishName` varchar(100) NOT NULL,
  `DateCaught` datetime DEFAULT current_timestamp(),
  `SizeCaught` int(11) DEFAULT NULL,
  `NativeOrStocked` varchar(20) DEFAULT NULL,
  `Bait` varchar(100) DEFAULT NULL,
  `SpotID` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Catches_History`
--

LOCK TABLES `Catches_History` WRITE;
/*!40000 ALTER TABLE `Catches_History` DISABLE KEYS */;
/*!40000 ALTER TABLE `Catches_History` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fish`
--

DROP TABLE IF EXISTS `Fish`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fish` (
  `FishName` varchar(100) NOT NULL,
  `Color` varchar(100) DEFAULT NULL,
  `Bait` varchar(100) DEFAULT NULL,
  `Depth` int(11) NOT NULL,
  `Region` varchar(100) DEFAULT NULL,
  `TOD` varchar(100) NOT NULL,
  `Temp` int(11) DEFAULT NULL,
  PRIMARY KEY (`FishName`),
  UNIQUE KEY `FishName` (`FishName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fish`
--

LOCK TABLES `Fish` WRITE;
/*!40000 ALTER TABLE `Fish` DISABLE KEYS */;
INSERT INTO `Fish` VALUES ('Black Crappie','Green','Worms',8,'Logs','morning',72),('Blue Catfish','Gray','Fresh Shad',25,'Bottom Dweller','night',82),('Lake trout','Green','Live Bait',197,'Deep Water','morning',67),('Largemouth bass','Green','Live Bait',20,'Open Water','morning',79),('Pink salmon','Gray','Jig',60,'Freshwater','morning',50),('Rainbow trout','Rainbow','Berekely Micetails',160,'Streams','morning',67),('Smallmouth bass','Yellow/brown','Blade Baits',15,'Rocks','morning',71),('Spotted bass','Green','Spooks',70,'Rocks','evening',79),('White Crappie','White','Worms',15,'Shallow Water','night',72);
/*!40000 ALTER TABLE `Fish` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FishWaterType`
--

DROP TABLE IF EXISTS `FishWaterType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FishWaterType` (
  `FishName` varchar(100) NOT NULL,
  `WaterType` varchar(100) NOT NULL,
  UNIQUE KEY `FishName` (`FishName`,`WaterType`),
  CONSTRAINT `FishWaterType_ibfk_1` FOREIGN KEY (`FishName`) REFERENCES `Fish` (`FishName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FishWaterType`
--

LOCK TABLES `FishWaterType` WRITE;
/*!40000 ALTER TABLE `FishWaterType` DISABLE KEYS */;
INSERT INTO `FishWaterType` VALUES ('Black Crappie','Fresh'),('Blue Catfish','Fresh'),('Lake trout','Fresh'),('Largemouth bass','Fresh/Salt'),('Pink salmon','Fresh/Salt'),('Rainbow trout','Fresh'),('Smallmouth bass','Fresh'),('Spotted bass','Fresh'),('White Crappie','Fresh');
/*!40000 ALTER TABLE `FishWaterType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fisherman`
--

DROP TABLE IF EXISTS `Fisherman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fisherman` (
  `Name` varchar(100) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  PRIMARY KEY (`Username`),
  UNIQUE KEY `Username` (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fisherman`
--

LOCK TABLES `Fisherman` WRITE;
/*!40000 ALTER TABLE `Fisherman` DISABLE KEYS */;
INSERT INTO `Fisherman` VALUES ('Alida Barhems','abarhems3','$2y$10$KlC4JD18.iwxzoqLxv5Yiea1c0pTUAypehh6JSx4G0tzB/QOHu/Pi'),('admin','admin','$2y$10$lXKDZH5ATRuhpHLjx9CqM.B8p5Kdbdu0yb7yoDFPWIVUsif9gfh2q'),('Test','admin_test','$2y$10$dvTC.rPL60DT5rc124tJgO/6VhRdlBwSWyg6RFbjcYDvAZUpzX1dW'),('Alexis Torres','atorres','$2y$10$nlpeIY5hzZjb68wrNh.AJOx.mT2H/ejm2yk8wxF0QgG689hA0Puim'),('Henry Adams','baconator89','$2y$10$nbng4F2uOMNaJRNm.00wH.W0VLTlR/Ic.ffZAIomc7vjCLPdNu0hq'),('John','bassdash1','$2y$10$5QLiM0/pQyQVZWqmfgU0Pe1E/ovx5ZOVQO8KWZOmuKObz/Vkd/oym'),('Jacob','bassmaster1','$2y$10$zSkMQDT.Rg4wE0wBjKmIJeWfV8G.MnuswdAUzaQZas.17Ex3XOdY6'),('Alex','biggy_cheese','$2y$10$SQmFWOTxTvE4w2s3uXI3cuRAyTSIluwaUST77kt./Ex5jCLHkx5we'),('Alexis Torres','Big_boi','$2y$10$S1icb/curdOX8e8EUAsZl.PRq78g6wAuC2M02xhBKSsPdITUd6H3.'),('Charmane Trainer','ctrainer4','$2y$10$J8pqmalmQ52CAaPenw/yye3md3Efu1ZxqLHNZlin7uQpsUHttnvwq'),('Jesus Quinonez','duct_fisherman','$2y$10$EUh/hLJg.vM8MvnDCTtRQeAYciUOINvxF5Rh6jaUoO9K3tpKNKipq'),('Erick Simmell','esimmell7','$2y$10$uMZfNbbLMht4Zeor4qCx5e7W0gMJ31.Gdz004xLfMFsApvK6tWWJe'),('Billy John','Ford_150','$2y$10$O/BQK//DCPfK3wro6PnNx.WVD/iERxoF8b86b44q6dh2IBC1O5UQW'),('Flory Oscandall','foscandall6','$2y$10$M7TKB1Vj6FguYJnA2lH1h.dlWmd.DpGuIyN7vPO84D9WEhhu3ywZC'),('Gunter Hannaby','ghannaby1','$2y$10$Z7JtRYlN/BWNMWy0wnLfXe2aRKNvuy.Gcu9/7HSzAepu1koI504ga'),('John Adams','jadams','$2y$10$eoxCcotcw/IWzXD3WDVEOOKTBk0Yje9ZdfFKVVwnukFU7sYPcegHK'),('Jordain Harrowsmith','jharrowsmith5','$2y$10$5nIhLggqMHrIOc4M.e5Pge.dbeE/kMTle3urpZmB7Ul7GrcpWFwC.'),('Jessa Reitenbach','jreitenbach9','$2y$10$jj3wrl0jK2Lca/ei/Pm09e.H52.L09dNoupn9IymgRR74vH8NiVCS'),('Alexis Torres','Kirby','$2y$10$iVTfGMgdJbEaft.hux1AwuONPyqPwCXABLMj8FhkrNLgNywTL9JzK'),('Kerk Rodgier','krodgier2','$2y$10$..15yMh/W47q9R5c5BNSCuJa/N8lp1rEBlTMYGwYffYK9ckWbzTAW'),('Nelson Boylin','nboylin8','$2y$10$hhksYDnqGl.ZPIP85OpFvOvoGVcboJTUxp8P4x1z6jP/Vm/ISLuHi'),('Rango Salamanca','rango8','$2y$10$BDFyDQolUi1AFk1oMAXJgulhYVkziGmqz3WDu1BdzIa5pUgBRB722'),('Spencer Denney','sdenney','$2y$10$JcOffK3RLNKPakp/XEpKkeFUGe0gzhVHwGCnGnmSj6gBQ0nC0EhXO'),('Hank Schrader','slayer3','$2y$10$0a9k2Zbnxm6NRtQetBAYJeV2sMhd55fwRmWrnNFGOcyMaMc2caH66'),('user','user','$2y$10$KBOauiGS/snEVjTXUqS/6etU5ce1kkQqe/09tNeEiUeTcVBgnCJmO'),('Verina Pulford','vpulford0','$2y$10$4wIa7tGJ2/7ADPagKXETeOTczpzjTgrm9XlDqEOlecsCBP.HdrWSK');
/*!40000 ALTER TABLE `Fisherman` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`sdenney`@`localhost`*/ /*!50003 TRIGGER FishermanUpdate
BEFORE UPDATE ON Fisherman
FOR EACH ROW
BEGIN
    IF OLD.Username != NEW.Username or OLD.Password != NEW.Password
    THEN
        INSERT INTO Fisherman_History 
        VALUES (OLD.Username, OLD.Password, NOW());
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`sdenney`@`localhost`*/ /*!50003 TRIGGER FishermanDelete
BEFORE DELETE ON Fisherman 
FOR EACH ROW
BEGIN
    INSERT INTO Fisherman_History (Name, Username, Password)
    SELECT Name, Username, Password
    FROM Fisherman
    WHERE Fisherman.Username = OLD.Username;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `FishermanType`
--

DROP TABLE IF EXISTS `FishermanType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FishermanType` (
  `Username` varchar(100) NOT NULL,
  `Type` varchar(100) NOT NULL,
  PRIMARY KEY (`Username`,`Type`),
  CONSTRAINT `FishermanType_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `Fisherman` (`Username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FishermanType`
--

LOCK TABLES `FishermanType` WRITE;
/*!40000 ALTER TABLE `FishermanType` DISABLE KEYS */;
INSERT INTO `FishermanType` VALUES ('abarhems3','bass'),('admin','fresh'),('admin_test','fly'),('atorres','bow'),('baconator89','cat'),('ctrainer4','fly'),('esimmell7','spear'),('Ford_150','spear'),('foscandall6','bow'),('ghannaby1','bass'),('jadams','salt'),('jharrowsmith5','fly'),('jreitenbach9','salt'),('krodgier2','cat'),('nboylin8','bow'),('rango8','fresh'),('sdenney','fresh'),('slayer3','fly'),('user','bow'),('vpulford0','fresh');
/*!40000 ALTER TABLE `FishermanType` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`sdenney`@`localhost`*/ /*!50003 TRIGGER FishermanTypeDelete
BEFORE DELETE ON FishermanType
FOR EACH ROW
BEGIN
    INSERT INTO FishermanType_History (Username, Type)
    SELECT Username, Type
    FROM FishermanType
    WHERE FishermanType.Username = OLD.Username;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `FishermanType_History`
--

DROP TABLE IF EXISTS `FishermanType_History`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FishermanType_History` (
  `Username` varchar(100) NOT NULL,
  `Type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FishermanType_History`
--

LOCK TABLES `FishermanType_History` WRITE;
/*!40000 ALTER TABLE `FishermanType_History` DISABLE KEYS */;
/*!40000 ALTER TABLE `FishermanType_History` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fisherman_History`
--

DROP TABLE IF EXISTS `Fisherman_History`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fisherman_History` (
  `Name` varchar(100) DEFAULT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `DateTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fisherman_History`
--

LOCK TABLES `Fisherman_History` WRITE;
/*!40000 ALTER TABLE `Fisherman_History` DISABLE KEYS */;
INSERT INTO `Fisherman_History` VALUES ('Valerie','vdenney','$2y$10$Z5VNsKwnhZhLqy7Df1SzP.oTN4Am805ewS8tPxRKtc5Bp3KhCsSaO',NULL),('Valerie','vdenney','$2y$10$na5HmaL6U7I4/d89zGiY..TIN43isoTVWxrWA7MD.1NH1Yfw8kjLu',NULL),('Val','vdenney','$2y$10$8cU4UNkhqhUOSaoo5RRS/OndTxK9bhgIp.jrp1r6buxoe1v4RQhOC',NULL),('Val','vdenney','$2y$10$VHrBdusTuMPUCFbEl6yrWuXvuy/BRXWnpT0Tub0.v/BbF2r92558O',NULL),('Valerie','vdenney','$2y$10$lfGsQrwKyLxspbordQSbuupoBRib7Z8.GCWagRx.y2wsT4lHEvgki',NULL),('Valerie','vdenney','$2y$10$Ov8j7N1s.Z0ZSX7Ag4ZwF.6HZka/Zm6wkHB0BsQQTcFcGbjIe6s1O',NULL),('v','vdenney','pass',NULL),('Spencer Denney','vdenney','$2y$10$OXsAbw9LfEMzEAaJWFU9VeXKW3CpawwhJ.vL3JxcQTspEulXY4hHq',NULL),('valerie','vdenney','$2y$10$ecMoT5rYD4pdtHYx63H6vObclU0WaUQCFib3K36KEWL0qfQ9MsFQe',NULL),('Valerie','vdenney','$2y$10$HJn3L9Ik/dXE9Nb/vB92muH2j6WbqyYmWvIOI/SGFv2FsHoRnYmki',NULL),('Valerie','vdenney','$2y$10$Io9IO2tQl5X52ipvhWQUl.q4FKWgqXGvzJ6Z8Yaho4lnAE8J7Wrc2',NULL),('Valerie','vdenney','$2y$10$TDbCsciIR13UXwU42D/o9.fSRz6b8kiz.HbCcqZJKoKTid0nCarTO',NULL),('Valerie','vdenney','$2y$10$WN7VgrhOyugzI3RDU/6.N.A49gLR1PlxlBYPqzOs8X/vCzv9BfPyK',NULL),('Valerie','vdenney','$2y$10$2k3jN0sRyuvmVHXN460YBeEr493je9VPpDQ3rygaPnj0IqZGwjSZG',NULL),('Valerie','vdenney','$2y$10$JUYJLJK3HpnSIMTyjzpndeiLJw0wuVIiULleFDwjAAz.xAOx5CYD.',NULL);
/*!40000 ALTER TABLE `Fisherman_History` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `MostFishCaught`
--

DROP TABLE IF EXISTS `MostFishCaught`;
/*!50001 DROP VIEW IF EXISTS `MostFishCaught`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `MostFishCaught` (
  `Name` tinyint NOT NULL,
  `Username` tinyint NOT NULL,
  `Amount` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Swims`
--

DROP TABLE IF EXISTS `Swims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Swims` (
  `SwimsID` int(11) NOT NULL AUTO_INCREMENT,
  `FishName` varchar(100) NOT NULL,
  `BodyID` int(11) NOT NULL,
  PRIMARY KEY (`SwimsID`,`FishName`,`BodyID`),
  KEY `FishName` (`FishName`),
  KEY `BodyID` (`BodyID`),
  CONSTRAINT `Swims_ibfk_1` FOREIGN KEY (`FishName`) REFERENCES `Fish` (`FishName`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Swims_ibfk_2` FOREIGN KEY (`BodyID`) REFERENCES `Body` (`BodyID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Swims`
--

LOCK TABLES `Swims` WRITE;
/*!40000 ALTER TABLE `Swims` DISABLE KEYS */;
INSERT INTO `Swims` VALUES (1,'Black Crappie',2),(2,'Blue CatFish',3),(3,'Lake Trout',4),(4,'Largemouth bass',1),(5,'Pink salmon',9),(6,'Rainbow trout',7),(7,'Smallmouth bass',10),(8,'Spotted bass',8),(9,'White Crappie',6),(10,'Black Crappie',3),(11,'Blue CatFish',8),(12,'Lake Trout',1),(13,'Largemouth bass',5),(14,'Pink salmon',10),(15,'Rainbow trout',6),(16,'Smallmouth bass',6),(17,'Spotted bass',4),(18,'White Crappie',8),(19,'Black Crappie',4),(20,'Blue CatFish',1),(21,'Lake Trout',10),(22,'Largemouth bass',9),(23,'Pink salmon',9),(24,'Rainbow trout',8),(25,'Largemouth Bass',4),(26,'Pink salmon',9),(27,'Rainbow trout',2),(28,'Black Crappie',10),(29,'Blue Catfish',5),(30,'Blue Catfish',7),(31,'Black Crappie',8);
/*!40000 ALTER TABLE `Swims` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`sdenney`@`localhost`*/ /*!50003 TRIGGER SwimsInsert
AFTER INSERT ON Swims
FOR EACH ROW
BEGIN
    INSERT INTO Swims_History (SwimsID, FishName, BodyID)
    SELECT * from Swims order by SwimsID DESC limit 1;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Swims_History`
--

DROP TABLE IF EXISTS `Swims_History`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Swims_History` (
  `SwimsID` int(11) NOT NULL,
  `FishName` varchar(100) NOT NULL,
  `BodyID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Swims_History`
--

LOCK TABLES `Swims_History` WRITE;
/*!40000 ALTER TABLE `Swims_History` DISABLE KEYS */;
INSERT INTO `Swims_History` VALUES (1,'Black Crappie',2),(2,'Blue CatFish',3),(3,'Lake Trout',4),(4,'Largemouth bass',1),(5,'Pink salmon',9),(6,'Rainbow trout',7),(7,'Smallmouth bass',10),(8,'Spotted bass',8),(9,'White Crappie',6),(10,'Black Crappie',3),(11,'Blue CatFish',8),(12,'Lake Trout',1),(13,'Largemouth bass',5),(14,'Pink salmon',10),(15,'Rainbow trout',6),(16,'Smallmouth bass',6),(17,'Spotted bass',4),(18,'White Crappie',8),(19,'Black Crappie',4),(20,'Blue CatFish',1),(21,'Lake Trout',10),(22,'Largemouth bass',9),(23,'Pink salmon',9),(24,'Rainbow trout',8),(25,'Largemouth Bass',4),(26,'Pink salmon',9),(27,'Rainbow trout',2),(28,'Black Crappie',10),(29,'Blue Catfish',5),(30,'Blue Catfish',7),(31,'Black Crappie',8);
/*!40000 ALTER TABLE `Swims_History` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserRoles`
--

DROP TABLE IF EXISTS `UserRoles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserRoles` (
  `Username` varchar(100) NOT NULL,
  `Role` varchar(100) NOT NULL,
  PRIMARY KEY (`Username`,`Role`),
  CONSTRAINT `UserRoles_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `Fisherman` (`Username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserRoles`
--

LOCK TABLES `UserRoles` WRITE;
/*!40000 ALTER TABLE `UserRoles` DISABLE KEYS */;
INSERT INTO `UserRoles` VALUES ('admin','admin'),('admin_test','user'),('atorres','admin'),('bassdash1','admin'),('Ford_150','user'),('jadams','user'),('rango8','user'),('sdenney','admin'),('slayer3','user'),('user','user');
/*!40000 ALTER TABLE `UserRoles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `WhoBlackCrappie`
--

DROP TABLE IF EXISTS `WhoBlackCrappie`;
/*!50001 DROP VIEW IF EXISTS `WhoBlackCrappie`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `WhoBlackCrappie` (
  `Name` tinyint NOT NULL,
  `Bait` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `bassSevenInches`
--

DROP TABLE IF EXISTS `bassSevenInches`;
/*!50001 DROP VIEW IF EXISTS `bassSevenInches`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `bassSevenInches` (
  `Name` tinyint NOT NULL,
  `Username` tinyint NOT NULL,
  `Type` tinyint NOT NULL,
  `SizeCaught` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `fishCaughtMonth`
--

DROP TABLE IF EXISTS `fishCaughtMonth`;
/*!50001 DROP VIEW IF EXISTS `fishCaughtMonth`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `fishCaughtMonth` (
  `FishCaught` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `morningFish`
--

DROP TABLE IF EXISTS `morningFish`;
/*!50001 DROP VIEW IF EXISTS `morningFish`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `morningFish` (
  `FishName` tinyint NOT NULL,
  `Color` tinyint NOT NULL,
  `Bait` tinyint NOT NULL,
  `Depth` tinyint NOT NULL,
  `Region` tinyint NOT NULL,
  `TOD` tinyint NOT NULL,
  `Temp` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `CatchesTable`
--

/*!50001 DROP TABLE IF EXISTS `CatchesTable`*/;
/*!50001 DROP VIEW IF EXISTS `CatchesTable`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`sdenney`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `CatchesTable` AS select `Fisherman`.`Name` AS `FLname`,`Catches`.`Username` AS `Username`,`FishermanType`.`Type` AS `FishermanType`,`Catches`.`FishName` AS `FishName`,`Body`.`Name` AS `Bname`,`Catches`.`DateCaught` AS `DateCaught`,`Catches`.`SizeCaught` AS `SizeCaught`,`Catches`.`NativeOrStocked` AS `NativeOrStocked`,`Catches`.`Bait` AS `Bait`,`Catches`.`SpotID` AS `SpotID` from (((`Catches` join `Fisherman`) join `FishermanType`) join `Body` on(`Catches`.`BodyID` = `Body`.`BodyID` and `Catches`.`Username` = `Fisherman`.`Username` and `Fisherman`.`Username` = `FishermanType`.`Username`)) order by `Catches`.`DateCaught` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `MostFishCaught`
--

/*!50001 DROP TABLE IF EXISTS `MostFishCaught`*/;
/*!50001 DROP VIEW IF EXISTS `MostFishCaught`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`sdenney`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `MostFishCaught` AS select `Fisherman`.`Name` AS `Name`,`Fisherman`.`Username` AS `Username`,count(`Catches`.`FishName`) AS `Amount` from (`Catches` join `Fisherman` on(`Fisherman`.`Username` = `Catches`.`Username`)) group by `Fisherman`.`Username` order by count(`Catches`.`FishName`) desc limit 1 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `WhoBlackCrappie`
--

/*!50001 DROP TABLE IF EXISTS `WhoBlackCrappie`*/;
/*!50001 DROP VIEW IF EXISTS `WhoBlackCrappie`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`jquinonez`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `WhoBlackCrappie` AS select `Fisherman`.`Name` AS `Name`,`Catches`.`Bait` AS `Bait` from (`Fisherman` join `Catches` on(`Fisherman`.`Username` = `Catches`.`Username`)) where `Catches`.`FishName` = 'Black Crappie' */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `bassSevenInches`
--

/*!50001 DROP TABLE IF EXISTS `bassSevenInches`*/;
/*!50001 DROP VIEW IF EXISTS `bassSevenInches`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`jquinonez`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `bassSevenInches` AS select `Fisherman`.`Name` AS `Name`,`Fisherman`.`Username` AS `Username`,`FishermanType`.`Type` AS `Type`,`Catches`.`SizeCaught` AS `SizeCaught` from ((`Fisherman` join `FishermanType` on(`Fisherman`.`Username` = `FishermanType`.`Username`)) join `Catches` on(`Fisherman`.`Username` = `Catches`.`Username`)) where `Catches`.`SizeCaught` > 7 and `FishermanType`.`Type` = 'bass' */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `fishCaughtMonth`
--

/*!50001 DROP TABLE IF EXISTS `fishCaughtMonth`*/;
/*!50001 DROP VIEW IF EXISTS `fishCaughtMonth`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`jquinonez`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `fishCaughtMonth` AS select count(0) AS `FishCaught` from (`Catches` join `Fisherman` on(`Catches`.`Username` = `Fisherman`.`Username`)) where `Catches`.`DateCaught` >= curdate() - interval 1 month */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `morningFish`
--

/*!50001 DROP TABLE IF EXISTS `morningFish`*/;
/*!50001 DROP VIEW IF EXISTS `morningFish`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`sdenney`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `morningFish` AS select `Fish`.`FishName` AS `FishName`,`Fish`.`Color` AS `Color`,`Fish`.`Bait` AS `Bait`,`Fish`.`Depth` AS `Depth`,`Fish`.`Region` AS `Region`,`Fish`.`TOD` AS `TOD`,`Fish`.`Temp` AS `Temp` from `Fish` where `Fish`.`TOD` = 'morning' */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-20  9:02:29
