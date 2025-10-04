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
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2025-10-02 19:19:58.689709','2025-10-02 19:19:58.689711');
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
INSERT INTO `feedbacks` VALUES (1,'Love the recipes! Keep up the great work.','Alice Johnson','alice@example.com','general','2025-10-02 19:20:07.562431','2025-10-02 19:20:07.562431'),(2,'Found a bug when trying to upload an image.','Bob Smith','bob@example.com','bug','2025-10-02 19:20:07.565290','2025-10-02 19:20:07.565290'),(3,'Could you add more vegan recipes?','Carol Lee','carol@example.com','features','2025-10-02 19:20:07.567275','2025-10-02 19:20:07.567275'),(4,'The website is loading slowly on mobile.','David Kim','david@example.com','general','2025-10-02 19:20:07.569574','2025-10-02 19:20:07.569574'),(5,'I appreciate the detailed cooking instructions!','Eve Martinez','eve@example.com','general','2025-10-02 19:20:07.571862','2025-10-02 19:20:07.571862'),(6,'Would love a dark mode option.','Frank Green','frank@example.com','features','2025-10-02 19:20:07.574258','2025-10-02 19:20:07.574258'),(7,'The login process is confusing.','Grace Hopper','grace@example.com','interface','2025-10-02 19:20:07.576653','2025-10-02 19:20:07.576653'),(8,'Great app, but the search feature could be faster.','Hannah Brown','hannah@example.com','general','2025-10-02 19:20:07.580430','2025-10-02 19:20:07.580430'),(9,'Images sometimes fail to upload on Safari.','Ian Clarke','ian@example.com','bug','2025-10-02 19:20:07.582901','2025-10-02 19:20:07.582901'),(10,'Please add a category filter for recipes.','Jane Doe','jane@example.com','features','2025-10-02 19:20:07.585477','2025-10-02 19:20:07.585477'),(11,'Really enjoy the grocery list feature.','Kevin Lee','kevin@example.com','general','2025-10-02 19:20:07.587608','2025-10-02 19:20:07.587608'),(12,'The AI recipe generator is amazing!','Laura Kim','laura@example.com','general','2025-10-02 19:20:07.589884','2025-10-02 19:20:07.589884'),(13,'I had trouble resetting my password.','Mike Taylor','mike@example.com','bug','2025-10-02 19:20:07.592257','2025-10-02 19:20:07.592257'),(14,'Consider adding multi-language support.','Nina Patel','nina@example.com','features','2025-10-02 19:20:07.594281','2025-10-02 19:20:07.594281'),(15,'Some recipes are missing nutrition info.','Oliver White','oliver@example.com','bug','2025-10-02 19:20:07.597613','2025-10-02 19:20:07.597613'),(16,'The mobile layout looks great!','Paula Adams','paula@example.com','general','2025-10-02 19:20:07.600006','2025-10-02 19:20:07.600006'),(17,'Notifications for saved recipes would be helpful.','Quinn Martin','quinn@example.com','features','2025-10-02 19:20:07.602206','2025-10-02 19:20:07.602206'),(18,'Sometimes the app crashes when uploading images.','Rachel Scott','rachel@example.com','bug','2025-10-02 19:20:07.604168','2025-10-02 19:20:07.604168'),(19,'Love the step-by-step recipe instructions.','Sam Wilson','sam@example.com','general','2025-10-02 19:20:07.606322','2025-10-02 19:20:07.606322'),(20,'Would be great to share recipes with friends.','Tina Young','tina@example.com','features','2025-10-02 19:20:07.608280','2025-10-02 19:20:07.608280');
/*!40000 ALTER TABLE `feedbacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grocery_list_audits`
--

DROP TABLE IF EXISTS `grocery_list_audits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grocery_list_audits` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `grocery_list_id` varchar(255) DEFAULT NULL,
  `owner_id` varchar(255) DEFAULT NULL,
  `operation` varchar(255) DEFAULT NULL,
  `old_data` json DEFAULT NULL,
  `changed_data` json DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grocery_list_audits`
--

LOCK TABLES `grocery_list_audits` WRITE;
/*!40000 ALTER TABLE `grocery_list_audits` DISABLE KEYS */;
INSERT INTO `grocery_list_audits` VALUES (1,'423b3584-9146-4e70-9607-f99a2ec3e0c9','c43a289f-5bef-4e6d-a789-ac13904c98e2','INSERT',NULL,'{\"name\": \"Home\", \"created_at\": \"2025-10-02 19:20:07.621580\"}','2025-10-02 19:20:07.000000','2025-10-02 19:20:07.000000'),(2,'60fca73e-7e39-43ea-af07-357899f7f5bc','c43a289f-5bef-4e6d-a789-ac13904c98e2','INSERT',NULL,'{\"name\": \"Etc\", \"created_at\": \"2025-10-02 19:20:07.625779\"}','2025-10-02 19:20:07.000000','2025-10-02 19:20:07.000000'),(3,'ddb6f26f-5408-47dc-975d-d2f13a9a0d0d','896687cb-a95a-45b5-87b6-7c4d3dd74cea','INSERT',NULL,'{\"name\": \"stuff\", \"created_at\": \"2025-10-02 19:20:07.630887\"}','2025-10-02 19:20:07.000000','2025-10-02 19:20:07.000000'),(4,'5e29285f-e234-4d82-b072-131f3c7579aa','896687cb-a95a-45b5-87b6-7c4d3dd74cea','INSERT',NULL,'{\"name\": \"Dinner party\", \"created_at\": \"2025-10-02 19:20:07.634066\"}','2025-10-02 19:20:07.000000','2025-10-02 19:20:07.000000'),(5,'30270a5b-8afd-4487-8113-d98eb7bab3d8','4cc5b481-5d17-4d19-a3be-45158aa36aab','INSERT',NULL,'{\"name\": \"Work\", \"created_at\": \"2025-10-02 19:20:07.637666\"}','2025-10-02 19:20:07.000000','2025-10-02 19:20:07.000000'),(6,'5fe29fa8-69c4-467a-9651-2eab74931f72','5f19272b-ef08-484f-87c1-5257145743cc','INSERT',NULL,'{\"name\": \"Shared\", \"created_at\": \"2025-10-02 19:20:07.640873\"}','2025-10-02 19:20:07.000000','2025-10-02 19:20:07.000000'),(7,'63e9b74e-a2c0-4a67-b26b-d9e40c23e94b','896687cb-a95a-45b5-87b6-7c4d3dd74cea','INSERT',NULL,'{\"name\": \"Random\", \"created_at\": \"2025-10-02 19:20:07.644631\"}','2025-10-02 19:20:07.000000','2025-10-02 19:20:07.000000'),(8,'997ee5ab-e463-44a6-812c-5d3768730ca6','d38a99fe-3722-4df3-916e-336dde9d956a','INSERT',NULL,'{\"name\": \"Sports\", \"created_at\": \"2025-10-02 19:20:07.648351\"}','2025-10-02 19:20:07.000000','2025-10-02 19:20:07.000000'),(9,'2763d3a0-90e9-443c-a25f-3d64464245e1','489dfdf9-12b2-4d2f-9d22-4310f8e52fa5','INSERT',NULL,'{\"name\": \"Baking\", \"created_at\": \"2025-10-02 19:20:07.651421\"}','2025-10-02 19:20:07.000000','2025-10-02 19:20:07.000000'),(10,'57c1e365-e885-4e0b-9f14-3e14e440059b','5f19272b-ef08-484f-87c1-5257145743cc','INSERT',NULL,'{\"name\": \"Holiday\", \"created_at\": \"2025-10-02 19:20:07.655157\"}','2025-10-02 19:20:07.000000','2025-10-02 19:20:07.000000'),(11,'4727c43b-7c79-4201-8e70-df4ad7cb0816','7f15c6f9-cc34-427d-8fb8-e9027af348f6','INSERT',NULL,'{\"name\": \"Shopping 🛒\", \"created_at\": \"2025-10-03 16:55:22.326675\"}','2025-10-03 16:55:22.000000','2025-10-03 16:55:22.000000'),(12,'b0550b34-bf95-426a-944c-3f1c4860fff5','2901991d-00b1-451d-a089-c131a9a7692e','INSERT',NULL,'{\"name\": \"Shopping 🛒\", \"created_at\": \"2025-10-03 17:02:42.547120\"}','2025-10-03 17:02:42.000000','2025-10-03 17:02:42.000000'),(13,'b0550b34-bf95-426a-944c-3f1c4860fff5','2901991d-00b1-451d-a089-c131a9a7692e','DELETE','{\"name\": \"Shopping 🛒\", \"created_at\": \"2025-10-03 17:02:42.547120\"}',NULL,'2025-10-03 17:04:11.000000','2025-10-03 17:04:11.000000'),(14,'4727c43b-7c79-4201-8e70-df4ad7cb0816','7f15c6f9-cc34-427d-8fb8-e9027af348f6','DELETE','{\"name\": \"Shopping 🛒\", \"created_at\": \"2025-10-03 16:55:22.326675\"}',NULL,'2025-10-03 17:05:39.000000','2025-10-03 17:05:39.000000'),(15,'713c1313-95d4-4436-bd4e-301234748e07','83d2db11-0576-4ba9-bca7-caee4e44118c','INSERT',NULL,'{\"name\": \"TEST LIST 🛒\", \"created_at\": \"2025-10-03 17:10:37.886328\"}','2025-10-03 17:10:37.000000','2025-10-03 17:10:37.000000'),(16,'713c1313-95d4-4436-bd4e-301234748e07','83d2db11-0576-4ba9-bca7-caee4e44118c','DELETE','{\"name\": \"TEST LIST 🛒\", \"created_at\": \"2025-10-03 17:10:37.886328\"}',NULL,'2025-10-03 17:18:03.000000','2025-10-03 17:18:03.000000');
/*!40000 ALTER TABLE `grocery_list_audits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grocery_list_item_audits`
--

DROP TABLE IF EXISTS `grocery_list_item_audits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grocery_list_item_audits` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `grocery_list_item_id` varchar(255) DEFAULT NULL,
  `added_by_id` varchar(255) DEFAULT NULL,
  `operation` varchar(255) DEFAULT NULL,
  `old_data` json DEFAULT NULL,
  `changed_data` json DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grocery_list_item_audits`
--

LOCK TABLES `grocery_list_item_audits` WRITE;
/*!40000 ALTER TABLE `grocery_list_item_audits` DISABLE KEYS */;
INSERT INTO `grocery_list_item_audits` VALUES (1,'1','4cc5b481-5d17-4d19-a3be-45158aa36aab','INSERT',NULL,'{\"name\": \"Guldkorn\", \"category\": \"breakfast 🥣\", \"created_at\": \"2025-10-02 19:20:07.663563\"}','2025-10-02 19:20:07.000000','2025-10-02 19:20:07.000000'),(2,'2','4cc5b481-5d17-4d19-a3be-45158aa36aab','INSERT',NULL,'{\"name\": \"Coco Pops\", \"category\": \"breakfast 🥣\", \"created_at\": \"2025-10-02 19:20:07.667783\"}','2025-10-02 19:20:07.000000','2025-10-02 19:20:07.000000'),(3,'3','4cc5b481-5d17-4d19-a3be-45158aa36aab','INSERT',NULL,'{\"name\": \"Beans\", \"category\": \"canned goods 🥫\", \"created_at\": \"2025-10-02 19:20:07.671118\"}','2025-10-02 19:20:07.000000','2025-10-02 19:20:07.000000'),(4,'4','4cc5b481-5d17-4d19-a3be-45158aa36aab','INSERT',NULL,'{\"name\": \"Bread\", \"category\": \"bakery 🥖\", \"created_at\": \"2025-10-02 19:20:07.674581\"}','2025-10-02 19:20:07.000000','2025-10-02 19:20:07.000000'),(5,'5','4cc5b481-5d17-4d19-a3be-45158aa36aab','INSERT',NULL,'{\"name\": \"Hand soap\", \"category\": \"cleaning 🧼\", \"created_at\": \"2025-10-02 19:20:07.678276\"}','2025-10-02 19:20:07.000000','2025-10-02 19:20:07.000000'),(6,'6','896687cb-a95a-45b5-87b6-7c4d3dd74cea','INSERT',NULL,'{\"name\": \"Salt\", \"category\": \"condiments 🧂\", \"created_at\": \"2025-10-02 19:20:07.682835\"}','2025-10-02 19:20:07.000000','2025-10-02 19:20:07.000000'),(7,'7','896687cb-a95a-45b5-87b6-7c4d3dd74cea','INSERT',NULL,'{\"name\": \"Pepper\", \"category\": \"condiments 🧂\", \"created_at\": \"2025-10-02 19:20:07.685719\"}','2025-10-02 19:20:07.000000','2025-10-02 19:20:07.000000'),(8,'8','896687cb-a95a-45b5-87b6-7c4d3dd74cea','INSERT',NULL,'{\"name\": \"Chicken\", \"category\": \"meat 🍗\", \"created_at\": \"2025-10-02 19:20:07.689295\"}','2025-10-02 19:20:07.000000','2025-10-02 19:20:07.000000'),(9,'9','896687cb-a95a-45b5-87b6-7c4d3dd74cea','INSERT',NULL,'{\"name\": \"Beef\", \"category\": \"meat 🍗\", \"created_at\": \"2025-10-02 19:20:07.692856\"}','2025-10-02 19:20:07.000000','2025-10-02 19:20:07.000000'),(10,'10','896687cb-a95a-45b5-87b6-7c4d3dd74cea','INSERT',NULL,'{\"name\": \"Leverpostej\", \"category\": \"meat 🍗\", \"created_at\": \"2025-10-02 19:20:07.695914\"}','2025-10-02 19:20:07.000000','2025-10-02 19:20:07.000000'),(11,'11','896687cb-a95a-45b5-87b6-7c4d3dd74cea','INSERT',NULL,'{\"name\": \"Hellefisk\", \"category\": \"fish 🐟\", \"created_at\": \"2025-10-02 19:20:07.699120\"}','2025-10-02 19:20:07.000000','2025-10-02 19:20:07.000000'),(12,'12','896687cb-a95a-45b5-87b6-7c4d3dd74cea','INSERT',NULL,'{\"name\": \"Rødspætte\", \"category\": \"fish 🐟\", \"created_at\": \"2025-10-02 19:20:07.703377\"}','2025-10-02 19:20:07.000000','2025-10-02 19:20:07.000000'),(13,'13','896687cb-a95a-45b5-87b6-7c4d3dd74cea','INSERT',NULL,'{\"name\": \"Fiskefilet\", \"category\": \"fish 🐟\", \"created_at\": \"2025-10-02 19:20:07.706866\"}','2025-10-02 19:20:07.000000','2025-10-02 19:20:07.000000'),(14,'14','5f19272b-ef08-484f-87c1-5257145743cc','INSERT',NULL,'{\"name\": \"Sild\", \"category\": \"fish 🐟\", \"created_at\": \"2025-10-02 19:20:07.711102\"}','2025-10-02 19:20:07.000000','2025-10-02 19:20:07.000000'),(15,'15','5f19272b-ef08-484f-87c1-5257145743cc','INSERT',NULL,'{\"name\": \"Cod\", \"category\": \"fish 🐟\", \"created_at\": \"2025-10-02 19:20:07.714347\"}','2025-10-02 19:20:07.000000','2025-10-02 19:20:07.000000'),(16,'16','5f19272b-ef08-484f-87c1-5257145743cc','INSERT',NULL,'{\"name\": \"Squid\", \"category\": \"fish 🐟\", \"created_at\": \"2025-10-02 19:20:07.717446\"}','2025-10-02 19:20:07.000000','2025-10-02 19:20:07.000000'),(17,'17','5f19272b-ef08-484f-87c1-5257145743cc','INSERT',NULL,'{\"name\": \"Cheese\", \"category\": \"dairy 🥚\", \"created_at\": \"2025-10-02 19:20:07.721055\"}','2025-10-02 19:20:07.000000','2025-10-02 19:20:07.000000'),(18,'18','5f19272b-ef08-484f-87c1-5257145743cc','INSERT',NULL,'{\"name\": \"Skyr\", \"category\": \"dairy 🥚\", \"created_at\": \"2025-10-02 19:20:07.724033\"}','2025-10-02 19:20:07.000000','2025-10-02 19:20:07.000000'),(19,'19','5f19272b-ef08-484f-87c1-5257145743cc','INSERT',NULL,'{\"name\": \"Egg\", \"category\": \"dairy 🥚\", \"created_at\": \"2025-10-02 19:20:07.728476\"}','2025-10-02 19:20:07.000000','2025-10-02 19:20:07.000000'),(20,'20','5f19272b-ef08-484f-87c1-5257145743cc','INSERT',NULL,'{\"name\": \"Milk\", \"category\": \"dairy 🥚\", \"created_at\": \"2025-10-02 19:20:07.731687\"}','2025-10-02 19:20:07.000000','2025-10-02 19:20:07.000000');
/*!40000 ALTER TABLE `grocery_list_item_audits` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grocery_list_items`
--

LOCK TABLES `grocery_list_items` WRITE;
/*!40000 ALTER TABLE `grocery_list_items` DISABLE KEYS */;
INSERT INTO `grocery_list_items` VALUES (1,'Guldkorn','breakfast 🥣',1,'30270a5b-8afd-4487-8113-d98eb7bab3d8','4cc5b481-5d17-4d19-a3be-45158aa36aab','2025-10-02 19:20:07.663563','2025-10-02 19:20:07.663563'),(2,'Coco Pops','breakfast 🥣',0,'30270a5b-8afd-4487-8113-d98eb7bab3d8','4cc5b481-5d17-4d19-a3be-45158aa36aab','2025-10-02 19:20:07.667783','2025-10-02 19:20:07.667783'),(3,'Beans','canned goods 🥫',1,'30270a5b-8afd-4487-8113-d98eb7bab3d8','4cc5b481-5d17-4d19-a3be-45158aa36aab','2025-10-02 19:20:07.671118','2025-10-02 19:20:07.671118'),(4,'Bread','bakery 🥖',1,'30270a5b-8afd-4487-8113-d98eb7bab3d8','4cc5b481-5d17-4d19-a3be-45158aa36aab','2025-10-02 19:20:07.674581','2025-10-02 19:20:07.674581'),(5,'Hand soap','cleaning 🧼',1,'30270a5b-8afd-4487-8113-d98eb7bab3d8','4cc5b481-5d17-4d19-a3be-45158aa36aab','2025-10-02 19:20:07.678276','2025-10-02 19:20:07.678276'),(6,'Salt','condiments 🧂',1,'5e29285f-e234-4d82-b072-131f3c7579aa','896687cb-a95a-45b5-87b6-7c4d3dd74cea','2025-10-02 19:20:07.682835','2025-10-02 19:20:07.682835'),(7,'Pepper','condiments 🧂',1,'5e29285f-e234-4d82-b072-131f3c7579aa','896687cb-a95a-45b5-87b6-7c4d3dd74cea','2025-10-02 19:20:07.685719','2025-10-02 19:20:07.685719'),(8,'Chicken','meat 🍗',1,'5e29285f-e234-4d82-b072-131f3c7579aa','896687cb-a95a-45b5-87b6-7c4d3dd74cea','2025-10-02 19:20:07.689295','2025-10-02 19:20:07.689295'),(9,'Beef','meat 🍗',1,'5e29285f-e234-4d82-b072-131f3c7579aa','896687cb-a95a-45b5-87b6-7c4d3dd74cea','2025-10-02 19:20:07.692856','2025-10-02 19:20:07.692856'),(10,'Leverpostej','meat 🍗',1,'5e29285f-e234-4d82-b072-131f3c7579aa','896687cb-a95a-45b5-87b6-7c4d3dd74cea','2025-10-02 19:20:07.695914','2025-10-02 19:20:07.695914'),(11,'Hellefisk','fish 🐟',1,'5e29285f-e234-4d82-b072-131f3c7579aa','896687cb-a95a-45b5-87b6-7c4d3dd74cea','2025-10-02 19:20:07.699120','2025-10-02 19:20:07.699120'),(12,'Rødspætte','fish 🐟',1,'5e29285f-e234-4d82-b072-131f3c7579aa','896687cb-a95a-45b5-87b6-7c4d3dd74cea','2025-10-02 19:20:07.703377','2025-10-02 19:20:07.703377'),(13,'Fiskefilet','fish 🐟',1,'5e29285f-e234-4d82-b072-131f3c7579aa','896687cb-a95a-45b5-87b6-7c4d3dd74cea','2025-10-02 19:20:07.706866','2025-10-02 19:20:07.706866'),(14,'Sild','fish 🐟',1,'57c1e365-e885-4e0b-9f14-3e14e440059b','5f19272b-ef08-484f-87c1-5257145743cc','2025-10-02 19:20:07.711102','2025-10-02 19:20:07.711102'),(15,'Cod','fish 🐟',1,'57c1e365-e885-4e0b-9f14-3e14e440059b','5f19272b-ef08-484f-87c1-5257145743cc','2025-10-02 19:20:07.714347','2025-10-02 19:20:07.714347'),(16,'Squid','fish 🐟',1,'57c1e365-e885-4e0b-9f14-3e14e440059b','5f19272b-ef08-484f-87c1-5257145743cc','2025-10-02 19:20:07.717446','2025-10-02 19:20:07.717446'),(17,'Cheese','dairy 🥚',1,'57c1e365-e885-4e0b-9f14-3e14e440059b','5f19272b-ef08-484f-87c1-5257145743cc','2025-10-02 19:20:07.721055','2025-10-02 19:20:07.721055'),(18,'Skyr','dairy 🥚',1,'57c1e365-e885-4e0b-9f14-3e14e440059b','5f19272b-ef08-484f-87c1-5257145743cc','2025-10-02 19:20:07.724033','2025-10-02 19:20:07.724033'),(19,'Egg','dairy 🥚',1,'57c1e365-e885-4e0b-9f14-3e14e440059b','5f19272b-ef08-484f-87c1-5257145743cc','2025-10-02 19:20:07.728476','2025-10-02 19:20:07.728476'),(20,'Milk','dairy 🥚',1,'57c1e365-e885-4e0b-9f14-3e14e440059b','5f19272b-ef08-484f-87c1-5257145743cc','2025-10-02 19:20:07.731687','2025-10-02 19:20:07.731687');
/*!40000 ALTER TABLE `grocery_list_items` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`munchora`@`%`*/ /*!50003 TRIGGER `grocery_list_items_audit_insert` AFTER INSERT ON `grocery_list_items` FOR EACH ROW BEGIN
        INSERT INTO grocery_list_item_audits(grocery_list_item_id, added_by_id, operation, changed_data, created_at, updated_at)
        VALUES (NEW.id, NEW.added_by_id, 'INSERT',
          JSON_OBJECT('name', NEW.name, 'category', NEW.category, 'created_at', NEW.created_at),
          NOW(), NOW());
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
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,NO_AUTO_VALUE_ON_ZERO,STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`munchora`@`%`*/ /*!50003 TRIGGER `grocery_list_items_audit_update` AFTER UPDATE ON `grocery_list_items` FOR EACH ROW BEGIN
        INSERT INTO grocery_list_item_audits(grocery_list_item_id, added_by_id, operation, old_data, changed_data, created_at, updated_at)
        VALUES (OLD.id, OLD.added_by_id, 'UPDATE',
          JSON_OBJECT('name', OLD.name, 'category', OLD.category, 'created_at', OLD.created_at),
          JSON_OBJECT('name', NEW.name, 'category', NEW.category, 'created_at', NEW.created_at),
          NOW(), NOW());
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
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,NO_AUTO_VALUE_ON_ZERO,STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`munchora`@`%`*/ /*!50003 TRIGGER `grocery_list_items_audit_delete` AFTER DELETE ON `grocery_list_items` FOR EACH ROW BEGIN
        INSERT INTO grocery_list_item_audits(grocery_list_item_id, added_by_id, operation, old_data, created_at, updated_at)
        VALUES (OLD.id, OLD.added_by_id, 'DELETE',
          JSON_OBJECT('name', OLD.name, 'category', OLD.category, 'created_at', OLD.created_at),
          NOW(), NOW());
      END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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
INSERT INTO `grocery_list_shares` VALUES (1,'2763d3a0-90e9-443c-a25f-3d64464245e1','489dfdf9-12b2-4d2f-9d22-4310f8e52fa5','2025-10-02 19:20:07.739868','2025-10-02 19:20:07.739868'),(2,'63e9b74e-a2c0-4a67-b26b-d9e40c23e94b','489dfdf9-12b2-4d2f-9d22-4310f8e52fa5','2025-10-02 19:20:07.743993','2025-10-02 19:20:07.743993'),(3,'423b3584-9146-4e70-9607-f99a2ec3e0c9','7e75ac1d-7ecd-4af8-b25c-1d656e794030','2025-10-02 19:20:07.748171','2025-10-02 19:20:07.748171'),(4,'997ee5ab-e463-44a6-812c-5d3768730ca6','6e434274-d620-4608-b9ab-789f70c50346','2025-10-02 19:20:07.752853','2025-10-02 19:20:07.752853'),(5,'60fca73e-7e39-43ea-af07-357899f7f5bc','c43a289f-5bef-4e6d-a789-ac13904c98e2','2025-10-02 19:20:07.757468','2025-10-02 19:20:07.757468'),(6,'5fe29fa8-69c4-467a-9651-2eab74931f72','d38a99fe-3722-4df3-916e-336dde9d956a','2025-10-02 19:20:07.761905','2025-10-02 19:20:07.761905'),(7,'997ee5ab-e463-44a6-812c-5d3768730ca6','489dfdf9-12b2-4d2f-9d22-4310f8e52fa5','2025-10-02 19:20:07.767114','2025-10-02 19:20:07.767114'),(8,'30270a5b-8afd-4487-8113-d98eb7bab3d8','896687cb-a95a-45b5-87b6-7c4d3dd74cea','2025-10-02 19:20:07.771535','2025-10-02 19:20:07.771535'),(9,'997ee5ab-e463-44a6-812c-5d3768730ca6','5f19272b-ef08-484f-87c1-5257145743cc','2025-10-02 19:20:07.775789','2025-10-02 19:20:07.775789'),(10,'30270a5b-8afd-4487-8113-d98eb7bab3d8','489dfdf9-12b2-4d2f-9d22-4310f8e52fa5','2025-10-02 19:20:07.779991','2025-10-02 19:20:07.779991'),(11,'997ee5ab-e463-44a6-812c-5d3768730ca6','7e75ac1d-7ecd-4af8-b25c-1d656e794030','2025-10-02 19:20:07.784111','2025-10-02 19:20:07.784111'),(12,'63e9b74e-a2c0-4a67-b26b-d9e40c23e94b','896687cb-a95a-45b5-87b6-7c4d3dd74cea','2025-10-02 19:20:07.788825','2025-10-02 19:20:07.788825'),(13,'997ee5ab-e463-44a6-812c-5d3768730ca6','4cc5b481-5d17-4d19-a3be-45158aa36aab','2025-10-02 19:20:07.793955','2025-10-02 19:20:07.793955'),(14,'5fe29fa8-69c4-467a-9651-2eab74931f72','7e75ac1d-7ecd-4af8-b25c-1d656e794030','2025-10-02 19:20:07.802566','2025-10-02 19:20:07.802566'),(15,'997ee5ab-e463-44a6-812c-5d3768730ca6','d38a99fe-3722-4df3-916e-336dde9d956a','2025-10-02 19:20:07.807410','2025-10-02 19:20:07.807410'),(16,'57c1e365-e885-4e0b-9f14-3e14e440059b','489dfdf9-12b2-4d2f-9d22-4310f8e52fa5','2025-10-02 19:20:07.812463','2025-10-02 19:20:07.812463'),(17,'2763d3a0-90e9-443c-a25f-3d64464245e1','5f19272b-ef08-484f-87c1-5257145743cc','2025-10-02 19:20:07.817502','2025-10-02 19:20:07.817502'),(18,'63e9b74e-a2c0-4a67-b26b-d9e40c23e94b','c43a289f-5bef-4e6d-a789-ac13904c98e2','2025-10-02 19:20:07.822637','2025-10-02 19:20:07.822637'),(19,'2763d3a0-90e9-443c-a25f-3d64464245e1','4cc5b481-5d17-4d19-a3be-45158aa36aab','2025-10-02 19:20:07.827474','2025-10-02 19:20:07.827474'),(20,'30270a5b-8afd-4487-8113-d98eb7bab3d8','4cc5b481-5d17-4d19-a3be-45158aa36aab','2025-10-02 19:20:07.831831','2025-10-02 19:20:07.831831');
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
INSERT INTO `grocery_lists` VALUES ('2763d3a0-90e9-443c-a25f-3d64464245e1','Baking','489dfdf9-12b2-4d2f-9d22-4310f8e52fa5','2025-10-02 19:20:07.651421','2025-10-02 19:20:07.651421'),('30270a5b-8afd-4487-8113-d98eb7bab3d8','Work','4cc5b481-5d17-4d19-a3be-45158aa36aab','2025-10-02 19:20:07.637666','2025-10-02 19:20:07.637666'),('423b3584-9146-4e70-9607-f99a2ec3e0c9','Home','c43a289f-5bef-4e6d-a789-ac13904c98e2','2025-10-02 19:20:07.621580','2025-10-02 19:20:07.621580'),('57c1e365-e885-4e0b-9f14-3e14e440059b','Holiday','5f19272b-ef08-484f-87c1-5257145743cc','2025-10-02 19:20:07.655157','2025-10-02 19:20:07.655157'),('5e29285f-e234-4d82-b072-131f3c7579aa','Dinner party','896687cb-a95a-45b5-87b6-7c4d3dd74cea','2025-10-02 19:20:07.634066','2025-10-02 19:20:07.634066'),('5fe29fa8-69c4-467a-9651-2eab74931f72','Shared','5f19272b-ef08-484f-87c1-5257145743cc','2025-10-02 19:20:07.640873','2025-10-02 19:20:07.640873'),('60fca73e-7e39-43ea-af07-357899f7f5bc','Etc','c43a289f-5bef-4e6d-a789-ac13904c98e2','2025-10-02 19:20:07.625779','2025-10-02 19:20:07.625779'),('63e9b74e-a2c0-4a67-b26b-d9e40c23e94b','Random','896687cb-a95a-45b5-87b6-7c4d3dd74cea','2025-10-02 19:20:07.644631','2025-10-02 19:20:07.644631'),('997ee5ab-e463-44a6-812c-5d3768730ca6','Sports','d38a99fe-3722-4df3-916e-336dde9d956a','2025-10-02 19:20:07.648351','2025-10-02 19:20:07.648351'),('ddb6f26f-5408-47dc-975d-d2f13a9a0d0d','stuff','896687cb-a95a-45b5-87b6-7c4d3dd74cea','2025-10-02 19:20:07.630887','2025-10-02 19:20:07.630887');
/*!40000 ALTER TABLE `grocery_lists` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`munchora`@`%`*/ /*!50003 TRIGGER `grocery_lists_audit_insert` AFTER INSERT ON `grocery_lists` FOR EACH ROW BEGIN
        INSERT INTO grocery_list_audits(grocery_list_id, owner_id, operation, changed_data, created_at, updated_at)
        VALUES (NEW.id, NEW.owner_id, 'INSERT',
          JSON_OBJECT('name', NEW.name, 'created_at', NEW.created_at),
          NOW(), NOW());
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
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,NO_AUTO_VALUE_ON_ZERO,STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`munchora`@`%`*/ /*!50003 TRIGGER `grocery_lists_audit_update` AFTER UPDATE ON `grocery_lists` FOR EACH ROW BEGIN
        INSERT INTO grocery_list_audits(grocery_list_id, owner_id, operation, old_data, changed_data, created_at, updated_at)
        VALUES (OLD.id, OLD.owner_id, 'UPDATE',
          JSON_OBJECT('name', OLD.name, 'created_at', OLD.created_at),
          JSON_OBJECT('name', NEW.name, 'created_at', NEW.created_at),
          NOW(), NOW());
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
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,NO_AUTO_VALUE_ON_ZERO,STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`munchora`@`%`*/ /*!50003 TRIGGER `grocery_lists_audit_delete` AFTER DELETE ON `grocery_lists` FOR EACH ROW BEGIN
        INSERT INTO grocery_list_audits(grocery_list_id, owner_id, operation, old_data, created_at, updated_at)
        VALUES (OLD.id, OLD.owner_id, 'DELETE',
          JSON_OBJECT('name', OLD.name, 'created_at', OLD.created_at),
          NOW(), NOW());
      END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredients`
--

LOCK TABLES `ingredients` WRITE;
/*!40000 ALTER TABLE `ingredients` DISABLE KEYS */;
INSERT INTO `ingredients` VALUES (1,'Mushrooms','vegetables 🥦',100,'0af0ce26-f9c2-41ad-abb2-872a7c7daa86','2025-10-02 19:20:07.307525','2025-10-02 19:20:07.307525'),(2,'Basil','spices & herbs 🌶️',5,'0af0ce26-f9c2-41ad-abb2-872a7c7daa86','2025-10-02 19:20:07.311126','2025-10-02 19:20:07.311126'),(3,'Chili Powder','meat 🍗',5,'0af0ce26-f9c2-41ad-abb2-872a7c7daa86','2025-10-02 19:20:07.315520','2025-10-02 19:20:07.315520'),(4,'Oregano','meat 🍗',5,'0af0ce26-f9c2-41ad-abb2-872a7c7daa86','2025-10-02 19:20:07.318953','2025-10-02 19:20:07.318953'),(5,'Spaghetti','grains 🌾',200,'0af0ce26-f9c2-41ad-abb2-872a7c7daa86','2025-10-02 19:20:07.322435','2025-10-02 19:20:07.322435'),(6,'Vegetable Broth','fruits 🍎',200,'12da8ebe-bdf5-4604-ba03-a4514b27726c','2025-10-02 19:20:07.325732','2025-10-02 19:20:07.325732'),(7,'Flour','grains 🌾',100,'12da8ebe-bdf5-4604-ba03-a4514b27726c','2025-10-02 19:20:07.328930','2025-10-02 19:20:07.328930'),(8,'Tortilla','grains 🌾',2,'12da8ebe-bdf5-4604-ba03-a4514b27726c','2025-10-02 19:20:07.332281','2025-10-02 19:20:07.332281'),(9,'Avocado','fruits 🍎',1,'12da8ebe-bdf5-4604-ba03-a4514b27726c','2025-10-02 19:20:07.336995','2025-10-02 19:20:07.336995'),(10,'Chicken Breast','meat 🍗',200,'12da8ebe-bdf5-4604-ba03-a4514b27726c','2025-10-02 19:20:07.340236','2025-10-02 19:20:07.340236'),(11,'Lemon Juice','fruits 🍎',10,'25852087-7972-4803-8544-e5f78a704cf1','2025-10-02 19:20:07.343616','2025-10-02 19:20:07.343616'),(12,'Tomato','vegetables 🥦',50,'25852087-7972-4803-8544-e5f78a704cf1','2025-10-02 19:20:07.347087','2025-10-02 19:20:07.347087'),(13,'Eggs','dairy 🥚',2,'25852087-7972-4803-8544-e5f78a704cf1','2025-10-02 19:20:07.350542','2025-10-02 19:20:07.350542'),(14,'Parmesan Cheese','dairy 🥚',50,'25852087-7972-4803-8544-e5f78a704cf1','2025-10-02 19:20:07.354266','2025-10-02 19:20:07.354266'),(15,'Parmesan Cheese','dairy 🥚',50,'25852087-7972-4803-8544-e5f78a704cf1','2025-10-02 19:20:07.357861','2025-10-02 19:20:07.357861'),(16,'Eggs','dairy 🥚',2,'3d23b8e6-4b4c-4889-aae1-e40d0bc8bcfc','2025-10-02 19:20:07.361324','2025-10-02 19:20:07.361324'),(17,'Chocolate','snacks 🍫',100,'3d23b8e6-4b4c-4889-aae1-e40d0bc8bcfc','2025-10-02 19:20:07.364829','2025-10-02 19:20:07.364829'),(18,'Sugar','meat 🍗',50,'3d23b8e6-4b4c-4889-aae1-e40d0bc8bcfc','2025-10-02 19:20:07.368436','2025-10-02 19:20:07.368436'),(19,'Butter','dairy 🥚',20,'3d23b8e6-4b4c-4889-aae1-e40d0bc8bcfc','2025-10-02 19:20:07.371729','2025-10-02 19:20:07.371729'),(20,'Lemon Juice','fruits 🍎',10,'3e148b5b-7126-42d9-a504-5116c950020f','2025-10-02 19:20:07.375110','2025-10-02 19:20:07.375110'),(21,'Chocolate','snacks 🍫',100,'3e148b5b-7126-42d9-a504-5116c950020f','2025-10-02 19:20:07.378811','2025-10-02 19:20:07.378811'),(22,'Vegetable Broth','fruits 🍎',200,'3e148b5b-7126-42d9-a504-5116c950020f','2025-10-02 19:20:07.383543','2025-10-02 19:20:07.383543'),(23,'Spaghetti','grains 🌾',200,'3e148b5b-7126-42d9-a504-5116c950020f','2025-10-02 19:20:07.387430','2025-10-02 19:20:07.387430'),(24,'Avocado','fruits 🍎',1,'3e148b5b-7126-42d9-a504-5116c950020f','2025-10-02 19:20:07.391733','2025-10-02 19:20:07.391733'),(25,'Chili Powder','meat 🍗',5,'5002fef7-3df1-4fea-ae8a-faecf90b3a7f','2025-10-02 19:20:07.394999','2025-10-02 19:20:07.394999'),(26,'Tomato','vegetables 🥦',50,'5002fef7-3df1-4fea-ae8a-faecf90b3a7f','2025-10-02 19:20:07.398248','2025-10-02 19:20:07.398248'),(27,'Mixed Vegetables','vegetables 🥦',150,'5002fef7-3df1-4fea-ae8a-faecf90b3a7f','2025-10-02 19:20:07.401657','2025-10-02 19:20:07.401657'),(28,'Basil','spices & herbs 🌶️',5,'5002fef7-3df1-4fea-ae8a-faecf90b3a7f','2025-10-02 19:20:07.405103','2025-10-02 19:20:07.405103'),(29,'Beef','meat 🍗',200,'5002fef7-3df1-4fea-ae8a-faecf90b3a7f','2025-10-02 19:20:07.408453','2025-10-02 19:20:07.408453'),(30,'Quinoa','grains 🌾',100,'60f3dc90-e383-468e-9cde-eb4bdd90035a','2025-10-02 19:20:07.419810','2025-10-02 19:20:07.419810'),(31,'Mixed Vegetables','vegetables 🥦',150,'60f3dc90-e383-468e-9cde-eb4bdd90035a','2025-10-02 19:20:07.423323','2025-10-02 19:20:07.423323'),(32,'Tahini','sauces & oils 🫙',30,'60f3dc90-e383-468e-9cde-eb4bdd90035a','2025-10-02 19:20:07.427283','2025-10-02 19:20:07.427283'),(33,'Spaghetti','grains 🌾',200,'68f812e3-2c75-4c43-8c05-ea6ba97100c5','2025-10-02 19:20:07.431151','2025-10-02 19:20:07.431151'),(34,'Pancetta','meat 🍗',100,'68f812e3-2c75-4c43-8c05-ea6ba97100c5','2025-10-02 19:20:07.434519','2025-10-02 19:20:07.434519'),(35,'Eggs','dairy 🥚',2,'68f812e3-2c75-4c43-8c05-ea6ba97100c5','2025-10-02 19:20:07.439901','2025-10-02 19:20:07.439901'),(36,'Parmesan Cheese','dairy 🥚',50,'68f812e3-2c75-4c43-8c05-ea6ba97100c5','2025-10-02 19:20:07.443354','2025-10-02 19:20:07.443354'),(37,'Parmesan Cheese','dairy 🥚',50,'68f812e3-2c75-4c43-8c05-ea6ba97100c5','2025-10-02 19:20:07.447265','2025-10-02 19:20:07.447265'),(38,'Spaghetti','grains 🌾',200,'7cd2e9f1-ab93-44bf-ad85-37219ecd2a7a','2025-10-02 19:20:07.450487','2025-10-02 19:20:07.450487'),(39,'Onion','vegetables 🥦',50,'7cd2e9f1-ab93-44bf-ad85-37219ecd2a7a','2025-10-02 19:20:07.454622','2025-10-02 19:20:07.454622'),(40,'Cabbage','vegetables 🥦',50,'7cd2e9f1-ab93-44bf-ad85-37219ecd2a7a','2025-10-02 19:20:07.458351','2025-10-02 19:20:07.458351'),(41,'Beef','meat 🍗',200,'7cd2e9f1-ab93-44bf-ad85-37219ecd2a7a','2025-10-02 19:20:07.462658','2025-10-02 19:20:07.462658'),(42,'Olives','fruits 🍎',30,'7cd2e9f1-ab93-44bf-ad85-37219ecd2a7a','2025-10-02 19:20:07.465641','2025-10-02 19:20:07.465641'),(43,'Balsamic Vinegar','sauces & oils 🫙',10,'ab8ef0d4-cf45-4e96-b1b2-a474a3533277','2025-10-02 19:20:07.469247','2025-10-02 19:20:07.469247'),(44,'Parmesan Cheese','dairy 🥚',50,'ab8ef0d4-cf45-4e96-b1b2-a474a3533277','2025-10-02 19:20:07.472775','2025-10-02 19:20:07.472775'),(45,'Chili Flakes','meat 🍗',2,'ab8ef0d4-cf45-4e96-b1b2-a474a3533277','2025-10-02 19:20:07.476140','2025-10-02 19:20:07.476140'),(46,'Tortilla','grains 🌾',2,'ab8ef0d4-cf45-4e96-b1b2-a474a3533277','2025-10-02 19:20:07.479926','2025-10-02 19:20:07.479926'),(47,'Feta Cheese','dairy 🥚',50,'ab8ef0d4-cf45-4e96-b1b2-a474a3533277','2025-10-02 19:20:07.483237','2025-10-02 19:20:07.483237'),(48,'Onion','vegetables 🥦',50,'ba66c673-5a05-4dff-8b18-e58ca43f82f5','2025-10-02 19:20:07.486823','2025-10-02 19:20:07.486823'),(49,'Mozzarella Cheese','dairy 🥚',100,'ba66c673-5a05-4dff-8b18-e58ca43f82f5','2025-10-02 19:20:07.489914','2025-10-02 19:20:07.489914'),(50,'Quinoa','grains 🌾',100,'ba66c673-5a05-4dff-8b18-e58ca43f82f5','2025-10-02 19:20:07.493645','2025-10-02 19:20:07.493645'),(51,'Sugar','meat 🍗',50,'ba66c673-5a05-4dff-8b18-e58ca43f82f5','2025-10-02 19:20:07.496926','2025-10-02 19:20:07.496926'),(52,'Lemon Juice','fruits 🍎',10,'ba66c673-5a05-4dff-8b18-e58ca43f82f5','2025-10-02 19:20:07.499998','2025-10-02 19:20:07.499998'),(53,'ground beef','meat 🍗',500,'2c42e318-f47a-4f02-a149-4f38a4f043f2','2025-10-03 16:27:56.750067','2025-10-03 16:27:56.750067'),(54,'brioche buns','bakery 🥖',4,'2c42e318-f47a-4f02-a149-4f38a4f043f2','2025-10-03 16:27:56.761437','2025-10-03 16:27:56.761437'),(55,'cheddar cheese slices','dairy 🥚',4,'2c42e318-f47a-4f02-a149-4f38a4f043f2','2025-10-03 16:27:56.776144','2025-10-03 16:27:56.776144'),(56,'fresh pineapple','fruits 🍎',100,'2c42e318-f47a-4f02-a149-4f38a4f043f2','2025-10-03 16:27:56.784224','2025-10-03 16:27:56.784224'),(57,'red onion','vegetables 🥦',1,'2c42e318-f47a-4f02-a149-4f38a4f043f2','2025-10-03 16:27:56.792569','2025-10-03 16:27:56.792569'),(58,'cilantro','spices & herbs 🌶️',10,'2c42e318-f47a-4f02-a149-4f38a4f043f2','2025-10-03 16:27:56.798464','2025-10-03 16:27:56.798464'),(59,'lime','fruits 🍎',1,'2c42e318-f47a-4f02-a149-4f38a4f043f2','2025-10-03 16:27:56.801964','2025-10-03 16:27:56.801964'),(60,'mayonnaise','dairy 🥚',100,'2c42e318-f47a-4f02-a149-4f38a4f043f2','2025-10-03 16:27:56.805832','2025-10-03 16:27:56.805832'),(61,'sriracha sauce','condiments 🧂',30,'2c42e318-f47a-4f02-a149-4f38a4f043f2','2025-10-03 16:27:56.809153','2025-10-03 16:27:56.809153'),(62,'lettuce leaves','vegetables 🥦',4,'2c42e318-f47a-4f02-a149-4f38a4f043f2','2025-10-03 16:27:56.812237','2025-10-03 16:27:56.812237'),(63,'pickled red onions','condiments 🧂',50,'2c42e318-f47a-4f02-a149-4f38a4f043f2','2025-10-03 16:27:56.816635','2025-10-03 16:27:56.816635'),(64,'smoked paprika','spices & herbs 🌶️',5,'2c42e318-f47a-4f02-a149-4f38a4f043f2','2025-10-03 16:27:56.820633','2025-10-03 16:27:56.820633'),(65,'salt','spices & herbs 🌶️',5,'2c42e318-f47a-4f02-a149-4f38a4f043f2','2025-10-03 16:27:56.824001','2025-10-03 16:27:56.824001'),(66,'black pepper','spices & herbs 🌶️',5,'2c42e318-f47a-4f02-a149-4f38a4f043f2','2025-10-03 16:27:56.827225','2025-10-03 16:27:56.827225'),(151,'all-purpose flour','bakery 🥖',1,'ccf2fd68-66cf-4876-8d9f-ee56b50d1204','2025-10-03 17:27:42.042836','2025-10-03 17:27:42.042836'),(152,'baking powder','no category 📦',4,'ccf2fd68-66cf-4876-8d9f-ee56b50d1204','2025-10-03 17:27:42.052148','2025-10-03 17:27:42.052148'),(153,'sugar','no category 📦',1,'ccf2fd68-66cf-4876-8d9f-ee56b50d1204','2025-10-03 17:27:42.060659','2025-10-03 17:27:42.060659'),(154,'salt','spices & herbs 🌶️',1,'ccf2fd68-66cf-4876-8d9f-ee56b50d1204','2025-10-03 17:27:42.068110','2025-10-03 17:27:42.068110'),(155,'milk','dairy 🥚',1,'ccf2fd68-66cf-4876-8d9f-ee56b50d1204','2025-10-03 17:27:42.072491','2025-10-03 17:27:42.072491'),(156,'egg','dairy 🥚',1,'ccf2fd68-66cf-4876-8d9f-ee56b50d1204','2025-10-03 17:27:42.077493','2025-10-03 17:27:42.077493'),(157,'butter (melted)','dairy 🥚',3,'ccf2fd68-66cf-4876-8d9f-ee56b50d1204','2025-10-03 17:27:42.081192','2025-10-03 17:27:42.081192'),(158,'butter or oil for cooking','sauces & oils 🫙',1,'ccf2fd68-66cf-4876-8d9f-ee56b50d1204','2025-10-03 17:27:42.085848','2025-10-03 17:27:42.085848');
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
INSERT INTO `invoices` VALUES (1,'7e75ac1d-7ecd-4af8-b25c-1d656e794030',1,29.99,'USD','draft',NULL,'2025-10-02 19:20:07.000000','2025-11-02 19:20:07.000000','2025-10-02 19:20:07.000000','2025-10-02 19:20:07.000000'),(2,'c43a289f-5bef-4e6d-a789-ac13904c98e2',2,29.99,'USD','draft',NULL,'2025-10-02 19:20:07.000000','2025-11-02 19:20:07.000000','2025-10-02 19:20:07.000000','2025-10-02 19:20:07.000000');
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
  `user_id` varchar(36) DEFAULT NULL,
  `recipe_id` varchar(36) DEFAULT NULL,
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
INSERT INTO `llm_usages` VALUES ('05b2efdb-ba9f-472f-8260-748db122cfe5','489dfdf9-12b2-4d2f-9d22-4310f8e52fa5','3e148b5b-7126-42d9-a504-5116c950020f','OpenAI','gpt-3.5-turbo','Write a rich chocolate lava cake recipes for dessert.',18,100,'2025-10-02 19:20:07.531094','2025-10-02 19:20:07.531094'),('111f5ca6-3d6c-4ec8-b73d-04af9430dd82','4cc5b481-5d17-4d19-a3be-45158aa36aab','5002fef7-3df1-4fea-ae8a-faecf90b3a7f','OpenAI','gpt-4','Generate a quick Italian pasta recipes with eggs and cheese.',15,120,'2025-10-02 19:20:07.533250','2025-10-02 19:20:07.533250'),('2cbdac7b-4428-43a8-be2b-43c7ee05ee76','d38a99fe-3722-4df3-916e-336dde9d956a','7cd2e9f1-ab93-44bf-ad85-37219ecd2a7a','OpenAI','gpt-4','Generate a quick Italian pasta recipes with eggs and cheese.',15,120,'2025-10-02 19:20:07.538055','2025-10-02 19:20:07.538055'),('33c690d5-00d0-4c51-8256-51f150902e18','5f19272b-ef08-484f-87c1-5257145743cc','3d23b8e6-4b4c-4889-aae1-e40d0bc8bcfc','Anthropic','claude-1','Create a vegan Buddha bowl with quinoa and roasted vegetables.',20,90,'2025-10-02 19:20:07.509999','2025-10-02 19:20:07.509999'),('40f5e4e2-1895-47bd-b5a5-d779bb448e72',NULL,NULL,'openai','gpt-4.1-mini-2025-04-14','Generate a simple, easy-to-make pancake recipe that is fluffy and delicious, including suggested toppings such as fruits, syrup, chocolate, or nuts, with clear step-by-step instructions suitable for beginners.',739,638,'2025-10-03 16:34:43.326994','2025-10-03 16:34:43.326994'),('43ecf70f-9cf0-4323-a061-9078308ac3ff','4cc5b481-5d17-4d19-a3be-45158aa36aab','68f812e3-2c75-4c43-8c05-ea6ba97100c5','Anthropic','claude-1','Create a vegan Buddha bowl with quinoa and roasted vegetables.',20,90,'2025-10-02 19:20:07.522495','2025-10-02 19:20:07.522495'),('45abb757-1fca-44d0-97d1-7ffa1c6e6707','896687cb-a95a-45b5-87b6-7c4d3dd74cea','ab8ef0d4-cf45-4e96-b1b2-a474a3533277','OpenAI','gpt-3.5-turbo','Write a rich chocolate lava cake recipes for dessert.',18,100,'2025-10-02 19:20:07.557114','2025-10-02 19:20:07.557114'),('4d3e187b-f9a9-496e-83fe-b75d1ca32222','6e434274-d620-4608-b9ab-789f70c50346','25852087-7972-4803-8544-e5f78a704cf1','Anthropic','claude-1','Create a vegan Buddha bowl with quinoa and roasted vegetables.',20,90,'2025-10-02 19:20:07.515328','2025-10-02 19:20:07.515328'),('55db434f-ff51-456c-8638-bb2a8daad7ce','896687cb-a95a-45b5-87b6-7c4d3dd74cea','25852087-7972-4803-8544-e5f78a704cf1','OpenAI','gpt-4','Generate a quick Italian pasta recipes with eggs and cheese.',15,120,'2025-10-02 19:20:07.512494','2025-10-02 19:20:07.512494'),('567733a1-f62d-45fc-90b7-5f6c400f6d81','7e75ac1d-7ecd-4af8-b25c-1d656e794030','12da8ebe-bdf5-4604-ba03-a4514b27726c','OpenAI','gpt-4','Generate a quick Italian pasta recipes with eggs and cheese.',15,120,'2025-10-02 19:20:07.545535','2025-10-02 19:20:07.545535'),('6061ec2b-21fd-4752-bc2e-11bb541b6772','896687cb-a95a-45b5-87b6-7c4d3dd74cea','3d23b8e6-4b4c-4889-aae1-e40d0bc8bcfc','OpenAI','gpt-4','Generate a quick Italian pasta recipes with eggs and cheese.',15,120,'2025-10-02 19:20:07.554490','2025-10-02 19:20:07.554490'),('6b16fdf4-12a2-4c08-a9e6-eb92e14ccf1c','896687cb-a95a-45b5-87b6-7c4d3dd74cea','3d23b8e6-4b4c-4889-aae1-e40d0bc8bcfc','OpenAI','gpt-3.5-turbo','Write a rich chocolate lava cake recipes for dessert.',18,100,'2025-10-02 19:20:07.552213','2025-10-02 19:20:07.552213'),('7ef92328-4dae-41f8-8d9b-cf5caeee0464','4cc5b481-5d17-4d19-a3be-45158aa36aab','25852087-7972-4803-8544-e5f78a704cf1','OpenAI','gpt-4','Generate a quick Italian pasta recipes with eggs and cheese.',15,120,'2025-10-02 19:20:07.520345','2025-10-02 19:20:07.520345'),('89847582-5466-42bd-a114-b507f7b45607','7e75ac1d-7ecd-4af8-b25c-1d656e794030','3e148b5b-7126-42d9-a504-5116c950020f','Anthropic','claude-1','Create a vegan Buddha bowl with quinoa and roasted vegetables.',20,90,'2025-10-02 19:20:07.540473','2025-10-02 19:20:07.540473'),('8b79aa29-82c0-4569-9caa-0dc956c7ee56',NULL,NULL,'openai','gpt-4.1-mini-2025-04-14','Generate a simple, easy-to-make pancake recipe that is fluffy and delicious, including suggested toppings such as fruits, syrup, chocolate, or nuts, with clear step-by-step instructions suitable for beginners.',739,587,'2025-10-03 17:13:54.687864','2025-10-03 17:13:54.687864'),('95642d7c-4dd4-4db8-8873-6af19f3e972a',NULL,NULL,'openai','gpt-4.1-mini-2025-04-14','Generate a simple, easy-to-make pancake recipe that is fluffy and delicious, including suggested toppings such as fruits, syrup, chocolate, or nuts, with clear step-by-step instructions suitable for beginners.',739,597,'2025-10-03 16:43:40.098921','2025-10-03 16:43:40.098921'),('95986914-9c27-4335-83c2-de2ebcc903c0',NULL,NULL,'openai','gpt-4.1-mini-2025-04-14','Generate a simple, easy-to-make pancake recipe that is fluffy and delicious, including suggested toppings such as fruits, syrup, chocolate, or nuts, with clear step-by-step instructions suitable for beginners.',739,720,'2025-10-03 16:52:12.130578','2025-10-03 16:52:12.130578'),('9f2c3311-e8ff-40e1-9f61-aceaaa2d6599','d38a99fe-3722-4df3-916e-336dde9d956a','68f812e3-2c75-4c43-8c05-ea6ba97100c5','OpenAI','gpt-3.5-turbo','Write a rich chocolate lava cake recipes for dessert.',18,100,'2025-10-02 19:20:07.535601','2025-10-02 19:20:07.535601'),('a6728291-a911-42fe-a505-1c2a12da3357','489dfdf9-12b2-4d2f-9d22-4310f8e52fa5','5002fef7-3df1-4fea-ae8a-faecf90b3a7f','Anthropic','claude-1','Create a vegan Buddha bowl with quinoa and roasted vegetables.',20,90,'2025-10-02 19:20:07.518139','2025-10-02 19:20:07.518139'),('a8cc736e-6c06-4c0e-878c-49ba9a100e48','d38a99fe-3722-4df3-916e-336dde9d956a','68f812e3-2c75-4c43-8c05-ea6ba97100c5','OpenAI','gpt-4','Generate a quick Italian pasta recipes with eggs and cheese.',15,120,'2025-10-02 19:20:07.524433','2025-10-02 19:20:07.524433'),('ace5e815-03ba-4121-be53-d8abb4cd4dd9','c43a289f-5bef-4e6d-a789-ac13904c98e2','0af0ce26-f9c2-41ad-abb2-872a7c7daa86','Anthropic','claude-1','Create a vegan Buddha bowl with quinoa and roasted vegetables.',20,90,'2025-10-02 19:20:07.543393','2025-10-02 19:20:07.543393'),('bb9c1247-c395-4698-927b-199f8a27c305','d38a99fe-3722-4df3-916e-336dde9d956a','68f812e3-2c75-4c43-8c05-ea6ba97100c5','Anthropic','claude-1','Create a vegan Buddha bowl with quinoa and roasted vegetables.',20,90,'2025-10-02 19:20:07.506929','2025-10-02 19:20:07.506929'),('cd1f885d-6a42-4e02-8c11-539f9647c0b0',NULL,NULL,'openai','gpt-4.1-mini-2025-04-14','Generate a simple, easy-to-make pancake recipe that is fluffy and delicious, including suggested toppings such as fruits, syrup, chocolate, or nuts, with clear step-by-step instructions suitable for beginners.',739,580,'2025-10-03 16:38:06.725890','2025-10-03 16:38:06.725890'),('e742af73-e3b2-495e-9c55-b2ab2d699a84','c43a289f-5bef-4e6d-a789-ac13904c98e2','ab8ef0d4-cf45-4e96-b1b2-a474a3533277','OpenAI','gpt-4','Generate a quick Italian pasta recipes with eggs and cheese.',15,120,'2025-10-02 19:20:07.549674','2025-10-02 19:20:07.549674'),('ecb651cd-e5d4-40c9-8e90-f813b73ded78',NULL,NULL,'openai','gpt-4.1-mini-2025-04-14','Generate a simple, easy-to-make pancake recipe that is fluffy and delicious, including suggested toppings such as fruits, syrup, chocolate, or nuts, with clear step-by-step instructions suitable for beginners.',739,714,'2025-10-03 16:35:46.672657','2025-10-03 16:35:46.672657'),('f586dc93-d8c8-44a6-867a-0039b5489b29','7f15c6f9-cc34-427d-8fb8-e9027af348f6','2c42e318-f47a-4f02-a149-4f38a4f043f2','openai','gpt-4.1-mini-2025-04-14','BURGERS',701,820,'2025-10-03 16:27:56.840194','2025-10-03 16:27:56.840194'),('fa3b643a-47d1-4d1d-973a-858e8efd7eaf','03e58981-14a9-4ff4-9fd7-2883687d2366','ccf2fd68-66cf-4876-8d9f-ee56b50d1204','openai','gpt-4.1-mini-2025-04-14','Generate a simple, easy-to-make pancake recipe that is fluffy and delicious, including suggested toppings such as fruits, syrup, chocolate, or nuts, with clear step-by-step instructions suitable for beginners.',742,618,'2025-10-03 17:27:42.092795','2025-10-03 17:27:42.092795'),('fed0b9e0-1f63-40ff-a7e4-5ce4bffc9936','c43a289f-5bef-4e6d-a789-ac13904c98e2','3e148b5b-7126-42d9-a504-5116c950020f','OpenAI','gpt-4','Generate a quick Italian pasta recipes with eggs and cheese.',15,120,'2025-10-02 19:20:07.528581','2025-10-02 19:20:07.528581');
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
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe_comments`
--

LOCK TABLES `recipe_comments` WRITE;
/*!40000 ALTER TABLE `recipe_comments` DISABLE KEYS */;
INSERT INTO `recipe_comments` VALUES (1,'c43a289f-5bef-4e6d-a789-ac13904c98e2','0af0ce26-f9c2-41ad-abb2-872a7c7daa86','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.078018','2025-10-02 19:20:08.078018'),(2,'489dfdf9-12b2-4d2f-9d22-4310f8e52fa5','0af0ce26-f9c2-41ad-abb2-872a7c7daa86','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.082212','2025-10-02 19:20:08.082212'),(3,'4cc5b481-5d17-4d19-a3be-45158aa36aab','0af0ce26-f9c2-41ad-abb2-872a7c7daa86','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.086438','2025-10-02 19:20:08.086438'),(4,'6e434274-d620-4608-b9ab-789f70c50346','0af0ce26-f9c2-41ad-abb2-872a7c7daa86','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.090050','2025-10-02 19:20:08.090050'),(5,'4cc5b481-5d17-4d19-a3be-45158aa36aab','0af0ce26-f9c2-41ad-abb2-872a7c7daa86','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.093757','2025-10-02 19:20:08.093757'),(6,'7e75ac1d-7ecd-4af8-b25c-1d656e794030','0af0ce26-f9c2-41ad-abb2-872a7c7daa86','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.097508','2025-10-02 19:20:08.097508'),(7,'6e434274-d620-4608-b9ab-789f70c50346','0af0ce26-f9c2-41ad-abb2-872a7c7daa86','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.102796','2025-10-02 19:20:08.102796'),(8,'896687cb-a95a-45b5-87b6-7c4d3dd74cea','0af0ce26-f9c2-41ad-abb2-872a7c7daa86','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.106662','2025-10-02 19:20:08.106662'),(9,'6e434274-d620-4608-b9ab-789f70c50346','0af0ce26-f9c2-41ad-abb2-872a7c7daa86','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.110335','2025-10-02 19:20:08.110335'),(10,'896687cb-a95a-45b5-87b6-7c4d3dd74cea','0af0ce26-f9c2-41ad-abb2-872a7c7daa86','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.114244','2025-10-02 19:20:08.114244'),(11,'d38a99fe-3722-4df3-916e-336dde9d956a','0af0ce26-f9c2-41ad-abb2-872a7c7daa86','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.118143','2025-10-02 19:20:08.118143'),(12,'d38a99fe-3722-4df3-916e-336dde9d956a','0af0ce26-f9c2-41ad-abb2-872a7c7daa86','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.122244','2025-10-02 19:20:08.122244'),(13,'6e434274-d620-4608-b9ab-789f70c50346','0af0ce26-f9c2-41ad-abb2-872a7c7daa86','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.126619','2025-10-02 19:20:08.126619'),(14,'896687cb-a95a-45b5-87b6-7c4d3dd74cea','0af0ce26-f9c2-41ad-abb2-872a7c7daa86','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.130824','2025-10-02 19:20:08.130824'),(15,'c43a289f-5bef-4e6d-a789-ac13904c98e2','0af0ce26-f9c2-41ad-abb2-872a7c7daa86','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.134630','2025-10-02 19:20:08.134630'),(16,'5f19272b-ef08-484f-87c1-5257145743cc','0af0ce26-f9c2-41ad-abb2-872a7c7daa86','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.138386','2025-10-02 19:20:08.138386'),(17,'7e75ac1d-7ecd-4af8-b25c-1d656e794030','0af0ce26-f9c2-41ad-abb2-872a7c7daa86','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.142506','2025-10-02 19:20:08.142506'),(18,'6e434274-d620-4608-b9ab-789f70c50346','0af0ce26-f9c2-41ad-abb2-872a7c7daa86','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.146487','2025-10-02 19:20:08.146487'),(19,'5f19272b-ef08-484f-87c1-5257145743cc','0af0ce26-f9c2-41ad-abb2-872a7c7daa86','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.151122','2025-10-02 19:20:08.151122'),(20,'c43a289f-5bef-4e6d-a789-ac13904c98e2','12da8ebe-bdf5-4604-ba03-a4514b27726c','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.155530','2025-10-02 19:20:08.155530'),(21,'7e75ac1d-7ecd-4af8-b25c-1d656e794030','12da8ebe-bdf5-4604-ba03-a4514b27726c','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.159654','2025-10-02 19:20:08.159654'),(22,'896687cb-a95a-45b5-87b6-7c4d3dd74cea','12da8ebe-bdf5-4604-ba03-a4514b27726c','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.163564','2025-10-02 19:20:08.163564'),(23,'5f19272b-ef08-484f-87c1-5257145743cc','12da8ebe-bdf5-4604-ba03-a4514b27726c','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.167366','2025-10-02 19:20:08.167366'),(24,'c43a289f-5bef-4e6d-a789-ac13904c98e2','12da8ebe-bdf5-4604-ba03-a4514b27726c','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.171464','2025-10-02 19:20:08.171464'),(25,'7e75ac1d-7ecd-4af8-b25c-1d656e794030','25852087-7972-4803-8544-e5f78a704cf1','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.175125','2025-10-02 19:20:08.175125'),(26,'c43a289f-5bef-4e6d-a789-ac13904c98e2','25852087-7972-4803-8544-e5f78a704cf1','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.180572','2025-10-02 19:20:08.180572'),(27,'4cc5b481-5d17-4d19-a3be-45158aa36aab','25852087-7972-4803-8544-e5f78a704cf1','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.184529','2025-10-02 19:20:08.184529'),(28,'6e434274-d620-4608-b9ab-789f70c50346','25852087-7972-4803-8544-e5f78a704cf1','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.188535','2025-10-02 19:20:08.188535'),(29,'4cc5b481-5d17-4d19-a3be-45158aa36aab','25852087-7972-4803-8544-e5f78a704cf1','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.192662','2025-10-02 19:20:08.192662'),(30,'6e434274-d620-4608-b9ab-789f70c50346','25852087-7972-4803-8544-e5f78a704cf1','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.196333','2025-10-02 19:20:08.196333'),(31,'489dfdf9-12b2-4d2f-9d22-4310f8e52fa5','3d23b8e6-4b4c-4889-aae1-e40d0bc8bcfc','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.201954','2025-10-02 19:20:08.201954'),(32,'4cc5b481-5d17-4d19-a3be-45158aa36aab','3d23b8e6-4b4c-4889-aae1-e40d0bc8bcfc','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.206532','2025-10-02 19:20:08.206532'),(33,'d38a99fe-3722-4df3-916e-336dde9d956a','3d23b8e6-4b4c-4889-aae1-e40d0bc8bcfc','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.210473','2025-10-02 19:20:08.210473'),(34,'d38a99fe-3722-4df3-916e-336dde9d956a','3d23b8e6-4b4c-4889-aae1-e40d0bc8bcfc','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.214496','2025-10-02 19:20:08.214496'),(35,'d38a99fe-3722-4df3-916e-336dde9d956a','3d23b8e6-4b4c-4889-aae1-e40d0bc8bcfc','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.220069','2025-10-02 19:20:08.220069'),(36,'7e75ac1d-7ecd-4af8-b25c-1d656e794030','3d23b8e6-4b4c-4889-aae1-e40d0bc8bcfc','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.224444','2025-10-02 19:20:08.224444'),(37,'6e434274-d620-4608-b9ab-789f70c50346','3d23b8e6-4b4c-4889-aae1-e40d0bc8bcfc','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.228138','2025-10-02 19:20:08.228138'),(38,'896687cb-a95a-45b5-87b6-7c4d3dd74cea','3d23b8e6-4b4c-4889-aae1-e40d0bc8bcfc','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.233380','2025-10-02 19:20:08.233380'),(39,'c43a289f-5bef-4e6d-a789-ac13904c98e2','3d23b8e6-4b4c-4889-aae1-e40d0bc8bcfc','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.239320','2025-10-02 19:20:08.239320'),(40,'6e434274-d620-4608-b9ab-789f70c50346','3d23b8e6-4b4c-4889-aae1-e40d0bc8bcfc','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.243799','2025-10-02 19:20:08.243799'),(41,'489dfdf9-12b2-4d2f-9d22-4310f8e52fa5','3d23b8e6-4b4c-4889-aae1-e40d0bc8bcfc','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.247487','2025-10-02 19:20:08.247487'),(42,'4cc5b481-5d17-4d19-a3be-45158aa36aab','3d23b8e6-4b4c-4889-aae1-e40d0bc8bcfc','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.251546','2025-10-02 19:20:08.251546'),(43,'6e434274-d620-4608-b9ab-789f70c50346','3e148b5b-7126-42d9-a504-5116c950020f','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.255503','2025-10-02 19:20:08.255503'),(44,'d38a99fe-3722-4df3-916e-336dde9d956a','3e148b5b-7126-42d9-a504-5116c950020f','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.260964','2025-10-02 19:20:08.260964'),(45,'4cc5b481-5d17-4d19-a3be-45158aa36aab','3e148b5b-7126-42d9-a504-5116c950020f','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.264915','2025-10-02 19:20:08.264915'),(46,'489dfdf9-12b2-4d2f-9d22-4310f8e52fa5','3e148b5b-7126-42d9-a504-5116c950020f','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.269345','2025-10-02 19:20:08.269345'),(47,'7e75ac1d-7ecd-4af8-b25c-1d656e794030','3e148b5b-7126-42d9-a504-5116c950020f','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.273745','2025-10-02 19:20:08.273745'),(48,'489dfdf9-12b2-4d2f-9d22-4310f8e52fa5','3e148b5b-7126-42d9-a504-5116c950020f','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.277308','2025-10-02 19:20:08.277308'),(49,'4cc5b481-5d17-4d19-a3be-45158aa36aab','3e148b5b-7126-42d9-a504-5116c950020f','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.281576','2025-10-02 19:20:08.281576'),(50,'5f19272b-ef08-484f-87c1-5257145743cc','3e148b5b-7126-42d9-a504-5116c950020f','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.285380','2025-10-02 19:20:08.285380'),(51,'896687cb-a95a-45b5-87b6-7c4d3dd74cea','3e148b5b-7126-42d9-a504-5116c950020f','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.291058','2025-10-02 19:20:08.291058'),(52,'7e75ac1d-7ecd-4af8-b25c-1d656e794030','3e148b5b-7126-42d9-a504-5116c950020f','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.295315','2025-10-02 19:20:08.295315'),(53,'6e434274-d620-4608-b9ab-789f70c50346','3e148b5b-7126-42d9-a504-5116c950020f','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.299110','2025-10-02 19:20:08.299110'),(54,'7e75ac1d-7ecd-4af8-b25c-1d656e794030','5002fef7-3df1-4fea-ae8a-faecf90b3a7f','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.303587','2025-10-02 19:20:08.303587'),(55,'d38a99fe-3722-4df3-916e-336dde9d956a','5002fef7-3df1-4fea-ae8a-faecf90b3a7f','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.307906','2025-10-02 19:20:08.307906'),(56,'489dfdf9-12b2-4d2f-9d22-4310f8e52fa5','5002fef7-3df1-4fea-ae8a-faecf90b3a7f','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.311763','2025-10-02 19:20:08.311763'),(57,'7e75ac1d-7ecd-4af8-b25c-1d656e794030','5002fef7-3df1-4fea-ae8a-faecf90b3a7f','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.317301','2025-10-02 19:20:08.317301'),(58,'d38a99fe-3722-4df3-916e-336dde9d956a','60f3dc90-e383-468e-9cde-eb4bdd90035a','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.321566','2025-10-02 19:20:08.321566'),(59,'489dfdf9-12b2-4d2f-9d22-4310f8e52fa5','68f812e3-2c75-4c43-8c05-ea6ba97100c5','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.325117','2025-10-02 19:20:08.325117'),(60,'4cc5b481-5d17-4d19-a3be-45158aa36aab','68f812e3-2c75-4c43-8c05-ea6ba97100c5','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.329589','2025-10-02 19:20:08.329589'),(61,'5f19272b-ef08-484f-87c1-5257145743cc','7cd2e9f1-ab93-44bf-ad85-37219ecd2a7a','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.333838','2025-10-02 19:20:08.333838'),(62,'6e434274-d620-4608-b9ab-789f70c50346','7cd2e9f1-ab93-44bf-ad85-37219ecd2a7a','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.337278','2025-10-02 19:20:08.337278'),(63,'489dfdf9-12b2-4d2f-9d22-4310f8e52fa5','7cd2e9f1-ab93-44bf-ad85-37219ecd2a7a','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.341579','2025-10-02 19:20:08.341579'),(64,'7e75ac1d-7ecd-4af8-b25c-1d656e794030','7cd2e9f1-ab93-44bf-ad85-37219ecd2a7a','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.346737','2025-10-02 19:20:08.346737'),(65,'4cc5b481-5d17-4d19-a3be-45158aa36aab','7cd2e9f1-ab93-44bf-ad85-37219ecd2a7a','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.350494','2025-10-02 19:20:08.350494'),(66,'896687cb-a95a-45b5-87b6-7c4d3dd74cea','7cd2e9f1-ab93-44bf-ad85-37219ecd2a7a','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.354296','2025-10-02 19:20:08.354296'),(67,'4cc5b481-5d17-4d19-a3be-45158aa36aab','7cd2e9f1-ab93-44bf-ad85-37219ecd2a7a','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.358232','2025-10-02 19:20:08.358232'),(68,'6e434274-d620-4608-b9ab-789f70c50346','7cd2e9f1-ab93-44bf-ad85-37219ecd2a7a','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.362069','2025-10-02 19:20:08.362069'),(69,'7e75ac1d-7ecd-4af8-b25c-1d656e794030','7cd2e9f1-ab93-44bf-ad85-37219ecd2a7a','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.366096','2025-10-02 19:20:08.366096'),(70,'5f19272b-ef08-484f-87c1-5257145743cc','7cd2e9f1-ab93-44bf-ad85-37219ecd2a7a','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.371367','2025-10-02 19:20:08.371367'),(71,'d38a99fe-3722-4df3-916e-336dde9d956a','7cd2e9f1-ab93-44bf-ad85-37219ecd2a7a','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.375166','2025-10-02 19:20:08.375166'),(72,'c43a289f-5bef-4e6d-a789-ac13904c98e2','7cd2e9f1-ab93-44bf-ad85-37219ecd2a7a','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.379133','2025-10-02 19:20:08.379133'),(73,'5f19272b-ef08-484f-87c1-5257145743cc','7cd2e9f1-ab93-44bf-ad85-37219ecd2a7a','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.383228','2025-10-02 19:20:08.383228'),(74,'5f19272b-ef08-484f-87c1-5257145743cc','7cd2e9f1-ab93-44bf-ad85-37219ecd2a7a','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.387056','2025-10-02 19:20:08.387056'),(75,'7e75ac1d-7ecd-4af8-b25c-1d656e794030','7cd2e9f1-ab93-44bf-ad85-37219ecd2a7a','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.390612','2025-10-02 19:20:08.390612'),(76,'7e75ac1d-7ecd-4af8-b25c-1d656e794030','7cd2e9f1-ab93-44bf-ad85-37219ecd2a7a','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.394283','2025-10-02 19:20:08.394283'),(77,'7e75ac1d-7ecd-4af8-b25c-1d656e794030','7cd2e9f1-ab93-44bf-ad85-37219ecd2a7a','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.399189','2025-10-02 19:20:08.399189'),(78,'6e434274-d620-4608-b9ab-789f70c50346','7cd2e9f1-ab93-44bf-ad85-37219ecd2a7a','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.402970','2025-10-02 19:20:08.402970'),(79,'4cc5b481-5d17-4d19-a3be-45158aa36aab','ab8ef0d4-cf45-4e96-b1b2-a474a3533277','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.407826','2025-10-02 19:20:08.407826'),(80,'896687cb-a95a-45b5-87b6-7c4d3dd74cea','ab8ef0d4-cf45-4e96-b1b2-a474a3533277','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.411572','2025-10-02 19:20:08.411572'),(81,'896687cb-a95a-45b5-87b6-7c4d3dd74cea','ab8ef0d4-cf45-4e96-b1b2-a474a3533277','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.415153','2025-10-02 19:20:08.415153'),(82,'896687cb-a95a-45b5-87b6-7c4d3dd74cea','ab8ef0d4-cf45-4e96-b1b2-a474a3533277','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.419068','2025-10-02 19:20:08.419068'),(83,'489dfdf9-12b2-4d2f-9d22-4310f8e52fa5','ab8ef0d4-cf45-4e96-b1b2-a474a3533277','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.422947','2025-10-02 19:20:08.422947'),(84,'c43a289f-5bef-4e6d-a789-ac13904c98e2','ab8ef0d4-cf45-4e96-b1b2-a474a3533277','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.426832','2025-10-02 19:20:08.426832'),(85,'5f19272b-ef08-484f-87c1-5257145743cc','ab8ef0d4-cf45-4e96-b1b2-a474a3533277','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.430522','2025-10-02 19:20:08.430522'),(86,'6e434274-d620-4608-b9ab-789f70c50346','ba66c673-5a05-4dff-8b18-e58ca43f82f5','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.434028','2025-10-02 19:20:08.434028'),(87,'d38a99fe-3722-4df3-916e-336dde9d956a','ba66c673-5a05-4dff-8b18-e58ca43f82f5','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.437904','2025-10-02 19:20:08.437904'),(88,'489dfdf9-12b2-4d2f-9d22-4310f8e52fa5','ba66c673-5a05-4dff-8b18-e58ca43f82f5','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.441834','2025-10-02 19:20:08.441834'),(89,'6e434274-d620-4608-b9ab-789f70c50346','ba66c673-5a05-4dff-8b18-e58ca43f82f5','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.445704','2025-10-02 19:20:08.445704'),(90,'5f19272b-ef08-484f-87c1-5257145743cc','ba66c673-5a05-4dff-8b18-e58ca43f82f5','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.449243','2025-10-02 19:20:08.449243'),(91,'4cc5b481-5d17-4d19-a3be-45158aa36aab','ba66c673-5a05-4dff-8b18-e58ca43f82f5','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.453153','2025-10-02 19:20:08.453153'),(92,'d38a99fe-3722-4df3-916e-336dde9d956a','ba66c673-5a05-4dff-8b18-e58ca43f82f5','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.457024','2025-10-02 19:20:08.457024'),(93,'6e434274-d620-4608-b9ab-789f70c50346','ba66c673-5a05-4dff-8b18-e58ca43f82f5','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.461412','2025-10-02 19:20:08.461412'),(94,'896687cb-a95a-45b5-87b6-7c4d3dd74cea','ba66c673-5a05-4dff-8b18-e58ca43f82f5','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.465470','2025-10-02 19:20:08.465470'),(95,'4cc5b481-5d17-4d19-a3be-45158aa36aab','ba66c673-5a05-4dff-8b18-e58ca43f82f5','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.470881','2025-10-02 19:20:08.470881'),(96,'489dfdf9-12b2-4d2f-9d22-4310f8e52fa5','ba66c673-5a05-4dff-8b18-e58ca43f82f5','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.474734','2025-10-02 19:20:08.474734'),(97,'5f19272b-ef08-484f-87c1-5257145743cc','ba66c673-5a05-4dff-8b18-e58ca43f82f5','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.479956','2025-10-02 19:20:08.479956'),(98,'489dfdf9-12b2-4d2f-9d22-4310f8e52fa5','ba66c673-5a05-4dff-8b18-e58ca43f82f5','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.484230','2025-10-02 19:20:08.484230'),(99,'4cc5b481-5d17-4d19-a3be-45158aa36aab','ba66c673-5a05-4dff-8b18-e58ca43f82f5','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.488349','2025-10-02 19:20:08.488349'),(100,'896687cb-a95a-45b5-87b6-7c4d3dd74cea','ba66c673-5a05-4dff-8b18-e58ca43f82f5','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.492095','2025-10-02 19:20:08.492095'),(101,'896687cb-a95a-45b5-87b6-7c4d3dd74cea','ba66c673-5a05-4dff-8b18-e58ca43f82f5','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.496448','2025-10-02 19:20:08.496448'),(102,'7e75ac1d-7ecd-4af8-b25c-1d656e794030','ba66c673-5a05-4dff-8b18-e58ca43f82f5','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.501762','2025-10-02 19:20:08.501762'),(103,'d38a99fe-3722-4df3-916e-336dde9d956a','ba66c673-5a05-4dff-8b18-e58ca43f82f5','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.505484','2025-10-02 19:20:08.505484'),(104,'6e434274-d620-4608-b9ab-789f70c50346','ba66c673-5a05-4dff-8b18-e58ca43f82f5','Okay it\'s delicious and MUNCHYYY!','2025-10-02 19:20:08.509445','2025-10-02 19:20:08.509445');
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe_likes`
--

LOCK TABLES `recipe_likes` WRITE;
/*!40000 ALTER TABLE `recipe_likes` DISABLE KEYS */;
INSERT INTO `recipe_likes` VALUES (1,'5f19272b-ef08-484f-87c1-5257145743cc','0af0ce26-f9c2-41ad-abb2-872a7c7daa86','2025-10-02 19:20:07.873793','2025-10-02 19:20:07.873793'),(2,'896687cb-a95a-45b5-87b6-7c4d3dd74cea','12da8ebe-bdf5-4604-ba03-a4514b27726c','2025-10-02 19:20:07.877875','2025-10-02 19:20:07.877875'),(3,'7e75ac1d-7ecd-4af8-b25c-1d656e794030','12da8ebe-bdf5-4604-ba03-a4514b27726c','2025-10-02 19:20:07.881503','2025-10-02 19:20:07.881503'),(4,'4cc5b481-5d17-4d19-a3be-45158aa36aab','12da8ebe-bdf5-4604-ba03-a4514b27726c','2025-10-02 19:20:07.885840','2025-10-02 19:20:07.885840'),(5,'5f19272b-ef08-484f-87c1-5257145743cc','12da8ebe-bdf5-4604-ba03-a4514b27726c','2025-10-02 19:20:07.890178','2025-10-02 19:20:07.890178'),(6,'d38a99fe-3722-4df3-916e-336dde9d956a','12da8ebe-bdf5-4604-ba03-a4514b27726c','2025-10-02 19:20:07.894506','2025-10-02 19:20:07.894506'),(7,'489dfdf9-12b2-4d2f-9d22-4310f8e52fa5','12da8ebe-bdf5-4604-ba03-a4514b27726c','2025-10-02 19:20:07.898492','2025-10-02 19:20:07.898492'),(8,'6e434274-d620-4608-b9ab-789f70c50346','12da8ebe-bdf5-4604-ba03-a4514b27726c','2025-10-02 19:20:07.902099','2025-10-02 19:20:07.902099'),(9,'c43a289f-5bef-4e6d-a789-ac13904c98e2','12da8ebe-bdf5-4604-ba03-a4514b27726c','2025-10-02 19:20:07.908240','2025-10-02 19:20:07.908240'),(10,'5f19272b-ef08-484f-87c1-5257145743cc','25852087-7972-4803-8544-e5f78a704cf1','2025-10-02 19:20:07.914712','2025-10-02 19:20:07.914712'),(11,'7e75ac1d-7ecd-4af8-b25c-1d656e794030','25852087-7972-4803-8544-e5f78a704cf1','2025-10-02 19:20:07.921278','2025-10-02 19:20:07.921278'),(12,'489dfdf9-12b2-4d2f-9d22-4310f8e52fa5','25852087-7972-4803-8544-e5f78a704cf1','2025-10-02 19:20:07.927521','2025-10-02 19:20:07.927521'),(13,'896687cb-a95a-45b5-87b6-7c4d3dd74cea','25852087-7972-4803-8544-e5f78a704cf1','2025-10-02 19:20:07.934442','2025-10-02 19:20:07.934442'),(14,'4cc5b481-5d17-4d19-a3be-45158aa36aab','25852087-7972-4803-8544-e5f78a704cf1','2025-10-02 19:20:07.940724','2025-10-02 19:20:07.940724'),(15,'6e434274-d620-4608-b9ab-789f70c50346','25852087-7972-4803-8544-e5f78a704cf1','2025-10-02 19:20:07.946742','2025-10-02 19:20:07.946742'),(16,'c43a289f-5bef-4e6d-a789-ac13904c98e2','25852087-7972-4803-8544-e5f78a704cf1','2025-10-02 19:20:07.952621','2025-10-02 19:20:07.952621'),(17,'6e434274-d620-4608-b9ab-789f70c50346','3d23b8e6-4b4c-4889-aae1-e40d0bc8bcfc','2025-10-02 19:20:07.958867','2025-10-02 19:20:07.958867'),(18,'5f19272b-ef08-484f-87c1-5257145743cc','3e148b5b-7126-42d9-a504-5116c950020f','2025-10-02 19:20:07.965430','2025-10-02 19:20:07.965430'),(19,'489dfdf9-12b2-4d2f-9d22-4310f8e52fa5','5002fef7-3df1-4fea-ae8a-faecf90b3a7f','2025-10-02 19:20:07.969825','2025-10-02 19:20:07.969825'),(20,'c43a289f-5bef-4e6d-a789-ac13904c98e2','5002fef7-3df1-4fea-ae8a-faecf90b3a7f','2025-10-02 19:20:07.974016','2025-10-02 19:20:07.974016'),(21,'896687cb-a95a-45b5-87b6-7c4d3dd74cea','5002fef7-3df1-4fea-ae8a-faecf90b3a7f','2025-10-02 19:20:07.978182','2025-10-02 19:20:07.978182'),(22,'7e75ac1d-7ecd-4af8-b25c-1d656e794030','5002fef7-3df1-4fea-ae8a-faecf90b3a7f','2025-10-02 19:20:07.982258','2025-10-02 19:20:07.982258'),(23,'4cc5b481-5d17-4d19-a3be-45158aa36aab','5002fef7-3df1-4fea-ae8a-faecf90b3a7f','2025-10-02 19:20:07.986374','2025-10-02 19:20:07.986374'),(24,'5f19272b-ef08-484f-87c1-5257145743cc','5002fef7-3df1-4fea-ae8a-faecf90b3a7f','2025-10-02 19:20:07.991509','2025-10-02 19:20:07.991509'),(25,'d38a99fe-3722-4df3-916e-336dde9d956a','5002fef7-3df1-4fea-ae8a-faecf90b3a7f','2025-10-02 19:20:07.996083','2025-10-02 19:20:07.996083'),(26,'6e434274-d620-4608-b9ab-789f70c50346','5002fef7-3df1-4fea-ae8a-faecf90b3a7f','2025-10-02 19:20:08.000112','2025-10-02 19:20:08.000112'),(27,'c43a289f-5bef-4e6d-a789-ac13904c98e2','60f3dc90-e383-468e-9cde-eb4bdd90035a','2025-10-02 19:20:08.003830','2025-10-02 19:20:08.003830'),(28,'489dfdf9-12b2-4d2f-9d22-4310f8e52fa5','68f812e3-2c75-4c43-8c05-ea6ba97100c5','2025-10-02 19:20:08.008067','2025-10-02 19:20:08.008067'),(29,'6e434274-d620-4608-b9ab-789f70c50346','68f812e3-2c75-4c43-8c05-ea6ba97100c5','2025-10-02 19:20:08.012326','2025-10-02 19:20:08.012326'),(30,'c43a289f-5bef-4e6d-a789-ac13904c98e2','7cd2e9f1-ab93-44bf-ad85-37219ecd2a7a','2025-10-02 19:20:08.016389','2025-10-02 19:20:08.016389'),(31,'4cc5b481-5d17-4d19-a3be-45158aa36aab','7cd2e9f1-ab93-44bf-ad85-37219ecd2a7a','2025-10-02 19:20:08.021467','2025-10-02 19:20:08.021467'),(32,'7e75ac1d-7ecd-4af8-b25c-1d656e794030','7cd2e9f1-ab93-44bf-ad85-37219ecd2a7a','2025-10-02 19:20:08.025731','2025-10-02 19:20:08.025731'),(33,'6e434274-d620-4608-b9ab-789f70c50346','ab8ef0d4-cf45-4e96-b1b2-a474a3533277','2025-10-02 19:20:08.029685','2025-10-02 19:20:08.029685'),(34,'5f19272b-ef08-484f-87c1-5257145743cc','ab8ef0d4-cf45-4e96-b1b2-a474a3533277','2025-10-02 19:20:08.033743','2025-10-02 19:20:08.033743'),(35,'489dfdf9-12b2-4d2f-9d22-4310f8e52fa5','ab8ef0d4-cf45-4e96-b1b2-a474a3533277','2025-10-02 19:20:08.038054','2025-10-02 19:20:08.038054'),(36,'4cc5b481-5d17-4d19-a3be-45158aa36aab','ab8ef0d4-cf45-4e96-b1b2-a474a3533277','2025-10-02 19:20:08.041924','2025-10-02 19:20:08.041924'),(37,'7e75ac1d-7ecd-4af8-b25c-1d656e794030','ab8ef0d4-cf45-4e96-b1b2-a474a3533277','2025-10-02 19:20:08.045897','2025-10-02 19:20:08.045897'),(38,'896687cb-a95a-45b5-87b6-7c4d3dd74cea','ab8ef0d4-cf45-4e96-b1b2-a474a3533277','2025-10-02 19:20:08.049838','2025-10-02 19:20:08.049838'),(39,'c43a289f-5bef-4e6d-a789-ac13904c98e2','ab8ef0d4-cf45-4e96-b1b2-a474a3533277','2025-10-02 19:20:08.053493','2025-10-02 19:20:08.053493'),(40,'7e75ac1d-7ecd-4af8-b25c-1d656e794030','ba66c673-5a05-4dff-8b18-e58ca43f82f5','2025-10-02 19:20:08.057271','2025-10-02 19:20:08.057271'),(41,'896687cb-a95a-45b5-87b6-7c4d3dd74cea','ba66c673-5a05-4dff-8b18-e58ca43f82f5','2025-10-02 19:20:08.061441','2025-10-02 19:20:08.061441'),(42,'d38a99fe-3722-4df3-916e-336dde9d956a','ba66c673-5a05-4dff-8b18-e58ca43f82f5','2025-10-02 19:20:08.065182','2025-10-02 19:20:08.065182'),(43,'489dfdf9-12b2-4d2f-9d22-4310f8e52fa5','ba66c673-5a05-4dff-8b18-e58ca43f82f5','2025-10-02 19:20:08.069014','2025-10-02 19:20:08.069014');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
INSERT INTO `recipes` VALUES ('0af0ce26-f9c2-41ad-abb2-872a7c7daa86','7e75ac1d-7ecd-4af8-b25c-1d656e794030','Caprese Salad','Fresh Italian salad with tomatoes, mozzarella, and basil.','https://example.com/caprese_salad.jpg','[\"Slice tomatoes and mozzarella cheese.\", \"Arrange on a plate alternating tomato and mozzarella slices.\", \"Top with fresh basil leaves.\", \"Drizzle with olive oil and balsamic vinegar.\", \"Season with salt and pepper and serve.\"]',1,'[\"Italian\"]','easy','[\"salad\", \"vegetarian\", \"fresh\"]',10,0,2,'2025-10-02 19:20:07.273423','2025-10-02 19:20:07.273423'),('12da8ebe-bdf5-4604-ba03-a4514b27726c','896687cb-a95a-45b5-87b6-7c4d3dd74cea','Mushroom Risotto','Creamy Italian risotto with sautéed mushrooms and Parmesan cheese.','https://example.com/mushroom_risotto.jpg','[\"Heat butter in a pan and sauté onions until translucent.\", \"Add mushrooms and cook until soft.\", \"Stir in arborio rice and cook for 1-2 minutes.\", \"Gradually add warm broth, stirring constantly until rice is creamy and tender.\", \"Stir in Parmesan cheese and season with salt and pepper.\"]',1,'[\"Italian\"]','hard','[\"risotto\", \"mushroom\", \"comfort food\"]',15,30,2,'2025-10-02 19:20:07.294716','2025-10-02 19:20:07.294716'),('25852087-7972-4803-8544-e5f78a704cf1','4cc5b481-5d17-4d19-a3be-45158aa36aab','Chicken Tikka Masala','Spicy and creamy Indian chicken curry served with rice.','https://example.com/chicken_tikka.jpg','[\"Marinate chicken in yogurt and spices for at least 1 hour.\", \"Grill or sauté chicken until cooked through.\", \"Prepare sauce with onion, garlic, ginger, tomatoes, and cream.\", \"Add cooked chicken to sauce and simmer for 10 minutes.\", \"Serve hot with basmati rice or naan.\"]',1,'[\"Indian\"]','medium','[\"chicken\", \"curry\", \"spicy\"]',20,30,2,'2025-10-02 19:20:07.267814','2025-10-02 19:20:07.267814'),('2c42e318-f47a-4f02-a149-4f38a4f043f2','7f15c6f9-cc34-427d-8fb8-e9027af348f6','Gourmet Fusion Burgers with Sriracha Mayo & Pineapple Salsa 🍔🍍','Experience a mouthwatering fusion burger that combines juicy, perfectly seasoned beef patties with tropical pineapple salsa and a spicy sriracha mayo drizzle. Topped with melted cheddar, crisp lettuce, and pickled red onions on a toasted brioche bun, this burger is a vibrant explosion of flavors and textures. Perfect for a lively dinner or weekend grilling party! Serve with sweet potato fries or a fresh green salad for a complete meal.',NULL,'[\"Prepare the pineapple salsa: In a bowl, combine finely diced fresh pineapple, minced red onion, chopped cilantro, a squeeze of lime juice, and a pinch of salt. Mix and set aside.\", \"In another small bowl, mix mayonnaise with sriracha sauce to create a spicy mayo. Adjust the heat to your liking.\", \"Form the ground beef into 4 equal patties. Season both sides with salt, pepper, and a sprinkle of smoked paprika.\", \"Heat a grill or cast-iron skillet over medium-high heat. Cook patties for about 4 minutes per side for medium doneness, topping each patty with a slice of cheddar cheese during the last minute so it melts.\", \"Toast the brioche buns lightly on the grill for extra crunch and flavor.\", \"Assemble the burgers: Spread a generous layer of sriracha mayo on the bottom bun, place the cheesy beef patty, add pineapple salsa, pickled red onions, and crisp lettuce. Top with the other bun half.\", \"Serve immediately with your favorite sides and enjoy the vibrant taste sensation!\"]',0,'\"fusion\"','medium','[\"dinner\", \"grilling\", \"spicy\", \"family-friendly\", \"summer\"]',15,15,4,'2025-10-03 16:27:56.721251','2025-10-03 16:27:56.721251'),('3d23b8e6-4b4c-4889-aae1-e40d0bc8bcfc','c43a289f-5bef-4e6d-a789-ac13904c98e2','Chocolate Lava Cake','Rich chocolate cake with molten center, perfect for dessert lovers.','https://example.com/lava_cake.jpg','[\"Preheat oven to 425°F (220°C).\", \"Butter and flour ramekins.\", \"Melt chocolate and butter together.\", \"Whisk eggs, sugar, and a pinch of salt until fluffy.\", \"Fold chocolate mixture into eggs.\", \"Pour batter into ramekins and bake 12-14 minutes.\", \"Serve immediately with ice cream.\"]',0,'[\"Dessert\"]','hard','[\"chocolate\", \"dessert\", \"bake\"]',20,14,2,'2025-10-02 19:20:07.262532','2025-10-02 19:20:07.262532'),('3e148b5b-7126-42d9-a504-5116c950020f','896687cb-a95a-45b5-87b6-7c4d3dd74cea','Shrimp Tacos','Spicy shrimp tacos with cabbage slaw and creamy sauce.','https://example.com/shrimp_tacos.jpg','[\"Season shrimp with chili powder, paprika, and salt.\", \"Sauté shrimp until cooked through.\", \"Mix cabbage with lime juice and a pinch of salt for slaw.\", \"Warm tortillas and assemble with shrimp, slaw, and sauce.\", \"Serve immediately.\"]',1,'[\"Mexican\"]','medium','[\"seafood\", \"tacos\", \"spicy\"]',15,10,2,'2025-10-02 19:20:07.290888','2025-10-02 19:20:07.290888'),('5002fef7-3df1-4fea-ae8a-faecf90b3a7f','d38a99fe-3722-4df3-916e-336dde9d956a','Banana Pancakes','Fluffy pancakes with mashed bananas, perfect for breakfast.','https://example.com/banana_pancakes.jpg','[\"Mash bananas in a bowl.\", \"Mix in eggs, flour, milk, and a pinch of salt.\", \"Heat a non-stick pan with butter.\", \"Pour batter into pan and cook until bubbles form, then flip.\", \"Serve warm with syrup or fresh fruit.\"]',1,'[\"Breakfast\", \"American\"]','easy','[\"pancakes\", \"banana\", \"breakfast\"]',10,15,2,'2025-10-02 19:20:07.278106','2025-10-02 19:20:07.278106'),('60f3dc90-e383-468e-9cde-eb4bdd90035a','896687cb-a95a-45b5-87b6-7c4d3dd74cea','Vegan Buddha Bowl','Healthy and colorful bowl with quinoa, roasted veggies, and tahini dressing.','https://example.com/buddha_bowl.jpg','[\"Cook quinoa according to package instructions.\", \"Roast a mix of vegetables in olive oil, salt, and pepper.\", \"Assemble quinoa, veggies, and greens in a bowl.\", \"Drizzle with tahini dressing and sprinkle seeds on top.\", \"Serve warm or cold.\"]',1,'[\"Vegan\", \"Fusion\"]','easy','[\"vegan\", \"healthy\", \"bowl\"]',15,25,1,'2025-10-02 19:20:07.257133','2025-10-02 19:20:07.257133'),('68f812e3-2c75-4c43-8c05-ea6ba97100c5','c43a289f-5bef-4e6d-a789-ac13904c98e2','Spaghetti Carbonara','Classic Italian pasta dish with eggs, cheese, pancetta, and pepper.','https://example.com/spaghetti.jpg','[\"Boil water in a large pot and cook spaghetti until al dente.\", \"Fry pancetta until crisp.\", \"Whisk eggs and cheese together.\", \"Combine pasta with pancetta and remove from heat.\", \"Stir in egg mixture quickly to create a creamy sauce.\", \"Season with pepper and serve.\"]',1,'[\"Italian\"]','medium','[\"pasta\", \"quick\", \"classic\"]',10,20,2,'2025-10-02 19:20:07.251018','2025-10-02 19:20:07.251018'),('7cd2e9f1-ab93-44bf-ad85-37219ecd2a7a','6e434274-d620-4608-b9ab-789f70c50346','Beef Stir-Fry','Quick and tasty stir-fried beef with vegetables and soy sauce.','https://example.com/beef_stirfry.jpg','[\"Slice beef thinly and marinate in soy sauce, garlic, and ginger for 15 minutes.\", \"Heat oil in a wok and stir-fry beef until browned.\", \"Add vegetables and stir-fry until tender-crisp.\", \"Add remaining sauce and cook for 2 minutes.\", \"Serve hot with steamed rice or noodles.\"]',1,'[\"Asian\", \"Chinese\"]','medium','[\"beef\", \"stir-fry\", \"quick\"]',15,15,2,'2025-10-02 19:20:07.281878','2025-10-02 19:20:07.281878'),('ab8ef0d4-cf45-4e96-b1b2-a474a3533277','7e75ac1d-7ecd-4af8-b25c-1d656e794030','Greek Salad','Fresh Mediterranean salad with cucumbers, tomatoes, olives, and feta cheese.','https://example.com/greek_salad.jpg','[\"Chop cucumbers, tomatoes, and red onion.\", \"Combine with olives and feta cheese in a bowl.\", \"Drizzle with olive oil and lemon juice.\", \"Season with salt, pepper, and oregano.\", \"Toss gently and serve.\"]',1,'[\"Greek\", \"Mediterranean\"]','easy','[\"salad\", \"vegetarian\", \"fresh\"]',10,0,2,'2025-10-02 19:20:07.285461','2025-10-02 19:20:07.285461'),('ba66c673-5a05-4dff-8b18-e58ca43f82f5','d38a99fe-3722-4df3-916e-336dde9d956a','Avocado Toast','Simple and healthy avocado toast with lemon and chili flakes.','https://example.com/avocado_toast.jpg','[\"Toast bread slices until golden.\", \"Mash avocado and mix with lemon juice and salt.\", \"Spread avocado mixture on toast.\", \"Top with chili flakes and a drizzle of olive oil.\", \"Serve immediately.\"]',1,'[\"Breakfast\", \"Vegan\"]','easy','[\"breakfast\", \"vegan\", \"quick\"]',5,5,1,'2025-10-02 19:20:07.298864','2025-10-02 19:20:07.298864'),('ccf2fd68-66cf-4876-8d9f-ee56b50d1204','03e58981-14a9-4ff4-9fd7-2883687d2366','Fluffy Easy Pancakes 🥞','Light, fluffy pancakes perfect for a cozy breakfast! These pancakes are soft and buttery, with a hint of vanilla, making them delicious on their own or topped with fresh fruits, syrup, melted chocolate, or crunchy nuts. Great for beginners, this recipe guides you through each simple step for a tasty breakfast treat. 🍓🍯🍫🌰',NULL,'[\"In a large bowl, whisk together 1 and 1/2 cups flour, 3 and 1/2 teaspoons baking powder, 1 tablespoon sugar, and a pinch of salt.\", \"Make a well in the center, and pour in 1 and 1/4 cups milk, 1 egg, and 3 tablespoons melted butter. Mix until smooth but don’t overmix; a few small lumps are okay.\", \"Heat a non-stick pan or griddle over medium heat and lightly grease it with butter or oil.\", \"Pour about 1/4 cup of batter onto the pan for each pancake. Cook until bubbles form on the surface and the edges look set, about 2-3 minutes.\", \"Flip carefully with a spatula, and cook the other side until golden brown, about 1-2 minutes more.\", \"Serve hot with your favorite toppings such as fresh berries, maple syrup, melted chocolate, or a sprinkle of chopped nuts for added texture and flavor.\"]',0,'\"american\"','easy','[\"breakfast\", \"easy\", \"family-friendly\", \"sweet\"]',10,10,4,'2025-10-03 17:27:42.031473','2025-10-03 17:27:42.031473');
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
INSERT INTO `schema_migrations` VALUES ('20250827142728'),('20250904103622'),('20250904180016'),('20250904180835'),('20250910062207'),('20250910141725'),('20250911152558'),('20250911161522'),('20250912053859'),('20250916134038'),('20250916155125'),('20250916155440'),('20250916160201'),('20250916161805'),('20250917074821'),('20250917074932'),('20250917155728'),('20250917160306'),('20250917161057'),('20250917191147'),('20250925131618'),('20250925132233'),('20250925132239');
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
INSERT INTO `subscription_plans` VALUES (1,'Basic',9.99,'monthly','Access to core features, limited support, 5 projects per month.','2025-10-02 19:20:07.839269','2025-10-02 19:20:07.839269'),(2,'Pro',29.99,'monthly','All core features, priority support, unlimited projects.','2025-10-02 19:20:07.842912','2025-10-02 19:20:07.842912'),(3,'Enterprise',99.99,'monthly','Custom solutions, dedicated account manager, enterprise-level support.','2025-10-02 19:20:07.845801','2025-10-02 19:20:07.845801'),(4,'Basic Annual',99.99,'yearly','Access to core features, limited support, 5 projects per month. Billed yearly.','2025-10-02 19:20:07.849430','2025-10-02 19:20:07.849430'),(5,'Pro Annual',299.99,'yearly','All core features, priority support, unlimited projects. Billed yearly.','2025-10-02 19:20:07.852402','2025-10-02 19:20:07.852402'),(6,'Enterprise Annual',999.99,'yearly','Custom solutions, dedicated account manager, enterprise-level support. Billed yearly.','2025-10-02 19:20:07.855894','2025-10-02 19:20:07.855894');
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
INSERT INTO `subscriptions` VALUES (1,'7e75ac1d-7ecd-4af8-b25c-1d656e794030',2,NULL,'active','2025-10-02 19:20:07.862145','2025-10-02 19:20:07.862145'),(2,'c43a289f-5bef-4e6d-a789-ac13904c98e2',2,NULL,'active','2025-10-02 19:20:07.864967','2025-10-02 19:20:07.864967');
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
-- Table structure for table `user_audits`
--

DROP TABLE IF EXISTS `user_audits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_audits` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) DEFAULT NULL,
  `operation` varchar(255) DEFAULT NULL,
  `old_data` json DEFAULT NULL,
  `changed_data` json DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_audits`
--

LOCK TABLES `user_audits` WRITE;
/*!40000 ALTER TABLE `user_audits` DISABLE KEYS */;
INSERT INTO `user_audits` VALUES (1,'6e434274-d620-4608-b9ab-789f70c50346','INSERT',NULL,'{\"bio\": \"Loves cooking and experimenting with new recipes.\", \"email\": \"alice@example.com\", \"provider\": null, \"image_src\": \"https://via.placeholder.com/150\", \"last_name\": \"Example\", \"created_at\": \"2025-10-02 19:20:05.831115\", \"first_name\": \"Alice\", \"password_digest\": \"$2a$12$ipMYe2lmEBfHC6kZ6yDf6.giCkqXl0KENAUyhOvCFIS6hElFJjGpS\", \"last_signed_in_at\": null}','2025-10-02 19:20:05.000000','2025-10-02 19:20:05.000000'),(2,'5f19272b-ef08-484f-87c1-5257145743cc','INSERT',NULL,'{\"bio\": \"Big fan of Italian cuisine.\", \"email\": \"bob@example.com\", \"provider\": null, \"image_src\": \"https://via.placeholder.com/150\", \"last_name\": \"Example\", \"created_at\": \"2025-10-02 19:20:06.030931\", \"first_name\": \"Bob\", \"password_digest\": \"$2a$12$H7UTK5hDLsYoohdEsHRJk.WEv/0zBdSeUDUJhlCLNN0Om42TJ65BS\", \"last_signed_in_at\": null}','2025-10-02 19:20:06.000000','2025-10-02 19:20:06.000000'),(3,'7e75ac1d-7ecd-4af8-b25c-1d656e794030','INSERT',NULL,'{\"bio\": \"Enjoys baking bread on weekends.\", \"email\": \"charlie@example.com\", \"provider\": null, \"image_src\": \"https://via.placeholder.com/150\", \"last_name\": \"Example\", \"created_at\": \"2025-10-02 19:20:06.230945\", \"first_name\": \"Charlie\", \"password_digest\": \"$2a$12$7dgRt3cc2cxGHiH9Nys8eux6vvZdPh0KLK3JyAswm4xF6X8wxT7Hi\", \"last_signed_in_at\": null}','2025-10-02 19:20:06.000000','2025-10-02 19:20:06.000000'),(4,'4cc5b481-5d17-4d19-a3be-45158aa36aab','INSERT',NULL,'{\"bio\": \"Enjoys baking cakes on weekends.\", \"email\": \"johny@knox.com\", \"provider\": null, \"image_src\": \"https://via.placeholder.com/150\", \"last_name\": \"Knox\", \"created_at\": \"2025-10-02 19:20:06.430024\", \"first_name\": \"Johny\", \"password_digest\": \"$2a$12$p/yXVaCMPZnD0.6QZLs1JO49UqaeuZ7zAzFiqi6xFXA0XBrJ4uisq\", \"last_signed_in_at\": null}','2025-10-02 19:20:06.000000','2025-10-02 19:20:06.000000'),(5,'489dfdf9-12b2-4d2f-9d22-4310f8e52fa5','INSERT',NULL,'{\"bio\": \"Enjoys baking cakes on weekends.\", \"email\": \"mie@knox.com\", \"provider\": null, \"image_src\": \"https://via.placeholder.com/150\", \"last_name\": \"Dee\", \"created_at\": \"2025-10-02 19:20:06.630813\", \"first_name\": \"Mie\", \"password_digest\": \"$2a$12$tT5zfBCP714/0RsG22IK..hW0/5lSCSgO//OXY4Mjp4gvMV1vXRta\", \"last_signed_in_at\": null}','2025-10-02 19:20:06.000000','2025-10-02 19:20:06.000000'),(6,'896687cb-a95a-45b5-87b6-7c4d3dd74cea','INSERT',NULL,'{\"bio\": \"Enjoys baking cakes on weekends.\", \"email\": \"jackson@knox.com\", \"provider\": null, \"image_src\": \"https://via.placeholder.com/150\", \"last_name\": \"Jackson\", \"created_at\": \"2025-10-02 19:20:06.828330\", \"first_name\": \"Carl\", \"password_digest\": \"$2a$12$2alTZOVA9hG71nsQMybrAebR5ffh/JOMQ0fkJ7kpbVhXn54CpoyRi\", \"last_signed_in_at\": null}','2025-10-02 19:20:06.000000','2025-10-02 19:20:06.000000'),(7,'c43a289f-5bef-4e6d-a789-ac13904c98e2','INSERT',NULL,'{\"bio\": \"Enjoys baking cakes on weekends.\", \"email\": \"marie@knox.com\", \"provider\": null, \"image_src\": \"https://via.placeholder.com/150\", \"last_name\": \"Lun\", \"created_at\": \"2025-10-02 19:20:07.028301\", \"first_name\": \"Marie\", \"password_digest\": \"$2a$12$lfoT1xrzVn2N7IsLvfDtu../EVfr5IRgAYPo1wBb/Z0Bsmt7Xrgpi\", \"last_signed_in_at\": null}','2025-10-02 19:20:07.000000','2025-10-02 19:20:07.000000'),(8,'d38a99fe-3722-4df3-916e-336dde9d956a','INSERT',NULL,'{\"bio\": \"Enjoys baking cakes on weekends.\", \"email\": \"marc@knox.com\", \"provider\": null, \"image_src\": \"https://via.placeholder.com/150\", \"last_name\": \"Some\", \"created_at\": \"2025-10-02 19:20:07.229866\", \"first_name\": \"Marc\", \"password_digest\": \"$2a$12$B93B1CybgtYvGmi.t8qSvOjqopnPx8hFCOuDB4eePAvSNKdZFqBYO\", \"last_signed_in_at\": null}','2025-10-02 19:20:07.000000','2025-10-02 19:20:07.000000'),(9,'7f15c6f9-cc34-427d-8fb8-e9027af348f6','INSERT',NULL,'{\"bio\": \"Loves cooking and experimenting with new recipes.\", \"email\": \"alexanderbtcc@gmail.com\", \"provider\": null, \"image_src\": \"https://lh3.googleusercontent.com/a/ACg8ocKcCIIs7nL6mk6IzWYPYE0Iup-FA8e_p8LN9TmKJuphVmKo0Mg=s96-c\", \"last_name\": \"Christensen\", \"created_at\": \"2025-10-02 19:20:32.170570\", \"first_name\": \"Alexander\", \"password_digest\": \"$2a$12$AU93nenSbaBi3pgApEIg6uhDZ2NdcnYXH1pZRE.tr0Ndhuj8lGa62\", \"last_signed_in_at\": null}','2025-10-02 19:20:32.000000','2025-10-02 19:20:32.000000'),(10,'2f559f3e-0349-4298-97b2-4f1c32d71cc9','INSERT',NULL,'{\"bio\": null, \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"User\", \"created_at\": \"2025-10-02 19:22:16.427463\", \"first_name\": \"Test\", \"password_digest\": \"$2a$12$q6pWSdGk8qr6aPwFfIOSle0Y/r94FOnfz2gP8H3mNM7MDA0tOD.xi\", \"last_signed_in_at\": null}','2025-10-02 19:22:16.000000','2025-10-02 19:22:16.000000'),(11,'2f559f3e-0349-4298-97b2-4f1c32d71cc9','DELETE','{\"bio\": null, \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"User\", \"created_at\": \"2025-10-02 19:22:16.427463\", \"first_name\": \"Test\", \"password_digest\": \"$2a$12$q6pWSdGk8qr6aPwFfIOSle0Y/r94FOnfz2gP8H3mNM7MDA0tOD.xi\", \"last_signed_in_at\": null}',NULL,'2025-10-02 19:24:06.000000','2025-10-02 19:24:06.000000'),(12,'34bb9a62-1d40-4ffc-8e5a-6eb7e3095e50','INSERT',NULL,'{\"bio\": null, \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"User\", \"created_at\": \"2025-10-02 19:25:01.459020\", \"first_name\": \"Test\", \"password_digest\": \"$2a$12$IiZpjNl6CPNOrxgY2zpc0OAEtgK2NG4Wde7a9M7Ae6AnYv/VFu3Bu\", \"last_signed_in_at\": null}','2025-10-02 19:25:01.000000','2025-10-02 19:25:01.000000'),(13,'34bb9a62-1d40-4ffc-8e5a-6eb7e3095e50','DELETE','{\"bio\": null, \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"User\", \"created_at\": \"2025-10-02 19:25:01.459020\", \"first_name\": \"Test\", \"password_digest\": \"$2a$12$IiZpjNl6CPNOrxgY2zpc0OAEtgK2NG4Wde7a9M7Ae6AnYv/VFu3Bu\", \"last_signed_in_at\": null}',NULL,'2025-10-02 19:26:56.000000','2025-10-02 19:26:56.000000'),(14,'84eeb821-ffc0-423e-b8ab-572e32aed491','INSERT',NULL,'{\"bio\": null, \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"User\", \"created_at\": \"2025-10-02 19:27:54.502295\", \"first_name\": \"Test\", \"password_digest\": \"$2a$12$nuhU3baiM.Lz/pX03uA35ej8m4lBvDI5vaRerOud/I0fllnz.RJl2\", \"last_signed_in_at\": null}','2025-10-02 19:27:54.000000','2025-10-02 19:27:54.000000'),(15,'84eeb821-ffc0-423e-b8ab-572e32aed491','DELETE','{\"bio\": null, \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"User\", \"created_at\": \"2025-10-02 19:27:54.502295\", \"first_name\": \"Test\", \"password_digest\": \"$2a$12$nuhU3baiM.Lz/pX03uA35ej8m4lBvDI5vaRerOud/I0fllnz.RJl2\", \"last_signed_in_at\": null}',NULL,'2025-10-02 19:36:28.000000','2025-10-02 19:36:28.000000'),(16,'7d843a0a-693f-4399-9c43-7ed4c5e45845','INSERT',NULL,'{\"bio\": null, \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"User\", \"created_at\": \"2025-10-02 19:36:30.835159\", \"first_name\": \"Test\", \"password_digest\": \"$2a$12$ueKDhikZOTfSw.EY3DYvdOMiQHm8cd6v90.cKteR40XImx0rb5qW2\", \"last_signed_in_at\": null}','2025-10-02 19:36:30.000000','2025-10-02 19:36:30.000000'),(17,'7d843a0a-693f-4399-9c43-7ed4c5e45845','UPDATE','{\"bio\": null, \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"User\", \"created_at\": \"2025-10-02 19:36:30.835159\", \"first_name\": \"Test\", \"password_digest\": \"$2a$12$ueKDhikZOTfSw.EY3DYvdOMiQHm8cd6v90.cKteR40XImx0rb5qW2\", \"last_signed_in_at\": null}','{\"bio\": \"\", \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"Doe\", \"created_at\": \"2025-10-02 19:36:30.835159\", \"first_name\": \"John\", \"password_digest\": \"$2a$12$ueKDhikZOTfSw.EY3DYvdOMiQHm8cd6v90.cKteR40XImx0rb5qW2\", \"last_signed_in_at\": null}','2025-10-02 19:41:30.000000','2025-10-02 19:41:30.000000'),(18,'7d843a0a-693f-4399-9c43-7ed4c5e45845','DELETE','{\"bio\": \"\", \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"Doe\", \"created_at\": \"2025-10-02 19:36:30.835159\", \"first_name\": \"John\", \"password_digest\": \"$2a$12$ueKDhikZOTfSw.EY3DYvdOMiQHm8cd6v90.cKteR40XImx0rb5qW2\", \"last_signed_in_at\": null}',NULL,'2025-10-02 19:42:06.000000','2025-10-02 19:42:06.000000'),(19,'eadaf664-da48-48b3-8617-37c240625570','INSERT',NULL,'{\"bio\": null, \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"User\", \"created_at\": \"2025-10-02 19:42:10.487627\", \"first_name\": \"Test\", \"password_digest\": \"$2a$12$1DoWn8OZbPDFCAi047x9Y.ulY29khVc9Yyd9KDb9VK4hdyzcvaFdu\", \"last_signed_in_at\": null}','2025-10-02 19:42:10.000000','2025-10-02 19:42:10.000000'),(20,'eadaf664-da48-48b3-8617-37c240625570','UPDATE','{\"bio\": null, \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"User\", \"created_at\": \"2025-10-02 19:42:10.487627\", \"first_name\": \"Test\", \"password_digest\": \"$2a$12$1DoWn8OZbPDFCAi047x9Y.ulY29khVc9Yyd9KDb9VK4hdyzcvaFdu\", \"last_signed_in_at\": null}','{\"bio\": \"\", \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"Doe\", \"created_at\": \"2025-10-02 19:42:10.487627\", \"first_name\": \"John\", \"password_digest\": \"$2a$12$1DoWn8OZbPDFCAi047x9Y.ulY29khVc9Yyd9KDb9VK4hdyzcvaFdu\", \"last_signed_in_at\": null}','2025-10-02 19:42:11.000000','2025-10-02 19:42:11.000000'),(21,'eadaf664-da48-48b3-8617-37c240625570','DELETE','{\"bio\": \"\", \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"Doe\", \"created_at\": \"2025-10-02 19:42:10.487627\", \"first_name\": \"John\", \"password_digest\": \"$2a$12$1DoWn8OZbPDFCAi047x9Y.ulY29khVc9Yyd9KDb9VK4hdyzcvaFdu\", \"last_signed_in_at\": null}',NULL,'2025-10-02 20:04:32.000000','2025-10-02 20:04:32.000000'),(22,'074c4362-d59b-441f-bba8-475375cb2e05','INSERT',NULL,'{\"bio\": null, \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"User\", \"created_at\": \"2025-10-02 20:04:32.972053\", \"first_name\": \"Test\", \"password_digest\": \"$2a$12$36TrOtzKlZL8XRHmUXVzfuYEMnZSk.QqXecC61lgbg12s1oaINw6e\", \"last_signed_in_at\": null}','2025-10-02 20:04:32.000000','2025-10-02 20:04:32.000000'),(23,'074c4362-d59b-441f-bba8-475375cb2e05','UPDATE','{\"bio\": null, \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"User\", \"created_at\": \"2025-10-02 20:04:32.972053\", \"first_name\": \"Test\", \"password_digest\": \"$2a$12$36TrOtzKlZL8XRHmUXVzfuYEMnZSk.QqXecC61lgbg12s1oaINw6e\", \"last_signed_in_at\": null}','{\"bio\": \"\", \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"Doe\", \"created_at\": \"2025-10-02 20:04:32.972053\", \"first_name\": \"John\", \"password_digest\": \"$2a$12$36TrOtzKlZL8XRHmUXVzfuYEMnZSk.QqXecC61lgbg12s1oaINw6e\", \"last_signed_in_at\": null}','2025-10-02 20:04:34.000000','2025-10-02 20:04:34.000000'),(24,'a835a885-9ef9-4329-8b0e-7e9ca5629dd4','INSERT',NULL,'{\"bio\": null, \"email\": \"cypress-user2@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"User\", \"created_at\": \"2025-10-02 20:05:24.839330\", \"first_name\": \"Random\", \"password_digest\": \"$2a$12$F2BLcBBpyghI24xl384wQuU8LdTdDzJa.L5AXXN/Fubw7cNI60k8y\", \"last_signed_in_at\": null}','2025-10-02 20:05:24.000000','2025-10-02 20:05:24.000000'),(25,'074c4362-d59b-441f-bba8-475375cb2e05','DELETE','{\"bio\": \"\", \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"Doe\", \"created_at\": \"2025-10-02 20:04:32.972053\", \"first_name\": \"John\", \"password_digest\": \"$2a$12$36TrOtzKlZL8XRHmUXVzfuYEMnZSk.QqXecC61lgbg12s1oaINw6e\", \"last_signed_in_at\": null}',NULL,'2025-10-02 20:06:30.000000','2025-10-02 20:06:30.000000'),(26,'f35c4d0a-1581-40e4-b64a-39118f572dfa','INSERT',NULL,'{\"bio\": null, \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"User\", \"created_at\": \"2025-10-02 20:06:31.780236\", \"first_name\": \"Test\", \"password_digest\": \"$2a$12$3x/oIERN.uzDhKuUJdqPBuVmxN30uIQ4rkQaLYvqR6kiTJi4DmDBG\", \"last_signed_in_at\": null}','2025-10-02 20:06:31.000000','2025-10-02 20:06:31.000000'),(27,'f35c4d0a-1581-40e4-b64a-39118f572dfa','UPDATE','{\"bio\": null, \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"User\", \"created_at\": \"2025-10-02 20:06:31.780236\", \"first_name\": \"Test\", \"password_digest\": \"$2a$12$3x/oIERN.uzDhKuUJdqPBuVmxN30uIQ4rkQaLYvqR6kiTJi4DmDBG\", \"last_signed_in_at\": null}','{\"bio\": \"\", \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"Doe\", \"created_at\": \"2025-10-02 20:06:31.780236\", \"first_name\": \"John\", \"password_digest\": \"$2a$12$3x/oIERN.uzDhKuUJdqPBuVmxN30uIQ4rkQaLYvqR6kiTJi4DmDBG\", \"last_signed_in_at\": null}','2025-10-02 20:06:33.000000','2025-10-02 20:06:33.000000'),(28,'f35c4d0a-1581-40e4-b64a-39118f572dfa','DELETE','{\"bio\": \"\", \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"Doe\", \"created_at\": \"2025-10-02 20:06:31.780236\", \"first_name\": \"John\", \"password_digest\": \"$2a$12$3x/oIERN.uzDhKuUJdqPBuVmxN30uIQ4rkQaLYvqR6kiTJi4DmDBG\", \"last_signed_in_at\": null}',NULL,'2025-10-03 15:25:58.000000','2025-10-03 15:25:58.000000'),(29,'f74c0161-00fe-480e-91bb-9f9076a992ba','INSERT',NULL,'{\"bio\": null, \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"User\", \"created_at\": \"2025-10-03 15:25:59.355356\", \"first_name\": \"Test\", \"password_digest\": \"$2a$12$FU8j5j9CnSnUIWosaa64wOVMTp9YUjWgjt.YlEHqMgzeTdx43TUQe\", \"last_signed_in_at\": null}','2025-10-03 15:25:59.000000','2025-10-03 15:25:59.000000'),(30,'f74c0161-00fe-480e-91bb-9f9076a992ba','UPDATE','{\"bio\": null, \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"User\", \"created_at\": \"2025-10-03 15:25:59.355356\", \"first_name\": \"Test\", \"password_digest\": \"$2a$12$FU8j5j9CnSnUIWosaa64wOVMTp9YUjWgjt.YlEHqMgzeTdx43TUQe\", \"last_signed_in_at\": null}','{\"bio\": \"\", \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"Doe\", \"created_at\": \"2025-10-03 15:25:59.355356\", \"first_name\": \"John\", \"password_digest\": \"$2a$12$FU8j5j9CnSnUIWosaa64wOVMTp9YUjWgjt.YlEHqMgzeTdx43TUQe\", \"last_signed_in_at\": null}','2025-10-03 15:26:00.000000','2025-10-03 15:26:00.000000'),(31,'f74c0161-00fe-480e-91bb-9f9076a992ba','DELETE','{\"bio\": \"\", \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"Doe\", \"created_at\": \"2025-10-03 15:25:59.355356\", \"first_name\": \"John\", \"password_digest\": \"$2a$12$FU8j5j9CnSnUIWosaa64wOVMTp9YUjWgjt.YlEHqMgzeTdx43TUQe\", \"last_signed_in_at\": null}',NULL,'2025-10-03 15:30:13.000000','2025-10-03 15:30:13.000000'),(32,'68117ec8-f111-4ce7-bc97-3fb17683172d','INSERT',NULL,'{\"bio\": null, \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"User\", \"created_at\": \"2025-10-03 15:30:14.998548\", \"first_name\": \"Test\", \"password_digest\": \"$2a$12$vmjqExcEfWDQhUIfECxu7e8aRzSxmHxdfZ26YgSwEBlwvCaZYqUwm\", \"last_signed_in_at\": null}','2025-10-03 15:30:14.000000','2025-10-03 15:30:14.000000'),(33,'68117ec8-f111-4ce7-bc97-3fb17683172d','UPDATE','{\"bio\": null, \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"User\", \"created_at\": \"2025-10-03 15:30:14.998548\", \"first_name\": \"Test\", \"password_digest\": \"$2a$12$vmjqExcEfWDQhUIfECxu7e8aRzSxmHxdfZ26YgSwEBlwvCaZYqUwm\", \"last_signed_in_at\": null}','{\"bio\": \"\", \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"Doe\", \"created_at\": \"2025-10-03 15:30:14.998548\", \"first_name\": \"John\", \"password_digest\": \"$2a$12$vmjqExcEfWDQhUIfECxu7e8aRzSxmHxdfZ26YgSwEBlwvCaZYqUwm\", \"last_signed_in_at\": null}','2025-10-03 15:30:16.000000','2025-10-03 15:30:16.000000'),(34,'68117ec8-f111-4ce7-bc97-3fb17683172d','DELETE','{\"bio\": \"\", \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"Doe\", \"created_at\": \"2025-10-03 15:30:14.998548\", \"first_name\": \"John\", \"password_digest\": \"$2a$12$vmjqExcEfWDQhUIfECxu7e8aRzSxmHxdfZ26YgSwEBlwvCaZYqUwm\", \"last_signed_in_at\": null}',NULL,'2025-10-03 15:30:59.000000','2025-10-03 15:30:59.000000'),(35,'273153cd-21d9-444d-b017-e6bb1e0be73d','INSERT',NULL,'{\"bio\": null, \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"User\", \"created_at\": \"2025-10-03 15:31:00.242249\", \"first_name\": \"Test\", \"password_digest\": \"$2a$12$kXBtC/BlOVCQDbRVkxH.xej1tMVyZl2zegE6mCDVV54EgeBfUUCGa\", \"last_signed_in_at\": null}','2025-10-03 15:31:00.000000','2025-10-03 15:31:00.000000'),(36,'273153cd-21d9-444d-b017-e6bb1e0be73d','UPDATE','{\"bio\": null, \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"User\", \"created_at\": \"2025-10-03 15:31:00.242249\", \"first_name\": \"Test\", \"password_digest\": \"$2a$12$kXBtC/BlOVCQDbRVkxH.xej1tMVyZl2zegE6mCDVV54EgeBfUUCGa\", \"last_signed_in_at\": null}','{\"bio\": \"\", \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"Doe\", \"created_at\": \"2025-10-03 15:31:00.242249\", \"first_name\": \"John\", \"password_digest\": \"$2a$12$kXBtC/BlOVCQDbRVkxH.xej1tMVyZl2zegE6mCDVV54EgeBfUUCGa\", \"last_signed_in_at\": null}','2025-10-03 15:31:01.000000','2025-10-03 15:31:01.000000'),(37,'273153cd-21d9-444d-b017-e6bb1e0be73d','DELETE','{\"bio\": \"\", \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"Doe\", \"created_at\": \"2025-10-03 15:31:00.242249\", \"first_name\": \"John\", \"password_digest\": \"$2a$12$kXBtC/BlOVCQDbRVkxH.xej1tMVyZl2zegE6mCDVV54EgeBfUUCGa\", \"last_signed_in_at\": null}',NULL,'2025-10-03 15:33:42.000000','2025-10-03 15:33:42.000000'),(38,'83f9eb73-3387-4d55-9bd6-a952ab556b18','INSERT',NULL,'{\"bio\": null, \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"User\", \"created_at\": \"2025-10-03 15:33:43.791730\", \"first_name\": \"Test\", \"password_digest\": \"$2a$12$MC8uHMsHM9/xZTPJWM4cQONTC9.vxBSXWgoSH4K9SyUv1sD9epRG6\", \"last_signed_in_at\": null}','2025-10-03 15:33:43.000000','2025-10-03 15:33:43.000000'),(39,'83f9eb73-3387-4d55-9bd6-a952ab556b18','UPDATE','{\"bio\": null, \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"User\", \"created_at\": \"2025-10-03 15:33:43.791730\", \"first_name\": \"Test\", \"password_digest\": \"$2a$12$MC8uHMsHM9/xZTPJWM4cQONTC9.vxBSXWgoSH4K9SyUv1sD9epRG6\", \"last_signed_in_at\": null}','{\"bio\": \"\", \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"Doe\", \"created_at\": \"2025-10-03 15:33:43.791730\", \"first_name\": \"John\", \"password_digest\": \"$2a$12$MC8uHMsHM9/xZTPJWM4cQONTC9.vxBSXWgoSH4K9SyUv1sD9epRG6\", \"last_signed_in_at\": null}','2025-10-03 15:33:45.000000','2025-10-03 15:33:45.000000'),(40,'83f9eb73-3387-4d55-9bd6-a952ab556b18','DELETE','{\"bio\": \"\", \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"Doe\", \"created_at\": \"2025-10-03 15:33:43.791730\", \"first_name\": \"John\", \"password_digest\": \"$2a$12$MC8uHMsHM9/xZTPJWM4cQONTC9.vxBSXWgoSH4K9SyUv1sD9epRG6\", \"last_signed_in_at\": null}',NULL,'2025-10-03 15:34:30.000000','2025-10-03 15:34:30.000000'),(41,'453221fe-f6fd-4194-8710-bc9da4f570c5','INSERT',NULL,'{\"bio\": null, \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"User\", \"created_at\": \"2025-10-03 15:34:31.082090\", \"first_name\": \"Test\", \"password_digest\": \"$2a$12$ituiTSnzN2jiw3dXchlgNe6NY1if64vqFVtVa7U3ch7sTWugmvEYO\", \"last_signed_in_at\": null}','2025-10-03 15:34:31.000000','2025-10-03 15:34:31.000000'),(42,'453221fe-f6fd-4194-8710-bc9da4f570c5','UPDATE','{\"bio\": null, \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"User\", \"created_at\": \"2025-10-03 15:34:31.082090\", \"first_name\": \"Test\", \"password_digest\": \"$2a$12$ituiTSnzN2jiw3dXchlgNe6NY1if64vqFVtVa7U3ch7sTWugmvEYO\", \"last_signed_in_at\": null}','{\"bio\": \"\", \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"Doe\", \"created_at\": \"2025-10-03 15:34:31.082090\", \"first_name\": \"John\", \"password_digest\": \"$2a$12$ituiTSnzN2jiw3dXchlgNe6NY1if64vqFVtVa7U3ch7sTWugmvEYO\", \"last_signed_in_at\": null}','2025-10-03 15:34:32.000000','2025-10-03 15:34:32.000000'),(43,'b5970027-e50c-456d-8196-c0454ca03eb7','INSERT',NULL,'{\"bio\": null, \"email\": \"feg@feijgped.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"Egkrpgr\", \"created_at\": \"2025-10-03 15:35:59.017149\", \"first_name\": \"TESSS\", \"password_digest\": \"$2a$12$rCN8AkV7FSKBqQDJqh3qFO2Rx6y5kgjEpdYm82W91KGGEfsKVl/MS\", \"last_signed_in_at\": null}','2025-10-03 15:35:59.000000','2025-10-03 15:35:59.000000'),(44,'a835a885-9ef9-4329-8b0e-7e9ca5629dd4','DELETE','{\"bio\": null, \"email\": \"cypress-user2@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"User\", \"created_at\": \"2025-10-02 20:05:24.839330\", \"first_name\": \"Random\", \"password_digest\": \"$2a$12$F2BLcBBpyghI24xl384wQuU8LdTdDzJa.L5AXXN/Fubw7cNI60k8y\", \"last_signed_in_at\": null}',NULL,'2025-10-03 15:36:43.000000','2025-10-03 15:36:43.000000'),(45,'acb7c9d3-9ed5-4410-a063-a7769ce8f0cb','INSERT',NULL,'{\"bio\": null, \"email\": \"cypress-user2@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"User\", \"created_at\": \"2025-10-03 15:36:47.266095\", \"first_name\": \"Random\", \"password_digest\": \"$2a$12$NXL8nsdQ7W7xMQzxt9X0ieLIq2x3seLY8URX/ZMEJIXV/43dGC5te\", \"last_signed_in_at\": null}','2025-10-03 15:36:47.000000','2025-10-03 15:36:47.000000'),(46,'453221fe-f6fd-4194-8710-bc9da4f570c5','UPDATE','{\"bio\": \"\", \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"Doe\", \"created_at\": \"2025-10-03 15:34:31.082090\", \"first_name\": \"John\", \"password_digest\": \"$2a$12$ituiTSnzN2jiw3dXchlgNe6NY1if64vqFVtVa7U3ch7sTWugmvEYO\", \"last_signed_in_at\": null}','{\"bio\": \"\", \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"Doe\", \"created_at\": \"2025-10-03 15:34:31.082090\", \"first_name\": \"OMGGG\", \"password_digest\": \"$2a$12$ituiTSnzN2jiw3dXchlgNe6NY1if64vqFVtVa7U3ch7sTWugmvEYO\", \"last_signed_in_at\": null}','2025-10-03 16:12:19.000000','2025-10-03 16:12:19.000000'),(47,'453221fe-f6fd-4194-8710-bc9da4f570c5','UPDATE','{\"bio\": \"\", \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"Doe\", \"created_at\": \"2025-10-03 15:34:31.082090\", \"first_name\": \"OMGGG\", \"password_digest\": \"$2a$12$ituiTSnzN2jiw3dXchlgNe6NY1if64vqFVtVa7U3ch7sTWugmvEYO\", \"last_signed_in_at\": null}','{\"bio\": \"\", \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"Doe\", \"created_at\": \"2025-10-03 15:34:31.082090\", \"first_name\": \"John\", \"password_digest\": \"$2a$12$ituiTSnzN2jiw3dXchlgNe6NY1if64vqFVtVa7U3ch7sTWugmvEYO\", \"last_signed_in_at\": null}','2025-10-03 16:12:31.000000','2025-10-03 16:12:31.000000'),(48,'453221fe-f6fd-4194-8710-bc9da4f570c5','UPDATE','{\"bio\": \"\", \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"Doe\", \"created_at\": \"2025-10-03 15:34:31.082090\", \"first_name\": \"John\", \"password_digest\": \"$2a$12$ituiTSnzN2jiw3dXchlgNe6NY1if64vqFVtVa7U3ch7sTWugmvEYO\", \"last_signed_in_at\": null}','{\"bio\": \"\", \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"Doe\", \"created_at\": \"2025-10-03 15:34:31.082090\", \"first_name\": \"LOL\", \"password_digest\": \"$2a$12$ituiTSnzN2jiw3dXchlgNe6NY1if64vqFVtVa7U3ch7sTWugmvEYO\", \"last_signed_in_at\": null}','2025-10-03 16:18:50.000000','2025-10-03 16:18:50.000000'),(49,'453221fe-f6fd-4194-8710-bc9da4f570c5','UPDATE','{\"bio\": \"\", \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"Doe\", \"created_at\": \"2025-10-03 15:34:31.082090\", \"first_name\": \"LOL\", \"password_digest\": \"$2a$12$ituiTSnzN2jiw3dXchlgNe6NY1if64vqFVtVa7U3ch7sTWugmvEYO\", \"last_signed_in_at\": null}','{\"bio\": \"\", \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"Doe\", \"created_at\": \"2025-10-03 15:34:31.082090\", \"first_name\": \"John\", \"password_digest\": \"$2a$12$ituiTSnzN2jiw3dXchlgNe6NY1if64vqFVtVa7U3ch7sTWugmvEYO\", \"last_signed_in_at\": null}','2025-10-03 16:18:57.000000','2025-10-03 16:18:57.000000'),(50,'453221fe-f6fd-4194-8710-bc9da4f570c5','DELETE','{\"bio\": \"\", \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"Doe\", \"created_at\": \"2025-10-03 15:34:31.082090\", \"first_name\": \"John\", \"password_digest\": \"$2a$12$ituiTSnzN2jiw3dXchlgNe6NY1if64vqFVtVa7U3ch7sTWugmvEYO\", \"last_signed_in_at\": null}',NULL,'2025-10-03 16:19:30.000000','2025-10-03 16:19:30.000000'),(51,'2901991d-00b1-451d-a089-c131a9a7692e','INSERT',NULL,'{\"bio\": null, \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"User\", \"created_at\": \"2025-10-03 16:19:45.246908\", \"first_name\": \"Test\", \"password_digest\": \"$2a$12$5xKkWlfKl785n9I22qcn3e4kOd014PJKQaT436PuYBHv7d//eOimC\", \"last_signed_in_at\": null}','2025-10-03 16:19:45.000000','2025-10-03 16:19:45.000000'),(52,'2901991d-00b1-451d-a089-c131a9a7692e','DELETE','{\"bio\": null, \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"User\", \"created_at\": \"2025-10-03 16:19:45.246908\", \"first_name\": \"Test\", \"password_digest\": \"$2a$12$5xKkWlfKl785n9I22qcn3e4kOd014PJKQaT436PuYBHv7d//eOimC\", \"last_signed_in_at\": null}',NULL,'2025-10-03 17:09:40.000000','2025-10-03 17:09:40.000000'),(53,'83d2db11-0576-4ba9-bca7-caee4e44118c','INSERT',NULL,'{\"bio\": null, \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"User\", \"created_at\": \"2025-10-03 17:09:46.328885\", \"first_name\": \"Test\", \"password_digest\": \"$2a$12$.0GLpeDKMenYnELcL5f7yu7HoVZzmDLW.I7rnR.gFxN5NvzvYRGUO\", \"last_signed_in_at\": null}','2025-10-03 17:09:46.000000','2025-10-03 17:09:46.000000'),(54,'83d2db11-0576-4ba9-bca7-caee4e44118c','DELETE','{\"bio\": null, \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"User\", \"created_at\": \"2025-10-03 17:09:46.328885\", \"first_name\": \"Test\", \"password_digest\": \"$2a$12$.0GLpeDKMenYnELcL5f7yu7HoVZzmDLW.I7rnR.gFxN5NvzvYRGUO\", \"last_signed_in_at\": null}',NULL,'2025-10-03 17:18:03.000000','2025-10-03 17:18:03.000000'),(55,'04cb80cf-7c20-4903-b833-2ef77e10cb2e','INSERT',NULL,'{\"bio\": null, \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"User\", \"created_at\": \"2025-10-03 17:18:10.105084\", \"first_name\": \"Test\", \"password_digest\": \"$2a$12$90nFpN2t/izhssWbTfhi4elvgAnwiChy7IM2Yl8vMfcUMz7cA7UxG\", \"last_signed_in_at\": null}','2025-10-03 17:18:10.000000','2025-10-03 17:18:10.000000'),(56,'04cb80cf-7c20-4903-b833-2ef77e10cb2e','DELETE','{\"bio\": null, \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"User\", \"created_at\": \"2025-10-03 17:18:10.105084\", \"first_name\": \"Test\", \"password_digest\": \"$2a$12$90nFpN2t/izhssWbTfhi4elvgAnwiChy7IM2Yl8vMfcUMz7cA7UxG\", \"last_signed_in_at\": null}',NULL,'2025-10-03 17:18:10.000000','2025-10-03 17:18:10.000000'),(57,'59ec7ecd-0e26-4320-8c3d-43b934ca5a9b','INSERT',NULL,'{\"bio\": null, \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"User\", \"created_at\": \"2025-10-03 17:18:17.968614\", \"first_name\": \"Test\", \"password_digest\": \"$2a$12$kGINsvUXmORvLfa66rktQeQiQDhukEtaPi6AowHurplZAWrkO/JeC\", \"last_signed_in_at\": null}','2025-10-03 17:18:17.000000','2025-10-03 17:18:17.000000'),(58,'59ec7ecd-0e26-4320-8c3d-43b934ca5a9b','DELETE','{\"bio\": null, \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"User\", \"created_at\": \"2025-10-03 17:18:17.968614\", \"first_name\": \"Test\", \"password_digest\": \"$2a$12$kGINsvUXmORvLfa66rktQeQiQDhukEtaPi6AowHurplZAWrkO/JeC\", \"last_signed_in_at\": null}',NULL,'2025-10-03 17:27:19.000000','2025-10-03 17:27:19.000000'),(59,'03e58981-14a9-4ff4-9fd7-2883687d2366','INSERT',NULL,'{\"bio\": null, \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"User\", \"created_at\": \"2025-10-03 17:27:26.441885\", \"first_name\": \"Test\", \"password_digest\": \"$2a$12$UINJ/CWoP5EvmxlIHkWosOWqS7i2spv8Qp7W6Dt4qLmUZisyn3Oai\", \"last_signed_in_at\": null}','2025-10-03 17:27:26.000000','2025-10-03 17:27:26.000000');
/*!40000 ALTER TABLE `user_audits` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `users` VALUES ('03e58981-14a9-4ff4-9fd7-2883687d2366','Test','User','cypress-user@example.com',NULL,NULL,'$2a$12$UINJ/CWoP5EvmxlIHkWosOWqS7i2spv8Qp7W6Dt4qLmUZisyn3Oai',NULL,NULL,NULL,'2025-10-03 17:27:26.441885','2025-10-03 17:27:26.441885'),('489dfdf9-12b2-4d2f-9d22-4310f8e52fa5','Mie','Dee','mie@knox.com',NULL,NULL,'$2a$12$tT5zfBCP714/0RsG22IK..hW0/5lSCSgO//OXY4Mjp4gvMV1vXRta','https://via.placeholder.com/150','Enjoys baking cakes on weekends.',NULL,'2025-10-02 19:20:06.630813','2025-10-02 19:20:06.630813'),('4cc5b481-5d17-4d19-a3be-45158aa36aab','Johny','Knox','johny@knox.com',NULL,NULL,'$2a$12$p/yXVaCMPZnD0.6QZLs1JO49UqaeuZ7zAzFiqi6xFXA0XBrJ4uisq','https://via.placeholder.com/150','Enjoys baking cakes on weekends.',NULL,'2025-10-02 19:20:06.430024','2025-10-02 19:20:06.430024'),('5f19272b-ef08-484f-87c1-5257145743cc','Bob','Example','bob@example.com',NULL,NULL,'$2a$12$H7UTK5hDLsYoohdEsHRJk.WEv/0zBdSeUDUJhlCLNN0Om42TJ65BS','https://via.placeholder.com/150','Big fan of Italian cuisine.',NULL,'2025-10-02 19:20:06.030931','2025-10-02 19:20:06.030931'),('6e434274-d620-4608-b9ab-789f70c50346','Alice','Example','alice@example.com',NULL,NULL,'$2a$12$ipMYe2lmEBfHC6kZ6yDf6.giCkqXl0KENAUyhOvCFIS6hElFJjGpS','https://via.placeholder.com/150','Loves cooking and experimenting with new recipes.',NULL,'2025-10-02 19:20:05.831115','2025-10-02 19:20:05.831115'),('7e75ac1d-7ecd-4af8-b25c-1d656e794030','Charlie','Example','charlie@example.com',NULL,NULL,'$2a$12$7dgRt3cc2cxGHiH9Nys8eux6vvZdPh0KLK3JyAswm4xF6X8wxT7Hi','https://via.placeholder.com/150','Enjoys baking bread on weekends.',NULL,'2025-10-02 19:20:06.230945','2025-10-02 19:20:06.230945'),('7f15c6f9-cc34-427d-8fb8-e9027af348f6','Alexander','Christensen','alexanderbtcc@gmail.com',NULL,NULL,'$2a$12$AU93nenSbaBi3pgApEIg6uhDZ2NdcnYXH1pZRE.tr0Ndhuj8lGa62','https://lh3.googleusercontent.com/a/ACg8ocKcCIIs7nL6mk6IzWYPYE0Iup-FA8e_p8LN9TmKJuphVmKo0Mg=s96-c','Loves cooking and experimenting with new recipes.',NULL,'2025-10-02 19:20:32.170570','2025-10-02 19:20:32.170570'),('896687cb-a95a-45b5-87b6-7c4d3dd74cea','Carl','Jackson','jackson@knox.com',NULL,NULL,'$2a$12$2alTZOVA9hG71nsQMybrAebR5ffh/JOMQ0fkJ7kpbVhXn54CpoyRi','https://via.placeholder.com/150','Enjoys baking cakes on weekends.',NULL,'2025-10-02 19:20:06.828330','2025-10-02 19:20:06.828330'),('acb7c9d3-9ed5-4410-a063-a7769ce8f0cb','Random','User','cypress-user2@example.com',NULL,NULL,'$2a$12$NXL8nsdQ7W7xMQzxt9X0ieLIq2x3seLY8URX/ZMEJIXV/43dGC5te',NULL,NULL,NULL,'2025-10-03 15:36:47.266095','2025-10-03 15:36:47.266095'),('b5970027-e50c-456d-8196-c0454ca03eb7','TESSS','Egkrpgr','feg@feijgped.com',NULL,NULL,'$2a$12$rCN8AkV7FSKBqQDJqh3qFO2Rx6y5kgjEpdYm82W91KGGEfsKVl/MS',NULL,NULL,NULL,'2025-10-03 15:35:59.017149','2025-10-03 15:35:59.017149'),('c43a289f-5bef-4e6d-a789-ac13904c98e2','Marie','Lun','marie@knox.com',NULL,NULL,'$2a$12$lfoT1xrzVn2N7IsLvfDtu../EVfr5IRgAYPo1wBb/Z0Bsmt7Xrgpi','https://via.placeholder.com/150','Enjoys baking cakes on weekends.',NULL,'2025-10-02 19:20:07.028301','2025-10-02 19:20:07.028301'),('d38a99fe-3722-4df3-916e-336dde9d956a','Marc','Some','marc@knox.com',NULL,NULL,'$2a$12$B93B1CybgtYvGmi.t8qSvOjqopnPx8hFCOuDB4eePAvSNKdZFqBYO','https://via.placeholder.com/150','Enjoys baking cakes on weekends.',NULL,'2025-10-02 19:20:07.229866','2025-10-02 19:20:07.229866');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`munchora`@`%`*/ /*!50003 TRIGGER `users_audit_insert` AFTER INSERT ON `users` FOR EACH ROW BEGIN
        INSERT INTO user_audits(user_id, operation, changed_data, created_at, updated_at)
        VALUES (NEW.id, 'INSERT',
          JSON_OBJECT('first_name', NEW.first_name, 'last_name', NEW.last_name, 'email', NEW.email, 'provider', NEW.provider, 'password_digest', NEW.password_digest, 'image_src', NEW.image_src, 'bio', NEW.bio, 'last_signed_in_at', NEW.last_signed_in_at, 'created_at', NEW.created_at),
          NOW(), NOW());
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
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,NO_AUTO_VALUE_ON_ZERO,STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`munchora`@`%`*/ /*!50003 TRIGGER `users_audit_update` AFTER UPDATE ON `users` FOR EACH ROW BEGIN
        INSERT INTO user_audits(user_id, operation, old_data, changed_data, created_at, updated_at)
        VALUES (OLD.id, 'UPDATE',
          JSON_OBJECT('first_name', OLD.first_name, 'last_name', OLD.last_name, 'email', OLD.email, 'provider', OLD.provider, 'password_digest', OLD.password_digest, 'image_src', OLD.image_src, 'bio', OLD.bio, 'last_signed_in_at', OLD.last_signed_in_at, 'created_at', OLD.created_at),
          JSON_OBJECT('first_name', NEW.first_name, 'last_name', NEW.last_name, 'email', NEW.email, 'provider', NEW.provider, 'password_digest', NEW.password_digest, 'image_src', NEW.image_src, 'bio', NEW.bio, 'last_signed_in_at', NEW.last_signed_in_at, 'created_at', NEW.created_at),
          NOW(), NOW());
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
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,NO_AUTO_VALUE_ON_ZERO,STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`munchora`@`%`*/ /*!50003 TRIGGER `users_audit_delete` AFTER DELETE ON `users` FOR EACH ROW BEGIN
        INSERT INTO user_audits(user_id, operation, old_data, created_at, updated_at)
        VALUES (OLD.id, 'DELETE',
          JSON_OBJECT('first_name', OLD.first_name, 'last_name', OLD.last_name, 'email', OLD.email, 'provider', OLD.provider, 'password_digest', OLD.password_digest, 'image_src', OLD.image_src, 'bio', OLD.bio, 'last_signed_in_at', OLD.last_signed_in_at, 'created_at', OLD.created_at),
          NOW(), NOW());
      END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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

-- Dump completed on 2025-10-04 11:26:54
