CREATE DATABASE  IF NOT EXISTS `e_commerce_platform` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `e_commerce_platform`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: e_commerce_platform
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

--
-- Table structure for table `analytics`
--

DROP TABLE IF EXISTS `analytics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `analytics` (
  `Analytics_ID` int NOT NULL AUTO_INCREMENT,
  `Analytics_Metrics` varchar(45) NOT NULL,
  PRIMARY KEY (`Analytics_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analytics`
--

LOCK TABLES `analytics` WRITE;
/*!40000 ALTER TABLE `analytics` DISABLE KEYS */;
INSERT INTO `analytics` VALUES (1,'Conversion Rate'),(2,'Click-Through Rate'),(3,'Impressions'),(4,'Sales Revenue'),(5,'Cost Per Click'),(6,'Customer Acquisition Cost'),(7,'Bounce Rate'),(8,'Return on Investment'),(9,'Page Views'),(10,'New Subscribers');
/*!40000 ALTER TABLE `analytics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `Cart_ID` int NOT NULL AUTO_INCREMENT,
  `customer_Customer_ID` int NOT NULL,
  PRIMARY KEY (`Cart_ID`,`customer_Customer_ID`),
  KEY `fk_cart_customer1_idx` (`customer_Customer_ID`),
  CONSTRAINT `fk_cart_customer1` FOREIGN KEY (`customer_Customer_ID`) REFERENCES `customer` (`Customer_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (7,1),(4,2),(12,3),(2,4),(9,5),(13,6),(5,7),(10,8),(1,9),(11,10),(14,11),(15,12),(6,13),(8,14),(16,15),(3,16),(17,17),(21,18),(18,19),(22,20),(20,21),(19,22),(23,23),(24,24);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `Category_ID` int NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(45) NOT NULL,
  PRIMARY KEY (`Category_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Electronics'),(2,'Fashion'),(3,'Appliances'),(4,'Beauty'),(5,'Sports'),(6,'Books'),(7,'Toys'),(8,'Automotive');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `Customer_ID` int NOT NULL AUTO_INCREMENT,
  `Customer_Name` varchar(45) NOT NULL,
  `Customer_Email` varchar(45) NOT NULL,
  `Customer_Address` varchar(45) NOT NULL,
  `Customer_PhoneNumber` varchar(45) NOT NULL,
  PRIMARY KEY (`Customer_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'John Doe','john.doe@example.com','123 Elm Street, Springfield, USA','+1 123-456-7890'),(2,'Jane Smith','jane.smith@example.com','456 Oak Lane, London, UK','+44 20 7946 0958'),(3,'Alice Johnson','alice.j@example.com','789 Pine Avenue, Melbourne, AUS','+61 3 9876 5432'),(4,'Robert Brown','robert.brown@example.com','321 Maple Road, Berlin, Germany','+49 30 12345678'),(5,'Maria Gonzalez','maria.g@example.com','654 Cedar Street, Madrid, Spain','+34 600 123 456'),(6,'Liam Wilson','liam.wilson@example.com','987 Birch Boulevard, New York, USA','+1 987-654-3210'),(7,'Emma Davis','emma.d@example.com','234 Walnut Lane, Paris, France','+33 1 23456789'),(8,'Noah Taylor','noah.taylor@example.com','567 Chestnut Drive, Mumbai, India','+91 98765 43210'),(9,'David Johnson','david.johnson@example.com','123 Willow Street, Chicago, USA','+1 312-555-6789'),(10,'Sophia Lee','sophia.lee@example.com','456 Birch Road, Toronto, Canada','+1 416-555-2345'),(11,'William Taylor','william.taylor@example.com','789 Maple Avenue, Melbourne, AUS','+61 3 9876 5432'),(12,'Mia Brown','mia.brown@example.com','321 Oak Lane, Dublin, Ireland','+353 1 2345678'),(13,'James Miller','james.miller@example.com','654 Pine Boulevard, London, UK','+44 20 7946 1234'),(14,'Isabella Martinez','isabella.martinez@example.com','987 Cedar Street, Madrid, Spain','+34 600 123 456'),(15,'Oliver Garcia','oliver.garcia@example.com','123 Elm Road, Mexico City, Mexico','+52 55 1234 5678'),(16,'Lily Wilson','lily.wilson@example.com','567 Chestnut Street, Paris, France','+33 1 23456789'),(17,'Henry Clark','henry.clark@example.com','234 Walnut Drive, Amsterdam, Netherlands','+31 20 1234567'),(18,'Charlotte Robinson','charlotte.robinson@example.com','789 Oak Street, Sydney, AUS','+61 2 9876 5432'),(19,'Jack Lewis','jack.lewis@example.com','321 Cedar Lane, Berlin, Germany','+49 30 12345678'),(20,'Amelia Walker','amelia.walker@example.com','567 Birch Road, Rome, Italy','+39 06 12345678'),(21,'Ethan Harris','ethan.harris@example.com','890 Pine Avenue, Cape Town, South Africa','+27 21 5551234'),(22,'Grace Allen','grace.allen@example.com','234 Maple Road, Lisbon, Portugal','+351 21 2345678'),(23,'Samuel Young','samuel.young@example.com','123 Oak Boulevard, Stockholm, Sweden','+46 8 12345678'),(24,'Emily Scott','emily.scott@example.com','456 Birch Avenue, New York, USA','+1 212-555-7890');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `Inventory_ID` int NOT NULL AUTO_INCREMENT,
  `product_Product_ID` int NOT NULL,
  PRIMARY KEY (`Inventory_ID`,`product_Product_ID`),
  KEY `fk_inventory_product1_idx` (`product_Product_ID`),
  CONSTRAINT `fk_inventory_product1` FOREIGN KEY (`product_Product_ID`) REFERENCES `product` (`Product_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (7,1),(4,2),(12,3),(2,4),(9,5),(13,6),(5,7),(10,8),(1,9),(11,10),(14,11),(15,12),(6,13),(8,14),(3,16);
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marketing`
--

DROP TABLE IF EXISTS `marketing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marketing` (
  `Marketing_ID` int NOT NULL AUTO_INCREMENT,
  `Marketing_CampaignName` varchar(45) NOT NULL,
  `Marketing_TargetAudience` varchar(45) NOT NULL,
  `Budget` decimal(10,0) NOT NULL,
  PRIMARY KEY (`Marketing_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketing`
--

LOCK TABLES `marketing` WRITE;
/*!40000 ALTER TABLE `marketing` DISABLE KEYS */;
INSERT INTO `marketing` VALUES (1,'Spring Sale','Adults 25-40, Online Shoppers',15000),(2,'Holiday Promo','Families, Holiday Shoppers',25000),(3,'New Year Discounts','Young Adults, Tech Enthusiasts',18000),(4,'Black Friday Deals','Bargain Hunters, All Ages',30000),(5,'Summer Collection Launch','Fashion Enthusiasts, Women 18-35',20000),(6,'Back to School','Parents, Students',22000),(7,'Christmas Special','Gift Shoppers, All Ages',35000),(8,'Spring Sneaker Drop','Sportswear Fans, Men 18-30',12000);
/*!40000 ALTER TABLE `marketing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetails`
--

DROP TABLE IF EXISTS `orderdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderdetails` (
  `OrderDetails_ID` int NOT NULL AUTO_INCREMENT,
  `order_Order_ID` int NOT NULL,
  `product_Product_ID` int NOT NULL,
  PRIMARY KEY (`OrderDetails_ID`,`order_Order_ID`,`product_Product_ID`),
  KEY `fk_orderdetails_order1_idx` (`order_Order_ID`),
  KEY `fk_orderdetails_product1_idx` (`product_Product_ID`),
  CONSTRAINT `fk_orderdetails_order1` FOREIGN KEY (`order_Order_ID`) REFERENCES `orders` (`Order_ID`),
  CONSTRAINT `fk_orderdetails_product1` FOREIGN KEY (`product_Product_ID`) REFERENCES `product` (`Product_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetails`
--

LOCK TABLES `orderdetails` WRITE;
/*!40000 ALTER TABLE `orderdetails` DISABLE KEYS */;
INSERT INTO `orderdetails` VALUES (1,1,5),(2,2,3),(3,3,8),(4,4,6),(5,5,12),(6,6,1),(7,7,7),(8,8,4),(9,9,11),(10,10,9),(11,11,14),(12,12,2),(13,13,16),(14,14,13),(15,15,10),(16,16,8),(17,17,3),(18,18,5),(19,19,7),(20,20,15),(21,21,6),(22,22,4),(23,23,2),(24,24,12),(25,25,1),(26,26,9),(27,27,11),(28,28,16),(29,29,10),(30,30,13),(31,31,8),(32,32,15);
/*!40000 ALTER TABLE `orderdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `Order_ID` int NOT NULL AUTO_INCREMENT,
  `OrderDate` date NOT NULL,
  `Order_TotalAmount` decimal(10,0) NOT NULL,
  `Order_Status` varchar(45) NOT NULL,
  `customer_Customer_ID` int NOT NULL,
  PRIMARY KEY (`Order_ID`,`customer_Customer_ID`),
  KEY `fk_order_customer_idx` (`customer_Customer_ID`),
  CONSTRAINT `fk_order_customer` FOREIGN KEY (`customer_Customer_ID`) REFERENCES `customer` (`Customer_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2024-11-02',130,'Pending',7),(2,'2024-11-04',100,'Completed',2),(3,'2024-11-06',60,'Pending',1),(4,'2024-11-01',160,'Completed',5),(5,'2024-11-08',50,'Completed',4),(6,'2024-11-03',250,'Shipped',6),(7,'2024-11-05',400,'Completed',8),(8,'2024-11-07',200,'Shipped',3),(9,'2024-11-10',200,'Shipped',3),(10,'2024-11-12',90,'Completed',6),(11,'2024-11-11',350,'Pending',1),(12,'2024-11-13',130,'Completed',8),(13,'2024-11-14',260,'Shipped',7),(14,'2024-11-15',500,'Pending',5),(15,'2024-11-16',60,'Completed',4),(16,'2024-11-17',150,'Shipped',2),(17,'2024-11-01',251,'Pending',9),(18,'2024-11-02',136,'Shipped',10),(19,'2024-11-03',451,'Delivered',11),(20,'2024-11-04',100,'Cancelled',12),(21,'2024-11-05',200,'Shipped',13),(22,'2024-11-06',75,'Pending',14),(23,'2024-11-07',299,'Delivered',15),(24,'2024-11-08',121,'Shipped',16),(25,'2024-11-09',178,'Cancelled',17),(26,'2024-11-10',330,'Pending',18),(27,'2024-11-11',420,'Shipped',19),(28,'2024-11-12',60,'Delivered',20),(29,'2024-11-13',151,'Pending',21),(30,'2024-11-14',266,'Shipped',22),(31,'2024-11-15',381,'Cancelled',23),(32,'2024-11-16',226,'Delivered',24);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `Payment_ID` int NOT NULL AUTO_INCREMENT,
  `Payment_Method` varchar(45) NOT NULL,
  `Payment_Amount` decimal(10,0) NOT NULL,
  `orders_Order_ID` int NOT NULL,
  PRIMARY KEY (`Payment_ID`,`orders_Order_ID`),
  KEY `fk_payment_order1_idx` (`orders_Order_ID`),
  CONSTRAINT `fk_payment_order1` FOREIGN KEY (`orders_Order_ID`) REFERENCES `orders` (`Order_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,'Credit Card',251,25),(2,'PayPal',136,10),(3,'Bank Transfer',451,15),(4,'Credit Card',100,21),(5,'PayPal',200,30),(6,'Bank Transfer',75,18),(7,'Credit Card',299,16),(8,'PayPal',121,24),(9,'Bank Transfer',178,22),(10,'Credit Card',330,23),(11,'PayPal',420,11),(12,'Bank Transfer',60,12),(13,'Credit Card',151,29),(14,'PayPal',266,28),(15,'Bank Transfer',381,19),(16,'Credit Card',226,27),(17,'PayPal',300,26),(18,'Bank Transfer',111,31),(19,'Credit Card',146,32),(20,'PayPal',85,20);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `Product_ID` int NOT NULL AUTO_INCREMENT,
  `Product_Name` varchar(45) NOT NULL,
  `Product_Description` varchar(255) DEFAULT NULL,
  `Product_Price` float NOT NULL,
  `Product_Quantity` int NOT NULL,
  `category_Category_ID` int NOT NULL,
  PRIMARY KEY (`Product_ID`,`category_Category_ID`),
  KEY `fk_product_category1_idx` (`category_Category_ID`),
  CONSTRAINT `fk_product_category1` FOREIGN KEY (`category_Category_ID`) REFERENCES `category` (`Category_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Smartphone Model X','Latest model with 6.5-inch display',799.99,150,1),(2,'4K Smart TV','55-inch 4K UHD LED Smart TV with built-in voice assistants',499.99,100,1),(3,'Women\'s Winter Coat','Cozy wool blend coat for cold weather',159.99,150,2),(4,'Robot Vacuum Cleaner','Smart robot vacuum with self-charging station',249.99,50,3),(5,'Hair Straightener','Professional-grade hair straightener with ceramic plates',89.99,200,4),(6,'Exercise Bike','Adjustable stationary bike with LCD display',349.99,75,5),(7,'1984 by George Orwell','Dystopian novel about a totalitarian regime',12.99,400,6),(8,'Remote Control Car','Fast and durable RC car for kids and adults',59.99,300,7),(9,'Car Seat Cover Set','Protective seat covers for front and back seats, universal fit',39.99,120,8),(10,'Men\'s Leather Jacket','Stylish leather jacket for men with a sleek design',129.99,200,2),(11,'Air Fryer','Healthy cooking with 90% less oil, includes a digital touch screen',129.99,80,3),(12,'Organic Skincare Set','Natural ingredients for smooth and glowing skin',49.99,120,4),(13,'Running Shoes','Comfortable lightweight shoes for running and fitness activities',79.99,180,5),(14,'The Great Gatsby','A classic novel by F. Scott Fitzgerald about the American dream',14.99,300,6),(15,'Building Blocks Set','Colorful building blocks for creative play',29.99,250,7),(16,'Car Diagnostic Tool','OBD2 scanner for car diagnostics and engine performance',59.99,100,8);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_has_cart`
--

DROP TABLE IF EXISTS `product_has_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_has_cart` (
  `product_Product_ID` int NOT NULL,
  `cart_Cart_ID` int NOT NULL,
  PRIMARY KEY (`product_Product_ID`,`cart_Cart_ID`),
  KEY `fk_product_has_cart_cart1_idx` (`cart_Cart_ID`),
  KEY `fk_product_has_cart_product1_idx` (`product_Product_ID`),
  CONSTRAINT `fk_product_has_cart_cart1` FOREIGN KEY (`cart_Cart_ID`) REFERENCES `cart` (`Cart_ID`),
  CONSTRAINT `fk_product_has_cart_product1` FOREIGN KEY (`product_Product_ID`) REFERENCES `product` (`Product_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_has_cart`
--

LOCK TABLES `product_has_cart` WRITE;
/*!40000 ALTER TABLE `product_has_cart` DISABLE KEYS */;
INSERT INTO `product_has_cart` VALUES (4,12),(5,16),(1,23);
/*!40000 ALTER TABLE `product_has_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion`
--

DROP TABLE IF EXISTS `promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promotion` (
  `Promotion_ID` int NOT NULL AUTO_INCREMENT,
  `Promotion_StartDate` date NOT NULL,
  `Promotion_EndDate` date NOT NULL,
  `Promotion_DiscountType` varchar(45) NOT NULL,
  `orders_Order_ID` int NOT NULL,
  PRIMARY KEY (`Promotion_ID`,`orders_Order_ID`),
  KEY `fk_promotion_order1_idx` (`orders_Order_ID`),
  CONSTRAINT `fk_promotion_order1` FOREIGN KEY (`orders_Order_ID`) REFERENCES `orders` (`Order_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion`
--

LOCK TABLES `promotion` WRITE;
/*!40000 ALTER TABLE `promotion` DISABLE KEYS */;
INSERT INTO `promotion` VALUES (1,'2024-11-01','2024-11-07','Percentage',5),(2,'2024-11-02','2024-11-10','Fixed',12),(3,'2024-11-03','2024-11-09','Percentage',2),(4,'2024-11-04','2024-11-11','Fixed',15),(5,'2024-11-05','2024-11-12','Percentage',9),(6,'2024-11-06','2024-11-13','Fixed',8),(7,'2024-11-07','2024-11-14','Percentage',16),(8,'2024-11-08','2024-11-15','Fixed',4),(9,'2024-11-09','2024-11-16','Percentage',7),(10,'2024-11-10','2024-11-17','Fixed',6),(11,'2024-11-11','2024-11-18','Percentage',3),(12,'2024-11-12','2024-11-19','Fixed',13),(13,'2024-11-13','2024-11-20','Percentage',11),(14,'2024-11-14','2024-11-21','Fixed',1),(15,'2024-11-15','2024-11-22','Percentage',10),(16,'2024-11-16','2024-11-23','Fixed',14),(17,'2024-11-01','2024-11-10','Percentage',12),(18,'2024-11-02','2024-11-15','Flat',13),(19,'2024-11-03','2024-11-14','Percentage',14),(20,'2024-11-04','2024-11-20','Flat',15),(21,'2024-11-05','2024-11-18','Percentage',16),(22,'2024-11-06','2024-11-19','Flat',17),(23,'2024-11-07','2024-11-21','Percentage',18),(24,'2024-11-08','2024-11-22','Flat',19),(25,'2024-11-09','2024-11-23','Percentage',20),(26,'2024-11-10','2024-11-25','Flat',21),(27,'2024-11-11','2024-11-26','Percentage',22),(28,'2024-11-12','2024-11-27','Flat',23),(29,'2024-11-13','2024-11-28','Percentage',24),(30,'2024-11-14','2024-11-29','Flat',25),(31,'2024-11-15','2024-11-30','Percentage',26),(32,'2024-11-16','2024-12-01','Flat',27),(33,'2024-11-17','2024-12-02','Percentage',28),(34,'2024-11-18','2024-12-03','Flat',29),(35,'2024-11-19','2024-12-04','Percentage',30),(36,'2024-11-20','2024-12-05','Flat',31),(37,'2024-11-21','2024-12-06','Percentage',32);
/*!40000 ALTER TABLE `promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `returns`
--

DROP TABLE IF EXISTS `returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `returns` (
  `Return_ID` int NOT NULL AUTO_INCREMENT,
  `Return_Reason` varchar(45) NOT NULL,
  `product_Product_ID` int NOT NULL,
  `orders_Order_ID` int NOT NULL,
  PRIMARY KEY (`Return_ID`,`product_Product_ID`,`orders_Order_ID`),
  KEY `fk_return_product1_idx` (`product_Product_ID`),
  KEY `fk_return_order1_idx` (`orders_Order_ID`),
  CONSTRAINT `fk_return_order1` FOREIGN KEY (`orders_Order_ID`) REFERENCES `orders` (`Order_ID`),
  CONSTRAINT `fk_return_product1` FOREIGN KEY (`product_Product_ID`) REFERENCES `product` (`Product_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `returns`
--

LOCK TABLES `returns` WRITE;
/*!40000 ALTER TABLE `returns` DISABLE KEYS */;
INSERT INTO `returns` VALUES (1,'Damaged product',3,12),(2,'Wrong item received',7,18),(3,'Product not as described',5,25),(4,'Changed mind',1,4),(5,'Does not fit',9,15),(6,'Defective item',11,22),(7,'Product missing parts',2,30),(8,'Quality issues',8,13),(9,'Wrong color',6,27),(10,'Not working as expected',14,8),(11,'Damaged packaging',16,5),(12,'Item arrived too late',4,31),(13,'Unsatisfied with the quality',13,9),(14,'Did not meet expectations',12,16),(15,'Product too small',10,19),(16,'No longer needed',15,20);
/*!40000 ALTER TABLE `returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `Review_ID` int NOT NULL AUTO_INCREMENT,
  `Review_Rating` int NOT NULL,
  `Review_Comment` varchar(500) DEFAULT NULL,
  `customer_Customer_ID` int NOT NULL,
  `product_Product_ID` int NOT NULL,
  PRIMARY KEY (`Review_ID`,`customer_Customer_ID`,`product_Product_ID`),
  KEY `fk_review_customer1_idx` (`customer_Customer_ID`),
  KEY `fk_review_product1_idx` (`product_Product_ID`),
  CONSTRAINT `fk_review_customer1` FOREIGN KEY (`customer_Customer_ID`) REFERENCES `customer` (`Customer_ID`),
  CONSTRAINT `fk_review_product1` FOREIGN KEY (`product_Product_ID`) REFERENCES `product` (`Product_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (139,5,'Excellent product, highly recommend!',9,4),(140,4,'Good quality but a bit expensive.',16,2),(191,3,'It works fine, but I expected better.',2,7),(192,5,'Perfect for my needs, very happy with the purchase.',7,13),(193,2,'Not as described, but still functional.',13,1),(194,4,'Great performance, but delivery took too long.',1,14),(195,5,'Highly satisfied, worth the money.',14,5),(196,3,'Good, but could have been more durable.',5,8),(197,4,'Decent product, meets most expectations.',8,10),(198,1,'Doesn\'t work properly, would not recommend.',10,3),(199,5,'Amazing quality! Exceeded my expectations.',3,6),(200,4,'Nice product, but the color is slightly different.',6,11),(201,5,'Best purchase I\'ve made this year, love it!',11,12),(202,3,'Average quality, but good for the price.',12,9),(203,2,'The product is okay, but the user manual is confusing.',15,16),(204,4,'Good value for the price, does what it promises.',4,15),(205,5,'Perfect size, and works efficiently.',18,2),(206,3,'It\'s fine, but I expected it to last longer.',20,7),(207,4,'Great product overall, would buy again.',19,13),(208,2,'Not what I expected, but functional.',21,1),(209,5,'Outstanding, works like a charm.',22,14),(210,3,'Product is okay, but I had issues with the setup.',24,5),(211,4,'Works well, but could be improved in some areas.',23,10);
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping`
--

DROP TABLE IF EXISTS `shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipping` (
  `Shipping_ID` int NOT NULL AUTO_INCREMENT,
  `Shipping_Address` varchar(45) NOT NULL,
  `Shipping_Carrier` varchar(45) NOT NULL,
  `Shipping_TrackingNumber` varchar(45) NOT NULL,
  `orders_Order_ID` int NOT NULL,
  PRIMARY KEY (`Shipping_ID`,`orders_Order_ID`),
  KEY `fk_shipping_order1_idx` (`orders_Order_ID`),
  CONSTRAINT `fk_shipping_order1` FOREIGN KEY (`orders_Order_ID`) REFERENCES `orders` (`Order_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping`
--

LOCK TABLES `shipping` WRITE;
/*!40000 ALTER TABLE `shipping` DISABLE KEYS */;
INSERT INTO `shipping` VALUES (1,'123 Elm Street, Springfield, USA','FedEx','FX123456789',5),(2,'456 Oak Lane, London, UK','DHL','DHL987654321',12),(3,'789 Pine Avenue, Melbourne, AUS','UPS','UPS246813579',2),(4,'321 Maple Road, Berlin, Germany','FedEx','FX135792468',15),(5,'654 Cedar Street, Madrid, Spain','DHL','DHL564738291',9),(6,'987 Birch Boulevard, New York, USA','UPS','UPS112233445',8),(7,'234 Walnut Lane, Paris, France','FedEx','FX998877665',16),(8,'567 Chestnut Drive, Mumbai, India','DHL','DHL775533221',4),(9,'234 Maple Lane, Amsterdam, Netherlands','UPS','UPS998877665',7),(10,'678 Birch Avenue, Toronto, Canada','FedEx','FX443322110',6),(11,'345 Pine Street, Rome, Italy','DHL','DHL112233445',3),(12,'567 Oak Road, Stockholm, Sweden','UPS','UPS556677889',13),(13,'789 Birch Avenue, Barcelona, Spain','FedEx','FX112233444',11),(14,'123 Cedar Lane, Dublin, Ireland','DHL','DHL334455667',1),(15,'432 Oak Boulevard, Berlin, Germany','UPS','UPS778899665',10),(16,'890 Pine Avenue, Cape Town, South Africa','FedEx','FX221133445',14),(17,'123 Oak Street, Los Angeles, USA','FedEx','1Z12345E0205271688',17),(18,'456 Maple Avenue, Toronto, Canada','UPS','1Z98765F2045361234',18),(19,'789 Birch Road, Melbourne, AUS','DHL','JD014600002034',19),(20,'321 Pine Lane, Berlin, Germany','Hermes','1234567890',20),(21,'234 Walnut Drive, Paris, France','TNT','A123456789B',21),(22,'567 Cedar Street, Madrid, Spain','PostNL','NL5678901234',22),(23,'890 Chestnut Boulevard, Mexico City, Mexico','FedEx','1Z9876543212345678',23),(24,'654 Maple Street, New York, USA','UPS','1Z1234567890123456',24),(25,'321 Oak Lane, Dublin, Ireland','DHL','JD567890004567',25),(26,'234 Cedar Road, Rome, Italy','PostNL','NL1234567890',26),(27,'567 Birch Avenue, Cape Town, South Africa','TNT','Z9876543210',27),(28,'123 Pine Road, Stockholm, Sweden','Hermes','9876543210',28),(29,'456 Oak Boulevard, London, UK','FedEx','1Z0123456789012345',29),(30,'789 Chestnut Drive, Sydney, AUS','DHL','JD234567890123',30),(31,'321 Walnut Avenue, Amsterdam, Netherlands','TNT','A123456789C',31),(32,'890 Maple Road, Rome, Italy','UPS','1Z6543219876543210',32);
/*!40000 ALTER TABLE `shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor`
--

DROP TABLE IF EXISTS `vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor` (
  `Vendor_ID` int NOT NULL AUTO_INCREMENT,
  `Vendor_Name` varchar(45) NOT NULL,
  `Vendor_ContactInfo` varchar(45) NOT NULL,
  PRIMARY KEY (`Vendor_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor`
--

LOCK TABLES `vendor` WRITE;
/*!40000 ALTER TABLE `vendor` DISABLE KEYS */;
INSERT INTO `vendor` VALUES (55,'Tech Solutions Inc.','contact@techsolutions.com'),(56,'Global Supplies Ltd.','support@globalsupplies.com'),(57,'Green Innovations','info@greeninnovations.com'),(58,'Quick Logistics','logistics@quicklogistics.com'),(59,'Superior Electronics','sales@superiorelectronics.com'),(60,'Eco Brands','contact@ecobrands.com'),(61,'Prime Distributors','info@primedistributors.com'),(62,'FastTech Solutions','service@fasttechsolutions.com');
/*!40000 ALTER TABLE `vendor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor_has_product`
--

DROP TABLE IF EXISTS `vendor_has_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor_has_product` (
  `vendor_Vendor_ID` int NOT NULL,
  `product_Product_ID` int NOT NULL,
  PRIMARY KEY (`vendor_Vendor_ID`,`product_Product_ID`),
  KEY `fk_vendor_has_product_product1_idx` (`product_Product_ID`),
  KEY `fk_vendor_has_product_vendor1_idx` (`vendor_Vendor_ID`),
  CONSTRAINT `fk_vendor_has_product_product1` FOREIGN KEY (`product_Product_ID`) REFERENCES `product` (`Product_ID`),
  CONSTRAINT `fk_vendor_has_product_vendor1` FOREIGN KEY (`vendor_Vendor_ID`) REFERENCES `vendor` (`Vendor_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor_has_product`
--

LOCK TABLES `vendor_has_product` WRITE;
/*!40000 ALTER TABLE `vendor_has_product` DISABLE KEYS */;
INSERT INTO `vendor_has_product` VALUES (55,4),(60,5),(62,7),(57,8),(59,10),(56,12);
/*!40000 ALTER TABLE `vendor_has_product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-19 14:11:10
