-- MySQL dump 10.13  Distrib 9.3.0, for macos15 (x86_64)
--
-- Host: localhost    Database: computer_store
-- ------------------------------------------------------
-- Server version	9.3.0

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
-- Table structure for table `ACCESSORY`
--

DROP TABLE IF EXISTS `ACCESSORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ACCESSORY` (
  `Product_ID` int NOT NULL,
  `Type` varchar(50) NOT NULL,
  PRIMARY KEY (`Product_ID`),
  CONSTRAINT `accessory_ibfk_1` FOREIGN KEY (`Product_ID`) REFERENCES `PRODUCT` (`Product_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACCESSORY`
--

LOCK TABLES `ACCESSORY` WRITE;
/*!40000 ALTER TABLE `ACCESSORY` DISABLE KEYS */;
INSERT INTO `ACCESSORY` VALUES (2,'Keyboard'),(3,'Mouse'),(5,'Mouse'),(9,'Headphones');
/*!40000 ALTER TABLE `ACCESSORY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CREDIT_CARD`
--

DROP TABLE IF EXISTS `CREDIT_CARD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CREDIT_CARD` (
  `Card_no` varchar(16) NOT NULL,
  `Owner_name` varchar(50) NOT NULL,
  `Security_no` varchar(4) NOT NULL,
  `Type` varchar(15) NOT NULL,
  `Expiry_date` varchar(7) NOT NULL,
  `Billing_address` varchar(255) NOT NULL,
  `Customer_ID` int NOT NULL,
  PRIMARY KEY (`Card_no`),
  KEY `Customer_ID` (`Customer_ID`),
  CONSTRAINT `credit_card_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `CUSTOMER` (`Customer_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CREDIT_CARD`
--

LOCK TABLES `CREDIT_CARD` WRITE;
/*!40000 ALTER TABLE `CREDIT_CARD` DISABLE KEYS */;
INSERT INTO `CREDIT_CARD` VALUES ('0939248397433943','Sunghoon Park','034','Visa','02/2026','684 W 84th St Boston MA 24343',3),('3023293832139483','Jaeyun Sim','654','Discover','11/2029','213 Hybe Way Los Angeles CA 34623',2),('3483294829838968','Jarod Lopez','324','Mastercard','09/2028','164 W 53rd St Bayonne NJ 07002',1),('4117744029323723','Jarod Lopez','394','Visa','12/2025','164 W 53rd St Bayonne NJ 07002',1),('4258567936541274','Joshua Hong','067','Visa','11/29','85 Gose Boulevard Los Angeles CA 48433',8),('4392471467411030','Nicole Zefanya','988','Visa','07/26','751 Buzz Circle Los Angeles CA 36463',10),('4428307307197769','Olivia Rodrigo','618','Visa','07/26','34 Guts Drive Mystic CT 38473',9),('4560997240830811','Vernon Chwe','386','Visa','05/26','192 Cornelia St New York NY 76453',6),('4982264456731682','Joohyuk Nam','850','Visa','09/25','8475 E 45th Street Kennebunkport ME 64438',7),('5036804917734322','Sunghoon Park','232','Visa','05/2027','684 W 84th St Boston MA 24343',3),('5450690748837020','Wonwoo Jeon','828','Mastercard','11/26','938 Pledis Drive Columbus OH 37462',5),('5537550693842911','Vernon Chwe','726','Mastercard','01/28','192 Cornelia St New York NY 76453',6),('6011769053196451','Olivia Rodrigo','635','Discover','08/29','34 Guts Drive Mystic CT 38473',9),('6528266392408701','Wonwoo Jeon','195','Discover','07/28','938 Pledis Drive Columbus OH 37462',5),('6534445029490579','Nicole Zefanya','743','Discover','02/29','751 Buzz Circle Los Angeles CA 36463',10),('6578297956712468','Vernon Chwe','234','Discover','12/29','192 Cornelia St New York NY 76453',6),('7684290105599569','Sunghoon Park','854','Mastercard','03/2027','684 W 84th St Boston MA 24343',3),('8049355853597988','Jongseong Park','349','Discover','03/2028','432 Mariner Way Seattle WA 99854',4);
/*!40000 ALTER TABLE `CREDIT_CARD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CUSTOMER`
--

DROP TABLE IF EXISTS `CUSTOMER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CUSTOMER` (
  `Customer_ID` int NOT NULL AUTO_INCREMENT,
  `Fname` varchar(30) NOT NULL,
  `Lname` varchar(30) NOT NULL,
  `Phone_no` varchar(10) NOT NULL,
  `Email_address` varchar(50) NOT NULL,
  `Home_address` varchar(255) NOT NULL,
  `Status_name` varchar(10) NOT NULL,
  PRIMARY KEY (`Customer_ID`),
  KEY `Status_name` (`Status_name`),
  CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`Status_name`) REFERENCES `STATUS` (`Status_name`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CUSTOMER`
--

LOCK TABLES `CUSTOMER` WRITE;
/*!40000 ALTER TABLE `CUSTOMER` DISABLE KEYS */;
INSERT INTO `CUSTOMER` VALUES (1,'Jarod','Lopez','2012840989','jarodlopez16@yahoo.com','164 W 53rd St Bayonne NJ 07002','Platinum'),(2,'Jaeyun','Sim','2345839283','simjaeyun@hybe.com','213 Hybe Way Los Angeles CA 34623','Gold'),(3,'Sunghoon','Park','7603995324','sunghoonpark@gmail.com','684 W 84th St Boston MA 24343','Silver'),(4,'Jongseong','Park','4503343942','parkjayjongseong2@yahoo.com','432 Mariner Way Seattle WA 99854','Regular'),(5,'Wonwoo','Jeon','8258122313','jeonwonwoo17@gmail.com','938 Pledis Drive Columbus OH 37462','Platinum'),(6,'Vernon','Chwe','6827006660','vernonline@yahoo.com','192 Cornelia St New York NY 76453','Gold'),(7,'Joohyuk','Nam','2638955876','skawngur@gmail.com','8475 E 45th Street Kennebunkport ME 64438','Gold'),(8,'Joshua','Hong','3905160749','joshhong4384@gmail.com','85 Gose Boulevard Los Angeles CA 48433','Silver'),(9,'Olivia','Rodrigo','7626907346','livluv27@yahoo.com','34 Guts Drive Mystic CT 38473','Platinum'),(10,'Nicole','Zefanya','8597586033','nikibuzz@gmail.com','751 Buzz Circle Los Angeles CA 36463','Regular');
/*!40000 ALTER TABLE `CUSTOMER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CUSTOMER_BASKET`
--

DROP TABLE IF EXISTS `CUSTOMER_BASKET`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CUSTOMER_BASKET` (
  `Basket_ID` int NOT NULL,
  `Customer_ID` int NOT NULL,
  PRIMARY KEY (`Basket_ID`,`Customer_ID`),
  CONSTRAINT `customer_basket_ibfk_1` FOREIGN KEY (`Basket_ID`) REFERENCES `SHOPPING_BASKET` (`Basket_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CUSTOMER_BASKET`
--

LOCK TABLES `CUSTOMER_BASKET` WRITE;
/*!40000 ALTER TABLE `CUSTOMER_BASKET` DISABLE KEYS */;
INSERT INTO `CUSTOMER_BASKET` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10);
/*!40000 ALTER TABLE `CUSTOMER_BASKET` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DESKTOP_COMPUTER`
--

DROP TABLE IF EXISTS `DESKTOP_COMPUTER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DESKTOP_COMPUTER` (
  `Product_ID` int NOT NULL,
  `CPU_Type` varchar(50) NOT NULL,
  PRIMARY KEY (`Product_ID`),
  CONSTRAINT `desktop_computer_ibfk_1` FOREIGN KEY (`Product_ID`) REFERENCES `PRODUCT` (`Product_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DESKTOP_COMPUTER`
--

LOCK TABLES `DESKTOP_COMPUTER` WRITE;
/*!40000 ALTER TABLE `DESKTOP_COMPUTER` DISABLE KEYS */;
INSERT INTO `DESKTOP_COMPUTER` VALUES (4,'Intel Core i7-11700'),(10,'Intel Core Ultra 7');
/*!40000 ALTER TABLE `DESKTOP_COMPUTER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LAPTOP`
--

DROP TABLE IF EXISTS `LAPTOP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LAPTOP` (
  `Product_ID` int NOT NULL,
  `CPU_Type` varchar(50) NOT NULL,
  `Weight` float NOT NULL,
  `Battery_run_time` float NOT NULL,
  PRIMARY KEY (`Product_ID`),
  CONSTRAINT `laptop_ibfk_1` FOREIGN KEY (`Product_ID`) REFERENCES `PRODUCT` (`Product_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LAPTOP`
--

LOCK TABLES `LAPTOP` WRITE;
/*!40000 ALTER TABLE `LAPTOP` DISABLE KEYS */;
INSERT INTO `LAPTOP` VALUES (1,'Apple M2 Pro',3.4,22),(7,'Hex-Core AMD',2.92,16);
/*!40000 ALTER TABLE `LAPTOP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OFFER`
--

DROP TABLE IF EXISTS `OFFER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `OFFER` (
  `Offer_ID` int NOT NULL,
  `Price` float NOT NULL,
  PRIMARY KEY (`Offer_ID`),
  CONSTRAINT `offer_ibfk_1` FOREIGN KEY (`Offer_ID`) REFERENCES `OFFER_PRODUCT` (`Offer_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OFFER`
--

LOCK TABLES `OFFER` WRITE;
/*!40000 ALTER TABLE `OFFER` DISABLE KEYS */;
INSERT INTO `OFFER` VALUES (1,125),(2,500),(3,650),(4,150),(5,700);
/*!40000 ALTER TABLE `OFFER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OFFER_IN`
--

DROP TABLE IF EXISTS `OFFER_IN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `OFFER_IN` (
  `Offer_ID` int NOT NULL,
  `Basket_ID` int NOT NULL,
  `Quantity` int NOT NULL,
  PRIMARY KEY (`Offer_ID`,`Basket_ID`),
  KEY `Basket_ID` (`Basket_ID`),
  CONSTRAINT `offer_in_ibfk_1` FOREIGN KEY (`Offer_ID`) REFERENCES `OFFER` (`Offer_ID`),
  CONSTRAINT `offer_in_ibfk_2` FOREIGN KEY (`Basket_ID`) REFERENCES `SHOPPING_BASKET` (`Basket_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OFFER_IN`
--

LOCK TABLES `OFFER_IN` WRITE;
/*!40000 ALTER TABLE `OFFER_IN` DISABLE KEYS */;
INSERT INTO `OFFER_IN` VALUES (1,1,2),(2,1,1),(3,5,1);
/*!40000 ALTER TABLE `OFFER_IN` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `check_eligibility` BEFORE INSERT ON `offer_in` FOR EACH ROW BEGIN
    DECLARE is_eligible BOOLEAN;
    DECLARE customer_status VARCHAR(15);
    DECLARE customer_no INT;
    DECLARE basket_no INT;

    SET basket_no = NEW.Basket_ID;

    SELECT Customer_ID INTO customer_no
    FROM CUSTOMER_BASKET
    WHERE Basket_ID = basket_no;

    SELECT Status_name INTO customer_status
    FROM CUSTOMER
    WHERE Customer_ID = customer_no;

    SELECT EXISTS (
        SELECT 1
        FROM STATUS_ELIGIBLE
        WHERE Offer_ID = NEW.Offer_ID AND Status_name = customer_status
    ) INTO is_eligible;

    IF is_eligible = FALSE THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Customer status not eligible for this offer.';
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
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `check_paid_for_offer` BEFORE INSERT ON `offer_in` FOR EACH ROW BEGIN
    DECLARE paid_for BOOLEAN;
    DECLARE basket_no INT;

    SET basket_no = NEW.Basket_ID;

    SELECT EXISTS (
        SELECT 1
        FROM TRANSACTION
        WHERE Basket_ID = basket_no
    ) INTO paid_for;

    IF paid_for = TRUE THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = "This shopping basket has been checked out.";
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
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `update_basket_total_offer_insert` AFTER INSERT ON `offer_in` FOR EACH ROW BEGIN
    UPDATE SHOPPING_BASKET sb
    JOIN OFFER o ON o.Offer_ID = NEW.Offer_ID
    SET sb.Total_price = sb.Total_price + o.Price,
        sb.Number_items = sb.Number_items + 1
    WHERE sb.Basket_ID = NEW.Basket_ID;
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
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `update_basket_total_offer_delete` AFTER DELETE ON `offer_in` FOR EACH ROW BEGIN
    DECLARE offer_price FLOAT DEFAULT 0;

    SELECT Price INTO offer_price
    FROM OFFER
    WHERE Offer_ID = OLD.Offer_ID
    LIMIT 1;

    IF offer_price IS NOT NULL THEN
        UPDATE SHOPPING_BASKET
        SET Total_price = Total_price - (offer_price * OLD.Quantity),
            Number_items = Number_items - OLD.Quantity
        WHERE Basket_ID = OLD.Basket_ID;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `OFFER_PRODUCT`
--

DROP TABLE IF EXISTS `OFFER_PRODUCT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `OFFER_PRODUCT` (
  `Offer_ID` int NOT NULL AUTO_INCREMENT,
  `Product_ID` int NOT NULL,
  PRIMARY KEY (`Offer_ID`,`Product_ID`),
  UNIQUE KEY `Offer_ID` (`Offer_ID`),
  KEY `Product_ID` (`Product_ID`),
  CONSTRAINT `offer_product_ibfk_1` FOREIGN KEY (`Product_ID`) REFERENCES `PRODUCT` (`Product_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OFFER_PRODUCT`
--

LOCK TABLES `OFFER_PRODUCT` WRITE;
/*!40000 ALTER TABLE `OFFER_PRODUCT` DISABLE KEYS */;
INSERT INTO `OFFER_PRODUCT` VALUES (1,2),(2,1),(3,7),(4,8),(5,10);
/*!40000 ALTER TABLE `OFFER_PRODUCT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PRINTER`
--

DROP TABLE IF EXISTS `PRINTER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PRINTER` (
  `Product_ID` int NOT NULL,
  `Type` varchar(50) NOT NULL,
  `Solution` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Product_ID`),
  CONSTRAINT `printer_ibfk_1` FOREIGN KEY (`Product_ID`) REFERENCES `PRODUCT` (`Product_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRINTER`
--

LOCK TABLES `PRINTER` WRITE;
/*!40000 ALTER TABLE `PRINTER` DISABLE KEYS */;
INSERT INTO `PRINTER` VALUES (6,'Printer','HP 9120 Ink'),(8,'Laser Printer','PIXMA Ink');
/*!40000 ALTER TABLE `PRINTER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PRODUCT`
--

DROP TABLE IF EXISTS `PRODUCT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PRODUCT` (
  `Product_ID` int NOT NULL AUTO_INCREMENT,
  `Product_type` varchar(50) NOT NULL,
  `Description` text NOT NULL,
  `Recommended_price` float NOT NULL,
  `Name` varchar(50) NOT NULL,
  PRIMARY KEY (`Product_ID`),
  UNIQUE KEY `Product_type` (`Product_type`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUCT`
--

LOCK TABLES `PRODUCT` WRITE;
/*!40000 ALTER TABLE `PRODUCT` DISABLE KEYS */;
INSERT INTO `PRODUCT` VALUES (1,'Apple Laptop','Lightweight 13-inch MacBook with Retina display, SSD storage, and long battery life.',850,'Macbook Pro 2023'),(2,'Apple Keyboard','Wireless Apple Keyboard with smooth, quiet typing and long-lasting battery life.',150,'Magic Keyboard 2022'),(3,'Logitech Mouse','Ergonomic Logitech mouse with wireless connectivity and precision tracking.',20,'Logitech Silent Wireless Mouse'),(4,'Dell Desktop','High-performance Dell desktop designed for reliability and everyday computing needs.',600,'Dell Desktop 2021'),(5,'Apple Mouse','Apple Magic Mouse with multi-touch gestures and rechargeable battery.',30,'Magic Mouse 2020'),(6,'HP Printer','HP printer with fast printing, wireless setup, and sharp print quality.',250,'HP OfficeJet Printer 2023'),(7,'Lenovo Laptop','Reliable Lenovo laptop with fast performance and a lightweight, portable design.',700,'Lenovo Thinkpad 2023'),(8,'Canon Printer','Canon printer with crisp print quality and wireless printing features.',175,'Canon PIXMA 2023'),(9,'Bose Headphones','Noise-cancelling Bose headphones with rich sound and comfortable design.',250,'Bose QuietComfort 2024'),(10,'HP Desktop','Reliable HP desktop with fast processing and expandable storage.',800,'HP OmniDesk 2024');
/*!40000 ALTER TABLE `PRODUCT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PRODUCT_IN`
--

DROP TABLE IF EXISTS `PRODUCT_IN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PRODUCT_IN` (
  `Product_ID` int NOT NULL,
  `Basket_ID` int NOT NULL,
  `Quantity` int NOT NULL,
  PRIMARY KEY (`Product_ID`,`Basket_ID`),
  KEY `Basket_ID` (`Basket_ID`),
  CONSTRAINT `product_in_ibfk_1` FOREIGN KEY (`Product_ID`) REFERENCES `PRODUCT` (`Product_ID`),
  CONSTRAINT `product_in_ibfk_2` FOREIGN KEY (`Basket_ID`) REFERENCES `SHOPPING_BASKET` (`Basket_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUCT_IN`
--

LOCK TABLES `PRODUCT_IN` WRITE;
/*!40000 ALTER TABLE `PRODUCT_IN` DISABLE KEYS */;
INSERT INTO `PRODUCT_IN` VALUES (1,3,1),(1,10,1),(2,3,1),(3,2,4),(4,10,1),(5,4,5),(5,8,1),(6,6,2),(6,9,1),(8,8,1),(9,7,2),(9,8,2);
/*!40000 ALTER TABLE `PRODUCT_IN` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `check_paid_for_product` BEFORE INSERT ON `product_in` FOR EACH ROW BEGIN
    DECLARE paid_for BOOLEAN;
    DECLARE basket_no INT;

    SET basket_no = NEW.Basket_ID;

    SELECT EXISTS (
        SELECT 1
        FROM TRANSACTION
        WHERE Basket_ID = basket_no
    ) INTO paid_for;

    IF paid_for = TRUE THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = "This shopping basket has been checked out.";
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
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `update_basket_total_product_insert` AFTER INSERT ON `product_in` FOR EACH ROW BEGIN
    DECLARE product_price FLOAT;

    SELECT Recommended_price INTO product_price
    FROM PRODUCT
    WHERE Product_ID = NEW.Product_ID;

    UPDATE SHOPPING_BASKET
    SET Total_price = Total_price + (product_price * NEW.Quantity),
        Number_items = Number_items + NEW.Quantity
    WHERE Basket_ID = NEW.Basket_ID;
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
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `update_basket_total_product_delete` AFTER DELETE ON `product_in` FOR EACH ROW BEGIN
    DECLARE product_price FLOAT;

    SELECT Recommended_price INTO product_price
    FROM PRODUCT
    WHERE Product_ID = OLD.Product_ID;

    UPDATE SHOPPING_BASKET
    SET Total_price = Total_price - (product_price * OLD.Quantity),
        Number_items = Number_items - OLD.Quantity
    WHERE Basket_ID = OLD.Basket_ID;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `SHIPMENT`
--

DROP TABLE IF EXISTS `SHIPMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SHIPMENT` (
  `Shipment_ID` int NOT NULL,
  `Status` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`Shipment_ID`),
  CONSTRAINT `shipment_ibfk_1` FOREIGN KEY (`Shipment_ID`) REFERENCES `SHIPMENT_TRANSACTION` (`Shipment_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SHIPMENT`
--

LOCK TABLES `SHIPMENT` WRITE;
/*!40000 ALTER TABLE `SHIPMENT` DISABLE KEYS */;
INSERT INTO `SHIPMENT` VALUES (1,'In Transit'),(2,'Delivered'),(3,'In Transit'),(4,'In Transit'),(5,'Delivered');
/*!40000 ALTER TABLE `SHIPMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SHIPMENT_TRANSACTION`
--

DROP TABLE IF EXISTS `SHIPMENT_TRANSACTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SHIPMENT_TRANSACTION` (
  `Shipment_ID` int NOT NULL AUTO_INCREMENT,
  `Transaction_ID` int NOT NULL,
  PRIMARY KEY (`Shipment_ID`,`Transaction_ID`),
  UNIQUE KEY `Shipment_ID` (`Shipment_ID`),
  KEY `Transaction_ID` (`Transaction_ID`),
  CONSTRAINT `shipment_transaction_ibfk_1` FOREIGN KEY (`Transaction_ID`) REFERENCES `TRANSACTION` (`Transaction_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SHIPMENT_TRANSACTION`
--

LOCK TABLES `SHIPMENT_TRANSACTION` WRITE;
/*!40000 ALTER TABLE `SHIPMENT_TRANSACTION` DISABLE KEYS */;
INSERT INTO `SHIPMENT_TRANSACTION` VALUES (1,1),(2,3),(3,4),(4,5),(5,8);
/*!40000 ALTER TABLE `SHIPMENT_TRANSACTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SHIPPING_ADDRESS`
--

DROP TABLE IF EXISTS `SHIPPING_ADDRESS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SHIPPING_ADDRESS` (
  `Address_name` varchar(25) NOT NULL,
  `Customer_ID` int NOT NULL,
  `Street_no` int NOT NULL,
  `Street_name` varchar(20) NOT NULL,
  `City` varchar(20) NOT NULL,
  `State` varchar(20) NOT NULL,
  `Zip_code` varchar(5) NOT NULL,
  `Country` varchar(20) NOT NULL,
  PRIMARY KEY (`Address_name`,`Customer_ID`),
  KEY `Customer_ID` (`Customer_ID`),
  CONSTRAINT `shipping_address_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `CUSTOMER` (`Customer_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SHIPPING_ADDRESS`
--

LOCK TABLES `SHIPPING_ADDRESS` WRITE;
/*!40000 ALTER TABLE `SHIPPING_ADDRESS` DISABLE KEYS */;
INSERT INTO `SHIPPING_ADDRESS` VALUES ('Add1',8,85,'Gose Boulevard','Los Angeles','CA','48433','USA'),('Address 1',1,1194,'JFK Boulevard','Bayonne','NJ','07002','USA'),('Address 1',10,751,'Buzz Circle','Los Angeles','CA','36463','USA'),('Address 2',1,1198,'JFK Boulevard','Bayonne','NJ','07002','USA'),('Address 3',1,164,'W 53rd Street','Bayonne','NJ','07002','USA'),('Dad',7,9458,'48th Street','La Quinta','CA','59435','USA'),('Dad Address',4,4332,'Locust Avenue','Seattle','WA','94833','USA'),('Home',2,213,'Hybe Way','Los Angeles','CA','34623','USA'),('Home',7,8475,'E 45th Street','Kennebunkport','ME','64438','USA'),('Home Address',4,432,'Mariner Way','Seattle','WA','99854','USA'),('Mine',6,192,'Cornelia St','New York','NY','76453','USA'),('Mingyu House',5,843,'Lumen St','Cleve','OH','43854','USA'),('Mom',7,573,'93rd Street','Indio','CA','06543','USA'),('Mom Address',2,302,'Maple Circle','Los Angeles','CA','34732','USA'),('My Home',3,684,'W 84th St','Boston','MA','24343','USA'),('My Home',5,938,'Pledis Drive','Columbus','OH','37462','USA'),('One',9,34,'Guts Drive','Mystic','CT','38473','USA'),('Sister Address',2,483,'Oak Lane','Los Angeles','CA','33422','USA'),('Two',9,79,'Sour Road','Cerritos','CA','47542','USA');
/*!40000 ALTER TABLE `SHIPPING_ADDRESS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SHOPPING_BASKET`
--

DROP TABLE IF EXISTS `SHOPPING_BASKET`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SHOPPING_BASKET` (
  `Basket_ID` int NOT NULL AUTO_INCREMENT,
  `Number_items` int NOT NULL,
  `Total_price` float NOT NULL,
  PRIMARY KEY (`Basket_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SHOPPING_BASKET`
--

LOCK TABLES `SHOPPING_BASKET` WRITE;
/*!40000 ALTER TABLE `SHOPPING_BASKET` DISABLE KEYS */;
INSERT INTO `SHOPPING_BASKET` VALUES (1,3,1275),(2,4,80),(3,2,1000),(4,5,150),(5,1,650),(6,2,500),(7,2,800),(8,4,705),(9,1,250),(10,2,1450);
/*!40000 ALTER TABLE `SHOPPING_BASKET` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STATUS`
--

DROP TABLE IF EXISTS `STATUS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `STATUS` (
  `Status_name` varchar(10) NOT NULL,
  `Credit_line` float NOT NULL,
  `Offer_eligibility` tinyint(1) NOT NULL,
  PRIMARY KEY (`Status_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STATUS`
--

LOCK TABLES `STATUS` WRITE;
/*!40000 ALTER TABLE `STATUS` DISABLE KEYS */;
INSERT INTO `STATUS` VALUES ('Gold',2500,1),('Platinum',5000,1),('Regular',0,0),('Silver',1000,0);
/*!40000 ALTER TABLE `STATUS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STATUS_ELIGIBLE`
--

DROP TABLE IF EXISTS `STATUS_ELIGIBLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `STATUS_ELIGIBLE` (
  `Status_name` varchar(10) NOT NULL,
  `Offer_ID` int NOT NULL,
  PRIMARY KEY (`Status_name`,`Offer_ID`),
  KEY `Offer_ID` (`Offer_ID`),
  CONSTRAINT `status_eligible_ibfk_1` FOREIGN KEY (`Status_name`) REFERENCES `STATUS` (`Status_name`),
  CONSTRAINT `status_eligible_ibfk_2` FOREIGN KEY (`Offer_ID`) REFERENCES `OFFER` (`Offer_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STATUS_ELIGIBLE`
--

LOCK TABLES `STATUS_ELIGIBLE` WRITE;
/*!40000 ALTER TABLE `STATUS_ELIGIBLE` DISABLE KEYS */;
INSERT INTO `STATUS_ELIGIBLE` VALUES ('Gold',1),('Platinum',1),('Platinum',2),('Gold',3),('Platinum',3),('Gold',4),('Platinum',4),('Platinum',5);
/*!40000 ALTER TABLE `STATUS_ELIGIBLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TRANSACTION`
--

DROP TABLE IF EXISTS `TRANSACTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TRANSACTION` (
  `Transaction_ID` int NOT NULL AUTO_INCREMENT,
  `Total_amount` float NOT NULL,
  `Confirmation_status` varchar(15) NOT NULL,
  `Address_name` varchar(25) NOT NULL,
  `Basket_ID` int NOT NULL,
  `Customer_ID` int NOT NULL,
  `Card_no` varchar(16) NOT NULL,
  PRIMARY KEY (`Transaction_ID`),
  KEY `Address_name` (`Address_name`,`Customer_ID`),
  KEY `Basket_ID` (`Basket_ID`),
  KEY `Customer_ID` (`Customer_ID`),
  KEY `Card_no` (`Card_no`),
  CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`Address_name`, `Customer_ID`) REFERENCES `SHIPPING_ADDRESS` (`Address_name`, `Customer_ID`),
  CONSTRAINT `transaction_ibfk_2` FOREIGN KEY (`Basket_ID`) REFERENCES `SHOPPING_BASKET` (`Basket_ID`),
  CONSTRAINT `transaction_ibfk_3` FOREIGN KEY (`Customer_ID`) REFERENCES `CUSTOMER` (`Customer_ID`),
  CONSTRAINT `transaction_ibfk_4` FOREIGN KEY (`Card_no`) REFERENCES `CREDIT_CARD` (`Card_no`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TRANSACTION`
--

LOCK TABLES `TRANSACTION` WRITE;
/*!40000 ALTER TABLE `TRANSACTION` DISABLE KEYS */;
INSERT INTO `TRANSACTION` VALUES (1,750,'Confirmed','Address 3',1,1,'4117744029323723'),(2,80,'Processing','Home',2,2,'3023293832139483'),(3,1000,'Confirmed','My Home',3,3,'5036804917734322'),(4,150,'Confirmed','Dad Address',4,4,'8049355853597988'),(5,650,'Confirmed','My Home',5,5,'6528266392408701'),(6,800,'Processing','Dad',7,7,'4982264456731682'),(7,1450,'Processing','Address 1',10,10,'4392471467411030'),(8,500,'Confirmed','Mine',6,6,'6578297956712468');
/*!40000 ALTER TABLE `TRANSACTION` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-02 15:17:47
