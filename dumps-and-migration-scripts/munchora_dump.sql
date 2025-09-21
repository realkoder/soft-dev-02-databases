-- MySQL dump 10.13  Distrib 8.0.43, for Linux (aarch64)
--
-- Host: localhost    Database: munchora
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2025-09-17 19:27:17.110439','2025-09-17 19:27:17.110441');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedbacks`
--

DROP TABLE IF EXISTS `feedbacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedbacks` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `message` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedbacks`
--

LOCK TABLES `feedbacks` WRITE;
/*!40000 ALTER TABLE `feedbacks` DISABLE KEYS */;
INSERT INTO `feedbacks` VALUES (1,'Love the recipes! Keep up the great work.','Alice Johnson','alice@example.com','general','2025-09-17 19:27:27.984142','2025-09-17 19:27:27.984142'),(2,'Found a bug when trying to upload an image.','Bob Smith','bob@example.com','bug','2025-09-17 19:27:27.987033','2025-09-17 19:27:27.987033'),(3,'Could you add more vegan recipes?','Carol Lee','carol@example.com','features','2025-09-17 19:27:27.989632','2025-09-17 19:27:27.989632'),(4,'The website is loading slowly on mobile.','David Kim','david@example.com','general','2025-09-17 19:27:27.992298','2025-09-17 19:27:27.992298'),(5,'I appreciate the detailed cooking instructions!','Eve Martinez','eve@example.com','general','2025-09-17 19:27:27.994843','2025-09-17 19:27:27.994843'),(6,'Would love a dark mode option.','Frank Green','frank@example.com','features','2025-09-17 19:27:27.997153','2025-09-17 19:27:27.997153'),(7,'The login process is confusing.','Grace Hopper','grace@example.com','interface','2025-09-17 19:27:28.001433','2025-09-17 19:27:28.001433'),(8,'Great app, but the search feature could be faster.','Hannah Brown','hannah@example.com','general','2025-09-17 19:27:28.011664','2025-09-17 19:27:28.011664'),(9,'Images sometimes fail to upload on Safari.','Ian Clarke','ian@example.com','bug','2025-09-17 19:27:28.014049','2025-09-17 19:27:28.014049'),(10,'Please add a category filter for recipes.','Jane Doe','jane@example.com','features','2025-09-17 19:27:28.017076','2025-09-17 19:27:28.017076'),(11,'Really enjoy the grocery list feature.','Kevin Lee','kevin@example.com','general','2025-09-17 19:27:28.019104','2025-09-17 19:27:28.019104'),(12,'The AI recipe generator is amazing!','Laura Kim','laura@example.com','general','2025-09-17 19:27:28.021671','2025-09-17 19:27:28.021671'),(13,'I had trouble resetting my password.','Mike Taylor','mike@example.com','bug','2025-09-17 19:27:28.024506','2025-09-17 19:27:28.024506'),(14,'Consider adding multi-language support.','Nina Patel','nina@example.com','features','2025-09-17 19:27:28.028327','2025-09-17 19:27:28.028327'),(15,'Some recipes are missing nutrition info.','Oliver White','oliver@example.com','bug','2025-09-17 19:27:28.031156','2025-09-17 19:27:28.031156'),(16,'The mobile layout looks great!','Paula Adams','paula@example.com','general','2025-09-17 19:27:28.033433','2025-09-17 19:27:28.033433'),(17,'Notifications for saved recipes would be helpful.','Quinn Martin','quinn@example.com','features','2025-09-17 19:27:28.036262','2025-09-17 19:27:28.036262'),(18,'Sometimes the app crashes when uploading images.','Rachel Scott','rachel@example.com','bug','2025-09-17 19:27:28.039451','2025-09-17 19:27:28.039451'),(19,'Love the step-by-step recipe instructions.','Sam Wilson','sam@example.com','general','2025-09-17 19:27:28.041824','2025-09-17 19:27:28.041824'),(20,'Would be great to share recipes with friends.','Tina Young','tina@example.com','features','2025-09-17 19:27:28.044020','2025-09-17 19:27:28.044020');
/*!40000 ALTER TABLE `feedbacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grocery_list_items`
--

DROP TABLE IF EXISTS `grocery_list_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grocery_list_items` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `is_completed` tinyint(1) DEFAULT '0',
  `grocery_list_id` varchar(255) NOT NULL,
  `added_by_id` varchar(36) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_grocery_list_items_on_grocery_list_id` (`grocery_list_id`),
  KEY `index_grocery_list_items_on_added_by_id` (`added_by_id`),
  CONSTRAINT `fk_rails_5b28c0d393` FOREIGN KEY (`added_by_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_rails_c4bf98b414` FOREIGN KEY (`grocery_list_id`) REFERENCES `grocery_lists` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grocery_list_items`
--

LOCK TABLES `grocery_list_items` WRITE;
/*!40000 ALTER TABLE `grocery_list_items` DISABLE KEYS */;
INSERT INTO `grocery_list_items` VALUES (1,'Guldkorn','breakfast 🥣',1,'fb12f2b4-a97d-4e1e-bf62-bb8edb049259','305a1521-9d5b-40d8-85b5-e07349a991c7','2025-09-17 19:27:28.094778','2025-09-17 19:27:28.094778'),(2,'Coco Pops','breakfast 🥣',0,'fb12f2b4-a97d-4e1e-bf62-bb8edb049259','305a1521-9d5b-40d8-85b5-e07349a991c7','2025-09-17 19:27:28.098268','2025-09-17 19:27:28.098268'),(3,'Beans','canned goods 🥫',1,'fb12f2b4-a97d-4e1e-bf62-bb8edb049259','305a1521-9d5b-40d8-85b5-e07349a991c7','2025-09-17 19:27:28.102086','2025-09-17 19:27:28.102086'),(4,'Bread','bakery 🥖',1,'fb12f2b4-a97d-4e1e-bf62-bb8edb049259','305a1521-9d5b-40d8-85b5-e07349a991c7','2025-09-17 19:27:28.105322','2025-09-17 19:27:28.105322'),(5,'Hand soap','cleaning 🧼',1,'fb12f2b4-a97d-4e1e-bf62-bb8edb049259','305a1521-9d5b-40d8-85b5-e07349a991c7','2025-09-17 19:27:28.108641','2025-09-17 19:27:28.108641'),(6,'Salt','condiments 🧂',1,'f09dc966-31f8-495e-a49c-3f79a4dd0492','be6643b5-8676-4768-a353-76ca91bf6982','2025-09-17 19:27:28.114660','2025-09-17 19:27:28.114660'),(7,'Pepper','condiments 🧂',1,'f09dc966-31f8-495e-a49c-3f79a4dd0492','be6643b5-8676-4768-a353-76ca91bf6982','2025-09-17 19:27:28.118006','2025-09-17 19:27:28.118006'),(8,'Chicken','meat 🍗',1,'f09dc966-31f8-495e-a49c-3f79a4dd0492','be6643b5-8676-4768-a353-76ca91bf6982','2025-09-17 19:27:28.121364','2025-09-17 19:27:28.121364'),(9,'Beef','meat 🍗',1,'f09dc966-31f8-495e-a49c-3f79a4dd0492','be6643b5-8676-4768-a353-76ca91bf6982','2025-09-17 19:27:28.124345','2025-09-17 19:27:28.124345'),(10,'Leverpostej','meat 🍗',1,'f09dc966-31f8-495e-a49c-3f79a4dd0492','be6643b5-8676-4768-a353-76ca91bf6982','2025-09-17 19:27:28.127814','2025-09-17 19:27:28.127814'),(11,'Hellefisk','fish 🐟',1,'f09dc966-31f8-495e-a49c-3f79a4dd0492','be6643b5-8676-4768-a353-76ca91bf6982','2025-09-17 19:27:28.131184','2025-09-17 19:27:28.131184'),(12,'Rødspætte','fish 🐟',1,'f09dc966-31f8-495e-a49c-3f79a4dd0492','be6643b5-8676-4768-a353-76ca91bf6982','2025-09-17 19:27:28.134362','2025-09-17 19:27:28.134362'),(13,'Fiskefilet','fish 🐟',1,'f09dc966-31f8-495e-a49c-3f79a4dd0492','be6643b5-8676-4768-a353-76ca91bf6982','2025-09-17 19:27:28.137446','2025-09-17 19:27:28.137446'),(14,'Sild','fish 🐟',1,'b4c4fbb8-6079-4c63-b80d-0a748cebda1d','82bb54e5-13e3-414e-b6cb-dc1c05b49b2d','2025-09-17 19:27:28.141245','2025-09-17 19:27:28.141245'),(15,'Cod','fish 🐟',1,'b4c4fbb8-6079-4c63-b80d-0a748cebda1d','82bb54e5-13e3-414e-b6cb-dc1c05b49b2d','2025-09-17 19:27:28.144130','2025-09-17 19:27:28.144130'),(16,'Squid','fish 🐟',1,'b4c4fbb8-6079-4c63-b80d-0a748cebda1d','82bb54e5-13e3-414e-b6cb-dc1c05b49b2d','2025-09-17 19:27:28.147408','2025-09-17 19:27:28.147408'),(17,'Cheese','dairy 🥚',1,'b4c4fbb8-6079-4c63-b80d-0a748cebda1d','82bb54e5-13e3-414e-b6cb-dc1c05b49b2d','2025-09-17 19:27:28.150506','2025-09-17 19:27:28.150506'),(18,'Skyr','dairy 🥚',1,'b4c4fbb8-6079-4c63-b80d-0a748cebda1d','82bb54e5-13e3-414e-b6cb-dc1c05b49b2d','2025-09-17 19:27:28.153577','2025-09-17 19:27:28.153577'),(19,'Egg','dairy 🥚',1,'b4c4fbb8-6079-4c63-b80d-0a748cebda1d','82bb54e5-13e3-414e-b6cb-dc1c05b49b2d','2025-09-17 19:27:28.156674','2025-09-17 19:27:28.156674'),(20,'Milk','dairy 🥚',1,'b4c4fbb8-6079-4c63-b80d-0a748cebda1d','82bb54e5-13e3-414e-b6cb-dc1c05b49b2d','2025-09-17 19:27:28.159947','2025-09-17 19:27:28.159947');
/*!40000 ALTER TABLE `grocery_list_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grocery_list_shares`
--

DROP TABLE IF EXISTS `grocery_list_shares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grocery_list_shares` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `grocery_list_id` varchar(36) NOT NULL,
  `user_id` varchar(36) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_grocery_list_shares_on_grocery_list_id_and_user_id` (`grocery_list_id`,`user_id`),
  KEY `index_grocery_list_shares_on_grocery_list_id` (`grocery_list_id`),
  KEY `index_grocery_list_shares_on_user_id` (`user_id`),
  CONSTRAINT `fk_rails_4ffd7e6ba5` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_rails_9c8f6fd7fb` FOREIGN KEY (`grocery_list_id`) REFERENCES `grocery_lists` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grocery_list_shares`
--

LOCK TABLES `grocery_list_shares` WRITE;
/*!40000 ALTER TABLE `grocery_list_shares` DISABLE KEYS */;
INSERT INTO `grocery_list_shares` VALUES (1,'927ad2e4-525d-42ee-b79b-03c65fd69118','82bb54e5-13e3-414e-b6cb-dc1c05b49b2d','2025-09-17 19:27:28.167792','2025-09-17 19:27:28.167792'),(2,'fb12f2b4-a97d-4e1e-bf62-bb8edb049259','56a4605b-d63c-46da-9787-62b399cccf4b','2025-09-17 19:27:28.172462','2025-09-17 19:27:28.172462'),(3,'ab9602b2-1a70-4f1f-994d-73e89adcdae8','9da612d0-7f8e-4487-bc2f-1f9cd25f8e3a','2025-09-17 19:27:28.176827','2025-09-17 19:27:28.176827'),(4,'fb12f2b4-a97d-4e1e-bf62-bb8edb049259','dccc1e34-bf84-4eb9-b3fe-143f837f46ec','2025-09-17 19:27:28.181210','2025-09-17 19:27:28.181210'),(5,'927ad2e4-525d-42ee-b79b-03c65fd69118','dccc1e34-bf84-4eb9-b3fe-143f837f46ec','2025-09-17 19:27:28.185509','2025-09-17 19:27:28.185509'),(6,'53146e2a-fc2a-482b-9e95-3820cf719920','dccc1e34-bf84-4eb9-b3fe-143f837f46ec','2025-09-17 19:27:28.189593','2025-09-17 19:27:28.189593'),(7,'53146e2a-fc2a-482b-9e95-3820cf719920','e9ad33a2-ec16-47dd-af8a-0ae88d6e8b80','2025-09-17 19:27:28.201513','2025-09-17 19:27:28.201513'),(8,'57828d3c-53ff-4705-af75-2ea5dbf604a0','f4a8131c-6684-4ec8-8782-2bd6a65716a1','2025-09-17 19:27:28.210598','2025-09-17 19:27:28.210598'),(9,'fb12f2b4-a97d-4e1e-bf62-bb8edb049259','f4a8131c-6684-4ec8-8782-2bd6a65716a1','2025-09-17 19:27:28.218304','2025-09-17 19:27:28.218304'),(10,'53146e2a-fc2a-482b-9e95-3820cf719920','305a1521-9d5b-40d8-85b5-e07349a991c7','2025-09-17 19:27:28.226457','2025-09-17 19:27:28.226457'),(11,'927ad2e4-525d-42ee-b79b-03c65fd69118','f4a8131c-6684-4ec8-8782-2bd6a65716a1','2025-09-17 19:27:28.232156','2025-09-17 19:27:28.232156'),(12,'5718e4bf-ba14-4912-914e-954189af45a1','be6643b5-8676-4768-a353-76ca91bf6982','2025-09-17 19:27:28.237502','2025-09-17 19:27:28.237502'),(13,'ab9602b2-1a70-4f1f-994d-73e89adcdae8','305a1521-9d5b-40d8-85b5-e07349a991c7','2025-09-17 19:27:28.242849','2025-09-17 19:27:28.242849'),(14,'0823672b-92b9-4e3b-a054-a2783aac4324','56a4605b-d63c-46da-9787-62b399cccf4b','2025-09-17 19:27:28.248423','2025-09-17 19:27:28.248423'),(15,'fb12f2b4-a97d-4e1e-bf62-bb8edb049259','be6643b5-8676-4768-a353-76ca91bf6982','2025-09-17 19:27:28.253323','2025-09-17 19:27:28.253323'),(16,'12c2ec26-a9d2-4bb6-bd6c-3414b351282e','82bb54e5-13e3-414e-b6cb-dc1c05b49b2d','2025-09-17 19:27:28.257753','2025-09-17 19:27:28.257753'),(17,'b4c4fbb8-6079-4c63-b80d-0a748cebda1d','56a4605b-d63c-46da-9787-62b399cccf4b','2025-09-17 19:27:28.263981','2025-09-17 19:27:28.263981'),(18,'fb12f2b4-a97d-4e1e-bf62-bb8edb049259','305a1521-9d5b-40d8-85b5-e07349a991c7','2025-09-17 19:27:28.274542','2025-09-17 19:27:28.274542'),(19,'12c2ec26-a9d2-4bb6-bd6c-3414b351282e','be6643b5-8676-4768-a353-76ca91bf6982','2025-09-17 19:27:28.280666','2025-09-17 19:27:28.280666'),(20,'927ad2e4-525d-42ee-b79b-03c65fd69118','e9ad33a2-ec16-47dd-af8a-0ae88d6e8b80','2025-09-17 19:27:28.295080','2025-09-17 19:27:28.295080');
/*!40000 ALTER TABLE `grocery_list_shares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grocery_lists`
--

DROP TABLE IF EXISTS `grocery_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grocery_lists` (
  `id` varchar(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `owner_id` varchar(36) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_grocery_lists_on_owner_id` (`owner_id`),
  CONSTRAINT `fk_rails_79e9ad8bd2` FOREIGN KEY (`owner_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grocery_lists`
--

LOCK TABLES `grocery_lists` WRITE;
/*!40000 ALTER TABLE `grocery_lists` DISABLE KEYS */;
INSERT INTO `grocery_lists` VALUES ('0823672b-92b9-4e3b-a054-a2783aac4324','Random','305a1521-9d5b-40d8-85b5-e07349a991c7','2025-09-17 19:27:28.075798','2025-09-17 19:27:28.075798'),('12c2ec26-a9d2-4bb6-bd6c-3414b351282e','Shared','82bb54e5-13e3-414e-b6cb-dc1c05b49b2d','2025-09-17 19:27:28.071416','2025-09-17 19:27:28.071416'),('53146e2a-fc2a-482b-9e95-3820cf719920','Etc','be6643b5-8676-4768-a353-76ca91bf6982','2025-09-17 19:27:28.057385','2025-09-17 19:27:28.057385'),('5718e4bf-ba14-4912-914e-954189af45a1','Baking','9da612d0-7f8e-4487-bc2f-1f9cd25f8e3a','2025-09-17 19:27:28.083192','2025-09-17 19:27:28.083192'),('57828d3c-53ff-4705-af75-2ea5dbf604a0','Home','f4a8131c-6684-4ec8-8782-2bd6a65716a1','2025-09-17 19:27:28.051987','2025-09-17 19:27:28.051987'),('927ad2e4-525d-42ee-b79b-03c65fd69118','Holiday','dccc1e34-bf84-4eb9-b3fe-143f837f46ec','2025-09-17 19:27:28.086673','2025-09-17 19:27:28.086673'),('ab9602b2-1a70-4f1f-994d-73e89adcdae8','Dinner party','56a4605b-d63c-46da-9787-62b399cccf4b','2025-09-17 19:27:28.064389','2025-09-17 19:27:28.064389'),('b4c4fbb8-6079-4c63-b80d-0a748cebda1d','stuff','82bb54e5-13e3-414e-b6cb-dc1c05b49b2d','2025-09-17 19:27:28.060741','2025-09-17 19:27:28.060741'),('f09dc966-31f8-495e-a49c-3f79a4dd0492','Work','be6643b5-8676-4768-a353-76ca91bf6982','2025-09-17 19:27:28.067518','2025-09-17 19:27:28.067518'),('fb12f2b4-a97d-4e1e-bf62-bb8edb049259','Sports','305a1521-9d5b-40d8-85b5-e07349a991c7','2025-09-17 19:27:28.079417','2025-09-17 19:27:28.079417');
/*!40000 ALTER TABLE `grocery_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredients`
--

DROP TABLE IF EXISTS `ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingredients` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `recipe_id` varchar(36) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_ingredients_on_recipe_id` (`recipe_id`),
  CONSTRAINT `fk_rails_3ee351e1cd` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredients`
--

LOCK TABLES `ingredients` WRITE;
/*!40000 ALTER TABLE `ingredients` DISABLE KEYS */;
INSERT INTO `ingredients` VALUES (1,'Quinoa','grains 🌾',100,'a0540fd2-c745-454b-943c-2243d3ffdf77','2025-09-17 19:27:27.841523','2025-09-17 19:27:27.841523'),(2,'Mixed Vegetables','vegetables 🥦',150,'a0540fd2-c745-454b-943c-2243d3ffdf77','2025-09-17 19:27:27.845755','2025-09-17 19:27:27.845755'),(3,'Tahini','sauces & oils 🫙',30,'a0540fd2-c745-454b-943c-2243d3ffdf77','2025-09-17 19:27:27.849284','2025-09-17 19:27:27.849284'),(4,'Eggs','dairy 🥚',2,'a0ace76b-d091-466e-ac5d-c01f65b86d71','2025-09-17 19:27:27.852911','2025-09-17 19:27:27.852911'),(5,'Chocolate','snacks 🍫',100,'a0ace76b-d091-466e-ac5d-c01f65b86d71','2025-09-17 19:27:27.856326','2025-09-17 19:27:27.856326'),(6,'Sugar','spices & herbs 🌶️',50,'a0ace76b-d091-466e-ac5d-c01f65b86d71','2025-09-17 19:27:27.859788','2025-09-17 19:27:27.859788'),(7,'Butter','dairy 🥚',20,'a0ace76b-d091-466e-ac5d-c01f65b86d71','2025-09-17 19:27:27.863168','2025-09-17 19:27:27.863168'),(8,'Spaghetti','grains 🌾',200,'a29a867e-e189-42d4-8275-a81d0527ca37','2025-09-17 19:27:27.866804','2025-09-17 19:27:27.866804'),(9,'Pancetta','meat 🍗',100,'a29a867e-e189-42d4-8275-a81d0527ca37','2025-09-17 19:27:27.872105','2025-09-17 19:27:27.872105'),(10,'Eggs','dairy 🥚',2,'a29a867e-e189-42d4-8275-a81d0527ca37','2025-09-17 19:27:27.876296','2025-09-17 19:27:27.876296'),(11,'Parmesan Cheese','dairy 🥚',50,'a29a867e-e189-42d4-8275-a81d0527ca37','2025-09-17 19:27:27.880164','2025-09-17 19:27:27.880164'),(12,'Parmesan Cheese','dairy 🥚',50,'a29a867e-e189-42d4-8275-a81d0527ca37','2025-09-17 19:27:27.883758','2025-09-17 19:27:27.883758');
/*!40000 ALTER TABLE `ingredients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoices` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` varchar(36) NOT NULL,
  `subscription_id` bigint NOT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `paid_at` datetime(6) DEFAULT NULL,
  `period_start` datetime(6) DEFAULT NULL,
  `period_end` datetime(6) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_invoices_on_user_id` (`user_id`),
  KEY `index_invoices_on_subscription_id` (`subscription_id`),
  CONSTRAINT `fk_rails_3d1522a0d8` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_rails_457c900f6e` FOREIGN KEY (`subscription_id`) REFERENCES `subscriptions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
INSERT INTO `invoices` VALUES (1,'dccc1e34-bf84-4eb9-b3fe-143f837f46ec',1,299.99,'USD','draft',NULL,'2025-09-17 19:27:28.000000','2026-09-17 19:27:28.000000','2025-09-17 19:27:28.000000','2025-09-17 19:27:28.000000'),(2,'be6643b5-8676-4768-a353-76ca91bf6982',2,99.99,'USD','draft',NULL,'2025-09-17 19:27:28.000000','2026-09-17 19:27:28.000000','2025-09-17 19:27:28.000000','2025-09-17 19:27:28.000000');
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `llm_usages`
--

DROP TABLE IF EXISTS `llm_usages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `llm_usages` (
  `id` varchar(36) NOT NULL,
  `user_id` varchar(36) NOT NULL,
  `recipe_id` varchar(36) NOT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `prompt` text,
  `prompt_tokens` int DEFAULT NULL,
  `completion_tokens` int DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_rails_499b915d68` (`recipe_id`),
  KEY `index_llm_usages_on_user_id_and_created_at` (`user_id`,`created_at`),
  CONSTRAINT `fk_rails_499b915d68` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`),
  CONSTRAINT `fk_rails_c4b2edbd82` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `llm_usages`
--

LOCK TABLES `llm_usages` WRITE;
/*!40000 ALTER TABLE `llm_usages` DISABLE KEYS */;
INSERT INTO `llm_usages` VALUES ('0323efc1-68c6-456b-8002-7f3f0454ca8b','dccc1e34-bf84-4eb9-b3fe-143f837f46ec','da99c021-4526-4d6f-b388-5d5582350932','OpenAI','gpt-4','Generate a quick Italian pasta recipes with eggs and cheese.',15,120,'2025-09-17 19:27:27.956238','2025-09-17 19:27:27.956238'),('08388a30-95b0-4ec3-82a9-2703099e4e9f','56a4605b-d63c-46da-9787-62b399cccf4b','a29a867e-e189-42d4-8275-a81d0527ca37','OpenAI','gpt-4','Generate a quick Italian pasta recipes with eggs and cheese.',15,120,'2025-09-17 19:27:27.894267','2025-09-17 19:27:27.894267'),('0c2f8168-75d5-4ab2-9fcd-686164d29395','305a1521-9d5b-40d8-85b5-e07349a991c7','da99c021-4526-4d6f-b388-5d5582350932','OpenAI','gpt-4','Generate a quick Italian pasta recipes with eggs and cheese.',15,120,'2025-09-17 19:27:27.911135','2025-09-17 19:27:27.911135'),('1143dacb-850f-4307-9c6e-01d0a6146df3','9da612d0-7f8e-4487-bc2f-1f9cd25f8e3a','f624dc61-7987-41a9-8f31-dc236d2cc57f','Anthropic','claude-1','Create a vegan Buddha bowl with quinoa and roasted vegetables.',20,90,'2025-09-17 19:27:27.960296','2025-09-17 19:27:27.960296'),('1287af0f-0a0d-4b74-bfe4-09a193c33824','be6643b5-8676-4768-a353-76ca91bf6982','f624dc61-7987-41a9-8f31-dc236d2cc57f','OpenAI','gpt-3.5-turbo','Write a rich chocolate lava cake recipes for dessert.',18,100,'2025-09-17 19:27:27.964870','2025-09-17 19:27:27.964870'),('143680d8-01d7-410c-9647-f0915b4a49a4','56a4605b-d63c-46da-9787-62b399cccf4b','a0ace76b-d091-466e-ac5d-c01f65b86d71','Anthropic','claude-1','Create a vegan Buddha bowl with quinoa and roasted vegetables.',20,90,'2025-09-17 19:27:27.907486','2025-09-17 19:27:27.907486'),('21666f5a-2af4-43d5-b142-a505b59a686e','9da612d0-7f8e-4487-bc2f-1f9cd25f8e3a','dc6d74f8-185a-48a7-9847-bbfd3b08c7f0','OpenAI','gpt-4','Generate a quick Italian pasta recipes with eggs and cheese.',15,120,'2025-09-17 19:27:27.969085','2025-09-17 19:27:27.969085'),('394cdb2a-80e6-4db8-b2ae-f4cdcff3115e','be6643b5-8676-4768-a353-76ca91bf6982','f19c2971-8c4c-4d63-a2a8-973066e1b13c','Anthropic','claude-1','Create a vegan Buddha bowl with quinoa and roasted vegetables.',20,90,'2025-09-17 19:27:27.941939','2025-09-17 19:27:27.941939'),('3b8317ff-45a7-4e93-966c-4f687e215d81','56a4605b-d63c-46da-9787-62b399cccf4b','da99c021-4526-4d6f-b388-5d5582350932','OpenAI','gpt-3.5-turbo','Write a rich chocolate lava cake recipes for dessert.',18,100,'2025-09-17 19:27:27.928788','2025-09-17 19:27:27.928788'),('3e092b53-289b-4a6b-85a9-195a55677b23','be6643b5-8676-4768-a353-76ca91bf6982','da99c021-4526-4d6f-b388-5d5582350932','OpenAI','gpt-3.5-turbo','Write a rich chocolate lava cake recipes for dessert.',18,100,'2025-09-17 19:27:27.973038','2025-09-17 19:27:27.973038'),('5ead89c7-cdd5-4143-82a3-1bd526a52900','56a4605b-d63c-46da-9787-62b399cccf4b','f19c2971-8c4c-4d63-a2a8-973066e1b13c','OpenAI','gpt-4','Generate a quick Italian pasta recipes with eggs and cheese.',15,120,'2025-09-17 19:27:27.899143','2025-09-17 19:27:27.899143'),('65d79fbe-3555-4237-876a-b06b518d42d1','e9ad33a2-ec16-47dd-af8a-0ae88d6e8b80','0e23e16d-17f4-4e6f-927c-e22eecbc6a2e','OpenAI','gpt-3.5-turbo','Write a rich chocolate lava cake recipes for dessert.',18,100,'2025-09-17 19:27:27.951923','2025-09-17 19:27:27.951923'),('6bece0c2-3e0f-4692-816f-b6637422126e','dccc1e34-bf84-4eb9-b3fe-143f837f46ec','da99c021-4526-4d6f-b388-5d5582350932','OpenAI','gpt-3.5-turbo','Write a rich chocolate lava cake recipes for dessert.',18,100,'2025-09-17 19:27:27.978774','2025-09-17 19:27:27.978774'),('7b1cd7b3-e975-4c04-86c8-ce532256a157','be6643b5-8676-4768-a353-76ca91bf6982','0e23e16d-17f4-4e6f-927c-e22eecbc6a2e','OpenAI','gpt-4','Generate a quick Italian pasta recipes with eggs and cheese.',15,120,'2025-09-17 19:27:27.937033','2025-09-17 19:27:27.937033'),('7db30b54-a7f9-45af-b86d-99e140655bcb','dccc1e34-bf84-4eb9-b3fe-143f837f46ec','f624dc61-7987-41a9-8f31-dc236d2cc57f','Anthropic','claude-1','Create a vegan Buddha bowl with quinoa and roasted vegetables.',20,90,'2025-09-17 19:27:27.946150','2025-09-17 19:27:27.946150'),('8ea20e8d-08fc-4ac9-8beb-4dd4b844a148','9da612d0-7f8e-4487-bc2f-1f9cd25f8e3a','a29a867e-e189-42d4-8275-a81d0527ca37','OpenAI','gpt-3.5-turbo','Write a rich chocolate lava cake recipes for dessert.',18,100,'2025-09-17 19:27:27.903355','2025-09-17 19:27:27.903355'),('a33ffedc-1b54-4a97-8262-42d3189c678d','305a1521-9d5b-40d8-85b5-e07349a991c7','3a4c4a73-21ac-4136-8fb5-81ae8229d217','OpenAI','gpt-3.5-turbo','Write a rich chocolate lava cake recipes for dessert.',18,100,'2025-09-17 19:27:27.919263','2025-09-17 19:27:27.919263'),('b1b7d73c-291a-45b4-badb-d2c33d375c6a','e9ad33a2-ec16-47dd-af8a-0ae88d6e8b80','a0540fd2-c745-454b-943c-2243d3ffdf77','OpenAI','gpt-4','Generate a quick Italian pasta recipes with eggs and cheese.',15,120,'2025-09-17 19:27:27.924674','2025-09-17 19:27:27.924674'),('deddc25d-1db0-49c2-92a3-2dd73d9e25e0','dccc1e34-bf84-4eb9-b3fe-143f837f46ec','f19c2971-8c4c-4d63-a2a8-973066e1b13c','OpenAI','gpt-3.5-turbo','Write a rich chocolate lava cake recipes for dessert.',18,100,'2025-09-17 19:27:27.914978','2025-09-17 19:27:27.914978'),('f2d64781-7cf6-4a32-b3f4-f9b439c4d972','9da612d0-7f8e-4487-bc2f-1f9cd25f8e3a','4aca8f75-8ed6-41e9-93b2-dc8c727322d7','Anthropic','claude-1','Create a vegan Buddha bowl with quinoa and roasted vegetables.',20,90,'2025-09-17 19:27:27.933168','2025-09-17 19:27:27.933168');
/*!40000 ALTER TABLE `llm_usages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe_comments`
--

DROP TABLE IF EXISTS `recipe_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipe_comments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` varchar(36) NOT NULL,
  `recipe_id` varchar(36) NOT NULL,
  `comment` text,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_recipe_comments_on_user_id` (`user_id`),
  KEY `index_recipe_comments_on_recipe_id` (`recipe_id`),
  CONSTRAINT `fk_rails_69d3968b4e` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_rails_a33f5d92c1` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe_comments`
--

LOCK TABLES `recipe_comments` WRITE;
/*!40000 ALTER TABLE `recipe_comments` DISABLE KEYS */;
INSERT INTO `recipe_comments` VALUES (1,'be6643b5-8676-4768-a353-76ca91bf6982','0e23e16d-17f4-4e6f-927c-e22eecbc6a2e','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.573586','2025-09-17 19:27:28.573586'),(2,'dccc1e34-bf84-4eb9-b3fe-143f837f46ec','0e23e16d-17f4-4e6f-927c-e22eecbc6a2e','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.579366','2025-09-17 19:27:28.579366'),(3,'dccc1e34-bf84-4eb9-b3fe-143f837f46ec','3a4c4a73-21ac-4136-8fb5-81ae8229d217','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.583480','2025-09-17 19:27:28.583480'),(4,'f4a8131c-6684-4ec8-8782-2bd6a65716a1','3a4c4a73-21ac-4136-8fb5-81ae8229d217','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.587350','2025-09-17 19:27:28.587350'),(5,'82bb54e5-13e3-414e-b6cb-dc1c05b49b2d','3a4c4a73-21ac-4136-8fb5-81ae8229d217','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.591069','2025-09-17 19:27:28.591069'),(6,'82bb54e5-13e3-414e-b6cb-dc1c05b49b2d','3a4c4a73-21ac-4136-8fb5-81ae8229d217','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.594866','2025-09-17 19:27:28.594866'),(7,'be6643b5-8676-4768-a353-76ca91bf6982','3a4c4a73-21ac-4136-8fb5-81ae8229d217','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.599008','2025-09-17 19:27:28.599008'),(8,'f4a8131c-6684-4ec8-8782-2bd6a65716a1','3a4c4a73-21ac-4136-8fb5-81ae8229d217','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.603529','2025-09-17 19:27:28.603529'),(9,'305a1521-9d5b-40d8-85b5-e07349a991c7','3a4c4a73-21ac-4136-8fb5-81ae8229d217','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.607664','2025-09-17 19:27:28.607664'),(10,'be6643b5-8676-4768-a353-76ca91bf6982','3a4c4a73-21ac-4136-8fb5-81ae8229d217','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.612003','2025-09-17 19:27:28.612003'),(11,'82bb54e5-13e3-414e-b6cb-dc1c05b49b2d','3a4c4a73-21ac-4136-8fb5-81ae8229d217','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.617244','2025-09-17 19:27:28.617244'),(12,'9da612d0-7f8e-4487-bc2f-1f9cd25f8e3a','3a4c4a73-21ac-4136-8fb5-81ae8229d217','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.621176','2025-09-17 19:27:28.621176'),(13,'f4a8131c-6684-4ec8-8782-2bd6a65716a1','3a4c4a73-21ac-4136-8fb5-81ae8229d217','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.625316','2025-09-17 19:27:28.625316'),(14,'be6643b5-8676-4768-a353-76ca91bf6982','4aca8f75-8ed6-41e9-93b2-dc8c727322d7','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.629267','2025-09-17 19:27:28.629267'),(15,'305a1521-9d5b-40d8-85b5-e07349a991c7','4aca8f75-8ed6-41e9-93b2-dc8c727322d7','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.633129','2025-09-17 19:27:28.633129'),(16,'305a1521-9d5b-40d8-85b5-e07349a991c7','4aca8f75-8ed6-41e9-93b2-dc8c727322d7','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.638650','2025-09-17 19:27:28.638650'),(17,'be6643b5-8676-4768-a353-76ca91bf6982','4aca8f75-8ed6-41e9-93b2-dc8c727322d7','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.642708','2025-09-17 19:27:28.642708'),(18,'e9ad33a2-ec16-47dd-af8a-0ae88d6e8b80','a0540fd2-c745-454b-943c-2243d3ffdf77','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.646931','2025-09-17 19:27:28.646931'),(19,'f4a8131c-6684-4ec8-8782-2bd6a65716a1','a0540fd2-c745-454b-943c-2243d3ffdf77','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.650846','2025-09-17 19:27:28.650846'),(20,'56a4605b-d63c-46da-9787-62b399cccf4b','a0540fd2-c745-454b-943c-2243d3ffdf77','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.654854','2025-09-17 19:27:28.654854'),(21,'e9ad33a2-ec16-47dd-af8a-0ae88d6e8b80','a0540fd2-c745-454b-943c-2243d3ffdf77','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.659141','2025-09-17 19:27:28.659141'),(22,'305a1521-9d5b-40d8-85b5-e07349a991c7','a0540fd2-c745-454b-943c-2243d3ffdf77','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.663148','2025-09-17 19:27:28.663148'),(23,'dccc1e34-bf84-4eb9-b3fe-143f837f46ec','a0540fd2-c745-454b-943c-2243d3ffdf77','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.668591','2025-09-17 19:27:28.668591'),(24,'305a1521-9d5b-40d8-85b5-e07349a991c7','a0ace76b-d091-466e-ac5d-c01f65b86d71','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.673307','2025-09-17 19:27:28.673307'),(25,'9da612d0-7f8e-4487-bc2f-1f9cd25f8e3a','a0ace76b-d091-466e-ac5d-c01f65b86d71','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.677328','2025-09-17 19:27:28.677328'),(26,'f4a8131c-6684-4ec8-8782-2bd6a65716a1','a0ace76b-d091-466e-ac5d-c01f65b86d71','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.681181','2025-09-17 19:27:28.681181'),(27,'82bb54e5-13e3-414e-b6cb-dc1c05b49b2d','a0ace76b-d091-466e-ac5d-c01f65b86d71','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.685196','2025-09-17 19:27:28.685196'),(28,'9da612d0-7f8e-4487-bc2f-1f9cd25f8e3a','a0ace76b-d091-466e-ac5d-c01f65b86d71','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.689037','2025-09-17 19:27:28.689037'),(29,'e9ad33a2-ec16-47dd-af8a-0ae88d6e8b80','a0ace76b-d091-466e-ac5d-c01f65b86d71','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.693157','2025-09-17 19:27:28.693157'),(30,'be6643b5-8676-4768-a353-76ca91bf6982','a0ace76b-d091-466e-ac5d-c01f65b86d71','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.697208','2025-09-17 19:27:28.697208'),(31,'56a4605b-d63c-46da-9787-62b399cccf4b','a0ace76b-d091-466e-ac5d-c01f65b86d71','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.701435','2025-09-17 19:27:28.701435'),(32,'305a1521-9d5b-40d8-85b5-e07349a991c7','a0ace76b-d091-466e-ac5d-c01f65b86d71','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.705212','2025-09-17 19:27:28.705212'),(33,'56a4605b-d63c-46da-9787-62b399cccf4b','a0ace76b-d091-466e-ac5d-c01f65b86d71','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.709663','2025-09-17 19:27:28.709663'),(34,'305a1521-9d5b-40d8-85b5-e07349a991c7','a0ace76b-d091-466e-ac5d-c01f65b86d71','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.714226','2025-09-17 19:27:28.714226'),(35,'82bb54e5-13e3-414e-b6cb-dc1c05b49b2d','a29a867e-e189-42d4-8275-a81d0527ca37','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.719937','2025-09-17 19:27:28.719937'),(36,'dccc1e34-bf84-4eb9-b3fe-143f837f46ec','a29a867e-e189-42d4-8275-a81d0527ca37','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.724279','2025-09-17 19:27:28.724279'),(37,'9da612d0-7f8e-4487-bc2f-1f9cd25f8e3a','a29a867e-e189-42d4-8275-a81d0527ca37','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.728495','2025-09-17 19:27:28.728495'),(38,'e9ad33a2-ec16-47dd-af8a-0ae88d6e8b80','a29a867e-e189-42d4-8275-a81d0527ca37','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.732249','2025-09-17 19:27:28.732249'),(39,'be6643b5-8676-4768-a353-76ca91bf6982','a29a867e-e189-42d4-8275-a81d0527ca37','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.736204','2025-09-17 19:27:28.736204'),(40,'56a4605b-d63c-46da-9787-62b399cccf4b','a29a867e-e189-42d4-8275-a81d0527ca37','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.740226','2025-09-17 19:27:28.740226'),(41,'dccc1e34-bf84-4eb9-b3fe-143f837f46ec','a29a867e-e189-42d4-8275-a81d0527ca37','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.744908','2025-09-17 19:27:28.744908'),(42,'82bb54e5-13e3-414e-b6cb-dc1c05b49b2d','bb0d7f4e-85a5-473a-9b8c-cb0fbb778e25','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.748939','2025-09-17 19:27:28.748939'),(43,'82bb54e5-13e3-414e-b6cb-dc1c05b49b2d','da99c021-4526-4d6f-b388-5d5582350932','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.753520','2025-09-17 19:27:28.753520'),(44,'dccc1e34-bf84-4eb9-b3fe-143f837f46ec','da99c021-4526-4d6f-b388-5d5582350932','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.757239','2025-09-17 19:27:28.757239'),(45,'305a1521-9d5b-40d8-85b5-e07349a991c7','da99c021-4526-4d6f-b388-5d5582350932','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.761178','2025-09-17 19:27:28.761178'),(46,'be6643b5-8676-4768-a353-76ca91bf6982','da99c021-4526-4d6f-b388-5d5582350932','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.765245','2025-09-17 19:27:28.765245'),(47,'f4a8131c-6684-4ec8-8782-2bd6a65716a1','da99c021-4526-4d6f-b388-5d5582350932','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.769036','2025-09-17 19:27:28.769036'),(48,'f4a8131c-6684-4ec8-8782-2bd6a65716a1','da99c021-4526-4d6f-b388-5d5582350932','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.774887','2025-09-17 19:27:28.774887'),(49,'305a1521-9d5b-40d8-85b5-e07349a991c7','da99c021-4526-4d6f-b388-5d5582350932','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.779357','2025-09-17 19:27:28.779357'),(50,'305a1521-9d5b-40d8-85b5-e07349a991c7','da99c021-4526-4d6f-b388-5d5582350932','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.782945','2025-09-17 19:27:28.782945'),(51,'f4a8131c-6684-4ec8-8782-2bd6a65716a1','da99c021-4526-4d6f-b388-5d5582350932','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.787407','2025-09-17 19:27:28.787407'),(52,'56a4605b-d63c-46da-9787-62b399cccf4b','da99c021-4526-4d6f-b388-5d5582350932','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.791074','2025-09-17 19:27:28.791074'),(53,'56a4605b-d63c-46da-9787-62b399cccf4b','da99c021-4526-4d6f-b388-5d5582350932','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.794988','2025-09-17 19:27:28.794988'),(54,'be6643b5-8676-4768-a353-76ca91bf6982','dc6d74f8-185a-48a7-9847-bbfd3b08c7f0','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.799045','2025-09-17 19:27:28.799045'),(55,'82bb54e5-13e3-414e-b6cb-dc1c05b49b2d','dc6d74f8-185a-48a7-9847-bbfd3b08c7f0','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.803171','2025-09-17 19:27:28.803171'),(56,'305a1521-9d5b-40d8-85b5-e07349a991c7','dc6d74f8-185a-48a7-9847-bbfd3b08c7f0','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.807313','2025-09-17 19:27:28.807313'),(57,'56a4605b-d63c-46da-9787-62b399cccf4b','dc6d74f8-185a-48a7-9847-bbfd3b08c7f0','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.811687','2025-09-17 19:27:28.811687'),(58,'56a4605b-d63c-46da-9787-62b399cccf4b','dc6d74f8-185a-48a7-9847-bbfd3b08c7f0','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.815393','2025-09-17 19:27:28.815393'),(59,'9da612d0-7f8e-4487-bc2f-1f9cd25f8e3a','dc6d74f8-185a-48a7-9847-bbfd3b08c7f0','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.819517','2025-09-17 19:27:28.819517'),(60,'56a4605b-d63c-46da-9787-62b399cccf4b','dc6d74f8-185a-48a7-9847-bbfd3b08c7f0','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.823551','2025-09-17 19:27:28.823551'),(61,'56a4605b-d63c-46da-9787-62b399cccf4b','dc6d74f8-185a-48a7-9847-bbfd3b08c7f0','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.827423','2025-09-17 19:27:28.827423'),(62,'82bb54e5-13e3-414e-b6cb-dc1c05b49b2d','f19c2971-8c4c-4d63-a2a8-973066e1b13c','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.831338','2025-09-17 19:27:28.831338'),(63,'56a4605b-d63c-46da-9787-62b399cccf4b','f19c2971-8c4c-4d63-a2a8-973066e1b13c','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.834993','2025-09-17 19:27:28.834993'),(64,'56a4605b-d63c-46da-9787-62b399cccf4b','f19c2971-8c4c-4d63-a2a8-973066e1b13c','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.838681','2025-09-17 19:27:28.838681'),(65,'56a4605b-d63c-46da-9787-62b399cccf4b','f19c2971-8c4c-4d63-a2a8-973066e1b13c','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.842477','2025-09-17 19:27:28.842477'),(66,'e9ad33a2-ec16-47dd-af8a-0ae88d6e8b80','f19c2971-8c4c-4d63-a2a8-973066e1b13c','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.846351','2025-09-17 19:27:28.846351'),(67,'82bb54e5-13e3-414e-b6cb-dc1c05b49b2d','f624dc61-7987-41a9-8f31-dc236d2cc57f','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.849962','2025-09-17 19:27:28.849962'),(68,'56a4605b-d63c-46da-9787-62b399cccf4b','f624dc61-7987-41a9-8f31-dc236d2cc57f','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.853763','2025-09-17 19:27:28.853763'),(69,'be6643b5-8676-4768-a353-76ca91bf6982','f624dc61-7987-41a9-8f31-dc236d2cc57f','Okay it\'s delicious and MUNCHYYY!','2025-09-17 19:27:28.857713','2025-09-17 19:27:28.857713');
/*!40000 ALTER TABLE `recipe_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe_likes`
--

DROP TABLE IF EXISTS `recipe_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipe_likes` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` varchar(36) NOT NULL,
  `recipe_id` varchar(36) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_recipe_likes_on_user_id_and_recipe_id` (`user_id`,`recipe_id`),
  KEY `index_recipe_likes_on_user_id` (`user_id`),
  KEY `index_recipe_likes_on_recipe_id` (`recipe_id`),
  CONSTRAINT `fk_rails_999f5ba7e7` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`),
  CONSTRAINT `fk_rails_a8a42f79dd` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe_likes`
--

LOCK TABLES `recipe_likes` WRITE;
/*!40000 ALTER TABLE `recipe_likes` DISABLE KEYS */;
INSERT INTO `recipe_likes` VALUES (1,'be6643b5-8676-4768-a353-76ca91bf6982','0e23e16d-17f4-4e6f-927c-e22eecbc6a2e','2025-09-17 19:27:28.340987','2025-09-17 19:27:28.340987'),(2,'dccc1e34-bf84-4eb9-b3fe-143f837f46ec','0e23e16d-17f4-4e6f-927c-e22eecbc6a2e','2025-09-17 19:27:28.349298','2025-09-17 19:27:28.349298'),(3,'f4a8131c-6684-4ec8-8782-2bd6a65716a1','3a4c4a73-21ac-4136-8fb5-81ae8229d217','2025-09-17 19:27:28.357459','2025-09-17 19:27:28.357459'),(4,'305a1521-9d5b-40d8-85b5-e07349a991c7','3a4c4a73-21ac-4136-8fb5-81ae8229d217','2025-09-17 19:27:28.364486','2025-09-17 19:27:28.364486'),(5,'9da612d0-7f8e-4487-bc2f-1f9cd25f8e3a','3a4c4a73-21ac-4136-8fb5-81ae8229d217','2025-09-17 19:27:28.372554','2025-09-17 19:27:28.372554'),(6,'dccc1e34-bf84-4eb9-b3fe-143f837f46ec','3a4c4a73-21ac-4136-8fb5-81ae8229d217','2025-09-17 19:27:28.380679','2025-09-17 19:27:28.380679'),(7,'82bb54e5-13e3-414e-b6cb-dc1c05b49b2d','3a4c4a73-21ac-4136-8fb5-81ae8229d217','2025-09-17 19:27:28.387654','2025-09-17 19:27:28.387654'),(8,'e9ad33a2-ec16-47dd-af8a-0ae88d6e8b80','3a4c4a73-21ac-4136-8fb5-81ae8229d217','2025-09-17 19:27:28.394937','2025-09-17 19:27:28.394937'),(9,'be6643b5-8676-4768-a353-76ca91bf6982','3a4c4a73-21ac-4136-8fb5-81ae8229d217','2025-09-17 19:27:28.401470','2025-09-17 19:27:28.401470'),(10,'56a4605b-d63c-46da-9787-62b399cccf4b','3a4c4a73-21ac-4136-8fb5-81ae8229d217','2025-09-17 19:27:28.406951','2025-09-17 19:27:28.406951'),(11,'9da612d0-7f8e-4487-bc2f-1f9cd25f8e3a','4aca8f75-8ed6-41e9-93b2-dc8c727322d7','2025-09-17 19:27:28.411513','2025-09-17 19:27:28.411513'),(12,'be6643b5-8676-4768-a353-76ca91bf6982','4aca8f75-8ed6-41e9-93b2-dc8c727322d7','2025-09-17 19:27:28.415222','2025-09-17 19:27:28.415222'),(13,'305a1521-9d5b-40d8-85b5-e07349a991c7','4aca8f75-8ed6-41e9-93b2-dc8c727322d7','2025-09-17 19:27:28.419745','2025-09-17 19:27:28.419745'),(14,'56a4605b-d63c-46da-9787-62b399cccf4b','4aca8f75-8ed6-41e9-93b2-dc8c727322d7','2025-09-17 19:27:28.424107','2025-09-17 19:27:28.424107'),(15,'e9ad33a2-ec16-47dd-af8a-0ae88d6e8b80','4aca8f75-8ed6-41e9-93b2-dc8c727322d7','2025-09-17 19:27:28.428337','2025-09-17 19:27:28.428337'),(16,'f4a8131c-6684-4ec8-8782-2bd6a65716a1','a0540fd2-c745-454b-943c-2243d3ffdf77','2025-09-17 19:27:28.432187','2025-09-17 19:27:28.432187'),(17,'e9ad33a2-ec16-47dd-af8a-0ae88d6e8b80','a0540fd2-c745-454b-943c-2243d3ffdf77','2025-09-17 19:27:28.436163','2025-09-17 19:27:28.436163'),(18,'82bb54e5-13e3-414e-b6cb-dc1c05b49b2d','a0540fd2-c745-454b-943c-2243d3ffdf77','2025-09-17 19:27:28.440183','2025-09-17 19:27:28.440183'),(19,'56a4605b-d63c-46da-9787-62b399cccf4b','a0540fd2-c745-454b-943c-2243d3ffdf77','2025-09-17 19:27:28.444174','2025-09-17 19:27:28.444174'),(20,'305a1521-9d5b-40d8-85b5-e07349a991c7','a0540fd2-c745-454b-943c-2243d3ffdf77','2025-09-17 19:27:28.447978','2025-09-17 19:27:28.447978'),(21,'dccc1e34-bf84-4eb9-b3fe-143f837f46ec','a0540fd2-c745-454b-943c-2243d3ffdf77','2025-09-17 19:27:28.452770','2025-09-17 19:27:28.452770'),(22,'be6643b5-8676-4768-a353-76ca91bf6982','a0540fd2-c745-454b-943c-2243d3ffdf77','2025-09-17 19:27:28.457029','2025-09-17 19:27:28.457029'),(23,'9da612d0-7f8e-4487-bc2f-1f9cd25f8e3a','a0540fd2-c745-454b-943c-2243d3ffdf77','2025-09-17 19:27:28.462392','2025-09-17 19:27:28.462392'),(24,'f4a8131c-6684-4ec8-8782-2bd6a65716a1','a0ace76b-d091-466e-ac5d-c01f65b86d71','2025-09-17 19:27:28.466791','2025-09-17 19:27:28.466791'),(25,'82bb54e5-13e3-414e-b6cb-dc1c05b49b2d','a29a867e-e189-42d4-8275-a81d0527ca37','2025-09-17 19:27:28.471011','2025-09-17 19:27:28.471011'),(26,'56a4605b-d63c-46da-9787-62b399cccf4b','a29a867e-e189-42d4-8275-a81d0527ca37','2025-09-17 19:27:28.474946','2025-09-17 19:27:28.474946'),(27,'be6643b5-8676-4768-a353-76ca91bf6982','a29a867e-e189-42d4-8275-a81d0527ca37','2025-09-17 19:27:28.478913','2025-09-17 19:27:28.478913'),(28,'9da612d0-7f8e-4487-bc2f-1f9cd25f8e3a','a29a867e-e189-42d4-8275-a81d0527ca37','2025-09-17 19:27:28.483076','2025-09-17 19:27:28.483076'),(29,'dccc1e34-bf84-4eb9-b3fe-143f837f46ec','a29a867e-e189-42d4-8275-a81d0527ca37','2025-09-17 19:27:28.486735','2025-09-17 19:27:28.486735'),(30,'f4a8131c-6684-4ec8-8782-2bd6a65716a1','a29a867e-e189-42d4-8275-a81d0527ca37','2025-09-17 19:27:28.492424','2025-09-17 19:27:28.492424'),(31,'be6643b5-8676-4768-a353-76ca91bf6982','bb0d7f4e-85a5-473a-9b8c-cb0fbb778e25','2025-09-17 19:27:28.496230','2025-09-17 19:27:28.496230'),(32,'82bb54e5-13e3-414e-b6cb-dc1c05b49b2d','bb0d7f4e-85a5-473a-9b8c-cb0fbb778e25','2025-09-17 19:27:28.500180','2025-09-17 19:27:28.500180'),(33,'305a1521-9d5b-40d8-85b5-e07349a991c7','bb0d7f4e-85a5-473a-9b8c-cb0fbb778e25','2025-09-17 19:27:28.506842','2025-09-17 19:27:28.506842'),(34,'9da612d0-7f8e-4487-bc2f-1f9cd25f8e3a','bb0d7f4e-85a5-473a-9b8c-cb0fbb778e25','2025-09-17 19:27:28.510852','2025-09-17 19:27:28.510852'),(35,'dccc1e34-bf84-4eb9-b3fe-143f837f46ec','bb0d7f4e-85a5-473a-9b8c-cb0fbb778e25','2025-09-17 19:27:28.514754','2025-09-17 19:27:28.514754'),(36,'56a4605b-d63c-46da-9787-62b399cccf4b','bb0d7f4e-85a5-473a-9b8c-cb0fbb778e25','2025-09-17 19:27:28.520119','2025-09-17 19:27:28.520119'),(37,'f4a8131c-6684-4ec8-8782-2bd6a65716a1','da99c021-4526-4d6f-b388-5d5582350932','2025-09-17 19:27:28.524017','2025-09-17 19:27:28.524017'),(38,'305a1521-9d5b-40d8-85b5-e07349a991c7','da99c021-4526-4d6f-b388-5d5582350932','2025-09-17 19:27:28.527914','2025-09-17 19:27:28.527914'),(39,'be6643b5-8676-4768-a353-76ca91bf6982','da99c021-4526-4d6f-b388-5d5582350932','2025-09-17 19:27:28.531611','2025-09-17 19:27:28.531611'),(40,'56a4605b-d63c-46da-9787-62b399cccf4b','da99c021-4526-4d6f-b388-5d5582350932','2025-09-17 19:27:28.535280','2025-09-17 19:27:28.535280'),(41,'e9ad33a2-ec16-47dd-af8a-0ae88d6e8b80','da99c021-4526-4d6f-b388-5d5582350932','2025-09-17 19:27:28.538955','2025-09-17 19:27:28.538955'),(42,'9da612d0-7f8e-4487-bc2f-1f9cd25f8e3a','da99c021-4526-4d6f-b388-5d5582350932','2025-09-17 19:27:28.542931','2025-09-17 19:27:28.542931'),(43,'dccc1e34-bf84-4eb9-b3fe-143f837f46ec','da99c021-4526-4d6f-b388-5d5582350932','2025-09-17 19:27:28.546666','2025-09-17 19:27:28.546666'),(44,'82bb54e5-13e3-414e-b6cb-dc1c05b49b2d','da99c021-4526-4d6f-b388-5d5582350932','2025-09-17 19:27:28.550344','2025-09-17 19:27:28.550344'),(45,'56a4605b-d63c-46da-9787-62b399cccf4b','dc6d74f8-185a-48a7-9847-bbfd3b08c7f0','2025-09-17 19:27:28.555154','2025-09-17 19:27:28.555154'),(46,'82bb54e5-13e3-414e-b6cb-dc1c05b49b2d','dc6d74f8-185a-48a7-9847-bbfd3b08c7f0','2025-09-17 19:27:28.558696','2025-09-17 19:27:28.558696'),(47,'305a1521-9d5b-40d8-85b5-e07349a991c7','f19c2971-8c4c-4d63-a2a8-973066e1b13c','2025-09-17 19:27:28.562516','2025-09-17 19:27:28.562516'),(48,'9da612d0-7f8e-4487-bc2f-1f9cd25f8e3a','f624dc61-7987-41a9-8f31-dc236d2cc57f','2025-09-17 19:27:28.566320','2025-09-17 19:27:28.566320');
/*!40000 ALTER TABLE `recipe_likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe_suggestions`
--

DROP TABLE IF EXISTS `recipe_suggestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipe_suggestions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` varchar(36) NOT NULL,
  `recipe_id` varchar(36) NOT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_recipe_suggestions_on_user_id_and_recipe_id` (`user_id`,`recipe_id`),
  KEY `index_recipe_suggestions_on_user_id` (`user_id`),
  KEY `index_recipe_suggestions_on_recipe_id` (`recipe_id`),
  CONSTRAINT `fk_rails_589e111cca` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`),
  CONSTRAINT `fk_rails_b151de827e` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe_suggestions`
--

LOCK TABLES `recipe_suggestions` WRITE;
/*!40000 ALTER TABLE `recipe_suggestions` DISABLE KEYS */;
/*!40000 ALTER TABLE `recipe_suggestions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `recipe_summary_view`
--

DROP TABLE IF EXISTS `recipe_summary_view`;
/*!50001 DROP VIEW IF EXISTS `recipe_summary_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `recipe_summary_view` AS SELECT 
 1 AS `id`,
 1 AS `recipe_title`,
 1 AS `recipe_created_at`,
 1 AS `creator_user_id`,
 1 AS `creator_name`,
 1 AS `total_likes`,
 1 AS `total_comments`,
 1 AS `total_ingredients`,
 1 AS `liked_user_names`,
 1 AS `comments_with_user_names`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `recipes`
--

DROP TABLE IF EXISTS `recipes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipes` (
  `id` varchar(36) NOT NULL,
  `user_id` varchar(36) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `image_url` varchar(255) DEFAULT NULL,
  `instructions` json DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT '0',
  `cuisine` json DEFAULT NULL,
  `difficulty` varchar(255) DEFAULT NULL,
  `tags` json DEFAULT NULL,
  `prep_time` int DEFAULT '10',
  `cook_time` int DEFAULT '10',
  `servings` int DEFAULT '1',
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_recipes_on_user_id_and_is_public` (`user_id`,`is_public`),
  CONSTRAINT `fk_rails_9606fce865` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipes`
--

LOCK TABLES `recipes` WRITE;
/*!40000 ALTER TABLE `recipes` DISABLE KEYS */;
INSERT INTO `recipes` VALUES ('0e23e16d-17f4-4e6f-927c-e22eecbc6a2e','305a1521-9d5b-40d8-85b5-e07349a991c7','Avocado Toast','Simple and healthy avocado toast with lemon and chili flakes.','https://example.com/avocado_toast.jpg','[\"Toast bread slices until golden.\", \"Mash avocado and mix with lemon juice and salt.\", \"Spread avocado mixture on toast.\", \"Top with chili flakes and a drizzle of olive oil.\", \"Serve immediately.\"]',1,'[\"Breakfast\", \"Vegan\"]','easy','[\"breakfast\", \"vegan\", \"quick\"]',5,5,1,'2025-09-17 19:27:27.831446','2025-09-17 19:27:27.831446'),('3a4c4a73-21ac-4136-8fb5-81ae8229d217','9da612d0-7f8e-4487-bc2f-1f9cd25f8e3a','Caprese Salad','Fresh Italian salad with tomatoes, mozzarella, and basil.','https://example.com/caprese_salad.jpg','[\"Slice tomatoes and mozzarella cheese.\", \"Arrange on a plate alternating tomato and mozzarella slices.\", \"Top with fresh basil leaves.\", \"Drizzle with olive oil and balsamic vinegar.\", \"Season with salt and pepper and serve.\"]',1,'[\"Italian\"]','easy','[\"salad\", \"vegetarian\", \"fresh\"]',10,0,2,'2025-09-17 19:27:27.807362','2025-09-17 19:27:27.807362'),('4aca8f75-8ed6-41e9-93b2-dc8c727322d7','be6643b5-8676-4768-a353-76ca91bf6982','Chicken Tikka Masala','Spicy and creamy Indian chicken curry served with rice.','https://example.com/chicken_tikka.jpg','[\"Marinate chicken in yogurt and spices for at least 1 hour.\", \"Grill or sauté chicken until cooked through.\", \"Prepare sauce with onion, garlic, ginger, tomatoes, and cream.\", \"Add cooked chicken to sauce and simmer for 10 minutes.\", \"Serve hot with basmati rice or naan.\"]',1,'[\"Indian\"]','medium','[\"chicken\", \"curry\", \"spicy\"]',20,30,2,'2025-09-17 19:27:27.801130','2025-09-17 19:27:27.801130'),('a0540fd2-c745-454b-943c-2243d3ffdf77','dccc1e34-bf84-4eb9-b3fe-143f837f46ec','Vegan Buddha Bowl','Healthy and colorful bowl with quinoa, roasted veggies, and tahini dressing.','https://example.com/buddha_bowl.jpg','[\"Cook quinoa according to package instructions.\", \"Roast a mix of vegetables in olive oil, salt, and pepper.\", \"Assemble quinoa, veggies, and greens in a bowl.\", \"Drizzle with tahini dressing and sprinkle seeds on top.\", \"Serve warm or cold.\"]',1,'[\"Vegan\", \"Fusion\"]','easy','[\"vegan\", \"healthy\", \"bowl\"]',15,25,1,'2025-09-17 19:27:27.778256','2025-09-17 19:27:27.778256'),('a0ace76b-d091-466e-ac5d-c01f65b86d71','f4a8131c-6684-4ec8-8782-2bd6a65716a1','Chocolate Lava Cake','Rich chocolate cake with molten center, perfect for dessert lovers.','https://example.com/lava_cake.jpg','[\"Preheat oven to 425°F (220°C).\", \"Butter and flour ramekins.\", \"Melt chocolate and butter together.\", \"Whisk eggs, sugar, and a pinch of salt until fluffy.\", \"Fold chocolate mixture into eggs.\", \"Pour batter into ramekins and bake 12-14 minutes.\", \"Serve immediately with ice cream.\"]',0,'[\"Dessert\"]','hard','[\"chocolate\", \"dessert\", \"bake\"]',20,14,2,'2025-09-17 19:27:27.785494','2025-09-17 19:27:27.785494'),('a29a867e-e189-42d4-8275-a81d0527ca37','305a1521-9d5b-40d8-85b5-e07349a991c7','Spaghetti Carbonara','Classic Italian pasta dish with eggs, cheese, pancetta, and pepper.','https://example.com/spaghetti.jpg','[\"Boil water in a large pot and cook spaghetti until al dente.\", \"Fry pancetta until crisp.\", \"Whisk eggs and cheese together.\", \"Combine pasta with pancetta and remove from heat.\", \"Stir in egg mixture quickly to create a creamy sauce.\", \"Season with pepper and serve.\"]',1,'[\"Italian\"]','medium','[\"pasta\", \"quick\", \"classic\"]',10,20,2,'2025-09-17 19:27:27.770192','2025-09-17 19:27:27.770192'),('bb0d7f4e-85a5-473a-9b8c-cb0fbb778e25','9da612d0-7f8e-4487-bc2f-1f9cd25f8e3a','Mushroom Risotto','Creamy Italian risotto with sautéed mushrooms and Parmesan cheese.','https://example.com/mushroom_risotto.jpg','[\"Heat butter in a pan and sauté onions until translucent.\", \"Add mushrooms and cook until soft.\", \"Stir in arborio rice and cook for 1-2 minutes.\", \"Gradually add warm broth, stirring constantly until rice is creamy and tender.\", \"Stir in Parmesan cheese and season with salt and pepper.\"]',1,'[\"Italian\"]','hard','[\"risotto\", \"mushroom\", \"comfort food\"]',15,30,2,'2025-09-17 19:27:27.827951','2025-09-17 19:27:27.827951'),('da99c021-4526-4d6f-b388-5d5582350932','9da612d0-7f8e-4487-bc2f-1f9cd25f8e3a','Shrimp Tacos','Spicy shrimp tacos with cabbage slaw and creamy sauce.','https://example.com/shrimp_tacos.jpg','[\"Season shrimp with chili powder, paprika, and salt.\", \"Sauté shrimp until cooked through.\", \"Mix cabbage with lime juice and a pinch of salt for slaw.\", \"Warm tortillas and assemble with shrimp, slaw, and sauce.\", \"Serve immediately.\"]',1,'[\"Mexican\"]','medium','[\"seafood\", \"tacos\", \"spicy\"]',15,10,2,'2025-09-17 19:27:27.823807','2025-09-17 19:27:27.823807'),('dc6d74f8-185a-48a7-9847-bbfd3b08c7f0','305a1521-9d5b-40d8-85b5-e07349a991c7','Beef Stir-Fry','Quick and tasty stir-fried beef with vegetables and soy sauce.','https://example.com/beef_stirfry.jpg','[\"Slice beef thinly and marinate in soy sauce, garlic, and ginger for 15 minutes.\", \"Heat oil in a wok and stir-fry beef until browned.\", \"Add vegetables and stir-fry until tender-crisp.\", \"Add remaining sauce and cook for 2 minutes.\", \"Serve hot with steamed rice or noodles.\"]',1,'[\"Asian\", \"Chinese\"]','medium','[\"beef\", \"stir-fry\", \"quick\"]',15,15,2,'2025-09-17 19:27:27.816269','2025-09-17 19:27:27.816269'),('f19c2971-8c4c-4d63-a2a8-973066e1b13c','dccc1e34-bf84-4eb9-b3fe-143f837f46ec','Banana Pancakes','Fluffy pancakes with mashed bananas, perfect for breakfast.','https://example.com/banana_pancakes.jpg','[\"Mash bananas in a bowl.\", \"Mix in eggs, flour, milk, and a pinch of salt.\", \"Heat a non-stick pan with butter.\", \"Pour batter into pan and cook until bubbles form, then flip.\", \"Serve warm with syrup or fresh fruit.\"]',1,'[\"Breakfast\", \"American\"]','easy','[\"pancakes\", \"banana\", \"breakfast\"]',10,15,2,'2025-09-17 19:27:27.811721','2025-09-17 19:27:27.811721'),('f624dc61-7987-41a9-8f31-dc236d2cc57f','82bb54e5-13e3-414e-b6cb-dc1c05b49b2d','Greek Salad','Fresh Mediterranean salad with cucumbers, tomatoes, olives, and feta cheese.','https://example.com/greek_salad.jpg','[\"Chop cucumbers, tomatoes, and red onion.\", \"Combine with olives and feta cheese in a bowl.\", \"Drizzle with olive oil and lemon juice.\", \"Season with salt, pepper, and oregano.\", \"Toss gently and serve.\"]',1,'[\"Greek\", \"Mediterranean\"]','easy','[\"salad\", \"vegetarian\", \"fresh\"]',10,0,2,'2025-09-17 19:27:27.819837','2025-09-17 19:27:27.819837');
/*!40000 ALTER TABLE `recipes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20250827142728'),('20250904103622'),('20250904180016'),('20250904180835'),('20250910062207'),('20250910141725'),('20250911152558'),('20250911161522'),('20250912053859'),('20250916134038'),('20250916155125'),('20250916155440'),('20250916160201'),('20250916161805'),('20250917074821'),('20250917074932'),('20250917155728'),('20250917160306'),('20250917161057'),('20250917191147');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscription_plans`
--

DROP TABLE IF EXISTS `subscription_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscription_plans` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `billing_cycle` varchar(255) DEFAULT NULL,
  `feature_description` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription_plans`
--

LOCK TABLES `subscription_plans` WRITE;
/*!40000 ALTER TABLE `subscription_plans` DISABLE KEYS */;
INSERT INTO `subscription_plans` VALUES (1,'Basic',9.99,'monthly','Access to core features, limited support, 5 projects per month.','2025-09-17 19:27:28.302742','2025-09-17 19:27:28.302742'),(2,'Pro',29.99,'monthly','All core features, priority support, unlimited projects.','2025-09-17 19:27:28.306771','2025-09-17 19:27:28.306771'),(3,'Enterprise',99.99,'monthly','Custom solutions, dedicated account manager, enterprise-level support.','2025-09-17 19:27:28.310224','2025-09-17 19:27:28.310224'),(4,'Basic Annual',99.99,'yearly','Access to core features, limited support, 5 projects per month. Billed yearly.','2025-09-17 19:27:28.313619','2025-09-17 19:27:28.313619'),(5,'Pro Annual',299.99,'yearly','All core features, priority support, unlimited projects. Billed yearly.','2025-09-17 19:27:28.317341','2025-09-17 19:27:28.317341'),(6,'Enterprise Annual',999.99,'yearly','Custom solutions, dedicated account manager, enterprise-level support. Billed yearly.','2025-09-17 19:27:28.321130','2025-09-17 19:27:28.321130');
/*!40000 ALTER TABLE `subscription_plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscriptions`
--

DROP TABLE IF EXISTS `subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscriptions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` varchar(36) NOT NULL,
  `subscription_plan_id` bigint NOT NULL,
  `cancelled_at` datetime(6) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_subscriptions_on_user_id` (`user_id`),
  KEY `index_subscriptions_on_subscription_plan_id` (`subscription_plan_id`),
  CONSTRAINT `fk_rails_355348f174` FOREIGN KEY (`subscription_plan_id`) REFERENCES `subscription_plans` (`id`),
  CONSTRAINT `fk_rails_933bdff476` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriptions`
--

LOCK TABLES `subscriptions` WRITE;
/*!40000 ALTER TABLE `subscriptions` DISABLE KEYS */;
INSERT INTO `subscriptions` VALUES (1,'dccc1e34-bf84-4eb9-b3fe-143f837f46ec',5,NULL,'active','2025-09-17 19:27:28.327580','2025-09-17 19:27:28.327580'),(2,'be6643b5-8676-4768-a353-76ca91bf6982',4,NULL,'active','2025-09-17 19:27:28.330908','2025-09-17 19:27:28.330908');
/*!40000 ALTER TABLE `subscriptions` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,NO_AUTO_VALUE_ON_ZERO,STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`munchora`@`%`*/ /*!50003 TRIGGER `create_invoice_after_subscription_insert` AFTER INSERT ON `subscriptions` FOR EACH ROW INSERT INTO invoices (
        user_id,
        subscription_id,
        amount,
        currency,
        status,
        period_start,
        period_end,
        created_at,
        updated_at
      )
      SELECT 
        NEW.user_id,
        NEW.id,
        sp.price,
        'USD',
        'draft',
        NOW(),
        CASE 
          WHEN sp.billing_cycle = 'monthly' THEN DATE_ADD(NOW(), INTERVAL 1 MONTH)
          WHEN sp.billing_cycle = 'yearly' THEN DATE_ADD(NOW(), INTERVAL 1 YEAR)
          ELSE NOW()
        END,
        NOW(),
        NOW()
      FROM subscription_plans sp
      WHERE sp.id = NEW.subscription_plan_id; */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` varchar(36) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `password_digest` varchar(255) DEFAULT NULL,
  `image_src` varchar(255) DEFAULT NULL,
  `bio` varchar(255) DEFAULT NULL,
  `last_signed_in_at` datetime(6) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_provider_and_uid` (`provider`,`uid`),
  UNIQUE KEY `index_users_on_email` (`email`),
  KEY `index_users_on_first_name` (`first_name`),
  KEY `index_users_on_last_name` (`last_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('305a1521-9d5b-40d8-85b5-e07349a991c7','Alice','Example','alice@example.com',NULL,NULL,'$2a$12$xcr2hkRv1NSl3ruW4l2wtORdb31pbv4UWrAUIIaMLwTq/vbpp0vW6','https://via.placeholder.com/150','Loves cooking and experimenting with new recipes.',NULL,'2025-09-17 19:27:26.252940','2025-09-17 19:27:26.252940'),('56a4605b-d63c-46da-9787-62b399cccf4b','Marc','Some','marc@knox.com',NULL,NULL,'$2a$12$0mW4Aq120ZalYf.rTu7/SencMILOtck5wkMhE7mS4fsNyG66h0vD6','https://via.placeholder.com/150','Enjoys baking cakes on weekends.',NULL,'2025-09-17 19:27:27.748907','2025-09-17 19:27:27.748907'),('82bb54e5-13e3-414e-b6cb-dc1c05b49b2d','Johny','Knox','johny@knox.com',NULL,NULL,'$2a$12$04qziYEVHh3ekx7JaXNslem0Gt8VdE8TsoftQ3n8NCMp0R0ggN4tC','https://via.placeholder.com/150','Enjoys baking cakes on weekends.',NULL,'2025-09-17 19:27:26.896992','2025-09-17 19:27:26.896992'),('8b726fd3-e683-4e75-9336-74fb388f9970','Alexander','Christensen','alexanderbtcc@gmail.com','google','110943289187731255542',NULL,'https://lh3.googleusercontent.com/a/ACg8ocKcCIIs7nL6mk6IzWYPYE0Iup-FA8e_p8LN9TmKJuphVmKo0Mg=s96-c',NULL,NULL,'2025-09-20 14:37:47.452227','2025-09-20 14:37:47.452227'),('9da612d0-7f8e-4487-bc2f-1f9cd25f8e3a','Charlie','Example','charlie@example.com',NULL,NULL,'$2a$12$2BTwz8a2pMVmTshz.twGNO/3DBjMzFFQgze/bEcQna6MKOARXPsKy','https://via.placeholder.com/150','Enjoys baking bread on weekends.',NULL,'2025-09-17 19:27:26.683622','2025-09-17 19:27:26.683622'),('be6643b5-8676-4768-a353-76ca91bf6982','Mie','Dee','mie@knox.com',NULL,NULL,'$2a$12$OX.oIs2L1TVNwCSs.0b8duxWFIXZ0.skP9b4.eM.3pgjwu554PRQW','https://via.placeholder.com/150','Enjoys baking cakes on weekends.',NULL,'2025-09-17 19:27:27.120263','2025-09-17 19:27:27.120263'),('dccc1e34-bf84-4eb9-b3fe-143f837f46ec','Marie','Lun','marie@knox.com',NULL,NULL,'$2a$12$C87VpAyI0cM303sVHPDSPesWk5Xppvf60cUCb9XRr4NHtd.97yk16','https://via.placeholder.com/150','Enjoys baking cakes on weekends.',NULL,'2025-09-17 19:27:27.539605','2025-09-17 19:27:27.539605'),('e9ad33a2-ec16-47dd-af8a-0ae88d6e8b80','Carl','Jackson','jackson@knox.com',NULL,NULL,'$2a$12$0ttClhS/zDdmhcGZwCd2TeyCNVw1hsrHa8ly6Mkr0v1Z7iJKaYHUi','https://via.placeholder.com/150','Enjoys baking cakes on weekends.',NULL,'2025-09-17 19:27:27.327037','2025-09-17 19:27:27.327037'),('f4a8131c-6684-4ec8-8782-2bd6a65716a1','Bob','Example','bob@example.com',NULL,NULL,'$2a$12$Il0V7C0mXkvARn5sFEYcfeRGrlRqZo86rOyHWknsXDxWOgedthUpW','https://via.placeholder.com/150','Big fan of Italian cuisine.',NULL,'2025-09-17 19:27:26.469210','2025-09-17 19:27:26.469210');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `recipe_summary_view`
--

/*!50001 DROP VIEW IF EXISTS `recipe_summary_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`munchora`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `recipe_summary_view` AS select `r`.`id` AS `id`,`r`.`title` AS `recipe_title`,`r`.`created_at` AS `recipe_created_at`,`r`.`user_id` AS `creator_user_id`,`u`.`first_name` AS `creator_name`,ifnull(`like_count`.`total_likes`,0) AS `total_likes`,ifnull(`comment_count`.`total_comments`,0) AS `total_comments`,ifnull(`ingredient_count`.`total_ingredients`,0) AS `total_ingredients`,ifnull(`likers`.`liked_users`,'') AS `liked_user_names`,ifnull(`commenters`.`comments_with_names`,'') AS `comments_with_user_names` from ((((((`recipes` `r` join `users` `u` on((`r`.`user_id` = `u`.`id`))) left join (select `recipe_likes`.`recipe_id` AS `recipe_id`,count(0) AS `total_likes` from `recipe_likes` group by `recipe_likes`.`recipe_id`) `like_count` on((`like_count`.`recipe_id` = `r`.`id`))) left join (select `recipe_comments`.`recipe_id` AS `recipe_id`,count(0) AS `total_comments` from `recipe_comments` group by `recipe_comments`.`recipe_id`) `comment_count` on((`comment_count`.`recipe_id` = `r`.`id`))) left join (select `ingredients`.`recipe_id` AS `recipe_id`,count(0) AS `total_ingredients` from `ingredients` group by `ingredients`.`recipe_id`) `ingredient_count` on((`ingredient_count`.`recipe_id` = `r`.`id`))) left join (select `rl`.`recipe_id` AS `recipe_id`,group_concat(`u`.`first_name` separator ', ') AS `liked_users` from (`recipe_likes` `rl` join `users` `u` on((`rl`.`user_id` = `u`.`id`))) group by `rl`.`recipe_id`) `likers` on((`likers`.`recipe_id` = `r`.`id`))) left join (select `rc`.`recipe_id` AS `recipe_id`,group_concat(concat(`u`.`first_name`,': ',`rc`.`comment`) separator ' | ') AS `comments_with_names` from (`recipe_comments` `rc` join `users` `u` on((`rc`.`user_id` = `u`.`id`))) group by `rc`.`recipe_id`) `commenters` on((`commenters`.`recipe_id` = `r`.`id`))) order by ifnull(`like_count`.`total_likes`,0) desc */;
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

-- Dump completed on 2025-09-21 13:49:35
