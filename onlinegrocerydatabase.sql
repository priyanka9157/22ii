-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: onlinegrocery
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `addressId` int NOT NULL AUTO_INCREMENT,
  `addressLine` varchar(100) DEFAULT NULL,
  `landMark` varchar(30) DEFAULT NULL,
  `pincode` varchar(10) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `userId` int DEFAULT NULL,
  `defualtInd` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`addressId`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (14,'kalupur',NULL,'9898','ahmedbd','guj',1,-1,0),(15,'Maninagar',NULL,'9898','Ahmdbd','GUJ',1,NULL,0),(16,'Maninagar',NULL,'9898','Ahmdbd','GUJ',1,-1,0),(17,'Ahhh',NULL,'7878','Ahm','Guj',1,NULL,0),(18,'Ahhh',NULL,'7878','Ahm','Guj',1,-1,0),(19,'iiii','ooooo','99999','iiii','ikkk',1,NULL,0),(20,'iiii','ooooo','99999','iiii','ikkk',1,-1,0),(21,'hgffd','trdg','7667','ghgffg','ffdff',1,NULL,0),(22,'hgffd','trdg','7667','ghgffg','ffdff',1,-1,0),(23,'Swastik society','C G Road','380043','Ahmedabad','Gujrat',1,NULL,0),(24,'Swastik society','C G Road','380043','Ahmedabad','Gujrat',0,44,0),(25,'GITAMANDIR','GITAMANDIR','380022','AHMEDABAD','GUJARAT',1,NULL,0),(26,'GITAMANDIR','GITAMANDIR','380022','AHMEDABAD','GUJARAT',0,44,0);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `cartId` int NOT NULL AUTO_INCREMENT,
  `productId` int DEFAULT NULL,
  `userId` int DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  PRIMARY KEY (`cartId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,NULL,NULL,NULL,NULL),(2,NULL,NULL,NULL,NULL),(3,6,NULL,0,NULL),(4,9,NULL,0,NULL),(5,6,NULL,0,NULL),(6,NULL,NULL,0,NULL),(7,NULL,NULL,0,NULL),(8,38,NULL,1,NULL),(9,38,NULL,1,NULL),(10,38,NULL,1,NULL),(11,37,NULL,1,NULL),(12,38,NULL,0,NULL);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `categoryId` int NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(30) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`categoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (3,'Fruits & Vegitables',1),(4,'Dairy & Bakery',1),(5,'Staples',1),(6,'Snacks & Branded Foods',0),(7,'Beverages',0),(8,NULL,1),(9,NULL,1),(10,'home',1),(11,'name',1),(12,'Fruits',1),(13,'Fruits and Vegetables',0),(14,'Stables',0),(15,'Dairy and Bakery',0),(16,'',0);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetail`
--

DROP TABLE IF EXISTS `orderdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderdetail` (
  `orderDetailId` int NOT NULL AUTO_INCREMENT,
  `orderId` int DEFAULT NULL,
  `productId` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  `quantity` varchar(50) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `userId` int DEFAULT NULL,
  `statusId` int DEFAULT NULL,
  PRIMARY KEY (`orderDetailId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetail`
--

LOCK TABLES `orderdetail` WRITE;
/*!40000 ALTER TABLE `orderdetail` DISABLE KEYS */;
INSERT INTO `orderdetail` VALUES (15,13,37,88,'89g',0,-1,9);
/*!40000 ALTER TABLE `orderdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `orderId` int NOT NULL AUTO_INCREMENT,
  `userId` int DEFAULT NULL,
  `addressId` int DEFAULT NULL,
  `statusId` int DEFAULT NULL,
  `orderDate` varchar(15) DEFAULT NULL,
  `totaleAmount` float DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (19,-1,22,9,'2023-01-18',10000,0,NULL),(23,-1,20,9,'2023-03-18',20000,0,NULL),(25,-1,20,9,'2023-02-18',15000,0,NULL),(27,-1,20,9,'2023-03-06',18000,0,NULL),(29,-1,20,9,'2023-01-01',1000,0,NULL),(33,-1,20,9,'2023-04-18',5000,0,NULL);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `productId` int NOT NULL AUTO_INCREMENT,
  `quantity` varchar(30) DEFAULT NULL,
  `price` varchar(30) DEFAULT NULL,
  `brandName` varchar(30) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `categoryId` int DEFAULT NULL,
  `subcategoryId` int DEFAULT NULL,
  `topSellingInd` tinyint(1) DEFAULT NULL,
  `mostValueInd` tinyint(1) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `productDetailDescriptionURL` varchar(400) DEFAULT NULL,
  `productName` varchar(50) DEFAULT NULL,
  `latestInd` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`productId`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (36,'huj','23','f',0,6,NULL,0,NULL,NULL,NULL,NULL,0),(37,'yuy','45','u',1,6,4,0,NULL,NULL,NULL,NULL,0),(38,'1','3','y',1,6,4,0,NULL,NULL,NULL,NULL,0),(39,'1 kg','19','Private Label',1,3,38,0,0,'The beauty of an Onion is that it can go just about anywhere. ','Cut it into thin slices to top off your favourite burger or hot dog, or chop it into little cubes to bring out the sweetness in curry dishes. Chopped Onions are perfect for fish dishes, quiche, stews and chili.',NULL,0),(40,'1 kg','19','Private Label',1,3,38,0,0,'Potato is a root vegetable and the most versatile of all.','It is widely used across Indian kitchens paired with numerous other vegetables for preparation of several delicacies. Be it Brinjal, Cauliflower, Tomato, Onion or be it Soyabean Chunks or the Spinach clan- Potatoes goes with all for delicious cuisines. Buy Potato per kg online now.',NULL,0),(41,'500 g','265','Amul',1,4,43,0,0,'Amul Butter is a multi-purpose butter.','Made with fresh ingredients, Amul Butter is a multi-purpose butter that can be used as a spread on bread, paratha, roti, naan and sandwiches. It also makes an excellent topping for Pav-bhaji, dal, soups, salads, rice as well as a great cooking medium for Paneer Butter Masala, Dal Makhni and a variety of delightful recipes.',NULL,0),(42,'1 L','69','Amul',1,4,43,0,0,'Milk is the most common dairy product that is used every day by almost everyone. ','Consume directly or add to your breakfast cereal, daily tea/coffee, milkshake and smoothies or other baked goods, desserts and puddings. So go ahead and buy Amul Taaza Homogenised Toned Milk online today.',NULL,0),(43,'10 kg','469','Aashirvaad ',1,5,13,0,0,' Wheat Atta provides goodness of taste in every bite.','Also, it has a sweet and aromatic taste that works together to give you fuller and softer rotis, every single time. Buy Aashirvaad Superior MP Whole Wheat Atta online now!',NULL,0),(44,'1 kg','95','Rajdhani',1,5,13,0,0,'','Rajdhani Grade-1 Besan is one of the most commonly used ingredients in Indian Kitchens. It is made by grinding Chickpea. Besan is used as a thickener in soups and sauces of all types and may be used as a binding agent to bind ingredients together. ',NULL,0),(45,'1 kg','95','Rajdhani',1,5,13,0,0,'Buy Rajdhani Grade-1 Besan online now!','Rajdhani Grade-1 Besan is one of the most commonly used ingredients in Indian Kitchens. It is made by grinding Chickpea. Besan is used as a thickener in soups and sauces of all types and may be used as a binding agent to bind ingredients together. ',NULL,0),(46,'1 L','169','Fortune',1,5,16,0,0,'Relish the taste of Kachi Ghani Pure Mustard Oil in your meals. ','Fortune Premium Kachi Ghani Pure Mustard Oil is extracted from cold-pressed mustard seeds and it adds an aromatic flavour to your dishes. Relish the taste of Kachi Ghani Pure Mustard Oil in your meals. Buy Fortune Premium Kachi Ghani Pure Mustard Oil online now!',NULL,0),(47,'5 L','999','Saffola',1,5,16,0,0,'Choose Saffola Gold Blended Oil which partners on your journey for a healthy lifestyle. ','Saffola Gold Pro Healthy Lifestyle Rice Bran Based Blended Oil is known because of its high smoke point, it is useful for high-heat cooking and is often used in various cuisines of South and East Asian countries. Choose Saffola Gold Blended Oil which partners on your journey for a healthy lifestyle. Buy Saffola Gold Pro Healthy Lifestyle Rice Bran Based Blended Oil online now!',NULL,0),(48,'280 g','52.00','Maggi',1,6,44,0,0,'These Maggi noodles offer you the delicious masala flavour that will leave you wanting for more.',' It is not just loved by young ones but adults too. For every busy day or lazy evening, these noodles are easy to make and are perfect for those untimely hunger pangs. They are made with finest quality ingredients that offers you a lip-smacking taste. So go ahead, buy Maggi 2-Minute Masala Instant Noodle online today!',NULL,0),(49,'70 g','32','Maggi',1,6,44,0,0,'Add a magical twist to your daily meal with Maggi Cheese Macaroni Instant Pazzta. ','This pasta is delicious, quick and easy to make. The pasta is made with 100% Semolina/ Rawa and is ready in just 5 minutes! It makes a great snacking option for those untimely hunger pangs or as a meal. Toss in some bell peppers or olives to make your pasta meal more wholesome and delicious! ',NULL,0),(50,'1 kg','742','Taj Mahal',1,7,28,0,0,' As an age old brand, we have built credential of Great Tasting tea by focusing on our consistently superior quality.',' Every Taj Mahal cup is created by tea tasters who approve the blend by tasting 1000s of teas then graded and blended to perfection. The brew is golden-orange in colour, has a rich taste and an uplifting aroma. The Taj mahal experience begins the moment you taste your freshly prepared tea cup.',NULL,0),(51,'90 g','33','Lay\'s',1,6,45,0,0,'Lay\'s American Style Cream & Onion Potato Chips is for you.','Enjoy it with your favourite beverage or drink! It\'s the perfect party snack when your friends and family are over. So go ahead, buy this product online today!',NULL,0),(52,'300 g','112','Sunfeast',0,6,21,1,0,'Give in to your sweet cravings with Sunfeast Dark Fantasy Original Choco Filled Biscuits. ',' These biscuits are crunchy yet delicate in texture. They are a perfect accompaniment to your tea or coffee. They are prepared using the finest ingredients and its hygienic packaging ensures that they remain fresh over a longer period.',' Dark Fantasy Original Choco Filled Biscuits ',0),(53,'1 kg	  rs ','19.00','Private Label',0,3,38,0,0,'The beauty of an Onion is that it can go just about anywhere.','Cut it into thin slices to top off your favourite burger or hot dog, or chop it into little cubes to bring out the sweetness in curry dishes. Chopped Onions are perfect for fish dishes, quiche, stews and chili.','Onion',0),(54,'1 kg	 ','19','Private Label',0,3,38,0,0,'Potato is a root vegetable and the most versatile of all.','It is widely used across Indian kitchens paired with numerous other vegetables for preparation of several delicacies. Be it Brinjal, Cauliflower, Tomato, Onion or be it Soyabean Chunks or the Spinach clan- Potatoes goes with all for delicious cuisines. Buy Potato per kg online now.','Potato',0),(55,'500 g	','265','Amul',0,3,38,1,0,'Amul Butter is a multi-purpose butter.','Made with fresh ingredients, Amul Butter is a multi-purpose butter that can be used as a spread on bread, paratha, roti, naan and sandwiches. It also makes an excellent topping for Pav-bhaji, dal, soups, salads, rice as well as a great cooking medium for Paneer Butter Masala, Dal Makhni and a variety of delightful recipes.','Amul Butter',0),(56,'1 L	69		','69','Amul	',0,4,4,1,0,'Milk is the most common dairy product that is used every day by almost everyone.	','Consume directly or add to your breakfast cereal, daily tea/coffee, milkshake and smoothies or other baked goods, desserts and puddings. So go ahead and buy Amul Taaza Homogenised Toned Milk online today.','Milk',0),(57,'10 kg	 ','469','Aashirvaad',0,5,13,0,0,'Wheat Atta provides goodness of taste in every bite.	','Also, it has a sweet and aromatic taste that works together to give you fuller and softer rotis, every single time. Buy Aashirvaad Superior MP Whole Wheat Atta online now!','Aashirvaad Atta',1),(58,'1 kg	','95','Rajdhani',0,5,13,0,0,'Buy Rajdhani Grade-1 Besan online now!','Rajdhani Grade-1 Besan is one of the most commonly used ingredients in Indian Kitchens. It is made by grinding Chickpea. Besan is used as a thickener in soups and sauces of all types and may be used as a binding agent to bind ingredients together.','Rajdhani Grade-1 Besan',0),(59,'1 L	','169','Fortune',0,5,16,0,0,'Relish the taste of Kachi Ghani Pure Mustard Oil in your meals.	','Fortune Premium Kachi Ghani Pure Mustard Oil is extracted from cold-pressed mustard seeds and it adds an aromatic flavour to your dishes. Relish the taste of Kachi Ghani Pure Mustard Oil in your meals. Buy Fortune Premium Kachi Ghani Pure Mustard Oil online now!','Kachi Ghani Pure Mustard Oil',1),(60,'5 L	','999','Saffola ',0,5,16,0,0,'Choose Saffola Gold Blended Oil which partners on your journey for a healthy ','Saffola Gold Pro Healthy Lifestyle Rice Bran Based Blended Oil is known because of its high smoke point, it is useful for high-heat cooking and is often used in various cuisines of South and East Asian countries. Choose Saffola Gold Blended Oil which partners on your journey for a healthy lifestyle. Buy Saffola Gold Pro Healthy Lifestyle Rice Bran Based Blended Oil online now!','Saffola Gold Blended Oil ',1),(61,'280 g	','52.00','Maggi ',0,6,44,1,0,'These Maggi noodles offer you the delicious masala flavour that will leave you wanting for more.','It is not just loved by young ones but adults too. For every busy day or lazy evening, these noodles are easy to make and are perfect for those untimely hunger pangs. They are made with finest quality ingredients that offers you a lip-smacking taste. So go ahead, buy Maggi 2-Minute Masala Instant Noodle online today!','Maggi noodles',0),(62,'70 g	','32','Maggi ',0,6,44,0,0,'Add a magical twist to your daily meal with Maggi Cheese Macaroni Instant Pazzta.','This pasta is delicious, quick and easy to make. The pasta is made with 100% Semolina/ Rawa and is ready in just 5 minutes! It makes a great snacking option for those untimely hunger pangs or as a meal. Toss in some bell peppers or olives to make your pasta meal more wholesome and delicious!','Maggi Cheese Macaroni Instant Pazzta',1),(63,'1 kg','742','Taj Mahal',0,7,28,1,0,'As an age old brand, we have built credential of Great Tasting tea by focusing on our consistently superior quality.','Every Taj Mahal cup is created by tea tasters who approve the blend by tasting 1000s of teas then graded and blended to perfection. The brew is golden-orange in colour, has a rich taste and an uplifting aroma. The Taj mahal experience begins the moment you taste your freshly prepared tea cup.','Tea',0),(64,'90 g	','33','Lay\'s',0,6,45,0,0,'Lay\'s American Style Cream & Onion Potato Chips is for you.','Enjoy it with your favourite beverage or drink! It\'s the perfect party snack when your friends and family are over. So go ahead, buy this product online today!','Cream & Onion Potato Chips ',1),(65,'7y','000','htff',1,3,4,0,0,'00','ju','00',NULL),(66,'7y','000','htff',1,3,4,0,0,'00','ju','00',NULL),(67,'7y','000','htff',1,3,4,0,0,'bhdugudjb','ju','tdtgsuhuuj',NULL),(68,'hhy','99','gyyu',1,3,4,0,0,'ygygy','yuy','uyh',NULL);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_image`
--

DROP TABLE IF EXISTS `product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_image` (
  `productImageId` int NOT NULL AUTO_INCREMENT,
  `productId` int DEFAULT NULL,
  `imageUrl` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`productImageId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_image`
--

LOCK TABLES `product_image` WRITE;
/*!40000 ALTER TABLE `product_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productimage`
--

DROP TABLE IF EXISTS `productimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productimage` (
  `productImageId` int NOT NULL AUTO_INCREMENT,
  `productId` int DEFAULT NULL,
  `imageUrl` varchar(1024) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`productImageId`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productimage`
--

LOCK TABLES `productimage` WRITE;
/*!40000 ALTER TABLE `productimage` DISABLE KEYS */;
INSERT INTO `productimage` VALUES (7,52,'assets/product/52/52.jpg',0),(8,53,'assets/product/53/53.jpg',0),(9,54,'assets/product/54/54.jpg',0),(10,55,'assets/product/55/55.jpg',0),(11,56,'assets/product/56/56.jpg',0),(12,57,'assets/product/57/57.jpg',0),(13,59,'assets/product/59/59.jpg',0),(14,60,'assets/product/60/60.jpg',0),(15,61,'assets/product/61/61.jpg',0),(16,62,'assets/product/62/62.jpg',0),(17,63,'assets/product/63/63.jpg',0),(18,64,'assets/product/64/64.jpg',0),(19,52,'assets/product/52/main.jpg',0),(20,52,'assets/product/52/other.jpg',0),(21,52,'assets/product/52/other1.jpg',0),(22,53,'assets/product/53/main.jpg',0),(23,54,'assets/product/54/main.jpg',0),(24,55,'assets/product/55/main.jpg',0),(25,55,'assets/product/55/feature.jpg',0),(26,55,'assets/product/55/feature.jpg',0),(27,55,'assets/product/55/back.jpg',0),(28,56,'assets/product/56/main.jpg',0),(29,56,'assets/product/56/features.jpg',0),(30,56,'assets/product/56/details.jpg',0),(31,56,'assets/product/56/others.jpg',0),(32,57,'assets/product/57/main.jpg',0),(33,57,'assets/product/57/featers.jpg',0),(34,57,'assets/product/57/other.jpg',0),(35,57,'assets/product/57/iso.jpg',0),(36,57,'assets/product/57/iso.jpg',0),(37,58,'assets/product/58/main.jpg',0),(38,58,'assets/product/58/features.jpg',0),(39,58,'assets/product/58/other5.jpg',0),(40,58,'assets/product/58/feture2.jpg',0),(41,58,'assets/product/58/liacence.jpg',0),(42,58,'assets/product/58/use.jpg',0),(43,58,'assets/product/58/use.jpg',0),(44,58,'assets/product/58/name.jpg',0),(45,59,'assets/product/59/main.jpg',0),(46,59,'assets/product/59/other.jpg',0),(47,59,'assets/product/59/other2.jpg',0),(48,59,'assets/product/59/other3.jpg',0),(49,59,'assets/product/59/use.jpg',0),(50,59,'assets/product/59/feature.jpg',0),(51,59,'assets/product/59/licence.jpg',0),(52,59,'assets/product/59/licence.jpg',0),(53,59,'assets/product/59/logop.jpg',0),(54,59,'assets/product/59/logop.jpg',0),(55,59,'assets/product/59/code.jpg',0),(56,59,'assets/product/59/oil.jpg',0),(57,59,'assets/product/59/use2.jpg',0),(58,60,'assets/product/60/main.jpg',0),(59,60,'assets/product/60/other.jpg',0),(60,60,'assets/product/60/feature.jpg',0),(61,60,'assets/product/60/li.jpg',0),(62,60,'assets/product/60/use.jpg',0),(63,60,'assets/product/60/li1.jpg',0),(64,61,'assets/product/61/main.jpg',0),(65,61,'assets/product/61/fe.jpg',0),(66,61,'assets/product/61/other.jpg',0),(67,61,'assets/product/61/other3.jpg',0),(68,61,'assets/product/61/fet3.jpg',0),(69,61,'assets/product/61/other56.jpg',0),(70,61,'assets/product/61/use.jpg',0),(71,61,'assets/product/61/li.jpg',0),(72,62,'assets/product/62/main.jpg',0),(73,62,'assets/product/62/fe.jpg',0),(74,62,'assets/product/62/fe12.jpg',0),(75,62,'assets/product/62/other.jpg',0),(76,62,'assets/product/62/incre.jpg',0),(77,62,'assets/product/62/use.jpg',0),(78,62,'assets/product/62/use.jpg',0),(79,63,'assets/product/63/main.jpg',0),(80,63,'assets/product/63/fet.jpg',0),(81,63,'assets/product/63/side.jpg',0),(82,63,'assets/product/63/other.jpg',0),(83,63,'assets/product/63/oyher2.jpg',0),(84,63,'assets/product/63/oyher2.jpg',0),(85,63,'assets/product/63/use.jpg',0),(86,63,'assets/product/63/li.jpg',0),(87,63,'assets/product/63/inc.jpg',0),(88,64,'assets/product/64/main.jpg',0),(89,64,'assets/product/64/inc.jpg',0),(90,64,'assets/product/64/inc2.jpg',0),(91,64,'assets/product/64/oth.jpg',0),(92,64,'assets/product/64/use.jpg',0),(93,64,'assets/product/64/li.jpg',0);
/*!40000 ALTER TABLE `productimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status` (
  `statusId` int NOT NULL AUTO_INCREMENT,
  `status` varchar(30) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`statusId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'Deleverd',NULL),(2,'InProgress',NULL),(3,'Accepted',NULL),(4,'Rejected',NULL),(5,'Dispatch',NULL),(8,'InProgress',1),(9,'Inprogress',0),(10,'Arriving',0),(11,'Deleveved',1),(12,'Accepted',0),(13,'Rejected',0),(14,'Dispatch',0),(15,'Delivered',0);
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategory`
--

DROP TABLE IF EXISTS `subcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subcategory` (
  `subCategoryId` int NOT NULL AUTO_INCREMENT,
  `subCategoryName` varchar(30) DEFAULT NULL,
  `categoryId` int DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`subCategoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategory`
--

LOCK TABLES `subcategory` WRITE;
/*!40000 ALTER TABLE `subcategory` DISABLE KEYS */;
INSERT INTO `subcategory` VALUES (1,'fruits',2,1),(2,'Fresh fruits',2,0),(3,'Milk',4,1),(4,'Milk',4,0),(5,'',2,0),(6,'Toast & Khari',4,0),(7,'Bakery Snacks',4,0),(8,'Cakes & Muffins',4,0),(9,'Breads & Buns',4,0),(10,'Cheese',4,0),(11,'Bakery Snacks',4,0),(12,'paneer & Tofu',4,0),(13,'Atta,Flours & Sooji',5,0),(14,'Dals & Pulses',5,0),(15,'Rice & Rice products',5,0),(16,'Edible Oils',5,0),(17,'Masalas & Spices',5,0),(18,'Salt,Sugar & Jaggery',5,0),(19,'Soya Products,Wheat ',5,0),(20,'Dry Fruits & Nuts',5,0),(21,'Biscuits & cookies',6,0),(22,'Breakfast cereals',6,0),(23,'Chocolates & candies',6,0),(24,'Frozen Veggies & Snacks',6,0),(25,'Spreads,Sauces,ketchup',6,0),(26,'Indian Sweets',6,0),(27,'Pickles & Chutney',6,0),(28,'Tea',7,0),(29,'Coffee',7,0),(30,'Fruit juices',7,0),(31,'Energy & Soft Drinks',7,0),(32,'Health Drinks & supplement',7,0),(33,'Soda & Flavoured Water',7,0),(34,'',6,1),(35,'',6,1),(36,'name',6,1),(37,'pasta',6,0),(38,'Fresh Vegitables',3,0),(39,'Fresh Fruits',3,0),(40,'Premium Fruits',3,0),(41,'Herbs & Seasonings',3,0),(42,'Exotic Fruits & Vegetables',3,0),(43,'Dairy',4,0),(44,'Noodles,Pasta',6,0),(45,'Snacks & Namkeen',6,0);
/*!40000 ALTER TABLE `subcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `userId` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(30) DEFAULT NULL,
  `lastName` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(80) DEFAULT NULL,
  `role` int DEFAULT NULL,
  `otp` varchar(10) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `contactNum` varchar(10) DEFAULT NULL,
  `createdAt` date DEFAULT NULL,
  `imageUrl` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (42,'priyanka','vghh','pik1@1.com','00@',2,NULL,'male',0,'2021-06-18','1234567899',NULL,NULL),(43,'Admin','admin','admin1@12.com','66668@',2,NULL,'male',0,'2021-06-18','1234567899',NULL,NULL),(44,'Priyanka','admin','admin12@gmail.com','9999$$',1,NULL,'male',0,'2021-06-18','1234567899',NULL,'assets/Profile/44/7.png');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor`
--

DROP TABLE IF EXISTS `vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor` (
  `vendorId` int NOT NULL AUTO_INCREMENT,
  `vendorName` varchar(30) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`vendorId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor`
--

LOCK TABLES `vendor` WRITE;
/*!40000 ALTER TABLE `vendor` DISABLE KEYS */;
INSERT INTO `vendor` VALUES (1,'D-Mart',0);
/*!40000 ALTER TABLE `vendor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-12 13:43:50
